uint64_t dispatch thunk of FMNHttpClient.fetch(requestContent:urlComponents:completionHandler:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x160))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x168))();
}

unint64_t sub_24A8AC480()
{
  result = qword_27EF79448;
  if (!qword_27EF79448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79448);
  }

  return result;
}

uint64_t sub_24A8AC4D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_24A8AC518(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

unint64_t sub_24A8AC55C()
{
  result = qword_27EF79490;
  if (!qword_27EF79490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79490);
  }

  return result;
}

uint64_t sub_24A8AC5B0(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t type metadata accessor for HAREntry()
{
  result = qword_27EF79520;
  if (!qword_27EF79520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A8AC6A4()
{
  result = sub_24A8BB054();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_24A8AC754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24A8AC79C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A8AC834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_24A8AC87C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A8AC8E4()
{
  v0 = sub_24A8BB294();
  __swift_allocate_value_buffer(v0, qword_27EF7D4D8);
  __swift_project_value_buffer(v0, qword_27EF7D4D8);
  return sub_24A8BB284();
}

uint64_t sub_24A8AC930(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79530, &qword_24A8BDF30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7 - 8];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8AE718();
  sub_24A8BB984();
  v10 = *(v2 + 16);
  v14 = *v2;
  v15 = v10;
  v16 = *(v2 + 32);
  v17 = *(v2 + 48);
  sub_24A8AE76C(v2, v13);
  sub_24A8AE7A4();
  sub_24A8BB704();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24A8ACAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A8BB804();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A8ACB64(uint64_t a1)
{
  v2 = sub_24A8AE718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8ACBA0(uint64_t a1)
{
  v2 = sub_24A8AE718();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A8ACBDC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A8AF3F0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_24A8ACC2C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_24A8AC930(a1);
}

uint64_t sub_24A8ACC70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79678, &qword_24A8BE560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B1444();
  sub_24A8BB984();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15[0]) = 0;
  sub_24A8BB6E4();
  if (!v2)
  {
    *&v15[0] = v3[2];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79688, &qword_24A8BE568);
    sub_24A8B1498(&qword_27EF79690, &qword_27EF79698);
    sub_24A8BB704();
    v13 = *(v3 + 5);
    v15[0] = *(v3 + 3);
    v15[1] = v13;
    v16 = 2;
    sub_24A8B1534();
    sub_24A8BB704();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A8ACE7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79580, &qword_24A8BDF48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8AF5DC();
  sub_24A8BB984();
  v61 = 0;
  sub_24A8BB054();
  sub_24A8B1588(&qword_27EF79588, MEMORY[0x277CC9578]);
  sub_24A8BB704();
  if (!v2)
  {
    v11 = type metadata accessor for HAREntry();
    v12 = v3 + *(v11 + 20);
    v13 = *(v12 + 48);
    v14 = *(v12 + 80);
    v56 = *(v12 + 64);
    v57 = v14;
    v15 = *(v12 + 16);
    v16 = *(v12 + 48);
    v54 = *(v12 + 32);
    v55 = v16;
    v17 = *(v12 + 16);
    v53[0] = *v12;
    v53[1] = v17;
    v18 = *(v12 + 80);
    v50 = v56;
    v51 = v18;
    v46 = v53[0];
    v47 = v15;
    v58 = *(v12 + 96);
    v52 = *(v12 + 96);
    v48 = v54;
    v49 = v13;
    v60 = 1;
    sub_24A8AF708(v53, v39);
    sub_24A8AF740();
    sub_24A8BB704();
    v37[4] = v50;
    v37[5] = v51;
    v38 = v52;
    v37[0] = v46;
    v37[1] = v47;
    v37[2] = v48;
    v37[3] = v49;
    sub_24A8AF684(v37);
    v19 = v3 + *(v11 + 24);
    v20 = *(v19 + 80);
    v21 = *(v19 + 48);
    v42 = *(v19 + 64);
    v43 = v20;
    v22 = *(v19 + 80);
    v44 = *(v19 + 96);
    v23 = *(v19 + 16);
    v24 = *(v19 + 48);
    v40 = *(v19 + 32);
    v41 = v24;
    v25 = *(v19 + 16);
    v39[0] = *v19;
    v39[1] = v25;
    v33 = v42;
    v34 = v22;
    v35 = *(v19 + 96);
    v29 = v39[0];
    v30 = v23;
    v45 = *(v19 + 112);
    v36 = *(v19 + 112);
    v31 = v40;
    v32 = v21;
    v59 = 2;
    sub_24A8AF794(v39, v27);
    sub_24A8AF7CC();
    sub_24A8BB704();
    v27[4] = v33;
    v27[5] = v34;
    v27[6] = v35;
    v28 = v36;
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    sub_24A8AF820(v27);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A8AD1E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_24A8BB054();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79558, &qword_24A8BDF40);
  v34 = *(v54 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v54);
  v9 = &v30 - v8;
  v10 = type metadata accessor for HAREntry();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8AF5DC();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = v34;
  v32 = a1;
  v31 = v13;
  v16 = v35;
  LOBYTE(v38) = 0;
  sub_24A8B1588(&qword_27EF79568, MEMORY[0x277CC9578]);
  v17 = v36;
  v18 = v54;
  sub_24A8BB6A4();
  (*(v16 + 32))(v31, v17, v4);
  v46 = 1;
  sub_24A8AF630();
  sub_24A8BB6A4();
  v19 = &v31[*(v10 + 20)];
  v20 = v52;
  *(v19 + 4) = v51;
  *(v19 + 5) = v20;
  *(v19 + 12) = v53;
  v21 = v48;
  *v19 = v47;
  *(v19 + 1) = v21;
  v22 = v50;
  *(v19 + 2) = v49;
  *(v19 + 3) = v22;
  v37 = 2;
  sub_24A8AF6B4();
  sub_24A8BB6A4();
  (*(v15 + 8))(v9, v18);
  v23 = *(v10 + 24);
  v24 = v31;
  v25 = &v31[v23];
  v26 = v43;
  *(v25 + 4) = v42;
  *(v25 + 5) = v26;
  *(v25 + 6) = v44;
  *(v25 + 14) = v45;
  v27 = v39;
  *v25 = v38;
  *(v25 + 1) = v27;
  v28 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v28;
  sub_24A89F118(v24, v33);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  return sub_24A89F17C(v24);
}

uint64_t sub_24A8AD6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A8AF850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A8AD700(uint64_t a1)
{
  v2 = sub_24A8B1444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AD73C(uint64_t a1)
{
  v2 = sub_24A8B1444();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A8AD778@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A8AF968(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_24A8AD7E0()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_24A8AD814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_24A8BB804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A8BB804();

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

uint64_t sub_24A8AD8F0(uint64_t a1)
{
  v2 = sub_24A8B25EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AD92C(uint64_t a1)
{
  v2 = sub_24A8B25EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8ADA04()
{
  v1 = 0x74736575716572;
  if (*v0 != 1)
  {
    v1 = 0x65736E6F70736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4464657472617473;
  }
}

uint64_t sub_24A8ADA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A8AFC18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A8ADA94(uint64_t a1)
{
  v2 = sub_24A8AF5DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8ADAD0(uint64_t a1)
{
  v2 = sub_24A8AF5DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8ADB3C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x646F6874656DLL;
    v6 = 0x7372655670747468;
    if (a1 != 2)
    {
      v6 = 0x7365696B6F6F63;
    }

    if (a1)
    {
      v5 = 7107189;
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
    v1 = 0x6953726564616568;
    v2 = 0x657A695379646F62;
    if (a1 != 7)
    {
      v2 = 0x746E656D6D6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73726564616568;
    if (a1 != 4)
    {
      v3 = 0x7274537972657571;
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

uint64_t sub_24A8ADC60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79600, &qword_24A8BDF70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B0C0C();
  sub_24A8BB984();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_24A8BB6E4();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v23) = 1;
    sub_24A8BB6E4();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v23) = 2;
    sub_24A8BB6E4();
    v23 = v3[6];
    HIBYTE(v22) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79608, &qword_24A8BDF78);
    sub_24A8B1DF8(&qword_27EF79610, &qword_27EF79608, &qword_24A8BDF78);
    sub_24A8BB704();
    v23 = v3[7];
    HIBYTE(v22) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795B0, &qword_24A8BDF58);
    sub_24A8B0A84(&qword_27EF795D8, sub_24A8B0AFC);
    sub_24A8BB704();
    v23 = v3[8];
    HIBYTE(v22) = 5;
    sub_24A8BB704();
    v17 = v3[9];
    LOBYTE(v23) = 6;
    sub_24A8BB6F4();
    v18 = v3[10];
    LOBYTE(v23) = 7;
    sub_24A8BB6F4();
    v19 = v3[11];
    v20 = v3[12];
    LOBYTE(v23) = 8;
    sub_24A8BB6D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A8ADFB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795D0, &qword_24A8BDF60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B0988();
  sub_24A8BB984();
  v11 = *v3;
  LOBYTE(v23) = 0;
  sub_24A8BB6F4();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v23) = 1;
    sub_24A8BB6E4();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v23) = 2;
    sub_24A8BB6E4();
    *&v23 = v3[5];
    LOBYTE(v21[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795B0, &qword_24A8BDF58);
    sub_24A8B0A84(&qword_27EF795D8, sub_24A8B0AFC);
    sub_24A8BB704();
    v16 = *(v3 + 4);
    v17 = *(v3 + 6);
    v29 = *(v3 + 5);
    v30 = v17;
    v18 = *(v3 + 4);
    v28[0] = *(v3 + 3);
    v28[1] = v18;
    v19 = *(v3 + 6);
    v25 = v29;
    v26 = v19;
    v31 = v3[14];
    v27 = v3[14];
    v23 = v28[0];
    v24 = v16;
    v32 = 4;
    sub_24A8B0B50(v28, v21);
    sub_24A8B0B88();
    sub_24A8BB704();
    v21[2] = v25;
    v21[3] = v26;
    v22 = v27;
    v21[1] = v24;
    v21[0] = v23;
    sub_24A8B0BDC(v21);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A8AE298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  sub_24A8BB984();
  v23 = 0;
  v19 = v21[3];
  sub_24A8BB6E4();
  if (!v19)
  {
    v22 = 1;
    sub_24A8BB6E4();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_24A8AE430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A8AFD38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A8AE464(uint64_t a1)
{
  v2 = sub_24A8B0C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AE4A0(uint64_t a1)
{
  v2 = sub_24A8B0C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A8AE4DC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A8B0024(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_24A8AE554()
{
  v1 = *v0;
  v2 = 0x737574617473;
  v3 = 0x7372655670747468;
  v4 = 0x73726564616568;
  if (v1 != 3)
  {
    v4 = 0x746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6554737574617473;
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

uint64_t sub_24A8AE5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A8B03CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A8AE620(uint64_t a1)
{
  v2 = sub_24A8B0988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AE65C(uint64_t a1)
{
  v2 = sub_24A8B0988();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A8AE698@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A8B0584(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

unint64_t sub_24A8AE718()
{
  result = qword_27EF79538;
  if (!qword_27EF79538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79538);
  }

  return result;
}

unint64_t sub_24A8AE7A4()
{
  result = qword_27EF79540;
  if (!qword_27EF79540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79540);
  }

  return result;
}

uint64_t sub_24A8AE7F8()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_24A8AE828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_24A8BB804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A8BB804();

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

uint64_t sub_24A8AE900(uint64_t a1)
{
  v2 = sub_24A8B17C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AE93C(uint64_t a1)
{
  v2 = sub_24A8B17C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8AE9BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_24A8B15D0(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_24A8AEA60()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8AEB34()
{
  *v0;
  *v0;
  *v0;
  sub_24A8BB2C4();
}

uint64_t sub_24A8AEBF4()
{
  v1 = *v0;
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8AECC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A8B1814();
  *a2 = result;
  return result;
}

void sub_24A8AECF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  v5 = 0xE400000000000000;
  v6 = 1702521203;
  v7 = 0xE700000000000000;
  v8 = 0x746E656D6D6F63;
  if (v2 != 3)
  {
    v8 = 0x676E69646F636E65;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65707954656D696DLL;
    v3 = 0xE800000000000000;
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

uint64_t sub_24A8AED84()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 1702521203;
  v4 = 0x746E656D6D6F63;
  if (v1 != 3)
  {
    v4 = 0x676E69646F636E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65707954656D696DLL;
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

uint64_t sub_24A8AEE10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A8B1814();
  *a1 = result;
  return result;
}

uint64_t sub_24A8AEE38(uint64_t a1)
{
  v2 = sub_24A8B1D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AEE74(uint64_t a1)
{
  v2 = sub_24A8B1D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8AEEB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF796F0, &qword_24A8BE590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B1D50();
  sub_24A8BB984();
  v11 = v3[1];
  v30 = v6;
  if (!v11)
  {
    v17 = 0;
    v28 = 0;
    v29 = 0;
    v16 = 0xF000000000000000;
    goto LABEL_7;
  }

  v12 = *v3;
  if (qword_27EF78FF8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A8BB294();
  __swift_project_value_buffer(v13, qword_27EF7D4D8);
  result = sub_24A8BB264();
  v16 = v15;
  v29 = result;
  if (v15 >> 60 == 15)
  {
    v11 = 0;
    v17 = 0;
    v28 = 0;
LABEL_7:
    v36 = 1;
    goto LABEL_20;
  }

  v18 = result;
  v19 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v19)
    {
      sub_24A88C814(result, v15);
      v20 = BYTE6(v16);
      goto LABEL_17;
    }

LABEL_15:
    LODWORD(v20) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v20 = v20;
    goto LABEL_17;
  }

  if (v19 != 2)
  {
    sub_24A88C814(result, v15);
    v28 = 0;
    goto LABEL_19;
  }

  v22 = *(result + 16);
  v21 = *(result + 24);
  v23 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  v28 = v20;
LABEL_19:
  sub_24A88C9AC(v18, v16);
  v24 = sub_24A8BB014();
  v25 = v18;
  v11 = v24;
  v17 = v26;
  sub_24A88C814(v25, v16);
  v36 = 0;
LABEL_20:
  *&v32 = v11;
  *(&v32 + 1) = v17;
  v31[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  sub_24A8B1DF8(&qword_27EF796F8, &qword_27EF79128, &unk_24A8BDA50);
  sub_24A8BB704();
  if (v2)
  {
    (*(v30 + 8))(v9, v5);
    sub_24A88C814(v29, v16);
  }

  else
  {

    v35 = *(v3 + 1);
    v32 = *(v3 + 1);
    v37 = 1;
    sub_24A8B1E58(&v35, v31);
    sub_24A8BB704();
    sub_24A8B1EC8(&v35);
    *&v32 = v28;
    BYTE8(v32) = v36;
    v31[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79700, &qword_24A8BE598);
    sub_24A8B1F30();
    sub_24A8BB704();
    v34 = *(v3 + 5);
    v32 = *(v3 + 5);
    v37 = 3;
    sub_24A8B1E58(&v34, v31);
    sub_24A8BB704();
    sub_24A8B1EC8(&v34);
    v32 = *(v3 + 7);
    v33 = v32;
    v37 = 4;
    sub_24A8B1E58(&v33, v31);
    sub_24A8BB704();
    sub_24A88C814(v29, v16);
    sub_24A8B1EC8(&v33);
    return (*(v30 + 8))(v9, v5);
  }
}

__n128 sub_24A8AF384@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = sub_24A8B1860(a1, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_24A8AF3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79548, &qword_24A8BDF38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8AE718();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  sub_24A8AF588();
  sub_24A8BB6A4();
  (*(v6 + 8))(v9, v5);
  v11 = v18;
  v16 = v19;
  v17 = v20;
  v12 = v21;
  v13 = v22;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v11;
  v15 = v17;
  *(a2 + 8) = v16;
  *(a2 + 24) = v15;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_24A8AF588()
{
  result = qword_27EF79550;
  if (!qword_27EF79550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79550);
  }

  return result;
}

unint64_t sub_24A8AF5DC()
{
  result = qword_27EF79560;
  if (!qword_27EF79560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79560);
  }

  return result;
}

unint64_t sub_24A8AF630()
{
  result = qword_27EF79570;
  if (!qword_27EF79570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79570);
  }

  return result;
}

unint64_t sub_24A8AF6B4()
{
  result = qword_27EF79578;
  if (!qword_27EF79578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79578);
  }

  return result;
}

unint64_t sub_24A8AF740()
{
  result = qword_27EF79590;
  if (!qword_27EF79590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79590);
  }

  return result;
}

unint64_t sub_24A8AF7CC()
{
  result = qword_27EF79598;
  if (!qword_27EF79598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79598);
  }

  return result;
}

uint64_t sub_24A8AF850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_24A8BB804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7461657263 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A8BB804();

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

uint64_t sub_24A8AF968@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF796A8, &qword_24A8BE570);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B1444();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = 0;
  v11 = sub_24A8BB664();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79688, &qword_24A8BE568);
  v18 = 1;
  sub_24A8B1498(&qword_27EF796B0, &qword_27EF796B8);
  sub_24A8BB6A4();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = 0xD000000000000010;
  a2[4] = 0x800000024A8C08D0;
  a2[5] = 3157553;
  a2[6] = 0xE300000000000000;
  return result;
}

uint64_t sub_24A8AFC18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4464657472617473 && a2 == 0xEF656D6954657461;
  if (v4 || (sub_24A8BB804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A8BB804();

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

uint64_t sub_24A8AFD38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_24A8BB804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372655670747468 && a2 == 0xEB000000006E6F69 || (sub_24A8BB804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365696B6F6F63 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274537972657571 && a2 == 0xEB00000000676E69 || (sub_24A8BB804() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6953726564616568 && a2 == 0xEA0000000000657ALL || (sub_24A8BB804() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657A695379646F62 && a2 == 0xE800000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746E656D6D6F63 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24A8BB804();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24A8B0024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795F0, &qword_24A8BDF68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B0C0C();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_24A8BB664();
  v30 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_24A8BB664();
  v29 = v14;
  v27 = v13;
  LOBYTE(v38[0]) = 2;
  v26 = sub_24A8BB664();
  v28 = v15;
  v39 = 8;
  v16 = sub_24A8BB654();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  *&v31 = v11;
  v19 = v30;
  *(&v31 + 1) = v30;
  *&v32 = v27;
  v20 = v29;
  *(&v32 + 1) = v29;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  v21 = MEMORY[0x277D84F90];
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = MEMORY[0x277D84F90];
  *&v35 = MEMORY[0x277D84F90];
  *(&v35 + 1) = -1;
  *&v36 = -1;
  *(&v36 + 1) = v16;
  v37 = v18;
  sub_24A8AF708(&v31, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v38[0] = v11;
  v38[1] = v19;
  v38[2] = v27;
  v38[3] = v20;
  v38[4] = v26;
  v38[5] = v28;
  v38[6] = v21;
  v38[7] = v21;
  v38[8] = v21;
  v38[9] = -1;
  v38[10] = -1;
  v38[11] = v16;
  v38[12] = v18;
  result = sub_24A8AF684(v38);
  v23 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v23;
  *(a2 + 96) = v37;
  v24 = v32;
  *a2 = v31;
  *(a2 + 16) = v24;
  v25 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v25;
  return result;
}

uint64_t sub_24A8B03CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_24A8BB804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6554737574617473 && a2 == 0xEA00000000007478 || (sub_24A8BB804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372655670747468 && a2 == 0xEB000000006E6F69 || (sub_24A8BB804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A8BB804();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24A8B0584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795A0, &qword_24A8BDF50);
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v57);
  v8 = &v26 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B0988();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v5;
  v31 = a2;
  LOBYTE(v40[0]) = 0;
  v11 = v57;
  v12 = sub_24A8BB694();
  LOBYTE(v40[0]) = 1;
  v29 = sub_24A8BB664();
  v30 = v13;
  LOBYTE(v40[0]) = 2;
  v27 = sub_24A8BB664();
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795B0, &qword_24A8BDF58);
  LOBYTE(v32) = 3;
  sub_24A8B0A84(&qword_27EF795B8, sub_24A8B09DC);
  sub_24A8BB6A4();
  v15 = v40[0];
  v46 = 4;
  sub_24A8B0A30();
  sub_24A8BB6A4();
  (*(v10 + 8))(v8, v11);
  v54 = v49;
  v55 = v50;
  v56 = v51;
  v52 = v47;
  v53 = v48;
  v16 = v28;
  v17 = v29;
  *&v32 = v12;
  *(&v32 + 1) = v29;
  v18 = v15;
  v19 = v30;
  v20 = v27;
  *&v33 = v30;
  *(&v33 + 1) = v27;
  *&v34 = v28;
  *(&v34 + 1) = v18;
  v39 = v51;
  v37 = v49;
  v38 = v50;
  v35 = v47;
  v36 = v48;
  sub_24A8AF794(&v32, v40);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v40[0] = v12;
  v40[1] = v17;
  v40[2] = v19;
  v40[3] = v20;
  v40[4] = v16;
  v40[5] = v18;
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v41 = v52;
  v42 = v53;
  result = sub_24A8AF820(v40);
  v22 = v37;
  v23 = v31;
  *(v31 + 64) = v36;
  *(v23 + 80) = v22;
  *(v23 + 96) = v38;
  *(v23 + 112) = v39;
  v24 = v33;
  *v23 = v32;
  *(v23 + 16) = v24;
  v25 = v35;
  *(v23 + 32) = v34;
  *(v23 + 48) = v25;
  return result;
}

unint64_t sub_24A8B0988()
{
  result = qword_27EF795A8;
  if (!qword_27EF795A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795A8);
  }

  return result;
}

unint64_t sub_24A8B09DC()
{
  result = qword_27EF795C0;
  if (!qword_27EF795C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795C0);
  }

  return result;
}

unint64_t sub_24A8B0A30()
{
  result = qword_27EF795C8;
  if (!qword_27EF795C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795C8);
  }

  return result;
}

uint64_t sub_24A8B0A84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF795B0, &qword_24A8BDF58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A8B0AFC()
{
  result = qword_27EF795E0;
  if (!qword_27EF795E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795E0);
  }

  return result;
}

unint64_t sub_24A8B0B88()
{
  result = qword_27EF795E8;
  if (!qword_27EF795E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795E8);
  }

  return result;
}

unint64_t sub_24A8B0C0C()
{
  result = qword_27EF795F8;
  if (!qword_27EF795F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795F8);
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for HARRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HARRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24A8B0E7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24A8B0EC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24A8B0F44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_24A8B0FA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24A8B1028()
{
  result = qword_27EF79618;
  if (!qword_27EF79618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79618);
  }

  return result;
}

unint64_t sub_24A8B1080()
{
  result = qword_27EF79620;
  if (!qword_27EF79620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79620);
  }

  return result;
}

unint64_t sub_24A8B10D8()
{
  result = qword_27EF79628;
  if (!qword_27EF79628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79628);
  }

  return result;
}

unint64_t sub_24A8B1130()
{
  result = qword_27EF79630;
  if (!qword_27EF79630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79630);
  }

  return result;
}

unint64_t sub_24A8B1188()
{
  result = qword_27EF79638;
  if (!qword_27EF79638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79638);
  }

  return result;
}

unint64_t sub_24A8B11E0()
{
  result = qword_27EF79640;
  if (!qword_27EF79640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79640);
  }

  return result;
}

unint64_t sub_24A8B1238()
{
  result = qword_27EF79648;
  if (!qword_27EF79648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79648);
  }

  return result;
}

unint64_t sub_24A8B1290()
{
  result = qword_27EF79650;
  if (!qword_27EF79650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79650);
  }

  return result;
}

unint64_t sub_24A8B12E8()
{
  result = qword_27EF79658;
  if (!qword_27EF79658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79658);
  }

  return result;
}

unint64_t sub_24A8B1340()
{
  result = qword_27EF79660;
  if (!qword_27EF79660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79660);
  }

  return result;
}

unint64_t sub_24A8B1398()
{
  result = qword_27EF79668;
  if (!qword_27EF79668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79668);
  }

  return result;
}

