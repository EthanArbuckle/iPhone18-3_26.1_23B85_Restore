uint64_t sub_25877F710(uint64_t a1)
{
  v2 = sub_25877F848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25877F74C(uint64_t a1)
{
  v2 = sub_25877F848();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25877F848()
{
  result = qword_27F959300;
  if (!qword_27F959300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959300);
  }

  return result;
}

uint64_t sub_25877F89C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeactivateMediaToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25877F900(uint64_t a1)
{
  v2 = type metadata accessor for DeactivateMediaToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25877F95C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25877F9B8()
{
  result = qword_27F959310;
  if (!qword_27F959310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959310);
  }

  return result;
}

unint64_t sub_25877FA10()
{
  result = qword_27F959318;
  if (!qword_27F959318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959318);
  }

  return result;
}

unint64_t sub_25877FA68()
{
  result = qword_27F959320;
  if (!qword_27F959320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959320);
  }

  return result;
}

uint64_t sub_25877FACC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959358, &qword_2587852D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258780270();
  sub_258783AB4();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591F0, &qword_258784A58);
  sub_25877CB70();
  sub_2587839D4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25877FC34@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25877FC64(uint64_t a1)
{
  v2 = sub_25878030C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25877FCA0(uint64_t a1)
{
  v2 = sub_25878030C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25877FD04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959360, &qword_2587852D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25878030C();
  sub_258783AB4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_25877FE1C()
{
  result = qword_27F959328;
  if (!qword_27F959328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959328);
  }

  return result;
}

unint64_t sub_25877FE74()
{
  result = qword_27F959330;
  if (!qword_27F959330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959330);
  }

  return result;
}

unint64_t sub_25877FECC()
{
  result = qword_27F959338;
  if (!qword_27F959338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959338);
  }

  return result;
}

unint64_t sub_25877FF24()
{
  result = qword_27F959340;
  if (!qword_27F959340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959340);
  }

  return result;
}

uint64_t sub_25877FF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736553616964656DLL && a2 == 0xED0000736E6F6973)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_258783A04();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25878002C(uint64_t a1)
{
  v2 = sub_258780270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258780068(uint64_t a1)
{
  v2 = sub_258780270();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2587800A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2587800EC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_2587800EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959348, &qword_2587852C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258780270();
  sub_258783AA4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591F0, &qword_258784A58);
    sub_25877CD18();
    sub_2587839B4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_258780270()
{
  result = qword_27F959350;
  if (!qword_27F959350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959350);
  }

  return result;
}

uint64_t sub_2587802C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25878030C()
{
  result = qword_27F959368;
  if (!qword_27F959368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959368);
  }

  return result;
}

unint64_t sub_258780394()
{
  result = qword_27F959370;
  if (!qword_27F959370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959370);
  }

  return result;
}

unint64_t sub_2587803EC()
{
  result = qword_27F959378;
  if (!qword_27F959378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959378);
  }

  return result;
}

unint64_t sub_258780444()
{
  result = qword_27F959380;
  if (!qword_27F959380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959380);
  }

  return result;
}

unint64_t sub_25878049C()
{
  result = qword_27F959388;
  if (!qword_27F959388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959388);
  }

  return result;
}

unint64_t sub_2587804F4()
{
  result = qword_27F959390;
  if (!qword_27F959390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959390);
  }

  return result;
}

