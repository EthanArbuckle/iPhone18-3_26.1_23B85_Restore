uint64_t sub_2517CEC48(uint64_t a1, uint64_t a2)
{
  sub_2517CEBE4(0, &qword_28110FE50, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static UnnamedSectionProvider.healthViewEntityID(for:)(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0x7972616D6D7573;
  v3 = 0x646E6572546C6C61;
  v4 = 0x49676E6972616873;
  if (v1 != 3)
  {
    v4 = 0x684368746C616568;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*a1)
  {
    v2 = 0x676E6972616873;
  }

  if (*a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2517CED98()
{
  v1 = type metadata accessor for HealthViewEntity();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2517CEE54, 0, 0);
}

uint64_t sub_2517CEE54()
{
  v1 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  sub_2517C0B8C(0, 1, 1);
  v2 = v31;
  v4 = *(v31 + 16);
  v3 = *(v31 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    sub_2517C0B8C((v3 > 1), v4 + 1, 1);
    v2 = v31;
    v3 = *(v31 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  *(v2 + v4 + 32) = 0;
  v7 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    sub_2517C0B8C((v3 > 1), v4 + 2, 1);
    v2 = v31;
    v3 = *(v31 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v7;
  *(v2 + v6 + 32) = 1;
  v8 = v4 + 3;
  if (v5 < (v4 + 3))
  {
    sub_2517C0B8C((v3 > 1), v4 + 3, 1);
  }

  v9 = v31;
  *(v31 + 16) = v8;
  *(v31 + v7 + 32) = 2;
  v10 = *(v31 + 24);
  v11 = v10 >> 1;
  v12 = v4 + 4;
  if ((v10 >> 1) < (v4 + 4))
  {
    sub_2517C0B8C((v10 > 1), v4 + 4, 1);
    v9 = v31;
    v10 = *(v31 + 24);
    v11 = v10 >> 1;
  }

  *(v9 + 16) = v12;
  *(v9 + v8 + 32) = 3;
  v13 = v4 + 5;
  if (v11 < (v4 + 5))
  {
    sub_2517C0B8C((v10 > 1), v4 + 5, 1);
    v9 = v31;
  }

  v28 = v0[3];
  v29 = v0[4];
  v14 = v0[2];
  *(v9 + 16) = v13;
  *(v9 + v12 + 32) = 4;
  v32 = v1;
  sub_2517C0B3C(0, v4 + 5, 0);
  v15 = 32;
  v30 = v9;
  do
  {
    v16 = *(v9 + v15);
    if (v16 <= 1)
    {
      if (*(v9 + v15))
      {
        v17 = 0x676E6972616873;
      }

      else
      {
        v17 = 0x7972616D6D7573;
      }

      v18 = 0xE700000000000000;
    }

    else if (v16 == 2)
    {
      v18 = 0xE900000000000073;
      v17 = 0x646E6572546C6C61;
    }

    else if (v16 == 3)
    {
      v17 = 0x49676E6972616873;
      v18 = 0xED0000657469766ELL;
    }

    else
    {
      v17 = 0x684368746C616568;
      v18 = 0xEF7473696C6B6365;
    }

    v19 = v0[4];
    sub_2517D28E4(v19 + *(v14 + 20));
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *v19 = v17;
    *(v29 + 8) = v18;
    v21 = (v19 + *(v14 + 24));
    *v21 = sub_2517CF5F0;
    v21[1] = v20;
    v23 = *(v32 + 16);
    v22 = *(v32 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_2517C0B3C(v22 > 1, v23 + 1, 1);
    }

    v24 = v0[4];
    *(v32 + 16) = v23 + 1;
    sub_2517CB600(v24, v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23);
    ++v15;
    --v13;
    v9 = v30;
  }

  while (v13);
  v25 = v0[4];

  v26 = v0[1];

  return v26(v32);
}

id sub_2517CF200(char a1)
{
  sub_2517CF60C(0, &qword_27F45FDD8, MEMORY[0x277CC9260]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-v4];
  v6 = sub_2517D8688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[15] = a1;
  sub_2517D32D4();
  sub_2517D8678();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2517CEB58(v5);
    sub_2517BB2A0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v12 = result;
      v13 = sub_2517D8658();
      sub_2517D4B0C(MEMORY[0x277D84F90]);
      v14 = sub_2517D8788();

      [v12 openSensitiveURL:v13 withOptions:v14];

      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2517CF468()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517CA9BC;

  return sub_2517CED98();
}

uint64_t type metadata accessor for UnnamedSectionProvider()
{
  result = qword_27F45FDE8;
  if (!qword_27F45FDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2517CF568()
{
  sub_2517CF60C(319, &qword_28110FE50, MEMORY[0x277CC9130]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2517CF60C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517D8918();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2517CF664()
{
  result = qword_27F45FDF8;
  if (!qword_27F45FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FDF8);
  }

  return result;
}

uint64_t sub_2517CF724()
{
  v0 = sub_2517D8628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2517D86B8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2517D87C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2517D8638();
  __swift_allocate_value_buffer(v9, qword_27F461FD8);
  __swift_project_value_buffer(v9, qword_27F461FD8);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2517D8648();
}

uint64_t sub_2517CF910()
{
  v0 = MEMORY[0x277D83D88];
  sub_2517D104C(0, &qword_28110FE50, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v21 - v3;
  v21[0] = sub_2517D8628();
  v5 = *(v21[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21[0]);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2517D86B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2517D87C8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2517D8638();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_2517D104C(0, &qword_27F45FD90, MEMORY[0x277CB9F98], v0);
  v17 = v16;
  __swift_allocate_value_buffer(v16, qword_27F461FF0);
  v18 = __swift_project_value_buffer(v17, qword_27F461FF0);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9110], v21[0]);
  sub_2517D8648();
  (*(v14 + 56))(v4, 1, 1, v13);
  sub_2517D8408();
  v19 = sub_2517D83F8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_2517CFC88()
{
  sub_2517D104C(0, &qword_27F45FE60, MEMORY[0x277CBA000], MEMORY[0x277D84560]);
  v0 = sub_2517D8438();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2517D9010;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x277CB9FF8], v0);
  qword_27F462008 = v4;
  return result;
}

uint64_t sub_2517CFD90(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2517D8468();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_2517D104C(0, &qword_27F45FDD8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v8 = sub_2517D8688();
  v2[8] = v8;
  v9 = *(v8 - 8);
  v2[9] = v9;
  v10 = *(v9 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_2517D88D8();
  v2[11] = sub_2517D88C8();
  v12 = sub_2517D8878();

  return MEMORY[0x2822009F8](sub_2517CFF3C, v12, v11);
}

id sub_2517CFF3C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  sub_2517D8978();

  sub_2517D81F8();
  v8 = sub_2517D8458();
  v10 = v9;
  (*(v6 + 8))(v4, v5);
  MEMORY[0x2530831A0](v8, v10);

  sub_2517D8678();

  v11 = (*(v2 + 48))(v3, 1, v1);
  v12 = v0[7];
  if (v11 == 1)
  {
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[6];

    sub_2517CEB58(v12);
    sub_2517D0F34();
    swift_allocError();
    swift_willThrow();

    v16 = v0[1];
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v20 = v0[10];
    v19 = v0[11];
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[7];
    v27 = v0[6];
    v24 = v0[2];

    v25 = sub_2517D8658();
    sub_2517D4B0C(MEMORY[0x277D84F90]);
    v26 = sub_2517D8788();

    [v18 openSensitiveURL:v25 withOptions:v26];

    sub_2517D8178();
    (*(v21 + 8))(v20, v22);

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_2517D01F0@<X0>(void *a1@<X8>)
{
  if (qword_27F45FB18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F462008;
}

uint64_t sub_2517D0260(uint64_t a1)
{
  v3 = sub_2517D8468();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_2517D8208();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_2517D0350(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2517D81E8();
  return sub_2517C015C;
}

unint64_t sub_2517D03C8()
{
  result = qword_27F45FE08;
  if (!qword_27F45FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE08);
  }

  return result;
}

unint64_t sub_2517D0420()
{
  result = qword_27F45FE10;
  if (!qword_27F45FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE10);
  }

  return result;
}

unint64_t sub_2517D0478()
{
  result = qword_27F45FE18;
  if (!qword_27F45FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE18);
  }

  return result;
}

uint64_t sub_2517D0504@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FB08 != -1)
  {
    swift_once();
  }

  v2 = sub_2517D8638();
  v3 = __swift_project_value_buffer(v2, qword_27F461FD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2517D05AC()
{
  sub_2517D0F88(0, &qword_27F45FE48, MEMORY[0x277CBA300]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2517D0F88(0, &qword_27F45FE50, MEMORY[0x277CBA2F8]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2517D8568();
  sub_2517D8558();
  swift_getKeyPath();
  sub_2517D0FEC();
  sub_2517D8548();

  sub_2517D8558();
  sub_2517D8578();
  return sub_2517D8538();
}

uint64_t sub_2517D0778@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FB10 != -1)
  {
    swift_once();
  }

  sub_2517D104C(0, &qword_27F45FD90, MEMORY[0x277CB9F98], MEMORY[0x277D83D88]);
  v3 = __swift_project_value_buffer(v2, qword_27F461FF0);

  return sub_2517CB8B0(v3, a1);
}

uint64_t sub_2517D0820(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517C04AC;

  return sub_2517CFD90(a1, v4);
}

uint64_t sub_2517D08C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2517D09F0();
  *a1 = result;
  return result;
}

uint64_t sub_2517D08E8(uint64_t a1)
{
  v2 = sub_2517D03C8();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2517D0934()
{
  result = qword_27F45FE20;
  if (!qword_27F45FE20)
  {
    sub_2517D0F88(255, &qword_27F45FE28, MEMORY[0x277CBA2B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE20);
  }

  return result;
}

uint64_t sub_2517D09A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2517D09F0()
{
  v0 = sub_2517D8588();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x28223BE20](v0);
  v30 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D83D88];
  sub_2517D104C(0, &qword_27F45FD50, MEMORY[0x277CB9CC0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = v27 - v6;
  sub_2517D104C(0, &qword_28110FE50, MEMORY[0x277CC9130], v3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v28 = v27 - v9;
  v10 = sub_2517D8628();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2517D86B8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2517D87C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v27[0] = sub_2517D8638();
  v19 = *(v27[0] - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v27[0]);
  sub_2517D0EA0();
  v27[1] = v21;
  sub_2517D87B8();
  sub_2517D86A8();
  v22 = *MEMORY[0x277CC9110];
  v23 = *(v11 + 104);
  v23(v14, v22, v10);
  sub_2517D8648();
  sub_2517D87B8();
  sub_2517D86A8();
  v23(v14, v22, v10);
  v24 = v28;
  sub_2517D8648();
  (*(v19 + 56))(v24, 0, 1, v27[0]);
  v25 = sub_2517D8168();
  (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
  (*(v31 + 104))(v30, *MEMORY[0x277CBA308], v32);
  return sub_2517D8248();
}

void sub_2517D0EA0()
{
  if (!qword_27F45FE30)
  {
    sub_2517D8468();
    sub_2517D09A8(&qword_27F45FE38, MEMORY[0x277CBA230]);
    v0 = sub_2517D8258();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FE30);
    }
  }
}

unint64_t sub_2517D0F34()
{
  result = qword_27F45FE40;
  if (!qword_27F45FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE40);
  }

  return result;
}

void sub_2517D0F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2517D03C8();
    v7 = a3(a1, &type metadata for OpenSearchIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2517D0FEC()
{
  if (!qword_27F45FE58)
  {
    sub_2517D0EA0();
    v0 = sub_2517D8AF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FE58);
    }
  }
}

void sub_2517D104C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2517D10C4()
{
  result = qword_27F45FE68;
  if (!qword_27F45FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE68);
  }

  return result;
}

unint64_t static RecordsSectionProvider.healthViewEntityID(for:)(_BYTE *a1)
{
  v1 = 0xD000000000000011;
  *a1;
  if (*a1 == 2)
  {
    v2 = 0xD000000000000020;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*a1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*a1 > 1u)
  {
    v1 = v2;
  }

  if (*a1 <= 4u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_2517D1200()
{
  v1[18] = v0;
  v2 = type metadata accessor for HealthViewEntity();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  sub_2517D2060();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2517D131C, 0, 0);
}

uint64_t sub_2517D131C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 29;
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = [objc_allocWithZone(MEMORY[0x277D123E8]) initWithHealthStore_];
  v1[25] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_2517D14EC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_2517D20C8();
  sub_2517D8888();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2517D1ADC;
  v1[13] = &block_descriptor_0;
  [v8 shouldShowHealthRecordsSectionWithCompletion_];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2517D14EC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2517D15CC, 0, 0);
}

uint64_t sub_2517D15CC()
{
  if (*(v0 + 232) == 1)
  {
    v1 = MEMORY[0x277D84F90];
    *(v0 + 208) = 0;
    *(v0 + 216) = v1;
    LOBYTE(v1) = byte_2863AC2C8;
    *(v0 + 235) = byte_2863AC2C8;
    *(v0 + 234) = v1;
    v2 = swift_task_alloc();
    *(v0 + 224) = v2;
    *v2 = v0;
    v2[1] = sub_2517D16E0;
    v3 = *(v0 + 200);

    return sub_2517C3488(v3);
  }

  else
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);

    v7 = *(v0 + 8);
    v8 = MEMORY[0x277D84F90];

    return v7(v8);
  }
}

uint64_t sub_2517D16E0(char a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 236) = a1;

  return MEMORY[0x2822009F8](sub_2517D17E0, 0, 0);
}

uint64_t sub_2517D17E0()
{
  if ((*(v0 + 236) & 1) == 0)
  {
    v4 = *(v0 + 216);
    goto LABEL_28;
  }

  v1 = 0xD00000000000001FLL;
  v2 = *(v0 + 235);
  if (v2 > 4)
  {
    if (*(v0 + 235) <= 6u)
    {
      if (v2 == 5)
      {
        v3 = "ViewHealthRecordsCategoryRoom/6";
      }

      else
      {
        v3 = "ViewHealthRecordsCategoryRoom/2";
      }
    }

    else if (v2 == 7)
    {
      v3 = "ViewHealthRecordsCategoryRoom/1";
    }

    else if (v2 == 8)
    {
      v3 = "ViewHealthRecordsCategoryRoom/5";
    }

    else
    {
      v3 = "ViewHealthRecordsCategoryRoom/8";
    }

    goto LABEL_22;
  }

  if (*(v0 + 235) <= 1u)
  {
    if (*(v0 + 235))
    {
      v3 = "ViewHealthRecordsCategoryRoom/7";
    }

    else
    {
      v1 = 0xD000000000000011;
      v3 = "ViewHealthRecords";
    }

    goto LABEL_22;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v3 = "ViewHealthRecordsCategoryRoom/3";
    }

    else
    {
      v3 = "ViewHealthRecordsCategoryRoom/4";
    }

LABEL_22:
    v5 = v3 - 32;
    goto LABEL_23;
  }

  v5 = "ViewHealthRecordsCategoryRoom/7";
  v1 = 0xD000000000000020;
LABEL_23:
  v6 = *(v0 + 216);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);
  v9 = v5 | 0x8000000000000000;
  sub_2517C283C(v7 + *(v8 + 20));
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *v7 = v1;
  v7[1] = v9;
  v11 = (v7 + *(v8 + 24));
  *v11 = sub_2517D213C;
  v11[1] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 216);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2517CAB70(0, v4[2] + 1, 1, *(v0 + 216));
  }

  v14 = v4[2];
  v13 = v4[3];
  if (v14 >= v13 >> 1)
  {
    v4 = sub_2517CAB70(v13 > 1, v14 + 1, 1, v4);
  }

  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v4[2] = v14 + 1;
  sub_2517CB600(v15, v4 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
LABEL_28:
  v17 = *(v0 + 208) + 1;
  if (*(v0 + 208) == 9)
  {
    v18 = *(v0 + 192);
    v19 = *(v0 + 168);

    v20 = *(v0 + 8);

    return v20(v4);
  }

  else
  {
    *(v0 + 208) = v17;
    *(v0 + 216) = v4;
    v22 = *(&unk_2863AC2A8 + v17 + 32);
    *(v0 + 235) = v22;
    *(v0 + 234) = v22;
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_2517D16E0;
    v24 = *(v0 + 200);

    return sub_2517C3488(v24);
  }
}

uint64_t sub_2517D1ADC(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_2517D2060();
  return sub_2517D88A8();
}

id sub_2517D1B40(unsigned __int8 a1)
{
  sub_2517CF60C(0, &qword_27F45FDD8, MEMORY[0x277CC9260]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v26 - v4;
  v6 = sub_2517D8688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &unk_2517DA820;
  v12 = "ViewHealthRecordsCategoryRoom/2";
  v13 = "ViewHealthRecordsCategoryRoom/1";
  if (a1 != 8)
  {
    v13 = "ViewHealthRecordsCategoryRoom/5";
  }

  if (a1 != 7)
  {
    v12 = v13;
  }

  v14 = "ViewHealthRecordsCategoryRoom/4";
  if (a1 != 5)
  {
    v14 = "ViewHealthRecordsCategoryRoom/6";
  }

  if (a1 <= 6u)
  {
    v12 = v14;
  }

  v15 = "ViewHealthRecordsCategoryRoom/7";
  v16 = "sCategoryRoom/10";
  if (a1 != 3)
  {
    v16 = "ViewHealthRecordsCategoryRoom/3";
  }

  if (a1 == 2)
  {
    v17 = 0xD000000000000020;
  }

  else
  {
    v17 = 0xD00000000000001FLL;
  }

  if (a1 != 2)
  {
    v15 = v16;
  }

  if (a1)
  {
    v18 = 0xD00000000000001FLL;
  }

  else
  {
    v18 = 0xD000000000000011;
  }

  if (a1)
  {
    v11 = "ViewHealthRecords";
  }

  if (a1 <= 1u)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (a1 > 1u)
  {
    v11 = v15;
  }

  if (a1 <= 4u)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0xD00000000000001FLL;
  }

  if (a1 <= 4u)
  {
    v21 = v11;
  }

  else
  {
    v21 = v12;
  }

  v26[0] = 0xD000000000000011;
  v26[1] = 0x80000002517DB1C0;
  MEMORY[0x2530831A0](v20, v21 | 0x8000000000000000);

  sub_2517D8678();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_2517CEB58(v5);
    sub_2517BB2A0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v23 = result;

      v24 = sub_2517D8658();
      sub_2517D4B0C(MEMORY[0x277D84F90]);
      v25 = sub_2517D8788();

      [v23 openSensitiveURL:v24 withOptions:v25];

      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2517D1EC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517CA9BC;

  return sub_2517D1200();
}

uint64_t type metadata accessor for RecordsSectionProvider()
{
  result = qword_27F45FE70;
  if (!qword_27F45FE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2517D1FC0()
{
  sub_2517BA230();
  if (v0 <= 0x3F)
  {
    sub_2517CF60C(319, &qword_28110FE50, MEMORY[0x277CC9130]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2517D2060()
{
  if (!qword_27F45FE80)
  {
    sub_2517D20C8();
    v0 = sub_2517D88B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FE80);
    }
  }
}

void sub_2517D20C8()
{
  if (!qword_27F45FE88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F45FE88);
    }
  }
}

uint64_t sub_2517D2158(uint64_t a1)
{
  sub_2517D234C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_2517D8738();
}

uint64_t sub_2517D22AC(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_2517C470C();
    swift_willThrowTypedImpl();
    sub_2517D234C();
    return sub_2517D8898();
  }

  else
  {
    sub_2517D234C();

    return sub_2517D88A8();
  }
}

void sub_2517D234C()
{
  if (!qword_27F45FE90)
  {
    sub_2517C470C();
    v0 = sub_2517D88B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FE90);
    }
  }
}

