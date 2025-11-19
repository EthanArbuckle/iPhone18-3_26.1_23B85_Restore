uint64_t sub_24A480700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_24A4AA700();
  v32[3] = v12;
  v32[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
  v13 = sub_24A38D3BC(v32);
  (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D089F8], v12);
  LOBYTE(v12) = sub_24A4AA6C0();
  result = sub_24A37EEE0(v32);
  if (v12)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A4AB630();
    sub_24A378E18(v15, qword_27EF4E260);

    v16 = sub_24A4AB600();
    v17 = sub_24A4ABCE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v31 = *v4;
      v32[0] = v19;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v20 = sub_24A4AB870();
      v22 = a1;
      v23 = a3;
      v24 = a2;
      v25 = sub_24A37BD58(v20, v21, v32);

      *(v18 + 4) = v25;
      a2 = v24;
      a3 = v23;
      a1 = v22;
      _os_log_impl(&dword_24A376000, v16, v17, "%s: removing location alert action initiated", v18, 0xCu);
      v26 = v30;
      sub_24A37EEE0(v30);
      MEMORY[0x24C219130](v26, -1, -1);
      MEMORY[0x24C219130](v18, -1, -1);
    }

    v27 = sub_24A4ABB70();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a1;
    v28[5] = v4;
    v28[6] = a2;
    v28[7] = a3;

    sub_24A432370(0, 0, v11, &unk_24A4BC520, v28);
  }

  return result;
}

uint64_t sub_24A480A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_24A4AB020();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = *(*(sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = sub_24A4AAB20();
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A480BC0, 0, 0);
}

uint64_t sub_24A480BC0()
{
  v43 = v0;
  v1 = (v0[4] + OBJC_IVAR____TtC7FMFCore28FMFRemoveLocationAlertAction_locationAlert);
  if (!v1[1])
  {
    goto LABEL_4;
  }

  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = *v1;
  sub_24A4AAAE0();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_24A37EF2C(v0[11], &qword_27EF3F468, &qword_24A4B9F30);
LABEL_4:
    v6 = sub_24A4AA6B0();
    sub_24A38D374(&qword_27EF40C20, MEMORY[0x277D08938]);
    v7 = swift_allocError();
    strcpy(v8, "fenceID is nil");
    v8[15] = -18;
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D08930], v6);
    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v9 = v0[5];
    v10 = sub_24A4AB630();
    sub_24A378E18(v10, qword_27EF4E260);

    v11 = v7;
    v12 = sub_24A4AB600();
    v13 = sub_24A4ABCC0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[5];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42[0] = v17;
      *v15 = 136315394;
      v0[2] = *v14;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v18 = sub_24A4AB870();
      v20 = sub_24A37BD58(v18, v19, v42);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = v7;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v22;
      *v16 = v22;
      _os_log_impl(&dword_24A376000, v12, v13, "%s: error when removing location alert: %@", v15, 0x16u);
      sub_24A37EF2C(v16, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v16, -1, -1);
      sub_24A37EEE0(v17);
      MEMORY[0x24C219130](v17, -1, -1);
      MEMORY[0x24C219130](v15, -1, -1);
    }

    v24 = v0[6];
    v23 = v0[7];
    LOBYTE(v42[0]) = 0;
    v25 = v7;
    v24(v42, v7);

    v27 = v0[14];
    v26 = v0[15];
    v29 = v0[10];
    v28 = v0[11];

    v30 = v0[1];

    return v30();
  }

  v32 = v0[14];
  v33 = v0[15];
  v34 = v0[12];
  v35 = v0[13];
  v36 = v0[10];
  v37 = v0[5];
  (*(v35 + 32))(v33, v0[11], v34);
  v38 = *(v37 + 144);
  (*(v35 + 16))(v32, v33, v34);
  MEMORY[0x24C217420](v32);
  v39 = *(MEMORY[0x277D09368] + 4);
  v40 = swift_task_alloc();
  v0[16] = v40;
  *v40 = v0;
  v40[1] = sub_24A48105C;
  v41 = v0[10];

  return MEMORY[0x28215FA88](v41);
}

uint64_t sub_24A48105C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_24A4813F8;
  }

  else
  {
    v5 = sub_24A4811C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24A4811C4()
{
  v24 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v0[3] = *v5;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v8 = sub_24A4AB870();
    v10 = sub_24A37BD58(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24A376000, v3, v4, "%s: Location alert removed.", v6, 0xCu);
    sub_24A37EEE0(v7);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[6];
  v15 = v0[7];
  v22 = 2;
  v14(&v22, 0);
  (*(v13 + 8))(v11, v12);
  v17 = v0[14];
  v16 = v0[15];
  v19 = v0[10];
  v18 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24A4813F8()
{
  v27 = v0;
  (*(v0[13] + 8))(v0[15], v0[12]);
  v1 = v0[17];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_24A4AB630();
  sub_24A378E18(v3, qword_27EF4E260);

  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCC0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315394;
    v0[2] = *v7;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v11 = sub_24A4AB870();
    v13 = sub_24A37BD58(v11, v12, &v26);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_24A376000, v5, v6, "%s: error when removing location alert: %@", v8, 0x16u);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v17 = v0[6];
  v16 = v0[7];
  v25 = 0;
  v18 = v1;
  v17(&v25, v1);

  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[10];
  v21 = v0[11];

  v23 = v0[1];

  return v23();
}

uint64_t sub_24A4816AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_24A4AB1B0();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A48177C, 0, 0);
}

uint64_t sub_24A48177C()
{
  v1 = v0[5];
  v2 = *(v0[4] + 144);
  FMFLocationAlert.fmlFence.getter(v0[10]);
  v3 = *(MEMORY[0x277D09370] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_24A481A9C;
  v6 = v0[10];
  v5 = v0[11];

  return MEMORY[0x28215FA90](v5, v6);
}

uint64_t sub_24A481A9C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v11 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v4 = sub_24A481E00;
  }

  else
  {
    v5 = v2[10];
    v6 = v2[11];
    v8 = v2 + 8;
    v7 = v2[8];
    v9 = *(v8[1] + 8);
    v9(v5, v7);
    v9(v6, v7);
    v4 = sub_24A481C00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A481C00()
{
  v19 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[3] = *v5;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v8 = sub_24A4AB870();
    v10 = sub_24A37BD58(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24A376000, v3, v4, "%s: Location alert updated.", v6, 0xCu);
    sub_24A37EEE0(v7);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v11 = v0[6];
  v12 = v0[7];
  v17 = 2;
  v11(&v17, 0);
  v14 = v0[10];
  v13 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24A481E00()
{
  v25 = v0;
  v1 = v0[13];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = sub_24A4AB630();
  sub_24A378E18(v3, qword_27EF4E260);

  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCC0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 136315394;
    v0[2] = *v7;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v11 = sub_24A4AB870();
    v13 = sub_24A37BD58(v11, v12, &v24);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_24A376000, v5, v6, "%s: error when updating location alert: %@", v8, 0x16u);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v17 = v0[6];
  v16 = v0[7];
  v23 = 0;
  v18 = v1;
  v17(&v23, v1);

  v20 = v0[10];
  v19 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24A482088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v24;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *(*(sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v10 = sub_24A4AAAD0();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v13 = sub_24A4AADD0();
  v8[15] = v13;
  v14 = *(v13 - 8);
  v8[16] = v14;
  v15 = *(v14 + 64) + 15;
  v8[17] = swift_task_alloc();
  v16 = sub_24A4AB220();
  v8[18] = v16;
  v17 = *(v16 - 8);
  v8[19] = v17;
  v18 = *(v17 + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v19 = sub_24A4AB1E0();
  v8[22] = v19;
  v20 = *(v19 - 8);
  v8[23] = v20;
  v21 = *(v20 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A4822BC, 0, 0);
}

uint64_t sub_24A4822BC()
{
  v0[26] = *(v0[5] + 144);
  v1 = *(MEMORY[0x277D09430] + 4);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_24A482358;

  return MEMORY[0x28215FB60]();
}

uint64_t sub_24A482358(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_24A48315C;
  }

  else
  {
    v5 = sub_24A48246C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24A48246C()
{
  v63 = v0;
  v1 = v0[28];
  v58 = *(v1 + 16);
  if (!v58)
  {
LABEL_13:

    if (qword_27EF3EBF8 != -1)
    {
LABEL_28:
      swift_once();
    }

    v15 = v0[7];
    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);

    v17 = sub_24A4AB600();
    v18 = sub_24A4ABCC0();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[6];
      v19 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_24A37BD58(0xD00000000000001CLL, 0x800000024A4B3390, &v62);
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_24A37BD58(v20, v19, &v62);
      _os_log_impl(&dword_24A376000, v17, v18, "%{public}s No friend with friendId: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v22, -1, -1);
      MEMORY[0x24C219130](v21, -1, -1);
    }

    v24 = v0[8];
    v23 = v0[9];
    v61 = 0;
    sub_24A489940();
    v25 = swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 256;
    v24(&v61, v25);

    v28 = v0[24];
    v27 = v0[25];
    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[17];
    v32 = v0[14];
    v33 = v0[11];

    v34 = v0[1];

    return v34();
  }

  v2 = 0;
  v3 = v0[23];
  v56 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v53 = v0[7];
  v60 = (v0[19] + 8);
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v4 = v0[21];
    v5 = v0[18];
    (*(v3 + 16))(v0[24], v56 + *(v3 + 72) * v2, v0[22]);
    sub_24A4AB1D0();
    v6 = sub_24A4AB210();
    v8 = v7;
    v9 = *v60;
    (*v60)(v4, v5);
    if (!v8)
    {
      goto LABEL_3;
    }

    if (v6 == v0[6] && v8 == v53)
    {
      break;
    }

    v11 = v0[7];
    v12 = sub_24A4AC270();

    if (v12)
    {
      v13 = v0[28];
      goto LABEL_20;
    }

LABEL_3:
    ++v2;
    (*(v3 + 8))(v0[24], v0[22]);
    if (v58 == v2)
    {
      v14 = v0[28];
      goto LABEL_13;
    }
  }

  v36 = v0[28];

LABEL_20:
  v38 = v0[24];
  v37 = v0[25];
  v39 = v0[22];
  v40 = v0[23];
  v41 = v0[20];
  v54 = v0[18];
  v55 = v0[17];
  v42 = v0[13];
  v43 = v0[11];
  v57 = v0[10];
  v59 = v0[12];

  (*(v40 + 32))(v37, v38, v39);
  sub_24A4AB1D0();
  sub_24A4AB1F0();
  v9(v41, v54);
  sub_24A4AADA0();
  sub_24A37B740(v57 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate, v43, &qword_27EF3F460, &unk_24A4B53B0);
  if ((*(v42 + 48))(v43, 1, v59) == 1)
  {
    sub_24A37EF2C(v0[11], &qword_27EF3F460, &unk_24A4B53B0);
    v44 = *(MEMORY[0x277D09378] + 4);
    v45 = swift_task_alloc();
    v0[30] = v45;
    *v45 = v0;
    v45[1] = sub_24A482A1C;
    v46 = v0[26];
    v47 = v0[17];

    return MEMORY[0x28215FA98](v47);
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    v48 = *(MEMORY[0x277D09358] + 4);
    v49 = swift_task_alloc();
    v0[32] = v49;
    *v49 = v0;
    v49[1] = sub_24A482B30;
    v50 = v0[26];
    v51 = v0[17];
    v52 = v0[14];

    return MEMORY[0x28215FA70](v51, v52);
  }
}

uint64_t sub_24A482A1C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_24A483650;
  }

  else
  {
    v3 = sub_24A482EE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A482B30()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_24A4833AC;
  }

  else
  {
    v3 = sub_24A482C44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A482C44()
{
  v34 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  if (v5)
  {
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315138;
    v0[4] = *v9;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v12 = sub_24A4AB870();
    v14 = sub_24A37BD58(v12, v13, &v33);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A376000, v3, v4, "%s: Fences muted", v10, 0xCu);
    sub_24A37EEE0(v11);
    MEMORY[0x24C219130](v11, -1, -1);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[23];
  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[15];
  v21 = v0[8];
  v22 = v0[9];
  v32 = 2;
  v21(&v32, 0);
  (*(v19 + 8))(v18, v20);
  (*(v17 + 8))(v15, v16);
  v24 = v0[24];
  v23 = v0[25];
  v26 = v0[20];
  v25 = v0[21];
  v27 = v0[17];
  v28 = v0[14];
  v29 = v0[11];

  v30 = v0[1];

  return v30();
}

uint64_t sub_24A482EE4()
{
  v30 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    v0[3] = *v5;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v8 = sub_24A4AB870();
    v10 = sub_24A37BD58(v8, v9, &v29);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24A376000, v3, v4, "%s: Fences unmuted", v6, 0xCu);
    sub_24A37EEE0(v7);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v11 = v0[25];
  v12 = v0[22];
  v13 = v0[23];
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[15];
  v17 = v0[8];
  v18 = v0[9];
  v28 = 2;
  v17(&v28, 0);
  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v11, v12);
  v20 = v0[24];
  v19 = v0[25];
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[11];

  v26 = v0[1];

  return v26();
}

uint64_t sub_24A48315C()
{
  v26 = v0;
  v1 = v0[29];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_24A4AB630();
  sub_24A378E18(v3, qword_27EF4E260);

  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    v0[2] = *v6;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v9 = sub_24A4AB870();
    v11 = sub_24A37BD58(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A376000, v4, v5, "%s: Error when muting fences", v7, 0xCu);
    sub_24A37EEE0(v8);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v13 = v0[8];
  v12 = v0[9];
  v24 = 0;
  v14 = v1;
  v13(&v24, v1);

  v16 = v0[24];
  v15 = v0[25];
  v18 = v0[20];
  v17 = v0[21];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[11];

  v22 = v0[1];

  return v22();
}

uint64_t sub_24A4833AC()
{
  v32 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[33];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = v0[5];
  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);

  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315138;
    v0[2] = *v12;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v15 = sub_24A4AB870();
    v17 = sub_24A37BD58(v15, v16, &v31);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24A376000, v10, v11, "%s: Error when muting fences", v13, 0xCu);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v19 = v0[8];
  v18 = v0[9];
  v30 = 0;
  v20 = v7;
  v19(&v30, v7);

  v22 = v0[24];
  v21 = v0[25];
  v24 = v0[20];
  v23 = v0[21];
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[11];

  v28 = v0[1];

  return v28();
}

uint64_t sub_24A483650()
{
  v29 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[31];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    v0[2] = *v9;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v12 = sub_24A4AB870();
    v14 = sub_24A37BD58(v12, v13, &v28);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A376000, v7, v8, "%s: Error when muting fences", v10, 0xCu);
    sub_24A37EEE0(v11);
    MEMORY[0x24C219130](v11, -1, -1);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  v16 = v0[8];
  v15 = v0[9];
  v27 = 0;
  v17 = v4;
  v16(&v27, v4);

  v19 = v0[24];
  v18 = v0[25];
  v21 = v0[20];
  v20 = v0[21];
  v22 = v0[17];
  v23 = v0[14];
  v24 = v0[11];

  v25 = v0[1];

  return v25();
}

uint64_t sub_24A4838D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v7 = sub_24A4AA9D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A4AB630();
  sub_24A378E18(v12, qword_27EF4E260);

  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v38 = a3;
    v18 = v17;
    *v16 = 136315138;
    v40 = *v4;
    v41 = v17;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v19 = sub_24A4AB870();
    v21 = sub_24A37BD58(v19, v20, &v41);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_24A376000, v13, v14, "%s: removing labels action initiated", v16, 0xCu);
    sub_24A37EEE0(v18);
    v22 = v18;
    a3 = v38;
    MEMORY[0x24C219130](v22, -1, -1);
    v23 = v16;
    a2 = v37;
    MEMORY[0x24C219130](v23, -1, -1);
  }

  v24 = *(v8 + 16);
  v24(v11, v39 + OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url, v7);
  v25 = type metadata accessor for FMFGetURLInfoRequest();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v24((v28 + qword_27EF4E180), v11, v7);
  v29 = sub_24A3A45B8(0x466F666E49746567, 0xED00006C7255726FLL);
  (*(v8 + 8))(v11, v7);
  v30 = v4[15];
  v31 = v4[16];
  sub_24A37EACC(v4 + 12, v30);
  v32 = swift_allocObject();
  v32[2] = v4;
  v32[3] = a2;
  v32[4] = a3;
  v33 = *(v31 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse();

  v33(v29, sub_24A489994, v32, refreshed, v30, v31);
}

void sub_24A483C54(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(uint64_t *, void *))
{
  v8 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v57 - v13);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A4AB630();
    sub_24A378E18(v15, qword_27EF4E260);

    v16 = a2;
    v17 = sub_24A4AB600();
    v18 = sub_24A4ABCE0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315394;
      v57 = *a3;
      v58 = v20;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v21 = sub_24A4AB870();
      v23 = sub_24A37BD58(v21, v22, &v58);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v57 = a2;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v24 = sub_24A4ABDE0();
      v26 = sub_24A37BD58(v24, v25, &v58);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_24A376000, v17, v18, "%s: error when getting info for URL: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v20, -1, -1);
      MEMORY[0x24C219130](v19, -1, -1);
    }

    LOBYTE(v58) = 0;
    a4(&v58, a2);
    return;
  }

  if (a1)
  {
    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, &v57 - v13, &qword_27EF3F1C8, &unk_24A4B7C70);
    v27 = type metadata accessor for FMFCommandResponseFragment();
    v28 = *(*(v27 - 8) + 48);
    if (v28(v14, 1, v27) == 1)
    {
      sub_24A37EF2C(v14, &qword_27EF3F1C8, &unk_24A4B7C70);
    }

    else
    {
      v29 = a4;
      v30 = *v14;
      sub_24A489C74(v14, type metadata accessor for FMFCommandResponseFragment);
      v31 = v30 == 500;
      a4 = v29;
      if (v31)
      {
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v32 = sub_24A4AB630();
        sub_24A378E18(v32, qword_27EF4E260);
        v33 = sub_24A4AB600();
        v34 = sub_24A4ABCE0();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_24A376000, v33, v34, "%%@: The command response was invalid", v35, 2u);
          MEMORY[0x24C219130](v35, -1, -1);
        }

        LOBYTE(v58) = 0;
        sub_24A489940();
        v37 = swift_allocError();
        v38 = 1;
        goto LABEL_26;
      }
    }

    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v11, &qword_27EF3F1C8, &unk_24A4B7C70);
    if (v28(v11, 1, v27) == 1)
    {
      sub_24A37EF2C(v11, &qword_27EF3F1C8, &unk_24A4B7C70);
      goto LABEL_27;
    }

    v39 = a4;
    v40 = *v11;
    sub_24A489C74(v11, type metadata accessor for FMFCommandResponseFragment);
    v31 = v40 == 516;
    a4 = v39;
    if (!v31)
    {
      goto LABEL_27;
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v41 = sub_24A4AB630();
    sub_24A378E18(v41, qword_27EF4E260);

    v42 = sub_24A4AB600();
    v43 = sub_24A4ABCE0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 136315138;
      v57 = *a3;
      v58 = v45;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v46 = sub_24A4AB870();
      v48 = sub_24A37BD58(v46, v47, &v58);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_24A376000, v42, v43, "%s: The request was to add friend to self", v44, 0xCu);
      sub_24A37EEE0(v45);
      MEMORY[0x24C219130](v45, -1, -1);
      MEMORY[0x24C219130](v44, -1, -1);
    }

    LOBYTE(v58) = 0;
    sub_24A489940();
    v37 = swift_allocError();
    v38 = 4;
LABEL_26:
    *v36 = v38;
    *(v36 + 8) = 256;
    a4(&v58, v37);

    return;
  }

