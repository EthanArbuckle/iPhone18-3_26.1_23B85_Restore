BOOL DDIUpdateLocalUsersAndGroups(void *a1, uint64_t a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  v6 = 0;
  [DDObjcCompatibility swiftUpdateLocalUsersAndGroupsAndReturnError:&v6 perform:a2];
  v3 = v6;
  if (a1 && v3)
  {
    v3 = v3;
    *a1 = v3;
  }

  v4 = v3 == 0;

  return v4;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x282205058](a1, v6, v5, 80, a5, v7, 16);
}

uint64_t sub_2480E0A38(char a1)
{
  v1 = a1 & 1;
  if (a1)
  {
    v2 = 0x6C61636F6CLL;
  }

  else
  {
    v2 = 0x6D6574737973;
  }

  v3 = 0xE600000000000000;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  v39 = v2;
  v40 = v3;
  v4 = sub_2480E1114(a1 & 1);
  v6 = v5;
  v42 = v4;
  v7 = v4 >> 62;
  v8 = v5 >> 62;
  if (v1)
  {
    v9 = sub_248124B38();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (v7)
  {
    if (sub_2481247E8())
    {
      goto LABEL_12;
    }

LABEL_45:
    v23 = sub_2481242D8();
    v24 = sub_248124628();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_24810C31C(0xD00000000000001ALL, 0x80000002481288A0, &v45);
      _os_log_impl(&dword_2480DF000, v23, v24, "%{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C1C7B90](v26, -1, -1);
      MEMORY[0x24C1C7B90](v25, -1, -1);
    }

    v27 = "No system user files found";
    v28 = 0xD00000000000002BLL;
    goto LABEL_52;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

LABEL_12:
  if (v8)
  {
    if (sub_2481247E8())
    {
      goto LABEL_14;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    if (v7)
    {
      goto LABEL_43;
    }

    for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2481247E8())
    {
      v11 = MEMORY[0x277D84F90];
      if (i)
      {
        break;
      }

      v16 = MEMORY[0x277D84F90];
      v17 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!v8)
      {
        goto LABEL_26;
      }

LABEL_37:
      v18 = sub_2481247E8();
      if (!v18)
      {
LABEL_38:

        return v16;
      }

LABEL_27:
      v45 = v11;
      sub_248124788();
      if (v18 < 0)
      {
        goto LABEL_54;
      }

      v19 = 0;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x24C1C6EA0](v19, v6);
        }

        else
        {
          if (v19 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v21 = *(v6 + 8 * v19 + 32);
        }

        sub_2480F5B0C(v21);

        sub_248124768();
        v8 = *(v45 + 16);
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        ++v19;
        if (v20 == v18)
        {
          goto LABEL_38;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    v45 = MEMORY[0x277D84F90];
    sub_248124788();
    if (i < 0)
    {
      goto LABEL_53;
    }

    v41 = v8;
    v12 = 0;
    v8 = v42 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if ((v42 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1C6EA0](v12, v42);
      }

      else
      {
        if (v12 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v14 = *(v42 + 8 * v12 + 32);
      }

      sub_2480F5758(v14);

      sub_248124768();
      v15 = *(v45 + 16);
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      ++v12;
    }

    while (v13 != i);
    v16 = v45;
    v8 = v41;
    v11 = MEMORY[0x277D84F90];
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v41)
    {
      goto LABEL_37;
    }

LABEL_26:
    v18 = *(v17 + 16);
    if (!v18)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v29 = sub_2481242D8();
  v30 = sub_248124628();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_24810C31C(0xD00000000000001BLL, 0x8000000248128850, &v45);
    _os_log_impl(&dword_2480DF000, v29, v30, "%{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C1C7B90](v32, -1, -1);
    MEMORY[0x24C1C7B90](v31, -1, -1);
  }

  v27 = "No system group files found";
  v28 = 0xD00000000000002CLL;
LABEL_52:
  sub_2480E1BF4(v28, v27 | 0x8000000000000000);
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_2481246E8();
  MEMORY[0x24C1C6C90](0x742064656C696146, 0xEF2064616F6C206FLL);
  MEMORY[0x24C1C6C90](v39, v40);

  MEMORY[0x24C1C6C90](0xD000000000000039, 0x80000002481287F0);
  v33 = v45;
  v34 = v46;
  swift_bridgeObjectRetain_n();
  v35 = sub_2481242D8();
  v36 = sub_248124628();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_24810C31C(v33, v34, &v43);
    _os_log_impl(&dword_2480DF000, v35, v36, "%{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x24C1C7B90](v38, -1, -1);
    MEMORY[0x24C1C7B90](v37, -1, -1);
  }

  v43 = 0xD000000000000011;
  v44 = 0x8000000248128830;
  MEMORY[0x24C1C6C90](v33, v34);
  result = sub_2480E1BF4(v43, v44);
  __break(1u);
  return result;
}

uint64_t sub_2480E1114(int a1)
{
  v2 = sub_248124408();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v20 = a1;
  if (a1)
  {
    if (qword_27EE879D8 != -1)
    {
      swift_once();
    }

    v10 = qword_27EE8AD20;
  }

  else
  {
    if (qword_27EE879C8 != -1)
    {
      swift_once();
    }

    v10 = qword_27EE8ACF0;
  }

  v11 = __swift_project_value_buffer(v2, v10);
  v12 = v3[2];
  v12(v9, v11, v2);
  v13 = sub_2480E1788(v9, type metadata accessor for UserRecordFile, &qword_27EE87A30, type metadata accessor for UserRecordFile, qword_2481268D0);
  v14 = v3[1];
  v14(v9, v2);
  if (v20)
  {
    v15 = v13;
    if (qword_27EE879E0 != -1)
    {
      swift_once();
    }

    v16 = qword_27EE8AD38;
  }

  else
  {
    v15 = v13;
    if (qword_27EE879D0 != -1)
    {
      swift_once();
    }

    v16 = qword_27EE8AD08;
  }

  v17 = __swift_project_value_buffer(v2, v16);
  v12(v7, v17, v2);
  sub_2480E1788(v7, type metadata accessor for GroupRecordFile, &qword_27EE87A28, type metadata accessor for GroupRecordFile, qword_248126880);
  v14(v7, v2);
  return v15;
}

uint64_t sub_2480E1788(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t *a5)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v9 = sub_248124408();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (v25 - v15);
  result = sub_2480EBD74(a1);
  if (v6)
  {
    v18 = sub_2481242D8();
    v19 = sub_248124628();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2480DF000, v18, v19, "Failed to load record files: failed to get contents of directory", v20, 2u);
      MEMORY[0x24C1C7B90](v20, -1, -1);
    }

    swift_willThrow();
    return a2;
  }

  v21 = result;
  v29 = a2;
  v30 = v5;
  v31 = v16;
  a2 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v27 = *(result + 16);
  if (!v27)
  {
LABEL_11:

    return a2;
  }

  v25[1] = v14;
  v22 = 0;
  v28 = v10 + 16;
  v26 = (v10 + 8);
  v23 = v31;
  while (v22 < *(v21 + 16))
  {
    (*(v10 + 16))(v23, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v9);
    sub_2480E1C70(v23, v29, v32, v33, v34);
    MEMORY[0x24C1C6CC0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248124558();
    }

    ++v22;
    sub_248124588();
    v23 = v31;
    result = (*v26)(v31, v9);
    a2 = v35;
    if (v27 == v22)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480E1BF4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    abort_with_reason();
  }

  return sub_2481246D8();
}

char *sub_2480E1C70(uint64_t *a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t *a5)
{
  v85 = a4;
  v86 = a5;
  v83 = a2;
  v84 = a3;
  v89 = sub_248124408();
  v7 = *(v89 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v89);
  v80 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v80 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  v16 = sub_2481240D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v81 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v87 = &v80 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v80 - v23;
  v88 = a1;
  v25 = sub_24810B8B4();
  if (v5)
  {
    v91 = v5;
    MEMORY[0x24C1C7A20](v5);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {

      v28 = v87;
      (*(v17 + 32))(v87, v24, v16);
      v29 = v7;
      v30 = *(v7 + 16);
      v31 = v82;
      v32 = v89;
      v30(v82, v88, v89);
      v33 = v81;
      (*(v17 + 16))(v81, v28, v16);
      v34 = sub_2481242D8();
      v35 = sub_248124628();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v88 = v34;
        v37 = v17;
        v38 = v36;
        v86 = swift_slowAlloc();
        v90 = v86;
        *v38 = 136446466;
        sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0]);
        LODWORD(v85) = v35;
        v39 = sub_248124938();
        v41 = v40;
        (*(v29 + 8))(v31, v32);
        v42 = sub_24810C31C(v39, v41, &v90);

        *(v38 + 4) = v42;
        *(v38 + 6) = 1024;
        sub_2480E335C(&qword_27EE87A20, MEMORY[0x277CC8658]);
        sub_2481241A8();
        LODWORD(v42) = sub_2481243A8();
        v43 = *(v37 + 8);
        v43(v33, v16);
        *(v38 + 14) = v42;
        v44 = v88;
        _os_log_impl(&dword_2480DF000, v88, v85, "Failed to load file %{public}s: %{darwin.errno}d", v38, 0x12u);
        v45 = v86;
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x24C1C7B90](v45, -1, -1);
        MEMORY[0x24C1C7B90](v38, -1, -1);
      }

      else
      {
        v66 = *(v17 + 8);
        v38 = (v17 + 8);
        v43 = v66;
        v66(v33, v16);

        (*(v29 + 8))(v31, v32);
      }

      v67 = v87;
      sub_2481240C8();
      swift_willThrow();
      v43(v67, v16);
    }

    else
    {
      v87 = v27;

      v53 = v7;
      v54 = v80;
      v55 = v89;
      (*(v7 + 16))(v80, v88, v89);
      MEMORY[0x24C1C7A20](v5);
      v56 = sub_2481242D8();
      v57 = sub_248124628();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v91 = v88;
        *v58 = 136446466;
        sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0]);
        v59 = sub_248124938();
        v61 = v60;
        (*(v53 + 8))(v54, v55);
        v62 = sub_24810C31C(v59, v61, &v91);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2082;
        v90 = v5;
        MEMORY[0x24C1C7A20](v5);
        v63 = sub_2481244A8();
        v38 = sub_24810C31C(v63, v64, &v91);

        *(v58 + 14) = v38;
        _os_log_impl(&dword_2480DF000, v56, v57, "Failed to load file %{public}s: %{public}s", v58, 0x16u);
        v65 = v88;
        swift_arrayDestroy();
        MEMORY[0x24C1C7B90](v65, -1, -1);
        MEMORY[0x24C1C7B90](v58, -1, -1);
      }

      else
      {

        v38 = (v7 + 8);
        (*(v7 + 8))(v54, v55);
      }

      swift_willThrow();
    }
  }

  else
  {
    v82 = v15;
    v46 = v25;
    v47 = v26;
    v48 = sub_248124168();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    sub_248124158();
    v83(0);
    sub_2480E335C(v84, v85);
    v86 = v46;
    v87 = v47;
    sub_248124148();
    v51 = v7;
    v52 = (v7 + 16);

    v38 = v91;
    v68 = v82;
    v69 = v89;
    (*v52)(v82, v88, v89);
    v70 = sub_2481242D8();
    v71 = sub_248124618();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v91 = v88;
      *v72 = 136446210;
      sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v73 = sub_248124938();
      v74 = v69;
      v76 = v75;
      (*(v51 + 8))(v68, v74);
      v77 = sub_24810C31C(v73, v76, &v91);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_2480DF000, v70, v71, "Loaded file %{public}s", v72, 0xCu);
      v78 = v88;
      __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x24C1C7B90](v78, -1, -1);
      MEMORY[0x24C1C7B90](v72, -1, -1);
      sub_2480E3308(v86, v87);
    }

    else
    {
      sub_2480E3308(v86, v87);

      (*(v51 + 8))(v68, v69);
    }
  }

  return v38;
}

uint64_t sub_2480E275C(uint64_t *a1)
{
  v3 = sub_248124408();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v83 = &v77 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v77 - v11;
  v13 = sub_2481240D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v82 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v77 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - v20;
  v85 = a1;
  v22 = sub_24810B8B4();
  if (v1)
  {
    v88 = v1;
    MEMORY[0x24C1C7A20](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {

      v24 = v84;
      (*(v14 + 32))(v84, v21, v13);
      v25 = v86;
      v26 = v83;
      v27 = v87;
      (*(v86 + 16))(v83, v85, v87);
      v7 = v82;
      (*(v14 + 16))(v82, v24, v13);
      v28 = sub_2481242D8();
      v29 = sub_248124628();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v85 = v28;
        v31 = v14;
        v32 = v30;
        v81 = swift_slowAlloc();
        v89 = v81;
        *v32 = 136446466;
        sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0]);
        LODWORD(v80) = v29;
        v33 = sub_248124938();
        v35 = v34;
        (*(v25 + 8))(v26, v27);
        v36 = sub_24810C31C(v33, v35, &v89);

        *(v32 + 4) = v36;
        *(v32 + 12) = 1024;
        sub_2480E335C(&qword_27EE87A20, MEMORY[0x277CC8658]);
        sub_2481241A8();
        LODWORD(v36) = sub_2481243A8();
        v37 = *(v31 + 8);
        v37(v7, v13);
        *(v32 + 14) = v36;
        v38 = v85;
        _os_log_impl(&dword_2480DF000, v85, v80, "Failed to load file %{public}s: %{darwin.errno}d", v32, 0x12u);
        v39 = v81;
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x24C1C7B90](v39, -1, -1);
        MEMORY[0x24C1C7B90](v32, -1, -1);
      }

      else
      {
        v37 = *(v14 + 8);
        v37(v7, v13);

        (*(v25 + 8))(v26, v27);
      }

      v59 = v84;
      sub_2481240C8();
      swift_willThrow();
      v37(v59, v13);
    }

    else
    {

      v45 = v86;
      v46 = v87;
      (*(v86 + 16))(v7, v85, v87);
      MEMORY[0x24C1C7A20](v1);
      v47 = sub_2481242D8();
      v48 = sub_248124628();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v88 = v85;
        *v49 = 136446466;
        sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0]);
        v50 = sub_248124938();
        v51 = v45;
        v53 = v52;
        (*(v51 + 8))(v7, v46);
        v54 = sub_24810C31C(v50, v53, &v88);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2082;
        v89 = v1;
        MEMORY[0x24C1C7A20](v1);
        v55 = sub_2481244A8();
        v57 = sub_24810C31C(v55, v56, &v88);

        *(v49 + 14) = v57;
        _os_log_impl(&dword_2480DF000, v47, v48, "Failed to load file %{public}s: %{public}s", v49, 0x16u);
        v58 = v85;
        swift_arrayDestroy();
        MEMORY[0x24C1C7B90](v58, -1, -1);
        MEMORY[0x24C1C7B90](v49, -1, -1);
      }

      else
      {

        (*(v45 + 8))(v7, v46);
      }

      swift_willThrow();
    }
  }

  else
  {
    v40 = v22;
    v41 = v23;
    v42 = sub_248124168();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    sub_248124158();
    sub_2480E33A4();
    v83 = v40;
    v84 = v41;
    sub_248124148();

    LOBYTE(v7) = v88;
    v60 = v86;
    v61 = *(v86 + 16);
    v82 = v12;
    v62 = v12;
    v63 = v87;
    v61(v62, v85, v87);
    v64 = sub_2481242D8();
    v65 = sub_248124618();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v81 = v66;
      v85 = swift_slowAlloc();
      v88 = v85;
      *v66 = 136446210;
      sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v80 = v64;
      v67 = v82;
      v68 = v87;
      v78 = sub_248124938();
      v79 = v65;
      v70 = v69;
      (*(v60 + 8))(v67, v68);
      v71 = sub_24810C31C(v78, v70, &v88);

      v73 = v80;
      v72 = v81;
      *(v81 + 4) = v71;
      v74 = v72;
      _os_log_impl(&dword_2480DF000, v73, v79, "Loaded file %{public}s", v72, 0xCu);
      v75 = v85;
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x24C1C7B90](v75, -1, -1);
      MEMORY[0x24C1C7B90](v74, -1, -1);
      sub_2480E3308(v83, v84);
    }

    else
    {
      sub_2480E3308(v83, v84);

      (*(v60 + 8))(v82, v63);
    }
  }

  return v7 & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2480E3308(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2480E335C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2480E33A4()
{
  result = qword_27EE87A38;
  if (!qword_27EE87A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87A38);
  }

  return result;
}