unint64_t sub_24A8B13F0()
{
  result = qword_27EF79670;
  if (!qword_27EF79670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79670);
  }

  return result;
}

unint64_t sub_24A8B1444()
{
  result = qword_27EF79680;
  if (!qword_27EF79680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79680);
  }

  return result;
}

uint64_t sub_24A8B1498(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF79688, &qword_24A8BE568);
    sub_24A8B1588(a2, type metadata accessor for HAREntry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A8B1534()
{
  result = qword_27EF796A0;
  if (!qword_27EF796A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF796A0);
  }

  return result;
}

uint64_t sub_24A8B1588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A8B15D0(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_24A8BB974();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_24A8BB664();
    v16 = 1;
    sub_24A8BB664();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

unint64_t sub_24A8B17C0()
{
  result = qword_27EF796C8;
  if (!qword_27EF796C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF796C8);
  }

  return result;
}

uint64_t sub_24A8B1814()
{
  v0 = sub_24A8BB624();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

__n128 sub_24A8B1860@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_24A8BB294();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF796D0, &qword_24A8BE580);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B1D50();
  v13 = v47;
  sub_24A8BB974();
  if (v13)
  {
    v19 = a1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    return result;
  }

  v47 = v6;
  v14 = v8;
  v15 = v46;
  LOBYTE(v53[0]) = 0;
  v16 = sub_24A8BB654();
  v18 = v7;
  v21 = a1;
  if (v17)
  {
    v22 = v18;
    v44 = 0;
    v23 = sub_24A8BAFF4();
    v25 = v24;

    if (v25 >> 60 == 15)
    {
      sub_24A8B1DA4();
      swift_allocError();
      swift_willThrow();
      (*(v14 + 8))(v11, v22);
      v19 = v21;
      goto LABEL_4;
    }

    if (qword_27EF78FF8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v3, qword_27EF7D4D8);
    (*(v45 + 16))(v47, v28, v3);
    v26 = sub_24A8BB274();
    v27 = v29;
    sub_24A88C814(v23, v25);
    v13 = v44;
    v18 = v22;
  }

  else
  {
    v26 = v16;
    v27 = 0;
  }

  LOBYTE(v53[0]) = 1;
  v30 = sub_24A8BB654();
  v47 = v31;
  v32 = v18;
  if (v13)
  {
    (*(v14 + 8))(v11, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    v44 = v30;
    LOBYTE(v53[0]) = 2;
    v43 = sub_24A8BB694();
    LOBYTE(v53[0]) = 3;
    v42 = sub_24A8BB654();
    v45 = v33;
    v54 = 4;
    v34 = sub_24A8BB654();
    v35 = v11;
    v37 = v36;
    (*(v14 + 8))(v35, v32);
    *&v48 = v26;
    *(&v48 + 1) = v27;
    v38 = v47;
    v49.n128_u64[0] = v44;
    v49.n128_u64[1] = v47;
    v39 = v43;
    *&v50 = v43;
    *(&v50 + 1) = v42;
    *&v51 = v45;
    *(&v51 + 1) = v34;
    v52 = v37;
    sub_24A8B0B50(&v48, v53);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v53[0] = v26;
    v53[1] = v27;
    v53[2] = v44;
    v53[3] = v38;
    v53[4] = v39;
    v53[5] = v42;
    v53[6] = v45;
    v53[7] = v34;
    v53[8] = v37;
    sub_24A8B0BDC(v53);
    v40 = v51;
    *(v15 + 32) = v50;
    *(v15 + 48) = v40;
    *(v15 + 64) = v52;
    result = v49;
    *v15 = v48;
    *(v15 + 16) = result;
  }

  return result;
}

