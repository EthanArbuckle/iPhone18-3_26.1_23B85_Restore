uint64_t sub_2489F7B88()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);
  swift_retain_n();
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446466;

    v5 = sub_2489FA2C8();
    v7 = v6;

    v8 = sub_24897BC00(v5, v7, &v12);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2050;
    v9 = sub_248A11D90();

    *(v3 + 14) = v9;

    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Notify %{public}ld observers", v3, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v10);
  return sub_248A11DC0();
}

uint64_t sub_2489F7D98()
{
  v1 = v0;
  v2 = sub_248A12A50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_248A12A60();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_27EEB51A0 == -1)
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
  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_27EEB9DC8);

  v10 = sub_248A122B0();
  v11 = sub_248A12E80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;

    v14 = sub_2489FA2C8();
    v16 = v15;

    v17 = sub_24897BC00(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_248975000, v10, v11, "[%{public}s] Receive next message", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {
  }

  v18 = *(v1 + qword_27EEB5440);
  v19 = *(v1 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = *(v19 + 72);

  v22(sub_248A04070, v21, ObjectType, v19);
}

uint64_t sub_2489F8078(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a3;
    v16 = a4 & 1;
    v17 = a5;
    v12 = *(MEMORY[0x28223BE20](result) + 24);
    sub_248A12EF0();
    if (swift_task_isCurrentExecutor())
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_248A04078;
      *(v13 + 24) = v15;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_2489E2214;
      *(v14 + 24) = v13;

      v19[0] = isEscapingClosureAtFileLocation;
      sub_2489E21C4(v19);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v18 = isEscapingClosureAtFileLocation;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489F82EC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v60 = a4;
  v58 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v54 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  v13 = *(*(v59 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v59);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = sub_248A12A50();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v6 + 24);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_248A12A60();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    if (qword_27EEB51A0 == -1)
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
  v26 = sub_248A122D0();
  __swift_project_value_buffer(v26, qword_27EEB9DC8);
  sub_24898D610(a5, v18, &qword_27EEB5608, &qword_248A15110);

  v27 = sub_248A122B0();
  v28 = sub_248A12E80();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v55 = a5;
    v30 = v29;
    v31 = swift_slowAlloc();
    v54 = a2;
    v32 = v31;
    v62[0] = v31;
    *v30 = 136446978;
    v33 = sub_2489FA2C8();
    v35 = v34;

    v36 = sub_24897BC00(v33, v35, v62);

    *(v30 + 4) = v36;
    v56 = v6;
    *(v30 + 12) = 2082;
    v61 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5618, &qword_248A15130);
    v37 = sub_248A12B80();
    v39 = sub_24897BC00(v37, v38, v62);

    *(v30 + 14) = v39;
    *(v30 + 22) = 1026;
    *(v30 + 24) = v60 & 1;
    *(v30 + 28) = 2082;
    sub_24898D610(v18, v16, &qword_27EEB5608, &qword_248A15110);
    v40 = sub_248A12B80();
    v42 = v41;
    sub_248983734(v18, &qword_27EEB5608, &qword_248A15110);
    v43 = sub_24897BC00(v40, v42, v62);
    v6 = v56;

    *(v30 + 30) = v43;
    _os_log_impl(&dword_248975000, v27, v28, "[%{public}s] Handle next message (context: %{public}s, isComplete: %{BOOL,public}d), error: %{public}s)", v30, 0x26u);
    swift_arrayDestroy();
    v44 = v32;
    a2 = v54;
    MEMORY[0x24C1E0A80](v44, -1, -1);
    v45 = v30;
    a5 = v55;
    MEMORY[0x24C1E0A80](v45, -1, -1);

    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {

    sub_248983734(v18, &qword_27EEB5608, &qword_248A15110);
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  if (sub_248A12650())
  {
    sub_248A12800();
    if (swift_dynamicCastClass())
    {
      sub_248A12810();
      if (!v62[3])
      {

        sub_248983734(v62, &qword_27EEB5610, &qword_248A15118);
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        v46 = v61;
        v47 = sub_248A12D40();
        v48 = v57;
        (*(*(v47 - 8) + 56))(v57, 1, 1, v47);
        v49 = sub_248A02C08(&qword_27EEB5EC0);
        v50 = swift_allocObject();
        *(v50 + 16) = v6;
        *(v50 + 24) = v49;
        *(v50 + 32) = v6;
        *(v50 + 40) = v46;
        v51 = v58;
        *(v50 + 48) = v58;
        *(v50 + 56) = a2;
        swift_retain_n();
        sub_24898C480(v51, a2);
        sub_2489AC334(0, 0, v48, &unk_248A180C8, v50);
      }
    }
  }

LABEL_16:
  v52 = sub_248A128A0();
  result = (*(*(v52 - 8) + 48))(a5, 1, v52);
  if (result == 1)
  {
    return sub_2489F7D98();
  }

  return result;
}

uint64_t sub_2489F896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_2489F8A40;

  return sub_2489F9F1C(a5, a6, a7);
}

uint64_t sub_2489F8A40(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 40);
  v7 = *v3;
  v7[6] = v2;

  if (v2)
  {
    v8 = v7[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_248A02C08(&qword_27EEB5EC0);
    v10 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_2489F8BE4, v10, v9);
  }

  else
  {
    sub_24898C4E8(a1, a2);
    v11 = v7[1];

    return v11();
  }
}

uint64_t sub_2489F8BE4()
{
  v32 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9DC8);

  sub_24898C480(v3, v2);
  v6 = v1;
  v7 = sub_248A122B0();
  v8 = sub_248A12E60();
  sub_24898C4E8(v3, v2);

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[2];
  if (v9)
  {
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v12 = 136446722;
    v15 = sub_2489FA2C8();
    v17 = v16;

    v18 = sub_24897BC00(v15, v17, &v31);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    if (v11 >> 60 == 15)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v22 = v0[3];
      v23 = v0[4];
      v20 = sub_248A11AD0();
      v19 = v24;
    }

    v25 = v0[6];
    v26 = sub_24897BC00(v20, v19, &v31);

    *(v12 + 14) = v26;
    *(v12 + 22) = 2114;
    v27 = v25;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v28;
    *v13 = v28;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Failed to parse message: %{public}s; error: %{public}@", v12, 0x20u);
    sub_248983734(v13, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {
    v21 = v0[6];
  }

  v29 = v0[1];

  return v29();
}

void sub_2489F8E9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v54 - v14);
  v16 = qword_27EEB5418;
  swift_beginAccess();
  sub_24898D610(v2 + v16, v10, &qword_27EEB5450, qword_248A14E30);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_248983734(v10, &qword_27EEB5450, qword_248A14E30);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v17 = sub_248A122D0();
    __swift_project_value_buffer(v17, qword_27EEB9DC8);

    v18 = sub_248A122B0();
    v19 = sub_248A12E60();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58[0] = v21;
      *v20 = 136446210;
      v22 = sub_2489FA2C8();
      v24 = v23;

      v25 = sub_24897BC00(v22, v24, v58);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_248975000, v18, v19, "[%{public}s] Ready continuation already resumed", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1E0A80](v21, -1, -1);
      MEMORY[0x24C1E0A80](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    if (a1)
    {
      v26 = a1;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v27 = sub_248A122D0();
      __swift_project_value_buffer(v27, qword_27EEB9DC8);

      v28 = a1;
      v29 = sub_248A122B0();
      v30 = sub_248A12E80();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v57 = v8;
        v32 = v31;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v58[0] = v56;
        *v32 = 136446466;
        v54 = v29;
        v33 = sub_2489FA2C8();
        v34 = v15;
        v36 = v35;

        v37 = sub_24897BC00(v33, v36, v58);
        v15 = v34;

        *(v32 + 4) = v37;
        *(v32 + 12) = 2114;
        v38 = a1;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v39;
        v29 = v54;
        v40 = v55;
        *v55 = v39;
        _os_log_impl(&dword_248975000, v29, v30, "[%{public}s] Resuming ready continuation with error: %{public}@", v32, 0x16u);
        sub_248983734(v40, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v40, -1, -1);
        v41 = v56;
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x24C1E0A80](v41, -1, -1);
        v42 = v32;
        v8 = v57;
        MEMORY[0x24C1E0A80](v42, -1, -1);
      }

      else
      {
      }

      v58[0] = a1;
      sub_248A12CE0();
    }

    else
    {
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v43 = sub_248A122D0();
      __swift_project_value_buffer(v43, qword_27EEB9DC8);

      v44 = sub_248A122B0();
      v45 = sub_248A12E80();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v57 = v8;
        v58[0] = v47;
        v48 = v47;
        *v46 = 136446210;
        v49 = sub_2489FA2C8();
        v56 = v15;
        v51 = v50;

        v52 = sub_24897BC00(v49, v51, v58);
        v15 = v56;

        *(v46 + 4) = v52;
        _os_log_impl(&dword_248975000, v44, v45, "[%{public}s] Resuming ready continuation with success", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        v53 = v48;
        v8 = v57;
        MEMORY[0x24C1E0A80](v53, -1, -1);
        MEMORY[0x24C1E0A80](v46, -1, -1);
      }

      else
      {
      }

      sub_248A12CF0();
    }

    (*(v12 + 8))(v15, v11);
    (*(v12 + 56))(v8, 1, 1, v11);
    swift_beginAccess();
    sub_24898D194(v8, v2 + v16, &qword_27EEB5450, qword_248A14E30);
    swift_endAccess();
  }
}

uint64_t sub_2489F9548()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  sub_2489F9DE4();
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x6D69547472617473, 0xEE00292874756F65);
  v8 = sub_248A12D40();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_248A02C08(&qword_27EEB5EC0);
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v9;
  v10[4] = v1;
  v10[5] = v2;
  swift_retain_n();
  v11 = sub_2489E5FD4(0, 0, v6, &unk_248A180B8, v10);
  v12 = *(v1 + qword_27EEB5438);
  *(v1 + qword_27EEB5438) = v11;
}

uint64_t sub_2489F9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_248A131D0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0);
  v10 = sub_248A12CD0();
  v5[7] = v10;
  v5[8] = v9;

  return MEMORY[0x2822009F8](sub_2489F9858, v10, v9);
}

uint64_t sub_2489F9858()
{
  v15 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[9] = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Peer connection activation timeout started", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = v0[6];
  sub_248A133B0();
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_2489F9A54;
  v12 = v0[6];

  return sub_248996414(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_2489F9A54()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_2489888BC;
  }

  else
  {
    v10 = sub_2489F9BEC;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2489F9BEC()
{
  v18 = v0;
  v1 = v0[11];
  sub_248A12D90();
  if (v1)
  {
    v2 = v0[6];

    v3 = v0[1];
  }

  else
  {
    if (!*(v0[2] + qword_27EEB5448))
    {
      v4 = v0[9];
      v5 = sub_248A122B0();
      v6 = sub_248A12E80();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = v0[3];
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136446210;
        v10 = sub_248A13570();
        v12 = sub_24897BC00(v10, v11, &v17);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Peer connection activation timeout hit", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x24C1E0A80](v9, -1, -1);
        MEMORY[0x24C1E0A80](v8, -1, -1);
      }

      v13 = v0[2];
      sub_248A12D00();
      sub_248A04028(&qword_27EEB55F8, MEMORY[0x277D85678]);
      v14 = swift_allocError();
      sub_248A12A70();
      sub_2489F8E9C(v14);
    }

    v15 = v0[6];

    v3 = v0[1];
  }

  return v3();
}

void sub_2489F9DE4()
{
  v1 = qword_27EEB5438;
  if (*(v0 + qword_27EEB5438))
  {
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v2 = sub_248A122D0();
    __swift_project_value_buffer(v2, qword_27EEB9DC8);
    sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x656D6954706F7473, 0xED0000292874756FLL);
    if (*(v0 + v1))
    {
      v3 = *(v0 + v1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      sub_248A12D70();

      v4 = *(v0 + v1);
    }

    *(v0 + v1) = 0;
  }
}

uint64_t sub_2489F9F1C(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0);
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489F9FD4, v6, v5);
}

uint64_t sub_2489F9FD4()
{
  v37 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);

  sub_24898C480(v3, v2);
  v5 = sub_248A122B0();
  v6 = sub_248A12E80();
  sub_24898C4E8(v3, v2);
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 40);
  if (!v7)
  {

    goto LABEL_8;
  }

  v9 = *(v0 + 32);
  v10 = *(v0 + 56);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v36 = v12;
  *v11 = 136446722;
  v13 = sub_2489FA2C8();
  v15 = v14;

  v16 = sub_24897BC00(v13, v15, &v36);

  *(v11 + 4) = v16;
  *(v11 + 12) = 1026;
  *(v11 + 14) = v10;
  *(v11 + 18) = 2082;
  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v28 = *(v0 + 32);
  v29 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v29)
    {
      v18 = BYTE6(v28);
      goto LABEL_6;
    }

