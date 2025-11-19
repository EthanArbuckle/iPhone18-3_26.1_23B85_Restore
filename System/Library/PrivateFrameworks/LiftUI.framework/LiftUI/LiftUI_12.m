uint64_t sub_255E2331C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 64);
  if (v6 > 0xFD)
  {
    goto LABEL_3;
  }

  v17 = *(v3 + 40);
  v18 = *(v3 + 48);
  v19 = *(v3 + 56);
  v20 = *(v3 + 64);
  v7 = a1;
  sub_255D612A0(v17, v18, v19, v6);
  sub_255D8F6FC(a2);
  v9 = v8;
  sub_255D4CB98(v17, v18, v19, v20);
  a1 = v7;
  if (v9)
  {
LABEL_3:
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = *(v3 + 24);
    v11 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v3, v12);
    (*(v11 + 16))(a2, v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9258, &qword_255E5E898);
    a3[3] = sub_255E38AE8();
    sub_255D38950(&qword_27F7E9260, &qword_27F7E9258, &qword_255E5E898);
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  else
  {
    v13 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v15 = *(v3 + 24);
    v14 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v3, v15);
    (*(v14 + 16))(a2, v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9258, &qword_255E5E898);
    a3[3] = sub_255E38AE8();
    sub_255D38950(&qword_27F7E9260, &qword_27F7E9258, &qword_255E5E898);
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  sub_255E39BF8();
}

uint64_t sub_255E23600(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6C6F63;
  if (v2 != 1)
  {
    v4 = 0x74646957656E696CLL;
    v3 = 0xE900000000000068;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x737569646172;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F6C6F63;
  if (*a2 != 1)
  {
    v8 = 0x74646957656E696CLL;
    v7 = 0xE900000000000068;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737569646172;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

uint64_t sub_255E23700()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E237A0()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E2382C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E238C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E27474();
  *a2 = result;
  return result;
}

void sub_255E238F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F6C6F63;
  if (v2 != 1)
  {
    v5 = 0x74646957656E696CLL;
    v4 = 0xE900000000000068;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737569646172;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255E23954()
{
  v1 = 0x726F6C6F63;
  if (*v0 != 1)
  {
    v1 = 0x74646957656E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737569646172;
  }
}

uint64_t sub_255E239AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E27474();
  *a1 = result;
  return result;
}

uint64_t sub_255E239D4(uint64_t a1)
{
  v2 = sub_255E2630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E23A10(uint64_t a1)
{
  v2 = sub_255E2630C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E23A4C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E92F0, &qword_255E5E8F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2630C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v20 = 0;
    sub_255D64774();
    sub_255E3ABC8();
    v14 = v11;
    v15 = v12;
    v16 = v13;
    v20 = 1;
    sub_255D65E28();
    sub_255E3ABC8();
    sub_255D34630(&v11, v17);
    v20 = 2;
    sub_255E3ABA8();
    (*(v6 + 8))(v9, v5);
    *&v17[40] = v11;
    v18 = v12;
    v19 = v13;
    sub_255E26360(&v14, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255E26398(&v14);
  }
}

uint64_t sub_255E23CF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_255E38BC8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9268, &qword_255E5E8A0);
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v15 = &v44 - v14;
  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  v18 = *(v3 + 24);
  *&v51 = *v3;
  *(&v51 + 1) = v16;
  *&v52 = v17;
  BYTE8(v52) = v18;
  sub_255D612A0(v51, v16, v17, v18);
  v48 = a2;
  sub_255D8F6FC(a2);
  v20 = v19;
  v22 = v21;
  sub_255D4CB98(v51, *(&v51 + 1), v52, SBYTE8(v52));
  if (v22)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v45 = a3;
  v46 = v4;
  v24 = *(v5 + 96);
  if (v24 <= 0xFD)
  {
    v25 = *(v5 + 80);
    v26 = *(v5 + 88);
    *&v51 = *(v5 + 72);
    *(&v51 + 1) = v25;
    *&v52 = v26;
    BYTE8(v52) = v24;
    sub_255D612A0(v51, v25, v26, v24);
    sub_255D8F6FC(v48);
    sub_255D4CB98(v51, *(&v51 + 1), v52, SBYTE8(v52));
  }

  v27 = a1[4];
  v44 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = *(v9 + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_255E38F38();
  (*(*(v30 - 8) + 104))(&v12[v28], v29, v30);
  *v12 = v20;
  *(v12 + 1) = v20;
  v31 = *(v5 + 56);
  v32 = *(v5 + 64);
  __swift_project_boxed_opaque_existential_1((v5 + 32), v31);
  v33 = (*(v32 + 16))(v48, v31, v32);
  sub_255E388A8();
  sub_255E27D6C(v12, v15, MEMORY[0x277CDFC08]);
  v34 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9270, &qword_255E5E8A8) + 36)];
  v35 = v52;
  *v34 = v51;
  *(v34 + 1) = v35;
  *(v34 + 4) = v53;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9278, &qword_255E5E8B0);
  *&v15[*(v36 + 52)] = v33;
  *&v15[*(v36 + 56)] = 256;
  v37 = sub_255E3A228();
  v39 = v38;
  sub_255E26224(v12);
  v40 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9280, &qword_255E5E8B8) + 36)];
  *v40 = v37;
  v40[1] = v39;
  sub_255E3A228();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9288, &qword_255E5E8C0);
  v41 = sub_255E38AE8();
  v42 = v45;
  v45[3] = v41;
  v43 = sub_255D38950(&qword_27F7E9290, &qword_27F7E9288, &qword_255E5E8C0);
  v49 = v27;
  v50 = v43;
  v42[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v42);
  sub_255D38950(&qword_27F7E9298, &qword_27F7E9268, &qword_255E5E8A0);
  sub_255E39C48();
  return sub_255D395E4(v15, &qword_27F7E9268, &qword_255E5E8A0);
}

unint64_t sub_255E2418C()
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_255E3A9A8();

  v4 = 0xD00000000000001ALL;
  v5 = 0x8000000255E669E0;
  sub_255D3CE1C(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84B0, &qword_255E558B8);
  v1 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v1);

  MEMORY[0x259C4E8F0](62, 0xE100000000000000);
  return v4;
}

uint64_t sub_255E24240(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7972616974726574;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_255E2434C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E243F4()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E24488()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2452C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E274C0();
  *a2 = result;
  return result;
}

void sub_255E2455C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255E245C0()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_255E24620@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E274C0();
  *a1 = result;
  return result;
}

uint64_t sub_255E24648(uint64_t a1)
{
  v2 = sub_255E26484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E24684(uint64_t a1)
{
  v2 = sub_255E26484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E246C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9310, &unk_255E5E900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E26484();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13[0] = 0;
  sub_255D65E28();
  sub_255E3ABC8();
  sub_255D34630(&v15, v18);
  HIBYTE(v12) = 1;
  sub_255E3ABA8();
  if (v14)
  {
    sub_255D3CE1C(v13, &v15);
    sub_255D65FFC(v13);
  }

  else
  {
    sub_255D395E4(v13, &qword_27F7E7F68, &qword_255E53540);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  v19 = v15;
  v20 = v16;
  v21 = v17;
  HIBYTE(v12) = 2;
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  if (v14)
  {
    sub_255D3CE1C(v13, &v15);
    sub_255D65FFC(v13);
  }

  else
  {
    sub_255D395E4(v13, &qword_27F7E7F68, &qword_255E53540);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  v22 = v15;
  v23 = v16;
  v24 = v17;
  sub_255E264D8(v18, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255E26510(v18);
}

uint64_t sub_255E24A04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_255E25080((v3 + 5), &v28);
  if (v29)
  {
    sub_255D34630(&v28, v31);
    sub_255E25080((v3 + 10), &v24);
    if (v25)
    {
      sub_255D34630(&v24, &v28);
      v7 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v8 = v3[3];
      v9 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v8);
      *&v24 = (*(v9 + 16))(a2, v8, v9);
      v11 = v32;
      v10 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v34 = (*(v10 + 16))(a2, v11, v10);
      v12 = v29;
      v13 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      (*(v13 + 16))(a2, v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92C0, &qword_255E5E8D8);
      a3[3] = sub_255E38AE8();
      sub_255D38950(&qword_27F7E92C8, &qword_27F7E92C0, &qword_255E5E8D8);
      a3[4] = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(a3);
      sub_255E399C8();

      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    else
    {
      sub_255D395E4(&v24, &qword_27F7E9218, &qword_255E5DF20);
      v19 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v20 = v3[3];
      v21 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v20);
      *&v28 = (*(v21 + 16))(a2, v20, v21);
      v22 = v32;
      v23 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      *&v24 = (*(v23 + 16))(a2, v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92B0, &qword_255E5E8D0);
      a3[3] = sub_255E38AE8();
      sub_255D38950(&qword_27F7E92B8, &qword_27F7E92B0, &qword_255E5E8D0);
      a3[4] = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(a3);
      MEMORY[0x259C4DD30](&v28, &v24, v19, MEMORY[0x277CE0F78], MEMORY[0x277CE0F78], v18, MEMORY[0x277CE0F60], MEMORY[0x277CE0F60]);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    sub_255D395E4(&v28, &qword_27F7E9218, &qword_255E5DF20);
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = v3[3];
    v16 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v15);
    v31[0] = (*(v16 + 16))(a2, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92A0, &qword_255E5E8C8);
    a3[3] = sub_255E38AE8();
    v26 = v14;
    v27 = sub_255D38950(&qword_27F7E92A8, &qword_27F7E92A0, &qword_255E5E8C8);
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255E399B8();
  }
}

unint64_t sub_255E24F30()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_255E3A9A8();

  v6 = 0xD00000000000001ALL;
  v7 = 0x8000000255E66A00;
  sub_255D3CE1C(v0, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84B0, &qword_255E558B8);
  v1 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v1);

  MEMORY[0x259C4E8F0](8236, 0xE200000000000000);
  sub_255E25080(v0 + 40, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9218, &qword_255E5DF20);
  v2 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v2);

  MEMORY[0x259C4E8F0](32, 0xE100000000000000);
  sub_255E25080(v0 + 80, v5);
  v3 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v3);

  MEMORY[0x259C4E8F0](62, 0xE100000000000000);
  return v6;
}

uint64_t sub_255E25080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9218, &qword_255E5DF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255E250FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_255E25144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_255E251F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255E25238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12CodableColor_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255E252DC(uint64_t a1, int a2)
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

uint64_t sub_255E25324(uint64_t result, int a2, int a3)
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

uint64_t sub_255E25390@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_255D65E28();
    sub_255E3ACB8();
    sub_255D34630(&v8, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v6 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E254AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  v12 = (*(v10 + 16))(a2, v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FD0, &unk_255E53810);
  a4[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7FD8, &qword_27F7E7FD0, &unk_255E53810);
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);
  a3(v12, v8, v9);
}

uint64_t sub_255E255F4()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E25668()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E256BC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255E2574C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255E257A4(uint64_t a1)
{
  v2 = sub_255E262B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E257E0(uint64_t a1)
{
  v2 = sub_255E262B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2581C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E92E0, &qword_255E5E8E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E262B8();
  sub_255E3AE28();
  if (!v2)
  {
    if (sub_255E3ABE8())
    {
      sub_255DB04F4();
      sub_255E3ABC8();
      (*(v6 + 8))(v9, v5);
      sub_255D34630(v15, &v16);
      sub_255D34630(&v16, &v18);
      v19[24] = 0;
    }

    else
    {
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_255E3AE08();
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      sub_255D65E28();
      sub_255E3ACB8();
      (*(v6 + 8))(v9, v5);
      sub_255D34630(v14, v15);
      sub_255D34630(v15, &v18);
      v19[24] = 1;
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    v13 = *v19;
    *a2 = v18;
    a2[1] = v13;
    *(a2 + 25) = *&v19[9];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E25AAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  sub_255E26280(v5, v42);
  if (v43 == 1)
  {
    sub_255D34630(v42, v39);
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = v40;
    v11 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v36[0] = (*(v11 + 16))(a2, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92D0, &qword_255E5E8E0);
    a3[3] = sub_255E38AE8();
    v32 = v9;
    v33 = sub_255D38950(&qword_27F7E92D8, &qword_27F7E92D0, &qword_255E5E8E0);
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255E39B98();
  }

  else
  {
    sub_255D34630(v42, v39);
    v12 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = v40;
    v15 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    sub_255DEBAD8(a2, v14, v15, v36);
    if (!v4)
    {
      v16 = v37;
      v44 = v38;
      v17 = __swift_project_boxed_opaque_existential_1(v36, v37);
      v30 = sub_255E3A8A8();
      v31 = &v27;
      v18 = *(v30 - 8);
      v28 = v12;
      v19 = v18;
      v20 = *(v18 + 64);
      MEMORY[0x28223BE20](v30);
      v22 = &v27 - v21;
      v23 = *(v16 - 8);
      v29 = v13;
      v24 = v23;
      (*(v23 + 16))(&v27 - v21, v17, v16);
      (*(v24 + 56))(v22, 0, 1, v16);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92D0, &qword_255E5E8E0);
      a3[3] = sub_255E38AE8();
      v25 = sub_255D38950(&qword_27F7E92D8, &qword_27F7E92D0, &qword_255E5E8E0);
      v34 = v28;
      v35 = v25;
      a3[4] = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(a3);
      sub_255E39B98();
      (*(v19 + 8))(v22, v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v39);
}

unint64_t sub_255E25EC0(uint64_t a1)
{
  result = sub_255E25EE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E25EE8()
{
  result = qword_27F7E9220;
  if (!qword_27F7E9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9220);
  }

  return result;
}

unint64_t sub_255E25F3C(uint64_t a1)
{
  result = sub_255E25F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E25F64()
{
  result = qword_27F7E9228;
  if (!qword_27F7E9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9228);
  }

  return result;
}

unint64_t sub_255E25FB8(uint64_t a1)
{
  result = sub_255E25FE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E25FE0()
{
  result = qword_27F7E9230;
  if (!qword_27F7E9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9230);
  }

  return result;
}

unint64_t sub_255E26034(uint64_t a1)
{
  result = sub_255E2605C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2605C()
{
  result = qword_27F7E9238;
  if (!qword_27F7E9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9238);
  }

  return result;
}

unint64_t sub_255E260B0(uint64_t a1)
{
  result = sub_255E260D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E260D8()
{
  result = qword_27F7E9240;
  if (!qword_27F7E9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9240);
  }

  return result;
}

unint64_t sub_255E2612C(uint64_t a1)
{
  result = sub_255E26154();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E26154()
{
  result = qword_27F7E9248;
  if (!qword_27F7E9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9248);
  }

  return result;
}

unint64_t sub_255E261A8(uint64_t a1)
{
  result = sub_255E261D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E261D0()
{
  result = qword_27F7E9250;
  if (!qword_27F7E9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9250);
  }

  return result;
}

uint64_t sub_255E26224(uint64_t a1)
{
  v2 = sub_255E38BC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E262B8()
{
  result = qword_27F7E92E8;
  if (!qword_27F7E92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E92E8);
  }

  return result;
}

unint64_t sub_255E2630C()
{
  result = qword_27F7E92F8;
  if (!qword_27F7E92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E92F8);
  }

  return result;
}

unint64_t sub_255E263C8()
{
  result = qword_27F7E9308;
  if (!qword_27F7E9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9308);
  }

  return result;
}

unint64_t sub_255E26484()
{
  result = qword_27F7E9318;
  if (!qword_27F7E9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9318);
  }

  return result;
}

uint64_t sub_255E26580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 57))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255E265D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_255E26658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255E26694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_255E266F4()
{
  result = qword_27F7E9320;
  if (!qword_27F7E9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9320);
  }

  return result;
}