unint64_t sub_24A8B1D50()
{
  result = qword_27EF796D8;
  if (!qword_27EF796D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF796D8);
  }

  return result;
}

unint64_t sub_24A8B1DA4()
{
  result = qword_27EF796E0;
  if (!qword_27EF796E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF796E0);
  }

  return result;
}

uint64_t sub_24A8B1DF8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24A8B1E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A8B1EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A8B1F30()
{
  result = qword_27EF79708;
  if (!qword_27EF79708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF79700, &qword_24A8BE598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79708);
  }

  return result;
}

uint64_t sub_24A8B1FBC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24A8B204C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24A8B211C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24A8B21AC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A8B2280()
{
  result = qword_27EF79710;
  if (!qword_27EF79710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79710);
  }

  return result;
}

unint64_t sub_24A8B22D8()
{
  result = qword_27EF79718;
  if (!qword_27EF79718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79718);
  }

  return result;
}

unint64_t sub_24A8B2330()
{
  result = qword_27EF79720;
  if (!qword_27EF79720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79720);
  }

  return result;
}

unint64_t sub_24A8B2388()
{
  result = qword_27EF79728;
  if (!qword_27EF79728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79728);
  }

  return result;
}

unint64_t sub_24A8B23E0()
{
  result = qword_27EF79730;
  if (!qword_27EF79730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79730);
  }

  return result;
}

