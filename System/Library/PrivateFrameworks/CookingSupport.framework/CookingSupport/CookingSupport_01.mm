uint64_t sub_21A37D850()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24B88);
  sub_21A365DC4(v12, qword_27CD24B88);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A37DA30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for RecipeEntity();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v2[7] = *(v5 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A37DB3C, 0, 0);
}

uint64_t sub_21A37DB3C()
{
  v12 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[10] = *v1;
  v0[11] = v1[1];
  v0[12] = v1[2];
  v0[13] = v1[3];
  v0[14] = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000019, 0x800000021A3B4B50, &v11);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_21A37DD88;
  v8 = v0[9];
  v9 = v0[3];

  return sub_21A39A410(v8);
}

uint64_t sub_21A37DD88()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_21A370B1C;
  }

  else
  {
    v3 = sub_21A37DE9C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A37DE9C()
{
  v23 = v0[13];
  v24 = v0[14];
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = sub_21A3B258C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_21A371C60(v4, v5);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_21A365B98(v5, v12 + v11);
  v13 = v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *(v9 + 32);
  v15 = *(v9 + 16);
  *v13 = *v9;
  *(v13 + 16) = v15;
  *(v13 + 32) = v14;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v16 = sub_21A37D5E4(0, 0, v8, &unk_21A3B4BB0, v12);
  v0[17] = v16;
  v17 = *(MEMORY[0x277D857C8] + 4);
  v18 = swift_task_alloc();
  v0[18] = v18;
  v19 = sub_21A365B50(&qword_27CD241C8, &unk_21A3B3B20);
  *v18 = v0;
  v18[1] = sub_21A37091C;
  v20 = MEMORY[0x277D84950];
  v21 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v19, v16, v21, v19, v20);
}

uint64_t sub_21A37E094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21A37E0B8, 0, 0);
}

uint64_t sub_21A37E0B8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_21A370D5C;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x286D726F66726570, 0xE900000000000029, sub_21A37F02C, v1, v5);
}

uint64_t sub_21A37E1AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_21A365B50(&qword_27CD241D0, &qword_21A3B4BC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27[-v10];
  v12 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a2;
  v18 = a2[1];
  v20 = *(v15 + 28);
  (*(v7 + 16))(v11, a1, v6);

  sub_21A3B1DBC();
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  v21 = *(a3 + 8);
  sub_21A3B187C();
  v22 = *sub_21A360CEC(v32, v32[3]);
  v31 = v17;
  v23 = *(v22 + 16);
  v28 = sub_21A367634;
  v29 = &v30;
  v24 = *(*v23 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v25));
  sub_21A36763C(v23 + v24);
  os_unfair_lock_unlock((v23 + v25));
  sub_21A36769C(v17, type metadata accessor for CookingSupportAppIntentInvocation);
  return sub_21A361318(v32);
}

uint64_t sub_21A37E3F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24B88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A37E498()
{
  v0 = sub_21A365B50(&qword_27CD244B8, &qword_21A3B4BC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD244C0, &qword_21A3B4BD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD244C8, &qword_21A3B4C00);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A37E630(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A37DA30(a1);
}

double sub_21A37E6DC@<D0>(uint64_t a1@<X8>)
{
  sub_21A37E76C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A37E720(uint64_t a1)
{
  v2 = sub_21A37EEBC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A37E76C@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = v52 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52[0] = v52 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v60 = v52 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v52[1] = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *MEMORY[0x277CC9110];
  v38 = *(v21 + 104);
  v38(v25, v37, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v38(v25, v37, v20);
  v39 = v60;
  sub_21A3B20FC();
  (*(v33 + 56))(v39, 0, 1, v32);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v52[0], 1, 1, v40);
  v41 = sub_21A3B19AC();
  v42 = *(*(v41 - 8) + 56);
  v42(v53, 1, 1, v41);
  v42(v55, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  *&v61 = v43;
  *(&v61 + 1) = v44;
  *&v62 = v45;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v46 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v51 = v59;
  *v59 = v46;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  v51[4] = result;
  return result;
}

unint64_t sub_21A37EEBC()
{
  result = qword_27CD244B0;
  if (!qword_27CD244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244B0);
  }

  return result;
}

uint64_t sub_21A37EF10(uint64_t a1)
{
  v4 = *(type metadata accessor for RecipeEntity() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3650E8;

  return sub_21A37E094(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_21A37F038()
{
  result = qword_27CD244D0;
  if (!qword_27CD244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244D0);
  }

  return result;
}

unint64_t sub_21A37F090()
{
  result = qword_27CD244D8;
  if (!qword_27CD244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244D8);
  }

  return result;
}

unint64_t sub_21A37F168()
{
  result = qword_27CD244E0;
  if (!qword_27CD244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244E0);
  }

  return result;
}

uint64_t sub_21A37F1BC()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24BA0);
  sub_21A365DC4(v12, qword_27CD24BA0);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A37F39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = *(*(sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = sub_21A3B1FFC();
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v9 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v12 = type metadata accessor for RecipeEntity();
  v3[30] = v12;
  v13 = *(v12 - 8);
  v3[31] = v13;
  v14 = *(v13 + 64) + 15;
  v3[32] = swift_task_alloc();
  v15 = sub_21A3B205C();
  v3[33] = v15;
  v16 = *(v15 - 8);
  v3[34] = v16;
  v17 = *(v16 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A37F660, 0, 0);
}

uint64_t sub_21A37F660()
{
  v1 = v0[17];
  sub_21A3B187C();
  v2 = v0[5];
  v3 = v0[6];
  sub_21A360CEC(v0 + 2, v2);
  v4 = *(MEMORY[0x277CFCD00] + 4);
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_21A37F720;

  return MEMORY[0x28214F9F0](v2, v3);
}

uint64_t sub_21A37F720(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_21A37F820, 0, 0);
}

uint64_t sub_21A37F820()
{
  v1 = v0[39];
  v2 = v0[18];
  if (*(v1 + 16) >= 0x14uLL)
  {
    v3 = 20;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  sub_21A361318(v0 + 2);
  sub_21A3B187C();
  v4 = v0[10];
  v5 = v0[11];
  sub_21A360CEC(v0 + 7, v4);
  v6 = *(v1 + 16);
  v7 = v0[39];
  if (v6 == v3)
  {
    v8 = v0[39];
  }

  else
  {
    sub_21A380A48(v0[39], v7 + 32, 0, (2 * v3) | 1);
    v7 = v11;
  }

  v0[40] = v7;
  v9 = *(MEMORY[0x277CFCD78] + 4);
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_21A37F944;

  return MEMORY[0x28214FA48](v7, v4, v5);
}

uint64_t sub_21A37F944(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v8 = *v2;
  v3[42] = a1;
  v3[43] = v1;

  if (v1)
  {
    v5 = sub_21A380150;
  }

  else
  {
    v6 = v3[40];

    v5 = sub_21A37FA60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A37FA60()
{
  v1 = v0[42];
  sub_21A361318(v0 + 7);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[34];
    v4 = *(v3 + 16);
    v3 += 16;
    v83 = v4;
    v5 = v0[42] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v71 = (v0[22] + 8);
    v70 = (v3 - 8);
    v6 = v0[31];
    v72 = MEMORY[0x277D84F90];
    v65 = v0[27];
    v68 = *(v3 + 56);
    v69 = (v6 + 48);
    v66 = v6;
    v67 = (v6 + 56);
    v64 = *MEMORY[0x277CFCD08];
    while (1)
    {
      v80 = v5;
      v81 = v2;
      v7 = v0[33];
      v8 = v0[26];
      v83(v0[37]);
      sub_21A3B202C();
      v9 = sub_21A3B1E4C();
      v10 = *(v9 - 8);
      v11 = (*(v10 + 48))(v8, 1, v9);
      v12 = v0[26];
      if (v11 == 1)
      {
        break;
      }

      v13 = sub_21A3B1E3C();
      v15 = v14;
      (*(v10 + 8))(v12, v9);
      if (!v15)
      {
        goto LABEL_9;
      }

      v16 = v0[27];
      *v16 = v13;
      *(v65 + 8) = v15;
      v17 = sub_21A3B1EBC();
      v18 = *(v17 - 8);
      (*(v18 + 104))(v16, v64, v17);
      (*(v18 + 56))(v16, 0, 1, v17);
LABEL_10:
      v21 = v0[36];
      v22 = v0[33];
      v76 = v22;
      v77 = v0[35];
      v23 = v0[25];
      v74 = v23;
      v75 = v0[27];
      v78 = v0[24];
      v24 = v0[23];
      v73 = v0[21];
      v79 = v0[20];
      v25 = v0[19];
      (v83)(v21, v0[37]);
      sub_21A3B187C();
      v26 = v0[16];
      sub_21A360CEC(v0 + 12, v0[15]);
      sub_21A3B200C();
      sub_21A3B1FEC();
      (*v71)(v24, v73);
      sub_21A3B1E6C();

      (v83)(v77, v21, v76);
      sub_21A380D24(v74, v78);
      sub_21A3B204C();
      v27 = sub_21A3B1E2C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v79, 1, v27) == 1)
      {
        sub_21A365D1C(v0[20], &qword_27CD23F68, &unk_21A3B2F30);
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v31 = v0[20];
        v29 = sub_21A3B1E1C();
        v30 = v32;
        (*(v28 + 8))(v31, v27);
      }

      v34 = v0[36];
      v33 = v0[37];
      v35 = v0[33];
      v36 = v0[30];
      v38 = v0[27];
      v37 = v0[28];
      v39 = v0[25];
      sub_21A363DB8(v0[35], v0[24], v29, v30, v37);
      sub_21A365D1C(v39, &qword_27CD23F70, &unk_21A3B4D70);
      v40 = *v70;
      (*v70)(v34, v35);
      sub_21A365D1C(v38, &qword_27CD24070, &unk_21A3B4D80);
      v40(v33, v35);
      v41 = *v69;
      if ((*v69)(v37, 1, v36))
      {
        sub_21A365D1C(v0[28], &qword_27CD23F78, &unk_21A3B2F40);
        v42 = 1;
      }

      else
      {
        sub_21A365B98(v0[28], v0[29]);
        v42 = 0;
      }

      v43 = v0[29];
      v44 = v0[30];
      (*v67)(v43, v42, 1, v44);
      sub_21A361318(v0 + 12);
      if (v41(v43, 1, v44) == 1)
      {
        sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
      }

      else
      {
        sub_21A365B98(v0[29], v0[32]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v45 = v72;
        }

        else
        {
          v45 = sub_21A39363C(0, v72[2] + 1, 1, v72);
        }

        v47 = v45[2];
        v46 = v45[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_21A39363C(v46 > 1, v47 + 1, 1, v45);
        }

        v48 = v0[32];
        v45[2] = v47 + 1;
        v72 = v45;
        sub_21A365B98(v48, v45 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v47);
      }

      v5 = v80 + v68;
      v2 = v81 - 1;
      if (v81 == 1)
      {
        v49 = v0[42];
        v50 = v0[39];

        v51 = v72;
        goto LABEL_25;
      }
    }

    sub_21A365D1C(v0[26], &qword_27CD24068, &qword_21A3B3290);
LABEL_9:
    v19 = v0[27];
    v20 = sub_21A3B1EBC();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_10;
  }

  v52 = v0[39];

  v51 = MEMORY[0x277D84F90];
LABEL_25:
  v54 = v0[36];
  v53 = v0[37];
  v55 = v0[35];
  v56 = v0[32];
  v58 = v0[28];
  v57 = v0[29];
  v60 = v0[26];
  v59 = v0[27];
  v61 = v0[25];
  v82 = v0[24];
  v84 = v0[23];
  v85 = v0[20];

  v62 = v0[1];

  return v62(v51);
}

uint64_t sub_21A380150()
{
  v1 = v0[39];
  v2 = v0[40];

  sub_21A361318(v0 + 7);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v3 = v0[43];
  v4 = sub_21A3B21FC();
  sub_21A365DC4(v4, qword_27CD24AB0);
  v5 = v3;
  v6 = sub_21A3B21DC();
  v7 = sub_21A3B25DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[43];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21A35E000, v6, v7, "Error hydrating recipes: %{public}@", v9, 0xCu);
    sub_21A365D1C(v10, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v13 = v0[43];
  v14 = v0[36];
  v15 = v0[37];
  v16 = v0[35];
  v17 = v0[32];
  v19 = v0[28];
  v18 = v0[29];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[20];

  sub_21A3B18BC();
  sub_21A380CDC(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_21A380404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_21A380428, 0, 0);
}

uint64_t sub_21A380428()
{
  v15 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_21A3B21FC();
  sub_21A365DC4(v4, qword_27CD24AB0);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v5 = sub_21A3B21DC();
  v6 = sub_21A3B25EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_21A3AF0A8(0xD000000000000018, 0x800000021A3B4D10, &v14);
    _os_log_impl(&dword_21A35E000, v5, v6, "Will perform intent: %{public}s", v7, 0xCu);
    sub_21A361318(v8);
    MEMORY[0x21CED8F60](v8, -1, -1);
    MEMORY[0x21CED8F60](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_21A380614;
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];

  return sub_21A37F39C(v12, v10, v11);
}

uint64_t sub_21A380614(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x2822009F8](sub_21A380760, 0, 0);
  }
}

uint64_t sub_21A380760()
{
  v1 = v0[3];
  v0[2] = v0[8];
  sub_21A365B50(&qword_27CD24060, qword_21A3B31A0);
  sub_21A380C28();
  sub_21A3B19BC();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21A38080C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E48 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3808B8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A3650E8;

  return sub_21A380404(a1, v4, v5, v6);
}

uint64_t sub_21A38096C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A380B20();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_21A380998(uint64_t a1)
{
  v2 = sub_21A37F168();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_21A3809E4()
{
  result = qword_27CD244E8;
  if (!qword_27CD244E8)
  {
    sub_21A364A10(&qword_27CD244F0, &unk_21A3B4D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244E8);
  }

  return result;
}

void sub_21A380A48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_21A380B20()
{
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18DC();
  sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  sub_21A3B18DC();
  sub_21A3B188C();
  return v0;
}

unint64_t sub_21A380C28()
{
  result = qword_27CD244F8;
  if (!qword_27CD244F8)
  {
    sub_21A364A10(&qword_27CD24060, qword_21A3B31A0);
    sub_21A380CDC(&qword_27CD23EC8, type metadata accessor for RecipeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244F8);
  }

  return result;
}

uint64_t sub_21A380CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A380D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A380D9C()
{
  result = qword_27CD24500;
  if (!qword_27CD24500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24500);
  }

  return result;
}

uint64_t sub_21A380E38(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15 - v11;
  sub_21A365CB4(a1, &v15 - v11, &qword_27CD23F78, &unk_21A3B2F40);
  v13 = *a2;
  sub_21A365CB4(v12, v9, &qword_27CD23F78, &unk_21A3B2F40);
  sub_21A3B1A2C();
  return sub_21A365D1C(v12, &qword_27CD23F78, &unk_21A3B2F40);
}