unint64_t sub_255E2674C()
{
  result = qword_27F7E9328;
  if (!qword_27F7E9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9328);
  }

  return result;
}

unint64_t sub_255E267A4()
{
  result = qword_27F7E9330;
  if (!qword_27F7E9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9330);
  }

  return result;
}

unint64_t sub_255E267FC()
{
  result = qword_27F7E9338;
  if (!qword_27F7E9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9338);
  }

  return result;
}

unint64_t sub_255E26854()
{
  result = qword_27F7E9340;
  if (!qword_27F7E9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9340);
  }

  return result;
}

unint64_t sub_255E268AC()
{
  result = qword_27F7E9348;
  if (!qword_27F7E9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9348);
  }

  return result;
}

unint64_t sub_255E26904()
{
  result = qword_27F7E9350;
  if (!qword_27F7E9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9350);
  }

  return result;
}

unint64_t sub_255E2695C()
{
  result = qword_27F7E9358;
  if (!qword_27F7E9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9358);
  }

  return result;
}

unint64_t sub_255E269B4()
{
  result = qword_27F7E9360;
  if (!qword_27F7E9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9360);
  }

  return result;
}

unint64_t sub_255E26A0C()
{
  result = qword_27F7E9368;
  if (!qword_27F7E9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9368);
  }

  return result;
}

unint64_t sub_255E26A64()
{
  result = qword_27F7E9370;
  if (!qword_27F7E9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9370);
  }

  return result;
}

unint64_t sub_255E26ABC()
{
  result = qword_27F7E9378;
  if (!qword_27F7E9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9378);
  }

  return result;
}

unint64_t sub_255E26B10(uint64_t a1)
{
  result = sub_255E26B38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E26B38()
{
  result = qword_27F7E9380;
  if (!qword_27F7E9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9380);
  }

  return result;
}

uint64_t type metadata accessor for ColorDecodingError()
{
  result = qword_27F7E93F0;
  if (!qword_27F7E93F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255E26BD8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E93D8, &qword_255E5F2F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2732C();
  sub_255E3AE28();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_255E3ABB8();
    v11 = 1;
    sub_255E3AB88();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_255E26DBC(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_255E27380();
    sub_255E3ACB8();
    v4 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

unint64_t sub_255E26F88()
{
  result = qword_27F7E9390;
  if (!qword_27F7E9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9390);
  }

  return result;
}

unint64_t sub_255E26FDC()
{
  result = qword_27F7E9398;
  if (!qword_27F7E9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9398);
  }

  return result;
}

unint64_t sub_255E27030()
{
  result = qword_27F7E93A0;
  if (!qword_27F7E93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E93A0);
  }

  return result;
}

unint64_t sub_255E27084()
{
  result = qword_27F7E93A8;
  if (!qword_27F7E93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E93A8);
  }

  return result;
}

unint64_t sub_255E270D8()
{
  result = qword_27F7E93B0;
  if (!qword_27F7E93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E93B0);
  }

  return result;
}

uint64_t objectdestroy_86Tm()
{
  sub_255D38060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255E2716C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255E271B4()
{
  result = qword_27F7E93C0;
  if (!qword_27F7E93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E93C0);
  }

  return result;
}

unint64_t sub_255E27270()
{
  result = qword_27F7E93D0;
  if (!qword_27F7E93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E93D0);
  }

  return result;
}

unint64_t sub_255E2732C()
{
  result = qword_27F7E93E0;
  if (!qword_27F7E93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E93E0);
  }

  return result;
}

unint64_t sub_255E27380()
{
  result = qword_27F7E93E8;
  if (!qword_27F7E93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E93E8);
  }

  return result;
}

uint64_t sub_255E273D4()
{
  v0 = sub_255E3AD18();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E27428()
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

uint64_t sub_255E27474()
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

uint64_t sub_255E274C0()
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

uint64_t sub_255E2756C(uint64_t a1, int a2)
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

uint64_t sub_255E275B4(uint64_t result, int a2, int a3)
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

uint64_t sub_255E27614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255E2768C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_255E27714(uint64_t a1)
{
  sub_255E08F1C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_255E3A9F8();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

unint64_t sub_255E277EC()
{
  result = qword_27F7E9400;
  if (!qword_27F7E9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9400);
  }

  return result;
}

unint64_t sub_255E27844()
{
  result = qword_27F7E9408;
  if (!qword_27F7E9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9408);
  }

  return result;
}

unint64_t sub_255E2789C()
{
  result = qword_27F7E9410;
  if (!qword_27F7E9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9410);
  }

  return result;
}

unint64_t sub_255E278F4()
{
  result = qword_27F7E9418;
  if (!qword_27F7E9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9418);
  }

  return result;
}

unint64_t sub_255E2794C()
{
  result = qword_27F7E9420;
  if (!qword_27F7E9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9420);
  }

  return result;
}

unint64_t sub_255E279A4()
{
  result = qword_27F7E9428;
  if (!qword_27F7E9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9428);
  }

  return result;
}

unint64_t sub_255E279FC()
{
  result = qword_27F7E9430;
  if (!qword_27F7E9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9430);
  }

  return result;
}

unint64_t sub_255E27A54()
{
  result = qword_27F7E9438;
  if (!qword_27F7E9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9438);
  }

  return result;
}

unint64_t sub_255E27AAC()
{
  result = qword_27F7E9440;
  if (!qword_27F7E9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9440);
  }

  return result;
}

unint64_t sub_255E27B00(uint64_t a1)
{
  result = sub_255E27B28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27B28()
{
  result = qword_27F7E9448;
  if (!qword_27F7E9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9448);
  }

  return result;
}

unint64_t sub_255E27B7C(uint64_t a1)
{
  result = sub_255E27BA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27BA4()
{
  result = qword_27F7E9450;
  if (!qword_27F7E9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9450);
  }

  return result;
}

unint64_t sub_255E27BF8(uint64_t a1)
{
  result = sub_255E27C20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27C20()
{
  result = qword_27F7E9458;
  if (!qword_27F7E9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9458);
  }

  return result;
}

unint64_t sub_255E27C74(uint64_t a1)
{
  result = sub_255E27C9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27C9C()
{
  result = qword_27F7E9460;
  if (!qword_27F7E9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9460);
  }

  return result;
}

unint64_t sub_255E27CF0(uint64_t a1)
{
  result = sub_255E27D18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27D18()
{
  result = qword_27F7E9468;
  if (!qword_27F7E9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9468);
  }

  return result;
}

uint64_t sub_255E27D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255E27E20(uint64_t a1)
{
  v2 = sub_255E285F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E27E5C(uint64_t a1)
{
  v2 = sub_255E285F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E27EDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  result = (*(v10 + 48))(&v13, a2, a3, v11, v10);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8040, &qword_255E53880);
    a4[3] = sub_255E38AE8();
    sub_255D38950(&qword_27F7E8048, &qword_27F7E8040, &qword_255E53880);
    a4[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255D3D6B0();
    sub_255E39CC8();
  }

  return result;
}

uint64_t sub_255E28058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570616873 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E280DC(uint64_t a1)
{
  v2 = sub_255E2859C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E28118(uint64_t a1)
{
  v2 = sub_255E2859C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E28198@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255E3AE28();
  if (!v5)
  {
    v13 = v17;
    sub_255DB059C();
    sub_255E3ABC8();
    (*(v21 + 8))(v11, v8);
    sub_255D34630(&v18, v19);
    v14 = v19[1];
    *v13 = v19[0];
    *(v13 + 16) = v14;
    *(v13 + 32) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void *sub_255E28328@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  result = (*(v10 + 48))(&v13, a2, a3, v11, v10);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80D0, &qword_255E53898);
    a4[3] = sub_255E38AE8();
    sub_255D38950(&qword_27F7E80D8, &qword_27F7E80D0, &qword_255E53898);
    a4[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255D3D6B0();
    sub_255E39938();
  }

  return result;
}

unint64_t sub_255E284A4(uint64_t a1)
{
  result = sub_255E284CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E284CC()
{
  result = qword_27F7E9470;
  if (!qword_27F7E9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9470);
  }

  return result;
}

unint64_t sub_255E28520(uint64_t a1)
{
  result = sub_255E28548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E28548()
{
  result = qword_27F7E9478;
  if (!qword_27F7E9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9478);
  }

  return result;
}

unint64_t sub_255E2859C()
{
  result = qword_27F7E9488;
  if (!qword_27F7E9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9488);
  }

  return result;
}

unint64_t sub_255E285F0()
{
  result = qword_27F7E9498;
  if (!qword_27F7E9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9498);
  }

  return result;
}

unint64_t sub_255E28668()
{
  result = qword_27F7E94A0;
  if (!qword_27F7E94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94A0);
  }

  return result;
}

unint64_t sub_255E286C0()
{
  result = qword_27F7E94A8;
  if (!qword_27F7E94A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94A8);
  }

  return result;
}

unint64_t sub_255E28718()
{
  result = qword_27F7E94B0;
  if (!qword_27F7E94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94B0);
  }

  return result;
}

unint64_t sub_255E28770()
{
  result = qword_27F7E94B8;
  if (!qword_27F7E94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94B8);
  }

  return result;
}

unint64_t sub_255E287C8()
{
  result = qword_27F7E94C0;
  if (!qword_27F7E94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94C0);
  }

  return result;
}

unint64_t sub_255E28820()
{
  result = qword_27F7E94C8;
  if (!qword_27F7E94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94C8);
  }

  return result;
}

