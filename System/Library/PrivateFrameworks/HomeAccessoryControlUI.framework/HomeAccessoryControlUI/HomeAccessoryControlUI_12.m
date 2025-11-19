uint64_t sub_25245E94C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 124) = a1;

  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_25245EA94, v5, v4);
}

uint64_t sub_25245EA94()
{
  v1 = *(v0 + 124);

  if (v1 == 1)
  {
    v2 = *(v0 + 120);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    sub_25245B948(v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = sub_25268DA10();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    (*(v6 + 16))(v3, v4 + v2, v5, v6);
    sub_252372288(v3, &qword_27F4DB290);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25245EBC4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_2526911D0();
  sub_25245EDA0(a1, v30);
  v4 = v30[0];
  v5 = v30[1];
  v6 = v31;
  v27 = v33;
  v28 = v32;
  v7 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2526952C0;
  v9 = sub_252691A30();
  *(inited + 32) = v9;
  v10 = sub_252691A40();
  *(inited + 33) = v10;
  v11 = sub_252691A70();
  *(inited + 34) = v11;
  v12 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v9)
  {
    v12 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v10)
  {
    v12 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v11)
  {
    v12 = sub_252691A60();
  }

  sub_252690760();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v35 = 0;
  v21 = sub_252691A50();
  result = sub_252690760();
  *a2 = v29;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v28;
  *(a2 + 56) = v27;
  *(a2 + 64) = v7;
  *(a2 + 72) = v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = v16;
  *(a2 + 96) = v18;
  *(a2 + 104) = v20;
  *(a2 + 112) = 0;
  *(a2 + 120) = v21;
  *(a2 + 128) = v23;
  *(a2 + 136) = v24;
  *(a2 + 144) = v25;
  *(a2 + 152) = v26;
  *(a2 + 160) = 0;
  return result;
}

uint64_t sub_25245EDA0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_2526910F0();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252692C40();
  sub_252691B80();
  v7 = sub_252691D00();
  v9 = v8;
  v11 = v10;

  v38 = *(a1 + 32);
  v12 = a1[3];
  v37[2] = a1[2];
  v37[3] = v12;
  v13 = a1[1];
  v37[0] = *a1;
  v37[1] = v13;
  if ((v38 & 0x100) != 0)
  {
    v14 = a1[3];
    v34 = a1[2];
    v35 = v14;
    v36 = *(a1 + 64);
    v15 = a1[1];
    v32 = *a1;
    v33 = v15;
  }

  else
  {

    sub_252692F00();
    v16 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v37, &qword_27F4DC120);
    (*(v4 + 8))(v6, v31);
  }

  if (v32 == 1)
  {
    sub_252692340();
  }

  else
  {
    sub_252692330();
  }

  v17 = sub_252691CC0();
  v19 = v18;
  v21 = v20;

  sub_2524228D8(v7, v9, v11 & 1);

  sub_252691B40();
  v22 = sub_252691C90();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2524228D8(v17, v19, v21 & 1);

  *a2 = v22;
  *(a2 + 8) = v24;
  v26 &= 1u;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_25235EABC(v22, v24, v26);

  sub_2524228D8(v22, v24, v26);
}

uint64_t sub_25245F090@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ControlBackgroundView();
  v3 = (v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  KeyPath = swift_getKeyPath();
  v16[15] = 0;
  *v8 = KeyPath;
  v8[65] = 0;
  v10 = v3[7];
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v11 = &v8[v3[8]];
  v8[v3[9]] = 2;
  v12 = v3[10];
  v13 = [objc_opt_self() systemGray4Color];
  *&v8[v12] = sub_252692240();
  *v11 = 0;
  v11[8] = 1;
  if (qword_27F4DAA18 != -1)
  {
    swift_once();
  }

  v14 = qword_27F4FB408;
  sub_25245FA3C(v8, v6, type metadata accessor for ControlBackgroundView);
  sub_25245FA3C(v6, a1, type metadata accessor for ControlBackgroundView);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD508) + 48)) = v14;
  swift_retain_n();
  sub_25245FBEC(v8, type metadata accessor for ControlBackgroundView);

  return sub_25245FBEC(v6, type metadata accessor for ControlBackgroundView);
}

uint64_t sub_25245F290@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_252691300();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3A0);
  return sub_25245BAB4(v1, a1 + *(v3 + 44));
}

unint64_t sub_25245F2EC()
{
  result = qword_27F4DD410;
  if (!qword_27F4DD410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD408);
    sub_25245F3A4();
    sub_252400FC8(&qword_27F4DD460, &qword_27F4DD468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD410);
  }

  return result;
}

unint64_t sub_25245F3A4()
{
  result = qword_27F4DD418;
  if (!qword_27F4DD418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD428);
    sub_25245F498();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DD450, &qword_27F4DD458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD418);
  }

  return result;
}

unint64_t sub_25245F498()
{
  result = qword_27F4DD430;
  if (!qword_27F4DD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD428);
    type metadata accessor for AlarmCell();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD438);
    sub_25245FB9C(&qword_27F4DD440, type metadata accessor for AlarmCell);
    sub_252400FC8(&qword_27F4DD448, &qword_27F4DD438);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD430);
  }

  return result;
}

uint64_t sub_25245F5DC()
{
  sub_2526922F0();
  v0 = sub_252692350();

  qword_27F4FB408 = v0;
  return result;
}

unint64_t sub_25245F624()
{
  result = qword_27F4DD480;
  if (!qword_27F4DD480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD3D0);
    sub_25245F6DC();
    sub_252400FC8(&qword_27F4DD298, &qword_27F4DD2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD480);
  }

  return result;
}

unint64_t sub_25245F6DC()
{
  result = qword_27F4DD488;
  if (!qword_27F4DD488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD3C8);
    sub_252690B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD3C0);
    sub_252400FC8(&qword_27F4DD470, &qword_27F4DD3C0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DD490, &qword_27F4DD498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD488);
  }

  return result;
}

uint64_t sub_25245F860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmsControlView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25245F8F8()
{
  result = qword_27F4DD4B8;
  if (!qword_27F4DD4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD4B0);
    sub_25245F984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD4B8);
  }

  return result;
}

unint64_t sub_25245F984()
{
  result = qword_27F4DD4C0;
  if (!qword_27F4DD4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD4C8);
    sub_252400FC8(&qword_27F4DD4D0, &qword_27F4DD4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD4C0);
  }

  return result;
}

uint64_t sub_25245FA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25245FAA4(uint64_t a1)
{
  v4 = *(type metadata accessor for AlarmsControlView() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_252401074;

  return sub_25245E7AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25245FB9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25245FBEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25245FC78(uint64_t a1)
{
  sub_25268E5F0();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2523E233C;

  return sub_25245E1BC(a1);
}

unint64_t sub_25245FD68()
{
  result = qword_27F4DD558;
  if (!qword_27F4DD558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD550);
    sub_252400FC8(&qword_27F4DD560, &qword_27F4DD568);
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD558);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for AlarmsControlView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_252457A80(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56), *(v0 + v4 + 64), *(v0 + v4 + 65));
  if (*(v0 + v4 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 72);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v1 + 32);
  v9 = sub_25268DF70();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_25245FFF0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_252460074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252460148@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526911D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD598);
  sub_252460390(v1, a1 + *(v3 + 44));
  v4 = sub_252691A20();
  sub_252690760();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5A0) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_252692920();
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5A8) + 36);
  *v17 = swift_getKeyPath();
  *(v17 + 65) = 0;
  v18 = type metadata accessor for ControlBackgroundView();
  v19 = v18[5];
  *(v17 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v20 = v17 + v18[6];
  *(v17 + v18[7]) = 2;
  v21 = v18[8];
  v22 = [objc_opt_self() systemGray4Color];
  *(v17 + v21) = sub_252692240();
  *v20 = 0;
  *(v20 + 8) = 1;
  v23 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5B0) + 36));
  v24 = *(sub_252690D30() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_252691260();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8) + 36)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5B8);
  v33 = (v17 + *(result + 36));
  *v33 = v14;
  v33[1] = v16;
  return result;
}

uint64_t sub_252460390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DeleteButton(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_25268E6B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CountDownTimer(0);
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5C8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v49 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v43 - v20;
  v54 = sub_2526912F0();
  LOBYTE(v59[0]) = 1;
  sub_252460AA8(a1, v70);
  *&v69[7] = v70[0];
  *&v69[23] = v70[1];
  *&v69[39] = v70[2];
  *&v69[55] = v70[3];
  v53 = LOBYTE(v59[0]);
  if (sub_25268E6A0())
  {
    (*(v48 + 56))(v55, 1, 1, v52);
    v21 = *(v12 + 16);
  }

  else
  {
    v47 = a1;
    v43 = *(v12 + 16);
    v46 = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43(v14, a1, v11);
    v45 = *(v52 + 20);
    sub_252461488();
    v22 = [objc_opt_self() mainRunLoop];
    v44 = v11;
    v23 = v22;
    v24 = sub_252693120();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    v25 = sub_252693060();

    v26 = v10;
    v21 = v43;
    sub_252372288(v26, &qword_27F4DD5C0);
    v59[0] = v25;
    sub_252693050();
    sub_252463978(&qword_27F4DD5D8, MEMORY[0x277CC9DF0]);
    v27 = sub_252690640();

    v11 = v44;
    *&v16[v45] = v27;
    v21(v16, v14, v11);
    a1 = v47;
    sub_25268E640();
    v29 = v28;
    (*(v12 + 8))(v14, v11);
    v30 = v52;
    v31 = &v16[*(v52 + 24)];
    *v31 = v29 + -1.0;
    *(v31 + 1) = 0;
    v32 = v55;
    sub_2524633D0(v16, v55, type metadata accessor for CountDownTimer);
    (*(v48 + 56))(v32, 0, 1, v30);
  }

  v33 = v11;
  v34 = v50;
  v21(v50, a1, v33);
  v35 = v49;
  sub_25237153C(v55, v49, &qword_27F4DD5C8);
  v36 = v51;
  sub_2524636E4(v34, v51, type metadata accessor for DeleteButton);
  *&v57[4] = *&v69[63];
  *(&v57[3] + 1) = *&v69[48];
  *(&v57[1] + 1) = *&v69[16];
  v56 = v54;
  LOBYTE(v57[0]) = v53;
  *(&v57[2] + 1) = *&v69[32];
  *(v57 + 1) = *v69;
  WORD4(v57[4]) = 257;
  *(&v57[4] + 10) = v71;
  HIWORD(v57[4]) = v72;
  v58 = 0x4000000000000000;
  v37 = v57[4];
  *(a2 + 64) = v57[3];
  *(a2 + 80) = v37;
  v38 = v57[0];
  *a2 = v56;
  *(a2 + 16) = v38;
  v39 = v57[2];
  *(a2 + 32) = v57[1];
  *(a2 + 48) = v39;
  *(a2 + 96) = 0x4000000000000000;
  *(a2 + 104) = 0x4034000000000000;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0x3FF0000000000000;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5E0);
  sub_25237153C(v35, a2 + v40[16], &qword_27F4DD5C8);
  v41 = a2 + v40[20];
  *v41 = 0x402E000000000000;
  *(v41 + 8) = 0;
  sub_2524636E4(v36, a2 + v40[24], type metadata accessor for DeleteButton);
  sub_25237153C(&v56, v59, &qword_27F4DD270);
  sub_2524614D4(v34);
  sub_252372288(v55, &qword_27F4DD5C8);
  sub_2524614D4(v36);
  sub_252372288(v35, &qword_27F4DD5C8);
  v62 = *&v69[16];
  v63 = *&v69[32];
  *v64 = *&v69[48];
  v59[0] = v54;
  v59[1] = 0;
  v60 = v53;
  *&v64[15] = *&v69[63];
  v61 = *v69;
  v65 = 257;
  v66 = v71;
  v67 = v72;
  v68 = 0x4000000000000000;
  return sub_252372288(v59, &qword_27F4DD270);
}

uint64_t sub_252460AA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v101 = a2;
  v99 = sub_25268E650();
  v98 = *(v99 - 8);
  v3 = MEMORY[0x28223BE20](v99);
  v97 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v96 = v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v6 - 8);
  v100 = v88 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5E8);
  v8 = MEMORY[0x28223BE20](v92);
  v91 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = v88 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5F0);
  MEMORY[0x28223BE20](v89);
  v12 = v88 - v11;
  v13 = sub_25268D990();
  v108 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v88 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v107 = v88 - v21;
  MEMORY[0x28223BE20](v20);
  v106 = v88 - v22;
  v23 = sub_25268E670();
  v104 = v12;
  v105 = v13;
  v102 = v19;
  v103 = v16;
  v25 = a1;
  if (!v24)
  {
    v23 = sub_252692C40();
  }

  v112 = v23;
  v113 = v24;
  sub_252404480();
  v26 = sub_252691D50();
  v28 = v27;
  v30 = v29;
  sub_252691BB0();
  sub_252691AE0();

  v31 = sub_252691D00();
  v33 = v32;
  v35 = v34;

  sub_2524228D8(v26, v28, v30 & 1);

  LODWORD(v112) = sub_2526915F0();
  v95 = sub_252691CD0();
  v94 = v36;
  v93 = v37;
  v39 = v38;
  sub_2524228D8(v31, v33, v35 & 1);

  v40 = v106;
  sub_25268D980();
  v41 = v25;
  sub_25268E620();
  v42 = v103;
  sub_25268E610();
  v43 = v102;
  sub_25268D920();
  if (sub_25268D940())
  {
    v44 = v107;
    v45 = v43;
    v46 = v105;
    (*(v108 + 32))(v107, v45, v105);
  }

  else
  {
    v47 = v108;
    v48 = v43;
    v46 = v105;
    (*(v108 + 8))(v48, v105);
    v44 = v107;
    (*(v47 + 16))(v107, v40, v46);
  }

  v49 = v104;
  sub_25268E610();
  sub_252463978(&qword_27F4DBC70, MEMORY[0x277CC9578]);
  result = sub_252692B60();
  if (result)
  {
    v102 = v39;
    v88[1] = v41;
    v51 = v108;
    v52 = *(v108 + 32);
    v53 = v90;
    v52(v90, v42, v46);
    v54 = v92;
    (*(v51 + 16))(v53 + *(v92 + 48), v44, v46);
    v55 = v91;
    sub_25237153C(v53, v91, &qword_27F4DD5E8);
    v56 = *(v54 + 48);
    v52(v49, v55, v46);
    v57 = v51 + 8;
    v58 = *(v51 + 8);
    v58(v55 + v56, v46);
    sub_252461530(v53, v55);
    v52(&v49[*(v89 + 36)], (v55 + *(v54 + 48)), v46);
    v103 = v58;
    v92 = v57;
    v58(v55, v46);
    v59 = v96;
    sub_25268E660();
    v60 = v98;
    v61 = v97;
    v62 = v99;
    (*(v98 + 104))(v97, *MEMORY[0x277D15928], v99);
    sub_252463978(&qword_27F4DD5F8, MEMORY[0x277D15930]);
    sub_252692D40();
    sub_252692D40();
    v63 = *(v60 + 8);
    v63(v61, v62);
    v63(v59, v62);
    if (v112 == v111)
    {
      v64 = 1;
      v65 = v100;
    }

    else
    {
      sub_25268E640();
      v65 = v100;
      sub_25268D960();
      v64 = 0;
    }

    (*(v108 + 56))(v65, v64, 1, v46);
    sub_25268E640();
    v66 = sub_252691CA0();
    v68 = v67;
    v70 = v69;
    v71 = v46;
    sub_252691AF0();
    sub_252691AE0();

    sub_252691AB0();

    v72 = sub_252691D00();
    v74 = v73;
    v76 = v75;

    sub_2524228D8(v66, v68, v70 & 1);

    LODWORD(v112) = sub_2526915E0();
    v77 = sub_252691CD0();
    v79 = v78;
    LOBYTE(v66) = v80;
    v108 = v81;
    sub_2524228D8(v72, v74, v76 & 1);

    v82 = v93 & 1;
    v110 = v93 & 1;
    LOBYTE(v66) = v66 & 1;
    v109 = v66;
    v83 = v95;
    v84 = v94;
    sub_25235EABC(v95, v94, v93 & 1);
    v85 = v102;

    sub_25235EABC(v77, v79, v66);

    v86 = v103;
    v103(v107, v71);
    v86(v106, v71);
    LOBYTE(v112) = v82;
    LOBYTE(v111) = v66;
    v87 = v101;
    *v101 = v83;
    v87[1] = v84;
    *(v87 + 16) = v82;
    v87[3] = v85;
    v87[4] = v77;
    v87[5] = v79;
    *(v87 + 48) = v66;
    v87[7] = v108;
    sub_2524228D8(v77, v79, v109);

    sub_2524228D8(v83, v84, v110);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_252461488()
{
  result = qword_27F4DD5D0;
  if (!qword_27F4DD5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4DD5D0);
  }

  return result;
}

uint64_t sub_2524614D4(uint64_t a1)
{
  v2 = type metadata accessor for DeleteButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252461530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268E6B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268E6B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2524616A4()
{
  result = sub_25268E6B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_252461738()
{
  sub_25268E6B0();
  if (v0 <= 0x3F)
  {
    sub_2524617D4();
    if (v1 <= 0x3F)
    {
      sub_252461868();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2524617D4()
{
  if (!qword_27F4DD620)
  {
    sub_252693050();
    sub_252463978(&qword_27F4DD5D8, MEMORY[0x277CC9DF0]);
    v0 = sub_252690600();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DD620);
    }
  }
}

void sub_252461868()
{
  if (!qword_27F4DD628)
  {
    v0 = sub_252692510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DD628);
    }
  }
}

unint64_t sub_2524618B8()
{
  result = qword_27F4DD630;
  if (!qword_27F4DD630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD5A8);
    sub_252461970();
    sub_252400FC8(&qword_27F4DD650, &qword_27F4DD5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD630);
  }

  return result;
}

unint64_t sub_252461970()
{
  result = qword_27F4DD638;
  if (!qword_27F4DD638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD5A0);
    sub_252400FC8(&qword_27F4DD640, &qword_27F4DD648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD638);
  }

  return result;
}

uint64_t sub_252461A44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for CountDownTimer(0);
  v62 = *(v3 - 8);
  v4 = *(v62 + 8);
  v5 = v3 - 8;
  v55 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD688);
  MEMORY[0x28223BE20](v65);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD690);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  MEMORY[0x28223BE20](v8);
  v66 = &v51 - v10;
  v11 = sub_252692920();
  v56 = v12;
  v57 = v11;
  sub_2524620D4(v1, &v68);
  v88 = v76;
  v89 = v77;
  v90 = v78;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  v87 = v75;
  v80 = v68;
  v81 = v69;
  v82 = v70;
  v83 = v71;
  v92[8] = v76;
  v92[9] = v77;
  v92[10] = v78;
  v92[4] = v72;
  v92[5] = v73;
  v92[6] = v74;
  v92[7] = v75;
  v92[0] = v68;
  v92[1] = v69;
  v91 = v79;
  v93 = v79;
  v92[2] = v70;
  v92[3] = v71;
  sub_25237153C(&v80, v67, &qword_27F4DD698);
  sub_252372288(v92, &qword_27F4DD698);
  v102 = v88;
  v103 = v89;
  v104 = v90;
  v105 = v91;
  v98 = v84;
  v99 = v85;
  v100 = v86;
  v101 = v87;
  v94 = v80;
  v95 = v81;
  v96 = v82;
  v97 = v83;
  v54 = sub_252692970();
  v13 = (v1 + *(v5 + 32));
  v14 = *v13;
  v15 = v13[1];
  *&v68 = v14;
  *(&v68 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6A0);
  sub_2526924E0();
  v16 = v67[0];
  v17 = [objc_opt_self() defaultCenter];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6A8);
  sub_252692FE0();

  v63 = type metadata accessor for CountDownTimer;
  sub_2524636E4(v2, &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CountDownTimer);
  v61 = *(v62 + 80);
  v19 = (v61 + 16) & ~v61;
  v20 = swift_allocObject();
  v62 = type metadata accessor for CountDownTimer;
  v21 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524633D0(v21, v20 + v19, type metadata accessor for CountDownTimer);
  v22 = v56;
  *v7 = v57;
  *(v7 + 1) = v22;
  v23 = v103;
  *(v7 + 9) = v102;
  *(v7 + 10) = v23;
  *(v7 + 11) = v104;
  v7[192] = v105;
  v24 = v99;
  *(v7 + 5) = v98;
  *(v7 + 6) = v24;
  v25 = v101;
  *(v7 + 7) = v100;
  *(v7 + 8) = v25;
  v26 = v95;
  *(v7 + 1) = v94;
  *(v7 + 2) = v26;
  v27 = v97;
  *(v7 + 3) = v96;
  *(v7 + 4) = v27;
  *(v7 + 193) = 257;
  *(v7 + 25) = v54;
  *(v7 + 26) = v16;
  v28 = &v7[*(v18 + 56)];
  *v28 = sub_25246374C;
  v28[1] = v20;
  v29 = *(v55 + 28);
  v64 = v2;
  v30 = *(v2 + v29);
  v31 = v2;
  v32 = v63;
  sub_2524636E4(v31, v21, v63);
  v53 = v4;
  v33 = swift_allocObject();
  v34 = v62;
  sub_2524633D0(v21, v33 + v19, v62);
  v35 = v64;
  v36 = v65;
  *&v7[*(v65 + 52)] = v30;
  v37 = &v7[*(v36 + 56)];
  *v37 = sub_25246385C;
  v37[1] = v33;
  sub_2524636E4(v35, v21, v32);
  v52 = v19;
  v38 = swift_allocObject();
  sub_2524633D0(v21, v38 + v19, v34);
  v39 = sub_25268E6B0();
  v40 = sub_252400FC8(&qword_27F4DD6B0, &qword_27F4DD688);
  v41 = sub_252463978(&qword_27F4DD6B8, MEMORY[0x277D15948]);

  v42 = v65;
  v43 = v64;
  v44 = v39;
  sub_2526921D0();

  sub_252372288(v7, &qword_27F4DD688);
  v45 = v21;
  sub_2524636E4(v43, v21, v63);
  v46 = v52;
  v47 = swift_allocObject();
  sub_2524633D0(v45, v47 + v46, v62);
  *&v68 = v42;
  *(&v68 + 1) = v44;
  *&v69 = v40;
  *(&v69 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  v48 = v58;
  v49 = v66;
  sub_252691E60();

  return (*(v59 + 8))(v49, v48);
}