LABEL_27:
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v49 = sub_24A4AB630();
  sub_24A378E18(v49, qword_27EF4E260);

  v50 = sub_24A4AB600();
  v51 = sub_24A4ABCB0();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 136315138;
    v57 = *a3;
    v58 = v53;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v54 = sub_24A4AB870();
    v56 = sub_24A37BD58(v54, v55, &v58);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_24A376000, v50, v51, "%s: Got info for url.", v52, 0xCu);
    sub_24A37EEE0(v53);
    MEMORY[0x24C219130](v53, -1, -1);
    MEMORY[0x24C219130](v52, -1, -1);
  }

  LOBYTE(v58) = 2;
  a4(&v58, 0);
  sub_24A484468(a1, a3);
}

void sub_24A484468(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF40C18, &qword_24A4BC510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v62 - v6;
  v8 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v62 - v17;
  v19 = sub_24A4AA9D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_4;
  }

  v68 = v7;
  v69 = v24;
  sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v14, &qword_27EF3F1C8, &unk_24A4B7C70);
  v25 = type metadata accessor for FMFCommandResponseFragment();
  v26 = *(*(v25 - 1) + 48);
  if (v26(v14, 1, v25) == 1)
  {
    sub_24A37EF2C(v14, &qword_27EF3F1C8, &unk_24A4B7C70);
LABEL_4:
    (*(v20 + 56))(v18, 1, 1, v19, v22);
LABEL_5:
    sub_24A37EF2C(v18, &qword_27EF3F440, &qword_24A4B5BF0);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v27 = sub_24A4AB630();
    sub_24A378E18(v27, qword_27EF4E260);

    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v70[0] = v31;
      *v30 = 136315138;
      v70[3] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v32 = sub_24A4AB870();
      v34 = sub_24A37BD58(v32, v33, v70);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_24A376000, v28, v29, "%s: Got info but there is no url.", v30, 0xCu);
      sub_24A37EEE0(v31);
      MEMORY[0x24C219130](v31, -1, -1);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    return;
  }

  sub_24A37B740(&v14[v25[6]], v18, &qword_27EF3F440, &qword_24A4B5BF0);
  sub_24A489C74(v14, type metadata accessor for FMFCommandResponseFragment);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_5;
  }

  v35 = v69;
  (*(v20 + 32))(v69, v18, v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v11, &qword_27EF3F1C8, &unk_24A4B7C70);
    if (v26(v11, 1, v25) == 1)
    {
      sub_24A37EF2C(v11, &qword_27EF3F1C8, &unk_24A4B7C70);
      v38 = type metadata accessor for FMFActionURLInfo();
      v39 = v68;
      (*(*(v38 - 8) + 56))(v68, 1, 1, v38);
    }

    else
    {
      v39 = v68;
      sub_24A37B740(&v11[v25[6]], v68, &qword_27EF3F440, &qword_24A4B5BF0);
      v40 = &v11[v25[7]];
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = &v11[v25[8]];
      v44 = *v43;
      v45 = *(v43 + 1);
      v66 = v41;
      v67 = v44;
      v46 = v25[10];
      v47 = &v11[v25[9]];
      v48 = *v47;
      v64 = *(v47 + 1);
      v65 = v48;
      v49 = type metadata accessor for FMFActionURLInfo();
      sub_24A37B740(&v11[v46], v39 + v49[8], &qword_27EF3F460, &unk_24A4B53B0);
      v50 = v25[12];
      v51 = &v11[v25[11]];
      v52 = *(v51 + 1);
      v63 = *v51;
      sub_24A37B740(&v11[v50], v39 + v49[10], &qword_27EF3F7A0, &qword_24A4B6430);
      v53 = (v39 + v49[5]);
      v54 = v67;
      *v53 = v66;
      v53[1] = v42;
      v55 = (v39 + v49[6]);
      *v55 = v54;
      v55[1] = v45;
      v56 = (v39 + v49[7]);
      v57 = v64;
      *v56 = v65;
      v56[1] = v57;
      v58 = (v39 + v49[9]);
      *v58 = v63;
      v58[1] = v52;

      sub_24A489C74(v11, type metadata accessor for FMFCommandResponseFragment);
      (*(*(v49 - 1) + 56))(v39, 0, 1, v49);
    }

    v59 = v69;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v60 = *(v37 + 40);
      ObjectType = swift_getObjectType();
      (*(v60 + 112))(v37, v39, v59, ObjectType, v60);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_24A37EF2C(v39, &qword_27EF40C18, &qword_24A4BC510);
    (*(v20 + 8))(v59, v19);
  }

  else
  {
    (*(v20 + 8))(v35, v19);
  }
}

uint64_t sub_24A484B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A4AA700();
  v26 = v8;
  v27 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
  v9 = sub_24A38D3BC(v25);
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D089E0], v8);
  LOBYTE(v8) = sub_24A4AA6C0();
  result = sub_24A37EEE0(v25);
  if (v8)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A4AB630();
    sub_24A378E18(v11, qword_27EF4E260);

    v12 = sub_24A4AB600();
    v13 = sub_24A4ABCE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315138;
      v24 = *v4;
      v25[0] = v15;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v16 = sub_24A4AB870();
      v18 = sub_24A37BD58(v16, v17, v25);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_24A376000, v12, v13, "%s: Updating Stewie location...", v14, 0xCu);
      sub_24A37EEE0(v15);
      MEMORY[0x24C219130](v15, -1, -1);
      MEMORY[0x24C219130](v14, -1, -1);
    }

    sub_24A39997C((v4 + 7), v25);
    v19 = v26;
    v20 = v27;
    sub_24A37EACC(v25, v26);
    v21 = *(a1 + 24);
    v22 = swift_allocObject();
    v22[2] = v4;
    v22[3] = a2;
    v22[4] = a3;
    v23 = *(v20 + 8);

    v23(v21, sub_24A489924, v22, v19, v20);

    return sub_24A37EEE0(v25);
  }

  return result;
}

uint64_t sub_24A484E78(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24A4AB690();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A4AB6E0();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v26);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A3785D4();
  v25 = sub_24A4ABD60();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_24A489930;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B500;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a2;

  sub_24A4AB6B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A38D374(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  v22 = v25;
  MEMORY[0x24C218190](0, v17, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v26);
}

void sub_24A485160(void *a1, void *a2, void **a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = sub_24A4AAE90();
  v102 = *(v10 - 8);
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v10);
  v98 = &v95[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_24A3C9CEC(&qword_27EF40BF8, &qword_24A4BC4F8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v95[-v15];
  v17 = sub_24A3C9CEC(&qword_27EF40C00, &unk_24A4BC500);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v95[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v95[-v21];
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v26 = &v95[-v25];
  if (a1)
  {
    [a1 nextAllowedPublish];
    v28 = v27;
    v103 = a1;
    if (a2)
    {
LABEL_3:
      v100 = a3;
      v101 = a5;
      v107[0] = a2;
      v29 = a2;
      v104 = a2;
      v30 = a2;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      type metadata accessor for SecureLocationsStewieError(0);
      if (swift_dynamicCast())
      {
        v31 = v106;
        sub_24A38D374(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError);
        sub_24A4AA910();

        if (v105 == 1)
        {
          if (!v103)
          {
            goto LABEL_20;
          }

          goto LABEL_28;
        }
      }

      v107[0] = v104;
      v43 = v104;
      v44 = swift_dynamicCast();
      v45 = v102;
      v46 = *(v102 + 56);
      v46(v26, v44 ^ 1u, 1, v10);
      (*(v45 + 104))(v22, *MEMORY[0x277D09158], v10);
      v46(v22, 0, 1, v10);
      v47 = *(v13 + 48);
      sub_24A37B740(v26, v16, &qword_27EF40C00, &unk_24A4BC500);
      sub_24A37B740(v22, &v16[v47], &qword_27EF40C00, &unk_24A4BC500);
      v48 = *(v45 + 48);
      v49 = v48(v16, 1, v10);
      v50 = v103;
      if (v49 == 1)
      {
        sub_24A37EF2C(v22, &qword_27EF40C00, &unk_24A4BC500);
        if (v48(&v16[v47], 1, v10) == 1)
        {
          sub_24A37EF2C(v16, &qword_27EF40C00, &unk_24A4BC500);
          sub_24A37EF2C(v26, &qword_27EF40C00, &unk_24A4BC500);
          if (!v103)
          {
            goto LABEL_20;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v51 = v99;
        sub_24A37B740(v16, v99, &qword_27EF40C00, &unk_24A4BC500);
        if (v48(&v16[v47], 1, v10) != 1)
        {
          v97 = a4;
          v69 = v102;
          v70 = v98;
          (*(v102 + 32))(v98, &v16[v47], v10);
          sub_24A38D374(&qword_27EF40C10, MEMORY[0x277D09160]);
          v96 = sub_24A4AB810();
          v71 = v51;
          v72 = *(v69 + 8);
          v72(v70, v10);
          sub_24A37EF2C(v22, &qword_27EF40C00, &unk_24A4BC500);
          v72(v71, v10);
          a4 = v97;
          sub_24A37EF2C(v16, &qword_27EF40C00, &unk_24A4BC500);
          sub_24A37EF2C(v26, &qword_27EF40C00, &unk_24A4BC500);
          if (!v50 || (v96 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_28:
          v73 = v104;
          v74 = v100;
          if (qword_27EF3EBF8 != -1)
          {
            swift_once();
          }

          v75 = sub_24A4AB630();
          sub_24A378E18(v75, qword_27EF4E260);
          v76 = v73;

          v77 = sub_24A4AB600();
          v78 = sub_24A4ABCE0();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v81 = v74;
            v82 = v80;
            *v79 = 136315650;
            v106 = *v81;
            v107[0] = v80;
            sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
            v83 = sub_24A4AB870();
            v85 = sub_24A37BD58(v83, v84, v107);

            *(v79 + 4) = v85;
            *(v79 + 12) = 2080;
            swift_getErrorValue();
            v86 = sub_24A4AC310();
            v88 = sub_24A37BD58(v86, v87, v107);

            *(v79 + 14) = v88;
            *(v79 + 22) = 2080;
            v89 = sub_24A4ABBD0();
            v91 = sub_24A37BD58(v89, v90, v107);

            *(v79 + 24) = v91;
            _os_log_impl(&dword_24A376000, v77, v78, "%s: Updated Stewie location failed %s (next allowed publish: %s", v79, 0x20u);
            swift_arrayDestroy();
            v73 = v104;
            MEMORY[0x24C219130](v82, -1, -1);
            MEMORY[0x24C219130](v79, -1, -1);
          }

          LOBYTE(v107[0]) = 0;
          sub_24A489940();
          v92 = swift_allocError();
          *v93 = v28;
          *(v93 + 8) = 0;
          a4(v107, v92);

          return;
        }

        sub_24A37EF2C(v22, &qword_27EF40C00, &unk_24A4BC500);
        (*(v102 + 8))(v51, v10);
      }

      sub_24A37EF2C(v16, &qword_27EF40BF8, &qword_24A4BC4F8);
      sub_24A37EF2C(v26, &qword_27EF40C00, &unk_24A4BC500);
LABEL_20:
      v52 = v104;
      v53 = v100;
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v54 = sub_24A4AB630();
      sub_24A378E18(v54, qword_27EF4E260);
      v55 = v52;

      v56 = sub_24A4AB600();
      v57 = sub_24A4ABCE0();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = v53;
        v61 = v59;
        *v58 = 136315394;
        v106 = *v60;
        v107[0] = v59;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v62 = sub_24A4AB870();
        v64 = sub_24A37BD58(v62, v63, v107);

        *(v58 + 4) = v64;
        *(v58 + 12) = 2080;
        swift_getErrorValue();
        v65 = sub_24A4AC310();
        v67 = sub_24A37BD58(v65, v66, v107);

        *(v58 + 14) = v67;
        _os_log_impl(&dword_24A376000, v56, v57, "%s: Updated Stewie location failed %s", v58, 0x16u);
        swift_arrayDestroy();
        v52 = v104;
        MEMORY[0x24C219130](v61, -1, -1);
        MEMORY[0x24C219130](v58, -1, -1);
      }

      LOBYTE(v107[0]) = 0;
      v68 = v52;
      a4(v107, v52);

      return;
    }
  }

  else
  {
    v28 = 0;
    v103 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v32 = sub_24A4AB630();
  sub_24A378E18(v32, qword_27EF4E260);

  v33 = sub_24A4AB600();
  v34 = sub_24A4ABCE0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 136315394;
    v106 = *a3;
    v107[0] = v36;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v37 = sub_24A4AB870();
    v39 = sub_24A37BD58(v37, v38, v107);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    if (v103)
    {
      v40 = sub_24A4ABBD0();
      v42 = v41;
    }

    else
    {
      v42 = 0xE300000000000000;
      v40 = 7104878;
    }

    v94 = sub_24A37BD58(v40, v42, v107);

    *(v35 + 14) = v94;
    _os_log_impl(&dword_24A376000, v33, v34, "%s: Updated Stewie location succeeded (next allowed publish: %s)", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v36, -1, -1);
    MEMORY[0x24C219130](v35, -1, -1);
  }

  else
  {
  }

  LOBYTE(v107[0]) = 2;
  a4(v107, 0);
}

uint64_t sub_24A485D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  v12 = sub_24A4AC3A0();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v10 + 48) + 32 * v14);
      v17 = *v16 == a2 && v16[1] == a3;
      if (v17 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v21 = *(v10 + 48) + 32 * v14;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v26 = *(v21 + 25);
    LOBYTE(v21) = *(v21 + 26);
    *a1 = v23;
    *(a1 + 8) = v22;
    *(a1 + 16) = v24;
    *(a1 + 24) = v25;
    *(a1 + 25) = v26;
    *(a1 + 26) = v21;

    return 0;
  }

  else
  {
LABEL_9:
    v18 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v5;

    sub_24A48737C(a2, a3, a4, a5 & 0x10101, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v28;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5 & 1;
    *(a1 + 25) = BYTE1(a5) & 1;
    *(a1 + 26) = BYTE2(a5) & 1;
    return 1;
  }
}

uint64_t sub_24A485F20(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24A4AB220();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8]);
  v36 = a2;
  v13 = sub_24A4AB7D0();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_24A38D374(&qword_27EF40C58, MEMORY[0x277D092D8]);
      v23 = sub_24A4AB810();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24A487528(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24A486200(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4 & 0x100;
  v39 = a4 & 0x10000;
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_24A4AC360();
  v41 = a2;
  sub_24A4AB8F0();
  v36 = a4 & 1;
  sub_24A4AC380();
  sub_24A4AC380();
  v40 = a4;
  sub_24A4AC380();
  v11 = sub_24A4AC3A0();
  v12 = v9 + 56;
  v13 = -1 << *(v9 + 32);
  v14 = v11 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v35 = v9;
    v16 = *(v9 + 48);
    v18 = a3;
    v17 = v41;
    while (1)
    {
      v19 = v16 + 24 * v14;
      v20 = *(v19 + 16);
      v21 = *(v19 + 17);
      v22 = (v39 != 0) ^ *(v19 + 18);
      if (*v19 == v17 && *(v19 + 8) == v18)
      {
        if (((v20 ^ v40 | (v8 != 0) ^ v21 | v22) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v24 = sub_24A4AC270();
        v18 = a3;
        v17 = v41;
        if (!((v20 ^ v40) & 1 | ((v24 & 1) == 0) | (((v8 != 0) ^ v21) | v22) & 1))
        {
LABEL_10:

          v25 = *(v35 + 48) + 24 * v14;
          v27 = *v25;
          v26 = *(v25 + 8);
          v28 = *(v25 + 16);
          v29 = *(v25 + 17);
          LOBYTE(v25) = *(v25 + 18);
          *a1 = v27;
          *(a1 + 8) = v26;
          *(a1 + 16) = v28;
          *(a1 + 17) = v29;
          *(a1 + 18) = v25;

          return 0;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v18 = a3;
  v17 = a2;
LABEL_12:
  v31 = *v37;
  v32 = v17;
  v33 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v37;

  sub_24A4877CC(v32, v33, v40 & 0x10101, v14, isUniquelyReferenced_nonNull_native);
  *v37 = v42;
  *a1 = v32;
  *(a1 + 8) = v33;
  *(a1 + 16) = v36;
  *(a1 + 17) = BYTE1(v8);
  *(a1 + 18) = BYTE2(v39);
  return 1;
}

uint64_t sub_24A48646C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24A4AC360();
  sub_24A4AC380();
  if (a3)
  {
    sub_24A4AB8F0();
  }

  v9 = sub_24A4AC3A0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24A487A38(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_24A4AC270() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_24A4865F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
  result = sub_24A4ABF00();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24A486854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40C40, &qword_24A4BC560);
  result = sub_24A4ABF00();
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
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v35 = *(v19 + 8);
      v21 = *(v19 + 24);
      v22 = *(v19 + 25);
      v34 = *(v19 + 26);
      v23 = *(v6 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v35;
      *(v15 + 24) = v21;
      *(v15 + 25) = v22;
      *(v15 + 26) = v34;
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

uint64_t sub_24A486AEC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24A4AB220();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40C60, &qword_24A4BC588);
  result = sub_24A4ABF00();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8]);
      result = sub_24A4AB7D0();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_24A486E48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40C38, &qword_24A4BC558);
  result = sub_24A4ABF00();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 17);
      v24 = *(v19 + 18);
      v25 = *(v6 + 40);
      sub_24A4AC360();
      sub_24A4AB8F0();
      sub_24A4AC380();
      sub_24A4AC380();
      sub_24A4AC380();
      result = sub_24A4AC3A0();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 17) = v23;
      *(v15 + 18) = v24;
      ++*(v6 + 16);
      v3 = v35;
      v11 = v36;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24A487100(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40C70, &unk_24A4BC628);
  result = sub_24A4ABF00();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_24A4AC360();
      sub_24A4AC380();
      if (v20)
      {
        sub_24A4AB8F0();
      }

      result = sub_24A4AC3A0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24A48737C(uint64_t result, uint64_t a2, uint64_t a3, int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    sub_24A486854(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_24A487D50();
      goto LABEL_16;
    }

    sub_24A4883DC(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  result = sub_24A4AC3A0();
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    do
    {
      v18 = (*(v14 + 48) + 32 * a5);
      if (*v18 == v11 && v18[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24A4AC270();
      if (result)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v20 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v21 = *(v20 + 48) + 32 * a5;
  *v21 = v11;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4 & 1;
  *(v21 + 25) = BYTE1(a4) & 1;
  *(v21 + 26) = BYTE2(a4) & 1;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24A4AC2A0();
  __break(1u);
  return result;
}

uint64_t sub_24A487528(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_24A4AB220();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A486AEC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_24A487ED4();
      goto LABEL_12;
    }

    sub_24A488650(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8]);
  v16 = sub_24A4AB7D0();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_24A38D374(&qword_27EF40C58, MEMORY[0x277D092D8]);
      v24 = sub_24A4AB810();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A4AC2A0();
  __break(1u);
  return result;
}

uint64_t sub_24A4877CC(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = a3 & 0x100;
  v10 = a3 & 0x10000;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  v35 = (a3 & 0x10000u) >> 16;
  v36 = v9 >> 8;
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    v38 = a3;
    if (a5)
    {
      sub_24A486E48(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        result = sub_24A48810C();
        goto LABEL_18;
      }

      sub_24A48896C(v11 + 1);
    }

    v13 = *v5;
    v14 = *(*v5 + 40);
    sub_24A4AC360();
    sub_24A4AB8F0();
    sub_24A4AC380();
    sub_24A4AC380();
    sub_24A4AC380();
    result = sub_24A4AC3A0();
    v15 = v13 + 56;
    v16 = -1 << *(v13 + 32);
    a4 = result & ~v16;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v17 = ~v16;
      v18 = *(v13 + 48);
      a3 = v38;
      v19 = v9;
      v20 = v10;
      v37 = v8;
      while (1)
      {
        v21 = v18 + 24 * a4;
        result = *v21;
        v22 = *(v21 + 16);
        v23 = *(v21 + 17);
        v24 = (v20 != 0) ^ *(v21 + 18);
        if (*v21 == v8 && *(v21 + 8) == a2)
        {
          if (((v22 ^ a3 | (v19 != 0) ^ v23 | v24) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v39 = v19 != 0;
          v26 = a2;
          v27 = v19;
          v28 = v15;
          result = sub_24A4AC270();
          v15 = v28;
          v19 = v27;
          a2 = v26;
          v8 = v37;
          a3 = v38;
          if (!((v22 ^ v38) & 1 | ((result & 1) == 0) | ((v39 ^ v23) | v24) & 1))
          {
LABEL_17:
            result = sub_24A4AC2A0();
            __break(1u);
            break;
          }
        }

        a4 = (a4 + 1) & v17;
        if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_18:
    LOBYTE(a3) = v38;
  }

LABEL_19:
  v29 = *v34;
  *(*v34 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v30 = *(v29 + 48) + 24 * a4;
  *v30 = v8;
  *(v30 + 8) = a2;
  *(v30 + 16) = a3 & 1;
  *(v30 + 17) = v36;
  *(v30 + 18) = v35;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }

  return result;
}

uint64_t sub_24A487A38(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_24A487100(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_24A488284();
      goto LABEL_22;
    }

    sub_24A488C04(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_24A4AC360();
  sub_24A4AC380();
  if (a2)
  {
    sub_24A4AB8F0();
  }

  result = sub_24A4AC3A0();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_24A4AC270(), (result & 1) != 0))
          {
LABEL_21:
            sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
            result = sub_24A4AC2A0();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_24A487BF4()
{
  v1 = v0;
  sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
  v2 = *v0;
  v3 = sub_24A4ABEF0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_24A487D50()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40C40, &qword_24A4BC560);
  v2 = *v0;
  v3 = sub_24A4ABEF0();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 25);
        LOBYTE(v18) = *(v18 + 26);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 25) = v23;
        *(v24 + 26) = v18;
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

void *sub_24A487ED4()
{
  v1 = v0;
  v2 = sub_24A4AB220();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A3C9CEC(&qword_27EF40C60, &qword_24A4BC588);
  v7 = *v0;
  v8 = sub_24A4ABEF0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_24A48810C()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40C38, &qword_24A4BC558);
  v2 = *v0;
  v3 = sub_24A4ABEF0();
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
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        LOBYTE(v18) = *(v18 + 18);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 17) = v22;
        *(v23 + 18) = v18;
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

void *sub_24A488284()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40C70, &unk_24A4BC628);
  v2 = *v0;
  v3 = sub_24A4ABEF0();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_24A4883DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40C40, &qword_24A4BC560);
  result = sub_24A4ABF00();
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
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v34 = *(v19 + 25);
      v35 = *(v19 + 24);
      v33 = *(v19 + 26);
      v23 = *(v6 + 40);
      sub_24A4AC360();

      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v35;
      *(v15 + 25) = v34;
      *(v15 + 26) = v33;
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

uint64_t sub_24A488650(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24A4AB220();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40C60, &qword_24A4BC588);
  v10 = sub_24A4ABF00();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8]);
      result = sub_24A4AB7D0();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_24A48896C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40C38, &qword_24A4BC558);
  result = sub_24A4ABF00();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
      v35 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 17);
      v24 = *(v19 + 18);
      v25 = *(v6 + 40);
      sub_24A4AC360();

      sub_24A4AB8F0();
      sub_24A4AC380();
      sub_24A4AC380();
      sub_24A4AC380();
      result = sub_24A4AC3A0();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 17) = v23;
      *(v15 + 18) = v24;
      ++*(v6 + 16);
      v3 = v34;
      v11 = v35;
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

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

