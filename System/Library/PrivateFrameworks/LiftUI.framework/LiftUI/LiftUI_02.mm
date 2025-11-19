uint64_t sub_255D5C2F4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D4DE84(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_255D5C30C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_255D5C324(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_255D5C33C()
{
  result = qword_27F7E6B68;
  if (!qword_27F7E6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6B68);
  }

  return result;
}

uint64_t sub_255D5C390(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_255D5C3FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A7FC(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t objectdestroy_117Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 88);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v2);
  }

  v3 = *(v0 + 120);
  if (v3 != 255)
  {
    sub_255D5CA24(*(v0 + 96), *(v0 + 104), *(v0 + 112), v3 & 1, sub_255D398A4);
  }

  v4 = *(v0 + 152);
  if (v4 != 255)
  {
    sub_255D5CA24(*(v0 + 128), *(v0 + 136), *(v0 + 144), v4 & 1, sub_255D398A4);
  }

  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 176);

  v8 = *(v0 + 184);
  swift_unknownObjectRelease();
  v9 = *(v0 + 200);

  v10 = *(v0 + 208);

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_255D5C620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D78980(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_255D5C6E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A3E8(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_255D5C818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5AA18(a1, v4, v5, v1 + 4, v6, v7);
}

uint64_t sub_255D5C8F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A514(a1, v4, v5, (v1 + 32), v6, v7);
}

uint64_t sub_255D5CA24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  if (a4)
  {

    return a5(a3);
  }

  else
  {
  }
}

uint64_t sub_255D5CA88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A068(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_255D5CBBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A22C(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_255D5CCF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255D5D0A4;

  return sub_255D5A5B0(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_255D5CE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D5D0A4;

  return sub_255E28F80(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

unint64_t sub_255D5CEF8()
{
  result = qword_27F7E6B98;
  if (!qword_27F7E6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6B98);
  }

  return result;
}

unint64_t sub_255D5CF90()
{
  result = qword_27F7E6BA8;
  if (!qword_27F7E6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BA8);
  }

  return result;
}

unint64_t sub_255D5CFE8()
{
  result = qword_27F7E6BB0;
  if (!qword_27F7E6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BB0);
  }

  return result;
}

unint64_t sub_255D5D040()
{
  result = qword_27F7E6BB8;
  if (!qword_27F7E6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BB8);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_255D5D114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_255D5D15C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_255D5D1E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_255D5D228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D5D284(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255D5D370(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7377656976;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7377656976;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D5D408()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5D47C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5D4EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_255D5D54C@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D5D5B0(uint64_t a1)
{
  v2 = sub_255D5F460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D5D5EC(uint64_t a1)
{
  v2 = sub_255D5F460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D5D628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66B8, &qword_255E3E180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = v2[3];
  v17 = *v2;
  v18 = *(v2 + 1);
  v19 = v13;
  v20 = *(v2 + 2);
  v14 = sub_255D4D04C();
  (*(v14 + 24))(a1, v14);
  (*(v6 + 16))(v10, v12, v5);
  sub_255D38950(&qword_27F7E66C0, &qword_27F7E66B8, &qword_255E3E180);
  v15 = sub_255E3A038();
  result = (*(v6 + 8))(v12, v5);
  *a2 = v15;
  return result;
}

uint64_t sub_255D5D7E0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
  return sub_255E397C8();
}

double sub_255D5D898@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_255D5F0EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_255D5D924()
{
  result = qword_27F7E6BC0;
  if (!qword_27F7E6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BC0);
  }

  return result;
}

uint64_t sub_255D5D978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_255D5D9DC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5DA8C()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D5DB28()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D5DBD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D5F7FC();
  *a2 = result;
  return result;
}

void sub_255D5DC04(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x726564616568;
  if (*v1 != 2)
  {
    v4 = 0x7265746F6F66;
  }

  if (*v1)
  {
    v3 = 0x746E65746E6F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_255D5DC70()
{
  v1 = 25705;
  v2 = 0x726564616568;
  if (*v0 != 2)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0)
  {
    v1 = 0x746E65746E6F63;
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

uint64_t sub_255D5DCD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D5F7FC();
  *a1 = result;
  return result;
}

uint64_t sub_255D5DD00(uint64_t a1)
{
  v2 = sub_255D5EFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D5DD3C(uint64_t a1)
{
  v2 = sub_255D5EFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D5DD78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_255E385D8();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C00, &qword_255E3F558);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v57[13] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D5EF40(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v45 = sub_255E38CC8();
  v57[14] = v45;
  v57[15] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D5EFE4();
  v13 = v46;
  sub_255E3AE28();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v46 = v3;
    v14 = v43;
    v15 = v44;
    LOBYTE(v47) = 0;
    v16 = sub_255E3AB88();
    v41 = a1;
    if (!v17)
    {
      v19 = v6;
      sub_255E385C8();
      v20 = sub_255E385B8();
      v40 = v7;
      v22 = v21;
      (*(v15 + 8))(v19, v46);
      v17 = v22;
      v7 = v40;
      v16 = v20;
    }

    v57[0] = v16;
    v57[1] = v17;
    v46 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v58 = 1;
    sub_255D5F038();
    sub_255E3ABA8();
    if (v47)
    {
      v23 = v47;
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v24 = sub_255D48968(v23);

    v57[2] = v24;
    v58 = 2;
    sub_255D447E8();
    sub_255E3ABA8();
    v40 = v7;
    if (*(&v47 + 1))
    {
      v25 = sub_255D44794();
      v26 = swift_allocObject();
      v27 = v54;
      *(v26 + 112) = v53;
      *(v26 + 128) = v27;
      *(v26 + 144) = v55;
      *(v26 + 160) = v56;
      v28 = v50;
      *(v26 + 48) = v49;
      *(v26 + 64) = v28;
      v29 = v52;
      *(v26 + 80) = v51;
      *(v26 + 96) = v29;
      v30 = v48;
      *(v26 + 16) = v47;
      *(v26 + 32) = v30;
      v31 = &type metadata for ViewContent;
    }

    else
    {
      sub_255D395E4(&v47, &qword_27F7E6C20, &qword_255E58D80);
      v26 = 0;
      v31 = 0;
      v25 = 0;
    }

    v57[3] = v26;
    v57[4] = 0;
    v57[5] = 0;
    v57[6] = v31;
    v57[7] = v25;
    v58 = 3;
    sub_255E3ABA8();
    if (*(&v47 + 1))
    {
      v32 = sub_255D44794();
      v33 = swift_allocObject();
      v34 = v54;
      *(v33 + 112) = v53;
      *(v33 + 128) = v34;
      *(v33 + 144) = v55;
      *(v33 + 160) = v56;
      v35 = v50;
      *(v33 + 48) = v49;
      *(v33 + 64) = v35;
      v36 = v52;
      *(v33 + 80) = v51;
      *(v33 + 96) = v36;
      v37 = v48;
      *(v33 + 16) = v47;
      *(v33 + 32) = v37;
      (*(v14 + 8))(v10, v40);
      v38 = &type metadata for ViewContent;
    }

    else
    {
      (*(v14 + 8))(v10, v40);
      sub_255D395E4(&v47, &qword_27F7E6C20, &qword_255E58D80);
      v32 = 0;
      v38 = 0;
      v33 = 0;
    }

    v57[8] = v33;
    v57[9] = 0;
    v57[10] = 0;
    v57[11] = v38;
    v57[12] = v32;
    sub_255D4D2E4(v57, v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    return sub_255D5F0BC(v57);
  }
}

uint64_t sub_255D5E31C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66D8, &qword_255E3E188);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = sub_255D4D0F4();
  (*(v12 + 24))(a1, v12);
  (*(v5 + 16))(v9, v11, v4);
  sub_255D4D148();
  v13 = sub_255E3A038();
  result = (*(v5 + 8))(v11, v4);
  *a2 = v13;
  return result;
}

uint64_t sub_255D5E478()
{
  v1 = v0;
  sub_255D4FB3C(v0 + 24, v9);
  v2 = v10;
  if (v10)
  {
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_255D395E4(v9, &qword_27F7E6558, &qword_255E3DD80);
    v4 = 0;
  }

  v12 = v4;
  sub_255D4FB3C(v1 + 64, v9);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_255D395E4(v9, &qword_27F7E6558, &qword_255E3DD80);
    v7 = 0;
  }

  v9[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
  sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
  return sub_255E3A0F8();
}

unint64_t sub_255D5E6D8()
{
  result = qword_27F7E6BC8;
  if (!qword_27F7E6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BC8);
  }

  return result;
}

uint64_t sub_255D5E72C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255D5E780@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D5E7D8(uint64_t a1)
{
  v2 = sub_255D5EF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D5E814(uint64_t a1)
{
  v2 = sub_255D5EF88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D5E850@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_255E3A0C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_255E3A0B8();
  (*(v3 + 16))(v7, v9, v2);
  sub_255D5EF40(&qword_27F7E6710, MEMORY[0x277CDF088]);
  v10 = sub_255E3A038();
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  return result;
}

double sub_255D5E9AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_255D5EC74(a1, v6);
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

uint64_t sub_255D5EA3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D5EAAC()
{
  result = qword_27F7E6BD0;
  if (!qword_27F7E6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BD0);
  }

  return result;
}

unint64_t sub_255D5EB00(uint64_t a1)
{
  result = sub_255D5EB28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D5EB28()
{
  result = qword_27F7E6BD8;
  if (!qword_27F7E6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BD8);
  }

  return result;
}

unint64_t sub_255D5EB7C(uint64_t a1)
{
  result = sub_255D5EBA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D5EBA4()
{
  result = qword_27F7E6BE0;
  if (!qword_27F7E6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BE0);
  }

  return result;
}

unint64_t sub_255D5EBF8(uint64_t a1)
{
  result = sub_255D5EC20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D5EC20()
{
  result = qword_27F7E6BE8;
  if (!qword_27F7E6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BE8);
  }

  return result;
}

uint64_t sub_255D5EC74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = sub_255E385D8();
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6BF0, &qword_255E3F528);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  type metadata accessor for RemoteStateStore(0);
  sub_255D5EF40(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v12 = sub_255E38CC8();
  v14 = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D5EF88();
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v28 = v12;
    v16 = v33;
    v17 = v32;
    v18 = sub_255E3AB88();
    if (v19)
    {
      v26 = v18;
      v27 = v19;
    }

    else
    {
      sub_255E385C8();
      v26 = sub_255E385B8();
      v27 = v21;
      (*(v30 + 8))(v16, v29);
    }

    (*(v17 + 8))(v11, v8);
    v22 = v31;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v23 = v27;
    *v22 = v26;
    v22[1] = v23;
    v24 = v28;
    v22[2] = MEMORY[0x277D84F90];
    v22[3] = v24;
    v22[4] = v14;
  }

  return result;
}

uint64_t sub_255D5EF40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255D5EF88()
{
  result = qword_27F7E6BF8;
  if (!qword_27F7E6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BF8);
  }

  return result;
}

unint64_t sub_255D5EFE4()
{
  result = qword_27F7E6C08;
  if (!qword_27F7E6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C08);
  }

  return result;
}

unint64_t sub_255D5F038()
{
  result = qword_27F7E6C18;
  if (!qword_27F7E6C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6C10, &qword_255E57E50);
    sub_255D447E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C18);
  }

  return result;
}

uint64_t sub_255D5F0EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v32 = sub_255E385D8();
  v34 = *(v32 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C28, &qword_255E3F560);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  type metadata accessor for RemoteStateStore(0);
  sub_255D5EF40(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v10 = sub_255E38CC8();
  v12 = v11;
  v14 = a1[3];
  v13 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_255D5F460();
  v15 = v36;
  sub_255E3AE28();
  if (v15)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v31 = v12;
    v36 = v10;
    v17 = v33;
    v16 = v34;
    v18 = v35;
    v40 = 0;
    v19 = sub_255E3AB88();
    v21 = v6;
    if (v20)
    {
      v30 = v19;
      v22 = v20;
    }

    else
    {
      v23 = v5;
      sub_255E385C8();
      v30 = sub_255E385B8();
      v22 = v24;
      (*(v16 + 8))(v23, v32);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v39 = 1;
    sub_255D5F038();
    sub_255E3ABA8();
    v25 = v36;
    if (v38)
    {
      v27 = v38;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v28 = sub_255D48968(v27);

    (*(v17 + 8))(v9, v21);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v37);
    *v18 = v30;
    v18[1] = v22;
    v18[2] = v28;
    v18[3] = MEMORY[0x277D84F90];
    v18[4] = v25;
    v18[5] = v31;
  }

  return result;
}

unint64_t sub_255D5F460()
{
  result = qword_27F7E6C30;
  if (!qword_27F7E6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C30);
  }

  return result;
}

unint64_t sub_255D5F4E8()
{
  result = qword_27F7E6C38;
  if (!qword_27F7E6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C38);
  }

  return result;
}

unint64_t sub_255D5F540()
{
  result = qword_27F7E6C40;
  if (!qword_27F7E6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C40);
  }

  return result;
}

unint64_t sub_255D5F598()
{
  result = qword_27F7E6C48;
  if (!qword_27F7E6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C48);
  }

  return result;
}