uint64_t sub_2524620D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25268E650();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  if (qword_27F4DAA20 != -1)
  {
    swift_once();
  }

  v43 = qword_27F4FB410;
  v11 = (a1 + *(type metadata accessor for CountDownTimer(0) + 24));
  v12 = *v11;
  v13 = v11[1];
  v62 = v12;
  v63 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6A0);
  sub_2526924E0();
  v14 = *v45;
  sub_25268E690();
  v16 = v15;
  sub_2526908F0();
  v42 = sub_252692330();
  KeyPath = swift_getKeyPath();
  sub_252692A40();
  v19 = v18;
  v21 = v20;
  sub_25268E660();
  (*(v5 + 104))(v8, *MEMORY[0x277D15928], v4);
  sub_252463978(&qword_27F4DD5F8, MEMORY[0x277D15930]);
  sub_252692D40();
  sub_252692D40();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v10, v4);
  if (v14 / v16 <= 1.0)
  {
    v23 = v14 / v16;
  }

  else
  {
    v23 = 1.0;
  }

  v24 = sub_2526923D0();
  sub_252691B70();
  v25 = sub_252691AE0();

  v26 = swift_getKeyPath();
  v27 = sub_252691A20();
  sub_252690760();
  v72 = 0;
  *&v45[0] = 0;
  *(v45 + 1) = v23;
  v45[1] = v74;
  v45[2] = v75;
  *&v46 = v76;
  *(&v46 + 1) = KeyPath;
  v28 = v42;
  *&v47 = v42;
  *(&v47 + 1) = 0x4012D97C7F3321D2;
  *&v48 = v19;
  *(&v48 + 1) = v21;
  *&v44[22] = v74;
  *&v44[6] = v45[0];
  *&v49 = v24;
  *(&v49 + 1) = v26;
  v29 = v49;
  *&v44[86] = v48;
  *&v44[70] = v47;
  *&v44[54] = v46;
  *&v44[38] = v75;
  *&v50 = v25;
  BYTE8(v50) = v27;
  HIDWORD(v50) = *&v73[3];
  *(&v50 + 9) = *v73;
  *&v51 = v30;
  *(&v51 + 1) = v31;
  *&v52 = v32;
  *(&v52 + 1) = v33;
  v53 = 0;
  *a2 = v43;
  *(a2 + 8) = 256;
  v34 = *&v44[48];
  *(a2 + 42) = *&v44[32];
  v35 = *v44;
  *(a2 + 26) = *&v44[16];
  *(a2 + 10) = v35;
  v36 = *&v44[64];
  v37 = *&v44[80];
  *(a2 + 104) = *&v44[94];
  *(a2 + 90) = v37;
  *(a2 + 74) = v36;
  *(a2 + 58) = v34;
  v38 = v50;
  v39 = v51;
  v40 = v52;
  *(a2 + 176) = v53;
  *(a2 + 144) = v39;
  *(a2 + 160) = v40;
  *(a2 + 112) = v29;
  *(a2 + 128) = v38;
  v54[0] = v24;
  v54[1] = v26;
  v54[2] = v25;
  v55 = v27;
  *&v56[3] = *&v73[3];
  *v56 = *v73;
  v57 = v30;
  v58 = v31;
  v59 = v32;
  v60 = v33;
  v61 = 0;

  sub_25237153C(v45, &v62, &qword_27F4DD6C0);
  sub_25237153C(&v49, &v62, &qword_27F4DD680);
  sub_252372288(v54, &qword_27F4DD680);
  v62 = 0;
  v63 = v23;
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v67 = KeyPath;
  v68 = v28;
  v69 = 0x4012D97C7F3321D2;
  v70 = v19;
  v71 = v21;
  sub_252372288(&v62, &qword_27F4DD6C0);
}

uint64_t sub_2524625C0()
{
  sub_25268E640();
  type metadata accessor for CountDownTimer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6A0);
  return sub_2526924F0();
}

uint64_t sub_25246263C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25268E650();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_25268E660();
  (*(v4 + 104))(v7, *MEMORY[0x277D15928], v3);
  sub_252463978(&qword_27F4DD5F8, MEMORY[0x277D15930]);
  sub_252692D40();
  sub_252692D40();
  v10 = *(v4 + 8);
  v10(v7, v3);
  result = (v10)(v9, v3);
  if (*&v18 == *&v16)
  {
    v12 = (a2 + *(type metadata accessor for CountDownTimer(0) + 24));
    v14 = *(v12 + 1);
    v18 = *v12;
    v13 = v18;
    v19 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6A0);
    sub_2526924E0();
    v15 = v20 + -1.0;
    v16 = v13;
    v17 = v14;
    sub_2526924F0();

    v18 = v13;
    v19 = v14;
    result = sub_2526924E0();
    if (v16 < 0.0)
    {
      v18 = v13;
      v19 = v14;
      v16 = 0.0;
      return sub_2526924F0();
    }
  }

  return result;
}

uint64_t sub_2524628A0()
{
  sub_25268E640();
  type metadata accessor for CountDownTimer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6A0);
  return sub_2526924F0();
}

uint64_t sub_252462920(uint64_t a1)
{
  v2 = type metadata accessor for CountDownTimer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_252692E30();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2524636E4(a1, v5, type metadata accessor for CountDownTimer);
  sub_252692E00();
  v10 = sub_252692DF0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_2524633D0(v5, v12 + v11, type metadata accessor for CountDownTimer);
  sub_252573BC0(0, 0, v8, &unk_25269D260, v12);
}

uint64_t sub_252462B00(uint64_t a1)
{
  v1[2] = sub_252692E00();
  v1[3] = sub_252692DF0();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_252462BC4;

  return MEMORY[0x28216EE60](a1);
}

uint64_t sub_252462BC4()
{

  v1 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_252463B5C, v1, v0);
}

uint64_t sub_252462D20@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v2 = type metadata accessor for DeleteButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_252692920();
  v7 = v6;
  sub_252462F90(&v26);
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v23 = v31[0];
  v18 = v26;
  v19 = v27;
  v25 = v31[0];
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[0] = v26;
  v24[1] = v27;
  sub_25237153C(&v18, &v12, &qword_27F4DD658);
  sub_252372288(v24, &qword_27F4DD658);
  v15 = v20;
  v16 = v21;
  *v17 = v22;
  v17[16] = v23;
  v13 = v18;
  v14 = v19;
  *&v12 = v5;
  *(&v12 + 1) = v7;
  *&v17[17] = 257;
  sub_2524636E4(v1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeleteButton);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_2524633D0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DeleteButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD660);
  sub_252463464();
  sub_252691E60();

  v29 = v15;
  v30 = v16;
  v31[0] = *v17;
  *(v31 + 15) = *&v17[15];
  v26 = v12;
  v27 = v13;
  v28 = v14;
  return sub_252372288(&v26, &qword_27F4DD660);
}

uint64_t sub_252462F90@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4DAA20 != -1)
  {
    swift_once();
  }

  v2 = qword_27F4FB410;

  v3 = sub_2526923D0();
  sub_252691B70();
  v4 = sub_252691AE0();

  KeyPath = swift_getKeyPath();
  v6 = sub_252691A20();
  sub_252690760();
  *&v17 = v3;
  *(&v17 + 1) = KeyPath;
  *&v18 = v4;
  BYTE8(v18) = v6;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  *&v20 = v9;
  *(&v20 + 1) = v10;
  v21 = 0;
  *&v16[6] = v17;
  v16[70] = 0;
  *&v16[54] = v20;
  *&v16[38] = v19;
  *&v16[22] = v18;
  *a1 = v2;
  *(a1 + 8) = 256;
  v11 = *&v16[16];
  *(a1 + 10) = *v16;
  v12 = *&v16[32];
  v13 = *&v16[48];
  *(a1 + 73) = *&v16[63];
  *(a1 + 58) = v13;
  *(a1 + 42) = v12;
  *(a1 + 26) = v11;
  v22[0] = v3;
  v22[1] = KeyPath;
  v22[2] = v4;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = 0;

  sub_25237153C(&v17, &v15, &qword_27F4DD680);
  sub_252372288(v22, &qword_27F4DD680);
}

uint64_t sub_252463128(uint64_t a1)
{
  v2 = type metadata accessor for DeleteButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_252692E30();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2524636E4(a1, v5, type metadata accessor for DeleteButton);
  sub_252692E00();
  v10 = sub_252692DF0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_2524633D0(v5, v12 + v11, type metadata accessor for DeleteButton);
  sub_252573BC0(0, 0, v8, &unk_25269D1F0, v12);
}

uint64_t sub_252463308(uint64_t a1)
{
  v1[2] = sub_252692E00();
  v1[3] = sub_252692DF0();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_25245E280;

  return MEMORY[0x28216EEA0](a1);
}

uint64_t sub_2524633D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_252463464()
{
  result = qword_27F4DD668;
  if (!qword_27F4DD668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD660);
    sub_252400FC8(&qword_27F4DD670, &qword_27F4DD678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD668);
  }

  return result;
}

uint64_t sub_25246351C(uint64_t a1)
{
  type metadata accessor for DeleteButton(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2523E233C;

  return sub_252463308(a1);
}

uint64_t sub_25246360C()
{
  v0 = sub_252692270();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_2526923A0();
  qword_27F4FB410 = result;
  return result;
}

uint64_t sub_2524636E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_35Tm()
{
  v1 = *(type metadata accessor for CountDownTimer(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25268E6B0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252463874(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CountDownTimer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2524638F8()
{
  type metadata accessor for CountDownTimer(0);

  return sub_2524628A0();
}

uint64_t sub_252463978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2524639EC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_252463A68(uint64_t a1)
{
  type metadata accessor for CountDownTimer(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_252401074;

  return sub_252462B00(a1);
}

uint64_t type metadata accessor for TimersControlView()
{
  result = qword_27F4DD6C8;
  if (!qword_27F4DD6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252463BD4()
{
  sub_252420F5C();
  if (v0 <= 0x3F)
  {
    sub_25245778C();
    if (v1 <= 0x3F)
    {
      sub_252463CA0();
      if (v2 <= 0x3F)
      {
        sub_25268DA10();
        if (v3 <= 0x3F)
        {
          sub_25268DF70();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252463CA0()
{
  if (!qword_27F4DD6D8)
  {
    sub_25268E6B0();
    v0 = sub_252692DD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DD6D8);
    }
  }
}

uint64_t sub_252463D14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(v1 + 72, v9, &qword_27F4DD178);
  if (v10 == 1)
  {
    return sub_25235E1A4(v9, a1);
  }

  sub_252692F00();
  v8 = sub_2526919C0();
  sub_252690570();

  sub_2526910E0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_252463E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3A8);
  MEMORY[0x28223BE20](v118);
  v104 = v100 - v3;
  v4 = type metadata accessor for TimersControlView();
  v100[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v100[1] = v5;
  v101 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3B0);
  v6 = MEMORY[0x28223BE20](v102);
  v103 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = v100 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6E8);
  MEMORY[0x28223BE20](v111);
  v112 = v100 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6F0);
  v106 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v105 = v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v117 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = v100 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3E0);
  v15 = MEMORY[0x28223BE20](v109);
  v116 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = (v100 - v17);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3E8);
  v18 = MEMORY[0x28223BE20](v108);
  v114 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v120 = v100 - v20;
  v21 = sub_25268E6B0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v23);
  v28 = v100 - v27;
  v29 = *(a1 + 120);
  v128 = *(v29 + 16);
  v110 = a1;
  if (v128)
  {
    v30 = 0;
    v122 = (v22 + 8);
    v126 = (v22 + 32);
    v127 = v22 + 16;
    v31 = MEMORY[0x277D84F90];
    v124 = v25;
    v125 = v21;
    v123 = v29;
    while (v30 < *(v29 + 16))
    {
      v32 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v33 = *(v22 + 72);
      (*(v22 + 16))(v28, v29 + v32 + v33 * v30, v21);
      if (sub_25268E630())
      {
        v34 = *v126;
        (*v126)(v25, v28, v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2523703F4(0, *(v31 + 16) + 1, 1);
          v31 = v132;
        }

        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_2523703F4(v36 > 1, v37 + 1, 1);
          v31 = v132;
        }

        *(v31 + 16) = v37 + 1;
        v38 = v31 + v32 + v37 * v33;
        v25 = v124;
        v21 = v125;
        result = (v34)(v38, v124, v125);
        v29 = v123;
      }

      else
      {
        result = (*v122)(v28, v21);
      }

      if (v128 == ++v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
LABEL_13:
    v39 = v120;
    sub_252692770();
    v40 = sub_2526915F0();
    v41 = sub_252691A20();
    v42 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3F0) + 36);
    *v42 = v40;
    *(v42 + 4) = v41;
    KeyPath = swift_getKeyPath();
    v44 = (v39 + *(v108 + 36));
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3F8);
    v46 = *(v45 + 28);
    sub_252692890();
    v47 = sub_2526928A0();
    v48 = *(*(v47 - 8) + 56);
    v48(v44 + v46, 0, 1, v47);
    *v44 = KeyPath;
    v49 = sub_2526911D0();
    v50 = v121;
    *v121 = v49;
    v50[1] = 0;
    *(v50 + 16) = 1;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD400);
    v52 = v110;
    sub_252464D38(v110, v31, v50 + *(v51 + 44));
    v53 = swift_getKeyPath();
    v54 = (v50 + *(v109 + 36));
    v55 = *(v45 + 28);
    sub_252692890();
    v48(v54 + v55, 0, 1, v47);
    *v54 = v53;
    if (*(v31 + 16))
    {
      v132 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD700);
      sub_25268DA10();
      type metadata accessor for TimerCell(0);
      sub_252400FC8(&qword_27F4DD708, &qword_27F4DD700);
      sub_2524669E8(&qword_27F4DD710, type metadata accessor for TimerCell);
      sub_2524669E8(&qword_27F4DD718, MEMORY[0x277D15948]);
      v56 = v105;
      sub_2526927B0();
      v57 = v106;
      v58 = v113;
      (*(v106 + 16))(v112, v56, v113);
      swift_storeEnumTagMultiPayload();
      sub_252466A30();
      sub_252400FC8(&qword_27F4DD4A0, &qword_27F4DD3A8);
      v59 = v115;
      sub_252691470();
      (*(v57 + 8))(v56, v58);
    }

    else
    {

      v60 = v101;
      sub_252466B68(v52, v101, type metadata accessor for TimersControlView);
      v61 = (*(v100[0] + 80) + 16) & ~*(v100[0] + 80);
      v62 = swift_allocObject();
      v63 = sub_252466AE4(v60, v62 + v61);
      MEMORY[0x28223BE20](v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4B0);
      sub_25245F8F8();
      v64 = v107;
      sub_252692550();
      v65 = sub_252692920();
      v67 = v66;
      v68 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4E0) + 36));
      *v68 = sub_252692920();
      v68[1] = v69;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4E8);
      sub_252466768(v68 + *(v70 + 44));
      v71 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4F0) + 36));
      *v71 = v65;
      v71[1] = v67;
      v72 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD4F8) + 36));
      v73 = *(sub_252690D30() + 20);
      v74 = *MEMORY[0x277CE0118];
      v75 = sub_252691260();
      (*(*(v75 - 8) + 104))(&v72[v73], v74, v75);
      __asm { FMOV            V0.2D, #10.0 }

      *v72 = _Q0;
      *&v72[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8) + 36)] = 256;
      v81 = v64;
      *(v64 + *(v102 + 36)) = 256;
      sub_252692920();
      sub_2526909C0();
      v128 = v132;
      v82 = v134;
      v83 = v136;
      v84 = v137;
      v131 = 1;
      v130 = v133;
      v129 = v135;
      v85 = v81;
      v86 = v103;
      sub_25237153C(v85, v103, &qword_27F4DD3B0);
      v87 = v131;
      v88 = v130;
      v89 = v129;
      v90 = v104;
      sub_25237153C(v86, v104, &qword_27F4DD3B0);
      v91 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD500) + 48);
      *v91 = 0;
      *(v91 + 8) = v87;
      *(v91 + 16) = v128;
      *(v91 + 24) = v88;
      *(v91 + 32) = v82;
      *(v91 + 40) = v89;
      *(v91 + 48) = v83;
      *(v91 + 56) = v84;
      sub_252372288(v86, &qword_27F4DD3B0);
      sub_25237153C(v90, v112, &qword_27F4DD3A8);
      swift_storeEnumTagMultiPayload();
      sub_252466A30();
      sub_252400FC8(&qword_27F4DD4A0, &qword_27F4DD3A8);
      v59 = v115;
      sub_252691470();
      sub_252372288(v90, &qword_27F4DD3A8);
      sub_252372288(v107, &qword_27F4DD3B0);
    }

    v92 = v120;
    v93 = v114;
    sub_25237153C(v120, v114, &qword_27F4DD3E8);
    v94 = v121;
    v95 = v116;
    sub_25237153C(v121, v116, &qword_27F4DD3E0);
    v96 = v117;
    sub_25237153C(v59, v117, &qword_27F4DD6F8);
    v97 = v119;
    sub_25237153C(v93, v119, &qword_27F4DD3E8);
    v98 = v59;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD728);
    sub_25237153C(v95, v97 + *(v99 + 48), &qword_27F4DD3E0);
    sub_25237153C(v96, v97 + *(v99 + 64), &qword_27F4DD6F8);
    sub_252372288(v98, &qword_27F4DD6F8);
    sub_252372288(v94, &qword_27F4DD3E0);
    sub_252372288(v92, &qword_27F4DD3E8);
    sub_252372288(v96, &qword_27F4DD6F8);
    sub_252372288(v95, &qword_27F4DD3E0);
    return sub_252372288(v93, &qword_27F4DD3E8);
  }

  return result;
}

uint64_t sub_252464D38@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v54 = a1;
  v68 = a3;
  v4 = type metadata accessor for TimersControlView();
  v62 = *(v4 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD438);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v50 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD538) - 8;
  v7 = MEMORY[0x28223BE20](v63);
  v64 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v50 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v50 - v11;
  v53 = sub_2526917F0();
  v12 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD540);
  v15 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD548);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v52 = &v50 - v21;
  v22 = sub_2526911D0();
  LOBYTE(v72) = 0;
  sub_252465520(a1, &v76);
  v23 = v78;
  v24 = BYTE8(v78);
  v25 = v79;
  v51 = v77;
  v50 = v76;
  LOBYTE(v76) = BYTE8(v78);
  v26 = v72;
  v27 = sub_252691B80();
  KeyPath = swift_getKeyPath();
  *&v72 = v22;
  *(&v72 + 1) = 0x4024000000000000;
  v73[0] = v26;
  *&v73[8] = v50;
  *&v73[24] = v51;
  *&v73[40] = v23;
  LOBYTE(v74) = v24;
  *(&v74 + 1) = v25;
  *&v75 = KeyPath;
  *(&v75 + 1) = v27;
  sub_2526917D0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD550);
  v30 = sub_25245FD68();
  sub_252692020();
  (*(v12 + 8))(v14, v53);
  v78 = *&v73[16];
  v79 = *&v73[32];
  v80 = v74;
  v81 = v75;
  v76 = v72;
  v77 = *v73;
  sub_252372288(&v76, &qword_27F4DD550);
  *&v72 = sub_252692C40();
  *(&v72 + 1) = v31;
  v70 = v29;
  v71 = v30;
  swift_getOpaqueTypeConformance2();
  sub_252404480();
  v32 = v52;
  v33 = v55;
  sub_252691FB0();

  (*(v15 + 8))(v17, v33);
  v34 = v54;
  v35 = v57;
  sub_252466B68(v54, v57, type metadata accessor for TimersControlView);
  v36 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v37 = swift_allocObject();
  sub_252466AE4(v35, v37 + v36);
  v69 = v34;
  v38 = v60;
  sub_252692550();
  if (*(v67 + 16))
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = v58;
  (*(v65 + 32))(v58, v38, v66);
  *&v40[*(v63 + 44)] = v39;
  v41 = v40;
  v42 = v59;
  sub_252460074(v41, v59);
  v43 = v56;
  sub_25237153C(v32, v56, &qword_27F4DD548);
  v44 = v42;
  v45 = v64;
  sub_25237153C(v42, v64, &qword_27F4DD538);
  v46 = v68;
  sub_25237153C(v43, v68, &qword_27F4DD548);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD570);
  v48 = v46 + *(v47 + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_25237153C(v45, v46 + *(v47 + 64), &qword_27F4DD538);
  sub_252372288(v44, &qword_27F4DD538);
  sub_252372288(v32, &qword_27F4DD548);
  sub_252372288(v45, &qword_27F4DD538);
  return sub_252372288(v43, &qword_27F4DD548);
}

uint64_t sub_252465520@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2526923D0();
  v27 = sub_252692380();
  KeyPath = swift_getKeyPath();
  sub_252692C40();
  v35 = *(a1 + 32);
  v9 = a1[3];
  v34[2] = a1[2];
  v34[3] = v9;
  v10 = a1[1];
  v34[0] = *a1;
  v34[1] = v10;
  if ((v35 & 0x100) != 0)
  {
    v11 = a1[3];
    v31 = a1[2];
    v32 = v11;
    v33 = *(a1 + 64);
    v12 = a1[1];
    v29 = *a1;
    v30 = v12;
  }

  else
  {

    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v34, &qword_27F4DC120);
    (*(v5 + 8))(v7, v4);
  }

  if (v29 == 1)
  {
    sub_252692380();
  }

  else
  {
    sub_252692330();
  }

  v14 = sub_252691CC0();
  v16 = v15;
  v18 = v17;

  sub_252691B40();
  v19 = sub_252691C90();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_2524228D8(v14, v16, v18 & 1);

  *a2 = v28;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v27;
  *(a2 + 24) = v19;
  *(a2 + 32) = v21;
  v23 &= 1u;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;

  sub_25235EABC(v19, v21, v23);

  sub_2524228D8(v19, v21, v23);
}

uint64_t sub_25246583C(uint64_t a1)
{
  sub_252463D14(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = type metadata accessor for TimersControlView();
  (*(v3 + 8))(a1 + *(v4 + 28), v2, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2524658C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252692C40();
  v37 = *(a1 + 32);
  v8 = a1[3];
  v36[2] = a1[2];
  v36[3] = v8;
  v9 = a1[1];
  v36[0] = *a1;
  v36[1] = v9;
  if ((v37 & 0x100) != 0)
  {
    v10 = a1[3];
    v33 = a1[2];
    v34 = v10;
    v35 = *(a1 + 64);
    v11 = a1[1];
    v31 = *a1;
    v32 = v11;
  }

  else
  {

    sub_252692F00();
    v12 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v36, &qword_27F4DC120);
    (*(v5 + 8))(v7, v4);
  }

  if (v31 == 1)
  {
    sub_252692340();
  }

  else
  {
    sub_252692330();
  }

  v13 = sub_252691CC0();
  v15 = v14;
  v17 = v16;

  sub_252691B80();
  v18 = sub_252691D00();
  v20 = v19;
  v22 = v21;

  sub_2524228D8(v13, v15, v17 & 1);

  sub_252691B40();
  v23 = sub_252691C90();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;
  sub_2524228D8(v18, v20, v22 & 1);

  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v28;
  return result;
}

uint64_t sub_252465B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25268E6B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_252465BE0(uint64_t a1)
{
  v2 = type metadata accessor for TimersControlView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-1] - v7;
  v9 = sub_25268DF70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v12, a1 + *(v2 + 32), v9);
  if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277D15178])
  {
    (*(v10 + 96))(v12, v9);
    v13 = *v12;
    v14 = sub_252692E30();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_252466B68(a1, &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimersControlView);
    sub_252692E00();
    v15 = v13;
    v16 = sub_252692DF0();
    v17 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v16;
    v18[3] = v19;
    v18[4] = v15;
    sub_252466AE4(v5, v18 + v17);
    sub_2525738C0(0, 0, v8, &unk_25269D3E8, v18);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    sub_252463D14(v23);
    v20 = v24;
    v21 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v21 + 8))(a1 + *(v2 + 28), v20, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }
}

uint64_t sub_252465F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_252692E00();
  v5[9] = sub_252692DF0();
  v7 = sub_252692DE0();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_252465FC0, v7, v6);
}

uint64_t sub_252465FC0()
{
  v1 = *(v0 + 64);
  sub_25268DFB0();
  *(v0 + 96) = sub_25268DF80();
  v2 = *(type metadata accessor for TimersControlView() + 28);
  *(v0 + 112) = v2;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_252466090;
  v4 = *(v0 + 56);

  return MEMORY[0x28216E590](v4, v1 + v2);
}

uint64_t sub_252466090(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 116) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_2524661D8, v5, v4);
}