LABEL_18:
    v33 = *(v0 + 24);
    v34 = *(v0 + 28);
    v32 = __OFSUB__(v34, v33);
    LODWORD(v18) = v34 - v33;
    if (v32)
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_6;
  }

  if (v29 == 2)
  {
    v30 = *(*(v0 + 24) + 16);
    v31 = *(*(v0 + 24) + 24);
    v32 = __OFSUB__(v31, v30);
    v18 = v31 - v30;
    if (!v32)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  v18 = 0;
LABEL_6:
  *(v0 + 16) = v18;
  v19 = sub_248A132F0();
  v21 = sub_24897BC00(v19, v20, &v36);

  *(v11 + 20) = v21;
  _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Transport item %{public}u with data %{public}s", v11, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x24C1E0A80](v12, -1, -1);
  MEMORY[0x24C1E0A80](v11, -1, -1);

LABEL_8:
  v22 = *(*(v0 + 40) + 16);
  v23 = *(MEMORY[0x277D05180] + 4);
  v35 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v24 = swift_task_alloc();
  *(v0 + 48) = v24;
  *v24 = v0;
  v24[1] = sub_248989634;
  v25 = *(v0 + 24);
  v26 = *(v0 + 32);
  v27 = *(v0 + 56);

  return v35(v27, v25, v26);
}

uint64_t sub_2489FA2C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_248A11BC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_248A13100();
  v12 = sub_248A13570();
  v14 = v13;

  v28 = v12;
  v29 = v14;
  MEMORY[0x24C1DF8B0](0x63656E6E6F432820, 0xEE00203A6E6F6974);
  v15 = *(v0 + qword_27EEB5440);
  v16 = *(v1 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v26 = (*(v16 + 8))(ObjectType, v16);
  v18 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v18);

  MEMORY[0x24C1DF8B0](0x656369766544202CLL, 0xEA0000000000203ALL);
  v19 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D610(v1 + v19, v11, &qword_27EEB5400, &unk_248A14E10);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_248983734(v11, &qword_27EEB5400, &unk_248A14E10);
    v20 = 0xE500000000000000;
    v21 = 0x4449206F4ELL;
  }

  else
  {
    (*(v4 + 16))(v7, v11, v3);
    sub_248983734(v11, &qword_27EEB5400, &unk_248A14E10);
    v22 = sub_248A11B90();
    v20 = v23;
    (*(v4 + 8))(v7, v3);
    v21 = v22;
  }

  MEMORY[0x24C1DF8B0](v21, v20);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return v28;
}

uint64_t sub_2489FA5E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_248A12670();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_248A11F10();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0);
  v10 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489FA750, v10, v9);
}

uint64_t sub_2489FA750()
{
  v42 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DC8);
  (*(v2 + 16))(v1, v5, v3);

  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = *(v0 + 24);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41[0] = v39;
    *v14 = 136446466;
    v15 = sub_2489FA2C8();
    v17 = v16;

    v18 = sub_24897BC00(v15, v17, v41);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1026;
    sub_248A04028(&qword_27EEB6220, MEMORY[0x277D05060]);
    sub_248A13110();
    LODWORD(v18) = *(v0 + 92);
    (*(v11 + 8))(v10, v12);
    *(v14 + 14) = v18;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Send item %{public}u", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C1E0A80](v39, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {
    (*(v11 + 8))(*(v0 + 72), *(v0 + 56));
  }

  v19 = *(v0 + 56);
  v20 = *(v0 + 16);
  sub_248A12800();
  sub_248A04028(&qword_27EEB6220, MEMORY[0x277D05060]);
  sub_248A13110();
  v21 = *(v0 + 80);
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  v24 = *(v0 + 40);
  v38 = *(v0 + 32);
  v40 = *(v0 + 72);
  v25 = *(v0 + 16);
  v37 = *(v0 + 24);

  v26 = sub_248A127F0();
  v41[3] = MEMORY[0x277D84CC0];
  LODWORD(v41[0]) = v21;
  sub_248A12820();
  sub_248A13110();
  *(v0 + 88) = *(v0 + 84);
  sub_248A132F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5468, &qword_248A14E70);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_248A14E00;
  *(v27 + 32) = v26;
  v28 = sub_248A12660();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  v31 = sub_248A12640();
  v32 = *(v37 + qword_27EEB5440);
  v33 = *(v37 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v24 + 104))(v22, *MEMORY[0x277CD8DA8], v38);
  (*(v33 + 64))(0, 0xF000000000000000, v31, 1, v22, ObjectType, v33);

  (*(v24 + 8))(v22, v38);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2489FAC1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-1] - v4;
  sub_2489FAEBC();
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DC8);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, v18);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_24897BC00(0xD000000000000010, 0x8000000248A1B110, v18);
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v11 = sub_248A12D40();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v14 = sub_2489E5FD4(0, 0, v5, &unk_248A18090, v13);
  swift_beginAccess();
  v15 = *(v1 + 24);
  *(v1 + 24) = v14;
}

uint64_t sub_2489FAEBC()
{
  v1 = v0;
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
    v10[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, v10);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0x72616548706F7473, 0xEF29287461654274, v10);
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  swift_beginAccess();
  if (*(v1 + 24))
  {
    v7 = *(v1 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    sub_248A12D70();

    v8 = *(v1 + 24);
  }

  *(v1 + 24) = 0;
}

uint64_t sub_2489FB0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_248A131C0();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = sub_248A131D0();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FB1E0, 0, 0);
}

uint64_t sub_2489FB1E0()
{
  v22 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = sub_248A122D0();
  *(v0 + 144) = __swift_project_value_buffer(v2, qword_27EEB9DC8);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v21);
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Waiting to send heartbeat...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v7 = *(v0 + 136);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 88);
  sub_248A133B0();
  *(v0 + 64) = xmmword_248A17DD0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v13 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928]);
  sub_248A13390();
  sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8]);
  sub_248A131E0();
  v14 = *(v11 + 8);
  *(v0 + 152) = v14;
  *(v0 + 160) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v12);
  v15 = *(MEMORY[0x277D85A58] + 4);
  v16 = swift_task_alloc();
  *(v0 + 168) = v16;
  *v16 = v0;
  v16[1] = sub_2489FB4C0;
  v17 = *(v0 + 136);
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);

  return MEMORY[0x2822008C8](v19, v0 + 40, v18, v13);
}

uint64_t sub_2489FB4C0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 176) = v0;

  v5(v6, v7);
  if (v0)
  {
    v8 = sub_2489FBAAC;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v8 = sub_2489FB658;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2489FB658()
{
  v33 = v0;
  v1 = *(v0 + 80);
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 192) = v3;
    *v3 = v0;
    v3[1] = sub_2489FBFC4;

    return GuestUserAccessResponsePeerConnectionService.sendHeartbeat()();
  }

  else if (sub_248A12D80())
  {
    v5 = *(v0 + 144);
    v6 = sub_248A122B0();
    v7 = sub_248A12E80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v32);
      _os_log_impl(&dword_248975000, v6, v7, "[%{public}s] Heartbeat cancelled", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1E0A80](v9, -1, -1);
      MEMORY[0x24C1E0A80](v8, -1, -1);
    }

    v10 = *(v0 + 136);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v14 = sub_248A122D0();
    *(v0 + 144) = __swift_project_value_buffer(v14, qword_27EEB9DC8);
    v15 = sub_248A122B0();
    v16 = sub_248A12E80();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v32);
      _os_log_impl(&dword_248975000, v15, v16, "[%{public}s] Waiting to send heartbeat...", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1E0A80](v18, -1, -1);
      MEMORY[0x24C1E0A80](v17, -1, -1);
    }

    v19 = *(v0 + 136);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v23 = *(v0 + 96);
    v22 = *(v0 + 104);
    v24 = *(v0 + 88);
    sub_248A133B0();
    *(v0 + 64) = xmmword_248A17DD0;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v25 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928]);
    sub_248A13390();
    sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8]);
    sub_248A131E0();
    v26 = *(v23 + 8);
    *(v0 + 152) = v26;
    *(v0 + 160) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v22, v24);
    v27 = *(MEMORY[0x277D85A58] + 4);
    v28 = swift_task_alloc();
    *(v0 + 168) = v28;
    *v28 = v0;
    v28[1] = sub_2489FB4C0;
    v29 = *(v0 + 136);
    v31 = *(v0 + 112);
    v30 = *(v0 + 120);

    return MEMORY[0x2822008C8](v31, v0 + 40, v30, v25);
  }
}

uint64_t sub_2489FBAAC()
{
  v40 = v0;
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v39);
    *(v6 + 12) = 2114;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Error sending heartbeat: %{public}@", v6, 0x16u);
    sub_248983734(v7, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);

    if ((sub_248A12D80() & 1) == 0)
    {
LABEL_3:
      v11 = sub_248A122D0();
      *(v0 + 144) = __swift_project_value_buffer(v11, qword_27EEB9DC8);
      v12 = sub_248A122B0();
      v13 = sub_248A12E80();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v39 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v39);
        _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Waiting to send heartbeat...", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x24C1E0A80](v15, -1, -1);
        MEMORY[0x24C1E0A80](v14, -1, -1);
      }

      v16 = *(v0 + 136);
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      v21 = *(v0 + 88);
      sub_248A133B0();
      *(v0 + 64) = xmmword_248A17DD0;
      *(v0 + 40) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;
      v22 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928]);
      sub_248A13390();
      sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8]);
      sub_248A131E0();
      v23 = *(v20 + 8);
      *(v0 + 152) = v23;
      *(v0 + 160) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23(v19, v21);
      v24 = *(MEMORY[0x277D85A58] + 4);
      v25 = swift_task_alloc();
      *(v0 + 168) = v25;
      *v25 = v0;
      v25[1] = sub_2489FB4C0;
      v26 = *(v0 + 136);
      v28 = *(v0 + 112);
      v27 = *(v0 + 120);

      return MEMORY[0x2822008C8](v28, v0 + 40, v27, v22);
    }
  }

  else
  {

    if ((sub_248A12D80() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v29 = *(v0 + 144);
  v30 = sub_248A122B0();
  v31 = sub_248A12E80();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v39);
    _os_log_impl(&dword_248975000, v30, v31, "[%{public}s] Heartbeat cancelled", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x24C1E0A80](v33, -1, -1);
    MEMORY[0x24C1E0A80](v32, -1, -1);
  }

  v34 = *(v0 + 136);
  v35 = *(v0 + 104);
  v36 = *(v0 + 112);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2489FBFC4()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_2489FC4BC;
  }

  else
  {
    v4 = sub_2489FC0F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2489FC0F4()
{
  v30 = v0;
  if (sub_248A12D80())
  {
    v1 = *(v0 + 144);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v29 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v29);
      _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Heartbeat cancelled", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x24C1E0A80](v5, -1, -1);
      MEMORY[0x24C1E0A80](v4, -1, -1);
    }

    v6 = *(v0 + 136);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = sub_248A122D0();
    *(v0 + 144) = __swift_project_value_buffer(v11, qword_27EEB9DC8);
    v12 = sub_248A122B0();
    v13 = sub_248A12E80();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v29);
      _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Waiting to send heartbeat...", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1E0A80](v15, -1, -1);
      MEMORY[0x24C1E0A80](v14, -1, -1);
    }

    v16 = *(v0 + 136);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 88);
    sub_248A133B0();
    *(v0 + 64) = xmmword_248A17DD0;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v22 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928]);
    sub_248A13390();
    sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8]);
    sub_248A131E0();
    v23 = *(v20 + 8);
    *(v0 + 152) = v23;
    *(v0 + 160) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v19, v21);
    v24 = *(MEMORY[0x277D85A58] + 4);
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    *v25 = v0;
    v25[1] = sub_2489FB4C0;
    v26 = *(v0 + 136);
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);

    return MEMORY[0x2822008C8](v28, v0 + 40, v27, v22);
  }
}