unint64_t sub_255D5F5F0()
{
  result = qword_27F7E6C50;
  if (!qword_27F7E6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C50);
  }

  return result;
}

unint64_t sub_255D5F648()
{
  result = qword_27F7E6C58;
  if (!qword_27F7E6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C58);
  }

  return result;
}

unint64_t sub_255D5F6A0()
{
  result = qword_27F7E6C60;
  if (!qword_27F7E6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C60);
  }

  return result;
}

unint64_t sub_255D5F6F8()
{
  result = qword_27F7E6C68;
  if (!qword_27F7E6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C68);
  }

  return result;
}

unint64_t sub_255D5F750()
{
  result = qword_27F7E6C70;
  if (!qword_27F7E6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C70);
  }

  return result;
}

unint64_t sub_255D5F7A8()
{
  result = qword_27F7E6C78;
  if (!qword_27F7E6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C78);
  }

  return result;
}

uint64_t sub_255D5F7FC()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D5F84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_255D5F894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_255D5F8EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D45734();
    sub_255E3ACB8();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D5F9F8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = swift_getOpaqueTypeMetadata2();
    a3[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39B48();
  }

  return result;
}

unint64_t sub_255D5FAF8(uint64_t a1)
{
  result = sub_255D5FB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D5FB20()
{
  result = qword_27F7E6C80;
  if (!qword_27F7E6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementColorName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElementColorName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255D5FCC4(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0x7972616974726574;
      break;
    case 3:
      result = 0x616E726574617571;
      break;
    case 4:
      result = 0x69466D6574737973;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6C6F686563616C70;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0x6F74617261706573;
      break;
    case 16:
      result = 0x655365757161706FLL;
      break;
    case 17:
      result = 1802398060;
      break;
    case 18:
      result = 0x747865546B726164;
      break;
    case 19:
      result = 0x786554746867696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255D5FF50(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_255D5FCC4(*a1);
  v5 = v4;
  if (v3 == sub_255D5FCC4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D5FFD8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D5FCC4(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6003C()
{
  sub_255D5FCC4(*v0);
  sub_255E3A578();
}

uint64_t sub_255D60090()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D5FCC4(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D600F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D60300();
  *a2 = result;
  return result;
}

unint64_t sub_255D60120@<X0>(unint64_t *a1@<X8>)
{
  result = sub_255D5FCC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_255D60200()
{
  result = qword_27F7E6C88;
  if (!qword_27F7E6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C88);
  }

  return result;
}

id sub_255D60254(char a1)
{
  v1 = [objc_opt_self() *off_279812190[a1]];

  return v1;
}

unint64_t sub_255D602AC()
{
  result = qword_27F7E6C90;
  if (!qword_27F7E6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C90);
  }

  return result;
}

uint64_t sub_255D60300()
{
  v0 = sub_255E3AD18();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI16DoubleResolvableOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255D603A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 89))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 56);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255D603F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

double sub_255D60484(unint64_t a1)
{
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v24 = *(v1 + 80);
  v30 = *(v1 + 88);
  if (v5 <= 0xFD)
  {
    v25 = *v1;
    v26 = *(v1 + 8);
    v27 = *(v1 + 16);
    v29 = *(v1 + 24);
    sub_255D3E5A8(*v1, v26, v27, v5);
    v12 = StringResolvable.resolved(with:)(a1);
    if (!v2)
    {
      v21 = v12;
      v22 = v13;
      sub_255D38060(v25, v26, v27, v29);
      sub_255D6067C(v21, v22);
      v3 = v23;

      return v3;
    }

    sub_255D38060(v25, v26, v27, v29);
  }

  if (v9 > 0xFD)
  {
    goto LABEL_8;
  }

  v28 = v8;
  sub_255D612A0(v6, v7, v8, v9);
  sub_255D8F6FC(a1);
  v15 = v14;
  v17 = v16;
  sub_255D4CB98(v6, v7, v28, v9);
  if ((v17 & 1) == 0 && v30 <= 0xFD)
  {
    sub_255D612A0(v10, v11, v24, v30);
    sub_255D8F6FC(a1);
    v19 = v18;
    sub_255D4CB98(v10, v11, v24, v30);
    if ((v19 & 1) == 0)
    {
      return v15;
    }
  }

LABEL_8:
  sub_255D6124C();
  swift_allocError();
  swift_willThrow();
  return v3;
}

uint64_t sub_255D6067C(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v2 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F38]();
  }

  if (a1 == 0x696461654C706F74 && a2 == 0xEA0000000000676ELL || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F08]();
  }

  if (a1 == 0x6C69617254706F74 && a2 == 0xEB00000000676E69 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F10]();
  }

  if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_255E3AC68() & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F68]();
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F70]();
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F50]();
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xED0000676E696461 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F18]();
  }

  else if (a1 == 0x72546D6F74746F62 && a2 == 0xEE00676E696C6961 || (sub_255E3AC68() & 1) != 0)
  {

    return MEMORY[0x282133F20]();
  }

  else
  {
    if ((a1 != 1869768058 || a2 != 0xE400000000000000) && (sub_255E3AC68() & 1) == 0)
    {
LABEL_24:

      return MEMORY[0x282133F60]();
    }

    return MEMORY[0x282133F48]();
  }
}

uint64_t sub_255D60A14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 121;
  if (v2 != 1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 120;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 121;
  if (*a2 != 1)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 120;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D60AE8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D60B6C()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D60BDC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D60C5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D64EBC();
  *a2 = result;
  return result;
}

void sub_255D60C8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 121;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 120;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D60CCC()
{
  v1 = 121;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_255D60D08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D64EBC();
  *a1 = result;
  return result;
}

uint64_t sub_255D60D30(uint64_t a1)
{
  v2 = sub_255D646F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D60D6C(uint64_t a1)
{
  v2 = sub_255D646F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D60DA8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6CA0, &qword_255E40210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D646F0();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -2;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -2;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    v51 = -2;
  }

  else
  {
    LOBYTE(v40) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v35) = 2;
      sub_255D3EA0C();
      sub_255E3ABC8();
      (*(v6 + 8))(v9, v5);
      v33 = a2;
      v12 = v41;
      v29 = v40;
      v31 = v42;
      v30 = v43;
      v32 = 254;
      sub_255D64814(0, 0, 0, 0xFEu);
      v13 = 0;
      v14 = 0;
      v34 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = -2;
    }

    else
    {
      LOBYTE(v35) = 0;
      sub_255D64774();
      sub_255E3ABC8();
      v33 = a2;
      v17 = v40;
      v16 = v41;
      v52 = v42;
      v18 = v43;
      sub_255D647C8(0, 0, 0, 254);
      LOBYTE(v35) = 1;
      sub_255E3ABC8();
      (*(v6 + 8))(v9, v5);
      v14 = v41;
      v34 = v40;
      v13 = v42;
      v32 = v43;
      v30 = 254;
      sub_255D647C8(0, 0, 0, 254);
      v31 = 0;
      v12 = 0;
      v29 = 0;
      v15 = v52;
    }

    v52 = v15;
    v26 = v14;
    v27 = v13;
    v28 = v12;
    v19 = v29;
    *&v35 = v29;
    *(&v35 + 1) = v12;
    v20 = v31;
    *&v36 = v31;
    BYTE8(v36) = v30;
    *&v37 = v17;
    *(&v37 + 1) = v16;
    *&v38 = v15;
    BYTE8(v38) = v18;
    *v39 = v34;
    *&v39[8] = v14;
    *&v39[16] = v13;
    v21 = v30;
    v22 = v32;
    v39[24] = v32;
    v23 = v38;
    v24 = v33;
    v33[2] = v37;
    v24[3] = v23;
    v24[4] = *v39;
    *(v24 + 73) = *&v39[9];
    v25 = v36;
    *v24 = v35;
    v24[1] = v25;
    sub_255D647DC(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v40 = v19;
    v41 = v28;
    v42 = v20;
    v43 = v21;
    v44 = v17;
    v45 = v16;
    v46 = v52;
    v47 = v18;
    v48 = v34;
    v49 = v26;
    v50 = v27;
    v51 = v22;
  }

  return sub_255D64744(&v40);
}

unint64_t sub_255D6124C()
{
  result = qword_27F7E6C98;
  if (!qword_27F7E6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6C98);
  }

  return result;
}

void sub_255D612A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
  }

  else
  {
    v5 = a4 & 1;

    sub_255D348B4(a1, a2, a3, v5);
  }
}

uint64_t sub_255D612F4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 16))(a1, v3, v4);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v21 = *(v1 + 40);
  v22 = v5;
  v23 = v6;
  v24 = v7;
  sub_255D612A0(v21, v5, v6, v7);
  sub_255D8F6FC(a1);
  v9 = v8;
  sub_255D4CB98(v21, v22, v23, v24);
  if ((v9 & 1) == 0)
  {
    return sub_255E3A108();
  }

  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);

  v11 = sub_255E38688();
  v12 = sub_255E3A848();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_255D378C0(0xD000000000000071, 0x8000000255E65D10, &v21);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_255D378C0(0xD000000000000013, 0x8000000255E65D90, &v21);
    *(v13 + 22) = 2080;

    v15 = sub_255E39D28();
    v17 = v16;

    v18 = sub_255D378C0(v15, v17, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&dword_255D2E000, v11, v12, "%s %s Unable to resolve location for gradient stop with color %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C4F9E0](v14, -1, -1);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  sub_255D6529C();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
}