uint64_t sub_2524661D8()
{
  v1 = *(v0 + 116);

  if (v1 == 1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 64);
    sub_252463D14(v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    (*(v5 + 8))(v3 + v2, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25246629C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_2526911D0();
  sub_252466478(a1, v30);
  v4 = v30[0];
  v5 = v30[1];
  v6 = v31;
  v27 = v33;
  v28 = v32;
  v7 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2526952C0;
  v9 = sub_252691A30();
  *(inited + 32) = v9;
  v10 = sub_252691A40();
  *(inited + 33) = v10;
  v11 = sub_252691A70();
  *(inited + 34) = v11;
  v12 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v9)
  {
    v12 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v10)
  {
    v12 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v11)
  {
    v12 = sub_252691A60();
  }

  sub_252690760();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v35 = 0;
  v21 = sub_252691A50();
  result = sub_252690760();
  *a2 = v29;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v28;
  *(a2 + 56) = v27;
  *(a2 + 64) = v7;
  *(a2 + 72) = v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = v16;
  *(a2 + 96) = v18;
  *(a2 + 104) = v20;
  *(a2 + 112) = 0;
  *(a2 + 120) = v21;
  *(a2 + 128) = v23;
  *(a2 + 136) = v24;
  *(a2 + 144) = v25;
  *(a2 + 152) = v26;
  *(a2 + 160) = 0;
  return result;
}

uint64_t sub_252466478@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_2526910F0();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252692C40();
  sub_252691B80();
  v7 = sub_252691D00();
  v9 = v8;
  v11 = v10;

  v38 = *(a1 + 32);
  v12 = a1[3];
  v37[2] = a1[2];
  v37[3] = v12;
  v13 = a1[1];
  v37[0] = *a1;
  v37[1] = v13;
  if ((v38 & 0x100) != 0)
  {
    v14 = a1[3];
    v34 = a1[2];
    v35 = v14;
    v36 = *(a1 + 64);
    v15 = a1[1];
    v32 = *a1;
    v33 = v15;
  }

  else
  {

    sub_252692F00();
    v16 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v37, &qword_27F4DC120);
    (*(v4 + 8))(v6, v31);
  }

  if (v32 == 1)
  {
    sub_252692340();
  }

  else
  {
    sub_252692330();
  }

  v17 = sub_252691CC0();
  v19 = v18;
  v21 = v20;

  sub_2524228D8(v7, v9, v11 & 1);

  sub_252691B40();
  v22 = sub_252691C90();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2524228D8(v17, v19, v21 & 1);

  *a2 = v22;
  *(a2 + 8) = v24;
  v26 &= 1u;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_25235EABC(v22, v24, v26);

  sub_2524228D8(v22, v24, v26);
}

uint64_t sub_252466768@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ControlBackgroundView();
  v3 = (v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  KeyPath = swift_getKeyPath();
  v16[15] = 0;
  *v8 = KeyPath;
  v8[65] = 0;
  v10 = v3[7];
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v11 = &v8[v3[8]];
  v8[v3[9]] = 2;
  v12 = v3[10];
  v13 = [objc_opt_self() systemGray4Color];
  *&v8[v12] = sub_252692240();
  *v11 = 0;
  v11[8] = 1;
  if (qword_27F4DAA28 != -1)
  {
    swift_once();
  }

  v14 = qword_27F4FB418;
  sub_252466B68(v8, v6, type metadata accessor for ControlBackgroundView);
  sub_252466B68(v6, a1, type metadata accessor for ControlBackgroundView);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD508) + 48)) = v14;
  swift_retain_n();
  sub_25245AC68(v8);

  return sub_25245AC68(v6);
}

uint64_t sub_25246694C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_252691300();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD6E0);
  return sub_252463E80(v1, a1 + *(v3 + 44));
}

uint64_t sub_2524669A0()
{
  sub_2526922F0();
  v0 = sub_252692350();

  qword_27F4FB418 = v0;
  return result;
}

uint64_t sub_2524669E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252466A30()
{
  result = qword_27F4DD720;
  if (!qword_27F4DD720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD6F0);
    sub_2524669E8(&qword_27F4DD710, type metadata accessor for TimerCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD720);
  }

  return result;
}

uint64_t sub_252466AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimersControlView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252466B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252466BD0(uint64_t a1)
{
  v4 = *(type metadata accessor for TimersControlView() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2523E233C;

  return sub_252465F28(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for TimersControlView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_252457A80(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56), *(v0 + v4 + 64), *(v0 + v4 + 65));
  if (*(v0 + v4 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 72);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v1 + 32);
  v9 = sub_25268DF70();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_252466E58(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TimersControlView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_252466F3C()
{
  sub_252466FC8();
  if (v0 <= 0x3F)
  {
    _s17FavoriteColorCellV5ValueOMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252466FC8()
{
  if (!qword_27F4DD758)
  {
    sub_252690850();
    v0 = sub_2526908A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DD758);
    }
  }
}

uint64_t sub_252467020()
{
  result = sub_25268F860();
  if (v1 <= 0x3F)
  {
    result = sub_25268ED20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_252467094()
{
  v1 = sub_25268ED20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268F860();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17FavoriteColorCellV5ValueOMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25246A2D8(v0, v11, _s17FavoriteColorCellV5ValueOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v4, v11, v1);
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_252693210();

      v17 = 0xD000000000000018;
      v18 = 0x80000002526AF500;
      v13 = LightbulbColor.description.getter();
      MEMORY[0x2530A4800](v13);

      MEMORY[0x2530A4800](41, 0xE100000000000000);
      v14 = v17;
      (*(v2 + 8))(v4, v1);
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_252693210();

    v17 = 0xD00000000000001BLL;
    v18 = 0x80000002526AF520;
    sub_25246A290(&qword_27F4DD8D8, MEMORY[0x277D164C0]);
    v15 = sub_252693370();
    MEMORY[0x2530A4800](v15);

    MEMORY[0x2530A4800](41, 0xE100000000000000);
    v14 = v17;
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t sub_2524673EC()
{
  v1 = sub_25268ED20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268F860();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17FavoriteColorCellV5ValueOMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25246A2D8(v0, v11, _s17FavoriteColorCellV5ValueOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v4, v11, v1);
      MEMORY[0x2530A4FE0](1);
      sub_25246A290(&qword_27F4DB798, MEMORY[0x277D15B48]);
      sub_252692B30();
      return (*(v2 + 8))(v4, v1);
    }

    else
    {
      return MEMORY[0x2530A4FE0](2);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    MEMORY[0x2530A4FE0](0);
    sub_25246A290(&qword_27F4DCD30, MEMORY[0x277D164C0]);
    sub_252692B30();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2524676FC()
{
  sub_252693460();
  sub_2524673EC();
  return sub_2526934C0();
}

uint64_t sub_252467740()
{
  sub_252693460();
  sub_2524673EC();
  return sub_2526934C0();
}

uint64_t sub_2524677E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  v85 = a3;
  v4 = sub_2526912C0();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v64 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD780);
  v8 = MEMORY[0x28223BE20](v84);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v64 - v10;
  v11 = sub_25268F860();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v74 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD788);
  MEMORY[0x28223BE20](v81);
  v83 = &v64 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD790);
  MEMORY[0x28223BE20](v75);
  v72 = &v64 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD798);
  MEMORY[0x28223BE20](v82);
  v79 = &v64 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD7A0);
  MEMORY[0x28223BE20](v71);
  v17 = &v64 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD7A8);
  MEMORY[0x28223BE20](v73);
  v78 = &v64 - v18;
  v19 = sub_25268ED20();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  v26 = _s17FavoriteColorCellV5ValueOMa(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s17FavoriteColorCellVMa(0);
  sub_25246A2D8(a2 + *(v29 + 20), v28, _s17FavoriteColorCellV5ValueOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *(v20 + 32);
      v64 = v19;
      v31(v25, v28, v19);
      sub_2526909F0();
      sub_25246847C(v25, v17, v32, v33, 1.0);
      *&v96[0] = 0;
      *(&v96[0] + 1) = 0xE000000000000000;
      sub_252693210();

      *&v96[0] = 0xD00000000000001FLL;
      *(&v96[0] + 1) = 0x80000002526AF4C0;
      (*(v20 + 16))(v23, v25, v19);
      sub_25248C4C8(v23);
      v34 = sub_252692260();
      v36 = v35;

      MEMORY[0x2530A4800](v34, v36);

      sub_25246A5B8();
      v37 = v78;
      sub_252692070();

      sub_252372288(v17, &qword_27F4DD7A0);
      sub_25237153C(v37, v72, &qword_27F4DD7A8);
      swift_storeEnumTagMultiPayload();
      sub_25246A5E8(&qword_27F4DD7E8, &qword_27F4DD7A8, &unk_25269D5E8, sub_25246A5B8);
      v38 = v79;
      sub_252691470();
      sub_25237153C(v38, v83, &qword_27F4DD798);
      swift_storeEnumTagMultiPayload();
      sub_25246A508();
      sub_25246A5E8(&qword_27F4DD838, &qword_27F4DD780, &unk_25269D5C0, sub_25246A424);
      sub_252691470();
      sub_252372288(v38, &qword_27F4DD798);
      sub_252372288(v37, &qword_27F4DD7A8);
      return (*(v20 + 8))(v25, v64);
    }

    else
    {
      sub_2526909F0();
      sub_2526909F0();
      sub_2526925A0();
      v50 = sub_2526915D0();
      v51 = sub_252692920();
      v53 = v52;
      v54 = sub_2526923D0();
      sub_252691B10();
      v55 = sub_252691B00();
      v56 = v65;
      (*(*(v55 - 8) + 56))(v65, 1, 1, v55);
      v57 = sub_252691B50();
      sub_252372288(v56, &qword_27F4DBD40);
      KeyPath = swift_getKeyPath();
      v59 = sub_252692380();
      v60 = swift_getKeyPath();
      v86 = v93;
      v87 = v94;
      *&v88 = __PAIR64__(v50, v95);
      WORD4(v88) = 256;
      *&v89 = v54;
      *(&v89 + 1) = KeyPath;
      *&v90 = v57;
      *(&v90 + 1) = v60;
      *&v91 = v59;
      *(&v91 + 1) = v51;
      v92 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD7B0);
      sub_25246A424();
      v61 = v66;
      sub_252692070();
      v96[4] = v90;
      v96[5] = v91;
      v97 = v92;
      v96[0] = v86;
      v96[1] = v87;
      v96[2] = v88;
      v96[3] = v89;
      sub_252372288(v96, &qword_27F4DD7B0);
      v62 = v67;
      sub_2526912A0();
      v63 = v68;
      sub_252690C00();
      (*(v69 + 8))(v62, v70);
      sub_252372288(v61, &qword_27F4DD780);
      sub_25237153C(v63, v83, &qword_27F4DD780);
      swift_storeEnumTagMultiPayload();
      sub_25246A508();
      sub_25246A5E8(&qword_27F4DD838, &qword_27F4DD780, &unk_25269D5C0, sub_25246A424);
      sub_252691470();
      return sub_252372288(v63, &qword_27F4DD780);
    }
  }

  else
  {
    (*(v76 + 32))(v74, v28, v77);
    sub_25268F850();
    sub_25268F820();
    v41 = v40;
    sub_2526909F0();
    sub_25246847C(v25, v17, v42, v43, v41);
    *&v96[0] = 0;
    *(&v96[0] + 1) = 0xE000000000000000;
    sub_252693210();

    *&v96[0] = 0xD00000000000001FLL;
    *(&v96[0] + 1) = 0x80000002526AF4C0;
    v44 = *(v20 + 16);
    v64 = v19;
    v44(v23, v25, v19);
    sub_25248C4C8(v23);
    v45 = sub_252692260();
    v47 = v46;

    MEMORY[0x2530A4800](v45, v47);

    sub_25246A5B8();
    v48 = v78;
    sub_252692070();

    sub_252372288(v17, &qword_27F4DD7A0);
    sub_25237153C(v48, v72, &qword_27F4DD7A8);
    swift_storeEnumTagMultiPayload();
    sub_25246A5E8(&qword_27F4DD7E8, &qword_27F4DD7A8, &unk_25269D5E8, sub_25246A5B8);
    v49 = v79;
    sub_252691470();
    sub_25237153C(v49, v83, &qword_27F4DD798);
    swift_storeEnumTagMultiPayload();
    sub_25246A508();
    sub_25246A5E8(&qword_27F4DD838, &qword_27F4DD780, &unk_25269D5C0, sub_25246A424);
    sub_252691470();
    sub_252372288(v49, &qword_27F4DD798);
    sub_252372288(v48, &qword_27F4DD7A8);
    (*(v20 + 8))(v25, v64);
    return (*(v76 + 8))(v74, v77);
  }
}

uint64_t sub_25246847C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>)
{
  v6 = v5;
  v76 = a2;
  v75 = sub_252690550();
  v73 = *(v75 - 8);
  v11 = MEMORY[0x28223BE20](v75);
  v72 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v70 = &v58 - v15;
  v68 = sub_2526912C0();
  v61 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2526917F0();
  v17 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD818);
  MEMORY[0x28223BE20](v20);
  v22 = (&v58 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD840);
  v66 = *(v23 - 8);
  v67 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD810);
  MEMORY[0x28223BE20](v26 - 8);
  v63 = &v58 - v27;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD800);
  MEMORY[0x28223BE20](v69);
  v62 = &v58 - v28;
  *v22 = sub_252692920();
  v22[1] = v29;
  v30 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD848) + 44);
  v74 = a1;
  sub_252468C5C(a1, v6, v30, 0.0, 0.0, a3, a4, a5, a3, a3 * 0.03);
  sub_2526917C0();
  v31 = sub_252400FC8(&qword_27F4DD820, &qword_27F4DD818);
  v65 = v20;
  v60 = v31;
  sub_252692020();
  (*(v17 + 8))(v19, v59);
  v32 = v61;
  sub_252372288(v22, &qword_27F4DD818);
  LODWORD(v22) = *(v6 + *(_s17FavoriteColorCellVMa(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD308);
  if (v22 == 1)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_252694EA0;
    sub_2526912A0();
    sub_252691270();
  }

  else
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_252694E90;
    sub_2526912A0();
  }

  v77 = v33;
  sub_25246A290(&qword_27F4DD310, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318);
  sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318);
  v34 = v64;
  v35 = v68;
  sub_252693190();
  v77 = v65;
  v78 = v60;
  swift_getOpaqueTypeConformance2();
  v36 = v63;
  v37 = v67;
  sub_252691EB0();
  (*(v32 + 8))(v34, v35);
  (*(v66 + 8))(v25, v37);
  v38 = v62;
  v39 = &v62[*(v69 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830);
  sub_252690D90();
  *v39 = 0;
  sub_252315D38(v36, v38);
  v40 = v70;
  sub_25248B53C(v70);
  sub_252690520();
  v42 = v41;
  v43 = *(v73 + 8);
  v44 = v40;
  v45 = v75;
  v43(v44, v75);
  v46 = v71;
  sub_25248B53C(v71);
  sub_252690510();
  v48 = v47;
  v43(v46, v45);
  v49 = v72;
  sub_25248B53C(v72);
  sub_252690500();
  v51 = v50;
  v43(v49, v45);
  GenericRGB = CGColorCreateGenericRGB(v42, v48, v51, 1.0);
  v53 = AXNameFromColor(GenericRGB);

  v54 = sub_252692BD0();
  v56 = v55;

  v77 = v54;
  v78 = v56;
  sub_25246A69C();
  sub_252404480();
  sub_252691FB0();

  return sub_252372288(v38, &qword_27F4DD800);
}

uint64_t sub_252468C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D7>)
{
  v196 = a10;
  v197 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD850);
  v193 = *(v18 - 8);
  v194 = v18;
  MEMORY[0x28223BE20](v18);
  v183 = v162 - v19;
  v178 = sub_2526928A0();
  v173 = *(v178 - 1);
  MEMORY[0x28223BE20](v178);
  v21 = v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD858);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v162 - v23;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD860);
  v25 = MEMORY[0x28223BE20](v181);
  v190 = (v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v182 = v162 - v28;
  MEMORY[0x28223BE20](v27);
  v198 = v162 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD868);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v195 = v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v201 = v162 - v33;
  *&v34 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD870));
  v187 = *(v34 - 8);
  v188 = *&v34;
  MEMORY[0x28223BE20](v34);
  *&v177 = v162 - v35;
  v36 = sub_252690850();
  v199 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v176 = v162 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = v162 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v185 = v162 - v46;
  MEMORY[0x28223BE20](v45);
  *&x = v162 - v47;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD878);
  v48 = MEMORY[0x28223BE20](v186);
  v180 = v162 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = v162 - v50;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD880);
  v52 = MEMORY[0x28223BE20](v189);
  v179 = v162 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v184 = v162 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v191 = v162 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  *&y = v162 - v59;
  MEMORY[0x28223BE20](v58);
  *&v175 = v162 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD888);
  v62 = MEMORY[0x28223BE20](v61 - 8);
  v192 = v162 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v200 = v162 - v64;
  v65 = sub_25268ED20();
  MEMORY[0x28223BE20](v65);
  v67 = v162 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67, a1);
  v202 = sub_25248C4C8(v67);
  v69 = a2;
  if (*(a2 + *(_s17FavoriteColorCellVMa(0) + 24)))
  {
    (*(*&v187 + 56))(v200, 1, 1, COERCE_DOUBLE(*&v188));
    v175 = a8;
    v260.origin.x = a4;
    v260.origin.y = a5;
    v260.size.width = a6;
    v260.size.height = a7;
    CGRectInset(v260, a9 * 0.08 * 0.5, a9 * 0.08 * 0.5);
    v187 = a4;
    v188 = a6;
    v261.origin.x = a4;
    v261.size.width = a6;
    v261.origin.y = a5;
    v261.size.height = a7;
    v262 = CGRectInset(v261, a9 * 0.12, a9 * 0.12);
    x = v262.origin.x;
    v177 = a7;
    width = v262.size.width;
    y = v262.origin.y;
    sub_2526925A0();
    v70 = v21;
    sub_252692880();
    sub_2526908F0();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD8B8);
    v72 = v173;
    v73 = v21;
    v74 = v178;
    (*(v173 + 16))(&v24[*(v71 + 52)], v73, v178);
    v75 = v249;
    *(v24 + 3) = v248;
    *(v24 + 4) = v75;
    v76 = v247;
    *(v24 + 1) = v246;
    *(v24 + 2) = v76;
    *v24 = v245;
    *&v24[*(v71 + 56)] = 256;
    v77 = sub_252692920();
    v170 = v39;
    v78 = v44;
    v80 = v79;
    (*(v72 + 8))(v70, v74);
    v81 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD8C0) + 36)];
    *v81 = v77;
    v81[1] = v80;
    KeyPath = swift_getKeyPath();
    v82 = v185;
    v169 = v69;
    sub_25268A1D0(v185);
    v83 = *MEMORY[0x277CDF3D0];
    v84 = v199;
    v178 = *(v199 + 104);
    v162[0] = v199 + 104;
    (v178)(v78, v83, v36);
    v173 = sub_25246A290(&qword_27F4DD890, MEMORY[0x277CDF3E0]);
    v85 = v78;
    v164 = v78;
    LOBYTE(v77) = sub_252692B70();
    v86 = *(v84 + 8);
    v162[1] = v84 + 8;
    v167 = v86;
    v86(v85, v36);
    v86(v82, v36);
    v87 = *MEMORY[0x277CDF3C0];
    v168 = *MEMORY[0x277CDF3C0];
    if (v77)
    {
      v88 = v87;
    }

    else
    {
      v88 = v83;
    }

    v89 = v176;
    (v178)(v176, v88, v36);
    v90 = v182;
    v91 = &v182[*(v181 + 36)];
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00);
    v93 = *(v92 + 28);
    v94 = *(v84 + 32);
    v199 = v84 + 32;
    v165 = v94;
    v166 = v92;
    v94(v91 + v93, v89, v36);
    *v91 = KeyPath;
    sub_2523714D4(v24, v90, &qword_27F4DD858);
    sub_2523714D4(v90, v198, &qword_27F4DD860);
    a4 = v187;
    a6 = v188;
    sub_2526925A0();
    sub_2526908F0();

    v95 = sub_252692920();
    v181 = v96;
    v182 = v95;
    v97 = 1.0 - v175;
    sub_2526925A0();
    v98 = v186;
    v99 = v180;
    sub_252692880();
    v100 = v258;
    *v99 = v257;
    *(v99 + 16) = v100;
    *(v99 + 32) = v259;
    *(v99 + *(v98 + 56)) = 256;
    v186 = swift_getKeyPath();
    sub_25268A1D0(v82);
    v101 = v164;
    v102 = v83;
    v103 = v83;
    v104 = v178;
    (v178)(v164, v103, v36);
    LOBYTE(v98) = sub_252692B70();
    v105 = v101;
    v106 = v167;
    v167(v105, v36);
    v106(v82, v36);
    if (v98)
    {
      v107 = v168;
    }

    else
    {
      v107 = v102;
    }

    v108 = v170;
    v104(v170, v107, v36);
    v109 = v179;
    v110 = &v179[*(v189 + 36)];
    v165(v110 + *(v166 + 28), v108, v36);
    *v110 = v186;
    sub_2523714D4(v99, v109, &qword_27F4DD878);
    v111 = v184;
    sub_2523714D4(v109, v184, &qword_27F4DD880);
    a7 = v177;
    sub_2526925A0();
    v112 = v190;
    sub_25237153C(v198, v190, &qword_27F4DD860);
    v113 = v191;
    sub_25237153C(v111, v191, &qword_27F4DD880);
    v114 = v183;
    sub_25237153C(v112, v183, &qword_27F4DD860);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD8C8);
    v116 = v114 + v115[12];
    v211 = v241;
    v212 = v242;
    v209 = v239;
    v210 = v240;
    v208 = v238;
    v117 = v202;
    *&v213 = v202;
    WORD4(v213) = 256;
    *(&v213 + 10) = v243;
    HIWORD(v213) = v244;
    *&v214 = v182;
    *(&v214 + 1) = v181;
    v215 = v97;
    v118 = v238;
    v119 = v239;
    v120 = v241;
    *(v116 + 32) = v240;
    *(v116 + 48) = v120;
    *v116 = v118;
    *(v116 + 16) = v119;
    v121 = v212;
    v122 = v213;
    v123 = v214;
    *(v116 + 112) = v215;
    *(v116 + 80) = v122;
    *(v116 + 96) = v123;
    *(v116 + 64) = v121;
    sub_25237153C(v113, v114 + v115[16], &qword_27F4DD880);
    v124 = (v114 + v115[20]);
    v125 = v204;
    v216 = v203;
    v217 = v204;
    *&v218 = v205;
    *(&v218 + 1) = v117;
    LOWORD(v219) = 256;
    *(&v219 + 2) = v206;
    WORD3(v219) = v207;
    *(&v219 + 1) = v97;
    *v124 = v203;
    v124[1] = v125;
    v126 = v219;
    v124[2] = v218;
    v124[3] = v126;

    sub_25237153C(&v208, &v228, &qword_27F4DD8D0);
    sub_25237153C(&v216, &v228, &qword_27F4DD8A0);
    sub_252372288(v184, &qword_27F4DD880);
    sub_252372288(v198, &qword_27F4DD860);
    v220 = v203;
    v221 = v204;
    v222 = v205;
    v223 = v117;
    v224 = 256;
    v225 = v206;
    v226 = v207;
    v227 = v97;
    sub_252372288(&v220, &qword_27F4DD8A0);
    sub_252372288(v113, &qword_27F4DD880);
    v230 = v240;
    v231 = v241;
    v232 = v242;
    v228 = v238;
    v229 = v239;
    v233 = v117;
    LOWORD(v234) = 256;
    *(&v234 + 2) = v243;
    HIWORD(v234) = v244;
    v235 = v182;
    v236 = v181;
    v237 = v97;
    sub_252372288(&v228, &qword_27F4DD8D0);
    sub_252372288(v190, &qword_27F4DD860);
    v127 = v201;
    sub_2523714D4(v114, v201, &qword_27F4DD850);
    (*(v193 + 56))(v127, 0, 1, v194);
  }

  else
  {
    sub_2526925A0();
    v128 = v186;
    sub_252692880();
    v129 = v217;
    *v51 = v216;
    *(v51 + 1) = v129;
    v51[32] = v218;
    *&v51[*(v128 + 56)] = 256;
    v198 = swift_getKeyPath();
    v130 = v185;
    sub_25268A1D0(v185);
    v131 = *MEMORY[0x277CDF3D0];
    v132 = v199;
    v190 = *(v199 + 104);
    (v190)(v44, v131, v36);
    sub_25246A290(&qword_27F4DD890, MEMORY[0x277CDF3E0]);
    LOBYTE(v128) = sub_252692B70();
    v133 = v44;
    v134 = v36;
    v135 = *(v132 + 8);
    v135(v133, v134);
    v135(v130, v134);
    if (v128)
    {
      v136 = *MEMORY[0x277CDF3C0];
    }

    else
    {
      v136 = v131;
    }

    v137 = x;
    (v190)(*&x, v136, v134);
    v138 = *&y;
    v139 = (*&y + *(v189 + 36));
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00);
    (*(v132 + 32))(&v139[*(v140 + 28)], COERCE_CGFLOAT(*&v137), v134);
    *v139 = v198;
    sub_2523714D4(v51, v138, &qword_27F4DD878);
    v141 = *&v175;
    sub_2523714D4(v138, *&v175, &qword_27F4DD880);
    sub_2526925A0();
    v142 = v191;
    sub_25237153C(v141, v191, &qword_27F4DD880);
    v143 = *&v177;
    sub_25237153C(v142, *&v177, &qword_27F4DD880);
    v144 = (v143 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD898) + 48));
    v145 = v221;
    v208 = v220;
    v209 = v221;
    v146 = v202;
    *&v210 = v222;
    *(&v210 + 1) = v202;
    LOWORD(v211) = 256;
    *(&v211 + 2) = v255;
    WORD3(v211) = v256;
    *(&v211 + 1) = 1.0 - a8;
    *v144 = v220;
    v144[1] = v145;
    v147 = v211;
    v144[2] = v210;
    v144[3] = v147;

    sub_25237153C(&v208, &v228, &qword_27F4DD8A0);
    sub_252372288(v141, &qword_27F4DD880);
    v228 = v220;
    v229 = v221;
    *&v230 = v222;
    *(&v230 + 1) = v146;
    LOWORD(v231) = 256;
    *(&v231 + 2) = v255;
    WORD3(v231) = v256;
    *(&v231 + 1) = 1.0 - a8;
    sub_252372288(&v228, &qword_27F4DD8A0);
    sub_252372288(v142, &qword_27F4DD880);
    v148 = v200;
    sub_2523714D4(v143, v200, &qword_27F4DD870);
    (*(*&v187 + 56))(v148, 0, 1, COERCE_DOUBLE(*&v188));
    (*(v193 + 56))(v201, 1, 1, v194);
  }

  v263.origin.x = a4;
  v263.origin.y = a5;
  v263.size.width = a6;
  v263.size.height = a7;
  CGRectInset(v263, v196 * 0.5, v196 * 0.5);
  sub_2526925A0();
  sub_2526908F0();
  v199 = sub_2526922F0();
  v149 = swift_getKeyPath();
  v150 = v200;
  v151 = v192;
  sub_25237153C(v200, v192, &qword_27F4DD888);
  v152 = v201;
  v153 = v195;
  sub_25237153C(v201, v195, &qword_27F4DD868);
  v154 = v197;
  sub_25237153C(v151, v197, &qword_27F4DD888);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD8A8);
  sub_25237153C(v153, v154 + *(v155 + 48), &qword_27F4DD868);
  v156 = v154 + *(v155 + 64);
  v211 = v253;
  v212 = v254;
  v209 = v251;
  v210 = v252;
  v208 = v250;
  v157 = v199;
  *&v213 = v149;
  *(&v213 + 1) = v199;
  *&v214 = 0x3FB999999999999ALL;
  sub_25237153C(&v208, &v228, &qword_27F4DD8B0);

  v158 = v213;
  *(v156 + 64) = v212;
  *(v156 + 80) = v158;
  *(v156 + 96) = v214;
  v159 = v209;
  *v156 = v208;
  *(v156 + 16) = v159;
  v160 = v211;
  *(v156 + 32) = v210;
  *(v156 + 48) = v160;
  sub_252372288(v152, &qword_27F4DD868);
  sub_252372288(v150, &qword_27F4DD888);
  v230 = v252;
  v231 = v253;
  v232 = v254;
  v228 = v250;
  v229 = v251;
  v233 = v149;
  v234 = v157;
  v235 = 0x3FB999999999999ALL;
  sub_252372288(&v228, &qword_27F4DD8B0);
  sub_252372288(v153, &qword_27F4DD868);
  return sub_252372288(v151, &qword_27F4DD888);
}