uint64_t sub_2489FC4BC()
{
  v40 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v39);
    *(v6 + 12) = 2114;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Error sending heartbeat: %{public}@", v6, 0x16u);
    sub_248983734(v7, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);

    if ((sub_248A12D80() & 1) == 0)
    {
LABEL_3:
      v11 = sub_248A122D0();
      *(v0 + 144) = __swift_project_value_buffer(v11, qword_27EEB9DC8);
      v12 = sub_248A122B0();
      v13 = sub_248A12E80();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v39 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v39);
        _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Waiting to send heartbeat...", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x24C1E0A80](v15, -1, -1);
        MEMORY[0x24C1E0A80](v14, -1, -1);
      }

      v16 = *(v0 + 136);
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      v21 = *(v0 + 88);
      sub_248A133B0();
      *(v0 + 64) = xmmword_248A17DD0;
      *(v0 + 48) = 0;
      *(v0 + 40) = 0;
      *(v0 + 56) = 1;
      v22 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928]);
      sub_248A13390();
      sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8]);
      sub_248A131E0();
      v23 = *(v20 + 8);
      *(v0 + 152) = v23;
      *(v0 + 160) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23(v19, v21);
      v24 = *(MEMORY[0x277D85A58] + 4);
      v25 = swift_task_alloc();
      *(v0 + 168) = v25;
      *v25 = v0;
      v25[1] = sub_2489FB4C0;
      v26 = *(v0 + 136);
      v28 = *(v0 + 112);
      v27 = *(v0 + 120);

      return MEMORY[0x2822008C8](v28, v0 + 40, v27, v22);
    }
  }

  else
  {

    if ((sub_248A12D80() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v29 = *(v0 + 144);
  v30 = sub_248A122B0();
  v31 = sub_248A12E80();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v39);
    _os_log_impl(&dword_248975000, v30, v31, "[%{public}s] Heartbeat cancelled", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x24C1E0A80](v33, -1, -1);
    MEMORY[0x24C1E0A80](v32, -1, -1);
  }

  v34 = *(v0 + 136);
  v35 = *(v0 + 104);
  v36 = *(v0 + 112);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t GuestUserAccessResponsePeerConnectionService.__allocating_init(peerConnection:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  sub_248A11DF0();
  *(v5 + 16) = a1;
  return v5;
}

uint64_t sub_2489FCA24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_2489FCA84()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_2489FCABC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t GuestUserAccessResponsePeerConnectionService.init(peerConnection:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  sub_248A11DF0();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_2489FCB90(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_248A11F10();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FCC50, 0, 0);
}

uint64_t sub_2489FCC50()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0xD000000000000016, 0x8000000248A18DD0);
  v0[16] = *(v1 + 16);
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489FCD8C, v4, v3);
}

uint64_t sub_2489FCD8C()
{
  sub_248A03118(*(v0 + 96), *(v0 + 128), &off_285B62EC8, "[%{public}s] Add observer %{public}s", MEMORY[0x277D04F48]);

  return MEMORY[0x2822009F8](sub_2489FCE1C, 0, 0);
}

uint64_t sub_2489FCE1C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v0[2] = v0[16];
  v5 = *MEMORY[0x277D04FB0];
  v6 = *(v3 + 104);
  v0[18] = v6;
  v0[19] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1, v5, v2);
  v7 = swift_allocObject();
  v0[20] = v7;
  swift_weakInit();
  v8 = *(MEMORY[0x277D05170] + 4);
  swift_retain_n();
  v9 = swift_task_alloc();
  v0[21] = v9;
  v10 = sub_248A11FF0();
  v11 = sub_248A02C08(&qword_27EEB61F0);
  v0[22] = v11;
  v12 = sub_248A04028(&qword_27EEB61F8, MEMORY[0x277D050B0]);
  *v9 = v0;
  v9[1] = sub_2489FCFC8;
  v13 = v0[17];
  v14 = v0[15];

  return MEMORY[0x28215ABC8](v14, &unk_248A17DF8, v7, v13, v10, v11, v12);
}

uint64_t sub_2489FCFC8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 120);
  v6 = *(*v0 + 112);
  v7 = *(*v0 + 104);
  v10 = *v0;

  v8 = *(v6 + 8);
  *(v1 + 184) = v8;
  *(v1 + 192) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  return MEMORY[0x2822009F8](sub_2489FD16C, 0, 0);
}

uint64_t sub_2489FD16C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v0[3] = v0[16];
  v2(v3, *MEMORY[0x277D04FC8], v4);
  v6 = swift_allocObject();
  v0[25] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[26] = v8;
  v9 = sub_248A12010();
  v10 = sub_248A04028(&qword_27EEB6200, MEMORY[0x277D050C8]);
  *v8 = v0;
  v8[1] = sub_2489FD2CC;
  v11 = v0[22];
  v12 = v0[17];
  v13 = v0[15];

  return MEMORY[0x28215ABC8](v13, &unk_248A17E08, v6, v12, v9, v11, v10);
}

uint64_t sub_2489FD2CC()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 104);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489FD46C, 0, 0);
}

uint64_t sub_2489FD46C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v0[4] = v0[16];
  v2(v3, *MEMORY[0x277D04FC0], v4);
  v6 = swift_allocObject();
  v0[27] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_2489FD58C;
  v9 = v0[22];
  v10 = v0[17];
  v11 = v0[15];

  return MEMORY[0x28215ABD0](v11, &unk_248A17E18, v6, v10, v9);
}

uint64_t sub_2489FD58C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 104);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489FD734, 0, 0);
}

uint64_t sub_2489FD734()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v0[5] = v0[16];
  v2(v3, *MEMORY[0x277D05018], v4);
  v6 = swift_allocObject();
  v0[29] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_2489FD854;
  v9 = v0[22];
  v10 = v0[17];
  v11 = v0[15];

  return MEMORY[0x28215ABD0](v11, &unk_248A17E28, v6, v10, v9);
}

uint64_t sub_2489FD854()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 104);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489FD9FC, 0, 0);
}

uint64_t sub_2489FD9FC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v0[6] = v0[16];
  v2(v3, *MEMORY[0x277D05010], v4);
  v6 = swift_allocObject();
  v0[31] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_2489FDB1C;
  v9 = v0[22];
  v10 = v0[17];
  v11 = v0[15];

  return MEMORY[0x28215ABD0](v11, &unk_248A17E38, v6, v10, v9);
}

uint64_t sub_2489FDB1C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 104);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489FDCC4, 0, 0);
}

uint64_t sub_2489FDCC4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v0[7] = v0[16];
  v2(v3, *MEMORY[0x277D04FD0], v4);
  v6 = swift_allocObject();
  v0[33] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_2489FDDE4;
  v9 = v0[22];
  v10 = v0[17];
  v11 = v0[15];

  return MEMORY[0x28215ABD0](v11, &unk_248A17E48, v6, v10, v9);
}

uint64_t sub_2489FDDE4()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 104);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489FDF8C, 0, 0);
}

uint64_t sub_2489FDF8C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v0[8] = v0[16];
  v2(v3, *MEMORY[0x277D05058], v4);
  v6 = swift_allocObject();
  v0[35] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[36] = v8;
  v9 = sub_248A11E40();
  v10 = sub_248A04028(&qword_28150F610, MEMORY[0x277D04F78]);
  *v8 = v0;
  v8[1] = sub_2489FE0EC;
  v11 = v0[22];
  v12 = v0[17];
  v13 = v0[15];

  return MEMORY[0x28215ABC8](v13, &unk_248A17E58, v6, v12, v9, v11, v10);
}

uint64_t sub_2489FE0EC()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 104);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489FE28C, 0, 0);
}

uint64_t sub_2489FE28C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v0[9] = v0[16];
  v2(v3, *MEMORY[0x277D05050], v4);
  v6 = swift_allocObject();
  v0[37] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_2489FE3A8;
  v9 = v0[22];
  v10 = v0[17];
  v11 = v0[15];
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D05188];

  return MEMORY[0x28215ABC8](v11, &unk_248A17E68, v6, v10, v12, v9, v13);
}

uint64_t sub_2489FE3A8()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 104);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_2489FE548, 0, 0);
}

uint64_t sub_2489FE548()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v0[10] = v0[16];
  v2(v3, *MEMORY[0x277D04FE0], v4);
  v6 = swift_allocObject();
  v0[39] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[40] = v8;
  *v8 = v0;
  v8[1] = sub_2489FE660;
  v9 = v0[22];
  v10 = v0[17];
  v11 = v0[15];

  return MEMORY[0x28215ABD0](v11, &unk_248A17E78, v6, v10, v9);
}

uint64_t sub_2489FE660()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 184);
  v6 = *(*v0 + 128);
  v7 = *(*v0 + 120);
  v8 = *(*v0 + 104);
  v9 = *v0;

  v5(v7, v8);

  v10 = swift_task_alloc();
  v1[41] = v10;
  *v10 = v9;
  v10[1] = sub_2489FE870;
  v11 = v1[16];
  v12 = v1[11];

  return sub_2489F59C4(v12);
}

uint64_t sub_2489FE870()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 120);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2489FE980(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FEA14, 0, 0);
}

uint64_t sub_2489FEA14()
{
  v1 = v0[6];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[5];
    v5 = sub_248A11FF0();
    (*(*(v5 - 8) + 16))(v2, v4, v5);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v2);

    sub_248A03DB4(v2, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2489FEB28(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FEBBC, 0, 0);
}

uint64_t sub_2489FEBBC()
{
  v1 = v0[6];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[5];
    v5 = sub_248A12010();
    (*(*(v5 - 8) + 16))(v2, v4, v5);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v2);

    sub_248A03DB4(v2, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2489FECD0(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FED64, 0, 0);
}

uint64_t sub_2489FED64()
{
  v1 = v0[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[6];
    v3 = v0[7];
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v3);

    sub_248A03DB4(v3, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2489FEE2C(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FEEC0, 0, 0);
}

uint64_t sub_2489FEEC0()
{
  v1 = v0[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[6];
    v3 = v0[7];
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v3);

    sub_248A03DB4(v3, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2489FEF88(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FF01C, 0, 0);
}

uint64_t sub_2489FF01C()
{
  v1 = v0[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[6];
    v3 = v0[7];
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v3);

    sub_248A03DB4(v3, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2489FF0E4(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FF178, 0, 0);
}

uint64_t sub_2489FF178()
{
  v1 = v0[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[6];
    v3 = v0[7];
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v3);

    sub_248A03DB4(v3, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2489FF240(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FF2D4, 0, 0);
}

uint64_t sub_2489FF2D4()
{
  v1 = v0[6];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[5];
    v5 = sub_248A11E40();
    (*(*(v5 - 8) + 16))(v2, v4, v5);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v2);

    sub_248A03DB4(v2, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2489FF3E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v2[5] = a2;
  v2[6] = v3;
  v2[7] = v4;
  return MEMORY[0x2822009F8](sub_2489FF410, 0, 0);
}

uint64_t sub_2489FF410()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_2489FF500;
    v5 = v0[6];
    v4 = v0[7];

    return sub_248A01390(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2489FF500()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489EC818, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2489FF65C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_248A04190();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489FF70C()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0x6164696C61766E69, 0xEC00000029286574);
  sub_2489FAEBC();
  *(v0 + 24) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489FF84C, v4, v3);
}

uint64_t sub_2489FF84C()
{
  sub_248A03118(v0[2], v0[3], &off_285B62EC8, "[%{public}s] Remove observer %{public}s", MEMORY[0x277D04F50]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2489FF91C;
  v2 = v0[3];

  return sub_2489F6784();
}

uint64_t sub_2489FF91C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2489FFA14(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2489FFA34, 0, 0);
}

uint64_t sub_2489FFA34()
{
  *(v0 + 56) = *(*(v0 + 48) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0);
  v2 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489FFAEC, v2, v1);
}

uint64_t sub_2489FFAEC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D610(v1 + v3, v2, &qword_27EEB5400, &unk_248A14E10);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2489FFB8C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  v3 = sub_248A11F10();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v2[21] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FFCE0, 0, 0);
}