uint64_t sub_2480E340C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2481242F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2480E34E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2481242F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RecordManager()
{
  result = qword_27EE87A40;
  if (!qword_27EE87A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2480E35E8()
{
  result = sub_2481242F8();
  if (v1 <= 0x3F)
  {
    result = sub_2480E366C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2480E366C()
{
  result = qword_27EE87A50;
  if (!qword_27EE87A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EE87A50);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_2480E36FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2480E3744(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2480E37B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FilesystemProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_2481242E8();
  a1[3] = v2;
  a1[4] = &off_285A497D8;
  *a1 = v5;
  v6 = type metadata accessor for NotificationProvider();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_2481242E8();
  a1[8] = v6;
  a1[9] = &off_285A49810;
  a1[5] = v9;
  v10 = type metadata accessor for SysctlProvider();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  result = sub_2481242E8();
  a1[13] = v10;
  a1[14] = &off_285A495A0;
  a1[10] = v13;
  return result;
}

uint64_t User.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = [a1 uuid];
  sub_2481242A8();

  v48 = [a1 uid];
  v13 = [a1 name];
  v14 = sub_248124488();
  v46 = v15;
  v47 = v14;

  v16 = [a1 primaryGroupUUID];
  sub_2481242A8();

  v17 = [a1 fullName];
  v18 = sub_248124488();
  v44 = v19;
  v45 = v18;

  v20 = [a1 homeDirectory];
  v21 = sub_248124488();
  v42 = v22;
  v43 = v21;

  v23 = [a1 shell];
  v41 = sub_248124488();
  v25 = v24;

  v26 = [a1 memberships];
  v49 = 0;
  sub_2480E3C24();
  result = sub_2481245D8();
  v28 = v49;
  if (v49)
  {

    v29 = [a1 aliases];
    v49 = 0;
    result = sub_2481245D8();
    v30 = v49;
    if (v49)
    {

      v31 = *(v5 + 32);
      v31(a2, v11, v4);
      v32 = type metadata accessor for User(0);
      *(a2 + v32[5]) = v48;
      v33 = (a2 + v32[6]);
      v34 = v46;
      *v33 = v47;
      v33[1] = v34;
      result = (v31)(a2 + v32[7], v9, v4);
      v35 = (a2 + v32[8]);
      v36 = v44;
      *v35 = v45;
      v35[1] = v36;
      v37 = (a2 + v32[9]);
      v38 = v42;
      *v37 = v43;
      v37[1] = v38;
      v39 = (a2 + v32[10]);
      *v39 = v41;
      v39[1] = v25;
      *(a2 + v32[11]) = v28;
      *(a2 + v32[12]) = v30;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2480E3C24()
{
  result = qword_27EE87A58;
  if (!qword_27EE87A58)
  {
    sub_2481242C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87A58);
  }

  return result;
}

id DDIUser.init(_:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_248124288();
  v3 = type metadata accessor for User(0);
  v4 = v3[6];
  v31 = *(a1 + v3[5]);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = sub_248124478();
  v8 = a1 + v3[7];
  v9 = sub_248124288();
  v10 = (a1 + v3[8]);
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_248124478();
  v14 = (a1 + v3[9]);
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_248124478();
  v18 = (a1 + v3[10]);
  v19 = *v18;
  v20 = v18[1];
  v21 = sub_248124478();
  v22 = *(a1 + v3[11]);
  sub_2481242C8();
  sub_2480E3C24();
  v23 = sub_2481245C8();
  v24 = [ObjCClassFromMetadata userWithUUID:v2 uid:v31 name:v7 primaryGroupUUID:v9 fullName:v13 homeDirectory:v17 shell:v21 memberships:v23];

  v25 = *(a1 + v3[12]);
  v26 = v24;
  sub_2480E3E78(v25);
  v27 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v28 = sub_2481245C8();

  v29 = [v27 initWithSet_];

  [v26 setAliases_];
  sub_2480E64CC(a1, type metadata accessor for User);
  return v26;
}

uint64_t sub_2480E3E78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A78, &qword_248125A68);
    v2 = sub_2481246B8();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v13;
    v23 = v13[1];

    swift_dynamicCast();
    v14 = *(v2 + 40);
    result = sub_248124688();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v26;
    *v11 = v24;
    *(v11 + 16) = v25;
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

    v5 = *(a1 + 56 + 8 * v12);
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

uint64_t sub_2480E40AC(uint64_t a1)
{
  v2 = sub_2481242C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - v7;
  v34 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A78, &qword_248125A68);
    v9 = sub_2481246B8();
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  v10 = v34 + 56;
  v11 = 1 << *(v34 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v34 + 56);
  v14 = (v11 + 63) >> 6;
  v32[1] = v3 + 32;
  v32[2] = v3 + 16;
  v15 = v9 + 56;

  v17 = 0;
  while (v13)
  {
LABEL_15:
    v23 = v33;
    (*(v3 + 16))(v33, *(v34 + 48) + *(v3 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v2);
    (*(v3 + 32))(v8, v23, v2);
    swift_dynamicCast();
    v24 = *(v9 + 40);
    result = sub_248124688();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
        v31 = *(v15 + 8 * v27);
        if (v31 != -1)
        {
          v18 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v18 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v15 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v13 &= v13 - 1;
    v19 = *(v9 + 48) + 40 * v18;
    v20 = v35;
    v21 = v36;
    *(v19 + 32) = v37;
    *v19 = v20;
    *(v19 + 16) = v21;
    ++*(v9 + 16);
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v14)
    {

      return v9;
    }

    v13 = *(v10 + 8 * v22);
    ++v17;
    if (v13)
    {
      v17 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

int *Group.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uuid];
  sub_2481242A8();

  v27 = [a1 gid];
  v10 = [a1 name];
  v11 = sub_248124488();
  v25 = v12;
  v26 = v11;

  v13 = [a1 fullName];
  v14 = sub_248124488();
  v16 = v15;

  v17 = [a1 nestedGroups];
  v28 = 0;
  sub_2480E3C24();
  result = sub_2481245D8();
  v19 = v28;
  if (v28)
  {

    v20 = [a1 aliases];
    v28 = 0;
    result = sub_2481245D8();
    v21 = v28;
    if (v28)
    {

      (*(v5 + 32))(a2, v8, v4);
      result = type metadata accessor for Group(0);
      *(a2 + result[5]) = v27;
      v22 = (a2 + result[6]);
      v23 = v25;
      *v22 = v26;
      v22[1] = v23;
      v24 = (a2 + result[7]);
      *v24 = v14;
      v24[1] = v16;
      *(a2 + result[8]) = v19;
      *(a2 + result[9]) = v21;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id DDIGroup.init(_:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_248124288();
  v4 = type metadata accessor for Group(0);
  v5 = v4[6];
  v6 = *(a1 + v4[5]);
  v7 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v9 = sub_248124478();
  v10 = (a1 + v4[7]);
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_248124478();
  v14 = [ObjCClassFromMetadata groupWithUUID:v3 gid:v6 name:v9 fullName:v13];

  v15 = *(a1 + v4[8]);
  v16 = v14;
  sub_2480E40AC(v15);
  v17 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v18 = sub_2481245C8();

  v19 = [v17 initWithSet_];

  [v16 setNestedGroups_];
  sub_2480E3E78(*(a1 + v4[9]));
  v20 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v21 = sub_2481245C8();

  v22 = [v20 initWithSet_];

  [v16 setAliases_];
  sub_2480E64CC(a1, type metadata accessor for Group);
  return v16;
}

void static ObjcCompatibility.swiftInitializeLocalUsersAndGroupsAndPerform(_:)(const void *a1)
{
  v1 = _Block_copy(a1);
  v2[2] = v1;
  if (qword_27EE87A00 != -1)
  {
    swift_once();
  }

  sub_2480E5C40(sub_2480E5068, v2, qword_27EE87D70);
  _Block_release(v1);
}

size_t sub_2480E4878(unint64_t *a1, unint64_t *a2, void (**a3)(void, void, void))
{
  v66 = a3;
  v70 = a2;
  v4 = type metadata accessor for Group(0);
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v68 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v61 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v61 - v11;
  v13 = type metadata accessor for User(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v65 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v61 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v61 - v21;
  v64 = a1;
  v23 = *a1;
  v24 = *(v23 + 16);
  v67 = v14;
  v63 = v23;
  if (v24)
  {
    v62 = v10;
    v72 = MEMORY[0x277D84F90];
    sub_248124788();
    sub_2480E630C(0, &qword_27EE87A60, &off_278EFE4F0);
    v25 = v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v26 = *(v14 + 72);
    do
    {
      sub_2480E6354(v25, v22, type metadata accessor for User);
      sub_2480E6354(v22, v20, type metadata accessor for User);
      DDIUser.init(_:)(v20);
      sub_2480E64CC(v22, type metadata accessor for User);
      sub_248124768();
      v27 = *(v72 + 16);
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      v25 += v26;
      --v24;
    }

    while (v24);
    v10 = v62;
  }

  v28 = sub_2480E630C(0, &qword_27EE87A60, &off_278EFE4F0);
  v29 = sub_248124528();

  [v29 mutableCopy];

  sub_248124668();
  swift_unknownObjectRelease();
  sub_2480E630C(0, &qword_27EE87A68, 0x277CBEB18);
  swift_dynamicCast();
  v30 = v71;
  v31 = *v70;
  v32 = *(*v70 + 16);
  v33 = MEMORY[0x277D84F90];
  v61[1] = *v70;
  if (v32)
  {
    v61[0] = v71;
    v62 = v28;
    v72 = MEMORY[0x277D84F90];
    sub_248124788();
    sub_2480E630C(0, &qword_27EE87A70, off_278EFE4E8);
    v34 = v31 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v35 = *(v69 + 72);
    do
    {
      sub_2480E6354(v34, v12, type metadata accessor for Group);
      sub_2480E6354(v12, v10, type metadata accessor for Group);
      DDIGroup.init(_:)(v10);
      sub_2480E64CC(v12, type metadata accessor for Group);
      sub_248124768();
      v36 = v10;
      v37 = *(v72 + 16);
      sub_248124798();
      v10 = v36;
      sub_2481247A8();
      sub_248124778();
      v34 += v35;
      --v32;
    }

    while (v32);
    v33 = MEMORY[0x277D84F90];
    v30 = v61[0];
  }

  v62 = sub_2480E630C(0, &qword_27EE87A70, off_278EFE4E8);
  v38 = sub_248124528();

  [v38 mutableCopy];

  sub_248124668();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v39 = v71;
  (v66)[2](v66, v30, v71);
  v72 = 0;
  v40 = v30;
  result = sub_248124538();
  v42 = v72;
  v43 = v67;
  if (!v72)
  {
    goto LABEL_40;
  }

  v66 = v40;

  v44 = v68;
  v45 = v65;
  if (v42 >> 62)
  {
    v46 = sub_2481247E8();
    if (v46)
    {
      goto LABEL_12;
    }

LABEL_22:

    v48 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v46 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v46)
  {
    goto LABEL_22;
  }

LABEL_12:
  v72 = v33;
  result = sub_2480FC3A0(0, v46 & ~(v46 >> 63), 0);
  if (v46 < 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v47 = 0;
  v48 = v72;
  do
  {
    if ((v42 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x24C1C6EA0](v47, v42);
    }

    else
    {
      v49 = *(v42 + 8 * v47 + 32);
    }

    User.init(_:)(v49, v45);
    v72 = v48;
    v51 = *(v48 + 16);
    v50 = *(v48 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_2480FC3A0(v50 > 1, v51 + 1, 1);
      v48 = v72;
    }

    ++v47;
    *(v48 + 16) = v51 + 1;
    sub_2480E63BC(v45, v48 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v51, type metadata accessor for User);
  }

  while (v46 != v47);

  v44 = v68;
  v33 = MEMORY[0x277D84F90];
LABEL_23:
  *v64 = v48;
  v72 = 0;
  v52 = v39;
  result = sub_248124538();
  v53 = v72;
  v54 = v69;
  if (v72)
  {

    if (v53 >> 62)
    {
      v55 = sub_2481247E8();
      if (v55)
      {
LABEL_26:
        v72 = v33;
        result = sub_2480FC35C(0, v55 & ~(v55 >> 63), 0);
        if ((v55 & 0x8000000000000000) == 0)
        {
          v56 = 0;
          v57 = v72;
          do
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v58 = MEMORY[0x24C1C6EA0](v56, v53);
            }

            else
            {
              v58 = *(v53 + 8 * v56 + 32);
            }

            Group.init(_:)(v58, v44);
            v72 = v57;
            v60 = *(v57 + 16);
            v59 = *(v57 + 24);
            if (v60 >= v59 >> 1)
            {
              sub_2480FC35C(v59 > 1, v60 + 1, 1);
              v57 = v72;
            }

            ++v56;
            *(v57 + 16) = v60 + 1;
            sub_2480E63BC(v44, v57 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v60, type metadata accessor for Group);
          }

          while (v55 != v56);

          goto LABEL_37;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
        goto LABEL_26;
      }
    }

    v57 = MEMORY[0x277D84F90];
LABEL_37:
    *v70 = v57;
    return result;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t static ObjcCompatibility.swiftUpdateLocalUsersAndGroups(perform:)(const void *a1)
{
  v1 = _Block_copy(a1);
  _Block_copy(v1);
  if (qword_27EE87A00 != -1)
  {
    swift_once();
  }

  v3[3] = &type metadata for ProviderSideEffects;
  v3[4] = &off_285A49328;
  v3[0] = swift_allocObject();
  sub_2480E628C(qword_27EE87D70, v3[0] + 16);
  sub_248105858(v3, v1);
  _Block_release(v1);
  _Block_release(v1);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

void sub_2480E51E4(void *a1, char **a2, void **a3)
{
  v72 = a3;
  v73 = a2;
  v4 = type metadata accessor for Group(0);
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v64 - v12;
  v14 = type metadata accessor for User(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v70 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v64 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v64 - v22;
  v68 = a1;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v74 = v15;
  v69 = v8;
  v71 = v24;
  if (v25)
  {
    v66 = v13;
    v67 = v11;
    v76 = MEMORY[0x277D84F90];
    sub_248124788();
    sub_2480E630C(0, &qword_27EE87A60, &off_278EFE4F0);
    v26 = v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v27 = *(v15 + 72);
    do
    {
      sub_2480E6354(v26, v23, type metadata accessor for User);
      sub_2480E6354(v23, v21, type metadata accessor for User);
      DDIUser.init(_:)(v21);
      sub_2480E64CC(v23, type metadata accessor for User);
      sub_248124768();
      v28 = *(v76 + 2);
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      v26 += v27;
      --v25;
    }

    while (v25);
    v11 = v67;
    v13 = v66;
  }

  v29 = sub_2480E630C(0, &qword_27EE87A60, &off_278EFE4F0);
  v30 = sub_248124528();

  [v30 mutableCopy];

  sub_248124668();
  swift_unknownObjectRelease();
  v31 = sub_2480E630C(0, &qword_27EE87A68, 0x277CBEB18);
  swift_dynamicCast();
  v32 = v77;
  v33 = *v73;
  v34 = *(*v73 + 2);
  v67 = *v73;
  if (v34)
  {
    v64[1] = v31;
    v65 = v77;
    v66 = v29;
    v76 = MEMORY[0x277D84F90];
    sub_248124788();
    sub_2480E630C(0, &qword_27EE87A70, off_278EFE4E8);
    v35 = &v33[(*(v75 + 80) + 32) & ~*(v75 + 80)];
    v36 = v13;
    v37 = *(v75 + 72);
    do
    {
      sub_2480E6354(v35, v36, type metadata accessor for Group);
      sub_2480E6354(v36, v11, type metadata accessor for Group);
      DDIGroup.init(_:)(v11);
      sub_2480E64CC(v36, type metadata accessor for Group);
      sub_248124768();
      v38 = *(v76 + 2);
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      v35 += v37;
      --v34;
    }

    while (v34);
    v32 = v65;
  }

  v39 = sub_2480E630C(0, &qword_27EE87A70, off_278EFE4E8);
  v40 = sub_248124528();

  [v40 mutableCopy];

  sub_248124668();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v41 = v77;
  v42 = swift_slowAlloc();
  (v72[2])(v72, v32, v41, v42);
  v43 = *v42;
  if (*v42)
  {
    v44 = *v42;
    swift_willThrow();
    v43;
    MEMORY[0x24C1C7B90](v42, -1, -1);

    return;
  }

  v72 = v42;
  v76 = 0;
  v45 = v32;
  sub_248124538();
  v46 = v76;
  if (!v76)
  {
    goto LABEL_43;
  }

  v47 = v70;
  if (v46 >> 62)
  {
    v48 = sub_2481247E8();
  }

  else
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v45;
  if (v48)
  {
    v65 = v39;
    v76 = MEMORY[0x277D84F90];
    sub_2480FC3A0(0, v48 & ~(v48 >> 63), 0);
    if (v48 < 0)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v49 = 0;
    v50 = v76;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x24C1C6EA0](v49, v46);
      }

      else
      {
        v51 = *(v46 + 8 * v49 + 32);
      }

      User.init(_:)(v51, v47);
      v76 = v50;
      v53 = *(v50 + 2);
      v52 = *(v50 + 3);
      if (v53 >= v52 >> 1)
      {
        sub_2480FC3A0(v52 > 1, v53 + 1, 1);
        v50 = v76;
      }

      ++v49;
      *(v50 + 2) = v53 + 1;
      sub_2480E63BC(v47, &v50[((*(v74 + 80) + 32) & ~*(v74 + 80)) + v74[9] * v53], type metadata accessor for User);
    }

    while (v48 != v49);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  *v68 = v50;
  v76 = 0;
  v54 = v41;
  sub_248124538();
  v55 = v76;
  v56 = v69;
  if (v76)
  {

    if (v55 >> 62)
    {
      v57 = sub_2481247E8();
      if (v57)
      {
LABEL_28:
        v74 = v54;
        v76 = MEMORY[0x277D84F90];
        sub_2480FC35C(0, v57 & ~(v57 >> 63), 0);
        if ((v57 & 0x8000000000000000) == 0)
        {
          v58 = 0;
          v59 = v76;
          do
          {
            if ((v55 & 0xC000000000000001) != 0)
            {
              v60 = MEMORY[0x24C1C6EA0](v58, v55);
            }

            else
            {
              v60 = *(v55 + 8 * v58 + 32);
            }

            Group.init(_:)(v60, v56);
            v76 = v59;
            v62 = *(v59 + 2);
            v61 = *(v59 + 3);
            if (v62 >= v61 >> 1)
            {
              sub_2480FC35C(v61 > 1, v62 + 1, 1);
              v59 = v76;
            }

            ++v58;
            *(v59 + 2) = v62 + 1;
            sub_2480E63BC(v56, &v59[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v62], type metadata accessor for Group);
          }

          while (v57 != v58);

          v54 = v74;
          goto LABEL_40;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        goto LABEL_28;
      }
    }

    v59 = MEMORY[0x277D84F90];
LABEL_40:
    v63 = v72;
    *v73 = v59;
    MEMORY[0x24C1C7B90](v63, -1, -1);

    return;
  }

LABEL_44:
  __break(1u);
}

id ObjcCompatibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjcCompatibility.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ObjcCompatibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2480E5C40(void (*a1)(uint64_t *, void **), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecordManager();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = &type metadata for ProviderSideEffects;
  v37[4] = &off_285A49328;
  v37[0] = swift_allocObject();
  sub_2480E628C(a3, v37[0] + 16);
  v11 = __swift_project_boxed_opaque_existential_1(v37, &type metadata for ProviderSideEffects);
  v12 = &v10[*(v7 + 28)];
  v13 = off_285A49330;
  v12[3] = &type metadata for ProviderSideEffects;
  v12[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(off_285A492E0 + 2))(boxed_opaque_existential_1, v11, &type metadata for ProviderSideEffects);
  sub_2481242E8();
  if (qword_27EE87A08 != -1)
  {
    swift_once();
  }

  v15 = sub_2481242F8();
  v32 = __swift_project_value_buffer(v15, qword_27EE87DE8);
  v16 = sub_2481242D8();
  v17 = sub_248124638();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2480DF000, v16, v17, "Initializing DarwinDirectory local domain...", v18, 2u);
    MEMORY[0x24C1C7B90](v18, -1, -1);
  }

  v33 = sub_2480F4840();
  v20 = v19;
  v22 = v21;
  v36 = v23;
  v24 = sub_2480E1114(1);
  v26 = v25;
  v27 = sub_248102070(v24, v25);
  v34 = v26;
  v35 = v24;
  v29 = sub_2481044F8(v27, v28, a1, a2, v22);
  sub_2480EC5CC(v29, v30, v33 & 1, v20, v22, v36);
  sub_2480E64CC(v10, type metadata accessor for RecordManager);

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_2480E6244()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2480E630C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2480E6354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480E63BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2480E64CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2480E6530(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_248124238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0;
  v9 = sub_2480E66D8();
  sub_24810E5BC(v1, a1, v9);
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    serialization = DarwinDirectory_xpc_make_serialization();
    swift_unknownObjectRelease();
    if (!serialization)
    {
      __break(1u);
    }

    v11 = v14[0];
    (*(v5 + 104))(v8, *MEMORY[0x277CC92A0], v4);
    result = sub_2480E68CC(serialization, v11, v8);
    v13 = *MEMORY[0x277D85DE8];
  }

  return result;
}

unint64_t sub_2480E66B0(uint64_t a1)
{
  result = sub_2480E66D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2480E66D8()
{
  result = qword_27EE87A80;
  if (!qword_27EE87A80)
  {
    type metadata accessor for RecordStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87A80);
  }

  return result;
}

uint64_t sub_2480E6730(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2480E67E8(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_248124248();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_2481240F8();
  if (v3)
  {
    result = sub_248124118();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_248124108();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2480E6730(v3, v7);

  return v8;
}

uint64_t sub_2480E68CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248124238();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248124228();
  if (a2)
  {
    v11 = sub_248124138();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_2481240E8();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CC92A8])
    {
      v15 = sub_248124128();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_2480E67E8(v14, a2);
  }

  else
  {
    v17 = sub_248124228();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_2480E6B4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2480EB62C();
  *a2 = result;
  return result;
}

void sub_2480E6B7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 17481;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C656873;
  if (v2 != 6)
  {
    v6 = 0x6C626174754D7369;
    v5 = 0xE900000000000065;
  }

  v7 = 0xED000079726F7463;
  v8 = 0x65726944656D6F68;
  if (v2 != 4)
  {
    v8 = 0x477972616D697270;
    v7 = 0xEE00444970756F72;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145656661;
  if (v2 != 2)
  {
    v10 = 0x656D614E6C6C7566;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2480E6C78()
{
  v1 = *v0;
  v2 = 17481;
  v3 = 0x6C6C656873;
  if (v1 != 6)
  {
    v3 = 0x6C626174754D7369;
  }

  v4 = 0x65726944656D6F68;
  if (v1 != 4)
  {
    v4 = 0x477972616D697270;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1145656661;
  if (v1 != 2)
  {
    v5 = 0x656D614E6C6C7566;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_2480E6D70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2480EB62C();
  *a1 = result;
  return result;
}

uint64_t sub_2480E6DB0(uint64_t a1)
{
  v2 = sub_2480EAAC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2480E6DEC(uint64_t a1)
{
  v2 = sub_2480EAAC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2480E6E28()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
  v3 = sub_2481242C8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_fullName + 8];

  v5 = *&v0[OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_homeDirectory + 8];

  v6 = *&v0[OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_shell + 8];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_2480E6F30()
{
  result = sub_2481242C8();
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

uint64_t sub_2480E6FF0(void *a1)
{
  v2 = v1;
  v4 = sub_2481242C8();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B18, &qword_248125C18);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EAAC8();
  sub_248124DA8();
  v14 = *(v2 + 16);
  v34 = 0;
  v33 = v8;
  v15 = v32;
  sub_248124908();
  if (v15)
  {
    return (*(v9 + 8))(v12, v33);
  }

  v17 = v31;
  v32 = v9;
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  v34 = 1;

  sub_2481248C8();

  v20 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
  swift_beginAccess();
  (*(v17 + 16))(v7, v2 + v20, v4);
  v35 = 2;
  sub_2480EAA28(&qword_27EE87AE8, MEMORY[0x277CC95F0]);
  sub_2481248F8();
  (*(v17 + 8))(v7, v4);
  v22 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_fullName);
  v21 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_fullName + 8);
  v35 = 3;

  sub_2481248C8();

  v24 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_homeDirectory);
  v23 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_homeDirectory + 8);
  v35 = 4;

  sub_2481248C8();
  v25 = v32;

  v26 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_primaryGroupID);
  v35 = 5;
  sub_248124908();
  v27 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_shell);
  v28 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_shell + 8);
  v35 = 6;

  sub_2481248C8();

  v29 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable);
  v35 = 7;
  v30 = v33;
  sub_2481248D8();
  return (*(v25 + 8))(0, v30);
}

_DWORD *sub_2480E74C4(uint64_t *a1)
{
  v3 = v1;
  v36 = *v3;
  v37 = v2;
  v5 = sub_2481242C8();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B00, &qword_248125C10);
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable;
  v38 = v3;
  v39 = a1;
  *(v3 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable) = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EAAC8();
  v15 = v37;
  sub_248124D98();
  if (v15)
  {
    v16 = v38;
    v27 = *(*v38 + 48);
    v28 = *(*v38 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v13;
    v17 = v34;
    v47 = 0;
    v18 = sub_248124888();
    v16 = v38;
    v38[4] = v18;
    v46 = 1;
    *(v16 + 3) = sub_248124848();
    *(v16 + 4) = v19;
    v45 = 2;
    sub_2480EAA28(&qword_27EE87B10, MEMORY[0x277CC95F0]);
    sub_248124878();
    (*(v17 + 32))(v16 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid, v8, v5);
    v44 = 3;
    v20 = sub_248124848();
    v21 = (v16 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_fullName);
    *v21 = v20;
    v21[1] = v22;
    v43 = 4;
    v23 = sub_248124848();
    v24 = (v16 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_homeDirectory);
    *v24 = v23;
    v24[1] = v25;
    v42 = 5;
    *(v16 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_primaryGroupID) = sub_248124888();
    v41 = 6;
    v26 = sub_248124848();
    v30 = (v16 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_shell);
    *v30 = v26;
    v30[1] = v31;
    v40 = 7;
    v32 = v35;
    v33 = sub_248124858();
    (*(v9 + 8))(v12, v32);
    *(v16 + v37) = v33 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v16;
}

uint64_t sub_2480E7A54()
{
  v1 = *v0;
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_2480E7B28()
{
  *v0;
  *v0;
  *v0;
  sub_2481244D8();
}

uint64_t sub_2480E7BE8()
{
  v1 = *v0;
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_2480E7CB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2480EB678();
  *a2 = result;
  return result;
}

void sub_2480E7CE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 17481;
  v5 = 0xE400000000000000;
  v6 = 1145656661;
  v7 = 0xEB0000000073656DLL;
  v8 = 0x614E7265626D656DLL;
  if (v2 != 3)
  {
    v8 = 0x6C626174754D7369;
    v7 = 0xE900000000000065;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
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

uint64_t sub_2480E7D78()
{
  v1 = *v0;
  v2 = 17481;
  v3 = 1145656661;
  v4 = 0x614E7265626D656DLL;
  if (v1 != 3)
  {
    v4 = 0x6C626174754D7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_2480E7E04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2480EB678();
  *a1 = result;
  return result;
}

uint64_t sub_2480E7E38(uint64_t a1)
{
  v2 = sub_2480EAB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2480E7E74(uint64_t a1)
{
  v2 = sub_2480EAB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2480E7EB0()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
  v3 = sub_2481242C8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2480E7F8C()
{
  result = sub_2481242C8();
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

uint64_t sub_2480E804C(void *a1)
{
  v2 = v1;
  v4 = sub_2481242C8();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B40, &qword_248125C30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EAB1C();
  sub_248124DA8();
  v14 = *(v2 + 16);
  v30 = 0;
  v15 = v8;
  v16 = v27;
  sub_248124908();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v27 = v9;
  v18 = v26;
  v19 = *(v2 + 24);
  v20 = *(v2 + 32);
  v30 = 1;

  sub_2481248C8();

  v21 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
  swift_beginAccess();
  (*(v18 + 16))(v7, v2 + v21, v4);
  v29 = 2;
  sub_2480EAA28(&qword_27EE87AE8, MEMORY[0x277CC95F0]);
  sub_2481248F8();
  (*(v18 + 8))(v7, v4);
  v22 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames;
  swift_beginAccess();
  v31 = *(v2 + v22);
  v28 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B30, &qword_248126410);
  sub_2480EAB70(&qword_27EE87B48);
  sub_2481248F8();
  v23 = v27;
  v24 = *(v2 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable);
  LOBYTE(v31) = 4;
  sub_2481248D8();
  return (*(v23 + 8))(v12, v15);
}

_DWORD *sub_2480E847C(uint64_t *a1)
{
  v3 = v1;
  v27 = *v3;
  v28 = v2;
  v5 = sub_2481242C8();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B20, &unk_248125C20);
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v24 - v11;
  v13 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable;
  v29 = v3;
  v30 = a1;
  *(v3 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable) = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EAB1C();
  v15 = v28;
  sub_248124D98();
  if (v15)
  {
    v16 = v29;
    v20 = *(*v29 + 48);
    v21 = *(*v29 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v13;
    v17 = v25;
    v36 = 0;
    v18 = sub_248124888();
    v16 = v29;
    v29[4] = v18;
    v35 = 1;
    *(v16 + 3) = sub_248124848();
    *(v16 + 4) = v19;
    v34 = 2;
    sub_2480EAA28(&qword_27EE87B10, MEMORY[0x277CC95F0]);
    sub_248124878();
    (*(v17 + 32))(v16 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid, v8, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B30, &qword_248126410);
    v33 = 3;
    sub_2480EAB70(&qword_27EE87B38);
    sub_248124878();
    *(v16 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames) = v31;
    v32 = 4;
    v23 = v26;
    LOBYTE(v17) = sub_248124858();
    (*(v9 + 8))(v12, v23);
    *(v16 + v28) = v17 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  return v16;
}

uint64_t sub_2480E8930@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  v10 = swift_allocObject();
  result = a2(a1);
  if (!v4)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_2480E89BC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = sub_2481242C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v143 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v149 = &v140 - v13;
  *a4 = a1;
  a4[1] = a2;
  v14 = *(type metadata accessor for RecordStore(0) + 48);
  v141 = a3;
  v142 = v9;
  v15 = *(v9 + 16);
  v153 = v8;
  v150 = v15;
  v151 = v9 + 16;
  v15(a4 + v14, a3, v8);

  v148 = a2;

  v16 = MEMORY[0x277D84F90];
  a4[2] = sub_2480F35C0(MEMORY[0x277D84F90]);
  a4[3] = sub_2480F35C0(v16);
  a4[4] = sub_2480F35C0(v16);
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_52:

    v78 = MEMORY[0x277D84F90];
    a4[5] = sub_2480F35C0(MEMORY[0x277D84F90]);
    a4[6] = sub_2480F35C0(v78);
    a4[7] = sub_2480F35C0(v78);
    v79 = v148;
    if (v148 >> 62)
    {
      goto LABEL_102;
    }

    v80 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v80)
    {
LABEL_103:

      return (*(v142 + 8))(v141, v153);
    }

LABEL_54:
    v81 = 0;
    v149 = (v79 & 0xC000000000000001);
    v146 = v142 + 8;
    v147 = v79 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v149)
      {
        v79 = MEMORY[0x24C1C6EA0](v81, v79);
        v84 = v79;
        v85 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v81 >= *(v147 + 16))
        {
          goto LABEL_95;
        }

        v84 = *(v79 + 8 * v81 + 32);

        v85 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          v138 = v79;
          v80 = sub_2481247E8();
          v79 = v138;
          if (!v80)
          {
            goto LABEL_103;
          }

          goto LABEL_54;
        }
      }

      v152 = v85;
      LODWORD(v155) = *(v84 + 16);
      v86 = sub_248124938();
      v88 = v87;
      v89 = a4[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = a4[5];
      v91 = v155;
      v93 = sub_2480F1E00(v86, v88);
      v94 = v91[2];
      v95 = (v92 & 1) == 0;
      v79 = v94 + v95;
      if (__OFADD__(v94, v95))
      {
        goto LABEL_96;
      }

      v96 = v92;
      if (v91[3] >= v79)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v92)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v79 = sub_2480F2C24();
          if (v96)
          {
            goto LABEL_67;
          }
        }
      }

      else
      {
        sub_2480F2328(v79, isUniquelyReferenced_nonNull_native);
        v79 = sub_2480F1E00(v86, v88);
        if ((v96 & 1) != (v97 & 1))
        {
          goto LABEL_104;
        }

        v93 = v79;
        if (v96)
        {
LABEL_67:

          v98 = v155;
          *(v155[7] + 8 * v93) = v81;
          goto LABEL_74;
        }
      }

      v98 = v155;
      v155[(v93 >> 6) + 8] |= 1 << v93;
      v99 = (v98[6] + 16 * v93);
      *v99 = v86;
      v99[1] = v88;
      *(v98[7] + 8 * v93) = v81;
      v100 = v98[2];
      v39 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v39)
      {
        goto LABEL_99;
      }

      v98[2] = v101;
LABEL_74:
      a4[5] = v98;
      v102 = *(v84 + 24);
      v103 = *(v84 + 32);

      v104 = a4[6];
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v155 = a4[6];
      v106 = v155;
      v79 = sub_2480F1E00(v102, v103);
      v108 = v106[2];
      v109 = (v107 & 1) == 0;
      v39 = __OFADD__(v108, v109);
      v110 = v108 + v109;
      if (v39)
      {
        goto LABEL_97;
      }

      v111 = v107;
      if (v106[3] < v110)
      {
        sub_2480F2328(v110, v105);
        v79 = sub_2480F1E00(v102, v103);
        if ((v111 & 1) != (v112 & 1))
        {
          goto LABEL_104;
        }

LABEL_79:
        if (v111)
        {
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      if (v105)
      {
        goto LABEL_79;
      }

      v115 = v79;
      sub_2480F2C24();
      v79 = v115;
      if (v111)
      {
LABEL_80:
        v113 = v79;

        v114 = v155;
        *(v155[7] + 8 * v113) = v81;
        goto LABEL_84;
      }

LABEL_82:
      v114 = v155;
      v155[(v79 >> 6) + 8] |= 1 << v79;
      v116 = (v114[6] + 16 * v79);
      *v116 = v102;
      v116[1] = v103;
      *(v114[7] + 8 * v79) = v81;
      v117 = v114[2];
      v39 = __OFADD__(v117, 1);
      v118 = v117 + 1;
      if (v39)
      {
        goto LABEL_100;
      }

      v114[2] = v118;
LABEL_84:
      a4[6] = v114;
      v119 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
      swift_beginAccess();
      v120 = v143;
      v121 = v153;
      v150(v143, v84 + v119, v153);
      v122 = sub_248124278();
      v124 = v123;
      (*v146)(v120, v121);
      v125 = a4[7];
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v155 = a4[7];
      v127 = v155;
      v79 = sub_2480F1E00(v122, v124);
      v129 = v127[2];
      v130 = (v128 & 1) == 0;
      v39 = __OFADD__(v129, v130);
      v131 = v129 + v130;
      if (v39)
      {
        goto LABEL_98;
      }

      v132 = v128;
      if (v127[3] < v131)
      {
        sub_2480F2328(v131, v126);
        v79 = sub_2480F1E00(v122, v124);
        if ((v132 & 1) != (v133 & 1))
        {
          goto LABEL_104;
        }

LABEL_89:
        if (v132)
        {
          goto LABEL_55;
        }

        goto LABEL_90;
      }

      if (v126)
      {
        goto LABEL_89;
      }

      v137 = v79;
      sub_2480F2C24();
      v79 = v137;
      if (v132)
      {
LABEL_55:
        v82 = v79;

        v83 = v155;
        *(v155[7] + 8 * v82) = v81;

        goto LABEL_56;
      }

LABEL_90:
      v83 = v155;
      v155[(v79 >> 6) + 8] |= 1 << v79;
      v134 = (v83[6] + 16 * v79);
      *v134 = v122;
      v134[1] = v124;
      *(v83[7] + 8 * v79) = v81;

      v135 = v83[2];
      v39 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v39)
      {
        goto LABEL_101;
      }

      v83[2] = v136;
LABEL_56:
      a4[7] = v83;
      ++v81;
      v79 = v148;
      if (v152 == v80)
      {
        goto LABEL_103;
      }
    }
  }

LABEL_3:
  v18 = 0;
  v146 = a1 & 0xFFFFFFFFFFFFFF8;
  v147 = a1 & 0xC000000000000001;
  v144 = a1;
  v145 = (v142 + 8);
  while (1)
  {
    if (v147)
    {
      v21 = MEMORY[0x24C1C6EA0](v18, a1);
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v18 >= *(v146 + 16))
      {
        goto LABEL_44;
      }

      v21 = *(a1 + 8 * v18 + 32);

      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v17 = sub_2481247E8();
        if (!v17)
        {
          goto LABEL_52;
        }

        goto LABEL_3;
      }
    }

    v152 = v22;
    LODWORD(v154) = *(v21 + 16);
    v23 = sub_248124938();
    v25 = v24;
    v26 = a4[2];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v154 = a4[2];
    v28 = v154;
    v30 = sub_2480F1E00(v23, v25);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_45;
    }

    a1 = v29;
    if (v28[3] >= v33)
    {
      if (v27)
      {
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_2480F2C24();
        if (a1)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_2480F2328(v33, v27);
      v34 = sub_2480F1E00(v23, v25);
      if ((a1 & 1) != (v35 & 1))
      {
        goto LABEL_104;
      }

      v30 = v34;
      if (a1)
      {
LABEL_16:

        v36 = v154;
        *(v154[7] + 8 * v30) = v18;
        goto LABEL_23;
      }
    }

    v36 = v154;
    v154[(v30 >> 6) + 8] |= 1 << v30;
    v37 = (v36[6] + 16 * v30);
    *v37 = v23;
    v37[1] = v25;
    *(v36[7] + 8 * v30) = v18;
    v38 = v36[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_48;
    }

    v36[2] = v40;
LABEL_23:
    a4[2] = v36;
    v42 = *(v21 + 24);
    v41 = *(v21 + 32);

    v43 = a4[3];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v154 = a4[3];
    v45 = v154;
    v46 = sub_2480F1E00(v42, v41);
    v48 = v45[2];
    v49 = (v47 & 1) == 0;
    v39 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v39)
    {
      goto LABEL_46;
    }

    a1 = v47;
    if (v45[3] < v50)
    {
      sub_2480F2328(v50, v44);
      v46 = sub_2480F1E00(v42, v41);
      if ((a1 & 1) != (v51 & 1))
      {
        goto LABEL_104;
      }

LABEL_28:
      if (a1)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v44)
    {
      goto LABEL_28;
    }

    v54 = v46;
    sub_2480F2C24();
    v46 = v54;
    if (a1)
    {
LABEL_29:
      v52 = v46;

      v53 = v154;
      *(v154[7] + 8 * v52) = v18;
      goto LABEL_33;
    }

LABEL_31:
    v53 = v154;
    v154[(v46 >> 6) + 8] |= 1 << v46;
    v55 = (v53[6] + 16 * v46);
    *v55 = v42;
    v55[1] = v41;
    *(v53[7] + 8 * v46) = v18;
    v56 = v53[2];
    v39 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v39)
    {
      goto LABEL_49;
    }

    v53[2] = v57;
LABEL_33:
    a4[3] = v53;
    v58 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
    swift_beginAccess();
    v59 = v21 + v58;
    v60 = v149;
    v61 = v153;
    v150(v149, v59, v153);
    v62 = sub_248124278();
    v64 = v63;
    (*v145)(v60, v61);
    v65 = a4[4];
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v154 = a4[4];
    v67 = v154;
    v68 = sub_2480F1E00(v62, v64);
    v70 = v67[2];
    v71 = (v69 & 1) == 0;
    v39 = __OFADD__(v70, v71);
    v72 = v70 + v71;
    if (v39)
    {
      goto LABEL_47;
    }

    a1 = v69;
    if (v67[3] < v72)
    {
      break;
    }

    if (v66)
    {
      goto LABEL_38;
    }

    v77 = v68;
    sub_2480F2C24();
    v68 = v77;
    if (a1)
    {
LABEL_4:
      v19 = v68;

      v20 = v154;
      *(v154[7] + 8 * v19) = v18;

      goto LABEL_5;
    }

LABEL_39:
    v20 = v154;
    v154[(v68 >> 6) + 8] |= 1 << v68;
    v74 = (v20[6] + 16 * v68);
    *v74 = v62;
    v74[1] = v64;
    *(v20[7] + 8 * v68) = v18;

    v75 = v20[2];
    v39 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v39)
    {
      goto LABEL_50;
    }

    v20[2] = v76;
LABEL_5:
    a4[4] = v20;
    ++v18;
    a1 = v144;
    if (v152 == v17)
    {
      goto LABEL_52;
    }
  }

  sub_2480F2328(v72, v66);
  v68 = sub_2480F1E00(v62, v64);
  if ((a1 & 1) == (v73 & 1))
  {
LABEL_38:
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

LABEL_104:
  result = sub_248124D08();
  __break(1u);
  return result;
}

unint64_t sub_2480E945C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v3 = 0x4279654B73726464;
    if (a1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    v4 = 0xD000000000000016;
    if (!a1)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2480E95A4()
{
  v1 = *v0;
  sub_248124D58();
  sub_248105D78();
  return sub_248124D88();
}

uint64_t sub_2480E95F4()
{
  v1 = *v0;
  sub_248124D58();
  sub_248105D78();
  return sub_248124D88();
}

uint64_t sub_2480E9638@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2480EB6C4();
  *a2 = result;
  return result;
}

unint64_t sub_2480E9668@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2480E945C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2480E96B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2480EB6C4();
  *a1 = result;
  return result;
}

uint64_t sub_2480E96E4(uint64_t a1)
{
  v2 = sub_2480EA8F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2480E9720(uint64_t a1)
{
  v2 = sub_2480EA8F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2480E975C()
{
  v1 = v0;
  v73 = sub_2481242C8();
  v64 = *(v73 - 8);
  v2 = *(v64 + 64);
  v3 = MEMORY[0x28223BE20](v73);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = &v63 - v5;
  v6 = sub_2480F35C0(MEMORY[0x277D84F90]);
  v7 = v1[4];

  v1[4] = v6;
  v8 = *v1;
  if (*v1 >> 62)
  {
    goto LABEL_27;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v9; i = v1)
  {
    v10 = 0;
    v69 = v8 & 0xFFFFFFFFFFFFFF8;
    v70 = v8 & 0xC000000000000001;
    v67 = (v64 + 8);
    v68 = (v64 + 16);
    v66 = v8;
    while (v70)
    {
      v11 = MEMORY[0x24C1C6EA0](v10, v8);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_23;
      }

LABEL_9:
      v13 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
      swift_beginAccess();
      v14 = v11 + v13;
      v15 = v71;
      v16 = v73;
      (*v68)(v71, v14, v73);
      v17 = sub_248124278();
      v19 = v18;
      (*v67)(v15, v16);
      v20 = v1[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v1[4];
      v8 = v75;
      v23 = sub_2480F1E00(v17, v19);
      v24 = *(v8 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_25;
      }

      v1 = v22;
      if (*(v8 + 24) >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v22)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_2480F2C24();
          if (v1)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_2480F2328(v26, isUniquelyReferenced_nonNull_native);
        v27 = sub_2480F1E00(v17, v19);
        if ((v1 & 1) != (v28 & 1))
        {
LABEL_56:
          result = sub_248124D08();
          __break(1u);
          return result;
        }

        v23 = v27;
        if (v1)
        {
LABEL_4:

          v8 = v75;
          *(v75[7] + 8 * v23) = v10;

          goto LABEL_5;
        }
      }

      v8 = v75;
      v75[(v23 >> 6) + 8] |= 1 << v23;
      v29 = (*(v8 + 48) + 16 * v23);
      *v29 = v17;
      v29[1] = v19;
      *(*(v8 + 56) + 8 * v23) = v10;

      v30 = *(v8 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      *(v8 + 16) = v32;
LABEL_5:
      v1 = i;
      i[4] = v8;
      ++v10;
      v8 = v66;
      if (v12 == v9)
      {
        goto LABEL_28;
      }
    }

    if (v10 >= *(v69 + 16))
    {
      goto LABEL_24;
    }

    v11 = *(v8 + 8 * v10 + 32);

    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v9 = sub_2481247E8();
  }

LABEL_28:
  v33 = sub_2480F35C0(MEMORY[0x277D84F90]);
  v34 = v1[7];

  v1[7] = v33;
  v36 = v1[1];
  if (v36 >> 62)
  {
    goto LABEL_54;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
LABEL_30:
    v38 = 0;
    v70 = v36 & 0xFFFFFFFFFFFFFF8;
    v71 = (v36 & 0xC000000000000001);
    v68 = (v64 + 8);
    v69 = v64 + 16;
    v67 = v36;
    do
    {
      if (v71)
      {
        v41 = MEMORY[0x24C1C6EA0](v38, v36);
        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v38 >= *(v70 + 16))
        {
          goto LABEL_51;
        }

        v41 = *(v36 + 8 * v38 + 32);

        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          result = sub_2481247E8();
          v37 = result;
          if (!result)
          {
            return result;
          }

          goto LABEL_30;
        }
      }

      v36 = v37;
      v43 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
      swift_beginAccess();
      v44 = v41 + v43;
      v45 = v65;
      v46 = v73;
      (*v69)(v65, v44, v73);
      v47 = sub_248124278();
      v49 = v48;
      (*v68)(v45, v46);
      v50 = v1[7];
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v1[7];
      v52 = v74;
      v54 = sub_2480F1E00(v47, v49);
      v55 = v52[2];
      v56 = (v53 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_52;
      }

      v1 = v53;
      if (v52[3] >= v57)
      {
        if (v51)
        {
          if (v53)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_2480F2C24();
          if (v1)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_2480F2328(v57, v51);
        v58 = sub_2480F1E00(v47, v49);
        if ((v1 & 1) != (v59 & 1))
        {
          goto LABEL_56;
        }

        v54 = v58;
        if (v1)
        {
LABEL_31:

          v39 = v74;
          *(v74[7] + 8 * v54) = v38;

          goto LABEL_32;
        }
      }

      v39 = v74;
      v74[(v54 >> 6) + 8] |= 1 << v54;
      v60 = (v39[6] + 16 * v54);
      *v60 = v47;
      v60[1] = v49;
      *(v39[7] + 8 * v54) = v38;

      v61 = v39[2];
      v31 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v31)
      {
        goto LABEL_53;
      }

      v39[2] = v62;
LABEL_32:
      v1 = i;
      i[7] = v39;
      ++v38;
      v37 = v36;
      v40 = v42 == v36;
      v36 = v67;
    }

    while (!v40);
  }

  return result;
}

uint64_t sub_2480E9D14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AA8, &qword_248125BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EA8F0();
  sub_248124DA8();
  v14 = *v3;
  HIBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AB8, &qword_248125BF8);
  sub_2480EB710(&qword_27EE87AC0, &qword_27EE87AC8);
  sub_2481248F8();
  if (!v2)
  {
    v14 = v3[1];
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AD0, &qword_248125C00);
    sub_2480EA98C(&qword_27EE87AD8, &qword_27EE87AE0);
    sub_2481248F8();
    v11 = *(type metadata accessor for RecordStore(0) + 48);
    LOBYTE(v14) = 2;
    sub_2481242C8();
    sub_2480EAA28(&qword_27EE87AE8, MEMORY[0x277CC95F0]);
    sub_2481248F8();
    v14 = v3[2];
    HIBYTE(v13) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AF0, &qword_248125C08);
    sub_2480EB7AC(&qword_27EE87AF8);
    sub_2481248F8();
    v14 = v3[3];
    HIBYTE(v13) = 4;
    sub_2481248F8();
    v14 = v3[4];
    HIBYTE(v13) = 5;
    sub_2481248F8();
    v14 = v3[5];
    HIBYTE(v13) = 6;
    sub_2481248F8();
    v14 = v3[6];
    HIBYTE(v13) = 7;
    sub_2481248F8();
    v14 = v3[7];
    HIBYTE(v13) = 8;
    sub_2481248F8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2480EA158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_2481242C8();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87BC0, &unk_248126030);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RecordStore(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2480EA8F0();
  v18 = v29;
  sub_248124D98();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v19 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AB8, &qword_248125BF8);
  v31 = 0;
  sub_2480EB710(&qword_27EE87BC8, &qword_27EE87BD0);
  v20 = v27;
  sub_248124878();
  v21 = v19;
  *v19 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AD0, &qword_248125C00);
  v31 = 1;
  sub_2480EA98C(&qword_27EE87BD8, &qword_27EE87BE0);
  sub_248124878();
  *(v19 + 1) = v32;
  LOBYTE(v32) = 2;
  sub_2480EAA28(&qword_27EE87B10, MEMORY[0x277CC95F0]);
  sub_248124878();
  v22 = v28;
  (*(v26 + 32))(&v21[*(v12 + 48)], v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AF0, &qword_248125C08);
  v31 = 3;
  v29 = sub_2480EB7AC(&qword_27EE87BE8);
  sub_248124878();
  *(v21 + 2) = v32;
  v31 = 4;
  sub_248124878();
  *(v21 + 3) = v32;
  v31 = 5;
  sub_248124878();
  *(v21 + 4) = v32;
  v31 = 6;
  sub_248124878();
  *(v21 + 5) = v32;
  v31 = 7;
  sub_248124878();
  *(v21 + 6) = v32;
  v31 = 8;
  sub_248124878();
  (*(v22 + 8))(v11, v20);
  *(v21 + 7) = v32;
  sub_2480EB81C(v21, v25);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return sub_2480EB880(v21);
}

