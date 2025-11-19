id _DateAdjustedForwardByMinutes(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  [v4 setMinute:a2];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateByAddingComponents:v4 toDate:v3 options:0];

  return v6;
}

uint64_t sub_24B84F0D8()
{
  v0 = sub_24B855B4C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_24B855B3C();
  qword_27F061638 = result;
  return result;
}

uint64_t sub_24B84F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[24] = a7;
  v8[25] = v7;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;
  v9 = sub_24B85598C();
  v8[26] = v9;
  v10 = *(v9 - 8);
  v8[27] = v10;
  v11 = *(v10 + 64) + 15;
  v8[28] = swift_task_alloc();
  v12 = sub_24B855A6C();
  v8[29] = v12;
  v13 = *(v12 - 8);
  v8[30] = v13;
  v14 = *(v13 + 64) + 15;
  v8[31] = swift_task_alloc();
  v15 = sub_24B85599C();
  v8[32] = v15;
  v16 = *(v15 - 8);
  v8[33] = v16;
  v17 = *(v16 + 64) + 15;
  v8[34] = swift_task_alloc();
  v18 = sub_24B855B1C();
  v8[35] = v18;
  v19 = *(v18 - 8);
  v8[36] = v19;
  v20 = *(v19 + 64) + 15;
  v8[37] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368) - 8) + 64) + 15;
  v8[38] = swift_task_alloc();
  v22 = sub_24B85594C();
  v8[39] = v22;
  v23 = *(v22 - 8);
  v8[40] = v23;
  v24 = *(v23 + 64) + 15;
  v8[41] = swift_task_alloc();
  v25 = sub_24B855ACC();
  v8[42] = v25;
  v26 = *(v25 - 8);
  v8[43] = v26;
  v27 = *(v26 + 64) + 15;
  v8[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B84F3E8, 0, 0);
}

