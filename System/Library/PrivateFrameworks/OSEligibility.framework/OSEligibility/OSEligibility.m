uint64_t sub_25D1525F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a1;
  if (sub_25D152F50(a2, a3, a4, a5, a6))
  {
    v19 = v10;
    v18 = 3;
    sub_25D165AEC(&v17);
    v11 = sub_25D165AE8();
    v12 = sub_25D15C84C();
    sub_25D15C858(&v19, &v18, &v17, v11, v12, a8);
    *(a8 + 2) = 1;
    v13 = sub_25D1539B8(MEMORY[0x277D84F90]);
    v14 = *(a8 + 8);

    *(a8 + 8) = v13;
    v15 = *(a8 + 16);

    *(a8 + 16) = MEMORY[0x277D84FA0];
  }

  else
  {
    v20 = v10;
    return sub_25D15C510(&v20, a7, a8);
  }

  return result;
}

uint64_t sub_25D1526E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a1;
  v16 = a7[3];
  v15 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, v16);
  if ((*(v15 + 8))(v16, v15) & 1) != 0 && (v17 = a7[3], v18 = a7[4], __swift_project_boxed_opaque_existential_1(a7, v17), v19 = (*(v18 + 16))(a2, a3, a4, a5, v17, v18), v20) && (v21 = sub_25D152F50(v19, v20, 0, 0, a6), , (v21))
  {
    v33 = v14;
    v32 = 3;
    sub_25D165AEC(&v31);
    v22 = sub_25D165AE8();
    v23 = sub_25D15C84C();
    sub_25D15C858(&v33, &v32, &v31, v22, v23, a9);
    *(a9 + 2) = 1;
    v24 = sub_25D1539B8(MEMORY[0x277D84F90]);
    v25 = *(a9 + 8);

    *(a9 + 8) = v24;
    v26 = *(a9 + 16);

    *(a9 + 16) = MEMORY[0x277D84FA0];
  }

  else
  {
    v34 = v14;
    return sub_25D15C510(&v34, a8, a9);
  }

  return result;
}

uint64_t sub_25D152878(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25D152944(v11, 0, 0, 1, a1, a2);
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
    sub_25D153CD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25D152944(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25D152A50(a5, a6);
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
    result = sub_25D168574();
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

uint64_t sub_25D152A50(uint64_t a1, unint64_t a2)
{
  v4 = sub_25D152A9C(a1, a2);
  sub_25D152BCC(&unk_286EB2A30);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25D152A9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25D152CB8(v5, 0);
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

  result = sub_25D168574();
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
        v10 = sub_25D168494();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25D152CB8(v10, 0);
        result = sub_25D168534();
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

uint64_t sub_25D152BCC(uint64_t result)
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

  result = sub_25D152D2C(result, v12, 1, v3);
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

void *sub_25D152CB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A50, &unk_25D16BB90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25D152D2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A50, &unk_25D16BB90);
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

unint64_t sub_25D152E20(unsigned __int8 a1)
{
  v2 = *(v1 + 40);
  sub_25D153AEC();
  v3 = sub_25D168414();
  return sub_25D152E88(a1, v3);
}

unint64_t sub_25D152E88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25D153B40();
    do
    {
      v7 = *(*(v2 + 48) + v4);
      if (sub_25D168424())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25D152F50(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v92 = a3;
  v9 = sub_25D168354();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v94 = &v90 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v90 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v91 = &v90 - v20;
  MEMORY[0x28223BE20](v19);
  v90 = &v90 - v21;
  v22 = a5[3];
  v23 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v22);
  v24 = *(v23 + 16);
  v95 = a1;
  v25 = a1;
  v26 = a2;
  v24(&v102, v25, a2, 0, v22, v23);
  sub_25D153B94(&v102, &v97);
  if (!v98)
  {
    sub_25D153C04(&v97);
    v43 = sub_25D167248();
    v44 = v9;
    (*(v10 + 16))(v14, v43, v9);

    v45 = sub_25D168334();
    v46 = sub_25D1684F4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v99[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_25D152878(v95, v26, v99);
      _os_log_impl(&dword_25D151000, v45, v46, "No app record found for %s so not bypassing eligibility", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x25F893300](v48, -1, -1);
      MEMORY[0x25F893300](v47, -1, -1);
    }

    (*(v10 + 8))(v14, v44);
    sub_25D153C04(&v102);
    return 0;
  }

  sub_25D153C6C(&v97, v99);
  v27 = a5[3];
  v28 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v27);
  v29 = (*(v28 + 8))(v27, v28);
  v96 = v10;
  v30 = v9;
  if (v29)
  {
    if (!a4)
    {
      v75 = v100;
      v76 = v101;
      __swift_project_boxed_opaque_existential_1(v99, v100);
      v77 = (*(v76 + 32))(v75, v76);
      v78 = *(v77 + 16);
      v79 = (v77 + 32);
      v80 = v91;
      while (v78)
      {
        v81 = *v79++;
        --v78;
        if (v81 == 1)
        {

          v31 = 0xE800000000000000;
          v35 = 0x6C616E6F73726570;
          goto LABEL_11;
        }
      }

      v83 = sub_25D167248();
      (*(v96 + 16))(v80, v83, v30);

      v84 = sub_25D168334();
      v85 = sub_25D1684F4();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v97 = v87;
        *v86 = 136315138;
        *(v86 + 4) = sub_25D152878(v95, v26, &v97);
        _os_log_impl(&dword_25D151000, v84, v85, "Personal persona not found for %s so not bypassing eligibility", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v87);
        MEMORY[0x25F893300](v87, -1, -1);
        MEMORY[0x25F893300](v86, -1, -1);
      }

      v88 = *(v96 + 8);
      v89 = v80;
      goto LABEL_31;
    }

    v31 = a4;
    v32 = v100;
    v33 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    v34 = *(v33 + 40);

    v35 = v92;
    if ((v34(v92, v31, v32, v33) & 1) == 0)
    {
      v36 = sub_25D167248();
      v37 = v90;
      (*(v96 + 16))(v90, v36, v9);

      v38 = sub_25D168334();
      v39 = sub_25D1684F4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v97 = v41;
        *v40 = 136315394;
        v42 = sub_25D152878(v35, v31, &v97);

        *(v40 + 4) = v42;
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_25D152878(v95, v26, &v97);
        _os_log_impl(&dword_25D151000, v38, v39, "Persona %s not applicable for %s so not bypassing eligibility", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F893300](v41, -1, -1);
        MEMORY[0x25F893300](v40, -1, -1);
      }

      else
      {
      }

LABEL_30:
      v88 = *(v96 + 8);
      v89 = v37;
LABEL_31:
      v88(v89, v30);
      goto LABEL_32;
    }
  }

  else
  {
    v31 = 0xE400000000000000;
    v35 = 1701736302;
  }

LABEL_11:
  v49 = v100;
  v50 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  v51 = (*(v50 + 8))(v49, v50);
  v52 = v100;
  v53 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  v54 = (*(v53 + 16))(v52, v53);
  v55 = v100;
  v56 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  v57 = (*(v56 + 24))(v55, v56);
  v58 = sub_25D167248();
  v59 = *(v96 + 16);
  if (v51 & 1) == 0 || (v54 & 1) != 0 || (v57)
  {
    v37 = v94;
    v59(v94, v58, v30);

    v66 = sub_25D168334();
    v67 = sub_25D1684F4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v93 = v30;
      v69 = v68;
      v70 = swift_slowAlloc();
      v71 = v26;
      v72 = v35;
      v73 = v70;
      *&v97 = v70;
      *v69 = 136316162;
      *(v69 + 4) = sub_25D152878(v95, v71, &v97);
      *(v69 + 12) = 2080;
      v74 = sub_25D152878(v72, v31, &v97);

      *(v69 + 14) = v74;
      *(v69 + 22) = 1024;
      *(v69 + 24) = v51 & 1;
      *(v69 + 28) = 1024;
      *(v69 + 30) = v54 & 1;
      *(v69 + 34) = 1024;
      *(v69 + 36) = v57 & 1;
      _os_log_impl(&dword_25D151000, v66, v67, "Not bypassing eligibility for %s:%s (isProfileValidated: %{BOOL}d isUPPValidated:%{BOOL}d isBeta:%{BOOL}d", v69, 0x28u);
      swift_arrayDestroy();
      MEMORY[0x25F893300](v73, -1, -1);
      MEMORY[0x25F893300](v69, -1, -1);

      (*(v96 + 8))(v37, v93);
LABEL_32:
      sub_25D153C04(&v102);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      return 0;
    }

    goto LABEL_30;
  }

  v60 = v93;
  v59(v93, v58, v30);

  v61 = sub_25D168334();
  v62 = sub_25D1684F4();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v97 = v64;
    *v63 = 136315394;
    *(v63 + 4) = sub_25D152878(v95, v26, &v97);
    *(v63 + 12) = 2080;
    v65 = sub_25D152878(v35, v31, &v97);

    *(v63 + 14) = v65;
    _os_log_impl(&dword_25D151000, v61, v62, "Bypassing eligibility for %s:%s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F893300](v64, -1, -1);
    MEMORY[0x25F893300](v63, -1, -1);
  }

  else
  {
  }

  (*(v96 + 8))(v60, v30);
  sub_25D153C04(&v102);
  __swift_destroy_boxed_opaque_existential_0Tm(v99);
  return 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25D1539B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A40, &unk_25D16B9C0);
    v3 = sub_25D1685B4();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25D152E20(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_25D153AEC()
{
  result = qword_28155A478;
  if (!qword_28155A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155A478);
  }

  return result;
}

unint64_t sub_25D153B40()
{
  result = qword_28155A470;
  if (!qword_28155A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155A470);
  }

  return result;
}

uint64_t sub_25D153B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A48, &qword_25D168C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25D153C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A48, &qword_25D168C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25D153C6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25D153CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25D153D3C()
{
  v1 = 0x7641746559746F6ELL;
  v2 = 0x656279616DLL;
  if (*v0 != 2)
  {
    v2 = 0x656C626967696C65;
  }

  if (*v0)
  {
    v1 = 0x6967696C45746F6ELL;
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

uint64_t sub_25D153DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25D15F3AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25D153E08(uint64_t a1)
{
  v2 = sub_25D1544A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D153E44(uint64_t a1)
{
  v2 = sub_25D1544A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D153E8C(uint64_t a1)
{
  v2 = sub_25D1544F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D153EC8(uint64_t a1)
{
  v2 = sub_25D1544F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D153F04(uint64_t a1)
{
  v2 = sub_25D15454C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D153F40(uint64_t a1)
{
  v2 = sub_25D15454C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D153F7C(uint64_t a1)
{
  v2 = sub_25D1545A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D153FB8(uint64_t a1)
{
  v2 = sub_25D1545A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D153FF4(uint64_t a1)
{
  v2 = sub_25D1545F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D154030(uint64_t a1)
{
  v2 = sub_25D1545F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityAnswer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A58, &qword_25D168C20);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A60, &qword_25D168C28);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A68, &qword_25D168C30);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A70, &qword_25D168C38);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A78, &qword_25D168C40);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D1544A4();
  sub_25D168724();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_25D15454C();
      v24 = v33;
      sub_25D168624();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_25D1544F8();
      v24 = v36;
      sub_25D168624();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_25D1545A0();
    v24 = v30;
    sub_25D168624();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_25D1545F4();
  sub_25D168624();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_25D1544A4()
{
  result = qword_27FC27E40;
  if (!qword_27FC27E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E40);
  }

  return result;
}

unint64_t sub_25D1544F8()
{
  result = qword_27FC27E48;
  if (!qword_27FC27E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E48);
  }

  return result;
}

unint64_t sub_25D15454C()
{
  result = qword_27FC27E50;
  if (!qword_27FC27E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E50);
  }

  return result;
}

unint64_t sub_25D1545A0()
{
  result = qword_27FC27E58;
  if (!qword_27FC27E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E58);
  }

  return result;
}

unint64_t sub_25D1545F4()
{
  result = qword_27FC27E60;
  if (!qword_27FC27E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E60);
  }

  return result;
}

uint64_t OSEligibilityAnswer.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A80, &qword_25D168C48);
  v47 = *(v51 - 8);
  v3 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A88, &qword_25D168C50);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A90, &qword_25D168C58);
  v45 = *(v48 - 8);
  v9 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A98, &qword_25D168C60);
  v46 = *(v12 - 8);
  v13 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA0, &qword_25D168C68);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_25D1544A4();
  v23 = v55;
  sub_25D168714();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_25D168614();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_25D168564();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70) + 48);
      *v33 = &type metadata for OSEligibilityAnswer;
      sub_25D1685D4();
      sub_25D168554();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_25D1545A0();
          v39 = v44;
          sub_25D1685C4();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_25D1545F4();
          v35 = v44;
          sub_25D1685C4();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_0Tm(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_25D15454C();
        v38 = v44;
        sub_25D1685C4();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_0Tm(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_25D1544F8();
        v40 = v44;
        sub_25D1685C4();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v56);
}

uint64_t sub_25D154CFC()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_25D154D74()
{
  if (*v0)
  {
    result = 0x646563726F66;
  }

  else
  {
    result = 0x64657475706D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_25D154DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657475706D6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_25D168664() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646563726F66 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25D168664();

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

uint64_t sub_25D154E90(uint64_t a1)
{
  v2 = sub_25D1552A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D154ECC(uint64_t a1)
{
  v2 = sub_25D1552A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D154F08(uint64_t a1)
{
  v2 = sub_25D155350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D154F44(uint64_t a1)
{
  v2 = sub_25D155350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D154F80(uint64_t a1)
{
  v2 = sub_25D1552FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D154FBC(uint64_t a1)
{
  v2 = sub_25D1552FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityAnswerSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AB0, &qword_25D168C78);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AB8, &qword_25D168C80);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AC0, &qword_25D168C88);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D1552A8();
  sub_25D168724();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_25D1552FC();
    v18 = v22;
    sub_25D168624();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_25D155350();
    sub_25D168624();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_25D1552A8()
{
  result = qword_27FC27E68;
  if (!qword_27FC27E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E68);
  }

  return result;
}

unint64_t sub_25D1552FC()
{
  result = qword_27FC27E70;
  if (!qword_27FC27E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E70);
  }

  return result;
}

unint64_t sub_25D155350()
{
  result = qword_27FC27E78;
  if (!qword_27FC27E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E78);
  }

  return result;
}

uint64_t OSEligibilityAnswerSource.hashValue.getter()
{
  v1 = *v0;
  sub_25D1686D4();
  MEMORY[0x25F892F60](v1);
  return sub_25D168704();
}

uint64_t OSEligibilityAnswerSource.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AC8, &qword_25D168C90);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AD0, &qword_25D168C98);
  v32 = *(v8 - 8);
  v9 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AD8, &qword_25D168CA0);
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D1552A8();
  v17 = v37;
  sub_25D168714();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_25D168614();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_25D168564();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70) + 48);
    *v25 = &type metadata for OSEligibilityAnswerSource;
    sub_25D1685D4();
    sub_25D168554();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_25D1552FC();
    sub_25D1685C4();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_25D155350();
    sub_25D1685C4();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t _s13OSEligibility0A11InputStatusO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25D1686D4();
  MEMORY[0x25F892F60](v1);
  return sub_25D168704();
}