unint64_t sub_2480EA8F0()
{
  result = qword_27EE87AB0;
  if (!qword_27EE87AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87AB0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2480EA98C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87AD0, &qword_248125C00);
    sub_2480EAA28(a2, type metadata accessor for RecordStore.GroupStoreRecord);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2480EAA28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2480EAA90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2480EAAC8()
{
  result = qword_27EE87B08;
  if (!qword_27EE87B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B08);
  }

  return result;
}

unint64_t sub_2480EAB1C()
{
  result = qword_27EE87B28;
  if (!qword_27EE87B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B28);
  }

  return result;
}

uint64_t sub_2480EAB70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87B30, &qword_248126410);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordStore.GroupStoreRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordStore.GroupStoreRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordStore.UserStoreRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordStore.UserStoreRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordStore.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordStore.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2480EB004(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2481242C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_2480EB0C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2481242C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2480EB168()
{
  sub_2480EB260(319, &qword_27EE87B60, type metadata accessor for RecordStore.UserStoreRecord);
  if (v0 <= 0x3F)
  {
    sub_2480EB260(319, &qword_27EE87B68, type metadata accessor for RecordStore.GroupStoreRecord);
    if (v1 <= 0x3F)
    {
      sub_2480EB2B4();
      if (v2 <= 0x3F)
      {
        sub_2481242C8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2480EB260(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2481245A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2480EB2B4()
{
  if (!qword_27EE87B70)
  {
    v0 = sub_248124418();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE87B70);
    }
  }
}

unint64_t sub_2480EB318()
{
  result = qword_27EE87B78;
  if (!qword_27EE87B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B78);
  }

  return result;
}

unint64_t sub_2480EB370()
{
  result = qword_27EE87B80;
  if (!qword_27EE87B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B80);
  }

  return result;
}

unint64_t sub_2480EB3C8()
{
  result = qword_27EE87B88;
  if (!qword_27EE87B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B88);
  }

  return result;
}

unint64_t sub_2480EB420()
{
  result = qword_27EE87B90;
  if (!qword_27EE87B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B90);
  }

  return result;
}