uint64_t sub_25246A148@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_25246A2D8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s17FavoriteColorCellVMa);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_25246A340(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_25246A3A4;
  a2[1] = v7;
  return result;
}

uint64_t sub_25246A290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25246A2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25246A340(uint64_t a1, uint64_t a2)
{
  v4 = _s17FavoriteColorCellVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25246A3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s17FavoriteColorCellVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2524677E8(a1, v6, a2);
}

unint64_t sub_25246A424()
{
  result = qword_27F4DD7B8;
  if (!qword_27F4DD7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD7B0);
    sub_252400FC8(&qword_27F4DD7C0, &qword_27F4DD7C8);
    sub_252400FC8(&qword_27F4DD7D0, &qword_27F4DD7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD7B8);
  }

  return result;
}

unint64_t sub_25246A508()
{
  result = qword_27F4DD7E0;
  if (!qword_27F4DD7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD798);
    sub_25246A5E8(&qword_27F4DD7E8, &qword_27F4DD7A8, &unk_25269D5E8, sub_25246A5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD7E0);
  }

  return result;
}

uint64_t sub_25246A5E8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_25246A290(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25246A69C()
{
  result = qword_27F4DD7F8;
  if (!qword_27F4DD7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD800);
    sub_25246A754();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD7F8);
  }

  return result;
}

unint64_t sub_25246A754()
{
  result = qword_27F4DD808;
  if (!qword_27F4DD808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD818);
    sub_252400FC8(&qword_27F4DD820, &qword_27F4DD818);
    swift_getOpaqueTypeConformance2();
    sub_25246A290(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD808);
  }

  return result;
}

uint64_t sub_25246A880(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268ED20();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25268F860();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17FavoriteColorCellV5ValueOMa(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD8E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = *(v16 + 56);
  sub_25246A2D8(a1, &v30 - v17, _s17FavoriteColorCellV5ValueOMa);
  sub_25246A2D8(a2, &v18[v19], _s17FavoriteColorCellV5ValueOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = v33;
    sub_25246A2D8(v18, v14, _s17FavoriteColorCellV5ValueOMa);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v27 + 32))(v8, &v18[v19], v6);
      v25 = MEMORY[0x2530A13A0](v14, v8);
      v28 = *(v27 + 8);
      v28(v8, v6);
      v28(v14, v6);
      goto LABEL_12;
    }

    (*(v27 + 8))(v14, v6);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_25246A2D8(v18, v12, _s17FavoriteColorCellV5ValueOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v30;
      v21 = v31;
      v23 = &v18[v19];
      v24 = v32;
      (*(v31 + 32))(v30, v23, v32);
      v25 = sub_25268ED10();
      v26 = *(v21 + 8);
      v26(v22, v24);
      v26(v12, v24);
LABEL_12:
      sub_25246AC74(v18);
      return v25 & 1;
    }

    (*(v31 + 8))(v12, v32);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_252372288(v18, &qword_27F4DD8E0);
    v25 = 0;
    return v25 & 1;
  }

  sub_25246AC74(v18);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_25246AC74(uint64_t a1)
{
  v2 = _s17FavoriteColorCellV5ValueOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25246ACFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_2526909F0();
  v7 = v6;
  v8 = sub_25246DC30(v6, 10.0);
  v9 = 0.0;
  if (v8 >= 2)
  {
    v10 = 50.0;
    if (v7 > 50.0)
    {
      v10 = v7;
    }

    v9 = (v10 + v8 * -30.0) / (v8 + -1.0);
  }

  sub_2526909F0();
  sub_25246DCAC(v11);
  v13 = v12;
  v14 = sub_2526909F0();
  sub_25246AF04(v15, v9, v14, a2);
  *a3 = sub_252692920();
  *(a3 + 8) = v16;
  *(a3 + 16) = v9;
  *(a3 + 24) = 0;
  *(a3 + 32) = v13;
  *(a3 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD8F8);
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD908);
  sub_252400FC8(&qword_27F4DD910, &qword_27F4DD900);
  sub_25246DD2C();
  sub_252400FC8(&qword_27F4DD928, &qword_27F4DD908);
  return sub_252692790();
}

uint64_t sub_25246AF04(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v74 = sub_25268E040();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_25268E8D0();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25268E240();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = _s17FavoriteColorCellV5ValueOMa(0);
  v79 = *(v81 - 8);
  v10 = MEMORY[0x28223BE20](v81);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v64 - v17;
  MEMORY[0x28223BE20](v16);
  v87 = &v64 - v19;
  v90 = sub_25268F860();
  v76 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9E8);
  v83 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v75 = (&v64 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9F0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v64 - v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v29 = v96;
  v30 = *(a4 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 16);
  v64 = v12;
  v65 = v15;
  if (v30)
  {
    v31 = *(a4 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig);
    v32 = *(a4 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 8);
    v94 = BYTE6(v31) & 1;
    v93 = BYTE2(v32) & 1;
    LOWORD(v91) = v31 & 0x101;
    BYTE2(v91) = BYTE2(v31) & 1;
    WORD2(v91) = WORD2(v31);
    BYTE6(v91) = BYTE6(v31) & 1;
    WORD4(v91) = v32;
    BYTE10(v91) = BYTE2(v32) & 1;
    v92 = v30;
    v95[0] = v31;
    v95[1] = v32;
    v95[2] = v30;
    sub_252394224(v95, &v96);
    v33 = sub_252488DD8(v29);
    v96 = v91;
    v97 = v92;
    sub_252394280(&v96);

    v29 = v33;
  }

  v34 = sub_25246DC30(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9F8);
  v35 = swift_allocObject();
  i = 0;
  *(v35 + 16) = xmmword_252694EA0;
  v37 = MEMORY[0x277D84F90];
  *(v35 + 32) = MEMORY[0x277D84F90];
  v88 = v35 + 32;
  v85 = v35;
  *(v35 + 40) = v37;
  v86 = (v76 + 16);
  v38 = v83;
  v83 += 6;
  v84 = (v38 + 7);
  v82 = (v76 + 32);
  v39 = *(v29 + 16);
  v80 = (v76 + 8);
  v78 = v18;
  v77 = v28;
  if (v39)
  {
    goto LABEL_5;
  }

LABEL_4:
  v40 = 1;
  for (i = v39; ; ++i)
  {
    (*v84)(v26, v40, 1, v21);
    sub_2523714D4(v26, v28, &qword_27F4DD9F0);
    if ((*v83)(v28, 1, v21) == 1)
    {
      goto LABEL_21;
    }

    v45 = *v28;
    (*v82)(v89, v28 + *(v21 + 48), v90);
    if (!v34)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v45 == 0x8000000000000000 && v34 == -1)
    {
      goto LABEL_37;
    }

    v46 = v45 / v34;
    if (v45 / v34 >= 2)
    {
      break;
    }

    if ((v46 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    if (v46 >= *(v85 + 16))
    {
      goto LABEL_35;
    }

    v47 = v39;
    v48 = v34;
    v49 = v26;
    v50 = v21;
    v51 = v29;
    v52 = v87;
    v53 = *(v88 + 8 * v46);
    (*v86)(v87, v89, v90);
    swift_storeEnumTagMultiPayload();
    sub_25246E2D8(v52, v18);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_252369530(0, v53[2] + 1, 1, v53);
    }

    v55 = v53[2];
    v54 = v53[3];
    if (v55 >= v54 >> 1)
    {
      v53 = sub_252369530(v54 > 1, v55 + 1, 1, v53);
    }

    v53[2] = v55 + 1;
    v56 = v53 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v55;
    v18 = v78;
    sub_25246E5B4(v78, v56);
    sub_25246E3C4(v87, _s17FavoriteColorCellV5ValueOMa);
    (*v80)(v89, v90);
    v57 = v88;

    *(v57 + 8 * v46) = v53;
    v29 = v51;
    v21 = v50;
    v26 = v49;
    v34 = v48;
    v39 = v47;
    v28 = v77;
    if (i == v39)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (i >= *(v29 + 16))
    {
      goto LABEL_36;
    }

    v41 = v76;
    v42 = v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * i;
    v43 = *(v21 + 48);
    v44 = v75;
    *v75 = i;
    (*(v41 + 16))(v44 + v43, v42, v90);
    sub_2523714D4(v44, v26, &qword_27F4DD9E8);
    v40 = 0;
  }

  (*v80)(v89, v90);
LABEL_21:
  sub_25268E1B0();
  v58 = sub_25268E1A0();
  v59 = v67;
  sub_25268E140();

  v60 = v72;
  sub_25268E870();
  (*(v69 + 8))(v59, v71);
  v28 = v66;
  sub_25268E010();
  (*(v73 + 8))(v60, v74);
  LOBYTE(v60) = sub_25268E210();
  (*(v68 + 8))(v28, v70);
  if ((v60 & 1) == 0)
  {

    return v85;
  }

  v26 = v65;
  swift_storeEnumTagMultiPayload();
  v39 = *(v29 + 16);

  if (!v34)
  {
    goto LABEL_38;
  }

  v28 = v39 / v34;
  if (v39 / v34 > 1)
  {
    sub_25246E3C4(v26, _s17FavoriteColorCellV5ValueOMa);
    return v85;
  }

  v18 = v64;
  sub_25246E2D8(v26, v64);
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  if (v28 >= *(v85 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v39 = *(v88 + 8 * v28);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_27;
  }

LABEL_41:
  v39 = sub_252369530(0, *(v39 + 16) + 1, 1, v39);
  *(v88 + 8 * v28) = v39;
LABEL_27:
  v62 = *(v39 + 16);
  v61 = *(v39 + 24);
  if (v62 >= v61 >> 1)
  {
    v39 = sub_252369530(v61 > 1, v62 + 1, 1, v39);
    *(v88 + 8 * v28) = v39;
  }

  sub_25246E3C4(v26, _s17FavoriteColorCellV5ValueOMa);
  *(v39 + 16) = v62 + 1;
  sub_25246E5B4(v18, v39 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v62);
  *(v88 + 8 * v28) = v39;
  return v85;
}

uint64_t sub_25246BA00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD908);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD920);
  _s17FavoriteColorCellV5ValueOMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD930);
  sub_252400FC8(&qword_27F4DD938, &qword_27F4DD920);
  sub_25246DDE8();
  sub_25246E290(&qword_27F4DD9B8, _s17FavoriteColorCellV5ValueOMa);
  return sub_2526927B0();
}

uint64_t sub_25246BB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v98 = a2;
  v107 = a4;
  v108 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9A8);
  MEMORY[0x28223BE20](v105);
  *&v82.f64[0] = &v78 - v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9C0);
  v86 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v84 = &v78 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9C8);
  MEMORY[0x28223BE20](v102);
  v104 = &v78 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9D0);
  MEMORY[0x28223BE20](v97);
  v99 = &v78 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD950);
  MEMORY[0x28223BE20](v103);
  v101 = &v78 - v8;
  v93 = sub_252691630();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = _s17FavoriteColorCellVMa(0);
  MEMORY[0x28223BE20](v95);
  v81 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD970);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v78 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD968);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v78 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD960);
  MEMORY[0x28223BE20](v96);
  v94 = &v78 - v13;
  v14 = sub_25268ED20();
  v80 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - v18;
  v20 = sub_25268F860();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v78 - v25;
  v27 = _s17FavoriteColorCellV5ValueOMa(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25246E2D8(v108, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_25246DF44();
      v31 = v101;
      sub_252691470();
      sub_25237153C(v31, v104, &qword_27F4DD950);
      swift_storeEnumTagMultiPayload();
      sub_25246DEB8();
      v32 = sub_25246E1D4();
      *&v111 = v105;
      *(&v111 + 1) = v32;
      swift_getOpaqueTypeConformance2();
      sub_252691470();
      sub_252372288(v31, &qword_27F4DD950);
      return sub_25246E3C4(v29, _s17FavoriteColorCellV5ValueOMa);
    }

    else
    {
      v67 = v95;
      v68 = *&v82.f64[0];
      sub_25246E2D8(v108, *&v82.f64[0] + *(v95 + 20));
      *v68 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
      swift_storeEnumTagMultiPayload();
      *(v68 + *(v67 + 24)) = 0;
      sub_252692920();
      sub_2526909C0();
      v69 = v105;
      v70 = (v68 + *(v105 + 36));
      v71 = v112;
      *v70 = v111;
      v70[1] = v71;
      v70[2] = v113;
      v72 = swift_allocObject();
      v73 = v100;
      *(v72 + 16) = v98;
      *(v72 + 24) = v73;
      v74 = sub_25246E1D4();

      v75 = v84;
      sub_252691E60();

      sub_25246E344(v68);
      v76 = v86;
      v77 = v106;
      v86[2](v104, v75, v106);
      swift_storeEnumTagMultiPayload();
      sub_25246DEB8();
      v109 = v69;
      v110 = v74;
      swift_getOpaqueTypeConformance2();
      sub_252691470();
      return (v76[1])(v75, v77);
    }
  }

  else
  {
    v79 = v21;
    v34 = *(v21 + 32);
    v84 = (v21 + 32);
    v86 = v34;
    v78 = v20;
    (v34)(v26, v29, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v100;
    sub_252690680();

    *&v36.f64[0] = v111;
    v82 = v36;
    sub_25268F820();
    v37.f64[0] = v82.f64[0];
    v37.f64[1] = v38;
    v39 = vdupq_n_s64(0x4059000000000000uLL);
    v82 = vdivq_f64(vrndaq_f64(vmulq_f64(v37, v39)), v39);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    sub_25268F850();
    v40 = sub_25268ED10();
    v41 = *(v80 + 8);
    v41(v17, v14);
    v41(v19, v14);
    v42 = v40 & vmovn_s64(vceqq_f64(v82, vdupq_laneq_s64(v82, 1))).u8[0];
    v43 = v95;
    v44 = v81;
    sub_25246E2D8(v108, v81 + *(v95 + 20));
    *v44 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
    swift_storeEnumTagMultiPayload();
    *(v44 + *(v43 + 24)) = v42 & 1;
    v45 = v79;
    v46 = v26;
    v47 = v78;
    (*(v79 + 16))(v24, v26, v78);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    v50 = v98;
    *(v49 + 16) = v98;
    *(v49 + 24) = v35;
    (v86)(v49 + v48, v24, v47);
    v51 = sub_25246E290(&qword_27F4DD980, _s17FavoriteColorCellVMa);

    v52 = v83;
    sub_252691E60();

    v53 = sub_25246E3C4(v44, _s17FavoriteColorCellVMa);
    MEMORY[0x28223BE20](v53);
    *(&v78 - 4) = v50;
    *(&v78 - 3) = v35;
    *(&v78 - 2) = v46;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD978);
    *&v111 = v43;
    *(&v111 + 1) = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = sub_25246E124();
    v57 = v88;
    v58 = v87;
    sub_252691DE0();
    (*(v85 + 8))(v52, v58);
    v59 = v91;
    sub_252691620();
    *&v111 = v58;
    *(&v111 + 1) = v54;
    *&v112 = OpaqueTypeConformance2;
    *(&v112 + 1) = v56;
    swift_getOpaqueTypeConformance2();
    sub_25246E290(&qword_27F4DD9A0, MEMORY[0x277CDE1B0]);
    v60 = v94;
    v61 = v90;
    v62 = v93;
    sub_252691DB0();
    (*(v92 + 8))(v59, v62);
    (*(v89 + 8))(v57, v61);
    sub_252692920();
    sub_2526909C0();
    v63 = (v60 + *(v96 + 36));
    v64 = v112;
    *v63 = v111;
    v63[1] = v64;
    v63[2] = v113;
    sub_25237153C(v60, v99, &qword_27F4DD960);
    swift_storeEnumTagMultiPayload();
    sub_25246DF44();
    v65 = v101;
    sub_252691470();
    sub_25237153C(v65, v104, &qword_27F4DD950);
    swift_storeEnumTagMultiPayload();
    sub_25246DEB8();
    v66 = sub_25246E1D4();
    v109 = v105;
    v110 = v66;
    swift_getOpaqueTypeConformance2();
    sub_252691470();
    sub_252372288(v65, &qword_27F4DD950);
    sub_252372288(v60, &qword_27F4DD960);
    return (*(v79 + 8))(v46, v78);
  }
}

void sub_25246CA9C()
{
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;

  sub_25268F850();
  sub_252486464(v6);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v1 + 16))(v4, v6, v0);
  sub_252690690();
  (*(v1 + 8))(v6, v0);
  sub_25268F820();
  v8 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v9[1] = v8;

  sub_252690690();
  sub_252485FC4();
}

uint64_t sub_25246CC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v47 = a1;
  v48 = a2;
  v51 = a4;
  v46 = sub_25268F860();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v40 = v4;
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD530);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD998);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v40 - v8;
  v9 = sub_25268E040();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25268E8D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25268E240();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268E1B0();
  v21 = sub_25268E1A0();
  sub_25268E140();

  sub_25268E870();
  (*(v14 + 8))(v16, v13);
  sub_25268E010();
  (*(v10 + 8))(v12, v9);
  LOBYTE(v13) = sub_25268E210();
  (*(v18 + 8))(v20, v17);
  if (v13)
  {
    v22 = v45;
    sub_252690710();
    v23 = sub_252690740();
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    v24 = v44;
    v25 = v42;
    v26 = v46;
    (*(v44 + 16))(v42, v43, v46);
    v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v28 = swift_allocObject();
    v29 = v48;
    *(v28 + 16) = v47;
    *(v28 + 24) = v29;
    (*(v24 + 32))(v28 + v27, v25, v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9D8);
    sub_252400FC8(&qword_27F4DD9E0, &qword_27F4DD9D8);
    v30 = v41;
    sub_252692540();
    v31 = v49;
    v32 = v51;
    v33 = v30;
    v34 = v50;
    (*(v49 + 32))(v51, v33, v50);
    v35 = 0;
    v36 = v32;
    v37 = v34;
    v38 = v31;
  }

  else
  {
    v35 = 1;
    v37 = v50;
    v36 = v51;
    v38 = v49;
  }

  return (*(v38 + 56))(v36, v35, 1, v37);
}