uint64_t sub_255D615A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v4 = 0x726F6C6F63;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v6 = 0x726F6C6F63;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D61644()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D616C4()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D61730()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D617B8(uint64_t *a1@<X8>)
{
  v2 = 0x726F6C6F63;
  if (*v1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D617F4()
{
  if (*v0)
  {
    result = 0x6E6F697461636F6CLL;
  }

  else
  {
    result = 0x726F6C6F63;
  }

  *v0;
  return result;
}

uint64_t sub_255D61838(uint64_t a1)
{
  v2 = sub_255D65FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D61874(uint64_t a1)
{
  v2 = sub_255D65FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D618B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6DC8, &qword_255E42958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D65FA8();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v12) = 0;
  sub_255D65E28();
  sub_255E3ABC8();
  sub_255D3CE1C(v15, v16);
  v20 = 1;
  sub_255D64774();
  sub_255E3ABC8();
  sub_255D65FFC(v15);
  (*(v6 + 8))(v9, v5);
  v17 = v12;
  v18 = v13;
  v19 = v14;
  sub_255D652F0(v16, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D65328(v16);
}

uint64_t sub_255D61AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      v33 = MEMORY[0x277D84F90];
      sub_255DE6030(0, v6, 0);
      v7 = v33;
      for (i = a2 + 32; ; i += 72)
      {
        sub_255D652F0(i, v30);
        v9 = sub_255D612F4(a1);
        if (v3)
        {
          break;
        }

        v11 = v9;
        v12 = v10;
        sub_255D65328(v30);
        v33 = v7;
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_255DE6030((v13 > 1), v14 + 1, 1);
          v7 = v33;
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        if (!--v6)
        {
          return sub_255E3A118();
        }
      }

      sub_255D65328(v30);
    }

    else
    {
      return sub_255E3A118();
    }
  }

  else if (a3)
  {
    v17 = *(a3 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v33 = MEMORY[0x277D84F90];
      sub_255E3AA58();
      v20 = a3 + 32;
      do
      {
        sub_255D3CE1C(v20, v30);
        v21 = v31;
        v22 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        (*(v22 + 16))(a1, v21, v22);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        sub_255E3AA28();
        v23 = *(v33 + 16);
        sub_255E3AA68();
        sub_255E3AA78();
        sub_255E3AA38();
        v20 += 40;
        --v17;
      }

      while (v17);
      v18 = v33;
    }

    return MEMORY[0x259C4E480](v18);
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v24 = sub_255E386A8();
    __swift_project_value_buffer(v24, qword_27F8152D8);
    v25 = sub_255E38688();
    v26 = sub_255E3A848();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_255D378C0(0xD000000000000071, 0x8000000255E65D10, v30);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_255D378C0(0x746E656964617267, 0xEF293A6874697728, v30);
      _os_log_impl(&dword_255D2E000, v25, v26, "%s %s Unable to resolve any stops or colors.", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C4F9E0](v28, -1, -1);
      MEMORY[0x259C4F9E0](v27, -1, -1);
    }

    sub_255D6529C();
    swift_allocError();
    *v29 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_255D61E64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73726F6C6F63;
  }

  else
  {
    v4 = 0x73706F7473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x73726F6C6F63;
  }

  else
  {
    v6 = 0x73706F7473;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D61F04()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D61F80()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D61FE8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6206C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255D620C8(uint64_t *a1@<X8>)
{
  v2 = 0x73706F7473;
  if (*v1)
  {
    v2 = 0x73726F6C6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D62100()
{
  if (*v0)
  {
    result = 0x73726F6C6F63;
  }

  else
  {
    result = 0x73706F7473;
  }

  *v0;
  return result;
}

uint64_t sub_255D62140@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_255D621A0(uint64_t a1)
{
  v2 = sub_255D65DD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D621DC(uint64_t a1)
{
  v2 = sub_255D65DD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D62218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255D649A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_255D62244@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 64);
  v28[2] = *(v2 + 48);
  v28[3] = v8;
  v29[0] = *(v2 + 80);
  *(v29 + 9) = *(v2 + 89);
  v9 = *(v2 + 32);
  v28[0] = *(v2 + 16);
  v28[1] = v9;
  v10 = *(v2 + 128);
  v30 = *(v2 + 112);
  v31 = v10;
  v11 = *(v2 + 144);
  v12 = *(v2 + 160);
  v13 = *(v2 + 176);
  *(v34 + 9) = *(v2 + 185);
  v33 = v12;
  v34[0] = v13;
  v32 = v11;
  result = sub_255D61AE8(a1, v6, v7);
  if (!v3)
  {
    sub_255D647DC(v28, v26);
    sub_255D60484(a1);
    v15 = *(v2 + 64);
    v26[2] = *(v2 + 48);
    v26[3] = v15;
    *v27 = *(v2 + 80);
    *(&v27[1] + 1) = *(v2 + 89);
    v16 = *(v2 + 32);
    v26[0] = *(v2 + 16);
    v26[1] = v16;
    sub_255D64744(v26);
    v23 = v32;
    v24 = v33;
    v25[0] = v34[0];
    *(v25 + 9) = *(v34 + 9);
    v21 = v30;
    v22 = v31;
    sub_255D647DC(&v30, v19);
    sub_255D60484(a1);
    v19[2] = v23;
    v19[3] = v24;
    v20[0] = v25[0];
    *(v20 + 9) = *(v25 + 9);
    v19[0] = v21;
    v19[1] = v22;
    sub_255D64744(v19);
    sub_255E389C8();
    v17 = MEMORY[0x277CDF828];
    a2[3] = MEMORY[0x277CDF838];
    a2[4] = v17;
    result = swift_allocObject();
    *a2 = result;
    v18 = *&v27[7];
    *(result + 16) = *&v27[5];
    *(result + 32) = v18;
    *(result + 48) = v27[9];
  }

  return result;
}

uint64_t sub_255D62494(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696F507472617473;
  v4 = 0xEA0000000000746ELL;
  if (v2 != 1)
  {
    v3 = 0x746E696F50646E65;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E656964617267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x696F507472617473;
  v8 = 0xEA0000000000746ELL;
  if (*a2 != 1)
  {
    v7 = 0x746E696F50646E65;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E656964617267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D625A0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D62648()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D626DC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D62780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D65CF0();
  *a2 = result;
  return result;
}

void sub_255D627B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x696F507472617473;
  if (v2 != 1)
  {
    v5 = 0x746E696F50646E65;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E656964617267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D62814()
{
  v1 = 0x696F507472617473;
  if (*v0 != 1)
  {
    v1 = 0x746E696F50646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656964617267;
  }
}

uint64_t sub_255D62874@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D65CF0();
  *a1 = result;
  return result;
}

uint64_t sub_255D6289C(uint64_t a1)
{
  v2 = sub_255D655DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D628D8(uint64_t a1)
{
  v2 = sub_255D655DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D62914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6D28, &qword_255E42220);
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v54);
  v8 = &v24 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D655DC();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = v5;
  v42 = 1;
  sub_255D653AC();
  v10 = v54;
  sub_255E3ABC8();
  v51 = v45;
  v52 = v46;
  v53[0] = v47[0];
  *(v53 + 9) = *(v47 + 9);
  v49 = v43;
  v50 = v44;
  v36 = 2;
  sub_255E3ABC8();
  *(&v48[2] + 7) = v39;
  *(&v48[3] + 7) = v40;
  *(&v48[4] + 7) = *v41;
  v48[5] = *&v41[9];
  *(v48 + 7) = v37;
  *(&v48[1] + 7) = v38;
  v34 = 0;
  sub_255D65464();
  sub_255E3ABC8();
  (*(v24 + 8))(v8, v10);
  v11 = v35;
  v25[0] = v35;
  v27 = v51;
  v28 = v52;
  v29[0] = v53[0];
  *(v29 + 9) = *(v53 + 9);
  v25[1] = v49;
  v26 = v50;
  *(&v29[2] + 9) = v48[1];
  *(&v29[1] + 9) = v48[0];
  *(&v29[6] + 9) = v48[5];
  *(&v29[5] + 9) = v48[4];
  *(&v29[4] + 9) = v48[3];
  *(&v29[3] + 9) = v48[2];
  v12 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v13 = v49;
  *a2 = v35;
  *(a2 + 16) = v13;
  v14 = v26;
  v15 = v27;
  v16 = v29[0];
  *(a2 + 64) = v28;
  *(a2 + 80) = v16;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  v17 = v29[1];
  v18 = v29[2];
  v19 = v29[4];
  *(a2 + 128) = v29[3];
  *(a2 + 144) = v19;
  *(a2 + 96) = v17;
  *(a2 + 112) = v18;
  v20 = v29[5];
  v21 = v29[6];
  v22 = v29[7];
  *(a2 + 208) = v12;
  *(a2 + 176) = v21;
  *(a2 + 192) = v22;
  *(a2 + 160) = v20;
  sub_255D65630(v25, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v31[0] = v11;
  v31[3] = v51;
  v31[4] = v52;
  v32[0] = v53[0];
  *(v32 + 9) = *(v53 + 9);
  v31[1] = v49;
  v31[2] = v50;
  *(&v32[2] + 9) = v48[1];
  *(&v32[1] + 9) = v48[0];
  *(&v32[6] + 9) = v48[5];
  *(&v32[5] + 9) = v48[4];
  *(&v32[4] + 9) = v48[3];
  *(&v32[3] + 9) = v48[2];
  v33 = v12;
  return sub_255D65668(v31);
}

uint64_t sub_255D62D8C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 8);
  v40 = *v2;
  v28 = v5;
  v6 = *(v2 + 64);
  v38[2] = *(v2 + 48);
  v38[3] = v6;
  v39[0] = *(v2 + 80);
  *(v39 + 9) = *(v2 + 89);
  v7 = *(v2 + 32);
  v38[0] = *(v2 + 16);
  v38[1] = v7;
  v23 = *(v2 + 120);
  v24 = *(v2 + 112);
  v22 = *(v2 + 128);
  v30 = *(v2 + 136);
  v26 = *(v2 + 152);
  v27 = *(v2 + 144);
  v25 = *(v2 + 160);
  v8 = *(v2 + 168);
  v9 = *(v2 + 176);
  v10 = *(v2 + 184);
  v11 = *(v2 + 192);
  v12 = *(v2 + 200);
  sub_255D647DC(v38, &v31);
  sub_255D60484(a1);
  if (v3)
  {
    v13 = *(v2 + 64);
    v33 = *(v2 + 48);
    v34 = v13;
    v35[0] = *(v2 + 80);
    *(v35 + 9) = *(v2 + 89);
    v14 = *(v2 + 32);
    v31 = *(v2 + 16);
    v32 = v14;
    return sub_255D64744(&v31);
  }

  else
  {
    v16 = *(v2 + 64);
    v33 = *(v2 + 48);
    v34 = v16;
    v35[0] = *(v2 + 80);
    *(v35 + 9) = *(v2 + 89);
    v17 = *(v2 + 32);
    v31 = *(v2 + 16);
    v32 = v17;
    sub_255D64744(&v31);
    if (v30 == 255)
    {
      if (v8 != 255)
      {
        sub_255DDEF98(a1, v27, v26, v25, v8 & 1);
      }

      v19 = v40;
      if (v12 != 255)
      {
        sub_255DDEF98(a1, v9, v10, v11, v12 & 1);
      }

      sub_255D61AE8(a1, v19, v28);
      v18 = &v37;
      sub_255E38A28();
    }

    else
    {
      sub_255DDEF98(a1, v24, v23, v22, v30 & 1);
      sub_255D61AE8(a1, v40, v28);
      v18 = &v36;
      sub_255E38A88();
    }

    v20 = MEMORY[0x277CDF930];
    a2[3] = MEMORY[0x277CDF940];
    a2[4] = v20;
    result = swift_allocObject();
    *a2 = result;
    v21 = *(v18 + 1);
    *(result + 16) = *v18;
    *(result + 32) = v21;
    *(result + 48) = *(v18 + 4);
  }

  return result;
}

uint64_t sub_255D63068()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D63148()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D63214()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D632F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D65D3C();
  *a2 = result;
  return result;
}

void sub_255D63320(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x746E656964617267;
  v5 = 0xE500000000000000;
  v6 = 0x656C676E61;
  v7 = 0xEA0000000000656CLL;
  v8 = 0x676E417472617473;
  if (v2 != 3)
  {
    v8 = 0x656C676E41646E65;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
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

uint64_t sub_255D633BC()
{
  v1 = *v0;
  v2 = 0x746E656964617267;
  v3 = 0x656C676E61;
  v4 = 0x676E417472617473;
  if (v1 != 3)
  {
    v4 = 0x656C676E41646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
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

uint64_t sub_255D63454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D65D3C();
  *a1 = result;
  return result;
}

uint64_t sub_255D6347C(uint64_t a1)
{
  v2 = sub_255D65520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D634B8(uint64_t a1)
{
  v2 = sub_255D65520();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D634F4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6D18, &qword_255E42218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_255D65520();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
  }

  else
  {
    v38 = v6;
    v70 = 1;
    sub_255D653AC();
    sub_255E3ABC8();
    v78 = v73;
    v79 = v74;
    v80[0] = v75[0];
    *(v80 + 9) = *(v75 + 9);
    v76 = v71;
    v77 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    LOBYTE(v39) = 2;
    sub_255D65400();
    sub_255E3ABA8();
    v32 = v52;
    v33 = v53;
    v34 = BYTE8(v53);
    LOBYTE(v39) = 3;
    sub_255E3ABA8();
    v30 = v52;
    v31 = v53;
    v29 = BYTE8(v53);
    LOBYTE(v39) = 4;
    sub_255E3ABA8();
    v28 = 0;
    v37 = *(&v52 + 1);
    v12 = v52;
    v13 = v53;
    v14 = BYTE8(v53);
    v68 = 0;
    sub_255D65464();
    sub_255E3ABC8();
    v36 = v12;
    (*(v38 + 8))(v9, v5);
    v38 = *(&v69 + 1);
    v35 = v69;
    v39 = v69;
    v42 = v78;
    v43 = v79;
    v44[0] = v80[0];
    *(v44 + 9) = *(v80 + 9);
    v40 = v76;
    v41 = v77;
    v15 = v32;
    v45 = v32;
    *&v46 = v33;
    BYTE8(v46) = v34;
    v47 = v30;
    *&v48 = v31;
    v16 = v29;
    BYTE8(v48) = v29;
    *&v49 = v12;
    v17 = v37;
    *(&v49 + 1) = v37;
    *&v50 = v13;
    BYTE8(v50) = v14;
    v18 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    v19 = v44[0];
    *(a2 + 64) = v79;
    *(a2 + 80) = v19;
    v20 = v42;
    *(a2 + 32) = v41;
    *(a2 + 48) = v20;
    v21 = v40;
    *a2 = v39;
    *(a2 + 16) = v21;
    v22 = v44[1];
    v23 = v45;
    v24 = v47;
    *(a2 + 128) = v46;
    *(a2 + 144) = v24;
    *(a2 + 96) = v22;
    *(a2 + 112) = v23;
    v25 = v48;
    v26 = v49;
    v27 = v50;
    *(a2 + 208) = v18;
    *(a2 + 176) = v26;
    *(a2 + 192) = v27;
    *(a2 + 160) = v25;
    sub_255D65574(&v39, &v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    *&v52 = v35;
    *(&v52 + 1) = v38;
    v55 = v78;
    v56 = v79;
    v57[0] = v80[0];
    *(v57 + 9) = *(v80 + 9);
    v53 = v76;
    v54 = v77;
    v57[2] = __PAIR128__(*(&v32 + 1), v15);
    v58 = v33;
    v59 = v34;
    v60 = v30;
    v61 = v31;
    v62 = v16;
    v63 = v36;
    v64 = v17;
    v65 = v13;
    v66 = v14;
    v67 = MEMORY[0x277D84F90];
    sub_255D655AC(&v52);
  }
}

uint64_t sub_255D63B10@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = *v2;
  v32 = *(v2 + 8);
  v5 = *(v2 + 64);
  v30[2] = *(v2 + 48);
  v30[3] = v5;
  v31[0] = *(v2 + 80);
  *(v31 + 9) = *(v2 + 89);
  v6 = *(v2 + 32);
  v30[0] = *(v2 + 16);
  v30[1] = v6;
  v20 = *(v2 + 120);
  v21 = *(v2 + 112);
  v7 = *(v2 + 128);
  v24 = *(v2 + 136);
  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v10 = *(v2 + 160);
  v11 = *(v2 + 168);
  sub_255D647DC(v30, &v25);
  sub_255D60484(a1);
  if (v3)
  {
    v12 = *(v2 + 64);
    v27 = *(v2 + 48);
    v28 = v12;
    *v29 = *(v2 + 80);
    *(&v29[1] + 1) = *(v2 + 89);
    v13 = *(v2 + 32);
    v25 = *(v2 + 16);
    v26 = v13;
    return sub_255D64744(&v25);
  }

  else
  {
    v15 = *(v2 + 64);
    v27 = *(v2 + 48);
    v28 = v15;
    *v29 = *(v2 + 80);
    *(&v29[1] + 1) = *(v2 + 89);
    v16 = *(v2 + 32);
    v25 = *(v2 + 16);
    v26 = v16;
    sub_255D64744(&v25);
    if (v24 != 255)
    {
      sub_255DDEF98(a1, v21, v20, v7, v24 & 1);
    }

    v17 = v32;
    if (v11 != 255)
    {
      sub_255DDEF98(a1, v9, v8, v10, v11 & 1);
    }

    sub_255D61AE8(a1, v22, v17);
    sub_255E38A28();
    v18 = MEMORY[0x277CDF878];
    a2[3] = MEMORY[0x277CDF888];
    a2[4] = v18;
    result = swift_allocObject();
    *a2 = result;
    v19 = *&v29[7];
    *(result + 16) = *&v29[5];
    *(result + 32) = v19;
    *(result + 48) = v29[9];
  }

  return result;
}

uint64_t sub_255D63D74()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D63E40()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D63EF8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D63FC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D65D88();
  *a2 = result;
  return result;
}

void sub_255D63FF0(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x746E656964617267;
  v4 = 0xEB00000000737569;
  v5 = 0x6461527472617473;
  if (*v1 != 2)
  {
    v5 = 0x7569646152646E65;
    v4 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 0x7265746E6563;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D64078()
{
  v1 = 0x746E656964617267;
  v2 = 0x6461527472617473;
  if (*v0 != 2)
  {
    v2 = 0x7569646152646E65;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

uint64_t sub_255D640FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D65D88();
  *a1 = result;
  return result;
}

uint64_t sub_255D64124(uint64_t a1)
{
  v2 = sub_255D65358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D64160(uint64_t a1)
{
  v2 = sub_255D65358();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D6419C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6CF8, &unk_255E42208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_255D65358();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  else
  {
    v30 = v6;
    v60 = 1;
    sub_255D653AC();
    sub_255E3ABC8();
    v68 = v63;
    v69 = v64;
    v70[0] = v65[0];
    *(v70 + 9) = *(v65 + 9);
    v66 = v61;
    v67 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    LOBYTE(v31) = 2;
    sub_255D65400();
    sub_255E3ABC8();
    v26 = v43;
    v27 = v44;
    v28 = v42;
    v29 = BYTE8(v44);
    LOBYTE(v31) = 3;
    sub_255E3ABC8();
    v23 = v42;
    v25 = v43;
    v12 = v44;
    v13 = BYTE8(v44);
    v58 = 0;
    sub_255D65464();
    sub_255E3ABC8();
    (*(v30 + 8))(v9, v5);
    v30 = *(&v59 + 1);
    v24 = v59;
    v31 = v59;
    v34 = v68;
    v35 = v69;
    v36[0] = v70[0];
    *(v36 + 9) = *(v70 + 9);
    v32 = v66;
    v33 = v67;
    v14 = v27;
    v15 = v26;
    *&v37 = v28;
    *(&v37 + 1) = v26;
    *&v38 = v27;
    BYTE8(v38) = v29;
    *&v39 = v23;
    *(&v39 + 1) = v25;
    v16 = v12;
    *&v40 = v12;
    LOBYTE(v12) = v13;
    BYTE8(v40) = v13;
    v17 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
    *(a2 + 176) = MEMORY[0x277D84F90];
    v18 = v36[0];
    *(a2 + 64) = v35;
    *(a2 + 80) = v18;
    v19 = v37;
    *(a2 + 96) = v36[1];
    *(a2 + 112) = v19;
    v20 = v32;
    *a2 = v31;
    *(a2 + 16) = v20;
    v21 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v21;
    v22 = v39;
    *(a2 + 128) = v38;
    *(a2 + 144) = v22;
    *(a2 + 160) = v40;
    sub_255D654B8(&v31, &v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    v42 = v24;
    v43 = v30;
    v46 = v68;
    v47 = v69;
    v48[0] = v70[0];
    *(v48 + 9) = *(v70 + 9);
    v44 = v66;
    v45 = v67;
    v49 = v28;
    v50 = v15;
    v51 = v14;
    v52 = v29;
    v53 = v23;
    v54 = v25;
    v55 = v16;
    v56 = v12;
    v57 = v17;
    sub_255D654F0(&v42);
  }
}

uint64_t sub_255D646AC(uint64_t a1)
{
  v3 = *(v1 + 176);

  *(v1 + 176) = a1;
  return result;
}

unint64_t sub_255D646F0()
{
  result = qword_27F7E6CA8;
  if (!qword_27F7E6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CA8);
  }

  return result;
}

unint64_t sub_255D64774()
{
  result = qword_27F7E6CB0;
  if (!qword_27F7E6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CB0);
  }

  return result;
}

void sub_255D647C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 <= 0xFDu)
  {
    sub_255D4CB98(a1, a2, a3, a4);
  }
}

uint64_t sub_255D64814(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return sub_255D38060(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_255D6484C()
{
  result = qword_27F7E6CB8;
  if (!qword_27F7E6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CB8);
  }

  return result;
}

unint64_t sub_255D648A4()
{
  result = qword_27F7E6CC0;
  if (!qword_27F7E6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CC0);
  }

  return result;
}

unint64_t sub_255D648FC()
{
  result = qword_27F7E6CC8;
  if (!qword_27F7E6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CC8);
  }

  return result;
}

unint64_t sub_255D64954()
{
  result = qword_27F7E6CD0;
  if (!qword_27F7E6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CD0);
  }

  return result;
}

uint64_t sub_255D649A8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6D88, &qword_255E42940);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D65DD4();
  sub_255E3AE28();
  if (!v1)
  {
    LOBYTE(v25[0]) = 0;
    if (sub_255E3ABE8())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6DB0, &qword_255E42950);
      LOBYTE(v24[0]) = 0;
      sub_255D65ED8(&qword_27F7E6DB8, &qword_27F7E6DB0, &qword_255E42950, sub_255D65F54);
      sub_255E3ABC8();
      (*(v4 + 8))(v7, v3);
      v3 = *&v25[0];
    }

    else
    {
      LOBYTE(v25[0]) = 1;
      if (sub_255E3ABE8())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6D98, &qword_255E42948);
        LOBYTE(v25[0]) = 1;
        sub_255D65ED8(&qword_27F7E6DA0, &qword_27F7E6D98, &qword_255E42948, sub_255D65E28);
        sub_255E3ABC8();
        v10 = v27;
        v11 = *(v27 + 16);
        if (v11)
        {
          v23 = v4;
          v26 = MEMORY[0x277D84F90];
          sub_255DE5FB0(0, v11, 0);
          v12 = v26;
          v22[1] = v10;
          v13 = v10 + 32;
          do
          {
            sub_255D65E7C(v13, v24);
            sub_255D34630(v24, v25);
            v26 = v12;
            v15 = *(v12 + 16);
            v14 = *(v12 + 24);
            if (v15 >= v14 >> 1)
            {
              sub_255DE5FB0((v14 > 1), v15 + 1, 1);
              v12 = v26;
            }

            *(v12 + 16) = v15 + 1;
            sub_255D34630(v25, v12 + 40 * v15 + 32);
            v13 += 40;
            --v11;
          }

          while (v11);
          (*(v23 + 8))(v7, v3);
        }

        else
        {

          (*(v4 + 8))(v7, v3);
        }

        v3 = 0;
      }

      else
      {
        if (qword_27F7E5E80 != -1)
        {
          swift_once();
        }

        v16 = sub_255E386A8();
        __swift_project_value_buffer(v16, qword_27F8152D8);
        v17 = sub_255E38688();
        v18 = sub_255E3A848();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *&v25[0] = v20;
          *v19 = 136315394;
          *(v19 + 4) = sub_255D378C0(0xD000000000000071, 0x8000000255E65D10, v25);
          *(v19 + 12) = 2080;
          *(v19 + 14) = sub_255D378C0(0x6F72662874696E69, 0xEB00000000293A6DLL, v25);
          _os_log_impl(&dword_255D2E000, v17, v18, "%s %s Unable to decode any stops or colors.", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C4F9E0](v20, -1, -1);
          MEMORY[0x259C4F9E0](v19, -1, -1);
        }

        sub_255D6529C();
        swift_allocError();
        *v21 = 1;
        swift_willThrow();
        (*(v4 + 8))(v7, v3);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_255D64EBC()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_255D64F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D64F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_255D6505C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D650A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_255D65128(uint64_t a1)
{
  result = sub_255D65150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D65150()
{
  result = qword_27F7E6CD8;
  if (!qword_27F7E6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CD8);
  }

  return result;
}