uint64_t sub_2489FFCE0()
{
  v52 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 96);
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB9DC8);
  sub_248A03D4C(v2, v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v51 = v10;
    *v9 = 136446466;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, &v51);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = GuestUserAccessPeerConnectionServiceMessage.Response.description.getter();
    v16 = v15;
    sub_248A03DB4(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
    v17 = sub_24897BC00(v14, v16, &v51);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Sending message: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  else
  {

    sub_248A03DB4(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  }

  v18 = *(v0 + 96);
  GuestUserAccessPeerConnectionServiceMessage.Response.transportPayload.getter(v0 + 56);
  v19 = *(v0 + 168);
  v20 = *(v0 + 128);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  if (*(v0 + 80))
  {
    v23 = *(v0 + 184);
    sub_248978948((v0 + 56), v0 + 16);
    v25 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v25);
    v26 = *(v21 + 16);
    sub_248A03D4C(v22, v23, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *(v20 + 104);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v28(*(v0 + 152), *MEMORY[0x277D05038], *(v0 + 120));
        goto LABEL_20;
      }

      v29 = *(v0 + 184);
      v30 = *(v0 + 152);
      v31 = *(v0 + 120);
      v32 = MEMORY[0x277D05028];
    }

    else
    {
      v29 = *(v0 + 184);
      if (EnumCaseMultiPayload)
      {
        v30 = *(v0 + 152);
        v31 = *(v0 + 120);
        v32 = MEMORY[0x277D05030];
      }

      else
      {
        v30 = *(v0 + 152);
        v31 = *(v0 + 120);
        v32 = MEMORY[0x277D04FB8];
      }
    }

    v28(v30, *v32, v31);
    sub_248A03DB4(v29, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
LABEL_20:
    (*(*(v0 + 128) + 32))(*(v0 + 160), *(v0 + 152), *(v0 + 120));
    v41 = sub_248A12F20();
    *(v0 + 200) = v41;
    v42 = *(v41 - 8);
    *(v0 + 208) = v42;
    v43 = *(v42 + 64) + 15;
    v44 = swift_task_alloc();
    *(v0 + 216) = v44;
    v45 = *(v25 - 8);
    (*(v45 + 16))();
    (*(v45 + 56))(v44, 0, 1, v25);
    v46 = swift_task_alloc();
    *(v0 + 224) = v46;
    *v46 = v0;
    v46[1] = sub_248A0030C;
    v47 = *(v0 + 160);

    return PeerConnection.send<A>(_:payload:)(v47, v44, v25, v24);
  }

  v33 = *(v0 + 176);
  sub_248983734(v0 + 56, &qword_27EEB6208, &qword_248A17EB0);
  v34 = *(v21 + 16);
  sub_248A03D4C(v22, v33, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *(v20 + 104);
  if (v35 > 1)
  {
    if (v35 != 2)
    {
      v36(*(v0 + 136), *MEMORY[0x277D05038], *(v0 + 120));
      goto LABEL_26;
    }

    v37 = *(v0 + 176);
    v38 = *(v0 + 136);
    v39 = *(v0 + 120);
    v40 = MEMORY[0x277D05028];
  }

  else
  {
    v37 = *(v0 + 176);
    if (v35)
    {
      v38 = *(v0 + 136);
      v39 = *(v0 + 120);
      v40 = MEMORY[0x277D05030];
    }

    else
    {
      v38 = *(v0 + 136);
      v39 = *(v0 + 120);
      v40 = MEMORY[0x277D04FB8];
    }
  }

  v36(v38, *v40, v39);
  sub_248A03DB4(v37, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
LABEL_26:
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v49 = swift_task_alloc();
  *(v0 + 240) = v49;
  *v49 = v0;
  v49[1] = sub_248A005AC;
  v50 = *(v0 + 144);

  return sub_2489FA5E8(v50);
}

uint64_t sub_248A0030C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 200);
  v7 = *(*v1 + 160);
  v8 = *(*v1 + 128);
  v9 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 232) = v0;

  (*(v5 + 8))(v4, v6);
  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    v11 = sub_248A00794;
  }

  else
  {
    v12 = *(v2 + 216);

    v11 = sub_248A004F4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_248A004F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_248A005AC()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *v1;
  v6[31] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A0085C, 0, 0);
  }

  else
  {
    v8 = v6[23];
    v7 = v6[24];
    v9 = v6[22];
    v11 = v6[19];
    v10 = v6[20];
    v12 = v6[17];
    v13 = v6[18];

    v14 = v6[1];

    return v14();
  }
}

uint64_t sub_248A00794()
{
  v1 = v0[27];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[17];
  v8 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_248A0085C()
{
  v1 = v0[31];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_248A00914(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_27EEB9DC8);
  sub_248A03D4C(a1, v11, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v5;
    v34 = v16;
    v17 = v16;
    *v15 = 136446466;
    v18 = sub_248A13570();
    v20 = sub_24897BC00(v18, v19, &v34);
    v32 = v1;
    v21 = v20;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    v22 = GuestUserAccessPeerConnectionServiceMessage.Request.description.getter();
    v24 = v23;
    sub_248A03DB4(v11, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
    v25 = sub_24897BC00(v22, v24, &v34);
    v2 = v32;

    *(v15 + 14) = v25;
    _os_log_impl(&dword_248975000, v13, v14, "[%{public}s] Received request: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v17, -1, -1);
    MEMORY[0x24C1E0A80](v15, -1, -1);
  }

  else
  {

    sub_248A03DB4(v11, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  sub_248A03D4C(a1, v9, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 3)
  {
    v28 = sub_2489FAEBC();
  }

  else
  {
    v28 = sub_248A03DB4(v9, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  MEMORY[0x28223BE20](v28);
  *(&v31 - 2) = v2;
  *(&v31 - 1) = a1;
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0xD000000000000013, 0x8000000248A1B0F0);
  MEMORY[0x28223BE20](v29);
  *(&v31 - 2) = sub_248A03E14;
  *(&v31 - 1) = (&v31 - 4);
  return sub_248A11DC0();
}

uint64_t sub_248A00CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10[3] = type metadata accessor for GuestUserAccessResponsePeerConnectionService();
  v10[4] = &protocol witness table for GuestUserAccessResponsePeerConnectionService;
  v10[0] = a3;
  v8 = *(a2 + 8);

  v8(v10, a4, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_248A00D94(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);
  v5 = sub_248A122B0();
  v6 = sub_248A12E80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446466;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    if (v3)
    {
      v12 = 0xD000000000000015;
    }

    else
    {
      v12 = 0xD00000000000001ALL;
    }

    if (v3)
    {
      v13 = "sendGuestUserAccessResponse(_:)";
    }

    else
    {
      v13 = "peerConnectionDidFail";
    }

    v14 = sub_24897BC00(v12, v13 | 0x8000000000000000, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Received status update: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  MEMORY[0x28223BE20](v15);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0xD000000000000013, 0x8000000248A1B0F0);
  MEMORY[0x28223BE20](v16);
  return sub_248A11DC0();
}

uint64_t sub_248A01030(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v11[3] = type metadata accessor for GuestUserAccessResponsePeerConnectionService();
  v11[4] = &protocol witness table for GuestUserAccessResponsePeerConnectionService;
  v11[0] = a3;
  v10 = a4 & 1;
  v8 = *(a2 + 16);

  v8(v11, &v10, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_248A010E0()
{
  v1 = *v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  swift_unknownObjectRetain();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446722;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000012, 0x8000000248A1B040, &v14);
    *(v5 + 22) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58B8, &qword_248A15CB0);
    v10 = sub_248A12B80();
    v12 = sub_24897BC00(v10, v11, &v14);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "%{public}s %{public}s: %{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  return sub_248A11DB0();
}

uint64_t sub_248A01314(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    a2(a1, v4);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_248A01390(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_248A11BC0();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A01498, 0, 0);
}

uint64_t sub_248A01498()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0xD000000000000019, 0x8000000248A1B0D0);
  sub_248A11B80();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_248983734(v0[9], &qword_27EEB5400, &unk_248A14E10);
    v7 = sub_248A122B0();
    v8 = sub_248A12E60();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_248975000, v7, v8, "Peer identifier is not a valid UUID", v9, 2u);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }

    v10 = v0[12];
    v11 = v0[8];
    v12 = v0[9];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[7];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v0[13] = *(v15 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_248A02C08(&qword_27EEB5EC0);
    v17 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_248A01714, v17, v16);
  }
}

uint64_t sub_248A01714()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  (*(v3 + 16))(v4, v0[12], v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D194(v4, v1 + v5, &qword_27EEB5400, &unk_248A14E10);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_248A01804, 0, 0);
}

uint64_t sub_248A01804()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t GuestUserAccessResponsePeerConnectionService.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC13DeviceSharing44GuestUserAccessResponsePeerConnectionService_observers;
  v4 = sub_248A11E00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GuestUserAccessResponsePeerConnectionService.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC13DeviceSharing44GuestUserAccessResponsePeerConnectionService_observers;
  v4 = sub_248A11E00();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_248A019E0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_2489FFB8C(a1);
}

uint64_t sub_248A01A78(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_2489FCB90(a1);
}

uint64_t sub_248A01B34()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0x6164696C61766E69, 0xEC00000029286574);
  sub_2489FAEBC();
  *(v0 + 24) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248A01C74, v4, v3);
}

uint64_t sub_248A01C74()
{
  sub_248A03118(*(v0 + 16), *(v0 + 24), &off_285B62EC8, "[%{public}s] Remove observer %{public}s", MEMORY[0x277D04F50]);

  return MEMORY[0x2822009F8](sub_248A01D00, 0, 0);
}

uint64_t sub_248A01D00()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_248A0427C;

  return sub_2489F6784();
}

uint64_t sub_248A01DA8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return GuestUserAccessResponsePeerConnectionService.sendHeartbeat()();
}

uint64_t GuestUserAccessResponsePeerConnectionService.sendHeartbeat()()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_248A11F10();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A01F20, 0, 0);
}

uint64_t sub_248A01F20()
{
  v15 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Sending heartbeat", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0[2] + 16);
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D04FF8], v0[4]);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_248A02120;
  v12 = v0[6];

  return sub_2489FA5E8(v12);
}

uint64_t sub_248A02120()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489E3118, 0, 0);
  }

  else
  {
    v7 = v6[6];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_248A022C8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_248A022EC, 0, 0);
}

uint64_t sub_248A022EC()
{
  *(v0 + 56) = *(*(v0 + 48) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0);
  v2 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248A04278, v2, v1);
}

uint64_t GuestUserAccessResponsePeerConnectionService.description.getter()
{
  v1 = *v0;
  v5 = sub_248A13570();
  MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
  v2 = v0[2];
  v3 = sub_2489FA2C8();
  MEMORY[0x24C1DF8B0](v3);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_248A024B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return GuestUserAccessResponsePeerConnectionService.sendHeartbeat()();
}

uint64_t sub_248A02540()
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
    v15 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v10 = v0[2];
    v11 = sub_2489FA2C8();
    v13 = sub_24897BC00(v11, v12, &v15);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Peer connection %{public}s did establish", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  sub_2489FAC1C();
  v16 = 0;
  return sub_248A00D94(&v16);
}

uint64_t sub_248A02718(void *a1)
{
  v3 = *v1;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);

  v5 = a1;
  v6 = sub_248A122B0();
  v7 = sub_248A12E60();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136446722;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    v14 = v1[2];
    v15 = sub_2489FA2C8();
    v17 = sub_24897BC00(v15, v16, &v21);

    *(v8 + 14) = v17;
    *(v8 + 22) = 2114;
    v18 = a1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v19;
    *v9 = v19;
    _os_log_impl(&dword_248975000, v6, v7, "[%{public}s] Peer connection %{public}s did fail with error: %{public}@", v8, 0x20u);
    sub_248983734(v9, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  sub_2489FAEBC();
  v22 = 1;
  return sub_248A00D94(&v22);
}

uint64_t sub_248A02968()
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
    v15 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v10 = v0[2];
    v11 = sub_2489FA2C8();
    v13 = sub_24897BC00(v11, v12, &v15);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Peer connection %{public}s did cancel", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  return sub_2489FAEBC();
}

uint64_t sub_248A02B70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489FE980(a1, v1);
}

uint64_t sub_248A02C08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5898, &qword_248A15C28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248A02C58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489FEB28(a1, v1);
}

uint64_t sub_248A02CF0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FECD0(v0);
}

uint64_t sub_248A02D80()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FEE2C(v0);
}

uint64_t sub_248A02E10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FEF88(v0);
}

uint64_t sub_248A02EA0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FF0E4(v0);
}

uint64_t sub_248A02F30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489FF240(a1, v1);
}

uint64_t sub_248A02FC8(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489FF3E8(a1, v1);
}

uint64_t sub_248A03060()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FF63C(v0);
}

uint64_t sub_248A03118(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(void))
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);

  v9 = sub_248A122B0();
  v10 = sub_248A12E80();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446466;
    v13 = sub_2489FA2C8();
    v23 = a5;
    v14 = a4;
    v16 = v15;

    v17 = sub_24897BC00(v13, v16, &v24);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB55F0, &qword_248A150F0);
    v18 = sub_248A12B80();
    v20 = sub_24897BC00(v18, v19, &v24);

    *(v11 + 14) = v20;
    v21 = v14;
    a5 = v23;
    _os_log_impl(&dword_248975000, v9, v10, v21, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  else
  {
  }

  return a5(a1);
}