uint64_t sub_258780568(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2587805E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EndMediaSession()
{
  result = qword_27F959398;
  if (!qword_27F959398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587806A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_258783704();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9593B8, &qword_2587855D8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for EndMediaSession();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258780BC4();
  sub_258783AA4();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_258780C7C(&qword_27F959118, MEMORY[0x277CC95F0]);
    sub_2587839B4();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_258780C18(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25878092C(uint64_t a1)
{
  v2 = sub_258780BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258780968(uint64_t a1)
{
  v2 = sub_258780BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2587809BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9593C8, &qword_2587855E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258780BC4();
  sub_258783AB4();
  sub_258783704();
  sub_258780C7C(&qword_27F9590E0, MEMORY[0x277CC95F0]);
  sub_2587839D4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_258780BC4()
{
  result = qword_27F9593C0;
  if (!qword_27F9593C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593C0);
  }

  return result;
}

uint64_t sub_258780C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndMediaSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258780C7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258780CD8()
{
  result = qword_27F9593D0;
  if (!qword_27F9593D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593D0);
  }

  return result;
}

unint64_t sub_258780D30()
{
  result = qword_27F9593D8;
  if (!qword_27F9593D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593D8);
  }

  return result;
}

unint64_t sub_258780D88()
{
  result = qword_27F9593E0;
  if (!qword_27F9593E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593E0);
  }

  return result;
}

uint64_t sub_258780DEC(uint64_t a1)
{
  v2 = sub_2587810D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258780E28(uint64_t a1)
{
  v2 = sub_2587810D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258780E64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959408, &qword_2587857D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2587810D8();
  sub_258783AB4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_258780F7C()
{
  result = qword_27F9593E8;
  if (!qword_27F9593E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593E8);
  }

  return result;
}

unint64_t sub_258780FD4()
{
  result = qword_27F9593F0;
  if (!qword_27F9593F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593F0);
  }

  return result;
}

unint64_t sub_25878102C()
{
  result = qword_27F9593F8;
  if (!qword_27F9593F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9593F8);
  }

  return result;
}

unint64_t sub_258781084()
{
  result = qword_27F959400;
  if (!qword_27F959400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959400);
  }

  return result;
}

unint64_t sub_2587810D8()
{
  result = qword_27F959410;
  if (!qword_27F959410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959410);
  }

  return result;
}

unint64_t sub_258781140()
{
  result = qword_27F959418;
  if (!qword_27F959418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959418);
  }

  return result;
}

unint64_t sub_258781198()
{
  result = qword_27F959420;
  if (!qword_27F959420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959420);
  }

  return result;
}

uint64_t sub_2587811FC(uint64_t a1)
{
  v2 = sub_258781388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258781238(uint64_t a1)
{
  v2 = sub_258781388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258781274(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959428, &qword_258785958);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258781388();
  sub_258783AB4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_258781388()
{
  result = qword_27F959430;
  if (!qword_27F959430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959430);
  }

  return result;
}

unint64_t sub_2587813F0()
{
  result = qword_27F959438;
  if (!qword_27F959438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959438);
  }

  return result;
}

unint64_t sub_258781448()
{
  result = qword_27F959440;
  if (!qword_27F959440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959440);
  }

  return result;
}

uint64_t sub_2587814B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258783704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25878157C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258783704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for RequestMediaToken()
{
  result = qword_27F959448;
  if (!qword_27F959448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258781680(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959478, &qword_258785AF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258781CE8();
  sub_258783AB4();
  v12[15] = 0;
  sub_258783704();
  sub_258781DFC(&qword_27F9590E0, MEMORY[0x277CC95F0]);
  sub_2587839D4();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for RequestMediaToken() + 20));
    v12[13] = 1;
    sub_2587745D8();
    sub_2587839D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258781850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_258783704();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959468, &qword_258785AF0);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RequestMediaToken();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258781CE8();
  sub_258783AA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_258781DFC(&qword_27F959118, MEMORY[0x277CC95F0]);
  v19 = v31;
  v20 = v29;
  sub_2587839B4();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_2587750C8();
  sub_2587839B4();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_258781D3C(v22, v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_258781DA0(v22);
}

uint64_t sub_258781BB0(uint64_t a1)
{
  v2 = sub_258781CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258781BEC(uint64_t a1)
{
  v2 = sub_258781CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_258781CE8()
{
  result = qword_27F959470;
  if (!qword_27F959470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959470);
  }

  return result;
}

uint64_t sub_258781D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestMediaToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258781DA0(uint64_t a1)
{
  v2 = type metadata accessor for RequestMediaToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258781DFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258781E58()
{
  result = qword_27F959480;
  if (!qword_27F959480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959480);
  }

  return result;
}

unint64_t sub_258781EB0()
{
  result = qword_27F959488;
  if (!qword_27F959488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959488);
  }

  return result;
}