unint64_t sub_255D651A4(uint64_t a1)
{
  result = sub_255D651CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D651CC()
{
  result = qword_27F7E6CE0;
  if (!qword_27F7E6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CE0);
  }

  return result;
}

unint64_t sub_255D65220(uint64_t a1)
{
  result = sub_255D65248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D65248()
{
  result = qword_27F7E6CE8;
  if (!qword_27F7E6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CE8);
  }

  return result;
}

unint64_t sub_255D6529C()
{
  result = qword_27F7E6CF0;
  if (!qword_27F7E6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6CF0);
  }

  return result;
}

unint64_t sub_255D65358()
{
  result = qword_27F7E6D00;
  if (!qword_27F7E6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D00);
  }

  return result;
}

unint64_t sub_255D653AC()
{
  result = qword_27F7E6D08;
  if (!qword_27F7E6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D08);
  }

  return result;
}

unint64_t sub_255D65400()
{
  result = qword_27F7E62E8;
  if (!qword_27F7E62E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E62E0, &qword_255E3C940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E62E8);
  }

  return result;
}

unint64_t sub_255D65464()
{
  result = qword_27F7E6D10;
  if (!qword_27F7E6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D10);
  }

  return result;
}

unint64_t sub_255D65520()
{
  result = qword_27F7E6D20;
  if (!qword_27F7E6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D20);
  }

  return result;
}

unint64_t sub_255D655DC()
{
  result = qword_27F7E6D30;
  if (!qword_27F7E6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MathOperation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MathOperation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_255D65808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_255D65850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D658C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_255D65920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_255D65984()
{
  result = qword_27F7E6D38;
  if (!qword_27F7E6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D38);
  }

  return result;
}

unint64_t sub_255D659DC()
{
  result = qword_27F7E6D40;
  if (!qword_27F7E6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D40);
  }

  return result;
}

unint64_t sub_255D65A34()
{
  result = qword_27F7E6D48;
  if (!qword_27F7E6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D48);
  }

  return result;
}

unint64_t sub_255D65A8C()
{
  result = qword_27F7E6D50;
  if (!qword_27F7E6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D50);
  }

  return result;
}

unint64_t sub_255D65AE4()
{
  result = qword_27F7E6D58;
  if (!qword_27F7E6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D58);
  }

  return result;
}

unint64_t sub_255D65B3C()
{
  result = qword_27F7E6D60;
  if (!qword_27F7E6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D60);
  }

  return result;
}

unint64_t sub_255D65B94()
{
  result = qword_27F7E6D68;
  if (!qword_27F7E6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D68);
  }

  return result;
}

unint64_t sub_255D65BEC()
{
  result = qword_27F7E6D70;
  if (!qword_27F7E6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D70);
  }

  return result;
}

unint64_t sub_255D65C44()
{
  result = qword_27F7E6D78;
  if (!qword_27F7E6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D78);
  }

  return result;
}

unint64_t sub_255D65C9C()
{
  result = qword_27F7E6D80;
  if (!qword_27F7E6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D80);
  }

  return result;
}

uint64_t sub_255D65CF0()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D65D3C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D65D88()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255D65DD4()
{
  result = qword_27F7E6D90;
  if (!qword_27F7E6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6D90);
  }

  return result;
}

unint64_t sub_255D65E28()
{
  result = qword_27F7E6DA8;
  if (!qword_27F7E6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6DA8);
  }

  return result;
}

uint64_t sub_255D65ED8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_255D65F54()
{
  result = qword_27F7E6DC0;
  if (!qword_27F7E6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6DC0);
  }

  return result;
}

unint64_t sub_255D65FA8()
{
  result = qword_27F7E6DD0;
  if (!qword_27F7E6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6DD0);
  }

  return result;
}

unint64_t sub_255D66074()
{
  result = qword_27F7E6DD8;
  if (!qword_27F7E6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6DD8);
  }

  return result;
}

unint64_t sub_255D660CC()
{
  result = qword_27F7E6DE0;
  if (!qword_27F7E6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6DE0);
  }

  return result;
}

unint64_t sub_255D66124()
{
  result = qword_27F7E6DE8;
  if (!qword_27F7E6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6DE8);
  }

  return result;
}

unint64_t sub_255D6617C()
{
  result = qword_27F7E6DF0;
  if (!qword_27F7E6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6DF0);
  }

  return result;
}

unint64_t sub_255D661D4()
{
  result = qword_27F7E6DF8;
  if (!qword_27F7E6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6DF8);
  }

  return result;
}