uint64_t sub_255E28888(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616E6F6974636964;
  }

  else
  {
    v4 = 7955819;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xEA00000000007972;
  }

  if (*a2)
  {
    v6 = 0x616E6F6974636964;
  }

  else
  {
    v6 = 7955819;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007972;
  }

  else
  {
    v7 = 0xE300000000000000;
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

uint64_t sub_255E2892C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E289AC()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E28A18()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E28A94@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_255E28AF4(uint64_t *a1@<X8>)
{
  v2 = 7955819;
  if (*v1)
  {
    v2 = 0x616E6F6974636964;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007972;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E28B30()
{
  if (*v0)
  {
    result = 0x616E6F6974636964;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_255E28B68@<X0>(char *a1@<X8>)
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

uint64_t sub_255E28BCC(uint64_t a1)
{
  v2 = sub_255E29554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E28C08(uint64_t a1)
{
  v2 = sub_255E29554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E28C44@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E94E0, &qword_255E60828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E29554();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
  LOBYTE(v27) = 0;
  sub_255E0EACC(&qword_27F7E7398, &qword_27F7E7390, &qword_255E55340);
  sub_255E3ABC8();
  v24 = a2;
  v25 = v30;
  v26 = v31;
  v41 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
  v42 = 1;
  sub_255E0EACC(&qword_27F7E7420, &qword_27F7E7418, qword_255E567D0);
  sub_255E3ABC8();
  (*(v6 + 8))(v9, v5);
  v11 = *(&v37 + 1);
  v23 = v37;
  v12 = v38;
  v13 = v39;
  v40 = v39;
  v14 = v25;
  v27 = v25;
  v15 = v26;
  *&v28 = v26;
  v16 = v41;
  BYTE8(v28) = v41;
  *v29 = v37;
  *&v29[16] = v38;
  v29[24] = v39;
  v17 = v25;
  v18 = v28;
  v19 = v37;
  v20 = v24;
  *(v24 + 41) = *&v29[9];
  v20[1] = v18;
  v20[2] = v19;
  *v20 = v17;
  sub_255D5CDC8(&v27, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v23;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  return sub_255E295A8(&v30);
}

uint64_t sub_255E28F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_255E3A758();
  v7[6] = sub_255E3A748();
  v9 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2901C, v9, v8);
}

uint64_t sub_255E2901C()
{
  v14 = v0;
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = sub_255DDF580(v2, v4, v5, v6, v7);
  v9 = v0[3];
  v12 = v8;
  sub_255D808F4(v0[4], v0[5], &v13);
  sub_255D5C324(v13);
  sub_255DEF60C(v9, v12, v4, v5, v6, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_255E29128(uint64_t a1)
{
  *(v2 + 144) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  *(v2 + 57) = *(v1 + 41);

  return MEMORY[0x2822009F8](sub_255E291DC, 0, 0);
}

uint64_t sub_255E291DC()
{
  v1 = sub_255DDEDA0(*(v0 + 144), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v3 = v2;
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = sub_255E3A778();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_255E3A758();
  sub_255D5CDC8(v0 + 16, v0 + 80);

  v7 = sub_255E3A748();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v10;
  *(v8 + 64) = *(v0 + 48);
  *(v8 + 73) = *(v0 + 57);
  *(v8 + 96) = v5;
  *(v8 + 104) = v1;
  *(v8 + 112) = v3;
  sub_255D51B90(0, 0, v4, &unk_255E60820, v8);

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_255E29388(uint64_t a1)
{
  result = sub_255E293B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E293B0()
{
  result = qword_27F7E94D0;
  if (!qword_27F7E94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94D0);
  }

  return result;
}

unint64_t sub_255E29404(uint64_t a1)
{
  result = sub_255E2942C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2942C()
{
  result = qword_27F7E94D8;
  if (!qword_27F7E94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94D8);
  }

  return result;
}

uint64_t sub_255E29480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D50138;

  return sub_255E28F80(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

unint64_t sub_255E29554()
{
  result = qword_27F7E94E8;
  if (!qword_27F7E94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94E8);
  }

  return result;
}

unint64_t sub_255E295EC()
{
  result = qword_27F7E94F0;
  if (!qword_27F7E94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94F0);
  }

  return result;
}

unint64_t sub_255E29644()
{
  result = qword_27F7E94F8;
  if (!qword_27F7E94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E94F8);
  }

  return result;
}

unint64_t sub_255E2969C()
{
  result = qword_27F7E9500;
  if (!qword_27F7E9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9500);
  }

  return result;
}

uint64_t sub_255E29700@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_255D48A94(v12);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v13, a2, a3, v10, v11, v20);

  v14 = v21;
  v15 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_255D48A94(v16);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v17, a2, a3, v14, v15, a6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t sub_255E2982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255E298D0, 0, 0);
}

uint64_t sub_255E298D0()
{
  v1 = v0[4];
  if (sub_255E1AAC0(v0[2]))
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v2 = sub_255E386A8();
    __swift_project_value_buffer(v2, qword_27F8152D8);
    v3 = sub_255E38688();
    v4 = sub_255E3A868();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_255D2E000, v3, v4, "If Action: condition satisfied", v5, 2u);
      MEMORY[0x259C4F9E0](v5, -1, -1);
    }

    v6 = v0[5];

    if (v6)
    {
      v7 = v0[7];
      v8 = v0[5];
      v10 = v0[2];
      v9 = v0[3];
      v11 = sub_255E3A778();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v8;
      v12[5] = v10;
      v12[6] = v9;

      v13 = &unk_255E60A38;
LABEL_14:
      sub_255D52540(0, 0, v0[7], v13, v12);
    }
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v14 = sub_255E386A8();
    __swift_project_value_buffer(v14, qword_27F8152D8);
    v15 = sub_255E38688();
    v16 = sub_255E3A868();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_255D2E000, v15, v16, "If Action: condition NOT satisfied", v17, 2u);
      MEMORY[0x259C4F9E0](v17, -1, -1);
    }

    v18 = v0[6];

    if (v18)
    {
      v19 = v0[6];
      v20 = v0[7];
      v22 = v0[2];
      v21 = v0[3];
      v23 = sub_255E3A778();
      (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v19;
      v12[5] = v22;
      v12[6] = v21;

      v13 = &unk_255E5A580;
      goto LABEL_14;
    }
  }

  v24 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_255E29C04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E2A4C8();
  *a2 = result;
  return result;
}

uint64_t sub_255E29C34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E2A4C8();
  *a1 = result;
  return result;
}

uint64_t sub_255E29C5C(uint64_t a1)
{
  v2 = sub_255E2A35C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E29C98(uint64_t a1)
{
  v2 = sub_255E2A35C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E29CD4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_255D50138;

  return sub_255E2982C(a1, a2, v6, v7, v8);
}

uint64_t sub_255E29DB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255E29ED8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_255E29DE0(uint64_t a1)
{
  result = sub_255E29E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E29E08()
{
  result = qword_27F7E9508;
  if (!qword_27F7E9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9508);
  }

  return result;
}

unint64_t sub_255E29E5C(uint64_t a1)
{
  result = sub_255E29E84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E29E84()
{
  result = qword_27F7E9510;
  if (!qword_27F7E9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9510);
  }

  return result;
}

uint64_t sub_255E29ED8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9518, &qword_255E60A40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_255E2A35C();
  sub_255E3AE28();
  if (!v1)
  {
    type metadata accessor for Condition();
    LOBYTE(v30[0]) = 0;
    sub_255DCEF44();
    sub_255E3ABC8();
    v8 = *&v31[0];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
    LOBYTE(v31[0]) = 1;
    v10 = sub_255D7B658();
    sub_255E3ABA8();
    v29 = v10;
    if (v33)
    {
      v28 = v9;
      v11 = *(v33 + 16);
      if (v11)
      {
        v25 = v8;
        v26 = v4;
        v27 = v3;
        v32 = MEMORY[0x277D84F90];
        v24 = v33;
        sub_255DE5EF0(0, v11, 0);
        v12 = v32;
        v13 = v24 + 32;
        do
        {
          sub_255D7B730(v13, v30);
          sub_255D34630(v30, v31);
          v32 = v12;
          v15 = *(v12 + 16);
          v14 = *(v12 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_255DE5EF0((v14 > 1), v15 + 1, 1);
            v12 = v32;
          }

          *(v12 + 16) = v15 + 1;
          sub_255D34630(v31, v12 + 40 * v15 + 32);
          v13 += 40;
          --v11;
        }

        while (v11);

        v4 = v26;
        v3 = v27;
        v8 = v25;
      }

      else
      {
      }
    }

    LOBYTE(v31[0]) = 2;
    sub_255E3ABA8();
    if (v33)
    {
      v17 = *(v33 + 16);
      if (v17)
      {
        v25 = v8;
        v26 = v4;
        v27 = v3;
        v32 = MEMORY[0x277D84F90];
        v18 = v33;
        sub_255DE5EF0(0, v17, 0);
        v19 = v32;
        v29 = v18;
        v20 = v18 + 32;
        do
        {
          sub_255D7B730(v20, v30);
          sub_255D34630(v30, v31);
          v32 = v19;
          v22 = *(v19 + 16);
          v21 = *(v19 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_255DE5EF0((v21 > 1), v22 + 1, 1);
            v19 = v32;
          }

          *(v19 + 16) = v22 + 1;
          sub_255D34630(v31, v19 + 40 * v22 + 32);
          v20 += 40;
          --v17;
        }

        while (v17);
        (*(v26 + 8))(v7, v27);

        v8 = v25;
      }

      else
      {

        (*(v4 + 8))(v7, v3);
      }
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_255E2A35C()
{
  result = qword_27F7E9520;
  if (!qword_27F7E9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9520);
  }

  return result;
}

unint64_t sub_255E2A3C4()
{
  result = qword_27F7E9528;
  if (!qword_27F7E9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9528);
  }

  return result;
}

unint64_t sub_255E2A41C()
{
  result = qword_27F7E9530;
  if (!qword_27F7E9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9530);
  }

  return result;
}

unint64_t sub_255E2A474()
{
  result = qword_27F7E9538;
  if (!qword_27F7E9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9538);
  }

  return result;
}

uint64_t sub_255E2A4C8()
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

uint64_t sub_255E2A544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
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

uint64_t sub_255E2A58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_255E2A5F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v4 = 0x7961727261;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7465537865646E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x74657366666FLL;
  if (*a2 != 1)
  {
    v8 = 0x7961727261;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7465537865646E69;
  }

  if (*a2)
  {
    v10 = v7;
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

uint64_t sub_255E2A6EC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2A788()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E2A810()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2A8A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E2F270();
  *a2 = result;
  return result;
}

void sub_255E2A8D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v5 = 0x7961727261;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465537865646E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255E2A930()
{
  v1 = 0x74657366666FLL;
  if (*v0 != 1)
  {
    v1 = 0x7961727261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465537865646E69;
  }
}

uint64_t sub_255E2A984@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E2F270();
  *a1 = result;
  return result;
}

uint64_t sub_255E2A9AC(uint64_t a1)
{
  v2 = sub_255E2ED8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2A9E8(uint64_t a1)
{
  v2 = sub_255E2ED8C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E2AA24(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E95C8, &qword_255E61978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2ED8C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E95B8, &qword_255E61970);
    LOBYTE(v32) = 0;
    sub_255D38950(&qword_27F7E95C0, &qword_27F7E95B8, &qword_255E61970);
    sub_255E3ABA8();
    v11 = v39;
    if (v39 == 255)
    {
      v12 = 0xF000000000000007;
      *(&v31 + 1) = 0xE800000000000000;
      *&v31 = 0x7465537865646E69;
      v11 = 1;
    }

    else
    {
      v12 = v38;
      v31 = v37;
    }

    v30 = v11;
    v51 = v11 & 1;
    LOBYTE(v32) = 1;
    sub_255D8B704();
    sub_255E3ABA8();
    v28 = v12;
    if (v39 < 0xFEu)
    {
      v29 = v39;
      v26 = v37;
      v13 = v38;
      v14 = v50;
    }

    else
    {
      v29 = 1;
      v27 = 0xF000000000000007;
      *(&v26 + 1) = 0xE600000000000000;
      v13 = 0x74657366666FLL;
      v14 = &v48 + 8;
    }

    *(v14 - 32) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v52 = 2;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v24 = *(&v48 + 1);
    v25 = v48;
    v23 = v49;
    v15 = v50[0];
    v50[8] = v50[0];
    v32 = v31;
    v16 = v28;
    *&v33 = v28;
    v30 = v51;
    BYTE8(v33) = v51;
    v17 = v26;
    v34 = v26;
    v18 = *(&v26 + 1);
    v19 = v27;
    *&v35 = v27;
    v20 = v29;
    BYTE8(v35) = v29;
    *v36 = v48;
    *&v36[16] = v49;
    v36[24] = v50[0];
    v21 = v35;
    a2[2] = v26;
    a2[3] = v21;
    a2[4] = *v36;
    *(a2 + 73) = *&v36[9];
    v22 = v33;
    *a2 = v32;
    a2[1] = v22;
    sub_255D5CB60(&v32, &v37);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v37 = v31;
    v38 = v16;
    v39 = v30;
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v44 = v25;
    v45 = v24;
    v46 = v23;
    v47 = v15;
    sub_255E2EDE0(&v37);
  }
}

uint64_t sub_255E2AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  sub_255E3A758();
  v7[7] = sub_255E3A748();
  v9 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2B02C, v9, v8);
}

uint64_t sub_255E2B02C()
{
  v24 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];

  v5 = *(v2 + 64);
  v4 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  sub_255D5C258(v5, v4, v6, v7);
  sub_255DDEBF8(v3, v5, v4, v6, v7, &v19);
  if (v19 >> 61 == 4)
  {
    v8 = v0[5];
    v17 = v0[6];
    v18 = v0[4];
    v9 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v0[2] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D38950(&qword_27F7E7A28, &qword_27F7E6160, &unk_255E4DBA0);
    sub_255E3A4A8();
    v19 = v5;
    v20 = v4;
    v21 = v6;
    v22 = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = v0[2];
    v23 = v10 | 0x8000000000000000;
    RemoteStateStore.set(reference:value:)(&v19, &v23);

    sub_255D4DE84(v19, v20, v21, v22);
  }

  else
  {
    sub_255D4DE84(v5, v4, v6, v7);

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Unable to decode array", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_255E2B2F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255D50138;

  return (sub_255E2D990)(a1);
}

unint64_t sub_255E2B3B4(uint64_t a1)
{
  result = sub_255E2B3DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2B3DC()
{
  result = qword_27F7E9540;
  if (!qword_27F7E9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9540);
  }

  return result;
}