uint64_t sub_24B84F3E8()
{
  v1 = v0[44];
  v2 = v0[40];
  v31 = v0[38];
  v32 = v0[39];
  v3 = v0[22];
  v4 = v0[19];
  v29 = v0[21];
  v30 = v0[20];
  v5 = v0[18];
  sub_24B855ABC();

  v6 = sub_24B855A9C();
  sub_24B85595C();
  v6(v0 + 2, 0);

  v7 = sub_24B855AAC();
  sub_24B8559AC();
  v7(v0 + 6, 0);
  sub_24B855700(v30, v31, &qword_27F061600, &qword_24B857368);
  v8 = *(v2 + 48);
  if (v8(v31, 1, v32) == 1)
  {
    v9 = v0[38];
    v10 = v0[39];
    v11 = v0[41];
    sub_24B85593C();
    if (v8(v9, 1, v10) != 1)
    {
      sub_24B8552DC(v0[38], &qword_27F061600, &qword_24B857368);
    }
  }

  else
  {
    (*(v0[40] + 32))(v0[41], v0[38], v0[39]);
  }

  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];
  sub_24B85591C();
  v16 = v15;
  v17 = v15;
  (*(v13 + 8))(v12, v14);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 < 1.84467441e19)
  {
    v18 = v0[44];
    v19 = v0[24];
    v20 = v0[25];
    v21 = v0[23];
    v22 = sub_24B855AAC();
    sub_24B8559BC();
    v22(v0 + 10, 0);
    v14 = swift_allocObject();
    v0[45] = v14;
    v14[2] = v20;
    v14[3] = v21;
    v14[4] = v19;
    v23 = qword_27F061630;

    if (v23 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v24 = *(MEMORY[0x277D39E78] + 4);
  v33 = (*MEMORY[0x277D39E78] + MEMORY[0x277D39E78]);
  v25 = swift_task_alloc();
  v0[46] = v25;
  *v25 = v0;
  v25[1] = sub_24B84F754;
  v26 = v0[44];
  v27 = v0[37];

  return v33(v27, v26, sub_24B8557F4, v14);
}

uint64_t sub_24B84F754()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_24B84FDA4;
  }

  else
  {
    v3 = sub_24B84F868;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B84F868()
{
  v1 = v0[37];
  if (sub_24B855B0C())
  {
    v67 = v0[43];
    v69 = v0[42];
    v72 = v0[44];
    v3 = v0[36];
    v2 = v0[37];
    v65 = v0[45];
    v66 = v0[35];
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24B857240;
    sub_24B855AEC();
    v8 = sub_24B85597C();
    v10 = v9;
    v11 = *(v4 + 8);
    v11(v5, v6);
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_24B855C9C();

    sub_24B855AEC();
    v12 = sub_24B85597C();
    v14 = v13;
    v11(v5, v6);
    sub_24B855768();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    *(v16 + 16) = 0;

    (*(v3 + 8))(v2, v66);
    (*(v67 + 8))(v72, v69);
    goto LABEL_13;
  }

  v17 = v0[37];
  v19 = v0[33];
  v18 = v0[34];
  v20 = v0[32];
  sub_24B855A1C();
  v21 = (*(v19 + 88))(v18, v20);
  if (v21 != *MEMORY[0x277D38EE8])
  {
    v38 = v0[44];
    v39 = v0[45];
    v40 = v0[42];
    v41 = v0[43];
    v43 = v0[36];
    v42 = v0[37];
    v44 = v0[35];
    if (v21 == *MEMORY[0x277D38EF0])
    {
      v45 = v0[45];

      (*(v43 + 8))(v42, v44);
      (*(v41 + 8))(v38, v40);
      v46 = 0;
      v47 = 0;
      v15 = 0;
LABEL_14:
      v50 = v0[44];
      v51 = v0[41];
      v53 = v0[37];
      v52 = v0[38];
      v54 = v0[34];
      v55 = v0[31];
      v56 = v0[28];

      v57 = v0[1];

      return v57(v46, v47, v15);
    }

    v48 = v0[33];
    v70 = v0[32];
    v73 = v0[34];
    sub_24B855768();
    v15 = swift_allocError();
    *v49 = 0xD000000000000032;
    *(v49 + 8) = 0x800000024B858030;
    *(v49 + 16) = 0;

    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v38, v40);
    (*(v48 + 8))(v73, v70);
LABEL_13:
    v46 = 0;
    v47 = 0;
    goto LABEL_14;
  }

  v22 = v0[37];
  result = sub_24B855A2C();
  v24 = result;
  v25 = *(result + 16);
  if (!v25)
  {
LABEL_9:
    v31 = v0[44];
    v30 = v0[45];
    v32 = v0[42];
    v33 = v0[43];
    v35 = v0[36];
    v34 = v0[37];
    v36 = v0[35];

    sub_24B855768();
    v15 = swift_allocError();
    *v37 = 0xD000000000000016;
    *(v37 + 8) = 0x800000024B858070;
    *(v37 + 16) = 1;

    (*(v35 + 8))(v34, v36);
    (*(v33 + 8))(v31, v32);
    goto LABEL_13;
  }

  v26 = 0;
  v27 = v0[30];
  v28 = (v27 + 8);
  while (v26 < *(v24 + 16))
  {
    (*(v27 + 16))(v0[31], v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v0[29]);
    sub_24B855A5C();
    v29 = sub_24B855B9C();

    if (v29 >= 1)
    {
      v58 = v0[45];
      v59 = v0[43];
      v71 = v0[42];
      v74 = v0[44];
      v60 = v0[36];
      v68 = v0[37];
      v61 = v0[35];
      v62 = v0[31];
      v63 = v0[29];

      v46 = sub_24B855A5C();
      v47 = v64;

      (*v28)(v62, v63);
      (*(v60 + 8))(v68, v61);
      (*(v59 + 8))(v74, v71);
      v15 = 0;
      goto LABEL_14;
    }

    ++v26;
    result = (*v28)(v0[31], v0[29]);
    if (v25 == v26)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B84FDA4()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[42];
  v5 = v0[43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24B857240;
  swift_getErrorValue();
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[16];
  v10 = sub_24B855C4C();
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = v10;
  *(v6 + 40) = v11;
  sub_24B855C9C();

  (*(v5 + 8))(v2, v4);
  v12 = v0[44];
  v13 = v0[41];
  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[28];

  v19 = v0[1];

  return v19(0, 0, v1);
}

uint64_t sub_24B84FF14(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_24B85596C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B855A7C();
  v37 = MEMORY[0x277D84F90];
  v11 = *(v10 + 16);
  if (!v11)
  {

    v27 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_13;
    }

LABEL_17:
    if (!sub_24B855C3C())
    {
    }

    goto LABEL_14;
  }

  v29 = a3;
  v30 = a2;
  v13 = *(v6 + 16);
  v12 = v6 + 16;
  v14 = *(v12 + 64);
  v31 = v10;
  v15 = v10 + ((v14 + 32) & ~v14);
  v32 = MEMORY[0x277D84F90];
  v33 = v13;
  v16 = *(v12 + 56);
  v35 = (v12 - 8);
  v36 = v16;
  v34 = v12;
  v13(v9, v15, v5);
  while (1)
  {
    sub_24B855600();
    v17 = sub_24B855B5C();
    v19 = v18;
    v20 = objc_allocWithZone(MEMORY[0x277D4C750]);
    sub_24B855658(v17, v19);
    v21 = sub_24B85590C();
    v22 = [v20 initWithData_];

    if (v22)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277D4C398]) initWithProtobuf_];

      sub_24B8556AC(v17, v19);
      sub_24B8556AC(v17, v19);
      v24 = (*v35)(v9, v5);
      if (v23)
      {
        MEMORY[0x24C24BE90](v24);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24B855BCC();
        }

        sub_24B855BDC();
        v32 = v37;
      }

      v25 = v33;
    }

    else
    {
      sub_24B8556AC(v17, v19);
      sub_24B8556AC(v17, v19);
      v25 = v33;
      (*v35)(v9, v5);
    }

    v15 += v36;
    if (!--v11)
    {
      break;
    }

    v25(v9, v15, v5);
  }

  a2 = v30;
  v27 = v32;
  if (v32 >> 62)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    a2(v27);
  }
}