unint64_t sub_255D6622C()
{
  result = qword_27F7E6E00;
  if (!qword_27F7E6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E00);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255D66308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_255D66350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_255D663E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_255D66428(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_255D664B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_255D66500(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_255D66588(uint64_t a1, int a2)
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

uint64_t sub_255D665D0(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for LinkView()
{
  result = qword_27F7E6E08;
  if (!qword_27F7E6E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255D666A8()
{
  sub_255D6676C();
  if (v0 <= 0x3F)
  {
    sub_255D667C4();
    if (v1 <= 0x3F)
    {
      sub_255D66828();
      if (v2 <= 0x3F)
      {
        sub_255D66878();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255D6676C()
{
  if (!qword_27F7E6E18)
  {
    sub_255E38588();
    v0 = sub_255E3A8A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E6E18);
    }
  }
}

unint64_t sub_255D667C4()
{
  result = qword_27F7E6E20;
  if (!qword_27F7E6E20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F7E6E20);
  }

  return result;
}

void sub_255D66828()
{
  if (!qword_27F7E6E28)
  {
    v0 = sub_255E3A6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E6E28);
    }
  }
}

void sub_255D66878()
{
  if (!qword_27F7E6E30)
  {
    type metadata accessor for RemoteStateStore(255);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    v0 = sub_255E38CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E6E30);
    }
  }
}

uint64_t sub_255D66948@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_255E384B8();
  v66 = *(v3 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255E384C8();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255E384E8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F00, &qword_255E43F98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v58 - v18;
  v20 = sub_255E38508();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v23);
  v26 = *(v1 + 16);
  v27 = *(v1 + 24);
  v28 = *(v1 + 32);
  v29 = *(v1 + 40);
  v31 = *(v1 + 48);
  v30 = *(v1 + 56);
  v69 = a1;
  v68 = v29;
  v67 = v26;
  if ((v29 & 0x20) != 0)
  {
    v58 = v25;
    v59 = &v58 - v24;
    v60 = v3;
    v35 = v29 & 0xDF;
    *&v73 = v26;
    *(&v73 + 1) = v27;
    *&v74 = v28;
    BYTE8(v74) = v29 & 0xDF;
    if (v31)
    {
      v61 = v27;
      v62 = v28;
      sub_255D6EEE0(v26, v27, v28, v29);

      StringResolvable.resolved(with:)(v36);

      v47 = sub_255E38588();
      (*(*(v47 - 8) + 56))(v15, 1, 1, v47);
      (*(v63 + 104))(v9, *MEMORY[0x277CC8BB0], v64);
      (*(v66 + 104))(v65, *MEMORY[0x277CC8B98], v60);

      sub_255E384D8();
      sub_255E384F8();

      (*(v21 + 56))(v19, 0, 1, v20);
      v48 = v59;
      (*(v21 + 32))(v59, v19, v20);
      (*(v21 + 16))(v58, v48, v20);
      *&v70 = sub_255E397F8();
      *(&v70 + 1) = v49;
      *&v71 = v50 & 1;
      *(&v71 + 1) = v51;
      LOBYTE(v72) = 0;
      sub_255E39258();
      (*(v21 + 8))(v48, v20);
      v70 = v73;
      v71 = v74;
      LOBYTE(v72) = v75;
      HIBYTE(v72) = 1;
      v52 = v73;
      v53 = v74;
      sub_255D6EF3C(v73, *(&v73 + 1), v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65F0, &qword_255E43FA0);
      sub_255D4C8D4(&qword_27F7E65E8, &qword_27F7E65F0, &qword_255E43FA0);
      sub_255E39258();
      sub_255D4CA30(v67, v61, v62, v68);
      result = sub_255D4C9A0(v52, *(&v52 + 1), v53);
      goto LABEL_6;
    }
  }

  else
  {
    *&v73 = v26;
    *(&v73 + 1) = v27;
    *&v74 = v28;
    BYTE8(v74) = v29;
    if (v31)
    {
      v32 = v27;
      v33 = v28;
      sub_255D6EEE0(v26, v27, v28, v29);

      v37 = StringResolvable.resolved(with:)(v34);
      v39 = v38;

      *&v73 = v37;
      *(&v73 + 1) = v39;
      sub_255D6EEE8();
      v40 = sub_255E39808();
      v42 = v41;
      *&v70 = v40;
      *(&v70 + 1) = v41;
      v44 = v43 & 1;
      *&v71 = v43 & 1;
      *(&v71 + 1) = v45;
      v72 = 0;
      sub_255D6EF78(v40, v41, v43 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65F0, &qword_255E43FA0);
      sub_255D4C8D4(&qword_27F7E65E8, &qword_27F7E65F0, &qword_255E43FA0);
      sub_255E39258();
      sub_255D4CA30(v67, v32, v33, v68);
      sub_255D4C990(v40, v42, v44);

LABEL_6:
      v54 = v74;
      v55 = v75;
      v56 = v76;
      v57 = v69;
      *v69 = v73;
      v57[1] = v54;
      *(v57 + 32) = v55;
      *(v57 + 33) = v56;
      return result;
    }

    v35 = v29;
  }

  sub_255D3E5A8(v26, v27, v28, v35);
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D6715C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727473;
  if (v2 != 1)
  {
    v4 = 0x6E776F646B72616DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E69727473;
  if (*a2 != 1)
  {
    v8 = 0x6E776F646B72616DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D67250()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D672E4()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D67364()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D673F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D712E8();
  *a2 = result;
  return result;
}

void sub_255D67424(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E69727473;
  if (v2 != 1)
  {
    v5 = 0x6E776F646B72616DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D67474()
{
  v1 = 0x676E69727473;
  if (*v0 != 1)
  {
    v1 = 0x6E776F646B72616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D674C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D712E8();
  *a1 = result;
  return result;
}

uint64_t sub_255D674E8(uint64_t a1)
{
  v2 = sub_255D703F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D67524(uint64_t a1)
{
  v2 = sub_255D703F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D67560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_255E385D8();
  *&v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7028, &unk_255E44120);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v52 = sub_255E38CC8();
  v12 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D703F8();
  v14 = v37;
  sub_255E3AE28();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v15 = v36;
    v37 = a1;
    v16 = v35;
    v33 = v12;
    LOBYTE(v43) = 0;
    v17 = sub_255E3AB88();
    if (v18)
    {
      *&v32 = v17;
      *(&v32 + 1) = v18;
    }

    else
    {
      sub_255E385C8();
      *&v32 = sub_255E385B8();
      *(&v32 + 1) = v20;
      (*(v15 + 8))(v6, v3);
    }

    LOBYTE(v38) = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    v21 = BYTE8(v44);
    if (BYTE8(v44) < 0xFEu)
    {
      v23 = v44;
      v36 = v43;
      (*(v16 + 8))(v10, v7);
      v24 = v21 | 0x20;
      v22 = v37;
    }

    else
    {
      LOBYTE(v38) = 1;
      sub_255E3ABC8();
      v22 = v37;
      (*(v16 + 8))(v10, v7);
      v36 = v43;
      v23 = v44;
      v24 = BYTE8(v44);
    }

    LODWORD(v37) = v24;
    v25 = v32;
    v38 = v32;
    v39 = v36;
    *&v40 = v23;
    BYTE8(v40) = v24;
    *(&v40 + 9) = v51[0];
    HIDWORD(v40) = *(v51 + 3);
    v26 = v52;
    v27 = v33;
    *&v41 = v52;
    *(&v41 + 1) = v33;
    v42 = MEMORY[0x277D84F90];
    v28 = v34;
    *(v34 + 64) = MEMORY[0x277D84F90];
    v29 = v41;
    v28[2] = v40;
    v28[3] = v29;
    v30 = v39;
    *v28 = v38;
    v28[1] = v30;
    sub_255D4CA38(&v38, &v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v43 = v25;
    v44 = v36;
    v45 = v23;
    v46 = v37;
    *v47 = v51[0];
    *&v47[3] = *(v51 + 3);
    v48 = v26;
    v49 = v27;
    v50 = MEMORY[0x277D84F90];
    return sub_255D7044C(&v43);
  }
}

uint64_t sub_255D67A20@<X0>(uint64_t *a1@<X8>)
{
  sub_255D66948(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E65D8, &unk_255E3E100);
  sub_255D4C82C();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

unint64_t sub_255D67AFC()
{
  result = qword_27F7E6E38;
  if (!qword_27F7E6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E38);
  }

  return result;
}

uint64_t sub_255D67B50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3 > 0xFD)
  {
    goto LABEL_4;
  }

  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 56);
  v7 = *(v1 + 64);
  v10 = v5;
  v11 = v4;
  if (v8)
  {

    sub_255D6EF88(v5, v4, v6, v3);
    sub_255D8F6FC(v8);

    sub_255D4CB98(v5, v4, v6, v3);
LABEL_4:
    result = sub_255E39258();
    *a1 = v10;
    *(a1 + 8) = v11;
    return result;
  }

  sub_255D612A0(v5, v4, v6, v3);
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D67CC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74676E654C6E696DLL;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE900000000000068;
  }

  if (*a2)
  {
    v6 = 0x74676E654C6E696DLL;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE900000000000068;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D67D68()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D67DE4()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D67E4C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D67ED0(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x74676E654C6E696DLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000068;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D67F08()
{
  if (*v0)
  {
    result = 0x74676E654C6E696DLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_255D67F48(uint64_t a1)
{
  v2 = sub_255D70320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D67F84(uint64_t a1)
{
  v2 = sub_255D70320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D67FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = sub_255E385D8();
  v36 = *(v35 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7008, &unk_255E44100);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v56 = sub_255E38CC8();
  v12 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D70320();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D647C8(0, 0, 0, 254);
  }

  else
  {
    v14 = v37;
    v34 = v12;
    v15 = v38;
    LOBYTE(v44[0]) = 0;
    v16 = sub_255E3AB88();
    if (v17)
    {
      *&v33 = v16;
      *(&v33 + 1) = v17;
    }

    else
    {
      sub_255E385C8();
      *&v33 = sub_255E385B8();
      *(&v33 + 1) = v19;
      (*(v36 + 8))(v6, v35);
    }

    v20 = v15;
    v21 = a1;
    v50 = 1;
    sub_255D64774();
    sub_255E3ABA8();
    (*(v14 + 8))(v10, v7);
    v23 = v51;
    v22 = v52;
    v38 = v51;
    v24 = v53;
    v37 = v53;
    v25 = v54;
    sub_255D647C8(0, 0, 0, 254);
    v26 = v33;
    v39 = v33;
    v27 = *(&v33 + 1);
    *&v40 = v23;
    *(&v40 + 1) = v22;
    *&v41 = v24;
    BYTE8(v41) = v25;
    *(&v41 + 9) = v55[0];
    HIDWORD(v41) = *(v55 + 3);
    v28 = v56;
    *&v42 = MEMORY[0x277D84F90];
    *(&v42 + 1) = v56;
    v29 = v34;
    v43 = v34;
    *(v20 + 64) = v34;
    v30 = v40;
    *v20 = v39;
    *(v20 + 16) = v30;
    v31 = v42;
    *(v20 + 32) = v41;
    *(v20 + 48) = v31;
    sub_255D4D808(&v39, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v44[0] = v26;
    v44[1] = v27;
    v44[2] = v38;
    v44[3] = v22;
    v44[4] = v37;
    v45 = v25;
    *v46 = v55[0];
    *&v46[3] = *(v55 + 3);
    v47 = MEMORY[0x277D84F90];
    v48 = v28;
    v49 = v29;
    return sub_255D70374(v44);
  }
}

uint64_t sub_255D6841C@<X0>(uint64_t *a1@<X8>)
{
  sub_255D67B50(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6788, &qword_255E3E1D0);
  sub_255D4C8D4(&qword_27F7E6790, &qword_27F7E6788, &qword_255E3E1D0);
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D684D8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F10, &qword_255E43FA8);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v4 = &v37 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67C0, &unk_255E3E1E0);
  v38 = *(v40 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_255E38588();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = type metadata accessor for LinkView();
  sub_255D3957C(v1 + *(v20 + 20), v11, &qword_27F7E6B28, &unk_255E48060);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_255D395E4(v11, &qword_27F7E6B28, &unk_255E48060);
    sub_255E38EF8();
    v21 = sub_255E397E8();
    v23 = v22;
    v25 = v24;
    sub_255E39D48();
    v26 = sub_255E397D8();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_255D4C990(v21, v23, v25 & 1);

    *v4 = v26;
    *(v4 + 1) = v28;
    v4[16] = v30 & 1;
    *(v4 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_255D38950(&qword_27F7E67B8, &qword_27F7E67C0, &unk_255E3E1E0);
    return sub_255E39258();
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v34 = (*(v13 + 16))(v17, v19, v12);
    MEMORY[0x28223BE20](v34);
    sub_255E397B8();
    v35 = v38;
    v36 = v40;
    (*(v38 + 16))(v4, v7, v40);
    swift_storeEnumTagMultiPayload();
    sub_255D38950(&qword_27F7E67B8, &qword_27F7E67C0, &unk_255E3E1E0);
    sub_255E39258();
    (*(v35 + 8))(v7, v36);
    return (*(v13 + 8))(v19, v12);
  }
}

uint64_t sub_255D689B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LinkView() + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = (*(v5 + 24))(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_255D68A30()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D68AF8()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D68BAC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D68C70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D71334();
  *a2 = result;
  return result;
}

void sub_255D68CA0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (*v1 != 2)
  {
    v5 = 0x5365746176697270;
    v4 = 0xED0000616D656863;
  }

  if (*v1)
  {
    v3 = 0x74616E6974736564;
    v2 = 0xEB000000006E6F69;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D68D24()
{
  v1 = 25705;
  v2 = 0x6C6562616CLL;
  if (*v0 != 2)
  {
    v2 = 0x5365746176697270;
  }

  if (*v0)
  {
    v1 = 0x74616E6974736564;
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

uint64_t sub_255D68DA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D71334();
  *a1 = result;
  return result;
}

uint64_t sub_255D68DCC(uint64_t a1)
{
  v2 = sub_255D7019C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D68E08(uint64_t a1)
{
  v2 = sub_255D7019C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D68E44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v30 - v6;
  v7 = sub_255E385D8();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FF8, &unk_255E440F0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = type metadata accessor for LinkView();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v18 + *(v16 + 28)) = MEMORY[0x277D84F90];
  v19 = (v18 + *(v16 + 32));
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v38 = sub_255E38CC8();
  *v19 = v38;
  v19[1] = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D7019C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v23 = v35;
    v22 = v36;
    v31 = a1;
    LOBYTE(v39) = 0;
    v24 = sub_255E3AB88();
    if (!v25)
    {
      sub_255E385C8();
      v30 = sub_255E385B8();
      v28 = v27;
      (*(v32 + 8))(v23, v33);
      v25 = v28;
      v24 = v30;
    }

    *v18 = v24;
    v18[1] = v25;
    LOBYTE(v39) = 1;
    sub_255E3ABB8();
    v29 = v34;
    sub_255E38578();

    sub_255D701F0(v29, v18 + *(v14 + 20));
    v42 = 2;
    v40 = &type metadata for ViewContent;
    v41 = sub_255D44794();
    *&v39 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    (*(v37 + 8))(v13, v10);
    sub_255D34630(&v39, v18 + *(v14 + 24));
    sub_255D70260(v18, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    return sub_255D702C4(v18);
  }
}

uint64_t sub_255D69300@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67A8, &qword_255E3E1D8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255D684D8(&v11 - v7);
  sub_255D3957C(v8, v6, &qword_27F7E67A8, &qword_255E3E1D8);
  sub_255D4D914();
  v9 = sub_255E3A038();
  result = sub_255D395E4(v8, &qword_27F7E67A8, &qword_255E3E1D8);
  *a1 = v9;
  return result;
}

uint64_t sub_255D6942C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D69484(uint64_t a1)
{
  v2 = sub_255D703A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D694C0(uint64_t a1)
{
  v2 = sub_255D703A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D694FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F08, &qword_255E3B9A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_255E388C8();
  (*(v3 + 16))(v7, v9, v2);
  sub_255D38950(&qword_27F7E5FC8, &qword_27F7E5F08, &qword_255E3B9A0);
  v10 = sub_255E3A038();
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  return result;
}

uint64_t sub_255D696F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D69764()
{
  result = qword_27F7E6E40;
  if (!qword_27F7E6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E40);
  }

  return result;
}

unint64_t sub_255D69800()
{
  result = qword_27F7E6E48;
  if (!qword_27F7E6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E48);
  }

  return result;
}

uint64_t sub_255D69870()
{
  sub_255D6ED24(&qword_27F7E6E50, type metadata accessor for LinkView);
  sub_255D6ED24(&qword_27F7E67C8, type metadata accessor for LinkView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255D69928(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F6C6F63;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726F6C6F63;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255D699C0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D69A34()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D69A94()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D69B10(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x726F6C6F63;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D69B40()
{
  if (*v0)
  {
    result = 0x726F6C6F63;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_255D69B78(uint64_t a1)
{
  v2 = sub_255D70118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D69BB4(uint64_t a1)
{
  v2 = sub_255D70118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D69BF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_255E385D8();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FE8, &unk_255E440E0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v36 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v28 = sub_255E38CC8();
  v37 = v28;
  v38 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D70118();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v24 = v4;
    v15 = v26;
    v14 = v27;
    LOBYTE(v29) = 0;
    v16 = sub_255E3AB88();
    v19 = v17;
    if (!v17)
    {
      v20 = v7;
      sub_255E385C8();
      v21 = sub_255E385B8();
      v19 = v22;
      (*(v25 + 8))(v20, v24);
      v16 = v21;
    }

    v32[0] = v16;
    v32[1] = v19;
    v39 = 1;
    sub_255D65E28();
    sub_255E3ABC8();
    (*(v15 + 8))(v11, v8);
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_255D4DA74(v32, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255D7016C(v32);
  }
}

uint64_t sub_255D69F24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D4D9CC();
  (*(v4 + 24))(&v6, a1, v4);
  result = sub_255E3A038();
  *a2 = result;
  return result;
}

uint64_t sub_255D69F98@<X0>(uint64_t *a1@<X8>)
{
  sub_255D65E7C(v1 + 16, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  if (*(v1 + 64))
  {
    v5 = *(v4 + 16);
    v6 = *(v1 + 64);

    v8 = v5(v7, v3, v4);

    result = __swift_destroy_boxed_opaque_existential_1Tm(v11);
    *a1 = v8;
  }

  else
  {
    v10 = *(v1 + 72);
    type metadata accessor for RemoteStateStore(0);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

unint64_t sub_255D6A0FC()
{
  result = qword_27F7E6E58;
  if (!qword_27F7E6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E58);
  }

  return result;
}

uint64_t sub_255D6A150(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C61636974726576;
  if (v2 != 1)
  {
    v4 = 7105633;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746E6F7A69726F68;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C61636974726576;
  if (*a2 != 1)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E6F7A69726F68;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D6A244()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6A2E4()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D6A370()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6A40C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D71380();
  *a2 = result;
  return result;
}

void sub_255D6A43C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006C61;
  v4 = 0xE800000000000000;
  v5 = 0x6C61636974726576;
  if (v2 != 1)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E6F7A69726F68;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D6A554()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6A604()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D6A6A0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6A74C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D713CC();
  *a2 = result;
  return result;
}

void sub_255D6A77C(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEF73726F74616369;
  v5 = 0x646E4973776F6873;
  if (*v1 != 2)
  {
    v5 = 2003134838;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1936029793;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D6A7E8()
{
  v1 = 25705;
  v2 = 0x646E4973776F6873;
  if (*v0 != 2)
  {
    v2 = 2003134838;
  }

  if (*v0)
  {
    v1 = 1936029793;
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

uint64_t sub_255D6A850@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D713CC();
  *a1 = result;
  return result;
}

uint64_t sub_255D6A878(uint64_t a1)
{
  v2 = sub_255D6FE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6A8B4(uint64_t a1)
{
  v2 = sub_255D6FE78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6A8F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_255E385D8();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FB0, &unk_255E440B0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v41[5] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v34 = sub_255E38CC8();
  v41[6] = v34;
  v41[7] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D6FE78();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = a1;
  v15 = v31;
  v14 = v32;
  v16 = v33;
  LOBYTE(v35) = 0;
  v17 = sub_255E3AB88();
  v20 = v18;
  v29 = v8;
  if (!v18)
  {
    v21 = v7;
    sub_255E385C8();
    v22 = sub_255E385B8();
    v24 = v23;
    (*(v14 + 8))(v21, v4);
    v20 = v24;
    v17 = v22;
  }

  v38[0] = v17;
  v38[1] = v20;
  v42 = 1;
  sub_255D6FECC();
  sub_255E3ABA8();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      sub_255E395A8();
      sub_255E395C8();
      sub_255E395B8();
      v25 = sub_255E395B8();
      goto LABEL_12;
    }

LABEL_11:
    v25 = sub_255E395C8();
    goto LABEL_12;
  }

  if (v35)
  {
    goto LABEL_11;
  }

  v25 = sub_255E395A8();
LABEL_12:
  v39 = v25;
  LOBYTE(v35) = 2;
  v26 = v29;
  v27 = sub_255E3AB98();
  v40 = (v27 == 2) | v27 & 1;
  v42 = 3;
  v36 = &type metadata for ViewContent;
  v37 = sub_255D44794();
  *&v35 = swift_allocObject();
  sub_255D447E8();
  sub_255E3ABC8();
  (*(v15 + 8))(v11, v26);
  sub_255D34630(&v35, v41);
  sub_255D4E190(v38, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return sub_255D6FF20(v38);
}

uint64_t sub_255D6AD5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68A8, &qword_255E3E228);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = sub_255D4E0E8();
  (*(v12 + 24))(a1, v12);
  (*(v5 + 16))(v9, v11, v4);
  sub_255D38950(&qword_27F7E68B0, &qword_27F7E68A8, &qword_255E3E228);
  v13 = sub_255E3A038();
  result = (*(v5 + 8))(v11, v4);
  *a2 = v13;
  return result;
}

uint64_t sub_255D6AEEC()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 16);
  return sub_255E38838();
}

uint64_t sub_255D6AF58()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 88);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 96);

    v7 = sub_255DBFA2C(v6, v4, v3, v2, v1);

    MEMORY[0x28223BE20](v7);
    return sub_255E3A028();
  }

  else
  {
    v9 = *(v0 + 104);
    type metadata accessor for RemoteStateStore(0);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D6B0E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v4 = 1850700649;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (*a2 != 1)
  {
    v8 = 1850700649;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D6B1C8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6B254()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D6B2CC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6B354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D71418();
  *a2 = result;
  return result;
}

void sub_255D6B384(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v5 = 1850700649;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D6B3CC()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 1850700649;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D6B410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D71418();
  *a1 = result;
  return result;
}

uint64_t sub_255D6B438(uint64_t a1)
{
  v2 = sub_255D70094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6B474(uint64_t a1)
{
  v2 = sub_255D70094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6B4B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_255E385D8();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FD8, &unk_255E440D0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v34[5] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v27 = sub_255E38CC8();
  v38 = v27;
  v39 = v12;
  v14 = a1[3];
  v13 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_255D70094();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    v15 = v24;
    v16 = v25;
    LOBYTE(v29) = 0;
    v17 = sub_255E3AB88();
    v20 = v18;
    if (!v18)
    {
      sub_255E385C8();
      v21 = sub_255E385B8();
      v20 = v22;
      (*(v15 + 8))(v7, v4);
      v17 = v21;
    }

    v33[0] = v17;
    v33[1] = v20;
    v28 = 1;
    v31 = &type metadata for ViewContent;
    v32 = sub_255D44794();
    *&v29 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v29, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    v28 = 2;
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    sub_255E3ABC8();
    (*(v26 + 8))(v11, v8);
    v35 = v29;
    v36 = v30;
    v37 = v31;
    sub_255D4DF88(v33, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return sub_255D700E8(v33);
  }
}

uint64_t sub_255D6B924@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6868, &qword_255E3E218);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_255D6AF58();
  (*(v3 + 16))(v7, v9, v2);
  sub_255D38950(&qword_27F7E6870, &qword_27F7E6868, &qword_255E3E218);
  v10 = sub_255E3A038();
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  return result;
}

unint64_t sub_255D6BAF0()
{
  result = qword_27F7E6E60;
  if (!qword_27F7E6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E60);
  }

  return result;
}

uint64_t sub_255D6BB44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  if (v2 != 1)
  {
    v4 = 1852793705;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (*a2 != 1)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D6BC28()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6BCB4()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D6BD2C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6BDB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D71464();
  *a2 = result;
  return result;
}

void sub_255D6BDE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656C746974;
  if (v2 != 1)
  {
    v5 = 1852793705;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D6BE2C()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 1852793705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D6BE70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D71464();
  *a1 = result;
  return result;
}

uint64_t sub_255D6BE98(uint64_t a1)
{
  v2 = sub_255D70010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6BED4(uint64_t a1)
{
  v2 = sub_255D70010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6BF10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_255E385D8();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FC8, &unk_255E440C0);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v34[5] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v27 = sub_255E38CC8();
  v34[6] = v27;
  v34[7] = v12;
  v14 = a1[3];
  v13 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_255D70010();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    v15 = v26;
    v16 = v25;
    LOBYTE(v29) = 0;
    v17 = sub_255E3AB88();
    v20 = v18;
    if (!v18)
    {
      sub_255E385C8();
      v21 = sub_255E385B8();
      v20 = v22;
      (*(v15 + 8))(v7, v4);
      v17 = v21;
    }

    v32[0] = v17;
    v32[1] = v20;
    v28 = 1;
    v30 = &type metadata for ViewContent;
    v23 = sub_255D44794();
    v31 = v23;
    *&v29 = swift_allocObject();
    v26 = sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v29, &v33);
    v28 = 2;
    v30 = &type metadata for ViewContent;
    v31 = v23;
    *&v29 = swift_allocObject();
    sub_255E3ABC8();
    (*(v16 + 8))(v11, v8);
    sub_255D34630(&v29, v34);
    sub_255D4E08C(v32, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    return sub_255D70064(v32);
  }
}

uint64_t sub_255D6C340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6888, &qword_255E3E220);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = sub_255D4DFE4();
  (*(v12 + 24))(a1, v12);
  (*(v5 + 16))(v9, v11, v4);
  sub_255D38950(&qword_27F7E6890, &qword_27F7E6888, &qword_255E3E220);
  v13 = sub_255E3A038();
  result = (*(v5 + 8))(v11, v4);
  *a2 = v13;
  return result;
}

unint64_t sub_255D6C5A0()
{
  result = qword_27F7E6E68;
  if (!qword_27F7E6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E68);
  }

  return result;
}

unint64_t sub_255D6C63C()
{
  result = qword_27F7E6E70;
  if (!qword_27F7E6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E70);
  }

  return result;
}

uint64_t sub_255D6C6A8(uint64_t a1)
{
  v2 = sub_255D6FDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6C6E4(uint64_t a1)
{
  v2 = sub_255D6FDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6C720@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68C8, &unk_255E3E230);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = v2[3];
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = v12;
  v19 = *(v2 + 2);
  v13 = sub_255D4E1EC();
  (*(v13 + 24))(a1, v13);
  sub_255D3957C(v11, v9, &qword_27F7E68C8, &unk_255E3E230);
  sub_255D4E240();
  v14 = sub_255E3A038();
  result = sub_255D395E4(v11, &qword_27F7E68C8, &unk_255E3E230);
  *a2 = v14;
  return result;
}

uint64_t sub_255D6C86C()
{
  v2 = *(v0 + 16);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

unint64_t sub_255D6C9CC()
{
  result = qword_27F7E6E78;
  if (!qword_27F7E6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E78);
  }

  return result;
}

uint64_t sub_255D6CA20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6910, &qword_255E3E248);
  v31 = *(v35 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v31 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F18, &unk_255E43FB0);
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v31 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6900, &qword_255E3E240);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v31 - v11;
  if (*(v1 + 112))
  {
    v13 = *(v1 + 80);
    v15 = *(v1 + 64);
    v14 = *(v1 + 72);
    v16 = *(v1 + 56);

    v18 = sub_255DDF3A4(v17, v16, v15, v14, v13);

    v19 = sub_255D6EFA8(v18);

    v37 = v19;
    swift_getKeyPath();
    sub_255D4E744(v2, v36);
    v20 = swift_allocObject();
    v21 = v36[5];
    v20[5] = v36[4];
    v20[6] = v21;
    v22 = v36[7];
    v20[7] = v36[6];
    v20[8] = v22;
    v23 = v36[1];
    v20[1] = v36[0];
    v20[2] = v23;
    v24 = v36[3];
    v20[3] = v36[2];
    v20[4] = v24;
    v25 = swift_allocObject();
    if (v13)
    {
      *(v25 + 16) = sub_255D6F148;
      *(v25 + 24) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F20, &unk_255E43FE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6920, &unk_255E3E250);
      sub_255D38950(&qword_27F7E6F28, &qword_27F7E6F20, &unk_255E43FE0);
      sub_255D6F180();
      sub_255D4E608();
      sub_255E3A0E8();
      v26 = v31;
      v27 = v35;
      (*(v31 + 16))(v8, v5, v35);
      swift_storeEnumTagMultiPayload();
      sub_255D4E500();
      sub_255D4E584();
      sub_255E39258();
      return (*(v26 + 8))(v5, v27);
    }

    else
    {
      *(v25 + 16) = sub_255D6F23C;
      *(v25 + 24) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F20, &unk_255E43FE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
      sub_255D38950(&qword_27F7E6F28, &qword_27F7E6F20, &unk_255E43FE0);
      sub_255D6F180();
      sub_255D3849C();
      sub_255E3A0E8();
      v29 = v33;
      (*(v9 + 16))(v8, v12, v33);
      swift_storeEnumTagMultiPayload();
      sub_255D4E500();
      sub_255D4E584();
      sub_255E39258();
      return (*(v9 + 8))(v12, v29);
    }
  }

  else
  {
    v30 = *(v1 + 120);
    type metadata accessor for RemoteStateStore(0);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D6D010@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a2[5];
  v7 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v9 = a2[14];
  if (v9)
  {
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;
    v12 = a2[11];
    v13 = a2[12];
    *(inited + 32) = v12;
    *(inited + 40) = v13;
    *(inited + 48) = v5;

    v14 = sub_255DC53CC(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
    v15 = sub_255DC5124(MEMORY[0x277D84F90]);
    v16 = type metadata accessor for RemoteStateStore(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v9, v14, v15);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E386C8();
    *a3 = v10;
    a3[1] = result;
    a3[2] = v19;
  }

  else
  {
    v21 = a2[15];
    type metadata accessor for RemoteStateStore(0);
    sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D6D200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v8 = *(a3 + 56);
  v7 = *(a3 + 64);
  v9 = *(a3 + 72);
  v10 = *(a3 + 80);
  v49 = v8;
  v50 = v7;
  v51 = v9;
  v52 = v10;
  v47[1] = 0;
  v47[2] = 0;
  v47[0] = a1;
  v48 = 0;
  sub_255D6FBC4(v8, v7, v9, v10);
  sub_255DCB38C(v47, &v53);
  sub_255D380E0(v49, v50, v51, v52);
  v11 = v53;
  v12 = v54;
  v13 = v55;
  v14 = *(a3 + 40);
  v15 = *(a3 + 48);
  __swift_project_boxed_opaque_existential_1((a3 + 16), v14);
  v16 = (*(v15 + 24))(v14, v15);
  v17 = *(a3 + 112);
  if (v13 == 255)
  {
    if (v17)
    {
      v33 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      v35 = *(a3 + 96);
      *(inited + 32) = *(a3 + 88);
      *(inited + 40) = v35;
      *(inited + 48) = v6;

      v36 = sub_255DC53CC(inited);
      swift_setDeallocating();
      sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
      v37 = sub_255DC5124(MEMORY[0x277D84F90]);
      v38 = type metadata accessor for RemoteStateStore(0);
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      v41 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v17, v36, v37);
      sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
      v42 = sub_255E386C8();
      v49 = v33;
      v50 = v42;
      v51 = v41;
      v52 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
      sub_255D3849C();
      result = sub_255E39258();
      v30 = v53;
      v31 = v54;
      v32 = v55;
      goto LABEL_6;
    }
  }

  else
  {
    v44 = v12;
    v45 = v16;
    v46 = a4;
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_255E3BBC0;
      v19 = *(a3 + 88);
      v20 = *(a3 + 96);
      *(v18 + 32) = v19;
      *(v18 + 40) = v20;
      *(v18 + 48) = v6;

      swift_bridgeObjectRetain_n();

      v21 = sub_255DC53CC(v18);
      swift_setDeallocating();
      sub_255D395E4(v18 + 32, &qword_27F7E6F40, &unk_255E559F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F48, &qword_255E44010);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_255E3BBC0;
      *(v22 + 32) = v19;
      *(v22 + 40) = v20;
      *(v22 + 48) = v11;
      *(v22 + 64) = v44;
      *(v22 + 72) = v13 & 1;
      sub_255D5C240(v11, *(&v11 + 1), v44, v13);
      v23 = sub_255DC5124(v22);
      swift_setDeallocating();
      sub_255D395E4(v22 + 32, &qword_27F7E6F50, &qword_255E44018);
      v24 = type metadata accessor for RemoteStateStore(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v17, v21, v23);
      sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
      v28 = sub_255E386C8();
      v49 = v45;
      v50 = v28;
      v51 = v27;
      v52 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
      sub_255D3849C();
      sub_255E39258();
      sub_255D5C2F4(v11, *(&v11 + 1), v44, v13);

      v30 = v53;
      v31 = v54;
      v32 = v55;
      a4 = v46;
LABEL_6:
      *a4 = v30;
      *(a4 + 16) = v31;
      *(a4 + 24) = v32;
      return result;
    }
  }

  v43 = *(a3 + 120);
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D6D6FC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6D7A8()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D6D840()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D6D8E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D714B0();
  *a2 = result;
  return result;
}

void sub_255D6D918(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x736D657469;
  if (*v1 != 2)
  {
    v5 = 0x656D614E6D657469;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 2003134838;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D6D980()
{
  v1 = 25705;
  v2 = 0x736D657469;
  if (*v0 != 2)
  {
    v2 = 0x656D614E6D657469;
  }

  if (*v0)
  {
    v1 = 2003134838;
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

uint64_t sub_255D6D9E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D714B0();
  *a1 = result;
  return result;
}

uint64_t sub_255D6DA0C(uint64_t a1)
{
  v2 = sub_255D6FD40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6DA48(uint64_t a1)
{
  v2 = sub_255D6FD40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6DA84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_255E385D8();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F80, &qword_255E44088);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v38 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v41 = sub_255E38CC8();
  v39 = v41;
  v40 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D6FD40();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = v25;
    LOBYTE(v28) = 0;
    v15 = sub_255E3AB88();
    v18 = v16;
    if (!v16)
    {
      sub_255E385C8();
      v19 = sub_255E385B8();
      v18 = v20;
      (*(v14 + 8))(v7, v4);
      v15 = v19;
    }

    v32[0] = v15;
    v32[1] = v18;
    v27 = 1;
    v30 = &type metadata for ViewContent;
    v31 = sub_255D44794();
    *&v28 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v28, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F90, &unk_255E44090);
    v27 = 2;
    sub_255D38950(&qword_27F7E6F98, &qword_27F7E6F90, &unk_255E44090);
    sub_255E3ABC8();
    *&v33[40] = v28;
    v34 = v29;
    v35 = v30;
    LOBYTE(v28) = 3;
    v21 = sub_255E3ABB8();
    v23 = v22;
    (*(v26 + 8))(v11, v8);
    v36 = v21;
    v37 = v23;
    sub_255D4E744(v32, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255D6FD94(v32);
  }
}

uint64_t sub_255D6DF74@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68E8, &qword_255E44080);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255D6CA20(&v11 - v7);
  sub_255D3957C(v8, v6, &qword_27F7E68E8, &qword_255E44080);
  sub_255D4E474();
  v9 = sub_255E3A038();
  result = sub_255D395E4(v8, &qword_27F7E68E8, &qword_255E44080);
  *a1 = v9;
  return result;
}

unint64_t sub_255D6E134()
{
  result = qword_27F7E6E88;
  if (!qword_27F7E6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E88);
  }

  return result;
}

uint64_t sub_255D6E188(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255D6E28C(uint64_t a1)
{
  v2 = sub_255D6FCEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6E2C8(uint64_t a1)
{
  v2 = sub_255D6FCEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6E304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6938, &unk_255E44030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = v2[3];
  v17 = *v2;
  v18 = *(v2 + 1);
  v19 = v13;
  v20 = *(v2 + 2);
  v14 = sub_255D4E7A0();
  (*(v14 + 24))(a1, v14);
  (*(v6 + 16))(v10, v12, v5);
  sub_255D38950(&qword_27F7E6940, &qword_27F7E6938, &unk_255E44030);
  v15 = sub_255E3A038();
  result = (*(v6 + 8))(v12, v5);
  *a2 = v15;
  return result;
}

uint64_t sub_255D6E4BC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  return sub_255E397A8();
}

double sub_255D6E56C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_255D6E5FC()
{
  result = qword_27F7E6E90;
  if (!qword_27F7E6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E90);
  }

  return result;
}

uint64_t sub_255D6E65C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255D6E6AC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D6E704(uint64_t a1)
{
  v2 = sub_255D6FC14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D6E740(uint64_t a1)
{
  v2 = sub_255D6FC14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D6E77C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

double sub_255D6E7F8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_255D6F244(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

unint64_t sub_255D6E898()
{
  result = qword_27F7E6E98;
  if (!qword_27F7E6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6E98);
  }

  return result;
}

unint64_t sub_255D6E8EC(uint64_t a1)
{
  result = sub_255D6E914();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6E914()
{
  result = qword_27F7E6EA0;
  if (!qword_27F7E6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EA0);
  }

  return result;
}

unint64_t sub_255D6E968(uint64_t a1)
{
  result = sub_255D6E990();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6E990()
{
  result = qword_27F7E6EA8;
  if (!qword_27F7E6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EA8);
  }

  return result;
}

unint64_t sub_255D6E9E4(uint64_t a1)
{
  result = sub_255D6EA0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EA0C()
{
  result = qword_27F7E6EB0;
  if (!qword_27F7E6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EB0);
  }

  return result;
}

unint64_t sub_255D6EA60(uint64_t a1)
{
  result = sub_255D6EA88();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EA88()
{
  result = qword_27F7E6EB8;
  if (!qword_27F7E6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EB8);
  }

  return result;
}

unint64_t sub_255D6EADC(uint64_t a1)
{
  result = sub_255D6EB04();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EB04()
{
  result = qword_27F7E6EC0;
  if (!qword_27F7E6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EC0);
  }

  return result;
}

unint64_t sub_255D6EB58(uint64_t a1)
{
  result = sub_255D6EB80();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EB80()
{
  result = qword_27F7E6EC8;
  if (!qword_27F7E6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EC8);
  }

  return result;
}

unint64_t sub_255D6EBD4(uint64_t a1)
{
  result = sub_255D6EBFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EBFC()
{
  result = qword_27F7E6ED0;
  if (!qword_27F7E6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6ED0);
  }

  return result;
}

unint64_t sub_255D6EC50(uint64_t a1)
{
  result = sub_255D6EC78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EC78()
{
  result = qword_27F7E6ED8;
  if (!qword_27F7E6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6ED8);
  }

  return result;
}

uint64_t sub_255D6ECCC(uint64_t a1)
{
  result = sub_255D6ED24(&qword_27F7E6EE0, type metadata accessor for LinkView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255D6ED24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255D6ED6C(uint64_t a1)
{
  result = sub_255D6ED94();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6ED94()
{
  result = qword_27F7E6EE8;
  if (!qword_27F7E6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EE8);
  }

  return result;
}

unint64_t sub_255D6EDE8(uint64_t a1)
{
  result = sub_255D6EE10();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EE10()
{
  result = qword_27F7E6EF0;
  if (!qword_27F7E6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EF0);
  }

  return result;
}

unint64_t sub_255D6EE64(uint64_t a1)
{
  result = sub_255D6EE8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D6EE8C()
{
  result = qword_27F7E6EF8;
  if (!qword_27F7E6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6EF8);
  }

  return result;
}

unint64_t sub_255D6EEE8()
{
  result = qword_27F7E6F08;
  if (!qword_27F7E6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6F08);
  }

  return result;
}

uint64_t sub_255D6EF3C(uint64_t a1, uint64_t a2, char a3)
{
  sub_255D6EF78(a1, a2, a3 & 1);
}

uint64_t sub_255D6EF78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_255D6EF88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 <= 0xFDu)
  {
    sub_255D612A0(a1, a2, a3, a4);
  }
}

uint64_t sub_255D6EFA8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F58, &qword_255E44020);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 < v2 || v16 >= &v19[16 * v17] || v12 != v2)
          {
            memmove(v16, v19, 16 * v17);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_25;
      }
    }
  }

  v4 = 0;