uint64_t sub_255E2B430(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7961727261;
  }

  else
  {
    v4 = 0x7465537865646E69;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7961727261;
  }

  else
  {
    v6 = 0x7465537865646E69;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
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

uint64_t sub_255E2B4D4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2B554()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E2B5C0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E2B648(uint64_t *a1@<X8>)
{
  v2 = 0x7465537865646E69;
  if (*v1)
  {
    v2 = 0x7961727261;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E2B684()
{
  if (*v0)
  {
    result = 0x7961727261;
  }

  else
  {
    result = 0x7465537865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_255E2B6C8(uint64_t a1)
{
  v2 = sub_255E2ED08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2B704(uint64_t a1)
{
  v2 = sub_255E2ED08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2B740@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E95A8, &qword_255E61968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2ED08();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E95B8, &qword_255E61970);
  LOBYTE(v28) = 0;
  sub_255D38950(&qword_27F7E95C0, &qword_27F7E95B8, &qword_255E61970);
  sub_255E3ABA8();
  v12 = v33;
  v25 = a2;
  if (v33 == 255)
  {
    v27 = 0xF000000000000007;
    *(&v26 + 1) = 0xE800000000000000;
    *&v26 = 0x7465537865646E69;
    v12 = 1;
  }

  else
  {
    v27 = v32;
    v26 = v31;
  }

  v42 = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
  v43 = 1;
  sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
  sub_255E3ABC8();
  (*(v6 + 8))(v9, v5);
  v13 = *(&v38 + 1);
  v24 = v38;
  v14 = v39;
  v15 = v40;
  v41 = v40;
  v16 = v26;
  v28 = v26;
  v17 = v27;
  *&v29 = v27;
  v18 = v42;
  BYTE8(v29) = v42;
  *v30 = v38;
  *&v30[16] = v39;
  v30[24] = v40;
  v19 = v26;
  v20 = v29;
  v21 = v38;
  v22 = v25;
  *(v25 + 41) = *&v30[9];
  v22[1] = v20;
  v22[2] = v21;
  *v22 = v19;
  sub_255D5CC94(&v28, &v31);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v24;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  return sub_255E2ED5C(&v31);
}

uint64_t sub_255E2BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_255E3A758();
  v6[6] = sub_255E3A748();
  v8 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2BB84, v8, v7);
}

uint64_t sub_255E2BB84()
{
  v23 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];

  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  sub_255D5C258(v5, v4, v6, v7);
  sub_255DDEBF8(v3, v5, v4, v6, v7, &v18);
  if (v18 >> 61 == 4)
  {
    v16 = v0[5];
    v17 = v0[4];
    v8 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v0[2] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D38950(&qword_27F7E7A28, &qword_27F7E6160, &unk_255E4DBA0);
    sub_255D38950(&qword_27F7E7A38, &qword_27F7E6160, &unk_255E4DBA0);
    sub_255E3A808();
    v18 = v5;
    v19 = v4;
    v20 = v6;
    v21 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v0[2];
    v22 = v9 | 0x8000000000000000;
    RemoteStateStore.set(reference:value:)(&v18, &v22);

    sub_255D4DE84(v18, v19, v20, v21);
  }

  else
  {
    sub_255D4DE84(v5, v4, v6, v7);

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
      *v13 = 0;
      _os_log_impl(&dword_255D2E000, v11, v12, "Unable to decode array", v13, 2u);
      MEMORY[0x259C4F9E0](v13, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_255E2BE70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255D5D0A4;

  return (sub_255E2E0A8)(a1);
}

unint64_t sub_255E2BF34(uint64_t a1)
{
  result = sub_255E2BF5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2BF5C()
{
  result = qword_27F7E9548;
  if (!qword_27F7E9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9548);
  }

  return result;
}

uint64_t sub_255E2BFB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656D656C4577656ELL;
  }

  else
  {
    v4 = 0x7961727261;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEA0000000000746ELL;
  }

  if (*a2)
  {
    v6 = 0x656D656C4577656ELL;
  }

  else
  {
    v6 = 0x7961727261;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000746ELL;
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

uint64_t sub_255E2C058()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2C0DC()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E2C14C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E2C1D8(uint64_t *a1@<X8>)
{
  v2 = 0x7961727261;
  if (*v1)
  {
    v2 = 0x656D656C4577656ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E2C218()
{
  if (*v0)
  {
    result = 0x656D656C4577656ELL;
  }

  else
  {
    result = 0x7961727261;
  }

  *v0;
  return result;
}

uint64_t sub_255E2C260(uint64_t a1)
{
  v2 = sub_255E2EC84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2C29C(uint64_t a1)
{
  v2 = sub_255E2EC84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2C2D8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9598, &qword_255E61960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2EC84();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
  LOBYTE(v27) = 0;
  sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
  sub_255E3ABC8();
  v24 = v30;
  v25 = v31;
  v41 = v32;
  v42 = 1;
  sub_255E3ABC8();
  (*(v6 + 8))(v9, v5);
  v11 = *(&v37 + 1);
  v23 = v37;
  v12 = v38;
  v13 = v39;
  v40 = v39;
  v14 = v24;
  v27 = v24;
  v15 = v25;
  *&v28 = v25;
  v16 = v41;
  BYTE8(v28) = v41;
  *v29 = v37;
  *&v29[16] = v38;
  v29[24] = v39;
  v17 = v24;
  v18 = v28;
  v19 = v37;
  v20 = v26;
  *(v26 + 41) = *&v29[9];
  v20[1] = v18;
  v20[2] = v19;
  *v20 = v17;
  sub_255E2E800(&v27, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v23;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  return sub_255E2ECD8(&v30);
}

uint64_t sub_255E2C5F8(uint64_t a1)
{
  v3 = v2;
  v26 = *(v1 + 8);
  v27 = *v1;
  v25 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v28 = *(v1 + 56);
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A868();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v5;
    v13 = a1;
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_255D2E000, v10, v11, "performing AppendAction", v14, 2u);
    v15 = v14;
    a1 = v13;
    v5 = v12;
    v3 = v2;
    MEMORY[0x259C4F9E0](v15, -1, -1);
  }

  result = sub_255DDEBF8(a1, v6, v7, v8, v28, &v29);
  if (!v3)
  {
    v17 = v29;
    sub_255DDEBF8(a1, v27, v26, v25, v5, &v29);
    if (v29 >> 61 == 4)
    {
      v18 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_255DE55B4(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_255DE55B4((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      *&v18[8 * v20 + 32] = v17;
      v29 = v27;
      v30 = v26;
      v31 = v25;
      v32 = v5;
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      v33 = v21 | 0x8000000000000000;
      sub_255D5C258(v27, v26, v25, v5);
      RemoteStateStore.set(reference:value:)(&v29, &v33);

      return sub_255D4DE84(v29, v30, v31, v32);
    }

    else
    {

      v22 = sub_255E38688();
      v23 = sub_255E3A848();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_255D2E000, v22, v23, "Unable to decode array", v24, 2u);
        MEMORY[0x259C4F9E0](v24, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_255E2C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_255E3A758();
  v5[4] = sub_255E3A748();
  v7 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2C9F8, v7, v6);
}

uint64_t sub_255E2C9F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v6 = *v3;
  v7 = v3[1];
  *v8 = v3[2];
  *&v8[9] = *(v3 + 41);
  sub_255E2C5F8(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_255E2CA9C(uint64_t a1)
{
  v18 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = v1[1];
  v15 = *v1;
  v16 = v6;
  v17[0] = v1[2];
  *(v17 + 9) = *(v1 + 41);
  v7 = sub_255E3A778();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_255E3A758();
  sub_255E2E800(&v15, &v14);

  v8 = sub_255E3A748();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = v16;
  *(v9 + 32) = v15;
  *(v9 + 48) = v11;
  *(v9 + 64) = v17[0];
  *(v9 + 73) = *(v17 + 9);
  *(v9 + 96) = a1;
  sub_255D51B90(0, 0, v5, &unk_255E61930, v9);

  v12 = *(v2 + 8);

  return v12();
}

unint64_t sub_255E2CC5C(uint64_t a1)
{
  result = sub_255E2CC84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2CC84()
{
  result = qword_27F7E9550;
  if (!qword_27F7E9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9550);
  }

  return result;
}

uint64_t sub_255E2CCD8()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E2CD3C()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E2CD88@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255E2CE08@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255E2CE60(uint64_t a1)
{
  v2 = sub_255E2EC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2CE9C(uint64_t a1)
{
  v2 = sub_255E2EC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2CED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9588, &unk_255E61950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2EC30();
  sub_255E3AE28();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_255E2D098(uint64_t a1)
{
  v3 = v2;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A868();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v8;
    v13 = v7;
    v14 = v6;
    v15 = v5;
    v16 = a1;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_255D2E000, v10, v11, "performing RemoveLastAction", v17, 2u);
    v18 = v17;
    a1 = v16;
    v5 = v15;
    v6 = v14;
    v7 = v13;
    v8 = v12;
    v3 = v2;
    MEMORY[0x259C4F9E0](v18, -1, -1);
  }

  sub_255DDEBF8(a1, v5, v6, v7, v8, &v30);
  if (!v3)
  {
    v19 = v30;
    if (v30 >> 61 != 4)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
      sub_255D7B470();
      swift_allocError();
      *v21 = v19;
      v21[1] = v20;
      swift_willThrow();
      return;
    }

    sub_255DDEBF8(a1, v5, v6, v7, v8, &v30);
    if (v30 >> 61 == 4)
    {
      v22 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      if (*(v22 + 2))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_255DF5ECC(v22);
        }

        v23 = *(v22 + 2);
        if (v23)
        {
          v24 = v23 - 1;
          v25 = *&v22[8 * v24 + 32];
          *(v22 + 2) = v24;

          v30 = v5;
          v31 = v6;
          v32 = v7;
          v33 = v8;
          v26 = swift_allocObject();
          *(v26 + 16) = v22;
          v34 = v26 | 0x8000000000000000;
          sub_255D5C258(v5, v6, v7, v8);
          RemoteStateStore.set(reference:value:)(&v30, &v34);

          sub_255D4DE84(v30, v31, v32, v33);
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
    }

    v27 = sub_255E38688();
    v28 = sub_255E3A848();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_255D2E000, v27, v28, "Unable to decode array, or array length is 0", v29, 2u);
      MEMORY[0x259C4F9E0](v29, -1, -1);
    }
  }
}

uint64_t sub_255E2D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  sub_255E3A758();
  *(v8 + 48) = sub_255E3A748();
  v10 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2D4B8, v10, v9);
}

uint64_t sub_255E2D4B8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v7 = *(v0 + 16);

  sub_255E2D098(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_255E2D564(uint64_t a1)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = sub_255E3A778();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_255E3A758();
  sub_255D5C258(v6, v7, v8, v9);

  v11 = sub_255E3A748();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  *(v12 + 64) = a1;
  sub_255D51B90(0, 0, v5, &unk_255E61948, v12);

  v14 = *(v2 + 8);

  return v14();
}

unint64_t sub_255E2D724(uint64_t a1)
{
  result = sub_255E2D74C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D74C()
{
  result = qword_27F7E9558;
  if (!qword_27F7E9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9558);
  }

  return result;
}

unint64_t sub_255E2D7A0(uint64_t a1)
{
  result = sub_255E2D7C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D7C8()
{
  result = qword_27F7E9560;
  if (!qword_27F7E9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9560);
  }

  return result;
}

unint64_t sub_255E2D81C(uint64_t a1)
{
  result = sub_255E2D844();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D844()
{
  result = qword_27F7E9568;
  if (!qword_27F7E9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9568);
  }

  return result;
}

unint64_t sub_255E2D898(uint64_t a1)
{
  result = sub_255E2D8C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D8C0()
{
  result = qword_27F7E9570;
  if (!qword_27F7E9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9570);
  }

  return result;
}

unint64_t sub_255E2D914(uint64_t a1)
{
  result = sub_255E2D93C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D93C()
{
  result = qword_27F7E9578;
  if (!qword_27F7E9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9578);
  }

  return result;
}

uint64_t sub_255E2D990(uint64_t a1)
{
  *(v2 + 288) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  v4 = sub_255E385F8();
  *(v2 + 304) = v4;
  v5 = *(v4 - 8);
  *(v2 + 312) = v5;
  *(v2 + 320) = *(v5 + 64);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  v6 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v6;
  *(v2 + 80) = v1[4];
  *(v2 + 89) = *(v1 + 73);
  v7 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v7;

  return MEMORY[0x2822009F8](sub_255E2DAC8, 0, 0);
}

uint64_t sub_255E2DAC8()
{
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v1 = sub_255E386A8();
  __swift_project_value_buffer(v1, qword_27F8152D8);
  v2 = sub_255E38688();
  v3 = sub_255E3A868();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255D2E000, v2, v3, "performing MoveAction", v4, 2u);
    MEMORY[0x259C4F9E0](v4, -1, -1);
  }

  v5 = *(v0 + 288);

  v6 = sub_255DDF8C4(v5, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v7 = *(v0 + 336);
  v8 = *(v0 + 304);
  sub_255E2DEC0();
  sub_255E3A918();
  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = (v6 + 32);
    do
    {
      v11 = *(v0 + 336);
      v12 = *(v0 + 304);
      v13 = *v10++;
      *(v0 + 280) = v13;
      sub_255E3A8F8();
      --v9;
    }

    while (v9);
  }

  v14 = *(v0 + 344);
  v15 = *(v0 + 328);
  v35 = *(v0 + 320);
  v16 = *(v0 + 304);
  v17 = *(v0 + 312);
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);
  v33 = v18;
  v36 = *(v17 + 32);
  v36(v14);
  *(v0 + 208) = *(v0 + 48);
  *(v0 + 217) = *(v0 + 57);
  *v37 = *(v0 + 48);
  *&v37[9] = *(v0 + 57);
  sub_255E2DF18(v0 + 208, v0 + 240);
  v20 = sub_255D8F9E4(v19);
  v22 = v21;
  sub_255D4CB98(*v37, *&v37[8], *&v37[16], v37[24]);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v20;
  }

  v34 = v23;
  v24 = sub_255E3A778();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  (*(v17 + 16))(v15, v14, v16);
  sub_255E3A758();
  sub_255D5CB60(v0 + 16, v0 + 112);

  v25 = sub_255E3A748();
  v26 = (*(v17 + 80) + 136) & ~*(v17 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v25;
  *(v27 + 24) = v28;
  v29 = *(v0 + 64);
  *(v27 + 64) = *(v0 + 48);
  *(v27 + 80) = v29;
  *(v27 + 96) = *(v0 + 80);
  *(v27 + 105) = *(v0 + 89);
  v30 = *(v0 + 32);
  *(v27 + 32) = *(v0 + 16);
  *(v27 + 48) = v30;
  *(v27 + 128) = v19;
  (v36)(v27 + v26, v15, v16);
  *(v27 + ((v35 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  sub_255D51B90(0, 0, v33, &unk_255E618F8, v27);

  (*(v17 + 8))(v14, v16);

  v31 = *(v0 + 8);

  return v31();
}

unint64_t sub_255E2DEC0()
{
  result = qword_27F7E9580;
  if (!qword_27F7E9580)
  {
    sub_255E385F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9580);
  }

  return result;
}

uint64_t sub_255E2DF74(uint64_t a1)
{
  v4 = *(sub_255E385F8() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[16];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_255D50138;

  return sub_255E2AF90(a1, v6, v7, (v1 + 4), v8, v1 + v5, v9);
}

uint64_t sub_255E2E0A8(uint64_t a1)
{
  *(v2 + 160) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0) - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v4 = sub_255E385F8();
  *(v2 + 176) = v4;
  v5 = *(v4 - 8);
  *(v2 + 184) = v5;
  *(v2 + 192) = *(v5 + 64);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v6 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = v1[2];
  *(v2 + 57) = *(v1 + 41);

  return MEMORY[0x2822009F8](sub_255E2E1D8, 0, 0);
}

uint64_t sub_255E2E1D8()
{
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v1 = sub_255E386A8();
  __swift_project_value_buffer(v1, qword_27F8152D8);
  v2 = sub_255E38688();
  v3 = sub_255E3A868();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255D2E000, v2, v3, "performing DeleteAction", v4, 2u);
    MEMORY[0x259C4F9E0](v4, -1, -1);
  }

  v5 = *(v0 + 160);

  v6 = sub_255DDF8C4(v5, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v7 = *(v0 + 208);
  v8 = *(v0 + 176);
  sub_255E2DEC0();
  sub_255E3A918();
  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = (v6 + 32);
    do
    {
      v11 = *(v0 + 208);
      v12 = *(v0 + 176);
      v13 = *v10++;
      *(v0 + 152) = v13;
      sub_255E3A8F8();
      --v9;
    }

    while (v9);
  }

  v14 = *(v0 + 216);
  v15 = *(v0 + 200);
  v29 = v15;
  v16 = *(v0 + 176);
  v17 = *(v0 + 184);
  v19 = *(v0 + 160);
  v18 = *(v0 + 168);
  v30 = v18;
  v20 = *(v17 + 32);
  v20(v14);
  v21 = sub_255E3A778();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  (*(v17 + 16))(v15, v14, v16);
  sub_255E3A758();
  sub_255D5CC94(v0 + 16, v0 + 80);

  v22 = sub_255E3A748();
  v23 = (*(v17 + 80) + 104) & ~*(v17 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 73) = *(v0 + 57);
  *(v24 + 96) = v19;
  (v20)(v24 + v23, v29, v16);
  sub_255D51B90(0, 0, v30, &unk_255E61918, v24);

  (*(v17 + 8))(v14, v16);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_255E2E550(uint64_t a1)
{
  v4 = *(sub_255E385F8() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D5D0A4;

  return sub_255E2BAE8(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t sub_255E2E64C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = v1[1];
  v17 = *v1;
  v18 = v7;
  v19[0] = v1[2];
  *(v19 + 9) = *(v1 + 41);
  if ([objc_opt_self() isMainThread])
  {
    v8 = v1[1];
    v15[0] = *v1;
    v15[1] = v8;
    v16[0] = v1[2];
    *(v16 + 9) = *(v1 + 41);
    return sub_255E2C5F8(a1);
  }

  else
  {
    v10 = sub_255E3A778();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_255E3A758();
    sub_255E2E800(&v17, v15);

    v11 = sub_255E3A748();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    v14 = v18;
    *(v12 + 32) = v17;
    *(v12 + 48) = v14;
    *(v12 + 64) = v19[0];
    *(v12 + 73) = *(v19 + 9);
    *(v12 + 96) = a1;
    sub_255D51B90(0, 0, v6, &unk_255E61928, v12);
  }
}

uint64_t sub_255E2E838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return sub_255E2C960(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_39Tm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D4DE84(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D4DE84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v2 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_255E2E958(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  if ([objc_opt_self() isMainThread])
  {
    v15[0] = v8;
    v15[1] = v7;
    v15[2] = v9;
    v16 = v10;
    sub_255E2D098(a1);
  }

  else
  {
    v11 = sub_255E3A778();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_255E3A758();
    sub_255D5C258(v8, v7, v9, v10);

    v12 = sub_255E3A748();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 32) = v8;
    *(v13 + 40) = v7;
    *(v13 + 48) = v9;
    *(v13 + 56) = v10;
    *(v13 + 64) = a1;
    sub_255D51B90(0, 0, v6, &unk_255E61940, v13);
  }
}

uint64_t sub_255E2EB00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_255D5D0A4;

  return sub_255E2D418(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_255D4DE84(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_255E2EC30()
{
  result = qword_27F7E9590;
  if (!qword_27F7E9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9590);
  }

  return result;
}

unint64_t sub_255E2EC84()
{
  result = qword_27F7E95A0;
  if (!qword_27F7E95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E95A0);
  }

  return result;
}

unint64_t sub_255E2ED08()
{
  result = qword_27F7E95B0;
  if (!qword_27F7E95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E95B0);
  }

  return result;
}

unint64_t sub_255E2ED8C()
{
  result = qword_27F7E95D0;
  if (!qword_27F7E95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E95D0);
  }

  return result;
}

unint64_t sub_255E2EE54()
{
  result = qword_27F7E95D8;
  if (!qword_27F7E95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E95D8);
  }

  return result;
}

unint64_t sub_255E2EEAC()
{
  result = qword_27F7E95E0;
  if (!qword_27F7E95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E95E0);
  }

  return result;
}

unint64_t sub_255E2EF04()
{
  result = qword_27F7E95E8;
  if (!qword_27F7E95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E95E8);
  }

  return result;
}

unint64_t sub_255E2EF5C()
{
  result = qword_27F7E95F0;
  if (!qword_27F7E95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E95F0);
  }

  return result;
}

unint64_t sub_255E2EFB4()
{
  result = qword_27F7E95F8;
  if (!qword_27F7E95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E95F8);
  }

  return result;
}