uint64_t sub_21A380F2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A365B50(&qword_27CD24138, &unk_21A3B4EA0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3, v5);
  v9 = &v20 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(*v1 + 16);
  if (v11 == v12)
  {
    v13 = *(v7 + 56);

    return v13(a1, 1, 1, v3);
  }

  else
  {
    if (v11 >= v12)
    {
      __break(1u);
    }

    else
    {
      v21 = v7;
      v14 = sub_21A3B1F7C();
      v15 = *(v14 - 8);
      v16 = *(v15 + 16);
      v17 = v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11;
      v1[1] = v11 + 1;
      v18 = *(v3 + 48);
      v19 = v1[2];
      *v9 = v19;
      result = v16(&v9[v18], v17, v14);
      if (!__OFADD__(v19, 1))
      {
        v1[2] = v19 + 1;
        sub_21A36E9B0(v9, a1, &qword_27CD24138, &unk_21A3B4EA0);
        return (*(v21 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A3810F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v6 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v3[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = sub_21A3B205C();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[18] = v11;
  *v11 = v3;
  v11[1] = sub_21A381234;

  return sub_21A382978(a2, a3);
}

uint64_t sub_21A381234(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[18];
  v7 = *v2;
  v4[19] = a2;

  return MEMORY[0x2822009F8](sub_21A38133C, 0, 0);
}

uint64_t sub_21A38133C()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[10];
    sub_21A3B187C();
    v4 = v0[5];
    v5 = v0[6];
    sub_21A360CEC(v0 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v0[20] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    v7 = *(MEMORY[0x277CFCD78] + 4);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_21A3814A4;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {
    v9 = v0[17];
    v10 = v0[14];

    v11 = v0[1];
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_21A3814A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v8 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = sub_21A381884;
  }

  else
  {
    v6 = v3[20];

    v5 = sub_21A3815C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3815C0()
{
  v32 = v0;
  v1 = v0[22];
  if (!*(v1 + 16))
  {
    v15 = v0[22];

    sub_21A361318(v0 + 2);
    v3 = MEMORY[0x277D84F90];
LABEL_14:
    v27 = v0[17];
    v28 = v0[14];

    v29 = v0[1];

    return v29(v3);
  }

  (*(v0[16] + 16))(v0[17], v1 + ((*(v0[16] + 80) + 32) & ~*(v0[16] + 80)), v0[15]);

  sub_21A361318(v0 + 2);
  v2 = sub_21A3B1FAC();
  v3 = MEMORY[0x277D84F90];
  v30 = *(v2 + 16);
  v31[0] = MEMORY[0x277D84F90];
  if (!v30)
  {
LABEL_13:
    v25 = v0[16];
    v24 = v0[17];
    v26 = v0[15];

    (*(v25 + 8))(v24, v26);
    goto LABEL_14;
  }

  v4 = v0[23];
  v6 = v0[13];
  v5 = v0[14];
  v7 = sub_21A3B1D8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = *(v8 + 72);
  v12 = *(v6 + 48);
  *v5 = 0;
  v9(&v5[v12], v2 + v10, v7);
  sub_21A381B48(v31, v5);
  if (v4)
  {
    v13 = v0[14];

    sub_21A365D1C(v13, &qword_27CD24120, &unk_21A3B3700);
  }

  result = sub_21A365D1C(v0[14], &qword_27CD24120, &unk_21A3B3700);
  if (v30 == 1)
  {
LABEL_12:
    v3 = v31[0];
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v2 + v11 + v10;
  v18 = 1;
  while (v18 < *(v2 + 16))
  {
    v19 = v6;
    v20 = v16;
    v21 = v0[14];
    v22 = v19;
    v23 = *(v19 + 48);
    *v21 = v18;
    v9(v21 + v23, v17, v7);
    sub_21A381B48(v31, v21);
    ++v18;
    result = sub_21A365D1C(v0[14], &qword_27CD24120, &unk_21A3B3700);
    v16 = v20;
    v17 += v20;
    v6 = v22;
    if (v30 == v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A381884()
{
  v22 = v0;
  v1 = v0[20];

  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = sub_21A3B21FC();
  sub_21A365DC4(v6, qword_27CD24AB0);
  v7 = v2;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v8 = sub_21A3B21DC();
  v9 = sub_21A3B25DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 138543618;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v15;
    *v12 = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_21A3AF0A8(0xD000000000000021, 0x800000021A3B4E40, &v21);
    _os_log_impl(&dword_21A35E000, v8, v9, "Unable to hydrate due to error: %{public}@, for: %{public}s", v11, 0x16u);
    sub_21A365D1C(v12, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v12, -1, -1);
    sub_21A361318(v13);
    MEMORY[0x21CED8F60](v13, -1, -1);
    MEMORY[0x21CED8F60](v11, -1, -1);
  }

  v16 = v0[23];
  v17 = v0[17];
  v18 = v0[14];
  sub_21A3B18BC();
  sub_21A382C2C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_21A381B48(void **a1, uint64_t a2)
{
  v153 = a2;
  v155 = sub_21A3B208C();
  v115 = *(v155 - 8);
  v3 = *(v115 + 64);
  MEMORY[0x28223BE20](v155, v4);
  v154 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_21A3B20CC();
  v156 = *(v128 - 8);
  v6 = *(v156 + 64);
  MEMORY[0x28223BE20](v128, v7);
  v127 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A3B212C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v126 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A3B24DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v125 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21A3B20EC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v124 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for InstructionEntity();
  v122 = *(v123 - 8);
  v21 = *(v122 + 64);
  v23 = MEMORY[0x28223BE20](v123, v22);
  v25 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v148 = &v109 - v27;
  v28 = sub_21A3B20BC();
  v147 = *(v28 - 8);
  v29 = *(v147 + 64);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v151 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v150 = &v109 - v34;
  v139 = sub_21A3B1F7C();
  v114 = *(v139 - 8);
  v35 = *(v114 + 64);
  MEMORY[0x28223BE20](v139, v36);
  v138 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_21A365B50(&qword_27CD24138, &unk_21A3B4EA0);
  v152 = *(v137 - 8);
  v38 = *(v152 + 64);
  MEMORY[0x28223BE20](v137, v39);
  v113 = (&v109 - v40);
  v41 = sub_21A365B50(&qword_27CD24130, &qword_21A3B3720);
  v42 = *(*(v41 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v41 - 8, v43);
  v136 = &v109 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v135 = &v109 - v47;
  v48 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v49 = v48 - 8;
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48, v51);
  v53 = (&v109 - v52);
  v54 = sub_21A3B1D8C();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54, v57);
  v59 = &v109 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v139;
  sub_21A365CB4(v153, v53, &qword_27CD24120, &unk_21A3B3700);
  v132 = *v53;
  v61 = *(v49 + 56);
  v62 = v138;
  v110 = v55;
  v63 = *(v55 + 32);
  v111 = v54;
  v63(v59, v53 + v61, v54);
  v109 = v59;
  result = sub_21A3B1D7C();
  v65 = result;
  v66 = 0;
  v67 = *(result + 16);
  v112 = v114 + 16;
  v134 = (v152 + 56);
  v133 = (v152 + 48);
  v131 = (v114 + 32);
  v149 = (v147 + 16);
  v153 = v115 + 16;
  v152 = v115 + 8;
  v159 = *MEMORY[0x277CC9110];
  v118 = (v156 + 104);
  v117 = "used in intents.";
  v147 += 8;
  v116 = (v114 + 8);
  v119 = v67;
  v129 = a1;
  v121 = v25;
  v120 = v28;
  v130 = result;
  while (1)
  {
    v68 = v137;
    if (v66 == v67)
    {
      v69 = 1;
      v146 = v67;
      v70 = v136;
    }

    else
    {
      if ((v66 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (v66 >= *(v65 + 16))
      {
        goto LABEL_24;
      }

      v71 = v66 + 1;
      v72 = v114;
      v73 = v65 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v66;
      v74 = *(v137 + 48);
      v75 = v113;
      *v113 = v66;
      (*(v72 + 16))(&v75[v74], v73, v60);
      v76 = v75;
      v70 = v136;
      sub_21A36E9B0(v76, v136, &qword_27CD24138, &unk_21A3B4EA0);
      v69 = 0;
      v146 = v71;
    }

    (*v134)(v70, v69, 1, v68);
    v77 = v70;
    v78 = v135;
    sub_21A36E9B0(v77, v135, &qword_27CD24130, &qword_21A3B3720);
    if ((*v133)(v78, 1, v68) == 1)
    {
      (*(v110 + 8))(v109, v111);
    }

    v79 = *v78;
    (*v131)(v62, &v78[*(v68 + 48)], v60);
    v80 = v150;
    sub_21A3B209C();
    v81 = *v149;
    result = (*v149)(v151, v80, v28);
    if (__OFADD__(v79, 1))
    {
      break;
    }

    v144 = v79 + 1;
    v145 = v81;
    v82 = sub_21A3B1F6C();
    v83 = *(v82 + 16);
    if (v83)
    {
      v157 = MEMORY[0x277D84F90];
      sub_21A3AF650(0, v83, 0);
      v84 = v157;
      v85 = *(v115 + 80);
      v143 = v82;
      v86 = v82 + ((v85 + 32) & ~v85);
      v156 = *(v115 + 72);
      v87 = *(v115 + 16);
      do
      {
        v89 = v154;
        v88 = v155;
        v87(v154, v86, v155);
        v90 = sub_21A3B207C();
        v92 = v91;
        (*v152)(v89, v88);
        v157 = v84;
        v94 = *(v84 + 16);
        v93 = *(v84 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_21A3AF650((v93 > 1), v94 + 1, 1);
          v84 = v157;
        }

        *(v84 + 16) = v94 + 1;
        v95 = v84 + 16 * v94;
        *(v95 + 32) = v90;
        *(v95 + 40) = v92;
        v86 += v156;
        --v83;
      }

      while (v83);
    }

    else
    {

      v84 = MEMORY[0x277D84F90];
    }

    v157 = v84;
    sub_21A365B50(&qword_27CD23F50, &qword_21A3B2F20);
    sub_21A36E238();
    v156 = sub_21A3B245C();
    v143 = v96;

    v97 = v123;
    v140 = *(v123 + 20);
    sub_21A365B50(&qword_27CD24148, &qword_21A3B3728);
    sub_21A3B247C();
    sub_21A3B211C();
    v141 = *v118;
    v98 = v127;
    v99 = v128;
    v141(v127, v159, v128);
    sub_21A3B20FC();
    v142 = sub_21A3B19FC();
    v100 = v148;
    *(v148 + v140) = v142;
    v101 = *(v97 + 24);
    sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
    sub_21A3B247C();
    sub_21A3B211C();
    v141(v98, v159, v99);
    sub_21A3B20FC();
    *(v100 + v101) = sub_21A3B19EC();
    v102 = v151;
    v28 = v120;
    v145(v100, v151, v120);
    v157 = v144;
    sub_21A3B19DC();
    v157 = v156;
    v158 = v143;
    sub_21A3B19DC();
    v103 = *v147;
    (*v147)(v102, v28);
    v104 = v121;
    sub_21A36E29C(v100, v121);
    v105 = v129;
    v106 = *v129;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = sub_21A39368C(0, v106[2] + 1, 1, v106);
    }

    v60 = v139;
    v65 = v130;
    v108 = v106[2];
    v107 = v106[3];
    if (v108 >= v107 >> 1)
    {
      v106 = sub_21A39368C(v107 > 1, v108 + 1, 1, v106);
    }

    v103(v150, v28);
    v62 = v138;
    (*v116)(v138, v60);
    v106[2] = v108 + 1;
    sub_21A36E300(v104, v106 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v108);
    *v105 = v106;
    result = sub_21A36E950(v148, type metadata accessor for InstructionEntity);
    v67 = v119;
    v66 = v146;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21A3828BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_21A3689C0;

  return sub_21A3810F8(v3, v4, v5);
}

uint64_t sub_21A382978(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_21A3B1FFC();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD24158, &qword_21A3B3750) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(type metadata accessor for RecipeEntity() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A382A9C, 0, 0);
}

uint64_t sub_21A382A9C()
{
  v1 = v0[8];
  if (sub_21A3B1C6C())
  {
    v2 = v0[13];
    swift_getKeyPath();
    sub_21A36E89C();
    sub_21A3B1A7C();

    v3 = *v2;
    v4 = v2[1];

    sub_21A36E950(v2, type metadata accessor for RecipeEntity);
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];

    v8 = v0[1];

    return v8(v3, v4);
  }

  else
  {
    v10 = v0[7];
    sub_21A3B187C();
    v11 = v0[5];
    v12 = v0[6];
    sub_21A360CEC(v0 + 2, v11);
    v13 = *(MEMORY[0x277CFCC68] + 4);
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_21A36E618;
    v15 = v0[12];

    return MEMORY[0x28214F8F0](v15, v11, v12);
  }
}

uint64_t sub_21A382C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RecipeCardContainerViewParallax.init(parallaxX:parallaxSafeAreaInsets:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

id static RecipeCardContainerViewController.createViewController(recipeID:recipeCardID:recipeCardViewSessionIDStream:paywallStatus:isPreviewing:isPrimaryRecipeStream:scope:recipeFeaturesConfiguration:navigationItemAdaptor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), void (*a6)(char *, char *, uint64_t), int a7, void (*a8)(char *, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v61 = a8;
  v69 = a7;
  v58 = a6;
  v56 = a5;
  v67 = a3;
  v68 = a4;
  v65 = a1;
  v66 = a2;
  v70 = a11;
  v71 = a12;
  v62 = a10;
  v60 = a9;
  v12 = sub_21A3B1F1C();
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v80 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21A3B243C();
  v73 = *(v79 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x28223BE20](v79, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v19;
  v20 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  v74 = v20;
  v59 = *(v20 - 8);
  v21 = v59;
  v22 = *(v59 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v53 - v24;
  v75 = &v53 - v24;
  v26 = sub_21A3B1F0C();
  v76 = v26;
  v63 = *(v26 - 8);
  v27 = v63;
  v28 = *(v63 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  v64 = *(v77 - 8);
  v32 = v64;
  v33 = *(v64 + 64);
  MEMORY[0x28223BE20](v77, v34);
  v78 = &v53 - v35;
  v55 = *(v32 + 16);
  v55();
  v54 = *(v27 + 16);
  v57 = v31;
  v54(v31, v58, v26);
  v58 = *(v21 + 16);
  v58(v25, v61, v20);
  v56 = *(v73 + 16);
  v56(v19, v60, v79);
  v61 = *(v81 + 16);
  v61(v80, v62, v82);
  v36 = objc_allocWithZone(v83);
  v37 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_observableHorizontalParallaxModel;
  v38 = sub_21A3B1F5C();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v36[v37] = sub_21A3B1F4C();
  v41 = &v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeID];
  v42 = v66;
  *v41 = v65;
  v41[1] = v42;
  v43 = &v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardID];
  v44 = v68;
  *v43 = v67;
  v43[1] = v44;
  (v55)(&v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardViewSessionIDStream], v78, v77);
  v54(&v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_paywallStatus], v31, v76);
  v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_isPreviewing] = v69;
  v58(&v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_isPrimaryRecipeStream], v75, v74);
  v45 = v79;
  v56(&v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_scope], v72, v79);
  v46 = &v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_navigationItemAdaptor];
  v48 = v70;
  v47 = v71;
  *v46 = v70;
  v46[1] = v47;
  v49 = v80;
  v50 = v82;
  v61(&v36[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeFeaturesConfiguration], v80, v82);

  sub_21A3832A4(v48);
  v84.receiver = v36;
  v84.super_class = v83;
  v51 = objc_msgSendSuper2(&v84, sel_initWithNibName_bundle_, 0, 0);
  (*(v81 + 8))(v49, v50);
  (*(v73 + 8))(v72, v45);
  (*(v59 + 8))(v75, v74);
  (*(v63 + 8))(v57, v76);
  (*(v64 + 8))(v78, v77);
  return v51;
}

uint64_t sub_21A3832A4(uint64_t result)
{
  if (result)
  {
    return sub_21A3B1A8C();
  }

  return result;
}

Swift::Void __swiftcall RecipeCardContainerViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for RootView(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v55 - v11;
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, sel_viewDidLoad);
  v13 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeID];
  v57 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeID + 8];
  v58 = v13;
  v14 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardID];
  v55 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardID + 8];
  v56 = v14;
  v15 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeCardViewSessionIDStream;
  v16 = v4[8];
  v17 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  (*(*(v17 - 8) + 16))(&v12[v16], &v1[v15], v17);
  v18 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_scope;
  v19 = v4[9];
  v20 = sub_21A3B243C();
  (*(*(v20 - 8) + 16))(&v12[v19], &v1[v18], v20);
  v21 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_paywallStatus;
  v22 = v4[10];
  v23 = sub_21A3B1F0C();
  (*(*(v23 - 8) + 16))(&v12[v22], &v1[v21], v23);
  v24 = v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_isPreviewing];
  v25 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_isPrimaryRecipeStream;
  v26 = v4[12];
  v27 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  (*(*(v27 - 8) + 16))(&v12[v26], &v1[v25], v27);
  v28 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_observableHorizontalParallaxModel];
  v29 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_navigationItemAdaptor];
  v30 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_navigationItemAdaptor + 8];
  v31 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_recipeFeaturesConfiguration;
  v32 = v4[15];
  v33 = sub_21A3B1F1C();
  (*(*(v33 - 8) + 16))(&v12[v32], &v1[v31], v33);
  v34 = v57;
  *v12 = v58;
  *(v12 + 1) = v34;
  v35 = v55;
  *(v12 + 2) = v56;
  *(v12 + 3) = v35;
  v12[v4[11]] = v24;
  *&v12[v4[13]] = v28;
  v36 = &v12[v4[14]];
  *v36 = v29;
  v36[1] = v30;
  objc_allocWithZone(sub_21A365B50(&qword_27CD24568, &qword_21A3B4EF0));
  sub_21A385048(v12, v9);

  sub_21A3B1A8C();
  sub_21A3832A4(v29);
  v37 = sub_21A3B222C();
  sub_21A3850AC(v12);
  v38 = v37;
  [v1 addChildViewController_];
  v39 = [v1 view];
  if (!v39)
  {
    __break(1u);
    goto LABEL_8;
  }

  v40 = v39;
  v41 = [v38 view];
  if (!v41)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v42 = v41;
  [v40 addSubview_];

  v43 = [v38 view];
  if (!v43)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v44 = [v1 view];
  if (!v44)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v45 = v44;
  [v44 bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  [v43 setFrame_];
  v54 = [v38 view];

  if (v54)
  {
    [v54 setAutoresizingMask_];

    [v38 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_21A3837E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21A385A10(a1);
  (*(*(*(v2 + qword_27CD24598) - 8) + 8))(a1);
  return v5;
}

uint64_t RecipeCardContainerViewController.updateParallax(_:)(uint64_t *a1)
{
  v3 = sub_21A365B50(&qword_27CD24570, qword_21A3B4EF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v23 - v6;
  v8 = sub_21A3B1E9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = a1[2];
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1[5];
  result = sub_21A3B22CC();
  if (result)
  {
    v21 = [v1 traitCollection];
    [v21 layoutDirection];

    sub_21A3B1E8C();
    v22 = *&v1[OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_observableHorizontalParallaxModel];
    (*(v9 + 16))(v7, v13, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_21A3B1F3C();
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

id RecipeCardContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21A3B24EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_21A383D4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v136 = a1;
  v3 = sub_21A365B50(&qword_27CD24648, &qword_21A3B5070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v134 = &v107 - v6;
  v135 = sub_21A365B50(&qword_27CD24650, &unk_21A3B5078);
  v7 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135, v8);
  v133 = &v107 - v9;
  v118 = sub_21A365B50(&qword_27CD243D8, &unk_21A3B4750);
  v10 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118, v11);
  v13 = &v107 - v12;
  v14 = sub_21A3B1E0C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21A365B50(&qword_27CD24658, &qword_21A3B5088);
  v110 = *(v20 - 8);
  v21 = *(v110 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v107 - v23;
  v112 = sub_21A365B50(&qword_27CD24660, &qword_21A3B5090);
  v114 = *(v112 - 8);
  v25 = *(v114 + 64);
  MEMORY[0x28223BE20](v112, v26);
  v28 = &v107 - v27;
  v115 = sub_21A365B50(&qword_27CD24668, &qword_21A3B5098);
  v117 = *(v115 - 8);
  v29 = *(v117 + 64);
  MEMORY[0x28223BE20](v115, v30);
  v109 = &v107 - v31;
  v119 = sub_21A365B50(&qword_27CD24670, &qword_21A3B50A0);
  v121 = *(v119 - 8);
  v32 = *(v121 + 64);
  MEMORY[0x28223BE20](v119, v33);
  v111 = &v107 - v34;
  v35 = sub_21A365B50(&qword_27CD24678, &qword_21A3B50A8);
  v36 = *(v35 - 8);
  v122 = v35;
  v123 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  v113 = &v107 - v39;
  v40 = sub_21A365B50(&qword_27CD24680, &qword_21A3B50B0);
  v41 = *(v40 - 8);
  v124 = v40;
  v125 = v41;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v116 = &v107 - v44;
  v127 = sub_21A365B50(&qword_27CD24688, &qword_21A3B50B8);
  v129 = *(v127 - 8);
  v45 = *(v129 + 64);
  MEMORY[0x28223BE20](v127, v46);
  v120 = &v107 - v47;
  v130 = sub_21A365B50(&qword_27CD24690, &qword_21A3B50C0);
  v132 = *(v130 - 8);
  v48 = *(v132 + 64);
  MEMORY[0x28223BE20](v130, v49);
  v126 = &v107 - v50;
  v131 = sub_21A365B50(&qword_27CD24698, &qword_21A3B50C8);
  v51 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131, v52);
  v128 = &v107 - v53;
  sub_21A3B1DFC();
  v54 = sub_21A3855EC();
  sub_21A3B226C();
  (*(v15 + 8))(v19, v14);
  swift_getKeyPath();
  v55 = *v2;
  v56 = *(v2 + 1);

  sub_21A3B1FDC();
  v57 = sub_21A3B1FFC();
  (*(*(v57 - 8) + 56))(v13, 0, 1, v57);
  *&v137 = v14;
  *(&v137 + 1) = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21A3B227C();

  sub_21A365D1C(v13, &qword_27CD243D8, &unk_21A3B4750);
  (*(v110 + 8))(v24, v20);
  swift_getKeyPath();
  v59 = *(v2 + 3);
  v139 = *(v2 + 2);
  v140 = v59;

  *&v137 = v20;
  *(&v137 + 1) = v118;
  v138 = OpaqueTypeConformance2;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v109;
  v62 = v112;
  sub_21A3B227C();

  (*(v114 + 8))(v28, v62);
  swift_getKeyPath();
  v63 = type metadata accessor for RootView(0);
  v64 = v63[13];
  v65 = sub_21A364A10(&qword_27CD23F20, "^<");
  *&v137 = v62;
  *(&v137 + 1) = v65;
  v138 = v60;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v111;
  v68 = v115;
  sub_21A3B227C();

  (*(v117 + 8))(v61, v68);
  swift_getKeyPath();
  v69 = v63[8];
  v70 = sub_21A3B1F1C();
  *&v137 = v68;
  *(&v137 + 1) = v70;
  v138 = v66;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v2;
  v73 = v113;
  v74 = v119;
  sub_21A3B227C();

  (*(v121 + 8))(v67, v74);
  swift_getKeyPath();
  v75 = v72;
  LOBYTE(v139) = v72[v63[9]];
  v76 = sub_21A3B1F0C();
  *&v137 = v74;
  *(&v137 + 1) = v76;
  v138 = v71;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v116;
  v79 = v122;
  sub_21A3B227C();

  (*(v123 + 8))(v73, v79);
  swift_getKeyPath();
  v80 = *&v75[v63[11]];
  v108 = v75;
  v139 = v80;
  sub_21A3B1A8C();
  *&v137 = v79;
  *(&v137 + 1) = MEMORY[0x277D839B0];
  v138 = v77;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v120;
  v83 = v124;
  sub_21A3B227C();

  (*(v125 + 8))(v78, v83);
  swift_getKeyPath();
  v84 = v63[10];
  v85 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  v86 = *(v85 - 8);
  v87 = &v75[v84];
  v88 = v133;
  (*(v86 + 16))(v133, v87, v85);
  (*(v86 + 56))(v88, 0, 1, v85);
  v89 = sub_21A364A10(&qword_27CD246A8, &qword_21A3B5228);
  *&v137 = v83;
  *(&v137 + 1) = v89;
  v138 = v81;
  v90 = swift_getOpaqueTypeConformance2();
  v92 = v126;
  v91 = v127;
  sub_21A3B227C();

  sub_21A365D1C(v88, &qword_27CD24650, &unk_21A3B5078);
  v93 = v91;
  (*(v129 + 8))(v82, v91);
  swift_getKeyPath();
  v94 = v63[6];
  v95 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  v96 = *(v95 - 8);
  v97 = v108;
  v98 = &v108[v94];
  v99 = v134;
  (*(v96 + 16))(v134, v98, v95);
  (*(v96 + 56))(v99, 0, 1, v95);
  *&v137 = v93;
  *(&v137 + 1) = v135;
  v138 = v90;
  swift_getOpaqueTypeConformance2();
  v100 = v128;
  v101 = v130;
  sub_21A3B227C();

  sub_21A365D1C(v99, &qword_27CD24648, &qword_21A3B5070);
  (*(v132 + 8))(v92, v101);
  KeyPath = swift_getKeyPath();
  v103 = v63[7];
  v104 = (v100 + *(v131 + 36));
  v105 = v104 + *(sub_21A365B50(&qword_27CD246B0, qword_21A3B5290) + 28);
  sub_21A3B242C();
  *v104 = KeyPath;
  v137 = *&v97[v63[12]];
  sub_21A385644();
  sub_21A3859BC();
  sub_21A3B22BC();
  return sub_21A363360(v100);
}

uint64_t sub_21A384AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_21A365B50(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v17 - v14;
  sub_21A365CB4(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

uint64_t sub_21A384B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_21A384C88()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 8);
    return v1();
  }

  return result;
}

void sub_21A384CC0(uint64_t a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_setContentScrollView_forEdge_, a1, a2);
  v5 = [v2 parentViewController];
  v6 = [v5 parentViewController];

  [v6 setContentScrollView:a1 forEdge:a2];
}

void sub_21A384D6C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a1;
  sub_21A384CC0(a3, a4);
}

void *sub_21A384E24(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27CD24598);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_21A3B221C();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_21A384F5C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id _s14CookingSupport33RecipeCardContainerViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21A385048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A3850AC(uint64_t a1)
{
  v2 = type metadata accessor for RootView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A385108(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A385128(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_21A385198()
{
  sub_21A385374(319, &qword_27CD24588);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = sub_21A3B243C();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_21A3B1F0C();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_21A385374(319, &qword_27CD24590);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_21A3B1F1C();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21A385374(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A3B259C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21A385448()
{
  sub_21A385374(319, &qword_27CD24588);
  if (v0 <= 0x3F)
  {
    sub_21A3B243C();
    if (v1 <= 0x3F)
    {
      sub_21A3B1F0C();
      if (v2 <= 0x3F)
      {
        sub_21A385374(319, &qword_27CD24590);
        if (v3 <= 0x3F)
        {
          sub_21A3B1F5C();
          if (v4 <= 0x3F)
          {
            sub_21A38556C();
            if (v5 <= 0x3F)
            {
              sub_21A3B1F1C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21A38556C()
{
  if (!qword_27CD24638)
  {
    sub_21A364A10(&qword_27CD24640, "@&");
    v0 = sub_21A3B25FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD24638);
    }
  }
}

unint64_t sub_21A3855EC()
{
  result = qword_27CD246A0;
  if (!qword_27CD246A0)
  {
    sub_21A3B1E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246A0);
  }

  return result;
}

unint64_t sub_21A385644()
{
  result = qword_27CD246B8;
  if (!qword_27CD246B8)
  {
    sub_21A364A10(&qword_27CD24698, &qword_21A3B50C8);
    sub_21A364A10(&qword_27CD24690, &qword_21A3B50C0);
    sub_21A364A10(&qword_27CD24648, &qword_21A3B5070);
    sub_21A364A10(&qword_27CD24688, &qword_21A3B50B8);
    sub_21A364A10(&qword_27CD24650, &unk_21A3B5078);
    sub_21A364A10(&qword_27CD24680, &qword_21A3B50B0);
    sub_21A364A10(&qword_27CD246A8, &qword_21A3B5228);
    sub_21A364A10(&qword_27CD24678, &qword_21A3B50A8);
    sub_21A364A10(&qword_27CD24670, &qword_21A3B50A0);
    sub_21A3B1F0C();
    sub_21A364A10(&qword_27CD24668, &qword_21A3B5098);
    sub_21A3B1F1C();
    sub_21A364A10(&qword_27CD24660, &qword_21A3B5090);
    sub_21A364A10(&qword_27CD23F20, "^<");
    sub_21A364A10(&qword_27CD24658, &qword_21A3B5088);
    sub_21A364A10(&qword_27CD243D8, &unk_21A3B4750);
    sub_21A3B1E0C();
    sub_21A3855EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A385958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246B8);
  }

  return result;
}

unint64_t sub_21A385958()
{
  result = qword_27CD246C0;
  if (!qword_27CD246C0)
  {
    sub_21A364A10(&qword_27CD246B0, qword_21A3B5290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246C0);
  }

  return result;
}

unint64_t sub_21A3859BC()
{
  result = qword_27CD246C8;
  if (!qword_27CD246C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246C8);
  }

  return result;
}

uint64_t sub_21A385A10(uint64_t a1)
{
  v2 = *(*(*((*MEMORY[0x277D85000] & *v1) + qword_27CD24598) - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_21A3B222C();
}

uint64_t sub_21A385AF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21A385B38(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21A385B50(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21A385BAC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21A385C14()
{
  result = qword_27CD246D0;
  if (!qword_27CD246D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246D0);
  }

  return result;
}

uint64_t sub_21A385CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = *(*(sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = sub_21A3B1FFC();
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v9 = sub_21A3B1E4C();
  v3[26] = v9;
  v10 = *(v9 - 8);
  v3[27] = v10;
  v11 = *(v10 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v12 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v13 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v14 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v15 = type metadata accessor for RecipeEntity();
  v3[35] = v15;
  v16 = *(v15 - 8);
  v3[36] = v16;
  v17 = *(v16 + 64) + 15;
  v3[37] = swift_task_alloc();
  v18 = sub_21A3B205C();
  v3[38] = v18;
  v19 = *(v18 - 8);
  v3[39] = v19;
  v20 = *(v19 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A385FE8, 0, 0);
}

uint64_t sub_21A385FE8()
{
  v1 = v0[17];
  sub_21A3B187C();
  v2 = v0[5];
  v3 = v0[6];
  sub_21A360CEC(v0 + 2, v2);
  v4 = *(MEMORY[0x277CFCD00] + 4);
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_21A3860A8;

  return MEMORY[0x28214F9F0](v2, v3);
}

uint64_t sub_21A3860A8(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_21A3861A8, 0, 0);
}

uint64_t sub_21A3861A8()
{
  v1 = v0[18];
  sub_21A361318(v0 + 2);
  sub_21A3B187C();
  v2 = v0[10];
  v3 = v0[11];
  sub_21A360CEC(v0 + 7, v2);
  v4 = *(MEMORY[0x277CFCD78] + 4);
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_21A386278;
  v6 = v0[44];

  return MEMORY[0x28214FA48](v6, v2, v3);
}

uint64_t sub_21A386278(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(v4 + 368) = a1;
  *(v4 + 376) = v1;

  v7 = *(v3 + 352);

  if (v1)
  {
    v8 = sub_21A386AA4;
  }

  else
  {
    v8 = sub_21A3863B4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21A3863B4()
{
  v1 = v0[46];
  sub_21A361318(v0 + 7);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[39];
    v4 = *(v3 + 16);
    v3 += 16;
    v84 = v4;
    v5 = v0[46] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = v0[27];
    v69 = (v6 + 48);
    v63 = (v6 + 32);
    v61 = (v6 + 8);
    v62 = (v6 + 16);
    v67 = (v3 - 8);
    v68 = (v0[22] + 8);
    v7 = v0[36];
    v60 = v7;
    v65 = (v7 + 56);
    v70 = MEMORY[0x277D84F90];
    v64 = *(v3 + 56);
    v66 = (v7 + 48);
    do
    {
      v80 = v5;
      v82 = v2;
      v8 = v0[38];
      v10 = v0[30];
      v9 = v0[31];
      v11 = v0[26];
      v84(v0[42]);
      sub_21A3B202C();
      sub_21A365CB4(v9, v10, &qword_27CD24068, &qword_21A3B3290);
      v12 = (*v69)(v10, 1, v11);
      v14 = v0[31];
      v13 = v0[32];
      if (v12 == 1)
      {
        sub_21A365D1C(v0[31], &qword_27CD24068, &qword_21A3B3290);
        v15 = sub_21A3B1EBC();
        (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      }

      else
      {
        v16 = v0[29];
        v17 = v0[28];
        v18 = v0[26];
        (*v63)(v16, v0[30], v18);
        (*v62)(v17, v16, v18);
        sub_21A3B1EAC();
        (*v61)(v16, v18);
        sub_21A365D1C(v14, &qword_27CD24068, &qword_21A3B3290);
      }

      v19 = v0[41];
      v20 = v0[38];
      v74 = v20;
      v75 = v0[40];
      v21 = v0[25];
      v72 = v21;
      v73 = v0[32];
      v76 = v0[24];
      v22 = v0[23];
      v71 = v0[21];
      v78 = v0[20];
      v23 = v0[19];
      (v84)(v19, v0[42]);
      sub_21A3B187C();
      v24 = v0[16];
      sub_21A360CEC(v0 + 12, v0[15]);
      sub_21A3B200C();
      sub_21A3B1FEC();
      (*v68)(v22, v71);
      sub_21A3B1E6C();

      (v84)(v75, v19, v74);
      sub_21A365CB4(v72, v76, &qword_27CD23F70, &unk_21A3B4D70);
      sub_21A3B204C();
      v25 = sub_21A3B1E2C();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v78, 1, v25) == 1)
      {
        sub_21A365D1C(v0[20], &qword_27CD23F68, &unk_21A3B2F30);
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v29 = v0[20];
        v27 = sub_21A3B1E1C();
        v28 = v30;
        (*(v26 + 8))(v29, v25);
      }

      v32 = v0[41];
      v31 = v0[42];
      v33 = v0[38];
      v34 = v0[35];
      v36 = v0[32];
      v35 = v0[33];
      v37 = v0[25];
      sub_21A363DB8(v0[40], v0[24], v27, v28, v35);
      sub_21A365D1C(v37, &qword_27CD23F70, &unk_21A3B4D70);
      v38 = *v67;
      (*v67)(v32, v33);
      sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
      v38(v31, v33);
      v39 = *v66;
      if ((*v66)(v35, 1, v34))
      {
        sub_21A365D1C(v0[33], &qword_27CD23F78, &unk_21A3B2F40);
        v40 = 1;
      }

      else
      {
        sub_21A365B98(v0[33], v0[34]);
        v40 = 0;
      }

      v41 = v0[34];
      v42 = v0[35];
      (*v65)(v41, v40, 1, v42);
      sub_21A361318(v0 + 12);
      if (v39(v41, 1, v42) == 1)
      {
        sub_21A365D1C(v0[34], &qword_27CD23F78, &unk_21A3B2F40);
      }

      else
      {
        sub_21A365B98(v0[34], v0[37]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = v70;
        }

        else
        {
          v43 = sub_21A39363C(0, v70[2] + 1, 1, v70);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_21A39363C(v44 > 1, v45 + 1, 1, v43);
        }

        v46 = v0[37];
        v43[2] = v45 + 1;
        v70 = v43;
        sub_21A365B98(v46, v43 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v45);
      }

      v5 = v80 + v64;
      v2 = v82 - 1;
    }

    while (v82 != 1);
    v47 = v0[46];

    v48 = v70;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  v50 = v0[41];
  v49 = v0[42];
  v51 = v0[40];
  v52 = v0[37];
  v54 = v0[33];
  v53 = v0[34];
  v56 = v0[31];
  v55 = v0[32];
  v57 = v0[30];
  v77 = v0[29];
  v79 = v0[28];
  v81 = v0[25];
  v83 = v0[24];
  v85 = v0[23];
  v86 = v0[20];

  v58 = v0[1];

  return v58(v48);
}

uint64_t sub_21A386AA4()
{
  v34 = v0;
  sub_21A361318(v0 + 7);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = sub_21A3B21FC();
  sub_21A365DC4(v5, qword_27CD24AB0);
  v6 = v1;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[47];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v10 = 138543618;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v14;
    *v11 = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_21A3AF0A8(0xD000000000000021, 0x800000021A3B53E0, &v33);
    _os_log_impl(&dword_21A35E000, v7, v8, "Unable to hydrate due to error: %{public}@, for: %{public}s", v10, 0x16u);
    sub_21A365D1C(v11, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v11, -1, -1);
    sub_21A361318(v12);
    MEMORY[0x21CED8F60](v12, -1, -1);
    MEMORY[0x21CED8F60](v10, -1, -1);
  }

  v15 = v0[47];
  v16 = v0[41];
  v17 = v0[42];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[33];
  v21 = v0[34];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[30];
  v27 = v0[29];
  v28 = v0[28];
  v29 = v0[25];
  v30 = v0[24];
  v31 = v0[23];
  v32 = v0[20];
  sub_21A3B18BC();
  sub_21A380CDC(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_21A386E00(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_21A3689C0;

  return sub_21A385CB0(v3, v4, v5);
}

unint64_t sub_21A386EC0()
{
  result = qword_27CD246D8;
  if (!qword_27CD246D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246D8);
  }

  return result;
}

unint64_t sub_21A386F18()
{
  result = qword_27CD246E0;
  if (!qword_27CD246E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246E0);
  }

  return result;
}

uint64_t sub_21A386FBC()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24BB8);
  sub_21A365DC4(v12, qword_27CD24BB8);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A38719C()
{
  v0 = sub_21A365B50(&qword_27CD24700, &qword_21A3B5608);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD24708, &qword_21A3B5610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A388698();
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24710, &qword_21A3B5640);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24718, &unk_21A3B5648);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A38738C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A387450, 0, 0);
}

uint64_t sub_21A387450()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[16] = v1[1];
  v0[17] = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD00000000000001BLL, 0x800000021A3B5550, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_21A3876A4;
  v12 = v0[15];
  v13 = v0[11];

  return sub_21A39B130(v12);
}

uint64_t sub_21A3876A4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_21A378434;
  }

  else
  {
    v3 = sub_21A3877B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A3877B8()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  v6 = *v4;
  v7 = v4[1];
  v8 = (v5 + *(v0[12] + 20));

  sub_21A3B1A1C();
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[9];

  *v8 = v9;
  v8[1] = v10;
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  sub_21A3B187C();
  v12 = *sub_21A360CEC(v0 + 2, v0[5]);
  v13 = swift_task_alloc();
  *(v13 + 16) = v5;
  v14 = *(v12 + 16);
  v15 = swift_task_alloc();
  *(v15 + 16) = sub_21A367634;
  *(v15 + 24) = v13;
  v16 = *(*v14 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v17));
  sub_21A36763C(v14 + v16);
  if (v1)
  {

    os_unfair_lock_unlock((v14 + v17));
  }

  else
  {
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];
    v21 = v0[10];
    os_unfair_lock_unlock((v14 + v17));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8);
    sub_21A3B19BC();
    sub_21A36769C(v18, type metadata accessor for RecipeEntity);
    sub_21A36769C(v20, type metadata accessor for CookingSupportAppIntentInvocation);

    v22 = v0[1];

    v22();
  }
}

uint64_t sub_21A387A1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E50 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24BB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A387AC8(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_21A3785FC;

  return sub_21A38738C(a1);
}

double sub_21A387B74@<D0>(_OWORD *a1@<X8>)
{
  sub_21A387C00(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_21A387BB4(uint64_t a1)
{
  v2 = sub_21A388698();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A387C00@<X0>(char **a1@<X8>)
{
  v80 = a1;
  v86 = sub_21A3B1C4C();
  v88 = *(v86 - 8);
  v1 = *(v88 + 64);
  MEMORY[0x28223BE20](v86, v2);
  v85 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v83 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v84 = &v65 - v10;
  v11 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v82 = &v65 - v14;
  v15 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v87 = &v65 - v18;
  v19 = sub_21A3B20CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21A3B212C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v28 = sub_21A3B24DC();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v31 = sub_21A3B20EC();
  v77 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v81 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *(v20 + 104);
  v69 = *MEMORY[0x277CC9110];
  v36 = v69;
  v70 = v19;
  v37(v24, v69, v19);
  v71 = v37;
  v72 = v20 + 104;
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v37(v24, v36, v19);
  v38 = v87;
  sub_21A3B20FC();
  v39 = *(v32 + 56);
  v76 = v32 + 56;
  v78 = v39;
  v39(v38, 0, 1, v31);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v82, 1, 1, v40);
  v41 = sub_21A3B19AC();
  v66 = v41;
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v67 = v43;
  v68 = v42 + 56;
  v43(v84, 1, 1, v41);
  v43(v83, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v92 = 0u;
  v93 = 0u;
  v94 = 0;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  v65 = sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  v79 = sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v46 = sub_21A3B188C();
  *&v92 = v44;
  *(&v92 + 1) = v45;
  *&v93 = v46;
  v73 = *MEMORY[0x277CBA308];
  v47 = *(v88 + 104);
  v88 += 104;
  v74 = v47;
  v47(v85);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v48 = v84;
  v82 = sub_21A3B1A4C();
  v75 = sub_21A365B50(&qword_27CD24380, &unk_21A3B45D8);
  sub_21A3B247C();
  sub_21A3B211C();
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v71(v24, v69, v70);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v51(v24, v49, v50);
  v52 = v87;
  sub_21A3B20FC();
  v78(v52, 0, 1, v77);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v53 = v66;
  v54 = v67;
  v67(v48, 1, 1, v66);
  v54(v83, 1, 1, v53);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v55 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v56 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24388, &qword_21A3B45E8);
  swift_getKeyPath();
  v57 = sub_21A3B1C7C();
  sub_21A365B50(&qword_27CD24390, &qword_21A3B4618);
  swift_getKeyPath();
  v58 = sub_21A3B1C7C();
  *&v92 = v55;
  *(&v92 + 1) = v56;
  *&v93 = v57;
  *(&v93 + 1) = v58;
  v74(v85, v73, v86);
  sub_21A3792E0();
  sub_21A36AA54();
  v59 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v60 = sub_21A3B188C();
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v61 = sub_21A3B188C();
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  v62 = sub_21A3B188C();
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v64 = v80;
  *v80 = v82;
  v64[1] = v59;
  v64[2] = v60;
  v64[3] = v61;
  v64[4] = v62;
  v64[5] = result;
  return result;
}

unint64_t sub_21A388698()
{
  result = qword_27CD246F8;
  if (!qword_27CD246F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD246F8);
  }

  return result;
}

unint64_t sub_21A3886F0()
{
  result = qword_27CD24720;
  if (!qword_27CD24720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24720);
  }

  return result;
}

unint64_t sub_21A388748()
{
  result = qword_27CD24728;
  if (!qword_27CD24728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24728);
  }

  return result;
}

uint64_t sub_21A3887EC()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24BD0);
  sub_21A365DC4(v12, qword_27CD24BD0);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3889D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A388A94, 0, 0);
}