LABEL_25:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_31;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

uint64_t sub_255D6F150(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1 + 1);
}

unint64_t sub_255D6F180()
{
  result = qword_27F7E6F30;
  if (!qword_27F7E6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6F30);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_255D380E0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v2 = *(v0 + 112);

  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_255D6F244@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v31 = a5;
  v30 = sub_255E385D8();
  v34 = *(v30 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v32 = *(v35 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v13 = &v28 - v12;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v14 = sub_255E38CC8();
  v16 = v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v18 = v36;
  sub_255E3AE28();
  if (v18)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v19 = v32;
    v20 = v33;
    v21 = v34;
    v22 = sub_255E3AB88();
    if (v23)
    {
      v36 = v23;
      v29 = v22;
    }

    else
    {
      sub_255E385C8();
      v29 = sub_255E385B8();
      v36 = v25;
      (*(v21 + 8))(v20, v30);
    }

    (*(v19 + 8))(v13, v35);
    v26 = v31;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v27 = v36;
    *v26 = v29;
    v26[1] = v27;
    v26[2] = MEMORY[0x277D84F90];
    v26[3] = v14;
    v26[4] = v16;
  }

  return result;
}

uint64_t sub_255D6F4FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v32 = sub_255E385D8();
  v34 = *(v32 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F70, &unk_255E44070);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v10 = sub_255E38CC8();
  v12 = v11;
  v14 = a1[3];
  v13 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_255D6FCEC();
  v15 = v36;
  sub_255E3AE28();
  if (v15)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v31 = v12;
    v36 = v10;
    v17 = v33;
    v16 = v34;
    v18 = v35;
    v40 = 0;
    v19 = sub_255E3AB88();
    v21 = v6;
    if (v20)
    {
      v30 = v19;
      v22 = v20;
    }

    else
    {
      v23 = v5;
      sub_255E385C8();
      v30 = sub_255E385B8();
      v22 = v24;
      (*(v16 + 8))(v23, v32);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v39 = 1;
    sub_255D5F038();
    sub_255E3ABA8();
    v25 = v36;
    if (v38)
    {
      v27 = v38;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v28 = sub_255D48968(v27);

    (*(v17 + 8))(v9, v21);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v37);
    *v18 = v30;
    v18[1] = v22;
    v18[2] = v28;
    v18[3] = MEMORY[0x277D84F90];
    v18[4] = v25;
    v18[5] = v31;
  }

  return result;
}