unint64_t sub_255E2F00C()
{
  result = qword_27F7E9600;
  if (!qword_27F7E9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9600);
  }

  return result;
}

unint64_t sub_255E2F064()
{
  result = qword_27F7E9608;
  if (!qword_27F7E9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9608);
  }

  return result;
}

unint64_t sub_255E2F0BC()
{
  result = qword_27F7E9610;
  if (!qword_27F7E9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9610);
  }

  return result;
}

unint64_t sub_255E2F114()
{
  result = qword_27F7E9618;
  if (!qword_27F7E9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9618);
  }

  return result;
}

unint64_t sub_255E2F16C()
{
  result = qword_27F7E9620;
  if (!qword_27F7E9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9620);
  }

  return result;
}

unint64_t sub_255E2F1C4()
{
  result = qword_27F7E9628;
  if (!qword_27F7E9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9628);
  }

  return result;
}

unint64_t sub_255E2F21C()
{
  result = qword_27F7E9630;
  if (!qword_27F7E9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9630);
  }

  return result;
}

uint64_t sub_255E2F270()
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

uint64_t sub_255E2F2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_255E2F32C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_255E2F3AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 8))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_255E2F404@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_255DBFA2C(a2, *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
  if (v4)
  {

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    v42 = v11;
    v43 = v10;
    v54 = v9;
    v13 = a1[3];
    v40 = a1[4];
    v41 = __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    v44 = *v5;
    v45 = v14;
    v46 = v15;
    LOBYTE(v47) = v16;
    sub_255D3E5A8(v44, v14, v15, v16);
    v34 = a3;
    v17 = StringResolvable.resolved(with:)(a2);
    v19 = v18;
    v39 = 0;
    v20 = sub_255D38060(v44, v45, v46, v47);
    v35 = v19;
    v38 = &v33;
    v52 = v17;
    v53 = v19;
    v21 = MEMORY[0x28223BE20](v20);
    v37 = v32;
    v32[2] = v5;
    MEMORY[0x28223BE20](v21);
    v36 = v31;
    v31[2] = v5;
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
    v24 = sub_255D6EEE8();
    v25 = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
    v26 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
    v44 = v13;
    v45 = MEMORY[0x277D837D0];
    v46 = v22;
    v47 = v23;
    v27 = v13;
    v28 = v40;
    v48 = v40;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v30 = v34;
    v34[3] = OpaqueTypeMetadata2;
    v44 = v27;
    v45 = MEMORY[0x277D837D0];
    v46 = v22;
    v47 = v23;
    v48 = v28;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    v30[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_255E39BA8();
  }
}

uint64_t sub_255E2F74C(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v1 = *(a1 + 64);
  }

  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255E2F848@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D4FB3C(a1 + 72, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    result = sub_255D395E4(v7, &qword_27F7E6558, &qword_255E3DD80);
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255E2F8F8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2F9C0()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E2FA74()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2FB38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E3042C();
  *a2 = result;
  return result;
}

void sub_255E2FB68(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0x736E6F69746361;
  if (*v1 != 2)
  {
    v4 = 0x6567617373656DLL;
  }

  if (*v1)
  {
    v3 = 0x6E65736572507369;
    v2 = 0xEB00000000646574;
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
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_255E2FBEC()
{
  v1 = 0x656C746974;
  v2 = 0x736E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6E65736572507369;
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

uint64_t sub_255E2FC6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E3042C();
  *a1 = result;
  return result;
}

uint64_t sub_255E2FC94(uint64_t a1)
{
  v2 = sub_255E30258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2FCD0(uint64_t a1)
{
  v2 = sub_255E30258();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E2FD0C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9640, &qword_255E62228);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E30258();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v22 = v5;
    v10 = v23;
    v47 = 0;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v21[6] = *(&v24 + 1);
    v21[7] = v24;
    v34 = v24;
    v21[5] = v25;
    v35 = v25;
    v46 = BYTE8(v25);
    v36 = BYTE8(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    v47 = 1;
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    sub_255E3ABC8();
    v21[3] = v25;
    v21[4] = v24;
    v37 = v24;
    v21[2] = *(&v24 + 1);
    v38 = v25;
    v39 = BYTE8(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v47 = 2;
    sub_255D5F038();
    sub_255E3ABA8();
    v11 = v8;
    v12 = a1;
    v21[0] = v11;
    if (v24)
    {
      v13 = sub_255D48968(v24);
    }

    else
    {
      v13 = 0;
    }

    v21[1] = v13;
    v40 = v13;
    v47 = 3;
    sub_255D447E8();
    sub_255E3ABA8();
    if (*(&v24 + 1))
    {
      v14 = sub_255D44794();
      v15 = swift_allocObject();
      v16 = v31;
      *(v15 + 112) = v30;
      *(v15 + 128) = v16;
      *(v15 + 144) = v32;
      *(v15 + 160) = v33;
      v17 = v27;
      *(v15 + 48) = v26;
      *(v15 + 64) = v17;
      v18 = v29;
      *(v15 + 80) = v28;
      *(v15 + 96) = v18;
      v19 = v25;
      *(v15 + 16) = v24;
      *(v15 + 32) = v19;
      (*(v22 + 8))(v21[0], v4);
      v20 = &type metadata for ViewContent;
    }

    else
    {
      (*(v22 + 8))(v21[0], v4);
      sub_255D395E4(&v24, &qword_27F7E6C20, &qword_255E58D80);
      v20 = 0;
      v14 = 0;
      v15 = 0;
    }

    v41 = v15;
    v42 = 0;
    v43 = 0;
    v44 = v20;
    v45 = v14;
    sub_255E302AC(&v34, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    sub_255E302E4(&v34);
  }
}

unint64_t sub_255E301DC(uint64_t a1)
{
  result = sub_255E30204();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E30204()
{
  result = qword_27F7E9638;
  if (!qword_27F7E9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9638);
  }

  return result;
}

unint64_t sub_255E30258()
{
  result = qword_27F7E9648;
  if (!qword_27F7E9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9648);
  }

  return result;
}

unint64_t sub_255E30328()
{
  result = qword_27F7E9650;
  if (!qword_27F7E9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9650);
  }

  return result;
}

unint64_t sub_255E30380()
{
  result = qword_27F7E9658;
  if (!qword_27F7E9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9658);
  }

  return result;
}

unint64_t sub_255E303D8()
{
  result = qword_27F7E9660;
  if (!qword_27F7E9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9660);
  }

  return result;
}

uint64_t sub_255E3042C()
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

uint64_t sub_255E30488(uint64_t a1)
{
  v2 = sub_255E308C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E304C4(uint64_t a1)
{
  v2 = sub_255E308C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E30500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9670, &qword_255E62400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E308C0();
  sub_255E3AE28();
  if (!v2)
  {
    v14 = &type metadata for ViewContent;
    v15 = sub_255D44794();
    *&v13 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    sub_255D34630(&v13, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E306BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3A228();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8058, &qword_255E53888);
  a2[3] = sub_255E38AE8();
  sub_255E3085C();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39C38();
}

unint64_t sub_255E307E0(uint64_t a1)
{
  result = sub_255E30808();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E30808()
{
  result = qword_27F7E9668;
  if (!qword_27F7E9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9668);
  }

  return result;
}

unint64_t sub_255E3085C()
{
  result = qword_27F7E8060;
  if (!qword_27F7E8060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8058, &qword_255E53888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8060);
  }

  return result;
}

unint64_t sub_255E308C0()
{
  result = qword_27F7E9678;
  if (!qword_27F7E9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9678);
  }

  return result;
}

unint64_t sub_255E30928()
{
  result = qword_27F7E9680;
  if (!qword_27F7E9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9680);
  }

  return result;
}

unint64_t sub_255E30980()
{
  result = qword_27F7E9688;
  if (!qword_27F7E9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9688);
  }

  return result;
}

unint64_t sub_255E309D8()
{
  result = qword_27F7E9690;
  if (!qword_27F7E9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9690);
  }

  return result;
}