unint64_t sub_24A8B2438()
{
  result = qword_27EF79738;
  if (!qword_27EF79738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79738);
  }

  return result;
}

unint64_t sub_24A8B2490()
{
  result = qword_27EF79740;
  if (!qword_27EF79740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79740);
  }

  return result;
}

unint64_t sub_24A8B24E8()
{
  result = qword_27EF79748;
  if (!qword_27EF79748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79748);
  }

  return result;
}

unint64_t sub_24A8B2540()
{
  result = qword_27EF79750;
  if (!qword_27EF79750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79750);
  }

  return result;
}

unint64_t sub_24A8B2598()
{
  result = qword_27EF79758;
  if (!qword_27EF79758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79758);
  }

  return result;
}

unint64_t sub_24A8B25EC()
{
  result = qword_27EF79768;
  if (!qword_27EF79768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79768);
  }

  return result;
}

unint64_t sub_24A8B2654()
{
  result = qword_27EF79778;
  if (!qword_27EF79778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79778);
  }

  return result;
}

unint64_t sub_24A8B26AC()
{
  result = qword_27EF79780;
  if (!qword_27EF79780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79780);
  }

  return result;
}

unint64_t sub_24A8B2704()
{
  result = qword_27EF79788;
  if (!qword_27EF79788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79788);
  }

  return result;
}

uint64_t sub_24A8B2794(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v5 > 0x7FFFFFFE)
    {
      return (*(v4 + 48))((v17 + v6 + 16) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    if ((v18 + 1) >= 2)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_24A8B290C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = *(v5 + 56);

        return v19((v18 + v8 + 16) & ~v8);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *v18 = 0;
        v18[1] = 0;
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return result;
    }
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_24A8B2B10(void *a1, NSObject *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A8BC300;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
  v6 = sub_24A8BB2A4();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_24A8897F0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_24A882E60();
  v9 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  dispatch_group_leave(a2);
}

uint64_t FMNAPSTokenProvidingError.hashValue.getter()
{
  sub_24A8BB934();
  MEMORY[0x24C21EF50](0);
  return sub_24A8BB954();
}

id sub_24A8B2C88()
{
  v1 = OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler____lazy_storage___apsConnection;
  v2 = *(v0 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler____lazy_storage___apsConnection);
  v3 = v2;
  if (v2 == 1)
  {
    swift_unknownObjectUnownedInit();
    v3 = sub_24A8B2D14();
    swift_unknownObjectUnownedDestroy();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_24A8B67D8(v4);
  }

  sub_24A8B67E8(v2);
  return v3;
}

id sub_24A8B2D14()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection];
  v2 = v1;

  if (!v1)
  {
    v3 = *MEMORY[0x277CEE9F0];
    v4 = swift_unknownObjectUnownedLoadStrong();
    v5 = *&v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_namedDelegatePort];
    v6 = *&v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_namedDelegatePort + 8];
    v7 = v3;

    v8 = swift_unknownObjectUnownedLoadStrong();
    v9 = *&v8[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];

    v10 = objc_allocWithZone(MEMORY[0x277CEEA10]);
    v11 = sub_24A8BB244();

    v1 = [v10 initWithEnvironmentName:v7 namedDelegatePort:v11 queue:v9];

    if (v1)
    {
      v12 = swift_unknownObjectUnownedLoadStrong();
      v13 = v1;
      [v13 setDelegate_];
    }

    v14 = swift_unknownObjectUnownedLoadStrong();
    v15 = *&v14[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection];
    *&v14[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection] = v1;
    v16 = v1;
  }

  return v1;
}

id FMNPushNotificatonHandler.__allocating_init(topic:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CEE9D8];
  v5 = sub_24A8BB254();
  v7 = v6;
  v8 = objc_allocWithZone(type metadata accessor for FMNPushNotificatonHandler());
  return FMNPushNotificatonHandler.init(topic:namedDelegatePort:)(a1, a2, v5, v7);
}

id FMNPushNotificatonHandler.init(topic:namedDelegatePort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v5 = sub_24A8BB404();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_24A8BB104();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24A8BB414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue;
  v22[1] = sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v9);
  sub_24A8BB0F4();
  v29 = MEMORY[0x277D84F90];
  sub_24A882D00(&unk_2814AB020, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D9C(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A8BB4E4();
  *&v4[v23] = sub_24A8BB444();
  *&v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_pendingTopicTokenFutures] = MEMORY[0x277D84FA0];
  v14 = &v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection] = 0;
  *&v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler____lazy_storage___apsConnection] = 1;
  v16 = &v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic];
  v17 = v25;
  *v16 = v24;
  *(v16 + 1) = v17;
  v18 = &v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_namedDelegatePort];
  v19 = v27;
  *v18 = v26;
  *(v18 + 1) = v19;
  v20 = type metadata accessor for FMNPushNotificatonHandler();
  v28.receiver = v4;
  v28.super_class = v20;
  return objc_msgSendSuper2(&v28, sel_init);
}