uint64_t sub_248A03334(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB9DC8);
  swift_unknownObjectRetain();
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446722;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_24897BC00(0x726573624F646461, 0xEF293A5F28726576, &v15);
    *(v6 + 22) = 2082;
    swift_unknownObjectRetain();
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

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionServiceProviding.sendMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t type metadata accessor for GuestUserAccessResponsePeerConnectionService()
{
  result = qword_27EEB6210;
  if (!qword_27EEB6210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A0373C()
{
  result = sub_248A11E00();
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

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionService.activate(transaction:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return v8(a1);
}

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionService.invalidate()()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2489839A0;

  return v6();
}

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionService.peerIdentifier()(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return v8(a1);
}

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionService.sendMessage(_:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return v8(a1);
}

uint64_t sub_248A03D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_248A03DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248A03E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489FB0B8(a1, v4, v5, v6);
}

uint64_t objectdestroy_48Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_248A03F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489F9748(a1, v4, v5, v7, v6);
}

uint64_t sub_248A04028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248A040B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_248978D74;

  return sub_2489F896C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_248A04190()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);
  oslog = sub_248A122B0();
  v1 = sub_248A12E80();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_248975000, oslog, v1, "Received heartbeat.", v2, 2u);
    MEMORY[0x24C1E0A80](v2, -1, -1);
  }
}

uint64_t sub_248A04288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_248A042AC, 0, 0);
}

uint64_t sub_248A042AC()
{
  v1 = v0[2];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6228, &qword_248A182C8);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v9 = (v0[3] + *v0[3]);
    v4 = *(v0[3] + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_248A04418;
    v6 = v0[4];

    return v9(v3);
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_248A04418()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_248A0452C;
  }

  else
  {
    v3 = sub_2489E341C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248A0452C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_248A04590()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_248A045C0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_248A04608, 0, 0);
}

uint64_t sub_248A04608()
{
  v13 = v0;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000014, 0x8000000248A1B430, &v12);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0[2] + 56);
  v0[4] = v10;

  return MEMORY[0x2822009F8](sub_248A047D8, v10, 0);
}

uint64_t sub_248A047FC()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_248A04844, 0, 0);
}

uint64_t sub_248A04844()
{
  v13 = v0;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000017, 0x8000000248A1B410, &v12);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0[2] + 56);
  v0[4] = v10;

  return MEMORY[0x2822009F8](sub_248A04A14, v10, 0);
}

uint64_t sub_248A04A34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_248A04A80, 0, 0);
}

uint64_t sub_248A04A80()
{
  v13 = v0;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[6] = __swift_project_value_buffer(v1, qword_2815105C0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD00000000000001CLL, 0x8000000248A1B3F0, &v12);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0[4] + 56);
  v0[7] = v10;

  return MEMORY[0x2822009F8](sub_248A04C54, v10, 0);
}

uint64_t sub_248A04C7C()
{
  v18 = v0;
  if (*(v0 + 72) == 1)
  {
    v1 = *(*(v0 + 32) + 16);
    v16 = (*(v0 + 16) + **(v0 + 16));
    v2 = *(*(v0 + 16) + 4);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_248A04EE4;
    v4 = *(v0 + 24);

    return v16(v1);
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = sub_248A122B0();
    v8 = sub_248A12E80();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 40);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446466;
      v12 = sub_248A13570();
      v14 = sub_24897BC00(v12, v13, &v17);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_24897BC00(0xD00000000000001CLL, 0x8000000248A1B3F0, &v17);
      _os_log_impl(&dword_248975000, v7, v8, "%{public}s %{public}s: no observer to notify", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v11, -1, -1);
      MEMORY[0x24C1E0A80](v10, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_248A04EE4()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248A04FD8()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_248A05070()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248978D74;

  return sub_248A05100();
}

uint64_t sub_248A05100()
{
  v1[14] = v0;
  v2 = sub_248A11F10();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A051C0, 0, 0);
}

uint64_t sub_248A051C0()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105C0);
  sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0x6574617669746361, 0xEA00000000002928);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[2] = v6;
  v7 = *MEMORY[0x277D04FB8];
  v8 = *(v2 + 104);
  v0[19] = v8;
  v0[20] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1, v7, v4);
  v9 = swift_allocObject();
  v0[21] = v9;
  swift_weakInit();
  v10 = *(MEMORY[0x277D05170] + 4);
  swift_retain_n();
  v11 = swift_task_alloc();
  v0[22] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D58, &qword_248A181B0);
  v0[23] = v12;
  v13 = sub_248A11F40();
  v14 = sub_248A079A8();
  v0[24] = v14;
  v15 = sub_248A095F0(&qword_28150F600, MEMORY[0x277D05078]);
  *v11 = v0;
  v11[1] = sub_248A053F4;
  v16 = v0[17];

  return MEMORY[0x28215ABC8](v16, &unk_248A181A8, v9, v12, v13, v14, v15);
}

uint64_t sub_248A053F4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 136);
  v6 = *(*v0 + 128);
  v7 = *(*v0 + 120);
  v10 = *v0;

  v8 = *(v6 + 8);
  *(v1 + 200) = v8;
  *(v1 + 208) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  return MEMORY[0x2822009F8](sub_248A05598, 0, 0);
}

uint64_t sub_248A05598()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[3] = v0[18];
  v2(v3, *MEMORY[0x277D05030], v4);
  v6 = swift_allocObject();
  v0[27] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_248A056B4;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[17];

  return MEMORY[0x28215ABD0](v11, &unk_248A181C0, v6, v9, v10);
}

uint64_t sub_248A056B4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A0585C, 0, 0);
}

uint64_t sub_248A0585C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[4] = v0[18];
  v2(v3, *MEMORY[0x277D05038], v4);
  v6 = swift_allocObject();
  v0[29] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_248A05978;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[17];

  return MEMORY[0x28215ABD0](v11, &unk_248A181D0, v6, v9, v10);
}

uint64_t sub_248A05978()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A05B20, 0, 0);
}

uint64_t sub_248A05B20()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[5] = v0[18];
  v2(v3, *MEMORY[0x277D04FE8], v4);
  v6 = swift_allocObject();
  v0[31] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_248A05C3C;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[17];

  return MEMORY[0x28215ABD0](v11, &unk_248A181E0, v6, v9, v10);
}

uint64_t sub_248A05C3C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A05DE4, 0, 0);
}

uint64_t sub_248A05DE4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[6] = v0[18];
  v2(v3, *MEMORY[0x277D05028], v4);
  v6 = swift_allocObject();
  v0[33] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[34] = v8;
  v9 = sub_248A11E60();
  v10 = sub_248A095F0(&qword_28150F608, MEMORY[0x277D04F88]);
  *v8 = v0;
  v8[1] = sub_248A05F40;
  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[17];

  return MEMORY[0x28215ABC8](v13, &unk_248A181F0, v6, v11, v9, v12, v10);
}

uint64_t sub_248A05F40()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A060E0, 0, 0);
}

uint64_t sub_248A060E0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[7] = v0[18];
  v2(v3, *MEMORY[0x277D04FF0], v4);
  v6 = swift_allocObject();
  v0[35] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[36] = v8;
  v9 = sub_248A11FF0();
  v10 = sub_248A095F0(&qword_27EEB61F8, MEMORY[0x277D050B0]);
  *v8 = v0;
  v8[1] = sub_248A0623C;
  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[17];

  return MEMORY[0x28215ABC8](v13, &unk_248A18200, v6, v11, v9, v12, v10);
}

uint64_t sub_248A0623C()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A063DC, 0, 0);
}

uint64_t sub_248A063DC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[8] = v0[18];
  v2(v3, *MEMORY[0x277D05020], v4);
  v6 = swift_allocObject();
  v0[37] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[38] = v8;
  v9 = sub_248A12010();
  v10 = sub_248A095F0(&qword_27EEB6200, MEMORY[0x277D050C8]);
  *v8 = v0;
  v8[1] = sub_248A06538;
  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[17];

  return MEMORY[0x28215ABC8](v13, &unk_248A18210, v6, v11, v9, v12, v10);
}

uint64_t sub_248A06538()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A066D8, 0, 0);
}

uint64_t sub_248A066D8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[9] = v0[18];
  v2(v3, *MEMORY[0x277D05000], v4);
  v6 = swift_allocObject();
  v0[39] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[40] = v8;
  *v8 = v0;
  v8[1] = sub_248A067F4;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[17];

  return MEMORY[0x28215ABD0](v11, &unk_248A18220, v6, v9, v10);
}

uint64_t sub_248A067F4()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A0699C, 0, 0);
}

uint64_t sub_248A0699C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[10] = v0[18];
  v2(v3, *MEMORY[0x277D05058], v4);
  v6 = swift_allocObject();
  v0[41] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05170] + 4);

  v8 = swift_task_alloc();
  v0[42] = v8;
  v9 = sub_248A11E40();
  v10 = sub_248A095F0(&qword_28150F610, MEMORY[0x277D04F78]);
  *v8 = v0;
  v8[1] = sub_248A06AF8;
  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[17];

  return MEMORY[0x28215ABC8](v13, &unk_248A18230, v6, v11, v9, v12, v10);
}

uint64_t sub_248A06AF8()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A06C98, 0, 0);
}

uint64_t sub_248A06C98()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[11] = v0[18];
  v2(v3, *MEMORY[0x277D05048], v4);
  v6 = swift_allocObject();
  v0[43] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05168] + 4);

  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_248A06DBC;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[17];
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v11, &unk_248A18240, v6, v9, v12, v10, v13);
}

uint64_t sub_248A06DBC()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A06F5C, 0, 0);
}

uint64_t sub_248A06F5C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[12] = v0[18];
  v2(v3, *MEMORY[0x277D04FD8], v4);
  v6 = swift_allocObject();
  v0[45] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = sub_248A07070;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[17];

  return MEMORY[0x28215ABD0](v11, &unk_248A18250, v6, v9, v10);
}

uint64_t sub_248A07070()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A07218, 0, 0);
}

uint64_t sub_248A07218()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v0[13] = v0[18];
  v2(v3, *MEMORY[0x277D05008], v4);
  v6 = swift_allocObject();
  v0[47] = v6;
  swift_weakInit();
  v7 = *(MEMORY[0x277D05178] + 4);

  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_248A0732C;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[17];

  return MEMORY[0x28215ABD0](v11, &unk_248A18260, v6, v9, v10);
}

uint64_t sub_248A0732C()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 120);
  v9 = *v0;

  v4(v6, v7);

  return MEMORY[0x2822009F8](sub_248A074D4, 0, 0);
}

uint64_t sub_248A074D4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v4 + 16);

  v7(&unk_248A18270, v6, ObjectType, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_248A075D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A075F0, 0, 0);
}

uint64_t sub_248A075F0()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD00000000000001FLL, 0x8000000248A19630);
    v6 = *(v3 + 24);
    v5 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 24);
    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_248A077FC;
    v11 = v0[5];

    return v14(v11, ObjectType, v5);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_248A077FC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2489F4ECC;
  }

  else
  {
    v3 = sub_248A0AC8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248A07910(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A075D0(a1, v1);
}

unint64_t sub_248A079A8()
{
  result = qword_28150F618;
  if (!qword_28150F618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5D58, &qword_248A181B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28150F618);
  }

  return result;
}

uint64_t sub_248A07A2C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_248A07B14;

    return sub_248A07CE0();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_248A07B14()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489ECD28, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_248A07C50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A07A0C(v0);
}

uint64_t sub_248A07CE0()
{
  v1[2] = v0;
  v2 = sub_248A11D50();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A07DA0, 0, 0);
}

uint64_t sub_248A07DA0()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_2815105C0);
  sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD00000000000001ALL, 0x8000000248A1B3D0);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  sub_248A11D30();
  v7 = *(v5 + 32);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_248A07F64;
  v10 = v0[5];

  return v12(v10, ObjectType, v5);
}

uint64_t sub_248A07F64()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A0810C, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_248A0810C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_248A08190()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000014, 0x8000000248A195F0);
    v6 = *(v3 + 24);
    v5 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 40);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_248A08398;

    return v13(ObjectType, v5);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_248A08398()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2489F4EC8;
  }

  else
  {
    v3 = sub_2489ECCC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248A084AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A08170(v0);
}

uint64_t sub_248A0855C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000012, 0x8000000248A195D0);
    v6 = *(v3 + 24);
    v5 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 48);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_248A08764;

    return v13(ObjectType, v5);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_248A08764()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2489F4EC8;
  }

  else
  {
    v3 = sub_248A0AC88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248A08878()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A0853C(v0);
}