uint64_t sub_24A488C04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A3C9CEC(&qword_27EF40C70, &unk_24A4BC628);
  result = sub_24A4ABF00();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_24A4AC360();
      sub_24A4AC380();
      if (v19)
      {

        sub_24A4AB8F0();
      }

      result = sub_24A4AC3A0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24A488E58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24A41EC2C(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_24A489414((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24A3EDCB4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_24A3EDCB4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_24A489414((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_24A489414(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) < *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t _s7FMFCore15FMFActionsErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (v2 > 3)
    {
      v8 = *(a1 + 8);
      if (v2 > 5)
      {
        if (v2 ^ 6 | v8)
        {
          if (*(a2 + 9) && __PAIR128__(v5, *&v4) >= 7)
          {
            return 1;
          }
        }

        else if (*(a2 + 9) && !(*&v4 ^ 6 | v5))
        {
          return 1;
        }
      }

      else if (v2 ^ 4 | v8)
      {
        if (*(a2 + 9) && !(*&v4 ^ 5 | v5))
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(*&v4 ^ 4 | v5))
      {
        return 1;
      }
    }

    else
    {
      v6 = *(a1 + 8);
      if (v2 > 1)
      {
        if (v2 ^ 2 | v6)
        {
          if (*(a2 + 9) && !(*&v4 ^ 3 | v5))
          {
            return 1;
          }
        }

        else if (*(a2 + 9) && !(*&v4 ^ 2 | v5))
        {
          return 1;
        }
      }

      else if (v2 | v6)
      {
        if (*(a2 + 9) && !(*&v4 ^ 1 | v5))
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(*&v4 | v5))
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  v9 = v3 & v5;
  v10 = *a1;
  v11 = *a2;
  v12 = *&v2 == v4;
  if (v5)
  {
    v13 = v3 & v5;
  }

  else
  {
    v13 = v12;
  }

  if (*(a1 + 8))
  {
    v13 = v9;
  }

  return v13 & 1;
}

unint64_t sub_24A4897BC()
{
  result = qword_27EF40BE8;
  if (!qword_27EF40BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BE8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMFActionsError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFActionsError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMFActionsError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_24A489884(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A4898A0(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_24A489940()
{
  result = qword_27EF40C08;
  if (!qword_27EF40C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C08);
  }

  return result;
}

uint64_t sub_24A4899A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A480A5C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A489ABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A35A8;

  return sub_24A478B5C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A489B98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A357C;

  return sub_24A4782E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A489C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A489CD4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_24A48A1C8();
  result = MEMORY[0x24C218010](v3, &type metadata for SecureFriend, v4);
  v14 = result;
  if (v3)
  {
    v6 = (a1 + 58);
    do
    {
      v7 = *(v6 - 10);
      v8 = *(v6 - 18);
      v9 = *(v6 - 26);
      if (*(v6 - 1))
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      if (*v6)
      {
        v11 = 0x10000;
      }

      else
      {
        v11 = 0;
      }

      v1 = v11 | v1 & 0xFF000000 | v10 | *(v6 - 2);
      v12 = *(v6 - 18);

      sub_24A485D4C(v13, v9, v8, v7, v1);

      v6 += 32;
      --v3;
    }

    while (v3);
    return v14;
  }

  return result;
}

uint64_t sub_24A489DD0(uint64_t a1)
{
  v2 = sub_24A4AB220();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8]);
  result = MEMORY[0x24C218010](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_24A485F20(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_24A489F6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_24A48A174();
  result = MEMORY[0x24C218010](v3, &type metadata for LiveFriend, v4);
  v13 = result;
  if (v3)
  {
    v6 = (a1 + 50);
    do
    {
      v7 = *(v6 - 10);
      v8 = *(v6 - 18);
      if (*(v6 - 1))
      {
        v9 = 256;
      }

      else
      {
        v9 = 0;
      }

      if (*v6)
      {
        v10 = 0x10000;
      }

      else
      {
        v10 = 0;
      }

      v1 = v10 | v1 & 0xFF000000 | v9 | *(v6 - 2);
      v11 = *(v6 - 10);

      sub_24A486200(&v12, v8, v7, v1);

      v6 += 24;
      --v3;
    }

    while (v3);
    return v13;
  }

  return result;
}

uint64_t sub_24A48A048(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v4 = sub_24A4957B4();
  result = MEMORY[0x24C218010](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_24A48646C(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_24A48A0F4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_24A399A78(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

unint64_t sub_24A48A174()
{
  result = qword_27EF40C30;
  if (!qword_27EF40C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C30);
  }

  return result;
}

unint64_t sub_24A48A1C8()
{
  result = qword_27EF40C48;
  if (!qword_27EF40C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C48);
  }

  return result;
}

uint64_t sub_24A48A21C(uint64_t a1, void *a2, void *a3)
{
  v147 = a1;
  v5 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v141 = &v114 - v7;
  v8 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v114 - v10;
  v12 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v148 = &v114 - v17;
  v18 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v145 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v144 = &v114 - v22;
  v23 = type metadata accessor for FMFFriend();
  v143 = *(v23 - 1);
  v24 = *(v143 + 64);
  MEMORY[0x28223BE20](v23);
  v140 = (&v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v28 = (&v114 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = &v114 - v30;
  v150 = swift_allocObject();
  *(v150 + 16) = a3;
  v32 = qword_27EF3EBF8;
  v142 = a3;
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_24A4AB630();
  sub_24A378E18(v33, qword_27EF4E260);

  v34 = sub_24A4AB600();
  v35 = sub_24A4ABCE0();

  v36 = os_log_type_enabled(v34, v35);
  v146 = v31;
  v149 = v15;
  v151 = v11;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v153 = v38;
    *v37 = 136315138;
    v152 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v39 = sub_24A4AB870();
    v41 = a2;
    v42 = sub_24A37BD58(v39, v40, &v153);

    *(v37 + 4) = v42;
    a2 = v41;
    _os_log_impl(&dword_24A376000, v34, v35, "%s: stop sharing action initiated", v37, 0xCu);
    sub_24A37EEE0(v38);
    MEMORY[0x24C219130](v38, -1, -1);
    v43 = v37;
    v15 = v149;
    MEMORY[0x24C219130](v43, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v44 = sub_24A4AB600();
    v45 = sub_24A4ABCC0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_24A376000, v44, v45, "Action is restricted. Returning with error", v46, 2u);
      MEMORY[0x24C219130](v46, -1, -1);
    }

    dispatch_group_leave(v142);
  }

  else
  {
    v139 = a2;
    v129 = v147 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend;
    v47 = v144;
    sub_24A495474(v147 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend, v144, type metadata accessor for FMFFriend);
    v48 = v143;
    (*(v143 + 56))(v47, 0, 1, v23);
    v49 = type metadata accessor for FMFLocation();
    isa = v49[-1].isa;
    v51 = isa + 56;
    v50 = *(isa + 7);
    v50(v148, 1, 1, v49);
    v52 = v23[21];
    *(v28 + v52) = 7;
    v53 = sub_24A4AAAD0();
    (*(*(v53 - 8) + 56))(v151, 1, 1, v53);
    v142 = v49;
    v128 = v50;
    v127 = v51;
    v50(v15, 1, 1, v49);
    v54 = v47;
    v55 = v145;
    sub_24A37BE24(v54, v145, &qword_27EF3F2D0, &qword_24A4B4F50);
    if ((*(v48 + 48))(v55, 1, v23) == 1)
    {
      sub_24A37EF2C(v55, &qword_27EF3F2D0, &qword_24A4B4F50);
      v56 = 0;
      v134 = 0;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v138 = 0;
      v135 = 0;
      v57 = 0;
      v132 = 0;
      v131 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0xE000000000000000;
      v64 = MEMORY[0x277D84FA0];
      v130 = 2;
      v65 = 0x7FFFFFFFFFFFFFFFLL;
      v137 = 2;
      v66 = 2;
      v67 = 2;
      v136 = 2;
    }

    else
    {
      sub_24A37EF2C(v15, &qword_27EF3F480, &unk_24A4B8C20);
      v68 = v151;
      sub_24A37EF2C(v151, &qword_27EF3F460, &unk_24A4B53B0);
      v69 = v55;
      v70 = v140;
      sub_24A4954DC(v69, v140, type metadata accessor for FMFFriend);
      v71 = v70[1];
      v124 = *v70;
      v121 = v71;
      v72 = v70[3];
      v123 = v70[2];
      v126 = v72;
      v125 = v70[4];
      sub_24A37B740(v70 + v23[8], v68, &qword_27EF3F460, &unk_24A4B53B0);
      v73 = v23[10];
      v122 = *(v70 + v23[9]);
      v136 = *(v70 + v73);
      v74 = v23[12];
      v119 = *(v70 + v23[11]);
      v118 = *(v70 + v74);
      v130 = *(v70 + v23[18]);
      v75 = v23[14];
      v120 = *(v70 + v23[13]);
      v137 = *(v70 + v75);
      v117 = *(v70 + v23[15]);
      sub_24A37B740(v70 + v23[20], v15, &qword_27EF3F480, &unk_24A4B8C20);
      v76 = (v70 + v23[19]);
      v77 = v76[1];
      v144 = *v76;
      v78 = v76[2];
      v116 = v76[3];
      v80 = v76[4];
      v79 = v76[5];
      v115 = v76[6];
      v81 = *(v70 + v23[16]);
      v145 = *(v70 + v23[17]);
      *(v28 + v52) = *(v70 + v23[21]);
      v82 = v70[5];

      v83 = v121;

      v138 = v77;
      v84 = v77;
      v135 = v78;
      v66 = v118;
      v85 = v116;
      v132 = v80;
      v131 = v79;
      v58 = v115;
      sub_24A39AED0(v144, v84);
      v134 = v82;
      v67 = v119;
      v57 = v85;

      v143 = v81;
      v65 = v117;

      v86 = v70;
      v56 = v120;
      sub_24A489C74(v86, type metadata accessor for FMFFriend);
      v64 = v125;
      v63 = v83;
      v60 = v126;
      v61 = v124;
      v59 = v123;
      v62 = v122 & 0xFFFFFFFFFFFFFFFELL;
    }

    v87 = v23[14];
    *v28 = v61;
    v28[1] = v63;
    v28[2] = v59;
    v28[3] = v60;
    v28[4] = v64;
    sub_24A37BE24(v151, v28 + v23[8], &qword_27EF3F460, &unk_24A4B53B0);
    *(v28 + v23[9]) = v62;
    *(v28 + v23[10]) = v136;
    *(v28 + v23[11]) = v67;
    *(v28 + v23[12]) = v66;
    v88 = (v28 + v23[19]);
    v89 = v138;
    *v88 = v144;
    v88[1] = v89;
    v88[2] = v135;
    v88[3] = v57;
    v90 = v131;
    v88[4] = v132;
    v88[5] = v90;
    v88[6] = v58;
    *(v28 + v87) = v137;
    *(v28 + v23[18]) = (v130 == 2) | v130 & 1;
    *(v28 + v23[13]) = v56;
    v28[5] = v134;
    *(v28 + v23[15]) = v65;
    v91 = v148;
    if ((*(isa + 6))(v148, 1, v142) == 1)
    {
      sub_24A37EF2C(v91, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A37BE24(v149, v28 + v23[20], &qword_27EF3F480, &unk_24A4B8C20);
    }

    else
    {
      sub_24A37EF2C(v149, &qword_27EF3F480, &unk_24A4B8C20);
      v92 = v23[20];
      sub_24A4954DC(v91, v28 + v92, type metadata accessor for FMFLocation);
      v128(v28 + v92, 0, 1, v142);
    }

    v93 = v139;
    *(v28 + v23[16]) = v143;
    v94 = v146;
    *(v28 + v23[17]) = v145;
    sub_24A4954DC(v28, v94, type metadata accessor for FMFFriend);
    v95 = v93[6];
    LOBYTE(v153) = 3;
    sub_24A4507E0(v94, &v153);
    v96 = sub_24A4AA700();
    v154 = v96;
    v97 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
    v155 = v97;
    v98 = sub_24A38D3BC(&v153);
    v99 = *(*(v96 - 8) + 104);
    v99(v98, *MEMORY[0x277D08A20], v96);
    v100 = sub_24A4AA6C0();
    sub_24A37EEE0(&v153);
    if (v100)
    {
      v101 = sub_24A475BD8(*(v129 + 32));
      v102 = sub_24A489DD0(v101);

      v103 = sub_24A4ABB70();
      v104 = v141;
      (*(*(v103 - 8) + 56))(v141, 1, 1, v103);
      v105 = swift_allocObject();
      v105[2] = 0;
      v105[3] = 0;
      v105[4] = v102;
      v105[5] = v93;
      v105[6] = v147;
      v105[7] = sub_24A494B8C;
      v105[8] = v150;

      v106 = &unk_24A4BC580;
      v107 = v104;
    }

    else
    {
      v154 = v96;
      v155 = v97;
      v108 = sub_24A38D3BC(&v153);
      v99(v108, *MEMORY[0x277D089F8], v96);
      v109 = sub_24A4AA6C0();
      sub_24A37EEE0(&v153);
      if ((v109 & 1) == 0)
      {
        sub_24A489C74(v94, type metadata accessor for FMFFriend);
      }

      v110 = sub_24A4ABB70();
      v111 = v141;
      (*(*(v110 - 8) + 56))(v141, 1, 1, v110);
      v105 = swift_allocObject();
      v105[2] = 0;
      v105[3] = 0;
      v105[4] = v147;
      v105[5] = v93;
      v112 = v150;
      v105[6] = sub_24A494B8C;
      v105[7] = v112;

      v106 = &unk_24A4BC570;
      v107 = v111;
    }

    sub_24A432370(0, 0, v107, v106, v105);

    sub_24A489C74(v94, type metadata accessor for FMFFriend);
  }
}

uint64_t sub_24A48B060(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t *a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v128 = a1;
  v11 = sub_24A4AB690();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  MEMORY[0x28223BE20](v11);
  v121 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_24A4AB6E0();
  v120 = *(v122 - 8);
  v14 = *(v120 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMFFriend();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v117 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v129 = v19;
  v20 = qword_27EF3EBF8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  v22 = sub_24A378E18(v21, qword_27EF4E260);

  v127 = v22;
  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v126 = a4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v125 = v27;
    *v26 = 136315138;
    v130 = *a2;
    aBlock[0] = v27;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v28 = sub_24A4AB870();
    v30 = v16;
    v31 = a5;
    v32 = sub_24A37BD58(v28, v29, aBlock);

    *(v26 + 4) = v32;
    a5 = v31;
    v16 = v30;
    _os_log_impl(&dword_24A376000, v23, v24, "%s: removeFriend action initiated", v26, 0xCu);
    v33 = v125;
    sub_24A37EEE0(v125);
    MEMORY[0x24C219130](v33, -1, -1);
    v34 = v26;
    a4 = v126;
    MEMORY[0x24C219130](v34, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v35 = sub_24A4AB600();
    v36 = sub_24A4ABCC0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_24A376000, v35, v36, "Action is restricted. Returning with error", v37, 2u);
      MEMORY[0x24C219130](v37, -1, -1);
    }

    LOBYTE(aBlock[0]) = 0;
    sub_24A489940();
    v38 = swift_allocError();
    *v39 = 5;
    *(v39 + 8) = 256;
    sub_24A438AE0(aBlock, v38, a3, a4, a5, a6);
  }

  else
  {
    v40 = a2[6];
    v41 = (v128 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
    sub_24A451528(v128 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
    v127 = dispatch_group_create();
    v118 = swift_allocObject();
    *(v118 + 16) = 0;
    v42 = *(v16 + 36);
    v126 = v41;
    v43 = *(v41 + v42);
    v125 = v43;
    if (v43)
    {
      v44 = v127;
      dispatch_group_enter(v127);
      v46 = *v126;
      v45 = v126[1];
      v47 = type metadata accessor for FMFRemoveFriendRequest();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      v50 = (swift_allocObject() + qword_27EF4E348);
      *v50 = v46;
      v50[1] = v45;

      v116 = sub_24A3A45B8(0x6F4665766F6D6572, 0xEE007265776F6C6CLL);
      v51 = a2[15];
      v52 = a2[16];
      v115 = sub_24A37EACC(a2 + 12, v51);
      v53 = swift_allocObject();
      *(v53 + 16) = v118;
      *(v53 + 24) = v44;
      v54 = *(v52 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse();

      v56 = v44;
      v54(v116, sub_24A49583C, v53, refreshed, v51, v52);

      dispatch_group_enter(v56);
      v57 = v117;
      sub_24A495474(v126, v117, type metadata accessor for FMFFriend);
      v58 = type metadata accessor for FMFStopSharingAction();
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      v43 = swift_allocObject();
      sub_24A4954DC(v57, v43 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend, type metadata accessor for FMFFriend);
      *(v43 + 16) = 1;
      v61 = v56;
      sub_24A48A21C(v43, a2, v61);
      LOBYTE(v43) = v125;
    }

    v117 = swift_allocObject();
    *(v117 + 16) = 0;
    if ((v43 & 2) != 0)
    {
      v62 = v127;
      dispatch_group_enter(v127);
      v63 = *v126;
      v64 = v126[1];
      sub_24A44A59C(*v126, v64);
      v65 = type metadata accessor for FMFRemoveFriendRequest();
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      v68 = (swift_allocObject() + qword_27EF4E348);
      *v68 = v63;
      v68[1] = v64;

      v43 = sub_24A3A45B8(0x6F4665766F6D6572, 0xEF676E69776F6C6CLL);
      v69 = a2[15];
      v70 = a2[16];
      v116 = sub_24A37EACC(a2 + 12, v69);
      v71 = swift_allocObject();
      *(v71 + 16) = v117;
      *(v71 + 24) = v62;
      v72 = *(v70 + 64);
      v73 = type metadata accessor for FMFInitRefreshClientResponse();
      v74 = v62;

      v72(v43, sub_24A494B70, v71, v73, v69, v70);
      LOBYTE(v43) = v125;
    }

    v116 = swift_allocObject();
    *(v116 + 16) = 0;
    if ((v43 & 4) != 0)
    {
      v75 = v127;
      dispatch_group_enter(v127);
      v77 = *v126;
      v76 = v126[1];
      v78 = type metadata accessor for FMFRemoveFriendRequest();
      v79 = *(v78 + 48);
      v80 = *(v78 + 52);
      v81 = (swift_allocObject() + qword_27EF4E348);
      *v81 = v77;
      v81[1] = v76;

      v43 = sub_24A3A45B8(0xD000000000000015, 0x800000024A4B3370);
      v82 = a2[15];
      v83 = a2[16];
      v115 = sub_24A37EACC(a2 + 12, v82);
      v84 = swift_allocObject();
      *(v84 + 16) = v116;
      *(v84 + 24) = v75;
      v85 = *(v83 + 64);
      v86 = type metadata accessor for FMFInitRefreshClientResponse();
      v87 = v75;

      v85(v43, sub_24A49583C, v84, v86, v82, v83);
      LOBYTE(v43) = v125;
    }

    v125 = swift_allocObject();
    v125[2] = 0;
    if ((v43 & 8) != 0)
    {
      v88 = v127;
      dispatch_group_enter(v127);
      v90 = *v126;
      v89 = v126[1];
      v91 = type metadata accessor for FMFRespondToInviteRequest();
      v92 = *(v91 + 48);
      v93 = *(v91 + 52);
      v94 = swift_allocObject();
      v95 = (v94 + qword_27EF4E1E8);
      *v95 = v90;
      v95[1] = v89;
      *(v94 + qword_27EF4E1F0) = 0;

      v96 = sub_24A3A45B8(0x6552657469766E69, 0xEE0065736E6F7073);
      v97 = a2[15];
      v98 = a2[16];
      v126 = sub_24A37EACC(a2 + 12, v97);
      v99 = swift_allocObject();
      *(v99 + 16) = v125;
      *(v99 + 24) = v88;
      v100 = *(v98 + 64);
      v101 = type metadata accessor for FMFInitRefreshClientResponse();
      v102 = v88;

      v100(v96, sub_24A49583C, v99, v101, v97, v98);
    }

    sub_24A3785D4();
    v126 = sub_24A4ABD60();
    v103 = swift_allocObject();
    v104 = v117;
    v103[2] = v118;
    v103[3] = a2;
    v105 = v129;
    v103[4] = v128;
    v103[5] = sub_24A495838;
    v103[6] = v105;
    v103[7] = v104;
    v106 = v125;
    v103[8] = v116;
    v103[9] = v106;
    aBlock[4] = sub_24A494B5C;
    aBlock[5] = v103;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8B708;
    v107 = _Block_copy(aBlock);

    v108 = v119;
    sub_24A4AB6B0();
    v130 = MEMORY[0x277D84F90];
    sub_24A38D374(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3CFC00();
    v109 = v121;
    v110 = v124;
    sub_24A4ABE90();
    v111 = v126;
    v112 = v127;
    sub_24A4ABD00();
    _Block_release(v107);

    (*(v123 + 8))(v109, v110);
    (*(v120 + 8))(v108, v122);
  }
}

uint64_t sub_24A48BC98(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v45 = a1;
  v11 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v43 = a5;
  v15[4] = a5;
  v15[5] = a6;
  v16 = qword_27EF3EBF8;

  v42 = a6;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);

  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();

  v44 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = v20;
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136315138;
    v46 = *a2;
    v47 = v21;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v22 = sub_24A4AB870();
    v41 = a3;
    v24 = a4;
    v25 = sub_24A37BD58(v22, v23, &v47);
    a3 = v41;

    v26 = v39;
    *(v39 + 1) = v25;
    a4 = v24;
    v27 = v26;
    _os_log_impl(&dword_24A376000, v18, v44, "%s: ShowHideLocation: action initiated", v26, 0xCu);
    v28 = v40;
    sub_24A37EEE0(v40);
    MEMORY[0x24C219130](v28, -1, -1);
    MEMORY[0x24C219130](v27, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v29 = sub_24A4AB600();
    v30 = sub_24A4ABCC0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24A376000, v29, v30, "Action is restricted. Returning with error", v31, 2u);
      MEMORY[0x24C219130](v31, -1, -1);
    }

    LOBYTE(v47) = 0;
    sub_24A489940();
    v32 = swift_allocError();
    *v33 = 5;
    *(v33 + 8) = 256;
    sub_24A438AE0(&v47, v32, a3, a4, v43, v42);
  }

  else
  {
    v34 = sub_24A4ABB70();
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v36 = v45;
    v35[4] = a2;
    v35[5] = v36;
    v35[6] = sub_24A495838;
    v35[7] = v15;

    sub_24A432370(0, 0, v14, &unk_24A4BC598, v35);
  }
}

uint64_t sub_24A48C0A8(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v148 = a1;
  v11 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v113 - v13;
  v15 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v151 = &v113 - v20;
  v21 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v145 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v142 = &v113 - v25;
  v26 = type metadata accessor for FMFFriend();
  v141 = *(v26 - 1);
  v27 = *(v141 + 64);
  MEMORY[0x28223BE20](v26);
  v140 = (&v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v146 = &v113 - v30;
  MEMORY[0x28223BE20](v31);
  v147 = &v113 - v32;
  v33 = swift_allocObject();
  v33[2] = a3;
  v33[3] = a4;
  v33[4] = a5;
  v33[5] = a6;
  v149 = v33;
  v34 = qword_27EF3EBF8;
  v143 = a3;

  v144 = a4;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_24A4AB630();
  sub_24A378E18(v35, qword_27EF4E260);

  v36 = sub_24A4AB600();
  v37 = sub_24A4ABCE0();

  v38 = os_log_type_enabled(v36, v37);
  v150 = v14;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v139 = a5;
    v40 = v39;
    v41 = swift_slowAlloc();
    v138 = v41;
    *v40 = 136315138;
    v152 = *a2;
    v153 = v41;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v42 = sub_24A4AB870();
    v44 = sub_24A37BD58(v42, v43, &v153);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_24A376000, v36, v37, "%s: stop following action initiated", v40, 0xCu);
    v45 = v138;
    sub_24A37EEE0(v138);
    MEMORY[0x24C219130](v45, -1, -1);
    v46 = v40;
    a5 = v139;
    MEMORY[0x24C219130](v46, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v47 = sub_24A4AB600();
    v48 = sub_24A4ABCC0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_24A376000, v47, v48, "Action is restricted. Returning with error", v49, 2u);
      MEMORY[0x24C219130](v49, -1, -1);
    }

    LOBYTE(v153) = 0;
    sub_24A489940();
    v50 = swift_allocError();
    *v51 = 5;
    *(v51 + 8) = 256;
    sub_24A438AE0(&v153, v50, v143, v144, a5, a6);
  }

  else
  {
    v138 = a2;
    v52 = v148 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend;
    v53 = *(v148 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend);
    v54 = *(v148 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend + 8);
    v55 = type metadata accessor for FMFRemoveFriendRequest();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    v58 = (swift_allocObject() + qword_27EF4E348);
    v134 = v54;
    v135 = v53;
    *v58 = v53;
    v58[1] = v54;

    v136 = sub_24A3A45B8(0x6F4665766F6D6572, 0xEF676E69776F6C6CLL);
    v59 = v142;
    sub_24A495474(v52, v142, type metadata accessor for FMFFriend);
    v60 = v141;
    (*(v141 + 56))(v59, 0, 1, v26);
    v61 = type metadata accessor for FMFLocation();
    v129 = *(v61 - 8);
    v62 = v129 + 56;
    v63 = *(v129 + 56);
    v63(v151, 1, 1, v61);
    v64 = v26[21];
    v65 = v146;
    v146[v64] = 7;
    v66 = sub_24A4AAAD0();
    (*(*(v66 - 8) + 56))(v150, 1, 1, v66);
    v139 = v61;
    v125 = v62;
    v63(v18, 1, 1, v61);
    v67 = v59;
    v68 = v145;
    sub_24A37BE24(v67, v145, &qword_27EF3F2D0, &qword_24A4B4F50);
    v69 = (*(v60 + 48))(v68, 1, v26);
    v137 = v18;
    if (v69 == 1)
    {
      sub_24A37EF2C(v68, &qword_27EF3F2D0, &qword_24A4B4F50);
      v70 = 0;
      v130 = 0;
      v144 = 0;
      v145 = 0;
      v142 = 0;
      v143 = 0;
      v131 = 0;
      v71 = 0;
      v128 = 0;
      v127 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0xE000000000000000;
      v78 = MEMORY[0x277D84FA0];
      v126 = 2;
      v141 = 0x7FFFFFFFFFFFFFFFLL;
      v132 = 2;
      v133 = 2;
      v79 = 2;
      v80 = 2;
    }

    else
    {
      sub_24A37EF2C(v18, &qword_27EF3F480, &unk_24A4B8C20);
      v123 = v63;
      v81 = v150;
      sub_24A37EF2C(v150, &qword_27EF3F460, &unk_24A4B53B0);
      v82 = v140;
      sub_24A4954DC(v68, v140, type metadata accessor for FMFFriend);
      v83 = v82[1];
      v122 = *v82;
      v119 = v83;
      v84 = v82[3];
      v121 = v82[2];
      v115 = v84;
      v124 = v82[4];
      sub_24A37B740(v82 + v26[8], v81, &qword_27EF3F460, &unk_24A4B53B0);
      v85 = v26[10];
      v120 = *(v82 + v26[9]);
      v132 = *(v82 + v85);
      v86 = v26[12];
      v118 = *(v82 + v26[11]);
      v116 = *(v82 + v86);
      v126 = *(v82 + v26[18]);
      v87 = v26[14];
      v117 = *(v82 + v26[13]);
      v133 = *(v82 + v87);
      v141 = *(v82 + v26[15]);
      sub_24A37B740(v82 + v26[20], v18, &qword_27EF3F480, &unk_24A4B8C20);
      v88 = (v82 + v26[19]);
      v89 = *v88;
      v143 = v88[1];
      v144 = v89;
      v90 = v88[2];
      v71 = v88[3];
      v92 = v88[4];
      v91 = v88[5];
      v114 = v88[6];
      v93 = *(v82 + v26[16]);
      v145 = *(v82 + v26[17]);
      *(v65 + v64) = *(v82 + v26[21]);
      v94 = v82[5];

      v95 = v119;

      v131 = v90;
      v79 = v116;
      v128 = v92;
      v127 = v91;
      v72 = v114;
      sub_24A39AED0(v144, v143);
      v130 = v94;
      v80 = v118;

      v142 = v93;
      v70 = v117;

      v96 = v82;
      v63 = v123;
      sub_24A489C74(v96, type metadata accessor for FMFFriend);
      v78 = v124;
      v77 = v95;
      v74 = v115;
      v75 = v122;
      v73 = v121;
      v76 = v120 & 0xFFFFFFFFFFFFFFFDLL;
    }

    v97 = v26[14];
    *v65 = v75;
    v65[1] = v77;
    v65[2] = v73;
    v65[3] = v74;
    v65[4] = v78;
    sub_24A37BE24(v150, v65 + v26[8], &qword_27EF3F460, &unk_24A4B53B0);
    *(v65 + v26[9]) = v76;
    *(v65 + v26[10]) = v132;
    *(v65 + v26[11]) = v80;
    *(v65 + v26[12]) = v79;
    v98 = (v65 + v26[19]);
    v99 = v143;
    *v98 = v144;
    v98[1] = v99;
    v98[2] = v131;
    v98[3] = v71;
    v100 = v127;
    v98[4] = v128;
    v98[5] = v100;
    v98[6] = v72;
    *(v65 + v97) = v133;
    *(v65 + v26[18]) = (v126 == 2) | v126 & 1;
    *(v65 + v26[13]) = v70;
    v65[5] = v130;
    *(v65 + v26[15]) = v141;
    if ((*(v129 + 48))(v151, 1, v139) == 1)
    {
      sub_24A37EF2C(v151, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A37BE24(v137, v65 + v26[20], &qword_27EF3F480, &unk_24A4B8C20);
    }

    else
    {
      sub_24A37EF2C(v137, &qword_27EF3F480, &unk_24A4B8C20);
      v101 = v26[20];
      sub_24A4954DC(v151, v65 + v101, type metadata accessor for FMFLocation);
      v63(v65 + v101, 0, 1, v139);
    }

    v102 = v138;
    *(v65 + v26[16]) = v142;
    *(v65 + v26[17]) = v145;
    v103 = v147;
    sub_24A4954DC(v65, v147, type metadata accessor for FMFFriend);
    v104 = v102[6];
    LOBYTE(v153) = 5;
    sub_24A4507E0(v103, &v153);
    sub_24A44A59C(v135, v134);
    v105 = v102[15];
    v106 = v102[16];
    sub_24A37EACC(v102 + 12, v105);
    v107 = swift_allocObject();
    v109 = v148;
    v108 = v149;
    v107[2] = v102;
    v107[3] = v109;
    v107[4] = sub_24A495838;
    v107[5] = v108;
    v110 = *(v106 + 64);
    refreshed = type metadata accessor for FMFInitRefreshClientResponse();

    v110(v136, sub_24A494E18, v107, refreshed, v105, v106);

    sub_24A489C74(v147, type metadata accessor for FMFFriend);
  }
}

uint64_t sub_24A48CD48(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v153 = a1;
  v11 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v144 = &v119 - v13;
  v14 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v119 - v16;
  v18 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v155 = &v119 - v23;
  v24 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v147 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v146 = &v119 - v28;
  v29 = type metadata accessor for FMFFriend();
  v145 = *(v29 - 1);
  v30 = *(v145 + 64);
  MEMORY[0x28223BE20](v29);
  v143 = (&v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v34 = (&v119 - v33);
  MEMORY[0x28223BE20](v35);
  v152 = &v119 - v36;
  v37 = swift_allocObject();
  v37[2] = a3;
  v37[3] = a4;
  v150 = a5;
  v37[4] = a5;
  v37[5] = a6;
  v154 = v37;
  v38 = qword_27EF3EBF8;
  v148 = a3;

  v149 = a4;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_24A4AB630();
  sub_24A378E18(v39, qword_27EF4E260);

  v40 = sub_24A4AB600();
  v41 = sub_24A4ABCE0();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v142 = v34;
    v151 = v17;
    v43 = v42;
    v140 = swift_slowAlloc();
    v157 = v140;
    *v43 = 136315138;
    v156 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v44 = sub_24A4AB870();
    v46 = a2;
    v47 = sub_24A37BD58(v44, v45, &v157);

    *(v43 + 4) = v47;
    a2 = v46;
    _os_log_impl(&dword_24A376000, v40, v41, "%s: stop sharing action initiated", v43, 0xCu);
    v48 = v140;
    sub_24A37EEE0(v140);
    MEMORY[0x24C219130](v48, -1, -1);
    v49 = v43;
    v17 = v151;
    v34 = v142;
    MEMORY[0x24C219130](v49, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v50 = sub_24A4AB600();
    v51 = sub_24A4ABCC0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_24A376000, v50, v51, "Action is restricted. Returning with error", v52, 2u);
      MEMORY[0x24C219130](v52, -1, -1);
    }

    LOBYTE(v157) = 0;
    sub_24A489940();
    v53 = swift_allocError();
    *v54 = 5;
    *(v54 + 8) = 256;
    sub_24A438AE0(&v157, v53, v148, v149, v150, a6);
  }

  else
  {
    v142 = a2;
    v131 = v153 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend;
    v55 = v146;
    sub_24A495474(v153 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend, v146, type metadata accessor for FMFFriend);
    v56 = v145;
    (*(v145 + 56))(v55, 0, 1, v29);
    v57 = type metadata accessor for FMFLocation();
    v140 = *(v57 - 1);
    v58 = v140 + 7;
    v59 = v140[7];
    v59(v155, 1, 1, v57);
    v60 = v29[21];
    *(v34 + v60) = 7;
    v61 = sub_24A4AAAD0();
    (*(*(v61 - 8) + 56))(v17, 1, 1, v61);
    v150 = v57;
    v130 = v59;
    v59(v21, 1, 1, v57);
    v62 = v147;
    sub_24A37BE24(v55, v147, &qword_27EF3F2D0, &qword_24A4B4F50);
    v63 = (*(v56 + 48))(v62, 1, v29);
    v141 = v21;
    if (v63 == 1)
    {
      sub_24A37EF2C(v62, &qword_27EF3F2D0, &qword_24A4B4F50);
      v64 = 0;
      v137 = 0;
      v139 = 0;
      v148 = 0;
      v149 = 0;
      v65 = 0;
      v146 = 0;
      v147 = 0;
      v135 = 0;
      v134 = 0;
      v133 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0xE000000000000000;
      v71 = MEMORY[0x277D84FA0];
      v72 = v17;
      v73 = 2;
      v145 = 0x7FFFFFFFFFFFFFFFLL;
      v74 = 2;
      v132 = 2;
      v136 = 2;
      v138 = 2;
    }

    else
    {
      sub_24A37EF2C(v21, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A37EF2C(v17, &qword_27EF3F460, &unk_24A4B53B0);
      v75 = v62;
      v76 = v143;
      sub_24A4954DC(v75, v143, type metadata accessor for FMFFriend);
      v77 = v76[1];
      v127 = *v76;
      v124 = v77;
      v78 = v76[3];
      v126 = v76[2];
      v120 = v78;
      v129 = v76[4];
      sub_24A37B740(v76 + v29[8], v17, &qword_27EF3F460, &unk_24A4B53B0);
      v79 = v29[10];
      v125 = *(v76 + v29[9]);
      v138 = *(v76 + v79);
      v80 = v29[12];
      v136 = *(v76 + v29[11]);
      v132 = *(v76 + v80);
      v81 = v29[18];
      v151 = v17;
      v122 = *(v76 + v81);
      v82 = v29[14];
      v121 = *(v76 + v29[13]);
      v123 = *(v76 + v82);
      v145 = *(v76 + v29[15]);
      sub_24A37B740(v76 + v29[20], v21, &qword_27EF3F480, &unk_24A4B8C20);
      v83 = v76 + v29[19];
      v84 = *v83;
      v65 = *(v83 + 1);
      v85 = *(v83 + 3);
      v147 = *(v83 + 2);
      v148 = v84;
      v146 = v85;
      v86 = *(v83 + 4);
      v87 = *(v83 + 5);
      v88 = *(v83 + 6);
      v89 = v29[17];
      v149 = *(v76 + v29[16]);
      v90 = *(v76 + v89);
      *(v34 + v60) = *(v76 + v29[21]);
      v91 = v90;
      v128 = v58;
      v92 = v76[5];

      v70 = v124;

      v135 = v86;
      v134 = v87;
      v133 = v88;
      sub_24A39AED0(v148, v65);
      v137 = v92;
      v73 = v122;

      v64 = v121;

      v139 = v91;
      v74 = v123;

      sub_24A489C74(v76, type metadata accessor for FMFFriend);
      v72 = v151;
      v71 = v129;
      v67 = v120;
      v68 = v127;
      v66 = v126;
      v69 = v125 & 0xFFFFFFFFFFFFFFFELL;
    }

    v93 = v29[14];
    *v34 = v68;
    v34[1] = v70;
    v34[2] = v66;
    v34[3] = v67;
    v34[4] = v71;
    sub_24A37BE24(v72, v34 + v29[8], &qword_27EF3F460, &unk_24A4B53B0);
    *(v34 + v29[9]) = v69;
    *(v34 + v29[10]) = v138;
    *(v34 + v29[11]) = v136;
    *(v34 + v29[12]) = v132;
    v94 = (v34 + v29[19]);
    v95 = v147;
    *v94 = v148;
    v94[1] = v65;
    v96 = v146;
    v94[2] = v95;
    v94[3] = v96;
    v97 = v134;
    v94[4] = v135;
    v94[5] = v97;
    v94[6] = v133;
    *(v34 + v93) = v74;
    *(v34 + v29[18]) = (v73 == 2) | v73 & 1;
    *(v34 + v29[13]) = v64;
    v34[5] = v137;
    *(v34 + v29[15]) = v145;
    if ((v140[6])(v155, 1, v150) == 1)
    {
      sub_24A37EF2C(v155, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A37BE24(v141, v34 + v29[20], &qword_27EF3F480, &unk_24A4B8C20);
    }

    else
    {
      sub_24A37EF2C(v141, &qword_27EF3F480, &unk_24A4B8C20);
      v98 = v29[20];
      sub_24A4954DC(v155, v34 + v98, type metadata accessor for FMFLocation);
      v130(v34 + v98, 0, 1, v150);
    }

    v99 = v142;
    v100 = v152;
    *(v34 + v29[16]) = v149;
    *(v34 + v29[17]) = v139;
    sub_24A4954DC(v34, v100, type metadata accessor for FMFFriend);
    v101 = v99[6];
    LOBYTE(v157) = 3;
    sub_24A4507E0(v100, &v157);
    v102 = sub_24A4AA700();
    v158 = v102;
    v103 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
    v159 = v103;
    v104 = sub_24A38D3BC(&v157);
    v105 = *(*(v102 - 8) + 104);
    v105(v104, *MEMORY[0x277D08A20], v102);
    v106 = sub_24A4AA6C0();
    sub_24A37EEE0(&v157);
    if (v106)
    {
      v107 = sub_24A475BD8(*(v131 + 32));
      v108 = sub_24A489DD0(v107);

      v109 = sub_24A4ABB70();
      v110 = v144;
      (*(*(v109 - 8) + 56))(v144, 1, 1, v109);
      v111 = swift_allocObject();
      v111[2] = 0;
      v111[3] = 0;
      v111[4] = v108;
      v111[5] = v99;
      v112 = v154;
      v111[6] = v153;
      v111[7] = sub_24A495838;
      v111[8] = v112;

      v113 = &unk_24A4BC5B0;
    }

    else
    {
      v158 = v102;
      v159 = v103;
      v114 = sub_24A38D3BC(&v157);
      v105(v114, *MEMORY[0x277D089F8], v102);
      v115 = sub_24A4AA6C0();
      sub_24A37EEE0(&v157);
      if ((v115 & 1) == 0)
      {
        sub_24A489C74(v100, type metadata accessor for FMFFriend);
      }

      v116 = sub_24A4ABB70();
      v110 = v144;
      (*(*(v116 - 8) + 56))(v144, 1, 1, v116);
      v111 = swift_allocObject();
      v111[2] = 0;
      v111[3] = 0;
      v117 = v154;
      v111[4] = v153;
      v111[5] = v99;
      v111[6] = sub_24A495838;
      v111[7] = v117;

      v113 = &unk_24A4BC5A8;
    }

    sub_24A432370(0, 0, v110, v113, v111);

    sub_24A489C74(v100, type metadata accessor for FMFFriend);
  }
}

uint64_t sub_24A48DBE0(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v276 = &v255 - v14;
  v289 = type metadata accessor for FMFIntermediateFriend();
  v284 = *(v289 - 8);
  v15 = *(v284 + 64);
  MEMORY[0x28223BE20](v289);
  v277 = &v255 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v295 = &v255 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v255 - v21);
  v23 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v279 = &v255 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v283 = &v255 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v255 - v29;
  MEMORY[0x28223BE20](v31);
  v285 = &v255 - v32;
  v33 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v275 = (&v255 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v291 = &v255 - v37;
  v38 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v273 = &v255 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v271 = &v255 - v42;
  MEMORY[0x28223BE20](v43);
  v272 = &v255 - v44;
  MEMORY[0x28223BE20](v45);
  v280 = &v255 - v46;
  v47 = type metadata accessor for FMFFriend();
  v303 = *(v47 - 8);
  v48 = *(v303 + 64);
  MEMORY[0x28223BE20](v47);
  v287 = &v255 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v270 = &v255 - v51;
  MEMORY[0x28223BE20](v52);
  v274 = (&v255 - v53);
  MEMORY[0x28223BE20](v54);
  v269 = (&v255 - v55);
  MEMORY[0x28223BE20](v56);
  v292 = &v255 - v57;
  MEMORY[0x28223BE20](v58);
  v294 = &v255 - v59;
  MEMORY[0x28223BE20](v60);
  v304 = (&v255 - v61);
  MEMORY[0x28223BE20](v62);
  v293 = &v255 - v63;
  v286 = v64;
  MEMORY[0x28223BE20](v65);
  v297 = (&v255 - v66);
  v67 = swift_allocObject();
  *(v67 + 16) = a3;
  *(v67 + 24) = a4;
  v301 = a5;
  *(v67 + 32) = a5;
  *(v67 + 40) = a6;
  v68 = qword_27EF3EBF8;
  v299 = a3;

  v300 = a4;

  v302 = a6;

  if (v68 != -1)
  {
LABEL_74:
    swift_once();
  }

  v69 = sub_24A4AB630();
  v70 = sub_24A378E18(v69, qword_27EF4E260);

  v298 = v70;
  v71 = sub_24A4AB600();
  v72 = sub_24A4ABCE0();

  v73 = os_log_type_enabled(v71, v72);
  v296 = v47;
  v282 = v30;
  v281 = v22;
  v74 = a2;
  if (v73)
  {
    v75 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v305[0] = v30;
    *v75 = 136315394;
    v306 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v76 = sub_24A4AB870();
    v22 = sub_24A37BD58(v76, v77, v305);

    *(v75 + 4) = v22;
    *(v75 + 12) = 2080;
    *(v75 + 14) = sub_24A37BD58(*(a1 + 24), *(a1 + 32), v305);
    _os_log_impl(&dword_24A376000, v71, v72, "%s: respond to invite action initiated for friend ID: %s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v30, -1, -1);
    MEMORY[0x24C219130](v75, -1, -1);
  }

  a2 = v304;
  if (*(v74[17] + 40) == 1)
  {
    v78 = sub_24A4AB600();
    v79 = sub_24A4ABCC0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_24A376000, v78, v79, "Action is restricted. Returning with error", v80, 2u);
      MEMORY[0x24C219130](v80, -1, -1);
    }

    LOBYTE(v305[0]) = 0;
    sub_24A489940();
    v81 = swift_allocError();
    *v82 = 5;
    *(v82 + 8) = 256;
    sub_24A438AE0(v305, v81, v299, v300, v301, v302);
  }

  else
  {
    v278 = v67;
    v83 = v74[6];
    v84 = *(v83 + 56);
    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    v268 = v83;
    sub_24A4ABD70();
    v267 = 0;
    v47 = v305[0];
    v290 = *(v305[0] + 16);
    if (v290)
    {
      v67 = 0;
      while (1)
      {
        if (v67 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_74;
        }

        v288 = *(v303 + 80);
        sub_24A495474(v47 + ((v288 + 32) & ~v288) + *(v303 + 72) * v67, a2, type metadata accessor for FMFFriend);
        v85 = a2[1];
        v305[0] = *a2;
        v305[1] = v85;
        v86 = *(a1 + 24);
        v30 = *(a1 + 32);
        v306 = v86;
        v307 = v30;
        sub_24A3A1434();
        if (sub_24A4ABE60())
        {

          goto LABEL_24;
        }

        v87 = a1;
        v22 = v74;
        v88 = a2[4];
        if (*(v88 + 16))
        {
          v89 = *(v88 + 40);
          sub_24A4AC360();
          sub_24A4AB8F0();
          v90 = sub_24A4AC3A0();
          v91 = -1 << *(v88 + 32);
          v92 = v90 & ~v91;
          if ((*(v88 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92))
          {
            break;
          }
        }

LABEL_10:
        ++v67;
        a2 = v304;
        sub_24A489C74(v304, type metadata accessor for FMFFriend);
        v74 = v22;
        a1 = v87;
        if (v67 == v290)
        {
          goto LABEL_29;
        }
      }

      v93 = ~v91;
      while (1)
      {
        v94 = (*(v88 + 48) + 16 * v92);
        v95 = *v94 == v86 && v94[1] == v30;
        if (v95 || (sub_24A4AC270() & 1) != 0)
        {
          break;
        }

        v92 = (v92 + 1) & v93;
        if (((*(v88 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v74 = v22;
      a1 = v87;
      a2 = v304;
LABEL_24:
      v96 = v293;
      sub_24A4954DC(a2, v293, type metadata accessor for FMFFriend);
      v97 = v297;
      sub_24A4954DC(v96, v297, type metadata accessor for FMFFriend);
      v98 = v296;
      v99 = v295;
      v100 = v303;
      if ((*(v97 + v296[9]) & 0xA) != 0)
      {
        LODWORD(v302) = *(a1 + 40);
        v266 = a1;
        if (v302 == 1)
        {
          v101 = v280;
          sub_24A495474(v97, v280, type metadata accessor for FMFFriend);
          (*(v100 + 56))(v101, 0, 1, v98);
          (*(v284 + 56))(v291, 1, 1, v289);
          v102 = type metadata accessor for FMFLocation();
          v271 = *(v102 - 8);
          v103 = v271 + 56;
          v104 = *(v271 + 56);
          v104(v285, 1, 1, v102);
          v105 = v98[21];
          v292[v105] = 7;
          v106 = sub_24A4AAAD0();
          v107 = v281;
          (*(*(v106 - 8) + 56))(v281, 1, 1, v106);
          v108 = v100;
          v109 = v282;
          v273 = v102;
          v258 = v103;
          v257 = v104;
          v104(v282, 1, 1, v102);
          v110 = v272;
          sub_24A37B740(v101, v272, &qword_27EF3F2D0, &qword_24A4B4F50);
          if ((*(v108 + 48))(v110, 1, v98) == 1)
          {
            sub_24A37EF2C(v110, &qword_27EF3F2D0, &qword_24A4B4F50);
            LODWORD(v272) = 0;
            v259 = 0;
            v111 = 0;
            v303 = 0;
            v304 = 0;
            v290 = 0;
            v265 = 0;
            v264 = 0;
            v263 = 0;
            v262 = 0;
            v274 = 0;
            v261 = 0;
            v279 = 0;
            v300 = 0;
            v283 = 0;
            v301 = 0xE000000000000000;
            v299 = MEMORY[0x277D84FA0];
            LODWORD(v295) = 2;
            v270 = 0x7FFFFFFFFFFFFFFFLL;
            v112 = 1;
            LODWORD(v293) = 2;
            LODWORD(v298) = 2;
            v260 = 2;
          }

          else
          {
            sub_24A37EF2C(v109, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A37EF2C(v107, &qword_27EF3F460, &unk_24A4B53B0);
            v147 = v269;
            sub_24A4954DC(v110, v269, type metadata accessor for FMFFriend);
            v148 = v147[1];
            v283 = *v147;
            v301 = v148;
            v149 = v147[3];
            v279 = v147[2];
            v300 = v149;
            v299 = v147[4];
            sub_24A37B740(v147 + v98[8], v107, &qword_27EF3F460, &unk_24A4B53B0);
            v150 = v98[10];
            v256 = *(v147 + v98[9]);
            v260 = *(v147 + v150);
            v151 = v98[12];
            LODWORD(v298) = *(v147 + v98[11]);
            LODWORD(v293) = *(v147 + v151);
            v259 = *(v147 + v98[18]);
            v152 = v98[14];
            LODWORD(v272) = *(v147 + v98[13]);
            LODWORD(v295) = *(v147 + v152);
            v270 = *(v147 + v98[15]);
            sub_24A37B740(v147 + v98[20], v109, &qword_27EF3F480, &unk_24A4B8C20);
            v153 = (v147 + v98[19]);
            v154 = v153[1];
            v290 = *v153;
            v155 = v153[2];
            v156 = v153[3];
            v157 = v105;
            v158 = v153[4];
            v274 = v153[5];
            v159 = v153[6];
            v160 = *(v147 + v98[16]);
            v161 = *(v147 + v98[17]);
            v292[v157] = *(v147 + v98[21]);
            v162 = v161;
            v163 = v147[5];

            v265 = v154;
            v264 = v155;
            v263 = v156;
            v262 = v158;
            v261 = v159;
            sub_24A39AED0(v290, v154);
            v111 = v163;

            v303 = v160;

            v304 = v162;

            sub_24A489C74(v147, type metadata accessor for FMFFriend);
            v112 = v256 | 1;
          }

          v164 = v288;
          v165 = v277;
          v166 = v291;
          v167 = v275;
          sub_24A37B740(v291, v275, &qword_27EF3F2E0, &qword_24A4BACE0);
          v168 = v289;
          if ((*(v284 + 48))(v167, 1, v289) == 1)
          {
            sub_24A37EF2C(v166, &qword_27EF3F2E0, &qword_24A4BACE0);
            sub_24A37EF2C(v280, &qword_27EF3F2D0, &qword_24A4B4F50);
            sub_24A37EF2C(v167, &qword_27EF3F2E0, &qword_24A4BACE0);
            v169 = v281;
          }

          else
          {

            sub_24A4954DC(v167, v165, type metadata accessor for FMFIntermediateFriend);
            if (v298 == 2 || (v298 & 1) == 0)
            {
              v193 = *(v165 + v168[14]);
            }

            else
            {
              v193 = 1;
            }

            if (v293 == 2 || (v293 & 1) == 0)
            {
              v199 = *(v165 + v168[15]);
            }

            else
            {
              v199 = 1;
            }

            v301 = v165[1];
            v200 = v165[3];
            if (v295 == 2 || (v295 & 1) == 0)
            {
              v201 = *(v165 + v168[16]);
            }

            else
            {
              v201 = 1;
            }

            v202 = *v165;
            v203 = v165[2];
            v204 = *(v165 + v168[17]);
            v205 = v165[9];
            LODWORD(v295) = v201 & 1;
            v300 = v200;
            LODWORD(v293) = v199 & 1;
            v283 = v202;
            v279 = v203;
            LODWORD(v298) = v193 & 1;
            if (v205)
            {
              v206 = v165[8];
              sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_24A4B4E10;
              *(inited + 32) = v206;
              v168 = v289;
              *(inited + 40) = v205;
              v111 = v204;

              v299 = sub_24A48A0F4(inited, v299);
              swift_setDeallocating();
              v165 = v277;
              sub_24A406964(inited + 32);
            }

            else
            {
              v208 = v165[4];
              v111 = v204;

              if (v208)
              {

                v209 = sub_24A3999E0(v208);

                v299 = sub_24A399BC8(v209, v299);
              }
            }

            v169 = v281;
            sub_24A37EF2C(v281, &qword_27EF3F460, &unk_24A4B53B0);
            sub_24A37EF2C(v291, &qword_27EF3F2E0, &qword_24A4BACE0);
            sub_24A37EF2C(v280, &qword_27EF3F2D0, &qword_24A4B4F50);
            sub_24A37B740(v165 + v168[12], v169, &qword_27EF3F460, &unk_24A4B53B0);
            sub_24A489C74(v165, type metadata accessor for FMFIntermediateFriend);
          }

          v98 = v296;
          v210 = v296[14];
          v211 = v292;
          v212 = v301;
          *v292 = v283;
          v211[1] = v212;
          v213 = v300;
          v211[2] = v279;
          v211[3] = v213;
          v211[4] = v299;
          sub_24A37BE24(v169, v211 + v98[8], &qword_27EF3F460, &unk_24A4B53B0);
          *(v211 + v98[9]) = v112;
          *(v211 + v98[10]) = v260;
          *(v211 + v98[11]) = v298;
          *(v211 + v98[12]) = v293;
          v214 = (v211 + v98[19]);
          v215 = v265;
          *v214 = v290;
          v214[1] = v215;
          v216 = v263;
          v214[2] = v264;
          v214[3] = v216;
          v217 = v274;
          v214[4] = v262;
          v214[5] = v217;
          v214[6] = v261;
          *(v211 + v210) = v295;
          *(v211 + v98[18]) = v259;
          *(v211 + v98[13]) = v272;
          v211[5] = v111;
          *(v211 + v98[15]) = v270;
          v218 = v285;
          if ((*(v271 + 48))(v285, 1, v273) == 1)
          {
            sub_24A37EF2C(v218, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A37BE24(v282, v211 + v98[20], &qword_27EF3F480, &unk_24A4B8C20);
          }

          else
          {
            sub_24A37EF2C(v282, &qword_27EF3F480, &unk_24A4B8C20);
            v219 = v98[20];
            sub_24A4954DC(v218, v211 + v219, type metadata accessor for FMFLocation);
            v257(v211 + v219, 0, 1, v273);
          }

          v196 = v211;
          v97 = v297;
          v197 = v266;
          v198 = v294;
        }

        else
        {
          v127 = v271;
          sub_24A495474(v97, v271, type metadata accessor for FMFFriend);
          (*(v100 + 56))(v127, 0, 1, v98);
          v128 = type metadata accessor for FMFLocation();
          v292 = *(v128 - 8);
          v129 = (v292 + 56);
          v130 = *(v292 + 7);
          v130(v283, 1, 1, v128);
          v131 = v100;
          v132 = v274;
          v284 = v98[21];
          *(v274 + v284) = 7;
          v133 = sub_24A4AAAD0();
          (*(*(v133 - 8) + 56))(v99, 1, 1, v133);
          v134 = v279;
          v293 = v128;
          v275 = v130;
          v272 = v129;
          v130(v279, 1, 1, v128);
          v135 = v127;
          v136 = v273;
          sub_24A37BE24(v135, v273, &qword_27EF3F2D0, &qword_24A4B4F50);
          v137 = (*(v131 + 48))(v136, 1, v98);
          if (v137 == 1)
          {
            v138 = v99;
            sub_24A37EF2C(v136, &qword_27EF3F2D0, &qword_24A4B4F50);
            LODWORD(v277) = 0;
            v284 = 0;
            v303 = 0;
            v304 = 0;
            v301 = 0;
            v300 = 0;
            v299 = 0;
            v298 = 0;
            v281 = 0;
            v280 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0xE000000000000000;
            v145 = MEMORY[0x277D84FA0];
            v146 = 2;
            v291 = 0x7FFFFFFFFFFFFFFFLL;
            LODWORD(v290) = 2;
            LODWORD(v285) = 2;
            LODWORD(v282) = 2;
            LODWORD(v289) = 2;
          }

          else
          {
            sub_24A37EF2C(v134, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A37EF2C(v295, &qword_27EF3F460, &unk_24A4B53B0);
            v170 = v270;
            sub_24A4954DC(v136, v270, type metadata accessor for FMFFriend);
            v171 = v170[1];
            v271 = *v170;
            v264 = v171;
            v172 = v170[3];
            v269 = v170[2];
            v262 = v172;
            v273 = v170[4];
            sub_24A37B740(v170 + v98[8], v295, &qword_27EF3F460, &unk_24A4B53B0);
            v173 = v98[10];
            v265 = *(v170 + v98[9]);
            LODWORD(v289) = *(v170 + v173);
            v174 = v98[12];
            LODWORD(v282) = *(v170 + v98[11]);
            LODWORD(v285) = *(v170 + v174);
            LODWORD(v263) = *(v170 + v98[18]);
            v175 = v98[14];
            LODWORD(v277) = *(v170 + v98[13]);
            LODWORD(v290) = *(v170 + v175);
            v291 = *(v170 + v98[15]);
            sub_24A37B740(v170 + v98[20], v134, &qword_27EF3F480, &unk_24A4B8C20);
            v176 = v170 + v98[19];
            v177 = *(v176 + 1);
            v301 = *v176;
            v300 = v177;
            v178 = *(v176 + 3);
            v299 = *(v176 + 2);
            v298 = v178;
            v179 = *(v176 + 4);
            v180 = *(v176 + 5);
            v181 = *(v176 + 6);
            v182 = *(v170 + v98[16]);
            v304 = *(v170 + v98[17]);
            *(v132 + v284) = *(v170 + v98[21]);
            v183 = v170[5];

            v184 = v264;

            v281 = v179;
            v280 = v180;
            v139 = v181;
            sub_24A39AED0(v301, v300);
            v284 = v183;
            v146 = v263;

            v303 = v182;

            v185 = v170;
            v138 = v295;
            sub_24A489C74(v185, type metadata accessor for FMFFriend);
            v145 = v273;
            v144 = v184;
            v141 = v262;
            v142 = v271;
            v140 = v269;
            v143 = v265 & 0xFFFFFFFFFFFFFFF7;
          }

          v186 = v98[14];
          *v132 = v142;
          v132[1] = v144;
          v132[2] = v140;
          v132[3] = v141;
          v132[4] = v145;
          sub_24A37BE24(v138, v132 + v98[8], &qword_27EF3F460, &unk_24A4B53B0);
          *(v132 + v98[9]) = v143;
          *(v132 + v98[10]) = v289;
          *(v132 + v98[11]) = v282;
          *(v132 + v98[12]) = v285;
          v187 = (v132 + v98[19]);
          v188 = v300;
          *v187 = v301;
          v187[1] = v188;
          v189 = v298;
          v187[2] = v299;
          v187[3] = v189;
          v190 = v280;
          v187[4] = v281;
          v187[5] = v190;
          v187[6] = v139;
          *(v132 + v186) = v290;
          *(v132 + v98[18]) = (v146 == 2) | v146 & 1;
          *(v132 + v98[13]) = v277;
          v132[5] = v284;
          *(v132 + v98[15]) = v291;
          v191 = v283;
          v192 = v293;
          if ((*(v292 + 6))(v283, 1, v293) == 1)
          {
            sub_24A37EF2C(v191, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A37BE24(v279, v132 + v98[20], &qword_27EF3F480, &unk_24A4B8C20);
          }

          else
          {
            sub_24A37EF2C(v279, &qword_27EF3F480, &unk_24A4B8C20);
            v194 = v296[20];
            sub_24A4954DC(v191, v132 + v194, type metadata accessor for FMFLocation);
            v195 = v132 + v194;
            v98 = v296;
            v275(v195, 0, 1, v192);
          }

          v196 = v132;
          v97 = v297;
          v197 = v266;
          v198 = v294;
          v164 = v288;
        }

        v220 = v302;
        v221 = v304;
        v222 = ~v164;
        *(v196 + v98[16]) = v303;
        *(v196 + v98[17]) = v221;
        sub_24A4954DC(v196, v198, type metadata accessor for FMFFriend);
        LOBYTE(v305[0]) = v220;
        sub_24A4507E0(v198, v305);
        v223 = sub_24A475BD8(v97[4]);
        v224 = sub_24A489DD0(v223);

        v225 = sub_24A4AA700();
        v305[3] = v225;
        v305[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
        v226 = sub_24A38D3BC(v305);
        (*(*(v225 - 8) + 104))(v226, *MEMORY[0x277D08A20], v225);
        LOBYTE(v225) = sub_24A4AA6C0();
        sub_24A37EEE0(v305);
        if (v225)
        {
          v227 = sub_24A4ABB70();
          v228 = v276;
          (*(*(v227 - 8) + 56))(v276, 1, 1, v227);
          v229 = v287;
          sub_24A495474(v97, v287, type metadata accessor for FMFFriend);
          v230 = (v164 + 56) & v222;
          v231 = (v286 + v230 + 7) & 0xFFFFFFFFFFFFFFF8;
          v232 = swift_allocObject();
          v232[2] = 0;
          v232[3] = 0;
          v232[4] = v197;
          v232[5] = v224;
          v232[6] = v74;
          sub_24A4954DC(v229, v232 + v230, type metadata accessor for FMFFriend);
          v233 = (v232 + v231);
          v234 = v278;
          *v233 = sub_24A495838;
          v233[1] = v234;

          sub_24A432370(0, 0, v228, &unk_24A4BC5C0, v232);
        }

        else
        {

          v236 = *v97;
          v235 = v97[1];
          v237 = type metadata accessor for FMFRespondToInviteRequest();
          v238 = *(v237 + 48);
          v239 = *(v237 + 52);
          v240 = swift_allocObject();
          v241 = (v240 + qword_27EF4E1E8);
          *v241 = v236;
          v241[1] = v235;
          *(v240 + qword_27EF4E1F0) = v220;

          v242 = sub_24A3A45B8(0x6552657469766E69, 0xEE0065736E6F7073);
          v243 = v164;
          v244 = v74[15];
          v245 = v74[16];
          sub_24A37EACC(v74 + 12, v244);
          v246 = v287;
          sub_24A495474(v97, v287, type metadata accessor for FMFFriend);
          v247 = (v243 + 24) & v222;
          v248 = (v286 + v247 + 7) & 0xFFFFFFFFFFFFFFF8;
          v249 = swift_allocObject();
          *(v249 + 16) = v74;
          sub_24A4954DC(v246, v249 + v247, type metadata accessor for FMFFriend);
          v250 = (v249 + v248);
          v251 = v278;
          *v250 = sub_24A495838;
          v250[1] = v251;
          v252 = *(v245 + 64);
          refreshed = type metadata accessor for FMFInitRefreshClientResponse();

          v252(v242, sub_24A494EB4, v249, refreshed, v244, v245);

          v97 = v297;
        }

        sub_24A489C74(v294, type metadata accessor for FMFFriend);
      }

      else
      {
        v122 = sub_24A4AB600();
        v123 = sub_24A4ABCE0();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&dword_24A376000, v122, v123, "%%@: Cannot respond to invite from someone who has not sent the invite", v124, 2u);
          MEMORY[0x24C219130](v124, -1, -1);
        }

        LOBYTE(v305[0]) = 0;
        sub_24A489940();
        v125 = swift_allocError();
        *v126 = 1;
        *(v126 + 8) = 256;
        sub_24A438AE0(v305, v125, v299, v300, v301, v302);
      }

      sub_24A489C74(v97, type metadata accessor for FMFFriend);
    }

    else
    {
LABEL_29:

      v113 = sub_24A4AB600();
      v114 = sub_24A4ABCC0();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v305[0] = v116;
        *v115 = 136315138;
        v306 = *v74;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v117 = sub_24A4AB870();
        v119 = sub_24A37BD58(v117, v118, v305);

        *(v115 + 4) = v119;
        _os_log_impl(&dword_24A376000, v113, v114, "%s: Friend not present right now. Action may be triggered from notification", v115, 0xCu);
        sub_24A37EEE0(v116);
        MEMORY[0x24C219130](v116, -1, -1);
        MEMORY[0x24C219130](v115, -1, -1);
      }

      LOBYTE(v305[0]) = 0;
      sub_24A489940();
      v120 = swift_allocError();
      *v121 = 1;
      *(v121 + 8) = 256;
      sub_24A438AE0(v305, v120, v299, v300, v301, v302);
    }
  }
}

uint64_t sub_24A48FF48(int64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = qword_27EF3EBF8;
  v100 = a3;

  v99 = a4;

  v98 = a6;

  if (v13 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);

    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();

    v101 = a2;
    if (os_log_type_enabled(v15, v16))
    {
      v97 = a5;
      v17 = a1;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v104 = v19;
      *v18 = 136315138;
      v108 = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v20 = sub_24A4AB870();
      v22 = sub_24A37BD58(v20, v21, &v104);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_24A376000, v15, v16, "%s: set favorite action initiated", v18, 0xCu);
      sub_24A37EEE0(v19);
      MEMORY[0x24C219130](v19, -1, -1);
      v23 = v18;
      a1 = v17;
      a5 = v97;
      MEMORY[0x24C219130](v23, -1, -1);
    }

    v24 = (a1 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_friend);
    if ((*(v24 + *(type metadata accessor for FMFFriend() + 36)) & 2) == 0)
    {

      v25 = sub_24A4AB600();
      v26 = sub_24A4ABCE0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v104 = v28;
        *v27 = 136315138;
        v108 = *a2;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v29 = sub_24A4AB870();
        v31 = sub_24A37BD58(v29, v30, &v104);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_24A376000, v25, v26, "%s: SaveFavorites: Error saving favorite. Friend needs to be sharing location with me.", v27, 0xCu);
        sub_24A37EEE0(v28);
        MEMORY[0x24C219130](v28, -1, -1);
        MEMORY[0x24C219130](v27, -1, -1);
      }

      LOBYTE(v104) = 0;
      sub_24A489940();
      v32 = swift_allocError();
      *v33 = 1;
      *(v33 + 8) = 256;
      sub_24A438AE0(&v104, v32, v100, v99, a5, v98);
    }

    v34 = *(a2 + 48);
    v35 = *(v34 + 56);
    sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
    v95 = v34;
    sub_24A4ABD70();
    v36 = v106;
    v96 = v12;
    if (v106)
    {
      v37 = v107;
      v38 = v104;
      v39 = v105;

      sub_24A37F110(v38, v39, v36);
      if (v37)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_24A37F110(v104, v105, 0);
    }

    v37 = MEMORY[0x277D84F90];
LABEL_13:
    v108 = v37;
    sub_24A4767C0(&v108);
    v40 = *(v108 + 2);
    v102 = a1;
    v94 = v24;
    if (v40)
    {
      v41 = *v24;
      v42 = v24[1];
      v43 = a1 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order;
      v44 = v108 + 40;
      v45 = MEMORY[0x277D84F90];
      do
      {
        a1 = *(v44 - 1);
        v47 = *v44;
        v48 = v41 == a1 && v42 == v47;
        if (!v48 && (v49 = *(v44 - 1), v50 = *v44, (sub_24A4AC270() & 1) == 0) || (*(v43 + 8) & 1) == 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_24A3ED900(0, *(v45 + 2) + 1, 1, v45);
          }

          v52 = *(v45 + 2);
          v51 = *(v45 + 3);
          if (v52 >= v51 >> 1)
          {
            v45 = sub_24A3ED900((v51 > 1), v52 + 1, 1, v45);
          }

          *(v45 + 2) = v52 + 1;
          v46 = &v45[16 * v52];
          *(v46 + 4) = a1;
          *(v46 + 5) = v47;
        }

        v44 += 24;
        --v40;
      }

      while (v40);
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }

    if ((*(v102 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order + 8) & 1) == 0)
    {
      a1 = *(v102 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order);
      v53 = *(v45 + 2);
      v55 = *v94;
      v54 = v94[1];
      if (a1 >= v53)
      {
        v58 = v94[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if ((a1 & 0x8000000000000000) == 0)
        {
          v56 = v94[1];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v53 >= *(v45 + 3) >> 1)
          {
            v45 = sub_24A3ED900(isUniquelyReferenced_nonNull_native, v53 + 1, 1, v45);
          }

          sub_24A4542A4(a1, a1, 1, v55, v54);

          goto LABEL_39;
        }

        __break(1u);
LABEL_69:
        v45 = sub_24A3ED900(0, v53 + 1, 1, v45);
      }

      v60 = *(v45 + 2);
      v59 = *(v45 + 3);
      if (v60 >= v59 >> 1)
      {
        v45 = sub_24A3ED900((v59 > 1), v60 + 1, 1, v45);
      }

      *(v45 + 2) = v60 + 1;
      v61 = &v45[16 * v60];
      *(v61 + 4) = v55;
      *(v61 + 5) = v54;
    }

LABEL_39:
    v103 = *(v45 + 2);
    if (!v103)
    {
      break;
    }

    a5 = 0;
    v12 = (v45 + 40);
    v62 = MEMORY[0x277D84F90];
    a2 = MEMORY[0x277D84F98];
    while (a5 < *(v45 + 2))
    {
      v63 = *(v12 - 1);
      a1 = *v12;

      v64 = swift_isUniquelyReferenced_nonNull_native();
      v104 = a2;
      v65 = sub_24A39B2C8(v63, a1);
      v67 = *(a2 + 16);
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_65;
      }

      v71 = v66;
      if (*(a2 + 24) < v70)
      {
        sub_24A4A5814(v70, v64);
        v65 = sub_24A39B2C8(v63, a1);
        if ((v71 & 1) != (v72 & 1))
        {

          result = sub_24A4AC2B0();
          __break(1u);
          return result;
        }

LABEL_47:
        a2 = v104;
        if (v71)
        {
          goto LABEL_48;
        }

        goto LABEL_50;
      }

      if (v64)
      {
        goto LABEL_47;
      }

      v73 = v65;
      sub_24A4A9034();
      v65 = v73;
      a2 = v104;
      if (v71)
      {
LABEL_48:
        *(*(a2 + 56) + 8 * v65) = a5;
        goto LABEL_52;
      }

LABEL_50:
      *(a2 + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v74 = (*(a2 + 48) + 16 * v65);
      *v74 = v63;
      v74[1] = a1;
      *(*(a2 + 56) + 8 * v65) = a5;
      v75 = *(a2 + 16);
      v69 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v69)
      {
        goto LABEL_66;
      }

      *(a2 + 16) = v76;

LABEL_52:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_24A3EDEF0(0, *(v62 + 2) + 1, 1, v62);
      }

      v78 = *(v62 + 2);
      v77 = *(v62 + 3);
      if (v78 >= v77 >> 1)
      {
        v62 = sub_24A3EDEF0((v77 > 1), v78 + 1, 1, v62);
      }

      *(v62 + 2) = v78 + 1;
      v79 = &v62[24 * v78];
      *(v79 + 5) = a1;
      *(v79 + 6) = a5;
      *(v79 + 4) = v63;
      v12 += 2;
      if (v103 == ++a5)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  a2 = MEMORY[0x277D84F98];
  v62 = MEMORY[0x277D84F90];
LABEL_59:

  v80 = *(v95 + 56);
  sub_24A4ABD70();
  v81 = v106;
  if (v106)
  {
    v83 = v104;
    v82 = v105;

    sub_24A37F110(v83, v82, v81);
    v104 = v83 & 0xFF010101;
    v105 = v82;
    v106 = v81;
    v107 = v62;
    sub_24A452308(&v104, 0);
    sub_24A37F110(v104, v105, v106);
  }

  else
  {
  }

  v84 = type metadata accessor for FMFSaveFavoritesRequest();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  *(swift_allocObject() + qword_27EF4DFD0) = a2;
  v87 = sub_24A3A45B8(0x6F76614665766173, 0xED00007365746972);
  v88 = v101[15];
  v89 = v101[16];
  sub_24A37EACC(v101 + 12, v88);
  v90 = swift_allocObject();
  v90[2] = v101;
  v90[3] = sub_24A495838;
  v90[4] = v96;
  v91 = *(v89 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse();

  v91(v87, sub_24A4950BC, v90, refreshed, v88, v89);
}

uint64_t sub_24A490970(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v74 = a5;
  v12[4] = a5;
  v12[5] = a6;
  v76 = v12;
  v13 = qword_27EF3EBF8;
  v72 = a3;

  v73 = a4;

  v75 = a6;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_24A4AB630();
  sub_24A378E18(v14, qword_27EF4E260);

  v15 = sub_24A4AB600();
  v16 = sub_24A4ABCE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v78 = v18;
    *v17 = 136315138;
    v77[0] = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v19 = sub_24A4AB870();
    v21 = sub_24A37BD58(v19, v20, &v78);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_24A376000, v15, v16, "%s: updating prefs action initiated", v17, 0xCu);
    sub_24A37EEE0(v18);
    MEMORY[0x24C219130](v18, -1, -1);
    MEMORY[0x24C219130](v17, -1, -1);
  }

  v22 = *(a2[6] + 56);
  sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
  sub_24A4ABD70();
  v23 = v80;
  if (!v80)
  {

    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v78 = v36;
      *v35 = 136315138;
      v77[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v41 = sub_24A4AB870();
      v43 = sub_24A37BD58(v41, v42, &v78);

      *(v35 + 4) = v43;
      v40 = "%s: Existing prefs not avaiable. Operation can be completed only if prefs exist in store.";
      goto LABEL_11;
    }

LABEL_12:

    LOBYTE(v78) = 0;
    sub_24A489940();
    v44 = swift_allocError();
    *v45 = 2;
    *(v45 + 8) = 256;
    sub_24A438AE0(&v78, v44, v72, v73, v74, v75);
  }

  v25 = v78;
  v24 = v79;
  v26 = v78 >> 24;
  LOWORD(v78) = v78 & 0x101;
  BYTE2(v78) = BYTE2(v25) & 1;
  BYTE3(v78) = v26;
  v27 = *(a1 + 25);
  v28 = *(a1 + 26);
  v29 = *(a1 + 27);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  LOBYTE(v77[0]) = *(a1 + 24);
  BYTE1(v77[0]) = v27;
  BYTE2(v77[0]) = v28;
  BYTE3(v77[0]) = v29;
  v77[1] = v30;
  v77[2] = v31;
  v77[3] = v32;

  LOBYTE(v31) = _s7FMFCore14FMFPreferencesV2eeoiySbAC_ACtFZ_0(&v78, v77);

  sub_24A37F110(v25, v24, v23);
  if (v31)
  {

    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v78 = v36;
      *v35 = 136315138;
      v77[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v37 = sub_24A4AB870();
      v39 = sub_24A37BD58(v37, v38, &v78);

      *(v35 + 4) = v39;
      v40 = "%s: Existing prefs match the action prefs. Action is not needed.";
LABEL_11:
      _os_log_impl(&dword_24A376000, v33, v34, v40, v35, 0xCu);
      sub_24A37EEE0(v36);
      MEMORY[0x24C219130](v36, -1, -1);
      MEMORY[0x24C219130](v35, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v47 = *(a1 + 32);
  v46 = *(a1 + 40);
  v48 = *(a1 + 48);
  if (*(a1 + 25))
  {
    v49 = 256;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49 | *(a1 + 24);
  if (*(a1 + 26))
  {
    v51 = 0x10000;
  }

  else
  {
    v51 = 0;
  }

  v52 = v50 | v51 | (*(a1 + 27) << 24);
  v53 = type metadata accessor for FMFSavePrefsRequest();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v56 = swift_allocObject();
  *(v56 + qword_27EF3F7C8) = 0;
  v57 = (v56 + qword_27EF3F7C0);
  *v57 = v52;
  v57[1] = v47;
  v57[2] = v46;
  v57[3] = v48;
  v58 = (v56 + qword_27EF3F7D0);
  *v58 = 0;
  v58[1] = 0;

  v59 = sub_24A3A45B8(0x6665725065766173, 0xE900000000000073);
  v60 = *(a1 + 32);
  v61 = *(a1 + 40);
  v62 = *(a1 + 48);
  if (*(a1 + 25))
  {
    v63 = 256;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63 | *(a1 + 24);
  if (*(a1 + 26))
  {
    v65 = 0x10000;
  }

  else
  {
    v65 = 0;
  }

  v78 = v64 | v65 | (*(a1 + 27) << 24);
  v79 = v60;
  v80 = v61;
  v81 = v62;

  sub_24A452308(&v78, 0);
  sub_24A37F110(v78, v79, v80);
  v66 = a2[15];
  v67 = a2[16];
  sub_24A37EACC(a2 + 12, v66);
  v68 = swift_allocObject();
  v68[2] = a2;
  v68[3] = sub_24A495838;
  v68[4] = v76;
  v69 = *(v67 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse();

  v69(v59, sub_24A4950EC, v68, refreshed, v66, v67);
}

uint64_t sub_24A491084(void *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v73 = a1;
  v11 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v69 - v13;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v74 = v14;
  v15 = qword_27EF3EBF8;
  v72 = a3;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);

  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v70 = a6;
    v20 = v19;
    v69 = swift_slowAlloc();
    *&v87 = v69;
    *v20 = 136315138;
    *&v84 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v21 = sub_24A4AB870();
    v23 = a2;
    v24 = a4;
    v25 = a5;
    v26 = sub_24A37BD58(v21, v22, &v87);

    *(v20 + 4) = v26;
    a5 = v25;
    a4 = v24;
    a2 = v23;
    _os_log_impl(&dword_24A376000, v17, v18, "%s: updating me action initiated", v20, 0xCu);
    v27 = v69;
    sub_24A37EEE0(v69);
    MEMORY[0x24C219130](v27, -1, -1);
    v28 = v20;
    a6 = v70;
    MEMORY[0x24C219130](v28, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v29 = sub_24A4AB600();
    v30 = sub_24A4ABCC0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24A376000, v29, v30, "Action is restricted. Returning with error", v31, 2u);
      MEMORY[0x24C219130](v31, -1, -1);
    }

    LOBYTE(v87) = 0;
    sub_24A489940();
    v32 = swift_allocError();
    *v33 = 5;
    *(v33 + 8) = 256;
    sub_24A438AE0(&v87, v32, v72, a4, a5, a6);
  }

  else
  {
    v34 = a2[6];
    v35 = *(v34 + 7);
    sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A4ABD70();
    v87 = v84;
    v88 = v85;
    *v89 = *v86;
    *&v89[9] = *&v86[9];
    v36 = v84;
    v72 = v34;
    if (v84)
    {
      LODWORD(v69) = v89[24];
      v37 = *&v89[16];
      v70 = *&v89[8];
      v39 = *(&v87 + 1);
      v38 = v88;
      v41 = v73[3];
      v40 = v73[4];

      sub_24A37EF2C(&v87, &qword_27EF3FD68, &unk_24A4B9F40);
      *&v78 = v36;
      *(&v78 + 1) = v39;
      *&v79 = v38;
      *(&v79 + 1) = v41;
      *&v80[0] = v40;
      *(&v80[0] + 1) = v70;
      *&v80[1] = v37;
      v34 = v72;
      BYTE8(v80[1]) = v69 & 1;
      sub_24A452B2C(&v78, 0);
      v81 = v78;
      v82 = v79;
      v83[0] = v80[0];
      *(v83 + 9) = *(v80 + 9);
      sub_24A37EF2C(&v81, &qword_27EF3FD68, &unk_24A4B9F40);
    }

    v42 = sub_24A4AA700();
    *(&v85 + 1) = v42;
    *v86 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
    v43 = sub_24A38D3BC(&v84);
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D08A20], v42);
    LOBYTE(v42) = sub_24A4AA6C0();
    sub_24A37EEE0(&v84);
    if (v42)
    {
      v44 = sub_24A4ABB70();
      v45 = v71;
      (*(*(v44 - 8) + 56))(v71, 1, 1, v44);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v47 = v74;
      v46[4] = v73;
      v46[5] = a2;
      v46[6] = sub_24A495838;
      v46[7] = v47;

      sub_24A432370(0, 0, v45, &unk_24A4BC5D8, v46);
    }

    else
    {
      v49 = v73[3];
      v48 = v73[4];
      v50 = type metadata accessor for FMFSavePrefsRequest();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      v53 = swift_allocObject();
      *(v53 + qword_27EF3F7C8) = 0;
      v54 = (v53 + qword_27EF3F7C0);
      *v54 = 0u;
      v54[1] = 0u;
      v55 = (v53 + qword_27EF3F7D0);
      *v55 = v49;
      v55[1] = v48;

      v73 = sub_24A3A45B8(0x6665725065766173, 0xE900000000000073);
      v56 = *(v34 + 7);
      sub_24A4ABD70();
      v84 = v81;
      v85 = v82;
      *v86 = v83[0];
      *&v86[9] = *(v83 + 9);
      v57 = v81;
      if (v81)
      {
        v58 = v86[24];
        v60 = *&v86[8];
        v59 = *&v86[16];
        v62 = *(&v84 + 1);
        v61 = v85;

        sub_24A37EF2C(&v84, &qword_27EF3FD68, &unk_24A4B9F40);
        *&v75 = v57;
        *(&v75 + 1) = v62;
        *&v76 = v61;
        *(&v76 + 1) = v49;
        *&v77[0] = v48;
        *(&v77[0] + 1) = v60;
        *&v77[1] = v59;
        BYTE8(v77[1]) = v58 & 1;
        sub_24A452B2C(&v75, 0);
        v78 = v75;
        v79 = v76;
        v80[0] = v77[0];
        *(v80 + 9) = *(v77 + 9);
        sub_24A37EF2C(&v78, &qword_27EF3FD68, &unk_24A4B9F40);
      }

      v63 = a2[15];
      v64 = a2[16];
      sub_24A37EACC(a2 + 12, v63);
      v65 = swift_allocObject();
      v65[2] = a2;
      v65[3] = sub_24A495838;
      v65[4] = v74;
      v66 = *(v64 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse();

      v66(v73, sub_24A49511C, v65, refreshed, v63, v64);
    }
  }
}

uint64_t sub_24A491890(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v57 - v14;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v17 = qword_27EF3EBF8;
  v62 = a3;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_24A4AB630();
  v19 = sub_24A378E18(v18, qword_27EF4E260);

  v61 = v19;
  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();

  v22 = os_log_type_enabled(v20, v21);
  v60 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v59 = a6;
    v24 = v23;
    v25 = swift_slowAlloc();
    v58 = v15;
    v26 = v25;
    *v24 = 136315138;
    v63 = *a2;
    v64[0] = v25;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v27 = sub_24A4AB870();
    v29 = sub_24A37BD58(v27, v28, v64);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_24A376000, v20, v21, "%s: not now action initiated", v24, 0xCu);
    sub_24A37EEE0(v26);
    v15 = v58;
    MEMORY[0x24C219130](v26, -1, -1);
    v30 = v24;
    a6 = v59;
    MEMORY[0x24C219130](v30, -1, -1);
  }

  v31 = (a1 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend);
  v32 = type metadata accessor for FMFFriend();
  if (*(v31 + *(v32 + 36)) & 2) == 0 || (v33 = *(v31 + *(v32 + 40)), v33 == 2) || (v33)
  {
    v34 = sub_24A4AB600();
    v35 = sub_24A4ABCE0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_24A376000, v34, v35, "%%@: Cannot respond not now when the friend is not sharing location with me.", v36, 2u);
      MEMORY[0x24C219130](v36, -1, -1);
    }

    LOBYTE(v64[0]) = 0;
    sub_24A489940();
    v37 = swift_allocError();
    *v38 = 1;
    *(v38 + 8) = 256;
    sub_24A438AE0(v64, v37, v62, a4, a5, a6);
  }

  else
  {
    v40 = sub_24A4AA700();
    v64[3] = v40;
    v64[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
    v41 = sub_24A38D3BC(v64);
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D08A20], v40);
    LOBYTE(v40) = sub_24A4AA6C0();
    sub_24A37EEE0(v64);
    if (v40)
    {
      v42 = sub_24A4ABB70();
      (*(*(v42 - 8) + 56))(v15, 1, 1, v42);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = a1;
      v43[5] = sub_24A495838;
      v43[6] = v16;

      sub_24A432370(0, 0, v15, &unk_24A4BC5E8, v43);
    }

    else
    {
      v45 = *v31;
      v44 = v31[1];
      v46 = type metadata accessor for FMFNotNowRequest();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      v49 = (swift_allocObject() + qword_27EF4E110);
      *v49 = v45;
      v49[1] = v44;

      v50 = sub_24A3A45B8(0x776F4E746F6ELL, 0xE600000000000000);
      v51 = v60;
      v52 = v60[15];
      v53 = v60[16];
      sub_24A37EACC(v60 + 12, v52);
      v54 = swift_allocObject();
      v54[2] = v51;
      v54[3] = sub_24A495838;
      v54[4] = v16;
      v55 = *(v53 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse();

      v55(v50, sub_24A49524C, v54, refreshed, v52, v53);
    }
  }
}

uint64_t sub_24A491E78(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v187 = &v155 - v14;
  v15 = type metadata accessor for FMFIntermediateFriend();
  v196 = *(v15 - 8);
  v197 = v15;
  v16 = *(v196 + 64);
  MEMORY[0x28223BE20](v15);
  v191 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v194 = &v155 - v20;
  v21 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v198 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v195 = &v155 - v25;
  v26 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v190 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v202 = (&v155 - v30);
  v31 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v189 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v193 = &v155 - v35;
  v203 = type metadata accessor for FMFFriend();
  v188 = *(v203 - 8);
  v36 = *(v188 + 64);
  MEMORY[0x28223BE20](v203);
  v186 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v199 = (&v155 - v39);
  MEMORY[0x28223BE20](v40);
  v42 = &v155 - v41;
  v43 = swift_allocObject();
  v43[2] = a3;
  v43[3] = a4;
  v200 = a5;
  v43[4] = a5;
  v43[5] = a6;
  v44 = qword_27EF3EBF8;

  v201 = a4;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = sub_24A4AB630();
  sub_24A378E18(v45, qword_27EF4E260);

  v46 = sub_24A4AB600();
  v47 = sub_24A4ABCE0();

  v48 = os_log_type_enabled(v46, v47);
  v192 = v42;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v184 = v49;
    v185 = swift_slowAlloc();
    v205[0] = v185;
    *v49 = 136315138;
    v204 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v50 = sub_24A4AB870();
    LOBYTE(v49) = v47;
    v52 = a3;
    v53 = v43;
    v54 = sub_24A37BD58(v50, v51, v205);

    v55 = v184;
    *(v184 + 1) = v54;
    v43 = v53;
    a3 = v52;
    v56 = v55;
    _os_log_impl(&dword_24A376000, v46, v49, "%s: ask to follow action initiated", v55, 0xCu);
    v57 = v185;
    sub_24A37EEE0(v185);
    MEMORY[0x24C219130](v57, -1, -1);
    MEMORY[0x24C219130](v56, -1, -1);
  }

  v58 = v202;
  v59 = v203;
  if (*(a2[17] + 40) == 1)
  {
    v60 = sub_24A4AB600();
    v61 = sub_24A4ABCC0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_24A376000, v60, v61, "Action is restricted. Returning with error", v62, 2u);
      MEMORY[0x24C219130](v62, -1, -1);
    }

    LOBYTE(v205[0]) = 0;
    sub_24A489940();
    v64 = swift_allocError();
    v65 = 5;
LABEL_16:
    *v63 = v65;
    *(v63 + 8) = 256;
    sub_24A438AE0(v205, v64, a3, v201, v200, a6);
  }

  v66 = a1 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend;
  if ((*(a1 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend + *(v203 + 36)) & 2) != 0 || (v67 = *(v66 + 32), v68 = sub_24A39F92C(v67), !v69))
  {
    v80 = sub_24A4AB600();
    v81 = sub_24A4ABCE0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_24A376000, v80, v81, "%%@: Cannot ask to follow when the friend is already sharing location.", v82, 2u);
      MEMORY[0x24C219130](v82, -1, -1);
    }

    LOBYTE(v205[0]) = 0;
    sub_24A489940();
    v64 = swift_allocError();
    v65 = 1;
    goto LABEL_16;
  }

  v162 = v67;
  v160 = v68;
  v175 = v69;
  v157 = a3;
  v179 = a1;
  v178 = v43;
  v161 = v66;
  v70 = v193;
  sub_24A495474(v66, v193, type metadata accessor for FMFFriend);
  v71 = v188;
  (*(v188 + 56))(v70, 0, 1, v59);
  (*(v196 + 56))(v58, 1, 1, v197);
  v72 = type metadata accessor for FMFLocation();
  v173 = *(v72 - 8);
  v73 = v173 + 56;
  v74 = *(v173 + 56);
  v74(v195, 1, 1, v72);
  v172 = v59[21];
  *(v199 + v172) = 7;
  v75 = sub_24A4AAAD0();
  v76 = v194;
  (*(*(v75 - 8) + 56))(v194, 1, 1, v75);
  v77 = v198;
  v174 = v72;
  v159 = v73;
  v158 = v74;
  v74(v198, 1, 1, v72);
  v78 = v189;
  sub_24A37B740(v70, v189, &qword_27EF3F2D0, &qword_24A4B4F50);
  if ((*(v71 + 48))(v78, 1, v59) == 1)
  {
    sub_24A37EF2C(v78, &qword_27EF3F2D0, &qword_24A4B4F50);
    v170 = 0;
    v164 = 0;
    v79 = 0;
    v172 = 0;
    v171 = 0;
    v184 = 0;
    v183 = 0;
    v168 = 0;
    v167 = 0;
    v180 = 0;
    v166 = 0;
    v165 = 0;
    v181 = 0;
    v189 = 0;
    v182 = 0;
    v188 = 0xE000000000000000;
    v185 = MEMORY[0x277D84FA0];
    v177 = 2;
    v169 = 0x7FFFFFFFFFFFFFFFLL;
    v186 = 4;
    LODWORD(v200) = 2;
    v176 = 2;
    v163 = 2;
  }

  else
  {
    sub_24A37EF2C(v77, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37EF2C(v76, &qword_27EF3F460, &unk_24A4B53B0);
    v84 = v186;
    sub_24A4954DC(v78, v186, type metadata accessor for FMFFriend);
    v85 = v84[1];
    v182 = *v84;
    v188 = v85;
    v86 = v84[3];
    v181 = v84[2];
    v189 = v86;
    v185 = v84[4];
    v59 = v203;
    sub_24A37B740(v84 + *(v203 + 32), v76, &qword_27EF3F460, &unk_24A4B53B0);
    v87 = v59[10];
    v156 = *(v84 + v59[9]);
    v163 = *(v84 + v87);
    v88 = v59[12];
    v176 = *(v84 + v59[11]);
    LODWORD(v200) = *(v84 + v88);
    v164 = *(v84 + v59[18]);
    v89 = v59[14];
    v170 = *(v84 + v59[13]);
    v177 = *(v84 + v89);
    v169 = *(v84 + v59[15]);
    sub_24A37B740(v84 + v59[20], v77, &qword_27EF3F480, &unk_24A4B8C20);
    v90 = (v84 + v59[19]);
    v91 = v90[1];
    v184 = *v90;
    v183 = v91;
    v92 = v90[2];
    v93 = v90[3];
    v94 = v90[5];
    v180 = v90[4];
    v95 = v90[6];
    v96 = *(v84 + v59[16]);
    v97 = *(v84 + v59[17]);
    *(v199 + v172) = *(v84 + v59[21]);
    v155 = v84[5];

    v168 = v92;
    v79 = v155;
    v167 = v93;
    v166 = v94;
    v165 = v95;
    sub_24A39AED0(v184, v183);

    v171 = v96;

    v172 = v97;

    sub_24A489C74(v84, type metadata accessor for FMFFriend);
    v186 = v156 | 4;
  }

  v98 = v191;
  v99 = v202;
  v100 = v190;
  sub_24A37B740(v202, v190, &qword_27EF3F2E0, &qword_24A4BACE0);
  v101 = v197;
  if ((*(v196 + 48))(v100, 1, v197) == 1)
  {
    sub_24A37EF2C(v99, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v193, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A37EF2C(v100, &qword_27EF3F2E0, &qword_24A4BACE0);
    v102 = v185;
    v103 = v177;
    v104 = v189;
    v105 = v79;
    v106 = v188;
    v107 = v176;
  }

  else
  {

    sub_24A4954DC(v100, v98, type metadata accessor for FMFIntermediateFriend);
    if (v176 == 2 || (v176 & 1) == 0)
    {
      v108 = *(v98 + v101[14]);
    }

    else
    {
      v108 = 1;
    }

    if (v200 == 2 || (v200 & 1) == 0)
    {
      v109 = *(v98 + v101[15]);
    }

    else
    {
      v109 = 1;
    }

    if (v177 == 2 || (v177 & 1) == 0)
    {
      v110 = *(v98 + v101[16]);
    }

    else
    {
      v110 = 1;
    }

    v106 = v98[1];
    v182 = *v98;
    v104 = v98[3];
    v181 = v98[2];
    v111 = *(v98 + v101[17]);
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B4E10;
    v113 = v98[7];
    if (!v113)
    {
      goto LABEL_47;
    }

    v107 = v108 & 1;
    LODWORD(v200) = v109 & 1;
    v103 = v110 & 1;
    *(inited + 32) = v98[6];
    v114 = inited + 32;
    *(inited + 40) = v113;
    v115 = inited;

    v116 = sub_24A3999E0(v115);
    swift_setDeallocating();
    sub_24A406964(v114);
    v102 = sub_24A399BC8(v116, v185);
    v117 = v98;
    v105 = v111;
    sub_24A489C74(v117, type metadata accessor for FMFIntermediateFriend);
    sub_24A37EF2C(v202, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v193, &qword_27EF3F2D0, &qword_24A4B4F50);
    v59 = v203;
  }

  v118 = v59[14];
  v119 = v199;
  *v199 = v182;
  v119[1] = v106;
  v119[2] = v181;
  v119[3] = v104;
  v119[4] = v102;
  sub_24A37BE24(v194, v119 + v59[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(v119 + v59[9]) = v186;
  *(v119 + v59[10]) = v163;
  *(v119 + v59[11]) = v107;
  *(v119 + v59[12]) = v200;
  v120 = (v119 + v59[19]);
  v121 = v183;
  *v120 = v184;
  v120[1] = v121;
  v122 = v167;
  v120[2] = v168;
  v120[3] = v122;
  v123 = v166;
  v120[4] = v180;
  v120[5] = v123;
  v120[6] = v165;
  *(v119 + v118) = v103;
  *(v119 + v59[18]) = v164;
  *(v119 + v59[13]) = v170;
  v119[5] = v105;
  *(v119 + v59[15]) = v169;
  v124 = v195;
  v125 = v174;
  v126 = (*(v173 + 48))(v195, 1, v174);
  v127 = v192;
  if (v126 == 1)
  {
    sub_24A37EF2C(v124, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37BE24(v198, v119 + v59[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v198, &qword_27EF3F480, &unk_24A4B8C20);
    v128 = v59[20];
    sub_24A4954DC(v124, v119 + v128, type metadata accessor for FMFLocation);
    v158(v119 + v128, 0, 1, v125);
  }

  v129 = v178;
  v130 = v179;
  *(v119 + v59[16]) = v171;
  *(v119 + v59[17]) = v172;
  sub_24A4954DC(v119, v127, type metadata accessor for FMFFriend);
  v131 = a2[6];
  LOBYTE(v205[0]) = 4;
  sub_24A4507E0(v127, v205);
  v132 = sub_24A4AA700();
  v205[3] = v132;
  v205[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
  v133 = sub_24A38D3BC(v205);
  (*(*(v132 - 8) + 104))(v133, *MEMORY[0x277D08A20], v132);
  LOBYTE(v132) = sub_24A4AA6C0();
  sub_24A37EEE0(v205);
  if (v132)
  {
    v134 = sub_24A4ABB70();
    v135 = v187;
    (*(*(v134 - 8) + 56))(v187, 1, 1, v134);
    v136 = swift_allocObject();
    v136[2] = 0;
    v136[3] = 0;
    v137 = v175;
    v136[4] = v160;
    v136[5] = v137;
    v136[6] = a2;
    v136[7] = v130;
    v136[8] = sub_24A495838;
    v136[9] = v129;

    sub_24A432370(0, 0, v135, &unk_24A4BC5F8, v136);

    v138 = v127;
LABEL_45:
    sub_24A489C74(v138, type metadata accessor for FMFFriend);
  }

  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_24A4B4E10;
  v140 = v161[1];
  *(v139 + 32) = *v161;
  *(v139 + 40) = v140;
  v141 = v162;
  v142 = *(v162 + 16);
  if (!v142)
  {

    v143 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v202 = a2;
  v143 = sub_24A3A11D8(v142, 0);
  v203 = sub_24A3A1268(v205, v143 + 4, v142, v141);

  sub_24A3A13C0();
  if (v203 == v142)
  {
    v129 = v178;
    a2 = v202;
LABEL_44:
    v144 = type metadata accessor for FMFAskToFollowRequest();
    v145 = *(v144 + 48);
    v146 = *(v144 + 52);
    v147 = swift_allocObject();
    *(v147 + qword_27EF4E208) = v139;
    *(v147 + qword_27EF4E210) = v143;
    v148 = sub_24A3A45B8(0x657469766E69, 0xE600000000000000);
    v149 = a2[15];
    v150 = a2[16];
    sub_24A37EACC(a2 + 12, v149);
    v151 = swift_allocObject();
    v152 = v179;
    v151[2] = a2;
    v151[3] = v152;
    v151[4] = sub_24A495838;
    v151[5] = v129;
    v153 = *(v150 + 64);
    refreshed = type metadata accessor for FMFInitRefreshClientResponse();

    v153(v148, sub_24A495344, v151, refreshed, v149, v150);

    v138 = v192;
    goto LABEL_45;
  }

  __break(1u);
LABEL_47:

  __break(1u);
  return result;
}

uint64_t sub_24A4933DC(uint64_t *a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v48 = a1;
  v11 = type metadata accessor for FMFLocationAlert();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v18 = sub_24A4AA700();
  v50[3] = v18;
  v50[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
  v19 = sub_24A38D3BC(v50);
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D089F8], v18);

  LOBYTE(v18) = sub_24A4AA6C0();
  sub_24A37EEE0(v50);
  if (v18)
  {
    if (qword_27EF3EC28 != -1)
    {
      swift_once();
    }

    if (byte_27EF40928)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v20 = sub_24A4AB630();
      sub_24A378E18(v20, qword_27EF4E260);

      v21 = sub_24A4AB600();
      v22 = sub_24A4ABCE0();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v48 = v24;
        *v23 = 136315138;
        v49 = *a2;
        v50[0] = v24;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v25 = sub_24A4AB870();
        v27 = sub_24A37BD58(v25, v26, v50);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_24A376000, v21, v22, "%s: Dismissing FMFLocationAlert update due to demo mode.", v23, 0xCu);
        v28 = v48;
        sub_24A37EEE0(v48);
        MEMORY[0x24C219130](v28, -1, -1);
        MEMORY[0x24C219130](v23, -1, -1);
      }

      LOBYTE(v50[0]) = 0;
      sub_24A489940();
      v29 = swift_allocError();
      *v30 = 6;
      *(v30 + 8) = 256;
      sub_24A438AE0(v50, v29, a3, a4, a5, a6);
    }

    else
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v31 = sub_24A4AB630();
      sub_24A378E18(v31, qword_27EF4E260);

      v32 = sub_24A4AB600();
      v33 = sub_24A4ABCE0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v46 = v35;
        *v34 = 136315138;
        v49 = *a2;
        v50[0] = v35;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v36 = sub_24A4AB870();
        v38 = sub_24A37BD58(v36, v37, v50);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_24A376000, v32, v33, "%s: updating location alert action initiated", v34, 0xCu);
        v39 = v46;
        sub_24A37EEE0(v46);
        MEMORY[0x24C219130](v39, -1, -1);
        MEMORY[0x24C219130](v34, -1, -1);
      }

      v40 = sub_24A4ABB70();
      (*(*(v40 - 8) + 56))(v16, 1, 1, v40);
      sub_24A495474(v48, &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFLocationAlert);
      v41 = (*(v47 + 80) + 40) & ~*(v47 + 80);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = a2;
      sub_24A4954DC(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for FMFLocationAlert);
      v43 = (v42 + ((v12 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v43 = sub_24A495838;
      v43[1] = v17;

      sub_24A432370(0, 0, v16, &unk_24A4BC608, v42);
    }
  }
}

uint64_t sub_24A493A34(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v17 = sub_24A4AA700();
  v38[3] = v17;
  v38[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28]);
  v18 = sub_24A38D3BC(v38);
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D089F8], v17);

  LOBYTE(v17) = sub_24A4AA6C0();
  sub_24A37EEE0(v38);
  if (v17)
  {
    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = *(a1 + 24);
      v21 = sub_24A4ABB70();
      (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = a2;
      v22[5] = v20;
      v22[6] = v19;
      v22[7] = sub_24A495838;
      v22[8] = v16;
      v22[9] = a1;

      sub_24A432370(0, 0, v15, &unk_24A4BC618, v22);
    }

    else
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v23 = sub_24A4AB630();
      sub_24A378E18(v23, qword_27EF4E260);

      v24 = sub_24A4AB600();
      v25 = sub_24A4ABCE0();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v36 = v27;
        *v26 = 136315138;
        v37 = *a2;
        v38[0] = v27;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v28 = sub_24A4AB870();
        v30 = sub_24A37BD58(v28, v29, v38);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_24A376000, v24, v25, "%s: Error when muting fences- no friend handle", v26, 0xCu);
        v31 = v36;
        sub_24A37EEE0(v36);
        MEMORY[0x24C219130](v31, -1, -1);
        MEMORY[0x24C219130](v26, -1, -1);
      }

      LOBYTE(v38[0]) = 0;
      sub_24A489940();
      v32 = swift_allocError();
      *v33 = 2;
      *(v33 + 8) = 256;
      sub_24A438AE0(v38, v32, a3, a4, a5, a6);
    }
  }
}

uint64_t sub_24A493E50(uint64_t a1, uint64_t *a2, char *a3, uint64_t *a4, char *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  type metadata accessor for FMFUpdateStewieLocationAction();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A484B90(v13, sub_24A494B50, v11);
    goto LABEL_29;
  }

  type metadata accessor for FMFShareLocationAction();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A476924(v15, sub_24A494B50, v11);
    goto LABEL_29;
  }

  type metadata accessor for FMFRemoveFriendAction();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48B060(v17, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFShowHideLocationAction();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48BC98(v19, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFStopFollowingAction();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48C0A8(v21, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFStopSharingAction();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48CD48(v23, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFRespondToInviteAction();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48DBE0(v25, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFSetFavoriteAction();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48FF48(v27, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFUpdatePrefsAction();
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A490970(v29, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFUpdateMeDeviceAction();
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A491084(v31, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFNotNowAction();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A491890(v33, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFAddUpdateLabelAction();
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = v34;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A47EEDC(v35, sub_24A494B50, v11);
    goto LABEL_29;
  }

  type metadata accessor for FMFRemoveLabelsAction();
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    v37 = v36;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A4800CC(v37, sub_24A494B50, v11);
    goto LABEL_29;
  }

  type metadata accessor for FMFAskToFollowAction();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A491E78(v39, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFAddLocationAlertAction();
  v76 = swift_dynamicCastClass();
  if (v76)
  {
    v41 = qword_27EF3EBF8;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = sub_24A4AB630();
    sub_24A378E18(v42, qword_27EF4E260);

    v43 = sub_24A4AB600();
    v44 = sub_24A4ABCE0();

    v74 = v44;
    if (os_log_type_enabled(v43, v44))
    {
      buf = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *buf = 136315138;
      v77 = *a2;
      v79 = v72;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v45 = sub_24A4AB870();
      v47 = sub_24A37BD58(v45, v46, &v79);

      *(buf + 4) = v47;
      _os_log_impl(&dword_24A376000, v43, v74, "%s: adding location alert action initiated", buf, 0xCu);
      sub_24A37EEE0(v72);
      MEMORY[0x24C219130](v72, -1, -1);
      MEMORY[0x24C219130](buf, -1, -1);
    }

    v48 = &OBJC_IVAR____TtC7FMFCore25FMFAddLocationAlertAction_locationAlert;
LABEL_44:
    v56 = *v48;

    sub_24A4933DC((v76 + v56), a2, a3, a4, a5, a6);

    goto LABEL_31;
  }

  type metadata accessor for FMFUpdateLocationAlertAction();
  v76 = swift_dynamicCastClass();
  if (v76)
  {
    v49 = qword_27EF3EBF8;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_24A4AB630();
    sub_24A378E18(v50, qword_27EF4E260);

    v51 = sub_24A4AB600();
    v52 = sub_24A4ABCE0();

    v75 = v52;
    if (os_log_type_enabled(v51, v52))
    {
      bufa = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *bufa = 136315138;
      v78 = *a2;
      v79 = v73;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v53 = sub_24A4AB870();
      v55 = sub_24A37BD58(v53, v54, &v79);

      *(bufa + 4) = v55;
      _os_log_impl(&dword_24A376000, v51, v75, "%s: updating location alert action initiated", bufa, 0xCu);
      sub_24A37EEE0(v73);
      MEMORY[0x24C219130](v73, -1, -1);
      MEMORY[0x24C219130](bufa, -1, -1);
    }

    v48 = &OBJC_IVAR____TtC7FMFCore28FMFUpdateLocationAlertAction_locationAlert;
    goto LABEL_44;
  }

  type metadata accessor for FMFRemoveLocationAlertAction();
  v57 = swift_dynamicCastClass();
  if (v57)
  {
    v58 = v57;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A480700(v58, sub_24A494B50, v11);
  }

  else
  {
    type metadata accessor for FMFGetURLInfoAction();
    v59 = swift_dynamicCastClass();
    if (v59)
    {
      v60 = v59;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      sub_24A4838D8(v60, sub_24A494B50, v11);
    }

    else
    {
      type metadata accessor for FMFMuteFencesAction();
      v61 = swift_dynamicCastClass();
      if (!v61)
      {
        v63 = qword_27EF3EBF8;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        if (v63 != -1)
        {
          swift_once();
        }

        v64 = sub_24A4AB630();
        sub_24A378E18(v64, qword_27EF4E260);
        v65 = sub_24A4AB600();
        v66 = sub_24A4ABCE0();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_24A376000, v65, v66, "FMFActionsController: cannot map action to request", v67, 2u);
          MEMORY[0x24C219130](v67, -1, -1);
        }

        LOBYTE(v79) = 0;
        sub_24A489940();
        v68 = swift_allocError();
        *v69 = 0;
        *(v69 + 8) = 256;
        sub_24A438AE0(&v79, v68, a3, a4, a5, a6);

        goto LABEL_30;
      }

      v62 = v61;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      sub_24A493A34(v62, a2, a3, a4, a5, a6);
    }
  }

LABEL_29:

LABEL_30:

LABEL_31:
}

uint64_t sub_24A494B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A479EAC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A494C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A357C;

  return sub_24A479550(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A494D44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A47DA54(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A494E5C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A494EB4(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for FMFFriend() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_24A47C0CC(a1, a2, v7, (v2 + v6), v9);
}

uint64_t sub_24A494F68(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24A3A357C;

  return sub_24A47B2DC(a1, v6, v7, v8, v9, v10, v1 + v5, v13);
}

uint64_t sub_24A495128()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A495178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A47E0F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A49527C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A357C;

  return sub_24A47C46C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24A495388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24A3A357C;

  return sub_24A47CD60(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_24A495474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A4954DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A495544(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FMFLocationAlert() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24A3A357C;

  return sub_24A4816AC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_24A495680()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A4956C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24A3A357C;

  return sub_24A482088(a1, v4, v5, v6, v7, v8, v9, v11);
}

unint64_t sub_24A4957B4()
{
  result = qword_27EF40C68;
  if (!qword_27EF40C68)
  {
    sub_24A3CBC9C(&unk_27EF3F4C0, &qword_24A4B7E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C68);
  }

  return result;
}

uint64_t FMImageCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](v1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A49590C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_24A495954(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *FMImageCache.__allocating_init(converter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24A37887C(a1, a2);

  return v4;
}

uint64_t sub_24A4959F8()
{
  v1 = v0[3];
  v2 = *(*v0 + 96);
  sub_24A4ABDF0();
  return sub_24A4ABD70();
}

uint64_t sub_24A495A7C@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v141 = a5;
  v135 = a4;
  v138 = a3;
  v7 = *a1;
  v8 = *(*a1 + 96);
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  v9 = sub_24A4AC3B0();
  v129 = *(v9 - 8);
  v130 = v9;
  v10 = *(v129 + 64);
  MEMORY[0x28223BE20](v9);
  v128 = &v120 - v11;
  v12 = v7[10];
  v137 = *(v12 - 8);
  v13 = *(v137 + 64);
  MEMORY[0x28223BE20](v14);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v126 = &v120 - v17;
  MEMORY[0x28223BE20](v18);
  v124 = &v120 - v19;
  MEMORY[0x28223BE20](v20);
  v133 = &v120 - v21;
  v22 = sub_24A4ABDF0();
  v131 = *(v22 - 8);
  v132 = v22;
  v23 = *(v131 + 8);
  MEMORY[0x28223BE20](v22);
  v125 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v139 = &v120 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v120 - v28;
  v30 = *(v8 - 8);
  v31 = *(v30 + 8);
  MEMORY[0x28223BE20](v32);
  v136 = (&v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v36 = &v120 - v35;
  swift_beginAccess();
  v37 = *(a1 + 6);
  v38 = v7[13];
  v39 = v7[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = *(AssociatedConformanceWitness + 16);

  v140 = v12;
  v134 = v40;
  sub_24A4AB7B0();

  v41 = *(v30 + 6);
  if (v41(v29, 1, v8) != 1)
  {
    v67 = *(v30 + 4);
    v139 = v30 + 32;
    v136 = v67;
    v67(v36, v29, v8);
    v68 = v36;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v69 = sub_24A4AB630();
    sub_24A378E18(v69, qword_27EF4E260);
    v70 = v137;
    v71 = v133;
    v72 = a2;
    v73 = v140;
    (*(v137 + 16))(v133, v72, v140);
    v74 = sub_24A4AB600();
    v75 = sub_24A4ABCA0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v134 = v68;
      v77 = v76;
      v78 = swift_slowAlloc();
      v132 = v8;
      v79 = v78;
      v142[0] = v78;
      *v77 = 136315138;
      v80 = *(AssociatedConformanceWitness + 8);
      v81 = sub_24A4AC280();
      v82 = v71;
      v84 = v83;
      (*(v70 + 8))(v82, v73);
      v85 = sub_24A37BD58(v81, v84, v142);

      *(v77 + 4) = v85;
      _os_log_impl(&dword_24A376000, v74, v75, "FMImageCache: Found cached data for request: %s in memory cache.", v77, 0xCu);
      sub_24A37EEE0(v79);
      v86 = v79;
      v8 = v132;
      MEMORY[0x24C219130](v86, -1, -1);
      v87 = v77;
      v68 = v134;
      MEMORY[0x24C219130](v87, -1, -1);

      v88 = v138;
      if (!v138)
      {
        goto LABEL_19;
      }
    }

    else
    {

      (*(v70 + 8))(v71, v73);
      v88 = v138;
      if (!v138)
      {
LABEL_19:
        v110 = v141;
        v136(v141, v68, v8);
        return (*(v30 + 7))(v110, 0, 1, v8);
      }
    }

    v108 = v128;
    (*(v30 + 2))(v128, v68, v8);
    v109 = v130;
    swift_storeEnumTagMultiPayload();
    v88(v108);
    (*(v129 + 8))(v108, v109);
    goto LABEL_19;
  }

  v133 = v30;
  v42 = v132;
  v131 = *(v131 + 1);
  v131(v29, v132);
  v43 = v139;
  sub_24A49A548(v139);
  v44 = a2;
  if (v41(v43, 1, v8) == 1)
  {
    v131(v139, v42);
    swift_beginAccess();
    v45 = a2;
    v46 = a1;
    v47 = *(a1 + 4);

    v139 = v45;
    v48 = v140;
    v49 = sub_24A4ABC30();

    v50 = v133;
    if ((v49 & 1) == 0)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v51 = sub_24A4AB630();
      sub_24A378E18(v51, qword_27EF4E260);
      v52 = v137;
      v53 = v123;
      (*(v137 + 16))(v123, v139, v48);
      v54 = sub_24A4AB600();
      v55 = sub_24A4ABCE0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v131 = v46;
        v57 = v56;
        v58 = swift_slowAlloc();
        v132 = v8;
        v59 = v58;
        v143 = v58;
        *v57 = 136315138;
        v60 = *(AssociatedConformanceWitness + 8);
        v61 = sub_24A4AC280();
        v62 = v53;
        v64 = v63;
        (*(v52 + 8))(v62, v48);
        v65 = sub_24A37BD58(v61, v64, &v143);

        *(v57 + 4) = v65;
        _os_log_impl(&dword_24A376000, v54, v55, "FMImageCache: Cached data for request: %s not found, regenerating.", v57, 0xCu);
        sub_24A37EEE0(v59);
        v66 = v59;
        v8 = v132;
        MEMORY[0x24C219130](v66, -1, -1);
        MEMORY[0x24C219130](v57, -1, -1);
      }

      else
      {

        (*(v52 + 8))(v53, v48);
      }

      sub_24A496E28(v139, v138, v135);
    }

    return (*(v50 + 7))(v141, 1, 1, v8);
  }

  else
  {
    v89 = *(v133 + 4);
    v123 = v133 + 32;
    v122 = v89;
    v89(v136, v139, v8);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v131 = a1;
    v90 = sub_24A4AB630();
    sub_24A378E18(v90, qword_27EF4E260);
    v91 = v137;
    v92 = v124;
    v93 = v140;
    v121 = *(v137 + 16);
    v121(v124, a2, v140);
    v94 = sub_24A4AB600();
    v95 = sub_24A4ABCA0();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v139 = v44;
      v97 = v96;
      v98 = swift_slowAlloc();
      v132 = v8;
      v99 = v98;
      v142[0] = v98;
      *v97 = 136315138;
      v100 = *(AssociatedConformanceWitness + 8);
      v101 = sub_24A4AC280();
      v102 = v92;
      v104 = v103;
      (*(v91 + 8))(v102, v93);
      v105 = sub_24A37BD58(v101, v104, v142);

      *(v97 + 4) = v105;
      _os_log_impl(&dword_24A376000, v94, v95, "FMImageCache: Found cached data for request: %s in disk cache.", v97, 0xCu);
      sub_24A37EEE0(v99);
      v106 = v99;
      v8 = v132;
      MEMORY[0x24C219130](v106, -1, -1);
      v107 = v97;
      v44 = v139;
      MEMORY[0x24C219130](v107, -1, -1);
    }

    else
    {

      (*(v91 + 8))(v92, v93);
    }

    v121(v126, v44, v93);
    v112 = v133;
    v113 = *(v133 + 2);
    v114 = v125;
    v115 = v136;
    v113(v125, v136, v8);
    v139 = *(v112 + 7);
    (v139)(v114, 0, 1, v8);
    swift_beginAccess();
    sub_24A4AB7A0();
    sub_24A4AB7C0();
    swift_endAccess();
    v116 = v138;
    if (v138)
    {
      v117 = v128;
      v113(v128, v136, v8);
      v118 = v130;
      swift_storeEnumTagMultiPayload();
      v116(v117);
      v115 = v136;
      (*(v129 + 8))(v117, v118);
    }

    v119 = v141;
    v122(v141, v115, v8);
    return (v139)(v119, 0, 1, v8);
  }
}