void sub_255E30A94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 36);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_255E30CC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_255D667C4();
  if (v7 <= 0x3F)
  {
    sub_255E30A94(319, &qword_27F7E96B0, &type metadata for StringResolvable, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_255E30A94(319, &qword_27F7E6E28, &type metadata for AnyViewModifier, MEMORY[0x277D83940]);
      if (v9 <= 0x3F)
      {
        sub_255D66878();
        if (v10 <= 0x3F)
        {
          sub_255E30E00(319, a4, a5);
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_255E30E00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255E38878();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_255E30E90()
{
  v1 = *(v0 + 80);
  if (v1 > 0xFD)
  {
    return 0xD000000000000016;
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = *(v0 + 80);
  if (*(v0 + 96))
  {
    sub_255D94C04(v2, v3, v4, v1);

    v6 = StringResolvable.resolved(with:)(v5);
    sub_255D38060(v9, v10, v11, v12);

    return v6;
  }

  else
  {
    v8 = *(v0 + 104);
    sub_255D3E5A8(v2, v3, v4, v1);
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E30FCC@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v2 = sub_255E38858();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = v1[5];
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  v13 = v1[12];
  if (v13)
  {
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;

    *(inited + 32) = sub_255E30E90();
    *(inited + 40) = v16;
    sub_255E33544(&qword_27F7E9700, &qword_255E62D68, type metadata accessor for ColorSchemeReader, MEMORY[0x277CDF3E0], v9);
    (*(v3 + 104))(v7, *MEMORY[0x277CDF3D0], v2);
    v17 = sub_255E38848();
    v18 = *(v3 + 8);
    v18(v7, v2);
    v18(v9, v2);
    if (v17)
    {
      v19 = 0x746867696CLL;
    }

    else
    {
      v19 = 1802658148;
    }

    if (v17)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    *(inited + 48) = v21;
    v22 = sub_255DC53CC(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
    v23 = sub_255DC5124(MEMORY[0x277D84F90]);
    v24 = type metadata accessor for RemoteStateStore(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v13, v22, v23);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E386C8();
    v29 = v31;
    *v31 = v14;
    v29[1] = result;
    v29[2] = v27;
  }

  else
  {
    v30 = v1[13];
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E31338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E34EE0();
  *a2 = result;
  return result;
}

uint64_t sub_255E31368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E34EE0();
  *a1 = result;
  return result;
}

uint64_t sub_255E31390(uint64_t a1)
{
  v2 = sub_255E34964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E313CC(uint64_t a1)
{
  v2 = sub_255E34964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E31408@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9748, &qword_255E62DE0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for ColorSchemeReader(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 11) = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v40 = sub_255E38CC8();
  *(v16 + 12) = v40;
  *(v16 + 13) = v17;
  v18 = *(v13 + 44);
  *&v16[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9700, &qword_255E62D68);
  swift_storeEnumTagMultiPayload();
  v20 = a1[3];
  v19 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_255E34964();
  v21 = v41;
  sub_255E3AE28();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v42);

    return sub_255D395E4(&v16[v18], &qword_27F7E96C0, &qword_255E62A48);
  }

  else
  {
    v23 = v37;
    v22 = v38;
    LOBYTE(v43) = 0;
    v24 = sub_255E3AB88();
    v27 = v25;
    v41 = v8;
    if (!v25)
    {
      v28 = v7;
      sub_255E385C8();
      v29 = sub_255E385B8();
      v31 = v30;
      (*(v23 + 8))(v28, v36);
      v27 = v31;
      v24 = v29;
    }

    *v16 = v24;
    *(v16 + 1) = v27;
    v47 = 1;
    v45 = &type metadata for ViewContent;
    v46 = sub_255D44794();
    *&v43 = swift_allocObject();
    sub_255D447E8();
    v32 = v41;
    sub_255E3ABC8();
    sub_255D34630(&v43, (v16 + 16));
    v47 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v39 + 8))(v11, v32);
    v33 = v44;
    v34 = v45;
    *(v16 + 56) = v43;
    *(v16 + 9) = v33;
    v16[80] = v34;
    sub_255E349B8(v16, v22, type metadata accessor for ColorSchemeReader);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    return sub_255E34A20(v16, type metadata accessor for ColorSchemeReader);
  }
}

uint64_t sub_255E31904()
{
  sub_255E319BC(&qword_27F7E8D10, type metadata accessor for ColorSchemeReader);
  sub_255E319BC(&qword_27F7E6950, type metadata accessor for ColorSchemeReader);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255E319BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255E31A04()
{
  v1 = 0x797274656D6F6567;
  v2 = *(v0 + 80);
  if (v2 > 0xFD)
  {
    return v1;
  }

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = *(v0 + 80);
  if (*(v0 + 96))
  {
    sub_255D94C04(v3, v4, v5, v2);

    v7 = StringResolvable.resolved(with:)(v6);
    sub_255D38060(v10, v11, v12, v13);

    return v7;
  }

  v9 = *(v0 + 104);
  sub_255D3E5A8(v3, v4, v5, v2);
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255E31B44@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v38 = (*(v4 + 24))(v3, v4);
  v5 = a1[12];
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;

    v37 = v5;
    *(inited + 32) = sub_255E31A04();
    *(inited + 40) = v7;
    v36 = swift_allocObject();
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_255E558C0;
    *(v8 + 32) = 1702521203;
    *(v8 + 40) = 0xE400000000000000;
    v9 = swift_allocObject();
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_255E558C0;
    *(v10 + 32) = 0x6874646977;
    *(v10 + 40) = 0xE500000000000000;
    v11 = swift_allocObject();
    sub_255E38938();
    *(v11 + 16) = v12;
    *(v10 + 48) = v11 | 0x4000000000000000;
    *(v10 + 56) = 0x746867696568;
    *(v10 + 64) = 0xE600000000000000;
    v13 = swift_allocObject();
    sub_255E38938();
    *(v13 + 16) = v14;
    *(v10 + 72) = v13 | 0x4000000000000000;
    v15 = sub_255DC53CC(v10);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F40, &unk_255E559F0);
    swift_arrayDestroy();
    *(v9 + 16) = v15;
    *(v8 + 48) = v9 | 0xA000000000000000;
    strcpy((v8 + 56), "safeAreaInsets");
    *(v8 + 71) = -18;
    v16 = swift_allocObject();
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_255E62520;
    *(v17 + 32) = 7368564;
    *(v17 + 40) = 0xE300000000000000;
    v18 = swift_allocObject();
    sub_255E38928();
    *(v18 + 16) = v19;
    *(v17 + 48) = v18 | 0x4000000000000000;
    *(v17 + 56) = 0x676E696C69617274;
    *(v17 + 64) = 0xE800000000000000;
    v20 = swift_allocObject();
    sub_255E38928();
    *(v20 + 16) = v21;
    *(v17 + 72) = v20 | 0x4000000000000000;
    *(v17 + 80) = 0x6D6F74746F62;
    *(v17 + 88) = 0xE600000000000000;
    v22 = swift_allocObject();
    sub_255E38928();
    *(v22 + 16) = v23;
    *(v17 + 96) = v22 | 0x4000000000000000;
    *(v17 + 104) = 0x676E696461656CLL;
    *(v17 + 112) = 0xE700000000000000;
    v24 = swift_allocObject();
    sub_255E38928();
    *(v24 + 16) = v25;
    *(v17 + 120) = v24 | 0x4000000000000000;
    v26 = sub_255DC53CC(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v16 + 16) = v26;
    *(v8 + 72) = v16 | 0xA000000000000000;
    v27 = sub_255DC53CC(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v36 + 16) = v27;
    *(inited + 48) = v36 | 0xA000000000000000;
    v28 = sub_255DC53CC(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
    v29 = sub_255DC5124(MEMORY[0x277D84F90]);
    v30 = type metadata accessor for RemoteStateStore(0);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v37, v28, v29);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E386C8();
    *a2 = v38;
    a2[1] = result;
    a2[2] = v33;
  }

  else
  {
    v35 = a1[13];
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E32044@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E34F2C();
  *a2 = result;
  return result;
}

uint64_t sub_255E32074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E34F2C();
  *a1 = result;
  return result;
}

uint64_t sub_255E3209C(uint64_t a1)
{
  v2 = sub_255E348E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E320D8(uint64_t a1)
{
  v2 = sub_255E348E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E32114@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_255E385D8();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9738, &qword_255E62DD8);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v37 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v40 = sub_255E38CC8();
  v38 = v40;
  v39 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E348E0();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = v25;
    v15 = v26;
    LOBYTE(v29) = 0;
    v16 = sub_255E3AB88();
    if (!v17)
    {
      v19 = v7;
      sub_255E385C8();
      v20 = sub_255E385B8();
      v24 = v21;
      (*(v14 + 8))(v19, v4);
      v17 = v24;
      v16 = v20;
    }

    v33[0] = v16;
    v33[1] = v17;
    v28 = 1;
    v31 = &type metadata for ViewContent;
    v32 = sub_255D44794();
    *&v29 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    v22 = v27;
    sub_255D34630(&v29, v34);
    v28 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v22 + 8))(v11, v8);
    *&v34[40] = v29;
    v35 = v30;
    v36 = v31;
    sub_255D4E898(v33, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255E34934(v33);
  }
}

uint64_t sub_255E32538@<X0>(uint64_t *a1@<X8>)
{
  sub_255D4E898(v1, v8);
  v3 = swift_allocObject();
  v4 = v8[5];
  v3[5] = v8[4];
  v3[6] = v4;
  v3[7] = v8[6];
  v5 = v8[1];
  v3[1] = v8[0];
  v3[2] = v5;
  v6 = v8[3];
  v3[3] = v8[2];
  v3[4] = v6;
  *&v8[0] = sub_255D4E8F4;
  *(&v8[0] + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6958, &unk_255E3E260);
  sub_255D38950(&qword_27F7E6960, &qword_27F7E6958, &unk_255E3E260);
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

__n128 sub_255E32618@<Q0>(uint64_t (**a1)@<X0>(uint64_t *@<X8>)@<X8>)
{
  sub_255D4E898(v1, v7);
  v3 = swift_allocObject();
  v4 = v7[5];
  *(v3 + 80) = v7[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = v7[6];
  v5 = v7[1];
  *(v3 + 16) = v7[0];
  *(v3 + 32) = v5;
  result = v7[3];
  *(v3 + 48) = v7[2];
  *(v3 + 64) = result;
  *a1 = sub_255E35024;
  a1[1] = v3;
  return result;
}

uint64_t sub_255E326F4()
{
  v1 = 0x69566C6C6F726373;
  v2 = *(v0 + 80);
  if (v2 > 0xFD)
  {
    return v1;
  }

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = *(v0 + 80);
  if (*(v0 + 96))
  {
    sub_255D94C04(v3, v4, v5, v2);

    v7 = StringResolvable.resolved(with:)(v6);
    sub_255D38060(v10, v11, v12, v13);

    return v7;
  }

  v9 = *(v0 + 104);
  sub_255D3E5A8(v3, v4, v5, v2);
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255E32840@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[5];
  v7 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v9 = a2[14];
  if (v9)
  {
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9708, &unk_255E62D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;

    *(inited + 32) = sub_255E326F4();
    *(inited + 40) = v12;
    v13 = sub_255E38B18();
    *(inited + 72) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, a1, v13);
    v15 = sub_255DC7634(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E8168, &qword_255E53918);
    v16 = sub_255DC5124(MEMORY[0x277D84F90]);
    v17 = type metadata accessor for LocalStateStore(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = LocalStateStore.init(parent:initialSet:referenceKeyMap:)(v9, v15, v16);
    sub_255E319BC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
    result = sub_255E386C8();
    *a3 = v10;
    a3[1] = result;
    a3[2] = v20;
  }

  else
  {
    v22 = a2[15];
    type metadata accessor for LocalStateStore(0);
    sub_255E319BC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E32A6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 2003134838;
  if (v2 != 1)
  {
    v4 = 0x79654B79786F7270;
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

  v7 = 0xE400000000000000;
  v8 = 2003134838;
  if (*a2 != 1)
  {
    v8 = 0x79654B79786F7270;
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

uint64_t sub_255E32B58()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E32BE8()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E32C64()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E32CF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E34F78();
  *a2 = result;
  return result;
}

void sub_255E32D20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x79654B79786F7270;
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

uint64_t sub_255E32D6C()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 0x79654B79786F7270;
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

uint64_t sub_255E32DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E34F78();
  *a1 = result;
  return result;
}

uint64_t sub_255E32DDC(uint64_t a1)
{
  v2 = sub_255E3485C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E32E18(uint64_t a1)
{
  v2 = sub_255E3485C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E32E54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_255E385D8();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9728, &unk_255E62DC8);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v38 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v27 = sub_255E38CC8();
  v39 = v27;
  v40 = v11;
  type metadata accessor for LocalStateStore(0);
  sub_255E319BC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
  v41 = sub_255E38CC8();
  v42 = v12;
  v13 = a1[3];
  v14 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_255E3485C();
  v15 = v28;
  sub_255E3AE28();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
  }

  else
  {
    v16 = v25;
    v17 = v26;
    LOBYTE(v30) = 0;
    v18 = sub_255E3AB88();
    if (!v19)
    {
      v21 = v6;
      sub_255E385C8();
      v28 = sub_255E385B8();
      v23 = v22;
      (*(v24 + 8))(v21, v3);
      v19 = v23;
      v18 = v28;
    }

    v34[0] = v18;
    v34[1] = v19;
    v29 = 1;
    v32 = &type metadata for ViewContent;
    v33 = sub_255D44794();
    *&v30 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v30, v35);
    v29 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v16 + 8))(v10, v7);
    *&v35[40] = v30;
    v36 = v31;
    v37 = v32;
    sub_255D4E9B8(v34, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return sub_255E348B0(v34);
  }
}

uint64_t sub_255E332DC@<X0>(uint64_t *a1@<X8>)
{
  sub_255D4E9B8(v1, v9);
  v3 = swift_allocObject();
  v4 = v9[5];
  v3[5] = v9[4];
  v3[6] = v4;
  v5 = v9[7];
  v3[7] = v9[6];
  v3[8] = v5;
  v6 = v9[1];
  v3[1] = v9[0];
  v3[2] = v6;
  v7 = v9[3];
  v3[3] = v9[2];
  v3[4] = v7;
  *&v9[0] = sub_255D4EA14;
  *(&v9[0] + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6970, &qword_255E62DC0);
  sub_255D38950(&qword_27F7E6978, &qword_27F7E6970, &qword_255E62DC0);
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

double sub_255E333BC@<D0>(uint64_t (**a1)@<X0>(uint64_t@<X0>, uint64_t *@<X8>)@<X8>)
{
  sub_255D4E9B8(v1, v9);
  v3 = swift_allocObject();
  v4 = v13;
  *(v3 + 5) = v12;
  *(v3 + 6) = v4;
  v5 = v15;
  *(v3 + 7) = v14;
  *(v3 + 8) = v5;
  v6 = v9[1];
  *(v3 + 1) = v9[0];
  *(v3 + 2) = v6;
  result = *&v10;
  v8 = v11;
  *(v3 + 3) = v10;
  *(v3 + 4) = v8;
  *a1 = sub_255E35020;
  a1[1] = v3;
  return result;
}

uint64_t sub_255E33498(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255E33544@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v10 = sub_255E38D48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v24 - v17);
  v19 = a3(0);
  sub_255D3957C(v5 + *(v19 + 36), v18, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = a4(0);
    return (*(*(v20 - 8) + 32))(v25, v18, v20);
  }

  else
  {
    v22 = *v18;
    sub_255E3A858();
    v23 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_255E33758()
{
  v1 = *(v0 + 80);
  if (v1 > 0xFD)
  {
    return 0xD00000000000001ALL;
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = *(v0 + 80);
  if (*(v0 + 96))
  {
    sub_255D94C04(v2, v3, v4, v1);

    v6 = StringResolvable.resolved(with:)(v5);
    sub_255D38060(v9, v10, v11, v12);

    return v6;
  }

  else
  {
    v8 = *(v0 + 104);
    sub_255D3E5A8(v2, v3, v4, v1);
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E33894@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v2 = sub_255E38AB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = v1[5];
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  v13 = v1[12];
  if (v13)
  {
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;

    *(inited + 32) = sub_255E33758();
    *(inited + 40) = v16;
    sub_255E33544(&qword_27F7E9710, &qword_255E62D80, type metadata accessor for LayoutDirectionReader, MEMORY[0x277CDFAA0], v9);
    (*(v3 + 104))(v7, *MEMORY[0x277CDFA90], v2);
    v17 = sub_255E38AA8();
    v18 = *(v3 + 8);
    v18(v7, v2);
    v18(v9, v2);
    if (v17)
    {
      v19 = 0x4C6F547468676972;
    }

    else
    {
      v19 = 0x69526F547466656CLL;
    }

    if (v17)
    {
      v20 = 0xEB00000000746665;
    }

    else
    {
      v20 = 0xEB00000000746867;
    }

    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    *(inited + 48) = v21;
    v22 = sub_255DC53CC(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
    v23 = sub_255DC5124(MEMORY[0x277D84F90]);
    v24 = type metadata accessor for RemoteStateStore(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v13, v22, v23);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E386C8();
    v29 = v31;
    *v31 = v14;
    v29[1] = result;
    v29[2] = v27;
  }

  else
  {
    v30 = v1[13];
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E33C14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 2003134838;
  if (v2 != 1)
  {
    v4 = 0x79654B61746164;
    v3 = 0xE700000000000000;
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

  v7 = 0xE400000000000000;
  v8 = 2003134838;
  if (*a2 != 1)
  {
    v8 = 0x79654B61746164;
    v7 = 0xE700000000000000;
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

uint64_t sub_255E33D00()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E33D90()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E33E0C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E33E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E34FC4();
  *a2 = result;
  return result;
}

uint64_t sub_255E33EC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E34FC4();
  *a1 = result;
  return result;
}

uint64_t sub_255E33EF0(uint64_t a1)
{
  v2 = sub_255E34808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E33F2C(uint64_t a1)
{
  v2 = sub_255E34808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E33F68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9718, &qword_255E62D88);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for LayoutDirectionReader(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 11) = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v40 = sub_255E38CC8();
  *(v16 + 12) = v40;
  *(v16 + 13) = v17;
  v18 = *(v13 + 44);
  *&v16[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9710, &qword_255E62D80);
  swift_storeEnumTagMultiPayload();
  v20 = a1[3];
  v19 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_255E34808();
  v21 = v41;
  sub_255E3AE28();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v42);

    return sub_255D395E4(&v16[v18], &qword_27F7E9698, &unk_255E62530);
  }

  else
  {
    v23 = v37;
    v22 = v38;
    LOBYTE(v43) = 0;
    v24 = sub_255E3AB88();
    v27 = v25;
    v41 = v8;
    if (!v25)
    {
      v28 = v7;
      sub_255E385C8();
      v29 = sub_255E385B8();
      v31 = v30;
      (*(v23 + 8))(v28, v36);
      v27 = v31;
      v24 = v29;
    }

    *v16 = v24;
    *(v16 + 1) = v27;
    v47 = 1;
    v45 = &type metadata for ViewContent;
    v46 = sub_255D44794();
    *&v43 = swift_allocObject();
    sub_255D447E8();
    v32 = v41;
    sub_255E3ABC8();
    sub_255D34630(&v43, (v16 + 16));
    v47 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v39 + 8))(v11, v32);
    v33 = v44;
    v34 = v45;
    *(v16 + 56) = v43;
    *(v16 + 9) = v33;
    v16[80] = v34;
    sub_255E349B8(v16, v22, type metadata accessor for LayoutDirectionReader);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    return sub_255E34A20(v16, type metadata accessor for LayoutDirectionReader);
  }
}

uint64_t sub_255E3442C@<X0>(void (*a1)(__int128 *__return_ptr)@<X2>, uint64_t *a2@<X8>)
{
  a1(&v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
  sub_255D3849C();
  result = sub_255E3A038();
  *a2 = result;
  return result;
}

uint64_t sub_255E344D8()
{
  sub_255E319BC(&qword_27F7E8D28, type metadata accessor for LayoutDirectionReader);
  sub_255E319BC(&qword_27F7E6988, type metadata accessor for LayoutDirectionReader);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255E34590(uint64_t a1)
{
  result = sub_255E319BC(&qword_27F7E96E0, type metadata accessor for LayoutDirectionReader);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255E345E8(uint64_t a1)
{
  result = sub_255E34610();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255E34610()
{
  result = qword_27F7E96E8;
  if (!qword_27F7E96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E96E8);
  }

  return result;
}

unint64_t sub_255E34664(uint64_t a1)
{
  result = sub_255E3468C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255E3468C()
{
  result = qword_27F7E96F0;
  if (!qword_27F7E96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E96F0);
  }

  return result;
}

uint64_t sub_255E346E0(uint64_t a1)
{
  result = sub_255E319BC(&qword_27F7E96F8, type metadata accessor for ColorSchemeReader);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255E34738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

unint64_t sub_255E34808()
{
  result = qword_27F7E9720;
  if (!qword_27F7E9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9720);
  }

  return result;
}

unint64_t sub_255E3485C()
{
  result = qword_27F7E9730;
  if (!qword_27F7E9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9730);
  }

  return result;
}

unint64_t sub_255E348E0()
{
  result = qword_27F7E9740;
  if (!qword_27F7E9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9740);
  }

  return result;
}

unint64_t sub_255E34964()
{
  result = qword_27F7E9750;
  if (!qword_27F7E9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9750);
  }

  return result;
}

uint64_t sub_255E349B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255E34A20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_255E34AC4()
{
  result = qword_27F7E9758;
  if (!qword_27F7E9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9758);
  }

  return result;
}

unint64_t sub_255E34B1C()
{
  result = qword_27F7E9760;
  if (!qword_27F7E9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9760);
  }

  return result;
}

unint64_t sub_255E34B74()
{
  result = qword_27F7E9768;
  if (!qword_27F7E9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9768);
  }

  return result;
}

unint64_t sub_255E34BCC()
{
  result = qword_27F7E9770;
  if (!qword_27F7E9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9770);
  }

  return result;
}

unint64_t sub_255E34C24()
{
  result = qword_27F7E9778;
  if (!qword_27F7E9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9778);
  }

  return result;
}