uint64_t sub_248A08908(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A08928, 0, 0);
}

uint64_t sub_248A08928()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000019, 0x8000000248A19520);
    v6 = *(v3 + 24);
    v5 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 56);
    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_248A08B34;
    v11 = v0[5];

    return v14(v11, ObjectType, v5);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_248A08B34()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2489F4ECC;
  }

  else
  {
    v3 = sub_248A08C48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248A08C48()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_248A08CAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A08908(a1, v1);
}

uint64_t sub_248A08D44(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A08D64, 0, 0);
}

uint64_t sub_248A08D64()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = v0[5];
    v5 = sub_248A122D0();
    __swift_project_value_buffer(v5, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000011, 0x8000000248A1B3B0);
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(v4, ObjectType, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_248A08EA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A08D44(a1, v1);
}

uint64_t sub_248A08F40(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A08F60, 0, 0);
}

uint64_t sub_248A08F60()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = v0[5];
    v5 = sub_248A122D0();
    __swift_project_value_buffer(v5, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000015, 0x8000000248A1B390);
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 72))(v4, ObjectType, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_248A090A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A08F40(a1, v1);
}

uint64_t sub_248A0915C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000010, 0x8000000248A194D0);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    (*(v6 + 80))(ObjectType, v6);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_248A09298()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A0913C(v0);
}

uint64_t sub_248A09328(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A09348, 0, 0);
}

uint64_t sub_248A09348()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000014, 0x8000000248A1B370);
    v6 = *(v3 + 24);
    v5 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 88);
    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_248A077FC;
    v11 = v0[5];

    return v14(v11, ObjectType, v5);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_248A09558(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A09328(a1, v1);
}

uint64_t sub_248A095F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248A09638(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A09658, 0, 0);
}

uint64_t sub_248A09658()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000021, 0x8000000248A1B340);
    v6 = *(v3 + 40);
    v5 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 32);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = sub_248A09868;

    return v13(ObjectType, v5);
  }

  else
  {
    **(v0 + 40) = 2;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_248A09868(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2489EDBB4;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v7 = sub_248A09994;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_248A09994()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  **(v0 + 40) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_248A09A04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A09638(a1, v1);
}

uint64_t sub_248A09AC0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2489ECEA8;

    return sub_248A045C0();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_248A09BA8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A09AA0(v0);
}

uint64_t sub_248A09C58()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2489ECEA8;

    return sub_248A047FC();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_248A09D40()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A09C38(v0);
}

uint64_t sub_248A09DD0(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 32) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A09E70, 0, 0);
}

uint64_t sub_248A09E70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_248A12D40();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;

  sub_2489E6270(0, 0, v2, &unk_248A18288, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_248A09F7C(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A09DD0(a1, v1);
}

uint64_t sub_248A0A014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_248A0A038, 0, 0);
}

uint64_t sub_248A0A038()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_248A0A134;
    v4 = *(v0 + 80);

    return sub_248A0A340(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_248A0A134()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2489F4ECC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_248A0A250;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_248A0A27C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2489839A0;

  return sub_248A0A014(a1, v4, v5, v6, v7);
}

uint64_t sub_248A0A340(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_248A0A38C, 0, 0);
}

uint64_t sub_248A0A38C()
{
  v17 = v0;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446722;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_24897BC00(0xD000000000000039, 0x8000000248A1B300, &v16);
    *(v6 + 22) = 1026;
    *(v6 + 24) = v5;
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s: %{BOOL,public}d", v6, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v11 = *(v0 + 56);
  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *(v12 + 16) = v11;
  v13 = swift_task_alloc();
  *(v0 + 40) = v13;
  *v13 = v0;
  v13[1] = sub_2489E3FF8;
  v14 = *(v0 + 16);

  return sub_248A04A34(&unk_248A182A0, v12);
}

uint64_t sub_248A0A5C4(uint64_t a1, char a2)
{
  *(v2 + 81) = a2;
  *(v2 + 16) = a1;
  v3 = sub_248A11F10();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A0A688, 0, 0);
}

uint64_t sub_248A0A688()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 81);
  v3 = *(v0 + 16);
  (*(*(v0 + 32) + 104))(v1, *MEMORY[0x277D05040], *(v0 + 24));
  *(v0 + 80) = v2;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 + 80;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = &unk_248A182B0;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D04F58] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_248A0A7B0;

  return MEMORY[0x28215A940](&unk_248A182C0, v5);
}

uint64_t sub_248A0A7B0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A0A92C, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];
    v7 = v3[4];
    v6 = v3[5];
    v8 = v3[3];

    (*(v7 + 8))(v6, v8);

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_248A0A92C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];
  v7 = v0[9];

  return v6();
}

uint64_t sub_248A0A9C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return sub_248A0A5C4(a1, v4);
}

uint64_t sub_248A0AA64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 24) = *a3;
  v5 = *(MEMORY[0x277D050F0] + 4);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_248978D74;
  v7 = MEMORY[0x277D839B0];
  v8 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB10](a2, v3 + 24, v7, v8);
}

uint64_t sub_248A0AB2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_248A0AA64(a1, v5, v4);
}

uint64_t sub_248A0ABE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_248A04288(a1, v5, v4);
}

uint64_t sub_248A0AC90(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 32);
  sub_248A12EF0();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_248A0D528;
    *(v9 + 24) = v8;

    v13[0] = v4;
    sub_248A0D56C(v13, &v14);

    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v9;
      }

      __break(1u);
    }

    v9 = v14;
    v11 = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      return v9;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_248A13100();
  MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
  v14 = v4;
  type metadata accessor for LockoutObserverManager();
  sub_248A131F0();
  MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
  result = sub_248A13200();
  __break(1u);
  return result;
}

uint64_t sub_248A0AE98()
{
  v0 = sub_248A122D0();
  __swift_allocate_value_buffer(v0, qword_27EEB6230);
  __swift_project_value_buffer(v0, qword_27EEB6230);
  return sub_248A122C0();
}

uint64_t static LockoutState.makeLockoutState(passcodeDisabled:beforeFirstUnlock:inPasscodeLockout:inBioLockout:isKeyBagLocked:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v6 = result & 1;
  if (a2)
  {
    v6 = result & 1 | 2;
  }

  if (a3)
  {
    v6 |= 4uLL;
  }

  if (a4)
  {
    v6 |= 8uLL;
  }

  if (a5)
  {
    v6 |= 0x10uLL;
  }

  *a6 = v6;
  return result;
}

uint64_t LockoutState.description.getter()
{
  v1 = *v0;
  sub_248A13100();

  v16[0] = 0xD000000000000012;
  v16[1] = 0x8000000248A1B450;
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = 0xE500000000000000;
  MEMORY[0x24C1DF8B0](v2, v3);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  v5 = v16[0];
  v6 = v16[1];
  strcpy(v16, "LockoutState(");
  MEMORY[0x24C1DF8B0](v5, v6);

  v7 = v16[0];
  sub_248A13100();

  v16[0] = 0xD000000000000013;
  v16[1] = 0x8000000248A1B470;
  if ((v1 & 2) != 0)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if ((v1 & 2) != 0)
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x24C1DF8B0](v8, v4);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](v16[0], v16[1]);

  sub_248A13100();

  v16[0] = 0xD000000000000013;
  v16[1] = 0x8000000248A1B490;
  if ((v1 & 4) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((v1 & 4) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C1DF8B0](v9, v10);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](v16[0], v16[1]);

  sub_248A13100();

  strcpy(v16, "inBioLockout: ");
  HIBYTE(v16[1]) = -18;
  if ((v1 & 8) != 0)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if ((v1 & 8) != 0)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x24C1DF8B0](v11, v12);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](v16[0], v16[1]);

  sub_248A13100();

  v16[0] = 0xD000000000000010;
  v16[1] = 0x8000000248A1B4B0;
  if ((v1 & 0x10) != 0)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if ((v1 & 0x10) != 0)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x24C1DF8B0](v13, v14);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](v16[0], v16[1]);

  return v7;
}

uint64_t sub_248A0B38C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

void sub_248A0B3D0(uint64_t *a1@<X8>)
{
  sub_248991AE8(&unk_285B60748);
  sub_248983734(&unk_285B60768, &qword_27EEB6290, &unk_248A185C0);
  v2 = sub_248A12A80();

  v3 = sub_248A0C490();
  v4 = sub_248A0C590();
  sub_248A0C6FC();
  v6 = v5;
  if (!*MEMORY[0x277D28AF8])
  {
    __break(1u);
    goto LABEL_39;
  }

  v7 = sub_248A12B60();
  if (*(v4 + 16))
  {
    v9 = sub_2489A7D40(v7, v8);
    v11 = v10;

    if (v11)
    {
      sub_24897C864(*(v4 + 56) + 32 * v9, v32);
      if (swift_dynamicCast())
      {
        v12 = v31;
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_8:
  if (!*MEMORY[0x277D28B08])
  {
LABEL_39:
    __break(1u);
    return;
  }

  v13 = sub_248A12B60();
  if (!*(v4 + 16))
  {

    goto LABEL_14;
  }

  v15 = sub_2489A7D40(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_24897C864(*(v4 + 56) + 32 * v15, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v18 = 1;
    goto LABEL_16;
  }

  v18 = v31 ^ 1;
LABEL_16:
  v19 = MKBDeviceUnlockedSinceBoot();
  v20 = sub_248A0CFCC();
  if ((v18 & 1) == 0 || v12 >= v6)
  {
    if (v3 == 3)
    {
      v21 = 3;
      if (v19)
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 2 * (v19 == 0);
    }

    goto LABEL_27;
  }

  v21 = v3 == 3;
  if (v19)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v21 |= 2uLL;
  if (v20)
  {
LABEL_27:
    v21 |= 4uLL;
  }

LABEL_28:
  if (v20)
  {
    v21 |= 8uLL;
  }

  if (((v3 < 8u) & (0xB9u >> v3)) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 | 0x10;
  }

  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v23 = sub_248A122D0();
  __swift_project_value_buffer(v23, qword_27EEB6230);
  v24 = sub_248A122B0();
  v25 = sub_248A12E80();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32[0] = v27;
    *v26 = 136446210;
    v28 = LockoutState.description.getter();
    v30 = sub_24897BC00(v28, v29, v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_248975000, v24, v25, "%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C1E0A80](v27, -1, -1);
    MEMORY[0x24C1E0A80](v26, -1, -1);
  }

  *a1 = v22;
}

uint64_t sub_248A0B768()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Begin observing Key Bag lockout state changes", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = *(v1 + 32);
  v7 = swift_allocObject();
  swift_weakInit();

  v8 = sub_2489D5C78(0xD000000000000024, 0x8000000248A1B680, v6, sub_248A0D5B4, v7);

  *(v1 + 40) = v8;
  *(v1 + 44) = BYTE4(v8) & 1;
  return result;
}

uint64_t sub_248A0B8C8()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Begin observing Biometrics lockout state changes", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = *(v1 + 32);
  v7 = swift_allocObject();
  swift_weakInit();

  v8 = sub_2489D5C78(0xD000000000000031, 0x8000000248A1B610, v6, sub_248A0D4F4, v7);

  *(v1 + 48) = v8;
  *(v1 + 52) = BYTE4(v8) & 1;
  return result;
}

uint64_t LockoutObserverManager.deinit()
{
  sub_248A0BAA0();
  sub_248A0BBA8();
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC13DeviceSharing22LockoutObserverManager_observers;
  v3 = sub_248A11E00();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

void sub_248A0BAA0()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "End observing Key Bag lockout state changes", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  if ((*(v1 + 44) & 1) == 0)
  {
    v6 = *(v1 + 40);

    sub_2489D5EF4(v6);
  }
}

void sub_248A0BBA8()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "End observing Biometrics lockout state changes", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  if ((*(v1 + 52) & 1) == 0)
  {
    v6 = *(v1 + 48);

    sub_2489D5EF4(v6);
  }
}

uint64_t LockoutObserverManager.__deallocating_deinit()
{
  sub_248A0BAA0();
  sub_248A0BBA8();
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC13DeviceSharing22LockoutObserverManager_observers;
  v3 = sub_248A11E00();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_248A0BD64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB6230);
  swift_unknownObjectRetain();
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    v17[1] = a1;
    *v9 = 136446210;
    v17[2] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6250, &qword_248A182E0);
    v11 = sub_248A12B80();
    v13 = sub_24897BC00(v11, v12, v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_248975000, v7, v8, "Adding observer: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  ObjectType = swift_getObjectType();
  sub_248A11DA0();
  v15 = sub_248A0D4AC(&qword_27EEB61D0, type metadata accessor for LockoutObserverManager);
  swift_beginAccess();
  v17[0] = *(v3 + 16);
  return (*(a2 + 8))(v3, v15, v17, ObjectType, a2);
}