id FMNPushNotificatonHandler.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection];
  if (v1)
  {
    *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection] = 0;
    [v1 shutdown];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMNPushNotificatonHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A8B3410()
{
  v1 = sub_24A8BB0D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A8BB104();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_24A8B67C8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_33;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_24A8BB0F4();
  v16 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

void sub_24A8B36E0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken + 8))
  {
    v2 = *(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken);
    v3 = *(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken + 8);
  }

  else
  {
    if (!*(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken + 8))
    {
      return;
    }

    v2 = *(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken);
    v4 = *(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken + 8);
  }

  v5 = OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_pendingTopicTokenFutures;
  swift_beginAccess();
  v21 = a1;
  v6 = *(a1 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    sub_24A8BB514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
    sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
    sub_24A8BB3B4();
    v6 = v23;
    v7 = v24;
    v9 = v25;
    v8 = v26;
    v10 = v27;
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);

    v8 = 0;
  }

  v14 = (v9 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v15 = v8;
    v16 = v10;
    v17 = v8;
    if (!v10)
    {
      break;
    }

LABEL_16:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_22:
      sub_24A8B67D0();

      v20 = *(v21 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection);
      if (v20)
      {
        *(v21 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection) = 0;
        [v20 shutdown];
      }

      return;
    }

    while (1)
    {
      v22 = v2;
      sub_24A8BB1C4();

      v8 = v17;
      v10 = v18;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_24A8BB544())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
        swift_dynamicCast();
        v17 = v8;
        v18 = v10;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_22;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_24A8B39A0()
{
  v1 = sub_24A8BB0D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A8BB104();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic];
  v11 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic + 8];
  v16[1] = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = v10;
  v12[4] = v11;
  aBlock[4] = sub_24A8B68F0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_61;
  v13 = _Block_copy(aBlock);

  v14 = v0;
  sub_24A8BB0F4();
  v18 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v9, v5, v13);
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v17);
}

void sub_24A8B3C8C()
{
  v0 = sub_24A8B2C88();
  if (v0)
  {
    v1 = v0;
    v2 = sub_24A8BB244();
    [v1 requestTokenForTopic:v2 identifier:0];
  }
}

id FMNPushNotificatonHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FMNPushNotificatonHandler.topicToken()()
{
  v1 = sub_24A8BB0D4();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A8BB104();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A8B39A0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_24A8BB1D4();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v12;
  v14 = v0;

  sub_24A8BB1A4();

  v15 = *&v14[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v12;
  aBlock[4] = sub_24A8B44F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  sub_24A8BB0F4();
  v23 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v8, v4, v17);
  _Block_release(v17);
  (*(v22 + 8))(v4, v1);
  (*(v20 + 8))(v8, v21);

  return v12;
}

uint64_t sub_24A8B411C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = sub_24A8BB0D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A8BB104();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&a3[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  aBlock[4] = sub_24A8B68A8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_55;
  v16 = _Block_copy(aBlock);
  v17 = a3;

  sub_24A8BB0F4();
  v21 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_24A8B4404()
{
  swift_beginAccess();
  sub_24A8B4B3C();
  swift_endAccess();
}

uint64_t sub_24A8B4474(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_24A8B5AA0(&v4, a2);
  swift_endAccess();

  return sub_24A8B3410();
}

uint64_t FMNPushNotificatonHandler.topicToken(_:)(uint64_t a1, uint64_t a2)
{
  FMNPushNotificatonHandler.topicToken()();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_24A8BB1A4();
}

void sub_24A8B4594(uint64_t *a1, id a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
    v5 = a2;
    v6 = v4;
  }

  else
  {
    v7 = a1[1];
    if (v7)
    {
      a3(*a1, v7, 0);
      return;
    }

    sub_24A8B6854();
    v6 = swift_allocError();
    v4 = v6;
  }

  a3(v6, 0, 1);
}

uint64_t sub_24A8B4670(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  FMNPushNotificatonHandler.topicToken()();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_24A8BB1A4();
}

uint64_t sub_24A8B47D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken);
  v4 = *(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken + 8);
  *v3 = a2;
  v3[1] = a3;

  return sub_24A8B3410();
}

void FMNPushNotificatonHandler.connection(_:didReceiveMessageForTopic:userInfo:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24A8BC300;
  v3 = *(v0 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic);
  v2 = *(v0 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic + 8);
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_24A8897F0();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);

  v4 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();
}

uint64_t sub_24A8B4B3C()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_24A8BB554();

    if (v4)
    {
      v5 = sub_24A8B4D40();

      return v5;
    }

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  v7 = *(v1 + 40);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
  v8 = sub_24A8BB224();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_24A882D9C(&unk_2814AAA78, &unk_27EF797E0, &qword_24A8BEB88);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_24A8BB234())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24A8B4F14();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_24A8B5584(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_24A8B4D40()
{
  v1 = *v0;

  v2 = sub_24A8BB524();
  v3 = swift_unknownObjectRetain();
  v4 = sub_24A8B5778(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
  v6 = sub_24A8BB224();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_24A882D9C(&unk_2814AAA78, &unk_27EF797E0, &qword_24A8BEB88);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_24A8BB234())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_24A8B5584(v8);
  result = sub_24A8BB234();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_24A8B4F14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79880, &unk_24A8BECD0);
  v2 = *v0;
  v3 = sub_24A8BB564();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_24A8B5064(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79880, &unk_24A8BECD0);
  result = sub_24A8BB574();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
      sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
      result = sub_24A8BB224();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_24A8B52E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79880, &unk_24A8BECD0);
  result = sub_24A8BB574();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v29 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
      sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
      result = sub_24A8BB224();
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
      v3 = v28;
      *(*(v6 + 48) + 8 * v14) = v29;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v8, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_24A8B5584(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_24A8BB4F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
        v12 = sub_24A8BB224() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
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

uint64_t sub_24A8B5778(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79880, &unk_24A8BECD0);
    v2 = sub_24A8BB584();
    v16 = v2;
    sub_24A8BB514();
    for (; sub_24A8BB544(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_24A8B52E0(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
      result = sub_24A8BB224();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_24A8B59B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
  sub_24A8BB224();
  v5 = -1 << *(a2 + 32);
  result = sub_24A8BB504();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24A8B5AA0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_24A8BB534();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_24A8BB524();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_24A8B5778(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_24A8B52E0(v19 + 1);
    }

    sub_24A8B59B0(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  v10 = *(v6 + 40);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
  v11 = sub_24A8BB224();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_24A8B5D50(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_24A882D9C(&unk_2814AAA78, &unk_27EF797E0, &qword_24A8BEB88);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_24A8BB234())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_24A8B5D50(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A8B52E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24A8B4F14();
      goto LABEL_12;
    }

    sub_24A8B5064(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88);
  result = sub_24A8BB224();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_24A882D9C(&unk_2814AAA78, &unk_27EF797E0, &qword_24A8BEB88);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_24A8BB234();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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
  result = sub_24A8BB8B4();
  __break(1u);
  return result;
}

void sub_24A8B5F3C()
{
  v1 = sub_24A8BB0D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A8BB104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 >> 60 == 15)
  {
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v24 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();
    v13 = v24;
  }

  else
  {
    v24 = v9;
    v23 = sub_24A8BB004();
    v14 = v2;
    v15 = [v23 fm_hexString];
    v16 = sub_24A8BB254();
    v18 = v17;

    v22 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
    v19 = swift_allocObject();
    v19[2] = v0;
    v19[3] = v16;
    v19[4] = v18;
    aBlock[4] = sub_24A8B6804;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A8875B4;
    aBlock[3] = &block_descriptor_49_0;
    v20 = _Block_copy(aBlock);
    v21 = v0;
    sub_24A8BB0F4();
    v25 = MEMORY[0x277D84F90];
    sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
    sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
    sub_24A8BB4E4();
    MEMORY[0x24C21EA40](0, v11, v5, v20);
    _Block_release(v20);

    (*(v14 + 8))(v5, v1);
    (*(v7 + 8))(v11, v24);
  }
}

void sub_24A8B62F0()
{
  v1 = sub_24A8BB0D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A8BB104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 >> 60 == 15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24A8BC300;
    v15 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic];
    v14 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic + 8];
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_24A8897F0();
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);

    v27 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    v16 = v27;
  }

  else
  {
    v27 = v9;
    v26 = sub_24A8BB004();
    v17 = v2;
    v18 = [v26 fm_hexString];
    v19 = sub_24A8BB254();
    v21 = v20;

    v25 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
    v22 = swift_allocObject();
    v22[2] = v0;
    v22[3] = v19;
    v22[4] = v21;
    aBlock[4] = sub_24A8B67F8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A8875B4;
    aBlock[3] = &block_descriptor_43;
    v23 = _Block_copy(aBlock);
    v24 = v0;
    sub_24A8BB0F4();
    v28 = MEMORY[0x277D84F90];
    sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
    sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
    sub_24A8BB4E4();
    MEMORY[0x24C21EA40](0, v11, v5, v23);
    _Block_release(v23);

    (*(v17 + 8))(v5, v1);
    (*(v7 + 8))(v11, v27);
  }
}