unint64_t sub_255E34C7C()
{
  result = qword_27F7E9780;
  if (!qword_27F7E9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9780);
  }

  return result;
}

unint64_t sub_255E34CD4()
{
  result = qword_27F7E9788;
  if (!qword_27F7E9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9788);
  }

  return result;
}

unint64_t sub_255E34D2C()
{
  result = qword_27F7E9790;
  if (!qword_27F7E9790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9790);
  }

  return result;
}

unint64_t sub_255E34D84()
{
  result = qword_27F7E9798;
  if (!qword_27F7E9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9798);
  }

  return result;
}

unint64_t sub_255E34DDC()
{
  result = qword_27F7E97A0;
  if (!qword_27F7E97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E97A0);
  }

  return result;
}

unint64_t sub_255E34E34()
{
  result = qword_27F7E97A8;
  if (!qword_27F7E97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E97A8);
  }

  return result;
}

unint64_t sub_255E34E8C()
{
  result = qword_27F7E97B0;
  if (!qword_27F7E97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E97B0);
  }

  return result;
}

uint64_t sub_255E34EE0()
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

uint64_t sub_255E34F2C()
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

uint64_t sub_255E34F78()
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

uint64_t sub_255E34FC4()
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

uint64_t sub_255E35050@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v19 = *(v3 + 40);
  v20 = v8;
  v21 = v9;
  LOBYTE(v22) = v10;
  sub_255D3E5A8(v19, v8, v9, v10);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v19, v20, v21, v22);
  }

  sub_255D38060(v19, v20, v21, v22);
  v12 = sub_255E3AB48();

  v17[1] = (v12 > 2) | (6u >> (v12 & 7));
  v13 = a1[3];
  v14 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v23 = v17;
  MEMORY[0x28223BE20](v18);
  sub_255E390F8();
  v15 = MEMORY[0x277CE11C8];
  v19 = v13;
  v20 = MEMORY[0x277CE11C8];
  v16 = MEMORY[0x277CE11C0];
  v21 = v14;
  v22 = MEMORY[0x277CE11C0];
  a3[3] = swift_getOpaqueTypeMetadata2();
  v19 = v13;
  v20 = v15;
  v21 = v14;
  v22 = v16;
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39BE8();
}

uint64_t sub_255E35248()
{
  if (*v0)
  {
    return 1701274725;
  }

  else
  {
    return 2003134838;
  }
}

uint64_t sub_255E3526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v5 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701274725 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255E35348(uint64_t a1)
{
  v2 = sub_255E35E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E35384(uint64_t a1)
{
  v2 = sub_255E35E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E353C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97E8, &qword_255E63848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E35E9C();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  v14 = &type metadata for ViewContent;
  v15 = sub_255D44794();
  *&v12 = swift_allocObject();
  sub_255D447E8();
  sub_255E3ABC8();
  sub_255D34630(&v12, v16);
  v20 = 1;
  sub_255D3EA0C();
  sub_255E3ABC8();
  (*(v6 + 8))(v9, v5);
  v17 = v12;
  v18 = v13;
  v19 = v14;
  sub_255E35EF0(v16, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255E35F28(v16);
}

uint64_t sub_255E35624@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97C8, &qword_255E63830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_255E390A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = *(v3 + 8);
  v20 = *(v3 + 16);
  v21 = *(v3 + 24);
  v36 = *v3;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  sub_255D3E5A8(v36, v19, v20, v21);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v36, v37, v38, v39);
  }

  v33 = v11;
  v34 = a3;
  v23 = v35;
  sub_255D38060(v36, v37, v38, v39);
  v24 = sub_255E3AB48();

  if (v24 == 2)
  {
    sub_255E39098();
    v25 = v12;
    goto LABEL_9;
  }

  v25 = v12;
  if (v24 == 1)
  {
    sub_255E39078();
LABEL_9:
    v26 = v33;
    goto LABEL_10;
  }

  v26 = v33;
  if (v24)
  {
    (*(v25 + 56))(v10, 1, 1, v33);
    sub_255E39098();
    v28 = v25;
    if ((*(v25 + 48))(v10, 1, v26) != 1)
    {
      sub_255E35DE0(v10);
    }

    goto LABEL_11;
  }

  sub_255E39088();
LABEL_10:
  v27 = *(v25 + 32);
  v27(v10, v16, v26);
  (*(v25 + 56))(v10, 0, 1, v26);
  v27(v18, v10, v26);
  v28 = v25;
LABEL_11:
  v29 = v23[3];
  __swift_project_boxed_opaque_existential_1(v23, v29);
  v40 = View.anyView.getter(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97D0, &qword_255E63838);
  v31 = v34;
  v34[3] = v30;
  v36 = MEMORY[0x277CE11C8];
  v37 = MEMORY[0x277CE11C0];
  v31[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v31);
  sub_255E39928();

  return (*(v28 + 8))(v18, v26);
}

uint64_t sub_255E359AC()
{
  if (*v0)
  {
    result = 0x656C797473;
  }

  else
  {
    result = 2003134838;
  }

  *v0;
  return result;
}

uint64_t sub_255E359DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v5 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255E35AB4(uint64_t a1)
{
  v2 = sub_255E35E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E35AF0(uint64_t a1)
{
  v2 = sub_255E35E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E35B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97D8, &qword_255E63840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E35E48();
  sub_255E3AE28();
  if (!v2)
  {
    v17 = 1;
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255E35CE8(uint64_t a1)
{
  result = sub_255E35D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E35D10()
{
  result = qword_27F7E97B8;
  if (!qword_27F7E97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E97B8);
  }

  return result;
}

unint64_t sub_255E35D64(uint64_t a1)
{
  result = sub_255E35D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E35D8C()
{
  result = qword_27F7E97C0;
  if (!qword_27F7E97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E97C0);
  }

  return result;
}

uint64_t sub_255E35DE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97C8, &qword_255E63830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E35E48()
{
  result = qword_27F7E97E0;
  if (!qword_27F7E97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E97E0);
  }

  return result;
}

unint64_t sub_255E35E9C()
{
  result = qword_27F7E97F0;
  if (!qword_27F7E97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E97F0);
  }

  return result;
}

unint64_t sub_255E35F7C()
{
  result = qword_27F7E97F8;
  if (!qword_27F7E97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E97F8);
  }

  return result;
}