uint64_t type metadata accessor for LockoutObserverManager()
{
  result = qword_27EEB6280;
  if (!qword_27EEB6280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A0BFE0()
{
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB6230);
  swift_unknownObjectRetain();
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6250, &qword_248A182E0);
    v5 = sub_248A12B80();
    v7 = sub_24897BC00(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_248975000, v1, v2, "Removing observer: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  return sub_248A11DB0();
}

uint64_t sub_248A0C17C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    a2(a1, v4);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_248A0C1F8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB6230);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_248975000, v4, v5, "Refreshing lockout state", v6, 2u);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  sub_248A0B3D0(&v10);
  v7 = v10;
  swift_beginAccess();
  v1[2] = v7;
  sub_2489BDB14(0xD00000000000006FLL, 0x8000000248A1B560, 0xD000000000000013, 0x8000000248A1B0F0);
  MEMORY[0x28223BE20](v8);
  return sub_248A11DC0();
}

uint64_t sub_248A0C3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_248A0D4AC(&qword_27EEB61D0, type metadata accessor for LockoutObserverManager);
  swift_beginAccess();
  v8 = *(a3 + 16);
  return (*(a2 + 8))(a3, v6, &v8, ObjectType, a2);
}

uint64_t sub_248A0C490()
{
  v0 = MKBGetDeviceLockState();
  v1 = v0;
  result = sub_248A0CFBC(v0);
  if (result == 8)
  {
    if (qword_27EEB51B8 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_27EEB6230);
    v4 = sub_248A122B0();
    v5 = sub_248A12E70();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67240192;
      *(v6 + 4) = v1;
      _os_log_impl(&dword_248975000, v4, v5, "Unexpected lock state: %{public}d!", v6, 8u);
      MEMORY[0x24C1E0A80](v6, -1, -1);
    }

    return 1;
  }

  return result;
}

unint64_t sub_248A0C590()
{
  v0 = MKBGetDeviceLockStateInfo();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_248A12A90();
    }
  }

  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Unable to query lock state info!", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = MEMORY[0x277D84F90];

  return sub_248990FB8(v6);
}

void sub_248A0C6FC()
{
  v0 = MKBGetDeviceConfigurations();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_248A12A90();
    }
  }

  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Unable to query lock state configuration!", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }
}

uint64_t sub_248A0CAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_248A0AC90(a3, 0);
  }

  return result;
}

uint64_t sub_248A0CB38()
{
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB6230);
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_248975000, v1, v2, "Key Bag state changed", v3, 2u);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  return sub_248A0C1F8();
}

unint64_t sub_248A0CC20()
{
  result = qword_27EEB6258;
  if (!qword_27EEB6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB6258);
  }

  return result;
}

unint64_t sub_248A0CC78()
{
  result = qword_27EEB6260;
  if (!qword_27EEB6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB6260);
  }

  return result;
}

unint64_t sub_248A0CCD0()
{
  result = qword_27EEB6268;
  if (!qword_27EEB6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB6268);
  }

  return result;
}

unint64_t sub_248A0CD28()
{
  result = qword_27EEB6270;
  if (!qword_27EEB6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB6270);
  }

  return result;
}

uint64_t sub_248A0CD7C(uint64_t a1)
{
  result = sub_248A0D4AC(&qword_27EEB6278, type metadata accessor for LockoutObserverManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248A0CE3C()
{
  result = sub_248A11E00();
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

uint64_t sub_248A0CFBC(uint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

id sub_248A0CFCC()
{
  v0 = [objc_opt_self() currentUser];
  v1 = [v0 state];

  v2 = [v1 biometry];
  if (!v2)
  {
    if (qword_27EEB51B8 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_27EEB6230);
    v2 = sub_248A122B0();
    v5 = sub_248A12E60();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_248975000, v2, v5, "Could not get biometry.", v6, 2u);
      MEMORY[0x24C1E0A80](v6, -1, -1);
    }

    goto LABEL_13;
  }

  if (![v2 isEnrolled])
  {
    if (qword_27EEB51B8 != -1)
    {
      swift_once();
    }

    v7 = sub_248A122D0();
    __swift_project_value_buffer(v7, qword_27EEB6230);
    v8 = sub_248A122B0();
    v9 = sub_248A12E80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_248975000, v8, v9, "Biometric authentication is not enrolled.", v10, 2u);
      MEMORY[0x24C1E0A80](v10, -1, -1);
    }

LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  v3 = [v2 isLockedOut];
LABEL_14:

  return v3;
}

uint64_t *sub_248A0D1F4(uint64_t a1)
{
  v14 = *v1;
  v13 = sub_248A12EA0();
  v3 = *(v13 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248A12ED0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_248A12A40();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *(v1 + 10) = 0;
  *(v1 + 44) = 1;
  *(v1 + 12) = 0;
  *(v1 + 52) = 1;
  sub_248A11DF0();
  v1[3] = a1;
  sub_24898C37C();

  sub_248A12A10();
  v15 = MEMORY[0x277D84F90];
  sub_248A0D4AC(&unk_28150F570, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v13);
  v1[4] = sub_248A12EE0();
  sub_248A0B3D0(&v15);
  v1[2] = v15;
  sub_248A0B768();
  sub_248A0B8C8();
  return v1;
}

uint64_t sub_248A0D4AC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_248A0D528@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void *sub_248A0D56C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

double GuestUserAccessPeerConnectionServiceMessage.Response.transportPayload.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_248A11E60();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A11D50();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_248A11F40();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v2, v19, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *(v28 + 32);
      v23(v7, v19, v4);
      *(a1 + 24) = v4;
      *(a1 + 32) = sub_248A0F148(&qword_28150F608, MEMORY[0x277D04F88]);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      v23(boxed_opaque_existential_1Tm, v7, v4);
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v25 = *(v27 + 32);
    v25(v11, v19, v8);
    *(a1 + 24) = v8;
    *(a1 + 32) = sub_248A0F148(&qword_27EEB6298, MEMORY[0x277D04F38]);
    v26 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    v25(v26, v11, v8);
  }

  else
  {
    sub_248A0D998(v19, v15);
    *(a1 + 24) = v12;
    *(a1 + 32) = sub_248A0F148(&qword_28150F600, MEMORY[0x277D05078]);
    v21 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    sub_248A0D998(v15, v21);
  }

  return result;
}

uint64_t sub_248A0D998(uint64_t a1, uint64_t a2)
{
  v4 = sub_248A11F40();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.Response.transportItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v2, v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_248A11F10();
  v10 = *(*(v9 - 8) + 104);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v11 = MEMORY[0x277D05030];
    }

    else
    {
      v11 = MEMORY[0x277D04FB8];
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = MEMORY[0x277D05028];
LABEL_7:
    v10(a1, *v11, v9);
    return sub_2489A43BC(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  }

  return (v10)(a1, *MEMORY[0x277D05038], v9);
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.Request.description.getter()
{
  v1 = sub_248A11E40();
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A12010();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A11FF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v0, v17, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v20 = v10;
    v21 = v5;
    v22 = v29;
    v23 = v30;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v24 = v21;
        (*(v29 + 32))(v8, v17, v21);
        v31 = 0;
        v32 = 0xE000000000000000;
        sub_248A13100();

        v31 = 0xD00000000000001BLL;
        v32 = 0x8000000248A1B730;
        sub_248A0F148(&qword_27EEB5860, MEMORY[0x277D050C8]);
        v25 = sub_248A132F0();
        MEMORY[0x24C1DF8B0](v25);

        v19 = v31;
        (*(v22 + 8))(v8, v24);
      }

      else
      {
        (*(v30 + 32))(v4, v17, v1);
        v31 = 0;
        v32 = 0xE000000000000000;
        sub_248A13100();
        MEMORY[0x24C1DF8B0](0xD000000000000011, 0x8000000248A1B6B0);
        sub_248A131F0();
        MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
        v19 = v31;
        (*(v23 + 8))(v4, v1);
      }
    }

    else
    {
      v26 = v20;
      (*(v20 + 32))(v13, v17, v9);
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_248A13100();

      v31 = 0xD000000000000017;
      v32 = 0x8000000248A1B750;
      sub_248A0F148(&qword_27EEB5868, MEMORY[0x277D050B0]);
      v27 = sub_248A132F0();
      MEMORY[0x24C1DF8B0](v27);

      v19 = v31;
      (*(v26 + 8))(v13, v9);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x6E5565746F6D6572;
  }

  return v19;
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.Request.transportItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v2, v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_248A11F10();
  v10 = *(*(v9 - 8) + 104);
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v12 = MEMORY[0x277D04FC8];
      }

      else
      {
        v12 = MEMORY[0x277D05058];
      }
    }

    else
    {
      v12 = MEMORY[0x277D04FB0];
    }

    v10(a1, *v12, v9);
    return sub_2489A43BC(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v11 = MEMORY[0x277D05018];
      }

      else
      {
        v11 = MEMORY[0x277D05010];
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v11 = MEMORY[0x277D04FC0];
    }

    else
    {
      v11 = MEMORY[0x277D04FD0];
    }

    return (v10)(a1, *v11, v9);
  }
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.Request.transportPayload.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_248A11E40();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248A12010();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248A11FF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v2, v19, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v21 = *(v33 + 32);
        v21(v10, v19, v7);
        v22 = v35;
        v35[3] = v7;
        v22[4] = sub_248A0F148(&qword_27EEB6200, MEMORY[0x277D050C8]);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v22);
        return (v21)(boxed_opaque_existential_1Tm, v10, v7);
      }

      else
      {
        v28 = *(v34 + 32);
        v29 = v6;
        v28(v6, v19, v3);
        v30 = v35;
        v35[3] = v3;
        v30[4] = sub_248A0F148(&qword_28150F610, MEMORY[0x277D04F78]);
        v31 = __swift_allocate_boxed_opaque_existential_1Tm(v30);
        return (v28)(v31, v29, v3);
      }
    }

    else
    {
      v25 = *(v12 + 32);
      v25(v15, v19, v11);
      v26 = v35;
      v35[3] = v11;
      v26[4] = sub_248A0F148(&qword_27EEB61F8, MEMORY[0x277D050B0]);
      v27 = __swift_allocate_boxed_opaque_existential_1Tm(v26);
      return (v25)(v27, v15, v11);
    }
  }

  else
  {
    v24 = v35;
    v35[4] = 0;
    *v24 = 0u;
    *(v24 + 1) = 0u;
  }

  return result;
}

unint64_t GuestUserAccessPeerConnectionServiceMessage.Response.description.getter()
{
  v1 = sub_248A11E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A11D50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248A11F40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v0, v18, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 32))(v5, v18, v1);
      v24 = 0;
      v25 = 0xE000000000000000;
      MEMORY[0x24C1DF8B0](0x28726F727265, 0xE600000000000000);
      sub_248A131F0();
      MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
      v21 = v24;
      (*(v2 + 8))(v5, v1);
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v7 + 32))(v10, v18, v6);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_248A13100();

    v24 = 0xD000000000000013;
    v25 = 0x8000000248A1B790;
    sub_248A0F148(&qword_27EEB5888, MEMORY[0x277D04F38]);
    v22 = sub_248A132F0();
    MEMORY[0x24C1DF8B0](v22);

    MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
    v21 = v24;
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_248A0D998(v18, v14);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_248A13100();

    v24 = 0xD000000000000018;
    v25 = 0x8000000248A1B7B0;
    v20 = sub_248A11F20();
    MEMORY[0x24C1DF8B0](v20);

    MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
    v21 = v24;
    sub_2489A43BC(v14, MEMORY[0x277D05078]);
  }

  return v21;
}

unint64_t GuestUserAccessPeerConnectionServiceMessage.PeerConnectionStatusUpdate.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.PeerConnectionStatusUpdate.hashValue.getter()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