uint64_t sub_25246D1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = sub_25268F860();
  v48 = *(v53 - 8);
  v5 = MEMORY[0x28223BE20](v53);
  v43 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = v41 - v8;
  MEMORY[0x28223BE20](v7);
  v46 = v41 - v9;
  v47 = a3;
  v55 = a3;
  swift_getKeyPath();
  swift_getKeyPath();

  v41[1] = a2;
  sub_252690680();

  v10 = v57;
  result = sub_25246DB44(sub_25246E584, v54, v57);
  if (v12)
  {
    v13 = v10[2];
    v14 = v13;
    goto LABEL_7;
  }

  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v52 = result;
  v16 = v10 + 2;
  v15 = v10[2];
  if (v13 != v15)
  {
    v45 = v48 + 8;
    v51 = v48 + 16;
    v42 = (v48 + 40);
    v23 = v46;
    while (v13 < v15)
    {
      v24 = v48;
      v25 = v10;
      v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v26 = v10 + v49;
      v27 = *(v48 + 72);
      v28 = *(v48 + 16);
      v50 = v27 * v13;
      v29 = v53;
      v28(v23, &v26[v27 * v13], v53);
      v30 = MEMORY[0x2530A13A0](v23, v47);
      result = (*(v24 + 8))(v23, v29);
      if (v30)
      {
        v10 = v25;
      }

      else
      {
        v31 = v52;
        if (v13 == v52)
        {
          v10 = v25;
        }

        else
        {
          if (v52 < 0)
          {
            goto LABEL_33;
          }

          v32 = *v16;
          if (v52 >= v32)
          {
            goto LABEL_34;
          }

          v33 = v27 * v52;
          v34 = &v26[v27 * v52];
          v35 = v53;
          result = (v28)(v44, v34, v53);
          if (v13 >= v32)
          {
            goto LABEL_35;
          }

          v36 = v50;
          v28(v43, &v26[v50], v35);
          v10 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_25261EF4C(v25);
          }

          v37 = v10 + v49;
          v38 = *v42;
          v39 = v10 + v49 + v33;
          v40 = v53;
          result = (*v42)(v39, v43, v53);
          if (v13 >= v10[2])
          {
            goto LABEL_36;
          }

          result = v38(&v37[v36], v44, v40);
          v31 = v52;
        }

        v52 = v31 + 1;
      }

      ++v13;
      v16 = v10 + 2;
      v15 = v10[2];
      if (v13 == v15)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_5:
  v14 = v52;
  if (v13 < v52)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v52 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_7:
  v17 = v14;
  v18 = v14 - v13;
  v19 = v13 + v18;
  if (__OFADD__(v13, v18))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v10;
  if (!isUniquelyReferenced_nonNull_native || v19 > v10[3] >> 1)
  {
    if (v13 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v13;
    }

    v10 = sub_252369558(isUniquelyReferenced_nonNull_native, v21, 1, v10);
    v57 = v10;
  }

  sub_252483150(v17, v13, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v22 = sub_2523E5350(v56, v10);

  if ((v22 & 1) == 0)
  {
    sub_25248A1B4(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v10;
  return sub_252690690();
}

uint64_t sub_25246D644()
{
  sub_252692C40();
  sub_252404480();
  return sub_252692460();
}

uint64_t sub_25246D6B8()
{
  v0 = sub_25268F860();
  v23 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - v4;
  v6 = sub_25268ED20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_252690680();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v24 = v12;
  v25 = v7;
  v13 = *(v7 + 16);
  v26 = v6;
  v14 = v6;
  v15 = v0;
  v16 = v23;
  v13(v10, v12, v14);
  sub_25268F840();
  (*(v16 + 16))(v3, v5, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v17 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_252369558(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_252369558(v18 > 1, v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  (*(v16 + 32))(v17 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v19, v3, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v20 = sub_2523E5350(v27, v17);

  if ((v20 & 1) == 0)
  {
    sub_25248A1B4(v17);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v17;
  sub_252690690();
  (*(v16 + 8))(v5, v15);
  return (*(v25 + 8))(v24, v26);
}

uint64_t sub_25246DAD0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_25246DB3C;
  a1[1] = v5;
}

uint64_t sub_25246DB44(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_25268F860() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_25246DC30(double a1, double a2)
{
  if (a1 <= 50.0)
  {
    a1 = 50.0;
  }

  v2 = round((a1 + a2) / (a2 + 30.0));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 >= 16)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

void sub_25246DCAC(double a1)
{
  v1 = (a1 + 10.0) / 40.0;
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

unint64_t sub_25246DD2C()
{
  result = qword_27F4DD918;
  if (!qword_27F4DD918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD920);
    sub_25246E290(&qword_27F4DD770, _s17FavoriteColorCellV5ValueOMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD918);
  }

  return result;
}

unint64_t sub_25246DDE8()
{
  result = qword_27F4DD940;
  if (!qword_27F4DD940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD930);
    sub_25246DEB8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD9A8);
    sub_25246E1D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD940);
  }

  return result;
}

unint64_t sub_25246DEB8()
{
  result = qword_27F4DD948;
  if (!qword_27F4DD948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD950);
    sub_25246DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD948);
  }

  return result;
}

unint64_t sub_25246DF44()
{
  result = qword_27F4DD958;
  if (!qword_27F4DD958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD968);
    sub_252691630();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD978);
    _s17FavoriteColorCellVMa(255);
    sub_25246E290(&qword_27F4DD980, _s17FavoriteColorCellVMa);
    swift_getOpaqueTypeConformance2();
    sub_25246E124();
    swift_getOpaqueTypeConformance2();
    sub_25246E290(&qword_27F4DD9A0, MEMORY[0x277CDE1B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD958);
  }

  return result;
}

unint64_t sub_25246E124()
{
  result = qword_27F4DD988;
  if (!qword_27F4DD988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD978);
    sub_252400FC8(&qword_27F4DD990, &qword_27F4DD998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD988);
  }

  return result;
}

unint64_t sub_25246E1D4()
{
  result = qword_27F4DD9B0;
  if (!qword_27F4DD9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD9A8);
    sub_25246E290(&qword_27F4DD980, _s17FavoriteColorCellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD9B0);
  }

  return result;
}

uint64_t sub_25246E290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25246E2D8(uint64_t a1, uint64_t a2)
{
  v4 = _s17FavoriteColorCellV5ValueOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25246E344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25246E3C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_28Tm()
{
  v1 = sub_25268F860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25246E50C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_25268F860() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_25246E5B4(uint64_t a1, uint64_t a2)
{
  v4 = _s17FavoriteColorCellV5ValueOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25246E618@<X0>(__int16 *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  [objc_opt_self() colorAtLocation_];
  v7 = roundf(v6);
  v8 = v7 >= 65536.0 || v7 <= -1.0;
  v9 = llroundf(v6);
  if (v8)
  {
    v9 = 100;
  }

  *a1 = v9;
  v10 = *MEMORY[0x277D15B28];
  v11 = sub_25268ED20();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

id sub_25246E744(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD71F8]) initWithFrame_];
  [v3 setOpaque_];
  [v3 setPaused_];
  [v3 setEnableSetNeedsDisplay_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA18);
  sub_252691840();
  v4 = [objc_allocWithZone(ColorTemperatureSpectrumRenderer) initWithMetal:v3 startColor:*(a2 + 18) endColor:*(a2 + 16)];
  v5 = *(v7 + 16);
  *(v7 + 16) = v4;

  return v3;
}

uint64_t sub_25246E840()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25246E8B8@<X0>(uint64_t *a1@<X8>)
{
  _s24ColorTemperatureSpectrumV11CoordinatorCMa();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_25246E8FC@<X0>(__int16 *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_25246E618(a1, a2, a3, a4, a5);
  v6 = sub_25268ED20();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 0, 1, v6);
}

uint64_t sub_25246E98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25246ECA4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25246E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25246ECA4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_25246EA54()
{
  sub_25246ECA4();
  sub_252691430();
  __break(1u);
}

unint64_t sub_25246EA80()
{
  result = qword_27F4DDA10;
  if (!qword_27F4DDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDA10);
  }

  return result;
}

unint64_t sub_25246EAD4(uint64_t a1)
{
  result = sub_25246EA80();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25246EAFC(uint64_t a1, double a2)
{
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, a1, v5);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D15B28])
  {
    (*(v6 + 96))(v8, v5);
    LOWORD(v2) = *v8;
    v10 = objc_opt_self();
    *&v11 = v2;
    [v10 positionForColor_];
    *&result = (v12 + 1.0) * 0.5 * a2;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    *&result = 0.0;
  }

  return result;
}

unint64_t sub_25246ECA4()
{
  result = qword_27F4DDA20;
  if (!qword_27F4DDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDA20);
  }

  return result;
}

uint64_t sub_25246ED24@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>, long double a7@<D5>)
{
  v29 = a7;
  v13 = sub_252690550();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x277CBF348];
  v18 = *(MEMORY[0x277CBF348] + 8);
  v30.origin.x = *MEMORY[0x277CBF348];
  v30.origin.y = v18;
  v30.size.width = a4;
  v30.size.height = a5;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = v17;
  v31.origin.y = v18;
  v31.size.width = a4;
  v31.size.height = a5;
  v20 = CGRectGetMidY(v31) - a3;
  v21 = a2 - MidX;
  *v22.i64 = atan2(v20, v21) / 6.28318531 + 0.4;
  if (*v22.i64 < 0.0)
  {
    *v22.i64 = *v22.i64 + 1.0;
  }

  if (a5 >= a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = a5;
  }

  sub_25246F96C(v22, sqrt(v21 * v21 + v20 * v20) / (v23 * 0.5), a6, v29);
  (*(v14 + 32))(a1, v16, v13);
  v24 = *MEMORY[0x277D15B40];
  v25 = sub_25268ED20();
  v26 = *(v25 - 8);
  (*(v26 + 104))(a1, v24, v25);
  return (*(v26 + 56))(a1, 0, 1, v25);
}

uint64_t sub_25246EF48(uint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5)
{
  v10 = sub_252690550();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25268ED20();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D15B40])
  {
    (*(v15 + 96))(v18, v14);
    (*(v11 + 32))(v13, v18, v10);
    v20 = sub_25248BCB0();
    v22 = v21;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (v19 != *MEMORY[0x277D15B38])
    {
      (*(v15 + 8))(v18, v14);
      *&result = 0.0;
      return result;
    }

    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    v22 = *(v18 + 1);
  }

  v23 = fmax(pow(v22, 1.0 / a5), a4);
  if (a3 >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = a3;
  }

  v25 = v24 * 0.5 * v23 + 0.0;
  v26 = (v20 + -0.4) * 6.28318531;
  v27 = *MEMORY[0x277CBF348];
  v28 = *(MEMORY[0x277CBF348] + 8);
  v32.origin.x = *MEMORY[0x277CBF348];
  v32.origin.y = v28;
  v32.size.width = a2;
  v32.size.height = a3;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v27;
  v33.origin.y = v28;
  v33.size.width = a2;
  v33.size.height = a3;
  CGRectGetMidY(v33);
  *&result = MidX + __sincos_stret(v26).__cosval * v25;
  return result;
}

uint64_t sub_25246F27C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a1 = sub_25246F350;
  a1[1] = result;
  return result;
}

unint64_t sub_25246F2D4(uint64_t a1)
{
  result = sub_25246F2FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25246F2FC()
{
  result = qword_27F4DDA28;
  if (!qword_27F4DDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDA28);
  }

  return result;
}

void sub_25246F350(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_2526909F0();
  sub_25246F394(v5, v6, v3, v4);
  *a1 = v7;
}

void sub_25246F394(double a1, double a2, double a3, long double a4)
{
  v49 = a3;
  v50 = a4;
  v48 = sub_252690550();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_64;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v9 = a1;
  if ((a1 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v10 = a2;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = __CGBitmapContextCreateWithData(a1, a2, 4 * v9, DeviceRGB);
  if (!v12)
  {
LABEL_47:

    return;
  }

  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v13 = v12;
  Data = CGBitmapContextGetData(v12);
  if (!Data)
  {

    return;
  }

  if (v10 < 0)
  {
    goto LABEL_69;
  }

  v44 = v13;
  v45 = DeviceRGB;
  if (!v10)
  {
LABEL_44:
    DeviceRGB = v44;
    Image = CGBitmapContextCreateImage(v44);
    if (Image)
    {
      v42 = Image;
      sub_252691240();
      sub_252691D30();
      sub_252692430();

      return;
    }

    goto LABEL_47;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v15 = Data;
    v51 = 0;
    if (v10 >= v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = v10;
    }

    v47 = v16 * 0.5;
    v17 = (v6 + 8);
    v46 = 6.28318531;
    while (!v9)
    {
LABEL_18:
      if (++v51 == v10)
      {
        goto LABEL_44;
      }
    }

    v18 = 0;
    while (1)
    {
      v19 = v18 * v10;
      if ((v18 * v10) >> 64 != (v18 * v10) >> 63)
      {
        break;
      }

      v20 = __OFADD__(v19, v51);
      v21 = v19 + v51;
      if (v20)
      {
        goto LABEL_49;
      }

      v22 = v21 / v9;
      v23 = v21 / v9 * v9;
      v24 = v21 % v9;
      v25 = CGPointMake(Data);
      v27 = v26;
      v52.origin.x = 0.0;
      v52.origin.y = 0.0;
      v52.size.width = v9;
      v52.size.height = v10;
      MidX = CGRectGetMidX(v52);
      v53.origin.x = 0.0;
      v53.origin.y = 0.0;
      v53.size.width = v9;
      v53.size.height = v10;
      v29 = CGRectGetMidY(v53) - v27;
      v30 = v25 - MidX;
      *v31.i64 = atan2(v29, v30);
      *v31.i64 = *v31.i64 / v46 + 0.4;
      if (*v31.i64 < 0.0)
      {
        *v31.i64 = *v31.i64 + 1.0;
      }

      v32 = sqrt(v30 * v30 + v29 * v29) / v47;
      if (v32 <= 0.0)
      {
        v32 = 0.0;
      }

      if (v32 > 1.0)
      {
        v32 = 1.0;
      }

      sub_25246F96C(v31, v32, v49, v50);
      if ((v22 * v9) >> 64 != v23 >> 63)
      {
        goto LABEL_50;
      }

      v20 = __OFADD__(v24, v23);
      v33 = v24 + v23;
      if (v20)
      {
        goto LABEL_51;
      }

      if ((v33 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_52;
      }

      sub_252690520();
      v35 = v34 * 255.0;
      if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_53;
      }

      if (v35 <= -1.0)
      {
        goto LABEL_54;
      }

      if (v35 >= 256.0)
      {
        goto LABEL_55;
      }

      v36 = 4 * v33;
      v15[v36] = v35;
      sub_252690510();
      v38 = v37 * 255.0;
      if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_56;
      }

      if (v38 <= -1.0)
      {
        goto LABEL_57;
      }

      if (v38 >= 256.0)
      {
        goto LABEL_58;
      }

      v15[v36 | 1] = v38;
      sub_252690500();
      v40 = v39 * 255.0;
      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_59;
      }

      if (v40 <= -1.0)
      {
        goto LABEL_60;
      }

      if (v40 >= 256.0)
      {
        goto LABEL_61;
      }

      ++v18;
      v15[v36 | 2] = v40;
      v15[v36 + 3] = -1;
      Data = (*v17)(v8, v48);
      if (v9 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_70:
  __break(1u);
}

unint64_t sub_25246F908()
{
  result = qword_27F4DDA30;
  if (!qword_27F4DDA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDA30);
  }

  return result;
}

void sub_25246F96C(int8x16_t a1, double a2, double a3, long double a4)
{
  v4 = 0.0;
  if (a2 >= a3)
  {
    v4 = (a2 - a3) / (1.0 - a3);
  }

  pow(v4, a4);
  *v5.i64 = *a1.i64 - trunc(*a1.i64);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = *vbslq_s8(vnegq_f64(v6), v5, a1).i64 * 6.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_252690540();
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

uint64_t sub_25246FB3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25246FB84(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_25246FC0C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_2526912C0();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2526917F0();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA40);
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v21 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA48);
  MEMORY[0x28223BE20](v24);
  v12 = &v21 - v11;
  sub_2524716F4(v1, v28);
  v13 = swift_allocObject();
  v14 = v28[5];
  *(v13 + 80) = v28[4];
  *(v13 + 96) = v14;
  *(v13 + 112) = v28[6];
  *(v13 + 128) = v29;
  v15 = v28[1];
  *(v13 + 16) = v28[0];
  *(v13 + 32) = v15;
  v16 = v28[3];
  *(v13 + 48) = v28[2];
  *(v13 + 64) = v16;
  *&v28[0] = sub_25247172C;
  *(&v28[0] + 1) = v13;
  sub_2526917C0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA50);
  v18 = sub_252400FC8(&qword_27F4DDA58, &qword_27F4DDA50);
  sub_252692020();
  (*(v5 + 8))(v7, v22);

  sub_252691280();
  *&v28[0] = v17;
  *(&v28[0] + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v23;
  sub_252691EB0();
  (*(v25 + 8))(v4, v26);
  (*(v8 + 8))(v10, v19);
  sub_252692C40();
  sub_252690BB0();

  return sub_252315EBC(v12);
}

uint64_t sub_25246FFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = sub_2526928B0();
  *(a3 + 1) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA60);
  sub_2524700BC(a2, a1, &a3[*(v7 + 44)]);
  KeyPath = swift_getKeyPath();
  v9 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA68) + 36)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA70) + 28);
  v11 = *MEMORY[0x277CDFA88];
  v12 = sub_252690BA0();
  result = (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  return result;
}

uint64_t sub_2524700BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v142 = a2;
  v132 = a3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA78);
  MEMORY[0x28223BE20](v130);
  v133 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v131 = &v112 - v6;
  v7 = sub_25268ED20();
  v134 = *(v7 - 8);
  v135 = v7;
  MEMORY[0x28223BE20](v7);
  v112 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v139 = &v112 - v10;
  v118 = sub_252690A20();
  v11 = *(v118 - 8);
  v116 = *(v11 + 64);
  MEMORY[0x28223BE20](v118);
  v114 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2526914B0();
  MEMORY[0x28223BE20](v113);
  v13 = sub_252690890();
  v14 = *(v13 - 8);
  v119 = v13;
  v120 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA80);
  v18 = *(v17 - 8);
  v136 = v17;
  v137 = v18;
  MEMORY[0x28223BE20](v17);
  v117 = &v112 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA88);
  v140 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v121 = &v112 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA90);
  v115 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = (&v112 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA98);
  v128 = *(v24 - 8);
  v129 = v24;
  MEMORY[0x28223BE20](v24);
  v143 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v141 = &v112 - v27;
  v28 = __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  v29 = MEMORY[0x28223BE20](v28);
  (*(v31 + 16))(&v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v32 = sub_252692690();
  v33 = (v23 + *(v21 + 36));
  v127 = sub_252690D30();
  v34 = *(v127 + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_252691260();
  v37 = *(v36 - 8);
  v38 = *(v37 + 104);
  v126 = v35;
  v124 = v38;
  v125 = v36;
  v123 = v37 + 104;
  (v38)(v33 + v34, v35);
  __asm { FMOV            V0.2D, #16.0 }

  v122 = _Q0;
  *v33 = _Q0;
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8) + 36)) = 256;
  *v23 = v32;
  sub_252691670();
  v44 = 0.0;
  sub_252690860();
  sub_2524716F4(a1, &v150);
  v45 = v114;
  v46 = v118;
  (*(v11 + 16))(v114, v142, v118);
  v47 = (*(v11 + 80) + 136) & ~*(v11 + 80);
  v48 = swift_allocObject();
  v49 = v155;
  v50 = v156;
  v51 = v153;
  *(v48 + 80) = v154;
  *(v48 + 96) = v49;
  *(v48 + 112) = v50;
  *(v48 + 128) = v157;
  v52 = v151;
  *(v48 + 16) = v150;
  *(v48 + 32) = v52;
  *(v48 + 48) = v152;
  *(v48 + 64) = v51;
  v53 = v45;
  v54 = v139;
  (*(v11 + 32))(v48 + v47, v53, v46);
  sub_2524719E4(&qword_27F4DDAA0, MEMORY[0x277CDD730]);
  sub_2524719E4(&qword_27F4DDAA8, MEMORY[0x277CDD708]);
  v55 = v117;
  v56 = v119;
  sub_2526927D0();

  (*(v120 + 8))(v16, v56);
  sub_2524716F4(a1, &v150);
  v57 = swift_allocObject();
  v58 = v155;
  v59 = v156;
  v60 = v153;
  *(v57 + 80) = v154;
  *(v57 + 96) = v58;
  *(v57 + 112) = v59;
  *(v57 + 128) = v157;
  v61 = v151;
  *(v57 + 16) = v150;
  *(v57 + 32) = v61;
  *(v57 + 48) = v152;
  *(v57 + 64) = v60;
  sub_252400FC8(&qword_27F4DDAB0, &qword_27F4DDA80);
  v62 = v121;
  v63 = v136;
  sub_2526927C0();

  (*(v137 + 8))(v55, v63);
  sub_2526908B0();
  sub_252471800();
  sub_252400FC8(&qword_27F4DDAC0, &qword_27F4DDA88);
  v64 = v141;
  v65 = v138;
  sub_252692180();
  (*(v140 + 8))(v62, v65);
  sub_252372288(v23, &qword_27F4DDA90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  sub_2526909F0();
  *&v68 = COERCE_DOUBLE(sub_252471384(v66, v67));
  if (v70)
  {
    v119 = 0;
    v120 = 0;
    v140 = 0;
    v137 = 0;
    v138 = 0;
    v142 = 0;
    v136 = 0;
    v71 = 0.0;
    v121 = 1;
  }

  else
  {
    v72 = *&v68;
    v73 = v69;
    v74 = v112;
    (*(v134 + 16))(v112, v54, v135);
    v121 = sub_25248C4C8(v74);
    v75 = *(a1 + 40);
    LOBYTE(v150) = *(a1 + 32);
    *(&v150 + 1) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    sub_2526924E0();
    v120 = v144;
    v76 = *(a1 + 88);
    v77 = *(a1 + 96);
    sub_252692920();
    sub_2526909C0();
    v119 = v158;
    v78 = v159;
    v140 = v160;
    v79 = v161;
    v137 = v163;
    v138 = v162;
    sub_2526909F0();
    if (v80 >= v72)
    {
      v82 = v72;
    }

    else
    {
      v82 = v80;
    }

    v83 = fmin(v80, 0.0);
    if (v72 >= 0.0)
    {
      v83 = v82;
    }

    v44 = v83 - v76 * 0.5;
    if (v81 >= v73)
    {
      v84 = v73;
    }

    else
    {
      v84 = v81;
    }

    v85 = fmin(v81, 0.0);
    if (v73 < 0.0)
    {
      v84 = v85;
    }

    LOBYTE(v150) = v78;
    LOBYTE(v144) = v79;
    v71 = v84 - v77 * 0.5;
    v136 = v78;
    v142 = v79;
  }

  v86 = v131;
  v124(&v131[*(v127 + 20)], v126, v125);
  *v86 = v122;
  sub_2526908F0();
  v87 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAC8) + 36);
  v88 = v165;
  *v87 = v164;
  *(v87 + 1) = v88;
  *(v87 + 4) = v166;
  v89 = sub_2526922F0();
  KeyPath = swift_getKeyPath();
  v91 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAD0) + 36));
  *v91 = KeyPath;
  v91[1] = v89;
  *(v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAD8) + 36)) = 0x3FC3333333333333;
  LOBYTE(v89) = sub_252691A20();
  sub_252690760();
  v92 = v129;
  v93 = v86 + *(v130 + 36);
  *v93 = v89;
  *(v93 + 1) = v94;
  *(v93 + 2) = v95;
  *(v93 + 3) = v96;
  *(v93 + 4) = v97;
  v93[40] = 0;
  v98 = v128;
  v99 = *(v128 + 16);
  v100 = v143;
  v99(v143, v64, v92);
  v101 = v133;
  sub_25237153C(v86, v133, &qword_27F4DDA78);
  v102 = v132;
  v99(v132, v100, v92);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAE0);
  v104 = &v102[*(v103 + 48)];
  v106 = v120;
  v105 = v121;
  *&v144 = v121;
  *(&v144 + 1) = v120;
  v107 = v119;
  *&v145 = v119;
  *(&v145 + 1) = v136;
  *&v146 = v140;
  *(&v146 + 1) = v142;
  *&v147 = v138;
  *(&v147 + 1) = v137;
  *&v148 = v44;
  *(&v148 + 1) = v71;
  v149 = 0;
  v104[80] = 0;
  v108 = v145;
  *v104 = v144;
  *(v104 + 1) = v108;
  v109 = v147;
  *(v104 + 2) = v146;
  *(v104 + 3) = v109;
  *(v104 + 4) = v148;
  sub_25237153C(v101, &v102[*(v103 + 64)], &qword_27F4DDA78);
  sub_25237153C(&v144, &v150, &qword_27F4DDAE8);
  sub_252372288(v86, &qword_27F4DDA78);
  (*(v134 + 8))(v139, v135);
  v110 = *(v98 + 8);
  v110(v141, v92);
  sub_252372288(v101, &qword_27F4DDA78);
  *&v150 = v105;
  *(&v150 + 1) = v106;
  *&v151 = v107;
  *(&v151 + 1) = v136;
  *&v152 = v140;
  *(&v152 + 1) = v142;
  *&v153 = v138;
  *(&v153 + 1) = v137;
  *&v154 = v44;
  *(&v154 + 1) = v71;
  LOBYTE(v155) = 0;
  sub_252372288(&v150, &qword_27F4DDAE8);
  return (v110)(v143, v92);
}