unint64_t sub_258781F08()
{
  result = qword_27F959490;
  if (!qword_27F959490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959490);
  }

  return result;
}

uint64_t sub_258781F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258781FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ValidateMediaSession()
{
  result = qword_27F959498;
  if (!qword_27F959498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587820AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_258783704();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9594B8, &qword_258785D00);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ValidateMediaSession();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2587825E4();
  sub_258783AA4();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_25878269C(&qword_27F959118, MEMORY[0x277CC95F0]);
    sub_2587839B4();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_258782638(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_258782334(uint64_t a1)
{
  v2 = sub_2587825E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258782370(uint64_t a1)
{
  v2 = sub_2587825E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2587823C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9594C8, &qword_258785D08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2587825E4();
  sub_258783AB4();
  sub_258783704();
  sub_25878269C(&qword_27F9590E0, MEMORY[0x277CC95F0]);
  sub_2587839D4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2587825E4()
{
  result = qword_27F9594C0;
  if (!qword_27F9594C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9594C0);
  }

  return result;
}

uint64_t sub_258782638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidateMediaSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25878269C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2587826F8()
{
  result = qword_27F9594D0;
  if (!qword_27F9594D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9594D0);
  }

  return result;
}

unint64_t sub_258782750()
{
  result = qword_27F9594D8;
  if (!qword_27F9594D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9594D8);
  }

  return result;
}

unint64_t sub_2587827A8()
{
  result = qword_27F9594E0;
  if (!qword_27F9594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9594E0);
  }

  return result;
}

uint64_t sub_258782810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258783704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2587828DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258783704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for ValidateMediaToken()
{
  result = qword_27F9594E8;
  if (!qword_27F9594E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587829E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959518, &qword_258785F18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258783048();
  sub_258783AB4();
  v12[15] = 0;
  sub_258783704();
  sub_25878315C(&qword_27F9590E0, MEMORY[0x277CC95F0]);
  sub_2587839D4();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for ValidateMediaToken() + 20));
    v12[13] = 1;
    sub_2587745D8();
    sub_2587839D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258782BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_258783704();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959508, &qword_258785F10);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ValidateMediaToken();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258783048();
  sub_258783AA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_25878315C(&qword_27F959118, MEMORY[0x277CC95F0]);
  v19 = v31;
  v20 = v29;
  sub_2587839B4();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_2587750C8();
  sub_2587839B4();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_25878309C(v22, v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_258783100(v22);
}

uint64_t sub_258782F10(uint64_t a1)
{
  v2 = sub_258783048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258782F4C(uint64_t a1)
{
  v2 = sub_258783048();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_258783048()
{
  result = qword_27F959510;
  if (!qword_27F959510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959510);
  }

  return result;
}

uint64_t sub_25878309C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidateMediaToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258783100(uint64_t a1)
{
  v2 = type metadata accessor for ValidateMediaToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25878315C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2587831B8()
{
  result = qword_27F959520;
  if (!qword_27F959520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959520);
  }

  return result;
}

unint64_t sub_258783210()
{
  result = qword_27F959528;
  if (!qword_27F959528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959528);
  }

  return result;
}

unint64_t sub_258783268()
{
  result = qword_27F959530;
  if (!qword_27F959530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959530);
  }

  return result;
}

uint64_t sub_2587832BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783934();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v19 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    return 7104878;
  }

  else
  {
    (*(v10 + 32))(v16, v9, a2);
    (*(v10 + 16))(v14, v16, a2);
    v18 = sub_258783884();
    (*(v10 + 8))(v16, a2);
    return v18;
  }
}

uint64_t sub_258783510(uint64_t a1, uint64_t *a2)
{
  v3 = sub_258783764();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_258783754();
}