uint64_t sub_2517D23B4(void *a1, char a2)
{
  sub_2517D234C();
  v5 = *(*(v4 - 8) + 80);

  return sub_2517D22AC(a1, a2 & 1);
}

uint64_t sub_2517D2444(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = &unk_2517DA820;
  v4 = a1;
  if (a1 > 4u)
  {
    v12 = "ViewHealthRecordsCategoryRoom/2";
    v13 = "ViewHealthRecordsCategoryRoom/1";
    if (a1 != 8)
    {
      v13 = "ViewHealthRecordsCategoryRoom/5";
    }

    if (a1 != 7)
    {
      v12 = v13;
    }

    v14 = "ViewHealthRecordsCategoryRoom/4";
    if (a1 != 5)
    {
      v14 = "ViewHealthRecordsCategoryRoom/6";
    }

    if (a1 <= 6u)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }

    v10 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = "ViewHealthRecordsCategoryRoom/7";
    v6 = "sCategoryRoom/10";
    if (a1 != 3)
    {
      v6 = "ViewHealthRecordsCategoryRoom/3";
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000020;
    }

    else
    {
      v7 = 0xD00000000000001FLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v8 = "ViewHealthRecords";
    if (a1)
    {
      v9 = 0xD00000000000001FLL;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (!a1)
    {
      v8 = &unk_2517DA820;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v15 = "ViewHealthRecordsCategoryRoom/6";
      }

      else
      {
        v15 = "ViewHealthRecordsCategoryRoom/2";
      }
    }

    else if (a2 == 7)
    {
      v15 = "ViewHealthRecordsCategoryRoom/1";
    }

    else if (a2 == 8)
    {
      v15 = "ViewHealthRecordsCategoryRoom/5";
    }

    else
    {
      v15 = "ViewHealthRecordsCategoryRoom/8";
    }

    goto LABEL_49;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v15 = "ViewHealthRecordsCategoryRoom/7";
LABEL_49:
      v3 = v15 - 32;
      goto LABEL_50;
    }

    v2 = 0xD000000000000011;
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v15 = "ViewHealthRecordsCategoryRoom/3";
      }

      else
      {
        v15 = "ViewHealthRecordsCategoryRoom/4";
      }

      goto LABEL_49;
    }

    v3 = "ViewHealthRecordsCategoryRoom/7";
    v2 = 0xD000000000000020;
  }