uint64_t sub_252470E64(uint64_t a1, __int128 *a2, void (*a3)(char *, char *, uint64_t))
{
  v43 = a3;
  v4 = sub_25268ED20();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v38 - v7;
  MEMORY[0x28223BE20](v8);
  v41 = v38 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  v19 = *(a2 + 5);
  LOBYTE(v47) = *(a2 + 32);
  *(&v47 + 1) = v19;
  LOBYTE(v44) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924F0();
  sub_252690880();
  v20 = *(a2 + 16);
  v21 = *(a2 + 3);
  v47 = *a2;
  v48 = v20;
  v49 = v21;
  v44 = v22;
  v45 = v23;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAF0);
  sub_2526924F0();
  v24 = *(a2 + 9);
  v25 = *(a2 + 10);
  __swift_project_boxed_opaque_existential_1(a2 + 6, v24);
  v26 = v42;
  sub_252690880();
  v28 = v27;
  v30 = v29;
  sub_2526909F0();
  (*(v25 + 16))(v24, v25, v28, v30, v31, v32);
  v33 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  sub_25237153C(v18, v15, &qword_27F4DB2A8);
  if ((*(v26 + 48))(v15, 1, v4) == 1)
  {
    (*(v26 + 8))(v12, v4);
    sub_252372288(v18, &qword_27F4DB2A8);
  }

  else
  {
    v34 = v41;
    (*(v26 + 32))(v41, v15, v4);
    sub_2524719E4(&qword_27F4DCCF0, MEMORY[0x277D15B48]);
    if (sub_252692B70())
    {
      v35 = *(v26 + 8);
    }

    else
    {
      v43 = *(v26 + 16);
      v36 = v40;
      v43(v40, v34, v4);

      sub_252486464(v36);
      v38[1] = swift_getKeyPath();
      swift_getKeyPath();
      v43(v39, v36, v4);
      sub_252690690();
      v35 = *(v26 + 8);
      v35(v36, v4);
    }

    v35(v34, v4);
    v35(v33, v4);
    v15 = v18;
  }

  return sub_252372288(v15, &qword_27F4DB2A8);
}

uint64_t sub_252471384(double a1, double a2)
{
  v21 = sub_25268ED20();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 16);
  v11 = v2[3];
  v24 = *v2;
  v25 = v9;
  v26 = v10;
  v20 = v11;
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAF0);
  sub_2526924E0();
  if ((v23 & 1) != 0 || (v12 = v22, v13 = v2[5], LOBYTE(v24) = *(v2 + 32), v25 = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320), sub_2526924E0(), v22 != 1))
  {
    v14 = v2[9];
    v15 = v2[10];
    __swift_project_boxed_opaque_existential_1(v2 + 6, v14);
    v16 = (*(v15 + 24))(v7, v14, v15, a1, a2);
    if (v17)
    {
      (*(v5 + 8))(v7, v21);
      return 0;
    }

    else
    {
      v12 = v16;
      v24 = v8;
      v25 = v9;
      v26 = v10;
      v27 = v20;
      sub_2526924E0();
      (*(v5 + 8))(v7, v21);
    }
  }

  else
  {
    (*(v5 + 8))(v7, v21);
  }

  return v12;
}

uint64_t sub_252471628(uint64_t a1)
{
  v2 = sub_252690BA0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_252690F00();
}

uint64_t sub_252471734(uint64_t a1)
{
  v3 = *(sub_252690A20() - 8);
  v4 = (v1 + ((*(v3 + 80) + 136) & ~*(v3 + 80)));

  return sub_252470E64(a1, (v1 + 16), v4);
}

uint64_t objectdestroyTm_6()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_252471800()
{
  result = qword_27F4DDAB8;
  if (!qword_27F4DDAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDA90);
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDAB8);
  }

  return result;
}

unint64_t sub_2524718B8()
{
  result = qword_27F4DDAF8;
  if (!qword_27F4DDAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDA50);
    sub_252400FC8(&qword_27F4DDA58, &qword_27F4DDA50);
    swift_getOpaqueTypeConformance2();
    sub_2524719E4(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDAF8);
  }

  return result;
}

uint64_t sub_2524719E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252471A74()
{
  sub_252471B10();
  if (v0 <= 0x3F)
  {
    sub_252471BC0();
    if (v1 <= 0x3F)
    {
      sub_252471C54();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252471B10()
{
  if (!qword_27F4DDB18)
  {
    sub_252471B6C();
    v0 = sub_252690960();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DDB18);
    }
  }
}

unint64_t sub_252471B6C()
{
  result = qword_27F4DDB20;
  if (!qword_27F4DDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDB20);
  }

  return result;
}

void sub_252471BC0()
{
  if (!qword_27F4DDB28)
  {
    _s16ColorPickerStateCMa();
    sub_252474F08(&qword_27F4DDB30, _s16ColorPickerStateCMa);
    v0 = sub_252690B00();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DDB28);
    }
  }
}

void sub_252471C54()
{
  if (!qword_27F4DDB38)
  {
    v0 = sub_2526907A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DDB38);
    }
  }
}

uint64_t sub_252471CC8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_2526917F0();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252691230();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = _s6SliderVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v6;
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC80);
  MEMORY[0x28223BE20](v34);
  v30 = &v29 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC88);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v29 - v9;
  sub_25247472C(v1, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_2524749C0(v7, v11 + v10);
  sub_252692920();
  sub_2526909C0();
  v55 = v50;
  v54 = v52;
  v42 = sub_252474A24;
  v43 = v11;
  v44 = v49;
  v45 = v50;
  v46 = v51;
  v47 = v52;
  v48 = v53;
  sub_252691210();
  sub_252691200();
  v29 = v1;
  v12 = v1[1];
  v13 = v1[2];
  v41[1] = *v1;
  v41[2] = v12;
  v41[3] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC90);
  MEMORY[0x2530A4210](v41, v14);
  sub_2526911E0();
  sub_252691200();
  sub_252691250();
  v15 = sub_252691D30();
  v17 = v16;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC98);
  sub_252474AA4();
  v20 = v30;
  sub_252691E90();
  sub_2524228D8(v15, v17, v19 & 1);

  v21 = v36;
  sub_2526917D0();
  v22 = sub_252474B5C();
  v23 = v32;
  v24 = v34;
  sub_252692020();
  (*(v38 + 8))(v21, v39);
  sub_252372288(v20, &qword_27F4DDC80);
  v25 = v31;
  sub_25247472C(v29, v31);
  v26 = swift_allocObject();
  sub_2524749C0(v25, v26 + v10);
  v42 = v24;
  v43 = v22;
  swift_getOpaqueTypeConformance2();
  v27 = v35;
  sub_2526920A0();

  return (*(v37 + 8))(v23, v27);
}

uint64_t sub_252472278@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = _s6SliderVMa(0);
  v36 = *(v5 - 8);
  v34 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_252690A20();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2526914B0();
  MEMORY[0x28223BE20](v10);
  v11 = sub_252690890();
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA80);
  v16 = *(v15 - 8);
  v39 = v15;
  v40 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDCC0);
  MEMORY[0x28223BE20](v35);
  v20 = (&v32 - v19);
  *v20 = sub_252692920();
  v20[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDCC8);
  sub_2524727C0(a2);
  sub_252691670();
  sub_252690860();
  v22 = a1;
  v23 = v32;
  (*(v7 + 16))(v9, v22, v32);
  v24 = a2;
  v25 = v33;
  sub_25247472C(v24, v33);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = (v8 + *(v36 + 80) + v26) & ~*(v36 + 80);
  v28 = swift_allocObject();
  (*(v7 + 32))(v28 + v26, v9, v23);
  sub_2524749C0(v25, v28 + v27);
  sub_252474F08(&qword_27F4DDAA0, MEMORY[0x277CDD730]);
  sub_252474F08(&qword_27F4DDAA8, MEMORY[0x277CDD708]);
  v29 = v37;
  sub_2526927D0();

  (*(v38 + 8))(v14, v29);
  sub_2526908B0();
  sub_252400FC8(&qword_27F4DDCD0, &qword_27F4DDCC0);
  sub_252400FC8(&qword_27F4DDAB0, &qword_27F4DDA80);
  v30 = v39;
  sub_252692180();
  (*(v40 + 8))(v18, v30);
  return sub_252372288(v20, &qword_27F4DDCC0);
}

uint64_t sub_2524727C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDCD8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - v3;
  v5 = sub_252692930();
  v7 = v6;
  sub_2524729B8(a1, &v23);
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v16 = v23;
  v17 = v24;
  v21[2] = v25;
  v21[3] = v26;
  v22 = v27;
  v21[0] = v23;
  v21[1] = v24;
  sub_25237153C(&v16, &v15, &qword_27F4DDCE0);
  sub_252372288(v21, &qword_27F4DDCE0);
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v23 = v16;
  v24 = v17;
  v8 = &v4[*(v2 + 36)];
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_252691260();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDCE8) + 36)] = 256;
  *v4 = v5;
  *(v4 + 1) = v7;
  v11 = v26;
  *(v4 + 3) = v25;
  *(v4 + 4) = v11;
  *(v4 + 10) = v27;
  v12 = v24;
  *(v4 + 1) = v23;
  *(v4 + 2) = v12;
  sub_252474F50();
  sub_252691EA0();
  return sub_252372288(v4, &qword_27F4DDCD8);
}

uint64_t sub_2524729B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() systemFillColor];
  v5 = sub_252692240();
  v6 = *(a1 + *(_s6SliderVMa(0) + 28));
  v8 = a1[1];
  v9 = a1[2];
  *&v23 = *a1;
  v7 = v23;
  *(&v23 + 1) = v8;
  *&v24 = v9;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC90);
  MEMORY[0x2530A4210](v16);
  v11 = 1.0 - v16[0];
  *&v23 = v7;
  *(&v23 + 1) = v8;
  *&v24 = v9;
  MEMORY[0x2530A4210](v16, v10);
  sub_2526909F0();
  sub_252692920();
  sub_2526909C0();
  v22 = v17;
  v21 = v19;
  *&v23 = v6;
  *(&v23 + 1) = v11;
  *&v24 = v16[8];
  BYTE8(v24) = v17;
  *&v25 = v18;
  BYTE8(v25) = v19;
  v26 = v20;
  *a2 = v5;
  v12 = v23;
  v13 = v24;
  v14 = v25;
  *(a2 + 56) = v26;
  *(a2 + 40) = v14;
  *(a2 + 24) = v13;
  *(a2 + 8) = v12;

  sub_25237153C(&v23, v16, &qword_27F4DDD20);
}

uint64_t sub_252472B68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_252690BA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  sub_252690880();
  v12 = v11;
  sub_2526909F0();
  v14 = v12 / v13;
  _s6SliderVMa(0);
  sub_25268A1F8(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDFA88], v4);
  v15 = sub_252690B90();
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  v17 = 1.0 - v14;
  if (v15)
  {
    v17 = v14;
  }

  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = a3[1];
  v19 = a3[2];
  v21[1] = *a3;
  v21[2] = v18;
  v21[3] = v19;
  v21[0] = fmin(v17, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC90);
  return sub_2526926B0();
}

uint64_t sub_252472D38(uint64_t a1, uint64_t *a2)
{
  v4 = sub_252691900();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CDE498])
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v16 = *a2;
    v17 = v11;
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC90);
    MEMORY[0x2530A4210](&v15);
    v13 = fmin(v15 + 0.1, 1.0);
LABEL_6:
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v15 = v13;
    return sub_2526926B0();
  }

  if (v9 == *MEMORY[0x277CDE490])
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v16 = *a2;
    v17 = v11;
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC90);
    MEMORY[0x2530A4210](&v15);
    v13 = v15 + -0.1;
    if (v15 + -0.1 < 0.0)
    {
      v13 = 0.0;
    }

    goto LABEL_6;
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_252472F30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB58);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = (&v46 - v5);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB60);
  MEMORY[0x28223BE20](v47);
  v7 = &v46 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  MEMORY[0x28223BE20](v46);
  v56 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB70);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v46 - v12;
  v57 = sub_252692C40();
  v58 = v13;
  sub_252404480();
  sub_252693170();

  sub_252691BB0();
  v14 = sub_252691D00();
  v16 = v15;
  v18 = v17;

  sub_252691B40();
  v19 = sub_252691C90();
  v21 = v20;
  v23 = v22;
  sub_2524228D8(v14, v16, v18 & 1);

  sub_252692380();
  v24 = sub_252691CC0();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;

  sub_2524228D8(v19, v21, v23 & 1);
  v30 = v56;

  v57 = v24;
  v58 = v26;
  v59 = v14 & 1;
  v60 = v29;
  sub_252691EA0();
  sub_2524228D8(v24, v26, v14 & 1);

  v31 = *MEMORY[0x277CDFA10];
  v32 = sub_252690B80();
  (*(*(v32 - 8) + 104))(v7, v31, v32);
  sub_252474F08(&qword_27F4DDB78, MEMORY[0x277CDFA28]);
  result = sub_252692B70();
  if (result)
  {
    sub_252474348();
    sub_252400FC8(&qword_27F4DDB88, &qword_27F4DDB60);
    v34 = v48;
    sub_252691F00();
    sub_252372288(v7, &qword_27F4DDB60);
    sub_252372288(v30, &qword_27F4DDB68);
    v35 = sub_2526911D0();
    v36 = v53;
    *v53 = v35;
    *(v36 + 8) = 0x4030000000000000;
    *(v36 + 16) = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB90);
    sub_2524734E4(v52, v36 + *(v37 + 44));
    v39 = v49;
    v38 = v50;
    v40 = *(v50 + 16);
    v41 = v51;
    v40(v49, v34, v51);
    v42 = v55;
    sub_2523161D4(v36, v55);
    v43 = v54;
    v40(v54, v39, v41);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB98);
    sub_2523161D4(v42, &v43[*(v44 + 48)]);
    sub_252372288(v36, &qword_27F4DDB58);
    v45 = *(v38 + 8);
    v45(v34, v41);
    sub_252372288(v42, &qword_27F4DDB58);
    return (v45)(v39, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2524734E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v112 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBA0);
  MEMORY[0x28223BE20](v104);
  v99 = &v84 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBA8);
  v109 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v101 = &v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBB0);
  v6 = *(v5 - 8);
  v110 = v5;
  v111 = v6;
  MEMORY[0x28223BE20](v5);
  v103 = &v84 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBB8);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v84 - v10;
  v97 = sub_25268D860();
  v96 = *(v97 - 1);
  MEMORY[0x28223BE20](v97);
  v93 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268DA60();
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBC0);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v84 - v16;
  v85 = sub_25268ED20();
  v17 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  v23 = _s6SliderVMa(0);
  v24 = (v23 - 8);
  MEMORY[0x28223BE20](v23);
  v100 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v84 - v27;
  v98 = _s16BrightnessSliderVMa(0);
  v29 = (a1 + *(v98 + 20));
  v30 = v29[1];
  v88 = *v29;
  v87 = _s16ColorPickerStateCMa();
  v31 = sub_252474F08(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  v84 = v30;
  v86 = v31;
  sub_252690AE0();
  swift_getKeyPath();
  sub_252690AF0();

  v32 = v116;
  v33 = v117;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v34 = v85;
  (*(v17 + 16))(v19, v22, v85);
  v35 = sub_25248C4C8(v19);
  (*(v17 + 8))(v22, v34);
  *v28 = v32;
  *(v28 + 2) = v33;
  v36 = v24[7];
  *&v28[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBC8);
  swift_storeEnumTagMultiPayload();
  v37 = v24[8];
  *&v28[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v38 = v24[9];
  v95 = v28;
  *&v28[v38] = v35;
  *&v28[v24[10]] = 0x4000000000000000;
  sub_25268DA20();
  sub_252474424();
  v39 = v89;
  sub_25268D820();
  v40 = v93;
  sub_25268D850();
  v41 = v113;
  v42 = v91;
  MEMORY[0x25309F3A0](v40, v91);
  (*(v96 + 8))(v40, v97);
  v43 = v92;
  v44 = *(v92 + 8);
  v96 = v92 + 8;
  v97 = v44;
  v44(v39, v42);
  v93 = sub_252691240();
  sub_252690AE0();
  swift_getKeyPath();
  sub_252690AF0();

  v114 = v116;
  v115 = v117;
  (*(v43 + 16))(v39, v41, v42);
  sub_252400FC8(&qword_27F4DDBD8, &qword_27F4DDBC0);
  v45 = v99;
  sub_2526929F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
  sub_252690950();
  sub_252692920();
  sub_2526909C0();
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBE0) + 36));
  v47 = v117;
  *v46 = v116;
  v46[1] = v47;
  v46[2] = v118;
  v48 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBE8) + 36));
  v49 = *(sub_252690D30() + 20);
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_252691260();
  (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
  __asm { FMOV            V0.2D, #8.0 }

  *v48 = _Q0;
  v57 = [objc_opt_self() systemFillColor];
  v58 = sub_252692240();
  *&v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBF0) + 36)] = v58;
  v59 = sub_252692920();
  v61 = v60;
  v62 = &v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBF8) + 36)];
  *v62 = v59;
  v62[1] = v61;
  v63 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC00) + 36);
  *v63 = 0x4024000000000000;
  *(v63 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v65 = v104;
  v66 = v45 + *(v104 + 36);
  *v66 = KeyPath;
  *(v66 + 8) = 1;
  v67 = sub_252474478();
  v68 = v101;
  sub_252692170();
  sub_252372288(v45, &qword_27F4DDBA0);
  *&v114 = v65;
  *(&v114 + 1) = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v103;
  v71 = v107;
  sub_252691F30();
  (*(v109 + 8))(v68, v71);
  *&v114 = v71;
  *(&v114 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v72 = v102;
  v73 = v110;
  sub_252691E30();
  (*(v111 + 8))(v70, v73);
  v74 = v95;
  v75 = v100;
  sub_25247472C(v95, v100);
  v76 = v105;
  v77 = v106;
  v78 = *(v106 + 16);
  v79 = v108;
  v78(v105, v72, v108);
  v80 = v112;
  sub_25247472C(v75, v112);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC50);
  v78((v80 + *(v81 + 48)), v76, v79);
  v82 = *(v77 + 8);
  v82(v72, v79);
  v97(v113, v42);
  sub_252474790(v74);
  v82(v76, v79);
  return sub_252474790(v75);
}

uint64_t sub_252474188()
{
  v1 = sub_2526917F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB40);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_2526912F0();
  *(v7 + 1) = 0x4014000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB48);
  sub_252472F30(v0, &v7[*(v8 + 44)]);
  sub_2526917D0();
  sub_252400FC8(&qword_27F4DDB50, &qword_27F4DDB40);
  sub_252692020();
  (*(v2 + 8))(v4, v1);
  return sub_252372288(v7, &qword_27F4DDB40);
}

unint64_t sub_252474348()
{
  result = qword_27F4DDB80;
  if (!qword_27F4DDB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDB68);
    sub_252474F08(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDB80);
  }

  return result;
}

unint64_t sub_252474424()
{
  result = qword_27F4DDBD0;
  if (!qword_27F4DDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDBD0);
  }

  return result;
}

unint64_t sub_252474478()
{
  result = qword_27F4DDC08;
  if (!qword_27F4DDC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDBA0);
    sub_252474530();
    sub_252400FC8(&qword_27F4DDC40, &qword_27F4DDC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDC08);
  }

  return result;
}

unint64_t sub_252474530()
{
  result = qword_27F4DDC10;
  if (!qword_27F4DDC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDC00);
    sub_2524745BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDC10);
  }

  return result;
}

unint64_t sub_2524745BC()
{
  result = qword_27F4DDC18;
  if (!qword_27F4DDC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDBE8);
    sub_252474674();
    sub_252400FC8(&qword_27F4DDC38, &qword_27F4DDBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDC18);
  }

  return result;
}

unint64_t sub_252474674()
{
  result = qword_27F4DDC20;
  if (!qword_27F4DDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDBE0);
    sub_252400FC8(&qword_27F4DDC28, &qword_27F4DDC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDC20);
  }

  return result;
}

uint64_t sub_25247472C(uint64_t a1, uint64_t a2)
{
  v4 = _s6SliderVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252474790(uint64_t a1)
{
  v2 = _s6SliderVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_252474814()
{
  sub_252474900();
  if (v0 <= 0x3F)
  {
    sub_252474950(319, &qword_27F4DDC78, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      sub_252474950(319, &qword_27F4DD758, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252474900()
{
  if (!qword_27F4DDC70)
  {
    v0 = sub_252692750();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DDC70);
    }
  }
}

void sub_252474950(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2526908A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2524749C0(uint64_t a1, uint64_t a2)
{
  v4 = _s6SliderVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252474A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s6SliderVMa(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_252472278(a1, v6, a2);
}

unint64_t sub_252474AA4()
{
  result = qword_27F4DDCA0;
  if (!qword_27F4DDCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDC98);
    sub_252400FC8(&qword_27F4DDCA8, &qword_27F4DDCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDCA0);
  }

  return result;
}

unint64_t sub_252474B5C()
{
  result = qword_27F4DDCB8;
  if (!qword_27F4DDCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDC80);
    sub_252474AA4();
    sub_252474F08(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDCB8);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = _s6SliderVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_252690BA0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_252690850();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252474DC4(uint64_t a1)
{
  v3 = *(_s6SliderVMa(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_252472D38(a1, v4);
}

uint64_t sub_252474E34(uint64_t a1)
{
  v3 = *(sub_252690A20() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s6SliderVMa(0) - 8);
  v7 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_252472B68(a1, v1 + v4, v7);
}

uint64_t sub_252474F08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252474F50()
{
  result = qword_27F4DDCF0;
  if (!qword_27F4DDCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDCD8);
    sub_252475008();
    sub_252400FC8(&qword_27F4DDD18, &qword_27F4DDCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDCF0);
  }

  return result;
}

unint64_t sub_252475008()
{
  result = qword_27F4DDCF8;
  if (!qword_27F4DDCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDD00);
    sub_252400FC8(&qword_27F4DDD08, &qword_27F4DDD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDCF8);
  }

  return result;
}

unint64_t sub_2524750C0()
{
  result = qword_27F4DDD28;
  if (!qword_27F4DDD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDD30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDC80);
    sub_252474B5C();
    swift_getOpaqueTypeConformance2();
    sub_252474F08(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDD28);
  }

  return result;
}

uint64_t sub_2524751B8()
{
  result = sub_252692330();
  qword_27F4FB420 = result;
  return result;
}

uint64_t sub_2524751D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_252475234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2524752B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252692270();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_252692920();
  v10 = v9;
  sub_25247549C(a1, &v21);
  v28 = v23;
  v29 = v24;
  v30 = v25;
  v26 = v21;
  v27 = v22;
  v31[2] = v23;
  v31[3] = v24;
  v32 = v25;
  v31[0] = v21;
  v31[1] = v22;
  sub_25237153C(&v26, v20, &qword_27F4DDD38);
  sub_252372288(v31, &qword_27F4DDD38);
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v33 = v26;
  v34 = v27;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0ED0], v4);
  v11 = sub_2526923A0();
  LOBYTE(v7) = sub_252691A20();
  result = sub_252690760();
  *a2 = v8;
  *(a2 + 8) = v10;
  v13 = v36;
  *(a2 + 48) = v35;
  *(a2 + 64) = v13;
  v14 = v37;
  v15 = v34;
  *(a2 + 16) = v33;
  *(a2 + 32) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v11;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0x4008000000000000;
  *(a2 + 120) = v7;
  *(a2 + 128) = v16;
  *(a2 + 136) = v17;
  *(a2 + 144) = v18;
  *(a2 + 152) = v19;
  *(a2 + 160) = 0;
  return result;
}

uint64_t sub_25247549C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    KeyPath = swift_getKeyPath();
  }

  else
  {
    KeyPath = 0;
  }

  swift_retain_n();
  sub_2526908F0();
  v5 = v25;
  v6 = DWORD2(v25);
  v7 = HIDWORD(v25);
  v8 = v26;
  v9 = v27;
  if (qword_27F4DAA30 != -1)
  {
    swift_once();
  }

  v10 = qword_27F4FB420;
  v11 = swift_getKeyPath();
  v14 = v25;
  v15 = v26;
  *&v16 = v27;
  *(&v16 + 1) = v11;
  v17 = v10;

  sub_25247565C(KeyPath);
  sub_25237153C(&v14, &v18, &qword_27F4DDD40);
  sub_25241A7A8(KeyPath);
  *a2 = KeyPath;
  *(a2 + 8) = a1;
  v12 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v11;
  v24 = v10;
  sub_252372288(&v18, &qword_27F4DDD40);
  return sub_25241A7A8(KeyPath);
}