uint64_t sub_24B850240()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static FUPegasusBridge.flightSearchResponse(for:date:clientBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_24B855C0C();
  v5[3] = sub_24B855BFC();
  v11 = swift_task_alloc();
  v5[4] = v11;
  *v11 = v5;
  v11[1] = sub_24B850358;

  return sub_24B852A14(a1, a2, a3, a4, a5);
}

uint64_t sub_24B850358(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v10 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  v8 = sub_24B855BEC();

  return MEMORY[0x2822009F8](sub_24B85049C, v8, v7);
}

uint64_t sub_24B85049C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];
  v4 = v0[6];

  return v2(v3, v4);
}

uint64_t sub_24B8506A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = sub_24B855C0C();
  v4[8] = sub_24B855BFC();
  v7 = sub_24B855BEC();

  return MEMORY[0x2822009F8](sub_24B850778, v7, v6);
}

uint64_t sub_24B850778()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[9] = _Block_copy(v2);
  v5 = sub_24B855B7C();
  v7 = v6;
  v0[10] = v6;
  if (v4)
  {
    v8 = v0[6];
    v9 = v0[3];
    sub_24B85592C();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v0[6];
  v12 = v0[4];
  v13 = sub_24B85594C();
  (*(*(v13 - 8) + 56))(v11, v10, 1, v13);
  if (v12)
  {
    v14 = v0[4];
    v15 = sub_24B855B7C();
    v12 = v16;
  }

  else
  {
    v15 = 0;
  }

  v0[11] = v12;
  v17 = v0[7];
  v0[12] = sub_24B855BFC();
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_24B8508E8;
  v19 = v0[6];

  return sub_24B852A14(v5, v7, v19, v15, v12);
}

uint64_t sub_24B8508E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v8 = *(*v2 + 56);
  v12 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  v10 = sub_24B855BEC();

  return MEMORY[0x2822009F8](sub_24B850A6C, v10, v9);
}

uint64_t sub_24B850A6C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[6];

  sub_24B8552DC(v3, &qword_27F061600, &qword_24B857368);
  if (v1)
  {
    v4 = v0[14];
    sub_24B8551C4();
    v1 = sub_24B855BBC();
  }

  v5 = v0[15];
  if (v5)
  {
    v6 = v0[15];
    v7 = sub_24B8558FC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[14];
  v9 = v0[9];
  v10 = v0[6];
  (v9)[2](v9, v1, v7);

  _Block_release(v9);

  v11 = v0[1];

  return v11();
}

uint64_t static FUPegasusBridge.subscribe(to:date:clientBundleIdentifier:pushMessagesHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24B850BB0, 0, 0);
}

uint64_t sub_24B850BB0()
{
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for ProxyActor();
  v3 = swift_allocObject();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24B850CA4;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_24B84F118(v9, v7, v8, v5, v6, sub_24B853878, v3);
}

uint64_t sub_24B850CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v11 = *v3;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3);
}