unint64_t sub_24A8B6710()
{
  result = qword_27EF797F8;
  if (!qword_27EF797F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF797F8);
  }

  return result;
}

void sub_24A8B67D8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_24A8B67E8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_24A8B6804()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_24A8B6854()
{
  result = qword_27EF79870;
  if (!qword_27EF79870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79870);
  }

  return result;
}

uint64_t sub_24A8B68A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A8B4404();
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A8B68F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_24A8B3C8C();
}

uint64_t FMNMockClientURLSession.__allocating_init(httpArchiveFileURL:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FMNMockClientURLSession.init(httpArchiveFileURL:)(a1);
  return v5;
}

uint64_t (*static FMNMockClientURLSession.mockSessionCreationBlock(httpArchiveFileURL:)(uint64_t a1))()
{
  v2 = sub_24A8BAFC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_24A8B6EFC;
}

uint64_t sub_24A8B6A8C(uint64_t a1)
{
  v2 = sub_24A8BAFC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24A8BC300;
  v8 = sub_24A8BAF64();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_24A8897F0();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v11 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  (*(v3 + 16))(v6, a1, v2);
  v12 = type metadata accessor for FMNMockClientURLSession();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  FMNMockClientURLSession.init(httpArchiveFileURL:)(v6);
  return v15;
}

uint64_t FMNMockClientURLSession.init(httpArchiveFileURL:)(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v3 = sub_24A8BB404();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_24A8BB104();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24A8BB414();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_responseReadQueue;
  v15 = sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v8 + 104))(v11, *MEMORY[0x277D85268], v7);
  sub_24A8BB0F4();
  v18 = MEMORY[0x277D84F90];
  sub_24A882D00(&unk_2814AB020, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D48(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A8BB4E4();
  *(v1 + v16) = sub_24A8BB444();
  *(v1 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL) = 0;
  v12 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
  v13 = sub_24A8BAFC4();
  (*(*(v13 - 8) + 32))(v2 + v12, v17, v13);
  return v2;
}

uint64_t sub_24A8B6EFC()
{
  v1 = *(sub_24A8BAFC4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24A8B6A8C(v2);
}

uint64_t FMNMockClientURLSession.httpArchiveFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
  v4 = sub_24A8BAFC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_24A8B6FD4(uint64_t a1, uint64_t a2, void (*a3)(void, unint64_t, void, void *))
{
  sub_24A8B706C();
  v4 = swift_allocError();
  *v5 = 3;
  a3(0, 0xF000000000000000, 0, v4);

  v6 = objc_allocWithZone(MEMORY[0x277CCAD68]);

  return [v6 init];
}

unint64_t sub_24A8B706C()
{
  result = qword_27EF798A0;
  if (!qword_27EF798A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF798A0);
  }

  return result;
}

id sub_24A8B70C0(uint64_t a1, void (*a2)(void, unint64_t, void, void *), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_24A8BAFC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v16 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  sub_24A8BADA4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24A88C1B4(v8);
    sub_24A8B706C();
    v17 = swift_allocError();
    *v18 = 1;
    a2(0, 0xF000000000000000, 0, v17);

    return [objc_allocWithZone(MEMORY[0x277CCAD40]) init];
  }

  else
  {
    v32 = a2;
    v33 = v15;
    v20 = *(v10 + 32);
    v20(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v34;
    v31 = a3;
    v24 = swift_allocObject();
    v20((v24 + v21), v13, v9);
    *(v24 + v22) = v23;
    v25 = (v24 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
    v26 = v31;
    *v25 = v32;
    v25[1] = v26;
    v27 = type metadata accessor for MockURLDataTask();
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR____TtC12FMNetworking15MockURLDataTask_executionBlock];
    *v29 = sub_24A8B7644;
    v29[1] = v24;
    v35.receiver = v28;
    v35.super_class = v27;

    v30 = objc_msgSendSuper2(&v35, sel_init);
    (*(v10 + 8))(v33, v9);
    return v30;
  }
}

uint64_t sub_24A8B741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a2;
  v7 = sub_24A8BAFC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A8BC300;
  v12 = sub_24A8BAF64();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_24A8897F0();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v15 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v10, v7);
  v19 = (v18 + v17);
  *v19 = a3;
  v19[1] = a4;

  sub_24A8B7C4C(a1, sub_24A8B9AD4, v18);
}

uint64_t sub_24A8B765C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v42 = a3;
  v40 = a2;
  v46 = sub_24A8BB0D4();
  v49 = *(v46 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A8BB104();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A8BAFC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A8BB0E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[3];
  v38 = a1[2];
  v39 = v21;
  sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v15 + 104))(v18, *MEMORY[0x277D851C8], v14);
  v41 = sub_24A8BB454();
  (*(v15 + 8))(v18, v14);
  (*(v11 + 16))(v13, v40, v10);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v22, v13, v10);
  v25 = (v24 + v23);
  v26 = v44;
  *v25 = v42;
  v25[1] = v26;
  v27 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v19;
  v27[1] = v20;
  v29 = v38;
  v28 = v39;
  v27[2] = v38;
  v27[3] = v28;
  aBlock[4] = sub_24A8B9B74;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_33_0;
  v30 = _Block_copy(aBlock);

  sub_24A88DD28(v19, v20);
  v31 = v29;
  v32 = v28;
  v33 = v43;
  sub_24A8BB0F4();
  v50 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  v35 = v45;
  v34 = v46;
  sub_24A8BB4E4();
  v36 = v41;
  MEMORY[0x24C21EA40](0, v33, v35, v30);
  _Block_release(v30);

  (*(v49 + 8))(v35, v34);
  (*(v47 + 8))(v33, v48);
}

uint64_t sub_24A8B7B28(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24A8BC300;
  v13 = sub_24A8BAF64();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_24A8897F0();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v16 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  return a2(a4, a5, a6, a7);
}

uint64_t sub_24A8B7C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v6 = sub_24A8BB0D4();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A8BB104();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A8BAFC4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v4 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_responseReadQueue);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = (v20 + v19);
  v22 = v27;
  *v21 = v26;
  v21[1] = v22;
  aBlock[4] = sub_24A8B9920;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_21_0;
  v23 = _Block_copy(aBlock);

  sub_24A8BB0F4();
  v32 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v13, v9, v23);
  _Block_release(v23);
  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);
}

void sub_24A8B7FFC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *))
{
  v8 = sub_24A8BAFC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *(a1 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL);
  if (!v11)
  {
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v27 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4();

    v28 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
    (*(v9 + 16))(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
    v29 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    (*(v9 + 32))(v30 + v29, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = a3;
    v31[1] = a4;

    sub_24A8B84A0(a1 + v28, sub_24A8B9A14, v30);

    return;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_7;
  }

  v12 = *(a1 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL);

  v13 = sub_24A894E70(a2);
  if ((v14 & 1) == 0)
  {

LABEL_7:
    sub_24A8BB3C4();
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v32 = sub_24A8BB464();
    sub_24A8BB0B4();

    sub_24A8B706C();
    v33 = swift_allocError();
    *v34 = 2;
    v38 = xmmword_24A8BECE0;
    *&v39 = 0;
    *(&v39 + 1) = v33;
    a3(&v38);
    v35 = v39;
    sub_24A88C814(v38, *(&v38 + 1));

    v26 = *(&v35 + 1);
    goto LABEL_8;
  }

  v15 = (*(v11 + 56) + 32 * v13);
  v16 = v15[1];
  v36 = *v15;
  v37 = v16;
  v17 = v36;
  sub_24A88DD28(v36, *(&v36 + 1));
  v18 = *(&v37 + 1);
  v19 = v37;
  v20 = *(&v37 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24A8BC300;
  v22 = sub_24A8BAF64();
  v24 = v23;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_24A8897F0();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v25 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  v38 = v36;
  v39 = v37;
  a3(&v38);
  sub_24A88C814(v17, *(&v17 + 1));

  v26 = v18;
LABEL_8:
}

uint64_t sub_24A8B83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v7 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  return sub_24A8B7C4C(a2, a3, a4);
}

uint64_t sub_24A8B84A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v28 = sub_24A8BB0D4();
  v30 = *(v28 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24A8BB104();
  v27 = *(v29 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A8BAFC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v3 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_responseReadQueue);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v16, v15, v12);
  *(v18 + v17) = v4;
  v19 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  aBlock[4] = sub_24A8B9788;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_5;
  v21 = _Block_copy(aBlock);

  sub_24A8BB0F4();
  v31 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  v22 = v28;
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v11, v8, v21);
  _Block_release(v21);
  (*(v30 + 8))(v8, v22);
  (*(v27 + 8))(v11, v29);
}