uint64_t sub_25247565C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2524756A0()
{
  result = qword_27F4DDD48;
  if (!qword_27F4DDD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDD50);
    sub_25247572C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDD48);
  }

  return result;
}

unint64_t sub_25247572C()
{
  result = qword_27F4DDD58;
  if (!qword_27F4DDD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDD60);
    sub_2524757B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDD58);
  }

  return result;
}

unint64_t sub_2524757B8()
{
  result = qword_27F4DDD68;
  if (!qword_27F4DDD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDD68);
  }

  return result;
}

uint64_t type metadata accessor for ColorPicker()
{
  result = qword_27F4DDD78;
  if (!qword_27F4DDD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2524758B0()
{
  sub_252466FC8();
  if (v0 <= 0x3F)
  {
    sub_252475A70(319, &qword_27F4DBD08, &type metadata for AccessoryControlsStyle, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2524759DC();
      if (v2 <= 0x3F)
      {
        sub_252475A70(319, &qword_27F4DDD90, &type metadata for ColorPicker.ColorPickerTab, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_252475AC0();
          if (v4 <= 0x3F)
          {
            sub_252475B24();
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

void sub_2524759DC()
{
  if (!qword_27F4DDD88)
  {
    _s16ColorPickerStateCMa();
    sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
    v0 = sub_2526908E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DDD88);
    }
  }
}

void sub_252475A70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_252475AC0()
{
  if (!qword_27F4DDD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB010);
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DDD98);
    }
  }
}

void sub_252475B24()
{
  if (!qword_27F4DDDA0)
  {
    v0 = sub_2526907C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DDDA0);
    }
  }
}

uint64_t sub_252475B9C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v37 = type metadata accessor for ColorPicker();
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v41 = v2;
  v42 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v44);
  v45 = &v29 - v3;
  v4 = sub_252691500();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDDC8);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDDD0);
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDDD8);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v36 = &v29 - v12;
  v43 = v1;
  v47 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDDE0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDDE8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDDF0);
  v15 = sub_25247C92C();
  v16 = sub_252400FC8(&qword_27F4DDE20, &qword_27F4DDDF0);
  v48 = v13;
  v49 = v14;
  v50 = v15;
  v51 = v16;
  swift_getOpaqueTypeConformance2();
  sub_252690C40();
  sub_2526914F0();
  LOBYTE(v13) = sub_252691A00();
  sub_2526919F0();
  sub_2526919F0();
  if (sub_2526919F0() != v13)
  {
    sub_2526919F0();
  }

  v17 = sub_252400FC8(&qword_27F4DDE28, &qword_27F4DDDC8);
  v18 = v32;
  sub_252692050();
  (*(v33 + 8))(v6, v34);
  (*(v30 + 8))(v8, v18);
  v48 = v18;
  v49 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v35;
  v20 = v36;
  sub_252691FC0();
  (*(v31 + 8))(v10, v21);
  v22 = v43;
  _s16ColorPickerStateCMa();
  sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  sub_2526908C0();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v45;
  sub_252690680();

  v24 = v42;
  sub_25247D748(v22, v42, type metadata accessor for ColorPicker);
  v25 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v26 = swift_allocObject();
  sub_25247CBEC(v24, v26 + v25, type metadata accessor for ColorPicker);
  v48 = v21;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_25247CB38();
  v27 = v39;
  sub_2526921D0();

  sub_252372288(v23, &qword_27F4DB2A0);
  return (*(v38 + 8))(v20, v27);
}

uint64_t sub_2524762A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v48 = a2;
  v38 = sub_2526910F0();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2526916F0();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE00);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v35 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE38);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = &v35 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDDE8);
  MEMORY[0x28223BE20](v47);
  v46 = &v35 - v14;
  sub_252691A00();
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE40);
  sub_25247D2A4(&qword_27F4DDE48, &qword_27F4DDE40, &unk_25269E540, sub_25247CC5C);
  sub_252690820();
  *&v55 = sub_252692C40();
  *(&v55 + 1) = v15;
  v16 = sub_252400FC8(&qword_27F4DDE10, &qword_27F4DDE08);
  v17 = sub_252404480();
  v18 = MEMORY[0x277D837D0];
  sub_252691F40();
  v19 = v39;

  (*(v7 + 8))(v9, v6);
  sub_2526916E0();
  *&v55 = v6;
  *(&v55 + 1) = v18;
  *&v56 = v16;
  *(&v56 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v20 = v40;
  sub_252692080();
  (*(v42 + 8))(v5, v43);
  (*(v41 + 8))(v11, v20);
  sub_252691A30();
  v21 = (v19 + *(type metadata accessor for ColorPicker() + 20));
  v59 = *(v21 + 32);
  v22 = v21[3];
  v57 = v21[2];
  v58 = v22;
  v23 = v21[1];
  v55 = *v21;
  v56 = v23;
  if ((v59 & 0x100) != 0)
  {
    v24 = v21[3];
    v52 = v21[2];
    v53 = v24;
    v54 = *(v21 + 64);
    v25 = v21[1];
    v50 = *v21;
    v51 = v25;
  }

  else
  {

    sub_252692F00();
    v26 = sub_2526919C0();
    sub_252690570();

    v27 = v36;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v55, &qword_27F4DC120);
    (*(v37 + 8))(v27, v38);
  }

  sub_252690760();
  *&v50 = v28;
  *(&v50 + 1) = v29;
  *&v51 = v30;
  *(&v51 + 1) = v31;
  LOBYTE(v52) = 0;
  v32 = v46;
  sub_2526916D0();
  v33 = (*(v44 + 32))(v32, v13, v45);
  MEMORY[0x28223BE20](v33);
  *(&v35 - 2) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDDF0);
  sub_25247C92C();
  sub_252400FC8(&qword_27F4DDE20, &qword_27F4DDDF0);
  sub_2526921B0();
  return sub_252372288(v32, &qword_27F4DDDE8);
}

double sub_2524769F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2526912E0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEA0) + 44);
  *v4 = sub_2526912E0();
  *(v4 + 8) = 0x4030000000000000;
  *(v4 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEA8);
  sub_252477494(a1, v4 + *(v5 + 44));
  LOBYTE(a1) = sub_252691A10();
  sub_252690760();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE58) + 36);
  *v14 = a1;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  LOBYTE(a1) = sub_252691A40();
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE40) + 36);
  *v15 = a1;
  result = 0.0;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  return result;
}

uint64_t sub_252476B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE70);
  MEMORY[0x28223BE20](v49);
  v47 = &v37 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE78);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE80);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = sub_252691550();
  v40 = *(v11 - 8);
  v12 = v40;
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v42 = &v37 - v19;
  sub_252691530();
  v21 = *(v12 + 16);
  v39 = v11;
  v21(v17, v20, v11);
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE88);
  sub_252400FC8(&qword_27F4DDE90, &qword_27F4DDE88);
  sub_252690900();
  sub_252691540();
  v21(v14, v17, v11);
  v51 = v38;
  v22 = v41;
  sub_252690900();
  sub_252692250();
  sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
  v23 = v45;
  v24 = v43;
  sub_252690B30();

  v25 = v44;
  v26 = *(v44 + 8);
  v26(v22, v24);
  v27 = *(v49 + 48);
  v28 = *(v25 + 16);
  v29 = v47;
  v28(v47, v10, v24);
  v30 = v46;
  v31 = &v29[v27];
  v32 = v48;
  (*(v46 + 16))(v31, v23, v48);
  sub_252691350();
  (*(v30 + 8))(v23, v32);
  v33 = *(v40 + 8);
  v34 = v17;
  v35 = v39;
  v33(v34, v39);
  v26(v10, v24);
  return (v33)(v42, v35);
}

uint64_t sub_252476FE8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ColorPicker() + 36));
  if (v1)
  {

    v1(0);
    sub_25247CDCC(v1);
  }

  _s16ColorPickerStateCMa();
  sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  sub_2526908C0();
  sub_252488A04();
}

uint64_t sub_2524770D4(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ColorPicker();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_252690740();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  sub_25247D748(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ColorPicker);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_25247CBEC(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ColorPicker);
  return MEMORY[0x2530A40D0](v13, a4, v15);
}

uint64_t sub_25247725C(uint64_t a1)
{
  result = type metadata accessor for ColorPicker();
  v3 = *(a1 + *(result + 36));
  if (v3)
  {

    v3(1);

    return sub_25247CDCC(v3);
  }

  return result;
}

uint64_t sub_2524772D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AccessoryControl.ColorState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a2, v7, &qword_27F4DB2A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_252372288(v7, &qword_27F4DB2A0);
  }

  sub_25247CBEC(v7, v11, type metadata accessor for AccessoryControl.ColorState);
  v13 = *(a3 + *(type metadata accessor for ColorPicker() + 32));
  if (v13)
  {
    v13(v11);
  }

  return sub_25247D7B0(v11, type metadata accessor for AccessoryControl.ColorState);
}

uint64_t sub_252477494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEB0);
  v123 = *(v3 - 8);
  v124 = v3;
  MEMORY[0x28223BE20](v3);
  v108 = v97 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEB8);
  MEMORY[0x28223BE20](v101);
  v102 = v97 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEC0);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = v97 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEC8);
  MEMORY[0x28223BE20](v100);
  v103 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDED0);
  MEMORY[0x28223BE20](v12 - 8);
  v122 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v121 = v97 - v15;
  v16 = type metadata accessor for ColorPicker();
  v17 = v16 - 8;
  v112 = *(v16 - 8);
  v18 = *(v112 + 64);
  MEMORY[0x28223BE20](v16);
  v111 = v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252690840();
  v110 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDED8);
  v114 = *(v22 - 8);
  v115 = v22;
  MEMORY[0x28223BE20](v22);
  v113 = v97 - v23;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEE0);
  MEMORY[0x28223BE20](v99);
  v25 = v97 - v24;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEE8);
  v26 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v98 = v97 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEF0);
  MEMORY[0x28223BE20](v28 - 8);
  v119 = v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v126 = a1;
  v127 = v97 - v31;
  v32 = a1 + *(v17 + 32);
  v34 = *v32;
  v33 = *(v32 + 8);
  v35 = *(v32 + 16);
  _s16ColorPickerStateCMa();
  v36 = sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  v117 = v33;
  LODWORD(v116) = v35;
  v37 = v36;
  v38 = sub_2526908C0() + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig;
  if (*(v38 + 16))
  {
    v39 = *v38;

    if (v39)
    {
      *v25 = sub_2526912F0();
      *(v25 + 1) = 0;
      v25[16] = 1;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF50);
      v41 = v126;
      sub_252479224(v126, &v25[*(v40 + 44)]);
      sub_252690830();
      v97[0] = v37;
      v42 = v111;
      sub_25247D748(v41, v111, type metadata accessor for ColorPicker);
      v43 = (*(v112 + 80) + 16) & ~*(v112 + 80);
      v44 = swift_allocObject();
      v97[1] = v34;
      sub_25247CBEC(v42, v44 + v43, type metadata accessor for ColorPicker);
      v109 = v18;
      v45 = v113;
      sub_2526927C0();

      (*(v110 + 8))(v21, v19);
      sub_2526908B0();
      sub_252400FC8(&qword_27F4DDF58, &qword_27F4DDEE0);
      sub_252400FC8(&qword_27F4DDF38, &qword_27F4DDED8);
      v46 = v98;
      v47 = v21;
      v48 = v19;
      v49 = v115;
      sub_252692010();
      v50 = v45;
      v18 = v109;
      v51 = v49;
      v19 = v48;
      v21 = v47;
      (*(v114 + 8))(v50, v51);
      sub_252372288(v25, &qword_27F4DDEE0);
      v52 = v127;
      v53 = v46;
      v54 = v118;
      (*(v26 + 32))(v127, v53, v118);
      (*(v26 + 56))(v52, 0, 1, v54);
      goto LABEL_6;
    }
  }

  else
  {
  }

  (*(v26 + 56))(v127, 1, 1, v118);
LABEL_6:
  sub_2526908C0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  if (v128)
  {
    v56 = 1;
    v57 = v121;
  }

  else
  {
    MEMORY[0x28223BE20](v55);
    v58 = v126;
    v97[-2] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDEF8);
    v118 = v21;
    sub_252400FC8(&qword_27F4DDF00, &qword_27F4DDEF8);
    v59 = v120;
    sub_252692860();
    v60 = (v59 + *(v100 + 9));
    v61 = sub_252690D30();
    v62 = *(v61 + 20);
    v63 = *MEMORY[0x277CE0118];
    v64 = sub_252691260();
    v65 = *(*(v64 - 8) + 104);
    v65(&v60[v62], v63, v64);
    __asm { FMOV            V0.2D, #26.0 }

    v116 = _Q0;
    *v60 = _Q0;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8);
    v100 = v97;
    *&v60[*(v71 + 36)] = 256;
    MEMORY[0x28223BE20](v71);
    v97[-2] = v58;
    v117 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF08);
    v109 = v18;
    sub_25247D2A4(&qword_27F4DDF10, &qword_27F4DDF08, &unk_25269E630, sub_25247CE78);
    v72 = v102;
    sub_252692860();
    v73 = (v72 + *(v101 + 36));
    v65(&v73[*(v61 + 20)], v63, v64);
    *v73 = v116;
    *&v73[*(v71 + 36)] = 256;
    v74 = v118;
    sub_252690830();
    v75 = v111;
    sub_25247D748(v126, v111, type metadata accessor for ColorPicker);
    v76 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v77 = swift_allocObject();
    sub_25247CBEC(v75, v77 + v76, type metadata accessor for ColorPicker);
    v78 = v113;
    v79 = v117;
    sub_2526927C0();

    (*(v110 + 8))(v74, v79);
    sub_2526908B0();
    sub_25247CECC();
    sub_252400FC8(&qword_27F4DDF38, &qword_27F4DDED8);
    v80 = v104;
    v81 = v115;
    sub_252692010();
    (*(v114 + 8))(v78, v81);
    sub_252372288(v72, &qword_27F4DDEB8);
    v82 = v120;
    v83 = v103;
    sub_25237153C(v120, v103, &qword_27F4DDEC8);
    v84 = v106;
    v85 = *(v106 + 16);
    v86 = v105;
    v87 = v107;
    v85(v105, v80, v107);
    v88 = v108;
    sub_25237153C(v83, v108, &qword_27F4DDEC8);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF40);
    v85((v88 + *(v89 + 48)), v86, v87);
    v90 = *(v84 + 8);
    v90(v80, v87);
    sub_252372288(v82, &qword_27F4DDEC8);
    v90(v86, v87);
    sub_252372288(v83, &qword_27F4DDEC8);
    v57 = v121;
    sub_2523714D4(v88, v121, &qword_27F4DDEB0);
    v56 = 0;
  }

  (*(v123 + 56))(v57, v56, 1, v124);
  v91 = v127;
  v92 = v119;
  sub_25237153C(v127, v119, &qword_27F4DDEF0);
  v93 = v122;
  sub_25237153C(v57, v122, &qword_27F4DDED0);
  v94 = v125;
  sub_25237153C(v92, v125, &qword_27F4DDEF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF48);
  sub_25237153C(v93, v94 + *(v95 + 48), &qword_27F4DDED0);
  sub_252372288(v57, &qword_27F4DDED0);
  sub_252372288(v91, &qword_27F4DDEF0);
  sub_252372288(v93, &qword_27F4DDED0);
  return sub_252372288(v92, &qword_27F4DDEF0);
}

uint64_t sub_2524783D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for ColorPicker();
  v4 = v3 - 8;
  v63 = *(v3 - 8);
  v62 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_252690840();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDED8);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = v54 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDFC0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = v54 - v10;
  v11 = sub_252691520();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDFC8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v54 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDFD0);
  v74 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = v54 - v21;
  v22 = *(v4 + 36);
  v54[0] = a1;
  v23 = (a1 + v22);
  v56 = *v23;
  v55 = *(v23 + 1);
  LOBYTE(v76) = v56;
  *(&v76 + 1) = v55;
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDFD8);
  sub_252692500();
  v75 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDFE0);
  sub_25247D024();
  sub_25247D078();
  sub_2526925D0();
  sub_252691510();
  sub_252400FC8(&qword_27F4DDFF8, &qword_27F4DDFC8);
  sub_252691E00();
  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
  v24 = v54[0];
  _s16ColorPickerStateCMa();
  sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  sub_2526908C0();
  LOBYTE(v76) = v56;
  *(&v76 + 1) = v55;
  sub_252692500();
  v25 = v82;
  v26 = v83;
  v27 = sub_252690AD0();
  v29 = v28;
  LOBYTE(v4) = sub_252691A30();
  sub_252690760();
  v81 = 0;
  *&v76 = v27;
  *(&v76 + 1) = v29;
  v77 = v25;
  LOBYTE(v78) = v26;
  *(&v78 + 1) = 0x3FF0000000000000;
  LOBYTE(v79) = v4;
  *(&v79 + 1) = v30;
  *v80 = v31;
  *&v80[8] = v32;
  *&v80[16] = v33;
  v80[24] = 0;
  v34 = v57;
  sub_252690830();
  v35 = v61;
  sub_25247D748(v24, v61, type metadata accessor for ColorPicker);
  v36 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v37 = swift_allocObject();
  sub_25247CBEC(v35, v37 + v36, type metadata accessor for ColorPicker);
  v38 = v59;
  v39 = v64;
  sub_2526927C0();

  (*(v65 + 8))(v34, v39);
  sub_2526908B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE000);
  sub_25247D2A4(&qword_27F4DE008, &qword_27F4DE000, &unk_25269E728, sub_25247D328);
  sub_252400FC8(&qword_27F4DDF38, &qword_27F4DDED8);
  v40 = v73;
  v41 = v66;
  sub_252692010();
  (*(v67 + 8))(v38, v41);
  v84 = v78;
  v85 = v79;
  *v86 = *v80;
  *&v86[9] = *&v80[9];
  v82 = v76;
  v83 = v77;
  sub_252372288(&v82, &qword_27F4DE000);
  v42 = *(v74 + 16);
  v43 = v58;
  v44 = v60;
  v42(v58, v72, v60);
  v45 = v69;
  v46 = *(v69 + 16);
  v47 = v68;
  v48 = v70;
  v46(v68, v40, v70);
  v49 = v71;
  v42(v71, v43, v44);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE028);
  v46(&v49[*(v50 + 48)], v47, v48);
  v51 = *(v45 + 8);
  v51(v73, v48);
  v52 = *(v74 + 8);
  v52(v72, v44);
  v51(v47, v48);
  return (v52)(v43, v44);
}

uint64_t sub_252478E08()
{
  type metadata accessor for ColorPicker();
  _s16ColorPickerStateCMa();
  sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  v0 = sub_2526908C0();
  sub_25247C778(v0);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDDB0);
  sub_252400FC8(&qword_27F4DE030, &qword_27F4DDDB0);
  sub_25247D024();
  return sub_252692790();
}

uint64_t sub_252478F74@<X0>(uint64_t a1@<X8>)
{
  sub_252692C40();

  sub_252404480();
  result = sub_252691D50();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_252479038@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ColorPicker();
  _s16ColorPickerStateCMa();
  sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  sub_2526908C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF60);
  sub_252690790();
  v2 = sub_252690AD0();
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v6 = sub_252691A80();
  result = sub_252690760();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = v6;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_2524791AC()
{
  type metadata accessor for ColorPicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF60);
  return sub_252690780();
}

uint64_t sub_252479224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF68);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF70);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDF78);
  v10 = sub_252691180();
  v11 = sub_252400FC8(&qword_27F4DDF80, &qword_27F4DDF78);
  v12 = sub_25247D69C(&qword_27F4DDF88, MEMORY[0x277CDDDF0]);
  v47 = v9;
  v48 = v10;
  v49 = v11;
  v50 = v12;
  swift_getOpaqueTypeConformance2();
  sub_252692860();
  v13 = &v8[*(v4 + 44)];
  v14 = *(sub_252690D30() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_252691260();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #26.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8) + 36)] = 256;
  sub_252692C40();
  sub_252691BB0();
  v22 = sub_252691D00();
  v24 = v23;
  LOBYTE(v9) = v25;

  LODWORD(v47) = sub_2526915F0();
  v26 = sub_252691CD0();
  v28 = v27;
  LOBYTE(v14) = v29;
  v31 = v30;
  sub_2524228D8(v22, v24, v9 & 1);

  LOBYTE(v24) = sub_252691A10();
  LOBYTE(v14) = v14 & 1;
  LOBYTE(v47) = v14;
  LOBYTE(v44) = 1;
  v32 = v40;
  sub_25237153C(v8, v40, &qword_27F4DDF68);
  v33 = v32;
  v34 = v39;
  sub_25237153C(v33, v39, &qword_27F4DDF68);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF90) + 48));
  *&v44 = v26;
  *(&v44 + 1) = v28;
  LOBYTE(v45) = v14;
  *(&v45 + 1) = *v43;
  DWORD1(v45) = *&v43[3];
  *(&v45 + 1) = v31;
  v46[0] = v24;
  *&v46[1] = *v42;
  *&v46[4] = *&v42[3];
  memset(&v46[8], 0, 32);
  v46[40] = 1;
  v36 = v45;
  *v35 = v44;
  v35[1] = v36;
  v37 = *&v46[16];
  v35[2] = *v46;
  v35[3] = v37;
  *(v35 + 57) = *&v46[25];
  sub_25237153C(&v44, &v47, &qword_27F4DDF98);
  sub_252372288(v8, &qword_27F4DDF68);
  v47 = v26;
  v48 = v28;
  LOBYTE(v49) = v14;
  *(&v49 + 1) = *v43;
  HIDWORD(v49) = *&v43[3];
  v50 = v31;
  v51 = v24;
  *v52 = *v42;
  *&v52[3] = *&v42[3];
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_252372288(&v47, &qword_27F4DDF98);
  return sub_252372288(v40, &qword_27F4DDF68);
}

uint64_t sub_2524796C8@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = sub_252691180();
  v2 = *(v1 - 8);
  v11 = v1;
  v12 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDF78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  type metadata accessor for ColorPicker();
  _s16ColorPickerStateCMa();
  sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  sub_2526908D0();
  swift_getKeyPath();
  sub_252690AF0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDFA0);
  sub_252400FC8(&qword_27F4DDFA8, &qword_27F4DDFA0);
  sub_252692600();
  sub_252691170();
  sub_252400FC8(&qword_27F4DDF80, &qword_27F4DDF78);
  sub_25247D69C(&qword_27F4DDF88, MEMORY[0x277CDDDF0]);
  v9 = v11;
  sub_252691E10();
  (*(v12 + 8))(v4, v9);
  return (*(v6 + 8))(v8, v5);
}