unint64_t sub_2480EB478()
{
  result = qword_27EE87B98;
  if (!qword_27EE87B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B98);
  }

  return result;
}

unint64_t sub_2480EB4D0()
{
  result = qword_27EE87BA0;
  if (!qword_27EE87BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BA0);
  }

  return result;
}

unint64_t sub_2480EB528()
{
  result = qword_27EE87BA8;
  if (!qword_27EE87BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BA8);
  }

  return result;
}

unint64_t sub_2480EB580()
{
  result = qword_27EE87BB0;
  if (!qword_27EE87BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BB0);
  }

  return result;
}

unint64_t sub_2480EB5D8()
{
  result = qword_27EE87BB8;
  if (!qword_27EE87BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BB8);
  }

  return result;
}

uint64_t sub_2480EB62C()
{
  v0 = sub_248124828();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2480EB678()
{
  v0 = sub_248124828();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2480EB6C4()
{
  v0 = sub_248124828();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2480EB710(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87AB8, &qword_248125BF8);
    sub_2480EAA28(a2, type metadata accessor for RecordStore.UserStoreRecord);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2480EB7AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87AF0, &qword_248125C08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2480EB81C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordStore(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480EB880(uint64_t a1)
{
  v2 = type metadata accessor for RecordStore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2480EB8F4()
{
  sub_2481246E8();

  v0 = sub_248124938();
  MEMORY[0x24C1C6C90](v0);

  MEMORY[0x24C1C6C90](93, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_2480EB9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B0, &qword_248126138);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87BF0, &qword_248126140);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2481260F0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_2480EBB54();
  v13 = MEMORY[0x277D84CC0];
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v14 = MEMORY[0x277D84D30];
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 72) = a3;

  sub_248124498();
  sub_248124268();

  v15 = sub_2481242C8();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v11, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v16 + 32))(a4, v11, v15);
  }

  return result;
}