unint64_t sub_255E35FD4()
{
  result = qword_27F7E9800;
  if (!qword_27F7E9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9800);
  }

  return result;
}

unint64_t sub_255E3602C()
{
  result = qword_27F7E9808;
  if (!qword_27F7E9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9808);
  }

  return result;
}

unint64_t sub_255E36084()
{
  result = qword_27F7E9810;
  if (!qword_27F7E9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9810);
  }

  return result;
}

unint64_t sub_255E360DC()
{
  result = qword_27F7E9818;
  if (!qword_27F7E9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9818);
  }

  return result;
}

unint64_t sub_255E36134()
{
  result = qword_27F7E9820;
  if (!qword_27F7E9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9820);
  }

  return result;
}

uint64_t sub_255E361A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 272))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_255E361F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_255E362A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6874646977;
    v6 = 0x6E656D6E67696C61;
    if (a1 != 2)
    {
      v6 = 0x68746469576E696DLL;
    }

    if (a1)
    {
      v5 = 0x746867696568;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x68676965486E696DLL;
    v2 = 0x6965486C61656469;
    if (a1 != 7)
    {
      v2 = 0x686769654878616DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6469576C61656469;
    if (a1 != 4)
    {
      v3 = 0x687464695778616DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_255E363DC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D77A70();
  return sub_255E3ADD8();
}

uint64_t sub_255E3642C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D77A70();
  return sub_255E3ADD8();
}

uint64_t sub_255E36470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E37D84();
  *a2 = result;
  return result;
}

uint64_t sub_255E364A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255E362A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_255E364E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E37D84();
  *a1 = result;
  return result;
}

uint64_t sub_255E3651C(uint64_t a1)
{
  v2 = sub_255E37A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E36558(uint64_t a1)
{
  v2 = sub_255E37A98();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E36594(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9848, &qword_255E64B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_255E37A98();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    return;
  }

  v55 = a2;
  v56 = v6;
  LOBYTE(v57[0]) = 0;
  sub_255D64774();
  sub_255E3ABA8();
  v51 = v58;
  v52 = v59;
  v53 = v60;
  v54 = v61;
  LOBYTE(v57[0]) = 1;
  sub_255E3ABA8();
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v50 = v61;
  LOBYTE(v57[0]) = 3;
  sub_255E3ABA8();
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v46 = v61;
  LOBYTE(v57[0]) = 4;
  sub_255E3ABA8();
  v40 = v58;
  v41 = v59;
  v42 = v60;
  v39 = v61;
  LOBYTE(v57[0]) = 5;
  sub_255E3ABA8();
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  LOBYTE(v57[0]) = 6;
  sub_255E3ABA8();
  v31 = v58;
  v32 = v59;
  v33 = v60;
  v34 = v61;
  LOBYTE(v57[0]) = 7;
  sub_255E3ABA8();
  v27 = v58;
  v28 = v59;
  v29 = v60;
  v30 = v61;
  LOBYTE(v57[0]) = 8;
  sub_255E3ABA8();
  v23 = v58;
  v24 = v59;
  v25 = v60;
  v26 = v61;
  LOBYTE(v57[0]) = 2;
  sub_255D9BE68();
  sub_255E3ABA8();
  if (v58 <= 4u)
  {
    if (v58 > 1u)
    {
      if (v58 == 2)
      {
        v12 = sub_255E3A248();
      }

      else if (v58 == 3)
      {
        v12 = sub_255E3A208();
      }

      else
      {
        v12 = sub_255E3A218();
      }

      goto LABEL_22;
    }

    if (v58)
    {
      v12 = sub_255E3A238();
      goto LABEL_22;
    }

LABEL_14:
    v12 = sub_255E3A228();
    goto LABEL_22;
  }

  if (v58 <= 6u)
  {
    if (v58 == 5)
    {
      v12 = sub_255E3A1C8();
    }

    else
    {
      v12 = sub_255E3A1D8();
    }

    goto LABEL_22;
  }

  if (v58 == 7)
  {
    v12 = sub_255E3A1E8();
    goto LABEL_22;
  }

  if (v58 != 8)
  {
    goto LABEL_14;
  }

  v12 = sub_255E3A1F8();
LABEL_22:
  v21 = v13;
  v22 = v12;
  (*(v56 + 8))(v9, v5);
  HIDWORD(v57[19]) = *&v103[3];
  *(&v57[19] + 1) = *v103;
  HIDWORD(v57[23]) = *&v102[3];
  *(&v57[23] + 1) = *v102;
  HIDWORD(v57[27]) = *&v101[3];
  *(&v57[27] + 1) = *v101;
  HIDWORD(v57[31]) = *&v100[3];
  *(&v57[31] + 1) = *v100;
  *(&v57[3] + 1) = v107[0];
  HIDWORD(v57[3]) = *(v107 + 3);
  *(&v57[7] + 1) = *v106;
  HIDWORD(v57[7]) = *&v106[3];
  *(&v57[11] + 1) = *v105;
  HIDWORD(v57[11]) = *&v105[3];
  *(&v57[15] + 1) = *v104;
  HIDWORD(v57[15]) = *&v104[3];
  v14 = v51;
  v15 = v52;
  v57[0] = v51;
  v57[1] = v52;
  v16 = v53;
  v57[2] = v53;
  v17 = v54;
  LOBYTE(v57[3]) = v54;
  v19 = v47;
  v18 = v48;
  v57[4] = v47;
  v57[5] = v48;
  v57[6] = v49;
  LOBYTE(v57[7]) = v50;
  v57[8] = v43;
  v57[9] = v44;
  v57[10] = v45;
  LOBYTE(v57[11]) = v46;
  v57[12] = v40;
  v57[13] = v41;
  v57[14] = v42;
  LOBYTE(v57[15]) = v39;
  v57[16] = v35;
  v57[17] = v36;
  v57[18] = v37;
  LOBYTE(v57[19]) = v38;
  v57[20] = v31;
  v57[21] = v32;
  v57[22] = v33;
  LOBYTE(v57[23]) = v34;
  v57[24] = v27;
  v57[25] = v28;
  v57[26] = v29;
  LOBYTE(v57[27]) = v30;
  v57[28] = v23;
  v57[29] = v24;
  v57[30] = v25;
  LOBYTE(v57[31]) = v26;
  v57[32] = v22;
  v57[33] = v21;
  memcpy(v55, v57, 0x110uLL);
  sub_255E37AEC(v57, &v58);
  __swift_destroy_boxed_opaque_existential_1Tm(v108);
  v58 = v14;
  v59 = v15;
  v60 = v16;
  v61 = v17;
  v63 = v19;
  v64 = v18;
  *v62 = v107[0];
  *&v62[3] = *(v107 + 3);
  v65 = v49;
  v66 = v50;
  *v67 = *v106;
  *&v67[3] = *&v106[3];
  v68 = v43;
  v69 = v44;
  v70 = v45;
  v71 = v46;
  *v72 = *v105;
  *&v72[3] = *&v105[3];
  v73 = v40;
  v74 = v41;
  v75 = v42;
  v76 = v39;
  *v77 = *v104;
  *&v77[3] = *&v104[3];
  v78 = v35;
  v79 = v36;
  v80 = v37;
  v81 = v38;
  *&v82[3] = *&v103[3];
  *v82 = *v103;
  v83 = v31;
  v84 = v32;
  v85 = v33;
  v86 = v34;
  *&v87[3] = *&v102[3];
  *v87 = *v102;
  v88 = v27;
  v89 = v28;
  v90 = v29;
  v91 = v30;
  *&v92[3] = *&v101[3];
  *v92 = *v101;
  v93 = v23;
  v94 = v24;
  v95 = v25;
  v96 = v26;
  *&v97[3] = *&v100[3];
  *v97 = *v100;
  v98 = v22;
  v99 = v21;
  sub_255E37B24(&v58);
}

uint64_t sub_255E36FAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v39 = *(v3 + 264);
  v40 = *(v3 + 256);
  if (v6 < 0xFE)
  {
    v41 = *v3;
    v44 = *(v3 + 8);
    v46 = *(v3 + 16);
    v48 = *(v3 + 24);
    sub_255D612A0(*v3, v44, v46, v6);
    v11 = a2;
    sub_255D8F6FC(a2);
    sub_255D4CB98(v41, v44, v46, v48);
    if (v10 > 0xFD)
    {
LABEL_9:
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      a3[3] = sub_255E38AE8();
      a3[4] = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_255E39BB8();
    }

LABEL_8:
    sub_255D612A0(v7, v8, v9, v10);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v7, v8, v9, v10);
    goto LABEL_9;
  }

  v11 = a2;
  if (v10 <= 0xFD)
  {
    goto LABEL_8;
  }

  v12 = *(v3 + 88);
  v14 = *(v3 + 96);
  v13 = *(v3 + 104);
  v15 = *(v3 + 112);
  v16 = *(v3 + 120);
  v34 = *(v3 + 136);
  v35 = *(v3 + 128);
  v17 = *(v3 + 152);
  v23 = *(v3 + 144);
  v24 = *(v3 + 176);
  v18 = *(v3 + 192);
  v27 = *(v3 + 200);
  v25 = *(v3 + 168);
  v26 = *(v3 + 208);
  v32 = *(v3 + 184);
  v33 = *(v3 + 216);
  v19 = *(v3 + 224);
  v30 = v19;
  v31 = *(v3 + 160);
  v28 = *(v3 + 240);
  v29 = *(v3 + 232);
  v36 = *(v3 + 248);
  if (v12 > 0xFD)
  {
    if (v16 <= 0xFD)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (v17 > 0xFD)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v37 = *(v3 + 104);
  v42 = *(v3 + 64);
  v45 = *(v3 + 72);
  v47 = *(v3 + 80);
  v49 = *(v3 + 88);
  sub_255D612A0(v42, v45, v47, v12);
  sub_255D8F6FC(v11);
  sub_255D4CB98(v42, v45, v47, v49);
  v13 = v37;
  if (v16 > 0xFD)
  {
    goto LABEL_11;
  }

LABEL_5:
  v43 = v13;
  sub_255D612A0(v14, v13, v15, v16);
  sub_255D8F6FC(v11);
  sub_255D4CB98(v14, v43, v15, v16);
  if (v17 <= 0xFD)
  {
LABEL_6:
    sub_255D612A0(v35, v34, v23, v17);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v35, v34, v23, v17);
  }

LABEL_12:
  if (v32 <= 0xFD)
  {
    sub_255D612A0(v31, v25, v24, v32);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v31, v25, v24, v32);
  }

  if (v33 <= 0xFD)
  {
    sub_255D612A0(v18, v27, v26, v33);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v18, v27, v26, v33);
  }

  if (v36 <= 0xFD)
  {
    sub_255D612A0(v30, v29, v28, v36);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v30, v29, v28, v36);
  }

  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3[3] = sub_255E38AE8();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39BC8();
}

uint64_t sub_255E37538()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E375B4()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E3760C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255E376A4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255E376FC(uint64_t a1)
{
  v2 = sub_255E37A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E37738(uint64_t a1)
{
  v2 = sub_255E37A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E37774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9838, &qword_255E64B38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E37A44();
  sub_255E3AE28();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    sub_255E3ABA8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255E3794C(uint64_t a1)
{
  result = sub_255E37974();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E37974()
{
  result = qword_27F7E9828;
  if (!qword_27F7E9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9828);
  }

  return result;
}

unint64_t sub_255E379C8(uint64_t a1)
{
  result = sub_255E379F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E379F0()
{
  result = qword_27F7E9830;
  if (!qword_27F7E9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9830);
  }

  return result;
}

unint64_t sub_255E37A44()
{
  result = qword_27F7E9840;
  if (!qword_27F7E9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9840);
  }

  return result;
}

unint64_t sub_255E37A98()
{
  result = qword_27F7E9850;
  if (!qword_27F7E9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9850);
  }

  return result;
}

unint64_t sub_255E37B78()
{
  result = qword_27F7E9858;
  if (!qword_27F7E9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9858);
  }

  return result;
}

unint64_t sub_255E37BD0()
{
  result = qword_27F7E9860;
  if (!qword_27F7E9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9860);
  }

  return result;
}

unint64_t sub_255E37C28()
{
  result = qword_27F7E9868;
  if (!qword_27F7E9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9868);
  }

  return result;
}

unint64_t sub_255E37C80()
{
  result = qword_27F7E9870;
  if (!qword_27F7E9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9870);
  }

  return result;
}

unint64_t sub_255E37CD8()
{
  result = qword_27F7E9878;
  if (!qword_27F7E9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9878);
  }

  return result;
}

unint64_t sub_255E37D30()
{
  result = qword_27F7E9880;
  if (!qword_27F7E9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E9880);
  }

  return result;
}

uint64_t sub_255E37D84()
{
  v0 = sub_255E3AB48();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27F815290 == -1)
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

  if (dword_27F815284 > a2)
  {
    return 1;
  }

  if (dword_27F815284 < a2)
  {
    return 0;
  }

  return dword_27F815288 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27F815298 == -1)
  {
    if (qword_27F8152A0)
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
    if (qword_27F8152A0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27F815290 != -1)
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
      if (dword_27F815284 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27F815284 >= a3)
      {
        result = dword_27F815288 >= a4;
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
  v1 = qword_27F8152A0;
  if (qword_27F8152A0)
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
      qword_27F8152A0 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x259C4F320](v13);
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
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27F815284, &dword_27F815288);
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