LABEL_50:
  if (v10 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_2517D8A68();
  }

  return v16 & 1;
}

uint64_t sub_2517D265C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x676E6972616873;
    }

    else
    {
      v2 = 0x7972616D6D7573;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x646E6572546C6C61;
    v3 = 0xE900000000000073;
  }

  else if (a1 == 3)
  {
    v2 = 0x49676E6972616873;
    v3 = 0xED0000657469766ELL;
  }

  else
  {
    v2 = 0x684368746C616568;
    v3 = 0xEF7473696C6B6365;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x676E6972616873;
    }

    else
    {
      v8 = 0x7972616D6D7573;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x49676E6972616873;
    v5 = 0xED0000657469766ELL;
    if (a2 != 3)
    {
      v4 = 0x684368746C616568;
      v5 = 0xEF7473696C6B6365;
    }

    if (a2 == 2)
    {
      v6 = 0x646E6572546C6C61;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE900000000000073;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_2517D8A68();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t HealthTabView.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7972616D6D7573;
  v3 = 0x646E6572546C6C61;
  v4 = 0x49676E6972616873;
  if (v1 != 3)
  {
    v4 = 0x684368746C616568;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6972616873;
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

uint64_t sub_2517D28E4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2517BD148(0, &qword_28110FE58, MEMORY[0x277CBA248], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - v5;
  sub_2517BD148(0, &qword_28110FE50, MEMORY[0x277CC9130], v2);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v36 - v9;
  v10 = sub_2517D8628();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2517D86B8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2517D87C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_2517D8638();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = *v1;
  if (v22 <= 1)
  {
    if (*v1)
    {
      sub_2517D87B8();
      sub_2517D86A8();
      v38 = *MEMORY[0x277CC9110];
      v37 = *(v11 + 104);
      v37(v14);
      sub_2517D8648();
      v34 = *(v20 + 56);
      v23 = v20 + 56;
      v34(v39, 1, 1, v19);
    }

    else
    {
      sub_2517D87B8();
      sub_2517D86A8();
      v38 = *MEMORY[0x277CC9110];
      v37 = *(v11 + 104);
      v37(v14);
      sub_2517D8648();
      v24 = *(v20 + 56);
      v23 = v20 + 56;
      v24(v39, 1, 1, v19);
    }

    sub_2517D8478();
    v25 = sub_2517D8488();
    (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
    sub_2517BD148(0, &qword_27F45FD68, MEMORY[0x277CC9130], MEMORY[0x277D84560]);
    v26 = *(v23 + 16);
    v27 = (*(v23 + 24) + 32) & ~*(v23 + 24);
    *(swift_allocObject() + 16) = xmmword_2517D9010;
    goto LABEL_11;
  }

  if (v22 != 2 && v22 != 3)
  {
    sub_2517D87B8();
    sub_2517D86A8();
    v38 = *MEMORY[0x277CC9110];
    v37 = *(v11 + 104);
    v37(v14);
    sub_2517D8648();
    v30 = *(v20 + 56);
    v29 = v20 + 56;
    v30(v39, 1, 1, v19);
    sub_2517D8478();
    v31 = sub_2517D8488();
    (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
    sub_2517BD148(0, &qword_27F45FD68, MEMORY[0x277CC9130], MEMORY[0x277D84560]);
    v32 = *(v29 + 16);
    v33 = (*(v29 + 24) + 32) & ~*(v29 + 24);
    *(swift_allocObject() + 16) = xmmword_2517D9010;
LABEL_11:
    sub_2517D87B8();
    sub_2517D86A8();
    (v37)(v14, v38, v10);
    sub_2517D8648();
    return sub_2517D84A8();
  }

  sub_2517D87B8();
  sub_2517D86A8();
  (*(v11 + 104))(v14, *MEMORY[0x277CC9110], v10);
  sub_2517D8648();
  (*(v20 + 56))(v39, 1, 1, v19);
  sub_2517D8478();
  v28 = sub_2517D8488();
  (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
  return sub_2517D84A8();
}

uint64_t sub_2517D32D4()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = v2;
  if (v1 <= 1)
  {
    if (v1)
    {
      v4 = [v2 sharingOverviewHostName];
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = [v2 healthAppSummaryHostName];
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
    v4 = [v2 healthTrendsHostName];
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_2517D87F8();
    v5 = sub_2517D87E8();

    goto LABEL_13;
  }

  if (v1 != 3)
  {
    v4 = [v2 healthAppHealthChecklistHostName];
    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v4 = [v2 healthAppSharingInviteFlowPath];
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  v5 = v4;
LABEL_13:
  v6 = [v3 getInternalURLStringFor_];

  v7 = sub_2517D87F8();
  return v7;
}

HealthIntents::HealthTabView_optional __swiftcall HealthTabView.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2517D8A18();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2517D3490()
{
  result = qword_27F45FE98;
  if (!qword_27F45FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FE98);
  }

  return result;
}

uint64_t sub_2517D34E4()
{
  v1 = *v0;
  sub_2517D8AC8();
  sub_2517D8818();

  return sub_2517D8AE8();
}

uint64_t sub_2517D35E4()
{
  *v0;
  *v0;
  *v0;
  sub_2517D8818();
}

uint64_t sub_2517D36D0()
{
  v1 = *v0;
  sub_2517D8AC8();
  sub_2517D8818();

  return sub_2517D8AE8();
}

void sub_2517D37D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7573;
  v5 = 0xE900000000000073;
  v6 = 0x646E6572546C6C61;
  v7 = 0xED0000657469766ELL;
  v8 = 0x49676E6972616873;
  if (v2 != 3)
  {
    v8 = 0x684368746C616568;
    v7 = 0xEF7473696C6B6365;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6972616873;
    v3 = 0xE700000000000000;
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

unint64_t sub_2517D3898()
{
  result = qword_27F45FEA0;
  if (!qword_27F45FEA0)
  {
    sub_2517D38F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEA0);
  }

  return result;
}

void sub_2517D38F0()
{
  if (!qword_27F45FEA8)
  {
    v0 = sub_2517D8868();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FEA8);
    }
  }
}

uint64_t getEnumTagSinglePayload for HealthTabView(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HealthTabView(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2517D3AA4()
{
  result = qword_27F45FEB0;
  if (!qword_27F45FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEB0);
  }

  return result;
}

unint64_t sub_2517D3AFC()
{
  result = qword_27F45FEB8;
  if (!qword_27F45FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEB8);
  }

  return result;
}

unint64_t sub_2517D3BBC()
{
  result = qword_27F45FEC0;
  if (!qword_27F45FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEC0);
  }

  return result;
}

uint64_t sub_2517D3C10()
{
  v0 = sub_2517D8628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2517D86B8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2517D87C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2517D8638();
  __swift_allocate_value_buffer(v9, qword_27F462010);
  __swift_project_value_buffer(v9, qword_27F462010);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2517D8648();
}

uint64_t sub_2517D3DFC()
{
  sub_2517D4D4C(0, &qword_28110FE50, MEMORY[0x277CC9130]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v20 - v2;
  v20[0] = sub_2517D8628();
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2517D86B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2517D87C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2517D8638();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_2517D4D4C(0, &qword_27F45FD90, MEMORY[0x277CB9F98]);
  v16 = v15;
  __swift_allocate_value_buffer(v15, qword_27F462028);
  v17 = __swift_project_value_buffer(v16, qword_27F462028);
  sub_2517D87B8();
  sub_2517D86A8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v20[0]);
  sub_2517D8648();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_2517D8408();
  v18 = sub_2517D83F8();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_2517D4158()
{
  v0 = sub_2517D85C8();
  __swift_allocate_value_buffer(v0, qword_27F462040);
  v1 = __swift_project_value_buffer(v0, qword_27F462040);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2517D41E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2517D8688();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2517D42AC, 0, 0);
}

id sub_2517D42AC()
{
  v1 = *MEMORY[0x277D62210];
  v2 = *MEMORY[0x277D62118];
  v3 = HKSPSleepURLWithOptions();
  v5 = v0[5];
  v4 = v0[6];
  if (v3)
  {
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v3;
    sub_2517D8668();

    (*(v7 + 32))(v4, v5, v6);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];
    v17 = sub_2517D8658();
    sub_2517D4B0C(MEMORY[0x277D84F90]);
    v18 = sub_2517D8788();

    [v11 openSensitiveURL:v17 withOptions:v18];

    sub_2517D8178();
    (*(v15 + 8))(v13, v14);

    v19 = v0[1];
  }

  else
  {
    sub_2517D4730();
    swift_allocError();
    swift_willThrow();

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_2517D4510@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_2517D45B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F45FB28 != -1)
  {
    swift_once();
  }

  sub_2517D4D4C(0, &qword_27F45FD90, MEMORY[0x277CB9F98]);
  v3 = __swift_project_value_buffer(v2, qword_27F462028);

  return sub_2517CB8B0(v3, a1);
}

uint64_t sub_2517D464C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2517C04AC;

  return sub_2517D41E0(a1);
}

uint64_t sub_2517D46E4(uint64_t a1)
{
  v2 = sub_2517D3BBC();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2517D4730()
{
  result = qword_27F45FEC8;
  if (!qword_27F45FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEC8);
  }

  return result;
}

unint64_t sub_2517D4784(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2517D8AC8();
  sub_2517D8818();
  v6 = sub_2517D8AE8();

  return sub_2517D4894(a1, a2, v6);
}

unint64_t sub_2517D47FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2517D8708();
  sub_2517D4DA0(&qword_27F45FEE0, MEMORY[0x277D124E0]);
  v5 = sub_2517D8798();

  return sub_2517D494C(a1, v5);
}