uint64_t sub_25D1558B4()
{
  v1 = *v0;
  sub_25D1686D4();
  MEMORY[0x25F892F60](v1);
  return sub_25D168704();
}

uint64_t sub_25D155928@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = result == 0xD000000000000025 && 0x800000025D16D3C0 == a2;
  if (v5 || (v6 = result, result = sub_25D168664(), (result & 1) != 0))
  {
    v7 = 0;
  }

  else if (v6 == 0xD000000000000024 && 0x800000025D16D3F0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    result = 0xD000000000000021;
    if (v6 == 0xD000000000000021 && 0x800000025D16D420 == a2 || (result = sub_25D168664(), (result & 1) != 0))
    {
      v7 = 2;
    }

    else if (v6 == 0xD000000000000022 && 0x800000025D16D450 == a2 || (result = sub_25D168664(), (result & 1) != 0))
    {
      v7 = 3;
    }

    else
    {
      result = 0xD000000000000023;
      if (v6 == 0xD000000000000023 && 0x800000025D16D480 == a2 || (result = sub_25D168664(), (result & 1) != 0))
      {
        v7 = 4;
      }

      else
      {
        result = 0xD000000000000026;
        if (v6 == 0xD000000000000026 && 0x800000025D16D4B0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
        {
          v7 = 17;
        }

        else
        {
          result = 0xD000000000000027;
          if (v6 == 0xD000000000000027 && 0x800000025D16D4E0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
          {
            v7 = 5;
          }

          else if (v6 == 0xD000000000000024 && 0x800000025D16D510 == a2 || (result = sub_25D168664(), (result & 1) != 0))
          {
            v7 = 6;
          }

          else
          {
            result = 0xD00000000000002CLL;
            if (v6 == 0xD00000000000002CLL && 0x800000025D16D540 == a2 || (result = sub_25D168664(), (result & 1) != 0))
            {
              v7 = 7;
            }

            else if (v6 == 0xD000000000000028 && 0x800000025D16D570 == a2 || (result = sub_25D168664(), (result & 1) != 0))
            {
              v7 = 8;
            }

            else if (v6 == 0xD000000000000022 && 0x800000025D16D5A0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
            {
              v7 = 9;
            }

            else if (v6 == 0xD000000000000028 && 0x800000025D16D5D0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
            {
              v7 = 10;
            }

            else
            {
              result = 0xD000000000000020;
              if (v6 == 0xD000000000000020 && 0x800000025D16D600 == a2 || (result = sub_25D168664(), (result & 1) != 0))
              {
                v7 = 11;
              }

              else
              {
                result = 0xD000000000000033;
                if (v6 == 0xD000000000000033 && 0x800000025D16D630 == a2 || (result = sub_25D168664(), (result & 1) != 0))
                {
                  v7 = 12;
                }

                else
                {
                  result = 0xD00000000000002BLL;
                  if (v6 == 0xD00000000000002BLL && 0x800000025D16D670 == a2 || (result = sub_25D168664(), (result & 1) != 0))
                  {
                    v7 = 13;
                  }

                  else
                  {
                    result = 0xD00000000000001ELL;
                    if (v6 == 0xD00000000000001ELL && 0x800000025D16D6A0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
                    {
                      v7 = 14;
                    }

                    else if (v6 == 0xD000000000000025 && 0x800000025D16D6C0 == a2 || (result = sub_25D168664(), (result & 1) != 0))
                    {
                      v7 = 15;
                    }

                    else
                    {
                      v7 = 16;
                      if (v6 != 0xD000000000000024 || 0x800000025D16D6F0 != a2)
                      {
                        result = sub_25D168664();
                        if (result)
                        {
                          v7 = 16;
                        }

                        else
                        {
                          v7 = 18;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = v7;
  return result;
}

unint64_t sub_25D155E14(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_25D155928(a1, a2, &v7);
  v5 = v7;
  if (v7 != 18)
  {
    result = xpc_int64_get_value(a3);
    if ((result & 0x8000000000000000) == 0)
    {
      if (result >= 8)
      {
        v6 = 6;
      }

      else
      {
        v6 = 0x504030602010006uLL >> (8 * result);
      }

      return sub_25D155E94(v6, v5);
    }
  }

  return result;
}

unint64_t sub_25D155E94(char a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = *v2;
  if (a1 == 6)
  {
    result = sub_25D152E20(a2);
    if (v6)
    {
      v7 = result;
      v8 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25D15E00C();
        v10 = v14;
      }

      result = sub_25D15DD54(v7, v10);
      *v3 = v10;
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    result = sub_25D15DEE8(a1, a2, v13);
    *v3 = v15;
  }

  return result;
}

unint64_t OSEligibilityInput.bridgedInputKey.getter()
{
  result = 0xD000000000000025;
  switch(*v0)
  {
    case 1:
    case 6:
    case 0x10:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
    case 9:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0xD00000000000002CLL;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000028;
      break;
    case 0xB:
      result = 0xD000000000000020;
      break;
    case 0xC:
      result = 0xD000000000000033;
      break;
    case 0xD:
      result = 0xD00000000000002BLL;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000025;
      break;
    case 0x11:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25D1560F8(char a1)
{
  result = 0x4C7972746E756F63;
  switch(a1)
  {
    case 1:
      result = 0x427972746E756F63;
      break;
    case 2:
      result = 0x6C43656369766564;
      break;
    case 3:
      result = 0x6F4C656369766564;
      break;
    case 4:
      result = 0x6C6543616E696863;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x614C656369766564;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x676E614C69726973;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x5069646572616873;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x7461646874726962;
      break;
    case 15:
      result = 0x4C65736963657270;
      break;
    case 16:
      result = 0x6F4C6F7470696873;
      break;
    case 17:
      result = 0x707041656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25D156350(uint64_t a1)
{
  v2 = sub_25D15FB68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15638C(uint64_t a1)
{
  v2 = sub_25D15FB68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1563C8(uint64_t a1)
{
  v2 = sub_25D15FEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156404(uint64_t a1)
{
  v2 = sub_25D15FEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25D1602CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25D15647C(uint64_t a1)
{
  v2 = sub_25D15FA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1564B8(uint64_t a1)
{
  v2 = sub_25D15FA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1564F4(uint64_t a1)
{
  v2 = sub_25D15FFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156530(uint64_t a1)
{
  v2 = sub_25D15FFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15656C(uint64_t a1)
{
  v2 = sub_25D160000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1565A8(uint64_t a1)
{
  v2 = sub_25D160000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1565E4(uint64_t a1)
{
  v2 = sub_25D15FC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156620(uint64_t a1)
{
  v2 = sub_25D15FC10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15665C(uint64_t a1)
{
  v2 = sub_25D15FF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156698(uint64_t a1)
{
  v2 = sub_25D15FF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1566D4(uint64_t a1)
{
  v2 = sub_25D15FE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156710(uint64_t a1)
{
  v2 = sub_25D15FE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15674C(uint64_t a1)
{
  v2 = sub_25D15FF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156788(uint64_t a1)
{
  v2 = sub_25D15FF04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1567C4(uint64_t a1)
{
  v2 = sub_25D15FE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156800(uint64_t a1)
{
  v2 = sub_25D15FE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15683C(uint64_t a1)
{
  v2 = sub_25D15FCB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156878(uint64_t a1)
{
  v2 = sub_25D15FCB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1568B4(uint64_t a1)
{
  v2 = sub_25D15FDB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1568F0(uint64_t a1)
{
  v2 = sub_25D15FDB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15692C(uint64_t a1)
{
  v2 = sub_25D15FD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156968(uint64_t a1)
{
  v2 = sub_25D15FD60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1569A4(uint64_t a1)
{
  v2 = sub_25D15FBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1569E0(uint64_t a1)
{
  v2 = sub_25D15FBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156A1C(uint64_t a1)
{
  v2 = sub_25D15FA6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156A58(uint64_t a1)
{
  v2 = sub_25D15FA6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156A94(uint64_t a1)
{
  v2 = sub_25D15FB14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156AD0(uint64_t a1)
{
  v2 = sub_25D15FB14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156B0C(uint64_t a1)
{
  v2 = sub_25D15FC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156B48(uint64_t a1)
{
  v2 = sub_25D15FC64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156B84(uint64_t a1)
{
  v2 = sub_25D15FAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156BC0(uint64_t a1)
{
  v2 = sub_25D15FAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D156BFC(uint64_t a1)
{
  v2 = sub_25D15FD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D156C38(uint64_t a1)
{
  v2 = sub_25D15FD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityInput.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AE0, &qword_25D168CA8);
  v127 = *(v4 - 8);
  v128 = v4;
  v5 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v126 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AE8, &qword_25D168CB0);
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v123 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AF0, &qword_25D168CB8);
  v121 = *(v10 - 8);
  v122 = v10;
  v11 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v120 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AF8, &qword_25D168CC0);
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v117 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B00, &qword_25D168CC8);
  v115 = *(v16 - 8);
  v116 = v16;
  v17 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v114 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B08, &qword_25D168CD0);
  v112 = *(v19 - 8);
  v113 = v19;
  v20 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v111 = &v77 - v21;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B10, &qword_25D168CD8);
  v109 = *(v110 - 8);
  v22 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v108 = &v77 - v23;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B18, &qword_25D168CE0);
  v106 = *(v107 - 8);
  v24 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v105 = &v77 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B20, &qword_25D168CE8);
  v103 = *(v104 - 8);
  v26 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v102 = &v77 - v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B28, &qword_25D168CF0);
  v100 = *(v101 - 8);
  v28 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v99 = &v77 - v29;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B30, &qword_25D168CF8);
  v97 = *(v98 - 8);
  v30 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v96 = &v77 - v31;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B38, &qword_25D168D00);
  v94 = *(v95 - 8);
  v32 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v93 = &v77 - v33;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B40, &qword_25D168D08);
  v91 = *(v92 - 8);
  v34 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v90 = &v77 - v35;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B48, &qword_25D168D10);
  v88 = *(v89 - 8);
  v36 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v87 = &v77 - v37;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B50, &qword_25D168D18);
  v85 = *(v86 - 8);
  v38 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v84 = &v77 - v39;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B58, &qword_25D168D20);
  v82 = *(v83 - 8);
  v40 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v81 = &v77 - v41;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B60, &qword_25D168D28);
  v79 = *(v80 - 8);
  v42 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v77 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B68, &qword_25D168D30);
  v78 = *(v45 - 8);
  v46 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v48 = &v77 - v47;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B70, &qword_25D168D38);
  v49 = *(v130 - 8);
  v50 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v52 = &v77 - v51;
  v53 = *v2;
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D15FA18();
  v129 = v52;
  sub_25D168724();
  v55 = (v49 + 8);
  switch(v53)
  {
    case 1:
      v132 = 1;
      sub_25D15FFAC();
      v70 = v129;
      v71 = v130;
      sub_25D168624();
      (*(v79 + 8))(v44, v80);
      return (*v55)(v70, v71);
    case 2:
      v132 = 2;
      sub_25D15FF58();
      v67 = v81;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v82 + 8);
      v63 = v67;
      v64 = &v115;
      goto LABEL_21;
    case 3:
      v132 = 3;
      sub_25D15FF04();
      v68 = v84;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v85 + 8);
      v63 = v68;
      v64 = &v118;
      goto LABEL_21;
    case 4:
      v132 = 4;
      sub_25D15FEB0();
      v65 = v87;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v88 + 8);
      v63 = v65;
      v64 = &v121;
      goto LABEL_21;
    case 5:
      v132 = 5;
      sub_25D15FE5C();
      v73 = v90;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v91 + 8);
      v63 = v73;
      v64 = &v124;
      goto LABEL_21;
    case 6:
      v132 = 6;
      sub_25D15FE08();
      v74 = v93;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v94 + 8);
      v63 = v74;
      v64 = &v127;
      goto LABEL_21;
    case 7:
      v132 = 7;
      sub_25D15FDB4();
      v69 = v96;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v97 + 8);
      v63 = v69;
      v64 = &v130;
      goto LABEL_21;
    case 8:
      v132 = 8;
      sub_25D15FD60();
      v76 = v99;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v100 + 8);
      v63 = v76;
      v64 = &v131;
      goto LABEL_21;
    case 9:
      v132 = 9;
      sub_25D15FD0C();
      v66 = v102;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v103 + 8);
      v63 = v66;
      v64 = &v133;
      goto LABEL_21;
    case 10:
      v132 = 10;
      sub_25D15FCB8();
      v75 = v105;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v106 + 8);
      v63 = v75;
      v64 = &v134;
      goto LABEL_21;
    case 11:
      v132 = 11;
      sub_25D15FC64();
      v61 = v108;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v62 = *(v109 + 8);
      v63 = v61;
      v64 = &v135;
LABEL_21:
      v62(v63, *(v64 - 32));
      return (*v55)(v57, v56);
    case 12:
      v132 = 12;
      sub_25D15FC10();
      v58 = v111;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v60 = v112;
      v59 = v113;
      goto LABEL_17;
    case 13:
      v132 = 13;
      sub_25D15FBBC();
      v58 = v114;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v60 = v115;
      v59 = v116;
      goto LABEL_17;
    case 14:
      v132 = 14;
      sub_25D15FB68();
      v58 = v117;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v60 = v118;
      v59 = v119;
      goto LABEL_17;
    case 15:
      v132 = 15;
      sub_25D15FB14();
      v58 = v120;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v60 = v121;
      v59 = v122;
      goto LABEL_17;
    case 16:
      v132 = 16;
      sub_25D15FAC0();
      v58 = v123;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v60 = v124;
      v59 = v125;
      goto LABEL_17;
    case 17:
      v132 = 17;
      sub_25D15FA6C();
      v58 = v126;
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      v60 = v127;
      v59 = v128;
LABEL_17:
      (*(v60 + 8))(v58, v59);
      break;
    default:
      v132 = 0;
      sub_25D160000();
      v57 = v129;
      v56 = v130;
      sub_25D168624();
      (*(v78 + 8))(v48, v45);
      break;
  }

  return (*v55)(v57, v56);
}

uint64_t OSEligibilityInput.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v152 = a2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B78, &qword_25D168D40);
  v134 = *(v151 - 8);
  v3 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v147 = &v96 - v4;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B80, &qword_25D168D48);
  v132 = *(v133 - 8);
  v5 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v146 = &v96 - v6;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B88, &qword_25D168D50);
  v130 = *(v131 - 8);
  v7 = (*(v130 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v145 = &v96 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B90, &qword_25D168D58);
  v128 = *(v129 - 8);
  v9 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v144 = &v96 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27B98, &qword_25D168D60);
  v126 = *(v127 - 8);
  v11 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v143 = &v96 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BA0, &qword_25D168D68);
  v124 = *(v125 - 8);
  v13 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v142 = &v96 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BA8, &qword_25D168D70);
  v122 = *(v123 - 8);
  v15 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v141 = &v96 - v16;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BB0, &qword_25D168D78);
  v120 = *(v121 - 8);
  v17 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v140 = &v96 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BB8, &qword_25D168D80);
  v118 = *(v119 - 8);
  v19 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v139 = &v96 - v20;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BC0, &qword_25D168D88);
  v116 = *(v117 - 8);
  v21 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v138 = &v96 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BC8, &qword_25D168D90);
  v114 = *(v115 - 8);
  v23 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v137 = &v96 - v24;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BD0, &qword_25D168D98);
  v113 = *(v112 - 8);
  v25 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v150 = &v96 - v26;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BD8, &qword_25D168DA0);
  v111 = *(v109 - 8);
  v27 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v136 = &v96 - v28;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BE0, &qword_25D168DA8);
  v110 = *(v106 - 8);
  v29 = (*(v110 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v149 = &v96 - v30;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BE8, &qword_25D168DB0);
  v107 = *(v108 - 8);
  v31 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v148 = &v96 - v32;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BF0, &qword_25D168DB8);
  v104 = *(v105 - 8);
  v33 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v135 = &v96 - v34;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27BF8, &qword_25D168DC0);
  v102 = *(v103 - 8);
  v35 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v37 = &v96 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C00, &qword_25D168DC8);
  v101 = *(v38 - 8);
  v39 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v41 = &v96 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C08, &qword_25D168DD0);
  v43 = *(v42 - 8);
  v44 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = &v96 - v45;
  v48 = a1[3];
  v47 = a1[4];
  v153 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_25D15FA18();
  v49 = v154;
  sub_25D168714();
  if (v49)
  {
LABEL_43:
    v94 = v153;
    return __swift_destroy_boxed_opaque_existential_0Tm(v94);
  }

  v98 = v41;
  v97 = v38;
  v99 = v37;
  v50 = v148;
  v51 = v149;
  v52 = v150;
  v100 = 0;
  v54 = v151;
  v53 = v152;
  v154 = v43;
  v55 = sub_25D168614();
  if (*(v55 + 16) != 1 || (v56 = *(v55 + 32), v56 == 18))
  {
    v59 = sub_25D168564();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70) + 48);
    *v61 = &type metadata for OSEligibilityInput;
    sub_25D1685D4();
    sub_25D168554();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    (*(v154 + 8))(v46, v42);
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v96 = v55;
  switch(v56)
  {
    case 1:
      v155 = 1;
      sub_25D15FFAC();
      v81 = v99;
      v82 = v100;
      sub_25D1685C4();
      if (v82)
      {
        goto LABEL_41;
      }

      (*(v102 + 8))(v81, v103);
      goto LABEL_46;
    case 2:
      v155 = 2;
      sub_25D15FF58();
      v74 = v135;
      v75 = v100;
      sub_25D1685C4();
      if (v75)
      {
        goto LABEL_41;
      }

      (*(v104 + 8))(v74, v105);
      goto LABEL_46;
    case 3:
      v155 = 3;
      sub_25D15FF04();
      v78 = v100;
      sub_25D1685C4();
      if (v78)
      {
        goto LABEL_41;
      }

      (*(v107 + 8))(v50, v108);
      goto LABEL_46;
    case 4:
      v155 = 4;
      sub_25D15FEB0();
      v69 = v100;
      sub_25D1685C4();
      if (v69)
      {
        goto LABEL_41;
      }

      (*(v110 + 8))(v51, v106);
      goto LABEL_46;
    case 5:
      v155 = 5;
      sub_25D15FE5C();
      v85 = v136;
      v86 = v100;
      sub_25D1685C4();
      if (v86)
      {
        goto LABEL_41;
      }

      (*(v111 + 8))(v85, v109);
      goto LABEL_46;
    case 6:
      v155 = 6;
      sub_25D15FE08();
      v89 = v100;
      sub_25D1685C4();
      if (v89)
      {
        goto LABEL_41;
      }

      (*(v113 + 8))(v52, v112);
      goto LABEL_46;
    case 7:
      v155 = 7;
      sub_25D15FDB4();
      v79 = v137;
      v80 = v100;
      sub_25D1685C4();
      if (v80)
      {
        goto LABEL_41;
      }

      (*(v114 + 8))(v79, v115);
      goto LABEL_46;
    case 8:
      v155 = 8;
      sub_25D15FD60();
      v92 = v138;
      v93 = v100;
      sub_25D1685C4();
      if (v93)
      {
        goto LABEL_41;
      }

      (*(v116 + 8))(v92, v117);
      goto LABEL_46;
    case 9:
      v155 = 9;
      sub_25D15FD0C();
      v72 = v139;
      v73 = v100;
      sub_25D1685C4();
      if (v73)
      {
        goto LABEL_41;
      }

      (*(v118 + 8))(v72, v119);
      goto LABEL_46;
    case 10:
      v155 = 10;
      sub_25D15FCB8();
      v90 = v140;
      v91 = v100;
      sub_25D1685C4();
      if (v91)
      {
        goto LABEL_41;
      }

      (*(v120 + 8))(v90, v121);
      goto LABEL_46;
    case 11:
      v155 = 11;
      sub_25D15FC64();
      v67 = v141;
      v68 = v100;
      sub_25D1685C4();
      if (v68)
      {
        goto LABEL_41;
      }

      (*(v122 + 8))(v67, v123);
      goto LABEL_46;
    case 12:
      v155 = 12;
      sub_25D15FC10();
      v70 = v142;
      v71 = v100;
      sub_25D1685C4();
      if (v71)
      {
        goto LABEL_41;
      }

      (*(v124 + 8))(v70, v125);
      goto LABEL_46;
    case 13:
      v155 = 13;
      sub_25D15FBBC();
      v87 = v143;
      v88 = v100;
      sub_25D1685C4();
      if (v88)
      {
        goto LABEL_41;
      }

      (*(v126 + 8))(v87, v127);
      goto LABEL_46;
    case 14:
      v155 = 14;
      sub_25D15FB68();
      v65 = v144;
      v66 = v100;
      sub_25D1685C4();
      if (v66)
      {
        goto LABEL_41;
      }

      (*(v128 + 8))(v65, v129);
      goto LABEL_46;
    case 15:
      v155 = 15;
      sub_25D15FB14();
      v76 = v145;
      v77 = v100;
      sub_25D1685C4();
      if (v77)
      {
        goto LABEL_41;
      }

      (*(v130 + 8))(v76, v131);
      goto LABEL_46;
    case 16:
      v155 = 16;
      sub_25D15FAC0();
      v63 = v146;
      v64 = v100;
      sub_25D1685C4();
      if (v64)
      {
        goto LABEL_41;
      }

      (*(v132 + 8))(v63, v133);
      goto LABEL_46;
    case 17:
      v155 = 17;
      sub_25D15FA6C();
      v83 = v147;
      v84 = v100;
      sub_25D1685C4();
      if (v84)
      {
        goto LABEL_41;
      }

      (*(v134 + 8))(v83, v54);
      goto LABEL_46;
    default:
      v155 = 0;
      sub_25D160000();
      v57 = v98;
      v58 = v100;
      sub_25D1685C4();
      if (v58)
      {
LABEL_41:
        (*(v154 + 8))(v46, v42);
        goto LABEL_42;
      }

      (*(v101 + 8))(v57, v97);
LABEL_46:
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v94 = v153;
      *v53 = v56;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v94);
}

unint64_t sub_25D158FF0()
{
  v1 = *v0;
  v2 = 0x746553746F6ELL;
  v3 = 0xD000000000000010;
  v4 = 0x7078456E656B6F74;
  if (v1 != 4)
  {
    v4 = 0x6E756F6363416F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6967696C45746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x656C626967696C65;
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

uint64_t sub_25D1590C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25D1608A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25D1590F4(uint64_t a1)
{
  v2 = sub_25D160054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D159130(uint64_t a1)
{
  v2 = sub_25D160054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15916C(uint64_t a1)
{
  v2 = sub_25D1601A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1591A8(uint64_t a1)
{
  v2 = sub_25D1601A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1591E4(uint64_t a1)
{
  v2 = sub_25D1600A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D159220(uint64_t a1)
{
  v2 = sub_25D1600A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15925C(uint64_t a1)
{
  v2 = sub_25D1601F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D159298(uint64_t a1)
{
  v2 = sub_25D1601F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D1592D4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25D159310(uint64_t a1)
{
  v2 = sub_25D16024C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15934C(uint64_t a1)
{
  v2 = sub_25D16024C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D159388(uint64_t a1)
{
  v2 = sub_25D1600FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D1593C4(uint64_t a1)
{
  v2 = sub_25D1600FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D159400(uint64_t a1)
{
  v2 = sub_25D160150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15943C(uint64_t a1)
{
  v2 = sub_25D160150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityInputStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C10, &qword_25D168DD8);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C18, &qword_25D168DE0);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C20, &qword_25D168DE8);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C28, &qword_25D168DF0);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C30, &qword_25D168DF8);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C38, &qword_25D168E00);
  v34 = *(v18 - 8);
  v19 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C40, &qword_25D168E08);
  v22 = *(v50 - 8);
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D160054();
  sub_25D168724();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_25D160150();
      v29 = v41;
      v30 = v50;
      sub_25D168624();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_25D1600FC();
      v29 = v44;
      v30 = v50;
      sub_25D168624();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_25D1600A8();
      v29 = v47;
      v30 = v50;
      sub_25D168624();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_25D1601F8();
      v29 = v35;
      v30 = v50;
      sub_25D168624();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_25D1601A4();
      v29 = v38;
      v30 = v50;
      sub_25D168624();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_25D16024C();
  v30 = v50;
  sub_25D168624();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

uint64_t OSEligibilityInputStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C48, &qword_25D168E10);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v67 = &v52[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C50, &qword_25D168E18);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v66 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C58, &qword_25D168E20);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v70 = &v52[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C60, &qword_25D168E28);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v69 = &v52[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C68, &qword_25D168E30);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v52[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C70, &qword_25D168E38);
  v55 = *(v21 - 8);
  v22 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = &v52[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C78, &qword_25D168E40);
  v26 = *(v25 - 8);
  v27 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v52[-v28];
  v30 = a1[3];
  v31 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_25D160054();
  v32 = v71;
  sub_25D168714();
  if (!v32)
  {
    v54 = v21;
    v33 = v20;
    v35 = v69;
    v34 = v70;
    v71 = v26;
    v36 = v29;
    v37 = sub_25D168614();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 6))
    {
      v41 = sub_25D168564();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70) + 48);
      *v43 = &type metadata for OSEligibilityInputStatus;
      sub_25D1685D4();
      sub_25D168554();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v71 + 8))(v36, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = *(v37 + 32);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v48 = v68;
          v76 = 3;
          sub_25D160150();
          sub_25D1685C4();
          v49 = v71;
          (*(v61 + 8))(v34, v60);
          (*(v49 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v45 = v48;
        }

        else
        {
          v45 = v68;
          v46 = v71;
          if (v38 == 4)
          {
            v77 = 4;
            sub_25D1600FC();
            v47 = v66;
            sub_25D1685C4();
            (*(v63 + 8))(v47, v62);
          }

          else
          {
            v78 = 5;
            sub_25D1600A8();
            v50 = v67;
            sub_25D1685C4();
            (*(v64 + 8))(v50, v65);
          }

          (*(v46 + 8))(v29, v25);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v38)
        {
          if (v38 == 1)
          {
            v74 = 1;
            sub_25D1601F8();
            v39 = v33;
            sub_25D1685C4();
            v40 = v71;
            (*(v56 + 8))(v39, v57);
          }

          else
          {
            v75 = 2;
            sub_25D1601A4();
            sub_25D1685C4();
            v40 = v71;
            (*(v58 + 8))(v35, v59);
          }
        }

        else
        {
          v73 = 0;
          sub_25D16024C();
          sub_25D1685C4();
          (*(v55 + 8))(v24, v54);
          v40 = v71;
        }

        (*(v40 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v45 = v68;
      }

      *v45 = v53;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v72);
}

uint64_t sub_25D15A2FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = MEMORY[0x25F892C70]();
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v8 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((result & 1) == 0)
    {
      result = sub_25D15E158(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_25D15E158((v9 > 1), v10 + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    *(v8 + 16) = v10 + 1;
    v11 = v8 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
  }

  return result;
}

uint64_t sub_25D15A3B8(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = MEMORY[0x25F8933D0]();
  result = sub_25D168364();
  if (v6 != result)
  {
    return result;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      result = xpc_array_create(0, 0);
      v10 = result;
      v19 = *(v4 + 16);
      if (!v19)
      {
LABEL_18:
        v18 = "OS_ELIGIBILITY_CONTEXT_COUNTRY_POLICY";
        goto LABEL_24;
      }

      v20 = 0;
      v21 = (v4 + 40);
      while (v20 < *(v4 + 16))
      {
        ++v20;
        v22 = *(v21 - 1);
        v23 = *v21;
        v24 = sub_25D168464();

        v25 = xpc_string_create((v24 + 32));

        xpc_array_append_value(v10, v25);

        result = swift_unknownObjectRelease();
        v21 += 2;
        if (v19 == v20)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      if (v5 != 4)
      {
        v8 = sub_25D168464();
        v9 = "OS_ELIGIBILITY_CONTEXT_ELIGIBLE_SIRI_LANGUAGE";
        goto LABEL_28;
      }

      result = xpc_array_create(0, 0);
      v10 = result;
      v11 = *(v4 + 16);
      if (!v11)
      {
LABEL_12:
        v18 = "OS_ELIGIBILITY_CONTEXT_PRECISE_LOCATION";
        goto LABEL_24;
      }

      v12 = 0;
      v13 = (v4 + 40);
      while (v12 < *(v4 + 16))
      {
        ++v12;
        v14 = *(v13 - 1);
        v15 = *v13;
        v16 = sub_25D168464();

        v17 = xpc_string_create((v16 + 32));

        xpc_array_append_value(v10, v17);

        result = swift_unknownObjectRelease();
        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (!v5)
  {
    v8 = sub_25D168464();
    v9 = "OS_ELIGIBILITY_CONTEXT_COUNTRY_BILLING";
    goto LABEL_28;
  }

  if (v5 == 1)
  {
    v8 = sub_25D168464();
    v9 = "OS_ELIGIBILITY_CONTEXT_FORCE_REASON";
LABEL_28:
    xpc_dictionary_set_string(a1, v9, (v8 + 32));
  }

  result = xpc_array_create(0, 0);
  v10 = result;
  v26 = *(v4 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = (v4 + 40);
    while (v27 < *(v4 + 16))
    {
      ++v27;
      v29 = *(v28 - 1);
      v30 = *v28;
      v31 = sub_25D168464();

      v32 = xpc_string_create((v31 + 32));

      xpc_array_append_value(v10, v32);

      result = swift_unknownObjectRelease();
      v28 += 2;
      if (v26 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_33;
  }

LABEL_23:
  v18 = "OS_ELIGIBILITY_CONTEXT_ELIGIBLE_DEVICE_LANGUAGES";
LABEL_24:
  xpc_dictionary_set_value(a1, v18, v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_25D15A6BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25D168664() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25D15A74C()
{
  v1 = *v0;
  v2 = 0x427972746E756F63;
  v3 = 0x507972746E756F63;
  v4 = 0x4C65736963657270;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6165526563726F66;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
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

uint64_t sub_25D15A838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25D165698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25D15A860(uint64_t a1)
{
  v2 = sub_25D161E24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15A89C(uint64_t a1)
{
  v2 = sub_25D161E24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15A8EC(uint64_t a1)
{
  v2 = sub_25D162064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15A928(uint64_t a1)
{
  v2 = sub_25D162064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15A964(uint64_t a1)
{
  v2 = sub_25D161F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15A9A0(uint64_t a1)
{
  v2 = sub_25D161F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15A9DC(uint64_t a1)
{
  v2 = sub_25D161FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15AA18(uint64_t a1)
{
  v2 = sub_25D161FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15AA54(uint64_t a1)
{
  v2 = sub_25D161E78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15AA90(uint64_t a1)
{
  v2 = sub_25D161E78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15AB00(uint64_t a1)
{
  v2 = sub_25D162010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15AB3C(uint64_t a1)
{
  v2 = sub_25D162010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25D15AB78()
{
  sub_25D1686D4();
  MEMORY[0x25F892F60](0);
  return sub_25D168704();
}

uint64_t sub_25D15ABBC()
{
  sub_25D1686D4();
  MEMORY[0x25F892F60](0);
  return sub_25D168704();
}

uint64_t sub_25D15ABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25D168664();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25D15AC7C(uint64_t a1)
{
  v2 = sub_25D161ECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15ACB8(uint64_t a1)
{
  v2 = sub_25D161ECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityContext.encode(to:)(void *a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C80, &qword_25D168E48);
  v46 = *(v48 - 8);
  v3 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v32 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C88, &qword_25D168E50);
  v45 = *(v47 - 8);
  v5 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C90, &qword_25D168E58);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v40 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27C98, &qword_25D168E60);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v37 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CA0, &qword_25D168E68);
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v34 = &v32 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CA8, &qword_25D168E70);
  v33 = *(v16 - 8);
  v17 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB0, &qword_25D168E78);
  v51 = *(v20 - 8);
  v21 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v23 = &v32 - v22;
  v24 = *v1;
  v49 = v1[1];
  v50 = v24;
  v25 = *(v1 + 16);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D161E24();
  sub_25D168724();
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      LOBYTE(v52) = 3;
      sub_25D161F68();
      v28 = v40;
      v27 = v23;
      sub_25D168624();
      v52 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
      sub_25D1620B8(&qword_27FC27CC0);
      v29 = v42;
      sub_25D168654();
      v30 = v41;
    }

    else
    {
      v27 = v23;
      if (v25 == 4)
      {
        LOBYTE(v52) = 4;
        sub_25D161ECC();
        v28 = v43;
        sub_25D168624();
        v52 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
        sub_25D1620B8(&qword_27FC27CC0);
        v29 = v47;
        sub_25D168654();
        v30 = v45;
      }

      else
      {
        LOBYTE(v52) = 5;
        sub_25D161E78();
        v28 = v44;
        sub_25D168624();
        v29 = v48;
        sub_25D168644();
        v30 = v46;
      }
    }
  }

  else
  {
    if (!v25)
    {
      LOBYTE(v52) = 0;
      sub_25D162064();
      sub_25D168624();
      sub_25D168644();
      (*(v33 + 8))(v19, v16);
      return (*(v51 + 8))(v23, v20);
    }

    v27 = v23;
    if (v25 == 1)
    {
      LOBYTE(v52) = 1;
      sub_25D162010();
      v28 = v34;
      sub_25D168624();
      v29 = v36;
      sub_25D168644();
      v30 = v35;
    }

    else
    {
      LOBYTE(v52) = 2;
      sub_25D161FBC();
      v28 = v37;
      sub_25D168624();
      v52 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
      sub_25D1620B8(&qword_27FC27CC0);
      v29 = v39;
      sub_25D168654();
      v30 = v38;
    }
  }

  (*(v30 + 8))(v28, v29);
  return (*(v51 + 8))(v27, v20);
}

uint64_t OSEligibilityContext.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (*(v0 + 16) > 2u)
  {
    if (v3 == 3)
    {
      MEMORY[0x25F892F60](3);
      result = MEMORY[0x25F892F60](*(v1 + 16));
      v9 = *(v1 + 16);
      if (v9)
      {
        v10 = (v1 + 40);
        do
        {
          v11 = *(v10 - 1);
          v12 = *v10;

          sub_25D168474();

          v10 += 2;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      if (v3 != 4)
      {
        v3 = 5;
        goto LABEL_20;
      }

      MEMORY[0x25F892F60](4);
      result = MEMORY[0x25F892F60](*(v1 + 16));
      v5 = *(v1 + 16);
      if (v5)
      {
        v6 = (v1 + 40);
        do
        {
          v7 = *(v6 - 1);
          v8 = *v6;

          sub_25D168474();

          v6 += 2;
          --v5;
        }

        while (v5);
      }
    }
  }

  else
  {
    if (!*(v0 + 16))
    {
LABEL_20:
      MEMORY[0x25F892F60](v3);

      return sub_25D168474();
    }

    if (v3 == 1)
    {
      v3 = 1;
      goto LABEL_20;
    }

    MEMORY[0x25F892F60](2);
    result = MEMORY[0x25F892F60](*(v1 + 16));
    v13 = *(v1 + 16);
    if (v13)
    {
      v14 = (v1 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;

        sub_25D168474();

        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t OSEligibilityContext.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25D1686D4();
  OSEligibilityContext.hash(into:)();
  return sub_25D168704();
}

uint64_t OSEligibilityContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CC8, &qword_25D168E88);
  v84 = *(v79 - 8);
  v3 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v90 = &v71[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CD0, &qword_25D168E90);
  v6 = *(v5 - 8);
  v85 = v5;
  v86 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v89 = &v71[-v8];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CD8, &qword_25D168E98);
  v83 = *(v80 - 8);
  v9 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v87 = &v71[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CE0, &qword_25D168EA0);
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v88 = &v71[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CE8, &qword_25D168EA8);
  v15 = *(v14 - 8);
  v77 = v14;
  v78 = v15;
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v71[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CF0, &qword_25D168EB0);
  v76 = *(v19 - 8);
  v20 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v71[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CF8, &qword_25D168EB8);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v27 = &v71[-v26];
  v28 = a1[3];
  v29 = a1[4];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_25D161E24();
  v30 = v92;
  sub_25D168714();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v93);
  }

  v73 = v19;
  v74 = 0;
  v32 = v88;
  v31 = v89;
  v75 = v24;
  v33 = v90;
  v34 = v91;
  v92 = v27;
  v35 = sub_25D168614();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 6))
  {
    v39 = sub_25D168564();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27AA8, &qword_25D168C70) + 48);
    *v41 = &type metadata for OSEligibilityContext;
    v43 = v92;
    sub_25D1685D4();
    sub_25D168554();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v75 + 8))(v43, v23);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v93);
  }

  if (*(v35 + 32) <= 2u)
  {
    if (*(v35 + 32))
    {
      v87 = v35;
      if (v36 == 1)
      {
        LOBYTE(v94) = 1;
        sub_25D162010();
        v37 = v92;
        v38 = v74;
        sub_25D1685C4();
        if (v38)
        {
LABEL_8:
          (*(v75 + 8))(v37, v23);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_0Tm(v93);
        }

        v72 = 1;
        v61 = v23;
        v62 = v77;
        v63 = sub_25D1685F4();
        v74 = 0;
        v66 = v63;
        v68 = v69;
        (*(v78 + 8))(v18, v62);
        (*(v75 + 8))(v92, v61);
        goto LABEL_30;
      }

      v72 = v36;
      LOBYTE(v94) = 2;
      sub_25D161FBC();
      v46 = v92;
      v52 = v74;
      sub_25D1685C4();
      if (!v52)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
        sub_25D1620B8(&qword_27FC27D00);
        v53 = v82;
        sub_25D168604();
        v54 = v75;
        v74 = 0;
        (*(v81 + 8))(v32, v53);
        (*(v54 + 8))(v46, v23);
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    LOBYTE(v94) = 0;
    sub_25D162064();
    v49 = v22;
    v37 = v92;
    v50 = v74;
    sub_25D1685C4();
    if (v50)
    {
      goto LABEL_8;
    }

    v72 = 0;
    v56 = v23;
    v57 = v73;
    v58 = sub_25D1685F4();
    v74 = 0;
    v66 = v58;
    v68 = v67;
    (*(v76 + 8))(v49, v57);
    (*(v75 + 8))(v92, v56);
LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v72 = *(v35 + 32);
  if (v36 == 3)
  {
    LOBYTE(v94) = 3;
    sub_25D161F68();
    v46 = v92;
    v51 = v74;
    sub_25D1685C4();
    if (!v51)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
      sub_25D1620B8(&qword_27FC27D00);
      v59 = v80;
      v60 = v87;
      sub_25D168604();
      v74 = 0;
      (*(v83 + 8))(v60, v59);
      (*(v75 + 8))(v46, v23);
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v87 = v35;
  v45 = v36 == 4;
  v46 = v92;
  if (!v45)
  {
    LOBYTE(v94) = 5;
    sub_25D161E78();
    v55 = v74;
    sub_25D1685C4();
    if (!v55)
    {
      v89 = v23;
      v64 = v79;
      v65 = sub_25D1685F4();
      v74 = 0;
      v66 = v65;
      v68 = v70;
      (*(v84 + 8))(v33, v64);
      (*(v75 + 8))(v46, v89);
      goto LABEL_30;
    }

LABEL_20:
    (*(v75 + 8))(v46, v23);
    goto LABEL_10;
  }

  LOBYTE(v94) = 4;
  sub_25D161ECC();
  v47 = v74;
  sub_25D1685C4();
  if (v47)
  {
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27CB8, &qword_25D168E80);
  sub_25D1620B8(&qword_27FC27D00);
  v48 = v85;
  sub_25D168604();
  v74 = 0;
  (*(v86 + 8))(v31, v48);
  (*(v75 + 8))(v46, v23);
LABEL_29:
  swift_unknownObjectRelease();
  v68 = 0;
  v66 = v94;
LABEL_31:
  *v34 = v66;
  *(v34 + 8) = v68;
  *(v34 + 16) = v72;
  return __swift_destroy_boxed_opaque_existential_0Tm(v93);
}

uint64_t sub_25D15C2D4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25D1686D4();
  OSEligibilityContext.hash(into:)();
  return sub_25D168704();
}

uint64_t sub_25D15C32C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25D1686D4();
  OSEligibilityContext.hash(into:)();
  return sub_25D168704();
}

uint64_t OSEligibilityResult.statusByInput.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t OSEligibilityResult.context.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_25D15C510@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25D168394();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39[0] = 0;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  LOBYTE(v35) = v11;
  v14 = OSEligibilityDomain.bridgedDomainType.getter();
  v15 = (*(v13 + 16))(v14, &v37, &v36, v39, &v38, v12, v13);
  if (v15)
  {
    v16 = v15;
LABEL_14:
    v23 = v15 == 0;
    sub_25D162124();
    swift_allocError();
    *v24 = v16;
    *(v24 + 8) = v23;
    swift_willThrow();
    goto LABEL_15;
  }

  v33 = v7;
  v34 = v6;
  v16 = v37;
  v17 = v37 - 1;
  if ((v37 - 1) > 3)
  {
    goto LABEL_14;
  }

  v31[1] = sub_25D1539B8(MEMORY[0x277D84F90]);
  if (v36 == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  if (v36 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v32 = v19;
  if (v39[0])
  {
    v20 = swift_unknownObjectRetain_n();
    v21 = MEMORY[0x25F8933D0](v20);
    if (v21 == sub_25D168364())
    {
      v35 = sub_25D1539B8(MEMORY[0x277D84F90]);
      swift_unknownObjectRetain();
      v27 = sub_25D1683B4();
      MEMORY[0x28223BE20](v27);
      v31[-2] = &v35;
      sub_25D168384();
      swift_unknownObjectRelease();
      (*(v33 + 8))(v10, v34);

      swift_unknownObjectRelease();
      v22 = v35;
      goto LABEL_17;
    }

    swift_unknownObjectRelease_n();
  }

  v22 = sub_25D1539B8(MEMORY[0x277D84F90]);

LABEL_17:
  v28 = swift_unknownObjectRetain();
  v29 = sub_25D160AB4(v28);
  swift_unknownObjectRelease();
  v30 = MEMORY[0x277D84FA0];
  if (v29)
  {
    v30 = v29;
  }

  *a3 = v11;
  *(a3 + 1) = v17;
  *(a3 + 2) = v32;
  *(a3 + 8) = v22;
  *(a3 + 16) = v30;
LABEL_15:
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_25D15C858@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 2) = v7;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5;
  return result;
}

uint64_t sub_25D15C878()
{
  v1 = *(v0 + 8);
  empty = xpc_dictionary_create_empty();
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(*(v1 + 56) + v11);
    v15 = *(*(v1 + 48) + v11);
    OSEligibilityInput.bridgedInputKey.getter();
    v13 = qword_25D16B9D0[v12];
    v14 = sub_25D168464();

    xpc_dictionary_set_uint64(empty, (v14 + 32), v13);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return empty;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25D15C9AC()
{
  v1 = *(v0 + 16);
  empty = xpc_dictionary_create_empty();
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_25D1621C8(v12, v13, v14))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v1 + 48) + 24 * (v10 | (v9 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    sub_25D162178(*v11, v13, v14);
    sub_25D15A3B8(empty);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return empty;
    }

    v5 = *(v1 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25D15CADC(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 6;
    if (v13 != 6)
    {
      result = sub_25D152E20(*(*(v3 + 48) + v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25D15CBFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v59 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v65 = a2 + 56;
  v61 = result;
  v60 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v63 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v2 + 40);
    sub_25D1686D4();
    v66 = v12;
    sub_25D162178(v13, v12, v14);
    OSEligibilityContext.hash(into:)();
    v16 = sub_25D168704();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    if (((*(v65 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_102:
      sub_25D1621C8(v13, v66, v14);
      return 0;
    }

    v64 = ~v17;
    while (1)
    {
      v19 = *(v2 + 48) + 24 * v18;
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);
      if (v22 > 2)
      {
        break;
      }

      v23 = v66;
      v24 = v14;
      if (*(v19 + 16))
      {
        if (v22 != 1)
        {
          if (v14 == 2)
          {
            v40 = *(v21 + 16);
            if (v40 == *(v13 + 16))
            {
              if (v40)
              {
                if (v21 != v13)
                {
                  v41 = (v21 + 40);
                  v42 = (v13 + 40);
                  do
                  {
                    v43 = *(v41 - 1) == *(v42 - 1) && *v41 == *v42;
                    if (!v43 && (sub_25D168664() & 1) == 0)
                    {
                      v24 = 2;
                      goto LABEL_65;
                    }

                    v41 += 2;
                    v42 += 2;
                    --v40;
                  }

                  while (v40);
                  sub_25D162178(v21, v20, 2u);
                  v50 = v21;
                  v51 = v20;
                  v52 = 2;
LABEL_85:
                  sub_25D1621C8(v50, v51, v52);
                  v2 = a2;
                  goto LABEL_86;
                }

                v54 = v13;
              }

              else
              {
              }

              v55 = v20;
              v56 = 2;
              goto LABEL_100;
            }

            v24 = 2;
          }

          goto LABEL_16;
        }

        if (v14 != 1)
        {
          goto LABEL_16;
        }

        if (v21 == v13 && v20 == v66)
        {
          v57 = *(v19 + 8);

          v54 = v13;
          v55 = v66;
          v56 = 1;
          goto LABEL_100;
        }

        v26 = *v19;
        v27 = *(v19 + 8);
        v28 = sub_25D168664();
        sub_25D162178(v13, v66, 1u);
        sub_25D162178(v21, v20, 1u);
        sub_25D1621C8(v21, v20, 1u);
        v29 = v13;
        v30 = v66;
        v31 = 1;
      }

      else
      {
        if (v14)
        {
          goto LABEL_16;
        }

        if (v21 == v13 && v20 == v66)
        {
          v58 = *(v19 + 8);

          v54 = v13;
          v55 = v66;
          v56 = 0;
          goto LABEL_100;
        }

        v48 = *v19;
        v49 = *(v19 + 8);
        v28 = sub_25D168664();
        sub_25D162178(v13, v66, 0);
        sub_25D162178(v21, v20, 0);
        sub_25D1621C8(v21, v20, 0);
        v29 = v13;
        v30 = v66;
        v31 = 0;
      }

LABEL_77:
      sub_25D1621C8(v29, v30, v31);
      if (v28)
      {
        goto LABEL_86;
      }

LABEL_17:
      v18 = (v18 + 1) & v64;
      if (((*(v65 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    v23 = v66;
    v24 = v14;
    if (v22 == 3)
    {
      if (v14 == 3)
      {
        v36 = *(v21 + 16);
        if (v36 == *(v13 + 16))
        {
          if (v36)
          {
            if (v21 != v13)
            {
              v37 = (v21 + 40);
              v38 = (v13 + 40);
              while (1)
              {
                v39 = *(v37 - 1) == *(v38 - 1) && *v37 == *v38;
                if (!v39 && (sub_25D168664() & 1) == 0)
                {
                  break;
                }

                v37 += 2;
                v38 += 2;
                if (!--v36)
                {
                  sub_25D162178(v21, v20, 3u);
                  v50 = v21;
                  v51 = v20;
                  v52 = 3;
                  goto LABEL_85;
                }
              }

              v24 = 3;
LABEL_65:
              v2 = a2;
              v23 = v66;
              goto LABEL_16;
            }

            v54 = v13;
          }

          else
          {
          }

          v55 = v20;
          v56 = 3;
          goto LABEL_100;
        }

        v24 = 3;
      }

LABEL_16:
      sub_25D162178(v13, v23, v24);
      sub_25D162178(v21, v20, v22);
      sub_25D1621C8(v21, v20, v22);
      sub_25D1621C8(v13, v23, v24);
      goto LABEL_17;
    }

    if (v22 == 4)
    {
      if (v14 == 4)
      {
        v32 = *(v21 + 16);
        if (v32 == *(v13 + 16))
        {
          if (v32)
          {
            if (v21 != v13)
            {
              v33 = (v21 + 40);
              v34 = (v13 + 40);
              do
              {
                v35 = *(v33 - 1) == *(v34 - 1) && *v33 == *v34;
                if (!v35 && (sub_25D168664() & 1) == 0)
                {
                  v24 = 4;
                  goto LABEL_65;
                }

                v33 += 2;
                v34 += 2;
                --v32;
              }

              while (v32);
              sub_25D162178(v21, v20, 4u);
              v50 = v21;
              v51 = v20;
              v52 = 4;
              goto LABEL_85;
            }

            v54 = v13;
          }

          else
          {
          }

          v55 = v20;
          v56 = 4;
          goto LABEL_100;
        }

        v24 = 4;
      }

      goto LABEL_16;
    }

    if (v14 != 5)
    {
      goto LABEL_16;
    }

    if (v21 != v13 || v20 != v66)
    {
      v45 = *v19;
      v46 = *(v19 + 8);
      v28 = sub_25D168664();
      sub_25D162178(v13, v66, 5u);
      sub_25D162178(v21, v20, 5u);
      sub_25D1621C8(v21, v20, 5u);
      v29 = v13;
      v30 = v66;
      v31 = 5;
      goto LABEL_77;
    }

    v53 = *(v19 + 8);

    v54 = v13;
    v55 = v66;
    v56 = 5;
LABEL_100:
    sub_25D1621C8(v54, v55, v56);
LABEL_86:
    sub_25D1621C8(v13, v66, v22);
    v7 = v60;
    result = v61;
    v6 = v63;
  }

  while (v63);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v59 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v63 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_25D15D250()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x6F53726577736E61;
  v4 = 0x7942737574617473;
  if (v1 != 3)
  {
    v4 = 0x747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726577736E61;
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

uint64_t sub_25D15D2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25D1658C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25D15D32C(uint64_t a1)
{
  v2 = sub_25D162218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25D15D368(uint64_t a1)
{
  v2 = sub_25D162218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSEligibilityResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D10, &qword_25D168EC0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = *v1;
  v20 = v1[1];
  v18 = v1[2];
  v10 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D162218();
  sub_25D168724();
  LOBYTE(v19) = v9;
  v21 = 0;
  sub_25D16226C();
  sub_25D168654();
  if (!v2)
  {
    v12 = v18;
    v13 = v16;
    v14 = v17;
    LOBYTE(v19) = v20;
    v21 = 1;
    sub_25D1622C0();
    sub_25D168654();
    LOBYTE(v19) = v12;
    v21 = 2;
    sub_25D162314();
    sub_25D168634();
    v19 = v14;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D30, &qword_25D168EC8);
    sub_25D162560(&qword_27FC27D38, sub_25D162368, sub_25D1623BC);
    sub_25D168654();
    v19 = v13;
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D50, &qword_25D168ED0);
    sub_25D162698(&qword_27FC27D58, sub_25D162410);
    sub_25D168654();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t OSEligibilityResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D68, &qword_25D168ED8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v19 = sub_25D1539B8(MEMORY[0x277D84F90]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25D162218();
  sub_25D168714();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = v6;
    v22 = 0;
    sub_25D162464();
    sub_25D168604();
    v12 = v20;
    v22 = 1;
    sub_25D1624B8();
    sub_25D168604();
    v14 = v20;
    v22 = 2;
    sub_25D16250C();
    sub_25D1685E4();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D30, &qword_25D168EC8);
    v22 = 3;
    sub_25D162560(&qword_27FC27D88, sub_25D1625F0, sub_25D162644);
    sub_25D168604();
    v18 = v14;

    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27D50, &qword_25D168ED0);
    v22 = 4;
    sub_25D162698(&qword_27FC27DA0, sub_25D162710);
    sub_25D168604();
    (*(v11 + 8))(v9, v5);
    v16 = v20;
    *a2 = v12;
    *(a2 + 1) = v18;
    *(a2 + 2) = v21;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

void *sub_25D15DAB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25D15DAD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A40, &unk_25D16B9C0);
  result = sub_25D1685A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_25D1686D4();
      MEMORY[0x25F892F60](v21);
      result = sub_25D168704();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_25D15DD54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25D168504() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_25D1686D4();
      MEMORY[0x25F892F60](v10);
      result = sub_25D168704();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + v3);
        v17 = (v15 + v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25D15DEE8(char a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25D152E20(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25D15E00C();
    result = v17;
    goto LABEL_8;
  }

  sub_25D15DAD4(v14, a3 & 1);
  v18 = *v4;
  result = sub_25D152E20(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_25D168684();
  __break(1u);
  return result;
}

void *sub_25D15E00C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27A40, &unk_25D16B9C0);
  v2 = *v0;
  v3 = sub_25D168594();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_25D15E158(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27DE8, &qword_25D16B9B8);
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

uint64_t sub_25D15E264(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_25D1686D4();
  OSEligibilityContext.hash(into:)();
  v11 = sub_25D168704();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  v58 = v9 + 56;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_70:
    v40 = *v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *v56;
    sub_25D162178(a2, a3, a4);
    sub_25D15EACC(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v56 = v59;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v57 = ~v12;
  v55 = a1;
  v54 = v9;
  while (1)
  {
    v15 = *(v9 + 48) + 24 * v13;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18 > 2)
    {
      break;
    }

    if (*(v15 + 16))
    {
      v14 = a4;
      if (v18 != 1)
      {
        if (a4 == 2)
        {
          v32 = *(v17 + 16);
          if (v32 == *(a2 + 16))
          {
            if (v32)
            {
              if (v17 != a2)
              {
                v33 = (v17 + 40);
                v34 = (a2 + 40);
                do
                {
                  v35 = *(v33 - 1) == *(v34 - 1) && *v33 == *v34;
                  if (!v35 && (sub_25D168664() & 1) == 0)
                  {
                    v14 = 2;
                    goto LABEL_53;
                  }

                  v33 += 2;
                  v34 += 2;
                  --v32;
                }

                while (v32);
                sub_25D162178(v17, v16, 2u);
                v43 = v17;
                v44 = v16;
                v45 = 2;
LABEL_74:
                sub_25D1621C8(v43, v44, v45);
                v9 = v54;
                a1 = v55;
                goto LABEL_75;
              }

              v50 = a2;
            }

            else
            {
            }

            v51 = v16;
            v52 = 2;
            goto LABEL_88;
          }

          v14 = 2;
        }

        goto LABEL_4;
      }

      if (a4 != 1)
      {
        goto LABEL_4;
      }

      if (v17 == a2 && v16 == a3)
      {

        v50 = a2;
        v51 = a3;
        v52 = 1;
        goto LABEL_88;
      }

      v20 = sub_25D168664();
      sub_25D162178(a2, a3, 1u);
      sub_25D162178(v17, v16, 1u);
      sub_25D1621C8(v17, v16, 1u);
      v21 = a2;
      v22 = a3;
      v23 = 1;
    }

    else
    {
      v14 = a4;
      if (a4)
      {
        goto LABEL_4;
      }

      if (v17 == a2 && v16 == a3)
      {
        v53 = *(v15 + 8);

        v50 = a2;
        v51 = a3;
        v52 = 0;
        goto LABEL_88;
      }

      v38 = *v15;
      v39 = *(v15 + 8);
      v20 = sub_25D168664();
      sub_25D162178(a2, a3, 0);
      sub_25D162178(v17, v16, 0);
      sub_25D1621C8(v17, v16, 0);
      v21 = a2;
      v22 = a3;
      v23 = 0;
    }

LABEL_65:
    sub_25D1621C8(v21, v22, v23);
    if (v20)
    {
      goto LABEL_75;
    }

LABEL_5:
    v13 = (v13 + 1) & v57;
    if (((*(v58 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  v14 = a4;
  if (v18 == 3)
  {
    if (a4 == 3)
    {
      v28 = *(v17 + 16);
      if (v28 == *(a2 + 16))
      {
        if (v28)
        {
          if (v17 != a2)
          {
            v29 = (v17 + 40);
            v30 = (a2 + 40);
            while (1)
            {
              v31 = *(v29 - 1) == *(v30 - 1) && *v29 == *v30;
              if (!v31 && (sub_25D168664() & 1) == 0)
              {
                break;
              }

              v29 += 2;
              v30 += 2;
              if (!--v28)
              {
                sub_25D162178(v17, v16, 3u);
                v43 = v17;
                v44 = v16;
                v45 = 3;
                goto LABEL_74;
              }
            }

            v14 = 3;
LABEL_53:
            v9 = v54;
            a1 = v55;
            goto LABEL_4;
          }

          v50 = a2;
        }

        else
        {
        }

        v51 = v16;
        v52 = 3;
        goto LABEL_88;
      }

      v14 = 3;
    }

LABEL_4:
    sub_25D162178(a2, a3, v14);
    sub_25D162178(v17, v16, v18);
    sub_25D1621C8(v17, v16, v18);
    sub_25D1621C8(a2, a3, v14);
    goto LABEL_5;
  }

  if (v18 == 4)
  {
    if (a4 == 4)
    {
      v24 = *(v17 + 16);
      if (v24 == *(a2 + 16))
      {
        if (v24)
        {
          if (v17 != a2)
          {
            v25 = (v17 + 40);
            v26 = (a2 + 40);
            do
            {
              v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
              if (!v27 && (sub_25D168664() & 1) == 0)
              {
                v14 = 4;
                goto LABEL_53;
              }

              v25 += 2;
              v26 += 2;
              --v24;
            }

            while (v24);
            sub_25D162178(v17, v16, 4u);
            v43 = v17;
            v44 = v16;
            v45 = 4;
            goto LABEL_74;
          }

          v50 = a2;
        }

        else
        {
        }

        v51 = v16;
        v52 = 4;
        goto LABEL_88;
      }

      v14 = 4;
    }

    goto LABEL_4;
  }

  if (a4 != 5)
  {
    goto LABEL_4;
  }

  if (v17 != a2 || v16 != a3)
  {
    v20 = sub_25D168664();
    sub_25D162178(a2, a3, 5u);
    sub_25D162178(v17, v16, 5u);
    sub_25D1621C8(v17, v16, 5u);
    v21 = a2;
    v22 = a3;
    v23 = 5;
    goto LABEL_65;
  }

  v50 = a2;
  v51 = a3;
  v52 = 5;
LABEL_88:
  sub_25D1621C8(v50, v51, v52);
LABEL_75:
  sub_25D1621C8(a2, a3, v18);
  v46 = *(v9 + 48) + 24 * v13;
  v47 = *v46;
  v48 = *(v46 + 8);
  *a1 = *v46;
  *(a1 + 8) = v48;
  v49 = *(v46 + 16);
  *(a1 + 16) = v49;
  sub_25D162178(v47, v48, v49);
  return 0;
}

uint64_t sub_25D15E854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27DE0, &qword_25D16B9B0);
  result = sub_25D168524();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_25D1686D4();
      OSEligibilityContext.hash(into:)();
      result = sub_25D168704();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25D15EACC(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v7 = v5;
  v11 = result;
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  if (v13 <= v12 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_25D15E854(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_25D15EFEC();
        goto LABEL_77;
      }

      sub_25D15F154(v12 + 1);
    }

    v14 = *v5;
    v15 = *(*v5 + 40);
    sub_25D1686D4();
    OSEligibilityContext.hash(into:)();
    result = sub_25D168704();
    v16 = -1 << *(v14 + 32);
    a4 = result & ~v16;
    v49 = v14 + 56;
    if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v48 = ~v16;
      v47 = v5;
      v46 = v14;
      do
      {
        v17 = *(v14 + 48) + 24 * a4;
        v19 = *v17;
        v18 = *(v17 + 8);
        v6 = *(v17 + 16);
        if (v6 > 2)
        {
          v20 = a3;
          if (v6 == 3)
          {
            if (a3 != 3)
            {
              goto LABEL_11;
            }

            v32 = *(v19 + 16);
            if (v32 != *(v11 + 16))
            {
              v20 = 3;
              goto LABEL_11;
            }

            if (!v32)
            {
              goto LABEL_82;
            }

            if (v19 == v11)
            {
              goto LABEL_81;
            }

            v33 = (v19 + 40);
            v34 = (v11 + 40);
            while (1)
            {
              v35 = *(v33 - 1) == *(v34 - 1) && *v33 == *v34;
              if (!v35 && (sub_25D168664() & 1) == 0)
              {
                break;
              }

              v33 += 2;
              v34 += 2;
              if (!--v32)
              {
                goto LABEL_82;
              }
            }

            v20 = 3;
            goto LABEL_10;
          }

          if (v6 == 4)
          {
            if (a3 == 4)
            {
              v25 = *(v19 + 16);
              if (v25 == *(v11 + 16))
              {
                if (!v25)
                {
                  goto LABEL_82;
                }

                if (v19 == v11)
                {
                  goto LABEL_81;
                }

                v26 = (v19 + 40);
                v27 = (v11 + 40);
                while (1)
                {
                  v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
                  if (!v28 && (sub_25D168664() & 1) == 0)
                  {
                    break;
                  }

                  v26 += 2;
                  v27 += 2;
                  if (!--v25)
                  {
                    goto LABEL_82;
                  }
                }

                v20 = 4;
                goto LABEL_10;
              }

              v20 = 4;
            }

LABEL_11:
            sub_25D162178(v19, v18, v6);
            sub_25D162178(v11, a2, v20);
            sub_25D1621C8(v19, v18, v6);
            result = sub_25D1621C8(v11, a2, v20);
            goto LABEL_12;
          }

          if (a3 != 5)
          {
            goto LABEL_11;
          }

          if (v19 == v11 && v18 == a2)
          {
            goto LABEL_80;
          }

          LOBYTE(v6) = sub_25D168664();
          sub_25D162178(v19, v18, 5u);
          sub_25D162178(v11, a2, 5u);
          sub_25D1621C8(v19, v18, 5u);
          v22 = v11;
          v23 = a2;
          v24 = 5;
        }

        else if (*(v17 + 16))
        {
          v20 = a3;
          if (v6 != 1)
          {
            if (a3 != 2)
            {
              goto LABEL_11;
            }

            v36 = *(v19 + 16);
            if (v36 != *(v11 + 16))
            {
              v20 = 2;
              goto LABEL_11;
            }

            if (!v36)
            {
              goto LABEL_82;
            }

            if (v19 == v11)
            {
              goto LABEL_81;
            }

            v37 = (v19 + 40);
            v38 = (v11 + 40);
            while (1)
            {
              v39 = *(v37 - 1) == *(v38 - 1) && *v37 == *v38;
              if (!v39 && (sub_25D168664() & 1) == 0)
              {
                break;
              }

              v37 += 2;
              v38 += 2;
              if (!--v36)
              {
                goto LABEL_82;
              }
            }

            v20 = 2;
LABEL_10:
            v14 = v46;
            v7 = v47;
            goto LABEL_11;
          }

          if (a3 != 1)
          {
            goto LABEL_11;
          }

          if (v19 == v11 && v18 == a2)
          {
            goto LABEL_80;
          }

          LOBYTE(v6) = sub_25D168664();
          sub_25D162178(v19, v18, 1u);
          sub_25D162178(v11, a2, 1u);
          sub_25D1621C8(v19, v18, 1u);
          v22 = v11;
          v23 = a2;
          v24 = 1;
        }

        else
        {
          v20 = a3;
          if (a3)
          {
            goto LABEL_11;
          }

          if (v19 == v11 && v18 == a2)
          {
            goto LABEL_80;
          }

          v30 = *v17;
          v31 = *(v17 + 8);
          LOBYTE(v6) = sub_25D168664();
          sub_25D162178(v19, v18, 0);
          sub_25D162178(v11, a2, 0);
          sub_25D1621C8(v19, v18, 0);
          v22 = v11;
          v23 = a2;
          v24 = 0;
        }

        result = sub_25D1621C8(v22, v23, v24);
        if (v6)
        {
          goto LABEL_83;
        }

LABEL_12:
        a4 = (a4 + 1) & v48;
      }

      while (((*(v49 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_77:
  v41 = *v7;
  *(*v7 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v42 = *(v41 + 48) + 24 * a4;
  *v42 = v11;
  *(v42 + 8) = a2;
  *(v42 + 16) = a3;
  v43 = *(v41 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
LABEL_80:
    v18 = a2;
LABEL_81:
    v19 = v11;
LABEL_82:
    sub_25D162178(v19, v18, v6);
    sub_25D162178(v11, a2, v6);
    sub_25D1621C8(v19, v18, v6);
    sub_25D1621C8(v11, a2, v6);
LABEL_83:
    result = sub_25D168674();
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v45;
  }

  return result;
}

void *sub_25D15EFEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27DE0, &qword_25D16B9B0);
  v2 = *v0;
  v3 = sub_25D168514();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_25D162178(v19, v20, v22);
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

uint64_t sub_25D15F154(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC27DE0, &qword_25D16B9B0);
  result = sub_25D168524();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_25D1686D4();
      sub_25D162178(v20, v21, v22);
      OSEligibilityContext.hash(into:)();
      result = sub_25D168704();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_25D15F3AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7641746559746F6ELL && a2 == 0xEF656C62616C6961;
  if (v4 || (sub_25D168664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6967696C45746F6ELL && a2 == 0xEB00000000656C62 || (sub_25D168664() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656279616DLL && a2 == 0xE500000000000000 || (sub_25D168664() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25D168664();

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

uint64_t _s13OSEligibility0A6ResultV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 1);
  v11 = *(a1 + 2);
  v5 = a2[1];
  v6 = a2[2];
  v8 = *(a2 + 1);
  v7 = *(a2 + 2);
  v15 = *a1;
  v14 = *a2;
  sub_25D165A74();
  sub_25D1684A4();
  sub_25D1684A4();
  v9 = 0;
  if (v13 == v12 && v2 == v5)
  {
    if (v3 == 2)
    {
      if (v6 != 2)
      {
        goto LABEL_10;
      }
    }

    else if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
    {
      goto LABEL_10;
    }

    if ((sub_25D15CADC(v4, v8) & 1) == 0)
    {
LABEL_10:
      v9 = 0;
      return v9 & 1;
    }

    v9 = sub_25D15CBFC(v11, v7);
  }

  return v9 & 1;
}

uint64_t _s13OSEligibility0A7ContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_26;
      }

      v11 = sub_25D15A6BC(*a1, *a2);
      sub_25D162178(v6, v5, 3u);
      sub_25D162178(v3, v2, 3u);
      sub_25D1621C8(v3, v2, 3u);
      v12 = v6;
      v13 = v5;
      v14 = 3;
    }

    else if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_26;
      }

      v11 = sub_25D15A6BC(*a1, *a2);
      sub_25D162178(v6, v5, 4u);
      sub_25D162178(v3, v2, 4u);
      sub_25D1621C8(v3, v2, 4u);
      v12 = v6;
      v13 = v5;
      v14 = 4;
    }

    else
    {
      if (v7 != 5)
      {
        goto LABEL_26;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_25D162178(*a1, v2, 5u);
        sub_25D162178(v3, v2, 5u);
        sub_25D1621C8(v3, v2, 5u);
        v8 = v3;
        v9 = v2;
        v10 = 5;
        goto LABEL_31;
      }

      v19 = *a1;
      v11 = sub_25D168664();
      sub_25D162178(v6, v5, 5u);
      sub_25D162178(v3, v2, 5u);
      sub_25D1621C8(v3, v2, 5u);
      v12 = v6;
      v13 = v5;
      v14 = 5;
    }

LABEL_29:
    sub_25D1621C8(v12, v13, v14);
    return v11 & 1;
  }

  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_26;
    }

    v15 = *a1;
    if (v3 == v6 && v2 == v5)
    {
      sub_25D162178(v15, v2, 0);
      sub_25D162178(v3, v2, 0);
      sub_25D1621C8(v3, v2, 0);
      v8 = v3;
      v9 = v2;
      v10 = 0;
      goto LABEL_31;
    }

    v11 = sub_25D168664();
    sub_25D162178(v6, v5, 0);
    sub_25D162178(v3, v2, 0);
    sub_25D1621C8(v3, v2, 0);
    v12 = v6;
    v13 = v5;
    v14 = 0;
    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_26;
    }

    v11 = sub_25D15A6BC(*a1, *a2);
    sub_25D162178(v6, v5, 2u);
    sub_25D162178(v3, v2, 2u);
    sub_25D1621C8(v3, v2, 2u);
    v12 = v6;
    v13 = v5;
    v14 = 2;
    goto LABEL_29;
  }

  if (v7 != 1)
  {
LABEL_26:
    sub_25D162178(*a2, *(a2 + 8), v7);
    sub_25D162178(v3, v2, v4);
    sub_25D1621C8(v3, v2, v4);
    sub_25D1621C8(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v18 = *a1;
    v11 = sub_25D168664();
    sub_25D162178(v6, v5, 1u);
    sub_25D162178(v3, v2, 1u);
    sub_25D1621C8(v3, v2, 1u);
    v12 = v6;
    v13 = v5;
    v14 = 1;
    goto LABEL_29;
  }

  sub_25D162178(*a1, v2, 1u);
  sub_25D162178(v3, v2, 1u);
  sub_25D1621C8(v3, v2, 1u);
  v8 = v3;
  v9 = v2;
  v10 = 1;
LABEL_31:
  sub_25D1621C8(v8, v9, v10);
  return 1;
}

unint64_t sub_25D15FA18()
{
  result = qword_27FC27E80;
  if (!qword_27FC27E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E80);
  }

  return result;
}

unint64_t sub_25D15FA6C()
{
  result = qword_27FC27E88;
  if (!qword_27FC27E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E88);
  }

  return result;
}

unint64_t sub_25D15FAC0()
{
  result = qword_27FC27E90;
  if (!qword_27FC27E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E90);
  }

  return result;
}

unint64_t sub_25D15FB14()
{
  result = qword_27FC27E98;
  if (!qword_27FC27E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27E98);
  }

  return result;
}

unint64_t sub_25D15FB68()
{
  result = qword_27FC27EA0;
  if (!qword_27FC27EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EA0);
  }

  return result;
}

unint64_t sub_25D15FBBC()
{
  result = qword_27FC27EA8;
  if (!qword_27FC27EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EA8);
  }

  return result;
}

unint64_t sub_25D15FC10()
{
  result = qword_27FC27EB0;
  if (!qword_27FC27EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EB0);
  }

  return result;
}

unint64_t sub_25D15FC64()
{
  result = qword_27FC27EB8;
  if (!qword_27FC27EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EB8);
  }

  return result;
}

unint64_t sub_25D15FCB8()
{
  result = qword_27FC27EC0;
  if (!qword_27FC27EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EC0);
  }

  return result;
}

unint64_t sub_25D15FD0C()
{
  result = qword_27FC27EC8;
  if (!qword_27FC27EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EC8);
  }

  return result;
}

unint64_t sub_25D15FD60()
{
  result = qword_27FC27ED0;
  if (!qword_27FC27ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27ED0);
  }

  return result;
}

unint64_t sub_25D15FDB4()
{
  result = qword_27FC27ED8;
  if (!qword_27FC27ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27ED8);
  }

  return result;
}

unint64_t sub_25D15FE08()
{
  result = qword_27FC27EE0;
  if (!qword_27FC27EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EE0);
  }

  return result;
}

unint64_t sub_25D15FE5C()
{
  result = qword_27FC27EE8;
  if (!qword_27FC27EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EE8);
  }

  return result;
}

unint64_t sub_25D15FEB0()
{
  result = qword_27FC27EF0;
  if (!qword_27FC27EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EF0);
  }

  return result;
}

unint64_t sub_25D15FF04()
{
  result = qword_27FC27EF8;
  if (!qword_27FC27EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27EF8);
  }

  return result;
}

unint64_t sub_25D15FF58()
{
  result = qword_27FC27F00;
  if (!qword_27FC27F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F00);
  }

  return result;
}

unint64_t sub_25D15FFAC()
{
  result = qword_27FC27F08;
  if (!qword_27FC27F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F08);
  }

  return result;
}

unint64_t sub_25D160000()
{
  result = qword_27FC27F10;
  if (!qword_27FC27F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F10);
  }

  return result;
}

unint64_t sub_25D160054()
{
  result = qword_27FC27F18;
  if (!qword_27FC27F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F18);
  }

  return result;
}

unint64_t sub_25D1600A8()
{
  result = qword_27FC27F20;
  if (!qword_27FC27F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F20);
  }

  return result;
}

unint64_t sub_25D1600FC()
{
  result = qword_27FC27F28;
  if (!qword_27FC27F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F28);
  }

  return result;
}

unint64_t sub_25D160150()
{
  result = qword_27FC27F30;
  if (!qword_27FC27F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F30);
  }

  return result;
}

unint64_t sub_25D1601A4()
{
  result = qword_27FC27F38;
  if (!qword_27FC27F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F38);
  }

  return result;
}

unint64_t sub_25D1601F8()
{
  result = qword_27FC27F40;
  if (!qword_27FC27F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F40);
  }

  return result;
}

unint64_t sub_25D16024C()
{
  result = qword_27FC27F48;
  if (!qword_27FC27F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F48);
  }

  return result;
}

uint64_t sub_25D1602CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C7972746E756F63 && a2 == 0xEF6E6F697461636FLL;
  if (v4 || (sub_25D168664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x427972746E756F63 && a2 == 0xEE00676E696C6C69 || (sub_25D168664() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361 || (sub_25D168664() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC000000656C6163 || (sub_25D168664() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6543616E696863 && a2 == 0xED000072616C756CLL || (sub_25D168664() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025D16D850 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614C656369766564 && a2 == 0xEE0065676175676ELL || (sub_25D168664() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025D16D870 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025D16D890 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E614C69726973 && a2 == 0xEC00000065676175 || (sub_25D168664() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025D16D8B0 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5069646572616873 && a2 == 0xEA00000000006461 || (sub_25D168664() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025D16D8D0 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025D16D8F0 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461646874726962 && a2 == 0xE900000000000065 || (sub_25D168664() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4C65736963657270 && a2 == 0xEF6E6F697461636FLL || (sub_25D168664() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F4C6F7470696873 && a2 == 0xEE006E6F69746163 || (sub_25D168664() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x707041656E6F6870 && a2 == 0xEF6C61766F6D6552)
  {

    return 17;
  }

  else
  {
    v6 = sub_25D168664();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_25D1608A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746553746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_25D168664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6967696C45746F6ELL && a2 == 0xEB00000000656C62 || (sub_25D168664() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xE800000000000000 || (sub_25D168664() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025D16D910 == a2 || (sub_25D168664() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7078456E656B6F74 && a2 == 0xEC00000064657269 || (sub_25D168664() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E756F6363416F6ELL && a2 == 0xE900000000000074)
  {

    return 5;
  }

  else
  {
    v6 = sub_25D168664();

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

unint64_t sub_25D160AB4(void *a1)
{
  v2 = sub_25D1683E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v173 = &v160 - v9;
  MEMORY[0x28223BE20](v8);
  v174 = &v160 - v10;
  v11 = sub_25D168394();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v16 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v170 = v7;
  v171 = v14;
  v172 = v13;
  v17 = swift_unknownObjectRetain();
  v18 = MEMORY[0x25F8933D0](v17);
  if (v18 != sub_25D168364())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v166 = v2;
  swift_unknownObjectRetain();
  sub_25D1683B4();
  v184 = MEMORY[0x277D84FA0];
  v20 = sub_25D168374();
  v21 = v20;
  v180 = *(v20 + 16);
  if (!v180)
  {
LABEL_143:
    swift_unknownObjectRelease();

    (*(v171 + 8))(v16, v172);
    return v184;
  }

  v169 = a1;
  v22 = 0;
  v167 = 0;
  v179 = v20 + 32;
  v23 = 0x800000025D16D820;
  v175 = 0x800000025D16D7F0;
  v168 = 0x800000025D16D7B0;
  v164 = 0x800000025D16D780;
  v163 = 0x800000025D16D750;
  v162 = 0x800000025D16D720;
  v165 = (v3 + 8);
  v176 = v20;
  v177 = v16;
  v178 = 0x800000025D16D820;
LABEL_11:
  if (v22 >= *(v21 + 16))
  {
    __break(1u);
    goto LABEL_145;
  }

  v28 = (v179 + 16 * v22);
  v29 = *v28;
  v30 = v28[1];
  v31 = *v28 == 0xD000000000000026 && v23 == v30;
  if (v31 || (v32 = *v28, v33 = v28[1], (sub_25D168664() & 1) != 0))
  {

    v34 = MEMORY[0x25F892C20](v29, v30);
    v36 = v35;

    if (!v36)
    {
      goto LABEL_10;
    }

    v37 = v22;
    v38 = v184;
    v39 = *(v184 + 40);
    sub_25D1686D4();
    MEMORY[0x25F892F60](0);
    sub_25D168474();
    v40 = sub_25D168704();
    v16 = (v38 + 56);
    v41 = -1 << *(v38 + 32);
    v42 = v40 & ~v41;
    if ((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v43 = ~v41;
      do
      {
        v44 = *(v38 + 48) + 24 * v42;
        v46 = *v44;
        v45 = *(v44 + 8);
        v47 = *(v44 + 16);
        if (v47)
        {

          sub_25D162178(v46, v45, v47);
          sub_25D1621C8(v46, v45, v47);
          sub_25D1621C8(v34, v36, 0);
        }

        else
        {
          if (v46 == v34 && v45 == v36)
          {
            v24 = *(v44 + 8);

            sub_25D1621C8(v34, v36, 0);
            v25 = v34;
            v26 = v36;
            v27 = 0;
            goto LABEL_8;
          }

          v49 = *v44;
          v50 = *(v44 + 8);
          v51 = sub_25D168664();

          sub_25D162178(v46, v45, 0);
          sub_25D1621C8(v46, v45, 0);
          sub_25D1621C8(v34, v36, 0);
          if (v51)
          {
            goto LABEL_48;
          }
        }

        v42 = (v42 + 1) & v43;
      }

      while (((*&v16[(v42 >> 3) & 0xFFFFFFFFFFFFFF8] >> v42) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v181 = v38;
    v53 = *(v38 + 16);
    if (*(v38 + 24) <= v53)
    {
      v22 = v37;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25D15E854(v53 + 1);
      }

      else
      {
        sub_25D15F154(v53 + 1);
      }

      v38 = v181;
      v69 = *(v181 + 40);
      sub_25D1686D4();
      MEMORY[0x25F892F60](0);
      sub_25D168474();
      v70 = sub_25D168704();
      v16 = (v38 + 56);
      v71 = -1 << *(v38 + 32);
      v42 = v70 & ~v71;
      if ((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v72 = ~v71;
        do
        {
          v73 = *(v38 + 48) + 24 * v42;
          v74 = *v73;
          v75 = *(v73 + 8);
          v76 = *(v73 + 16);
          if (v76)
          {
            sub_25D162178(*v73, *(v73 + 8), *(v73 + 16));

            sub_25D1621C8(v74, v75, v76);
            sub_25D1621C8(v34, v36, 0);
          }

          else
          {
            if (v74 == v34 && v75 == v36)
            {
              goto LABEL_149;
            }

            v78 = *v73;
            v79 = *(v73 + 8);
            v80 = sub_25D168664();
            sub_25D162178(v74, v75, 0);

            sub_25D1621C8(v74, v75, 0);
            sub_25D1621C8(v34, v36, 0);
            if (v80)
            {
              goto LABEL_152;
            }
          }

          v42 = (v42 + 1) & v72;
        }

        while (((*&v16[(v42 >> 3) & 0xFFFFFFFFFFFFFF8] >> v42) & 1) != 0);
        v22 = v37;
      }
    }

    else
    {
      v22 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25D15EFEC();
        v38 = v181;
      }
    }

    v23 = v178;
    *(v38 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v42;
    v81 = *(v38 + 48) + 24 * v42;
    *v81 = v34;
    *(v81 + 8) = v36;
    *(v81 + 16) = 0;
    v82 = *(v38 + 16);
    v83 = __OFADD__(v82, 1);
    v84 = v82 + 1;
    if (!v83)
    {
LABEL_65:
      *(v38 + 16) = v84;
      v184 = v38;
      goto LABEL_66;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v54 = v29 == 0xD000000000000023 && v175 == v30;
  if (!v54 && (sub_25D168664() & 1) == 0)
  {
    if (v29 == 0xD000000000000030 && v168 == v30 || (sub_25D168664() & 1) != 0)
    {
      v87 = sub_25D168464();
      v88 = xpc_dictionary_get_array(v169, (v87 + 32));

      if (!v88)
      {
        goto LABEL_10;
      }

      swift_unknownObjectRetain();
      v89 = v174;
      sub_25D168404();
      v90 = sub_25D1683C4();
      v182[0] = sub_25D15E158(0, v90 & ~(v90 >> 63), 0, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v182[0]);
      *(&v160 - 2) = v89;
      *(&v160 - 1) = v182;
      v91 = v167;
      sub_25D1683D4();
      v167 = v91;
      v23 = v178;
      swift_unknownObjectRelease();
      v92 = v182[0];
      (*v165)(v89, v166);
      v93 = v92;
      v94 = 2;
    }

    else if (v29 == 0xD000000000000025 && v164 == v30 || (sub_25D168664() & 1) != 0)
    {
      v110 = sub_25D168464();
      v111 = xpc_dictionary_get_array(v169, (v110 + 32));

      if (!v111)
      {
        goto LABEL_10;
      }

      swift_unknownObjectRetain();
      v112 = v173;
      sub_25D168404();
      v113 = sub_25D1683C4();
      v182[0] = sub_25D15E158(0, v113 & ~(v113 >> 63), 0, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v182[0]);
      *(&v160 - 2) = v112;
      *(&v160 - 1) = v182;
      v114 = v167;
      sub_25D1683D4();
      v167 = v114;
      v23 = v178;
      swift_unknownObjectRelease();
      v115 = v182[0];
      (*v165)(v112, v166);
      v93 = v115;
      v94 = 3;
    }

    else
    {
      if ((v29 != 0xD000000000000027 || v163 != v30) && (sub_25D168664() & 1) == 0)
      {
        if ((v29 != 0xD00000000000002DLL || v162 != v30) && (sub_25D168664() & 1) == 0)
        {
          goto LABEL_147;
        }

        v34 = MEMORY[0x25F892C20](v29, v30);
        v36 = v122;

        if (!v36)
        {
          goto LABEL_10;
        }

        v123 = v184;
        v124 = *(v184 + 40);
        sub_25D1686D4();
        MEMORY[0x25F892F60](5);
        sub_25D168474();
        v125 = sub_25D168704();
        v126 = v123 + 56;
        v127 = -1 << *(v123 + 32);
        v128 = v125 & ~v127;
        if ((*(v123 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128))
        {
          v160 = ~v127;
          v161 = v123;
          do
          {
            v129 = *(v123 + 48) + 24 * v128;
            v131 = *v129;
            v130 = *(v129 + 8);
            v132 = *(v129 + 16);
            if (v132 < 5)
            {

              sub_25D162178(v131, v130, v132);
              sub_25D1621C8(v131, v130, v132);
              sub_25D1621C8(v34, v36, 5u);
            }

            else
            {
              if (v131 == v34 && v130 == v36)
              {
                v156 = *(v129 + 8);

                sub_25D1621C8(v34, v36, 5u);
                sub_25D1621C8(v34, v36, 5u);
                goto LABEL_142;
              }

              v134 = *v129;
              v135 = *(v129 + 8);
              v136 = sub_25D168664();

              sub_25D162178(v131, v130, 5u);
              sub_25D1621C8(v131, v130, 5u);
              sub_25D1621C8(v34, v36, 5u);
              if (v136)
              {

LABEL_142:
                v21 = v176;
                v16 = v177;
                goto LABEL_10;
              }
            }

            v128 = (v128 + 1) & v160;
            v123 = v161;
          }

          while (((*(v126 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) != 0);
        }

        v137 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v123;
        v138 = *(v123 + 16);
        if (*(v123 + 24) <= v138)
        {
          if (v137)
          {
            sub_25D15E854(v138 + 1);
          }

          else
          {
            sub_25D15F154(v138 + 1);
          }

          v123 = v181;
          v139 = *(v181 + 40);
          sub_25D1686D4();
          MEMORY[0x25F892F60](5);
          sub_25D168474();
          v140 = sub_25D168704();
          v141 = v123 + 56;
          v142 = -1 << *(v123 + 32);
          v128 = v140 & ~v142;
          if ((*(v123 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128))
          {
            v161 = v22;
            v143 = ~v142;
            v144 = v123;
            do
            {
              v145 = *(v123 + 48) + 24 * v128;
              v146 = *v145;
              v147 = *(v145 + 8);
              v148 = *(v145 + 16);
              if (v148 < 5)
              {
                sub_25D162178(*v145, *(v145 + 8), *(v145 + 16));

                sub_25D1621C8(v146, v147, v148);
                sub_25D1621C8(v34, v36, 5u);
              }

              else
              {
                if (v146 == v34 && v147 == v36)
                {
                  goto LABEL_153;
                }

                v150 = *v145;
                v151 = *(v145 + 8);
                v152 = sub_25D168664();
                sub_25D162178(v146, v147, 5u);

                sub_25D1621C8(v146, v147, 5u);
                sub_25D1621C8(v34, v36, 5u);
                if (v152)
                {
                  while (1)
                  {
LABEL_152:
                    sub_25D168674();
                    __break(1u);
LABEL_153:
                    sub_25D162178(v34, v36, 5u);

                    sub_25D1621C8(v34, v36, 5u);
                    v157 = v34;
                    v158 = v36;
                    v159 = 5;
LABEL_151:
                    sub_25D1621C8(v157, v158, v159);
                  }
                }
              }

              v128 = (v128 + 1) & v143;
              v123 = v144;
            }

            while (((*(v141 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) != 0);
            v22 = v161;
            v23 = v178;
          }
        }

        else if ((v137 & 1) == 0)
        {
          sub_25D15EFEC();
          v123 = v181;
        }

        *(v123 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v128;
        v153 = *(v123 + 48) + 24 * v128;
        *v153 = v34;
        *(v153 + 8) = v36;
        *(v153 + 16) = 5;
        v154 = *(v123 + 16);
        v83 = __OFADD__(v154, 1);
        v155 = v154 + 1;
        if (v83)
        {
          __break(1u);
LABEL_149:
          sub_25D162178(v34, v36, 0);

          sub_25D1621C8(v34, v36, 0);
          v157 = v34;
          v158 = v36;
          v159 = 0;
          goto LABEL_151;
        }

        *(v123 + 16) = v155;
        v184 = v123;
LABEL_66:
        v21 = v176;
        v16 = v177;
        goto LABEL_10;
      }

      v116 = sub_25D168464();
      v117 = xpc_dictionary_get_array(v169, (v116 + 32));

      if (!v117)
      {
        goto LABEL_10;
      }

      swift_unknownObjectRetain();
      v118 = v170;
      sub_25D168404();
      v119 = sub_25D1683C4();
      v182[0] = sub_25D15E158(0, v119 & ~(v119 >> 63), 0, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v182[0]);
      *(&v160 - 2) = v118;
      *(&v160 - 1) = v182;
      v120 = v167;
      sub_25D1683D4();
      v167 = v120;
      v23 = v178;
      swift_unknownObjectRelease();
      v121 = v182[0];
      (*v165)(v118, v166);
      v93 = v121;
      v94 = 4;
    }

    sub_25D15E264(v182, v93, 0, v94);
    sub_25D1621C8(v182[0], v182[1], v183);
    goto LABEL_10;
  }

  v34 = MEMORY[0x25F892C20](v29, v30);
  v36 = v55;

  if (!v36)
  {
    goto LABEL_10;
  }

  v37 = v22;
  v38 = v184;
  v56 = *(v184 + 40);
  sub_25D1686D4();
  MEMORY[0x25F892F60](1);
  sub_25D168474();
  v57 = sub_25D168704();
  v16 = (v38 + 56);
  v58 = -1 << *(v38 + 32);
  v59 = v57 & ~v58;
  if ((*(v38 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
  {
    v60 = ~v58;
    do
    {
      v61 = *(v38 + 48) + 24 * v59;
      v63 = *v61;
      v62 = *(v61 + 8);
      v64 = *(v61 + 16);
      if (v64 == 1)
      {
        if (v63 == v34 && v62 == v36)
        {
          v109 = *(v61 + 8);

          sub_25D1621C8(v34, v36, 1u);
          v25 = v34;
          v26 = v36;
          v27 = 1;
LABEL_8:
          sub_25D1621C8(v25, v26, v27);
LABEL_9:
          v21 = v176;
          v16 = v177;
          v22 = v37;
          v23 = v178;
LABEL_10:
          if (++v22 == v180)
          {
            goto LABEL_143;
          }

          goto LABEL_11;
        }

        v66 = *v61;
        v67 = *(v61 + 8);
        v68 = sub_25D168664();

        sub_25D162178(v63, v62, 1u);
        sub_25D1621C8(v63, v62, 1u);
        sub_25D1621C8(v34, v36, 1u);
        if (v68)
        {
LABEL_48:

          goto LABEL_9;
        }
      }

      else
      {

        sub_25D162178(v63, v62, v64);
        sub_25D1621C8(v63, v62, v64);
        sub_25D1621C8(v34, v36, 1u);
      }

      v59 = (v59 + 1) & v60;
    }

    while (((*&v16[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59) & 1) != 0);
  }

  v85 = swift_isUniquelyReferenced_nonNull_native();
  v181 = v38;
  v86 = *(v38 + 16);
  if (*(v38 + 24) <= v86)
  {
    v22 = v37;
    if (v85)
    {
      sub_25D15E854(v86 + 1);
    }

    else
    {
      sub_25D15F154(v86 + 1);
    }

    v38 = v181;
    v95 = *(v181 + 40);
    sub_25D1686D4();
    MEMORY[0x25F892F60](1);
    sub_25D168474();
    v96 = sub_25D168704();
    v16 = (v38 + 56);
    v97 = -1 << *(v38 + 32);
    v59 = v96 & ~v97;
    if ((*(v38 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
    {
      v98 = ~v97;
      do
      {
        v99 = *(v38 + 48) + 24 * v59;
        v100 = *v99;
        v101 = *(v99 + 8);
        v102 = *(v99 + 16);
        if (v102 == 1)
        {
          if (v100 == v34 && v101 == v36)
          {
            sub_25D162178(v34, v36, 1u);

            sub_25D1621C8(v34, v36, 1u);
            v157 = v34;
            v158 = v36;
            v159 = 1;
            goto LABEL_151;
          }

          v104 = *v99;
          v105 = *(v99 + 8);
          v106 = sub_25D168664();
          sub_25D162178(v100, v101, 1u);

          sub_25D1621C8(v100, v101, 1u);
          sub_25D1621C8(v34, v36, 1u);
          if (v106)
          {
            goto LABEL_152;
          }
        }

        else
        {
          sub_25D162178(*v99, *(v99 + 8), *(v99 + 16));

          sub_25D1621C8(v100, v101, v102);
          sub_25D1621C8(v34, v36, 1u);
        }

        v59 = (v59 + 1) & v98;
      }

      while (((*&v16[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59) & 1) != 0);
      v22 = v37;
    }
  }

  else
  {
    v22 = v37;
    if ((v85 & 1) == 0)
    {
      sub_25D15EFEC();
      v38 = v181;
    }
  }

  v23 = v178;
  *(v38 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v59;
  v107 = *(v38 + 48) + 24 * v59;
  *v107 = v34;
  *(v107 + 8) = v36;
  *(v107 + 16) = 1;
  v108 = *(v38 + 16);
  v83 = __OFADD__(v108, 1);
  v84 = v108 + 1;
  if (!v83)
  {
    goto LABEL_65;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  swift_unknownObjectRelease();

  (*(v171 + 8))(v16, v172);
  return 0;
}

unint64_t sub_25D161E24()
{
  result = qword_27FC27F50;
  if (!qword_27FC27F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F50);
  }

  return result;
}

unint64_t sub_25D161E78()
{
  result = qword_27FC27F58;
  if (!qword_27FC27F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F58);
  }

  return result;
}

unint64_t sub_25D161ECC()
{
  result = qword_27FC27F60;
  if (!qword_27FC27F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F60);
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

unint64_t sub_25D161F68()
{
  result = qword_27FC27F68;
  if (!qword_27FC27F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F68);
  }

  return result;
}

unint64_t sub_25D161FBC()
{
  result = qword_27FC27F70;
  if (!qword_27FC27F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F70);
  }

  return result;
}

unint64_t sub_25D162010()
{
  result = qword_27FC27F78;
  if (!qword_27FC27F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F78);
  }

  return result;
}

unint64_t sub_25D162064()
{
  result = qword_27FC27F80;
  if (!qword_27FC27F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27F80);
  }

  return result;
}

uint64_t sub_25D1620B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC27CB8, &qword_25D168E80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25D162124()
{
  result = qword_27FC27D08;
  if (!qword_27FC27D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D08);
  }

  return result;
}

uint64_t sub_25D162178(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_25D1621C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

unint64_t sub_25D162218()
{
  result = qword_27FC27F88[0];
  if (!qword_27FC27F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC27F88);
  }

  return result;
}

unint64_t sub_25D16226C()
{
  result = qword_27FC27D18;
  if (!qword_27FC27D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D18);
  }

  return result;
}

unint64_t sub_25D1622C0()
{
  result = qword_27FC27D20;
  if (!qword_27FC27D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D20);
  }

  return result;
}

unint64_t sub_25D162314()
{
  result = qword_27FC27D28;
  if (!qword_27FC27D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D28);
  }

  return result;
}

unint64_t sub_25D162368()
{
  result = qword_27FC27D40;
  if (!qword_27FC27D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D40);
  }

  return result;
}

unint64_t sub_25D1623BC()
{
  result = qword_27FC27D48;
  if (!qword_27FC27D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D48);
  }

  return result;
}

unint64_t sub_25D162410()
{
  result = qword_27FC27D60;
  if (!qword_27FC27D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D60);
  }

  return result;
}

unint64_t sub_25D162464()
{
  result = qword_27FC27D70;
  if (!qword_27FC27D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D70);
  }

  return result;
}

unint64_t sub_25D1624B8()
{
  result = qword_27FC27D78;
  if (!qword_27FC27D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D78);
  }

  return result;
}

unint64_t sub_25D16250C()
{
  result = qword_27FC27D80;
  if (!qword_27FC27D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D80);
  }

  return result;
}

uint64_t sub_25D162560(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC27D30, &qword_25D168EC8);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25D1625F0()
{
  result = qword_27FC27D90;
  if (!qword_27FC27D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D90);
  }

  return result;
}

unint64_t sub_25D162644()
{
  result = qword_27FC27D98;
  if (!qword_27FC27D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27D98);
  }

  return result;
}

uint64_t sub_25D162698(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC27D50, &qword_25D168ED0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25D162710()
{
  result = qword_27FC27DA8;
  if (!qword_27FC27DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27DA8);
  }

  return result;
}

unint64_t sub_25D162768()
{
  result = qword_27FC27DB0;
  if (!qword_27FC27DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27DB0);
  }

  return result;
}

unint64_t sub_25D1627C0()
{
  result = qword_27FC27DB8;
  if (!qword_27FC27DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27DB8);
  }

  return result;
}

unint64_t sub_25D16281C()
{
  result = qword_27FC27DC0;
  if (!qword_27FC27DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27DC0);
  }

  return result;
}

unint64_t sub_25D162874()
{
  result = qword_27FC27DC8;
  if (!qword_27FC27DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC27DC8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25D162938(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25D162980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
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

uint64_t sub_25D1629F0(uint64_t a1, int a2)
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

uint64_t sub_25D162A38(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OSEligibilityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OSEligibilityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void type metadata accessor for os_eligibility_answer_t()
{
  if (!qword_27FC27DD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FC27DD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for OSEligibilityResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OSEligibilityResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s13OSEligibility20OSEligibilityContextO21ForceReasonCodingKeysOwet_0(unsigned int *a1, int a2)
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

_WORD *_s13OSEligibility20OSEligibilityContextO21ForceReasonCodingKeysOwst_0(_WORD *result, int a2, int a3)
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

uint64_t sub_25D162E40(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25D162ED4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25D163008(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25D16309C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25D163280(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppIdentity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25D163404(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25D163498(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25D16359C()
{
  result = qword_27FC28F90[0];
  if (!qword_27FC28F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC28F90);
  }

  return result;
}

unint64_t sub_25D1635F4()
{
  result = qword_27FC293A0[0];
  if (!qword_27FC293A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC293A0);
  }

  return result;
}

unint64_t sub_25D16364C()
{
  result = qword_27FC2A7B0[0];
  if (!qword_27FC2A7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2A7B0);
  }

  return result;
}

unint64_t sub_25D1636A4()
{
  result = qword_27FC2AFC0[0];
  if (!qword_27FC2AFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2AFC0);
  }

  return result;
}

unint64_t sub_25D1636FC()
{
  result = qword_27FC2B1D0[0];
  if (!qword_27FC2B1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2B1D0);
  }

  return result;
}

unint64_t sub_25D163754()
{
  result = qword_27FC2B3E0[0];
  if (!qword_27FC2B3E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2B3E0);
  }

  return result;
}

unint64_t sub_25D1637AC()
{
  result = qword_27FC2B5F0;
  if (!qword_27FC2B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2B5F0);
  }

  return result;
}

unint64_t sub_25D163804()
{
  result = qword_27FC2B800[0];
  if (!qword_27FC2B800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2B800);
  }

  return result;
}

unint64_t sub_25D16385C()
{
  result = qword_27FC2BA10[0];
  if (!qword_27FC2BA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2BA10);
  }

  return result;
}

unint64_t sub_25D1638B4()
{
  result = qword_27FC2BC20[0];
  if (!qword_27FC2BC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2BC20);
  }

  return result;
}

unint64_t sub_25D16390C()
{
  result = qword_27FC2BE30[0];
  if (!qword_27FC2BE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2BE30);
  }

  return result;
}

unint64_t sub_25D163964()
{
  result = qword_27FC2C040[0];
  if (!qword_27FC2C040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C040);
  }

  return result;
}

unint64_t sub_25D1639BC()
{
  result = qword_27FC2C250;
  if (!qword_27FC2C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C250);
  }

  return result;
}

unint64_t sub_25D163A14()
{
  result = qword_27FC2C258[0];
  if (!qword_27FC2C258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C258);
  }

  return result;
}

unint64_t sub_25D163A6C()
{
  result = qword_27FC2C2E0;
  if (!qword_27FC2C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C2E0);
  }

  return result;
}

unint64_t sub_25D163AC4()
{
  result = qword_27FC2C2E8[0];
  if (!qword_27FC2C2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C2E8);
  }

  return result;
}

unint64_t sub_25D163B1C()
{
  result = qword_27FC2C370;
  if (!qword_27FC2C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C370);
  }

  return result;
}

unint64_t sub_25D163B74()
{
  result = qword_27FC2C378;
  if (!qword_27FC2C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C378);
  }

  return result;
}

unint64_t sub_25D163BCC()
{
  result = qword_27FC2C400;
  if (!qword_27FC2C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C400);
  }

  return result;
}

unint64_t sub_25D163C24()
{
  result = qword_27FC2C408[0];
  if (!qword_27FC2C408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C408);
  }

  return result;
}

unint64_t sub_25D163C7C()
{
  result = qword_27FC2C490;
  if (!qword_27FC2C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C490);
  }

  return result;
}

unint64_t sub_25D163CD4()
{
  result = qword_27FC2C498[0];
  if (!qword_27FC2C498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C498);
  }

  return result;
}

unint64_t sub_25D163D2C()
{
  result = qword_27FC2C520;
  if (!qword_27FC2C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C520);
  }

  return result;
}

unint64_t sub_25D163D84()
{
  result = qword_27FC2C528[0];
  if (!qword_27FC2C528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C528);
  }

  return result;
}

unint64_t sub_25D163DDC()
{
  result = qword_27FC2C5B0;
  if (!qword_27FC2C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C5B0);
  }

  return result;
}

unint64_t sub_25D163E34()
{
  result = qword_27FC2C5B8[0];
  if (!qword_27FC2C5B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C5B8);
  }

  return result;
}

unint64_t sub_25D163E8C()
{
  result = qword_27FC2C640;
  if (!qword_27FC2C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C640);
  }

  return result;
}

unint64_t sub_25D163EE4()
{
  result = qword_27FC2C648[0];
  if (!qword_27FC2C648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C648);
  }

  return result;
}

unint64_t sub_25D163F3C()
{
  result = qword_27FC2C6D0;
  if (!qword_27FC2C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C6D0);
  }

  return result;
}

unint64_t sub_25D163F94()
{
  result = qword_27FC2C6D8[0];
  if (!qword_27FC2C6D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C6D8);
  }

  return result;
}

unint64_t sub_25D163FEC()
{
  result = qword_27FC2C760;
  if (!qword_27FC2C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C760);
  }

  return result;
}

unint64_t sub_25D164044()
{
  result = qword_27FC2C768[0];
  if (!qword_27FC2C768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C768);
  }

  return result;
}

unint64_t sub_25D16409C()
{
  result = qword_27FC2C7F0;
  if (!qword_27FC2C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C7F0);
  }

  return result;
}

unint64_t sub_25D1640F4()
{
  result = qword_27FC2C7F8[0];
  if (!qword_27FC2C7F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C7F8);
  }

  return result;
}

unint64_t sub_25D16414C()
{
  result = qword_27FC2C880;
  if (!qword_27FC2C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C880);
  }

  return result;
}

unint64_t sub_25D1641A4()
{
  result = qword_27FC2C888[0];
  if (!qword_27FC2C888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C888);
  }

  return result;
}

unint64_t sub_25D1641FC()
{
  result = qword_27FC2C910;
  if (!qword_27FC2C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C910);
  }

  return result;
}

unint64_t sub_25D164254()
{
  result = qword_27FC2C918[0];
  if (!qword_27FC2C918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C918);
  }

  return result;
}

unint64_t sub_25D1642AC()
{
  result = qword_27FC2C9A0;
  if (!qword_27FC2C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC2C9A0);
  }

  return result;
}

unint64_t sub_25D164304()
{
  result = qword_27FC2C9A8[0];
  if (!qword_27FC2C9A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC2C9A8);
  }

  return result;
}