uint64_t sub_21A388A94()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[13] = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000014, 0x800000021A3B5770, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_21A388CC8;
  v12 = v0[12];
  v13 = v0[8];

  return sub_21A39BE74(v12);
}

uint64_t sub_21A388CC8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_21A366834;
  }

  else
  {
    v3 = sub_21A388DDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A388DDC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v0[9] + 20);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v8 = *sub_21A360CEC(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_21A367634;
  *(v11 + 24) = v9;
  v12 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v13));
  sub_21A36763C(v10 + v12);
  if (v1)
  {

    os_unfair_lock_unlock((v10 + v13));
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[7];
    os_unfair_lock_unlock((v10 + v13));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8);
    sub_21A3B19BC();
    sub_21A36769C(v14, type metadata accessor for RecipeEntity);
    sub_21A36769C(v16, type metadata accessor for CookingSupportAppIntentInvocation);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_21A38901C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E58 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24BD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3890C4()
{
  v0 = sub_21A365B50(&qword_27CD24748, &qword_21A3B57B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD24750, &qword_21A3B57C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24758, &unk_21A3B57F0);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A38925C(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3889D0(a1);
}

double sub_21A389308@<D0>(uint64_t a1@<X8>)
{
  sub_21A389398(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A38934C(uint64_t a1)
{
  v2 = sub_21A389AE8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A389398@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = v52 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52[0] = v52 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v60 = v52 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v52[1] = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *MEMORY[0x277CC9110];
  v38 = *(v21 + 104);
  v38(v25, v37, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v38(v25, v37, v20);
  v39 = v60;
  sub_21A3B20FC();
  (*(v33 + 56))(v39, 0, 1, v32);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v52[0], 1, 1, v40);
  v41 = sub_21A3B19AC();
  v42 = *(*(v41 - 8) + 56);
  v42(v53, 1, 1, v41);
  v42(v55, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  *&v61 = v43;
  *(&v61 + 1) = v44;
  *&v62 = v45;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v46 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v51 = v59;
  *v59 = v46;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  v51[4] = result;
  return result;
}

unint64_t sub_21A389AE8()
{
  result = qword_27CD24740;
  if (!qword_27CD24740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24740);
  }

  return result;
}

uint64_t sub_21A389B3C()
{
  v0 = sub_21A365B50(&qword_27CD248D8, &qword_21A3B5C70);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v16 - v4;
  v6 = sub_21A365B50(&qword_27CD248E0, &qword_21A3B5C78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  sub_21A37612C();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v9 = sub_21A3B1AAC();
  v10 = *(v1 + 8);
  v10(v5, v0);
  sub_21A3B1B2C();
  v11 = sub_21A3B1AAC();
  v10(v5, v0);
  sub_21A3B1B2C();
  v12 = sub_21A3B1AAC();
  v10(v5, v0);
  sub_21A365B50(&qword_27CD248E8, qword_21A3B5C80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A3B5800;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  v14 = sub_21A3B1A9C();

  return v14;
}

uint64_t sub_21A389E38(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15 - v11;
  sub_21A390364(a1, &v15 - v11);
  v13 = *a2;
  sub_21A390364(v12, v9);
  sub_21A3B1A2C();
  return sub_21A3903D4(v12);
}

uint64_t sub_21A389F4C()
{
  v0 = sub_21A365B50(&qword_27CD248C8, &qword_21A3B5C38);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v12 - v4;
  sub_21A390214();
  sub_21A3B1B2C();
  v6 = sub_21A3B1AAC();
  v7 = *(v1 + 8);
  v7(v5, v0);
  sub_21A3B1B2C();
  v8 = sub_21A3B1AAC();
  v7(v5, v0);
  sub_21A365B50(&qword_27CD248D0, &qword_21A3B5C40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21A3B5810;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = sub_21A3B1A9C();

  return v10;
}

uint64_t sub_21A38A110()
{
  v0 = sub_21A365B50(&qword_27CD248B8, &qword_21A3B5C28);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v13 - v4;
  sub_21A37F168();
  sub_21A3B1B2C();
  v6 = sub_21A3B1AAC();
  v7 = *(v1 + 8);
  v7(v5, v0);
  sub_21A3B1B2C();
  v8 = sub_21A3B1AAC();
  v7(v5, v0);
  sub_21A3B1B2C();
  v9 = sub_21A3B1AAC();
  v7(v5, v0);
  sub_21A365B50(&qword_27CD248C0, &qword_21A3B5C30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21A3B5800;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  v11 = sub_21A3B1A9C();

  return v11;
}

uint64_t sub_21A38A334(uint64_t a1)
{
  v24 = a1;
  v1 = sub_21A365B50(&qword_27CD248A0, &qword_21A3B5C10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v4 = sub_21A365B50(&qword_27CD248A8, &qword_21A3B5C18);
  v23 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  sub_21A37465C();
  sub_21A3B1B2C();
  v22 = sub_21A3B1AAC();
  v10 = *(v5 + 8);
  v10(v9, v4);
  v25 = v5 + 8;
  sub_21A3B1B2C();
  v21 = sub_21A3B1AAC();
  v10(v9, v4);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v20 = sub_21A3B1AAC();
  v11 = v23;
  v10(v9, v23);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v19 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v12 = sub_21A3B1AAC();
  v10(v9, v23);
  sub_21A365B50(&qword_27CD248B0, &qword_21A3B5C20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A3B5820;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  v15 = v19;
  *(v13 + 48) = v20;
  *(v13 + 56) = v15;
  *(v13 + 64) = v12;
  v16 = sub_21A3B1A9C();

  return v16;
}

uint64_t sub_21A38A83C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_21A3B1B1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_21A3B1A8C();

  a4(v12);
  sub_21A3B1B0C();
  v13 = sub_21A3B1AFC();
  (*(v7 + 8))(v11, v6);
  sub_21A365B50(&qword_27CD24788, &qword_21A3B5940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21A3B3530;
  *(v14 + 32) = v13;
  v15 = sub_21A3B1AEC();

  return v15;
}

uint64_t sub_21A38A9BC(uint64_t a1)
{
  v31 = a1;
  v1 = sub_21A365B50(&qword_27CD24888, &qword_21A3B5BD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v4 = sub_21A365B50(&qword_27CD24890, &qword_21A3B5BD8);
  v32 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - v8;
  sub_21A37D490();
  sub_21A3B1B2C();
  v29 = sub_21A3B1AAC();
  v10 = *(v5 + 8);
  v10(v9, v4);
  sub_21A3B1B2C();
  v28 = sub_21A3B1AAC();
  v10(v9, v4);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v30 = sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v27 = sub_21A3B1AAC();
  v11 = v32;
  v10(v9, v32);
  sub_21A3B1B2C();
  v26 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A3B1B2C();
  v25 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v24 = sub_21A3B1AAC();
  v12 = v32;
  v10(v9, v32);
  sub_21A3B1B2C();
  v23 = sub_21A3B1AAC();
  v10(v9, v12);
  sub_21A3B1B2C();
  v22 = sub_21A3B1AAC();
  v10(v9, v12);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v13 = sub_21A3B1AAC();
  v10(v9, v32);
  sub_21A365B50(&qword_27CD24898, &qword_21A3B5BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21A3B5830;
  v15 = v28;
  *(v14 + 32) = v29;
  *(v14 + 40) = v15;
  v16 = v26;
  *(v14 + 48) = v27;
  *(v14 + 56) = v16;
  v17 = v24;
  *(v14 + 64) = v25;
  *(v14 + 72) = v17;
  v18 = v22;
  *(v14 + 80) = v23;
  *(v14 + 88) = v18;
  *(v14 + 96) = v13;
  v19 = sub_21A3B1A9C();

  return v19;
}

uint64_t sub_21A38AFF8(uint64_t a1)
{
  v25 = sub_21A365B50(&qword_27CD24870, &qword_21A3B5B90);
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25, v4);
  v6 = v20 - v5;
  v7 = sub_21A365B50(&qword_27CD24878, &qword_21A3B5B98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  sub_21A379334();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v26 = sub_21A36EB30();
  v20[1] = a1;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v24 = sub_21A3B1AAC();
  v10 = *(v2 + 8);
  v11 = v25;
  v10(v6, v25);
  sub_21A3B1B2C();
  v23 = sub_21A3B1AAC();
  v10(v6, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v12 = v25;
  v10(v6, v25);
  sub_21A3B1B2C();
  v21 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v13 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A3B1B2C();
  v14 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A365B50(&qword_27CD24880, &qword_21A3B5BA0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21A3B5840;
  v16 = v23;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  v17 = v21;
  *(v15 + 48) = v22;
  *(v15 + 56) = v17;
  *(v15 + 64) = v13;
  *(v15 + 72) = v14;
  v18 = sub_21A3B1A9C();

  return v18;
}

uint64_t sub_21A38B53C(uint64_t a1)
{
  v25 = sub_21A365B50(&qword_27CD24858, &qword_21A3B5B50);
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25, v4);
  v6 = v20 - v5;
  v7 = sub_21A365B50(&qword_27CD24860, &qword_21A3B5B58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  sub_21A388698();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v26 = sub_21A36EB30();
  v20[1] = a1;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v24 = sub_21A3B1AAC();
  v10 = *(v2 + 8);
  v11 = v25;
  v10(v6, v25);
  sub_21A3B1B2C();
  v23 = sub_21A3B1AAC();
  v10(v6, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v12 = v25;
  v10(v6, v25);
  sub_21A3B1B2C();
  v21 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v13 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A3B1B2C();
  v14 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A365B50(&qword_27CD24868, &qword_21A3B5B60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21A3B5840;
  v16 = v23;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  v17 = v21;
  *(v15 + 48) = v22;
  *(v15 + 56) = v17;
  *(v15 + 64) = v13;
  *(v15 + 72) = v14;
  v18 = sub_21A3B1A9C();

  return v18;
}

uint64_t sub_21A38BA40(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  sub_21A3B1A8C();
  return sub_21A3B1A2C();
}

uint64_t sub_21A38BAD8(uint64_t a1)
{
  v41 = a1;
  v1 = sub_21A365B50(&qword_27CD24840, &qword_21A3B5B10);
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v31 - v5;
  v7 = sub_21A365B50(&qword_27CD24848, &qword_21A3B5B18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  sub_21A3675E0();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v10 = sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v39 = sub_21A3B1AAC();
  v11 = v43;
  v12 = *(v44 + 8);
  v44 += 8;
  v42 = v12;
  v12(v6, v43);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v40 = v10;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v38 = sub_21A3B1AAC();
  v42(v6, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v37 = sub_21A3B1AAC();
  v13 = v43;
  v42(v6, v43);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v36 = sub_21A3B1AAC();
  v14 = v13;
  v15 = v42;
  v42(v6, v14);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v35 = sub_21A3B1AAC();
  v15(v6, v43);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v34 = sub_21A3B1AAC();
  v42(v6, v43);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v33 = sub_21A3B1AAC();
  v16 = v42;
  v17 = v43;
  v42(v6, v43);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v41 = sub_21A3B1AAC();
  v16(v6, v17);
  sub_21A3B1B2C();
  v40 = sub_21A3B1AAC();
  v16(v6, v17);
  sub_21A3B1B2C();
  v32 = sub_21A3B1AAC();
  v16(v6, v17);
  sub_21A3B1B2C();
  v31 = sub_21A3B1AAC();
  v16(v6, v17);
  sub_21A3B1B2C();
  v18 = sub_21A3B1AAC();
  v16(v6, v17);
  sub_21A3B1B2C();
  v19 = sub_21A3B1AAC();
  v16(v6, v17);
  sub_21A3B1B2C();
  v20 = sub_21A3B1AAC();
  v16(v6, v17);
  sub_21A365B50(&qword_27CD24850, &qword_21A3B5B20);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21A3B5850;
  v22 = v38;
  *(v21 + 32) = v39;
  *(v21 + 40) = v22;
  v23 = v36;
  *(v21 + 48) = v37;
  *(v21 + 56) = v23;
  v24 = v34;
  *(v21 + 64) = v35;
  *(v21 + 72) = v24;
  v26 = v40;
  v25 = v41;
  *(v21 + 80) = v33;
  *(v21 + 88) = v25;
  v27 = v31;
  v28 = v32;
  *(v21 + 96) = v26;
  *(v21 + 104) = v28;
  *(v21 + 112) = v27;
  *(v21 + 120) = v18;
  *(v21 + 128) = v19;
  *(v21 + 136) = v20;
  v29 = sub_21A3B1A9C();

  return v29;
}

uint64_t sub_21A38C5B0(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24828, &qword_21A3B5AD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v5 = sub_21A365B50(&qword_27CD24830, &qword_21A3B5AD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  sub_21A390268();
  sub_21A3B1B2C();
  v28 = sub_21A3B1AAC();
  v11 = *(v6 + 8);
  v11(v10, v5);
  sub_21A3B1B2C();
  v27 = sub_21A3B1AAC();
  v29 = v5;
  v33 = v11;
  v11(v10, v5);
  v30 = v6 + 8;
  sub_21A3B1B2C();
  v26 = sub_21A3B1AAC();
  v11(v10, v5);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v31 = sub_21A36E89C();
  v32 = a1;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v25 = sub_21A3B1AAC();
  v12 = v29;
  v33(v10, v29);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v24 = sub_21A3B1AAC();
  v13 = v33;
  v33(v10, v12);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v23 = sub_21A3B1AAC();
  v14 = v29;
  v13(v10, v29);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v15 = sub_21A3B1AAC();
  v33(v10, v14);
  sub_21A365B50(&qword_27CD24838, &qword_21A3B5AE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21A3B5860;
  v17 = v27;
  *(v16 + 32) = v28;
  *(v16 + 40) = v17;
  v18 = v25;
  *(v16 + 48) = v26;
  *(v16 + 56) = v18;
  v19 = v23;
  *(v16 + 64) = v24;
  *(v16 + 72) = v19;
  *(v16 + 80) = v15;
  v20 = sub_21A3B1A9C();

  return v20;
}

uint64_t sub_21A38CBFC(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24810, &qword_21A3B5A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v5 = sub_21A365B50(&qword_27CD24818, &qword_21A3B5A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v37 - v9;
  sub_21A3902BC();
  sub_21A3B1B2C();
  v56 = sub_21A3B1AAC();
  v11 = *(v6 + 8);
  v11(v10, v5);
  sub_21A3B1B2C();
  v55 = sub_21A3B1AAC();
  v60 = v5;
  v11(v10, v5);
  v61 = v6 + 8;
  v57 = v11;
  sub_21A3B1B2C();
  v54 = sub_21A3B1AAC();
  v11(v10, v5);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v12 = sub_21A36E89C();
  v58 = a1;
  v59 = v12;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v53 = sub_21A3B1AAC();
  v13 = v60;
  v14 = v57;
  v57(v10, v60);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v52 = sub_21A3B1AAC();
  v14(v10, v13);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v51 = sub_21A3B1AAC();
  v15 = v57;
  v57(v10, v60);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v50 = sub_21A3B1AAC();
  v16 = v60;
  v15(v10, v60);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v49 = sub_21A3B1AAC();
  v17 = v16;
  v18 = v57;
  v57(v10, v17);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v48 = sub_21A3B1AAC();
  v19 = v60;
  v18(v10, v60);
  sub_21A3B1B2C();
  v47 = sub_21A3B1AAC();
  v18(v10, v19);
  sub_21A3B1B2C();
  v46 = sub_21A3B1AAC();
  v18(v10, v19);
  sub_21A3B1B2C();
  v45 = sub_21A3B1AAC();
  v18(v10, v19);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v44 = sub_21A3B1AAC();
  v18(v10, v60);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v43 = sub_21A3B1AAC();
  v18(v10, v60);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v42 = sub_21A3B1AAC();
  v20 = v60;
  v18(v10, v60);
  sub_21A3B1B2C();
  v41 = sub_21A3B1AAC();
  v18(v10, v20);
  sub_21A3B1B2C();
  v40 = sub_21A3B1AAC();
  v18(v10, v20);
  sub_21A3B1B2C();
  v39 = sub_21A3B1AAC();
  v18(v10, v20);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v38 = sub_21A3B1AAC();
  v57(v10, v60);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v37 = sub_21A3B1AAC();
  v21 = v60;
  v22 = v57;
  v57(v10, v60);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v23 = sub_21A3B1AAC();
  v22(v10, v21);
  sub_21A365B50(&qword_27CD24820, &qword_21A3B5AA0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21A3B5870;
  v25 = v55;
  *(v24 + 32) = v56;
  *(v24 + 40) = v25;
  v26 = v53;
  *(v24 + 48) = v54;
  *(v24 + 56) = v26;
  v27 = v51;
  *(v24 + 64) = v52;
  *(v24 + 72) = v27;
  v28 = v49;
  *(v24 + 80) = v50;
  *(v24 + 88) = v28;
  v29 = v47;
  *(v24 + 96) = v48;
  *(v24 + 104) = v29;
  v30 = v45;
  *(v24 + 112) = v46;
  *(v24 + 120) = v30;
  v31 = v43;
  *(v24 + 128) = v44;
  *(v24 + 136) = v31;
  v32 = v41;
  *(v24 + 144) = v42;
  *(v24 + 152) = v32;
  v33 = v39;
  *(v24 + 160) = v40;
  *(v24 + 168) = v33;
  v34 = v37;
  *(v24 + 176) = v38;
  *(v24 + 184) = v34;
  *(v24 + 192) = v23;
  v35 = sub_21A3B1A9C();

  return v35;
}

uint64_t sub_21A38DB74(uint64_t a1)
{
  v24 = a1;
  v1 = sub_21A365B50(&qword_27CD247F8, &qword_21A3B5A50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v4 = sub_21A365B50(&qword_27CD24800, &qword_21A3B5A58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  sub_21A371C0C();
  sub_21A3B1B2C();
  v31 = sub_21A3B1AAC();
  v10 = *(v5 + 8);
  v10(v9, v4);
  sub_21A3B1B2C();
  v30 = sub_21A3B1AAC();
  v10(v9, v4);
  sub_21A3B1B2C();
  v29 = sub_21A3B1AAC();
  v10(v9, v4);
  sub_21A3B1B2C();
  v28 = sub_21A3B1AAC();
  v21 = v4;
  v10(v9, v4);
  sub_21A3B1B2C();
  v27 = sub_21A3B1AAC();
  v10(v9, v4);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v23 = sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v26 = sub_21A3B1AAC();
  v11 = v21;
  v10(v9, v21);
  sub_21A3B1B2C();
  v25 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A3B1B2C();
  v22 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v12 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A365B50(&qword_27CD24808, &qword_21A3B5A60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A3B5830;
  v14 = v30;
  *(v13 + 32) = v31;
  *(v13 + 40) = v14;
  v15 = v28;
  *(v13 + 48) = v29;
  *(v13 + 56) = v15;
  v16 = v26;
  *(v13 + 64) = v27;
  *(v13 + 72) = v16;
  v17 = v22;
  *(v13 + 80) = v25;
  *(v13 + 88) = v17;
  *(v13 + 96) = v12;
  v18 = sub_21A3B1A9C();

  return v18;
}

uint64_t sub_21A38E150(uint64_t a1)
{
  v24 = a1;
  v1 = sub_21A365B50(&qword_27CD247E0, &qword_21A3B5A10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v4 = sub_21A365B50(&qword_27CD247E8, &qword_21A3B5A18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  sub_21A37EEBC();
  sub_21A3B1B2C();
  v31 = sub_21A3B1AAC();
  v10 = *(v5 + 8);
  v10(v9, v4);
  sub_21A3B1B2C();
  v30 = sub_21A3B1AAC();
  v10(v9, v4);
  sub_21A3B1B2C();
  v29 = sub_21A3B1AAC();
  v10(v9, v4);
  sub_21A3B1B2C();
  v28 = sub_21A3B1AAC();
  v21 = v4;
  v10(v9, v4);
  sub_21A3B1B2C();
  v27 = sub_21A3B1AAC();
  v10(v9, v4);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v23 = sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v26 = sub_21A3B1AAC();
  v11 = v21;
  v10(v9, v21);
  sub_21A3B1B2C();
  v25 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A3B1B2C();
  v22 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v12 = sub_21A3B1AAC();
  v10(v9, v11);
  sub_21A365B50(&qword_27CD247F0, &qword_21A3B5A20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A3B5830;
  v14 = v30;
  *(v13 + 32) = v31;
  *(v13 + 40) = v14;
  v15 = v28;
  *(v13 + 48) = v29;
  *(v13 + 56) = v15;
  v16 = v26;
  *(v13 + 64) = v27;
  *(v13 + 72) = v16;
  v17 = v22;
  *(v13 + 80) = v25;
  *(v13 + 88) = v17;
  *(v13 + 96) = v12;
  v18 = sub_21A3B1A9C();

  return v18;
}

uint64_t sub_21A38E73C(uint64_t a1)
{
  v24 = a1;
  v1 = sub_21A365B50(&qword_27CD247C8, &qword_21A3B59D0);
  v23 = *(v1 - 8);
  v2 = *(v23 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v17 - v4;
  v6 = sub_21A365B50(&qword_27CD247D0, &qword_21A3B59D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  sub_21A390310();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v19 = sub_21A39043C(&qword_27CD24100, type metadata accessor for InstructionEntity);
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v9 = v23 + 8;
  v17 = *(v23 + 8);
  v18 = v1;
  v17(v5, v1);
  v23 = v9;
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v21 = sub_21A3B1AAC();
  v10 = v17;
  v17(v5, v1);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v20 = sub_21A3B1AAC();
  v11 = v18;
  v10(v5, v18);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v12 = sub_21A3B1AAC();
  v10(v5, v11);
  sub_21A365B50(&qword_27CD247D8, &qword_21A3B59E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A3B5880;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  *(v13 + 48) = v20;
  *(v13 + 56) = v12;
  v15 = sub_21A3B1A9C();

  return v15;
}

uint64_t sub_21A38EC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionEntity();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15 - v11;
  sub_21A36E29C(a1, &v15 - v11);
  v13 = *(a2 + 8);
  sub_21A36E29C(v12, v9);
  sub_21A3B1A2C();
  return sub_21A390484(v12);
}

uint64_t sub_21A38ED34()
{
  v0 = sub_21A3B1B1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_21A39043C(&qword_27CD24100, type metadata accessor for InstructionEntity);
  sub_21A3B1A8C();

  sub_21A390310();
  sub_21A3B1B0C();
  v6 = sub_21A3B1AFC();
  (*(v1 + 8))(v5, v0);
  sub_21A365B50(&qword_27CD24788, &qword_21A3B5940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21A3B3530;
  *(v7 + 32) = v6;
  v8 = sub_21A3B1AEC();

  return v8;
}

uint64_t sub_21A38EED4()
{
  v0 = sub_21A3B1ACC();
  v1 = sub_21A3B1ACC();
  v2 = sub_21A3B1ACC();
  v3 = sub_21A3B1ACC();
  sub_21A365B50(&qword_27CD24790, &qword_21A3B5948);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21A3B5880;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_21A3B1ABC();

  return v5;
}

uint64_t sub_21A38EFAC(uint64_t a1)
{
  v25 = sub_21A365B50(&qword_27CD247B0, &qword_21A3B5990);
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25, v4);
  v6 = v20 - v5;
  v7 = sub_21A365B50(&qword_27CD247B8, &qword_21A3B5998);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  sub_21A3731E8();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  v26 = sub_21A36E89C();
  v20[1] = a1;
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v24 = sub_21A3B1AAC();
  v10 = *(v2 + 8);
  v11 = v25;
  v10(v6, v25);
  sub_21A3B1B2C();
  v23 = sub_21A3B1AAC();
  v10(v6, v11);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v22 = sub_21A3B1AAC();
  v12 = v25;
  v10(v6, v25);
  sub_21A3B1B2C();
  v21 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v13 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A3B1B2C();
  v14 = sub_21A3B1AAC();
  v10(v6, v12);
  sub_21A365B50(&qword_27CD247C0, &qword_21A3B59A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21A3B5840;
  v16 = v23;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  v17 = v21;
  *(v15 + 48) = v22;
  *(v15 + 56) = v17;
  *(v15 + 64) = v13;
  *(v15 + 72) = v14;
  v18 = sub_21A3B1A9C();

  return v18;
}

uint64_t sub_21A38F4FC()
{
  v0 = sub_21A365B50(&qword_27CD24798, &qword_21A3B5950);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v15 - v4;
  v6 = sub_21A365B50(&qword_27CD247A0, &qword_21A3B5958);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  sub_21A389AE8();
  sub_21A3B1B5C();
  sub_21A3B1B4C();
  swift_getKeyPath();
  sub_21A36E89C();
  sub_21A3B1A8C();

  sub_21A3B1B3C();

  sub_21A3B1B4C();
  sub_21A3B1B6C();
  v9 = sub_21A3B1AAC();
  v10 = *(v1 + 8);
  v10(v5, v0);
  sub_21A3B1B2C();
  v11 = sub_21A3B1AAC();
  v10(v5, v0);
  sub_21A365B50(&qword_27CD247A8, &qword_21A3B5960);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21A3B5810;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  v13 = sub_21A3B1A9C();

  return v13;
}

uint64_t sub_21A38F7F0()
{
  v0 = sub_21A3B1ACC();
  sub_21A365B50(&qword_27CD24790, &qword_21A3B5948);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21A3B3530;
  *(v1 + 32) = v0;
  v2 = sub_21A3B1ABC();

  return v2;
}

uint64_t sub_21A38F878()
{
  if (qword_27CD23E60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21A38F8E4()
{
  v0 = sub_21A3B1B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38 = sub_21A3759E8();
  *(&v38 + 1) = v6;
  *&v39 = v7;
  *(&v39 + 1) = v8;
  sub_21A37612C();
  sub_21A3B1BAC();
  v37 = sub_21A3B1B8C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_21A365B50(&qword_27CD24250, &qword_21A3B3E88);
  sub_21A3B18EC();
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  sub_21A3B18DC();
  v10 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_21A3B18DC();
  v11 = sub_21A3B188C();
  *&v38 = v10;
  *(&v38 + 1) = v11;
  sub_21A390214();
  sub_21A3B1BAC();
  v36 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_21A3B18DC();
  v12 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_21A3B18DC();
  v13 = sub_21A3B188C();
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_21A3B18DC();
  v14 = sub_21A3B188C();
  *&v38 = v12;
  *(&v38 + 1) = v13;
  *&v39 = v14;
  sub_21A37F168();
  sub_21A3B1BAC();
  v35 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A373EE8(&v38);
  sub_21A37465C();
  sub_21A3B1BAC();
  v34 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A37CD40(&v38);
  sub_21A37D490();
  sub_21A3B1BAC();
  v33 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A378848(&v38);
  sub_21A379334();
  sub_21A3B1BAC();
  v32 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A387C00(&v38);
  sub_21A388698();
  sub_21A3B1BAC();
  v31 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A366E3C(&v38);
  sub_21A3675E0();
  sub_21A3B1BAC();
  v30 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A3911D8(&v38);
  sub_21A390268();
  sub_21A3B1BAC();
  v29 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A3ABBB0(&v38);
  sub_21A3902BC();
  sub_21A3B1BAC();
  v15 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A3714BC(&v38);
  sub_21A371C0C();
  sub_21A3B1BAC();
  v16 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A37E76C(&v38);
  sub_21A37EEBC();
  sub_21A3B1BAC();
  v17 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A394708(&v38);
  sub_21A390310();
  sub_21A3B1BAC();
  v18 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A372A98(&v38);
  sub_21A3731E8();
  sub_21A3B1BAC();
  v19 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A389398(&v38);
  sub_21A389AE8();
  sub_21A3B1BAC();
  v20 = sub_21A3B1B8C();
  v9(v5, v0);
  sub_21A365B50(&qword_27CD24780, "X");
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21A3B5890;
  v22 = v36;
  *(v21 + 32) = v37;
  *(v21 + 40) = v22;
  v23 = v34;
  *(v21 + 48) = v35;
  *(v21 + 56) = v23;
  v24 = v32;
  *(v21 + 64) = v33;
  *(v21 + 72) = v24;
  v25 = v30;
  *(v21 + 80) = v31;
  *(v21 + 88) = v25;
  *(v21 + 96) = v29;
  *(v21 + 104) = v15;
  *(v21 + 112) = v16;
  *(v21 + 120) = v17;
  *(v21 + 128) = v18;
  *(v21 + 136) = v19;
  *(v21 + 144) = v20;
  v26 = sub_21A3B1B7C();

  return v26;
}

unint64_t sub_21A390214()
{
  result = qword_27CD24760;
  if (!qword_27CD24760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24760);
  }

  return result;
}

unint64_t sub_21A390268()
{
  result = qword_27CD24768;
  if (!qword_27CD24768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24768);
  }

  return result;
}

unint64_t sub_21A3902BC()
{
  result = qword_27CD24770;
  if (!qword_27CD24770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24770);
  }

  return result;
}

unint64_t sub_21A390310()
{
  result = qword_27CD24778;
  if (!qword_27CD24778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24778);
  }

  return result;
}

uint64_t sub_21A390364(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A3903D4(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A39043C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A390484(uint64_t a1)
{
  v2 = type metadata accessor for InstructionEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_21A3904E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_21A3B1A1C();
  result = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

unint64_t sub_21A390534()
{
  result = qword_27CD248F0;
  if (!qword_27CD248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD248F0);
  }

  return result;
}

unint64_t sub_21A39058C()
{
  result = qword_27CD248F8;
  if (!qword_27CD248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD248F8);
  }

  return result;
}

uint64_t sub_21A390630()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24BF0);
  sub_21A365DC4(v12, qword_27CD24BF0);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A390810(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity();
  v2[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3908D4, 0, 0);
}

uint64_t sub_21A3908D4()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[13] = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000018, 0x800000021A3B5DB0, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_21A390B08;
  v12 = v0[12];
  v13 = v0[8];

  return sub_21A39CB94(v12);
}

uint64_t sub_21A390B08()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_21A366834;
  }

  else
  {
    v3 = sub_21A390C1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A390C1C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v0[9] + 20);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v8 = *sub_21A360CEC(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_21A367634;
  *(v11 + 24) = v9;
  v12 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v13));
  sub_21A36763C(v10 + v12);
  if (v1)
  {

    os_unfair_lock_unlock((v10 + v13));
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[7];
    os_unfair_lock_unlock((v10 + v13));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8);
    sub_21A3B19BC();
    sub_21A36769C(v14, type metadata accessor for RecipeEntity);
    sub_21A36769C(v16, type metadata accessor for CookingSupportAppIntentInvocation);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_21A390E5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E68 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24BF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A390F04()
{
  v0 = sub_21A365B50(&qword_27CD24910, &qword_21A3B5E00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD24918, &qword_21A3B5E08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24920, &unk_21A3B5E38);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A39109C(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A390810(a1);
}

double sub_21A391148@<D0>(uint64_t a1@<X8>)
{
  sub_21A3911D8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A39118C(uint64_t a1)
{
  v2 = sub_21A390268();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A3911D8@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = sub_21A3B1C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v56 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = v52 - v11;
  v12 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v52[0] = v52 - v15;
  v16 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v60 = v52 - v19;
  v20 = sub_21A3B20CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21A3B212C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v29 = sub_21A3B24DC();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B20EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v52[1] = v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v37 = *MEMORY[0x277CC9110];
  v38 = *(v21 + 104);
  v38(v25, v37, v20);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v38(v25, v37, v20);
  v39 = v60;
  sub_21A3B20FC();
  (*(v33 + 56))(v39, 0, 1, v32);
  v40 = type metadata accessor for RecipeEntity();
  (*(*(v40 - 8) + 56))(v52[0], 1, 1, v40);
  v41 = sub_21A3B19AC();
  v42 = *(*(v41 - 8) + 56);
  v42(v53, 1, 1, v41);
  v42(v55, 1, 1, v41);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_21A3B18DC();
  v43 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v44 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v45 = sub_21A3B188C();
  *&v61 = v43;
  *(&v61 + 1) = v44;
  *&v62 = v45;
  (*(v57 + 104))(v56, *MEMORY[0x277CBA308], v58);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8);
  v46 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v51 = v59;
  *v59 = v46;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  v51[4] = result;
  return result;
}

unint64_t sub_21A39192C()
{
  result = qword_27CD24928;
  if (!qword_27CD24928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24928);
  }

  return result;
}

unint64_t sub_21A391984()
{
  result = qword_27CD24930;
  if (!qword_27CD24930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24930);
  }

  return result;
}

uint64_t sub_21A391A5C()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24C08);
  sub_21A365DC4(v12, qword_27CD24C08);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A391C3C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = *(*(sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = sub_21A3B1FFC();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v8 = sub_21A3B1E4C();
  v2[20] = v8;
  v9 = *(v8 - 8);
  v2[21] = v9;
  v10 = *(v9 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v12 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v13 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v14 = type metadata accessor for RecipeEntity();
  v2[29] = v14;
  v15 = *(v14 - 8);
  v2[30] = v15;
  v16 = *(v15 + 64) + 15;
  v2[31] = swift_task_alloc();
  v17 = *(*(sub_21A365B50(&qword_27CD24078, &qword_21A3B3298) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v18 = sub_21A3B205C();
  v2[33] = v18;
  v19 = *(v18 - 8);
  v2[34] = v19;
  v20 = *(v19 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v21 = sub_21A3B1DEC();
  v2[39] = v21;
  v22 = *(v21 - 8);
  v2[40] = v22;
  v23 = *(v22 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A39201C, 0, 0);
}

uint64_t sub_21A39201C()
{
  v1 = v0[12];
  sub_21A3B187C();
  v3 = v0[5];
  v2 = v0[6];
  sub_21A360CEC(v0 + 2, v3);
  v4 = *(MEMORY[0x277CFCD98] + 4);
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_21A3920E0;

  return MEMORY[0x28214FA60](v3, v2);
}

uint64_t sub_21A3920E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_21A392BE4;
  }

  else
  {
    v5 = sub_21A3921F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3921F4()
{
  v1 = v0[44];
  sub_21A361318(v0 + 2);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[40];
    v4 = v0[34];
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v0[44] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v118 = *(v3 + 56);
    v112 = (v4 + 56);
    v115 = (v3 - 8);
    v106 = v4;
    v109 = (v4 + 32);
    v95 = MEMORY[0x277D84F90];
    v7 = v0[45];
    v8 = v5;
    do
    {
      v12 = v0[41];
      v11 = v0[42];
      v13 = v0[39];
      v14 = v0[32];
      v8(v11, v6, v13);
      v8(v12, v11, v13);
      sub_21A3B1F8C();
      v15 = v7;
      v16 = v0[42];
      v17 = v0[39];
      if (v15)
      {
        v10 = v0[32];
        v9 = v0[33];

        (*v115)(v16, v17);
        (*v112)(v10, 1, 1, v9);
        sub_21A365D1C(v10, &qword_27CD24078, &qword_21A3B3298);
      }

      else
      {
        v18 = v0[37];
        v20 = v0[32];
        v19 = v0[33];
        (*v115)(v0[42], v0[39]);
        (*v112)(v20, 0, 1, v19);
        v21 = *v109;
        (*v109)(v18, v20, v19);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = v95;
        }

        else
        {
          v22 = sub_21A3936B4(0, v95[2] + 1, 1, v95, &qword_27CD24938, &qword_21A3B5F88, MEMORY[0x277CFCDA0]);
        }

        v24 = v22[2];
        v23 = v22[3];
        if (v24 >= v23 >> 1)
        {
          v22 = sub_21A3936B4(v23 > 1, v24 + 1, 1, v22, &qword_27CD24938, &qword_21A3B5F88, MEMORY[0x277CFCDA0]);
        }

        v25 = v0[37];
        v26 = v0[33];
        v22[2] = v24 + 1;
        v95 = v22;
        v21(v22 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v24, v25, v26);
      }

      v7 = 0;
      v6 += v118;
      --v2;
    }

    while (v2);
    v27 = v0[44];

    v28 = v95;
    v29 = v95[2];
    if (v29)
    {
      goto LABEL_13;
    }

LABEL_33:

    v35 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v28 = MEMORY[0x277D84F90];
  v29 = *(MEMORY[0x277D84F90] + 16);
  if (!v29)
  {
    goto LABEL_33;
  }

LABEL_13:
  v30 = v0[34];
  v31 = *(v30 + 16);
  v30 += 16;
  v119 = v31;
  v32 = v28 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
  v33 = v0[21];
  v94 = (v33 + 48);
  v88 = (v33 + 32);
  v86 = (v33 + 8);
  v87 = (v33 + 16);
  v92 = (v30 - 8);
  v93 = (v0[16] + 8);
  v34 = v0[30];
  v91 = (v34 + 48);
  v35 = MEMORY[0x277D84F90];
  v85 = v34;
  v90 = (v34 + 56);
  v89 = *(v30 + 56);
  do
  {
    v110 = v32;
    v113 = v29;
    v36 = v0[33];
    v38 = v0[24];
    v37 = v0[25];
    v39 = v0[20];
    v119(v0[38]);
    sub_21A3B202C();
    sub_21A365CB4(v37, v38, &qword_27CD24068, &qword_21A3B3290);
    v40 = (*v94)(v38, 1, v39);
    v41 = v0[25];
    v42 = v0[26];
    v116 = v35;
    if (v40 == 1)
    {
      sub_21A365D1C(v41, &qword_27CD24068, &qword_21A3B3290);
      v43 = sub_21A3B1EBC();
      (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    }

    else
    {
      v44 = v0[23];
      v45 = v0[22];
      v46 = v0[20];
      (*v88)(v44, v0[24], v46);
      (*v87)(v45, v44, v46);
      sub_21A3B1EAC();
      (*v86)(v44, v46);
      sub_21A365D1C(v41, &qword_27CD24068, &qword_21A3B3290);
    }

    v47 = v0[36];
    v48 = v0[33];
    v100 = v48;
    v102 = v0[35];
    v49 = v0[19];
    v97 = v49;
    v98 = v0[26];
    v50 = v0[17];
    v96 = v0[15];
    v104 = v0[18];
    v107 = v0[14];
    v51 = v0[13];
    (v119)(v47, v0[38]);
    sub_21A3B187C();
    v52 = v0[11];
    sub_21A360CEC(v0 + 7, v0[10]);
    sub_21A3B200C();
    sub_21A3B1FEC();
    (*v93)(v50, v96);
    sub_21A3B1E6C();

    (v119)(v102, v47, v100);
    sub_21A365CB4(v97, v104, &qword_27CD23F70, &unk_21A3B4D70);
    sub_21A3B204C();
    v53 = sub_21A3B1E2C();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v107, 1, v53) == 1)
    {
      sub_21A365D1C(v0[14], &qword_27CD23F68, &unk_21A3B2F30);
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v57 = v0[14];
      v55 = sub_21A3B1E1C();
      v56 = v58;
      (*(v54 + 8))(v57, v53);
    }

    v59 = v0[38];
    v60 = v0[36];
    v61 = v0[33];
    v62 = v0[29];
    v64 = v0[26];
    v63 = v0[27];
    v65 = v0[19];
    sub_21A363DB8(v0[35], v0[18], v55, v56, v63);
    sub_21A365D1C(v65, &qword_27CD23F70, &unk_21A3B4D70);
    v66 = *v92;
    (*v92)(v60, v61);
    sub_21A365D1C(v64, &qword_27CD24070, &unk_21A3B4D80);
    v66(v59, v61);
    v67 = *v91;
    if ((*v91)(v63, 1, v62))
    {
      sub_21A365D1C(v0[27], &qword_27CD23F78, &unk_21A3B2F40);
      v68 = 1;
    }

    else
    {
      sub_21A365B98(v0[27], v0[28]);
      v68 = 0;
    }

    v69 = v0[28];
    v70 = v0[29];
    (*v90)(v69, v68, 1, v70);
    sub_21A361318(v0 + 7);
    if (v67(v69, 1, v70) == 1)
    {
      sub_21A365D1C(v0[28], &qword_27CD23F78, &unk_21A3B2F40);
      v35 = v116;
    }

    else
    {
      sub_21A365B98(v0[28], v0[31]);
      v35 = v116;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_21A3936B4(0, v116[2] + 1, 1, v116, &qword_27CD24940, &qword_21A3B5F90, type metadata accessor for RecipeEntity);
      }

      v72 = v35[2];
      v71 = v35[3];
      if (v72 >= v71 >> 1)
      {
        v35 = sub_21A3936B4(v71 > 1, v72 + 1, 1, v35, &qword_27CD24940, &qword_21A3B5F90, type metadata accessor for RecipeEntity);
      }

      v73 = v0[31];
      v35[2] = v72 + 1;
      sub_21A365B98(v73, v35 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v72);
    }

    v32 = &v110[v89];
    v29 = v113 - 1;
  }

  while (v113 != 1);

LABEL_34:
  v75 = v0[41];
  v74 = v0[42];
  v76 = v0[37];
  v77 = v0[38];
  v79 = v0[35];
  v78 = v0[36];
  v81 = v0[31];
  v80 = v0[32];
  v82 = v0[28];
  v99 = v0[27];
  v101 = v0[26];
  v103 = v0[25];
  v105 = v0[24];
  v108 = v0[23];
  v111 = v0[22];
  v114 = v0[19];
  v117 = v0[18];
  v120 = v0[17];
  v121 = v0[14];

  v83 = v0[1];

  return v83(v35);
}

uint64_t sub_21A392BE4()
{
  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[45];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21A35E000, v4, v5, "Error loading recipe history: %{public}@", v7, 0xCu);
    sub_21A365D1C(v8, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v8, -1, -1);
    MEMORY[0x21CED8F60](v7, -1, -1);
  }

  v11 = v0[45];
  v12 = v0[41];
  v13 = v0[42];
  v14 = v0[37];
  v15 = v0[38];
  v16 = v0[35];
  v17 = v0[36];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[25];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[22];
  v29 = v0[19];
  v30 = v0[18];
  v31 = v0[17];
  v32 = v0[14];

  sub_21A3B18BC();
  sub_21A380CDC(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_21A392EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21A392F00, 0, 0);
}

uint64_t sub_21A392F00()
{
  v13 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_21A3B21FC();
  sub_21A365DC4(v3, qword_27CD24AB0);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_21A3AF0A8(0xD000000000000019, 0x800000021A3B5F30, &v12);
    _os_log_impl(&dword_21A35E000, v4, v5, "Will perform intent: %{public}s", v6, 0xCu);
    sub_21A361318(v7);
    MEMORY[0x21CED8F60](v7, -1, -1);
    MEMORY[0x21CED8F60](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_21A3930D4;
  v10 = v0[4];
  v9 = v0[5];

  return sub_21A391C3C(v10, v9);
}

uint64_t sub_21A3930D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_21A393220, 0, 0);
  }
}

uint64_t sub_21A393220()
{
  v1 = v0[3];
  v0[2] = v0[7];
  sub_21A365B50(&qword_27CD24060, qword_21A3B31A0);
  sub_21A380C28();
  sub_21A3B19BC();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21A3932CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E70 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24C08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A393374(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A3650E8;

  return sub_21A392EDC(a1, v5, v4);
}

uint64_t sub_21A393420@<X0>(uint64_t *a1@<X8>)
{
  sub_21A365B50(&qword_27CD24250, &qword_21A3B3E88);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v2 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  sub_21A3B18DC();
  result = sub_21A3B188C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_21A3934E4(uint64_t a1)
{
  v2 = sub_21A390214();

  return MEMORY[0x28210B538](a1, v2);
}

char *sub_21A393530(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_21A3936B4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_21A365B50(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

unint64_t sub_21A393894()
{
  result = qword_27CD24950;
  if (!qword_27CD24950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24950);
  }

  return result;
}

unint64_t sub_21A3938EC()
{
  result = qword_27CD24958;
  if (!qword_27CD24958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24958);
  }

  return result;
}

uint64_t sub_21A3939B4()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A3B212C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_21A3B24DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21A3B20EC();
  sub_21A365DFC(v12, qword_27CD24C20);
  sub_21A365DC4(v12, qword_27CD24C20);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A393B94()
{
  v0 = sub_21A365B50(&qword_27CD24988, &qword_21A3B6158);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21A365B50(&qword_27CD24990, &qword_21A3B6160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  sub_21A390310();
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24998, &qword_21A3B6190);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD249A0, &unk_21A3B6198);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A393D80(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(type metadata accessor for InstructionEntity() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for RecipeEntity();
  v2[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A393E70, 0, 0);
}

uint64_t sub_21A393E70()
{
  v16 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = *v1;
  v0[14] = v1[1];
  v0[15] = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v7 = sub_21A3B21DC();
  v8 = sub_21A3B25EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21A3AF0A8(0xD000000000000016, 0x800000021A3B60C0, &v15);
    _os_log_impl(&dword_21A35E000, v7, v8, "Will perform intent: %{public}s", v9, 0xCu);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_21A3940C4;
  v12 = v0[13];
  v13 = v0[8];

  return sub_21A39D8B4(v12);
}

uint64_t sub_21A3940C4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_21A3944A8;
  }

  else
  {
    v3 = sub_21A3941D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21A3941D8()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[9];
  v7 = *v4;
  v8 = v4[1];
  v9 = *(v0[10] + 20);

  sub_21A3B1A1C();
  v10 = sub_21A3B20BC();
  (*(*(v10 - 8) + 16))(v5 + v9, v6, v10);
  sub_21A3952CC(v6, type metadata accessor for InstructionEntity);
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  sub_21A3B187C();
  v11 = *sub_21A360CEC(v0 + 2, v0[5]);
  v12 = swift_task_alloc();
  *(v12 + 16) = v5;
  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v14 + 16) = sub_21A367634;
  *(v14 + 24) = v12;
  v15 = *(*v13 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v16));
  sub_21A36763C(v13 + v15);
  if (v1)
  {

    os_unfair_lock_unlock((v13 + v16));
  }

  else
  {
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    v20 = v0[9];
    v21 = v0[7];
    os_unfair_lock_unlock((v13 + v16));

    sub_21A361318(v0 + 2);
    sub_21A395284(&qword_27CD23EC8, type metadata accessor for RecipeEntity);
    sub_21A3B19BC();
    sub_21A3952CC(v17, type metadata accessor for RecipeEntity);
    sub_21A3952CC(v19, type metadata accessor for CookingSupportAppIntentInvocation);

    v22 = v0[1];

    v22();
  }
}

uint64_t sub_21A3944A8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_21A394524@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E78 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24C20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3945D0(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_21A3785FC;

  return sub_21A393D80(a1);
}

double sub_21A39467C@<D0>(_OWORD *a1@<X8>)
{
  sub_21A394708(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_21A3946BC(uint64_t a1)
{
  v2 = sub_21A390310();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A394708@<X0>(char **a1@<X8>)
{
  v88 = a1;
  v1 = sub_21A365B50(&qword_27CD24970, &unk_21A3B6108);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v87 = &v69 - v4;
  v93 = sub_21A3B1C4C();
  v95 = *(v93 - 8);
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v93, v6);
  v92 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v94 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v91 = &v69 - v14;
  v15 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v90 = &v69 - v18;
  v19 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v70 = &v69 - v22;
  v23 = sub_21A3B20CC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21A3B212C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v32 = sub_21A3B24DC();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8, v34);
  v35 = sub_21A3B20EC();
  v84 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  v89 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v41 = *(v24 + 104);
  v75 = *MEMORY[0x277CC9110];
  v40 = v75;
  v76 = v23;
  v41(v28, v75, v23);
  v77 = v41;
  v78 = v24 + 104;
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v41(v28, v40, v23);
  v42 = v70;
  sub_21A3B20FC();
  v43 = *(v36 + 56);
  v83 = v36 + 56;
  v85 = v43;
  v43(v42, 0, 1, v35);
  v44 = type metadata accessor for RecipeEntity();
  (*(*(v44 - 8) + 56))(v90, 1, 1, v44);
  v45 = sub_21A3B19AC();
  v79 = v45;
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v80 = v47;
  v81 = v46 + 56;
  v47(v91, 1, 1, v45);
  v47(v94, 1, 1, v45);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  v48 = sub_21A3B18EC();
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  sub_21A3B18DC();
  v49 = sub_21A3B188C();
  v72 = sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v71 = v48;
  sub_21A3B18DC();
  v50 = sub_21A3B188C();
  v86 = sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  sub_21A3B18DC();
  v51 = sub_21A3B188C();
  *&v96 = v49;
  *(&v96 + 1) = v50;
  *&v97 = v51;
  v73 = *MEMORY[0x277CBA308];
  v52 = *(v95 + 104);
  v95 += 104;
  v74 = v52;
  v52(v92);
  sub_21A36758C();
  sub_21A395284(&qword_27CD23FB8, type metadata accessor for RecipeEntity);
  v53 = v91;
  v90 = sub_21A3B1A4C();
  v82 = sub_21A365B50(&qword_27CD24978, &qword_21A3B6118);
  sub_21A3B247C();
  sub_21A3B211C();
  v54 = v75;
  v55 = v76;
  v56 = v77;
  v77(v28, v75, v76);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v56(v28, v54, v55);
  sub_21A3B20FC();
  v85(v42, 0, 1, v84);
  v57 = type metadata accessor for InstructionEntity();
  (*(*(v57 - 8) + 56))(v87, 1, 1, v57);
  v58 = v79;
  v59 = v80;
  v80(v53, 1, 1, v79);
  v59(v94, 1, 1, v58);
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  sub_21A3B18DC();
  v60 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  sub_21A3B18DC();
  v61 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24178, &qword_21A3B3790);
  swift_getKeyPath();
  v62 = sub_21A3B1C7C();
  *&v96 = v60;
  *(&v96 + 1) = v61;
  *&v97 = v62;
  v74(v92, v73, v93);
  sub_21A395230();
  sub_21A395284(&qword_27CD240D8, type metadata accessor for InstructionEntity);
  v63 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  sub_21A3B18DC();
  v64 = sub_21A3B188C();
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  sub_21A3B18DC();
  v65 = sub_21A3B188C();
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  sub_21A3B18DC();
  v66 = sub_21A3B188C();
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v68 = v88;
  *v88 = v90;
  v68[1] = v63;
  v68[2] = v64;
  v68[3] = v65;
  v68[4] = v66;
  v68[5] = result;
  return result;
}

unint64_t sub_21A395230()
{
  result = qword_27CD24980;
  if (!qword_27CD24980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24980);
  }

  return result;
}

uint64_t sub_21A395284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A3952CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A395330()
{
  result = qword_27CD249A8;
  if (!qword_27CD249A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249A8);
  }

  return result;
}

unint64_t sub_21A395388()
{
  result = qword_27CD249B0;
  if (!qword_27CD249B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD249B0);
  }

  return result;
}

uint64_t sub_21A39542C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 144) = v7;
  v8 = *(v7 - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 200) = v12;
  v13 = *(v12 - 8);
  *(v2 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v16 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A3956D0, 0, 0);
}

uint64_t sub_21A3956D0()
{
  v1 = v0[31];
  off_282B3C8F0();
  v2 = type metadata accessor for RecipeEntity();
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39590C;
    v6 = v0[28];
    v7 = v0[13];

    return sub_21A3A2A34(v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    sub_21A365B98(v0[31], v0[12]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A39590C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_21A39614C;
  }

  else
  {
    v3 = sub_21A395A20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A395A20()
{
  v77 = v0;
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[23];
  v8 = v0[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    (*(v12 + 32))(v10, v0[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v69 = v0[33];
  v73 = v0[34];
  v65 = v0[29];
  v66 = v0[32];
  v14 = v0[27];
  v63 = v0[24];
  v64 = v0[30];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v62 = v0[14];
  (*(v0[26] + 16))(v14, v0[28], v0[25]);
  off_282B3C908();
  v18 = v0[11];
  sub_21A360CEC(v0 + 7, v0[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 7);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v69(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = sub_21A3B21DC();
    v27 = sub_21A3B25DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v70 = sub_21A3B26CC();
      v74 = v27;
      v31 = v30;

      v32 = sub_21A3AF0A8(v70, v31, &v76);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v26, v74, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v28, 0xCu);
      sub_21A361318(v29);
      MEMORY[0x21CED8F60](v29, -1, -1);
      MEMORY[0x21CED8F60](v28, -1, -1);
    }

    else
    {
    }

    v46 = v0[30];
    v47 = v0[28];
    v48 = v0[25];
    v49 = v0[26];
    v50 = v0[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[28];
    v53 = v0[29];
    v55 = v0[27];
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v68 = v0[17];
    v72 = v0[16];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[28];
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    v67 = v0[20];
    v71 = v0[17];
    v75 = v0[16];
    sub_21A365B98(v0[29], v0[12]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A39614C()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[36];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21A39624C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 144) = v7;
  v8 = *(v7 - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 200) = v12;
  v13 = *(v12 - 8);
  *(v2 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v16 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A3964F0, 0, 0);
}

uint64_t sub_21A3964F0()
{
  v1 = v0[31];
  off_282B3CCC0();
  v2 = type metadata accessor for RecipeEntity();
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39672C;
    v6 = v0[28];
    v7 = v0[13];

    return sub_21A3A34B4(v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    sub_21A365B98(v0[31], v0[12]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A39672C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_21A3AC354;
  }

  else
  {
    v3 = sub_21A396840;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A396840()
{
  v77 = v0;
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[23];
  v8 = v0[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    (*(v12 + 32))(v10, v0[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v69 = v0[33];
  v73 = v0[34];
  v65 = v0[29];
  v66 = v0[32];
  v14 = v0[27];
  v63 = v0[24];
  v64 = v0[30];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v62 = v0[14];
  (*(v0[26] + 16))(v14, v0[28], v0[25]);
  off_282B3CCD8();
  v18 = v0[11];
  sub_21A360CEC(v0 + 7, v0[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 7);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v69(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = sub_21A3B21DC();
    v27 = sub_21A3B25DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v70 = sub_21A3B26CC();
      v74 = v27;
      v31 = v30;

      v32 = sub_21A3AF0A8(v70, v31, &v76);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v26, v74, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v28, 0xCu);
      sub_21A361318(v29);
      MEMORY[0x21CED8F60](v29, -1, -1);
      MEMORY[0x21CED8F60](v28, -1, -1);
    }

    else
    {
    }

    v46 = v0[30];
    v47 = v0[28];
    v48 = v0[25];
    v49 = v0[26];
    v50 = v0[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[28];
    v53 = v0[29];
    v55 = v0[27];
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v68 = v0[17];
    v72 = v0[16];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[28];
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    v67 = v0[20];
    v71 = v0[17];
    v75 = v0[16];
    sub_21A365B98(v0[29], v0[12]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A396F6C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 144) = v7;
  v8 = *(v7 - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 200) = v12;
  v13 = *(v12 - 8);
  *(v2 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v16 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A397210, 0, 0);
}

uint64_t sub_21A397210()
{
  v1 = v0[31];
  off_282B3CDA0();
  v2 = type metadata accessor for RecipeEntity();
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39744C;
    v6 = v0[28];
    v7 = v0[13];

    return sub_21A3A3ED0(v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    sub_21A365B98(v0[31], v0[12]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A39744C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_21A3AC354;
  }

  else
  {
    v3 = sub_21A397560;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A397560()
{
  v77 = v0;
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[23];
  v8 = v0[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    (*(v12 + 32))(v10, v0[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v69 = v0[33];
  v73 = v0[34];
  v65 = v0[29];
  v66 = v0[32];
  v14 = v0[27];
  v63 = v0[24];
  v64 = v0[30];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v62 = v0[14];
  (*(v0[26] + 16))(v14, v0[28], v0[25]);
  off_282B3CDB8();
  v18 = v0[11];
  sub_21A360CEC(v0 + 7, v0[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 7);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v69(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = sub_21A3B21DC();
    v27 = sub_21A3B25DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v70 = sub_21A3B26CC();
      v74 = v27;
      v31 = v30;

      v32 = sub_21A3AF0A8(v70, v31, &v76);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v26, v74, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v28, 0xCu);
      sub_21A361318(v29);
      MEMORY[0x21CED8F60](v29, -1, -1);
      MEMORY[0x21CED8F60](v28, -1, -1);
    }

    else
    {
    }

    v46 = v0[30];
    v47 = v0[28];
    v48 = v0[25];
    v49 = v0[26];
    v50 = v0[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[28];
    v53 = v0[29];
    v55 = v0[27];
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v68 = v0[17];
    v72 = v0[16];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[28];
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    v67 = v0[20];
    v71 = v0[17];
    v75 = v0[16];
    sub_21A365B98(v0[29], v0[12]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A397C8C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 144) = v7;
  v8 = *(v7 - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 200) = v12;
  v13 = *(v12 - 8);
  *(v2 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v16 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A397F30, 0, 0);
}

uint64_t sub_21A397F30()
{
  v1 = v0[31];
  off_282B3CE58();
  v2 = type metadata accessor for RecipeEntity();
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39816C;
    v6 = v0[28];
    v7 = v0[13];

    return sub_21A3A48EC(v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    sub_21A365B98(v0[31], v0[12]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A39816C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_21A3AC354;
  }

  else
  {
    v3 = sub_21A398280;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A398280()
{
  v77 = v0;
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[23];
  v8 = v0[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    (*(v12 + 32))(v10, v0[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v69 = v0[33];
  v73 = v0[34];
  v65 = v0[29];
  v66 = v0[32];
  v14 = v0[27];
  v63 = v0[24];
  v64 = v0[30];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v62 = v0[14];
  (*(v0[26] + 16))(v14, v0[28], v0[25]);
  off_282B3CE70();
  v18 = v0[11];
  sub_21A360CEC(v0 + 7, v0[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 7);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v69(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = sub_21A3B21DC();
    v27 = sub_21A3B25DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v70 = sub_21A3B26CC();
      v74 = v27;
      v31 = v30;

      v32 = sub_21A3AF0A8(v70, v31, &v76);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v26, v74, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v28, 0xCu);
      sub_21A361318(v29);
      MEMORY[0x21CED8F60](v29, -1, -1);
      MEMORY[0x21CED8F60](v28, -1, -1);
    }

    else
    {
    }

    v46 = v0[30];
    v47 = v0[28];
    v48 = v0[25];
    v49 = v0[26];
    v50 = v0[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[28];
    v53 = v0[29];
    v55 = v0[27];
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v68 = v0[17];
    v72 = v0[16];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[28];
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    v67 = v0[20];
    v71 = v0[17];
    v75 = v0[16];
    sub_21A365B98(v0[29], v0[12]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A3989AC(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 120) = v3;
  v4 = *(v3 - 8);
  *(v2 + 128) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 152) = v7;
  v8 = *(v7 - 8);
  *(v2 + 160) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 208) = v12;
  v13 = *(v12 - 8);
  *(v2 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v16 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = v1[2];

  return MEMORY[0x2822009F8](sub_21A398C50, 0, 0);
}

uint64_t sub_21A398C50()
{
  v1 = v0[32];
  off_282B3D040();
  v2 = type metadata accessor for RecipeEntity();
  v0[33] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[32], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_21A398E8C;
    v6 = v0[29];
    v7 = v0[14];

    return sub_21A3A5D68(v6);
  }

  else
  {
    v9 = v0[30];
    v10 = v0[31];
    v12 = v0[28];
    v11 = v0[29];
    v14 = v0[24];
    v13 = v0[25];
    v16 = v0[22];
    v15 = v0[23];
    v18 = v0[21];
    v19 = v0[18];
    v20 = v0[17];
    sub_21A365B98(v0[32], v0[13]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A398E8C()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_21A3AC358;
  }

  else
  {
    v3 = sub_21A398FA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A398FA0()
{
  v78 = v0;
  v1 = v0[29];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v5 = v0[20];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[24];
  v8 = v0[25];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[24], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[22];
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[19];
    (*(v12 + 32))(v10, v0[23], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v70 = v0[34];
  v74 = v0[35];
  v65 = v0[30];
  v66 = v0[33];
  v14 = v0[28];
  v63 = v0[25];
  v64 = v0[31];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[16];
  v62 = v0[15];
  (*(v0[27] + 16))(v14, v0[29], v0[26]);
  off_282B3D058();
  v18 = v0[12];
  sub_21A360CEC(v0 + 8, v0[11]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 8);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v70(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[14];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v26 = v19[4];
    v25 = v19[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v27 = sub_21A3B21DC();
    v28 = sub_21A3B25DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v77 = v75;
      *v29 = 136446210;
      v67 = sub_21A3B26CC();
      v71 = v28;
      v31 = v30;

      v32 = sub_21A3AF0A8(v67, v31, &v77);

      *(v29 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v27, v71, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v29, 0xCu);
      sub_21A361318(v75);
      MEMORY[0x21CED8F60](v75, -1, -1);
      MEMORY[0x21CED8F60](v29, -1, -1);
    }

    else
    {
    }

    v46 = v0[31];
    v47 = v0[29];
    v48 = v0[26];
    v49 = v0[27];
    v50 = v0[25];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[31];
    v51 = v0[32];
    v54 = v0[29];
    v53 = v0[30];
    v55 = v0[28];
    v57 = v0[24];
    v56 = v0[25];
    v59 = v0[22];
    v58 = v0[23];
    v60 = v0[21];
    v69 = v0[18];
    v73 = v0[17];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[29];
    v34 = v0[26];
    v35 = v0[27];
    v36 = v0[25];
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[31];
    v37 = v0[32];
    v39 = v0[29];
    v40 = v0[28];
    v42 = v0[24];
    v41 = v0[25];
    v44 = v0[22];
    v43 = v0[23];
    v68 = v0[21];
    v72 = v0[18];
    v76 = v0[17];
    sub_21A365B98(v0[30], v0[13]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A3996F0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 144) = v7;
  v8 = *(v7 - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 200) = v12;
  v13 = *(v12 - 8);
  *(v2 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v16 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A399994, 0, 0);
}

uint64_t sub_21A399994()
{
  v1 = v0[31];
  off_282B3D1E8();
  v2 = type metadata accessor for RecipeEntity();
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A399BD0;
    v6 = v0[28];
    v7 = v0[13];

    return sub_21A3A67CC(v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    sub_21A365B98(v0[31], v0[12]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A399BD0()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_21A3AC354;
  }

  else
  {
    v3 = sub_21A399CE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A399CE4()
{
  v77 = v0;
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[23];
  v8 = v0[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    (*(v12 + 32))(v10, v0[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v69 = v0[33];
  v73 = v0[34];
  v65 = v0[29];
  v66 = v0[32];
  v14 = v0[27];
  v63 = v0[24];
  v64 = v0[30];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v62 = v0[14];
  (*(v0[26] + 16))(v14, v0[28], v0[25]);
  off_282B3D200();
  v18 = v0[11];
  sub_21A360CEC(v0 + 7, v0[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 7);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v69(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = sub_21A3B21DC();
    v27 = sub_21A3B25DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v70 = sub_21A3B26CC();
      v74 = v27;
      v31 = v30;

      v32 = sub_21A3AF0A8(v70, v31, &v76);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v26, v74, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v28, 0xCu);
      sub_21A361318(v29);
      MEMORY[0x21CED8F60](v29, -1, -1);
      MEMORY[0x21CED8F60](v28, -1, -1);
    }

    else
    {
    }

    v46 = v0[30];
    v47 = v0[28];
    v48 = v0[25];
    v49 = v0[26];
    v50 = v0[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[28];
    v53 = v0[29];
    v55 = v0[27];
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v68 = v0[17];
    v72 = v0[16];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[28];
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    v67 = v0[20];
    v71 = v0[17];
    v75 = v0[16];
    sub_21A365B98(v0[29], v0[12]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A39A410(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 144) = v7;
  v8 = *(v7 - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 200) = v12;
  v13 = *(v12 - 8);
  *(v2 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v16 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A39A6B4, 0, 0);
}

uint64_t sub_21A39A6B4()
{
  v1 = v0[31];
  off_282B3D2A0();
  v2 = type metadata accessor for RecipeEntity();
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39A8F0;
    v6 = v0[28];
    v7 = v0[13];

    return sub_21A3A71E8(v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    sub_21A365B98(v0[31], v0[12]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A39A8F0()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_21A3AC354;
  }

  else
  {
    v3 = sub_21A39AA04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A39AA04()
{
  v77 = v0;
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[23];
  v8 = v0[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    (*(v12 + 32))(v10, v0[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v69 = v0[33];
  v73 = v0[34];
  v65 = v0[29];
  v66 = v0[32];
  v14 = v0[27];
  v63 = v0[24];
  v64 = v0[30];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v62 = v0[14];
  (*(v0[26] + 16))(v14, v0[28], v0[25]);
  off_282B3D2B8();
  v18 = v0[11];
  sub_21A360CEC(v0 + 7, v0[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 7);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v69(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = sub_21A3B21DC();
    v27 = sub_21A3B25DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v70 = sub_21A3B26CC();
      v74 = v27;
      v31 = v30;

      v32 = sub_21A3AF0A8(v70, v31, &v76);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v26, v74, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v28, 0xCu);
      sub_21A361318(v29);
      MEMORY[0x21CED8F60](v29, -1, -1);
      MEMORY[0x21CED8F60](v28, -1, -1);
    }

    else
    {
    }

    v46 = v0[30];
    v47 = v0[28];
    v48 = v0[25];
    v49 = v0[26];
    v50 = v0[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[28];
    v53 = v0[29];
    v55 = v0[27];
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v68 = v0[17];
    v72 = v0[16];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[28];
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    v67 = v0[20];
    v71 = v0[17];
    v75 = v0[16];
    sub_21A365B98(v0[29], v0[12]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A39B130(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 120) = v3;
  v4 = *(v3 - 8);
  *(v2 + 128) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 152) = v7;
  v8 = *(v7 - 8);
  *(v2 + 160) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 208) = v12;
  v13 = *(v12 - 8);
  *(v2 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v16 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = v1[2];

  return MEMORY[0x2822009F8](sub_21A39B3D4, 0, 0);
}

uint64_t sub_21A39B3D4()
{
  v1 = v0[32];
  off_282B3D6D0();
  v2 = type metadata accessor for RecipeEntity();
  v0[33] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[32], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_21A39B610;
    v6 = v0[29];
    v7 = v0[14];

    return sub_21A3A7C04(v6);
  }

  else
  {
    v9 = v0[30];
    v10 = v0[31];
    v12 = v0[28];
    v11 = v0[29];
    v14 = v0[24];
    v13 = v0[25];
    v16 = v0[22];
    v15 = v0[23];
    v18 = v0[21];
    v19 = v0[18];
    v20 = v0[17];
    sub_21A365B98(v0[32], v0[13]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A39B610()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_21A3AC358;
  }

  else
  {
    v3 = sub_21A39B724;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A39B724()
{
  v78 = v0;
  v1 = v0[29];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v5 = v0[20];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[24];
  v8 = v0[25];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[24], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[22];
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[19];
    (*(v12 + 32))(v10, v0[23], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v70 = v0[34];
  v74 = v0[35];
  v65 = v0[30];
  v66 = v0[33];
  v14 = v0[28];
  v63 = v0[25];
  v64 = v0[31];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[16];
  v62 = v0[15];
  (*(v0[27] + 16))(v14, v0[29], v0[26]);
  off_282B3D6E8();
  v18 = v0[12];
  sub_21A360CEC(v0 + 8, v0[11]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 8);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v70(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[14];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v26 = v19[4];
    v25 = v19[5];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v27 = sub_21A3B21DC();
    v28 = sub_21A3B25DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v77 = v75;
      *v29 = 136446210;
      v67 = sub_21A3B26CC();
      v71 = v28;
      v31 = v30;

      v32 = sub_21A3AF0A8(v67, v31, &v77);

      *(v29 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v27, v71, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v29, 0xCu);
      sub_21A361318(v75);
      MEMORY[0x21CED8F60](v75, -1, -1);
      MEMORY[0x21CED8F60](v29, -1, -1);
    }

    else
    {
    }

    v46 = v0[31];
    v47 = v0[29];
    v48 = v0[26];
    v49 = v0[27];
    v50 = v0[25];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[31];
    v51 = v0[32];
    v54 = v0[29];
    v53 = v0[30];
    v55 = v0[28];
    v57 = v0[24];
    v56 = v0[25];
    v59 = v0[22];
    v58 = v0[23];
    v60 = v0[21];
    v69 = v0[18];
    v73 = v0[17];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[29];
    v34 = v0[26];
    v35 = v0[27];
    v36 = v0[25];
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[31];
    v37 = v0[32];
    v39 = v0[29];
    v40 = v0[28];
    v42 = v0[24];
    v41 = v0[25];
    v44 = v0[22];
    v43 = v0[23];
    v68 = v0[21];
    v72 = v0[18];
    v76 = v0[17];
    sub_21A365B98(v0[30], v0[13]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A39BE74(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 144) = v7;
  v8 = *(v7 - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 200) = v12;
  v13 = *(v12 - 8);
  *(v2 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v16 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A39C118, 0, 0);
}

uint64_t sub_21A39C118()
{
  v1 = v0[31];
  off_282B3D788();
  v2 = type metadata accessor for RecipeEntity();
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39C354;
    v6 = v0[28];
    v7 = v0[13];

    return sub_21A3A8668(v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    sub_21A365B98(v0[31], v0[12]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A39C354()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_21A3AC354;
  }

  else
  {
    v3 = sub_21A39C468;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A39C468()
{
  v77 = v0;
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[23];
  v8 = v0[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    (*(v12 + 32))(v10, v0[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v69 = v0[33];
  v73 = v0[34];
  v65 = v0[29];
  v66 = v0[32];
  v14 = v0[27];
  v63 = v0[24];
  v64 = v0[30];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v62 = v0[14];
  (*(v0[26] + 16))(v14, v0[28], v0[25]);
  off_282B3D7A0();
  v18 = v0[11];
  sub_21A360CEC(v0 + 7, v0[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 7);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v69(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = sub_21A3B21DC();
    v27 = sub_21A3B25DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v70 = sub_21A3B26CC();
      v74 = v27;
      v31 = v30;

      v32 = sub_21A3AF0A8(v70, v31, &v76);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v26, v74, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v28, 0xCu);
      sub_21A361318(v29);
      MEMORY[0x21CED8F60](v29, -1, -1);
      MEMORY[0x21CED8F60](v28, -1, -1);
    }

    else
    {
    }

    v46 = v0[30];
    v47 = v0[28];
    v48 = v0[25];
    v49 = v0[26];
    v50 = v0[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[28];
    v53 = v0[29];
    v55 = v0[27];
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v68 = v0[17];
    v72 = v0[16];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[28];
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    v67 = v0[20];
    v71 = v0[17];
    v75 = v0[16];
    sub_21A365B98(v0[29], v0[12]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A39CB94(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 144) = v7;
  v8 = *(v7 - 8);
  *(v2 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 200) = v12;
  v13 = *(v12 - 8);
  *(v2 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v16 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21A39CE38, 0, 0);
}

uint64_t sub_21A39CE38()
{
  v1 = v0[31];
  off_282B3D860();
  v2 = type metadata accessor for RecipeEntity();
  v0[32] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[33] = v4;
  v0[34] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[31], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_21A39D074;
    v6 = v0[28];
    v7 = v0[13];

    return sub_21A3A9084(v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[30];
    v12 = v0[27];
    v11 = v0[28];
    v14 = v0[23];
    v13 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    sub_21A365B98(v0[31], v0[12]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A39D074()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_21A3AC354;
  }

  else
  {
    v3 = sub_21A39D188;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A39D188()
{
  v77 = v0;
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  sub_21A3B202C();
  sub_21A365CB4(v2, v3, &qword_27CD24068, &qword_21A3B3290);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[23];
  v8 = v0[24];
  if (v6 == 1)
  {
    sub_21A365D1C(v0[23], &qword_27CD24068, &qword_21A3B3290);
    v9 = sub_21A3B1EBC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    (*(v12 + 32))(v10, v0[22], v13);
    (*(v12 + 16))(v11, v10, v13);
    sub_21A3B1EAC();
    (*(v12 + 8))(v10, v13);
    sub_21A365D1C(v7, &qword_27CD24068, &qword_21A3B3290);
  }

  v69 = v0[33];
  v73 = v0[34];
  v65 = v0[29];
  v66 = v0[32];
  v14 = v0[27];
  v63 = v0[24];
  v64 = v0[30];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v62 = v0[14];
  (*(v0[26] + 16))(v14, v0[28], v0[25]);
  off_282B3D878();
  v18 = v0[11];
  sub_21A360CEC(v0 + 7, v0[10]);
  sub_21A3B200C();
  sub_21A3B1FEC();
  (*(v17 + 8))(v16, v62);
  sub_21A3B1E6C();

  sub_21A363A24(v14, v15, v64);
  sub_21A361318(v0 + 7);
  sub_21A365CB4(v64, v65, &qword_27CD23F78, &unk_21A3B2F40);
  if (v69(v65, 1, v66) == 1)
  {
    sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
    if (qword_27CD23DF8 != -1)
    {
      swift_once();
    }

    v19 = v0[13];
    v20 = sub_21A3B21FC();
    sub_21A365DC4(v20, qword_27CD24AB0);
    v22 = *v19;
    v21 = v19[1];
    v24 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = sub_21A3B21DC();
    v27 = sub_21A3B25DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v70 = sub_21A3B26CC();
      v74 = v27;
      v31 = v30;

      v32 = sub_21A3AF0A8(v70, v31, &v76);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21A35E000, v26, v74, "Unable to handle intent, could not create RecipeEntity. intent=%{public}s, privacy: .public)", v28, 0xCu);
      sub_21A361318(v29);
      MEMORY[0x21CED8F60](v29, -1, -1);
      MEMORY[0x21CED8F60](v28, -1, -1);
    }

    else
    {
    }

    v46 = v0[30];
    v47 = v0[28];
    v48 = v0[25];
    v49 = v0[26];
    v50 = v0[24];
    sub_21A3B18BC();
    sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_21A3B189C();
    swift_willThrow();
    sub_21A365D1C(v46, &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v50, &qword_27CD24070, &unk_21A3B4D80);
    (*(v49 + 8))(v47, v48);
    v52 = v0[30];
    v51 = v0[31];
    v54 = v0[28];
    v53 = v0[29];
    v55 = v0[27];
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v68 = v0[17];
    v72 = v0[16];

    v45 = v0[1];
  }

  else
  {
    v33 = v0[28];
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    sub_21A365D1C(v0[30], &qword_27CD23F78, &unk_21A3B2F40);
    sub_21A365D1C(v36, &qword_27CD24070, &unk_21A3B4D80);
    (*(v35 + 8))(v33, v34);
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];
    v40 = v0[27];
    v42 = v0[23];
    v41 = v0[24];
    v44 = v0[21];
    v43 = v0[22];
    v67 = v0[20];
    v71 = v0[17];
    v75 = v0[16];
    sub_21A365B98(v0[29], v0[12]);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_21A39D8B4(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = sub_21A3B1FFC();
  *(v2 + 120) = v3;
  v4 = *(v3 - 8);
  *(v2 + 128) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v6 = *(*(sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70) - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v7 = sub_21A3B1E4C();
  *(v2 + 152) = v7;
  v8 = *(v7 - 8);
  *(v2 + 160) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v10 = *(*(sub_21A365B50(&qword_27CD24068, &qword_21A3B3290) - 8) + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v11 = *(*(sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80) - 8) + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v12 = sub_21A3B205C();
  *(v2 + 208) = v12;
  v13 = *(v12 - 8);
  *(v2 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v15 = *(*(sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40) - 8) + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v16 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v16;
  *(v2 + 48) = v1[2];

  return MEMORY[0x2822009F8](sub_21A39DB58, 0, 0);
}

uint64_t sub_21A39DB58()
{
  v1 = v0[32];
  off_282B3D998();
  v2 = type metadata accessor for RecipeEntity();
  v0[33] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[34] = v4;
  v0[35] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_21A365D1C(v0[32], &qword_27CD23F78, &unk_21A3B2F40);
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_21A39DD94;
    v6 = v0[29];
    v7 = v0[14];

    return sub_21A3A9AA0(v6);
  }

  else
  {
    v9 = v0[30];
    v10 = v0[31];
    v12 = v0[28];
    v11 = v0[29];
    v14 = v0[24];
    v13 = v0[25];
    v16 = v0[22];
    v15 = v0[23];
    v18 = v0[21];
    v19 = v0[18];
    v20 = v0[17];
    sub_21A365B98(v0[32], v0[13]);

    v17 = v0[1];

    return v17();
  }
}