uint64_t sub_24A8B8864(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v116 = a4;
  v117 = a3;
  v115 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v122 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v113 - v10;
  MEMORY[0x28223BE20](v9);
  v132 = &v113 - v11;
  v12 = sub_24A8BAFC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v123 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v121 = &v113 - v18;
  MEMORY[0x28223BE20](v17);
  v124 = &v113 - v19;
  v20 = type metadata accessor for HAREntry();
  v126 = *(v20 - 8);
  v21 = *(v126 + 64);
  MEMORY[0x28223BE20](v20);
  v138 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FMNHTTPArchiveReader();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v27 = swift_allocObject();
  v141 = xmmword_24A8BC300;
  *(v27 + 16) = xmmword_24A8BC300;
  v28 = sub_24A8BAF64();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_24A8897F0();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v31 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  v32 = *(v13 + 16);
  v120 = v13 + 16;
  v119 = v32;
  v32(v26, a1, v12);
  v114 = v26;
  v33 = sub_24A89D61C();
  v34 = swift_allocObject();
  *(v34 + 16) = v141;
  v35 = v33[2];
  v36 = MEMORY[0x277D83C10];
  *(v34 + 56) = MEMORY[0x277D83B88];
  *(v34 + 64) = v36;
  *(v34 + 32) = v35;
  v37 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();

  v38 = v33;
  v137 = v33[2];
  if (!v137)
  {
    v125 = MEMORY[0x277D84F98];
LABEL_32:

    v110 = *(v115 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL);
    *(v115 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL) = v125;

    v117(v111);
    return sub_24A8B9850(v114, type metadata accessor for FMNHTTPArchiveReader);
  }

  v39 = v13;
  v40 = 0;
  v41 = v126;
  v135 = v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v140 = (v39 + 48);
  v129 = (v39 + 32);
  v128 = (v39 + 8);
  v118 = v39;
  v136 = (v39 + 56);
  v125 = MEMORY[0x277D84F98];
  v42 = v130;
  v43 = v132;
  v139 = v12;
  v44 = v138;
  v134 = v38;
  while (v40 < v38[2])
  {
    sub_24A89F118(&v135[*(v41 + 72) * v40], v44);
    v45 = v44 + *(v20 + 24);
    v46 = *(v45 + 56);
    if (v46)
    {
      v47 = *(v45 + 48);
      if (qword_27EF78FF8 != -1)
      {
        swift_once();
      }

      v48 = sub_24A8BB294();
      __swift_project_value_buffer(v48, qword_27EF7D4D8);
      v46 = sub_24A8BB264();
      v50 = v49;
    }

    else
    {
      v50 = 0xF000000000000000;
    }

    v51 = v44 + *(v20 + 20);
    v52 = *(v51 + 16);
    v53 = *(v51 + 24);
    sub_24A8BAFB4();
    v54 = *v140;
    if ((*v140)(v43, 1, v12) == 1)
    {
      sub_24A88C1B4(v43);
LABEL_4:
      sub_24A88C814(v46, v50);

      v12 = v139;
      (*v136)(v42, 1, 1, v139);
LABEL_5:
      v44 = v138;
      sub_24A8B9850(v138, type metadata accessor for HAREntry);
      sub_24A88C1B4(v42);
      goto LABEL_6;
    }

    v131 = v54;
    v55 = v124;
    v127 = *v129;
    v127(v124, v43, v12);
    v133 = *v45;
    v56 = *(v45 + 24);
    v57 = *(v45 + 32);
    v58 = *(v45 + 80);
    v147 = *(v45 + 64);
    v148 = v58;
    v149 = *(v45 + 96);
    v150 = *(v45 + 112);
    v59 = *(v45 + 16);
    v143 = *v45;
    v144 = v59;
    v60 = *(v45 + 48);
    v145 = *(v45 + 32);
    v146 = v60;
    *&v141 = v46;
    sub_24A89D9C0();
    v61 = v50;
    v62 = v20;
    v63 = v12;
    v64 = objc_allocWithZone(MEMORY[0x277CCAA40]);
    v65 = sub_24A8BAF84();
    v66 = sub_24A8BB244();
    v67 = sub_24A8BB1E4();

    v68 = [v64 initWithURL:v65 statusCode:v133 HTTPVersion:v66 headerFields:v67];

    v46 = v141;
    v43 = v132;

    v42 = v130;
    v69 = *v128;
    v70 = v55;
    v41 = v126;
    v71 = v63;
    v20 = v62;
    v50 = v61;
    (*v128)(v70, v71);
    if (!v68)
    {
      goto LABEL_4;
    }

    v72 = [v68 URL];
    if (v72)
    {
      v73 = v122;
      v74 = v72;
      sub_24A8BAF94();

      v75 = 0;
    }

    else
    {
      v75 = 1;
      v73 = v122;
    }

    v76 = v131;
    v77 = v139;
    (*v136)(v73, v75, 1, v139);
    sub_24A8B98B0(v73, v42);
    if (v76(v42, 1, v77) == 1)
    {
      sub_24A88C814(v141, v50);

      v43 = v132;
      v12 = v77;
      goto LABEL_5;
    }

    v133 = v69;
    v78 = v121;
    v127(v121, v42, v77);
    v79 = v123;
    v119(v123, v78, v77);
    sub_24A88DD28(v141, v50);
    v131 = v68;
    v80 = 0;
    v81 = v125;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = v81;
    v84 = sub_24A894E70(v79);
    v85 = *(v81 + 16);
    v86 = (v83 & 1) == 0;
    v87 = v85 + v86;
    if (__OFADD__(v85, v86))
    {
      goto LABEL_34;
    }

    v88 = v83;
    if (*(v81 + 24) >= v87)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A895BD8();
      }
    }

    else
    {
      sub_24A8951B4(v87, isUniquelyReferenced_nonNull_native);
      v89 = sub_24A894E70(v123);
      if ((v88 & 1) != (v90 & 1))
      {
        goto LABEL_36;
      }

      v84 = v89;
    }

    v43 = v132;
    v91 = v142;
    v125 = v142;
    if (v88)
    {
      v92 = (*(v142 + 56) + 32 * v84);
      v93 = *v92;
      v94 = v92[1];
      v95 = v92[2];
      v96 = v92[3];
      v97 = v141;
      *v92 = v141;
      v92[1] = v50;
      v92[2] = v68;
      v92[3] = 0;
      sub_24A88C814(v93, v94);

      sub_24A88C814(v97, v50);
      v98 = v139;
      v99 = v133;
      v133(v123, v139);
      v99(v121, v98);
    }

    else
    {
      *(v142 + 8 * (v84 >> 6) + 64) |= 1 << v84;
      v100 = v123;
      v101 = v139;
      v119(*(v91 + 48) + *(v118 + 72) * v84, v123, v139);
      v102 = (*(v125 + 56) + 32 * v84);
      v103 = v141;
      *v102 = v141;
      v102[1] = v50;
      v102[2] = v68;
      v102[3] = 0;
      sub_24A88C814(v103, v50);

      v104 = v133;
      v133(v100, v101);
      v105 = v101;
      v106 = v125;
      v104(v121, v105);
      v107 = *(v106 + 16);
      v108 = __OFADD__(v107, 1);
      v109 = v107 + 1;
      if (v108)
      {
        goto LABEL_35;
      }

      *(v106 + 16) = v109;
    }

    v44 = v138;
    sub_24A8B9850(v138, type metadata accessor for HAREntry);
    v42 = v130;
    v12 = v139;
LABEL_6:
    ++v40;
    v38 = v134;
    if (v137 == v40)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_24A8BB8C4();
  __break(1u);
  return result;
}

uint64_t FMNMockClientURLSession.deinit()
{
  v1 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
  v2 = sub_24A8BAFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL);

  return v0;
}

