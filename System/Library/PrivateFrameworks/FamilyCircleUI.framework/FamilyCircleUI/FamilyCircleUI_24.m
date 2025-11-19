uint64_t sub_21BDE56F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_21BE29ACC();
  sub_21BE28ABC();
  v7 = sub_21BE29B0C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21BE2995C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21BDE57E8(uint64_t result)
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

  result = sub_21BBBC990(result, v11, 1, v3);
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

uint64_t sub_21BDE58DC(uint64_t result)
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

  result = sub_21BBBCD28(result, v12, 1, v3);
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

void *sub_21BDE59C8(void *result)
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

  result = sub_21BBBCE3C(result, v11, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A00, &qword_21BE32F70);
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

uint64_t sub_21BDE5ACC(uint64_t result)
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

  result = sub_21BBBCF94(result, v11, 1, v3);
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

uint64_t sub_21BDE5BC0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_21BBBD914(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_21BE2585C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21BDE5CEC(uint64_t result)
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

  result = sub_21BBBDB64(result, v11, 1, v3);
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

void sub_21BDE5DF8(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = 0xE600000000000000;
  v4 = 0x756F59726F66;
  v5 = 0x800000021BE542B0;
  v6 = 0xD000000000000014;
  if (v2 != 5)
  {
    v6 = 0x4D65726F6C707865;
    v5 = 0xEB0000000065726FLL;
  }

  v7 = 0xEA00000000007075;
  v8 = 0x746553646C696863;
  if (v2 != 3)
  {
    v8 = 0x7250797465666173;
    v7 = 0xED00007963617669;
  }

  if (*(v1 + 24) <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000736E6F6974;
  v10 = 0x7069726373627573;
  if (v2 != 1)
  {
    v10 = 0x646C696843726F66;
    v9 = 0xEB000000006E6572;
  }

  if (*(v1 + 24))
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*(v1 + 24) <= 2u)
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

uint64_t sub_21BDE5F04(void *a1, uint64_t a2)
{
  v5 = sub_21BE26A4C();
  v66 = *(v5 - 8);
  v6 = *(v66 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v65 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  v14 = sub_21BE25FCC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 me];
  if (!v19)
  {
    sub_21BE261BC();
    v28 = sub_21BE26A2C();
    v29 = sub_21BE28FDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v69 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE62240, &v69);
      _os_log_impl(&dword_21BB35000, v28, v29, "%s No me found", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x21CF05C50](v31, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    (*(v66 + 8))(v9, v5);
    return 0;
  }

  (*(v15 + 104))(v18, *MEMORY[0x277D07F38], v14);
  v20 = MEMORY[0x21CF01150](v18);
  (*(v15 + 8))(v18, v14);
  v21 = *(v2 + 24);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_21BE0476C;
    v22[4] = 0;

    v23 = sub_21BDE83F8(a2);

    v24 = sub_21BDE9ABC(v23);

    sub_21BE261BC();
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v24;
      _os_log_impl(&dword_21BB35000, v25, v26, "Activeitem count %ld", v27, 0xCu);
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    (*(v66 + 8))(v13, v5);
    return v24;
  }

  v32 = *(v2 + 24);

  v34 = sub_21BC2BCD8(v33, sub_21BE0476C);

  if (qword_280BD6F00 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v35 = qword_280BDCB50;
    swift_beginAccess();
    result = sub_21BDE9A4C(v35 + 64, &v69);
    if (!v69)
    {
      __break(1u);
      return result;
    }

    v64 = v5;
    v37 = v70;

    sub_21BBFD7AC(&v69);
    v38 = MEMORY[0x277D84F90];
    *&v69 = MEMORY[0x277D84F90];

    sub_21BDE6E84(v37, v37, v34, v35, &v69);
    swift_bridgeObjectRelease_n();

    v34 = v69;
    v39 = *(v69 + 16);
    if (v39)
    {
      v40 = 0;
      v5 = v69 + 48;
      do
      {
        if (v40 >= v34[2])
        {
          goto LABEL_46;
        }

        v41 = *v5;
        v42 = *(*v5 + 16);
        v43 = v38[2];
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_47;
        }

        v45 = *v5;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v44 <= v38[3] >> 1)
        {
          if (!*(v41 + 16))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v43 <= v44)
          {
            v47 = v43 + v42;
          }

          else
          {
            v47 = v43;
          }

          v38 = sub_21BBBD448(isUniquelyReferenced_nonNull_native, v47, 1, v38);
          if (!*(v41 + 16))
          {
LABEL_13:

            if (v42)
            {
              goto LABEL_48;
            }

            goto LABEL_14;
          }
        }

        if ((v38[3] >> 1) - v38[2] < v42)
        {
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
        swift_arrayInitWithCopy();

        if (v42)
        {
          v48 = v38[2];
          v49 = __OFADD__(v48, v42);
          v50 = v48 + v42;
          if (v49)
          {
            goto LABEL_50;
          }

          v38[2] = v50;
        }

LABEL_14:
        ++v40;
        v5 += 32;
      }

      while (v39 != v40);
    }

    v51 = v38[2];
    if (!v51)
    {
      break;
    }

    v52 = 0;
    v53 = (v38 + 4);
    v54 = MEMORY[0x277D84F90];
    v5 = 40;
    while (v52 < v38[2])
    {
      sub_21BB3A35C(v53, &v69);
      v55 = v70;
      v56 = v71;
      v34 = __swift_project_boxed_opaque_existential_1Tm(&v69, v70);
      if ((*(v56 + 24))(v55, v56))
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v69);
      }

      else
      {
        sub_21BB3D104(&v69, v67);
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v68[0] = v54;
        if ((v57 & 1) == 0)
        {
          v34 = v68;
          sub_21BC59C94(0, *(v54 + 16) + 1, 1);
          v54 = v68[0];
        }

        v59 = *(v54 + 16);
        v58 = *(v54 + 24);
        if (v59 >= v58 >> 1)
        {
          v34 = v68;
          sub_21BC59C94((v58 > 1), v59 + 1, 1);
          v54 = v68[0];
        }

        *(v54 + 16) = v59 + 1;
        sub_21BB3D104(v67, v54 + 40 * v59 + 32);
      }

      ++v52;
      v53 += 40;
      if (v51 == v52)
      {
        goto LABEL_41;
      }
    }

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
    swift_once();
  }

  v54 = MEMORY[0x277D84F90];
LABEL_41:

  v24 = *(v54 + 16);

  v60 = v65;
  sub_21BE261BC();
  v61 = sub_21BE26A2C();
  v62 = sub_21BE28FFC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    *(v63 + 4) = v24;
    _os_log_impl(&dword_21BB35000, v61, v62, "Unfinished item count %ld", v63, 0xCu);
    MEMORY[0x21CF05C50](v63, -1, -1);
  }

  (*(v66 + 8))(v60, v64);
  return v24;
}

uint64_t sub_21BDE671C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v50 = a2;
  v10 = sub_21BE26A4C();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  v19 = sub_21BBE7D24(v17, v18);
  if (v19 == 7)
  {
    sub_21BE261BC();
    sub_21BB3A35C(a1, v54);

    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FCC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53[0] = v23;
      *v22 = 136315394;
      v24 = v55;
      v25 = v56;
      __swift_project_boxed_opaque_existential_1Tm(v54, v55);
      v26 = sub_21BBE7CF8(v24, v25);
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v29 = sub_21BB3D81C(v26, v28, v53);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_21BB3D81C(v50, a3, v53);
      _os_log_impl(&dword_21BB35000, v20, v21, "%s skipped for category %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v23, -1, -1);
      MEMORY[0x21CF05C50](v22, -1, -1);

      (*(v51 + 8))(v14, v52);
    }

    else
    {

      (*(v51 + 8))(v14, v52);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

LABEL_10:
    v47 = 0;
    return v47 & 1;
  }

  v30 = v19;
  v50 = v5;
  swift_beginAccess();
  v31 = *(a4 + 40);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v32);
  v34 = *(v33 + 32);

  v35 = v34(v32, v33);
  v36 = sub_21BDE51A0(v35, v31);

  if (v36)
  {
    sub_21BE261BC();
    sub_21BB3A35C(a1, v54);
    v37 = sub_21BE26A2C();
    v38 = sub_21BE28FFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57 = v40;
      *v39 = 136315138;
      v41 = v55;
      v42 = v56;
      __swift_project_boxed_opaque_existential_1Tm(v54, v55);
      v43 = sub_21BBE7CF8(v41, v42);
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v46 = sub_21BB3D81C(v43, v45, &v57);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_21BB35000, v37, v38, "%s filtered out for user", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x21CF05C50](v40, -1, -1);
      MEMORY[0x21CF05C50](v39, -1, -1);

      (*(v51 + 8))(v16, v52);
    }

    else
    {

      (*(v51 + 8))(v16, v52);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    goto LABEL_10;
  }

  v47 = sub_21BD98508(v30, a5);
  return v47 & 1;
}

uint64_t sub_21BDE6BA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_21BDE6BD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F0, &qword_21BE32F60);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_21BDE6CB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_21BBE66D8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_21BDE6D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA0, &qword_21BE33018);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_21BDE6E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v6 = a2;
  v7 = a1;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v35 = a3 + 32;
  v13 = 0;

  v38 = v12;
  v39 = v8;
  while (v11)
  {
    v14 = v11;
LABEL_10:
    v11 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = *(*(v7 + 48) + (__clz(__rbit64(v14)) | (v13 << 6)));
      v17 = sub_21BBB3230(v16);
      if (v18)
      {
        v42 = v11;
        v19 = (*(v6 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = *(a3 + 16);

        v43 = v20;
        if (v22)
        {
          v23 = v35;
          v24 = MEMORY[0x277D84F90];
          while (1)
          {
            sub_21BB3A35C(v23, v46);
            v25 = sub_21BDE671C(v46, v20, v21, a4, v16);
            if (v5)
            {
              goto LABEL_34;
            }

            if (v25)
            {
              sub_21BB3D104(v46, v45);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v47 = v24;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_21BC59C94(0, *(v24 + 16) + 1, 1);
                v24 = v47;
              }

              v28 = *(v24 + 16);
              v27 = *(v24 + 24);
              if (v28 >= v27 >> 1)
              {
                sub_21BC59C94((v27 > 1), v28 + 1, 1);
                v24 = v47;
              }

              *(v24 + 16) = v28 + 1;
              sub_21BB3D104(v45, v24 + 40 * v28 + 32);
              v20 = v43;
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v46);
            }

            v23 += 40;
            if (!--v22)
            {
              goto LABEL_24;
            }
          }
        }

        v24 = MEMORY[0x277D84F90];
LABEL_24:
        if (*(v24 + 16))
        {
          v29 = *a5;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v29;
          v7 = v41;
          if ((v30 & 1) == 0)
          {
            v29 = sub_21BBBCF94(0, *(v29 + 2) + 1, 1, v29);
            *a5 = v29;
          }

          v32 = *(v29 + 2);
          v31 = *(v29 + 3);
          if (v32 >= v31 >> 1)
          {
            v29 = sub_21BBBCF94((v31 > 1), v32 + 1, 1, v29);
            *a5 = v29;
          }

          *(v29 + 2) = v32 + 1;
          v33 = &v29[32 * v32];
          *(v33 + 4) = v43;
          *(v33 + 5) = v21;
          *(v33 + 6) = v24;
          v33[56] = v16;
        }

        else
        {

          v7 = v41;
        }

        v8 = v39;
        v6 = a2;
        v12 = v38;
        v11 = v42;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v14 = *(v8 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_34:

  __swift_destroy_boxed_opaque_existential_0Tm(v46);

  __break(1u);
  return result;
}

uint64_t sub_21BDE7180(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v73 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 >= v12)
  {
    if (a4 != a2 || &a2[40 * v12] <= a4)
    {
      memmove(a4, a2, 40 * v12);
    }

    v66 = &v5[40 * v12];
    if (v11 < 40 || v7 <= v8)
    {
      v35 = v7;
      goto LABEL_53;
    }

    v36 = v7;
    while (1)
    {
      __dst = v36;
      v37 = (v36 - 40);
      v38 = (v66 - 40);
      v6 -= 40;
      v65 = v36 - 40;
      while (1)
      {
        sub_21BB3A35C(v38, v70);
        sub_21BB3A35C(v37, v67);
        v41 = *(v73 + 16);
        v42 = v71;
        v43 = v72;
        __swift_project_boxed_opaque_existential_1Tm(v70, v71);
        v44 = sub_21BBE7CF8(v42, v43);
        if (*(v41 + 16))
        {
          v46 = sub_21BBB3108(v44, v45);
          v48 = v47;

          if (v48)
          {
            v49 = *(*(v41 + 56) + 8 * v46);
            goto LABEL_39;
          }
        }

        else
        {
        }

        v49 = 0;
LABEL_39:
        v50 = v68;
        v51 = v69;
        __swift_project_boxed_opaque_existential_1Tm(v67, v68);
        v52 = sub_21BBE7CF8(v50, v51);
        if (*(v41 + 16))
        {
          v54 = sub_21BBB3108(v52, v53);
          v56 = v55;

          if (v56)
          {
            v57 = *(*(v41 + 56) + 8 * v54);
            goto LABEL_44;
          }
        }

        else
        {
        }

        v57 = 0;
LABEL_44:
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        if (v49 < v57)
        {
          break;
        }

        v37 = v65;
        if (v6 + 40 != v38 + 40)
        {
          v58 = *v38;
          v59 = *(v38 + 16);
          *(v6 + 32) = *(v38 + 32);
          *v6 = v58;
          *(v6 + 16) = v59;
        }

        v39 = v38 - 40;
        v6 -= 40;
        v40 = v38 > v5;
        v38 -= 40;
        if (!v40)
        {
          v66 = (v39 + 40);
          v35 = __dst;
          goto LABEL_53;
        }
      }

      v35 = v65;
      if ((v6 + 40) != __dst)
      {
        v60 = *v65;
        v61 = *(v65 + 1);
        *(v6 + 32) = *(v65 + 4);
        *v6 = v60;
        *(v6 + 16) = v61;
      }

      v66 = (v38 + 40);
      if (v38 + 40 > v5)
      {
        v36 = v65;
        if (v65 > v8)
        {
          continue;
        }
      }

      v66 = (v38 + 40);
      goto LABEL_53;
    }
  }

  if (a4 != __src || &__src[40 * v10] <= a4)
  {
    memmove(a4, __src, 40 * v10);
  }

  v66 = &v5[40 * v10];
  if (v9 >= 40 && v7 < v6)
  {
    do
    {
      sub_21BB3A35C(v7, v70);
      sub_21BB3A35C(v5, v67);
      v13 = *(v73 + 16);
      v14 = v71;
      v15 = v72;
      __swift_project_boxed_opaque_existential_1Tm(v70, v71);
      v16 = sub_21BBE7CF8(v14, v15);
      if (*(v13 + 16))
      {
        v18 = v7;
        v19 = sub_21BBB3108(v16, v17);
        v21 = v20;

        if (v21)
        {
          v22 = *(*(v13 + 56) + 8 * v19);
          goto LABEL_12;
        }
      }

      else
      {
        v18 = v7;
      }

      v22 = 0;
LABEL_12:
      v23 = v68;
      v24 = v69;
      __swift_project_boxed_opaque_existential_1Tm(v67, v68);
      v25 = sub_21BBE7CF8(v23, v24);
      if (*(v13 + 16))
      {
        v27 = sub_21BBB3108(v25, v26);
        v29 = v28;

        if (v29)
        {
          v30 = *(*(v13 + 56) + 8 * v27);
          goto LABEL_17;
        }
      }

      else
      {
      }

      v30 = 0;
LABEL_17:
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      if (v22 >= v30)
      {
        v31 = v5;
        v32 = v8 == v5;
        v5 += 40;
        v7 = v18;
        if (v32)
        {
          goto LABEL_22;
        }

LABEL_21:
        v33 = *v31;
        v34 = *(v31 + 1);
        *(v8 + 4) = *(v31 + 4);
        *v8 = v33;
        *(v8 + 1) = v34;
        goto LABEL_22;
      }

      v31 = v18;
      v7 = v18 + 40;
      if (v8 != v18)
      {
        goto LABEL_21;
      }

LABEL_22:
      v8 += 40;
    }

    while (v5 < v66 && v7 < v6);
  }

  v35 = v8;
LABEL_53:
  v62 = (v66 - v5) / 40;
  if (v35 != v5 || v35 >= &v5[40 * v62])
  {
    memmove(v35, v5, 40 * v62);
  }

  return 1;
}

uint64_t sub_21BDE760C(char *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_21BDFD0AC(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 40 * *v6);
      v15 = (v10 + 40 * *v13);
      v16 = v10 + 40 * v14;

      sub_21BDE7180(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      *(v6 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BDE77B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v140 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_retain_n();
    v8 = 0;
    v130 = MEMORY[0x277D84F90];
    v132 = a5;
    v121 = a4;
    while (1)
    {
      if (v8 + 1 >= v6)
      {
        v6 = v8 + 1;
        goto LABEL_34;
      }

      v9 = *a3;
      sub_21BB3A35C(*a3 + 40 * (v8 + 1), &v137);
      sub_21BB3A35C(v9 + 40 * v8, v134);
      v127 = sub_21BBE9E64(&v137, v134, a5);
      if (v133)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v134);
        __swift_destroy_boxed_opaque_existential_0Tm(&v137);
        goto LABEL_115;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v134);
      __swift_destroy_boxed_opaque_existential_0Tm(&v137);
      v10 = v8 + 2;
      v119 = v8;
      v11 = 40 * v8;
      v12 = v9 + 40 * v8 + 80;
      while (v6 != v10)
      {
        v15 = v6;
        sub_21BB3A35C(v12, &v137);
        sub_21BB3A35C(v12 - 40, v134);
        v16 = *(a5 + 16);
        v17 = v138;
        v18 = v139;
        __swift_project_boxed_opaque_existential_1Tm(&v137, v138);
        v19 = sub_21BBE7CF8(v17, v18);
        if (*(v16 + 16))
        {
          v21 = sub_21BBB3108(v19, v20);
          v23 = v22;

          if (v23)
          {
            v24 = *(*(v16 + 56) + 8 * v21);
            goto LABEL_17;
          }
        }

        else
        {
        }

        v24 = 0;
LABEL_17:
        v25 = v135;
        v26 = v136;
        __swift_project_boxed_opaque_existential_1Tm(v134, v135);
        v27 = sub_21BBE7CF8(v25, v26);
        if (*(v16 + 16))
        {
          v29 = sub_21BBB3108(v27, v28);
          v31 = v30;

          if (v31)
          {
            v13 = *(*(v16 + 56) + 8 * v29);
            goto LABEL_10;
          }
        }

        else
        {
        }

        v13 = 0;
LABEL_10:
        __swift_destroy_boxed_opaque_existential_0Tm(v134);
        __swift_destroy_boxed_opaque_existential_0Tm(&v137);
        v14 = v24 >= v13;
        ++v10;
        v12 += 40;
        a5 = v132;
        v6 = v15;
        if (((v127 ^ v14) & 1) == 0)
        {
          v6 = v10 - 1;
          break;
        }
      }

      if (!v127)
      {
        a4 = v121;
        goto LABEL_33;
      }

      v32 = v119;
      if (v6 < v119)
      {
        break;
      }

      if (v119 >= v6)
      {
        a4 = v121;
        v8 = v119;
      }

      else
      {
        v33 = 40 * v6 - 40;
        v34 = v6;
        a4 = v121;
        do
        {
          if (v32 != --v34)
          {
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_141;
            }

            v36 = v35 + v11;
            v37 = v35 + v33;
            sub_21BB3D104((v35 + v11), &v137);
            v38 = *(v37 + 32);
            v39 = *(v37 + 16);
            *v36 = *v37;
            *(v36 + 16) = v39;
            *(v36 + 32) = v38;
            sub_21BB3D104(&v137, v37);
          }

          ++v32;
          v33 -= 40;
          v11 += 40;
        }

        while (v32 < v34);
        a5 = v132;
LABEL_33:
        v8 = v119;
      }

LABEL_34:
      v40 = a3[1];
      if (v6 >= v40)
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v6, v8))
      {
        goto LABEL_135;
      }

      if (v6 - v8 >= a4)
      {
        goto LABEL_61;
      }

      if (__OFADD__(v8, a4))
      {
        goto LABEL_136;
      }

      if (v8 + a4 < v40)
      {
        v40 = v8 + a4;
      }

      if (v40 < v8)
      {
LABEL_137:
        __break(1u);
        break;
      }

      if (v6 == v40)
      {
        goto LABEL_61;
      }

      v123 = v40;
      v41 = *a3;
      v42 = *(a5 + 16);
      v43 = *a3 + 40 * v6;
      v120 = v8;
      v44 = v8 - v6;
      while (2)
      {
        v126 = v43;
        v128 = v6;
        v125 = v44;
        v45 = v43;
        while (2)
        {
          sub_21BB3A35C(v45, &v137);
          sub_21BB3A35C(v45 - 40, v134);
          v46 = v138;
          v47 = v139;
          __swift_project_boxed_opaque_existential_1Tm(&v137, v138);
          v48 = sub_21BBE7CF8(v46, v47);
          if (*(v42 + 16))
          {
            v50 = sub_21BBB3108(v48, v49);
            v52 = v51;

            if (v52)
            {
              v53 = *(*(v42 + 56) + 8 * v50);
              goto LABEL_50;
            }
          }

          else
          {
          }

          v53 = 0;
LABEL_50:
          v54 = v135;
          v55 = v136;
          __swift_project_boxed_opaque_existential_1Tm(v134, v135);
          v56 = sub_21BBE7CF8(v54, v55);
          if (*(v42 + 16))
          {
            v58 = sub_21BBB3108(v56, v57);
            v60 = v59;

            if (v60)
            {
              v61 = *(*(v42 + 56) + 8 * v58);
              goto LABEL_55;
            }
          }

          else
          {
          }

          v61 = 0;
LABEL_55:
          __swift_destroy_boxed_opaque_existential_0Tm(v134);
          __swift_destroy_boxed_opaque_existential_0Tm(&v137);
          if (v53 >= v61)
          {
            break;
          }

          if (!v41)
          {
            goto LABEL_139;
          }

          sub_21BB3D104(v45, &v137);
          v62 = *(v45 - 24);
          *v45 = *(v45 - 40);
          *(v45 + 16) = v62;
          *(v45 + 32) = *(v45 - 8);
          sub_21BB3D104(&v137, v45 - 40);
          v45 -= 40;
          if (!__CFADD__(v44++, 1))
          {
            continue;
          }

          break;
        }

        v6 = (v128 + 1);
        v43 = v126 + 40;
        v44 = v125 - 1;
        if (v128 + 1 != v123)
        {
          continue;
        }

        break;
      }

      v8 = v120;
      v6 = v123;
LABEL_61:
      v64 = v130;
      if (v6 < v8)
      {
        goto LABEL_134;
      }

      v124 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_21BBBCBFC(0, *(v130 + 2) + 1, 1, v130);
      }

      v66 = *(v64 + 2);
      v65 = *(v64 + 3);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v64 = sub_21BBBCBFC((v65 > 1), v66 + 1, 1, v64);
      }

      *(v64 + 2) = v67;
      v68 = v64 + 32;
      v69 = &v64[16 * v66 + 32];
      *v69 = v8;
      *(v69 + 1) = v6;
      v140 = v64;
      v129 = *a1;
      if (!*a1)
      {
        goto LABEL_142;
      }

      v130 = v64;
      if (v66)
      {
        while (1)
        {
          v70 = v67 - 1;
          if (v67 >= 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v71 = *(v64 + 4);
            v72 = *(v64 + 5);
            v81 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            v74 = v81;
LABEL_81:
            if (v74)
            {
              goto LABEL_125;
            }

            v87 = &v64[16 * v67];
            v89 = *v87;
            v88 = *(v87 + 1);
            v90 = __OFSUB__(v88, v89);
            v91 = v88 - v89;
            v92 = v90;
            if (v90)
            {
              goto LABEL_128;
            }

            v93 = &v68[16 * v70];
            v95 = *v93;
            v94 = *(v93 + 1);
            v81 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v81)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v91, v96))
            {
              goto LABEL_132;
            }

            if (v91 + v96 >= v73)
            {
              if (v73 < v96)
              {
                v70 = v67 - 2;
              }

              goto LABEL_102;
            }

            goto LABEL_95;
          }

          v97 = &v64[16 * v67];
          v99 = *v97;
          v98 = *(v97 + 1);
          v81 = __OFSUB__(v98, v99);
          v91 = v98 - v99;
          v92 = v81;
LABEL_95:
          if (v92)
          {
            goto LABEL_127;
          }

          v100 = &v68[16 * v70];
          v102 = *v100;
          v101 = *(v100 + 1);
          v81 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v81)
          {
            goto LABEL_130;
          }

          if (v103 < v91)
          {
            goto LABEL_3;
          }

LABEL_102:
          if (v70 - 1 >= v67)
          {
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

          v108 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v109 = &v68[16 * v70 - 16];
          v110 = *v109;
          v111 = &v68[16 * v70];
          v112 = *(v111 + 1);
          v113 = (v108 + 40 * *v109);
          v114 = (v108 + 40 * *v111);
          v115 = v108 + 40 * v112;

          sub_21BDE7180(v113, v114, v115, v129, v132);
          if (v133)
          {

            v140 = v130;
            goto LABEL_115;
          }

          if (v112 < v110)
          {
            goto LABEL_120;
          }

          v64 = v130;
          v116 = *(v130 + 2);
          if (v70 > v116)
          {
            goto LABEL_121;
          }

          *v109 = v110;
          *(v109 + 1) = v112;
          if (v70 >= v116)
          {
            goto LABEL_122;
          }

          v67 = v116 - 1;
          memmove(&v68[16 * v70], v111 + 16, 16 * (v116 - 1 - v70));
          *(v130 + 2) = v116 - 1;
          if (v116 <= 2)
          {
LABEL_3:
            v140 = v64;
            goto LABEL_4;
          }
        }

        v75 = &v68[16 * v67];
        v76 = *(v75 - 8);
        v77 = *(v75 - 7);
        v81 = __OFSUB__(v77, v76);
        v78 = v77 - v76;
        if (v81)
        {
          goto LABEL_123;
        }

        v80 = *(v75 - 6);
        v79 = *(v75 - 5);
        v81 = __OFSUB__(v79, v80);
        v73 = v79 - v80;
        v74 = v81;
        if (v81)
        {
          goto LABEL_124;
        }

        v82 = &v64[16 * v67];
        v84 = *v82;
        v83 = *(v82 + 1);
        v81 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v81)
        {
          goto LABEL_126;
        }

        v81 = __OFADD__(v73, v85);
        v86 = v73 + v85;
        if (v81)
        {
          goto LABEL_129;
        }

        if (v86 >= v78)
        {
          v104 = &v68[16 * v70];
          v106 = *v104;
          v105 = *(v104 + 1);
          v81 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v81)
          {
            goto LABEL_133;
          }

          if (v73 < v107)
          {
            v70 = v67 - 2;
          }

          goto LABEL_102;
        }

        goto LABEL_81;
      }

LABEL_4:
      a5 = v132;
      v6 = a3[1];
      v8 = v124;
      a4 = v121;
      if (v124 >= v6)
      {
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_139:

    __break(1u);
LABEL_140:

    __break(1u);
LABEL_141:

    __break(1u);
LABEL_142:

    __break(1u);
    goto LABEL_143;
  }

  swift_retain_n();
LABEL_112:
  v117 = *a1;
  if (!*a1)
  {
LABEL_143:

    __break(1u);
    return result;
  }

  sub_21BDE760C(&v140, v117, a3, a5);
  if (v133)
  {

LABEL_115:
  }

  else
  {
  }
}

uint64_t sub_21BDE802C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *(a5 + 16);
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_5:
    v36 = a3;
    v28 = v8;
    v29 = v7;
    while (1)
    {
      sub_21BB3A35C(v7, &v33);
      sub_21BB3A35C(v7 - 40, v30);
      v9 = v34;
      v10 = v35;
      __swift_project_boxed_opaque_existential_1Tm(&v33, v34);
      v11 = sub_21BBE7CF8(v9, v10);
      if (*(v6 + 16))
      {
        v13 = sub_21BBB3108(v11, v12);
        v15 = v14;

        if (v15)
        {
          v16 = *(*(v6 + 56) + 8 * v13);
          goto LABEL_11;
        }
      }

      else
      {
      }

      v16 = 0;
LABEL_11:
      v17 = v31;
      v18 = v32;
      __swift_project_boxed_opaque_existential_1Tm(v30, v31);
      v19 = sub_21BBE7CF8(v17, v18);
      if (*(v6 + 16))
      {
        v21 = sub_21BBB3108(v19, v20);
        v23 = v22;

        if (v23)
        {
          v24 = *(*(v6 + 56) + 8 * v21);
          goto LABEL_16;
        }
      }

      else
      {
      }

      v24 = 0;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v33);
      if (v16 >= v24)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        __break(1u);
        return result;
      }

      sub_21BB3D104(v7, &v33);
      v25 = *(v7 - 24);
      *v7 = *(v7 - 40);
      *(v7 + 16) = v25;
      *(v7 + 32) = *(v7 - 8);
      result = sub_21BB3D104(&v33, v7 - 40);
      v7 -= 40;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        a3 = v36 + 1;
        v7 = v29 + 40;
        v8 = v28 - 1;
        if (v36 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_21BDE81FC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_21BE2991C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
        v8 = sub_21BE28C7C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_21BDE77B8(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21BDE802C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_21BDE8354(void **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_21BDFD58C(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_21BDE81FC(v7, a2);

  *a1 = v4;
}

uint64_t sub_21BDE83F8(uint64_t a1)
{
  v119 = sub_21BE25FCC();
  v118 = *(v119 - 8);
  v2 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BD6F00 != -1)
  {
    goto LABEL_209;
  }

  while (1)
  {
    v116 = qword_280BDCB50;
    sub_21BE261BC();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v132 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21BB3D81C(0xD00000000000002ELL, 0x800000021BE62210, &v132);
      _os_log_impl(&dword_21BB35000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    v13 = v5[1];
    ++v5;
    v13(v8, v4);
    *&v132 = sub_21BE2975C();

    v14 = 0;
    sub_21BDE8354(&v132, a1);

    v15 = v132;
    v4 = v116;
    swift_beginAccess();
    sub_21BDE9A4C(v4 + 64, &v132);
    if (!v132)
    {
      __break(1u);
LABEL_212:
      __break(1u);

      __break(1u);
      return result;
    }

    v8 = v133;

    sub_21BBFD7AC(&v132);
    v16 = MEMORY[0x277D84F90];
    *&v132 = MEMORY[0x277D84F90];

    sub_21BDE6E84(v8, v8, v15, v4, &v132);
    v111[1] = 0;
    swift_bridgeObjectRelease_n();

    v17 = v132;
    v122 = *(a1 + 24);
    v121 = *(v122 + 16);
    if (v121)
    {
      *&v132 = v16;
LABEL_8:
      v21 = *(v17 + 16);
      v120 = v122 + 32;
      v127 = 0x800000021BE542B0;

      v22 = 0;
      v124 = (v17 + 56);
      v128 = v21;
      v123 = v21 - 1;
      v129 = v17;
LABEL_10:
      if (v22 >= *(v122 + 16))
      {
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
        goto LABEL_207;
      }

      v125 = v22;
      if (!v128)
      {
        v16 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }

      v23 = 0;
      v5 = *(v120 + v22);
      v16 = MEMORY[0x277D84F90];
LABEL_13:
      v126 = v16;
      v24 = &v124[32 * v23];
      v4 = v23;
      while (1)
      {
        if (v4 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_167;
        }

        v25 = *v24;
        if (v25 <= 2)
        {
          v27 = 0x7069726373627573;
          if (v25 != 1)
          {
            v27 = 0x646C696843726F66;
          }

          v28 = 0xED0000736E6F6974;
          if (v25 != 1)
          {
            v28 = 0xEB000000006E6572;
          }

          if (*v24)
          {
            v26 = v27;
          }

          else
          {
            v26 = 0x756F59726F66;
          }

          if (*v24)
          {
            v8 = v28;
          }

          else
          {
            v8 = 0xE600000000000000;
          }

          if (v5 <= 2)
          {
LABEL_55:
            if (v5)
            {
              if (v5 == 1)
              {
                v33 = 0x7069726373627573;
              }

              else
              {
                v33 = 0x646C696843726F66;
              }

              if (v5 == 1)
              {
                v34 = 0xED0000736E6F6974;
              }

              else
              {
                v34 = 0xEB000000006E6572;
              }
            }

            else
            {
              v34 = 0xE600000000000000;
              v33 = 0x756F59726F66;
            }

            goto LABEL_63;
          }
        }

        else if (*v24 > 4u)
        {
          if (v25 == 5)
          {
            v26 = 0xD000000000000014;
            v8 = v127;
            if (v5 <= 2)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v26 = 0x4D65726F6C707865;
            v8 = 0xEB0000000065726FLL;
            if (v5 <= 2)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          if (v25 == 3)
          {
            v26 = 0x746553646C696863;
          }

          else
          {
            v26 = 0x7250797465666173;
          }

          if (v25 == 3)
          {
            v8 = 0xEA00000000007075;
          }

          else
          {
            v8 = 0xED00007963617669;
          }

          if (v5 <= 2)
          {
            goto LABEL_55;
          }
        }

        if (v5 == 5)
        {
          v29 = 0xD000000000000014;
        }

        else
        {
          v29 = 0x4D65726F6C707865;
        }

        v30 = 0xEB0000000065726FLL;
        if (v5 == 5)
        {
          v30 = v127;
        }

        v31 = 0x746553646C696863;
        if (v5 != 3)
        {
          v31 = 0x7250797465666173;
        }

        v32 = 0xED00007963617669;
        if (v5 == 3)
        {
          v32 = 0xEA00000000007075;
        }

        if (v5 <= 4)
        {
          v33 = v31;
        }

        else
        {
          v33 = v29;
        }

        if (v5 <= 4)
        {
          v34 = v32;
        }

        else
        {
          v34 = v30;
        }

LABEL_63:
        v35 = *(v24 - 3);
        a1 = *(v24 - 2);
        v36 = *(v24 - 1);
        if (v26 == v33 && v8 == v34)
        {
          v37 = *(v24 - 2);

LABEL_69:
          v16 = v126;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v130[0] = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v8 = v130;
            sub_21BC59C74(0, *(v16 + 16) + 1, 1);
            v16 = *&v130[0];
          }

          v40 = *(v16 + 16);
          v39 = *(v16 + 24);
          if (v40 >= v39 >> 1)
          {
            v8 = v130;
            sub_21BC59C74((v39 > 1), v40 + 1, 1);
            v16 = *&v130[0];
          }

          v23 = v4 + 1;
          *(v16 + 16) = v40 + 1;
          v41 = v16 + 32 * v40;
          *(v41 + 32) = v35;
          *(v41 + 40) = a1;
          *(v41 + 48) = v36;
          *(v41 + 56) = v25;
          v17 = v129;
          if (v123 == v4)
          {
LABEL_9:
            v22 = v125 + 1;
            v8 = &v132;
            sub_21BDE5ACC(v16);
            if (v22 == v121)
            {

              v16 = v132;
              goto LABEL_77;
            }

            goto LABEL_10;
          }

          goto LABEL_13;
        }

        v16 = sub_21BE2995C();

        if (v16)
        {
          goto LABEL_69;
        }

        ++v4;

        v24 += 32;
        v17 = v129;
        if (v128 == v4)
        {
          v16 = v126;
          goto LABEL_9;
        }
      }
    }

    v8 = v4;
    v18 = sub_21BBFC4BC(v132);
    v19 = *(a1 + 24);
    *(a1 + 24) = v18;

    v122 = *(a1 + 24);
    v20 = *(v122 + 16);
    *&v132 = v16;
    v121 = v20;
    if (v20)
    {
      goto LABEL_8;
    }

LABEL_77:
    v42 = v118;
    v4 = v117;
    v43 = v119;
    (*(v118 + 104))(v117, *MEMORY[0x277D07F38], v119);
    v44 = MEMORY[0x21CF01150](v4);
    v45 = *(v42 + 8);
    v14 = (v42 + 8);
    v45(v4, v43);
    if ((v44 & 1) == 0)
    {
      goto LABEL_202;
    }

    sub_21BDE9A4C(v116 + 64, &v132);
    if (!v132)
    {
      goto LABEL_212;
    }

    v46 = v135;
    if (v136)
    {
      v46 = 500;
    }

    v111[0] = v46;
    sub_21BBFD7AC(&v132);
    v8 = *(v16 + 16);
    swift_beginAccess();
    v125 = v16 + 32;
    v115 = v16;
    v126 = v8;
    if (v8)
    {
      v47 = 0;
      v124 = 0x800000021BE544F0;
      v123 = 0x800000021BE544D0;
      v122 = 0x800000021BE544B0;
      v121 = 0x800000021BE54490;
      v120 = 0x800000021BE54460;
      v119 = 0x800000021BE54420;
      v118 = 0x800000021BE543F0;
      v117 = 0x800000021BE543D0;
      v112 = MEMORY[0x277D84F90];
      v48 = v116;
      while (v47 < *(v16 + 16))
      {
        v49 = v125 + 32 * v47;
        v50 = *v49;
        a1 = *(v49 + 16);
        v51 = *(v49 + 24);
        v8 = *(v48 + 184);
        v52 = *(v8 + 16);
        v127 = *(v49 + 8);

        v114 = v50;
        if (v52)
        {

          v53 = sub_21BBB3230(v51);
          if (v54)
          {
            v55 = *(*(v8 + 56) + 8 * v53);
          }

          else
          {
            v55 = -1;
          }

          v129 = v55;
        }

        else
        {
          v129 = -1;
        }

        v113 = v51;
        v128 = v47;
        v4 = *(a1 + 16);
        if (v4)
        {
          v56 = 0;
          v57 = a1 + 32;
          v5 = MEMORY[0x277D84F90];
          while (v56 < *(a1 + 16))
          {
            sub_21BB3A35C(v57, &v132);
            v58 = v133;
            v59 = v134;
            v8 = __swift_project_boxed_opaque_existential_1Tm(&v132, v133);
            if (((*(v59 + 24))(v58, v59) & 1) != 0 || (v60 = v133, v61 = v134, v62 = __swift_project_boxed_opaque_existential_1Tm(&v132, v133), v63 = v61, v8 = v62, sub_21BBE7DA8(v60, v63)))
            {
              __swift_destroy_boxed_opaque_existential_0Tm(&v132);
            }

            else
            {
              sub_21BB3D104(&v132, v130);
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v131 = v5;
              if ((v64 & 1) == 0)
              {
                v8 = &v131;
                sub_21BC59C94(0, v5[2] + 1, 1);
                v5 = v131;
              }

              v66 = v5[2];
              v65 = v5[3];
              if (v66 >= v65 >> 1)
              {
                v8 = &v131;
                sub_21BC59C94((v65 > 1), v66 + 1, 1);
                v5 = v131;
              }

              v5[2] = v66 + 1;
              sub_21BB3D104(v130, &v5[5 * v66 + 4]);
            }

            ++v56;
            v57 += 40;
            if (v4 == v56)
            {
              goto LABEL_103;
            }
          }

          __break(1u);
LABEL_204:
          __break(1u);
          goto LABEL_205;
        }

        v5 = MEMORY[0x277D84F90];
LABEL_103:
        if (v129 > 0)
        {
          v67 = v5[2];
          if (v67)
          {
            v68 = 0;
            v69 = 0;
            v70 = (v5 + 4);
            v71 = MEMORY[0x277D84F90];
            do
            {
              sub_21BB3A35C(v70, &v132);
              v72 = v133;
              v4 = v134;
              __swift_project_boxed_opaque_existential_1Tm(&v132, v133);
              v8 = 0xE700000000000000;
              v73 = (*(v4 + 32))(v72, v4);
              v74 = 0x6E776F6E6B6E75;
              switch(v73)
              {
                case 1:
                  v74 = 0x696D694C6D6D6F63;
                  v8 = 0xEE006D6574497374;
                  break;
                case 2:
                  v74 = 0xD000000000000013;
                  v75 = &v137;
                  goto LABEL_121;
                case 3:
                  v74 = 0xD000000000000014;
                  v75 = &v138;
                  goto LABEL_121;
                case 4:
                  v74 = 0x6E6F697461636F6CLL;
                  v8 = 0xEC0000006D657449;
                  break;
                case 5:
                  v74 = 0xD000000000000013;
                  v75 = &v139;
                  goto LABEL_121;
                case 6:
                  v74 = 0x69636966656E6562;
                  v8 = 0xEF6D657449797261;
                  break;
                case 7:
                  v8 = 0xEE006D6574497375;
                  v74 = 0x6C5064756F6C4369;
                  break;
                case 8:
                  v8 = 0xE800000000000000;
                  v74 = 0x6D657449656D6F68;
                  break;
                case 9:
                  v74 = 0xD000000000000013;
                  v75 = &v140;
                  goto LABEL_121;
                case 10:
                  v74 = 0x736143656C707061;
                  v8 = 0xED00006D65744968;
                  break;
                case 11:
                  v74 = 0x49746361746E6F63;
                  v8 = 0xEB000000006D6574;
                  break;
                case 12:
                  v74 = 0xD000000000000012;
                  v75 = &v141;
                  goto LABEL_121;
                case 13:
                  v74 = 0xD000000000000015;
                  v75 = &v142;
                  goto LABEL_121;
                case 14:
                  v74 = 0xD000000000000018;
                  v75 = &v143;
                  goto LABEL_121;
                case 15:
                  v74 = 0xD000000000000012;
                  v75 = &v144;
LABEL_121:
                  v8 = *(v75 - 32);
                  break;
                default:
                  break;
              }

              v76 = 0xE700000000000000;
              v77 = 0x6E776F6E6B6E75;
              switch(v68)
              {
                case 1:
                  v77 = 0x696D694C6D6D6F63;
                  v76 = 0xEE006D6574497374;
                  break;
                case 2:
                  v77 = 0xD000000000000013;
                  v78 = &v137;
                  goto LABEL_135;
                case 3:
                  v77 = 0xD000000000000014;
                  v78 = &v138;
                  goto LABEL_135;
                case 4:
                  v77 = 0x6E6F697461636F6CLL;
                  v76 = 0xEC0000006D657449;
                  break;
                case 5:
                  v77 = 0xD000000000000013;
                  v78 = &v139;
                  goto LABEL_135;
                case 6:
                  v77 = 0x69636966656E6562;
                  v76 = 0xEF6D657449797261;
                  break;
                case 7:
                  v76 = 0xEE006D6574497375;
                  v77 = 0x6C5064756F6C4369;
                  break;
                case 8:
                  v76 = 0xE800000000000000;
                  v77 = 0x6D657449656D6F68;
                  break;
                case 9:
                  v77 = 0xD000000000000013;
                  v78 = &v140;
                  goto LABEL_135;
                case 10:
                  v77 = 0x736143656C707061;
                  v76 = 0xED00006D65744968;
                  break;
                case 11:
                  v77 = 0x49746361746E6F63;
                  v76 = 0xEB000000006D6574;
                  break;
                case 12:
                  v77 = 0xD000000000000012;
                  v78 = &v141;
                  goto LABEL_135;
                case 13:
                  v77 = 0xD000000000000015;
                  v78 = &v142;
                  goto LABEL_135;
                case 14:
                  v77 = 0xD000000000000018;
                  v78 = &v143;
                  goto LABEL_135;
                case 15:
                  v77 = 0xD000000000000012;
                  v78 = &v144;
LABEL_135:
                  v76 = *(v78 - 32);
                  break;
                default:
                  break;
              }

              if (v74 == v77 && v8 == v76)
              {
              }

              else
              {
                v4 = sub_21BE2995C();

                if ((v4 & 1) == 0)
                {
                  if (__OFADD__(v69++, 1))
                  {
                    goto LABEL_206;
                  }

                  v80 = v133;
                  v81 = v134;
                  v8 = __swift_project_boxed_opaque_existential_1Tm(&v132, v133);
                  v68 = (*(v81 + 32))(v80, v81);
                }
              }

              if (v129 >= v69)
              {
                sub_21BB3A35C(&v132, v130);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v71 = sub_21BBBD448(0, v71[2] + 1, 1, v71);
                }

                v8 = v71[2];
                v82 = v71[3];
                if (v8 >= v82 >> 1)
                {
                  v71 = sub_21BBBD448((v82 > 1), v8 + 1, 1, v71);
                }

                v71[2] = v8 + 1;
                sub_21BB3D104(v130, &v71[5 * v8 + 4]);
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v132);
              v70 += 40;
              --v67;
            }

            while (v67);

            v5 = v71;
            v16 = v115;
          }

          else
          {

            v5 = MEMORY[0x277D84F90];
          }
        }

        v47 = v128 + 1;
        if (v5[2])
        {

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v83 = v112;
          }

          else
          {
            v83 = sub_21BBBCF94(0, *(v112 + 2) + 1, 1, v112);
          }

          v4 = v127;
          v8 = *(v83 + 2);
          v84 = *(v83 + 3);
          v48 = v116;
          if (v8 >= v84 >> 1)
          {
            v83 = sub_21BBBCF94((v84 > 1), v8 + 1, 1, v83);
            v48 = v116;
          }

          *(v83 + 2) = v8 + 1;
          v112 = v83;
          v85 = &v83[32 * v8];
          *(v85 + 4) = v114;
          *(v85 + 5) = v4;
          *(v85 + 6) = v5;
          v85[56] = v113;
          if (v47 == v126)
          {
            goto LABEL_168;
          }
        }

        else
        {

          v48 = v116;
          if (v47 == v126)
          {
            goto LABEL_168;
          }
        }
      }

LABEL_207:
      __break(1u);
      goto LABEL_208;
    }

LABEL_167:
    v112 = MEMORY[0x277D84F90];
LABEL_168:
    if (v111[0] > 0)
    {
      v8 = v112;
      if (v111[0] < *(v112 + 2))
      {
        sub_21BE2999C();
        swift_unknownObjectRetain_n();

        v86 = swift_dynamicCastClass();
        if (!v86)
        {
          swift_unknownObjectRelease();
          v86 = MEMORY[0x277D84F90];
        }

        v87 = *(v86 + 16);

        if (v87 == v111[0])
        {
          v8 = v112;
          v88 = swift_dynamicCastClass();
          if (!v88)
          {
            swift_unknownObjectRelease();
            v88 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v109 = (2 * v111[0]) | 1;
          v8 = v112;
          swift_unknownObjectRelease();
          sub_21BDE6BD8(v8, v8 + 32, 0, v109);
          v88 = v110;
        }

        swift_unknownObjectRelease();
        v112 = v88;
      }
    }

    if (!v126)
    {
      break;
    }

    v89 = 0;
    v124 = MEMORY[0x277D84F90];
    while (v89 < *(v16 + 16))
    {
      v90 = v125 + 32 * v89;
      v91 = *(v90 + 8);
      v128 = *v90;
      v92 = *(v90 + 16);
      LODWORD(v127) = *(v90 + 24);
      v93 = *(v92 + 16);
      v129 = v91;

      if (v93)
      {
        v94 = 0;
        v95 = v92 + 32;
        v5 = MEMORY[0x277D84F90];
        while (v94 < *(v92 + 16))
        {
          sub_21BB3A35C(v95, &v132);
          v96 = v133;
          a1 = v134;
          v8 = __swift_project_boxed_opaque_existential_1Tm(&v132, v133);
          if (((*(a1 + 24))(v96, a1) & 1) != 0 || (v97 = v133, v4 = v134, v98 = __swift_project_boxed_opaque_existential_1Tm(&v132, v133), v99 = v97, v8 = v98, sub_21BBE7DA8(v99, v4)))
          {
            sub_21BB3D104(&v132, v130);
            v100 = swift_isUniquelyReferenced_nonNull_native();
            v131 = v5;
            if ((v100 & 1) == 0)
            {
              v8 = &v131;
              sub_21BC59C94(0, v5[2] + 1, 1);
              v5 = v131;
            }

            v4 = v5[2];
            v101 = v5[3];
            a1 = v4 + 1;
            if (v4 >= v101 >> 1)
            {
              v8 = &v131;
              sub_21BC59C94((v101 > 1), v4 + 1, 1);
              v5 = v131;
            }

            v5[2] = a1;
            sub_21BB3D104(v130, &v5[5 * v4 + 4]);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v132);
          }

          ++v94;
          v95 += 40;
          if (v93 == v94)
          {
            goto LABEL_192;
          }
        }

        goto LABEL_204;
      }

      v5 = MEMORY[0x277D84F90];
LABEL_192:
      ++v89;
      if (v5[2])
      {

        v102 = swift_isUniquelyReferenced_nonNull_native();
        v16 = v115;
        if ((v102 & 1) == 0)
        {
          v124 = sub_21BBBCF94(0, *(v124 + 2) + 1, 1, v124);
        }

        v104 = *(v124 + 2);
        v103 = *(v124 + 3);
        v8 = v104 + 1;
        if (v104 >= v103 >> 1)
        {
          v124 = sub_21BBBCF94((v103 > 1), v104 + 1, 1, v124);
        }

        v105 = v124;
        *(v124 + 2) = v8;
        v106 = &v105[32 * v104];
        v107 = v129;
        *(v106 + 4) = v128;
        *(v106 + 5) = v107;
        *(v106 + 6) = v5;
        v106[56] = v127;
        if (v89 == v126)
        {
LABEL_200:
          v16 = v112;
          goto LABEL_202;
        }
      }

      else
      {

        v16 = v115;
        if (v89 == v126)
        {
          goto LABEL_200;
        }
      }
    }

LABEL_208:
    __break(1u);
LABEL_209:
    swift_once();
  }

  v16 = v112;
LABEL_202:

  return v16;
}

uint64_t sub_21BDE9A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6878, &unk_21BE357E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDE9ABC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v32 = MEMORY[0x277D84F90];
    sub_21BC59D54(0, v1, 0);
    v3 = 0;
    v4 = v32;
    v24 = v1;
    v25 = v2 + 32;
    while (1)
    {
      v5 = v25 + 32 * v3;
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      v26 = *(v5 + 8);

      if (v7)
      {
        break;
      }

      v10 = MEMORY[0x277D84F90];
LABEL_15:

      v16 = *(v10 + 16);

      v32 = v4;
      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_21BC59D54((v17 > 1), v18 + 1, 1);
        v4 = v32;
      }

      ++v3;
      *(v4 + 16) = v19;
      *(v4 + 8 * v18 + 32) = v16;
      if (v3 == v24)
      {
        goto LABEL_20;
      }
    }

    v8 = 0;
    v9 = v6 + 32;
    v10 = MEMORY[0x277D84F90];
    while (v8 < *(v6 + 16))
    {
      sub_21BB3A35C(v9, &v28);
      v11 = v29;
      v12 = v30;
      __swift_project_boxed_opaque_existential_1Tm(&v28, v29);
      if (sub_21BBE7E6C(v11, v12))
      {
        sub_21BB3D104(&v28, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BC59C94(0, *(v10 + 16) + 1, 1);
          v10 = v31;
        }

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21BC59C94((v14 > 1), v15 + 1, 1);
          v10 = v31;
        }

        *(v10 + 16) = v15 + 1;
        sub_21BB3D104(v27, v10 + 40 * v15 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v28);
      }

      ++v8;
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
    if (v19)
    {
LABEL_20:
      v20 = 0;
      v21 = 32;
      while (1)
      {
        v22 = *(v4 + v21);
        v23 = __OFADD__(v20, v22);
        v20 += v22;
        if (v23)
        {
          break;
        }

        v21 += 8;
        if (!--v19)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      return result;
    }
  }

  v20 = 0;
LABEL_23:

  return v20;
}

uint64_t sub_21BDE9D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_21BDE9D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21BDE9DE8()
{
  type metadata accessor for PurchaseSharingFamilyCache();
  swift_allocObject();
  return sub_21BE20240();
}

uint64_t sub_21BDE9E20@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = *(v1 + 8);
  if (*(v7 + 16) && (v8 = sub_21BBB3108(0xD000000000000010, 0x800000021BE55930), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_21BE25B9C();
    v13 = *(v12 - 8);
    v14 = v13;
    v15 = *(v13 + 72);
    v16 = v11 + v15 * v10;
    v17 = *(v13 + 16);
    v17(v6, v16, v12);
    v18 = *(v14 + 56);
    v18(v6, 0, 1, v12);
    sub_21BB3A4CC(v6, &unk_27CDB57F0, &qword_21BE328A0);
    if (*(v7 + 16) && (v19 = sub_21BBB3108(0xD000000000000010, 0x800000021BE55930), (v20 & 1) != 0))
    {
      v17(a1, *(v7 + 56) + v19 * v15, v12);
      v21 = a1;
      v22 = 0;
    }

    else
    {
      v21 = a1;
      v22 = 1;
    }

    return v18(v21, v22, 1, v12);
  }

  else
  {
    v23 = sub_21BE25B9C();
    v24 = *(*(v23 - 8) + 56);
    v24(v6, 1, 1, v23);
    sub_21BB3A4CC(v6, &unk_27CDB57F0, &qword_21BE328A0);
    return (v24)(a1, 1, 1, v23);
  }
}

uint64_t sub_21BDEA078(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*(v1 + 48) isOrganizer];
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();

  return v4;
}

uint64_t sub_21BDEA1E0(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v9 = a1;
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v2;
    v14 = v13;
    v47[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5FFE0, v47);
    *(v12 + 12) = 2080;
    v46 = a1;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB568, qword_21BE47588);
    v16 = sub_21BE28A5C();
    v18 = sub_21BB3D81C(v16, v17, v47);
    v44 = v4;
    v19 = v18;

    *(v12 + 14) = v19;
    _os_log_impl(&dword_21BB35000, v10, v11, "%s subscription: %s", v12, 0x16u);
    swift_arrayDestroy();
    v20 = v14;
    v2 = v45;
    MEMORY[0x21CF05C50](v20, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);

    (*(v5 + 8))(v8, v44);
    if (a1)
    {
LABEL_3:
      v21 = v9;
      v22 = sub_21BDEA078([v21 isEnabled]);
      v23 = *(v2 + 56);
      v24 = *(v2 + 64);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for PurchaseSharingFamilyCache();
      v44 = sub_21BDEAC94(&qword_27CDBD908, type metadata accessor for PurchaseSharingFamilyCache);
      v45 = v26;
      v27 = sub_21BE26EAC();
      v28 = sub_21BE28CEC();
      v29 = sub_21BE1F55C();
      if (v29)
      {
        v30 = v29;
        v31 = *(v27 + 24);
        v47[0] = *(v27 + 16);
        v47[1] = v31;

        MEMORY[0x21CF03CA0](46, 0xE100000000000000);
        MEMORY[0x21CF03CA0](0x7069726373627573, 0xEC0000006E6F6974);
        v32 = sub_21BE289CC();
        v43[1] = v25;
        v33 = v22;
        v34 = v32;

        [v30 setValue:v28 forKey:v34];

        v28 = v34;
        v22 = v33;
      }

      else
      {
      }

      sub_21BE26EAC();
      v40 = sub_21BE1F55C();
      [v40 synchronize];

      goto LABEL_14;
    }
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v35 = *(v2 + 56);
  v36 = *(v2 + 64);
  v37 = *(v2 + 72);
  type metadata accessor for PurchaseSharingFamilyCache();
  sub_21BDEAC94(&qword_27CDBD908, type metadata accessor for PurchaseSharingFamilyCache);
  sub_21BE26EAC();
  strcpy(v47, "subscription");
  BYTE5(v47[1]) = 0;
  HIWORD(v47[1]) = -5120;
  v38 = sub_21BE20000(v47);

  if (!v38)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {

    goto LABEL_13;
  }

  LOBYTE(v47[0]) = 2;
  MEMORY[0x21CF03EA0](v39, v47);

  if (LOBYTE(v47[0]) == 2)
  {
LABEL_13:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v40 = [objc_opt_self() bundleForClass_];
    v22 = sub_21BE2599C();
LABEL_14:

    return v22;
  }

  return sub_21BDEA078(v47[0] & 1);
}

uint64_t sub_21BDEA74C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v49 = sub_21BE27A2C();
  v47 = *(v49 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for StaticSelectableCellTemplate();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F88, &qword_21BE3AA38);
  v12 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v40 - v13;
  sub_21BDE9E20(v7);
  v14 = *v1;
  if (*v1)
  {
    v43 = [*v1 isEnabled];
  }

  else
  {
    v43 = 0;
  }

  swift_unknownObjectWeakLoadStrong();
  v15 = sub_21BDEA1E0(v14);
  v41 = v16;
  v42 = v15;
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v53 = *(v1 + 16);
  v54 = v17;
  v55 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v19 = v50;
  v40 = v51;
  v20 = v52;
  v21 = sub_21BE262DC();
  v22 = 0;
  if (v14 && (v21 & 1) == 0)
  {
    v22 = [v14 &selRef_initWithMembersToRender_familyCircle_] ^ 1;
  }

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  *v11 = 0xD000000000000010;
  v11[1] = 0x800000021BE55930;
  sub_21BC438F8(v7, v11 + v8[5]);
  *(v11 + v8[6]) = v43;
  v23 = v8[7];
  swift_unknownObjectWeakInit();

  swift_unknownObjectRelease();
  v24 = (v11 + v8[8]);
  v25 = v41;
  *v24 = v42;
  v24[1] = v25;
  v26 = v11 + v8[9];
  *v26 = 0;
  v26[8] = 1;
  v27 = (v11 + v8[10]);
  *v27 = 0;
  v27[1] = 0;
  v28 = v11 + v8[11];
  v29 = v40;
  *v28 = v19;
  *(v28 + 1) = v29;
  v28[16] = v20;
  v30 = (v11 + v8[12]);
  *v30 = 0;
  v30[1] = 0;
  *(v11 + v8[13]) = 0;
  *(v11 + v8[14]) = 7;
  v31 = (v11 + v8[15]);
  type metadata accessor for ServicesStore();
  sub_21BDEAC94(&qword_27CDB5750, type metadata accessor for ServicesStore);
  *v31 = sub_21BE270CC();
  v31[1] = v32;
  *(v11 + v8[16]) = v22;
  v33 = v11 + v8[17];
  LOBYTE(v50) = 0;
  sub_21BE283EC();
  v34 = v54;
  *v33 = v53;
  *(v33 + 1) = v34;
  v35 = v8[18];
  sub_21BC46FB4();
  v36 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  sub_21BDEAC94(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
  v37 = v45;
  sub_21BE2809C();
  sub_21BC5E088(v11);
  v38 = v46;
  sub_21BE27A0C();
  sub_21BC5E0E4();
  sub_21BE2805C();
  (*(v47 + 8))(v38, v49);
  return sub_21BB3A4CC(v37, &qword_27CDB7F88, &qword_21BE3AA38);
}

uint64_t sub_21BDEAC94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BDEACDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BDEAD24(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21BDEADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v77 = a8;
  v78 = a3;
  v75 = a6;
  v76 = a7;
  v72 = a5;
  v74 = a4;
  v80 = a2;
  v81 = a1;
  v84 = a9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA80, &qword_21BE4F150);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v73 = &v62 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD9E8, &unk_21BE4F0B0);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v62 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0B8, &qword_21BE460A8);
  v14 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v71 = &v62 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD9D8, &qword_21BE4F0A8);
  v16 = *(*(v79 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v79);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA88, &qword_21BE4F158);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB088, &qword_21BE46088);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD9A0, &unk_21BE4F080);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v62 - v33;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD990, &qword_21BE4F078);
  v35 = *(*(v83 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v83);
  v38 = &v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v82 = &v62 - v39;
  v85 = v80;
  if (v81)
  {
    (*(v31 + 56))(v38, 1, 1, v30);
  }

  else
  {
    v62 = v19;
    v64 = v38;
    v81 = v22;
    v65 = v31;
    v40 = v73;
    v66 = v34;
    v41 = v25;
    v63 = v21;
    v80 = v26;
    if (v78)
    {
      sub_21BD4648C(v72, v75, v29);
      sub_21BBA3854(v29, v25, &qword_27CDBB088, &qword_21BE46088);
      swift_storeEnumTagMultiPayload();
      sub_21BDEDD68(&qword_27CDBD9A8, &qword_27CDBB088, &qword_21BE46088, sub_21BDEDA60);
      sub_21BDEDCB0();
      v42 = v66;
      sub_21BE2784C();
      v43 = v29;
      v44 = &qword_27CDBB088;
      v45 = &qword_21BE46088;
    }

    else
    {
      v46 = v71;
      sub_21BD4687C(v72, v75, v71);
      if (a10)
      {
        sub_21BBA3854(v46, v40, &qword_27CDBB0B8, &qword_21BE460A8);
        swift_storeEnumTagMultiPayload();
        sub_21BDEDD68(&qword_27CDBD9E0, &qword_27CDBD9E8, &unk_21BE4F0B0, sub_21BDEDDEC);
        sub_21BDEDDEC();
        v47 = v62;
        sub_21BE2784C();
      }

      else
      {
        v48 = sub_21BE27B8C();
        sub_21BE26E0C();
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v57 = v67;
        sub_21BBA3854(v46, v67, &qword_27CDBB0B8, &qword_21BE460A8);
        v58 = v57 + *(v70 + 36);
        *v58 = v48;
        *(v58 + 8) = v50;
        *(v58 + 16) = v52;
        *(v58 + 24) = v54;
        *(v58 + 32) = v56;
        *(v58 + 40) = 0;
        sub_21BBA3854(v57, v40, &qword_27CDBD9E8, &unk_21BE4F0B0);
        swift_storeEnumTagMultiPayload();
        sub_21BDEDD68(&qword_27CDBD9E0, &qword_27CDBD9E8, &unk_21BE4F0B0, sub_21BDEDDEC);
        sub_21BDEDDEC();
        v47 = v62;
        v46 = v71;
        sub_21BE2784C();
        sub_21BB3A4CC(v57, &qword_27CDBD9E8, &unk_21BE4F0B0);
      }

      v59 = v63;
      sub_21BB3A4CC(v46, &qword_27CDBB0B8, &qword_21BE460A8);
      sub_21BBB7D84(v47, v59, &qword_27CDBD9D8, &qword_21BE4F0A8);
      sub_21BBA3854(v59, v41, &qword_27CDBD9D8, &qword_21BE4F0A8);
      swift_storeEnumTagMultiPayload();
      sub_21BDEDD68(&qword_27CDBD9A8, &qword_27CDBB088, &qword_21BE46088, sub_21BDEDA60);
      sub_21BDEDCB0();
      v42 = v66;
      sub_21BE2784C();
      v43 = v59;
      v44 = &qword_27CDBD9D8;
      v45 = &qword_21BE4F0A8;
    }

    sub_21BB3A4CC(v43, v44, v45);
    v60 = v65;
    v38 = v64;
    sub_21BBB7D84(v42, v64, &qword_27CDBD9A0, &unk_21BE4F080);
    (*(v60 + 56))(v38, 0, 1, v30);
  }

  sub_21BBB7D84(v38, v82, &qword_27CDBD990, &qword_21BE4F078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA20, &qword_21BE4F0D0);
  sub_21BDED924();
  sub_21BDEE044();
  return sub_21BE285EC();
}

uint64_t sub_21BDEB5B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_21BE27A2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA90, &qword_21BE4F160);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-1] - v11;
  sub_21BB3A35C(a1, v19);
  sub_21BE27A1C();
  v13 = sub_21BDEE12C();
  sub_21BE2805C();
  (*(v4 + 8))(v7, v3);
  sub_21BDEE3BC(v19);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  v16 = (*(v15 + 32))(v14, v15);
  sub_21BC5A608(v16);
  v19[0] = &type metadata for CheckListItemView;
  v19[1] = v13;
  swift_getOpaqueTypeConformance2();
  sub_21BE2809C();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21BDEB7EC()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v8 = v20;
  if (!v20)
  {
    sub_21BE2614C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v14, v15, "No family found", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    if (qword_27CDB5000 != -1)
    {
      swift_once();
    }

    v13 = qword_27CDD43B0;

    return v13;
  }

  v20 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAB0, &unk_21BE4F200);
  sub_21BE283FC();
  v9 = *v1;
  if (*v1)
  {
    v10 = v19[1];
    v11 = *(v9 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = sub_21BE0476C;
    v12[4] = 0;

    v13 = sub_21BDE83F8(v10);

    return v13;
  }

  v18 = v1[1];
  type metadata accessor for FamilyChecklistStore();
  sub_21BDEE574(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

uint64_t sub_21BDEBAD8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD910, &qword_21BE4EFF8);
  v3 = *(v100 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v100);
  v95 = v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD918, &qword_21BE4F000);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v94 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = v82 - v10;
  v90 = sub_21BE2721C();
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD920, &qword_21BE4F008);
  v86 = *(v87 - 8);
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = v82 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD928, &qword_21BE4F010);
  v15 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v82[4] = v82 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD930, &qword_21BE4F018);
  v17 = *(*(v84 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v84);
  v92 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v91 = v82 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD938, &qword_21BE4F020);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v99 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v97 = v82 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD940, &unk_21BE4F028);
  v103 = *(v98 - 8);
  v26 = *(v103 + 64);
  v27 = MEMORY[0x28223BE20](v98);
  v102 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v82 - v29;
  v31 = sub_21BDEB7EC();
  v33 = v32;
  v34 = *(v31 + 16);
  v105 = 0;
  v106 = v34;
  swift_getKeyPath();
  v35 = swift_allocObject();
  v36 = v1[1];
  *(v35 + 16) = *v1;
  *(v35 + 32) = v36;
  v37 = v1[3];
  *(v35 + 48) = v1[2];
  *(v35 + 64) = v37;
  *(v35 + 80) = v31;
  *(v35 + 88) = v33;
  sub_21BDED634(v1, v104);

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB67A0, &qword_21BE4F050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD948, &qword_21BE4F058);
  v39 = sub_21BDED66C();
  v82[1] = sub_21BDED6F8();
  v96 = v30;
  v82[3] = v38;
  v82[2] = v39;
  sub_21BE285BC();
  if (*(v33 + 16))
  {
    v82[0] = v3;
    v40 = swift_allocObject();
    v41 = v1[1];
    v40[1] = *v1;
    v40[2] = v41;
    v42 = v1[3];
    v40[3] = v1[2];
    v40[4] = v42;
    MEMORY[0x28223BE20](v40);
    sub_21BDED634(v1, v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA30, &qword_21BE4F0D8);
    sub_21BB3B038(&qword_27CDBDA38, &qword_27CDBDA30, &qword_21BE4F0D8);
    v43 = v83;
    sub_21BE2843C();
    v44 = v88;
    sub_21BE2720C();
    sub_21BB3B038(&qword_27CDBDA40, &qword_27CDBD920, &qword_21BE4F008);
    sub_21BDEE574(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    v45 = v87;
    v46 = v90;
    sub_21BE27ECC();
    (*(v89 + 8))(v44, v46);
    (*(v86 + 8))(v43, v45);
    sub_21BDEE1B8();
    v47 = v91;
    sub_21BE285EC();
    v48 = sub_21BE27B8C();
    sub_21BE26E0C();
    v49 = v47 + *(v84 + 36);
    *v49 = v48;
    *(v49 + 8) = v50;
    *(v49 + 16) = v51;
    *(v49 + 24) = v52;
    *(v49 + 32) = v53;
    *(v49 + 40) = 0;
    v104[0] = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA50, &qword_21BE4F0E0);
    sub_21BE283FC();
    v54 = v105;
    swift_getKeyPath();
    *&v104[0] = v54;
    sub_21BDEE574(&qword_27CDB59B8, type metadata accessor for ChecklistUserPreferences);
    sub_21BE25F1C();

    v55 = *(v54 + 96);

    if (v55)
    {

      v56 = 1;
      v57 = v95;
      v58 = v93;
      v59 = v98;
    }

    else
    {
      v63 = *(v33 + 16);
      v105 = 0;
      v106 = v63;
      swift_getKeyPath();
      v64 = swift_allocObject();
      v65 = v2[1];
      *(v64 + 16) = *v2;
      *(v64 + 32) = v65;
      v66 = v2[3];
      *(v64 + 48) = v2[2];
      *(v64 + 64) = v66;
      *(v64 + 80) = v31;
      *(v64 + 88) = v33;
      sub_21BDED634(v2, v104);
      v67 = v102;
      sub_21BE285BC();
      v58 = v93;
      v68 = v67;
      v59 = v98;
      (*(v103 + 32))(v93, v68, v98);
      v56 = 0;
      v57 = v95;
    }

    (*(v103 + 56))(v58, v56, 1, v59);
    v69 = v92;
    sub_21BBA3854(v47, v92, &qword_27CDBD930, &qword_21BE4F018);
    v70 = v47;
    v71 = v94;
    sub_21BBA3854(v58, v94, &qword_27CDBD918, &qword_21BE4F000);
    sub_21BBA3854(v69, v57, &qword_27CDBD930, &qword_21BE4F018);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA58, &qword_21BE4F110);
    sub_21BBA3854(v71, v57 + *(v72 + 48), &qword_27CDBD918, &qword_21BE4F000);
    sub_21BB3A4CC(v58, &qword_27CDBD918, &qword_21BE4F000);
    sub_21BB3A4CC(v70, &qword_27CDBD930, &qword_21BE4F018);
    sub_21BB3A4CC(v71, &qword_27CDBD918, &qword_21BE4F000);
    sub_21BB3A4CC(v69, &qword_27CDBD930, &qword_21BE4F018);
    v61 = v97;
    sub_21BB599E8(v57, v97);
    v60 = 0;
    v62 = v100;
    v3 = v82[0];
  }

  else
  {

    v60 = 1;
    v61 = v97;
    v59 = v98;
    v62 = v100;
  }

  (*(v3 + 56))(v61, v60, 1, v62);
  v73 = v102;
  v74 = v103;
  v75 = *(v103 + 16);
  v76 = v96;
  v75(v102, v96, v59);
  v77 = v99;
  sub_21BBA3854(v61, v99, &qword_27CDBD938, &qword_21BE4F020);
  v78 = v101;
  v75(v101, v73, v59);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA60, &qword_21BE4F118);
  sub_21BBA3854(v77, &v78[*(v79 + 48)], &qword_27CDBD938, &qword_21BE4F020);
  sub_21BB3A4CC(v61, &qword_27CDBD938, &qword_21BE4F020);
  v80 = *(v74 + 8);
  v80(v76, v59);
  sub_21BB3A4CC(v77, &qword_27CDBD938, &qword_21BE4F020);
  return (v80)(v73, v59);
}

uint64_t sub_21BDEC6A4@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD960, &qword_21BE4F060);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA68, &qword_21BE4F120);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  v17 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= *(a3 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v18 = a3 + 32 * v17;
  v19 = *(v18 + 48);
  if (*(v19 + 16))
  {
    v29[2] = v8;
    v20 = *(v18 + 56);
    v22 = *(v18 + 32);
    v21 = *(v18 + 40);

    v31 = sub_21BC2BB28(v23);
    v29[0] = swift_getKeyPath();
    v24 = swift_allocObject();
    v29[1] = a4;
    v25 = v24;
    v26 = a2[1];
    *(v24 + 24) = *a2;
    *(v24 + 40) = v26;
    v27 = a2[3];
    *(v24 + 56) = a2[2];
    *(v24 + 16) = 1;
    *(v24 + 72) = v27;
    *(v24 + 88) = v22;
    *(v24 + 96) = v21;
    *(v24 + 104) = v19;
    *(v24 + 112) = v20;
    *(v24 + 120) = v17;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_21BDEE5D4;
    *(v28 + 24) = v25;

    sub_21BDED634(a2, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA70, &qword_21BE4F148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD980, &qword_21BE4F070);
    sub_21BB3B038(&qword_27CDBDA78, &qword_27CDBDA70, &qword_21BE4F148);
    sub_21BDED88C();
    sub_21BE285BC();
    sub_21BBA3854(v11, v16, &qword_27CDBD960, &qword_21BE4F060);
    swift_storeEnumTagMultiPayload();
    sub_21BDED784();
    sub_21BE2784C();

    return sub_21BB3A4CC(v11, &qword_27CDBD960, &qword_21BE4F060);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_21BDED784();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BDEC9F4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA98, &qword_21BE4F168);
  return sub_21BDECA4C(a1, a2 + *(v4 + 44));
}

uint64_t sub_21BDECA4C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6E0, &qword_21BE4E660);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_21BE2599C();
  v20 = v19;

  v44 = v18;
  v45 = v20;
  sub_21BB41FA4();
  v21 = sub_21BE27DBC();
  v23 = v22;
  v44 = v21;
  v45 = v22;
  v25 = v24 & 1;
  v46 = v24 & 1;
  v47 = v26;
  v39 = v15;
  sub_21BE2809C();
  sub_21BBC7C7C(v21, v23, v25);

  v27 = swift_allocObject();
  v28 = a1[1];
  v27[1] = *a1;
  v27[2] = v28;
  v29 = a1[3];
  v27[3] = a1[2];
  v27[4] = v29;
  v43 = a1;
  sub_21BDED634(a1, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
  sub_21BDE0DE0();
  v30 = v40;
  sub_21BE2843C();
  sub_21BBA3854(v15, v13, &qword_27CDB99C0, &qword_21BE40C00);
  v31 = v4[2];
  v32 = v41;
  v33 = v30;
  v31(v41, v30, v3);
  v34 = v42;
  sub_21BBA3854(v13, v42, &qword_27CDB99C0, &qword_21BE40C00);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAA0, &qword_21BE4F178);
  v36 = v34 + *(v35 + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  v31((v34 + *(v35 + 64)), v32, v3);
  v37 = v4[1];
  v37(v33, v3);
  sub_21BB3A4CC(v39, &qword_27CDB99C0, &qword_21BE40C00);
  v37(v32, v3);
  return sub_21BB3A4CC(v13, &qword_27CDB99C0, &qword_21BE40C00);
}

uint64_t sub_21BDECE54(uint64_t a1)
{
  v7 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA50, &qword_21BE4F0E0);
  sub_21BE283FC();
  v8 = *(a1 + 32);
  sub_21BE283FC();
  swift_getKeyPath();
  sub_21BDEE574(&qword_27CDB59B8, type metadata accessor for ChecklistUserPreferences);
  sub_21BE25F1C();

  v2 = *(v6 + 96);

  v3 = (v2 ^ 1) & 1;
  if (v3 == *(v6 + 96))
  {
    *(v6 + 96) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BE25F0C();
  }

  sub_21BBBB83C();
}

uint64_t sub_21BDED000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAA8, &qword_21BE4F180);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v16 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA50, &qword_21BE4F0E0);
  sub_21BE283FC();
  v9 = v18;
  swift_getKeyPath();
  *&v16 = v9;
  sub_21BDEE574(&qword_27CDB59B8, type metadata accessor for ChecklistUserPreferences);
  sub_21BE25F1C();

  LODWORD(a1) = *(v9 + 96);

  v10 = sub_21BE2837C();
  v11 = sub_21BE27BEC();
  KeyPath = swift_getKeyPath();
  *&v16 = v10;
  *(&v16 + 1) = KeyPath;
  v17 = v11;
  sub_21BE27C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E8, &qword_21BE4F170);
  sub_21BDE06D4();
  sub_21BE27EAC();

  if (qword_27CDB4E88 != -1)
  {
    swift_once();
  }

  v13 = qword_27CDD41F8;
  v14 = sub_21BE2826C();
  (*(v5 + 32))(a2, v8, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_21BDED2A0@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD960, &qword_21BE4F060);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA68, &qword_21BE4F120);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  v17 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= *(a3 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v18 = a3 + 32 * v17;
  v19 = *(v18 + 48);
  if (*(v19 + 16))
  {
    v29[2] = v8;
    v20 = *(v18 + 56);
    v22 = *(v18 + 32);
    v21 = *(v18 + 40);

    v31 = sub_21BC2BB28(v23);
    v29[0] = swift_getKeyPath();
    v24 = swift_allocObject();
    v29[1] = a4;
    v25 = v24;
    v26 = a2[1];
    *(v24 + 24) = *a2;
    *(v24 + 40) = v26;
    v27 = a2[3];
    *(v24 + 56) = a2[2];
    *(v24 + 16) = 0;
    *(v24 + 72) = v27;
    *(v24 + 88) = v22;
    *(v24 + 96) = v21;
    *(v24 + 104) = v19;
    *(v24 + 112) = v20;
    *(v24 + 120) = v17;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_21BDEE380;
    *(v28 + 24) = v25;

    sub_21BDED634(a2, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA70, &qword_21BE4F148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD980, &qword_21BE4F070);
    sub_21BB3B038(&qword_27CDBDA78, &qword_27CDBDA70, &qword_21BE4F148);
    sub_21BDED88C();
    sub_21BE285BC();
    sub_21BBA3854(v11, v16, &qword_27CDBD960, &qword_21BE4F060);
    swift_storeEnumTagMultiPayload();
    sub_21BDED784();
    sub_21BE2784C();

    return sub_21BB3A4CC(v11, &qword_27CDBD960, &qword_21BE4F060);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_21BDED784();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BDED5EC@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21BDEBAD8(a1);
}

unint64_t sub_21BDED66C()
{
  result = qword_27CDB67B8[0];
  if (!qword_27CDB67B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB67A0, &qword_21BE4F050);
    sub_21BBF8150();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB67B8);
  }

  return result;
}

unint64_t sub_21BDED6F8()
{
  result = qword_27CDBD950;
  if (!qword_27CDBD950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD948, &qword_21BE4F058);
    sub_21BDED784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD950);
  }

  return result;
}

unint64_t sub_21BDED784()
{
  result = qword_27CDBD958;
  if (!qword_27CDBD958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD960, &qword_21BE4F060);
    sub_21BDED808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD958);
  }

  return result;
}

unint64_t sub_21BDED808()
{
  result = qword_27CDBD968;
  if (!qword_27CDBD968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD970, &qword_21BE4F068);
    sub_21BDED88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD968);
  }

  return result;
}

unint64_t sub_21BDED88C()
{
  result = qword_27CDBD978;
  if (!qword_27CDBD978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD980, &qword_21BE4F070);
    sub_21BDED924();
    sub_21BDEE044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD978);
  }

  return result;
}

unint64_t sub_21BDED924()
{
  result = qword_27CDBD988;
  if (!qword_27CDBD988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD990, &qword_21BE4F078);
    sub_21BDED9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD988);
  }

  return result;
}

unint64_t sub_21BDED9A8()
{
  result = qword_27CDBD998;
  if (!qword_27CDBD998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD9A0, &unk_21BE4F080);
    sub_21BDEDD68(&qword_27CDBD9A8, &qword_27CDBB088, &qword_21BE46088, sub_21BDEDA60);
    sub_21BDEDCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD998);
  }

  return result;
}

uint64_t sub_21BDEDA90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21BB3B038(&unk_27CDBC2D0, &qword_27CDBB020, &qword_21BE4F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BDEDB40()
{
  result = qword_27CDBD9B8;
  if (!qword_27CDBD9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB078, &qword_21BE46078);
    sub_21BDEDF30(&qword_27CDBD9C0, &qword_27CDBD9C8, &unk_21BE4F090, sub_21BDEDC24);
    sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD9B8);
  }

  return result;
}

unint64_t sub_21BDEDC24()
{
  result = qword_27CDBB068;
  if (!qword_27CDBB068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB060, &unk_21BE46068);
    sub_21BCE1FBC();
    sub_21BD4ADE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB068);
  }

  return result;
}

unint64_t sub_21BDEDCB0()
{
  result = qword_27CDBD9D0;
  if (!qword_27CDBD9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD9D8, &qword_21BE4F0A8);
    sub_21BDEDD68(&qword_27CDBD9E0, &qword_27CDBD9E8, &unk_21BE4F0B0, sub_21BDEDDEC);
    sub_21BDEDDEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD9D0);
  }

  return result;
}

uint64_t sub_21BDEDD68(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BDEDE4C()
{
  result = qword_27CDBDA00;
  if (!qword_27CDBDA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB0A8, &qword_21BE46098);
    sub_21BDEDF30(&qword_27CDBDA08, &qword_27CDBDA10, &unk_21BE4F0C0, sub_21BDEDFB8);
    sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDA00);
  }

  return result;
}

uint64_t sub_21BDEDF30(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BDEDFB8()
{
  result = qword_27CDBB098;
  if (!qword_27CDBB098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB090, &qword_21BE46090);
    sub_21BCE1FBC();
    sub_21BD4AEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB098);
  }

  return result;
}

unint64_t sub_21BDEE044()
{
  result = qword_27CDBDA18;
  if (!qword_27CDBDA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDA20, &qword_21BE4F0D0);
    sub_21BDEE12C();
    swift_getOpaqueTypeConformance2();
    sub_21BDEE574(&qword_27CDB6790, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDA18);
  }

  return result;
}

unint64_t sub_21BDEE12C()
{
  result = qword_27CDBDA28;
  if (!qword_27CDBDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDA28);
  }

  return result;
}

unint64_t sub_21BDEE1B8()
{
  result = qword_27CDBDA48;
  if (!qword_27CDBDA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD928, &qword_21BE4F010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD920, &qword_21BE4F008);
    sub_21BE2721C();
    sub_21BB3B038(&qword_27CDBDA40, &qword_27CDBD920, &qword_21BE4F008);
    sub_21BDEE574(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21BD4ADE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDA48);
  }

  return result;
}

uint64_t objectdestroyTm_41()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_21BDEE384(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1 + 1);
}

uint64_t objectdestroy_3Tm_2()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[12];

  v8 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_21BDEE574(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21BDEE5DC()
{
  v1 = [*v0 primaryAuthKitAccount];

  return v1;
}

id sub_21BDEE614(uint64_t a1)
{
  v2 = [*v1 custodianLastModifiedForAccount_];

  return v2;
}

id sub_21BDEE650(uint64_t a1)
{
  v2 = [*v1 beneficiaryLastModifiedForAccount_];

  return v2;
}

uint64_t sub_21BDEE68C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB8A28;

  return sub_21BDEEC34();
}

id static ACAccountStore.getAccountAndWait()()
{
  v0 = sub_21BE2876C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
    aBlock[4] = sub_21BDEEAC8;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BBF23E4;
    aBlock[3] = &block_descriptor_60;
    v13 = _Block_copy(aBlock);

    v14 = v9;

    [v11 aa:v13 primaryAppleAccountWithCompletion:?];
    _Block_release(v13);

    sub_21BE2875C();
    sub_21BE2877C();
    v15 = *(v1 + 8);
    v15(v5, v0);
    sub_21BE2921C();

    v15(v7, v0);
    swift_beginAccess();
    v16 = *(v8 + 16);
    v17 = v16;

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21BDEE994(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a3 + 16);
  *(a3 + 16) = a1;
  v14 = a1;

  sub_21BE2614C();
  sub_21BC51D50(a2);
  (*(v9 + 8))(v12, v8);
  dispatch_group_leave(a4);
}

uint64_t sub_21BDEEB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB8A28;

  return v11(a1, a2, a3);
}

uint64_t sub_21BDEEC50()
{
  *(v0 + 16) = sub_21BE28D7C();
  *(v0 + 24) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDEECE8, v2, v1);
}

uint64_t sub_21BDEECE8()
{
  v1 = *(v0 + 24);

  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_21BDEED80, 0, 0);
}

uint64_t sub_21BDEED80()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDEEE0C, v3, v2);
}

uint64_t sub_21BDEEE0C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_21BDEEE74, 0, 0);
}

uint64_t sub_21BDEEE74()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDEEF00, v3, v2);
}

uint64_t sub_21BDEEF00()
{
  v1 = *(v0 + 40);

  *(v0 + 48) = sub_21BD44478();

  return MEMORY[0x2822009F8](sub_21BDEEF70, 0, 0);
}

uint64_t sub_21BDEEF70()
{
  if (*(*(v0 + 48) + 16) && (v1 = sub_21BBB322C(*MEMORY[0x277CED1A0]), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 48) + 56) + 8 * v1);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v3);
}

id sub_21BDEF00C(uint64_t a1)
{
  v33 = sub_21BE26A4C();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = sub_21BE25B9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBF0D04(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21BC12FE4(v15);
    sub_21BE2614C();
    sub_21BBF0D04(a1, v13);
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_21BB3D81C(0xD00000000000001ALL, 0x800000021BE62380, &v34);
      *(v23 + 12) = 2080;
      sub_21BBF0D04(v13, v10);
      v25 = sub_21BE28A5C();
      v27 = v26;
      sub_21BC12FE4(v13);
      v28 = sub_21BB3D81C(v25, v27, &v34);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_21BB35000, v21, v22, "%s invalid deeplinkUrl: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    else
    {

      sub_21BC12FE4(v13);
    }

    return (*(v2 + 8))(v5, v33);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v30 = result;
      v31 = sub_21BE25B2C();
      sub_21BBB52D8(MEMORY[0x277D84F90]);
      v32 = sub_21BE288EC();

      [v30 openSensitiveURL:v31 withOptions:v32];

      return (*(v17 + 8))(v20, v16);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21BDEF478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_21BE2760C();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAC8, &qword_21BE4F390);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAD0, qword_21BE4F398);
  v31 = *(v29 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v15 = &v25 - v14;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v28 = *(v26 - 8);
  v16 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v18 = &v25 - v17;
  sub_21BE26EEC();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  sub_21BC5A604(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC8F0, &qword_21BE4B570);
  sub_21BB3B038(&qword_27CDBC8E8, &qword_27CDBC8F0, &qword_21BE4B570);
  sub_21BE2843C();
  sub_21BE275FC();
  v20 = sub_21BB3B038(&qword_27CDBDAD8, &qword_27CDBDAC8, &qword_21BE4F390);
  v21 = sub_21BDEF9DC();
  sub_21BE27EBC();
  (*(v30 + 8))(v8, v5);
  (*(v27 + 8))(v12, v9);
  sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
  v33 = v9;
  v34 = v5;
  v35 = v20;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  v23 = v29;
  sub_21BE27FEC();
  (*(v31 + 8))(v15, v23);
  return (*(v28 + 8))(v18, v22);
}

uint64_t sub_21BDEF8CC()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  return sub_21BE283DC();
}

uint64_t sub_21BDEF9AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

unint64_t sub_21BDEF9DC()
{
  result = qword_27CDBDAE0;
  if (!qword_27CDBDAE0)
  {
    sub_21BE2760C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDAE0);
  }

  return result;
}

uint64_t sub_21BDEFA34(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21BE260AC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v2[11] = v8;
  v2[12] = v7;

  return MEMORY[0x2822009F8](sub_21BDEFB64, v8, v7);
}

uint64_t sub_21BDEFB64()
{
  v1 = *(v0 + 72);
  *(v0 + 104) = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 112) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  *(v0 + 120) = v3;
  *(v0 + 128) = v2;

  return MEMORY[0x2822009F8](sub_21BDEFC04, v3, v2);
}

void sub_21BDEFC04()
{
  v1 = *(v0[13] + 40);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[8];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_21BDEFD18;
    v6 = v0[8];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDEFD18()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v4 = *v1;
  (*v1)[19] = v0;

  v5 = v2[17];
  sub_21BB3A4CC(v2[8], &qword_27CDB5790, &qword_21BE32800);

  v6 = v2[16];
  v7 = v2[15];
  if (v0)
  {
    v8 = sub_21BDEFF04;
  }

  else
  {
    v8 = sub_21BDEFE98;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BDEFE98()
{
  v1 = v0[14];

  v0[20] = v0[2];
  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822009F8](sub_21BDF2664, v2, v3);
}

uint64_t sub_21BDEFF04()
{
  v1 = v0[14];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822009F8](sub_21BDF2668, v2, v3);
}

uint64_t sub_21BDEFF68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21BE260AC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v2[11] = v8;
  v2[12] = v7;

  return MEMORY[0x2822009F8](sub_21BDF0098, v8, v7);
}

uint64_t sub_21BDF0098()
{
  v1 = *(v0 + 72);
  *(v0 + 104) = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 112) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  *(v0 + 120) = v3;
  *(v0 + 128) = v2;

  return MEMORY[0x2822009F8](sub_21BDF0138, v3, v2);
}

void sub_21BDF0138()
{
  v1 = *(v0[13] + 40);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[8];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_21BDF024C;
    v6 = v0[8];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDF024C()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v4 = *v1;
  (*v1)[19] = v0;

  v5 = v2[17];
  sub_21BB3A4CC(v2[8], &qword_27CDB5790, &qword_21BE32800);

  v6 = v2[16];
  v7 = v2[15];
  if (v0)
  {
    v8 = sub_21BDF03CC;
  }

  else
  {
    v8 = sub_21BBEFF84;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BDF03CC()
{
  v1 = v0[14];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822009F8](sub_21BDF0430, v2, v3);
}

uint64_t sub_21BDF0430()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  sub_21BE295EC();

  v10 = *(v7 + qword_27CDB63F0);
  v11 = *(v7 + qword_27CDB63F0 + 8);

  MEMORY[0x21CF03CA0](0xD000000000000013, 0x800000021BE62470);
  (*(v6 + 104))(v3, *MEMORY[0x277D07F58], v5);
  MEMORY[0x21CF01220](v10, v11, v3, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000020, 0x800000021BE57400);

  (*(v6 + 8))(v3, v5);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

unint64_t sub_21BDF05C8()
{
  v1 = *(type metadata accessor for PurchaseSharingItem(0) + 32);
  result = 0x6E776F6E6B6E75;
  switch(*(v0 + v1))
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x736143656C707061;
      break;
    case 0xB:
      result = 0x49746361746E6F63;
      break;
    case 0xC:
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BDF0804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDAE93C();
  v8 = v7;
  if (v6 == sub_21BDAE93C() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_21BE2995C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = *(a3 + 32);
  v13 = *(a2 + v12);
  v14 = sub_21BC5C62C(*(a1 + v12));
  v16 = v15;
  if (v14 == sub_21BC5C62C(v13) && v16 == v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BDF0918(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BDAE93C();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + *(a1 + 32)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDF09AC(uint64_t a1, uint64_t a2)
{
  sub_21BDAE93C();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 32)));
  sub_21BE28ABC();
}

uint64_t sub_21BDF0A34(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BDAE93C();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 32)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BDF0AC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BDF05C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BDF0AEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BDF0B60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PurchaseSharingItemView();
  sub_21BDF2454(v1, a1 + *(v3 + 20));
  type metadata accessor for ChecklistStateVars();
  sub_21BDF2300(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  result = sub_21BE26E9C();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_21BDF0BF4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BDF0E40();
}

uint64_t sub_21BDF0CA4(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BDF0D3C, v4, v3);
}

uint64_t sub_21BDF0D3C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCC544();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BDF0E40()
{
  v1[2] = v0;
  v2 = sub_21BE260AC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_21BE28D7C();
  v1[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v1[8] = v7;
  v1[9] = v6;

  return MEMORY[0x2822009F8](sub_21BDF0F6C, v7, v6);
}

uint64_t sub_21BDF0F6C()
{
  v1 = v0[2];
  v2 = v1 + qword_27CDB63F0;
  v3 = *(v1 + qword_27CDB63F0);
  v0[10] = v3;
  v4 = *(v2 + 8);
  v0[11] = v4;
  v5 = type metadata accessor for FamilySignpost();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v0[12] = sub_21BC84D18(v3, v4, "computeItems", 12, 2);
  v8 = qword_27CDD43C0;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_21BDF1094;
  v10 = v0[2];

  return (sub_21BE19D18)(v1 + v8);
}

uint64_t sub_21BDF1094(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 72);
  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = sub_21BDF1B08;
  }

  else
  {
    v9 = sub_21BDF11D8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BDF11D8()
{
  v1 = [*(v0 + 112) me];
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = qword_27CDD43C8;
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_21BDF1434;
    v5 = *(v0 + 16);

    return sub_21BDEFA34(v2 + v3);
  }

  else
  {
    v7 = *(v0 + 112);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 56);
    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v13 = *(v0 + 24);

    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v9, v8);
    (*(v12 + 104))(v11, *MEMORY[0x277D07F98], v13);
    MEMORY[0x21CF01220](0xD000000000000013, 0x800000021BE623E0, v11, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000030, 0x800000021BE62400);

    (*(v12 + 8))(v11, v13);
    swift_willThrow();

    v14 = *(v0 + 96);
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    sub_21BC852D8();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_21BDF1434(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_21BDF1B9C;
  }

  else
  {
    v4[19] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_21BDF155C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BDF155C()
{
  v1 = v0[19];
  v2 = v0[7];

  v3 = sub_21BCE6070(0xD000000000000010, 0x800000021BE55930, v1);

  if (v3)
  {
    v4 = [*(v0[2] + qword_27CDD43D0) aa_primaryAppleAccount];
    if (v4)
    {
      v5 = v4;
      v6 = v0[2];
      v7 = sub_21BC85A38();
      v8 = *(v6 + qword_27CDBDAF8);
      *(v6 + qword_27CDBDAF8) = v7;

      if (*(v7 + 16) && (v9 = sub_21BBB3108(0xD000000000000010, 0x800000021BE55930), (v10 & 1) != 0))
      {
        v11 = v9;
        v12 = v0[6];
        v13 = *(v7 + 56);
        v14 = sub_21BE25B9C();
        v15 = *(v14 - 8);
        (*(v15 + 16))(v12, v13 + *(v15 + 72) * v11, v14);

        v16 = 0;
      }

      else
      {

        v14 = sub_21BE25B9C();
        v15 = *(v14 - 8);
        v16 = 1;
      }

      v24 = v0[16];
      v25 = v0[14];
      v26 = v0[12];
      v27 = v0[6];
      v44 = v25;
      (*(v15 + 56))(v27, v16, 1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDB70, &unk_21BE4F590);
      v28 = (type metadata accessor for PurchaseSharingItem(0) - 8);
      v29 = *(*v28 + 72);
      v30 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21BE32770;
      v32 = (v31 + v30);
      LOBYTE(v30) = [v3 isEnabled];
      sub_21BBF0D04(v27, &v32[v28[7]]);
      *v32 = v30;
      *&v32[v28[8]] = v24;
      *&v32[v28[9]] = v3;
      v32[v28[10]] = 9;

      sub_21BB3A4CC(v27, &unk_27CDB57F0, &qword_21BE328A0);
      sub_21BC852D8();

      v33 = v0[1];

      return v33(v31);
    }

    v17 = v0[16];
    v18 = v0[14];
    v36 = v0[10];
    v35 = v0[11];
    v38 = v0[4];
    v37 = v0[5];
    v39 = v0[3];
    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v36, v35);
    (*(v38 + 104))(v37, *MEMORY[0x277D07F68], v39);
    MEMORY[0x21CF01220](0xD000000000000015, 0x800000021BE573C0, v37, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000030, 0x800000021BE62400);

    (*(v38 + 8))(v37, v39);
    swift_willThrow();
  }

  else
  {
    v17 = v0[16];
    v18 = v0[14];
    v20 = v0[10];
    v19 = v0[11];
    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[3];
    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v20, v19);
    (*(v22 + 104))(v21, *MEMORY[0x277D07F88], v23);
    MEMORY[0x21CF01220](0xD000000000000026, 0x800000021BE62440, v21, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000030, 0x800000021BE62400);

    (*(v22 + 8))(v21, v23);
    swift_willThrow();
  }

  v40 = v0[12];
  v42 = v0[5];
  v41 = v0[6];
  sub_21BC852D8();

  v43 = v0[1];

  return v43();
}

uint64_t sub_21BDF1B08()
{
  v1 = v0[7];

  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[5];
  v4 = v0[6];
  sub_21BC852D8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BDF1B9C()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[7];

  v4 = v0[18];
  v5 = v0[12];
  v7 = v0[5];
  v6 = v0[6];
  sub_21BC852D8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BDF1C40()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCC544();
}

void sub_21BDF1D04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  v7 = a1;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_21BBA932C(0, 0, v5, &unk_21BE4F5A8, v9);
}

uint64_t sub_21BDF1E34()
{
  v1 = qword_27CDBDAF0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDB68, &qword_21BE4F580);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD43C0));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD43C8));
  v3 = *(v0 + qword_27CDD43D0);
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_27CDBDAF8);
}

id sub_21BDF1EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchaseSharingItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDF1F20(uint64_t a1)
{
  v2 = qword_27CDBDAF0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDB68, &qword_21BE4F580);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD43C0));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD43C8));
  v4 = *(a1 + qword_27CDD43D0);
  swift_unknownObjectRelease();
  v5 = *(a1 + qword_27CDBDAF8);
}

void sub_21BDF1FF8()
{
  sub_21BDF20AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BDF20AC()
{
  if (!qword_27CDBDB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDB20, &qword_21BE50670);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBDB18);
    }
  }
}

void sub_21BDF2160()
{
  sub_21BBF088C();
  if (v0 <= 0x3F)
  {
    sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
    if (v1 <= 0x3F)
    {
      sub_21BB3A2A4(319, &unk_27CDB6550, 0x277D08338);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BDF227C(uint64_t a1)
{
  *(a1 + 8) = sub_21BDF2300(&qword_27CDBDB40, type metadata accessor for PurchaseSharingItem);
  result = sub_21BDF2300(&qword_27CDBDB48, type metadata accessor for PurchaseSharingItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BDF2300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BDF2348()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BDF23B4(uint64_t a1)
{
  *(a1 + 8) = sub_21BDF2300(&unk_27CDBDB50, type metadata accessor for PurchaseSharingItemProvider);
  result = sub_21BDF2300(&qword_27CDB5FC8, type metadata accessor for PurchaseSharingItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BDF2454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSharingItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDF24B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BDF2538(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BDF25B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BDF1C40();
}

id sub_21BDF266C()
{
  result = [objc_allocWithZone(type metadata accessor for FamilyChecklistAnalytics()) init];
  qword_27CDBDB90 = result;
  return result;
}

id FamilyChecklistAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FamilyChecklistAnalytics.shared.getter()
{
  if (qword_27CDB5008 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDBDB90;

  return v1;
}

uint64_t sub_21BDF28B0(char a1)
{
  if (qword_27CDB4F68 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v4 = a1;

  v1 = sub_21BBB5E60(MEMORY[0x277D84F90]);
  sub_21BCA55DC(&v4, v1);
}

uint64_t sub_21BDF2964(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_27CDB4F68 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  v6 = a3;

  v3 = sub_21BBB5E60(MEMORY[0x277D84F90]);
  sub_21BCA55DC(&v6, v3);
}

id FamilyChecklistAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyChecklistAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FamilyChecklistAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyChecklistAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static FASwiftUIHostingControllerProvider.getFamilySettingsViewController(viewModel:locationModel:pictureStore:appleAccount:accountManager:delegate:appleCardFamilySettingsViewModel:hostingViewController:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  swift_getObjectType();

  return sub_21BDF37A0(a1, a2, a3, a5, a6, a7, a8);
}

id sub_21BDF2F58(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[2];
  v26 = a1[3];
  v27 = v6;
  v28 = v7;
  v29 = *(a1 + 12);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  v10 = MEMORY[0x277D85000];
  v11 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x70);
  v12 = a1[1];
  v30[0] = *a1;
  v30[1] = v12;
  v35 = *(a1 + 12);
  v13 = v35;
  v14 = a1[5];
  v33 = a1[4];
  v15 = v33;
  v34 = v14;
  v17 = a1[3];
  v31 = a1[2];
  v16 = v31;
  v32 = v17;
  *v11 = v30[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v16;
  *(v11 + 3) = v17;
  *(v11 + 4) = v15;
  *(v11 + 5) = v14;
  *(v11 + 12) = v13;
  sub_21BC12ED0(v30, v22);
  sub_21BD10D60();
  v22[0] = sub_21BE2852C();
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *(v3 + *((*v10 & *v3) + 0x60)) = sub_21BE2774C();
  v19 = (v3 + *((*v10 & *v3) + 0x68));
  *v19 = a2;
  v19[1] = a3;
  v21.receiver = v3;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBA0, &qword_21BE4F610);
  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

id static FASwiftUIHostingControllerProvider.getLocationViewController(viewModel:pictureStore:hackfromObjC:)(void *a1, void *a2, int a3)
{
  sub_21BDFD940(a1, a2, a3, v5);
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBA0, &qword_21BE4F610));
  return sub_21BDF2F58(v5, 0, 0);
}

uint64_t static FASwiftUIHostingControllerProvider.getFamilyChecklistHeaderView()()
{
  type metadata accessor for FamilyNetworkMonitor();
  sub_21BDF471C(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor);
  sub_21BE2727C();
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBB0, &qword_21BE4F618));
  return sub_21BE2774C();
}

char *static FASwiftUIHostingControllerProvider.getCheckListController(specifiers:)()
{
  v0 = objc_allocWithZone(type metadata accessor for CheckListHostController());

  return sub_21BD92B14(v1);
}

uint64_t static FASwiftUIHostingControllerProvider.getLoadingController(cancelAction:)(uint64_t a1)
{
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBB8, qword_21BE4F620));
  sub_21BC5A604(a1);
  return sub_21BE2774C();
}

id FASwiftUIHostingControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FASwiftUIHostingControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FASwiftUIHostingControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FASwiftUIHostingControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FASwiftUIHostingControllerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BDF37A0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v77 = a7;
  v74 = a2;
  v75 = a6;
  v72 = a3;
  v73 = a5;
  v9 = type metadata accessor for FamilyLandingPageMainView();
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  v18 = [objc_allocWithZone(FAChecklistStore) init];
  LOBYTE(v79) = 1;
  v19 = v18;
  sub_21BE283EC();
  v20 = v81;
  v17[40] = v80;
  *(v17 + 6) = v20;
  v21 = v9[7];
  *&v17[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  swift_storeEnumTagMultiPayload();
  v22 = v9[8];
  *&v17[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  v23 = &v17[v9[10]];
  LOBYTE(v79) = 0;
  sub_21BE283EC();
  v24 = v81;
  *v23 = v80;
  *(v23 + 1) = v24;
  v25 = v9[13];
  swift_unknownObjectWeakInit();
  v26 = &v17[v9[14]];
  LOBYTE(v79) = 0;
  sub_21BE283EC();
  v27 = v81;
  *v26 = v80;
  *(v26 + 1) = v27;
  v28 = &v17[v9[18]];
  LOBYTE(v79) = 0;
  sub_21BE283EC();
  v29 = v81;
  *v28 = v80;
  *(v28 + 1) = v29;
  v30 = &v17[v9[20]];
  *v30 = sub_21BBDC524;
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = &v17[v9[21]];
  v32 = type metadata accessor for ChecklistStateVars();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v79 = ChecklistStateVars.init()();
  sub_21BE283EC();
  v35 = v81;
  *v31 = v80;
  v31[1] = v35;
  v36 = &v17[v9[22]];
  v79 = 0;
  sub_21BE283EC();
  v37 = v81;
  *v36 = v80;
  v36[1] = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *v17 = sub_21BBB510C;
  *(v17 + 1) = v38;
  v17[16] = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = v19;
  v40 = &v17[v9[15]];
  *v40 = sub_21BBB510C;
  *(v40 + 1) = v39;
  v40[16] = 0;
  v41 = &v17[v9[17]];
  *v41 = sub_21BBFE74C;
  *(v41 + 1) = 0;
  v41[16] = 0;
  v42 = qword_280BD76F0;
  v43 = v19;
  v44 = a1;
  if (v42 != -1)
  {
    swift_once();
  }

  v45 = &v17[v9[9]];
  type metadata accessor for ServicesStore();
  sub_21BDF471C(&qword_27CDB5750, type metadata accessor for ServicesStore);

  *v45 = sub_21BE270CC();
  v45[1] = v46;
  v47 = type metadata accessor for FamilySignpost();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *&v17[v9[23]] = sub_21BC84D18(0x20676E69646E614CLL, 0xEC00000065676170, "initToView", 10, 2);
  v50 = &v17[v9[16]];
  *v50 = sub_21BBFE770;
  *(v50 + 1) = 0;
  v50[16] = 0;
  v51 = &v17[v9[11]];
  sub_21BBDAF04();
  sub_21BDF471C(&qword_280BD8A20, sub_21BBDAF04);
  v52 = v72;
  *v51 = sub_21BE270CC();
  v51[1] = v53;
  swift_unknownObjectWeakAssign();
  *&v17[v9[12]] = a4;
  type metadata accessor for LocationViewModel();
  sub_21BDF471C(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
  v54 = a4;
  v55 = v74;
  *(v17 + 3) = sub_21BE270CC();
  *(v17 + 4) = v56;
  v57 = &v17[v9[19]];
  type metadata accessor for AppleCardFamilySettingsViewModel();
  sub_21BDF471C(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel);
  v58 = v75;
  v59 = sub_21BE270CC();
  v61 = v60;

  *v57 = v59;
  v57[1] = v61;
  v62 = v77;
  *&v17[v9[24]] = v77;
  sub_21BDF46B4(v17, v15, type metadata accessor for FamilyLandingPageMainView);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC30, &unk_21BE327F0);
  v64 = objc_allocWithZone(v63);
  v65 = MEMORY[0x277D85000];
  sub_21BDF46B4(v15, v64 + *((*MEMORY[0x277D85000] & *v64) + 0x70), type metadata accessor for FamilyLandingPageMainView);
  v75 = v43;
  sub_21BDF46B4(v15, v76, type metadata accessor for FamilyLandingPageMainView);
  sub_21BDF471C(&qword_27CDB5770, type metadata accessor for FamilyLandingPageMainView);
  v66 = v62;
  v80 = sub_21BE2852C();
  v67 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *(v64 + *((*v65 & *v64) + 0x60)) = sub_21BE2774C();
  v68 = (v64 + *((*v65 & *v64) + 0x68));
  *v68 = 0;
  v68[1] = 0;
  v78.receiver = v64;
  v78.super_class = v63;
  v69 = objc_msgSendSuper2(&v78, sel_initWithNibName_bundle_, 0, 0);
  sub_21BDF4764(v15, type metadata accessor for FamilyLandingPageMainView);

  sub_21BDF4764(v17, type metadata accessor for FamilyLandingPageMainView);
  return v69;
}

id _s14FamilyCircleUI34FASwiftUIHostingControllerProviderC033familyMemberAccountChangePasswordF004mainJ012memberToShow0hB0So06UIViewF0CSo08FAFamilyI0C_AKSo0rB0CtFZ_0(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for FamilyMemberAccountDetails();
  v7 = *(*(v6 - 1) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v68 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v68 - v13);
  MEMORY[0x28223BE20](v12);
  v70 = &v68 - v15;
  v16 = [a1 altDSID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_21BE28A0C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = [a2 altDSID];
  if (v21)
  {
    v22 = v21;
    v23 = sub_21BE28A0C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v74 = type metadata accessor for FamilyDependentPasswordResetController();
  v26 = objc_allocWithZone(v74);
  v27 = sub_21BC0C5A4(v18, v20, v23, v25);
  v73 = [objc_allocWithZone(type metadata accessor for FamilyMemberAccountDetailsViewModel()) init];
  v28 = [objc_allocWithZone(MEMORY[0x277D08210]) init];
  v29 = type metadata accessor for AgeRangeSharingViewModel();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = a2;
  v72 = sub_21BCBF078(v28, v33, v32);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v34 = (v14 + v6[9]);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = v14 + v6[11];
  LOBYTE(v76) = 0;
  v36 = v27;
  v68 = a1;
  sub_21BE283EC();
  v37 = v78;
  *v35 = v77;
  *(v35 + 1) = v37;
  v38 = v6[13];
  *(v14 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  *(v14 + v6[6]) = a1;
  *(v14 + v6[7]) = v33;
  *(v14 + v6[8]) = a3;
  v39 = a3;
  v40 = (v14 + v6[5]);
  sub_21BDF471C(&qword_27CDBDBE0, type metadata accessor for FamilyMemberAccountDetailsViewModel);
  v41 = v33;
  v42 = v39;
  v43 = v73;
  *v40 = sub_21BE270CC();
  v40[1] = v44;
  v45 = (v14 + v6[12]);
  v76 = v36;
  v46 = v36;
  sub_21BE283EC();
  v47 = v78;
  *v45 = v77;
  v45[1] = v47;
  *(v14 + v6[10]) = v72;
  v48 = v14 + v6[14];
  LOBYTE(v76) = 0;
  sub_21BE283EC();
  v49 = v78;
  *v48 = v77;
  *(v48 + 1) = v49;
  if (![v41 isChildAccount])
  {
    goto LABEL_12;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v51 = result;
    v52 = [result hasLocalSecret];

    if (v52 && [v68 isGuardian])
    {
      v53 = 0x800000021BE5D480;
      v54 = 0xD00000000000001CLL;
LABEL_13:
      String.rebrand.getter(v54, v53);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v56 = [objc_opt_self() bundleForClass_];
      v57 = sub_21BE2599C();
      v59 = v58;

      *v34 = v57;
      v34[1] = v59;
      v60 = v70;
      sub_21BC35600(v14, v70);
      v61 = v71;
      sub_21BDF46B4(v60, v71, type metadata accessor for FamilyMemberAccountDetails);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBE8, &qword_21BE4F6F8);
      v63 = objc_allocWithZone(v62);
      v64 = MEMORY[0x277D85000];
      sub_21BDF46B4(v61, v63 + *((*MEMORY[0x277D85000] & *v63) + 0x70), type metadata accessor for FamilyMemberAccountDetails);
      sub_21BDF46B4(v61, v69, type metadata accessor for FamilyMemberAccountDetails);
      sub_21BDF471C(&unk_27CDBDBF0, type metadata accessor for FamilyMemberAccountDetails);
      v77 = sub_21BE2852C();
      v65 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
      *(v63 + *((*v64 & *v63) + 0x60)) = sub_21BE2774C();
      v66 = (v63 + *((*v64 & *v63) + 0x68));
      *v66 = 0;
      v66[1] = 0;
      v75.receiver = v63;
      v75.super_class = v62;
      v67 = objc_msgSendSuper2(&v75, sel_initWithNibName_bundle_, 0, 0);
      sub_21BDF4764(v61, type metadata accessor for FamilyMemberAccountDetails);

      sub_21BDF4764(v60, type metadata accessor for FamilyMemberAccountDetails);
      return v67;
    }

LABEL_12:
    v54 = 0x44495F454C505041;
    v53 = 0xEE004C4542414C5FLL;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t _s14FamilyCircleUI34FASwiftUIHostingControllerProviderC015getSettingsViewF018resourceDictionarySo06UIViewF0CSDys11AnyHashableVypG_tFZ_0()
{
  if (qword_280BD7EB8 != -1)
  {
    swift_once();
  }

  sub_21BB3A35C(&qword_280BD7EC0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBC0, &qword_21BE4F678);
  type metadata accessor for FamilyViewsProvider();
  if (swift_dynamicCast())
  {
    v0 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView);
    *(v3 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView) = 0;

    *(v3 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 0;
  }

  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBC8, &qword_21BE4F680));
  v4[0] = sub_21BDCFB14;
  v4[1] = 0;
  v5 = 0;
  return sub_21BE2774C();
}

uint64_t sub_21BDF46B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BDF471C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BDF4764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21BDF4800@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_21BE2599C();
  v23 = v10;
  v24 = v9;

  v11 = [v7 bundleForClass_];
  v12 = sub_21BE2599C();
  v21 = v13;
  v22 = v12;

  sub_21BDF4AAC(&v29);
  v14 = [v7 bundleForClass_];
  v15 = sub_21BE2599C();
  v17 = v16;

  a5[13] = &type metadata for LocationDataItem;
  a5[14] = sub_21BDF5110();
  v18 = swift_allocObject();
  a5[10] = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *a5 = v24;
  a5[1] = v23;
  a5[2] = v22;
  a5[3] = v21;

  v19 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
  sub_21BC65EA8();
  result = sub_21BE2852C();
  a5[15] = result;
  a5[6] = 0;
  a5[7] = v15;
  a5[8] = v17;
  a5[9] = 0;
  a5[4] = 0;
  a5[5] = 0;
  return result;
}

void sub_21BDF4AAC(uint64_t a1@<X8>)
{
  v2 = sub_21BE2838C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v8 = sub_21BE289CC();
  v9 = [v7 initWithBundleIdentifier_];

  v10 = [objc_opt_self() imageDescriptorNamed_];
  v11 = [v9 prepareImageForDescriptor_];

  if (v11)
  {
    v12 = [v11 CGImage];
    if (v12)
    {
      v13 = v12;
      [v11 iconSize];
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      sub_21BE2836C();
      (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
      v14 = sub_21BE283CC();

      (*(v3 + 8))(v6, v2);
      sub_21BE2869C();
      sub_21BE26F2C();
      v15 = v19;
      v16 = v20;
      v17 = v21;
      v18 = v22;

      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      *(a1 + 24) = v17;
      *(a1 + 32) = v18;
      *(a1 + 40) = v23;
      return;
    }

    __break(1u);
  }

  sub_21BE2978C();
  __break(1u);
}

double sub_21BDF4D84@<D0>(char a1@<W0>, unint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_21BE2599C();
  v31 = v12;
  v32 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21BE33260;
  if (a2 >> 62)
  {
    v14 = sub_21BE2951C();
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  *(v13 + 56) = MEMORY[0x277D83B88];
  *(v13 + 64) = v16;
  *(v13 + 32) = v14;

  v30 = a3;
  v17 = sub_21BE2905C();
  if (v17 >> 62)
  {
    v18 = sub_21BE2951C();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v13 + 96) = v15;
  *(v13 + 104) = v16;
  *(v13 + 72) = v18 & ~(v18 >> 63);

  v19 = [v9 bundleForClass_];
  sub_21BE2599C();

  v20 = sub_21BE289DC();
  v28 = v21;
  v29 = v20;

  v22 = [v9 bundleForClass_];
  v23 = sub_21BE2599C();
  v25 = v24;

  sub_21BDF4AAC(&v35);
  *(a5 + 104) = &type metadata for LocationDataItem;
  *(a5 + 112) = sub_21BDF5110();
  v26 = swift_allocObject();
  *(a5 + 80) = v26;
  *(v26 + 16) = a1 & 1;
  *(v26 + 24) = a2;
  *(v26 + 32) = v30;
  *(v26 + 40) = a4;
  *a5 = v32;
  *(a5 + 8) = v31;
  *(a5 + 16) = v29;
  *(a5 + 24) = v28;
  *(a5 + 32) = v23;
  *(a5 + 40) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
  sub_21BC65EA8();
  *(a5 + 120) = sub_21BE2852C();
  result = 0.0;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  return result;
}

unint64_t sub_21BDF5110()
{
  result = qword_27CDBDC38;
  if (!qword_27CDBDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDC38);
  }

  return result;
}

id ScreenTimePasscodeDelegate.__allocating_init(flowStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id ScreenTimePasscodeDelegate.init(flowStore:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ScreenTimePasscodeDelegate();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_21BDF528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_21BE28D7C();
  v4[4] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDF5324, v6, v5);
}

uint64_t sub_21BDF5324()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_27CDB4F48 != -1)
    {
      swift_once();
    }

    [sub_21BDC7650() dismissWithError:qword_27CDB8C08 response:0];
    swift_unknownObjectRelease();
    sub_21BDC83CC();
  }

  **(v0 + 16) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

id ScreenTimePasscodeDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenTimePasscodeDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimePasscodeDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDF5504()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261CC();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "ST passcode authentication successful", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21BDF5638()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261CC();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "ST passcode authentication failed", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_21BE28D7C();
  v15 = v1;
  v16 = sub_21BE28D6C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_21BBA9018(0, 0, v5, &unk_21BE4F8F0, v17);
}

uint64_t sub_21BDF5904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BDF528C(a1, v4, v5, v6);
}

uint64_t sub_21BDF59F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21BDF5A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BDF5AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = *a1;
  if (!*a1)
  {
    MEMORY[0x21CF01210](0xD000000000000037, 0x800000021BE62700, 0xD000000000000010, 0x800000021BE573A0, 500);
    goto LABEL_42;
  }

  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_21BB3A35C(a2, v66);
  v62[4] = v4;
  v63 = *(a1 + 8);
  v64 = v8;
  v65 = v7;

  result = sub_21BB41E7C(v8, v7);
  if (!v10)
  {

    *&v57 = 0xE000000000000000;
    sub_21BE295EC();

    v60 = 0xD000000000000013;
    v61 = 0x800000021BE62740;
    v56 = v4;
    v57 = *(a1 + 8);
    v58 = v8;
    v59 = v7;

    v47 = sub_21BE28A5C();
    MEMORY[0x21CF03CA0](v47);

    MEMORY[0x21CF01210](0xD000000000000013, 0x800000021BE62740, 0xD000000000000010, 0x800000021BE573A0, 500);
LABEL_41:

LABEL_42:
    swift_willThrow();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v3);
    if (v4)
    {

      return __swift_destroy_boxed_opaque_existential_0Tm(v66);
    }

    return result;
  }

  v52 = v7;
  v53 = result;
  v54 = v10;
  v50 = a3;
  v11 = *(v4 + 16);
  v69 = v3;
  if (v11)
  {
    v12 = 0;
    v13 = v4 + 56;
    v49 = v11 - 1;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v51 = v14;
      v15 = (v13 + 48 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (*(v15 - 2))
        {
          v17 = v13;
          v18 = *v15;
          v19 = *(v15 - 3);

          v20 = sub_21BE2980C();

          v13 = v17;

          if (v20 < 7)
          {
            break;
          }
        }

        ++v16;
        v15 += 6;
        if (v11 == v16)
        {
          v3 = v69;
          v14 = v51;
          goto LABEL_19;
        }
      }

      v14 = v51;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21BBBCD3C(0, *(v51 + 2) + 1, 1, v51);
        v14 = result;
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        result = sub_21BBBCD3C((v21 > 1), v22 + 1, 1, v14);
        v14 = result;
      }

      v12 = v16 + 1;
      *(v14 + 2) = v22 + 1;
      v14[v22 + 32] = v20;
      v23 = v49 == v16;
      v3 = v69;
      v13 = v17;
    }

    while (!v23);
LABEL_19:
    if (!*(v14 + 2))
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  v14 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_40:

    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v53, v54);

    MEMORY[0x21CF01210](0xD000000000000021, 0x800000021BE62760, 0xD000000000000010, 0x800000021BE573A0, 500);
    goto LABEL_41;
  }

LABEL_20:
  v62[0] = v14;
  v56 = sub_21BBB62CC(MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v56);
  v48[2] = v53;
  v48[3] = v54;
  v48[4] = v3;
  v48[5] = &v56;

  sub_21BBFB9C4(sub_21BDF7044, v48, v4);

  swift_bridgeObjectRelease_n();
  v24 = v56;
  v62[2] = v56;
  v25 = v67;
  v26 = v68;
  __swift_project_boxed_opaque_existential_1Tm(v66, v67);
  v27 = *(v26 + 24);

  v62[1] = v27(v28, v25, v26);
  v29 = v67;
  v30 = v68;
  __swift_project_boxed_opaque_existential_1Tm(v66, v67);
  v31 = (*(v30 + 8))(v29, v30);
  v32 = v31;
  if (*(v24 + 16))
  {
    v33 = 1 << *(v31 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v31 + 64);
    v36 = (v33 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v37 = 0;
    v55 = v32;
    while (v35)
    {
LABEL_30:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v41 = *(*(v32 + 48) + (v40 | (v37 << 6)));
      if (*(v24 + 16))
      {
        result = sub_21BBB3230(v41);
        if (v42)
        {
          continue;
        }
      }

      result = sub_21BBB3230(v41);
      if (v38)
      {
        v54 = result;
        v43 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BC822EC();
          v43 = v60;
        }

        v45 = v54;
        v46 = *(*(v43 + 56) + 16 * v54 + 8);

        v55 = v43;
        result = sub_21BC7F56C(v45, v43);
      }
    }

    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        swift_bridgeObjectRelease_n();

        v3 = v69;
        v32 = v55;
        goto LABEL_38;
      }

      v35 = *(v32 + 64 + 8 * v39);
      ++v37;
      if (v35)
      {
        v37 = v39;
        goto LABEL_30;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_38:

    v62[3] = v32;
    sub_21BBFD750(v62, v50);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    return sub_21BBFD7AC(v62);
  }

  return result;
}

uint64_t sub_21BDF617C(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t *a5)
{
  v6 = v5;
  v93 = a3;
  v87 = a2;
  v91 = sub_21BE26A4C();
  v89 = *(v91 - 8);
  v10 = *(v89 + 64);
  v11 = MEMORY[0x28223BE20](v91);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v79 - v14;
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[3];
  v88 = a1[2];
  v92 = v17;
  v18 = a1[4];
  v19 = *(a1 + 40);
  if (!v15 || (, v20 = sub_21BC5C4D8(), v20 == 7))
  {
    LODWORD(v90) = v19;
    sub_21BE261BC();

    v21 = v93;

    v22 = v92;

    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v84 = v5;
      v26 = v25;
      v27 = v22;
      v28 = swift_slowAlloc();
      v101 = v28;
      *v26 = 136315394;
      v95 = v16;
      v96 = v15;
      v97 = v88;
      v98 = v27;
      v99 = v18;
      v100 = v90;

      v29 = sub_21BE28A5C();
      v31 = sub_21BB3D81C(v29, v30, &v101);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_21BB3D81C(v87, v21, &v101);
      _os_log_impl(&dword_21BB35000, v23, v24, "Invalid category id skipped %s in %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v28, -1, -1);
      MEMORY[0x21CF05C50](v26, -1, -1);
    }

    return (*(v89 + 8))(v13, v91);
  }

  v33 = v20;
  v34 = a4[3];
  v35 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v34);
  v36 = (*(v35 + 16))(v34, v35);
  if (*(v36 + 16))
  {
    v37 = sub_21BBB3230(v33);
    v38 = v92;
    if (v39)
    {
      v40 = *(*(v36 + 56) + 8 * v37);
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
    v38 = v92;
  }

  v81 = v33;
  v82 = a5;

  v86 = sub_21BDF729C(v40);

  v42 = *(v38 + 16);
  if (v42)
  {
    v43 = 0;
    v89 += 8;
    v44 = v38 + 48;
    v83 = MEMORY[0x277D84F90];
    *&v41 = 136315394;
    v85 = v41;
    v84 = v5;
    v80 = v42;
    v79 = v38 + 48;
    while (1)
    {
      v45 = v42 - v43;
      v46 = (v44 + 24 * v43);
      while (1)
      {
        if (v43 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v48 = *(v46 - 2);
        v47 = *(v46 - 1);
        v49 = *v46;
        if (!v47 || (v50 = *(v46 - 1), swift_bridgeObjectRetain_n(), v51 = sub_21BC5C438(), v51 == 16))
        {
          sub_21BE261BC();

          v52 = sub_21BE26A2C();
          v53 = sub_21BE28FFC();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v94 = v88;
            v95 = v48;
            *v54 = v85;
            v96 = v47;
            v97 = v49;

            v55 = sub_21BE28A5C();
            v57 = sub_21BB3D81C(v55, v56, &v94);

            *(v54 + 4) = v57;
            *(v54 + 12) = 2080;
            *(v54 + 14) = sub_21BB3D81C(v87, v93, &v94);
            _os_log_impl(&dword_21BB35000, v52, v53, "Invalid itemType skipped %s in %s", v54, 0x16u);
            v58 = v88;
            swift_arrayDestroy();
            MEMORY[0x21CF05C50](v58, -1, -1);
            MEMORY[0x21CF05C50](v54, -1, -1);
          }

          (*v89)(v90, v91);

          v38 = v92;
          goto LABEL_15;
        }

        if (sub_21BDE51A0(v51, v86))
        {
          break;
        }

LABEL_15:
        v46 += 3;
        ++v43;
        if (!--v45)
        {
          v6 = v84;
          goto LABEL_31;
        }
      }

      v59 = v83;
      result = swift_isUniquelyReferenced_nonNull_native();
      v101 = v59;
      if ((result & 1) == 0)
      {
        result = sub_21BC59E14(0, *(v59 + 16) + 1, 1);
        v59 = v101;
      }

      v6 = v84;
      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      if (v61 >= v60 >> 1)
      {
        result = sub_21BC59E14((v60 > 1), v61 + 1, 1);
        v59 = v101;
      }

      ++v43;
      *(v59 + 16) = v61 + 1;
      v83 = v59;
      v62 = (v59 + 24 * v61);
      v62[4] = v48;
      v62[5] = v47;
      v62[6] = v49;
      v38 = v92;
      v42 = v80;
      v44 = v79;
      if (v45 == 1)
      {
        goto LABEL_31;
      }
    }
  }

  v83 = MEMORY[0x277D84F90];
LABEL_31:

  v63 = v83;
  v64 = *(v83 + 16);
  if (v64)
  {
    v65 = 0;
    v66 = v83 + 40;
    v67 = MEMORY[0x277D84F90];
LABEL_33:
    v68 = v64 - v65;
    v69 = (v66 + 24 * v65);
    while (v65 < *(v63 + 16))
    {
      if (*v69)
      {
        v70 = *(v69 - 1);
        v71 = *v69;

        result = sub_21BC5C438();
        if (result != 16)
        {
          v72 = result;
          result = swift_isUniquelyReferenced_nonNull_native();
          v73 = v6;
          if ((result & 1) == 0)
          {
            result = sub_21BBBCD28(0, *(v67 + 16) + 1, 1, v67);
            v67 = result;
          }

          v75 = *(v67 + 16);
          v74 = *(v67 + 24);
          if (v75 >= v74 >> 1)
          {
            result = sub_21BBBCD28((v74 > 1), v75 + 1, 1, v67);
            v67 = result;
          }

          ++v65;
          *(v67 + 16) = v75 + 1;
          *(v67 + v75 + 32) = v72;
          v6 = v73;
          v63 = v83;
          if (v68 != 1)
          {
            goto LABEL_33;
          }

          goto LABEL_45;
        }
      }

      v69 += 3;
      ++v65;
      if (!--v68)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    __break(1u);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
LABEL_45:

    v76 = v82;
    v77 = *v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *v76;
    *v76 = 0x8000000000000000;
    result = sub_21BC807CC(v67, v81, isUniquelyReferenced_nonNull_native);
    *v76 = v95;
  }

  return result;
}

uint64_t sub_21BDF6910()
{
  if (*v0)
  {
    result = 0x676E696B6E6172;
  }

  else
  {
    result = 0x657079546D657469;
  }

  *v0;
  return result;
}

uint64_t sub_21BDF694C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546D657469 && a2 == 0xE800000000000000;
  if (v6 || (sub_21BE2995C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696B6E6172 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();

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

uint64_t sub_21BDF6A28(uint64_t a1)
{
  v2 = sub_21BDF7EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BDF6A64(uint64_t a1)
{
  v2 = sub_21BDF7EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BDF6AA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21BDF7494(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_21BDF6AD0()
{
  v1 = 25705;
  v2 = 0x736D657469;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x676E696B6E6172;
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

uint64_t sub_21BDF6B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BDF7648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BDF6B68(uint64_t a1)
{
  v2 = sub_21BDF7F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BDF6BA4(uint64_t a1)
{
  v2 = sub_21BDF7F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21BDF6BE0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21BDF77A8(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_21BDF6C24()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x795474656B637562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69726F6765746163;
  }
}

uint64_t sub_21BDF6C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BDF7A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BDF6CB0(uint64_t a1)
{
  v2 = sub_21BDF7E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BDF6CEC(uint64_t a1)
{
  v2 = sub_21BDF7E10();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21BDF6D28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BDF7B9C(a1, v6);
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

uint64_t sub_21BDF6D70@<X0>(void *a1@<X8>)
{
  v2 = sub_21BE26A4C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_21BE2578C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_21BE2577C();
  sub_21BD24E50();
  sub_21BE2576C();

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  a1[4] = v12;
  return result;
}

unint64_t sub_21BDF7064(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAF38, &unk_21BE4FB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  *(inited + 32) = 0;
  *(inited + 40) = &unk_282D85100;
  *(inited + 48) = 1;
  *(inited + 56) = &unk_282D85128;
  *(inited + 64) = 2;
  v3 = MEMORY[0x277D84F90];
  *(inited + 72) = MEMORY[0x277D84F90];
  *(inited + 80) = 3;
  if (*(a1 + 16) && (v4 = sub_21BBB3230(2u), (v5 & 1) != 0))
  {
    *(inited + 88) = *(*(a1 + 56) + 8 * v4);
  }

  else
  {
    *(inited + 88) = v3;
  }

  v6 = sub_21BBB64E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAF40, &unk_21BE45C50);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_21BDF716C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {
    v4 = sub_21BDF8378();
    v5 = sub_21BC692B8();
    result = MEMORY[0x21CF04010](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CF047C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21BC679C8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_21BE2951C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21BDF729C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21BBFD988();
  result = MEMORY[0x21CF04010](v2, &type metadata for ChecklistItemType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_21BC67DB0(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21BDF7320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_21BDF737C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21BDF73E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21BDF7428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BDF7494(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC58, &qword_21BE4FB50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BDF7EB8();
  sub_21BE29B4C();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_21BE2982C();
    v10[14] = 1;
    sub_21BE2989C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_21BDF7648(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696B6E6172 && a2 == 0xE700000000000000 || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_21BE2995C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021BE627B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21BE2995C();

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

uint64_t sub_21BDF77A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC60, &qword_21BE4FB58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BDF7F0C();
  sub_21BE29B4C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v28 = 0;
    v11 = sub_21BE2982C();
    v13 = v12;
    v23 = v11;
    v27 = 1;
    v22 = sub_21BE2989C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC68, &qword_21BE4FB60);
    v26 = 2;
    sub_21BDF7F60(&qword_280BD69B8, &qword_27CDBDC68, &qword_21BE4FB60, sub_21BDF7FDC);
    sub_21BE298AC();
    v14 = v24;
    v25 = 3;
    v15 = sub_21BE2984C();
    v16 = v9;
    v18 = v17;
    (*(v6 + 8))(v16, v5);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v20 = v22;
    *a2 = v23;
    *(a2 + 8) = v13;
    *(a2 + 16) = v20;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v18 & 1;
  }

  return result;
}

uint64_t sub_21BDF7A6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021BE62790 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x795474656B637562 && a2 == 0xEA00000000006570)
  {

    return 2;
  }

  else
  {
    v5 = sub_21BE2995C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21BDF7B9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC48, &qword_21BE4FB30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BDF7E10();
  sub_21BE29B4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC50, &qword_21BE4FB38);
  v23 = 0;
  sub_21BDF7F60(&qword_280BD69B0, &qword_27CDBDC50, &qword_21BE4FB38, sub_21BDF7E64);
  sub_21BE298AC();
  v11 = v24;
  v22 = 1;
  v12 = sub_21BE2984C();
  v20 = v13;
  v19 = v12;
  v21 = 2;
  v14 = sub_21BE2986C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v18 = v19;
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  return result;
}

unint64_t sub_21BDF7E10()
{
  result = qword_280BD6FE0;
  if (!qword_280BD6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6FE0);
  }

  return result;
}

unint64_t sub_21BDF7E64()
{
  result = qword_280BD6FE8;
  if (!qword_280BD6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6FE8);
  }

  return result;
}

unint64_t sub_21BDF7EB8()
{
  result = qword_280BD7020;
  if (!qword_280BD7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7020);
  }

  return result;
}

unint64_t sub_21BDF7F0C()
{
  result = qword_280BD7000;
  if (!qword_280BD7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7000);
  }

  return result;
}

uint64_t sub_21BDF7F60(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BDF7FDC()
{
  result = qword_280BD7008;
  if (!qword_280BD7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7008);
  }

  return result;
}

unint64_t sub_21BDF8064()
{
  result = qword_27CDBDC70;
  if (!qword_27CDBDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDC70);
  }

  return result;
}

unint64_t sub_21BDF80BC()
{
  result = qword_27CDBDC78;
  if (!qword_27CDBDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDC78);
  }

  return result;
}

unint64_t sub_21BDF8114()
{
  result = qword_27CDBDC80;
  if (!qword_27CDBDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDC80);
  }

  return result;
}

unint64_t sub_21BDF816C()
{
  result = qword_280BD6FF0;
  if (!qword_280BD6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6FF0);
  }

  return result;
}

unint64_t sub_21BDF81C4()
{
  result = qword_280BD6FF8;
  if (!qword_280BD6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6FF8);
  }

  return result;
}

unint64_t sub_21BDF821C()
{
  result = qword_280BD7010;
  if (!qword_280BD7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7010);
  }

  return result;
}

unint64_t sub_21BDF8274()
{
  result = qword_280BD7018;
  if (!qword_280BD7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7018);
  }

  return result;
}

unint64_t sub_21BDF82CC()
{
  result = qword_280BD6FD0;
  if (!qword_280BD6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6FD0);
  }

  return result;
}

unint64_t sub_21BDF8324()
{
  result = qword_280BD6FD8;
  if (!qword_280BD6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6FD8);
  }

  return result;
}

unint64_t sub_21BDF8378()
{
  result = qword_27CDB60E0;
  if (!qword_27CDB60E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB60E0);
  }

  return result;
}

uint64_t sub_21BDF83D4()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = sub_21BDFD218(v33[0]);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_21BDFAF3C(*(v2 + 16), 0);
    v5 = sub_21BDFD0C0(v33, (v4 + 4), v3, v2);

    sub_21BC50480();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v33[0] = v4;
  sub_21BDFC1A0(v33);

  v6 = v33[0];
  v7 = v33[0][2];
  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v10 = 4;
    do
    {
      if (v8 >= v6[2])
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v11 = v6[v10];
      v33[0] = sub_21BE2917C();
      v33[1] = v12;
      v13 = sub_21BE28B8C();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21BBBC990(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = sub_21BBBC990((v16 > 1), v17 + 1, 1, v9);
      }

      ++v8;
      *(v9 + 2) = v17 + 1;
      v18 = &v9[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v10 += 2;
    }

    while (v7 != v8);
    v33[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
    sub_21BB3B038(&qword_27CDBDD00, &qword_27CDB6EF0, &unk_21BE33800);
    v19 = sub_21BE28BAC();
    v21 = v20;

    v22 = v6[2];

    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    if (v22 == 1)
    {
      v32 = 0x800000021BE627F0;
    }

    else
    {
      v32 = 0x800000021BE627D0;
    }

    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21BE32770;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = sub_21BBBEFE8();
    *(v28 + 32) = v19;
    *(v28 + 40) = v21;
    v29 = objc_opt_self();

    v30 = [v29 bundleForClass_];
    sub_21BE2599C();

    v27 = sub_21BE289DC();
  }

  else
  {

    type metadata accessor for ConfirmChildAgeViewModel();
    v25 = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    v27 = sub_21BE2599C();
  }

  return v27;
}

void sub_21BDF88C8()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();
  v4 = v3;

  qword_27CDBDC88 = v2;
  unk_27CDBDC90 = v4;
}

uint64_t sub_21BDF8984@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = *(a1 + 8);
  v13 = sub_21BCD11F4();
  v14 = [v13 me];

  v15 = [v14 dsid];
  if (v15)
  {
    v35 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v17 = v36;
    v36 = v15;
    MEMORY[0x28223BE20](v16);
    *(&v34 - 2) = &v36;
    v18 = sub_21BC9DAC4(sub_21BDFD8D8, (&v34 - 4), v17);

    sub_21BE2614C();
    v19 = v15;
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FCC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = a2;
      v25 = v24;
      v36 = v24;
      *v22 = 136315650;
      *(v22 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v36);
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v15;
      *(v22 + 22) = 1024;
      *(v22 + 24) = v18 & 1;
      v26 = v19;
      _os_log_impl(&dword_21BB35000, v20, v21, "%s %@ auto sharing: %{BOOL}d", v22, 0x1Cu);
      sub_21BB3A4CC(v23, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      v27 = v25;
      a2 = v34;
      MEMORY[0x21CF05C50](v27, -1, -1);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    else
    {
    }

    result = (*(v5 + 8))(v11, v35);
    v33 = v18 & 1;
  }

  else
  {
    sub_21BE2614C();
    v28 = sub_21BE26A2C();
    v29 = sub_21BE28FDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v36);
      _os_log_impl(&dword_21BB35000, v28, v29, "%s locationToggleBinding no myDSID!!", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x21CF05C50](v31, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
    v33 = 0;
  }

  *a2 = v33;
  return result;
}

uint64_t sub_21BDF8DC4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  *v28 = *(a4 + 40);
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  sub_21BE2614C();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, v28);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v15;
    _os_log_impl(&dword_21BB35000, v16, v17, "%s Attempting update to newState: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x21CF05C50](v19, -1, -1);
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_21BE28D8C();
  v20 = sub_21BE28DAC();
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  sub_21BE28D7C();
  sub_21BC12ED0(a4, v28);
  v21 = sub_21BE28D6C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  v24 = *(a4 + 80);
  *(v22 + 96) = *(a4 + 64);
  *(v22 + 112) = v24;
  *(v22 + 128) = *(a4 + 96);
  v25 = *(a4 + 16);
  *(v22 + 32) = *a4;
  *(v22 + 48) = v25;
  v26 = *(a4 + 48);
  *(v22 + 64) = *(a4 + 32);
  *(v22 + 80) = v26;
  *(v22 + 136) = v15;
  sub_21BBA932C(0, 0, v9, &unk_21BE50018, v22);
}

uint64_t sub_21BDF90D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 292) = a5;
  *(v5 + 200) = a4;
  v6 = sub_21BE26A4C();
  *(v5 + 208) = v6;
  v7 = *(v6 - 8);
  *(v5 + 216) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  sub_21BE28D7C();
  *(v5 + 248) = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  *(v5 + 256) = v10;
  *(v5 + 264) = v9;

  return MEMORY[0x2822009F8](sub_21BDF91E8, v10, v9);
}

uint64_t sub_21BDF91E8()
{
  v24 = v0;
  v1 = *(*(v0 + 200) + 8);
  v2 = sub_21BCD11F4();
  v3 = [v2 me];

  v4 = [v3 dsid];
  *(v0 + 272) = v4;

  if (v4)
  {
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = sub_21BDF9490;
    v6 = *(v0 + 292);

    return sub_21BCD4AC8(v6, v4);
  }

  else
  {
    v8 = *(v0 + 248);
    v9 = *(v0 + 224);

    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 208);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v23);
      _os_log_impl(&dword_21BB35000, v10, v11, "%s locationToggleBinding no memberDSID!!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v18 = *(v0 + 200);
    *(v0 + 120) = *(v18 + 40);
    *(v0 + 288) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
    *(v0 + 136) = *(v18 + 56);
    *(v0 + 289) = 0;
    sub_21BE2840C();
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    v21 = *(v0 + 224);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_21BDF9490(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 293) = a1;

  v4 = *(v2 + 264);
  v5 = *(v2 + 256);

  return MEMORY[0x2822009F8](sub_21BDF95B8, v5, v4);
}

uint64_t sub_21BDF95B8()
{
  v33 = v0;
  v1 = *(v0 + 293);
  v2 = *(v0 + 248);

  if (v1)
  {
    v3 = *(v0 + 232);
    sub_21BE2614C();
    v4 = sub_21BE26A2C();
    v5 = sub_21BE28FCC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 232);
    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v32);
      _os_log_impl(&dword_21BB35000, v4, v5, "%s automaticLocationSharing toggle flipped", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x21CF05C50](v11, -1, -1);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 292);
    LOBYTE(v32) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD00000000000001ELL;
    v14 = MEMORY[0x277D839B0];
    *(inited + 40) = 0x800000021BE5AE60;
    *(inited + 72) = v14;
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = v12;

    v15 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v32, v15);
  }

  else
  {
    v16 = *(v0 + 240);
    sub_21BE2614C();
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FCC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 240);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v32);
      _os_log_impl(&dword_21BB35000, v17, v18, "%s automaticLocationSharing toggle failure", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v22 + 8))(v20, v21);
    *(v0 + 152) = *(*(v0 + 200) + 56);
    *(v0 + 290) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
  }

  v25 = *(v0 + 272);
  v26 = *(v0 + 200);
  *(v0 + 104) = *(v26 + 40);
  *(v0 + 168) = *(v26 + 40);
  *(v0 + 291) = 0;
  *(v0 + 184) = *(v0 + 112);
  sub_21BDFD868(v0 + 184, v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();

  sub_21BB3A4CC(v0 + 104, &qword_27CDBBB50, &unk_21BE333D0);
  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  v29 = *(v0 + 224);

  v30 = *(v0 + 8);

  return v30();
}

id sub_21BDF99E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC98, &qword_21BE4FF58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCA0, &qword_21BE4FF60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCA8, &qword_21BE4FF68);
  sub_21BB3B038(&qword_27CDBDCB0, &qword_27CDBDCA8, &qword_21BE4FF68);
  sub_21BE27CFC();
  v33 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  sub_21BB3B038(&qword_27CDBDCB8, &qword_27CDBDC98, &qword_21BE4FF58);
  sub_21BE280DC();

  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCC0, &qword_21BE4FF70);
  sub_21BDFABD4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCD8, &qword_21BE4FF78);
  v14 = sub_21BB3B038(&qword_27CDBDCE0, &qword_27CDBDCD8, &qword_21BE4FF78);
  v32[0] = v13;
  v32[1] = v14;
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  sub_21BB5A07C(v12);
  v15 = swift_allocObject();
  v16 = *(v2 + 80);
  *(v15 + 80) = *(v2 + 64);
  *(v15 + 96) = v16;
  *(v15 + 112) = *(v2 + 96);
  v17 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v17;
  v18 = *(v2 + 48);
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = v18;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCE8, &qword_21BE4FF80) + 36));
  *v19 = sub_21BDFAD24;
  v19[1] = v15;
  v19[2] = 0;
  v19[3] = 0;
  v20 = swift_allocObject();
  v21 = *(v2 + 80);
  *(v20 + 80) = *(v2 + 64);
  *(v20 + 96) = v21;
  *(v20 + 112) = *(v2 + 96);
  v22 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v22;
  v23 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v23;
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCF0, &qword_21BE4FF88) + 36));
  *v24 = 0;
  v24[1] = 0;
  v24[2] = sub_21BDFAD8C;
  v24[3] = v20;
  v30 = *(v2 + 24);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC12ED0(v2, v32);
  sub_21BC12ED0(v2, v32);
  sub_21BC2ACA4();
  v25 = sub_21BE26BFC();
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCF8, &qword_21BE4FF90) + 36));
  v27 = v30;
  *v26 = v25;
  v26[1] = v27;

  return v27;
}

uint64_t sub_21BDF9E88@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  v18 = v8;
  v19 = v10;
  sub_21BB41FA4();
  sub_21BE27DBC();
  v11 = [v6 bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  v18 = v12;
  v19 = v14;
  sub_21BE27DBC();
  v15 = sub_21BE2825C();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_21BE2821C();
}

uint64_t sub_21BDFA0E0()
{
  v0 = sub_21BE278CC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCD8, &qword_21BE4FF78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_21BE278BC();
  sub_21BE26EDC();
  v7 = sub_21BB3B038(&qword_27CDBDCE0, &qword_27CDBDCD8, &qword_21BE4FF78);
  MEMORY[0x21CF02AD0](v6, v2, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21BDFA278@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v9 = sub_21BE27D8C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21BBC7C7C(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

void sub_21BDFA3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28[-v4];
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 8);
  v12 = sub_21BCD11F4();
  v13 = [v12 me];

  if (v13)
  {
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v28[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0x6976614E77656976;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xEF6F546465746167;
    strcpy((inited + 48), "LocationView");
    *(inited + 61) = 0;
    *(inited + 62) = -5120;

    v15 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(v28, v15);

    v16 = sub_21BE28DAC();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_21BE28D7C();
    sub_21BC12ED0(a1, v28);
    v17 = v13;
    v18 = sub_21BE28D6C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    v21 = *(a1 + 80);
    *(v19 + 96) = *(a1 + 64);
    *(v19 + 112) = v21;
    v22 = *(a1 + 96);
    v23 = *(a1 + 16);
    *(v19 + 32) = *a1;
    *(v19 + 48) = v23;
    v24 = *(a1 + 48);
    *(v19 + 64) = *(a1 + 32);
    *(v19 + 80) = v24;
    *(v19 + 128) = v22;
    *(v19 + 136) = v17;
    sub_21BBA932C(0, 0, v5, &unk_21BE4FFB0, v19);
  }

  else
  {
    sub_21BE2614C();
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FDC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21BB35000, v25, v26, "No 'me' in family", v27, 2u);
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_21BDFA75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21BE28D7C();
  v5[3] = sub_21BE28D6C();
  v8 = *(a4 + 8);
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_21BDFA818;

  return sub_21BCCEADC(a5);
}

uint64_t sub_21BDFA818()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v7 = *v0;

  *(v1 + 40) = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDFA958, v5, v4);
}

uint64_t sub_21BDFA958()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBAFEE4, v5, v4);
}

uint64_t sub_21BDFA9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-v4 - 8];
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  sub_21BC12ED0(a1, v15);
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(a1 + 80);
  *(v8 + 96) = *(a1 + 64);
  *(v8 + 112) = v10;
  *(v8 + 128) = *(a1 + 96);
  v11 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v11;
  v12 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v12;
  sub_21BBA932C(0, 0, v5, &unk_21BE4FFA0, v8);
}

id sub_21BDFAB24@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21BDF99E8(a1);
}

unint64_t sub_21BDFABD4()
{
  result = qword_27CDBDCC8;
  if (!qword_27CDBDCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCA0, &qword_21BE4FF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDC98, &qword_21BE4FF58);
    sub_21BB3B038(&qword_27CDBDCB8, &qword_27CDBDC98, &qword_21BE4FF58);
    swift_getOpaqueTypeConformance2();
    sub_21BDFACD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDCC8);
  }

  return result;
}

unint64_t sub_21BDFACD0()
{
  result = qword_27CDBDCD0;
  if (!qword_27CDBDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDCD0);
  }

  return result;
}

uint64_t objectdestroyTm_42()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_21BDFAD94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC3400C();
}

uint64_t sub_21BDFAE44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BDFAEC4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

void *sub_21BDFAF3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD10, &qword_21BE50008);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21BDFAFC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_21BDFB09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
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

char *sub_21BDFB1CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A70, &qword_21BE32FE0);
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

char *sub_21BDFB2C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F0, &qword_21BE32F60);
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

char *sub_21BDFB3CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA0, &qword_21BE33018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21BDFB4F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD10, &qword_21BE50008);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD08, &qword_21BE50000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21BDFB628(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F8, &qword_21BE32F68);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A00, &qword_21BE32F70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BDFB75C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD40, &qword_21BE50090);
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

void *sub_21BDFB87C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD18, &qword_21BE50068);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB8060, &qword_21BE3BDC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BDFBA14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD20, &qword_21BE50070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21BDFBB40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
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

size_t sub_21BDFBC78(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_21BDFBE54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD28, &qword_21BE50078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BDFBF74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A30, &qword_21BE32F98);
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

char *sub_21BDFC080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD48, &qword_21BE50098);
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

void sub_21BDFC1A0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21BDFD5E8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_21BDFC20C(v4);
  *a1 = v2;
}

void sub_21BDFC20C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21BE2991C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD08, &qword_21BE50000);
        v5 = sub_21BE28C7C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_21BDFC48C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21BDFC314(0, v2, 1, a1);
  }
}

void sub_21BDFC314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v29 = *a4;
    v4 = *a4 + 16 * a3;
    v5 = a1 - a3;
    v6 = &off_2782F5000;
    v7 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_5:
    v27 = v4;
    v28 = a3;
    v26 = v5;
    while (1)
    {
      v8 = *(v4 - 16);
      v9 = *v4;
      v10 = v8;
      v11 = [v9 v6[257]];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 v7[236]];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v10 v6[257]];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 v7[236]];
        v17 = v9;
        v18 = v6;
        v19 = v7;
        v20 = v16;

        v21 = v13 < v20;
        v7 = v19;
        v6 = v18;
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v13 > 0)
        {
          goto LABEL_4;
        }
      }

      if (!v29)
      {
        break;
      }

      v22 = *v4;
      v23 = *(v4 + 8);
      *v4 = *(v4 - 16);
      *(v4 - 8) = v23;
      *(v4 - 16) = v22;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v28 + 1;
        v4 = v27 + 16;
        v5 = v26 - 1;
        if (v28 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21BDFC48C(void ***a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_110:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = v4;
LABEL_113:
      v4 = *(v96 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v97 = *&v96[16 * v4];
          v98 = v96;
          v99 = *&v96[16 * v4 + 24];
          sub_21BDFCC7C((*a3 + 16 * v97), (*a3 + 16 * *&v96[16 * v4 + 16]), (*a3 + 16 * v99), v8);
          if (v6)
          {
            goto LABEL_121;
          }

          if (v99 < v97)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_21BDFD0AC(v98);
          }

          if (v4 - 2 >= *(v98 + 2))
          {
            goto LABEL_137;
          }

          v100 = &v98[16 * v4];
          *v100 = v97;
          *(v100 + 1) = v99;
          sub_21BDFD020(v4 - 1);
          v96 = v98;
          v4 = *(v98 + 2);
          if (v4 <= 1)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_147;
      }

LABEL_121:

      return;
    }

LABEL_143:
    v96 = sub_21BDFD0AC(v4);
    goto LABEL_113;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = (v8 + 1);
  if (v8 + 1 < v7)
  {
    v104 = v9;
    v106 = v6;
    v4 = *a3;
    v12 = 16 * v8;
    v13 = *(*a3 + 16 * v8);
    v14 = *(*a3 + 16 * v11);
    v15 = v13;
    v16 = [v14 memberSortOrder];
    if (v16)
    {
      v8 = v16;
      v114 = [v16 integerValue];
    }

    else
    {
      v114 = 0;
    }

    v17 = [v15 memberSortOrder];
    if (v17)
    {
      v8 = v17;
      v112 = [v17 integerValue];

      v14 = v15;
      v15 = v8;
    }

    else
    {
      v112 = 1;
    }

    v11 = (v10 + 2);
    if (v10 + 2 < v7)
    {
      v101 = v10;
      v4 += 16 * v10 + 32;
      v110 = v7;
      do
      {
        v18 = *(v4 - 16);
        v19 = *v4;
        v20 = v18;
        v21 = [v19 memberSortOrder];
        if (v21)
        {
          v8 = v21;
          v22 = [v21 integerValue];
        }

        else
        {
          v22 = 0;
        }

        v23 = [v20 memberSortOrder];
        if (v23)
        {
          v8 = v23;
          v24 = [v23 integerValue];

          if (v114 < v112 == v22 >= v24)
          {
            goto LABEL_22;
          }
        }

        else
        {

          if (v114 < v112 == v22 > 0)
          {
            goto LABEL_22;
          }
        }

        v11 = (v11 + 1);
        v4 += 16;
      }

      while (v110 != v11);
      v11 = v110;
LABEL_22:
      v10 = v101;
    }

    v9 = v104;
    v6 = v106;
    if (v114 < v112)
    {
      if (v11 < v10)
      {
        goto LABEL_140;
      }

      if (v10 < v11)
      {
        v25 = 16 * v11 - 16;
        v26 = v11;
        v27 = v10;
        do
        {
          v26 = (v26 - 1);
          if (v27 != v26)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_146;
            }

            v30 = (v29 + v12);
            v31 = (v29 + v25);
            v32 = *(v29 + v12);
            v33 = *(v29 + v12 + 8);
            if (v12 != v25 || v30 >= v31 + 1)
            {
              *v30 = *v31;
            }

            v28 = v29 + v25;
            *v28 = v32;
            *(v28 + 8) = v33;
          }

          v27 = (v27 + 1);
          v25 -= 16;
          v12 += 16;
        }

        while (v27 < v26);
      }
    }
  }

  v34 = a3[1];
  if (v11 >= v34)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_139;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_58;
  }

  v35 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_141;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v10)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v11 == v35)
  {
    goto LABEL_58;
  }

  v105 = v9;
  v107 = v6;
  v36 = *a3;
  v37 = *a3 + 16 * v11;
  v102 = v10;
  v4 = v10 - v11;
  v109 = v35;
LABEL_45:
  v113 = v37;
  v115 = v11;
  v111 = v4;
  while (1)
  {
    v38 = *(v37 - 16);
    v39 = *v37;
    v40 = v38;
    v41 = [v39 memberSortOrder];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 integerValue];
    }

    else
    {
      v43 = 0;
    }

    v44 = [v40 memberSortOrder];
    if (v44)
    {
      v45 = v44;
      v8 = [v44 integerValue];

      if (v43 >= v8)
      {
        goto LABEL_44;
      }
    }

    else
    {

      if (v43 > 0)
      {
        goto LABEL_44;
      }
    }

    if (!v36)
    {
      break;
    }

    v46 = *v37;
    v47 = *(v37 + 8);
    *v37 = *(v37 - 16);
    *(v37 - 8) = v47;
    *(v37 - 16) = v46;
    v37 -= 16;
    if (__CFADD__(v4++, 1))
    {
LABEL_44:
      v11 = (v115 + 1);
      v37 = v113 + 16;
      v4 = v111 - 1;
      if ((v115 + 1) != v109)
      {
        goto LABEL_45;
      }

      v11 = v109;
      v9 = v105;
      v6 = v107;
      v10 = v102;
LABEL_58:
      if (v11 < v10)
      {
        goto LABEL_138;
      }

      v49 = v9;
      v8 = v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v9 = v49;
      }

      else
      {
        v9 = sub_21BBBCBFC(0, *(v49 + 2) + 1, 1, v49);
      }

      v4 = *(v9 + 2);
      v50 = *(v9 + 3);
      v51 = v4 + 1;
      if (v4 >= v50 >> 1)
      {
        v9 = sub_21BBBCBFC((v50 > 1), v4 + 1, 1, v9);
      }

      *(v9 + 2) = v51;
      v52 = &v9[16 * v4];
      *(v52 + 4) = v10;
      *(v52 + 5) = v11;
      v53 = *a1;
      if (!*a1)
      {
        goto LABEL_148;
      }

      if (v4)
      {
        while (1)
        {
          v54 = v51 - 1;
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v55 = *(v9 + 4);
            v56 = *(v9 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_78:
            if (v58)
            {
              goto LABEL_127;
            }

            v71 = &v9[16 * v51];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_130;
            }

            v77 = &v9[16 * v54 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_133;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_134;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v54 = v51 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v81 = &v9[16 * v51];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_92:
          if (v76)
          {
            goto LABEL_129;
          }

          v84 = &v9[16 * v54];
          v86 = *(v84 + 4);
          v85 = *(v84 + 5);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_132;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_99:
          v4 = v54 - 1;
          if (v54 - 1 >= v51)
          {
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (!*a3)
          {
            goto LABEL_145;
          }

          v92 = v9;
          v93 = *&v9[16 * v4 + 32];
          v94 = *&v9[16 * v54 + 40];
          sub_21BDFCC7C((*a3 + 16 * v93), (*a3 + 16 * *&v9[16 * v54 + 32]), (*a3 + 16 * v94), v53);
          if (v6)
          {
            goto LABEL_121;
          }

          if (v94 < v93)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_21BDFD0AC(v92);
          }

          if (v4 >= *(v92 + 2))
          {
            goto LABEL_124;
          }

          v95 = &v92[16 * v4];
          *(v95 + 4) = v93;
          *(v95 + 5) = v94;
          sub_21BDFD020(v54);
          v9 = v92;
          v51 = *(v92 + 2);
          if (v51 <= 1)
          {
            goto LABEL_3;
          }
        }

        v59 = &v9[16 * v51 + 32];
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_125;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_126;
        }

        v66 = &v9[16 * v51];
        v68 = *v66;
        v67 = *(v66 + 1);
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_128;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_131;
        }

        if (v70 >= v62)
        {
          v88 = &v9[16 * v54 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_135;
          }

          if (v57 < v91)
          {
            v54 = v51 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_110;
      }

      goto LABEL_4;
    }
  }

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
}

uint64_t sub_21BDFCC7C(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 4;
  if (v9 < v12)
  {
    v13 = 2 * v9;
    v14 = a4;
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, v13 * 8);
      v5 = __dst;
    }

    v16 = &v14[v13];
    if (v7 < 16 || v5 >= v4)
    {
LABEL_24:
      v29 = v6;
      goto LABEL_50;
    }

    v50 = &v14[v13];
    while (1)
    {
      v17 = v5;
      v18 = *v14;
      v19 = *v5;
      v20 = v18;
      v21 = [v19 memberSortOrder];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 integerValue];
      }

      else
      {
        v23 = 0;
      }

      v24 = [v20 memberSortOrder];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 integerValue];

        if (v23 >= v26)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (v23 > 0)
        {
LABEL_20:
          v27 = v14;
          v28 = v6 == v14;
          v14 += 2;
          v5 = v17;
          if (v28)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v6 = *v27;
          goto LABEL_22;
        }
      }

      v27 = v17;
      v5 = v17 + 2;
      if (v6 != v17)
      {
        goto LABEL_21;
      }

LABEL_22:
      v6 += 2;
      v16 = v50;
      if (v14 >= v50 || v5 >= v4)
      {
        goto LABEL_24;
      }
    }
  }

  v30 = 2 * v12;
  if (a4 != __dst || &__dst[v30] <= a4)
  {
    v32 = a4;
    memmove(a4, __dst, 16 * v12);
    v5 = __dst;
    a4 = v32;
  }

  v51 = a4;
  v16 = &a4[v30];
  if (v10 < 16)
  {
    v14 = a4;
    goto LABEL_49;
  }

  v14 = a4;
  if (v5 <= v6)
  {
LABEL_49:
    v29 = v5;
    goto LABEL_50;
  }

  v33 = &off_2782F5000;
  do
  {
    v48 = v5;
    v34 = v5 - 2;
    v4 -= 2;
    v35 = v16;
    v49 = v5 - 2;
    while (1)
    {
      v36 = *(v35 - 2);
      v35 -= 16;
      v37 = *v34;
      v38 = v36;
      v39 = v37;
      v40 = [v38 v33[257]];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 integerValue];
      }

      else
      {
        v42 = 0;
      }

      v43 = [v39 v33[257]];
      if (!v43)
      {
        break;
      }

      v44 = v43;
      v45 = [v43 integerValue];

      if (v42 < v45)
      {
        goto LABEL_42;
      }

LABEL_40:
      if (v4 + 2 != v16)
      {
        *v4 = *v35;
      }

      v4 -= 2;
      v16 = v35;
      v33 = &off_2782F5000;
      v34 = v49;
      if (v35 <= v51)
      {
        v16 = v35;
        v14 = v51;
        v29 = v48;
        goto LABEL_50;
      }
    }

    if (v42 > 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v29 = v49;
    if (v4 + 2 != v48)
    {
      *v4 = *v49;
    }

    v14 = v51;
    v33 = &off_2782F5000;
    if (v16 <= v51)
    {
      break;
    }

    v5 = v49;
  }

  while (v49 > v6);
LABEL_50:
  v46 = (v16 - v14 + (v16 - v14 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v29 != v14 || v29 >= (v14 + v46))
  {
    memmove(v29, v14, v46);
  }

  return 1;
}

uint64_t sub_21BDFD020(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21BDFD0AC(v3);
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

void *sub_21BDFD0C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      LOBYTE(v17) = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      v11 += 16;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21BDFD218(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21BC70B40(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_21BC70CA4(v9, v4, v2);
  result = MEMORY[0x21CF05C50](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BDFD378(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5858, &unk_21BE32950);
  result = sub_21BE297DC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v28 = *(*(v4 + 56) + v16);
    v17 = *(v9 + 40);
    v18 = *(*(v4 + 48) + 8 * v16);
    result = sub_21BE293FC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v18;
    *(*(v9 + 56) + v22) = v28;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21BDFD610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  return sub_21BE2940C() & 1;
}

uint64_t sub_21BDFD674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[17];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BDFA75C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_21BDFD7A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 136);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BDF90D8(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_21BDFD868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E28, &qword_21BE33898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDFD8D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  return sub_21BE2940C() & 1;
}

uint64_t sub_21BDFD940@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v47 = sub_21BE26A4C();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v47);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v58) = 0;
  sub_21BE283EC();
  LODWORD(v11) = v59;
  v57 = v60;
  LOBYTE(v58) = 0;
  sub_21BE283EC();
  v55 = v59;
  v54 = v60;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_21BE2599C();
  v52 = v15;
  v53 = v14;

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_21BE295EC();

  v59 = 91;
  v60 = 0xE100000000000000;
  if (qword_27CDB5010 != -1)
  {
    swift_once();
  }

  MEMORY[0x21CF03CA0](qword_27CDBDC88, unk_27CDBDC90);
  MEMORY[0x21CF03CA0](0xD000000000000025, 0x800000021BE62850);
  v50 = v60;
  v51 = v59;
  type metadata accessor for LocationViewModel();
  sub_21BDAB0B8();
  v16 = a1;
  v17 = sub_21BE270CC();
  v48 = v18;
  v49 = v17;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v19 = a2;
  v20 = sub_21BE270CC();
  v22 = v21;
  sub_21BE2614C();
  v23 = v16;
  v24 = sub_21BE26A2C();
  v25 = sub_21BE28FCC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = v7;
    v27 = v26;
    v28 = swift_slowAlloc();
    v46 = v11;
    v11 = v28;
    v59 = v28;
    *v27 = 136315138;
    swift_getKeyPath();
    v43 = v10;
    v45 = v22;
    v29 = v20;
    swift_getKeyPath();
    v42 = v19;
    sub_21BE26CAC();

    v30 = v58;
    v31 = sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v32 = MEMORY[0x21CF03DF0](v30, v31);
    v34 = v33;

    v35 = sub_21BB3D81C(v32, v34, &v59);

    *(v27 + 4) = v35;
    v20 = v29;
    v22 = v45;
    _os_log_impl(&dword_21BB35000, v24, v25, "Location view member DSIDs %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v36 = v11;
    LOBYTE(v11) = v46;
    MEMORY[0x21CF05C50](v36, -1, -1);
    MEMORY[0x21CF05C50](v27, -1, -1);

    result = (*(v44 + 8))(v43, v47);
  }

  else
  {

    result = (*(v7 + 8))(v10, v47);
  }

  v38 = v56 & 1;
  v39 = v48;
  *a4 = v49;
  *(a4 + 8) = v39;
  *(a4 + 16) = v20;
  *(a4 + 24) = v22;
  *(a4 + 32) = v38;
  *(a4 + 40) = v11;
  *(a4 + 48) = v57;
  *(a4 + 56) = v55;
  v40 = v53;
  *(a4 + 64) = v54;
  *(a4 + 72) = v40;
  v41 = v51;
  *(a4 + 80) = v52;
  *(a4 + 88) = v41;
  *(a4 + 96) = v50;
  return result;
}

unint64_t sub_21BDFDDDC()
{
  result = qword_27CDBDD58;
  if (!qword_27CDBDD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCF8, &qword_21BE4FF90);
    sub_21BDFDE94();
    sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDD58);
  }

  return result;
}

unint64_t sub_21BDFDE94()
{
  result = qword_27CDBDD60;
  if (!qword_27CDBDD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCF0, &qword_21BE4FF88);
    sub_21BDFDF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDD60);
  }

  return result;
}

unint64_t sub_21BDFDF20()
{
  result = qword_27CDBDD68;
  if (!qword_27CDBDD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCE8, &qword_21BE4FF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCA0, &qword_21BE4FF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCC0, &qword_21BE4FF70);
    sub_21BDFABD4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCD8, &qword_21BE4FF78);
    sub_21BB3B038(&qword_27CDBDCE0, &qword_27CDBDCD8, &qword_21BE4FF78);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDD68);
  }

  return result;
}

uint64_t sub_21BDFE0B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BDFE148(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_21BE286FC();
}

uint64_t sub_21BDFE318@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v36 = sub_21BE27A2C();
  v34 = *(v36 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE2754C();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDDF8, &qword_21BE502B0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE00, &qword_21BE502B8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v32 - v23;
  *v20 = sub_21BE275DC();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE08, &qword_21BE502C0);
  sub_21BDFE680(a1, a2, &v20[*(v25 + 44)]);
  v26 = sub_21BE2832C();
  KeyPath = swift_getKeyPath();
  v28 = &v20[*(v17 + 44)];
  *v28 = KeyPath;
  v28[1] = v26;
  if ((a4 & 1) == 0)
  {

    sub_21BE28FEC();
    v29 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BCBC920(a3, 0);
    (*(v32 + 8))(v15, v33);
    LOBYTE(a3) = v37;
  }

  if (a3)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.5;
  }

  sub_21BBB7D84(v20, v24, &qword_27CDBDDF8, &qword_21BE502B0);
  *&v24[*(v21 + 36)] = v30;
  sub_21BE27A0C();
  sub_21BDFFCE8();
  sub_21BE2805C();
  (*(v34 + 8))(v11, v36);
  return sub_21BB3A4CC(v24, &qword_27CDBDE00, &qword_21BE502B8);
}

uint64_t sub_21BDFE680@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE30, &qword_21BE50308);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE38, &qword_21BE50310);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE40, &qword_21BE50318);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v42 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - v20;
  v40 = v16;
  v41 = *(v16 + 16);
  v41(&v38 - v20, a1, v15);
  if (a2)
  {
    v22 = sub_21BE2837C();
    v23 = sub_21BE2795C();
    v46 = v22;
    v47 = v23;
    sub_21BE27C4C();
    v39 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE50, &qword_21BE50328);
    sub_21BDFFE58();
    sub_21BE27EAC();

    v24 = &v8[*(v39 + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
    v26 = *MEMORY[0x277CE1050];
    v27 = sub_21BE283BC();
    v28 = v26;
    v5 = v39;
    (*(*(v27 - 8) + 104))(v24 + v25, v28, v27);
    *v24 = swift_getKeyPath();
    sub_21BBB7D84(v8, v14, &qword_27CDBDE30, &qword_21BE50308);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v43 + 56))(v14, v29, 1, v5);
  v31 = v41;
  v30 = v42;
  v41(v42, v21, v15);
  v32 = v44;
  sub_21BBA3854(v14, v44, &qword_27CDBDE38, &qword_21BE50310);
  v33 = v45;
  v31(v45, v30, v15);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE48, &qword_21BE50320);
  v35 = v33 + *(v34 + 48);
  *v35 = 0x4020000000000000;
  *(v35 + 8) = 0;
  sub_21BBA3854(v32, v33 + *(v34 + 64), &qword_27CDBDE38, &qword_21BE50310);
  sub_21BB3A4CC(v14, &qword_27CDBDE38, &qword_21BE50310);
  v36 = *(v40 + 8);
  v36(v21, v15);
  sub_21BB3A4CC(v32, &qword_27CDBDE38, &qword_21BE50310);
  return (v36)(v30, v15);
}

uint64_t sub_21BDFEADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v60 = a2;
  v4 = sub_21BE27A2C();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21BE2754C();
  v43 = *(v44 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE70, &qword_21BE50370);
  swift_getTupleTypeMetadata3();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  v9 = sub_21BE2719C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
  v68 = WitnessTable;
  v69 = v11;
  v47 = v9;
  v46 = swift_getWitnessTable();
  v12 = sub_21BE2846C();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v14;
  v15 = sub_21BE2719C();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v54 = &v41 - v17;
  v48 = swift_getWitnessTable();
  v66 = v48;
  v67 = MEMORY[0x277CDF900];
  v18 = swift_getWitnessTable();
  v64 = v15;
  v65 = v18;
  v52 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v53 + 64);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v50 = &v41 - v24;
  v25 = *(v2 + 16);
  v26 = *(v2 + 32);
  v71 = *(v2 + 56);
  v70 = *(v2 + 48);
  v27 = v71;
  v28 = swift_allocObject();
  v29 = *(v51 + 24);
  v30 = v49;
  *(v28 + 16) = v49;
  *(v28 + 24) = v29;
  v31 = *(v2 + 16);
  *(v28 + 32) = *v2;
  *(v28 + 48) = v31;
  *(v28 + 64) = *(v2 + 32);
  *(v28 + 73) = *(v2 + 41);
  v61 = v30;
  v62 = v29;
  v63 = v2;
  v32 = v45;

  sub_21BBA3854(&v70, &v64, &qword_27CDBDE78, &unk_21BE50378);
  sub_21BE2843C();
  if (v27 != 1)
  {

    sub_21BE28FEC();
    v33 = sub_21BE27B2C();
    sub_21BE269DC();

    v34 = v42;
    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v70, &qword_27CDBDE78, &unk_21BE50378);
    (*(v43 + 8))(v34, v44);
  }

  v35 = v54;
  sub_21BE2814C();
  (*(v56 + 8))(v32, v12);
  v36 = v57;
  sub_21BE27A0C();
  v37 = v52;
  sub_21BE2805C();
  (*(v58 + 8))(v36, v59);
  (*(v55 + 8))(v35, v15);
  v64 = v15;
  v65 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v50;
  sub_21BD37338(v23);
  v39 = *(v53 + 8);
  v39(v23, OpaqueTypeMetadata2);
  sub_21BD37338(v38);
  return (v39)(v38, OpaqueTypeMetadata2);
}

uint64_t sub_21BDFF238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v24 = a3;
  v25 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE70, &qword_21BE50370);
  swift_getTupleTypeMetadata3();
  sub_21BE286EC();
  swift_getWitnessTable();
  v5 = sub_21BE2848C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  v10 = sub_21BE2719C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v26 = a2;
  v27 = v24;
  v28 = v23;
  sub_21BE275DC();
  sub_21BE2847C();
  sub_21BE2832C();
  WitnessTable = swift_getWitnessTable();
  sub_21BE27F8C();

  (*(v6 + 8))(v9, v5);
  v19 = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
  v29 = WitnessTable;
  v30 = v19;
  swift_getWitnessTable();
  sub_21BD37338(v15);
  v20 = *(v11 + 8);
  v20(v15, v10);
  sub_21BD37338(v17);
  return (v20)(v17, v10);
}

uint64_t sub_21BDFF564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v7 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v52 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE80, &qword_21BE50388);
  v9 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v52 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE30, &qword_21BE50308);
  v12 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v14 = &v52 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE70, &qword_21BE50370);
  v15 = *(*(v60 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v60);
  v61 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v21 = *(a2 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v52 - v27;
  v29 = *(a1 + 16);
  (*(a1 + 8))(v26);
  v59 = v28;
  v62 = a3;
  sub_21BD37338(v25);
  v57 = v21;
  v58 = *(v21 + 8);
  v58(v25, a2);
  if (*a1)
  {
    v30 = sub_21BE2837C();
    v31 = sub_21BE2795C();
    *&v71 = v30;
    DWORD2(v71) = v31;
    sub_21BE27C4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE50, &qword_21BE50328);
    sub_21BDFFE58();
    sub_21BE27EAC();

    v32 = &v14[*(v55 + 36)];
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
    v34 = *MEMORY[0x277CE1050];
    v35 = sub_21BE283BC();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    sub_21BBA3854(v14, v11, &qword_27CDBDE30, &qword_21BE50308);
    swift_storeEnumTagMultiPayload();
    sub_21BE0014C();
    sub_21BE00240();
    sub_21BE2784C();
    sub_21BB3A4CC(v14, &qword_27CDBDE30, &qword_21BE50308);
    v36 = 0;
LABEL_6:
    v45 = v20;
    goto LABEL_7;
  }

  v37 = v56;
  if ((*(a1 + 40) & 1) == 0)
  {
    v36 = 1;
    goto LABEL_6;
  }

  v38 = v53;
  sub_21BE26EEC();
  *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)) = 257;
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v41 = *MEMORY[0x277CDF438];
  v42 = sub_21BE26E7C();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  sub_21BE286BC();
  sub_21BE26F2C();
  v43 = (v38 + *(v37 + 36));
  v44 = v72;
  *v43 = v71;
  v43[1] = v44;
  v43[2] = v73;
  sub_21BBA3854(v38, v11, &qword_27CDB5DF0, &unk_21BE33810);
  swift_storeEnumTagMultiPayload();
  sub_21BE0014C();
  sub_21BE00240();
  sub_21BE2784C();
  v45 = v20;
  sub_21BB3A4CC(v38, &qword_27CDB5DF0, &unk_21BE33810);
  v36 = 0;
LABEL_7:
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE88, &qword_21BE50390);
  (*(*(v46 - 8) + 56))(v45, v36, 1, v46);
  v47 = v59;
  (*(v57 + 16))(v25, v59, a2);
  v68 = 0x4020000000000000;
  v69 = 0;
  v70[0] = v25;
  v70[1] = &v68;
  v48 = v61;
  sub_21BBA3854(v45, v61, &qword_27CDBDE70, &qword_21BE50370);
  v70[2] = v48;
  v67[0] = a2;
  v67[1] = MEMORY[0x277CE1180];
  v67[2] = v60;
  v64 = v62;
  v65 = MEMORY[0x277CE1170];
  v66 = sub_21BE0003C();
  sub_21BDFE148(v70, 3uLL, v67);
  sub_21BB3A4CC(v45, &qword_27CDBDE70, &qword_21BE50370);
  v49 = v47;
  v50 = v58;
  v58(v49, a2);
  sub_21BB3A4CC(v48, &qword_27CDBDE70, &qword_21BE50370);
  return v50(v25, a2);
}

uint64_t sub_21BDFFC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_21BDFEADC(a1, a2);
}

unint64_t sub_21BDFFCE8()
{
  result = qword_27CDBDE10;
  if (!qword_27CDBDE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE00, &qword_21BE502B8);
    sub_21BDFFD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDE10);
  }

  return result;
}

unint64_t sub_21BDFFD74()
{
  result = qword_27CDBDE18;
  if (!qword_27CDBDE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDDF8, &qword_21BE502B0);
    sub_21BB3B038(&qword_27CDBDE20, &qword_27CDBDE28, &unk_21BE502F8);
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDE18);
  }

  return result;
}

unint64_t sub_21BDFFE58()
{
  result = qword_27CDBDE58;
  if (!qword_27CDBDE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE50, &qword_21BE50328);
    sub_21BB3B038(&qword_27CDBDE60, &qword_27CDBDE68, &unk_21BE50330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDE58);
  }

  return result;
}

uint64_t sub_21BDFFF34(uint64_t a1)
{
  v2 = sub_21BE283BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE272CC();
}

uint64_t sub_21BDFFFFC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

unint64_t sub_21BE0003C()
{
  result = qword_27CDBDE90;
  if (!qword_27CDBDE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE70, &qword_21BE50370);
    sub_21BE000C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDE90);
  }

  return result;
}

unint64_t sub_21BE000C0()
{
  result = qword_27CDBDE98;
  if (!qword_27CDBDE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE88, &qword_21BE50390);
    sub_21BE0014C();
    sub_21BE00240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDE98);
  }

  return result;
}

unint64_t sub_21BE0014C()
{
  result = qword_27CDBDEA0;
  if (!qword_27CDBDEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE30, &qword_21BE50308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE50, &qword_21BE50328);
    sub_21BDFFE58();
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&unk_27CDBC510, &qword_27CDBC4D0, &qword_21BE425D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDEA0);
  }

  return result;
}

unint64_t sub_21BE00240()
{
  result = qword_27CDBDEA8;
  if (!qword_27CDBDEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5DF0, &unk_21BE33810);
    sub_21BC933C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void *sub_21BE00438(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEE0, &qword_21BE505B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v3) + 0xF8);
  v14 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEE8, &unk_21BE505C0);
  sub_21BE26C6C();
  (*(v8 + 32))(&v3[v13], v11, v7);
  v15 = *((*v12 & *v3) + 0x100);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *&v3[v15] = v16;
  if (v14 >> 62 && sub_21BE2951C())
  {
    v29 = v16;
    v18 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v17 = v16;
    v18 = MEMORY[0x277D84FA0];
  }

  *&v3[qword_27CDB63F8] = v18;
  *&v3[qword_27CDB6400] = 0;
  v19 = &v3[qword_27CDB63F0];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDED0, &qword_21BE505B0);
  v31.receiver = v3;
  v31.super_class = v20;
  v21 = objc_msgSendSuper2(&v31, sel_init);
  v22 = *(v21 + *((*v12 & *v21) + 0x100));
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = v21;
  aBlock[4] = sub_21BE117CC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BE012D4;
  aBlock[3] = &block_descriptor_56;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v22;
  v27 = a3;

  [v26 addAccountChangeObserver:v25 handler:v24];
  _Block_release(v24);

  return v25;
}

void *sub_21BE00774(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF58, &qword_21BE50650);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v3) + 0xF8);
  v14 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF60, &qword_21BE50658);
  sub_21BE26C6C();
  (*(v8 + 32))(&v3[v13], v11, v7);
  v15 = *((*v12 & *v3) + 0x100);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *&v3[v15] = v16;
  if (v14 >> 62 && sub_21BE2951C())
  {
    v29 = v16;
    v18 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v17 = v16;
    v18 = MEMORY[0x277D84FA0];
  }

  *&v3[qword_27CDB63F8] = v18;
  *&v3[qword_27CDB6400] = 0;
  v19 = &v3[qword_27CDB63F0];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF48, &qword_21BE50648);
  v31.receiver = v3;
  v31.super_class = v20;
  v21 = objc_msgSendSuper2(&v31, sel_init);
  v22 = *(v21 + *((*v12 & *v21) + 0x100));
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = v21;
  aBlock[4] = sub_21BE11C8C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BE012D4;
  aBlock[3] = &block_descriptor_120;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v22;
  v27 = a3;

  [v26 addAccountChangeObserver:v25 handler:v24];
  _Block_release(v24);

  return v25;
}

void *sub_21BE00AB0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF20, &qword_21BE50608);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v3) + 0xF8);
  v14 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D0, &qword_21BE50610);
  sub_21BE26C6C();
  (*(v8 + 32))(&v3[v13], v11, v7);
  v15 = *((*v12 & *v3) + 0x100);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *&v3[v15] = v16;
  if (v14 >> 62 && sub_21BE2951C())
  {
    v29 = v16;
    v18 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v17 = v16;
    v18 = MEMORY[0x277D84FA0];
  }

  *&v3[qword_27CDB63F8] = v18;
  *&v3[qword_27CDB6400] = 0;
  v19 = &v3[qword_27CDB63F0];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF10, &qword_21BE50600);
  v31.receiver = v3;
  v31.super_class = v20;
  v21 = objc_msgSendSuper2(&v31, sel_init);
  v22 = *(v21 + *((*v12 & *v21) + 0x100));
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = v21;
  aBlock[4] = sub_21BE11A2C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BE012D4;
  aBlock[3] = &block_descriptor_88;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v22;
  v27 = a3;

  [v26 addAccountChangeObserver:v25 handler:v24];
  _Block_release(v24);

  return v25;
}

void sub_21BE00DEC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v53 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v48 - v12;
  v14 = sub_21BE26A4C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  if (*(a1 + 16))
  {
    v22 = *MEMORY[0x277CED1A0];
    v23 = sub_21BBB322C(*MEMORY[0x277CED1A0]);
    if (v24)
    {
      if (*(a2 + 16))
      {
        v51 = *(*(a1 + 56) + 8 * v23);
        v25 = sub_21BBB322C(v22);
        if (v26)
        {
          v27 = *(*(a2 + 56) + 8 * v25);
          v28 = [v51 isEnabledForDataclass_];
          if (v28 == [v27 isEnabledForDataclass_])
          {

            v47 = v51;
          }

          else
          {
            v50 = v27;
            sub_21BE261BC();
            v29 = a3;
            v30 = sub_21BE26A2C();
            v31 = sub_21BE28FFC();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v55 = v49;
              *v32 = 136315394;
              *(v32 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62940, &v55);
              *(v32 + 12) = 2080;
              v54 = v29;
              type metadata accessor for Dataclass(0);
              v33 = v29;
              v34 = sub_21BE28A5C();
              v36 = sub_21BB3D81C(v34, v35, &v55);

              *(v32 + 14) = v36;
              _os_log_impl(&dword_21BB35000, v30, v31, "%s changes detected in iCloud settings,\n refreshing checklist item associated with dataclass: %s", v32, 0x16u);
              v37 = v49;
              swift_arrayDestroy();
              MEMORY[0x21CF05C50](v37, -1, -1);
              MEMORY[0x21CF05C50](v32, -1, -1);
            }

            (*(v15 + 8))(v19, v14);
            v38 = sub_21BE28DAC();
            (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
            sub_21BE28D7C();
            v39 = a4;
            v40 = sub_21BE28D6C();
            v41 = swift_allocObject();
            v42 = MEMORY[0x277D85700];
            v41[2] = v40;
            v41[3] = v42;
            v41[4] = v39;
            sub_21BBA932C(0, 0, v13, v53, v41);
          }

          return;
        }
      }
    }
  }

  sub_21BE261BC();
  v43 = sub_21BE26A2C();
  v44 = sub_21BE28FFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62940, &v55);
    _os_log_impl(&dword_21BB35000, v43, v44, "%s Unable to get iCloud account", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x21CF05C50](v46, -1, -1);
    MEMORY[0x21CF05C50](v45, -1, -1);
  }

  (*(v15 + 8))(v21, v14);
}

uint64_t sub_21BE012D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for AIDAServiceType(0);
  sub_21BB3A2A4(0, &qword_280BD68E0, 0x277CB8F30);
  sub_21BE10D1C(&unk_280BD6960, 255, type metadata accessor for AIDAServiceType);
  v3 = sub_21BE2890C();
  v4 = sub_21BE2890C();

  v2(v3, v4);
}

uint64_t sub_21BE013E4()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BBC9C4C();
}

uint64_t sub_21BE014A8()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BBCAAB4();
}

uint64_t sub_21BE0156C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCAD5C();
}

uint64_t sub_21BE01630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE2870C();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21BE2874C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v14 = sub_21BE2925C();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_21BE2872C();
  v22 = MEMORY[0x277D84F90];
  sub_21BE10D1C(&qword_280BD69E0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_21BE01914(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEC0, &qword_21BE505A0);
    sub_21BB3B038(&qword_27CDBDEC8, &qword_27CDBDEC0, &qword_21BE505A0);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE01A74(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE108, &qword_21BE508B0);
    sub_21BB3B038(&qword_27CDBE110, &qword_27CDBE108, &qword_21BE508B0);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE01BD4(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0E0, &qword_21BE50888);
    sub_21BB3B038(&qword_27CDBE0E8, &qword_27CDBE0E0, &qword_21BE50888);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE01D34(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE068, &qword_21BE50790);
    sub_21BB3B038(&qword_27CDBE070, &qword_27CDBE068, &qword_21BE50790);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE01E94(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE188, &qword_21BE50940);
    sub_21BB3B038(&qword_27CDBE190, &qword_27CDBE188, &qword_21BE50940);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE01FF4(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE160, &qword_21BE50918);
    sub_21BB3B038(&qword_27CDBE168, &qword_27CDBE160, &qword_21BE50918);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE02154(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0B8, &qword_21BE50850);
    sub_21BB3B038(&qword_27CDBE0C0, &qword_27CDBE0B8, &qword_21BE50850);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE022B4(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE128, &qword_21BE508E0);
    sub_21BB3B038(&qword_27CDBE130, &qword_27CDBE128, &qword_21BE508E0);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE02414(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE090, &qword_21BE507C8);
    sub_21BB3B038(&qword_27CDBE098, &qword_27CDBE090, &qword_21BE507C8);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE02574(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE048, &qword_21BE50760);
    sub_21BB3B038(&qword_27CDBE050, &qword_27CDBE048, &qword_21BE50760);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE026D4(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE000, &qword_21BE50728);
    sub_21BB3B038(&qword_27CDBE008, &qword_27CDBE000, &qword_21BE50728);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE02834(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFB8, &qword_21BE506E8);
    sub_21BB3B038(&qword_27CDBDFE0, &qword_27CDBDFB8, &qword_21BE506E8);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE02994(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF78, &qword_21BE50690);
    sub_21BB3B038(&qword_27CDBDF80, &qword_27CDBDF78, &qword_21BE50690);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE02AF4(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF38, &qword_21BE50638);
    sub_21BB3B038(&qword_27CDBDF40, &qword_27CDBDF38, &qword_21BE50638);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE02C54(uint64_t result)
{
  if (*(result + qword_27CDB6400))
  {
    v1 = *(result + qword_27CDB6400);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF00, &qword_21BE505F0);
    sub_21BB3B038(&qword_27CDBDF08, &qword_27CDBDF00, &qword_21BE505F0);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BE02DB4()
{
  v1 = v0;
  v62 = sub_21BE26A4C();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v62);
  v65 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - v6;
  sub_21BE261BC();
  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21BB35000, v8, v9, "Checklist row status reset", v10, 2u);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  v60 = *(v2 + 8);
  v61 = v2 + 8;
  v60(v7, v62);
  v11 = *(v1 + 24);
  v12 = *(v11 + 16);

  v15 = v65;
  if (!v12)
  {
  }

  v16 = 0;
  v17 = (v11 + 40);
  *&v14 = 136315138;
  v57 = v14;
  v54 = xmmword_21BE362A0;
  v58 = v12;
  v59 = v11;
  while (v16 < *(v11 + 16))
  {
    v19 = *(v17 - 1);
    v18 = *v17;
    ObjectType = swift_getObjectType();
    result = sub_21BBE97A8(ObjectType, v18);
    if (result)
    {
      if (qword_27CDB5030 != -1)
      {
        swift_once();
      }

      v21 = qword_27CDD43F0;
      v22 = *(v18 + 24);
      v66 = ObjectType;
      v67 = v18;
      v63 = v22;
      v64 = v18 + 24;
      v23 = v22(ObjectType, v18);
      v25 = v24;
      swift_beginAccess();
      v26 = *(v21 + 16);
      if (*(v26 + 16))
      {
        v27 = *(v21 + 16);

        v28 = sub_21BBB3108(v23, v25);
        if (v29)
        {
          v30 = *(v26 + 56) + 16 * v28;
          v31 = *(v30 + 8);
          v32 = *v30;

          if (v31 < 1)
          {
          }

          else
          {
            v56 = v32;
            if (qword_27CDB4F68 != -1)
            {
              swift_once();
            }

            v55 = qword_27CDB8D18;
            LOBYTE(v69[0]) = 45;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
            inited = swift_initStackObject();
            *(inited + 16) = v54;
            *(inited + 32) = 0x72656469766F7270;
            v34 = MEMORY[0x277D837D0];
            *(inited + 72) = MEMORY[0x277D837D0];
            *(inited + 40) = 0xE800000000000000;
            *(inited + 48) = v23;
            *(inited + 56) = v25;
            *(inited + 80) = &protocol witness table for String;
            *(inited + 88) = 0x737574617473;
            *(inited + 96) = 0xE600000000000000;
            *(inited + 128) = MEMORY[0x277D839B0];
            *(inited + 136) = &protocol witness table for Bool;
            *(inited + 104) = 1;
            *(inited + 144) = 0x6E6F73616572;
            *(inited + 152) = 0xE600000000000000;
            *(inited + 184) = v34;
            *(inited + 192) = &protocol witness table for String;
            *(inited + 160) = 0x657265766F636572;
            *(inited + 168) = 0xE900000000000064;

            v35 = sub_21BBB5E60(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
            swift_arrayDestroy();
            sub_21BCA55DC(v69, v35);
          }

          v15 = v65;
        }

        else
        {
        }
      }

      swift_beginAccess();
      v36 = *(v21 + 16);
      v37 = sub_21BBB3108(v23, v25);
      if (v38)
      {
        v39 = v37;
        v40 = *(v21 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v21 + 16);
        v68 = v42;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_21BC81000();
          v42 = v68;
        }

        v43 = *(*(v42 + 48) + 16 * v39 + 8);

        v44 = *(*(v42 + 56) + 16 * v39);
        sub_21BC7ECF0(v39, v42);
        *(v21 + 16) = v42;

        v15 = v65;
      }

      swift_endAccess();

      v69[0] = v19;
      v45 = v66;
      (*(*(v67 + 16) + 72))(v66);
      sub_21BE261BC();
      swift_unknownObjectRetain();
      v46 = sub_21BE26A2C();
      v47 = sub_21BE28FCC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69[0] = v49;
        *v48 = v57;
        v50 = v63(v45, v67);
        v52 = sub_21BB3D81C(v50, v51, v69);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_21BB35000, v46, v47, "%s status reset", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        v53 = v49;
        v15 = v65;
        MEMORY[0x21CF05C50](v53, -1, -1);
        MEMORY[0x21CF05C50](v48, -1, -1);
      }

      result = (v60)(v15, v62);
      v12 = v58;
      v11 = v59;
    }

    ++v16;
    v17 += 2;
    if (v12 == v16)
    {
    }
  }

  __break(1u);
  return result;
}

id sub_21BE033E4()
{
  result = [objc_allocWithZone(MEMORY[0x277CEC790]) init];
  qword_27CDD43D8 = result;
  return result;
}

void sub_21BE03438()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F8, &qword_21BE32F68);
  v6 = swift_allocObject();
  v63 = xmmword_21BE33260;
  *(v6 + 16) = xmmword_21BE33260;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v7 = qword_280BD79E0;
  v8 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:1 cachePolicy:1];
  v9 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];

  v10 = objc_allocWithZone(type metadata accessor for HomeItemProvider());

  v12 = sub_21BE0BDFC(v11, v9, v10);
  v13 = sub_21BE10D1C(&qword_27CDB60D0, 255, type metadata accessor for HomeItemProvider);
  *(v6 + 32) = v12;
  *(v6 + 40) = v13;
  v14 = type metadata accessor for ContactManagementStore();
  swift_allocObject();
  v15 = sub_21BCCB434();
  v65[3] = v14;
  v65[4] = &off_282D8F758;
  v65[0] = v15;
  v16 = objc_allocWithZone(type metadata accessor for CommLimitsItemProvider(0));
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v65, v14);
  v18 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;

  v24 = sub_21BE0B56C(v23, v22, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  v25 = sub_21BE10D1C(&qword_27CDB60B8, 255, type metadata accessor for CommLimitsItemProvider);
  *(v6 + 48) = v24;
  *(v6 + 56) = v25;
  v65[0] = v6;
  v26 = [objc_opt_self() isMedicalIDViewControllerSupportedOnDevice];
  v62[1] = v5;
  if (v26)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v27 = v64;
    v28 = [objc_allocWithZone(FAHealthKitSoftLinking) initWithFamilyCircle_];

    if (!v28)
    {
      __break(1u);
      goto LABEL_21;
    }

    v29 = objc_allocWithZone(type metadata accessor for EmergencyContactItemProvider(0));

    v31 = sub_21BE0AD58(v30, v28, v29);
    v33 = *(v6 + 16);
    v32 = *(v6 + 24);
    if (v33 >= v32 >> 1)
    {
      v6 = sub_21BBBCE3C((v32 > 1), v33 + 1, 1, v6);
    }

    v34 = sub_21BE10D1C(&qword_27CDB6060, 255, type metadata accessor for EmergencyContactItemProvider);
    *(v6 + 16) = v33 + 1;
    v35 = v6 + 16 * v33;
    *(v35 + 32) = v31;
    *(v35 + 40) = v34;
    v65[0] = v6;
  }

  v36 = *MEMORY[0x277D07F38];
  v37 = *(v1 + 104);
  v37(v4, v36, v0);
  v38 = MEMORY[0x21CF01150](v4);
  (*(v1 + 8))(v4, v0);
  if (v38)
  {
    v39 = [objc_opt_self() defaultStore];
    if (v39)
    {
      v40 = v39;
      if (qword_280BD76F0 != -1)
      {
        swift_once();
      }

      v41 = qword_280BDCB98;
      if (qword_280BD83C0 != -1)
      {
        swift_once();
      }

      v42 = qword_280BDCBF0;

      v43 = sub_21BE09254(v40, v7, v41, v42);
      v45 = *(v6 + 16);
      v44 = *(v6 + 24);
      if (v45 >= v44 >> 1)
      {
        v6 = sub_21BBBCE3C((v44 > 1), v45 + 1, 1, v6);
      }

      v46 = sub_21BE10D1C(&qword_27CDB6070, 255, type metadata accessor for AppleCashItemProvider);
      *(v6 + 16) = v45 + 1;
      v47 = v6 + 16 * v45;
      *(v47 + 32) = v43;
      *(v47 + 40) = v46;
      v65[0] = v6;
      goto LABEL_17;
    }

LABEL_21:
    __break(1u);
    return;
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CB0, &unk_21BE3DAE0);
  v48 = *(v1 + 72);
  v49 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v63;
  v51 = v50 + v49;
  v37(v51, v36, v0);
  v37((v51 + v48), *MEMORY[0x277D07F30], v0);
  v52 = sub_21BE25FBC();

  if (v52)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v63;
    v54 = objc_allocWithZone(type metadata accessor for FamilyContactsItemProvider());

    v56 = sub_21BE09C7C(v55, v54);
    v57 = sub_21BE10D1C(&qword_27CDB60A0, 255, type metadata accessor for FamilyContactsItemProvider);
    *(inited + 32) = v56;
    *(inited + 40) = v57;
    v58 = objc_allocWithZone(type metadata accessor for FamilyMessageConfigProvider());

    v60 = sub_21BE09438(v59, v58);
    v61 = sub_21BE10D1C(&qword_27CDB6088, 255, type metadata accessor for FamilyMessageConfigProvider);
    *(inited + 48) = v60;
    *(inited + 56) = v61;
    sub_21BDE59C8(inited);
  }
}

id sub_21BE03B94()
{
  result = sub_21BE03BB4();
  qword_27CDD43E8 = result;
  return result;
}

id sub_21BE03BB4()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  v105 = v0;
  v106 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CDB5020 != -1)
  {
    swift_once();
  }

  v5 = qword_27CDD43E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F8, &qword_21BE32F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  v7 = qword_27CDB5018;
  v103 = v5;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_27CDD43D8;
  v102 = objc_opt_self();
  v9 = [v102 sharedInstance];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v10 = qword_280BD79E0;
  v11 = objc_allocWithZone(type metadata accessor for BeneficiaryItemProvider(0));
  v12 = v8;

  v13 = sub_21BE0EDCC(v12, v9, v10, v11);
  v14 = sub_21BE10D1C(&qword_27CDB6048, 255, type metadata accessor for BeneficiaryItemProvider);
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v104 = v4;
  v15 = qword_280BD76F0;
  v16 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_280BDCB98;
  v18 = type metadata accessor for ServicesStore();
  v108 = v18;
  v109 = &off_282D8FEE0;
  v107[0] = v17;
  v19 = objc_allocWithZone(type metadata accessor for IcloudPlusItemProvider());
  v20 = v108;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;

  v27 = sub_21BE0E4D0(v16, v26, v10, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v107);
  v28 = sub_21BE10D1C(&qword_27CDB6030, 255, type metadata accessor for IcloudPlusItemProvider);
  *(inited + 48) = v27;
  *(inited + 56) = v28;
  v29 = [v102 sharedInstance];
  v30 = objc_allocWithZone(type metadata accessor for RecoveryContactItemProvider(0));
  v31 = v12;

  v32 = sub_21BE0DB70(v31, v29, v10, v30);
  v33 = sub_21BE10D1C(&qword_27CDB6018, 255, type metadata accessor for RecoveryContactItemProvider);
  *(inited + 64) = v32;
  *(inited + 72) = v33;
  v108 = v18;
  v109 = &off_282D8FEE0;
  v101 = v18;
  v107[0] = v17;
  v34 = objc_allocWithZone(type metadata accessor for LocationItemProvider());
  v35 = v108;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = (&v101 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = *v39;

  v102 = v17;

  v42 = sub_21BE10D64(v10, 0, v41, v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v107);
  v43 = sub_21BE10D1C(&qword_27CDB6000, 255, type metadata accessor for LocationItemProvider);
  *(inited + 80) = v42;
  *(inited + 88) = v43;
  v107[0] = v103;
  sub_21BDE59C8(inited);
  v45 = v106;
  v44 = v107[0];
  v46 = *(v106 + 104);
  v48 = v104;
  v47 = v105;
  v46(v104, *MEMORY[0x277D07F20], v105);
  MEMORY[0x21CF01150](v48);
  v49 = *(v45 + 8);
  v106 = v45 + 8;
  v49(v48, v47);
  v50 = qword_280BD83C0;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = qword_280BDCBF0;
  type metadata accessor for AgeBasedPresetService();
  v52 = swift_allocObject();

  v53 = sub_21BE0C7AC(v10, v51, v52);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_21BBBCE3C(0, v44[2] + 1, 1, v44);
  }

  v55 = v44[2];
  v54 = v44[3];
  if (v55 >= v54 >> 1)
  {
    v44 = sub_21BBBCE3C((v54 > 1), v55 + 1, 1, v44);
  }

  v56 = sub_21BE10D1C(&qword_27CDB5FE8, 255, type metadata accessor for ParentalControlItemProvider);
  v44[2] = v55 + 1;
  v57 = &v44[2 * v55];
  v57[4] = v53;
  v57[5] = v56;
  v58 = v105;
  v46(v48, *MEMORY[0x277D07F38], v105);
  v59 = MEMORY[0x21CF01150](v48);
  v49(v48, v58);
  if ((v59 & 1) == 0)
  {
    goto LABEL_28;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v61 = result;
    v108 = v101;
    v109 = &off_282D8FEE0;
    v107[0] = v102;
    v62 = objc_allocWithZone(type metadata accessor for PurchaseSharingItemProvider(0));
    v63 = v108;
    v64 = __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
    v65 = *(*(v63 - 8) + 64);
    MEMORY[0x28223BE20](v64);
    v67 = (&v101 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = *v67;

    v70 = sub_21BE0C988(v61, v10, v69, v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v107);
    v72 = v44[2];
    v71 = v44[3];
    if (v72 >= v71 >> 1)
    {
      v44 = sub_21BBBCE3C((v71 > 1), v72 + 1, 1, v44);
    }

    v73 = sub_21BE10D1C(&qword_27CDB5FD0, 255, type metadata accessor for PurchaseSharingItemProvider);
    v44[2] = v72 + 1;
    v74 = &v44[2 * v72];
    v74[4] = v70;
    v74[5] = v73;
    v75 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
    v76 = objc_allocWithZone(type metadata accessor for SharedFamilyCalendarItemProvider());

    v78 = sub_21BE0F6E0(v77, v75, v76);
    v80 = v44[2];
    v79 = v44[3];
    if (v80 >= v79 >> 1)
    {
      v44 = sub_21BBBCE3C((v79 > 1), v80 + 1, 1, v44);
    }

    v81 = sub_21BE10D1C(&qword_27CDB5FA0, 255, type metadata accessor for SharedFamilyCalendarItemProvider);
    v44[2] = v80 + 1;
    v82 = &v44[2 * v80];
    v82[4] = v78;
    v82[5] = v81;
    v83 = [objc_opt_self() sharedMonitor];
    v84 = sub_21BB3A2A4(0, &qword_27CDBDEB0, 0x277D49DD8);
    v85 = objc_allocWithZone(type metadata accessor for SharedPasswordsItemProvider());

    v87 = sub_21BE0FE68(v86, v83, v84, &off_282D8B558, v85);
    v89 = v44[2];
    v88 = v44[3];
    if (v89 >= v88 >> 1)
    {
      v44 = sub_21BBBCE3C((v88 > 1), v89 + 1, 1, v44);
    }

    v90 = sub_21BE10D1C(&qword_27CDB5F70, 255, type metadata accessor for SharedPasswordsItemProvider);
    v44[2] = v89 + 1;
    v91 = &v44[2 * v89];
    v91[4] = v87;
    v91[5] = v90;
    v92 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
    v93 = objc_allocWithZone(type metadata accessor for SharedFamilyGroceryItemProvider());

    v95 = sub_21BE105D4(v94, v92, v93);
    v97 = v44[2];
    v96 = v44[3];
    if (v97 >= v96 >> 1)
    {
      v44 = sub_21BBBCE3C((v96 > 1), v97 + 1, 1, v44);
    }

    v98 = sub_21BE10D1C(&qword_27CDB5F40, 255, type metadata accessor for SharedFamilyGroceryItemProvider);
    v44[2] = v97 + 1;
    v99 = &v44[2 * v97];
    v99[4] = v95;
    v99[5] = v98;
LABEL_28:
    type metadata accessor for FamilyChecklistStore();
    v100 = swift_allocObject();
    sub_21BE086D8(v44);
    return v100;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BE0476C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  result = sub_21BBE7F94(ObjectType, v4);
  *a2 = result;
  return result;
}

uint64_t sub_21BE047AC(char a1, uint64_t a2)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = v2;
  *(v3 + 136) = a1;
  *(v3 + 64) = sub_21BE28D7C();
  *(v3 + 72) = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x2822009F8](sub_21BE0484C, v5, v4);
}

uint64_t sub_21BE0484C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);

  v4 = v1;
  v27 = v3;
  if (v3)
  {
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      v6 = *(v0 + 56);
      v7 = v5 + 1;
      v25 = *(v2 + 32 + 16 * v5);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      *(v0 + 40) = sub_21BBE8030(ObjectType, *(&v25 + 1));
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v25;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1A8, &qword_21BE50998);
      sub_21BB3B038(&qword_27CDBE1B0, &qword_27CDBE1A8, &qword_21BE50998);
      sub_21BE26D1C();

      swift_beginAccess();
      sub_21BE26BBC();
      swift_endAccess();

      swift_unknownObjectRelease();
      v5 = v7;
      if (v27 == v7)
      {
        v4 = *(v0 + 56);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v11 = *(v4 + 16);
    if (!v11)
    {
      v12 = type metadata accessor for FamilySignpost();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v11 = sub_21BC84D18(0x73696C6B63656843, 0xEF65726F74732074, "loadItems", 9, 2);
      v15 = *(v4 + 16);
    }

    v16 = *(v0 + 48);
    *(v4 + 16) = v11;

    v17 = *(v0 + 48);
    if (v16)
    {
      v18 = *(v0 + 48);
    }

    else
    {
      v18 = *(v1 + 24);
    }

    *(v0 + 96) = v18;
    v19 = *(v0 + 64);
    v20 = *(v0 + 136);

    *(v0 + 104) = sub_21BE28D6C();
    v21 = swift_task_alloc();
    *(v0 + 112) = v21;
    *(v21 + 16) = v18;
    *(v21 + 24) = v20;
    v22 = *(MEMORY[0x277D859B8] + 4);
    v23 = swift_task_alloc();
    *(v0 + 120) = v23;
    *v23 = v0;
    v23[1] = sub_21BE04BAC;
  }

  return MEMORY[0x282200740]();
}

uint64_t sub_21BE04BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_21BE04CE4;
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v9 = v2[12];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_21BBE56CC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BE04CE4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_21BE04D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BE10D1C(&qword_27CDB63D0, v10, type metadata accessor for FamilyChecklistStore);
    sub_21BE26C0C();
    sub_21BE26C4C();
  }

  else
  {
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      ObjectType = swift_getObjectType();
      v17 = (*(a4 + 24))(ObjectType, a4);
      v19 = sub_21BB3D81C(v17, v18, &v20);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_21BB35000, v12, v13, "%s can't find self!", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_21BE04FD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 160) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = sub_21BE28D7C();
  *(v4 + 112) = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  *(v4 + 120) = v7;
  *(v4 + 128) = v6;

  return MEMORY[0x2822009F8](sub_21BE050BC, v7, v6);
}

uint64_t sub_21BE050BC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v29 = *(v0 + 160);
    v3 = (v1 + 32);
    v4 = sub_21BE28DAC();
    v5 = *(v4 - 8);
    v27 = *(v5 + 56);
    v26 = (v5 + 48);
    v25 = (v5 + 8);
    v28 = v4;
    do
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v30 = *v3;
      v27(v8, 1, 1, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      *(v10 + 24) = 0;
      *(v10 + 32) = v29;
      *(v10 + 40) = v30;
      sub_21BC39020(v8, v9);
      v12 = (*v26)(v9, 1, v4);
      swift_unknownObjectRetain_n();
      v13 = *(v0 + 88);
      if (v12 == 1)
      {
        sub_21BBDE578(*(v0 + 88));
        if (*v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_21BE28D9C();
        (*v25)(v13, v4);
        if (*v11)
        {
LABEL_9:
          v16 = *(v10 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_21BE28D0C();
          v15 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v18 = **(v0 + 72);

      if (v15 | v14)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v18;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_21BBDE578(v7);
      ++v3;
      --v2;
      v4 = v28;
    }

    while (v2);
  }

  v19 = *(v0 + 104);
  v20 = sub_21BE28D6C();
  *(v0 + 136) = v20;
  v21 = swift_task_alloc();
  *(v0 + 144) = v21;
  *v21 = v0;
  v21[1] = sub_21BE053D8;
  v22 = *(v0 + 72);
  v23 = MEMORY[0x277D85700];

  return sub_21BE059E8(v20, v23);
}

uint64_t sub_21BE053D8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_21BE0556C;
  }

  else
  {
    v7 = v2[17];

    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_21BE054F4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BE054F4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BE0556C()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t sub_21BE055F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    v10 = swift_task_alloc();
    *(v6 + 16) = v10;
    *v10 = v6;
    v10[1] = sub_21BC706A0;

    return sub_21BBE6BBC(ObjectType, a6);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v6 + 24) = v12;
    *v12 = v6;
    v12[1] = sub_21BE05720;

    return sub_21BBE93A4(ObjectType, a6);
  }
}

uint64_t sub_21BE05720()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21BE05818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_21BC39020(a1, v20 - v9);
  v11 = sub_21BE28DAC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21BBDE578(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_21BE28D0C();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_21BE28D9C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_21BE059E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_21BE28D0C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_21BE05A7C, v4, v6);
}

uint64_t sub_21BE05A7C()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  if (sub_21BE28E2C())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x277D85818] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1A0, &qword_21BE50980);
    *v4 = v0;
    v4[1] = sub_21BE05BB4;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return MEMORY[0x2822004D0](v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_21BE05BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_21BE05E00;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_21BE05CD0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BE05CD0()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_21BE28E2C())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x277D85818] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1A0, &qword_21BE50980);
  *v7 = v0;
  v7[1] = sub_21BE05BB4;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v11, v9, v8);
}

uint64_t sub_21BE05E00()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_21BE28E2C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x277D85818] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1A0, &qword_21BE50980);
    *v7 = v0;
    v7[1] = sub_21BE05BB4;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v11, v9, v8);
  }
}

uint64_t sub_21BE05F3C()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = sub_21BE28D7C();
  v1[8] = sub_21BE28D6C();
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_21BE06058;

  return MEMORY[0x282200480](500000000);
}

uint64_t sub_21BE06058()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {

    v7 = sub_21BE28D0C();
    v9 = v8;
    v10 = sub_21BE13484;
  }

  else
  {
    v7 = sub_21BE28D0C();
    v9 = v11;
    v10 = sub_21BE061DC;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_21BE061DC()
{
  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  if (*(qword_280BD7FE0 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus))
  {
    v1 = sub_21BE2995C();

    if ((v1 & 1) == 0)
    {
      v17 = v0[8];
      v18 = v0[5];

      sub_21BE261BC();
      v5 = sub_21BE26A2C();
      v6 = sub_21BE28FFC();
      v19 = os_log_type_enabled(v5, v6);
      v10 = v0[4];
      v8 = v0[5];
      v9 = v0[3];
      if (v19)
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Network is down, retryLoadingIncompleteItems disabled";
        goto LABEL_15;
      }

LABEL_16:

      (*(v10 + 8))(v8, v9);
      v21 = v0[5];
      v20 = v0[6];

      v22 = v0[1];

      return v22();
    }
  }

  else
  {
  }

  v2 = v0[2];
  if (sub_21BE07D30(1))
  {
    v3 = v0[8];
    v4 = v0[6];

    sub_21BE261BC();
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "retryLoadingIncompleteItems: nothing to do";
LABEL_15:
      _os_log_impl(&dword_21BB35000, v5, v6, v12, v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v13 = v0[7];
  v0[10] = sub_21BE28D6C();
  v14 = *(MEMORY[0x277D859B8] + 4);
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_21BE064F4;
  v16 = v0[2];

  return MEMORY[0x282200740]();
}

uint64_t sub_21BE064F4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v16 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_21BE28D0C();
    v8 = v7;
    v9 = sub_21BE066B8;
  }

  else
  {
    v10 = v2[10];
    v13 = v2 + 7;
    v11 = v2[7];
    v12 = v13[1];

    v6 = sub_21BE28D0C();
    v8 = v14;
    v9 = sub_21BE06644;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_21BE06644()
{
  v1 = v0[8];

  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BE066B8()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_21BE06744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_21BE28D7C();
  v3[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21BE067E0, v5, v4);
}

uint64_t sub_21BE067E0()
{
  v13 = v0;
  v1 = *(v0[3] + 24);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    while (v4 < *(v1 + 16))
    {
      v5 = v0[2];
      v6 = v4 + 1;
      *v12 = *(v1 + 32 + 16 * v4);
      result = sub_21BE06B00(v12, v5);
      v4 = v6;
      if (v2 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v7 = v0[4];

    v8 = sub_21BE28D6C();
    v0[8] = v8;
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_21BE06910;
    v10 = v0[2];
    v11 = MEMORY[0x277D85700];

    return sub_21BE059E8(v8, v11);
  }

  return result;
}

uint64_t sub_21BE06910()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_21BE06A90;
  }

  else
  {
    v7 = v2[8];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_21BE06A2C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BE06A2C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BE06A90()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_21BE06B00(uint64_t *a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v43 - v5;
  v6 = sub_21BE26A4C();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = sub_21BE25FCC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  ObjectType = swift_getObjectType();
  if (qword_280BD6F00 != -1)
  {
    swift_once();
  }

  (*(v14 + 104))(v17, *MEMORY[0x277D07F38], v13);
  MEMORY[0x21CF01150](v17);
  (*(v14 + 8))(v17, v13);
  if (sub_21BBE97A8(ObjectType, v19))
  {
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FCC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v23 = 136315394;
      v24 = (*(v19 + 24))(ObjectType, v19);
      v26 = sub_21BB3D81C(v24, v25, &v48);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_21BBE98B8(ObjectType, v19);
      v29 = sub_21BB3D81C(v27, v28, &v48);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_21BB35000, v21, v22, "%s marked skipped due to errors %s", v23, 0x16u);
      v30 = v45;
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v30, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    return (*(v46 + 8))(v12, v47);
  }

  else
  {
    v48 = v18;
    v32 = *(v19 + 16);
    result = (*(v32 + 24))(ObjectType, v32);
    if ((result & 1) == 0)
    {
      v48 = v18;
      result = (*(v32 + 40))(ObjectType, v32);
      if ((result & 1) == 0)
      {
        sub_21BE261BC();
        swift_unknownObjectRetain();
        v33 = sub_21BE26A2C();
        v34 = sub_21BE28FCC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v48 = v36;
          *v35 = 136315138;
          v37 = (*(v19 + 24))(ObjectType, v19);
          v39 = sub_21BB3D81C(v37, v38, &v48);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_21BB35000, v33, v34, "%s added to task group", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v36);
          MEMORY[0x21CF05C50](v36, -1, -1);
          MEMORY[0x21CF05C50](v35, -1, -1);
        }

        (*(v46 + 8))(v10, v47);
        v40 = sub_21BE28DAC();
        v41 = v44;
        (*(*(v40 - 8) + 56))(v44, 1, 1, v40);
        v42 = swift_allocObject();
        v42[2] = 0;
        v42[3] = 0;
        v42[4] = v18;
        v42[5] = v19;
        swift_unknownObjectRetain();
        sub_21BE05818(v41, &unk_21BE50990, v42);
        return sub_21BBDE578(v41);
      }
    }
  }

  return result;
}

uint64_t sub_21BE070A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_21BC706A0;

  return sub_21BBE93A4(ObjectType, a5);
}

uint64_t sub_21BE07154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21BE26A4C();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = sub_21BE28D7C();
  v5[6] = sub_21BE28D6C();
  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = sub_21BE07270;

  return sub_21BE047AC(1, a5);
}

uint64_t sub_21BE07270()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = sub_21BE28D0C();
  if (v2)
  {
    v8 = sub_21BE07434;
  }

  else
  {
    v8 = sub_21BE073CC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BE073CC()
{
  v1 = v0[6];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BE07434()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_21BE261BC();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v4 + 8))(v3, v5);
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BE07510(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(v1 + 16);
  if (!v8)
  {
    v9 = type metadata accessor for FamilySignpost();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_21BC84D18(0x73696C6B63656843, 0xEF65726F74732074, "loadItems", 9, 2);
    v12 = *(v1 + 16);
  }

  *(v2 + 16) = v8;

  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_21BE28D7C();

  v14 = sub_21BE28D6C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v2;
  *(v15 + 40) = a1 & 1;
  sub_21BBA932C(0, 0, v7, &unk_21BE50960, v15);
}

uint64_t sub_21BE076B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  v7 = sub_21BE26A4C();
  *(v5 + 16) = v7;
  v8 = *(v7 - 8);
  *(v5 + 24) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 32) = swift_task_alloc();
  *(v5 + 40) = sub_21BE28D7C();
  *(v5 + 48) = sub_21BE28D6C();
  v10 = swift_task_alloc();
  *(v5 + 56) = v10;
  *v10 = v5;
  v10[1] = sub_21BE077D8;

  return sub_21BE047AC(a5, 0);
}

uint64_t sub_21BE077D8()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = sub_21BE28D0C();
  if (v2)
  {
    v8 = sub_21BE07934;
  }

  else
  {
    v8 = sub_21BE13478;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BE07934()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 72);

  sub_21BE261BC();
  v7 = v1;
  sub_21BE295EC();

  if (v6)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v6)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x21CF03CA0](v8, v9);

  sub_21BC51D50(v1);

  (*(v4 + 8))(v3, v5);
  v10 = *(v0 + 32);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21BE07A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE07B80, v9, v8);
}

uint64_t sub_21BE07B80()
{
  v1 = *(v0 + 48);

  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (*(v0 + 56) == 1)
  {
    v2 = *(v0 + 16);
    if ((sub_21BE07D30(1) & 1) == 0)
    {
      v3 = *(v0 + 40);
      sub_21BE261BC();
      v4 = sub_21BE26A2C();
      v5 = sub_21BE28FFC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_21BB35000, v4, v5, "Reloading on network reconnect", v6, 2u);
        MEMORY[0x21CF05C50](v6, -1, -1);
      }

      v8 = *(v0 + 32);
      v7 = *(v0 + 40);
      v9 = *(v0 + 16);
      v10 = *(v0 + 24);

      (*(v8 + 8))(v7, v10);
      sub_21BE07510(0);
    }
  }

  v11 = *(v0 + 40);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21BE07D30(char a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if ((a1 & 1) == 0)
  {
    v9 = (v3 + 40);
    v10 = -v4;
    v11 = -1;
    while (1)
    {
      if (v10 + v11 == -1)
      {

        return 0;
      }

      if (++v11 >= *(v3 + 16))
      {
        break;
      }

      v12 = v9 + 2;
      v13 = *(v9 - 1);
      v14 = *v9;
      ObjectType = swift_getObjectType();
      *&v16 = v13;
      result = (*(*(v14 + 16) + 40))(ObjectType);
      v9 = v12;
      if (result)
      {

        return 1;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v4)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v16 = *(v3 + 16 * v6 + 32);
      result = sub_21BE07EA0(&v16);
      if ((result & 1) == 0)
      {

        v7 = 0;
        if (*(v1 + 16))
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      if (v4 == ++v6)
      {
        goto LABEL_7;
      }
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_7:

  v7 = 1;
  if (*(v1 + 16))
  {
LABEL_8:

    sub_21BC852D8();

    v8 = *(v1 + 16);
  }

LABEL_16:
  *(v1 + 16) = 0;

  return v7;
}

uint64_t sub_21BE07EA0(uint64_t *a1)
{
  v2 = sub_21BE25FCC();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE26A4C();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = *a1;
  v16 = a1[1];
  ObjectType = swift_getObjectType();
  v60 = v15;
  v18 = *(v16 + 16);
  if (v18[3](ObjectType, v18))
  {
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FCC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v60 = v22;
      *v21 = 136315138;
      v23 = (*(v16 + 24))(ObjectType, v16);
      v25 = sub_21BB3D81C(v23, v24, &v60);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_21BB35000, v19, v20, "%s busy", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v57 + 8))(v14, v58);
    v26 = 0;
  }

  else
  {
    v54 = ObjectType;
    if (sub_21BBE97A8(ObjectType, v16))
    {
      sub_21BE261BC();
      swift_unknownObjectRetain();
      v27 = sub_21BE26A2C();
      v28 = sub_21BE28FCC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v56 = v12;
        v30 = v29;
        v31 = swift_slowAlloc();
        v60 = v31;
        *v30 = 136315394;
        v32 = v54;
        v33 = (*(v16 + 24))(v54, v16);
        v35 = sub_21BB3D81C(v33, v34, &v60);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2080;
        v36 = sub_21BBE98B8(v32, v16);
        v38 = sub_21BB3D81C(v36, v37, &v60);

        *(v30 + 14) = v38;
        _os_log_impl(&dword_21BB35000, v27, v28, "%s marked skip on error: %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v31, -1, -1);
        MEMORY[0x21CF05C50](v30, -1, -1);

        (*(v57 + 8))(v56, v58);
      }

      else
      {

        (*(v57 + 8))(v12, v58);
      }

      v26 = 1;
    }

    else
    {
      if (qword_280BD6F00 != -1)
      {
        swift_once();
      }

      v39 = v55;
      (*(v55 + 104))(v5, *MEMORY[0x277D07F38], v2);
      MEMORY[0x21CF01150](v5);
      (*(v39 + 8))(v5, v2);
      v40 = v56;
      sub_21BE261BC();
      swift_unknownObjectRetain();
      v41 = sub_21BE26A2C();
      v42 = sub_21BE28FCC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v60 = v44;
        *v43 = 136315394;
        v45 = v54;
        v46 = (*(v16 + 24))(v54, v16);
        v48 = sub_21BB3D81C(v46, v47, &v60);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2080;
        v59 = v15;
        v49 = v18[6](v45, v18);
        v51 = sub_21BB3D81C(v49, v50, &v60);

        *(v43 + 14) = v51;
        _os_log_impl(&dword_21BB35000, v41, v42, "Provider %s state: %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v44, -1, -1);
        MEMORY[0x21CF05C50](v43, -1, -1);

        (*(v57 + 8))(v56, v58);
      }

      else
      {

        (*(v57 + 8))(v40, v58);
        v45 = v54;
      }

      v60 = v15;
      v26 = v18[5](v45, v18);
    }
  }

  return v26 & 1;
}

uint64_t sub_21BE08538()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = v4;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v13 = *(v1 + 32 + 16 * v6);
        v4 = v6 + 1;
        ObjectType = swift_getObjectType();
        v8 = *(*(&v13 + 1) + 16);
        v9 = *(v8 + 40);
        swift_unknownObjectRetain();
        if (v9(ObjectType, v8))
        {
          break;
        }

        result = swift_unknownObjectRelease();
        ++v6;
        if (v2 == v4)
        {
          goto LABEL_15;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21BC59CB4(0, *(v5 + 16) + 1, 1);
      }

      v10 = v13;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_21BC59CB4((v11 > 1), v12 + 1, 1);
        v10 = v13;
      }

      *(v5 + 16) = v12 + 1;
      *(v5 + 16 * v12 + 32) = v10;
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:

  return v5;
}

void *sub_21BE086D8(uint64_t a1)
{
  v1[2] = 0;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v1[4] = qword_280BD79E0;
  v3 = qword_280BD83C0;

  if (v3 != -1)
  {
    swift_once();
  }

  v1[5] = qword_280BDCBF0;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v4 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v4 = MEMORY[0x277D84FA0];
  }

  v1[6] = v4;
  v1[3] = a1;
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v5 = qword_27CDD43F0;
  swift_beginAccess();
  v6 = *(v5 + 16);
  *(v5 + 16) = MEMORY[0x277D84F98];

  return v1;
}

uint64_t sub_21BE08844()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_21BE088C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FamilyChecklistStore();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BE088FC()
{
  type metadata accessor for ChecklistProviderLedger();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_27CDD43F0 = result;
  return result;
}

void sub_21BE08934(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {
    v6 = *(v2 + 16);

    v7 = sub_21BBB3108(a1, a2);
    if (v8)
    {
      v9 = *(v5 + 56) + 16 * v7;
      v10 = *(v9 + 8);
      v11 = *v9;

      if (v10 < 1)
      {
      }

      else
      {
        if (qword_27CDB4F68 != -1)
        {
          swift_once();
        }

        sub_21BCA59D4(a1, a2, 1, 0x657265766F636572, 0xE900000000000064);
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v12 = sub_21BC7B6E0(a1, a2);
  swift_endAccess();
}

void sub_21BE08A90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21BE28D3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a3;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  if (!swift_dynamicCast())
  {
    swift_beginAccess();
    if (*(*(v4 + 16) + 16) && (v38 = *(v4 + 16), , sub_21BBB3108(a1, a2), v40 = v39, , (v40 & 1) != 0))
    {
      v41 = *(v4 + 16);
      if (!*(v41 + 16))
      {
        return;
      }

      v42 = *(v4 + 16);

      v43 = sub_21BBB3108(a1, a2);
      if ((v44 & 1) == 0)
      {

        return;
      }

      v45 = *(v41 + 56) + 16 * v43;
      v46 = *(v45 + 8);
      v47 = *v45;

      if (__OFADD__(v46, 1))
      {
        __break(1u);
        return;
      }

      v48 = sub_21BE25A7C();

      swift_beginAccess();

      v49 = v48;
      v50 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_21BC7FB30(v49, v46 + 1, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v4 + 16) = v61;
      swift_endAccess();

      if (v46)
      {

        return;
      }
    }

    else
    {
      v52 = sub_21BE25A7C();
      swift_beginAccess();

      v49 = v52;
      v53 = *(v4 + 16);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v61 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_21BC7FB30(v49, 1, a1, a2, v54);

      *(v4 + 16) = v61;
      swift_endAccess();
    }

    v55 = v49;
    v56 = sub_21BE2608C();
    v58 = v57;

    if (!v58)
    {
      v62 = 0x203A726F727245;
      v63 = 0xE700000000000000;
      v61 = [v55 code];
      v59 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v59);

      v56 = v62;
      v58 = v63;
    }

    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    sub_21BCA59D4(a1, a2, 0, v56, v58);

    goto LABEL_24;
  }

  (*(v14 + 8))(v17, v13);
  sub_21BE261BC();

  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v60 = a3;
    v23 = a2;
    v24 = a1;
    v25 = v22;
    v64 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_21BB3D81C(v24, v23, &v64);
    _os_log_impl(&dword_21BB35000, v19, v20, "Timeout, immediate skip for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v26 = v25;
    a1 = v24;
    a2 = v23;
    MEMORY[0x21CF05C50](v26, -1, -1);
    MEMORY[0x21CF05C50](v21, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  if (!*(*(v4 + 16) + 16) || (v27 = *(v4 + 16), , sub_21BBB3108(a1, a2), v29 = v28, , (v29 & 1) == 0))
  {
    v30 = sub_21BE25A7C();
    v31 = sub_21BE2608C();
    v33 = v32;

    if (!v33)
    {
      v62 = 0x203A726F727245;
      v63 = 0xE700000000000000;
      v61 = [v30 code];
      v34 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v34);

      v31 = v62;
      v33 = v63;
    }

    swift_beginAccess();

    v35 = v30;
    v36 = *(v4 + 16);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_21BC7FB30(v35, 1, a1, a2, v37);

    *(v4 + 16) = v61;
    swift_endAccess();
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    sub_21BCA59D4(a1, a2, 0, v31, v33);

LABEL_24:
  }
}

uint64_t sub_21BE09194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_21BB3B038(a5, a3, a4);
    sub_21BE26C0C();

    sub_21BE26C4C();
  }

  return result;
}

char *sub_21BE09254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ServicesStore();
  v26[3] = v8;
  v26[4] = &off_282D8FEE0;
  v26[0] = a3;
  v24 = type metadata accessor for FamilyPictureStore(0);
  v25 = &off_282D95F60;
  v23[0] = a4;
  v9 = objc_allocWithZone(type metadata accessor for AppleCashItemProvider(0));
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v26, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v24;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_21BE0A4B4(a1, a2, *v13, *v19, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v21;
}

char *sub_21BE09438(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63D8, &qword_21BE346D8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v24 = type metadata accessor for FamilyCircleStore(0);
  v68[3] = v24;
  v68[4] = &protocol witness table for FamilyCircleStore;
  a2[qword_27CDB6380] = 0;
  v68[0] = a1;
  v25 = qword_27CDB6388;
  v26 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63A8, &qword_21BE34530);
  sub_21BE26C6C();
  (*(v20 + 32))(&a2[v25], v23, v19);
  sub_21BB3A35C(v68, &a2[qword_27CDD4150]);
  v66 = type metadata accessor for FamilyContactsItemProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0F8, &qword_21BE50898);
  v27 = sub_21BE28A5C();
  if (v26 >> 62)
  {
    v56 = v28;
    v57 = v27;
    if (sub_21BE2951C())
    {
      v29 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v29 = MEMORY[0x277D84FA0];
    }

    v27 = v57;
    v28 = v56;
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  *&a2[qword_27CDB63F8] = v29;
  *&a2[qword_27CDB6400] = 0;
  v30 = &a2[qword_27CDB63F0];
  *v30 = v27;
  v30[1] = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE100, &qword_21BE508A0);
  v67.receiver = a2;
  v67.super_class = v31;
  v32 = objc_msgSendSuper2(&v67, sel_init);
  v34 = *&v32[qword_27CDB63F0];
  v33 = *&v32[qword_27CDB63F0 + 8];
  v35 = v32;

  sub_21BE261BC();
  v36 = sub_21BE26A4C();
  (*(*(v36 - 8) + 56))(v18, 0, 1, v36);
  *(swift_allocObject() + 16) = v35;
  v66 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE108, &qword_21BE508B0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v35;
  v41 = sub_21BE262AC();
  v42 = *&v40[qword_27CDB6400];
  *&v40[qword_27CDB6400] = v41;

  sub_21BE01630(&unk_282D9A130, sub_21BE12B7C, &block_descriptor_321);

  off_282D95F10(v24, &protocol witness table for FamilyCircleStore);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v44 = sub_21BE2635C();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v48 = v62;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v49 = v63;
  v50 = v60;
  sub_21BE26CFC();
  (*(v59 + 8))(v7, v50);
  v51 = swift_allocObject();
  v51[2] = v47;
  v51[3] = &unk_21BE508B8;
  v51[4] = v43;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v52 = v65;
  sub_21BE26D1C();

  (*(v64 + 8))(v49, v52);
  (*(v61 + 8))(v14, v48);
  swift_beginAccess();
  v53 = v40;
  sub_21BE26BBC();
  swift_endAccess();

  v54 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4F00 != -1)
  {
    swift_once();
  }

  [v54 addObserver:v53 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  return v53;
}

char *sub_21BE09C7C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA50, &unk_21BE508C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v24 = type metadata accessor for FamilyCircleStore(0);
  v68[3] = v24;
  v68[4] = &protocol witness table for FamilyCircleStore;
  v68[0] = a1;
  v25 = qword_27CDBAA08;
  v26 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA28, &qword_21BE44C28);
  sub_21BE26C6C();
  (*(v20 + 32))(&a2[v25], v23, v19);
  sub_21BB3A35C(v68, &a2[qword_27CDD42E0]);
  v66 = type metadata accessor for FamilyContactsItemProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0F8, &qword_21BE50898);
  v27 = sub_21BE28A5C();
  if (v26 >> 62)
  {
    v56 = v28;
    v57 = v27;
    if (sub_21BE2951C())
    {
      v29 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v29 = MEMORY[0x277D84FA0];
    }

    v27 = v57;
    v28 = v56;
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  *&a2[qword_27CDB63F8] = v29;
  *&a2[qword_27CDB6400] = 0;
  v30 = &a2[qword_27CDB63F0];
  *v30 = v27;
  v30[1] = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE120, &qword_21BE508D0);
  v67.receiver = a2;
  v67.super_class = v31;
  v32 = objc_msgSendSuper2(&v67, sel_init);
  v34 = *&v32[qword_27CDB63F0];
  v33 = *&v32[qword_27CDB63F0 + 8];
  v35 = v32;

  sub_21BE261BC();
  v36 = sub_21BE26A4C();
  (*(*(v36 - 8) + 56))(v18, 0, 1, v36);
  *(swift_allocObject() + 16) = v35;
  v66 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE128, &qword_21BE508E0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v35;
  v41 = sub_21BE262AC();
  v42 = *&v40[qword_27CDB6400];
  *&v40[qword_27CDB6400] = v41;

  sub_21BE01630(&unk_282D9A220, sub_21BE12CF0, &block_descriptor_342);

  off_282D95F10(v24, &protocol witness table for FamilyCircleStore);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v44 = sub_21BE2635C();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v48 = v62;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v49 = v63;
  v50 = v60;
  sub_21BE26CFC();
  (*(v59 + 8))(v7, v50);
  v51 = swift_allocObject();
  v51[2] = v47;
  v51[3] = &unk_21BE508E8;
  v51[4] = v43;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v52 = v65;
  sub_21BE26D1C();

  (*(v64 + 8))(v49, v52);
  (*(v61 + 8))(v14, v48);
  swift_beginAccess();
  v53 = v40;
  sub_21BE26BBC();
  swift_endAccess();

  v54 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EF8 != -1)
  {
    swift_once();
  }

  [v54 addObserver:v53 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  return v53;
}

char *sub_21BE0A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v60 = *(v62 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v12 = &v59 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v59 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v63 = *(v64 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6590, &unk_21BE50860);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - v24;
  v74[3] = type metadata accessor for FamilyCircleStore(0);
  v74[4] = &protocol witness table for FamilyCircleStore;
  v74[0] = a2;
  v72 = type metadata accessor for ServicesStore();
  v73 = &off_282D8FEE0;
  v71[0] = a3;
  v70[3] = type metadata accessor for FamilyPictureStore(0);
  v70[4] = &off_282D95F60;
  v70[0] = a4;
  v26 = qword_27CDB64A0;
  v27 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB64D0, &qword_21BE34BA0);
  sub_21BE26C6C();
  (*(v22 + 32))(&a5[v26], v25, v21);
  v28 = qword_27CDB64A8;
  *&a5[v28] = sub_21BBB541C(v27);
  sub_21BB3A35C(v74, &a5[qword_27CDD4158]);
  sub_21BB3A35C(v71, &a5[qword_27CDD4160]);
  *&a5[qword_27CDD4168] = a1;
  sub_21BB3A35C(v70, &a5[qword_27CDD4170]);
  v68 = type metadata accessor for AppleCashItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0D0, &qword_21BE50870);
  v29 = sub_21BE28A5C();
  if (v27 >> 62)
  {
    v57 = v30;
    v58 = v29;
    if (sub_21BE2951C())
    {
      v31 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v31 = MEMORY[0x277D84FA0];
    }

    v29 = v58;
    v30 = v57;
  }

  else
  {
    v31 = MEMORY[0x277D84FA0];
  }

  *&a5[qword_27CDB63F8] = v31;
  *&a5[qword_27CDB6400] = 0;
  v32 = &a5[qword_27CDB63F0];
  *v32 = v29;
  v32[1] = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0D8, &qword_21BE50878);
  v69.receiver = a5;
  v69.super_class = v33;
  v34 = objc_msgSendSuper2(&v69, sel_init);
  v35 = *&v34[qword_27CDB63F0];
  v36 = *&v34[qword_27CDB63F0 + 8];
  v37 = v34;

  sub_21BE261BC();
  v38 = sub_21BE26A4C();
  (*(*(v38 - 8) + 56))(v20, 0, 1, v38);
  *(swift_allocObject() + 16) = v37;
  v68 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0E0, &qword_21BE50888);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v37;
  v43 = sub_21BE262AC();
  v44 = *&v42[qword_27CDB6400];
  *&v42[qword_27CDB6400] = v43;

  sub_21BE01630(&unk_282D9A040, sub_21BE12A08, &block_descriptor_300);

  __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  v45 = v61;
  off_282D8FEF0();
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v47 = sub_21BE2635C();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0);
  sub_21BDD3A64();
  v51 = v64;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0);
  v52 = v65;
  v53 = v62;
  sub_21BE26CFC();
  (*(v60 + 8))(v12, v53);
  v54 = swift_allocObject();
  v54[2] = v50;
  v54[3] = &unk_21BE50890;
  v54[4] = v46;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8);

  v55 = v67;
  sub_21BE26D1C();

  (*(v66 + 8))(v52, v55);
  (*(v63 + 8))(v45, v51);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v71);
  return v42;
}

char *sub_21BE0AD58(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF0, &unk_21BE41518);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - v24;
  v69 = type metadata accessor for FamilyCircleStore(0);
  v70 = &protocol witness table for FamilyCircleStore;
  v58 = v69;
  v68[0] = a1;
  v26 = qword_27CDB9B90;
  v27 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BB0, &qword_21BE50830);
  sub_21BE26C6C();
  (*(v22 + 32))(&a3[v26], v25, v21);
  sub_21BB3A35C(v68, &a3[qword_27CDD42D8]);
  *&a3[qword_27CDD42D0] = a2;
  v66 = type metadata accessor for EmergencyContactItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0A8, &qword_21BE50838);
  v28 = sub_21BE28A5C();
  if (v27 >> 62)
  {
    v56 = v29;
    v57 = v28;
    if (sub_21BE2951C())
    {
      v30 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v30 = MEMORY[0x277D84FA0];
    }

    v28 = v57;
    v29 = v56;
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  *&a3[qword_27CDB63F8] = v30;
  *&a3[qword_27CDB6400] = 0;
  v31 = &a3[qword_27CDB63F0];
  *v31 = v28;
  v31[1] = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0B0, &qword_21BE50840);
  v67.receiver = a3;
  v67.super_class = v32;
  v33 = objc_msgSendSuper2(&v67, sel_init);
  v34 = *&v33[qword_27CDB63F0];
  v35 = *&v33[qword_27CDB63F0 + 8];
  v36 = v33;

  sub_21BE261BC();
  v37 = sub_21BE26A4C();
  (*(*(v37 - 8) + 56))(v20, 0, 1, v37);
  *(swift_allocObject() + 16) = v36;
  v66 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0B8, &qword_21BE50850);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v36;
  v42 = sub_21BE262AC();
  v43 = *&v41[qword_27CDB6400];
  *&v41[qword_27CDB6400] = v42;

  sub_21BE01630(&unk_282D99F50, sub_21BE12894, &block_descriptor_279);

  v44 = [objc_opt_self() defaultCenter];
  [v44 addObserver:v41 selector:sel_medicalDidChange name:*MEMORY[0x277D08118] object:0];

  off_282D95F10(v58, &protocol witness table for FamilyCircleStore);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = sub_21BE2635C();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v50 = v62;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v51 = v63;
  v52 = v60;
  sub_21BE26CFC();
  (*(v59 + 8))(v9, v52);
  v53 = swift_allocObject();
  v53[2] = v49;
  v53[3] = &unk_21BE50858;
  v53[4] = v45;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v54 = v65;
  sub_21BE26D1C();

  (*(v64 + 8))(v51, v54);
  (*(v61 + 8))(v16, v50);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  return v41;
}

char *sub_21BE0B56C(uint64_t a1, uint64_t a2, char *a3)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v60 = *(v61 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE140, &unk_21BE508F0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  v25 = type metadata accessor for FamilyCircleStore(0);
  v70[3] = v25;
  v70[4] = &protocol witness table for FamilyCircleStore;
  v70[0] = a1;
  v69[3] = type metadata accessor for ContactManagementStore();
  v69[4] = &off_282D8F758;
  v69[0] = a2;
  v26 = qword_27CDBE220;
  v27 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE148, &qword_21BE50E10);
  sub_21BE26C6C();
  (*(v21 + 32))(&a3[v26], v24, v20);
  sub_21BB3A35C(v70, &a3[qword_27CDD4410]);
  sub_21BB3A35C(v69, &a3[qword_27CDD4418]);
  v67 = type metadata accessor for CommLimitsItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE150, &qword_21BE50900);
  v28 = sub_21BE28A5C();
  if (v27 >> 62)
  {
    v57 = v29;
    v58 = v28;
    if (sub_21BE2951C())
    {
      v30 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v30 = MEMORY[0x277D84FA0];
    }

    v28 = v58;
    v29 = v57;
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  *&a3[qword_27CDB63F8] = v30;
  *&a3[qword_27CDB6400] = 0;
  v31 = &a3[qword_27CDB63F0];
  *v31 = v28;
  v31[1] = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE158, &qword_21BE50908);
  v68.receiver = a3;
  v68.super_class = v32;
  v33 = objc_msgSendSuper2(&v68, sel_init);
  v34 = *&v33[qword_27CDB63F0];
  v35 = *&v33[qword_27CDB63F0 + 8];
  v36 = v33;

  sub_21BE261BC();
  v37 = sub_21BE26A4C();
  (*(*(v37 - 8) + 56))(v19, 0, 1, v37);
  *(swift_allocObject() + 16) = v36;
  v67 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE160, &qword_21BE50918);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v36;
  v42 = sub_21BE262AC();
  v43 = *&v41[qword_27CDB6400];
  *&v41[qword_27CDB6400] = v42;

  sub_21BE01630(&unk_282D9A310, sub_21BE12E64, &block_descriptor_363);

  off_282D95F10(v25, &protocol witness table for FamilyCircleStore);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v45 = sub_21BE2635C();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v49 = v63;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v50 = v64;
  v51 = v61;
  sub_21BE26CFC();
  (*(v60 + 8))(v8, v51);
  v52 = swift_allocObject();
  v52[2] = v48;
  v52[3] = &unk_21BE50920;
  v52[4] = v44;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v53 = v66;
  sub_21BE26D1C();

  (*(v65 + 8))(v50, v53);
  (*(v62 + 8))(v15, v49);
  swift_beginAccess();
  v54 = v41;
  sub_21BE26BBC();
  swift_endAccess();

  v55 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EA0 != -1)
  {
    swift_once();
  }

  [v55 addObserver:v54 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  return v54;
}

char *sub_21BE0BDFC(uint64_t a1, uint64_t a2, char *a3)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v65 = *(v66 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v69 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCDA0, &unk_21BE4C760);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  v25 = type metadata accessor for FamilyCircleStore(0);
  v75[3] = v25;
  v75[4] = &protocol witness table for FamilyCircleStore;
  v75[0] = a1;
  v74[3] = sub_21BB3A2A4(0, &qword_27CDBCDB8, 0x277CD1A90);
  v74[4] = &off_282D969B0;
  v74[0] = a2;
  v26 = qword_27CDBCCD0;
  v27 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCD58, &qword_21BE4C530);
  sub_21BE26C6C();
  (*(v21 + 32))(&a3[v26], v24, v20);
  *&a3[qword_27CDD4380] = 0;
  sub_21BB3A35C(v74, &a3[qword_27CDD4388]);
  sub_21BB3A35C(v75, &a3[qword_27CDD4390]);
  v72 = type metadata accessor for HomeItemProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE178, &qword_21BE50928);
  v28 = sub_21BE28A5C();
  if (v27 >> 62)
  {
    v62 = v29;
    v63 = v28;
    if (sub_21BE2951C())
    {
      v30 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v30 = MEMORY[0x277D84FA0];
    }

    v28 = v63;
    v29 = v62;
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  *&a3[qword_27CDB63F8] = v30;
  *&a3[qword_27CDB6400] = 0;
  v31 = &a3[qword_27CDB63F0];
  *v31 = v28;
  v31[1] = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE180, &qword_21BE50930);
  v73.receiver = a3;
  v73.super_class = v32;
  v33 = objc_msgSendSuper2(&v73, sel_init);
  v34 = *&v33[qword_27CDB63F0];
  v35 = *&v33[qword_27CDB63F0 + 8];
  v36 = v33;

  sub_21BE261BC();
  v37 = sub_21BE26A4C();
  (*(*(v37 - 8) + 56))(v19, 0, 1, v37);
  *(swift_allocObject() + 16) = v36;
  v72 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE188, &qword_21BE50940);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v36;
  v42 = sub_21BE262AC();
  v43 = *&v41[qword_27CDB6400];
  *&v41[qword_27CDB6400] = v42;

  sub_21BE01630(&unk_282D9A400, sub_21BE12FD8, &block_descriptor_384);

  v44 = &v41[qword_27CDD4388];
  swift_beginAccess();
  v45 = *(v44 + 24);
  v46 = *(v44 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v47 = *(v46 + 16);
  v48 = v41;
  v47(v41, v45, v46);
  swift_endAccess();
  off_282D95F10(v25, &protocol witness table for FamilyCircleStore);
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v50 = sub_21BE2635C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v54 = v68;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v55 = v69;
  v56 = v66;
  sub_21BE26CFC();
  (*(v65 + 8))(v8, v56);
  v57 = swift_allocObject();
  v57[2] = v53;
  v57[3] = &unk_21BE50948;
  v57[4] = v49;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v58 = v71;
  sub_21BE26D1C();

  (*(v70 + 8))(v55, v58);
  (*(v67 + 8))(v15, v54);
  swift_beginAccess();
  v59 = v48;
  sub_21BE26BBC();
  swift_endAccess();

  v60 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4E98 != -1)
  {
    swift_once();
  }

  [v60 addObserver:v59 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  return v59;
}

uint64_t sub_21BE0C710(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;

  v8 = v6;
  sub_21BE2633C();
}

char *sub_21BE0C7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FamilyPictureStore(0);
  v24[3] = v6;
  v24[4] = &off_282D95F60;
  v24[0] = a2;
  v22 = type metadata accessor for AgeBasedPresetService();
  v23 = &off_282D8C0B0;
  v21[0] = a3;
  v7 = objc_allocWithZone(type metadata accessor for ParentalControlItemProvider(0));
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = v22;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_21BE0D248(a1, *v11, *v17, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return v19;
}

char *sub_21BE0C988(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v63 = *(v64 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v11);
  v67 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDB68, &qword_21BE4F580);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  v75[3] = type metadata accessor for FamilyCircleStore(0);
  v75[4] = &protocol witness table for FamilyCircleStore;
  v75[0] = a2;
  v73 = type metadata accessor for ServicesStore();
  v74 = &off_282D8FEE0;
  v62 = v73;
  v72[0] = a3;
  v27 = qword_27CDBDAF0;
  v28 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDB20, &qword_21BE50670);
  sub_21BE26C6C();
  (*(v23 + 32))(&a4[v27], v26, v22);
  v29 = qword_27CDBDAF8;
  *&a4[v29] = sub_21BBB541C(v28);
  sub_21BB3A35C(v75, &a4[qword_27CDD43C0]);
  sub_21BB3A35C(v72, &a4[qword_27CDD43C8]);
  *&a4[qword_27CDD43D0] = a1;
  v70 = type metadata accessor for PurchaseSharingItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF68, &qword_21BE50678);
  v30 = sub_21BE28A5C();
  if (v28 >> 62)
  {
    v60 = v31;
    v61 = v30;
    if (sub_21BE2951C())
    {
      v32 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v32 = MEMORY[0x277D84FA0];
    }

    v30 = v61;
    v31 = v60;
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v32;
  *&a4[qword_27CDB6400] = 0;
  v33 = &a4[qword_27CDB63F0];
  *v33 = v30;
  v33[1] = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF70, &qword_21BE50680);
  v71.receiver = a4;
  v71.super_class = v34;
  v35 = objc_msgSendSuper2(&v71, sel_init);
  v36 = *&v35[qword_27CDB63F0];
  v37 = *&v35[qword_27CDB63F0 + 8];
  v38 = v35;

  sub_21BE261BC();
  v39 = sub_21BE26A4C();
  (*(*(v39 - 8) + 56))(v21, 0, 1, v39);
  *(swift_allocObject() + 16) = v38;
  v70 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF78, &qword_21BE50690);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = v38;
  v44 = sub_21BE262AC();
  v45 = *&v43[qword_27CDB6400];
  *&v43[qword_27CDB6400] = v44;

  sub_21BE01630(&unk_282D99988, sub_21BE11EB0, &block_descriptor_142);

  v46 = [objc_opt_self() defaultCenter];
  v47 = qword_27CDB4EC0;
  v48 = v43;
  if (v47 != -1)
  {
    swift_once();
  }

  [v46 addObserver:v48 selector:sel_handleDismiss name:qword_27CDB7E70 object:0];

  __swift_project_boxed_opaque_existential_1Tm(v72, v73);
  off_282D8FEF0();
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v50 = sub_21BE2635C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0);
  sub_21BDD3A64();
  v54 = v66;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0);
  v55 = v67;
  v56 = v64;
  sub_21BE26CFC();
  (*(v63 + 8))(v10, v56);
  v57 = swift_allocObject();
  v57[2] = v53;
  v57[3] = &unk_21BE50698;
  v57[4] = v49;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8);

  v58 = v69;
  sub_21BE26D1C();

  (*(v68 + 8))(v55, v58);
  (*(v65 + 8))(v17, v54);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v72);
  return v48;
}

char *sub_21BE0D248(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF90, &qword_21BE506A8);
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v10 = &v59 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF98, &qword_21BE506B0);
  v66 = *(v67 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v59 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFA0, &qword_21BE506B8);
  v63 = *(v64 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73A0, &unk_21BE506C0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v74[3] = type metadata accessor for FamilyCircleStore(0);
  v74[4] = &protocol witness table for FamilyCircleStore;
  v74[0] = a1;
  v24 = type metadata accessor for FamilyPictureStore(0);
  v72 = v24;
  v73 = &off_282D95F60;
  v71[0] = a2;
  v70[3] = type metadata accessor for AgeBasedPresetService();
  v70[4] = &off_282D8C0B0;
  v70[0] = a3;
  v25 = qword_27CDB7340;
  v26 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7360, &unk_21BE37290);
  sub_21BE26C6C();
  (*(v20 + 32))(&a4[v25], v23, v19);
  sub_21BB3A35C(v74, &a4[qword_27CDB7330]);
  sub_21BB3A35C(v70, &a4[qword_27CDB7328]);
  sub_21BB3A35C(v71, &a4[qword_27CDB7338]);
  v68 = type metadata accessor for ParentalControlItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFA8, &qword_21BE506D0);
  v27 = sub_21BE28A5C();
  if (v26 >> 62)
  {
    v57 = v28;
    v58 = v27;
    if (sub_21BE2951C())
    {
      v29 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v29 = MEMORY[0x277D84FA0];
    }

    v27 = v58;
    v28 = v57;
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v29;
  *&a4[qword_27CDB6400] = 0;
  v30 = &a4[qword_27CDB63F0];
  *v30 = v27;
  v30[1] = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFB0, &qword_21BE506D8);
  v69.receiver = a4;
  v69.super_class = v31;
  v32 = objc_msgSendSuper2(&v69, sel_init);
  v33 = *&v32[qword_27CDB63F0];
  v34 = *&v32[qword_27CDB63F0 + 8];
  v35 = v32;

  sub_21BE261BC();
  v36 = sub_21BE26A4C();
  (*(*(v36 - 8) + 56))(v18, 0, 1, v36);
  *(swift_allocObject() + 16) = v35;
  v68 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFB8, &qword_21BE506E8);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v35;
  v41 = sub_21BE262AC();
  v42 = *&v40[qword_27CDB6400];
  *&v40[qword_27CDB6400] = v41;

  sub_21BE01630(&unk_282D99AA0, sub_21BE120E0, &block_descriptor_168_0);

  __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  v43 = v61;
  off_282D95F80(v24, &off_282D95F60);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v45 = sub_21BE2635C();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBDFC0, &qword_27CDBDFA0, &qword_21BE506B8);
  sub_21BB3CC8C(&qword_27CDBDFC8, &qword_280BD8A10, off_2782F0CC0);
  v49 = v64;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBDFD0, &qword_27CDBDF90, &qword_21BE506A8);
  v50 = v65;
  v51 = v62;
  sub_21BE26CFC();
  (*(v60 + 8))(v10, v51);
  v52 = swift_allocObject();
  v52[2] = v48;
  v52[3] = &unk_21BE506F0;
  v52[4] = v44;
  sub_21BB3B038(&qword_27CDBDFD8, &qword_27CDBDF98, &qword_21BE506B0);

  v53 = v67;
  sub_21BE26D1C();

  (*(v66 + 8))(v50, v53);
  (*(v63 + 8))(v43, v49);
  swift_beginAccess();
  v54 = v40;
  sub_21BE26BBC();
  swift_endAccess();

  v55 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EA8 != -1)
  {
    swift_once();
  }

  [v55 addObserver:v54 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v71);
  return v54;
}

char *sub_21BE0DB70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v63 = *(v64 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v10 = &v61 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v68 = *(v69 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v61 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v65 = *(v66 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE018, &qword_21BE50738);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  v76[3] = sub_21BB3A2A4(0, &qword_27CDBE020, 0x277CEC790);
  v76[4] = &off_282D9A748;
  v76[0] = a1;
  v75[3] = sub_21BB3A2A4(0, &qword_27CDBE028, 0x277CF0130);
  v75[4] = &off_282D98978;
  v75[0] = a2;
  v73 = type metadata accessor for FamilyCircleStore(0);
  v74 = &protocol witness table for FamilyCircleStore;
  v62 = v73;
  v72[0] = a3;
  v25 = qword_27CDBE1C0;
  v26 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE030, &qword_21BE50740);
  sub_21BE26C6C();
  (*(v21 + 32))(&a4[v25], v24, v20);
  sub_21BB3A35C(v76, &a4[qword_27CDD43F8]);
  sub_21BB3A35C(v75, &a4[qword_27CDD4408]);
  sub_21BB3A35C(v72, &a4[qword_27CDD4400]);
  v70 = type metadata accessor for RecoveryContactItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE038, &qword_21BE50748);
  v27 = sub_21BE28A5C();
  if (v26 >> 62)
  {
    v59 = v28;
    v60 = v27;
    if (sub_21BE2951C())
    {
      v29 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v29 = MEMORY[0x277D84FA0];
    }

    v27 = v60;
    v28 = v59;
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v29;
  *&a4[qword_27CDB6400] = 0;
  v30 = &a4[qword_27CDB63F0];
  *v30 = v27;
  v30[1] = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE040, &qword_21BE50750);
  v71.receiver = a4;
  v71.super_class = v31;
  v32 = objc_msgSendSuper2(&v71, sel_init);
  v33 = *&v32[qword_27CDB63F0];
  v34 = *&v32[qword_27CDB63F0 + 8];
  v35 = v32;

  sub_21BE261BC();
  v36 = sub_21BE26A4C();
  (*(*(v36 - 8) + 56))(v19, 0, 1, v36);
  *(swift_allocObject() + 16) = v35;
  v70 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE048, &qword_21BE50760);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v35;
  v41 = sub_21BE262AC();
  v42 = *&v40[qword_27CDB6400];
  *&v40[qword_27CDB6400] = v41;

  sub_21BE01630(&unk_282D99C80, sub_21BE12438, &block_descriptor_210);

  v43 = objc_opt_self();
  v44 = [v43 defaultCenter];
  v45 = qword_27CDB4EB8;
  v46 = v40;
  if (v45 != -1)
  {
    swift_once();
  }

  [v44 addObserver:v46 selector:sel_recoveryContactViewDismissed name:qword_27CDB7E68 object:0];

  v47 = [v43 defaultCenter];
  [v47 addObserver:v46 selector:sel_recoveryContactChanged name:*MEMORY[0x277CEC6F8] object:0];

  off_282D95F10(v62, &protocol witness table for FamilyCircleStore);
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v49 = sub_21BE2635C();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v53 = v66;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v54 = v67;
  v55 = v64;
  sub_21BE26CFC();
  (*(v63 + 8))(v10, v55);
  v56 = swift_allocObject();
  v56[2] = v52;
  v56[3] = &unk_21BE50768;
  v56[4] = v48;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v57 = v69;
  sub_21BE26D1C();

  (*(v68 + 8))(v54, v57);
  (*(v65 + 8))(v15, v53);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  __swift_destroy_boxed_opaque_existential_0Tm(v72);
  return v46;
}

char *sub_21BE0E4D0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v55 = *(v57 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v10 = &v54 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v61 = *(v62 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v54 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v58 = *(v59 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6720, &unk_21BE50770);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v69[3] = sub_21BB3A2A4(0, &qword_27CDB6918, 0x277CED1D0);
  v69[4] = &off_282D98998;
  v69[0] = a1;
  v68[3] = type metadata accessor for FamilyCircleStore(0);
  v68[4] = &protocol witness table for FamilyCircleStore;
  v68[0] = a3;
  v66 = type metadata accessor for ServicesStore();
  v67 = &off_282D8FEE0;
  v65[0] = a2;
  v24 = qword_27CDB66D0;
  v25 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB66F0, &qword_21BE35120);
  sub_21BE26C6C();
  (*(v20 + 32))(&a4[v24], v23, v19);
  *&a4[qword_27CDD4190] = 0;
  sub_21BB3A35C(v65, &a4[qword_27CDD4180]);
  sub_21BB3A35C(v69, &a4[qword_27CDD4178]);
  sub_21BB3A35C(v68, &a4[qword_27CDD4188]);
  if (v25 >> 62 && sub_21BE2951C())
  {
    v26 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v26;
  *&a4[qword_27CDB6400] = 0;
  v27 = &a4[qword_27CDB63F0];
  *v27 = 0xD000000000000016;
  *(v27 + 1) = 0x800000021BE62960;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE060, &qword_21BE50780);
  v64.receiver = a4;
  v64.super_class = v28;
  v29 = objc_msgSendSuper2(&v64, sel_init);
  v30 = *&v29[qword_27CDB63F0];
  v31 = *&v29[qword_27CDB63F0 + 8];
  v32 = v29;

  sub_21BE261BC();
  v33 = sub_21BE26A4C();
  (*(*(v33 - 8) + 56))(v18, 0, 1, v33);
  *(swift_allocObject() + 16) = v32;
  v63 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE068, &qword_21BE50790);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v32;
  v38 = sub_21BE262AC();
  v39 = *&v37[qword_27CDB6400];
  *&v37[qword_27CDB6400] = v38;

  sub_21BE01630(&unk_282D99D70, sub_21BE125AC, &block_descriptor_231);

  __swift_project_boxed_opaque_existential_1Tm(v65, v66);
  v40 = v56;
  off_282D8FEF0();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v42 = sub_21BE2635C();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0);
  sub_21BDD3A64();
  v46 = v59;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0);
  v47 = v60;
  v48 = v57;
  sub_21BE26CFC();
  (*(v55 + 8))(v10, v48);
  v49 = swift_allocObject();
  v49[2] = v45;
  v49[3] = &unk_21BE50798;
  v49[4] = v41;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8);

  v50 = v62;
  sub_21BE26D1C();

  (*(v61 + 8))(v47, v50);
  (*(v58 + 8))(v40, v46);
  swift_beginAccess();
  v51 = v37;
  sub_21BE26BBC();
  swift_endAccess();

  v52 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4E90 != -1)
  {
    swift_once();
  }

  [v52 addObserver:v51 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  return v51;
}

char *sub_21BE0EDCC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v60 = *(v61 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v10 = &v60 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v65 = *(v66 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v60 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v62 = *(v63 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B28, &unk_21BE507A0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - v23;
  v71[3] = sub_21BB3A2A4(0, &qword_27CDBE020, 0x277CEC790);
  v71[4] = &off_282D8DE78;
  v71[0] = a1;
  v70[3] = sub_21BB3A2A4(0, &qword_27CDBE028, 0x277CF0130);
  v70[4] = &off_282D98978;
  v70[0] = a2;
  v25 = type metadata accessor for FamilyCircleStore(0);
  v69[3] = v25;
  v69[4] = &protocol witness table for FamilyCircleStore;
  v69[0] = a3;
  v26 = qword_27CDB8AC0;
  v27 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AE0, &qword_21BE3D330);
  sub_21BE26C6C();
  (*(v21 + 32))(&a4[v26], v24, v20);
  sub_21BB3A35C(v71, &a4[qword_27CDD4278]);
  sub_21BB3A35C(v70, &a4[qword_27CDD4280]);
  sub_21BB3A35C(v69, &a4[qword_27CDD4288]);
  v67 = type metadata accessor for BeneficiaryItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE080, &qword_21BE507B0);
  v28 = sub_21BE28A5C();
  if (v27 >> 62)
  {
    v58 = v29;
    v59 = v28;
    if (sub_21BE2951C())
    {
      v30 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v30 = MEMORY[0x277D84FA0];
    }

    v28 = v59;
    v29 = v58;
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v30;
  *&a4[qword_27CDB6400] = 0;
  v31 = &a4[qword_27CDB63F0];
  *v31 = v28;
  v31[1] = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE088, &qword_21BE507B8);
  v68.receiver = a4;
  v68.super_class = v32;
  v33 = objc_msgSendSuper2(&v68, sel_init);
  v34 = *&v33[qword_27CDB63F0];
  v35 = *&v33[qword_27CDB63F0 + 8];
  v36 = v33;

  sub_21BE261BC();
  v37 = sub_21BE26A4C();
  (*(*(v37 - 8) + 56))(v19, 0, 1, v37);
  *(swift_allocObject() + 16) = v36;
  v67 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE090, &qword_21BE507C8);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v36;
  v42 = sub_21BE262AC();
  v43 = *&v41[qword_27CDB6400];
  *&v41[qword_27CDB6400] = v42;

  sub_21BE01630(&unk_282D99E60, sub_21BE12720, &block_descriptor_252);

  v44 = [objc_opt_self() defaultCenter];
  v45 = qword_27CDB4EB0;
  v46 = v41;
  if (v45 != -1)
  {
    swift_once();
  }

  [v44 addObserver:v46 selector:sel_handleDismiss name:qword_27CDB7E60 object:{0, v60}];

  off_282D95F10(v25, &protocol witness table for FamilyCircleStore);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v48 = sub_21BE2635C();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v52 = v63;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v53 = v64;
  v54 = v61;
  sub_21BE26CFC();
  (*(v60 + 8))(v10, v54);
  v55 = swift_allocObject();
  v55[2] = v51;
  v55[3] = &unk_21BE507D0;
  v55[4] = v47;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v56 = v66;
  sub_21BE26D1C();

  (*(v65 + 8))(v53, v56);
  (*(v62 + 8))(v15, v52);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v71);
  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  return v46;
}

char *sub_21BE0F6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v50 - v20;
  v58[3] = sub_21BB3A2A4(0, &qword_27CDBDF28, 0x277CC5A40);
  v58[4] = &off_282D96870;
  v58[0] = a2;
  v22 = type metadata accessor for FamilyCircleStore(0);
  v57[3] = v22;
  v57[4] = &protocol witness table for FamilyCircleStore;
  v57[0] = a1;
  sub_21BB3A35C(v57, a3 + qword_27CDD4370);
  sub_21BB3A35C(v58, a3 + qword_27CDD4378);
  v56 = type metadata accessor for SharedFamilyCalendarItemProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF30, &qword_21BE50628);
  v23 = sub_21BE28A5C();
  v25 = sub_21BE00774(v23, v24, *MEMORY[0x277CB8958]);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 defaultCenter];
  [v28 addObserver:v27 selector:sel_handleRefresh name:*MEMORY[0x277CC5960] object:0];

  v29 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EC8 != -1)
  {
    swift_once();
  }

  [v29 addObserver:v27 selector:sel_handleRefresh name:qword_27CDB7E78 object:{0, v50}];

  v30 = *(v27 + qword_27CDB63F0);
  v31 = *(v27 + qword_27CDB63F0 + 8);
  v32 = v27;

  sub_21BE261BC();
  v33 = sub_21BE26A4C();
  (*(*(v33 - 8) + 56))(v21, 0, 1, v33);
  *(swift_allocObject() + 16) = v32;
  v56 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF38, &qword_21BE50638);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v32;
  v38 = sub_21BE262AC();
  v39 = *&v37[qword_27CDB6400];
  *&v37[qword_27CDB6400] = v38;

  sub_21BE01630(&unk_282D99820, sub_21BE11C50, &block_descriptor_111);

  off_282D95F10(v22, &protocol witness table for FamilyCircleStore);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v41 = sub_21BE2635C();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v45 = v53;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v46 = v51;
  sub_21BE26CFC();
  (*(v50 + 8))(v9, v46);
  v47 = swift_allocObject();
  v47[2] = v44;
  v47[3] = &unk_21BE50640;
  v47[4] = v40;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v48 = v55;
  sub_21BE26D1C();

  (*(v54 + 8))(v13, v48);
  (*(v52 + 8))(v17, v45);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  return v37;
}

char *sub_21BE0FE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14);
  v59 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v54 - v23;
  v64[3] = sub_21BB3A2A4(0, &qword_27CDBDEF0, 0x277D49A50);
  v64[4] = &off_282D8B540;
  v64[0] = a2;
  v25 = type metadata accessor for FamilyCircleStore(0);
  v63[3] = v25;
  v63[4] = &protocol witness table for FamilyCircleStore;
  v63[0] = a1;
  sub_21BB3A35C(v63, a5 + qword_27CDD4200);
  sub_21BB3A35C(v64, a5 + qword_27CDD4208);
  v26 = (a5 + qword_27CDD4210);
  *v26 = a3;
  v26[1] = a4;
  v62 = type metadata accessor for SharedPasswordsItemProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEF8, &qword_21BE505E0);
  v27 = sub_21BE28A5C();
  v29 = sub_21BE00AB0(v27, v28, *MEMORY[0x277CB89C0]);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 defaultCenter];
  if (qword_27CDB4ED0 != -1)
  {
    swift_once();
  }

  [v32 addObserver:v31 selector:? name:? object:?];

  v33 = *(v31 + qword_27CDB63F0);
  v34 = *(v31 + qword_27CDB63F0 + 8);
  v35 = v31;

  sub_21BE261BC();
  v36 = sub_21BE26A4C();
  (*(*(v36 - 8) + 56))(v24, 0, 1, v36);
  *(swift_allocObject() + 16) = v35;
  v62 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF00, &qword_21BE505F0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v35;
  v41 = sub_21BE262AC();
  v42 = *&v40[qword_27CDB6400];
  *&v40[qword_27CDB6400] = v41;

  sub_21BE01630(&unk_282D996B8, sub_21BE119F0, &block_descriptor_79);

  off_282D95F10(v25, &protocol witness table for FamilyCircleStore);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v44 = sub_21BE2635C();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v48 = v58;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v49 = v59;
  v50 = v56;
  sub_21BE26CFC();
  (*(v55 + 8))(v13, v50);
  v51 = swift_allocObject();
  v51[2] = v47;
  v51[3] = &unk_21BE505F8;
  v51[4] = v43;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v52 = v61;
  sub_21BE26D1C();

  (*(v60 + 8))(v49, v52);
  (*(v57 + 8))(v20, v48);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v64);
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
  return v40;
}

char *sub_21BE105D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - v20;
  v57[3] = sub_21BB3A2A4(0, &qword_27CDBA3A8, 0x277D44850);
  v57[4] = &off_282D888B8;
  v57[0] = a2;
  v22 = type metadata accessor for FamilyCircleStore(0);
  v56[3] = v22;
  v56[4] = &protocol witness table for FamilyCircleStore;
  v56[0] = a1;
  sub_21BB3A35C(v56, a3 + qword_27CDD4120);
  sub_21BB3A35C(v57, a3 + qword_27CDD4128);
  v55 = type metadata accessor for SharedFamilyGroceryItemProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEB8, &qword_21BE50590);
  v23 = sub_21BE28A5C();
  v25 = sub_21BE00438(v23, v24, *MEMORY[0x277CB8A18]);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  [v28 addObserver:v27 selector:v49 name:? object:?];

  v30 = *(v27 + qword_27CDB63F0);
  v29 = *(v27 + qword_27CDB63F0 + 8);
  v31 = v27;

  sub_21BE261BC();
  v32 = sub_21BE26A4C();
  (*(*(v32 - 8) + 56))(v21, 0, 1, v32);
  *(swift_allocObject() + 16) = v31;
  v55 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEC0, &qword_21BE505A0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v31;
  v37 = sub_21BE262AC();
  v38 = *&v36[qword_27CDB6400];
  *&v36[qword_27CDB6400] = v37;

  sub_21BE01630(&unk_282D99550, sub_21BE11790, &block_descriptor_61);

  off_282D95F10(v22, &protocol witness table for FamilyCircleStore);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v40 = sub_21BE2635C();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v44 = v52;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v45 = v50;
  sub_21BE26CFC();
  (*(v49 + 8))(v9, v45);
  v46 = swift_allocObject();
  v46[2] = v43;
  v46[3] = &unk_21BE505A8;
  v46[4] = v39;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v47 = v54;
  sub_21BE26D1C();

  (*(v53 + 8))(v13, v47);
  (*(v51 + 8))(v17, v44);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  return v36;
}

uint64_t sub_21BE10D1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_21BE10D64(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v63 = *(v65 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v10 = &v62 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v62 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A98, &unk_21BE3D210);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v62 - v22;
  v76[3] = type metadata accessor for FamilyCircleStore(0);
  v76[4] = &protocol witness table for FamilyCircleStore;
  v76[0] = a1;
  v74 = type metadata accessor for ServicesStore();
  v75 = &off_282D8FEE0;
  v73[0] = a3;
  v24 = qword_27CDB8A40;
  v25 = MEMORY[0x277D84F90];
  v72[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A68, &qword_21BE3CFC0);
  sub_21BE26C6C();
  (*(v20 + 32))(&a4[v24], v23, v19);
  v26 = &a4[qword_27CDD4270];
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = qword_27CDB8A48;
  *&a4[qword_27CDB8A48] = 0;
  sub_21BB3A35C(v76, &a4[qword_27CDD4268]);
  sub_21BB3A35C(v73, v72);
  swift_beginAccess();
  sub_21BE1211C(v72, v26);
  swift_endAccess();
  v28 = *&a4[v27];
  *&a4[v27] = a2;
  v29 = a2;

  v72[0] = type metadata accessor for LocationItemProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFF0, &qword_21BE50710);
  v30 = sub_21BE28A5C();
  if (v25 >> 62)
  {
    v60 = v31;
    v61 = v30;
    if (sub_21BE2951C())
    {
      v32 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v32 = MEMORY[0x277D84FA0];
    }

    v30 = v61;
    v31 = v60;
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v32;
  *&a4[qword_27CDB6400] = 0;
  v33 = &a4[qword_27CDB63F0];
  *v33 = v30;
  v33[1] = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFF8, &qword_21BE50718);
  v71.receiver = a4;
  v71.super_class = v34;
  v35 = objc_msgSendSuper2(&v71, sel_init);
  v36 = *&v35[qword_27CDB63F0];
  v37 = *&v35[qword_27CDB63F0 + 8];
  v38 = v35;

  sub_21BE261BC();
  v39 = sub_21BE26A4C();
  (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
  *(swift_allocObject() + 16) = v38;
  v72[0] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE000, &qword_21BE50728);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = v38;
  v44 = sub_21BE262AC();
  v45 = *&v43[qword_27CDB6400];
  *&v43[qword_27CDB6400] = v44;

  sub_21BE01630(&unk_282D99B90, sub_21BE122C4, &block_descriptor_189);

  __swift_project_boxed_opaque_existential_1Tm(v73, v74);
  v46 = v64;
  off_282D8FEF0();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v48 = sub_21BE2635C();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0);
  sub_21BDD3A64();
  v52 = v67;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0);
  v53 = v68;
  v54 = v65;
  sub_21BE26CFC();
  (*(v63 + 8))(v10, v54);
  v55 = swift_allocObject();
  v55[2] = v51;
  v55[3] = &unk_21BE50730;
  v55[4] = v47;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8);

  v56 = v70;
  sub_21BE26D1C();

  (*(v69 + 8))(v53, v56);
  (*(v66 + 8))(v46, v52);
  swift_beginAccess();
  v57 = v43;
  sub_21BE26BBC();
  swift_endAccess();

  v58 = [objc_opt_self() defaultCenter];
  [v58 addObserver:v57 selector:sel_handleUpdate name:*MEMORY[0x277D08110] object:0];

  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  return v57;
}

uint64_t sub_21BE11658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BBCD88C(a1);
}

uint64_t sub_21BE116F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBCDB90(a1, v1);
}

uint64_t sub_21BE11804()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BE013E4();
}

uint64_t sub_21BE118B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC371CC(a1);
}

uint64_t sub_21BE11958(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC3727C(a1, v1);
}

uint64_t sub_21BE11A64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BE0156C();
}

uint64_t sub_21BE11B18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BDAF940(a1);
}

uint64_t sub_21BE11BB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDAF9F0(a1, v1);
}

uint64_t sub_21BE11CC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BE014A8();
}

uint64_t sub_21BE11D78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BDF0BF4(a1);
}

uint64_t sub_21BE11E18(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDF0CA4(a1, v1);
}

uint64_t sub_21BE11EEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC1B204(a1);
}

uint64_t sub_21BE11F8C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC1B2B4(a1, v1);
}

uint64_t sub_21BE12030()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44438(v2, v3, v0 + 4);
}

uint64_t sub_21BE1211C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AA0, &qword_21BE4DC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BE1218C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC939E8(a1);
}

uint64_t sub_21BE1222C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC93A98(a1, v1);
}

uint64_t sub_21BE12300(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BE185D0(a1);
}

uint64_t sub_21BE123A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BE18680(a1, v1);
}

uint64_t sub_21BE12474(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBF3FD0(a1);
}

uint64_t sub_21BE12514(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBF4080(a1, v1);
}

uint64_t sub_21BE125E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC96120(a1);
}

uint64_t sub_21BE12688(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC961D0(a1, v1);
}

uint64_t sub_21BE1275C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BCEB220(a1);
}

uint64_t sub_21BE127FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BCEB2D0(a1, v1);
}

uint64_t sub_21BE128D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBEE1C4(a1);
}

uint64_t sub_21BE12970(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBEE274(a1, v1);
}

uint64_t sub_21BE12A44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBE5308(a1);
}

uint64_t sub_21BE12AE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBE53B8(a1, v1);
}

uint64_t sub_21BE12BB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD3357C(a1);
}

uint64_t sub_21BE12C58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BD3362C(a1, v1);
}

uint64_t sub_21BE12D2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BE1A600(a1);
}

uint64_t sub_21BE12DCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BE1A6B0(a1, v1);
}

uint64_t sub_21BE12EA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BDB1498(a1);
}

uint64_t sub_21BE12F40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDB1548(a1, v1);
}

uint64_t sub_21BE13014(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BE076B8(a1, v4, v5, v6, v7);
}

uint64_t sub_21BE130D8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21BBB7EB8;

  return sub_21BE06744(a1, a2, v2);
}

uint64_t objectdestroy_43Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BE131E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BE070A0(a1, v4, v5, v7, v6);
}

uint64_t sub_21BE132B4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBB7EB8;

  return sub_21BE04FD8(a1, a2, v6, v7);
}

uint64_t sub_21BE1336C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BE055F8(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_21BE1351C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return v11(a1, a2, a3);
}

uint64_t sub_21BE13648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return v11(a1, a2, a3);
}

uint64_t sub_21BE13774(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_21BE137D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();
}

uint64_t sub_21BE13848(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_21BE138F8;

  return sub_21BE144F4();
}

uint64_t sub_21BE138F8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE13A34, v5, v4);
}

uint64_t sub_21BE13A34()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BE13AE8(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_21BE26A4C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_21BE28D7C();
  v2[12] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v2[13] = v9;
  v2[14] = v8;

  return MEMORY[0x2822009F8](sub_21BE13C50, v9, v8);
}

uint64_t sub_21BE13C50()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = v0[11];
    v0[16] = sub_21BE28D6C();
    v5 = sub_21BE28D0C();
    v0[17] = v5;
    v0[18] = v4;

    return MEMORY[0x2822009F8](sub_21BE13E6C, v5, v4);
  }

  else
  {
    v6 = v0[12];

    v7 = v0[10];
    v8 = v0[8];
    v9 = sub_21BE25D1C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_21BB3A4CC(v7, &qword_27CDB9720, &unk_21BE39F00);
    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "AppleCardStore, family changed", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    v14 = v0[9];
    v13 = v0[10];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];

    (*(v16 + 8))(v15, v17);

    v18 = v0[1];

    return v18();
  }
}

void sub_21BE13E6C()
{
  v1 = *(v0[15] + 40);
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[9];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v8 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_21BE13F7C;
    v7 = v0[9];
    v6 = v0[10];

    v8(v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BE13F7C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;

  v6 = *(v2 + 152);
  v7 = *(v2 + 72);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = sub_21BE14300;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = sub_21BE1410C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BE1410C()
{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x2822009F8](sub_21BE14178, v3, v4);
}

uint64_t sub_21BE14178()
{
  v1 = v0[12];

  v2 = v0[10];
  v3 = v0[8];
  v4 = sub_21BE25D1C();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_21BB3A4CC(v2, &qword_27CDB9720, &unk_21BE39F00);
  sub_21BE2614C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardStore, family changed", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];

  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_21BE14300()
{
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x2822009F8](sub_21BE1436C, v3, v4);
}

uint64_t sub_21BE1436C()
{
  v1 = v0[12];

  v2 = v0[10];
  v3 = v0[8];
  v4 = sub_21BE25D1C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_21BB3A4CC(v2, &qword_27CDB9720, &unk_21BE39F00);
  sub_21BE2614C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardStore, family changed", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];

  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_21BE144F4()
{
  v1[52] = v0;
  v2 = sub_21BE25D1C();
  v1[53] = v2;
  v3 = *(v2 - 8);
  v1[54] = v3;
  v4 = *(v3 + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v1[57] = v5;
  v6 = *(v5 - 8);
  v1[58] = v6;
  v7 = *(v6 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  sub_21BE28D7C();
  v1[66] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v1[67] = v9;
  v1[68] = v8;

  return MEMORY[0x2822009F8](sub_21BE1469C, v9, v8);
}

uint64_t sub_21BE1469C()
{
  v1 = (v0[52] + qword_280BDCB68);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = [v4 me];
  v0[69] = v5;

  if (v5)
  {
    v6 = *(v0[52] + qword_280BDCB70);
    v0[70] = v6;
    v0[2] = v0;
    v0[7] = v0 + 75;
    v0[3] = sub_21BE14B80;
    v7 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_21BBDC4C4;
    v0[29] = &block_descriptor_62;
    v0[30] = v7;
    [v6 hasAppleCardWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[66];
    v9 = v0[59];

    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "AppleCardStore loadData has no currentFamilyMember", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    v14 = v0[58];
    v13 = v0[59];
    v15 = v0[57];
    v16 = v0[52];

    (*(v14 + 8))(v13, v15);
    v17 = qword_280BDCB78;
    *(v16 + qword_280BDCB78) = 0;
    v18 = (v16 + qword_280BD7510);
    v19 = *(v16 + qword_280BD7510);
    v20 = *(v16 + qword_280BD7510 + 8);
    v21 = *(v16 + qword_280BD7510 + 16);
    sub_21BC718B0();
    type metadata accessor for AppleCardFamilyCache();
    sub_21BC718B8();
    v22 = sub_21BE26EAC();
    sub_21BB47CE0();
    v23 = *(v16 + v17);
    v24 = sub_21BE28CEC();
    v25 = sub_21BE1F55C();
    if (v25)
    {
      v26 = v25;
      v48 = *(v22 + 16);
      v49 = *(v22 + 24);

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0xD000000000000010, 0x800000021BE57B40);
      v27 = sub_21BE289CC();

      [v26 setValue:v24 forKey:v27];

      v24 = v27;
    }

    v29 = v0[55];
    v28 = v0[56];
    v31 = v0[53];
    v30 = v0[54];
    v32 = v0[52];

    v33 = *v18;
    v34 = v18[1];
    v35 = *(v18 + 16);
    sub_21BC718B0();
    sub_21BE26EAC();
    sub_21BB47CE0();
    v36 = sub_21BE1F55C();
    [v36 synchronize];

    sub_21BE25D0C();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v30 + 16))(v29, v28, v31);

    sub_21BE26CBC();
    (*(v30 + 8))(v28, v31);
    v37 = v0[65];
    v38 = v0[63];
    v39 = v0[64];
    v41 = v0[61];
    v40 = v0[62];
    v43 = v0[59];
    v42 = v0[60];
    v45 = v0[55];
    v44 = v0[56];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_21BE14B80()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BE14C88, v2, v1);
}

uint64_t sub_21BE14C88()
{
  v53 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 600);
  v3 = qword_280BDCB80;
  *(v0 + 568) = qword_280BDCB80;
  *(v1 + v3) = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + 560);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 400;
    *(v0 + 88) = sub_21BE15180;
    v5 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C60, &qword_21BE39660);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_21BE17340;
    *(v0 + 296) = &block_descriptor_58;
    *(v0 + 304) = v5;
    [v4 appleCardAccountStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v6 = *(v0 + 528);
    v7 = *(v0 + 480);

    sub_21BE2614C();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21BB35000, v8, v9, "AppleCardStore, does not have Apple Card", v10, 2u);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    v11 = *(v0 + 480);
    v12 = *(v0 + 456);
    v13 = *(v0 + 464);

    (*(v13 + 8))(v11, v12);
    if (qword_27CDB4F90 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 416);
    LOBYTE(v48) = *(v1 + v3);
    v49 = xmmword_21BE33DF0;
    v50 = 0;
    v51 = 0;
    v52 = 771;
    sub_21BD236A8(&v48);
    v15 = qword_280BDCB78;
    *(v14 + qword_280BDCB78) = 0;
    v16 = (v14 + qword_280BD7510);
    v17 = *(v14 + qword_280BD7510);
    v18 = *(v14 + qword_280BD7510 + 8);
    v19 = *(v14 + qword_280BD7510 + 16);
    sub_21BC718B0();
    type metadata accessor for AppleCardFamilyCache();
    sub_21BC718B8();
    v20 = sub_21BE26EAC();
    sub_21BB47CE0();
    v21 = *(v14 + v15);
    v22 = sub_21BE28CEC();
    v23 = sub_21BE1F55C();
    if (v23)
    {
      v24 = v23;
      v25 = *(v20 + 24);
      v48 = *(v20 + 16);
      *&v49 = v25;

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0xD000000000000010, 0x800000021BE57B40);
      v26 = sub_21BE289CC();

      [v24 setValue:v22 forKey:v26];

      v22 = v26;
    }

    v47 = *(v0 + 552);
    v28 = *(v0 + 440);
    v27 = *(v0 + 448);
    v30 = *(v0 + 424);
    v29 = *(v0 + 432);
    v31 = *(v0 + 416);

    v32 = *v16;
    v33 = v16[1];
    v34 = *(v16 + 16);
    sub_21BC718B0();
    sub_21BE26EAC();
    sub_21BB47CE0();
    v35 = sub_21BE1F55C();
    [v35 synchronize];

    sub_21BE25D0C();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v29 + 16))(v28, v27, v30);

    sub_21BE26CBC();
    (*(v29 + 8))(v27, v30);
    v36 = *(v0 + 520);
    v37 = *(v0 + 504);
    v38 = *(v0 + 512);
    v40 = *(v0 + 488);
    v39 = *(v0 + 496);
    v42 = *(v0 + 472);
    v41 = *(v0 + 480);
    v44 = *(v0 + 440);
    v43 = *(v0 + 448);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_21BE15180()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BE15288, v2, v1);
}

uint64_t sub_21BE15288()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 400);
  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "AppleCardStore, current user account state %ld", v5, 0xCu);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = *(v0 + 520);
  v7 = *(v0 + 456);
  v8 = *(v0 + 464);

  v9 = *(v8 + 8);
  *(v0 + 576) = v9;
  *(v0 + 584) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  if (v2 == 1)
  {
    v10 = *(v0 + 560);
    v11 = [*(v0 + 552) altDSID];
    *(v0 + 592) = v11;
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 408;
    *(v0 + 152) = sub_21BE157E8;
    v12 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C68, &qword_21BE39668);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_21BE17340;
    *(v0 + 360) = &block_descriptor_61_0;
    *(v0 + 368) = v12;
    [v10 appleCardAccessLevelForAltDSID:v11 completion:v0 + 336];

    return MEMORY[0x282200938](v0 + 144);
  }

  else
  {
    v13 = *(v0 + 528);
    v14 = *(v0 + 488);

    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "AppleCardStore, account state is not active. Don't show apple card row", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    v18 = *(v0 + 488);
    v19 = *(v0 + 456);
    v20 = *(v0 + 416);

    v9(v18, v19);
    v21 = qword_280BDCB78;
    *(v20 + qword_280BDCB78) = 0;
    v22 = (v20 + qword_280BD7510);
    v23 = *(v20 + qword_280BD7510);
    v24 = *(v20 + qword_280BD7510 + 8);
    v25 = *(v20 + qword_280BD7510 + 16);
    sub_21BC718B0();
    type metadata accessor for AppleCardFamilyCache();
    sub_21BC718B8();
    v26 = sub_21BE26EAC();
    sub_21BB47CE0();
    v27 = *(v20 + v21);
    v28 = sub_21BE28CEC();
    v29 = sub_21BE1F55C();
    if (v29)
    {
      v30 = v29;
      v53 = *(v26 + 16);
      v54 = *(v26 + 24);

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0xD000000000000010, 0x800000021BE57B40);
      v31 = sub_21BE289CC();

      [v30 setValue:v28 forKey:v31];

      v28 = v31;
    }

    v52 = *(v0 + 552);
    v33 = *(v0 + 440);
    v32 = *(v0 + 448);
    v35 = *(v0 + 424);
    v34 = *(v0 + 432);
    v36 = *(v0 + 416);

    v37 = *v22;
    v38 = v22[1];
    v39 = *(v22 + 16);
    sub_21BC718B0();
    sub_21BE26EAC();
    sub_21BB47CE0();
    v40 = sub_21BE1F55C();
    [v40 synchronize];

    sub_21BE25D0C();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v34 + 16))(v33, v32, v35);

    sub_21BE26CBC();
    (*(v34 + 8))(v32, v35);
    v41 = *(v0 + 520);
    v42 = *(v0 + 504);
    v43 = *(v0 + 512);
    v45 = *(v0 + 488);
    v44 = *(v0 + 496);
    v47 = *(v0 + 472);
    v46 = *(v0 + 480);
    v49 = *(v0 + 440);
    v48 = *(v0 + 448);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_21BE157E8()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BE158F0, v2, v1);
}

uint64_t sub_21BE158F0()
{
  v70 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 528);
  v3 = *(v0 + 512);
  v4 = *(v0 + 416);

  v5 = qword_280BDCB58;
  *(v4 + qword_280BDCB58) = *(v0 + 408);

  sub_21BE2614C();

  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FFC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 416);
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v4 + v5);

    _os_log_impl(&dword_21BB35000, v6, v7, "AppleCardStore, current user access level %lu", v10, 0xCu);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  else
  {
    v11 = *(v0 + 416);
  }

  v12 = *(v0 + 584);
  (*(v0 + 576))(*(v0 + 512), *(v0 + 456));
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v13 = *(v4 + v5);
  LOBYTE(v64) = *(*(v0 + 416) + *(v0 + 568));
  v65 = v13;
  v66 = -1;
  v67 = 0;
  v68 = 0;
  v69 = 771;
  sub_21BD236A8(&v64);
  if (*(v4 + v5) == 1)
  {
    v14 = *(v0 + 504);
    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "AppleCardStore, show apple card row", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    v18 = *(v0 + 584);
    v19 = *(v0 + 576);
    v20 = *(v0 + 504);
    v21 = *(v0 + 456);
    v22 = *(v0 + 416);

    v19(v20, v21);
    v23 = qword_280BDCB78;
    *(v22 + qword_280BDCB78) = 1;
  }

  else
  {
    v24 = *(v0 + 496);
    sub_21BE2614C();
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21BB35000, v25, v26, "AppleCardStore, current user does not have a primary role. Don't show apple card row", v27, 2u);
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    v28 = *(v0 + 584);
    v29 = *(v0 + 576);
    v30 = *(v0 + 496);
    v31 = *(v0 + 456);
    v22 = *(v0 + 416);

    v29(v30, v31);
    v23 = qword_280BDCB78;
    *(v22 + qword_280BDCB78) = 0;
  }

  v32 = (v22 + qword_280BD7510);
  v33 = *(v22 + qword_280BD7510);
  v34 = *(v22 + qword_280BD7510 + 8);
  v35 = *(v22 + qword_280BD7510 + 16);
  sub_21BC718B0();
  type metadata accessor for AppleCardFamilyCache();
  sub_21BC718B8();
  v36 = sub_21BE26EAC();
  sub_21BB47CE0();
  v37 = *(v22 + v23);
  v38 = sub_21BE28CEC();
  v39 = sub_21BE1F55C();
  if (v39)
  {
    v40 = v39;
    v41 = *(v36 + 24);
    v64 = *(v36 + 16);
    v65 = v41;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](0xD000000000000010, 0x800000021BE57B40);
    v42 = sub_21BE289CC();

    [v40 setValue:v38 forKey:v42];

    v38 = v42;
  }

  v63 = *(v0 + 552);
  v44 = *(v0 + 440);
  v43 = *(v0 + 448);
  v46 = *(v0 + 424);
  v45 = *(v0 + 432);
  v47 = *(v0 + 416);

  v48 = *v32;
  v49 = v32[1];
  v50 = *(v32 + 16);
  sub_21BC718B0();
  sub_21BE26EAC();
  sub_21BB47CE0();
  v51 = sub_21BE1F55C();
  [v51 synchronize];

  sub_21BE25D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v45 + 16))(v44, v43, v46);

  sub_21BE26CBC();
  (*(v45 + 8))(v43, v46);
  v52 = *(v0 + 520);
  v53 = *(v0 + 504);
  v54 = *(v0 + 512);
  v56 = *(v0 + 488);
  v55 = *(v0 + 496);
  v58 = *(v0 + 472);
  v57 = *(v0 + 480);
  v60 = *(v0 + 440);
  v59 = *(v0 + 448);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_21BE15E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_21BE25D1C();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = sub_21BE28D7C();
  v4[8] = sub_21BE28D6C();
  v4[9] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v4[10] = v10;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_21BE15FC8, v10, v9);
}

void sub_21BE15FC8()
{
  v1 = *(v0[2] + 40);
  v0[12] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v8 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_21BE160DC;
    v6 = v0[6];
    v7 = v0[3];

    v8(v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BE160DC()
{
  v2 = *v1;
  v3 = (*v1)[13];
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  if (v0)
  {
    sub_21BB3A4CC(v2[3], &qword_27CDB5790, &qword_21BE32800);

    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_21BE16374;
  }

  else
  {
    v10 = v2[5];
    v9 = v2[6];
    v12 = v2[3];
    v11 = v2[4];

    sub_21BB3A4CC(v12, &qword_27CDB5790, &qword_21BE32800);
    (*(v10 + 8))(v9, v11);
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_21BE16274;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21BE16274()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE162F8, v5, v4);
}

uint64_t sub_21BE162F8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BE16374()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE163F8, v5, v4);
}

uint64_t sub_21BE163F8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_21BE164B4(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = sub_21BE26A4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2613C();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a3;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21BB35000, v16, v17, a1, v19, 2u);
    v20 = v19;
    a3 = v18;
    MEMORY[0x21CF05C50](v20, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v21 = sub_21BE28DAC();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_21BE28D7C();

  v22 = sub_21BE28D6C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v6;
  sub_21BC54908(0, 0, v10, a3, v23);
}

uint64_t sub_21BE166F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_21BE25D1C();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = sub_21BE28D7C();
  v4[8] = sub_21BE28D6C();
  v4[9] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v4[10] = v10;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_21BE16834, v10, v9);
}

void sub_21BE16834()
{
  v1 = *(v0[2] + 40);
  v0[12] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v8 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_21BE16948;
    v6 = v0[6];
    v7 = v0[3];

    v8(v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BE16948()
{
  v2 = *v1;
  v3 = (*v1)[13];
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  if (v0)
  {
    sub_21BB3A4CC(v2[3], &qword_27CDB5790, &qword_21BE32800);

    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_21BE16B64;
  }

  else
  {
    v10 = v2[5];
    v9 = v2[6];
    v12 = v2[3];
    v11 = v2[4];

    sub_21BB3A4CC(v12, &qword_27CDB5790, &qword_21BE32800);
    (*(v10 + 8))(v9, v11);
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_21BE16AE0;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21BE16AE0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE1733C, v5, v4);
}

uint64_t sub_21BE16B64()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE17338, v5, v4);
}

uint64_t sub_21BE16C00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_21BE16C44()
{
  v1 = qword_280BD7500;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1B8, &unk_21BE50A88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_280BDCB68));
  v3 = *(v0 + qword_280BDCB70);
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_280BD7510);
  v5 = *(v0 + qword_280BD7510 + 8);
  v6 = *(v0 + qword_280BD7510 + 16);

  return sub_21BB47CE0();
}

uint64_t sub_21BE16CF0()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = qword_280BD7500;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1B8, &unk_21BE50A88);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  __swift_destroy_boxed_opaque_existential_0Tm(&v0[qword_280BDCB68]);
  v6 = *&v0[qword_280BDCB70];
  swift_unknownObjectRelease();
  v7 = *&v0[qword_280BD7510];
  v8 = *&v0[qword_280BD7510 + 8];
  v9 = v0[qword_280BD7510 + 16];
  sub_21BB47CE0();

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BE16DF8()
{
  v1 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1B8, &unk_21BE50A88);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BE16E70(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();
}

uint64_t sub_21BE16EEC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_21BE26CBC();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21BE1705C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_21BE1708C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BE13848(a1, v1);
}

uint64_t sub_21BE17128(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BE13AE8(a1, v1);
}

uint64_t sub_21BE171C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BE166F8(a1, v4, v5, v6);
}

uint64_t sub_21BE17274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BE15E8C(a1, v4, v5, v6);
}

void sub_21BE17344(void (*a1)(id), uint64_t a2)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  if (*(v2 + 16) > 0)
  {
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "Already tried renew once.", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    v16 = 0;
    goto LABEL_5;
  }

  v16 = [objc_opt_self() defaultStore];
  if (!v16)
  {
LABEL_5:
    a1(v16);
    return;
  }

  v17 = v16;
  v39 = v2;
  v18 = [v16 aa_primaryAppleAccount];
  sub_21BE2614C();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21BB35000, v19, v20, "Renewing primary account...", v21, 2u);
    MEMORY[0x21CF05C50](v21, -1, -1);
  }

  (*(v6 + 8))(v12, v5);
  String.rebrand.getter(0xD00000000000002DLL, 0x800000021BE62AB0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v38 = sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21BE32770;
  v25 = v39;
  if (v18 && (v26 = [v18 appleID]) != 0)
  {
    v27 = v18;
    v28 = v25;
    v29 = v26;
    v30 = sub_21BE28A0C();
    v32 = v31;

    v25 = v28;
    v18 = v27;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_21BBBEFE8();
  if (v32)
  {
    v33 = v30;
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  *(v24 + 32) = v33;
  *(v24 + 40) = v34;
  sub_21BE28A2C();

  v35 = sub_21BE289CC();

  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  aBlock[4] = sub_21BE17A68;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BE179BC;
  aBlock[3] = &block_descriptor_63;
  v37 = _Block_copy(aBlock);

  [v17 renewCredentialsForAccount:v18 force:1 reason:v35 completion:v37];

  _Block_release(v37);
  *(v25 + 16) = 1;
}

uint64_t sub_21BE177FC(uint64_t a1, void *a2, uint64_t (*a3)(BOOL))
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if (a1)
  {
    sub_21BE2614C();
    v13 = v11;
    sub_21BC51D50(a2);
  }

  else
  {
    sub_21BE2614C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v14, v15, "Primary account sucessfully renewed.", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }
  }

  (*(v7 + 8))(v13, v6);
  return a3(a1 == 0);
}

void sub_21BE179BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_21BE17A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t), uint64_t a8, void *a9)
{
  v56 = a8;
  v16 = sub_21BE26A4C();
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v23[5] = a5;
  v24 = v56;
  v25 = v23;
  v23[6] = a6;
  v23[7] = a7;
  v23[8] = v24;
  v23[9] = a9;
  if (*(a1 + 16) <= 0)
  {
    v53 = a1;
    v30 = objc_opt_self();

    v31 = a9;
    v32 = [v30 defaultStore];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 aa_primaryAppleAccount];
      sub_21BE2614C();
      v35 = sub_21BE26A2C();
      v36 = sub_21BE28FFC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_21BB35000, v35, v36, "Renewing primary account...", v37, 2u);
        MEMORY[0x21CF05C50](v37, -1, -1);
      }

      (*(v54 + 8))(v20, v55);
      String.rebrand.getter(0xD00000000000002DLL, 0x800000021BE62AB0);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_21BE32770;
      v41 = v53;
      if (v34 && (v42 = [v34 appleID]) != 0)
      {
        v43 = v42;
        v44 = sub_21BE28A0C();
        v46 = v45;

        v41 = v53;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      *(v40 + 56) = MEMORY[0x277D837D0];
      *(v40 + 64) = sub_21BBBEFE8();
      if (v46)
      {
        v47 = v44;
      }

      else
      {
        v47 = 0;
      }

      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      *(v40 + 32) = v47;
      *(v40 + 40) = v48;
      sub_21BE28A2C();

      v49 = sub_21BE289CC();

      v50 = swift_allocObject();
      *(v50 + 16) = sub_21BE18018;
      *(v50 + 24) = v25;
      aBlock[4] = sub_21BE18050;
      aBlock[5] = v50;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BE179BC;
      aBlock[3] = &block_descriptor_14;
      v51 = _Block_copy(aBlock);

      [v33 renewCredentialsForAccount:v34 force:1 reason:v49 completion:v51];

      _Block_release(v51);
      *(v41 + 16) = 1;
    }

    else
    {
      a7(a9, 1);
    }
  }

  else
  {

    v26 = a9;
    sub_21BE2614C();
    v27 = sub_21BE26A2C();
    v28 = sub_21BE28FDC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_21BB35000, v27, v28, "Already tried renew once.", v29, 2u);
      MEMORY[0x21CF05C50](v29, -1, -1);
    }

    (*(v54 + 8))(v22, v55);
    a7(a9, 1);
  }
}

uint64_t sub_21BE18058(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  sub_21BC97154();
  **(*(v1 + 64) + 40) = sub_21BE28C3C();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_21BE180F0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC95680;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B38, &qword_21BE3D4E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BE18058;
  v0[13] = &block_descriptor_64;
  v0[14] = v2;
  [v1 fetchMyCustodians_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BE1820C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8A28;

  return v9(a1, a2);
}

uint64_t sub_21BE18324()
{
  v1 = qword_27CDBE1C0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE018, &qword_21BE50738);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD43F8));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4400));
  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4408));
}

id sub_21BE183BC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RecoveryContactItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BE18434(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for RecoveryContactItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BE184C0(uint64_t a1)
{
  v2 = qword_27CDBE1C0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE018, &qword_21BE50738);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD43F8));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4400));
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4408));
}

uint64_t sub_21BE1855C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BE185D0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BE1881C();
}

uint64_t sub_21BE18680(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BE18718, v4, v3);
}

uint64_t sub_21BE18718()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCC7EC();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BE1881C()
{
  v1[2] = v0;
  v2 = sub_21BE260AC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_21BE28D7C();
  v1[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v1[9] = v7;
  v1[10] = v6;

  return MEMORY[0x2822009F8](sub_21BE18954, v7, v6);
}

uint64_t sub_21BE18954()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  v8 = qword_27CDD4408;
  v0[11] = v7;
  v0[12] = v8;
  v9 = *(v1 + v8 + 24);
  v10 = *(v1 + v8 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + v8), v9);
  v0[13] = (*(v10 + 8))(v9, v10);
  v11 = *(v1 + qword_27CDD43F8 + 24);
  v12 = *(v1 + qword_27CDD43F8 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD43F8), v11);
  v13 = *(v12 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_21BE18B20;

  return v17(v11, v12);
}

uint64_t sub_21BE18B20(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21BE18C48, v5, v4);
}

uint64_t sub_21BE18C48()
{
  v1 = v0[15];
  v2 = v0[8];

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v31 = v0[15];
    v32 = v0[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE210, &unk_21BE50DB0);
    v33 = (type metadata accessor for RecoveryContactDataItem(0) - 8);
    v34 = *(*v33 + 72);
    v35 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21BE32770;
    v36 = (v28 + v35);
    v37 = v33[7];
    v38 = sub_21BE25D1C();
    (*(*(v38 - 8) + 56))(&v36[v37], 1, 1, v38);
    *v36 = 0;
    *&v36[v33[8]] = MEMORY[0x277D84F90];
    v36[v33[9]] = 5;

LABEL_16:
    v39 = v0[11];
    v41 = v0[6];
    v40 = v0[7];
    v42 = v0[5];
    sub_21BC852D8();

    v43 = v0[1];

    return v43(v28);
  }

  if (v0[15] < 0)
  {
    v30 = v0[15];
  }

  if (!sub_21BE2951C())
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = v0[13];
  if (v3)
  {
    v4 = v0[7];
    v5 = (v0[2] + v0[12]);
    v6 = sub_21BE25D1C();
    v7 = *(*(v6 - 8) + 56);
    v7(v4, 1, 1, v6);
    v8 = v5[3];
    v9 = v5[4];
    __swift_project_boxed_opaque_existential_1Tm(v5, v8);
    v10 = (*(v9 + 16))(v3, v8, v9);
    if (v10)
    {
      v11 = v10;
      if ([v10 integerValue])
      {
        v13 = v0[6];
        v12 = v0[7];
        [v11 doubleValue];
        sub_21BE25CCC();

        sub_21BC51500(v12);
        v7(v13, 0, 1, v6);
        sub_21BC1E320(v13, v12);
      }

      else
      {
      }
    }

    v23 = v0[15];
    v24 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE210, &unk_21BE50DB0);
    v25 = (type metadata accessor for RecoveryContactDataItem(0) - 8);
    v26 = *(*v25 + 72);
    v27 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21BE32770;
    v29 = (v28 + v27);
    sub_21BC1E1AC(v24, &v29[v25[7]]);
    *v29 = 1;
    *&v29[v25[8]] = v23;
    v29[v25[9]] = 5;

    sub_21BC51500(v24);
    goto LABEL_16;
  }

  v14 = v0[15];
  v15 = v0[11];
  v16 = v0[6];
  v17 = v0[7];
  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];

  (*(v19 + 104))(v18, *MEMORY[0x277D07F80], v20);
  MEMORY[0x21CF01220](0xD00000000000003DLL, 0x800000021BE62B80, v18, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000030, 0x800000021BE62BC0);
  (*(v19 + 8))(v18, v20);
  swift_willThrow();
  sub_21BC852D8();

  v21 = v0[1];

  return v21();
}

uint64_t sub_21BE19140()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCC7EC();
}

uint64_t sub_21BE19224()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BBCC7EC();
}

void sub_21BE19308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21BE28D7C();
  v11 = a1;
  v12 = sub_21BE28D6C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_21BBA932C(0, 0, v9, a4, v13);
}

void sub_21BE19454()
{
  sub_21BE194F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BE194F0()
{
  if (!qword_27CDBE1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBE030, &qword_21BE50740);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBE1D8);
    }
  }
}

uint64_t sub_21BE195A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BE19610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a2 + v3);
  v5 = sub_21BC5C62C(*(a1 + v3));
  v7 = v6;
  if (v5 == sub_21BC5C62C(v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

uint64_t sub_21BE1969C(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(*(v1 + *(a1 + 28)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BE19724(uint64_t a1, uint64_t a2)
{
  sub_21BE28ABC();
  sub_21BC5C62C(*(v2 + *(a2 + 28)));
  sub_21BE28ABC();
}

uint64_t sub_21BE197A4(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(*(v2 + *(a2 + 28)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BE19890(uint64_t a1)
{
  *(a1 + 8) = sub_21BE19914(&qword_27CDBE1F8, type metadata accessor for RecoveryContactDataItem);
  result = sub_21BE19914(&qword_27CDBE200, type metadata accessor for RecoveryContactDataItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BE19914(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21BE19978@<X0>(uint64_t a1@<X8>)
{
  sub_21BD6A378(v1, a1);
  type metadata accessor for FamilyChecklistStore();
  sub_21BE19914(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
  v3 = sub_21BE2727C();
  v5 = v4;
  v6 = type metadata accessor for RecoveryContactView();
  v7 = (a1 + *(v6 + 20));
  *v7 = v3;
  v7[1] = v5;
  v8 = *(v6 + 24);
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(a1 + v8) = result;
  return result;
}

uint64_t sub_21BE19A34(uint64_t a1)
{
  *(a1 + 8) = sub_21BE19914(&qword_27CDBE208, type metadata accessor for RecoveryContactItemProvider);
  result = sub_21BE19914(&qword_27CDB6010, type metadata accessor for RecoveryContactItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BE19AB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BE19B38(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BE19BB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BE19224();
}

uint64_t sub_21BE19C64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BE19140();
}

uint64_t sub_21BE19D18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE260AC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[8] = v7;
  v2[9] = v6;

  return MEMORY[0x2822009F8](sub_21BE19E0C, v7, v6);
}

uint64_t sub_21BE19E0C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = *(v3 + 72);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_21BE19F30;

  return v8(v2, v3);
}

uint64_t sub_21BE19F30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_21BE1DA80;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_21BE1DA7C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BE1A058(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE260AC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[8] = v7;
  v2[9] = v6;

  return MEMORY[0x2822009F8](sub_21BE1A14C, v7, v6);
}

uint64_t sub_21BE1A14C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = *(v3 + 72);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_21BE1A270;

  return v8(v2, v3);
}

uint64_t sub_21BE1A270(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_21BE1A408;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_21BE1A398;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BE1A398()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3(v4);
}

uint64_t sub_21BE1A408()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  sub_21BE295EC();

  v9 = *(v6 + qword_27CDB63F0);
  v10 = *(v6 + qword_27CDB63F0 + 8);

  MEMORY[0x21CF03CA0](0xD000000000000011, 0x800000021BE62CF0);
  (*(v5 + 104))(v3, *MEMORY[0x277D07F48], v4);
  MEMORY[0x21CF01220](v9, v10, v3, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000020, 0x800000021BE57400);

  (*(v5 + 8))(v3, v4);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BE1A58C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BE1A600(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BE1AA40();
}

uint64_t sub_21BE1A6B0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BE1A748, v4, v3);
}

uint64_t sub_21BE1A748()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCCA94();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BE1A84C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCCA94();
}

void sub_21BE1A910(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  v7 = a1;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_21BBA932C(0, 0, v5, &unk_21BE50FD0, v9);
}

uint64_t sub_21BE1AA40()
{
  v1[21] = v0;
  v2 = type metadata accessor for CommLimitsItem(0);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v1[26] = v5;
  v6 = *(v5 - 8);
  v1[27] = v6;
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  sub_21BE28D7C();
  v1[35] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v1[36] = v10;
  v1[37] = v9;

  return MEMORY[0x2822009F8](sub_21BE1AC10, v10, v9);
}

uint64_t sub_21BE1AC10()
{
  v1 = v0[21];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[38] = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  sub_21BB3A35C(v1 + qword_27CDD4410, (v0 + 2));
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_21BE1AD38;
  v8 = v0[21];

  return (sub_21BE1A058)(v0 + 2);
}

uint64_t sub_21BE1AD38(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[39];
  v9 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
  v5 = v3[36];
  v6 = v3[37];
  if (v1)
  {
    v7 = sub_21BE1CA14;
  }

  else
  {
    v7 = sub_21BE1AE54;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BE1AE54()
{
  v1 = v0[40];
  v2 = sub_21BE290DC();
  v0[42] = v2;
  if (v2 >> 62)
  {
    result = sub_21BE2951C();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = qword_27CDD4418;
  v0[43] = result;
  v0[44] = v4;
  if (result)
  {
    v0[45] = MEMORY[0x277D84F90];
    v0[46] = 0;
    v5 = v0[42];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CF047C0](0);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;
    v0[47] = v6;
    v0[48] = 1;
    v8 = v0[34];
    v9 = sub_21BE25D1C();
    v0[49] = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    v0[50] = v11;
    v0[51] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v8, 1, 1, v9);
    v12 = swift_task_alloc();
    v0[52] = v12;
    *v12 = v0;
    v12[1] = sub_21BE1B0CC;

    return sub_21BCCC428(v7);
  }

  else
  {
    v13 = v0[42];
    v14 = v0[40];
    v15 = v0[38];
    v17 = v0[34];
    v16 = v0[35];
    v19 = v0[32];
    v18 = v0[33];
    v21 = v0[30];
    v20 = v0[31];
    v22 = v0[29];
    v25 = v0[28];
    v26 = v0[25];
    v27 = v0[24];

    sub_21BC852D8();

    v23 = v0[1];
    v24 = MEMORY[0x277D84F90];

    return v23(v24);
  }
}

uint64_t sub_21BE1B0CC(char a1)
{
  v2 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 137) = a1;

  return MEMORY[0x2822009F8](sub_21BE1B1CC, 0, 0);
}

uint64_t sub_21BE1B1CC()
{
  v1 = v0[47];
  v2 = sub_21BE261EC();
  v4 = v3;
  v5 = swift_allocObject();
  v0[53] = v5;
  *(v5 + 16) = v1;
  v6 = *(MEMORY[0x277CE4600] + 4);
  v7 = v1;
  v8 = swift_task_alloc();
  v0[54] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE270, &qword_21BE50FB0);
  *v8 = v0;
  v8[1] = sub_21BE1B2E4;

  return MEMORY[0x2821372C0](v0 + 16, v2, v4, &unk_21BE50FA8, v5, v9);
}

uint64_t sub_21BE1B2E4()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v7 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = sub_21BE1B428;
  }

  else
  {
    v5 = *(v2 + 424);

    v4 = sub_21BE1B400;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21BE1B400()
{
  v1 = *(v0 + 128);
  *(v0 + 138) = *(v0 + 136);
  *(v0 + 448) = v1;
  return MEMORY[0x2822009F8](sub_21BE1B67C, *(v0 + 288), *(v0 + 296));
}

uint64_t sub_21BE1B428()
{
  v27 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 424);
  v3 = *(v0 + 256);

  sub_21BE261AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  swift_getErrorValue();
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = v1;
  v9 = v1;
  v10 = sub_21BE29A5C();
  v12 = v11;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21BBBEFE8();
  *(v4 + 32) = v10;
  *(v4 + 40) = v12;
  v13 = sub_21BE28A2C();
  v15 = v14;
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FDC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 440);
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315138;
    v22 = sub_21BB3D81C(v13, v15, &v26);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_21BB35000, v16, v17, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x21CF05C50](v21, -1, -1);
    MEMORY[0x21CF05C50](v20, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 216) + 8))(*(v0 + 256), *(v0 + 208));
  *(v0 + 138) = 1;
  *(v0 + 448) = 0;
  v23 = *(v0 + 288);
  v24 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_21BE1B67C, v23, v24);
}

uint64_t sub_21BE1B67C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 248);
  sub_21BE261BC();
  v3 = v1;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 137);
    v7 = *(v0 + 376);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67109378;
    *(v8 + 4) = v6;
    *(v8 + 8) = 2112;
    *(v8 + 10) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_21BB35000, v4, v5, "ScreenTimeEnabled %{BOOL}d for %@", v8, 0x12u);
    sub_21BB3A4CC(v9, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);

  v14 = *(v13 + 8);
  *(v0 + 456) = v14;
  *(v0 + 464) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);

  return MEMORY[0x2822009F8](sub_21BE1B800, 0, 0);
}

uint64_t sub_21BE1B800()
{
  v1 = [*(v0 + 376) dsid];
  *(v0 + 472) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE261EC();
    v5 = v4;
    v6 = swift_allocObject();
    *(v0 + 480) = v6;
    *(v6 + 16) = v2;
    v7 = *(MEMORY[0x277CE4600] + 4);
    v8 = v2;
    v9 = swift_task_alloc();
    *(v0 + 488) = v9;
    *v9 = v0;
    v9[1] = sub_21BE1B994;
    v10 = *(v0 + 392);
    v11 = *(v0 + 264);

    return MEMORY[0x2821372C0](v11, v3, v5, &unk_21BE50FB8, v6, v10);
  }

  else
  {
    sub_21BCCC3D4();
    v12 = swift_allocError();
    *v13 = 1;
    swift_willThrow();
    *(v0 + 504) = v12;
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);

    return MEMORY[0x2822009F8](sub_21BE1C2FC, v14, v15);
  }
}

uint64_t sub_21BE1B994()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = sub_21BE1C0AC;
  }

  else
  {
    v5 = *(v2 + 480);

    v4 = sub_21BE1BAB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21BE1BAB0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_21BE1BB14, v1, v2);
}

uint64_t sub_21BE1BB14()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  sub_21BB3A4CC(v4, &qword_27CDB9720, &unk_21BE39F00);
  v2(v5, 0, 1, v3);
  sub_21BC1E320(v5, v4);
  if (*(v0 + 138) & 1) != 0 || (v23 = *(v0 + 137), v24 = (*(v0 + 168) + *(v0 + 352)), v25 = __swift_project_boxed_opaque_existential_1Tm(v24, v24[3]), (*(*v25 + 24)) || !v23)
  {
    v6 = *(v0 + 376);
    v7 = *(v0 + 224);
    sub_21BE261BC();
    v8 = v6;
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FCC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 137);
      v12 = *(v0 + 376);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 67109378;
      *(v13 + 4) = v11;
      *(v13 + 8) = 2112;
      *(v13 + 10) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&dword_21BB35000, v9, v10, "CommLimits stEnabled %{BOOL}d; no row for %@", v13, 0x12u);
      sub_21BB3A4CC(v14, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);
    }

    v17 = *(v0 + 456);
    v16 = *(v0 + 464);
    v18 = *(v0 + 376);
    v19 = *(v0 + 272);
    v20 = *(v0 + 224);
    v21 = *(v0 + 208);

    v17(v20, v21);
    sub_21BB3A4CC(v19, &qword_27CDB9720, &unk_21BE39F00);
    v22 = *(v0 + 360);
    goto LABEL_18;
  }

  v26 = *(*v25 + 16);
  v27 = *(v0 + 448);
  v28 = *(v0 + 176);
  v29 = v28[5];
  v30 = *(v0 + 368);
  v31 = *(v0 + 376);
  v32 = *(v0 + 360);
  v33 = *(v0 + 272);
  if (!v27)
  {
    v41 = *(v0 + 200);
    sub_21BC1E1AC(v33, &v41[v29]);
    *v41 = 0;
    *&v41[v28[6]] = v31;
    *&v41[v28[7]] = 0;
    *&v41[v28[8]] = v26;
    *&v41[v28[9]] = v30;
    v41[v28[10]] = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v0 + 360);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_21BBBDD94(0, v22[2] + 1, 1, *(v0 + 360));
    }

    v37 = v22[2];
    v43 = v22[3];
    v38 = v37 + 1;
    if (v37 >= v43 >> 1)
    {
      v22 = sub_21BBBDD94(v43 > 1, v37 + 1, 1, v22);
    }

    v39 = *(v0 + 272);
    v40 = *(v0 + 200);
    goto LABEL_17;
  }

  v34 = *(v0 + 192);
  sub_21BC1E1AC(v33, &v34[v29]);
  *v34 = 1;
  *&v34[v28[6]] = v31;
  *&v34[v28[7]] = v27;
  *&v34[v28[8]] = v26;
  *&v34[v28[9]] = v30;
  v34[v28[10]] = 1;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v0 + 360);
  if ((v35 & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v37 = v22[2];
    v36 = v22[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v22 = sub_21BBBDD94(v36 > 1, v37 + 1, 1, v22);
    }

    v39 = *(v0 + 272);
    v40 = *(v0 + 192);
LABEL_17:
    v44 = *(v0 + 184);
    sub_21BB3A4CC(v39, &qword_27CDB9720, &unk_21BE39F00);
    v22[2] = v38;
    sub_21BE1D8C4(v40, v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37);
LABEL_18:
    v45 = *(v0 + 384);
    if (v45 == *(v0 + 344))
    {
      v46 = *(v0 + 336);
      v47 = *(v0 + 320);
      v48 = *(v0 + 304);
      v50 = *(v0 + 272);
      v49 = *(v0 + 280);
      v69 = v22;
      v52 = *(v0 + 256);
      v51 = *(v0 + 264);
      v54 = *(v0 + 240);
      v53 = *(v0 + 248);
      v55 = *(v0 + 232);
      v66 = *(v0 + 224);
      v67 = *(v0 + 200);
      v68 = *(v0 + 192);

      sub_21BC852D8();

      v56 = *(v0 + 8);

      return v56(v69);
    }

    *(v0 + 360) = v22;
    *(v0 + 368) = v45;
    v58 = *(v0 + 336);
    if ((v58 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v45 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 8 * v45 + 32);
      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    v22 = sub_21BBBDD94(0, v22[2] + 1, 1, v22);
  }

  v59 = MEMORY[0x21CF047C0](v45);
LABEL_25:
  v60 = v59;
  *(v0 + 376) = v59;
  *(v0 + 384) = v45 + 1;
  if (__OFADD__(v45, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v61 = *(v0 + 272);
  v62 = sub_21BE25D1C();
  *(v0 + 392) = v62;
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  *(v0 + 400) = v64;
  *(v0 + 408) = (v63 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v64(v61, 1, 1, v62);
  v65 = swift_task_alloc();
  *(v0 + 416) = v65;
  *v65 = v0;
  v65[1] = sub_21BE1B0CC;

  return sub_21BCCC428(v60);
}

uint64_t sub_21BE1C0AC()
{
  v30 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 240);

  sub_21BE261AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  swift_getErrorValue();
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = v1;
  v9 = v1;
  v10 = sub_21BE29A5C();
  v12 = v11;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21BBBEFE8();
  *(v4 + 32) = v10;
  *(v4 + 40) = v12;
  v13 = sub_21BE28A2C();
  v15 = v14;
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FDC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 496);
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    v22 = sub_21BB3D81C(v13, v15, &v29);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_21BB35000, v16, v17, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x21CF05C50](v21, -1, -1);
    MEMORY[0x21CF05C50](v20, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 496);
  v24 = *(v0 + 464);
  v25 = *(v0 + 472);
  (*(v0 + 456))(*(v0 + 240), *(v0 + 208));
  swift_willThrow();

  *(v0 + 504) = *(v0 + 496);
  v26 = *(v0 + 288);
  v27 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_21BE1C2FC, v26, v27);
}

uint64_t sub_21BE1C2FC()
{
  v88 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 232);
  sub_21BE261BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21BE32770;
  swift_getErrorValue();
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = v1;
  v8 = v1;
  v9 = sub_21BE29A5C();
  v11 = v10;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21BBBEFE8();
  *(v3 + 32) = v9;
  *(v3 + 40) = v11;
  v12 = sub_21BE28A2C();
  v14 = v13;
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FDC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 504);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v87 = v20;
    *v19 = 136315138;
    v21 = sub_21BB3D81C(v12, v14, &v87);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_21BB35000, v15, v16, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x21CF05C50](v20, -1, -1);
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  else
  {
  }

  v22 = *(v0 + 464);
  (*(v0 + 456))(*(v0 + 232), *(v0 + 208));
  if (*(v0 + 138) & 1) != 0 || (v40 = *(v0 + 137), v41 = (*(v0 + 168) + *(v0 + 352)), v42 = __swift_project_boxed_opaque_existential_1Tm(v41, v41[3]), (*(*v42 + 24)) || !v40)
  {
    v23 = *(v0 + 376);
    v24 = *(v0 + 224);
    sub_21BE261BC();
    v25 = v23;
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FCC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 137);
      v29 = *(v0 + 376);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 67109378;
      *(v30 + 4) = v28;
      *(v30 + 8) = 2112;
      *(v30 + 10) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&dword_21BB35000, v26, v27, "CommLimits stEnabled %{BOOL}d; no row for %@", v30, 0x12u);
      sub_21BB3A4CC(v31, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v31, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    v34 = *(v0 + 456);
    v33 = *(v0 + 464);
    v35 = *(v0 + 376);
    v36 = *(v0 + 272);
    v37 = *(v0 + 224);
    v38 = *(v0 + 208);

    v34(v37, v38);
    sub_21BB3A4CC(v36, &qword_27CDB9720, &unk_21BE39F00);
    v39 = *(v0 + 360);
    goto LABEL_21;
  }

  v43 = *(*v42 + 16);
  v44 = *(v0 + 448);
  v45 = *(v0 + 176);
  v46 = v45[5];
  v47 = *(v0 + 368);
  v48 = *(v0 + 376);
  v49 = *(v0 + 360);
  v50 = *(v0 + 272);
  if (!v44)
  {
    v58 = *(v0 + 200);
    sub_21BC1E1AC(v50, &v58[v46]);
    *v58 = 0;
    *&v58[v45[6]] = v48;
    *&v58[v45[7]] = 0;
    *&v58[v45[8]] = v43;
    *&v58[v45[9]] = v47;
    v58[v45[10]] = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v0 + 360);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_21BBBDD94(0, v39[2] + 1, 1, *(v0 + 360));
    }

    v54 = v39[2];
    v60 = v39[3];
    v55 = v54 + 1;
    if (v54 >= v60 >> 1)
    {
      v39 = sub_21BBBDD94(v60 > 1, v54 + 1, 1, v39);
    }

    v56 = *(v0 + 272);
    v57 = *(v0 + 200);
    goto LABEL_20;
  }

  v51 = *(v0 + 192);
  sub_21BC1E1AC(v50, &v51[v46]);
  *v51 = 1;
  *&v51[v45[6]] = v48;
  *&v51[v45[7]] = v44;
  *&v51[v45[8]] = v43;
  *&v51[v45[9]] = v47;
  v51[v45[10]] = 1;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v0 + 360);
  if ((v52 & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v54 = v39[2];
    v53 = v39[3];
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v39 = sub_21BBBDD94(v53 > 1, v54 + 1, 1, v39);
    }

    v56 = *(v0 + 272);
    v57 = *(v0 + 192);
LABEL_20:
    v61 = *(v0 + 184);
    sub_21BB3A4CC(v56, &qword_27CDB9720, &unk_21BE39F00);
    v39[2] = v55;
    sub_21BE1D8C4(v57, v39 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v54);
LABEL_21:
    v62 = *(v0 + 384);
    if (v62 == *(v0 + 344))
    {
      v63 = *(v0 + 336);
      v64 = *(v0 + 320);
      v65 = *(v0 + 304);
      v67 = *(v0 + 272);
      v66 = *(v0 + 280);
      v86 = v39;
      v69 = *(v0 + 256);
      v68 = *(v0 + 264);
      v71 = *(v0 + 240);
      v70 = *(v0 + 248);
      v72 = *(v0 + 232);
      v83 = *(v0 + 224);
      v84 = *(v0 + 200);
      v85 = *(v0 + 192);

      sub_21BC852D8();

      v73 = *(v0 + 8);

      return v73(v86);
    }

    *(v0 + 360) = v39;
    *(v0 + 368) = v62;
    v75 = *(v0 + 336);
    if ((v75 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v62 < *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v76 = *(v75 + 8 * v62 + 32);
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    v39 = sub_21BBBDD94(0, v39[2] + 1, 1, v39);
  }

  v76 = MEMORY[0x21CF047C0](v62);
LABEL_28:
  v77 = v76;
  *(v0 + 376) = v76;
  *(v0 + 384) = v62 + 1;
  if (__OFADD__(v62, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v78 = *(v0 + 272);
  v79 = sub_21BE25D1C();
  *(v0 + 392) = v79;
  v80 = *(v79 - 8);
  v81 = *(v80 + 56);
  *(v0 + 400) = v81;
  *(v0 + 408) = (v80 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v81(v78, 1, 1, v79);
  v82 = swift_task_alloc();
  *(v0 + 416) = v82;
  *v82 = v0;
  v82[1] = sub_21BE1B0CC;

  return sub_21BCCC428(v77);
}

uint64_t sub_21BE1CA14()
{
  v1 = v0[38];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[25];
  v14 = v0[24];

  sub_21BC852D8();

  v11 = v0[1];
  v12 = v0[41];

  return v11();
}

uint64_t sub_21BE1CB04()
{
  v1 = qword_27CDBE220;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE140, &unk_21BE508F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4410));
  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4418));
}

id sub_21BE1CB8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommLimitsItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BE1CBC4(uint64_t a1)
{
  v2 = qword_27CDBE220;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE140, &unk_21BE508F0);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4410));
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4418));
}

void sub_21BE1CC70()
{
  sub_21BE1CD0C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BE1CD0C()
{
  if (!qword_27CDBE238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBE148, &qword_21BE50E10);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBE238);
    }
  }
}

void sub_21BE1CDC0()
{
  sub_21BC1D2A0();
  if (v0 <= 0x3F)
  {
    sub_21BBE66D8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContactManagementState(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BE1CE80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BE1CEF8(int *a1)
{
  sub_21BE29ACC();
  v3 = *(v1 + a1[6]);
  v8 = *(v1 + a1[9]);
  sub_21BE2992C();
  v4 = sub_21BE291AC();
  v6 = v5;

  MEMORY[0x21CF03CA0](v4, v6);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + a1[10]));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BE1D010(uint64_t a1, int *a2)
{
  v4 = *(v2 + a2[6]);
  v9 = *(v2 + a2[9]);
  sub_21BE2992C();
  v5 = sub_21BE291AC();
  v7 = v6;

  MEMORY[0x21CF03CA0](v5, v7);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + a2[10]));
  sub_21BE28ABC();
}

uint64_t sub_21BE1D120(uint64_t a1, int *a2)
{
  sub_21BE29ACC();
  v4 = *(v2 + a2[6]);
  v9 = *(v2 + a2[9]);
  sub_21BE2992C();
  v5 = sub_21BE291AC();
  v7 = v6;

  MEMORY[0x21CF03CA0](v5, v7);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + a2[10]));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BE1D234(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a1 + a3[6]);
  v25[0] = *(a1 + a3[9]);
  sub_21BE2992C();
  v7 = sub_21BE291AC();
  v9 = v8;

  strcpy(v25, "commLimitsItem");
  HIBYTE(v25[1]) = -18;
  MEMORY[0x21CF03CA0](v7, v9);

  v11 = v25[0];
  v10 = v25[1];
  v12 = *(a2 + a3[6]);
  v25[0] = *(a2 + a3[9]);
  sub_21BE2992C();
  v13 = sub_21BE291AC();
  v15 = v14;

  strcpy(v25, "commLimitsItem");
  HIBYTE(v25[1]) = -18;
  MEMORY[0x21CF03CA0](v13, v15);

  if (v11 == v25[0] && v10 == v25[1])
  {
  }

  else
  {
    v16 = sub_21BE2995C();

    v17 = 0;
    if ((v16 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  v18 = a3[10];
  v19 = *(a2 + v18);
  v20 = sub_21BC5C62C(*(a1 + v18));
  v22 = v21;
  if (v20 == sub_21BC5C62C(v19) && v22 == v23)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_21BE2995C();
  }

  return v17 & 1;
}

uint64_t sub_21BE1D444@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 24));
  v10[0] = *(v2 + *(a1 + 36));
  sub_21BE2992C();
  v5 = sub_21BE291AC();
  v7 = v6;

  strcpy(v10, "commLimitsItem");
  HIBYTE(v10[1]) = -18;
  MEMORY[0x21CF03CA0](v5, v7);

  v9 = v10[1];
  *a2 = v10[0];
  a2[1] = v9;
  return result;
}

uint64_t sub_21BE1D550(uint64_t a1)
{
  *(a1 + 8) = sub_21BE1D5D4(&qword_27CDBE258, type metadata accessor for CommLimitsItem);
  result = sub_21BE1D5D4(&qword_27CDBE260, type metadata accessor for CommLimitsItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BE1D5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BE1D644(uint64_t a1)
{
  *(a1 + 8) = sub_21BE1D5D4(&qword_27CDBE268, type metadata accessor for CommLimitsItemProvider);
  result = sub_21BE1D5D4(&qword_27CDB60B0, type metadata accessor for CommLimitsItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BE1D6C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BE1D748(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BE1D7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BE1D824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BCCB970(a1, v4);
}

uint64_t sub_21BE1D8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BE1D928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BCCBDD0(a1, v4);
}

uint64_t sub_21BE1D9C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BE1A84C();
}

id static NSBundle.familyCircleUI.getter()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t static LocalizedStringResource.BundleDescription.familyCircleUI.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 bundleURL];

  sub_21BE25B5C();
  v5 = *MEMORY[0x277CC9118];
  v6 = sub_21BE25A9C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

void *sub_21BE1DBC0()
{
  type metadata accessor for MemberDetailsPurchaseSharingCache();
  swift_allocObject();
  return sub_21BE20478();
}

uint64_t sub_21BE1DBF8(void *a1)
{
  v2 = v1;
  v64 = sub_21BE26A4C();
  v4 = *(v64 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v64);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = [a1 subscriberDSIDs];
    if (v8)
    {
      v9 = v8;
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v65 = sub_21BE28C3C();

      goto LABEL_10;
    }
  }

  v10 = (v1 + *(type metadata accessor for MemberDetailsPurchaseSharingWrapper() + 40));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  type metadata accessor for MemberDetailsPurchaseSharingCache();
  sub_21BE1EDD8(&qword_27CDBE298, type metadata accessor for MemberDetailsPurchaseSharingCache);
  sub_21BE26EAC();
  v68 = 0x6269726373627573;
  v69 = 0xEF73444953447265;
  v14 = sub_21BE20000(&v68);

  if (v14)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v68 = 0;
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      sub_21BE28C2C();

      v65 = v68;
      if (v68)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v65 = 0;
LABEL_10:
  v15 = type metadata accessor for MemberDetailsPurchaseSharingWrapper();
  v16 = v15;
  v17 = *(v2 + *(v15 + 24));
  v18 = v17;
  if (!v17)
  {
    v41 = v2 + *(v15 + 40);
    v42 = *v41;
    v43 = *(v41 + 1);
    v44 = v41[16];
    type metadata accessor for MemberDetailsPurchaseSharingCache();
    sub_21BE1EDD8(&qword_27CDBE298, type metadata accessor for MemberDetailsPurchaseSharingCache);
    sub_21BE26EAC();
    v68 = 0x53447265626D656DLL;
    v69 = 0xEA00000000004449;
    v45 = sub_21BE20000(&v68);

    if (v45)
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
      }
    }

    else
    {
      v18 = 0;
    }
  }

  v66 = v2;
  v19 = v17;
  sub_21BE2614C();
  v20 = a1;
  v21 = sub_21BE26A2C();
  v22 = sub_21BE28FFC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v68 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5FFE0, &v68);
    *(v23 + 12) = 2080;
    v67 = a1;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB568, qword_21BE47588);
    v26 = sub_21BE28A5C();
    v28 = sub_21BB3D81C(v26, v27, &v68);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_21BB35000, v21, v22, "%s subscription: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v24, -1, -1);
    MEMORY[0x21CF05C50](v23, -1, -1);
  }

  (*(v4 + 8))(v7, v64);
  v29 = v65;
  if (!v65)
  {
    goto LABEL_21;
  }

  if (!v18)
  {

LABEL_21:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    v62 = 0xE700000000000000;
    v48 = sub_21BE2599C();
LABEL_31:

    goto LABEL_32;
  }

  v30 = v66 + *(v16 + 40);
  v31 = *v30;
  v32 = *(v30 + 1);
  v33 = v30[16];
  v34 = type metadata accessor for MemberDetailsPurchaseSharingCache();
  sub_21BE1EDD8(&qword_27CDBE298, type metadata accessor for MemberDetailsPurchaseSharingCache);
  v35 = v18;
  v63[1] = v31;
  v63[2] = v34;
  v36 = sub_21BE26EAC();
  v37 = sub_21BE1F55C();
  v64 = v35;
  if (v37)
  {
    v38 = v37;
    v39 = *(v36 + 24);
    v68 = *(v36 + 16);
    v69 = v39;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](0x53447265626D656DLL, 0xEA00000000004449);
    v40 = sub_21BE289CC();

    [v38 setValue:v35 forKey:v40];
  }

  else
  {
  }

  v49 = sub_21BE26EAC();
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v50 = sub_21BE28C1C();
  v51 = sub_21BE1F55C();
  if (v51)
  {
    v52 = v51;
    v53 = *(v49 + 24);
    v68 = *(v49 + 16);
    v69 = v53;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](0x6269726373627573, 0xEF73444953447265);
    v54 = sub_21BE289CC();

    [v52 setValue:v50 forKey:v54];

    v50 = v54;
    v29 = v65;
  }

  else
  {
  }

  sub_21BE26EAC();
  v55 = sub_21BE1F55C();
  [v55 synchronize];

  if (!*v66 || ![*v66 isEnabled])
  {

    type metadata accessor for ConfirmChildAgeViewModel();
    v60 = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v62 = 0x800000021BE62D10;
    v48 = sub_21BE2599C();
    v47 = v64;

    goto LABEL_31;
  }

  v56 = v64;

  v68 = v56;
  MEMORY[0x28223BE20](v57);
  v62 = &v68;
  v58 = sub_21BC9DAC4(sub_21BBF0CE4, &v63[-4], v29);

  type metadata accessor for ConfirmChildAgeViewModel();
  v59 = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  if (v58)
  {
    v62 = 0x800000021BE62D50;
  }

  else
  {
    v62 = 0x800000021BE62D30;
  }

  v48 = sub_21BE2599C();

LABEL_32:
  return v48;
}

uint64_t sub_21BE1E554@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE27A2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58[-v11];
  v13 = type metadata accessor for StaticSelectableCellTemplate();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA80, &qword_21BE48300);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v58[-v21];
  v23 = *v1;
  if (v23)
  {
    v64 = v22;
    v65 = v19;
    v70 = v20;
    v24 = [v23 isEnabled];
    v68 = v4;
    v69 = a1;
    if (v24)
    {
      v25 = type metadata accessor for MemberDetailsPurchaseSharingWrapper();
      sub_21BBF0D04(v2 + *(v25 + 20), v12);
    }

    else
    {
      v28 = sub_21BE25B9C();
      (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    }

    v29 = type metadata accessor for MemberDetailsPurchaseSharingWrapper();
    v30 = v29[7];
    swift_unknownObjectWeakLoadStrong();
    v31 = sub_21BE1DBF8(v23);
    v62 = v32;
    v63 = v31;
    v33 = *(v2 + v29[6]);
    v66 = v8;
    v67 = v5;
    if (v33)
    {
      v61 = [v33 integerValue];
    }

    else
    {
      v61 = 0;
    }

    v34 = v2 + v29[8];
    v35 = *v34;
    v36 = *(v34 + 1);
    LOBYTE(v34) = v34[16];
    v74 = v35;
    v75 = v36;
    v76 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v37 = v72;
    v60 = v71;
    v59 = v73;
    v38 = *(v2 + v29[9]);
    v39 = qword_280BD76F0;
    v40 = v38;
    if (v39 != -1)
    {
      swift_once();
    }

    *v16 = 0xD000000000000010;
    v16[1] = 0x800000021BE55930;
    sub_21BC438F8(v12, v16 + v13[5]);
    *(v16 + v13[6]) = 1;
    v41 = v13[7];
    swift_unknownObjectWeakInit();

    swift_unknownObjectRelease();
    v42 = (v16 + v13[8]);
    v43 = v62;
    *v42 = v63;
    v42[1] = v43;
    v44 = v16 + v13[9];
    v45 = v60;
    *v44 = v61;
    v44[8] = v33 == 0;
    v46 = (v16 + v13[10]);
    *v46 = 0;
    v46[1] = 0;
    v47 = v16 + v13[11];
    *v47 = v45;
    *(v47 + 1) = v37;
    v47[16] = v59;
    *(v16 + v13[12]) = xmmword_21BE51020;
    *(v16 + v13[13]) = v38;
    *(v16 + v13[14]) = 7;
    v48 = (v16 + v13[15]);
    type metadata accessor for ServicesStore();
    sub_21BE1EDD8(&qword_27CDB5750, type metadata accessor for ServicesStore);
    *v48 = sub_21BE270CC();
    v48[1] = v49;
    *(v16 + v13[16]) = 0;
    v50 = v16 + v13[17];
    LOBYTE(v71) = 0;
    sub_21BE283EC();
    v51 = v75;
    *v50 = v74;
    *(v50 + 1) = v51;
    v52 = v13[18];
    sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
    v53 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_27CDB4EE0 != -1)
    {
      swift_once();
    }

    sub_21BE2935C();

    v54 = v66;
    sub_21BE27A0C();
    sub_21BE1EDD8(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
    v55 = v64;
    sub_21BE2805C();
    (*(v67 + 8))(v54, v68);
    sub_21BC5E088(v16);
    v56 = v69;
    v57 = v65;
    (*(v70 + 32))(v69, v55, v65);
    return (*(v70 + 56))(v56, 0, 1, v57);
  }

  else
  {
    v26 = *(v20 + 56);

    return v26(a1, 1, 1);
  }
}

uint64_t type metadata accessor for MemberDetailsPurchaseSharingWrapper()
{
  result = qword_27CDBE280;
  if (!qword_27CDBE280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BE1EBF8()
{
  sub_21BC97780(319, &qword_27CDB8B60, &unk_27CDB6550, 0x277D08338);
  if (v0 <= 0x3F)
  {
    sub_21BBF088C();
    if (v1 <= 0x3F)
    {
      sub_21BC97780(319, &qword_27CDB8B68, &qword_280BD68F8, 0x277CCABB0);
      if (v2 <= 0x3F)
      {
        sub_21BD39D4C();
        if (v3 <= 0x3F)
        {
          sub_21BB3A2A4(319, &qword_280BD6980, 0x277D08248);
          if (v4 <= 0x3F)
          {
            sub_21BE1ED28();
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

void sub_21BE1ED28()
{
  if (!qword_27CDBE290)
  {
    type metadata accessor for MemberDetailsPurchaseSharingCache();
    sub_21BE1EDD8(&qword_27CDBE298, type metadata accessor for MemberDetailsPurchaseSharingCache);
    v0 = sub_21BE26EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBE290);
    }
  }
}

uint64_t sub_21BE1EDD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BE1EE20()
{
  result = qword_27CDBE2A0;
  if (!qword_27CDBE2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBE2A8, &qword_21BE510F0);
    type metadata accessor for StaticSelectableCellTemplate();
    sub_21BE1EDD8(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBE2A0);
  }

  return result;
}

uint64_t sub_21BE1EF28@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_21BE25DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE25DFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE2B0, qword_21BE512E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  sub_21BE25DBC();
  sub_21BE25DEC();
  (*(v8 + 8))(v11, v7);
  sub_21BE25DCC();
  (*(v3 + 8))(v6, v2);
  v16 = sub_21BE25D9C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21BB3A4CC(v15, &qword_27CDBE2B0, qword_21BE512E0);
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    v18 = sub_21BE25D8C();
    v19 = v20;
    (*(v17 + 8))(v15, v16);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_21BE295EC();

  v23 = 0xD000000000000012;
  v24 = 0x800000021BE62F20;
  MEMORY[0x21CF03CA0](v18, v19);

  v22 = v24;
  *a1 = v23;
  a1[1] = v22;
  return result;
}

uint64_t sub_21BE1F210@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21BE25DDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE25DFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE2B0, qword_21BE512E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  sub_21BE25DBC();
  sub_21BE25DEC();
  (*(v12 + 8))(v15, v11);
  sub_21BE25DCC();
  (*(v7 + 8))(v10, v6);
  v20 = sub_21BE25D9C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_21BB3A4CC(v19, &qword_27CDBE2B0, qword_21BE512E0);
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v22 = sub_21BE25D8C();
    v23 = v24;
    (*(v21 + 8))(v19, v20);
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_21BE295EC();

  v27 = a1;
  v28 = a2;
  MEMORY[0x21CF03CA0](v22, v23);

  v26 = v28;
  *a3 = v27;
  a3[1] = v26;
  return result;
}

uint64_t FamilyCacheKey.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FamilyCacheKey.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id sub_21BE1F55C()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  v8 = v7;
  if (!v7)
  {
    v9 = v4;
    if (qword_280BD8A50 != -1)
    {
      swift_once();
    }

    v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v11 = sub_21BE289CC();
    v8 = [v10 initWithSuiteName_];

    if (v8)
    {
      v12 = *(v0 + 48);
      *(v0 + 48) = v8;
      v13 = v8;
    }

    else
    {
      sub_21BE2614C();
      v14 = sub_21BE26A2C();
      v15 = sub_21BE28FDC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_21BB3D81C(0x6166654472657375, 0xEC00000073746C75, &v21);
        _os_log_impl(&dword_21BB35000, v14, v15, "%s Unable to get user defaults", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x21CF05C50](v17, -1, -1);
        MEMORY[0x21CF05C50](v16, -1, -1);
      }

      (*(v2 + 8))(v6, v9);
      v8 = 0;
    }
  }

  v18 = v7;
  return v8;
}

void sub_21BE1F7A4()
{
  v0 = sub_21BE1F55C();
  if (v0)
  {
    v16 = v0;
    v1 = [v0 dictionaryRepresentation];
    v2 = sub_21BE2890C();

    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_8:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        while (1)
        {
          v9 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          v10 = (*(v2 + 48) + ((v8 << 10) | (16 * v9)));
          v12 = *v10;
          v11 = v10[1];

          v13 = sub_21BE2219C();
          v14 = sub_21BD6FF84(v13);

          if (v14)
          {
            v15 = sub_21BE289CC();

            [v16 removeObjectForKey_];

            v7 = v8;
            if (!v5)
            {
              goto LABEL_8;
            }
          }

          else
          {

            v7 = v8;
            if (!v5)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v8 = v7;
        }
      }
    }
  }
}

void sub_21BE1F980()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v12 = v10;
  v13 = v11;
  v14 = sub_21BE2940C();

  if (v14)
  {
    sub_21BE2614C();

    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FCC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21BB3D81C(*(v1 + 16), *(v1 + 24), &v32);
      _os_log_impl(&dword_21BB35000, v15, v16, "%s cache DSID up to date", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x21CF05C50](v18, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  else
  {
    sub_21BE2614C();

    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FCC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(*(v1 + 16), *(v1 + 24), &v32);
      _os_log_impl(&dword_21BB35000, v19, v20, "%s updating cache DSID", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    v23 = *(v1 + 32);
    v24 = *(v1 + 40);
    *(v1 + 40) = v23;
    v25 = v23;

    v26 = sub_21BE1F55C();
    if (v26)
    {
      v27 = v26;
      v28 = *(v1 + 32);
      v29 = sub_21BE289CC();
      [v27 setValue:v28 forKey:v29];
    }

    sub_21BE1F7A4();
    v30 = sub_21BE1F55C();
    [v30 synchronize];
  }
}

void sub_21BE1FCF8()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000011, 0x800000021BE62F80, &v14);
    _os_log_impl(&dword_21BB35000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_21BE21C10();
  v11 = *(v1 + 32);
  *(v1 + 32) = v12;

  sub_21BE1F980();
}

void sub_21BE1FEE8()
{
  v0 = sub_21BE1F55C();
  [v0 synchronize];
}

void sub_21BE1FF2C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = sub_21BE1F55C();
  if (v6)
  {
    v7 = v6;
    v9 = *(v2 + 16);
    v10 = *(v2 + 24);

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v4, v5);
    v8 = sub_21BE289CC();

    [v7 setValue:a2 forKey:v8];
  }
}

id sub_21BE20000(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_21BE1F55C();
  if (result)
  {
    v5 = result;
    v9 = *(v1 + 16);

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v2, v3);
    v6 = sub_21BE289CC();

    v7 = [v5 valueForKey_];

    if (v7)
    {
      sub_21BE294BC();

      swift_unknownObjectRelease();
    }

    else
    {

      v9 = 0u;
      v10 = 0u;
    }

    v11[0] = v9;
    v11[1] = v10;
    if (*(&v10 + 1))
    {
      sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
      if (swift_dynamicCast())
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_21BB3A4CC(v11, &qword_27CDB5940, &unk_21BE32B10);
      return 0;
    }
  }

  return result;
}

void sub_21BE20144(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = sub_21BE1F55C();
  if (v4)
  {
    v5 = v4;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v2, v3);
    v6 = sub_21BE289CC();

    [v5 removeObjectForKey_];
  }
}

uint64_t sub_21BE20204@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SimpleFamilyServerCache();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

void *sub_21BE20240()
{
  v0[6] = 0;
  v0[2] = 0xD00000000000001ALL;
  v0[3] = 0x800000021BE511E0;
  sub_21BE21C10();
  v0[4] = v1;
  v0[5] = sub_21BE21FF4();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v0;
}

uint64_t sub_21BE202E8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 24);

  return v0;
}

void *sub_21BE20478()
{
  v0[6] = 0;
  v0[2] = 0xD000000000000021;
  v0[3] = 0x800000021BE51210;
  sub_21BE21C10();
  v0[4] = v1;
  v0[5] = sub_21BE21FF4();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v0;
}

void *sub_21BE20540()
{
  v0[6] = 0;
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000021BE51240;
  sub_21BE21C10();
  v0[4] = v1;
  v0[5] = sub_21BE21FF4();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v0;
}

void *sub_21BE20608()
{
  v0[6] = 0;
  v0[2] = 0xD000000000000017;
  v0[3] = 0x800000021BE51260;
  sub_21BE21C10();
  v0[4] = v1;
  v0[5] = sub_21BE21FF4();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v0;
}

void *sub_21BE206D4()
{
  v0[6] = 0;
  v0[2] = 0xD000000000000014;
  v0[3] = 0x800000021BE51280;
  sub_21BE21C10();
  v0[4] = v1;
  v0[5] = sub_21BE21FF4();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v0;
}

unint64_t sub_21BE20778()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE1F210(0x726143656C707061, 0xEF2E74696D694C64, &v18);
  v17 = v18;
  v5 = sub_21BE20000(&v17);

  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v18 = xmmword_21BE358A0;
      sub_21BE25BEC();

      v6 = *(&v18 + 1);
      if (*(&v18 + 1) >> 60 != 15)
      {
        v7 = v18;
        v8 = sub_21BE2578C();
        v9 = *(v8 + 48);
        v10 = *(v8 + 52);
        swift_allocObject();
        sub_21BE2577C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F30, &unk_21BE411F0);
        sub_21BE224F0(&qword_27CDBE2C0);
        sub_21BE2576C();
        sub_21BBBF0B4(v7, v6);

        return v18;
      }
    }

    else
    {
    }
  }

  sub_21BE2614C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_21BB3D81C(0x74696D694C746567, 0xEB00000000292873, &v18);
    _os_log_impl(&dword_21BB35000, v11, v12, "%s no card cache", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_21BBB6068(MEMORY[0x277D84F90]);
}

id sub_21BE20A9C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21BE26A4C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  result = [a1 altDSID];
  if (result)
  {
    v12 = result;
    v13 = sub_21BE28A0C();
    v15 = v14;

    v37 = sub_21BE20778();
    v33 = v4;
    v16 = a2;

    sub_21BE2231C(v17, v16, v13, v15, &v37);

    v18 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v18;
    sub_21BC7F9A8(a3, a4, v13, v15, isUniquelyReferenced_nonNull_native);

    v20 = sub_21BE257BC();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_21BE257AC();
    v36[0] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F30, &unk_21BE411F0);
    sub_21BE224F0(&qword_27CDBE2B8);
    v23 = sub_21BE2579C();
    v25 = v24;

    sub_21BE1F210(0x726143656C707061, 0xEF2E74696D694C64, v36);
    v27 = v36[0];
    v26 = v36[1];
    v28 = sub_21BE25BCC();
    v29 = sub_21BE1F55C();
    if (v29)
    {
      v30 = v29;
      v34 = *(v33 + 16);
      v35 = *(v33 + 24);

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](v27, v26);
      v31 = sub_21BE289CC();

      [v30 setValue:v28 forKey:v31];

      v28 = v31;
    }

    else
    {
    }

    v32 = sub_21BE1F55C();
    [v32 synchronize];

    sub_21BBBEF94(v23, v25);
  }

  return result;
}

uint64_t sub_21BE20E38(void *a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE20778();
  v8 = [a1 altDSID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;

    if (*(v7 + 16))
    {
      v13 = sub_21BBB3108(v10, v12);
      v15 = v14;

      if (v15)
      {
        v16 = (*(v7 + 56) + 16 * v13);
        v18 = *v16;
        v17 = v16[1];

        return v18;
      }
    }

    else
    {
    }
  }

  else
  {

    sub_21BE2614C();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FDC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_21BB3D81C(0x74696D694C746567, 0xEE00293A726F6628, &v25);
      _os_log_impl(&dword_21BB35000, v20, v21, "impossible, no altDSID in %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x21CF05C50](v23, -1, -1);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

void *sub_21BE210B8()
{
  v0[6] = 0;
  v0[2] = 0xD000000000000014;
  v0[3] = 0x800000021BE512A0;
  sub_21BE21C10();
  v0[4] = v1;
  v0[5] = sub_21BE21FF4();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v0;
}

uint64_t sub_21BE2115C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unsigned __int8 *sub_21BE21210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21BE28B8C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21BE2179C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21BE2967C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21BE2179C()
{
  v0 = sub_21BE28B9C();
  v4 = sub_21BE2181C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21BE2181C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21BE28AAC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21BE2947C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21BB3DB70(v9, 0);
  v12 = sub_21BE21974(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21BE28AAC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21BE2967C();
LABEL_4:

  return sub_21BE28AAC();
}

unint64_t sub_21BE21974(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21BE21B94(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21BE28B4C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21BE2967C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21BE21B94(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21BE28B2C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21BE21B94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21BE28B5C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CF03CE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_21BE21C10()
{
  v0 = [objc_opt_self() defaultStore];
  if (!v0)
  {
    goto LABEL_68;
  }

  v1 = v0;
  v2 = [v0 aa_primaryAppleAccount];

  if (!v2)
  {
    goto LABEL_68;
  }

  v3 = [v2 aa_personID];

  if (!v3)
  {
    goto LABEL_68;
  }

  v4 = sub_21BE28A0C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_68;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {

    v13 = sub_21BE21210(v4, v6, 10);
    v37 = v36;
    swift_bridgeObjectRelease_n();
    if (v37)
    {
      goto LABEL_68;
    }

LABEL_71:
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    return;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_21BE2967C();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          if (v10)
          {
            v13 = 0;
            v23 = v10 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_66;
              }

              v25 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_66;
              }

              v13 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_66;
              }

              v17 = 0;
              ++v23;
              if (!--v22)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

        goto LABEL_66;
      }

      goto LABEL_75;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        if (v10)
        {
          v13 = 0;
          while (1)
          {
            v30 = *v10 - 48;
            if (v30 > 9)
            {
              goto LABEL_66;
            }

            v31 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              goto LABEL_66;
            }

            v13 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_66;
            }

            v17 = 0;
            ++v10;
            if (!--v8)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_58;
      }

LABEL_66:
      v13 = 0;
      v17 = 1;
LABEL_67:
      v39 = v17;
      v35 = v17;

      if (v35)
      {
LABEL_68:
        sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
        sub_21BE293EC();
        return;
      }

      goto LABEL_71;
    }

    if (v8 >= 1)
    {
      v12 = v8 - 1;
      if (v8 != 1)
      {
        if (v10)
        {
          v13 = 0;
          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_66;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              goto LABEL_66;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              goto LABEL_66;
            }

            v17 = 0;
            ++v14;
            if (!--v12)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        v13 = 0;
        v17 = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v38[0] = v4;
  v38[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v4 != 43)
  {
    if (v4 != 45)
    {
      if (v7)
      {
        v13 = 0;
        v32 = v38;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          v17 = 0;
          ++v32;
          if (!--v7)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v7)
    {
      v18 = v7 - 1;
      if (v18)
      {
        v13 = 0;
        v19 = v38 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          v17 = 0;
          ++v19;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_74;
  }

  if (v7)
  {
    v26 = v7 - 1;
    if (v26)
    {
      v13 = 0;
      v27 = v38 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        v17 = 0;
        ++v27;
        if (!--v26)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_76:
  __break(1u);
}

uint64_t sub_21BE21FF4()
{
  if (qword_280BD8A50 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21BE289CC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_21BB3A4CC(&v8, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_12;
  }

  v3 = sub_21BE289CC();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    return v6;
  }

LABEL_12:
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  return sub_21BE293EC();
}

uint64_t sub_21BE2219C()
{
  v22 = MEMORY[0x277D84F90];
  sub_21BC599DC(0, 6, 0);
  v0 = 0;
  result = v22;
  v2 = "erCache";
  v3 = "ChecklistStoreCache";
  v4 = "SubscriptionFamilyCache";
  v5 = "AppleCardFamilyCache";
  do
  {
    v6 = byte_282D84DF0[v0 + 32];
    v7 = 0xD00000000000001ALL;
    v8 = 0xD000000000000017;
    if (v6 == 4)
    {
      v9 = v4;
    }

    else
    {
      v9 = v5;
    }

    if (v6 == 3)
    {
      v9 = v3;
    }

    else
    {
      v8 = 0xD000000000000014;
    }

    v10 = 0xD000000000000021;
    if (v6 == 1)
    {
      v11 = "amilyCache";
    }

    else
    {
      v10 = 0xD000000000000013;
      v11 = "chaseSharingCache";
    }

    if (byte_282D84DF0[v0 + 32])
    {
      v7 = v10;
      v12 = v11;
    }

    else
    {
      v12 = v2;
    }

    if (byte_282D84DF0[v0 + 32] <= 2u)
    {
      v13 = v7;
    }

    else
    {
      v13 = v8;
    }

    if (byte_282D84DF0[v0 + 32] <= 2u)
    {
      v14 = v12;
    }

    else
    {
      v14 = v9;
    }

    v23 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v20 = v3;
      v21 = v2;
      v18 = v5;
      v19 = v4;
      sub_21BC599DC((v15 > 1), v16 + 1, 1);
      v5 = v18;
      v4 = v19;
      v3 = v20;
      v2 = v21;
      result = v23;
    }

    ++v0;
    *(result + 16) = v16 + 1;
    v17 = result + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14 | 0x8000000000000000;
  }

  while (v0 != 6);
  return result;
}

void sub_21BE2231C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; a5 = v21)
  {
LABEL_11:
    while (1)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = (*(a1 + 48) + ((i << 10) | (16 * v15)));
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_21BE289CC();
      v20 = [a2 memberForAltDSID_];

      if (!v20)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v21 = a5;
    v22 = *a5;

    v23 = sub_21BBB3108(v17, v18);
    v25 = v24;

    if (v25)
    {
      v26 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v21;
      v31 = *v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21BC80E88();
        v28 = v31;
      }

      v12 = *(*(v28 + 48) + 16 * v23 + 8);

      v13 = *(*(v28 + 56) + 16 * v23 + 8);

      sub_21BC7ECF0(v23, v28);
      *v21 = v28;
    }
  }

LABEL_7:
  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v14);
    ++i;
    if (v9)
    {
      i = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_21BE224F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6F30, &unk_21BE411F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27CDD4100 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27CDD40F4 > a2)
  {
    return 1;
  }

  if (dword_27CDD40F4 < a2)
  {
    return 0;
  }

  return dword_27CDD40F8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27CDD4108 == -1)
  {
    if (qword_27CDD4110)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27CDD4110)
    {
      goto LABEL_3;
    }
  }

  if (qword_27CDD4100 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27CDD40F4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27CDD40F4 >= a3)
      {
        result = dword_27CDD40F8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27CDD4110;
  if (qword_27CDD4110)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CDD4110 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CF05230](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27CDD40F4, &dword_27CDD40F8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}