unint64_t sub_2480EBB54()
{
  result = qword_27EE87BF8;
  if (!qword_27EE87BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BF8);
  }

  return result;
}

uint64_t sub_2480EBBA8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_248124408();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x277D84F90];
  sub_2480FC318(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2480FC318(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480EBD74(uint64_t a1)
{
  v57 = sub_248124408();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v57);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = sub_2481240D8();
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = sub_24810B240();
  if (!v1)
  {
    v37 = v19;
    MEMORY[0x28223BE20](v19);
    *(&v53 - 2) = a1;
    v24 = sub_2480EBBA8(sub_2480EC5AC, (&v53 - 4), v37);

    return v24;
  }

  v59 = v1;
  MEMORY[0x24C1C7A20](v1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (!swift_dynamicCast())
  {
    v55 = v20;

    v24 = v57;
    (*(v3 + 16))(v7, a1, v57);
    MEMORY[0x24C1C7A20](v1);
    v38 = sub_2481242D8();
    v39 = sub_248124628();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v3;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v59 = v42;
      *v41 = 136446466;
      sub_2480EC564(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v43 = sub_248124938();
      v44 = v24;
      v45 = v43;
      v47 = v46;
      (*(v40 + 8))(v7, v44);
      v48 = sub_24810C31C(v45, v47, &v59);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2082;
      v58 = v1;
      MEMORY[0x24C1C7A20](v1);
      v49 = sub_2481244A8();
      v24 = v50;
      v51 = sub_24810C31C(v49, v50, &v59);

      *(v41 + 14) = v51;
      _os_log_impl(&dword_2480DF000, v38, v39, "Failed to get contents of directory %{public}s: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v42, -1, -1);
      MEMORY[0x24C1C7B90](v41, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v24);
    }

    swift_willThrow();
    return v24;
  }

  v22 = v54;
  v21 = v55;
  (*(v54 + 32))(v55, v18, v10);
  v23 = v3;
  v24 = v57;
  (*(v3 + 16))(v9, a1, v57);
  (*(v22 + 16))(v14, v21, v10);
  v25 = sub_2481242D8();
  v26 = sub_248124628();
  if (!os_log_type_enabled(v25, v26))
  {
    v36 = *(v22 + 8);
    v36(v14, v10);

    (*(v3 + 8))(v9, v24);
    goto LABEL_11;
  }

  v27 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v58 = v56;
  *v27 = 136446466;
  sub_2480EC564(&qword_27EE87A10, MEMORY[0x277D854C0]);
  v28 = sub_248124938();
  v29 = v24;
  v30 = v28;
  v32 = v31;
  (*(v23 + 8))(v9, v29);
  v33 = sub_24810C31C(v30, v32, &v58);

  *(v27 + 4) = v33;
  *(v27 + 12) = 1024;
  sub_2480EC564(&qword_27EE87A20, MEMORY[0x277CC8658]);
  result = sub_2481241B8();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v35 = result;
    if (result <= 0x7FFFFFFF)
    {
      v36 = *(v54 + 8);
      v36(v14, v10);
      *(v27 + 14) = v35;
      _os_log_impl(&dword_2480DF000, v25, v26, "Failed to get contents of directory %{public}s: %{darwin.errno}d", v27, 0x12u);
      v24 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x24C1C7B90](v24, -1, -1);
      MEMORY[0x24C1C7B90](v27, -1, -1);

LABEL_11:
      v52 = v55;
      sub_2481240C8();
      swift_willThrow();
      v36(v52, v10);

      return v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480EC470(uint64_t *a1, uint64_t a2)
{
  v4 = sub_248124408();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *a1;
  v7 = a1[1];
  (*(v9 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

  return sub_2481243F8();
}

uint64_t sub_2480EC564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2480EC5CC(unint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v130 = a1;
  v131 = a2;
  v140 = sub_2481242C8();
  v127 = *(v140 - 8);
  v12 = *(v127 + 64);
  v13 = MEMORY[0x28223BE20](v140);
  v132 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v123 - v15;
  v17 = type metadata accessor for RecordStore(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2481242D8();
  v22 = sub_248124608();
  v23 = os_log_type_enabled(v21, v22);
  v141 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2480DF000, v21, v22, "Updating local domain...", v24, 2u);
    v25 = v24;
    v16 = v141;
    MEMORY[0x24C1C7B90](v25, -1, -1);
  }

  v26 = a3 & 1;
  v28 = v130;
  v27 = v131;
  v29 = v139;
  result = sub_2480ED2F8(v130, v131, v26, a4, a5, a6, v20);
  if (!v29)
  {
    if (v28 >> 62)
    {
      v121 = sub_2481247E8();
      v27 = v131;
      v31 = v121;
    }

    else
    {
      v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v140;
    v33 = MEMORY[0x277D84F90];
    v125 = v7;
    v124 = 0;
    v123 = v20;
    if (v31)
    {
      v142 = MEMORY[0x277D84F90];
      result = sub_248124788();
      if (v31 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v34 = 0;
        v128 = (v127 + 32);
        v129 = (v127 + 16);
        v139 = v31;
        do
        {
          v138 = (v34 + 1);
          v35 = MEMORY[0x24C1C6EA0]();
          LODWORD(v137) = *(v35 + 16);
          v36 = *(v35 + 32);
          v136 = *(v35 + 24);
          v37 = *v129;
          (*v129)(v16, v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v32);
          v38 = *(v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
          v135 = *(v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
          v39 = *(v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
          v134 = *(v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
          v40 = v132;
          v37(v132, v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v140);
          v41 = *(v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
          v133 = *(v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
          v42 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
          swift_beginAccess();
          v43 = *(v35 + v42);
          v44 = *(v35 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);

          swift_unknownObjectRelease();
          v45 = type metadata accessor for UserRecordFile(0);
          v46 = *(v45 + 48);
          v47 = *(v45 + 52);
          v48 = swift_allocObject();
          *(v48 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = 0;
          *(v48 + 16) = 3;
          *(v48 + 24) = v137;
          *(v48 + 32) = v136;
          *(v48 + 40) = v36;
          v49 = *v128;
          (*v128)(v48 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v141, v140);
          v50 = (v48 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
          v51 = v134;
          *v50 = v135;
          v50[1] = v38;
          v52 = (v48 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
          *v52 = v51;
          v52[1] = v39;
          v53 = v139;
          v32 = v140;
          v49(v48 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v40, v140);
          v54 = (v48 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
          *v54 = v133;
          v54[1] = v41;
          *(v48 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships) = v43;
          *(v48 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = v44;
          v16 = v141;
          sub_248124768();
          v55 = *(v142 + 16);
          sub_248124798();
          sub_2481247A8();
          sub_248124778();
          v34 = v138;
        }

        while (v53 != v138);
      }

      else
      {
        v128 = *(v127 + 16);
        v129 = (v127 + 16);
        v56 = (v28 + 32);
        v126 = (v127 + 32);
        do
        {
          v57 = *v56;
          v138 = v56 + 1;
          v139 = v31;
          v58 = *(v57 + 16);
          v59 = *(v57 + 32);
          v137 = *(v57 + 24);
          v60 = v16;
          v61 = v128;
          (v128)(v60, v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v32);
          v62 = *(v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
          v136 = *(v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
          v134 = v62;
          v63 = *(v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
          v135 = *(v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
          v64 = v132;
          (v61)(v132, v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v32);
          v65 = *(v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
          v133 = *(v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
          v130 = v65;
          v66 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
          swift_beginAccess();
          v67 = *(v57 + v66);
          v68 = *(v57 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
          v69 = type metadata accessor for UserRecordFile(0);
          v70 = *(v69 + 48);
          v71 = *(v69 + 52);
          v72 = swift_allocObject();
          *(v72 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = 0;
          *(v72 + 16) = 3;
          *(v72 + 24) = v58;
          *(v72 + 32) = v137;
          *(v72 + 40) = v59;
          v73 = *v126;
          (*v126)(v72 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v141, v140);
          v74 = (v72 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
          v75 = v135;
          v76 = v134;
          *v74 = v136;
          v74[1] = v76;
          v77 = (v72 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
          *v77 = v75;
          v77[1] = v63;
          v73(v72 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v64, v140);
          v32 = v140;
          v78 = (v72 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
          v79 = v130;
          *v78 = v133;
          v78[1] = v79;
          *(v72 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships) = v67;
          *(v72 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = v68;

          v80 = v139;

          v16 = v141;

          sub_248124768();
          v81 = *(v142 + 16);
          sub_248124798();
          sub_2481247A8();
          sub_248124778();
          v56 = v138;
          v31 = v80 - 1;
        }

        while (v31);
      }

      v33 = v142;
      v29 = v124;
      v20 = v123;
      v7 = v125;
      v27 = v131;
    }

    if (v27 >> 62)
    {
      v122 = sub_2481247E8();
      v27 = v131;
      v82 = v122;
    }

    else
    {
      v82 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = MEMORY[0x277D84F90];
    if (!v82)
    {
      goto LABEL_26;
    }

    v142 = MEMORY[0x277D84F90];
    result = sub_248124788();
    if ((v82 & 0x8000000000000000) == 0)
    {
      v133 = v33;
      if ((v27 & 0xC000000000000001) != 0)
      {
        v84 = 0;
        v134 = (v127 + 32);
        v135 = (v127 + 16);
        v139 = v82;
        do
        {
          v138 = (v84 + 1);
          v85 = MEMORY[0x24C1C6EA0]();
          v86 = *(v85 + 32);
          v87 = *(v85 + 48);
          v136 = *(v85 + 40);
          v88 = v140;
          (*v135)(v141, v85 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v140);
          v89 = *(v85 + 24);
          v137 = *(v85 + 16);
          v90 = *(v85 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
          v91 = *(v85 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);

          swift_unknownObjectRelease();
          v92 = type metadata accessor for GroupRecordFile(0);
          v93 = *(v92 + 48);
          v94 = *(v92 + 52);
          v95 = swift_allocObject();
          *(v95 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = 0;
          *(v95 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = 0;
          *(v95 + 16) = 3;
          *(v95 + 24) = v86;
          *(v95 + 32) = v136;
          *(v95 + 40) = v87;
          (*v134)(v95 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v141, v88);
          v96 = (v95 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
          *v96 = v137;
          v96[1] = v89;
          *(v95 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = v90;
          *(v95 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = v91;
          sub_248124768();
          v97 = *(v142 + 16);
          sub_248124798();
          v98 = v139;
          sub_2481247A8();
          sub_248124778();
          v84 = v138;
        }

        while (v98 != v138);
      }

      else
      {
        v99 = (v27 + 32);
        v100 = *(v127 + 16);
        v134 = (v127 + 32);
        v135 = v100;
        v127 += 16;
        do
        {
          v139 = v82;
          v101 = *v99++;
          LODWORD(v137) = *(v101 + 32);
          v102 = *(v101 + 48);
          v136 = *(v101 + 40);
          v103 = v140;
          (v135)(v141, v101 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v140);
          v104 = *(v101 + 24);
          v138 = *(v101 + 16);
          v105 = *(v101 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
          v106 = *(v101 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
          v107 = type metadata accessor for GroupRecordFile(0);
          v108 = *(v107 + 48);
          v109 = *(v107 + 52);
          v110 = swift_allocObject();
          *(v110 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = 0;
          *(v110 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = 0;
          *(v110 + 16) = 3;
          *(v110 + 24) = v137;
          *(v110 + 32) = v136;
          *(v110 + 40) = v102;
          (*v134)(v110 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v141, v103);
          v111 = (v110 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
          *v111 = v138;
          v111[1] = v104;
          *(v110 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = v105;
          *(v110 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = v106;

          sub_248124768();
          v112 = *(v142 + 16);
          sub_248124798();
          v113 = v139;
          sub_2481247A8();
          sub_248124778();
          v82 = v113 - 1;
        }

        while (v82);
      }

      v83 = v142;
      v29 = v124;
      v20 = v123;
      v7 = v125;
      v33 = v133;
LABEL_26:
      sub_2480EDC14(v33, v83, v20);
      if (v29)
      {
        sub_2480EB880(v20);
      }

      else
      {

        v114 = sub_2481242D8();
        v115 = sub_248124638();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_2480DF000, v114, v115, "Updated local domain", v116, 2u);
          v117 = v116;
          v7 = v125;
          MEMORY[0x24C1C7B90](v117, -1, -1);
        }

        v118 = type metadata accessor for RecordManager();
        v119 = __swift_project_boxed_opaque_existential_1((v7 + *(v118 + 20)), *(v7 + *(v118 + 20) + 24));
        v120 = *__swift_project_boxed_opaque_existential_1(v119 + 5, v119[8]);
        sub_24810BFAC(0xD00000000000001FLL, 0x8000000248128CE0);
        return sub_2480EB880(v20);
      }
    }

LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480ED2F8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v71 = a5;
  v65 = a6;
  v66 = a7;
  v69 = a2;
  v70 = a4;
  v67 = a3;
  v68 = a1;
  v74 = sub_2481242C8();
  v77 = *(v74 - 8);
  v8 = *(v77 + 64);
  v9 = MEMORY[0x28223BE20](v74);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v65 - v11;
  v12 = sub_2481242D8();
  v13 = sub_248124608();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2480DF000, v12, v13, "Building updated record store...", v14, 2u);
    MEMORY[0x24C1C7B90](v14, -1, -1);
  }

  v75 = v7;
  v15 = sub_2480E0A38(0);
  v16 = v15;
  v18 = v17;
  v79 = v15;
  v78 = v17;
  v19 = v15 & 0xFFFFFFFFFFFFFF8;
  v20 = v15 >> 62;
  if (v15 >> 62)
  {
LABEL_138:
    v21 = sub_2481247E8();
  }

  else
  {
    v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  while (1)
  {
    if (v21 == v22)
    {
      if (v20)
      {
        v22 = sub_2481247E8();
      }

      else
      {
        v22 = *(v19 + 16);
      }

      goto LABEL_25;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x24C1C6EA0](v22, v16);
    }

    else
    {
      if (v22 >= *(v19 + 16))
      {
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
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v23 = *(v16 + 8 * v22 + 32);
    }

    v25 = *(v24 + 16);

    v27 = v22 + 1;
    v28 = __OFADD__(v22, 1);
    if (v25 == 501)
    {
      break;
    }

    ++v22;
    if (v28)
    {
      goto LABEL_125;
    }
  }

  if (v28)
  {
    goto LABEL_150;
  }

  if (v20)
  {
    if (v27 != sub_2481247E8())
    {
LABEL_48:
      v20 = v22 + 5;
      do
      {
        v35 = v20 - 4;
        v19 = v16 & 0xC000000000000001;
        if ((v16 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x24C1C6EA0](v20 - 4, v16);
        }

        else
        {
          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_128;
          }

          if (v35 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v36 = *(v16 + 8 * v20);
        }

        v38 = *(v37 + 16);

        if (v38 != 501)
        {
          if (v35 != v22)
          {
            if (v19)
            {
              v33 = MEMORY[0x24C1C6EA0](v22, v16);
              v19 = MEMORY[0x24C1C6EA0](v20 - 4, v16);
            }

            else
            {
              if ((v22 & 0x8000000000000000) != 0)
              {
                goto LABEL_144;
              }

              v39 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v22 >= v39)
              {
                goto LABEL_145;
              }

              if (v35 >= v39)
              {
                goto LABEL_146;
              }

              v33 = *(v16 + 8 * v22 + 32);
              v19 = *(v16 + 8 * v20);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
            {
              v16 = sub_2480F3034(v16);
              v40 = (v16 >> 62) & 1;
            }

            else
            {
              LODWORD(v40) = 0;
            }

            v41 = v16 & 0xFFFFFFFFFFFFFF8;
            v42 = *((v16 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x20);
            *((v16 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x20) = v19;

            if ((v16 & 0x8000000000000000) != 0 || v40)
            {
              v16 = sub_2480F3034(v16);
              v41 = v16 & 0xFFFFFFFFFFFFFF8;
              if ((v35 & 0x8000000000000000) != 0)
              {
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }
            }

            else if ((v35 & 0x8000000000000000) != 0)
            {
              goto LABEL_80;
            }

            if (v35 >= *(v41 + 16))
            {
              goto LABEL_136;
            }

            v43 = *(v41 + 8 * v20);
            *(v41 + 8 * v20) = v33;

            v79 = v16;
          }

          v44 = __OFADD__(v22++, 1);
          if (v44)
          {
            goto LABEL_134;
          }
        }

        v19 = v20 - 3;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_130;
        }

        if (v16 >> 62)
        {
          v45 = sub_2481247E8();
        }

        else
        {
          v45 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v20;
      }

      while (v19 != v45);
    }
  }

  else if (v27 != *(v19 + 16))
  {
    goto LABEL_48;
  }

LABEL_25:
  if (!(v16 >> 62))
  {
    v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29 >= v22)
    {
      goto LABEL_27;
    }

LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v29 = sub_2481247E8();
  if (v29 < v22)
  {
    goto LABEL_140;
  }

LABEL_27:
  result = sub_2480F32FC(v22, v29, type metadata accessor for UserRecord);
  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  v20 = v18 >> 62;
  if (v18 >> 62)
  {
LABEL_141:
    result = sub_2481247E8();
    v16 = result;
    goto LABEL_29;
  }

  v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v22 = 0;
  while (1)
  {
    if (v16 == v22)
    {
      if (v20)
      {
        result = sub_2481247E8();
        v22 = result;
      }

      else
      {
        v22 = *(v19 + 16);
      }

      goto LABEL_82;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x24C1C6EA0](v22, v18);
    }

    else
    {
      if (v22 >= *(v19 + 16))
      {
        goto LABEL_126;
      }

      v30 = *(v18 + 8 * v22 + 32);
    }

    v32 = *(v31 + 32);

    v33 = v22 + 1;
    v34 = __OFADD__(v22, 1);
    if (v32 == 501)
    {
      break;
    }

    ++v22;
    if (v34)
    {
      goto LABEL_127;
    }
  }

  if (v34)
  {
LABEL_151:
    __break(1u);
    return result;
  }

  if (v20)
  {
LABEL_81:
    result = sub_2481247E8();
    if (v33 != result)
    {
LABEL_90:
      v20 = v22 + 5;
      do
      {
        v16 = v20 - 4;
        v19 = v18 & 0xC000000000000001;
        if ((v18 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x24C1C6EA0](v20 - 4, v18);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_131;
          }

          if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_132;
          }

          v58 = *(v18 + 8 * v20);
        }

        v60 = *(v59 + 32);

        if (v60 != 501)
        {
          if (v16 != v22)
          {
            if (v19)
            {
              v48 = MEMORY[0x24C1C6EA0](v22, v18);
              v19 = MEMORY[0x24C1C6EA0](v20 - 4, v18);
            }

            else
            {
              if ((v22 & 0x8000000000000000) != 0)
              {
                goto LABEL_147;
              }

              v61 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v22 >= v61)
              {
                goto LABEL_148;
              }

              if (v16 >= v61)
              {
                goto LABEL_149;
              }

              v48 = *(v18 + 8 * v22 + 32);
              v19 = *(v18 + 8 * v20);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
            {
              v18 = sub_2480F3034(v18);
              v62 = (v18 >> 62) & 1;
            }

            else
            {
              LODWORD(v62) = 0;
            }

            v49 = v18 & 0xFFFFFFFFFFFFFF8;
            v63 = *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x20);
            *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x20) = v19;

            if ((v18 & 0x8000000000000000) != 0 || v62)
            {
              v18 = sub_2480F3034(v18);
              v49 = v18 & 0xFFFFFFFFFFFFFF8;
              if ((v16 & 0x8000000000000000) != 0)
              {
LABEL_122:
                __break(1u);
LABEL_123:
                (*(v48 + 8))(v49, v20);
              }
            }

            else if ((v16 & 0x8000000000000000) != 0)
            {
              goto LABEL_122;
            }

            if (v16 >= *(v49 + 16))
            {
              goto LABEL_137;
            }

            v64 = *(v49 + 8 * v20);
            *(v49 + 8 * v20) = v48;

            v78 = v18;
          }

          v44 = __OFADD__(v22++, 1);
          if (v44)
          {
            goto LABEL_135;
          }
        }

        v19 = v20 - 3;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_133;
        }

        if (v18 >> 62)
        {
          result = sub_2481247E8();
        }

        else
        {
          result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v20;
      }

      while (v19 != result);
    }
  }

  else
  {
    result = *(v19 + 16);
    if (v33 != result)
    {
      goto LABEL_90;
    }
  }

LABEL_82:
  v46 = v73;
  v20 = v74;
  if (v18 >> 62)
  {
    result = sub_2481247E8();
    v47 = result;
  }

  else
  {
    v47 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v76;
  v48 = v77;
  v50 = v75;
  if (v47 < v22)
  {
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  sub_2480F32FC(v22, v47, type metadata accessor for GroupRecord);
  v51 = type metadata accessor for RecordManager();
  v52 = __swift_project_boxed_opaque_existential_1((v50 + *(v51 + 20)), *(v50 + *(v51 + 20) + 24));
  v53 = *__swift_project_boxed_opaque_existential_1(v52 + 10, v52[13]);
  v54 = v72;
  sub_2480F49BC(v46);
  if (!v54)
  {
    (*(v48 + 32))(v49, v46, v20);
    sub_2480F68A4(v79, v78, v68, v69, v49, v67 & 1, v70, v66);
    goto LABEL_123;
  }

  v55 = sub_2481242D8();
  v56 = sub_248124628();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_2480DF000, v55, v56, "Failed to update local domain: failed to get current boot UUID", v57, 2u);
    MEMORY[0x24C1C7B90](v57, -1, -1);
  }

  return swift_willThrow();
}

void sub_2480EDC14(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v31 = sub_2481240D8();
  v30[0] = *(v31 - 8);
  v9 = *(v30[0] + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v32[6] = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v30[1] = v30 - v13;
  MEMORY[0x28223BE20](v12);
  v14 = sub_2481242D8();
  v15 = sub_248124608();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2480DF000, v14, v15, "Preparing staging directory...", v16, 2u);
    MEMORY[0x24C1C7B90](v16, -1, -1);
  }

  sub_2480EE254();
  if (!v4)
  {
    v17 = sub_2481242D8();
    v18 = sub_248124608();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2480DF000, v17, v18, "Staging files...", v19, 2u);
      MEMORY[0x24C1C7B90](v19, -1, -1);
    }

    sub_2480EE3B0(a1, a2, a3);
    v20 = sub_2481242D8();
    v21 = sub_248124608();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2480DF000, v20, v21, "Swapping in staged files...", v22, 2u);
      MEMORY[0x24C1C7B90](v22, -1, -1);
    }

    v23 = type metadata accessor for RecordManager();
    v24 = __swift_project_boxed_opaque_existential_1((v5 + *(v23 + 20)), *(v5 + *(v23 + 20) + 24));
    sub_2480F1CC8(v24, v32);
    v25 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    if (qword_27EE879B0 != -1)
    {
      swift_once();
    }

    v26 = sub_248124408();
    v27 = __swift_project_value_buffer(v26, qword_27EE8ACA8);
    if (qword_27EE879A8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v26, qword_27EE8AC90);
    v29 = *v25;
    sub_24810AA04(v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  sub_2480EE184();
}

void sub_2480EE184()
{
  v0 = sub_2481242D8();
  v1 = sub_248124608();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2480DF000, v0, v1, "Cleaning up staging directory...", v2, 2u);
    MEMORY[0x24C1C7B90](v2, -1, -1);
  }

  sub_2480EE574();
}

void sub_2480EE254()
{
  sub_2480EE574();
  if (v0)
  {
    MEMORY[0x24C1C7A20](v0);
    v1 = sub_2481242D8();
    v2 = sub_248124628();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136446210;
      MEMORY[0x24C1C7A20](v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
      v5 = sub_2481244A8();
      v7 = sub_24810C31C(v5, v6, &v8);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_2480DF000, v1, v2, "Failed to update local domain: failed to remove staging directory: %{public}s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x24C1C7B90](v4, -1, -1);
      MEMORY[0x24C1C7B90](v3, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    sub_2480EE9E8();
  }
}

void sub_2480EE3B0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_27EE879E8 != -1)
  {
    swift_once();
  }

  v7 = sub_248124408();
  v8 = __swift_project_value_buffer(v7, qword_27EE8AD50);
  sub_2480EF21C(a1, v8);
  if (v3)
  {
    v11 = sub_2481242D8();
    v12 = sub_248124628();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2480DF000, v11, v12, "Failed to update local domain: failed to save files", v13, 2u);
      MEMORY[0x24C1C7B90](v13, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    if (qword_27EE879F0 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v7, qword_27EE8AD68);
    sub_2480EF8F8(a2, v9);
    if (qword_27EE879C0 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v7, qword_27EE8ACD8);
    sub_2480EFFD4(a3, v10);
  }
}

void sub_2480EE574()
{
  v2 = sub_2481240D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33[-1] - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-1] - v11;
  v13 = type metadata accessor for RecordManager();
  v14 = __swift_project_boxed_opaque_existential_1((v0 + *(v13 + 20)), *(v0 + *(v13 + 20) + 24));
  sub_2480F1CC8(v14, v33);
  v15 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  if (qword_27EE879B0 != -1)
  {
    swift_once();
  }

  v16 = sub_248124408();
  v17 = __swift_project_value_buffer(v16, qword_27EE8ACA8);
  v18 = *v15;
  sub_248109CC4(v17);
  if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    return;
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  v33[0] = v1;
  MEMORY[0x24C1C7A20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (swift_dynamicCast())
  {

    (*(v3 + 32))(v10, v12, v2);
    (*(v3 + 16))(v7, v10, v2);
    v19 = sub_2481242D8();
    v20 = sub_248124628();
    if (!os_log_type_enabled(v19, v20))
    {
      v24 = *(v3 + 8);
      v24(v7, v2);
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    *v21 = 67109120;
    sub_2480F3904(&qword_27EE87A20, MEMORY[0x277CC8658]);
    v22 = sub_2481241B8();
    if (v22 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v23 = v22;
      if (v22 <= 0x7FFFFFFF)
      {
        v24 = *(v3 + 8);
        v24(v7, v2);
        *(v21 + 4) = v23;
        _os_log_impl(&dword_2480DF000, v19, v20, "Failed to remove staging directory: %{darwin.errno}d", v21, 8u);
        MEMORY[0x24C1C7B90](v21, -1, -1);
LABEL_14:

        sub_2481240C8();
        swift_willThrow();
        v24(v10, v2);

        return;
      }
    }

    __break(1u);
  }

  else
  {

    MEMORY[0x24C1C7A20](v1);
    v25 = sub_2481242D8();
    v26 = sub_248124628();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33[0] = v28;
      *v27 = 136446210;
      v33[6] = v1;
      MEMORY[0x24C1C7A20](v1);
      v29 = sub_2481244A8();
      v31 = sub_24810C31C(v29, v30, v33);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2480DF000, v25, v26, "Failed to remove staging directory: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1C7B90](v28, -1, -1);
      MEMORY[0x24C1C7B90](v27, -1, -1);
    }

    swift_willThrow();
  }
}

void sub_2480EE9E8()
{
  v2 = sub_2481240D8();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v42[1] = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v42[2] = v42 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v42 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v42 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  v17 = *(type metadata accessor for RecordManager() + 20);
  v44 = v0;
  v18 = (v0 + v17);
  v19 = __swift_project_boxed_opaque_existential_1((v0 + v17), *(v0 + v17 + 24));
  sub_2480F1CC8(v19, v45);
  v20 = __swift_project_boxed_opaque_existential_1(v45, v46);
  if (qword_27EE879E8 != -1)
  {
    swift_once();
  }

  v21 = sub_248124408();
  v22 = __swift_project_value_buffer(v21, qword_27EE8AD50);
  v23 = *v20;
  sub_2481096B0(v22);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v45);
    v45[0] = v1;
    MEMORY[0x24C1C7A20](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {

      v24 = v43;
      (*(v43 + 32))(v13, v16, v2);
      (*(v24 + 16))(v10, v13, v2);
      v25 = sub_2481242D8();
      v26 = sub_248124628();
      if (!os_log_type_enabled(v25, v26))
      {
        v30 = *(v24 + 8);
        v30(v10, v2);
        goto LABEL_15;
      }

      v27 = swift_slowAlloc();
      *v27 = 67109120;
      sub_2480F3904(&qword_27EE87A20, MEMORY[0x277CC8658]);
      v28 = sub_2481241B8();
      if (v28 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v29 = v28;
        if (v28 <= 0x7FFFFFFF)
        {
          v30 = *(v43 + 8);
          v30(v10, v2);
          *(v27 + 4) = v29;
          _os_log_impl(&dword_2480DF000, v25, v26, "Failed to update local domain: failed to create user staging directory: %{darwin.errno}d", v27, 8u);
          MEMORY[0x24C1C7B90](v27, -1, -1);
LABEL_15:

          sub_2481240C8();
          swift_willThrow();
          v30(v13, v2);

          return;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
    }

    else
    {

      MEMORY[0x24C1C7A20](v1);
      v35 = sub_2481242D8();
      v36 = sub_248124628();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v45[0] = v38;
        *v37 = 136446210;
        v47 = v1;
        MEMORY[0x24C1C7A20](v1);
        v39 = sub_2481244A8();
        v41 = sub_24810C31C(v39, v40, v45);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_2480DF000, v35, v36, "Failed to update local domain: failed to create user staging directory: %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x24C1C7B90](v38, -1, -1);
        MEMORY[0x24C1C7B90](v37, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v45);
    v31 = __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_2480F1CC8(v31, v45);
    v32 = __swift_project_boxed_opaque_existential_1(v45, v46);
    if (qword_27EE879F0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v21, qword_27EE8AD68);
    v34 = *v32;
    sub_2481096B0(v33);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }
}

uint64_t sub_2480EF21C(unint64_t a1, uint64_t a2)
{
  v5 = sub_248124408();
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C38, &qword_248126178);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  v22 = v78;
  result = sub_2480F1614(a1, a2, &qword_27EE87C50, &qword_248126190, &qword_27EE87C48, &qword_248126188);
  if (!v22)
  {
    v75 = v2;
    v68 = v14;
    v78 = 0;
    v24 = 0;
    v70 = result;
    v71 = v21;
    v25 = *(result + 64);
    v65 = v9;
    v66 = result + 64;
    v26 = 1 << *(result + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v25;
    v29 = (v26 + 63) >> 6;
    v69 = (v73 + 16);
    v76 = v5;
    v77 = (v73 + 32);
    v72 = (v73 + 8);
    v30 = v19;
    v67 = v19;
    v74 = v12;
    if ((v27 & v25) != 0)
    {
      while (1)
      {
        v31 = v24;
LABEL_13:
        v34 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v35 = v34 | (v31 << 6);
        v36 = v70;
        v37 = v73;
        v38 = v68;
        (*(v73 + 16))(v68, *(v70 + 48) + *(v73 + 72) * v35, v5);
        v39 = *(*(v36 + 56) + 8 * v35);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C40, &qword_248126180);
        v41 = v5;
        v42 = *(v40 + 48);
        v43 = *(v37 + 32);
        v30 = v67;
        v43(v67, v38, v41);
        *(v30 + v42) = v39;
        (*(*(v40 - 8) + 56))(v30, 0, 1, v40);

        v33 = v31;
        v21 = v71;
LABEL_14:
        sub_2480F389C(v30, v21, &qword_27EE87C38, &qword_248126178);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C40, &qword_248126180);
        if ((*(*(v44 - 8) + 48))(v21, 1, v44) == 1)
        {
        }

        v45 = *(v44 + 48);
        v5 = v76;
        v46 = v74;
        (*v77)(v74, v21, v76);
        v47 = v78;
        sub_2480F0B0C(*&v21[v45], v46, sub_2481089D0);
        v78 = v47;
        if (v47)
        {
          break;
        }

        result = (*v72)(v46, v5);
        v24 = v33;
        if (!v28)
        {
          goto LABEL_6;
        }
      }

      v49 = v65;
      (*v69)(v65, v46, v5);
      v50 = v78;
      MEMORY[0x24C1C7A20](v78);
      v51 = sub_2481242D8();
      v52 = sub_248124628();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = v49;
        v54 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v80 = v77;
        *v54 = 136446466;
        sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0]);
        v55 = sub_248124938();
        v57 = v56;
        v58 = *v72;
        (*v72)(v53, v76);
        v59 = sub_24810C31C(v55, v57, &v80);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2082;
        v79 = v78;
        MEMORY[0x24C1C7A20](v78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
        v60 = sub_2481244A8();
        v62 = sub_24810C31C(v60, v61, &v80);

        *(v54 + 14) = v62;
        v46 = v74;
        _os_log_impl(&dword_2480DF000, v51, v52, "Failed to save files: failed to save file %{public}s: %{public}s", v54, 0x16u);
        v63 = v77;
        swift_arrayDestroy();
        v5 = v76;
        MEMORY[0x24C1C7B90](v63, -1, -1);
        MEMORY[0x24C1C7B90](v54, -1, -1);
      }

      else
      {

        v58 = *v72;
        (*v72)(v49, v5);
      }

      swift_willThrow();

      return v58(v46, v5);
    }

    else
    {
LABEL_6:
      if (v29 <= v24 + 1)
      {
        v32 = v24 + 1;
      }

      else
      {
        v32 = v29;
      }

      v33 = v32 - 1;
      while (1)
      {
        v31 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v31 >= v29)
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C40, &qword_248126180);
          (*(*(v48 - 8) + 56))(v30, 1, 1, v48);
          v28 = 0;
          goto LABEL_14;
        }

        v28 = *(v66 + 8 * v31);
        ++v24;
        if (v28)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2480EF8F8(unint64_t a1, uint64_t a2)
{
  v5 = sub_248124408();
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C08, &qword_248126158);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  v22 = v78;
  result = sub_2480F1614(a1, a2, &qword_27EE87C30, &qword_248126170, &qword_27EE87C18, &qword_248126168);
  if (!v22)
  {
    v75 = v2;
    v68 = v14;
    v78 = 0;
    v24 = 0;
    v70 = result;
    v71 = v21;
    v25 = *(result + 64);
    v65 = v9;
    v66 = result + 64;
    v26 = 1 << *(result + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v25;
    v29 = (v26 + 63) >> 6;
    v69 = (v73 + 16);
    v76 = v5;
    v77 = (v73 + 32);
    v72 = (v73 + 8);
    v30 = v19;
    v67 = v19;
    v74 = v12;
    if ((v27 & v25) != 0)
    {
      while (1)
      {
        v31 = v24;
LABEL_13:
        v34 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v35 = v34 | (v31 << 6);
        v36 = v70;
        v37 = v73;
        v38 = v68;
        (*(v73 + 16))(v68, *(v70 + 48) + *(v73 + 72) * v35, v5);
        v39 = *(*(v36 + 56) + 8 * v35);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C10, &qword_248126160);
        v41 = v5;
        v42 = *(v40 + 48);
        v43 = *(v37 + 32);
        v30 = v67;
        v43(v67, v38, v41);
        *(v30 + v42) = v39;
        (*(*(v40 - 8) + 56))(v30, 0, 1, v40);

        v33 = v31;
        v21 = v71;
LABEL_14:
        sub_2480F389C(v30, v21, &qword_27EE87C08, &qword_248126158);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C10, &qword_248126160);
        if ((*(*(v44 - 8) + 48))(v21, 1, v44) == 1)
        {
        }

        v45 = *(v44 + 48);
        v5 = v76;
        v46 = v74;
        (*v77)(v74, v21, v76);
        v47 = v78;
        sub_2480F0B0C(*&v21[v45], v46, sub_248108C14);
        v78 = v47;
        if (v47)
        {
          break;
        }

        result = (*v72)(v46, v5);
        v24 = v33;
        if (!v28)
        {
          goto LABEL_6;
        }
      }

      v49 = v65;
      (*v69)(v65, v46, v5);
      v50 = v78;
      MEMORY[0x24C1C7A20](v78);
      v51 = sub_2481242D8();
      v52 = sub_248124628();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = v49;
        v54 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v80 = v77;
        *v54 = 136446466;
        sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0]);
        v55 = sub_248124938();
        v57 = v56;
        v58 = *v72;
        (*v72)(v53, v76);
        v59 = sub_24810C31C(v55, v57, &v80);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2082;
        v79 = v78;
        MEMORY[0x24C1C7A20](v78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
        v60 = sub_2481244A8();
        v62 = sub_24810C31C(v60, v61, &v80);

        *(v54 + 14) = v62;
        v46 = v74;
        _os_log_impl(&dword_2480DF000, v51, v52, "Failed to save files: failed to save file %{public}s: %{public}s", v54, 0x16u);
        v63 = v77;
        swift_arrayDestroy();
        v5 = v76;
        MEMORY[0x24C1C7B90](v63, -1, -1);
        MEMORY[0x24C1C7B90](v54, -1, -1);
      }

      else
      {

        v58 = *v72;
        (*v72)(v49, v5);
      }

      swift_willThrow();

      return v58(v46, v5);
    }

    else
    {
LABEL_6:
      if (v29 <= v24 + 1)
      {
        v32 = v24 + 1;
      }

      else
      {
        v32 = v29;
      }

      v33 = v32 - 1;
      while (1)
      {
        v31 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v31 >= v29)
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C10, &qword_248126160);
          (*(*(v48 - 8) + 56))(v30, 1, 1, v48);
          v28 = 0;
          goto LABEL_14;
        }

        v28 = *(v66 + 8 * v31);
        ++v24;
        if (v28)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_2480EFFD4(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v65 = sub_2481240D8();
  v61 = *(v65 - 8);
  v2 = *(v61 + 64);
  v3 = MEMORY[0x28223BE20](v65);
  v62 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v63 = v59 - v6;
  MEMORY[0x28223BE20](v5);
  v64 = v59 - v7;
  v8 = sub_248124408();
  v66 = *(v8 - 8);
  v9 = *(v66 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v59 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v59 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v59 - v19;
  v21 = sub_2480F3904(&qword_27EE87C00, type metadata accessor for RecordStore);
  v22 = *(v21 + 16);
  v23 = type metadata accessor for RecordStore(0);
  v24 = v67;
  v25 = v22(v23, v21);
  v67 = v26;
  if (v24)
  {
    v27 = v66;
    (*(v66 + 16))(v20, v69, v8);
    MEMORY[0x24C1C7A20](v24);
    v28 = sub_2481242D8();
    v29 = sub_248124628();

    v30 = v8;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v71 = v32;
      *v31 = 136446466;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v33 = sub_248124938();
      v34 = v30;
      v36 = v35;
      (*(v27 + 8))(v20, v34);
      v37 = sub_24810C31C(v33, v36, &v71);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2082;
      v70 = v24;
      MEMORY[0x24C1C7A20](v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
      v38 = sub_2481244A8();
      v40 = sub_24810C31C(v38, v39, &v71);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_2480DF000, v28, v29, "Failed to save file %{public}s: failed to serialize data: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v32, -1, -1);
      MEMORY[0x24C1C7B90](v31, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v20, v8);
    }

    swift_willThrow();
  }

  else
  {
    v59[0] = v12;
    v59[1] = v15;
    v41 = v66;
    v42 = v25;
    v43 = type metadata accessor for RecordManager();
    v44 = __swift_project_boxed_opaque_existential_1((v68 + *(v43 + 20)), *(v68 + *(v43 + 20) + 24));
    v45 = *__swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v60 = v42;
    v46 = v42;
    v47 = v69;
    sub_24810A3BC(v46, v67, v69);
    v48 = v41;
    v49 = v18;
    (*(v41 + 16))(v18, v47, v8);
    v50 = sub_2481242D8();
    v51 = sub_248124618();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v71 = v53;
      *v52 = 136446210;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v54 = sub_248124938();
      v55 = v49;
      v57 = v56;
      (*(v48 + 8))(v55, v8);
      v58 = sub_24810C31C(v54, v57, &v71);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_2480DF000, v50, v51, "Saved file %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C1C7B90](v53, -1, -1);
      MEMORY[0x24C1C7B90](v52, -1, -1);
      sub_2480E3308(v60, v67);
    }

    else
    {
      sub_2480E3308(v60, v67);

      (*(v41 + 8))(v49, v8);
    }
  }
}

void sub_2480F0B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v70 = a3;
  v71 = a2;
  v4 = sub_2481240D8();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v66 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v61 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v61 - v11;
  v13 = sub_248124408();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v61 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v61 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v61 - v25;
  v27 = v70(v24);
  v70 = v28;
  if (v3)
  {
    v29 = v69;
    (*(v69 + 16))(v26, v71, v13);
    MEMORY[0x24C1C7A20](v3);
    v30 = sub_2481242D8();
    v31 = sub_248124628();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v72 = v3;
      v34 = v33;
      v74 = v33;
      *v32 = 136446466;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v35 = sub_248124938();
      v37 = v36;
      (*(v29 + 8))(v26, v13);
      v38 = sub_24810C31C(v35, v37, &v74);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2082;
      v73 = v72;
      MEMORY[0x24C1C7A20](v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
      v39 = sub_2481244A8();
      v41 = sub_24810C31C(v39, v40, &v74);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_2480DF000, v30, v31, "Failed to save file %{public}s: failed to serialize data: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v34, -1, -1);
      MEMORY[0x24C1C7B90](v32, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v26, v13);
    }

    swift_willThrow();
  }

  else
  {
    v63 = v10;
    v64 = v12;
    v61[2] = v20;
    v62 = v23;
    v61[1] = v17;
    v42 = v69;
    v43 = v27;
    v44 = type metadata accessor for RecordManager();
    v45 = __swift_project_boxed_opaque_existential_1(&v72[*(v44 + 20)], *&v72[*(v44 + 20) + 24]);
    v46 = *__swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v65 = v43;
    v47 = v43;
    v48 = v71;
    sub_24810A3BC(v47, v70, v71);
    v49 = v42;
    v50 = v62;
    v51 = v13;
    (*(v42 + 16))(v62, v48, v13);
    v52 = sub_2481242D8();
    v53 = sub_248124618();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v74 = v55;
      *v54 = 136446210;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v56 = sub_248124938();
      v57 = v51;
      v59 = v58;
      (*(v49 + 8))(v50, v57);
      v60 = sub_24810C31C(v56, v59, &v74);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_2480DF000, v52, v53, "Saved file %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x24C1C7B90](v55, -1, -1);
      MEMORY[0x24C1C7B90](v54, -1, -1);
      sub_2480E3308(v65, v70);
    }

    else
    {
      sub_2480E3308(v65, v70);

      (*(v42 + 8))(v50, v13);
    }
  }
}

uint64_t sub_2480F1614(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v75 = a2;
  v13 = sub_2481240D8();
  v65 = *(v13 - 1);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_248124408();
  v70 = *(v76 - 8);
  v17 = v70[8];
  v18 = MEMORY[0x28223BE20](v76);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v74 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v80 = &v61 - v23;
  v68 = a5;
  v69 = a6;
  v24 = a6;
  v25 = a1;
  v26 = sub_2480F36BC(MEMORY[0x277D84F90], a3, a4, a5, v24);
  if (a1 >> 62)
  {
LABEL_34:
    v27 = sub_2481247E8();
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v11;
  v28 = v80;
  if (v27)
  {
    v62 = v20;
    v63 = v16;
    v64 = v13;
    v20 = 0;
    v67 = v25 & 0xFFFFFFFFFFFFFF8;
    v78 = v70 + 2;
    v72 = (v70 + 1);
    v73 = v25 & 0xC000000000000001;
    v29 = v76;
    v71 = v27;
    while (1)
    {
      if (v73)
      {
        v32 = MEMORY[0x24C1C6EA0](v20, v25);
        v11 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v20 >= *(v67 + 16))
        {
          goto LABEL_33;
        }

        v32 = *(v25 + 8 * v20 + 32);

        v11 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      v77 = *v78;
      (v77)(v74, v75, v29);
      v33 = *(v32 + 40);
      v79[0] = *(v32 + 32);
      v79[1] = v33;

      MEMORY[0x24C1C6C90](0x7473696C702ELL, 0xE600000000000000);
      sub_2481243F8();
      if (v26[2])
      {
        sub_2480F1E78(v28);
        if (v34)
        {
          break;
        }
      }

      v16 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v26;
      v13 = v26;
      v25 = sub_2480F1E78(v28);
      v37 = v26[2];
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_31;
      }

      v40 = v36;
      if (v26[3] >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = v79;
          sub_2480F2D8C(MEMORY[0x277D854C0], v68, v69);
        }
      }

      else
      {
        sub_2480F25C8(v39, isUniquelyReferenced_nonNull_native, v68, v69);
        v13 = v79[0];
        v41 = sub_2480F1E78(v80);
        if ((v40 & 1) != (v42 & 1))
        {
          result = sub_248124D08();
          __break(1u);
          return result;
        }

        v25 = v41;
      }

      v29 = v76;
      v26 = v79[0];
      if (v40)
      {
        v30 = *(v79[0] + 56);
        v31 = *(v30 + 8 * v25);
        *(v30 + 8 * v25) = v32;

        v28 = v80;
      }

      else
      {
        *(v79[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v28 = v80;
        (v77)(v26[6] + v70[9] * v25, v80, v29);
        *(v26[7] + 8 * v25) = v32;
        v43 = v26[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_32;
        }

        v26[2] = v45;
      }

      (*v72)(v28, v29);
      ++v20;
      v25 = v16;
      if (v11 == v71)
      {
        return v26;
      }
    }

    v46 = v62;
    (v77)(v62, v28, v29);
    v47 = sub_2481242D8();
    v48 = sub_248124628();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v77 = v49;
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v49 = 136315138;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v50 = sub_248124938();
      v52 = v51;
      v53 = *v72;
      (*v72)(v46, v76);
      v54 = sub_24810C31C(v50, v52, v79);
      v29 = v76;

      v55 = v77;
      *(v77 + 4) = v54;
      v56 = v55;
      _os_log_impl(&dword_2480DF000, v47, v48, "Failed to save files: multiple files collided at %s", v55, 0xCu);
      v57 = v78;
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x24C1C7B90](v57, -1, -1);
      MEMORY[0x24C1C7B90](v56, -1, -1);
    }

    else
    {

      v53 = *v72;
      (*v72)(v46, v29);
    }

    LODWORD(v79[0]) = 17;
    sub_24810BD34(MEMORY[0x277D84F90]);
    sub_2480F3904(&qword_27EE87A20, MEMORY[0x277CC8658]);
    v58 = v63;
    v59 = v64;
    sub_2481241C8();
    sub_2481240C8();
    (*(v65 + 8))(v58, v59);
    swift_willThrow();

    v53(v80, v29);
  }

  return v26;
}

uint64_t sub_2480F1CC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2480F1D2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2481242C8();
  v5 = MEMORY[0x277CC95F0];
  sub_2480F3904(&qword_27EE87A58, MEMORY[0x277CC95F0]);
  v6 = sub_248124438();
  return sub_2480F2A5C(a1, v6, MEMORY[0x277CC95F0], &qword_27EE87C68, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_2480F1E00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_248124D58();
  sub_2481244D8();
  v6 = sub_248124D88();

  return sub_2480F29A4(a1, a2, v6);
}

unint64_t sub_2480F1E78(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_248124408();
  v5 = MEMORY[0x277D854C0];
  sub_2480F3904(&qword_27EE87C20, MEMORY[0x277D854C0]);
  v6 = sub_248124438();
  return sub_2480F2A5C(a1, v6, MEMORY[0x277D854C0], &qword_27EE87C28, v5, MEMORY[0x277D854D8]);
}

uint64_t sub_2480F1F4C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C60, &qword_2481261A0);
  v43 = a2;
  result = sub_248124808();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2480F3904(&qword_27EE87A58, MEMORY[0x277CC95F0]);
      result = sub_248124438();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2480F2328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C58, &qword_248126198);
  v38 = a2;
  result = sub_248124808();
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
      sub_248124D58();
      sub_2481244D8();
      result = sub_248124D88();
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

uint64_t sub_2480F25C8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_248124408();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_248124808();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
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
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_2480F3904(&qword_27EE87C20, MEMORY[0x277D854C0]);
      result = sub_248124438();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

unint64_t sub_2480F29A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_248124B38())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2480F2A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
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
      sub_2480F3904(v24, v25);
      v20 = sub_248124468();
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

void *sub_2480F2C24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C58, &qword_248126198);
  v2 = *v0;
  v3 = sub_2481247F8();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_2480F2D8C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_2481247F8();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

uint64_t sub_2480F3034(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2481247E8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_248124708();
}

uint64_t sub_2480F3098(uint64_t a1)
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
    sub_2481247E8();
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
  result = sub_248124708();
  *v1 = result;
  return result;
}

unint64_t sub_2480F3138(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480F31F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2481247E8();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_2481247E8();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480F32FC(uint64_t a1, uint64_t a2, void (*a3)(void))
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

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_2481247E8();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = sub_2481247E8();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_2480F3098(result);
    return sub_2480F31F8(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_2480F33D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C70, &unk_2481261A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C60, &qword_2481261A0);
    v8 = sub_248124818();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2480F394C(v10, v6, &qword_27EE87C70, &unk_2481261A8);
      result = sub_2480F1D2C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2481242C8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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

unint64_t sub_2480F35C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C58, &qword_248126198);
    v3 = sub_248124818();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2480F1E00(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_2480F36BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_248124818();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_2480F394C(v17, v13, a2, v28);
      result = sub_2480F1E78(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_248124408();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

uint64_t sub_2480F389C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2480F3904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2480F394C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2480F39B8()
{
  v0 = sub_248124408();
  __swift_allocate_value_buffer(v0, qword_27EE8AC48);
  __swift_project_value_buffer(v0, qword_27EE8AC48);
  return MEMORY[0x24C1C6B80](0xD00000000000001FLL, 0x8000000248128D40);
}

uint64_t sub_2480F3A1C()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8AC60);
  __swift_project_value_buffer(v0, qword_27EE8AC60);
  if (qword_27EE87990 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8AC48);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F3B50()
{
  v0 = sub_248124408();
  __swift_allocate_value_buffer(v0, qword_27EE8AC78);
  __swift_project_value_buffer(v0, qword_27EE8AC78);
  return MEMORY[0x24C1C6B80](0xD00000000000001FLL, 0x8000000248128D00);
}

uint64_t sub_2480F3BB4()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8AC90);
  __swift_project_value_buffer(v0, qword_27EE8AC90);
  if (qword_27EE879A0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8AC78);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2480F3D4C()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8ACA8);
  __swift_project_value_buffer(v0, qword_27EE8ACA8);
  if (qword_27EE879A0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8AC78);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F3E90()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8ACC0);
  __swift_project_value_buffer(v0, qword_27EE8ACC0);
  if (qword_27EE87990 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8AC48);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F3FCC()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8ACD8);
  __swift_project_value_buffer(v0, qword_27EE8ACD8);
  if (qword_27EE879B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8ACA8);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F4108()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8ACF0);
  __swift_project_value_buffer(v0, qword_27EE8ACF0);
  if (qword_27EE87998 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8AC60);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F423C()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8AD08);
  __swift_project_value_buffer(v0, qword_27EE8AD08);
  if (qword_27EE87998 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8AC60);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F4370()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8AD20);
  __swift_project_value_buffer(v0, qword_27EE8AD20);
  if (qword_27EE879A8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8AC90);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F44A4()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8AD38);
  __swift_project_value_buffer(v0, qword_27EE8AD38);
  if (qword_27EE879A8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8AC90);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F45D8()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8AD50);
  __swift_project_value_buffer(v0, qword_27EE8AD50);
  if (qword_27EE879B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8ACA8);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F470C()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27EE8AD68);
  __swift_project_value_buffer(v0, qword_27EE8AD68);
  if (qword_27EE879B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EE8ACA8);
  (*(v1 + 16))(v5, v6, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F4840()
{
  if (qword_27EE879B8 != -1)
  {
    swift_once();
  }

  v0 = sub_248124408();
  v1 = __swift_project_value_buffer(v0, qword_27EE8ACC0);
  return sub_2480E275C(v1) & 1;
}

uint64_t sub_2480F49BC@<X0>(uint64_t a1@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2481240D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B0, &qword_248126138);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v23 - v9;
  v24[0] = 37;
  v11 = sub_248124578();
  *(v11 + 16) = 37;
  *(v11 + 48) = 0u;
  *(v11 + 61) = 0;
  *(v11 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v11 + 32), v24, 0, 0))
  {
    v12 = MEMORY[0x24C1C6B60]();
    v13 = sub_2481242D8();
    v14 = sub_248124628();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v12;
      _os_log_impl(&dword_2480DF000, v13, v14, "sysctlbyname(kern.bootsessionuuid) failed: %{darwin.errno}d", v15, 8u);
      MEMORY[0x24C1C7B90](v15, -1, -1);
    }

    result = sub_248124398();
    if ((result & 0x100000000) == 0)
    {
      v17 = result;

      v23[3] = v17;
      sub_24810BD34(MEMORY[0x277D84F90]);
      sub_2480F52CC();
      sub_2481241C8();
      sub_2481240C8();
      (*(v3 + 8))(v6, v2);
      result = swift_willThrow();
LABEL_8:
      v22 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
  }

  else
  {

    sub_2480F5324(v18, v19);

    sub_248124268();

    v20 = sub_2481242C8();
    v21 = *(v20 - 8);
    result = (*(v21 + 48))(v10, 1, v20);
    if (result != 1)
    {

      result = (*(v21 + 32))(a1, v10, v20);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F4D10()
{
  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal14SysctlProvider_logger;
  v2 = sub_2481242F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SysctlProvider()
{
  result = qword_27EE87C78;
  if (!qword_27EE87C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480F4E00()
{
  result = sub_2481242F8();
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

char *sub_2480F4E90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
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

size_t sub_2480F4FEC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2480F51C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C88, &qword_248126240);
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

unint64_t sub_2480F52CC()
{
  result = qword_27EE87A20;
  if (!qword_27EE87A20)
  {
    sub_2481240D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87A20);
  }

  return result;
}

uint64_t sub_2480F5324(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t sub_2480F5374()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid;
  v3 = sub_2481242C8();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);

  v6 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);

  v4(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v3);
  v7 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);

  v8 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships);

  v9 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);

  return v0;
}

uint64_t sub_2480F5468()
{
  sub_2480F5374();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2480F54E8()
{
  result = sub_2481242C8();
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

uint64_t sub_2480F55A8()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 6);

  v3 = OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid;
  v4 = sub_2481242C8();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups];

  v6 = *&v0[OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_2480F569C()
{
  result = sub_2481242C8();
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

uint64_t sub_2480F5758(uint64_t a1)
{
  v3 = sub_2481242C8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = sub_2481240D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 3)
  {
    v45 = 22;
    sub_24810BD34(MEMORY[0x277D84F90]);
    sub_2480F52CC();
    sub_2481241C8();
    sub_2481240C8();
    (*(v12 + 8))(v15, v11);
    swift_willThrow();
    return a1;
  }

  v43 = v1;
  v44 = *(a1 + 24);
  v16 = *(a1 + 40);
  v40 = *(a1 + 32);
  v17 = v4[2];
  v17(v10, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v3);
  v18 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName + 8);
  v39 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
  v42 = v18;
  v19 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory + 8);
  v38 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
  v41 = v19;
  result = (v17)(v8, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v3);
  v21 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases);
  if (v21)
  {
    v37 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships);
    v22 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell + 8);
    v35 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
    v36 = v22;
    v23 = type metadata accessor for UserRecord(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    a1 = swift_allocObject();
    *(a1 + 16) = v44;
    *(a1 + 24) = v40;
    *(a1 + 32) = v16;
    v26 = v4[4];
    v26(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v10, v3);
    v27 = (a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
    v28 = v38;
    v29 = v41;
    v30 = v42;
    *v27 = v39;
    v27[1] = v30;
    v31 = (a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
    *v31 = v28;
    v31[1] = v29;
    v26(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v8, v3);
    v32 = (a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
    v33 = v36;
    *v32 = v35;
    v32[1] = v33;
    *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships) = v37;
    *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) = v21;

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F5B0C(uint64_t a1)
{
  v3 = sub_2481242C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2481240D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 3)
  {
    v26 = 22;
    sub_24810BD34(MEMORY[0x277D84F90]);
    sub_2480F52CC();
    sub_2481241C8();
    sub_2481240C8();
    (*(v9 + 8))(v12, v8);
    swift_willThrow();
    return a1;
  }

  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v25 = *(a1 + 32);
  result = (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v3);
  v16 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);
  if (v16)
  {
    v24 = v1;
    v17 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);
    if (v17)
    {
      v18 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName + 8);
      v23 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
      v19 = type metadata accessor for GroupRecord(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      a1 = swift_allocObject();
      *(a1 + 32) = v13;
      *(a1 + 40) = v25;
      *(a1 + 48) = v14;
      (*(v4 + 32))(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v7, v3);
      *(a1 + 16) = v23;
      *(a1 + 24) = v18;
      *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups) = v16;
      *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) = v17;

      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}