uint64_t FMNMockClientURLSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
  v2 = sub_24A8BAFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for FMNMockClientURLSession()
{
  result = qword_27EF798A8;
  if (!qword_27EF798A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A8B95E0()
{
  result = sub_24A8BAFC4();
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

unint64_t sub_24A8B9734()
{
  result = qword_27EF798B8;
  if (!qword_27EF798B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF798B8);
  }

  return result;
}

uint64_t sub_24A8B97A0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_24A8BAFC4() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = (v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a1(v1 + v3, v5, v7, v8);
}

uint64_t sub_24A8B9850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A8B98B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A8B9A2C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_24A8BAFC4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_24A8B9AD4(uint64_t *a1)
{
  v3 = *(sub_24A8BAFC4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_24A8B765C(a1, v1 + v4, v6, v7);
}

uint64_t sub_24A8B9B74()
{
  v1 = *(sub_24A8BAFC4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + v4 + 16);
  v11 = *(v0 + v4 + 24);

  return sub_24A8B7B28(v0 + v2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24A8B9C40(uint64_t a1)
{
  v2 = sub_24A8BAE54();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF798C0, &unk_24A8BEE10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for HAREntry();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (a1 + 48);
    v16 = MEMORY[0x277D84F90];
    v33 = v9;
    do
    {
      v17 = *v15;
      v28 = *(v15 - 1);
      v29 = v17;
      sub_24A8B9FC0(v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_24A886D90(v8, &qword_27EF798C0, &unk_24A8BEE10);
      }

      else
      {
        sub_24A89F1D8(v8, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_24A8961EC(0, v16[2] + 1, 1, v16);
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = sub_24A8961EC(v18 > 1, v19 + 1, 1, v16);
        }

        v16[2] = v19 + 1;
        sub_24A89F1D8(v13, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19);
        v9 = v33;
      }

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v20 = sub_24A8BAE94();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_24A8BAE84();
  (*(v26 + 104))(v25, *MEMORY[0x277CC8778], v27);
  sub_24A8BAE64();
  *&v28 = 3288625;
  *(&v28 + 1) = 0xE300000000000000;
  *&v29 = v16;
  *(&v29 + 1) = 0xD000000000000010;
  v30 = 0x800000024A8C08D0;
  v31 = 3157553;
  v32 = 0xE300000000000000;
  sub_24A8BA9F8();
  v23 = sub_24A8BAE74();

  swift_bridgeObjectRelease_n();

  return v23;
}

uint64_t sub_24A8B9FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A8BB054();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A8BB294();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = *(v1 + 16);
  v20 = *(v1 + 16);
  if (!v20)
  {
    goto LABEL_7;
  }

  v55 = *(v1 + 16);
  v59 = a1;
  v21 = *(v1 + 8);
  v56 = *v1;
  v57 = v4;
  v22 = [v20 URL];
  if (v22)
  {
    v23 = v22;
    sub_24A8BAF94();

    v24 = sub_24A8BAFC4();
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  }

  else
  {
    v24 = sub_24A8BAFC4();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  }

  sub_24A8B98B0(v16, v18);
  sub_24A8BAFC4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v18, 1, v24) == 1)
  {
    sub_24A886D90(v18, &qword_27EF79180, &qword_24A8BC9F0);
    a1 = v59;
LABEL_7:
    v26 = type metadata accessor for HAREntry();
    return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
  }

  v54 = sub_24A8BAF64();
  v29 = v28;
  (*(v25 + 8))(v18, v24);
  v30 = [v20 statusCode];
  if (v21 >> 60 == 15)
  {
    v31 = type metadata accessor for HAREntry();
    (*(*(v31 - 8) + 56))(v59, 1, 1, v31);
  }

  else
  {
    v32 = v30;
    v33 = *MEMORY[0x277CBAD00];
    v52 = sub_24A8BB254();
    v35 = v34;
    v36 = v56;
    sub_24A88C9AC(v56, v21);
    if (qword_27EF78FF8 != -1)
    {
      swift_once();
    }

    v53 = v29;
    v37 = __swift_project_value_buffer(v8, qword_27EF7D4D8);
    (*(v58 + 16))(v11, v37, v8);
    v38 = sub_24A8BB274();
    v40 = v38;
    v41 = v39;
    if (v39)
    {
      v60 = v38;
      v61 = v39;
      sub_24A88A774();
      v58 = v35;

      v35 = v58;
      v42 = sub_24A8BB4A4();
    }

    else
    {
      v42 = -1;
    }

    v60 = v36;
    v61 = v21;
    v62 = v55;

    v43 = sub_24A8BA81C();
    sub_24A8BB044();
    sub_24A88C814(v36, v21);
    v44 = v59;
    (*(v57 + 32))(v59, v7, v3);
    v45 = type metadata accessor for HAREntry();
    v46 = (v44 + *(v45 + 20));
    *v46 = 1414745936;
    v46[1] = 0xE400000000000000;
    v47 = v53;
    v46[2] = v54;
    v46[3] = v47;
    v48 = v52;
    v46[4] = v52;
    v46[5] = v35;
    v49 = MEMORY[0x277D84F90];
    v46[6] = MEMORY[0x277D84F90];
    v46[7] = v49;
    v46[8] = v49;
    v46[9] = -1;
    v46[11] = 0;
    v46[12] = 0;
    v46[10] = -1;
    v50 = v44 + *(v45 + 24);
    *v50 = v32;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0xE000000000000000;
    *(v50 + 24) = v48;
    *(v50 + 32) = v35;
    *(v50 + 40) = v43;
    *(v50 + 48) = v40;
    *(v50 + 56) = v41;
    *(v50 + 64) = 0;
    *(v50 + 72) = 0;
    *(v50 + 88) = 0;
    *(v50 + 96) = 0;
    *(v50 + 80) = v42;
    *(v50 + 104) = xmmword_24A8BEE00;
    return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  }
}

uint64_t sub_24A8BA584(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF798C0, &unk_24A8BEE10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for HAREntry();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (a1 + 48);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = *v13;
      v20 = *(v13 - 1);
      v21 = v15;
      sub_24A8B9FC0(v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_24A886D90(v6, &qword_27EF798C0, &unk_24A8BEE10);
      }

      else
      {
        sub_24A89F1D8(v6, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_24A8961EC(0, v14[2] + 1, 1, v14);
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          v14 = sub_24A8961EC(v16 > 1, v17 + 1, 1, v14);
        }

        v14[2] = v17 + 1;
        sub_24A89F1D8(v11, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17);
      }

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  *&v20 = 3288625;
  *(&v20 + 1) = 0xE300000000000000;
  *&v21 = v14;
  *(&v21 + 1) = 0xD000000000000010;
  v22 = 0x800000024A8C08D0;
  v23 = 3157553;
  v24 = 0xE300000000000000;
  sub_24A8BAA4C(&v20);

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_24A8BA81C()
{
  v1 = *(v0 + 16);
  if (v1 && (v2 = [v1 allHeaderFields], v3 = sub_24A8BB1F4(), v2, v4 = sub_24A88DD3C(v3), result = , v4))
  {
    v6 = 0;
    v7 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = MEMORY[0x277D84F90];
    v25 = v4;
    if (v10)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return v12;
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        v6 = v13;
        do
        {
LABEL_10:
          v14 = (v6 << 10) | (16 * __clz(__rbit64(v10)));
          v15 = *(v4 + 56);
          v16 = (*(v4 + 48) + v14);
          v17 = *v16;
          v18 = v16[1];
          v19 = (v15 + v14);
          v21 = *v19;
          v20 = v19[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_24A8963C4(0, *(v12 + 16) + 1, 1, v12);
            v12 = result;
          }

          v23 = *(v12 + 16);
          v22 = *(v12 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_24A8963C4((v22 > 1), v23 + 1, 1, v12);
            v12 = result;
          }

          v10 &= v10 - 1;
          *(v12 + 16) = v23 + 1;
          v24 = (v12 + 32 * v23);
          v24[4] = v17;
          v24[5] = v18;
          v4 = v25;
          v24[6] = v21;
          v24[7] = v20;
        }

        while (v10);
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_24A8BA9F8()
{
  result = qword_27EF798C8;
  if (!qword_27EF798C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF798C8);
  }

  return result;
}

uint64_t sub_24A8BAA4C(uint64_t a1)
{
  v2 = sub_24A8BAE54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A8BAE94();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_24A8BAE84();
  (*(v3 + 104))(v6, *MEMORY[0x277CC8778], v2);
  sub_24A8BAE64();
  v10 = *(a1 + 16);
  v15[1] = *a1;
  v15[2] = v10;
  v15[3] = *(a1 + 32);
  v16 = *(a1 + 48);
  sub_24A8BA9F8();
  v11 = sub_24A8BAE74();
  v13 = v12;

  sub_24A8BAFD4();
  return sub_24A88C828(v11, v13);
}