uint64_t sub_255D6F870@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_255E385D8();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6FA0, &unk_255E440A0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  type metadata accessor for RemoteStateStore(0);
  sub_255D6ED24(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v11 = sub_255E38CC8();
  v13 = v12;
  v15 = a1[3];
  v14 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_255D6FDC4();
  v16 = v36;
  sub_255E3AE28();
  if (v16)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v17 = v6;
    v36 = v13;
    v18 = v11;
    v20 = v34;
    v19 = v35;
    v40 = 0;
    v21 = sub_255E3AB88();
    v23 = v7;
    if (v22)
    {
      v31 = v21;
      v24 = v22;
    }

    else
    {
      sub_255E385C8();
      v31 = sub_255E385B8();
      v24 = v25;
      (*(v32 + 8))(v17, v33);
    }

    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v39 = 1;
    sub_255D5F038();
    sub_255E3ABC8();
    v27 = sub_255D48968(v38);

    (*(v20 + 8))(v10, v23);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v37);
    *v26 = v31;
    v26[1] = v24;
    v29 = MEMORY[0x277D84F90];
    v26[2] = v27;
    v26[3] = v29;
    v30 = v36;
    v26[4] = v18;
    v26[5] = v30;
  }

  return result;
}

uint64_t sub_255D6FBC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_255D34858(a3);
  }

  else
  {
  }
}