unint64_t sub_2517D4894(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2517D8A68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2517D494C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2517D8708();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2517D4DA0(&qword_27F45FEE8, MEMORY[0x277D124E0]);
      v16 = sub_2517D87A8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2517D4B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2517D4C10();
    v3 = sub_2517D89F8();
    v4 = a1 + 32;
    sub_2517D82A8();
    while (1)
    {
      sub_2517D4C74(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2517D4784(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2517D4D3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_2517D4C10()
{
  if (!qword_27F45FED0)
  {
    v0 = sub_2517D8A08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FED0);
    }
  }
}

uint64_t sub_2517D4C74(uint64_t a1, uint64_t a2)
{
  sub_2517D4CD8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2517D4CD8()
{
  if (!qword_27F45FED8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F45FED8);
    }
  }
}

_OWORD *sub_2517D4D3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2517D4D4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517D8918();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2517D4DA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2517D4DFC()
{
  result = qword_27F45FEF0;
  if (!qword_27F45FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45FEF0);
  }

  return result;
}

uint64_t sub_2517D4E50(uint64_t a1)
{
  v2 = sub_2517D82B8();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517D7F3C(0, &qword_27F45FF90, sub_2517CC0B4, &type metadata for OpenDataTypeIntent, MEMORY[0x277CB9F68]);
  v30 = v5;
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  sub_2517D7F3C(0, &qword_27F45FF98, sub_2517CC0B4, &type metadata for OpenDataTypeIntent, MEMORY[0x277CB9F60]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_2517CC0B4();
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  v29 = sub_2517BC8FC();
  v31 = a1;
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v28 = sub_2517D82D8();
  v11 = *(v32 + 8);
  v32 += 8;
  v33 = v11;
  v12 = v30;
  v11(v8, v30);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v14 = v25;
  v13 = v26;
  v15 = v27;
  (*(v26 + 104))(v25, *MEMORY[0x277CB9F50], v27);
  sub_2517D8368();
  (*(v13 + 8))(v14, v15);
  sub_2517D8388();
  sub_2517D83A8();
  v27 = sub_2517D82D8();
  v33(v8, v12);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v26 = sub_2517D82D8();
  v33(v8, v12);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v25 = sub_2517D82D8();
  v16 = v33;
  v33(v8, v30);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v24 = sub_2517D82D8();
  v17 = v30;
  v16(v8, v30);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v18 = sub_2517D82D8();
  v33(v8, v17);
  sub_2517D7FA4();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2517DA720;
  v20 = v27;
  *(v19 + 32) = v28;
  *(v19 + 40) = v20;
  v21 = v25;
  *(v19 + 48) = v26;
  *(v19 + 56) = v21;
  *(v19 + 64) = v24;
  *(v19 + 72) = v18;
  v22 = sub_2517D82C8();

  return v22;
}

uint64_t sub_2517D5658(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_2517D82A8();
  v4 = v2;
  return sub_2517D8208();
}

uint64_t sub_2517D56AC()
{
  v0 = sub_2517D8348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_2517BC8FC();
  sub_2517D82A8();

  sub_2517CC0B4();
  sub_2517D8338();
  v5 = sub_2517D8328();
  (*(v1 + 8))(v4, v0);
  sub_2517D7894(0, &qword_27F45FF40, sub_2517D7D5C, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2517D9010;
  *(v6 + 32) = v5;
  v7 = sub_2517D8318();

  return v7;
}

uint64_t sub_2517D5840()
{
  v0 = sub_2517D82F8();
  v1 = sub_2517D82F8();
  v2 = sub_2517D82F8();
  v3 = sub_2517D82F8();
  v4 = sub_2517D82F8();
  v5 = sub_2517D82F8();
  sub_2517D7894(0, &qword_27F45FF08, sub_2517D78F8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2517DA720;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_2517D82E8();

  return v7;
}

uint64_t sub_2517D599C(uint64_t a1)
{
  v29 = sub_2517D82B8();
  v42 = *(v29 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v29);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517D7F3C(0, &qword_27F45FF70, sub_2517C5564, &type metadata for OpenViewIntent, MEMORY[0x277CB9F68]);
  v5 = v4;
  v41 = *(v4 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  sub_2517D7F3C(0, &qword_27F45FF78, sub_2517C5564, &type metadata for OpenViewIntent, MEMORY[0x277CB9F60]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_2517C5564();
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  v32 = sub_2517D7E14(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
  v40 = a1;
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  sub_2517D83A8();
  v31 = sub_2517D82D8();
  v11 = *(v41 + 8);
  v41 += 8;
  v33 = v11;
  v36 = v5;
  v11(v8, v5);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v39 = *MEMORY[0x277CB9F50];
  v12 = v42;
  v13 = *(v42 + 104);
  v37 = v42 + 104;
  v38 = v13;
  v14 = v34;
  v15 = v29;
  v13(v34);
  sub_2517D8368();
  v16 = *(v12 + 8);
  v42 = v12 + 8;
  v35 = v16;
  v16(v14, v15);
  sub_2517D8388();
  sub_2517D83A8();
  v30 = sub_2517D82D8();
  v17 = v5;
  v18 = v33;
  v33(v8, v17);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v19 = v34;
  v38(v34, v39, v15);
  sub_2517D8368();
  v35(v19, v15);
  sub_2517D8388();
  sub_2517D83A8();
  v28 = sub_2517D82D8();
  v18(v8, v36);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v20 = v34;
  v38(v34, v39, v15);
  sub_2517D8368();
  v35(v20, v15);
  sub_2517D8388();
  sub_2517D83A8();
  v27 = sub_2517D82D8();
  v33(v8, v36);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v38(v20, v39, v15);
  sub_2517D8368();
  v35(v20, v15);
  sub_2517D8388();
  sub_2517D83A8();
  v21 = sub_2517D82D8();
  v33(v8, v36);
  sub_2517D7EB8();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2517DA730;
  v23 = v30;
  *(v22 + 32) = v31;
  *(v22 + 40) = v23;
  v24 = v27;
  *(v22 + 48) = v28;
  *(v22 + 56) = v24;
  *(v22 + 64) = v21;
  v25 = sub_2517D82C8();

  return v25;
}

uint64_t sub_2517D6204(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for HealthViewEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2517CB59C(a1, &v13 - v9);
  v11 = *a2;
  sub_2517CB59C(v10, v8);
  sub_2517D8208();
  return sub_2517D7E5C(v10);
}

uint64_t sub_2517D62C4()
{
  v0 = sub_2517D8348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_2517D7E14(&qword_27F45FBF0, type metadata accessor for HealthViewEntity);
  sub_2517D82A8();

  sub_2517C5564();
  sub_2517D8338();
  v5 = sub_2517D8328();
  (*(v1 + 8))(v4, v0);
  sub_2517D7894(0, &qword_27F45FF40, sub_2517D7D5C, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2517D9010;
  *(v6 + 32) = v5;
  v7 = sub_2517D8318();

  return v7;
}

uint64_t sub_2517D6488()
{
  v15 = sub_2517D82F8();
  v14 = sub_2517D82F8();
  v13 = sub_2517D82F8();
  v12 = sub_2517D82F8();
  v0 = sub_2517D82F8();
  v1 = sub_2517D82F8();
  v2 = sub_2517D82F8();
  v3 = sub_2517D82F8();
  v4 = sub_2517D82F8();
  v5 = sub_2517D82F8();
  v6 = sub_2517D82F8();
  v7 = sub_2517D82F8();
  v8 = sub_2517D82F8();
  sub_2517D7894(0, &qword_27F45FF08, sub_2517D78F8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2517DA740;
  *(v9 + 32) = v15;
  *(v9 + 40) = v14;
  *(v9 + 48) = v13;
  *(v9 + 56) = v12;
  *(v9 + 64) = v0;
  *(v9 + 72) = v1;
  *(v9 + 80) = v2;
  *(v9 + 88) = v3;
  *(v9 + 96) = v4;
  *(v9 + 104) = v5;
  *(v9 + 112) = v6;
  *(v9 + 120) = v7;
  *(v9 + 128) = v8;
  v10 = sub_2517D82E8();

  return v10;
}

uint64_t sub_2517D6708(uint64_t a1)
{
  v33 = a1;
  sub_2517D7F3C(0, &qword_27F45FF50, sub_2517D03C8, &type metadata for OpenSearchIntent, MEMORY[0x277CB9F68]);
  v41 = v1;
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v1);
  v40 = &v28 - v3;
  v4 = sub_2517D82B8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517D7F3C(0, &qword_27F45FF58, sub_2517D03C8, &type metadata for OpenSearchIntent, MEMORY[0x277CB9F60]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_2517D03C8();
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  v34 = sub_2517D7E14(&qword_27F45FE38, MEMORY[0x277CBA230]);
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v12 = *MEMORY[0x277CB9F50];
  v42 = v5[13];
  v38 = v12;
  v39 = v4;
  v42(v8, v12, v4);
  v35 = v5 + 13;
  sub_2517D8368();
  v13 = v5[1];
  v13(v8, v4);
  v36 = v13;
  v37 = v5 + 1;
  sub_2517D8388();
  v14 = v40;
  sub_2517D83A8();
  v32 = v11;
  v31 = sub_2517D82D8();
  v28 = *(v43 + 8);
  v43 += 8;
  v28(v14, v41);
  sub_2517D8398();
  sub_2517D8388();
  v15 = v39;
  v42(v8, v12, v39);
  sub_2517D8368();
  v16 = v8;
  v13(v8, v15);
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v17 = v40;
  sub_2517D83A8();
  v30 = sub_2517D82D8();
  v18 = v41;
  v19 = v28;
  v28(v17, v41);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v20 = v39;
  v42(v16, v38, v39);
  sub_2517D8368();
  v36(v16, v20);
  sub_2517D8388();
  v21 = v40;
  sub_2517D83A8();
  v29 = sub_2517D82D8();
  v19(v21, v18);
  sub_2517D8398();
  sub_2517D8388();
  swift_getKeyPath();
  sub_2517D82A8();

  sub_2517D8378();

  sub_2517D8388();
  v22 = v39;
  v42(v16, v38, v39);
  sub_2517D8368();
  v36(v16, v22);
  sub_2517D8388();
  sub_2517D83A8();
  v23 = sub_2517D82D8();
  v19(v21, v41);
  sub_2517D7D90();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2517DA750;
  v25 = v30;
  *(v24 + 32) = v31;
  *(v24 + 40) = v25;
  *(v24 + 48) = v29;
  *(v24 + 56) = v23;
  v26 = sub_2517D82C8();

  return v26;
}

uint64_t sub_2517D6E80(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2517D8468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  sub_2517D8208();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2517D6FB4()
{
  v0 = sub_2517D8348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_2517D7E14(&qword_27F45FE38, MEMORY[0x277CBA230]);
  sub_2517D82A8();

  sub_2517D03C8();
  sub_2517D8338();
  v5 = sub_2517D8328();
  (*(v1 + 8))(v4, v0);
  sub_2517D7894(0, &qword_27F45FF40, sub_2517D7D5C, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2517D9010;
  *(v6 + 32) = v5;
  v7 = sub_2517D8318();

  return v7;
}

uint64_t sub_2517D7178()
{
  v0 = sub_2517D82F8();
  v1 = sub_2517D82F8();
  v2 = sub_2517D82F8();
  v3 = sub_2517D82F8();
  v4 = sub_2517D82F8();
  v5 = sub_2517D82F8();
  sub_2517D7894(0, &qword_27F45FF08, sub_2517D78F8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2517DA720;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_2517D82E8();

  return v7;
}

uint64_t sub_2517D72D0()
{
  sub_2517D7F3C(0, &qword_27F45FF28, sub_2517D3BBC, &type metadata for OpenSleepScheduleIntent, MEMORY[0x277CB9F68]);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v15 - v4;
  sub_2517D3BBC();
  sub_2517D8358();
  v18 = sub_2517D82D8();
  v6 = *(v2 + 8);
  v6(v5, v1);
  sub_2517D8358();
  v17 = sub_2517D82D8();
  v6(v5, v1);
  sub_2517D8358();
  v16 = sub_2517D82D8();
  v6(v5, v1);
  sub_2517D8358();
  v7 = sub_2517D82D8();
  v6(v5, v1);
  sub_2517D8358();
  v8 = sub_2517D82D8();
  v6(v5, v1);
  sub_2517D8358();
  v9 = sub_2517D82D8();
  v6(v5, v1);
  sub_2517D8358();
  v10 = sub_2517D82D8();
  v6(v5, v1);
  sub_2517D7C68();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2517DA760;
  v12 = v17;
  *(v11 + 32) = v18;
  *(v11 + 40) = v12;
  *(v11 + 48) = v16;
  *(v11 + 56) = v7;
  *(v11 + 64) = v8;
  *(v11 + 72) = v9;
  *(v11 + 80) = v10;
  v13 = sub_2517D82C8();

  return v13;
}

uint64_t sub_2517D764C()
{
  v0 = sub_2517D82F8();
  sub_2517D7894(0, &qword_27F45FF08, sub_2517D78F8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2517D9010;
  *(v1 + 32) = v0;
  v2 = sub_2517D82E8();

  return v2;
}

uint64_t sub_2517D76EC()
{
  v0 = sub_2517D8298();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517C5564();
  sub_2517D8288();
  v5 = sub_2517D8278();
  (*(v1 + 8))(v4, v0);
  sub_2517D7894(0, &qword_27F45FEF8, sub_2517D7860, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2517D9010;
  *(v6 + 32) = v5;
  v7 = sub_2517D8268();

  return v7;
}

void sub_2517D7894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2517D78F8()
{
  if (!qword_27F45FF10)
  {
    v0 = sub_2517D8868();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FF10);
    }
  }
}

uint64_t sub_2517D7948()
{
  v0 = sub_2517D83D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2517CC528();
  sub_2517CC0B4();
  sub_2517D83E8();
  v5 = sub_2517D83C8();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v14 = sub_2517CAE9C();
  sub_2517C5564();
  sub_2517D83E8();
  v7 = sub_2517D83C8();
  v6(v4, v0);
  v14 = sub_2517D09F0();
  sub_2517D03C8();
  sub_2517D83E8();
  v8 = sub_2517D83C8();
  v6(v4, v0);
  sub_2517D3BBC();
  sub_2517D83E8();
  v9 = sub_2517D83C8();
  v6(v4, v0);
  sub_2517D7894(0, &qword_27F45FF18, sub_2517D7C34, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2517DA750;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_2517D83B8();

  return v11;
}

void sub_2517D7C68()
{
  if (!qword_27F45FF30)
  {
    sub_2517D7CEC(255, &qword_27F45FF38, &qword_27F45FF28, sub_2517D3BBC, &type metadata for OpenSleepScheduleIntent);
    v0 = sub_2517D8A58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FF30);
    }
  }
}

void sub_2517D7CEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_2517D7F3C(255, a3, a4, a5, MEMORY[0x277CB9F68]);
    v6 = sub_2517D8868();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2517D7D90()
{
  if (!qword_27F45FF60)
  {
    sub_2517D7CEC(255, &qword_27F45FF68, &qword_27F45FF50, sub_2517D03C8, &type metadata for OpenSearchIntent);
    v0 = sub_2517D8A58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FF60);
    }
  }
}

uint64_t sub_2517D7E14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2517D7E5C(uint64_t a1)
{
  v2 = type metadata accessor for HealthViewEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2517D7EB8()
{
  if (!qword_27F45FF80)
  {
    sub_2517D7CEC(255, &qword_27F45FF88, &qword_27F45FF70, sub_2517C5564, &type metadata for OpenViewIntent);
    v0 = sub_2517D8A58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FF80);
    }
  }
}

void sub_2517D7F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2517D7FA4()
{
  if (!qword_27F45FFA0)
  {
    sub_2517D7CEC(255, &qword_27F45FFA8, &qword_27F45FF90, sub_2517CC0B4, &type metadata for OpenDataTypeIntent);
    v0 = sub_2517D8A58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45FFA0);
    }
  }
}