double sub_2524799FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2526911D0();
  v22 = 1;
  sub_252479C24(&v11);
  v31 = v19;
  v32[0] = v20[0];
  *(v32 + 9) = *(v20 + 9);
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v33[7] = v18;
  v33[8] = v19;
  v34[0] = v20[0];
  *(v34 + 9) = *(v20 + 9);
  v33[4] = v15;
  v33[5] = v16;
  v33[6] = v17;
  v33[0] = v11;
  v33[1] = v12;
  v33[2] = v13;
  v33[3] = v14;
  sub_25237153C(&v23, &v10, &qword_27F4DDFB0);
  sub_252372288(v33, &qword_27F4DDFB0);
  *(&v21[7] + 7) = v30;
  *(&v21[8] + 7) = v31;
  *(&v21[9] + 7) = v32[0];
  v21[10] = *(v32 + 9);
  *(&v21[3] + 7) = v26;
  *(&v21[4] + 7) = v27;
  *(&v21[5] + 7) = v28;
  *(&v21[6] + 7) = v29;
  *(v21 + 7) = v23;
  *(&v21[1] + 7) = v24;
  *(&v21[2] + 7) = v25;
  v3 = v21[6];
  *(a1 + 129) = v21[7];
  v4 = v21[9];
  *(a1 + 145) = v21[8];
  *(a1 + 161) = v4;
  *(a1 + 177) = v21[10];
  v5 = v21[2];
  *(a1 + 65) = v21[3];
  v6 = v21[5];
  *(a1 + 81) = v21[4];
  *(a1 + 97) = v6;
  *(a1 + 113) = v3;
  result = *v21;
  v8 = v21[1];
  *(a1 + 17) = v21[0];
  *(a1 + 33) = v8;
  v9 = v22;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 49) = v5;
  return result;
}

uint64_t sub_252479C24@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_252691BD0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2526923E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25249CA7C(&v43);
  sub_252692920();
  sub_2526909C0();
  v13 = sub_252692920();
  v39 = v14;
  v40 = v13;
  sub_2526923F0();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  v38 = sub_252692420();

  (*(v10 + 8))(v12, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A50], v5);
  v15 = sub_252691B00();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v36 = sub_252691B60();
  sub_252372288(v4, &qword_27F4DBD40);
  (*(v6 + 8))(v8, v5);
  KeyPath = swift_getKeyPath();
  v37 = KeyPath;
  sub_252692C40();
  sub_252691AD0();
  v17 = sub_252691D00();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v49[2] = v45;
  v49[3] = v46;
  v50 = v47;
  v49[0] = v43;
  v49[1] = v44;
  v25 = v39;
  v24 = v40;
  *&v51 = v48;
  *(&v51 + 1) = v40;
  v26 = v38;
  *&v52 = v39;
  *(&v52 + 1) = v38;
  *&v53 = KeyPath;
  v27 = v36;
  *(&v53 + 1) = v36;
  v21 &= 1u;
  v42 = v21;
  v41 = 1;
  v28 = v43;
  v29 = v44;
  v30 = v46;
  *(a1 + 32) = v45;
  *(a1 + 48) = v30;
  *a1 = v28;
  *(a1 + 16) = v29;
  v31 = v50;
  v32 = v51;
  v33 = v53;
  *(a1 + 96) = v52;
  *(a1 + 112) = v33;
  *(a1 + 64) = v31;
  *(a1 + 80) = v32;
  *(a1 + 128) = v17;
  *(a1 + 136) = v19;
  *(a1 + 144) = v21;
  *(a1 + 152) = v23;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  sub_25237153C(v49, v54, &qword_27F4DDFB8);
  sub_25235EABC(v17, v19, v21);

  sub_2524228D8(v17, v19, v21);

  v54[2] = v45;
  v54[3] = v46;
  v54[4] = v47;
  v54[0] = v43;
  v54[1] = v44;
  v55 = v48;
  v56 = v24;
  v57 = v25;
  v58 = v26;
  v59 = v37;
  v60 = v27;
  return sub_252372288(v54, &qword_27F4DDFB8);
}

uint64_t sub_25247A0A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "HFColorPickerTabName_Swatch";
  v4 = 0xD000000000000020;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v2 == 1)
  {
    v6 = "HFColorPickerTabName_Swatch";
  }

  else
  {
    v6 = "HFColorPickerTabName_Color";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ol";
  }

  if (*a2 == 1)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = "HFColorPickerTabName_Color";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ol";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2526933B0();
  }

  return v11 & 1;
}

uint64_t sub_25247A180()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t sub_25247A21C()
{
  sub_252692C80();
}

uint64_t sub_25247A2A4()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t sub_25247A33C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25247C8D8();
  *a1 = result;
  return result;
}

void sub_25247A36C(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ALL;
  v3 = "HFColorPickerTabName_Swatch";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000020;
    v3 = "HFColorPickerTabName_Color";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v4 = "ol";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_25247A3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *(a1 + 16);
  v20 = *(a1 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0E0);
  MEMORY[0x2530A4210](&v18, v4);
  sub_25247A63C(v18, a1, v21);
  sub_252692920();
  sub_252690D70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v5 = v19;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  if (v19)
  {
    v8 = 0.6;
  }

  else
  {
    v8 = 0.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v10 = 0.2;
  if (!v19)
  {
    v10 = 1.0;
  }

  v11 = v21[13];
  *(a2 + 192) = v21[12];
  *(a2 + 208) = v11;
  *(a2 + 224) = v21[14];
  v12 = v21[9];
  *(a2 + 128) = v21[8];
  *(a2 + 144) = v12;
  v13 = v21[11];
  *(a2 + 160) = v21[10];
  *(a2 + 176) = v13;
  v14 = v21[5];
  *(a2 + 64) = v21[4];
  *(a2 + 80) = v14;
  v15 = v21[7];
  *(a2 + 96) = v21[6];
  *(a2 + 112) = v15;
  v16 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v16;
  v17 = v21[3];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = v17;
  *(a2 + 240) = KeyPath;
  *(a2 + 248) = sub_25247DAFC;
  *(a2 + 256) = v7;
  *(a2 + 264) = v8;
  *(a2 + 272) = v10;
  return result;
}

double sub_25247A63C@<D0>(unsigned __int8 a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {

    goto LABEL_8;
  }

  v6 = sub_2526933B0();

  if (v6)
  {
LABEL_8:
    _s16ColorPickerStateCMa();
    sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);

    v8 = sub_252690AD0();
    v10 = v9;
    v11 = sub_252692920();
    v13 = v12;
    v14 = sub_252691A20();
    sub_252690760();
    *&v44 = v8;
    *(&v44 + 1) = v10;
    *&v45 = v11;
    *(&v45 + 1) = v13;
    LOBYTE(v46) = v14;
    *(&v46 + 1) = v15;
    *v47 = v16;
    *&v47[8] = v17;
    *&v47[16] = v18;
    v47[24] = 0;
    v53 = v46;
    v54[0] = *v47;
    *(v54 + 9) = *&v47[9];
    v51 = v44;
    v52 = v45;
    v55 = 0;
    sub_25237153C(&v44, &v36, &qword_27F4DE110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE110);
    sub_25247D8F0();
    sub_25247D9FC();
    sub_252691470();
    sub_25237153C(&v36, &v51, &qword_27F4DE0F8);
    v56 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0F8);
    sub_25247D864();
    sub_252691470();
    sub_252372288(&v44, &qword_27F4DE110);
    sub_252372288(&v36, &qword_27F4DE0F8);
    return result;
  }

  if (a1 != 2)
  {

    goto LABEL_10;
  }

  v7 = sub_2526933B0();

  if (v7)
  {
LABEL_10:
    *(&v52 + 1) = &_s17FullColorSpectrumVN;
    *&v53 = sub_25247DAA4();
    v51 = xmmword_25269E2A0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0F0);
    sub_2526924D0();
    v44 = v36;
    LOBYTE(v45) = v37;
    *(&v45 + 1) = v38;
    LOBYTE(v58) = 0;
    sub_2526924D0();
    LOBYTE(v46) = v36;
    *(&v46 + 1) = *(&v36 + 1);
    sub_2523C3820(&v51, v47);
    _s16ColorPickerStateCMa();
    sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
    v20 = sub_252690AD0();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    v49 = v20;
    v50 = v22;
    v48 = vdupq_n_s64(0x4040800000000000uLL);
    sub_2524716F4(&v44, &v51);
    v55 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE110);
    sub_25247D8F0();
    sub_25247D9FC();
    sub_252691470();
    sub_25237153C(&v36, &v51, &qword_27F4DE0F8);
    v56 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0F8);
    sub_25247D864();
    sub_252691470();
    sub_252372288(&v36, &qword_27F4DE0F8);
    v23 = &v44;
LABEL_11:
    sub_25247DA50(v23);
    return result;
  }

  if (a1 > 1u)
  {

    goto LABEL_15;
  }

  v24 = sub_2526933B0();

  if (v24)
  {
LABEL_15:
    v58 = *a2;
    v25 = *(*(&v58 + 1) + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig);
    if (*(*(&v58 + 1) + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 8) >= 0x3E8u)
    {
      v26 = 1000;
    }

    else
    {
      v26 = *(*(&v58 + 1) + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 8);
    }

    if (*(*(&v58 + 1) + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 16))
    {
      v27 = HIWORD(v25) & 1;
    }

    else
    {
      v27 = 1;
    }

    if (*(*(&v58 + 1) + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 16))
    {
      v28 = (*(*(&v58 + 1) + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 8) >> 16) & 1;
    }

    else
    {
      v28 = 1;
    }

    type metadata accessor for SpectrumColorHelper();
    v29 = swift_allocObject();
    v30 = v29;
    v31 = WORD2(v25);
    if (WORD2(v25) <= 0x19u)
    {
      v31 = 25;
    }

    if (v27)
    {
      v31 = 100;
    }

    *(v29 + 16) = v31;
    if (v28)
    {
      v32 = 416;
    }

    else
    {
      v32 = v26;
    }

    *(v29 + 18) = v32;
    *(&v52 + 1) = &_s24ColorTemperatureSpectrumVN;
    *&v53 = sub_25247D810();
    *&v51 = v30;
    v44 = 0uLL;
    LOBYTE(v45) = 1;
    sub_25237153C(&v58, &v36, &qword_27F4DE0C8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0F0);
    sub_2526924D0();
    v57 = 0;
    sub_2526924D0();
    v39 = v44;
    v40 = *(&v44 + 1);
    sub_2523C3820(&v51, v41);
    _s16ColorPickerStateCMa();
    sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
    v33 = sub_252690AD0();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    v42 = v33;
    v43 = v35;
    *&v41[40] = vdupq_n_s64(0x4040800000000000uLL);
    sub_2524716F4(&v36, &v51);
    v56 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0F8);
    sub_25247D864();
    sub_25247D9FC();
    sub_252691470();

    v23 = &v36;
    goto LABEL_11;
  }

  *(a3 + 112) = 0;
  result = 0.0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 120) = -256;
  return result;
}

uint64_t sub_25247AD74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6 = *(v1 + 32);
  *a1 = sub_2526912E0();
  *(a1 + 8) = 0x4032000000000000;
  *(a1 + 16) = 0;
  return sub_25247A3D8(v5, a1 + 24);
}

uint64_t sub_25247ADC8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE040);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE048);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v39 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE050);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v16);
  v41 = &v39 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE058);
  MEMORY[0x28223BE20](v18 - 8);
  v40 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  *v22 = sub_2526912E0();
  *(v22 + 1) = 0x4030000000000000;
  v22[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE060);
  sub_25247B2BC(a1, &v22[*(v23 + 44)]);
  *v6 = sub_2526911C0();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE068);
  sub_25247B680(a1, &v6[*(v24 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v25 = v46;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = &v6[*(v4 + 44)];
  *v28 = KeyPath;
  v28[1] = sub_25247D5D8;
  v28[2] = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  if (v45)
  {
    v29 = 0.6;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v6;
  v31 = v39;
  sub_2523714D4(v30, v39, &qword_27F4DE040);
  *(v31 + *(v8 + 44)) = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  if (v44)
  {
    v32 = 0.2;
  }

  else
  {
    v32 = 1.0;
  }

  sub_2523714D4(v31, v15, &qword_27F4DE048);
  *&v15[*(v11 + 44)] = v32;
  v33 = v41;
  sub_2523714D4(v15, v41, &qword_27F4DE050);
  v34 = v40;
  sub_25237153C(v22, v40, &qword_27F4DE058);
  v35 = v42;
  sub_25237153C(v33, v42, &qword_27F4DE050);
  v36 = v43;
  sub_25237153C(v34, v43, &qword_27F4DE058);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE070);
  sub_25237153C(v35, v36 + *(v37 + 48), &qword_27F4DE050);
  sub_252372288(v33, &qword_27F4DE050);
  sub_252372288(v22, &qword_27F4DE058);
  sub_252372288(v35, &qword_27F4DE050);
  return sub_252372288(v34, &qword_27F4DE058);
}

uint64_t sub_25247B2BC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = sub_252692780();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = v31 - v6;
  v7 = sub_252691BD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s16BrightnessSliderVMa(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v31 - v16;
  v39 = *a1;
  v31[1] = *(&v39 + 1);
  v18 = *(a1 + 4);
  v19 = *(a1 + 5);
  LOBYTE(a1) = *(a1 + 48);
  v37 = 0x4051800000000000;
  v38 = v18;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A68], v7);
  sub_25237153C(&v39, v36, &qword_27F4DE0C8);
  sub_25247D6EC(&v38, v36);
  sub_252471B6C();

  sub_252690940();
  v20 = &v17[*(v12 + 28)];
  _s16ColorPickerStateCMa();
  sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);
  *v20 = sub_252690AD0();
  v20[1] = v21;
  v22 = &v17[*(v12 + 32)];
  *v22 = v18;
  *(v22 + 1) = v19;
  v22[16] = a1;
  v23 = v32;
  sub_252692770();
  sub_25247D748(v17, v14, _s16BrightnessSliderVMa);
  v24 = *(v3 + 16);
  v26 = v33;
  v25 = v34;
  v24(v33, v23, v34);
  v27 = v35;
  sub_25247D748(v14, v35, _s16BrightnessSliderVMa);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0D8);
  v24((v27 + *(v28 + 48)), v26, v25);
  v29 = *(v3 + 8);
  v29(v23, v25);
  sub_25247D7B0(v17, _s16BrightnessSliderVMa);
  v29(v26, v25);
  return sub_25247D7B0(v14, _s16BrightnessSliderVMa);
}

uint64_t sub_25247B680@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE078);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = (&v42 - v5);
  v6 = sub_252691230();
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2526912C0();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25268ED20();
  v10 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE080);
  MEMORY[0x28223BE20](v42);
  v17 = (&v42 - v16);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE088);
  MEMORY[0x28223BE20](v50);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v48 = &v42 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v44 = *(v10 + 16);
  v22 = v55;
  v44(v12, v15, v55);
  v23 = sub_25248C4C8(v12);
  v43 = *(v10 + 8);
  v43(v15, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v24 = v56;
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v25 = _s9ColorWellVMa();
  *(v17 + *(v25 + 20)) = v23;
  *(v17 + *(v25 + 24)) = v24;
  sub_252692920();
  sub_2526909C0();
  v26 = (v17 + *(v42 + 36));
  v27 = v57;
  *v26 = v56;
  v26[1] = v27;
  v26[2] = v58;
  v28 = v45;
  sub_252691270();
  sub_25247D5E0();
  sub_252691EB0();
  (*(v46 + 8))(v28, v47);
  sub_252372288(v17, &qword_27F4DE080);
  sub_252691210();
  sub_252691200();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v29 = v55;
  v44(v12, v15, v55);
  sub_25248C4C8(v12);
  v43(v15, v29);
  sub_252691220();

  sub_252691200();
  sub_252691250();
  v30 = sub_252691D30();
  v32 = v31;
  LOBYTE(v28) = v33;
  v34 = v48;
  sub_252690BC0();
  sub_2524228D8(v30, v32, v28 & 1);

  sub_252372288(v19, &qword_27F4DE088);
  v35 = sub_2526912E0();
  v36 = v52;
  *v52 = v35;
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0A0);
  sub_25247BDAC(v51, v36 + *(v37 + 44));
  sub_25237153C(v34, v19, &qword_27F4DE088);
  v38 = v53;
  sub_25237153C(v36, v53, &qword_27F4DE078);
  v39 = v54;
  sub_25237153C(v19, v54, &qword_27F4DE088);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0A8);
  sub_25237153C(v38, v39 + *(v40 + 48), &qword_27F4DE078);
  sub_252372288(v36, &qword_27F4DE078);
  sub_252372288(v34, &qword_27F4DE088);
  sub_252372288(v38, &qword_27F4DE078);
  return sub_252372288(v19, &qword_27F4DE088);
}

uint64_t sub_25247BDAC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_252691730();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0B0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - v9;
  v10 = sub_2526910F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0B8);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  v81 = *(a1 + 24);
  v20 = *(a1 + 2);
  v80 = v20;
  if (v81 != 1)
  {

    sub_252692F00();
    v24 = v6;
    v25 = v5;
    v26 = sub_2526919C0();
    sub_252690570();

    v5 = v25;
    v6 = v24;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v80, &qword_27F4DE0C0);
    (*(v11 + 8))(v13, v10);
    if (v72 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v61;
    sub_252690680();

    v28 = LightbulbColor.shortDebugDescription.getter();
    v30 = v29;
    (*(v6 + 8))(v27, v5);
    v72 = v28;
    v73 = v30;
    sub_252404480();
    v31 = sub_252691D50();
    v33 = v32;
    v35 = v34;
    sub_252691AD0();
    v36 = sub_252691D00();
    v61 = v19;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    sub_2524228D8(v31, v33, v35 & 1);

    v72 = v37;
    v73 = v39;
    v41 &= 1u;
    LOBYTE(v74) = v41;
    v75 = v43;
    v44 = v63;
    sub_252691720();
    v45 = v62;
    v46 = v65;
    sub_252691ED0();
    (*(v64 + 8))(v44, v46);
    v47 = v37;
    v19 = v61;
    sub_2524228D8(v47, v39, v41);

    v23 = v66;
    v22 = v67;
    (*(v66 + 32))(v19, v45, v67);
    v21 = 0;
    goto LABEL_6;
  }

  if (v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = 1;
  v23 = v66;
  v22 = v67;
LABEL_6:
  (*(v23 + 56))(v19, v21, 1, v22, v17);
  v79 = *a1;
  v78 = *(a1 + 4);
  v48 = swift_allocObject();
  v49 = a1[1];
  *(v48 + 16) = *a1;
  *(v48 + 32) = v49;
  *(v48 + 48) = a1[2];
  *(v48 + 64) = *(a1 + 48);
  sub_25237153C(&v80, &v72, &qword_27F4DE0C0);
  sub_25237153C(&v79, &v72, &qword_27F4DE0C8);
  sub_25247D6EC(&v78, &v72);

  sub_252692920();
  sub_2526909C0();
  v66 = v74;
  v67 = v72;
  v50 = v76;
  v51 = v77;
  v71 = v73;
  v70 = v75;
  v52 = v68;
  sub_25237153C(v19, v68, &qword_27F4DE0B8);
  v53 = v19;
  v54 = v71;
  v55 = v70;
  v56 = v69;
  sub_25237153C(v52, v69, &qword_27F4DE0B8);
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0D0) + 48);
  *v57 = sub_25247D6E4;
  *(v57 + 8) = v48;
  v58 = v66;
  *(v57 + 16) = v67;
  *(v57 + 24) = v54;
  *(v57 + 32) = v58;
  *(v57 + 40) = v55;
  *(v57 + 48) = v50;
  *(v57 + 56) = v51;

  sub_252372288(v53, &qword_27F4DE0B8);

  return sub_252372288(v52, &qword_27F4DE0B8);
}

__n128 sub_25247C4A0@<Q0>(uint64_t a1@<X8>)
{
  _s16ColorPickerStateCMa();
  sub_25247D69C(&qword_27F4DDB30, _s16ColorPickerStateCMa);

  v2 = sub_252690AD0();
  v4 = v3;
  sub_2526909F0();
  sub_252692920();
  sub_252690D70();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 80) = v10;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  result = v9;
  *(a1 + 48) = v8;
  *(a1 + 64) = v9;
  return result;
}

uint64_t sub_25247C60C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_2526912E0();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE038);
  return sub_25247ADC8(v6, a1 + *(v4 + 44));
}

unint64_t sub_25247C6CC()
{
  result = qword_27F4DDDB8;
  if (!qword_27F4DDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDDB8);
  }

  return result;
}

unint64_t sub_25247C724()
{
  result = qword_27F4DDDC0;
  if (!qword_27F4DDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDDC0);
  }

  return result;
}

char *sub_25247C778(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 16) && (*(a1 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 2) & 1) != 0)
  {
    v1 = sub_252369580(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_252369580((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v1[v3 + 32] = 1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_252369580(0, *(v1 + 2) + 1, 1, v1);
  }

  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v1 = sub_252369580((v4 > 1), v5 + 1, 1, v1);
    v4 = *(v1 + 3);
    v6 = v4 >> 1;
  }

  *(v1 + 2) = v7;
  v1[v5 + 32] = 2;
  v8 = v5 + 2;
  if (v6 < v8)
  {
    v1 = sub_252369580((v4 > 1), v8, 1, v1);
  }

  *(v1 + 2) = v8;
  v1[v7 + 32] = 0;
  return v1;
}

uint64_t sub_25247C8D8()
{
  v0 = sub_2526932D0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25247C92C()
{
  result = qword_27F4DDDF8;
  if (!qword_27F4DDDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDDE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE08);
    sub_252400FC8(&qword_27F4DDE10, &qword_27F4DDE08);
    sub_252404480();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25247D69C(&qword_27F4DDE18, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDDF8);
  }

  return result;
}

uint64_t sub_25247CAB8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ColorPicker() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2524772D0(a1, a2, v6);
}

unint64_t sub_25247CB38()
{
  result = qword_27F4DDE30;
  if (!qword_27F4DDE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB2A0);
    sub_25247D69C(&qword_27F4DCAB8, type metadata accessor for AccessoryControl.ColorState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDE30);
  }

  return result;
}

uint64_t sub_25247CBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25247CC5C()
{
  result = qword_27F4DDE50;
  if (!qword_27F4DDE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE58);
    sub_252400FC8(&qword_27F4DDE60, &qword_27F4DDE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDE50);
  }

  return result;
}

uint64_t sub_25247CDCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25247CDF4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ColorPicker() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_25247CE78()
{
  result = qword_27F4DDF18;
  if (!qword_27F4DDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDF18);
  }

  return result;
}

unint64_t sub_25247CECC()
{
  result = qword_27F4DDF20;
  if (!qword_27F4DDF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDEB8);
    sub_252400FC8(&qword_27F4DDF28, &qword_27F4DDF30);
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDF20);
  }

  return result;
}

unint64_t sub_25247D024()
{
  result = qword_27F4DDFE8;
  if (!qword_27F4DDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDFE8);
  }

  return result;
}

unint64_t sub_25247D078()
{
  result = qword_27F4DDFF0;
  if (!qword_27F4DDFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DDFF0);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for ColorPicker();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_252690850();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[5];
  sub_252457A80(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 65));
  sub_25247CAB0();

  if (*(v5 + v1[8]))
  {
  }

  if (*(v5 + v1[9]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25247D2A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25247D328()
{
  result = qword_27F4DE010;
  if (!qword_27F4DE010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE018);
    sub_25247D3E0();
    sub_252400FC8(&qword_27F4DD298, &qword_27F4DD2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE010);
  }

  return result;
}

unint64_t sub_25247D3E0()
{
  result = qword_27F4DE020;
  if (!qword_27F4DE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE020);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25247D45C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_25247D4A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25247D504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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