unint64_t sub_255D6FC14()
{
  result = qword_27F7E6F68;
  if (!qword_27F7E6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6F68);
  }

  return result;
}

unint64_t sub_255D6FC70()
{
  result = qword_27F7E66F8;
  if (!qword_27F7E66F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E66F8);
  }

  return result;
}

unint64_t sub_255D6FCEC()
{
  result = qword_27F7E6F78;
  if (!qword_27F7E6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6F78);
  }

  return result;
}

unint64_t sub_255D6FD40()
{
  result = qword_27F7E6F88;
  if (!qword_27F7E6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6F88);
  }

  return result;
}

unint64_t sub_255D6FDC4()
{
  result = qword_27F7E6FA8;
  if (!qword_27F7E6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6FA8);
  }

  return result;
}

uint64_t sub_255D6FE18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255D6FE78()
{
  result = qword_27F7E6FB8;
  if (!qword_27F7E6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6FB8);
  }

  return result;
}

unint64_t sub_255D6FECC()
{
  result = qword_27F7E6FC0;
  if (!qword_27F7E6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6FC0);
  }

  return result;
}

uint64_t sub_255D6FF50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

uint64_t sub_255D6FFB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[10];
  v5 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255D70010()
{
  result = qword_27F7E6FD0;
  if (!qword_27F7E6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6FD0);
  }

  return result;
}

unint64_t sub_255D70094()
{
  result = qword_27F7E6FE0;
  if (!qword_27F7E6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6FE0);
  }

  return result;
}

unint64_t sub_255D70118()
{
  result = qword_27F7E6FF0;
  if (!qword_27F7E6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6FF0);
  }

  return result;
}

unint64_t sub_255D7019C()
{
  result = qword_27F7E7000;
  if (!qword_27F7E7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7000);
  }

  return result;
}

uint64_t sub_255D701F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D70260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D702C4(uint64_t a1)
{
  v2 = type metadata accessor for LinkView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D70320()
{
  result = qword_27F7E7010;
  if (!qword_27F7E7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7010);
  }

  return result;
}

unint64_t sub_255D703A4()
{
  result = qword_27F7E7020;
  if (!qword_27F7E7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7020);
  }

  return result;
}

unint64_t sub_255D703F8()
{
  result = qword_27F7E7030;
  if (!qword_27F7E7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7030);
  }

  return result;
}

uint64_t sub_255D7054C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 25))
  {
    return (*a1 + 31);
  }

  v3 = (*(a1 + 24) & 0x1E | (*(a1 + 24) >> 5) & 1) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D7059C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * ((((-a2 >> 1) & 0xF) - 16 * a2) & 0x1F);
    }
  }

  return result;
}

unint64_t sub_255D70634()
{
  result = qword_27F7E7038;
  if (!qword_27F7E7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7038);
  }

  return result;
}

unint64_t sub_255D7068C()
{
  result = qword_27F7E7040;
  if (!qword_27F7E7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7040);
  }

  return result;
}

unint64_t sub_255D706E4()
{
  result = qword_27F7E7048;
  if (!qword_27F7E7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7048);
  }

  return result;
}

unint64_t sub_255D7073C()
{
  result = qword_27F7E7050;
  if (!qword_27F7E7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7050);
  }

  return result;
}

unint64_t sub_255D70794()
{
  result = qword_27F7E7058;
  if (!qword_27F7E7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7058);
  }

  return result;
}

unint64_t sub_255D707EC()
{
  result = qword_27F7E7060;
  if (!qword_27F7E7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7060);
  }

  return result;
}

unint64_t sub_255D70844()
{
  result = qword_27F7E7068;
  if (!qword_27F7E7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7068);
  }

  return result;
}

unint64_t sub_255D7089C()
{
  result = qword_27F7E7070;
  if (!qword_27F7E7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7070);
  }

  return result;
}

unint64_t sub_255D708F4()
{
  result = qword_27F7E7078;
  if (!qword_27F7E7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7078);
  }

  return result;
}

unint64_t sub_255D7094C()
{
  result = qword_27F7E7080;
  if (!qword_27F7E7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7080);
  }

  return result;
}

unint64_t sub_255D709A4()
{
  result = qword_27F7E7088;
  if (!qword_27F7E7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7088);
  }

  return result;
}

unint64_t sub_255D709FC()
{
  result = qword_27F7E7090;
  if (!qword_27F7E7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7090);
  }

  return result;
}

unint64_t sub_255D70A54()
{
  result = qword_27F7E7098;
  if (!qword_27F7E7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7098);
  }

  return result;
}

unint64_t sub_255D70AAC()
{
  result = qword_27F7E70A0;
  if (!qword_27F7E70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70A0);
  }

  return result;
}

unint64_t sub_255D70B04()
{
  result = qword_27F7E70A8;
  if (!qword_27F7E70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70A8);
  }

  return result;
}

unint64_t sub_255D70B5C()
{
  result = qword_27F7E70B0;
  if (!qword_27F7E70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70B0);
  }

  return result;
}

unint64_t sub_255D70BB4()
{
  result = qword_27F7E70B8;
  if (!qword_27F7E70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70B8);
  }

  return result;
}

unint64_t sub_255D70C0C()
{
  result = qword_27F7E70C0;
  if (!qword_27F7E70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70C0);
  }

  return result;
}

unint64_t sub_255D70C64()
{
  result = qword_27F7E70C8;
  if (!qword_27F7E70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70C8);
  }

  return result;
}

unint64_t sub_255D70CBC()
{
  result = qword_27F7E70D0;
  if (!qword_27F7E70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70D0);
  }

  return result;
}

unint64_t sub_255D70D14()
{
  result = qword_27F7E70D8;
  if (!qword_27F7E70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70D8);
  }

  return result;
}

unint64_t sub_255D70D6C()
{
  result = qword_27F7E70E0;
  if (!qword_27F7E70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70E0);
  }

  return result;
}

unint64_t sub_255D70DC4()
{
  result = qword_27F7E70E8;
  if (!qword_27F7E70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70E8);
  }

  return result;
}

unint64_t sub_255D70E1C()
{
  result = qword_27F7E70F0;
  if (!qword_27F7E70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70F0);
  }

  return result;
}

unint64_t sub_255D70E74()
{
  result = qword_27F7E70F8;
  if (!qword_27F7E70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E70F8);
  }

  return result;
}

unint64_t sub_255D70ECC()
{
  result = qword_27F7E7100;
  if (!qword_27F7E7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7100);
  }

  return result;
}

unint64_t sub_255D70F24()
{
  result = qword_27F7E7108;
  if (!qword_27F7E7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7108);
  }

  return result;
}

unint64_t sub_255D70F7C()
{
  result = qword_27F7E7110;
  if (!qword_27F7E7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7110);
  }

  return result;
}

unint64_t sub_255D70FD4()
{
  result = qword_27F7E7118;
  if (!qword_27F7E7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7118);
  }

  return result;
}

unint64_t sub_255D7102C()
{
  result = qword_27F7E7120;
  if (!qword_27F7E7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7120);
  }

  return result;
}

unint64_t sub_255D71084()
{
  result = qword_27F7E7128;
  if (!qword_27F7E7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7128);
  }

  return result;
}

unint64_t sub_255D710DC()
{
  result = qword_27F7E7130;
  if (!qword_27F7E7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7130);
  }

  return result;
}

unint64_t sub_255D71134()
{
  result = qword_27F7E7138;
  if (!qword_27F7E7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7138);
  }

  return result;
}

unint64_t sub_255D7118C()
{
  result = qword_27F7E7140;
  if (!qword_27F7E7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7140);
  }

  return result;
}