uint64_t sub_24B850F84(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v5[2] = v11;
  v12 = _Block_copy(a4);
  v5[3] = _Block_copy(a5);
  v5[4] = sub_24B855B7C();
  v5[5] = v13;
  if (a2)
  {
    sub_24B85592C();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_24B85594C();
  (*(*(v15 - 8) + 56))(v11, v14, 1, v15);
  if (a3)
  {
    v16 = sub_24B855B7C();
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v5[6] = v16;
  v5[7] = v17;
  v18 = swift_allocObject();
  v5[8] = v18;
  *(v18 + 16) = v12;

  return MEMORY[0x2822009F8](sub_24B8510FC, 0, 0);
}

uint64_t sub_24B8510FC()
{
  v1 = v0[8];
  type metadata accessor for ProxyActor();
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = sub_24B8554A0;
  *(v2 + 24) = v1;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_24B851200;
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];

  return sub_24B84F118(v7, v6, v8, v4, v5, sub_24B8558F8, v2);
}

uint64_t sub_24B851200(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *(*v3 + 64);
  v10 = *(*v3 + 56);
  v11 = *(*v3 + 40);
  v12 = *(*v3 + 16);
  v13 = *v3;

  sub_24B8552DC(v12, &qword_27F061600, &qword_24B857368);
  if (a2)
  {
    v14 = sub_24B855B6C();
    if (a3)
    {
LABEL_3:
      v15 = sub_24B8558FC();
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = *(v6 + 24);
  (v16)[2](v16, v14, v15);

  _Block_release(v16);

  v17 = *(v13 + 8);

  return v17();
}

void sub_24B851434(uint64_t a1, uint64_t a2)
{
  sub_24B8551C4();
  v3 = sub_24B855BBC();
  (*(a2 + 16))(a2, v3);
}

uint64_t static FUPegasusBridge.subscribe(to:date:clientBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24B851564;

  return sub_24B8538A0(a1, a2, a3, a4, a5);
}

uint64_t sub_24B851564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_24B851818(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[2] = v9;
  v4[3] = _Block_copy(a4);
  v10 = sub_24B855B7C();
  v12 = v11;
  v4[4] = v11;
  if (a2)
  {
    sub_24B85592C();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_24B85594C();
  (*(*(v14 - 8) + 56))(v9, v13, 1, v14);
  if (a3)
  {
    a3 = sub_24B855B7C();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v4[5] = v16;
  v17 = swift_task_alloc();
  v4[6] = v17;
  *v17 = v4;
  v17[1] = sub_24B8519B0;

  return sub_24B8538A0(v10, v12, v9, a3, v16);
}

uint64_t sub_24B8519B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *(*v3 + 16);
  v11 = *v3;

  sub_24B8552DC(v10, &qword_27F061600, &qword_24B857368);
  if (a2)
  {
    v12 = sub_24B855B6C();
    if (a3)
    {
LABEL_3:
      v13 = sub_24B8558FC();
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v14 = *(v6 + 24);
  (v14)[2](v14, v12, v13);

  _Block_release(v14);

  v15 = *(v11 + 8);

  return v15();
}

uint64_t static FUPegasusBridge.fetchUpdate(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B851C40;

  return sub_24B85461C(a1, a2);
}

uint64_t sub_24B851C40(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_24B851EC4(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_24B855B7C();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B851F7C;

  return sub_24B85461C(v3, v5);
}

uint64_t sub_24B851F7C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *v2;

  if (v3)
  {
    a1 = sub_24B8558FC();

    v9 = a1;
LABEL_3:
    v10 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v9 = 0;
    goto LABEL_3;
  }

  sub_24B8551C4();
  v11 = sub_24B855BBC();

  v10 = v11;
  v9 = 0;
  a1 = v11;
LABEL_6:
  v12 = *(v5 + 16);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v8 + 8);

  return v13();
}

id FUPegasusBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FUPegasusBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FUPegasusBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FUPegasusBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FUPegasusBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B852264(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24B8558F4;

  return v7();
}

uint64_t sub_24B85234C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24B852434;

  return v8();
}

uint64_t sub_24B852434()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B852528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_24B855700(a3, v24 - v10, &qword_27F0615F0, &qword_24B8572F8);
  v12 = sub_24B855C2C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24B8552DC(v11, &qword_27F0615F0, &qword_24B8572F8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24B855C1C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_24B855BEC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_24B855B8C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_24B8552DC(a3, &qword_27F0615F0, &qword_24B8572F8);

    return v22;
  }

LABEL_8:
  sub_24B8552DC(a3, &qword_27F0615F0, &qword_24B8572F8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24B852824(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B85291C;

  return v7(a1);
}

uint64_t sub_24B85291C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B852A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_24B85598C();
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = sub_24B85596C();
  v5[26] = v9;
  v10 = *(v9 - 8);
  v5[27] = v10;
  v11 = *(v10 + 64) + 15;
  v5[28] = swift_task_alloc();
  v12 = sub_24B85599C();
  v5[29] = v12;
  v13 = *(v12 - 8);
  v5[30] = v13;
  v14 = *(v13 + 64) + 15;
  v5[31] = swift_task_alloc();
  v15 = sub_24B855A4C();
  v5[32] = v15;
  v16 = *(v15 - 8);
  v5[33] = v16;
  v17 = *(v16 + 64) + 15;
  v5[34] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v19 = sub_24B85594C();
  v5[36] = v19;
  v20 = *(v19 - 8);
  v5[37] = v20;
  v21 = *(v20 + 64) + 15;
  v5[38] = swift_task_alloc();
  v22 = sub_24B8559FC();
  v5[39] = v22;
  v23 = *(v22 - 8);
  v5[40] = v23;
  v24 = *(v23 + 64) + 15;
  v5[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B852CE0, 0, 0);
}

uint64_t sub_24B852CE0()
{
  v1 = v0[41];
  v2 = v0[37];
  v27 = v0[35];
  v28 = v0[36];
  v3 = v0[22];
  v4 = v0[19];
  v25 = v0[21];
  v26 = v0[20];
  v5 = v0[18];
  sub_24B8559EC();

  v6 = sub_24B8559CC();
  sub_24B85595C();
  v6(v0 + 2, 0);

  v7 = sub_24B8559DC();
  sub_24B8559AC();
  v7(v0 + 6, 0);
  sub_24B855700(v26, v27, &qword_27F061600, &qword_24B857368);
  v8 = *(v2 + 48);
  if (v8(v27, 1, v28) == 1)
  {
    v9 = v0[35];
    v10 = v0[36];
    v11 = v0[38];
    sub_24B85593C();
    if (v8(v9, 1, v10) != 1)
    {
      sub_24B8552DC(v0[35], &qword_27F061600, &qword_24B857368);
    }
  }

  else
  {
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
  }

  v13 = v0[37];
  v12 = v0[38];
  v14 = v0[36];
  sub_24B85591C();
  v16 = v15;
  v17 = v15;
  (*(v13 + 8))(v12, v14);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 < 1.84467441e19)
  {
    v18 = v0[41];
    v19 = sub_24B8559DC();
    sub_24B8559BC();
    v19(v0 + 10, 0);
    if (qword_27F061630 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v20 = *(MEMORY[0x277D39E60] + 4);
  v29 = (*MEMORY[0x277D39E60] + MEMORY[0x277D39E60]);
  v21 = swift_task_alloc();
  v0[42] = v21;
  *v21 = v0;
  v21[1] = sub_24B853000;
  v22 = v0[41];
  v23 = v0[34];

  return v29(v23, v22);
}

uint64_t sub_24B853000()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_24B8536B8;
  }

  else
  {
    v3 = sub_24B853114;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B853114()
{
  v1 = v0[34];
  if (sub_24B855A3C())
  {
    v68 = v0[39];
    v71 = v0[41];
    v2 = v0[33];
    v3 = v0[34];
    v65 = v0[32];
    v67 = v0[40];
    v4 = v0[24];
    v5 = v0[25];
    v6 = v0[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24B857240;
    sub_24B855A0C();
    v8 = sub_24B85597C();
    v10 = v9;
    v11 = *(v4 + 8);
    v11(v5, v6);
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_24B855C9C();

    sub_24B855A0C();
    v12 = sub_24B85597C();
    v14 = v13;
    v11(v5, v6);
    sub_24B855768();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    *(v16 + 16) = 0;
    (*(v2 + 8))(v3, v65);
    (*(v67 + 8))(v71, v68);
LABEL_3:
    v17 = 0;
    goto LABEL_24;
  }

  v18 = v0[34];
  v20 = v0[30];
  v19 = v0[31];
  v21 = v0[29];
  sub_24B855A1C();
  v22 = (*(v20 + 88))(v19, v21);
  if (v22 == *MEMORY[0x277D38EE8])
  {
    v23 = v0[34];
    v24 = sub_24B855A2C();
    v74 = MEMORY[0x277D84F90];
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v0[27];
      v28 = *(v26 + 16);
      v26 += 16;
      v27 = v28;
      v29 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v30 = *(v26 + 56);
      v66 = MEMORY[0x277D84F90];
      v31 = (v26 - 8);
      v32 = v0[43];
      v69 = v30;
      v72 = v28;
      v28(v0[28], v29, v0[26]);
      while (1)
      {
        sub_24B855600();
        v33 = sub_24B855B5C();
        if (v32)
        {
          break;
        }

        v35 = v33;
        v36 = v34;
        v37 = objc_allocWithZone(MEMORY[0x277D4C750]);
        sub_24B855658(v35, v36);
        v38 = sub_24B85590C();
        v39 = [v37 initWithData_];

        if (!v39)
        {
          sub_24B8556AC(v35, v36);
          sub_24B8556AC(v35, v36);
          v30 = v69;
          v27 = v72;
          goto LABEL_8;
        }

        v40 = v0[28];
        v41 = v0[26];
        v42 = [objc_allocWithZone(MEMORY[0x277D4C398]) initWithProtobuf_];

        sub_24B8556AC(v35, v36);
        sub_24B8556AC(v35, v36);
        v43 = (*v31)(v40, v41);
        v30 = v69;
        v27 = v72;
        if (v42)
        {
          MEMORY[0x24C24BE90](v43);
          if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v44 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_24B855BCC();
          }

          sub_24B855BDC();
          v66 = v74;
        }

LABEL_9:
        v32 = 0;
        v29 += v30;
        if (!--v25)
        {

          goto LABEL_23;
        }

        v27(v0[28], v29, v0[26]);
      }

LABEL_8:
      (*v31)(v0[28], v0[26]);
      goto LABEL_9;
    }

    v66 = MEMORY[0x277D84F90];
LABEL_23:
    v53 = v0[40];
    v54 = v0[41];
    v55 = v0[39];
    (*(v0[33] + 8))(v0[34], v0[32]);
    (*(v53 + 8))(v54, v55);
    v15 = 0;
    v17 = v66;
  }

  else
  {
    v46 = v0[40];
    v45 = v0[41];
    v47 = v0[39];
    v49 = v0[33];
    v48 = v0[34];
    v50 = v0[32];
    if (v22 != *MEMORY[0x277D38EF0])
    {
      v51 = v0[30];
      v70 = v0[29];
      v73 = v0[31];
      sub_24B855768();
      v15 = swift_allocError();
      *v52 = 0xD00000000000002FLL;
      *(v52 + 8) = 0x800000024B858090;
      *(v52 + 16) = 0;
      (*(v49 + 8))(v48, v50);
      (*(v46 + 8))(v45, v47);
      (*(v51 + 8))(v73, v70);
      goto LABEL_3;
    }

    (*(v49 + 8))(v0[34], v0[32]);
    (*(v46 + 8))(v45, v47);
    v17 = 0;
    v15 = 0;
  }

LABEL_24:
  v56 = v0[41];
  v57 = v0[38];
  v59 = v0[34];
  v58 = v0[35];
  v60 = v0[31];
  v61 = v0[28];
  v62 = v0[25];

  v63 = v0[1];

  return v63(v17, v15);
}

uint64_t sub_24B8536B8()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B857240;
  swift_getErrorValue();
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[16];
  v9 = sub_24B855C4C();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  sub_24B855C9C();

  (*(v3 + 8))(v2, v4);
  v11 = v0[41];
  v12 = v0[38];
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[25];

  v18 = v0[1];

  return v18(0, v1);
}

uint64_t sub_24B853840()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B853878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24B8538A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_24B85598C();
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = sub_24B855A6C();
  v5[26] = v9;
  v10 = *(v9 - 8);
  v5[27] = v10;
  v11 = *(v10 + 64) + 15;
  v5[28] = swift_task_alloc();
  v12 = sub_24B85599C();
  v5[29] = v12;
  v13 = *(v12 - 8);
  v5[30] = v13;
  v14 = *(v13 + 64) + 15;
  v5[31] = swift_task_alloc();
  v15 = sub_24B855B1C();
  v5[32] = v15;
  v16 = *(v15 - 8);
  v5[33] = v16;
  v17 = *(v16 + 64) + 15;
  v5[34] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061600, &qword_24B857368) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v19 = sub_24B85594C();
  v5[36] = v19;
  v20 = *(v19 - 8);
  v5[37] = v20;
  v21 = *(v20 + 64) + 15;
  v5[38] = swift_task_alloc();
  v22 = sub_24B855ACC();
  v5[39] = v22;
  v23 = *(v22 - 8);
  v5[40] = v23;
  v24 = *(v23 + 64) + 15;
  v5[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B853B6C, 0, 0);
}

uint64_t sub_24B853B6C()
{
  v1 = v0[41];
  v2 = v0[37];
  v27 = v0[35];
  v28 = v0[36];
  v3 = v0[22];
  v4 = v0[19];
  v25 = v0[21];
  v26 = v0[20];
  v5 = v0[18];
  sub_24B855ABC();

  v6 = sub_24B855A9C();
  sub_24B85595C();
  v6(v0 + 2, 0);

  v7 = sub_24B855AAC();
  sub_24B8559AC();
  v7(v0 + 6, 0);
  sub_24B855700(v26, v27, &qword_27F061600, &qword_24B857368);
  v8 = *(v2 + 48);
  if (v8(v27, 1, v28) == 1)
  {
    v9 = v0[35];
    v10 = v0[36];
    v11 = v0[38];
    sub_24B85593C();
    if (v8(v9, 1, v10) != 1)
    {
      sub_24B8552DC(v0[35], &qword_27F061600, &qword_24B857368);
    }
  }

  else
  {
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
  }

  v13 = v0[37];
  v12 = v0[38];
  v14 = v0[36];
  sub_24B85591C();
  v16 = v15;
  v17 = v15;
  (*(v13 + 8))(v12, v14);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 < 1.84467441e19)
  {
    v18 = v0[41];
    v19 = sub_24B855AAC();
    sub_24B8559BC();
    v19(v0 + 10, 0);
    if (qword_27F061630 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v20 = *(MEMORY[0x277D39E70] + 4);
  v29 = (*MEMORY[0x277D39E70] + MEMORY[0x277D39E70]);
  v21 = swift_task_alloc();
  v0[42] = v21;
  *v21 = v0;
  v21[1] = sub_24B853E8C;
  v22 = v0[41];
  v23 = v0[34];

  return v29(v23, v22);
}

uint64_t sub_24B853E8C()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_24B8544B4;
  }

  else
  {
    v3 = sub_24B853FA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B853FA0()
{
  v1 = v0[34];
  if (sub_24B855B0C())
  {
    v64 = v0[39];
    v67 = v0[41];
    v2 = v0[33];
    v3 = v0[34];
    v62 = v0[32];
    v63 = v0[40];
    v4 = v0[24];
    v5 = v0[25];
    v6 = v0[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24B857240;
    sub_24B855AEC();
    v8 = sub_24B85597C();
    v10 = v9;
    v11 = *(v4 + 8);
    v11(v5, v6);
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_24B855C9C();

    sub_24B855AEC();
    v12 = sub_24B85597C();
    v14 = v13;
    v11(v5, v6);
    sub_24B855768();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    *(v16 + 16) = 0;
    (*(v2 + 8))(v3, v62);
    (*(v63 + 8))(v67, v64);
    goto LABEL_13;
  }

  v17 = v0[34];
  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[29];
  sub_24B855A1C();
  v21 = (*(v19 + 88))(v18, v20);
  if (v21 != *MEMORY[0x277D38EE8])
  {
    v38 = v0[40];
    v37 = v0[41];
    v39 = v0[39];
    v41 = v0[33];
    v40 = v0[34];
    v42 = v0[32];
    if (v21 == *MEMORY[0x277D38EF0])
    {
      (*(v41 + 8))(v0[34], v0[32]);
      (*(v38 + 8))(v37, v39);
      v43 = 0;
      v44 = 0;
      v15 = 0;
LABEL_14:
      v47 = v0[41];
      v48 = v0[38];
      v50 = v0[34];
      v49 = v0[35];
      v51 = v0[31];
      v52 = v0[28];
      v53 = v0[25];

      v54 = v0[1];

      return v54(v43, v44, v15);
    }

    v45 = v0[30];
    v65 = v0[29];
    v68 = v0[31];
    sub_24B855768();
    v15 = swift_allocError();
    *v46 = 0xD000000000000032;
    *(v46 + 8) = 0x800000024B858030;
    *(v46 + 16) = 0;
    (*(v41 + 8))(v40, v42);
    (*(v38 + 8))(v37, v39);
    (*(v45 + 8))(v68, v65);
LABEL_13:
    v43 = 0;
    v44 = 0;
    goto LABEL_14;
  }

  v22 = v0[34];
  result = sub_24B855A2C();
  v24 = result;
  v25 = *(result + 16);
  if (!v25)
  {
LABEL_9:
    v31 = v0[40];
    v30 = v0[41];
    v32 = v0[39];
    v34 = v0[33];
    v33 = v0[34];
    v35 = v0[32];

    sub_24B855768();
    v15 = swift_allocError();
    *v36 = 0xD000000000000016;
    *(v36 + 8) = 0x800000024B858070;
    *(v36 + 16) = 1;
    (*(v34 + 8))(v33, v35);
    (*(v31 + 8))(v30, v32);
    goto LABEL_13;
  }

  v26 = 0;
  v27 = v0[27];
  v28 = (v27 + 8);
  while (v26 < *(v24 + 16))
  {
    (*(v27 + 16))(v0[28], v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v0[26]);
    sub_24B855A5C();
    v29 = sub_24B855B9C();

    if (v29 >= 1)
    {
      v55 = v0[40];
      v66 = v0[39];
      v69 = v0[41];
      v56 = v0[33];
      v57 = v0[34];
      v58 = v0[32];
      v59 = v0[28];
      v60 = v0[26];

      v43 = sub_24B855A5C();
      v44 = v61;
      (*v28)(v59, v60);
      (*(v56 + 8))(v57, v58);
      (*(v55 + 8))(v69, v66);
      v15 = 0;
      goto LABEL_14;
    }

    ++v26;
    result = (*v28)(v0[28], v0[26]);
    if (v25 == v26)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B8544B4()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F061608, &qword_24B8573B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B857240;
  swift_getErrorValue();
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[16];
  v9 = sub_24B855C4C();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  sub_24B855C9C();

  (*(v3 + 8))(v2, v4);
  v11 = v0[41];
  v12 = v0[38];
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[25];

  v18 = v0[1];

  return v18(0, 0, v1);
}

uint64_t sub_24B85461C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B85596C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_24B855A8C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B854738, 0, 0);
}

uint64_t sub_24B854738()
{
  if (qword_27F061630 != -1)
  {
    swift_once();
  }

  v1 = *(MEMORY[0x277D39E68] + 4);
  v7 = (*MEMORY[0x277D39E68] + MEMORY[0x277D39E68]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_24B85481C;
  v3 = v0[9];
  v4 = v0[2];
  v5 = v0[3];

  return v7(v3, v4, v5);
}

uint64_t sub_24B85481C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_24B854BF0;
  }

  else
  {
    v3 = sub_24B854930;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B854930()
{
  v1 = v0[9];
  v2 = sub_24B855A7C();
  v30 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[5];
    v6 = *(v4 + 16);
    v4 += 16;
    v5 = v6;
    v7 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    v27 = MEMORY[0x277D84F90];
    v9 = (v4 - 8);
    v10 = v0[11];
    v28 = v8;
    v29 = v6;
    v6(v0[6], v7, v0[4]);
    while (1)
    {
      sub_24B855600();
      v11 = sub_24B855B5C();
      if (v10)
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      v15 = objc_allocWithZone(MEMORY[0x277D4C750]);
      sub_24B855658(v13, v14);
      v16 = sub_24B85590C();
      v17 = [v15 initWithData_];

      if (!v17)
      {
        sub_24B8556AC(v13, v14);
        sub_24B8556AC(v13, v14);
        v8 = v28;
        v5 = v29;
        goto LABEL_4;
      }

      v18 = v0[6];
      v19 = v0[4];
      v20 = [objc_allocWithZone(MEMORY[0x277D4C398]) initWithProtobuf_];

      sub_24B8556AC(v13, v14);
      sub_24B8556AC(v13, v14);
      v21 = (*v9)(v18, v19);
      v8 = v28;
      v5 = v29;
      if (v20)
      {
        MEMORY[0x24C24BE90](v21);
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24B855BCC();
        }

        sub_24B855BDC();
        v27 = v30;
      }

LABEL_5:
      v10 = 0;
      v7 += v8;
      if (!--v3)
      {

        v23 = v27;
        goto LABEL_16;
      }

      v5(v0[6], v7, v0[4]);
    }

LABEL_4:
    (*v9)(v0[6], v0[4]);
    goto LABEL_5;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_16:
  v24 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v25 = v0[1];

  return v25(v23);
}

uint64_t sub_24B854BF0()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t _s19FlightUtilitiesCore15FUPegasusBridgeC11unsubscribe9channelIds5Error_pSgSS_tFZ_0()
{
  if (qword_27F061630 != -1)
  {
    swift_once();
  }

  sub_24B855B2C();
  return 0;
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

uint64_t sub_24B854DD0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B854E10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24B852434;

  return sub_24B851EC4(v2, v3);
}

uint64_t sub_24B854EC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24B8558F4;

  return sub_24B852264(v2, v3, v5);
}

uint64_t sub_24B854F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B8558F4;

  return sub_24B85234C(a1, v4, v5, v7);
}

uint64_t sub_24B855054(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B8558F4;

  return sub_24B852824(a1, v5);
}

uint64_t sub_24B85510C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B852434;

  return sub_24B852824(a1, v5);
}

unint64_t sub_24B8551C4()
{
  result = qword_27F0615F8;
  if (!qword_27F0615F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0615F8);
  }

  return result;
}

uint64_t sub_24B855214()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24B8558F4;

  return sub_24B851818(v2, v3, v4, v5);
}

uint64_t sub_24B8552DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B85533C()
{
  _Block_release(*(v0 + 40));
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B855394()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24B8558F4;

  return sub_24B850F84(v2, v3, v4, v5, v7);
}

uint64_t sub_24B855468()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_34Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24B8554F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24B8558F4;

  return sub_24B8506A0(v2, v3, v4, v5);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24B855600()
{
  result = qword_27F061610;
  if (!qword_27F061610)
  {
    sub_24B85596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F061610);
  }

  return result;
}

uint64_t sub_24B855658(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24B8556AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24B855700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24B855768()
{
  result = qword_27F0616C0[0];
  if (!qword_27F0616C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F0616C0);
  }

  return result;
}

uint64_t sub_24B8557BC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B85581C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24B855864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}