unint64_t sub_248A0EB30()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t _s13DeviceSharing43GuestUserAccessPeerConnectionServiceMessageO7RequestO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = sub_248A11E40();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A12010();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A11FF0();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D0, &qword_248A187B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v47 - v27;
  v29 = *(v26 + 56);
  sub_248A03D4C(v53, &v47 - v27, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  sub_248A03D4C(v54, &v28[v29], type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v31 = v18;
    v32 = v50;
    v33 = v51;
    v54 = v9;
    v34 = v52;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_248A03D4C(v28, v21, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*(v49 + 8))(v21, v48);
          goto LABEL_23;
        }

        v36 = v48;
        v35 = v49;
        v37 = &v28[v29];
        v38 = v54;
        (*(v49 + 32))(v54, v37, v48);
        v39 = sub_248A12000();
        v40 = *(v35 + 8);
        v40(v38, v36);
        v40(v21, v36);
      }

      else
      {
        v41 = v31;
        sub_248A03D4C(v28, v31, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*(v33 + 8))(v41, v34);
          goto LABEL_23;
        }

        v42 = &v28[v29];
        v43 = v47;
        (*(v33 + 32))(v47, v42, v34);
        v39 = MEMORY[0x24C1DEAF0](v41, v43);
        v44 = *(v33 + 8);
        v44(v43, v34);
        v44(v41, v34);
      }
    }

    else
    {
      sub_248A03D4C(v28, v23, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v32 + 8))(v23, v10);
        goto LABEL_23;
      }

      (*(v32 + 32))(v13, &v28[v29], v10);
      v39 = sub_248A11FE0();
      v45 = *(v32 + 8);
      v45(v13, v10);
      v45(v23, v10);
    }

    sub_2489A43BC(v28, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
    return v39 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_20;
    }

LABEL_23:
    sub_248983734(v28, &qword_27EEB62D0, &qword_248A187B0);
    v39 = 0;
    return v39 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_23;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_23;
  }

LABEL_20:
  sub_2489A43BC(v28, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  v39 = 1;
  return v39 & 1;
}

uint64_t sub_248A0F148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s13DeviceSharing43GuestUserAccessPeerConnectionServiceMessageO8ResponseO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_248A11E60();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A11D50();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A11F40();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62C8, &qword_248A187A8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v42 - v27;
  v29 = *(v26 + 56);
  sub_248A03D4C(a1, &v42 - v27, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  sub_248A03D4C(v47, &v28[v29], type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_248A03D4C(v28, v21, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v43 + 8))(v21, v44);
        goto LABEL_14;
      }

      v38 = v43;
      v37 = v44;
      (*(v43 + 32))(v9, &v28[v29], v44);
      v35 = sub_248A11D40();
      v39 = *(v38 + 8);
      v39(v9, v37);
      v39(v21, v37);
    }

    else
    {
      sub_248A03D4C(v28, v23, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_2489A43BC(v23, MEMORY[0x277D05078]);
LABEL_14:
        sub_248983734(v28, &qword_27EEB62C8, &qword_248A187A8);
        v35 = 0;
        return v35 & 1;
      }

      sub_248A0D998(&v28[v29], v13);
      v35 = MEMORY[0x24C1DEBF0](v23, v13);
      v40 = MEMORY[0x277D05078];
      sub_2489A43BC(v13, MEMORY[0x277D05078]);
      sub_2489A43BC(v23, v40);
    }

LABEL_16:
    sub_2489A43BC(v28, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
    return v35 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_248A03D4C(v28, v18, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v45 + 8))(v18, v46);
      goto LABEL_14;
    }

    v31 = v45;
    v32 = &v28[v29];
    v33 = v42;
    v34 = v46;
    (*(v45 + 32))(v42, v32, v46);
    v35 = sub_248A11E50();
    v36 = *(v31 + 8);
    v36(v33, v34);
    v36(v18, v34);
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_14;
  }

  sub_2489A43BC(v28, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  v35 = 1;
  return v35 & 1;
}

unint64_t sub_248A0F6B0()
{
  result = qword_27EEB62A0;
  if (!qword_27EEB62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB62A0);
  }

  return result;
}

uint64_t sub_248A0F794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_248A0F854(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2489CF8E4();
    v5 = sub_248A12A80();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_248A0F8E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = aBlock - v4;
  v6 = sub_248A11B70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v14 = sub_248A122D0();
  __swift_project_value_buffer(v14, qword_27EEB9DF8);
  sub_2489BDB14(0xD000000000000074, 0x8000000248A1B7D0, 0xD00000000000001BLL, 0x8000000248A1B850);
  sub_248A11B60();
  v15 = OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime;
  swift_beginAccess();
  sub_248A11090(v1 + v15, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_248A11100(v5);
    v16 = sub_248A122B0();
    v17 = sub_248A12E60();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_248975000, v16, v17, "Request time was not set.", v18, 2u);
      MEMORY[0x24C1E0A80](v18, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    sub_248A11B20();
    v20 = v19;
    v21 = sub_248A122B0();
    v22 = sub_248A12E80();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v20;
      _os_log_impl(&dword_248975000, v21, v22, "assetTransferDuration (seconds): %f", v23, 0xCu);
      MEMORY[0x24C1E0A80](v23, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62E0, &qword_248A187D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14AE0;
  *(inited + 32) = 0x73734164696C6176;
  *(inited + 40) = 0xEF73657079547465;
  sub_248A12470();
  *(inited + 48) = sub_248A12E20();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x8000000248A1B870;
  *(inited + 72) = sub_248A12DB0();
  v25 = sub_248991D00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62E8, &qword_248A187E0);
  swift_arrayDestroy();
  v26 = sub_248A12B30();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  aBlock[4] = sub_248A11168;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248A0F854;
  aBlock[3] = &block_descriptor_9;
  v28 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v28);

  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_248A0FDCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DF8);
  sub_2489BDB14(0xD000000000000074, 0x8000000248A1B7D0, 0xD000000000000010, 0x8000000248A1B8E0);
  sub_248A11B60();
  v7 = sub_248A11B70();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime;
  swift_beginAccess();
  sub_248A11188(v5, v1 + v8);
  return swift_endAccess();
}

uint64_t EnrollmentAssetTelemetry.__deallocating_deinit()
{
  sub_248A11100(v0 + OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_248A0FFD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *v0;
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DF8);
  sub_2489BDB14(0xD000000000000074, 0x8000000248A1B7D0, 0xD000000000000010, 0x8000000248A1B8E0);
  sub_248A11B60();
  v7 = sub_248A11B70();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime;
  swift_beginAccess();
  sub_248A11188(v4, v5 + v8);
  return swift_endAccess();
}

unint64_t sub_248A1016C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_248A12C40();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2489C9EA4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2489C9EA4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_248A12C30();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_248A12BD0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_248A12BD0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_248A12C40();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2489C9EA4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_248A12C40();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2489C9EA4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2489C9EA4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_248A12BD0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_248A1052C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_248A132E0() & 1;
  }
}

uint64_t sub_248A105A4(uint64_t a1, unint64_t a2)
{
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DF8);

  v5 = sub_248A122B0();
  v6 = sub_248A12E80();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24897BC00(a1, a2, &v31);
    _os_log_impl(&dword_248975000, v5, v6, "asset size: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v31 = a1;
  v32 = a2;
  v30[6] = 32;
  v30[7] = 0xE100000000000000;
  sub_2489835B8();
  v9 = sub_248A12F50();
  if ((v9 & 1) == 0)
  {
    v22 = sub_248A122B0();
    v23 = sub_248A12E60();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Unexpected size string. Expected format example: 100.2 KB";
      goto LABEL_14;
    }

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  v31 = 32;
  v32 = 0xE100000000000000;
  MEMORY[0x28223BE20](v9);
  v30[2] = &v31;

  v11 = sub_248A1016C(0x7FFFFFFFFFFFFFFFLL, 1, sub_2489DF090, v30, a1, a2, v10);
  if (v11[2] != 2)
  {

    v22 = sub_248A122B0();
    v23 = sub_248A12E60();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Unexpected size string. Expected format: 100.2 KB";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v12 = v11[4];
  v13 = v11[5];
  v14 = v11[6];
  v15 = v11[7];
  v16 = v11[8];
  v17 = v11[9];
  v19 = v11[10];
  v18 = v11[11];

  *&result = COERCE_DOUBLE(sub_248A12DC0());
  if (v21)
  {

    v22 = sub_248A122B0();
    v23 = sub_248A12E60();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Could not interpret string as a double.";
LABEL_14:
      _os_log_impl(&dword_248975000, v22, v23, v25, v24, 2u);
      v26 = 0;
LABEL_15:
      MEMORY[0x24C1E0A80](v24, -1, -1);
LABEL_17:

      return v26;
    }

    goto LABEL_16;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*&result >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v26 = *&result;
  v27 = sub_248A1052C(v16, v17, v19, v18, 16973, 0xE200000000000000);
  *&result = COERCE_DOUBLE();
  if ((v27 & 1) == 0 || (v28 = (v26 * 1000) >> 64, v26 *= 1000, v28 == v26 >> 63))
  {
    v22 = sub_248A122B0();
    v29 = sub_248A12E80();
    if (!os_log_type_enabled(v22, v29))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v26;
    _os_log_impl(&dword_248975000, v22, v29, "asset size (KB): %ld", v24, 0xCu);
    goto LABEL_15;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_248A10A10(uint64_t a1, uint64_t a2)
{
  v34 = sub_248A12300();
  v33 = *(v34 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A12480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v38 = sub_248A12230();
  v37 = *(v38 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v38);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v17 = sub_248A122D0();
  __swift_project_value_buffer(v17, qword_27EEB9DF8);
  sub_2489BDB14(0xD000000000000074, 0x8000000248A1B7D0, 0xD000000000000036, 0x8000000248A1B940);
  sub_248A12220();
  v36 = sub_248A12210();
  v31 = v36 != 0;
  v18 = sub_248A123C0();
  v35 = v16;
  v32 = sub_248A105A4(v18, v19);

  sub_248A123E0();
  sub_248A12AD0();

  sub_248A12310();
  sub_2489CF9A8();
  v20 = sub_248A12B00();
  v30 = a2;
  v29[3] = v20;
  v21 = *(v7 + 8);
  v21(v11, v6);
  v21(v13, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62E0, &qword_248A187D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A187C0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000248A1B980;
  sub_248A12310();
  sub_248A12470();
  v21(v13, v6);
  *(inited + 48) = sub_248A12E20();
  strcpy((inited + 56), "requestContext");
  *(inited + 71) = -18;
  sub_248A122E0();
  sub_248A122F0();
  (*(v33 + 8))(v5, v34);
  v23 = sub_248A12B30();

  *(inited + 72) = v23;
  strcpy((inited + 80), "accountStatus");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_248A12CC0();
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x8000000248A1B9A0;
  *(inited + 120) = sub_248A12CC0();
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000248A1B9C0;
  sub_248A123E0();
  sub_248A12AD0();

  sub_248A12470();
  v21(v11, v6);
  *(inited + 144) = sub_248A12E20();
  *(inited + 152) = 0x7A69537465737361;
  *(inited + 160) = 0xE900000000000065;
  *(inited + 168) = sub_248A12E20();
  v24 = sub_248991D00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62E8, &qword_248A187E0);
  swift_arrayDestroy();
  v25 = sub_248A12B30();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  aBlock[4] = sub_248A1141C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248A0F854;
  aBlock[3] = &block_descriptor_11;
  v27 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v27);

  return (*(v37 + 8))(v35, v38);
}

uint64_t sub_248A11090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A11100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248A11188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for EnrollmentAssetTelemetry()
{
  result = qword_27EEB62F0;
  if (!qword_27EEB62F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_248A11288()
{
  sub_248A113C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_248A113C0()
{
  if (!qword_27EEB6300)
  {
    sub_248A11B70();
    v0 = sub_248A12F20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB6300);
    }
  }
}

uint64_t sub_248A11424(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_248A13030();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_248A13130();
  *v1 = result;
  return result;
}

uint64_t sub_248A114C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_248A12890();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_248A13030();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_248A13030();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_248A115E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_248A13030();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_248A13030();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_248A11424(result);

  return sub_248A114C4(v6, v5, 1, v3);
}

uint64_t sub_248A116D0()
{
  v19 = sub_248A12610();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248A12600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A127B0();
  v9 = sub_248A12760();
  sub_248A12770();
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v10 = sub_248A12840();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = sub_248A12830();
  v15 = sub_248A12750();
  if (!(*v14 >> 62))
  {
    goto LABEL_4;
  }

  if (*v14 < 0)
  {
    v17 = *v14;
  }

  if (sub_248A13030() < 0)
  {
    __break(1u);
    return sub_248A11960();
  }

  else
  {
LABEL_4:
    sub_248A115E4(0, 0, v13);

    v15(v20, 0);

    sub_248A12730();
    (*(v5 + 104))(v8, *MEMORY[0x277CD8CA8], v4);
    sub_248A12780();
    (*(v0 + 104))(v3, *MEMORY[0x277CD8CE8], v19);
    sub_248A12790();
    return v9;
  }
}