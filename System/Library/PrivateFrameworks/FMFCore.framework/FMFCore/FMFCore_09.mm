uint64_t sub_24A4375B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v7 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v39 - v9;
  v10 = type metadata accessor for FMFFriend();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);
  sub_24A399284(a1, v16, type metadata accessor for FMFFriend);
  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = a1;
    v41 = v3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v39 = a3;
    v23 = v22;
    v44 = v22;
    *v21 = 136315138;
    v24 = FMFFriend.debugDescription.getter();
    v25 = v11;
    v27 = v26;
    sub_24A39A758(v16, type metadata accessor for FMFFriend);
    v28 = sub_24A37BD58(v24, v27, &v44);
    v11 = v25;
    v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_24A376000, v18, v19, "FMFManager: startLiveLocation %s", v21, 0xCu);
    sub_24A37EEE0(v23);
    v29 = v23;
    a3 = v39;
    MEMORY[0x24C219130](v29, -1, -1);
    v30 = v21;
    a1 = v40;
    v4 = v41;
    MEMORY[0x24C219130](v30, -1, -1);

    result = sub_24A3A290C();
    if ((result & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v35 = sub_24A4ABB70();
    v36 = v43;
    (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
    sub_24A399284(a1, v13, type metadata accessor for FMFFriend);
    v37 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v4;
    sub_24A3997D4(v13, v38 + v37, type metadata accessor for FMFFriend);

    sub_24A432D64(0, 0, v36, &unk_24A4BA280, v38);
  }

  sub_24A39A758(v16, type metadata accessor for FMFFriend);
  result = sub_24A3A290C();
  if (result)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(v4 + 200))
  {
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v32 = *(v11 + 72);
    v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_24A4B4E10;
    sub_24A399284(a1, v34 + v33, type metadata accessor for FMFFriend);

    sub_24A466B38(v34, 1, v42, a3);
  }

  return result;
}

uint64_t sub_24A437A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24A4AAD40();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A437ACC, 0, 0);
}

uint64_t sub_24A437ACC()
{
  v1 = *(*(v0 + 16) + 208);
  *(v0 + 56) = v1;
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v6 = *(type metadata accessor for FMFFriend() - 8);
    v7 = *(v6 + 72);
    v8 = *(v6 + 80);
    *(v0 + 88) = v8;
    v9 = (v8 + 32) & ~v8;
    v10 = swift_allocObject();
    *(v0 + 64) = v10;
    *(v10 + 16) = xmmword_24A4B4E10;
    sub_24A399284(v5, v10 + v9, type metadata accessor for FMFFriend);
    (*(v4 + 104))(v2, *MEMORY[0x277D08FD8], v3);

    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_24A437CC0;
    v12 = *(v0 + 48);

    return sub_24A3FD324(v10, v12);
  }

  else
  {
    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_24A437CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = (*(v2 + 88) + 32) & ~*(v2 + 88);
  v10 = *v1;
  *(v2 + 80) = v0;

  (*(v7 + 8))(v6, v8);
  swift_setDeallocating();
  sub_24A39A758(v4 + v9, type metadata accessor for FMFFriend);
  swift_deallocClassInstance();

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A44122C, 0, 0);
  }

  else
  {
    v11 = *(v2 + 48);

    v12 = *(v10 + 8);

    return v12();
  }
}

uint64_t sub_24A437EF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for FMFFriend();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A4AB630();
  sub_24A378E18(v15, qword_27EF4E260);
  sub_24A399284(a1, v14, type metadata accessor for FMFFriend);
  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = v1;
    v39 = v7;
    v21 = a1;
    v22 = v20;
    v40 = v20;
    *v19 = 136315138;
    v23 = FMFFriend.debugDescription.getter();
    v24 = v9;
    v26 = v25;
    sub_24A39A758(v14, type metadata accessor for FMFFriend);
    v27 = sub_24A37BD58(v23, v26, &v40);
    v9 = v24;

    *(v19 + 4) = v27;
    _os_log_impl(&dword_24A376000, v16, v17, "FMFManager: stopLiveLocation %s", v19, 0xCu);
    sub_24A37EEE0(v22);
    v28 = v22;
    a1 = v21;
    v2 = v38;
    v7 = v39;
    MEMORY[0x24C219130](v28, -1, -1);
    v29 = v19;
    v11 = v37;
    MEMORY[0x24C219130](v29, -1, -1);

    result = sub_24A3A290C();
    if ((result & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v34 = sub_24A4ABB70();
    (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
    sub_24A399284(a1, v11, type metadata accessor for FMFFriend);
    v35 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v2;
    sub_24A3997D4(v11, v36 + v35, type metadata accessor for FMFFriend);

    sub_24A432D64(0, 0, v7, &unk_24A4BA290, v36);
  }

  sub_24A39A758(v14, type metadata accessor for FMFFriend);
  result = sub_24A3A290C();
  if (result)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(v2 + 200))
  {
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v31 = *(v9 + 72);
    v32 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24A4B4E10;
    sub_24A399284(a1, v33 + v32, type metadata accessor for FMFFriend);

    sub_24A468780(v33, 1);
  }

  return result;
}

uint64_t sub_24A438334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24A4AAD40();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A4383F4, 0, 0);
}

uint64_t sub_24A4383F4()
{
  v1 = *(*(v0 + 16) + 208);
  *(v0 + 56) = v1;
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v6 = *(type metadata accessor for FMFFriend() - 8);
    v7 = *(v6 + 72);
    v8 = *(v6 + 80);
    *(v0 + 88) = v8;
    v9 = (v8 + 32) & ~v8;
    v10 = swift_allocObject();
    *(v0 + 64) = v10;
    *(v10 + 16) = xmmword_24A4B4E10;
    sub_24A399284(v5, v10 + v9, type metadata accessor for FMFFriend);
    (*(v4 + 104))(v2, *MEMORY[0x277D08FD8], v3);

    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_24A4385E8;
    v12 = *(v0 + 48);

    return sub_24A3FDE90(v10, v12);
  }

  else
  {
    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_24A4385E8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = (*(v2 + 88) + 32) & ~*(v2 + 88);
  v10 = *v1;
  *(v2 + 80) = v0;

  (*(v7 + 8))(v6, v8);
  swift_setDeallocating();
  sub_24A39A758(v4 + v9, type metadata accessor for FMFFriend);
  swift_deallocClassInstance();

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A438820, 0, 0);
  }

  else
  {
    v11 = *(v2 + 48);

    v12 = *(v10 + 8);

    return v12();
  }
}

uint64_t sub_24A438820()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_24A438884()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = v1;
    sub_24A45AD08();
  }
}

uint64_t sub_24A4388E4(char *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = (*(*a1 + 120))();
    v15 = sub_24A37BD58(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFManager: perform action %s", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v16 = *(v3 + 176);

  sub_24A493E50(a1, v16, a1, v4, a2, a3);
}

uint64_t sub_24A438AE0(char *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v10 = *a1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v37 = v10;
  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);
  v12 = a2;
  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();

  if (os_log_type_enabled(v13, v14))
  {
    v35 = a6;
    v15 = swift_slowAlloc();
    v34 = a5;
    v16 = swift_slowAlloc();
    v38 = a2;
    v39 = v16;
    *v15 = 136315394;
    sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
    v17 = sub_24A4ABDE0();
    v19 = sub_24A37BD58(v17, v18, &v39);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = qword_24A4BA6E0[v10];
    _os_log_impl(&dword_24A376000, v13, v14, "FMFManager: performed action with error?: %s status?: %ld", v15, 0x16u);
    sub_24A37EEE0(v16);
    v20 = v16;
    a5 = v34;
    MEMORY[0x24C219130](v20, -1, -1);
    v21 = v15;
    a6 = v35;
    MEMORY[0x24C219130](v21, -1, -1);
  }

  swift_beginAccess();
  if (a3[16] == 1)
  {

    v22 = sub_24A4AB600();
    v23 = sub_24A4ABCE0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      v26 = (*(*a3 + 120))();
      v28 = a5;
      v29 = sub_24A37BD58(v26, v27, &v38);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A376000, v22, v23, "FMFManager: refreshing because action requires it %s", v24, 0xCu);
      sub_24A37EEE0(v25);
      MEMORY[0x24C219130](v25, -1, -1);
      MEMORY[0x24C219130](v24, -1, -1);
    }

    v30 = *(a4 + 128);
    v31 = swift_allocObject();
    *(v31 + 16) = a3;
    *(v31 + 24) = a5;
    *(v31 + 32) = a6;
    *(v31 + 40) = v37;
    *(v31 + 48) = a2;
    v32 = a2;

    sub_24A3D1F38(sub_24A441018, v31);
  }

  else
  {
    LOBYTE(v38) = v10;
    return a5(&v38, a2);
  }
}

uint64_t sub_24A438E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);

  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    v15 = (*(*a2 + 120))(v14);
    v17 = sub_24A37BD58(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFManager: completing action after refresh %s", v13, 0xCu);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v20 = a5;
  return a3(&v20, a6);
}

uint64_t sub_24A43900C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v41[0] = v17;
    *v16 = 136315394;
    v40 = *v4;
    sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
    v19 = sub_24A4AB870();
    v21 = sub_24A37BD58(v19, v20, v41);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_24A37BD58(0xD00000000000001ELL, 0x800000024A4B1AB0, v41);
    _os_log_impl(&dword_24A376000, v13, v14, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    v22 = v18;
    a3 = v38;
    MEMORY[0x24C219130](v22, -1, -1);
    v23 = v16;
    a2 = v37;
    MEMORY[0x24C219130](v23, -1, -1);
  }

  v24 = *(v8 + 16);
  v24(v11, v39, v7);
  v25 = type metadata accessor for FMFGetURLInfoRequest();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v24((v28 + qword_27EF4E180), v11, v7);
  v29 = sub_24A3A45B8(0x466F666E49746567, 0xED00006C7255726FLL);
  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  sub_24A39997C((v4 + 17), v41);
  v30 = v42;
  v31 = v43;
  sub_24A37EACC(v41, v42);
  v32 = swift_allocObject();
  v32[2] = v4;
  v32[3] = a2;
  v32[4] = a3;
  v33 = *(v31 + 64);
  v34 = type metadata accessor for FMFBaseResponse();

  v33(v29, sub_24A43F144, v32, v34, v30, v31);

  return sub_24A37EEE0(v41);
}

uint64_t sub_24A4393E0(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(void, void *))
{
  if (a2)
  {
    v6 = a2;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A4AB630();
    sub_24A378E18(v7, qword_27EF4E260);

    v8 = v6;
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315394;
      v13 = *a3;
      v30 = v12;
      sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
      v14 = sub_24A4AB870();
      v16 = sub_24A37BD58(v14, v15, &v30);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v17 = sub_24A4ABDE0();
      v19 = sub_24A37BD58(v17, v18, &v30);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_24A376000, v9, v10, "%s: error when getting info for URL: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v12, -1, -1);
      MEMORY[0x24C219130](v11, -1, -1);
    }
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v20 = sub_24A4AB630();
    sub_24A378E18(v20, qword_27EF4E260);

    v21 = sub_24A4AB600();
    v22 = sub_24A4ABCB0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 136315138;
      v29 = *a3;
      v30 = v24;
      sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
      v25 = sub_24A4AB870();
      v27 = sub_24A37BD58(v25, v26, &v30);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_24A376000, v21, v22, "%s: Got info for url.", v23, 0xCu);
      sub_24A37EEE0(v24);
      MEMORY[0x24C219130](v24, -1, -1);
      MEMORY[0x24C219130](v23, -1, -1);
    }

    v6 = 0;
  }

  return a4(0, v6);
}

uint64_t sub_24A439760(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24A37BD58(a1, a2, &v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a3 & 1;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFManager: appendLiveSessionInformation, friendId: %s, successfulLive: %{BOOL}d", v11, 0x12u);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v13 = *(v4 + 128);

  sub_24A3D2F50(a1, a2, a3 & 1);
}

uint64_t sub_24A4398F8(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x24C217E90](a1, MEMORY[0x277D837D0]);
    v13 = sub_24A37BD58(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a2 & 1;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFManager: appendLegacyFallbackData, friendId: %s, didFallback: %{BOOL}d", v9, 0x12u);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  v14 = *(v3 + 128);

  sub_24A3D33F4(a1, a2 & 1);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v16 + 136))(v3, a1, a2 & 1, ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A439AF8()
{
  v1 = *(*(v0 + 88) + 56);

  sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  sub_24A4ABD70();
}

uint64_t sub_24A439B80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A4AB8F0();
}

uint64_t static FMFManager.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270();
  }
}

uint64_t sub_24A439BB8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270();
  }
}

uint64_t sub_24A439BE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A439C74(void *a1)
{
  v2 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = 1;
  sub_24A3A3944(v3);
  v4 = a1[23];
  if (v4)
  {
    v5 = v4;
    sub_24A45AC08();
  }

  if (*(a1[7] + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) == 1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A4AB630();
    sub_24A378E18(v6, qword_27EF4E260);
    v7 = sub_24A4AB600();
    v8 = sub_24A4ABCE0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24A376000, v7, v8, "FMFManager: ingesting friends from fmfd", v9, 2u);
      MEMORY[0x24C219130](v9, -1, -1);
    }

    v10 = *(a1[11] + 56);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    FMFManager.didReceive(friends:fromServer:)(friends, 1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = a1[5];
    ObjectType = swift_getObjectType();
    (*(v12 + 16))(a1, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall FMFManager.didReceive(preferences:)(FMFCore::FMFPreferences_optional *preferences)
{
  object = preferences->value.primaryEmail._object;
  if (object)
  {
    rawValue = preferences->value.favorites.value._rawValue;
    v5 = *&preferences->value.allowFriendRequests;
    countAndFlagsBits = preferences->value.primaryEmail._countAndFlagsBits;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v8 = v5 & 0x101;
      v9 = BYTE2(v5) & 1;
      v10 = BYTE3(v5);
      v11 = countAndFlagsBits;
      v12 = object;
      v13 = rawValue;
      (*(v6 + 64))(v1, &v8, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall FMFManager.didReceive(myInfo:)(FMFCore::FMFMyInfo_optional *myInfo)
{
  p_firstName = &myInfo->value.firstName;
  rawValue = myInfo->value.emails._rawValue;
  if (myInfo->value.emails._rawValue)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v7 = rawValue;
      v6 = p_firstName[1];
      v8 = *p_firstName;
      v9 = v6;
      v10 = p_firstName[2];
      countAndFlagsBits = p_firstName[3]._countAndFlagsBits;
      (*(v4 + 72))(v1, &v7, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall FMFManager.didReceive(devices:fromServer:)(Swift::OpaquePointer_optional devices, Swift::Bool fromServer)
{
  if (devices.value._rawValue)
  {
    is_nil = devices.is_nil;
    rawValue = devices.value._rawValue;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 80))(v2, rawValue, is_nil, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24A43A0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24A4AAD40();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A43A168, 0, 0);
}

uint64_t sub_24A43A168()
{
  v1 = *(*(v0 + 16) + 208);
  *(v0 + 56) = v1;
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_24A3C9CEC(&qword_27EF3F500, &qword_24A4BA270);
    v6 = *(type metadata accessor for FMFFriend() - 8);
    v7 = *(v6 + 72);
    v8 = *(v6 + 80);
    *(v0 + 88) = v8;
    v9 = (v8 + 32) & ~v8;
    v10 = swift_allocObject();
    *(v0 + 64) = v10;
    *(v10 + 16) = xmmword_24A4B4E10;
    sub_24A399284(v5, v10 + v9, type metadata accessor for FMFFriend);
    (*(v4 + 104))(v2, *MEMORY[0x277D08FD8], v3);

    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_24A43A35C;
    v12 = *(v0 + 48);

    return sub_24A3FCDA0(v10, v12);
  }

  else
  {
    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_24A43A35C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = (*(v2 + 88) + 32) & ~*(v2 + 88);
  v10 = *v1;
  *(v2 + 80) = v0;

  (*(v7 + 8))(v6, v8);
  swift_setDeallocating();
  sub_24A39A758(v4 + v9, type metadata accessor for FMFFriend);
  swift_deallocClassInstance();

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A43A594, 0, 0);
  }

  else
  {
    v11 = *(v2 + 48);

    v12 = *(v10 + 8);

    return v12();
  }
}

uint64_t sub_24A43A594()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A376000, v4, v5, "FMFManager: Error while update locating %@", v8, 0xCu);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A43A740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24A4AAD40();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A43A800, 0, 0);
}

uint64_t sub_24A43A800()
{
  v1 = *(v0[2] + 208);
  v0[7] = v1;
  if (v1)
  {
    (*(v0[5] + 104))(v0[6], *MEMORY[0x277D08FE0], v0[4]);

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_24A43A90C;
    v3 = v0[6];
    v4 = v0[3];

    return sub_24A3FCDA0(v4, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24A43A90C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A43AAE4, 0, 0);
  }

  else
  {
    v9 = *(v2 + 48);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_24A43AAE4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

Swift::Void __swiftcall FMFManager.didReceive(locationAlerts:)(Swift::OpaquePointer locationAlerts)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(v1, locationAlerts._rawValue, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall FMFManager.didReceive(locations:)(Swift::OpaquePointer locations)
{
  v2 = v1;
  v4 = *(*(v1 + 88) + 56);

  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(v2, locations._rawValue, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = *(v2 + 88);

  sub_24A3B9900(locations._rawValue, v8, 0x6465747365676E69, 0xE800000000000000);
}

Swift::Void __swiftcall FMFManager.didReceive(labelledLocations:)(Swift::OpaquePointer_optional labelledLocations)
{
  v2 = v1;
  if (labelledLocations.value._rawValue)
  {
    rawValue = labelledLocations.value._rawValue;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 96))(v2, rawValue, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v6 = *(v2 + 184);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation];
    if (v7)
    {
      v8 = *&v6[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_unshiftedLocation];
      if (v8)
      {
        v9 = v6;
        v10 = v7;
        v11 = v8;
        sub_24A3C0CA0(v10, v11, 1);
      }
    }
  }
}

uint64_t *sub_24A43AE18(uint64_t *result)
{
  v2 = result[2];
  if (v2)
  {
    v3 = result[3];
    v5 = *result;
    v4 = result[1];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v8 = v5 & 0x101;
      v9 = BYTE2(v5) & 1;
      v10 = BYTE3(v5);
      v11 = v4;
      v12 = v2;
      v13 = v3;
      (*(v6 + 64))(v1, &v8, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t *sub_24A43AEE8(uint64_t *result)
{
  v2 = result + 1;
  v3 = *result;
  if (*result)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v7 = v3;
      v6 = *(v2 + 1);
      v8 = *v2;
      v9 = v6;
      v10 = *(v2 + 2);
      v11 = *(v2 + 48);
      (*(v4 + 72))(v1, &v7, ObjectType, v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A43AFA0(uint64_t result, char a2)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 80))(v2, v4, a2 & 1, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A43B044(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(v1, a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FMFManager.didReceive(myLocation:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 88))(v1, a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A43B188(_BYTE *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = *(*(v1 + 88) + 56);

  sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A4ABD70();

  v12[0] = v9;
  v12[1] = v10;
  v13[0] = *v11;
  *(v13 + 9) = *&v11[9];
  if (v9 && (v4 = *&v13[0], , sub_24A37EF2C(v12, &qword_27EF3FD68, &unk_24A4B9F40), v4))
  {

    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    type metadata accessor for FMLocalize();
    v7 = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
  }

  v8 = sub_24A4AA800();

  return v8;
}

uint64_t sub_24A43B354(_BYTE *a1)
{
  if (!*a1)
  {
    v2 = v1;
    v3 = *(*(v1 + 88) + 56);

    sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A4ABD70();

    v26 = v23;
    v27 = v24;
    v28[0] = v25[0];
    *(v28 + 9) = *(v25 + 9);
    if (v23 && (v5 = *(&v27 + 1), v4 = *&v28[0], , sub_24A37EF2C(&v26, &qword_27EF3FD68, &unk_24A4B9F40), v4))
    {
      v6 = type metadata accessor for FMFSavePrefsRequest();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      v9 = swift_allocObject();
      *(v9 + qword_27EF3F7C8) = 0;
      v10 = (v9 + qword_27EF3F7C0);
      *v10 = 0u;
      v10[1] = 0u;
      v11 = (v9 + qword_27EF3F7D0);
      *v11 = v5;
      v11[1] = v4;
      v12 = sub_24A3A45B8(0xD000000000000010, 0x800000024A4B1E00);
      v13 = v2;
      swift_beginAccess();
      sub_24A39997C(v2 + 136, &v23);
      v14 = *(&v24 + 1);
      v15 = *&v25[0];
      sub_24A37EACC(&v23, *(&v24 + 1));
      v16 = *(v15 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse();

      v16(v12, sub_24A44119C, v13, refreshed, v14, v15);

      sub_24A37EEE0(&v23);
    }

    else
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v18 = sub_24A4AB630();
      sub_24A378E18(v18, qword_27EF4E260);
      v19 = sub_24A4AB600();
      v20 = sub_24A4ABCC0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_24A376000, v19, v20, "Me device id not available. SAVEME alert cannot respond with savePrefs request", v21, 2u);
        MEMORY[0x24C219130](v21, -1, -1);
      }
    }
  }

  return 1;
}

void sub_24A43B5FC(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A4AB630();
    sub_24A378E18(v5, qword_27EF4E260);

    v6 = a2;
    oslog = sub_24A4AB600();
    v7 = sub_24A4ABCE0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 136315394;
      v10 = *a3;
      v27 = v9;
      sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
      v11 = sub_24A4AB870();
      v13 = sub_24A37BD58(v11, v12, &v27);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v14 = sub_24A4ABDE0();
      v16 = sub_24A37BD58(v14, v15, &v27);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_24A376000, oslog, v7, "%s: Error sending save me device - %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v9, -1, -1);
      v17 = v8;
LABEL_10:
      MEMORY[0x24C219130](v17, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A4AB630();
    sub_24A378E18(v18, qword_27EF4E260);

    oslog = sub_24A4AB600();
    v19 = sub_24A4ABCE0();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136315138;
      v26 = *a3;
      v27 = v21;
      sub_24A3C9CEC(&qword_27EF40410, &qword_24A4BA298);
      v22 = sub_24A4AB870();
      v24 = sub_24A37BD58(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_24A376000, oslog, v19, "%s: Saved me device for SAVEME alert.", v20, 0xCu);
      sub_24A37EEE0(v21);
      MEMORY[0x24C219130](v21, -1, -1);
      v17 = v20;
      goto LABEL_10;
    }
  }
}

uint64_t sub_24A43B96C()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v53 - v4;
  v6 = *(v0 + 56);
  v7 = *(v0 + 216);
  v8 = *(v1 + 225);
  type metadata accessor for FMFDataManager();
  swift_allocObject();

  v9 = sub_24A37DB30(v6, 0, v7, v8);
  v10 = *(v1 + 88);
  *(v1 + 88) = v9;

  LODWORD(v10) = *(v1 + 225);
  v11 = objc_allocWithZone(type metadata accessor for FMFGenericResponseHandler());
  v12 = sub_24A38C154(v9, v10);
  v13 = *(v1 + 120);
  *(v1 + 120) = v12;
  v14 = v12;

  v16 = *(v6 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  v15 = *(v6 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider + 8);
  v17 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v18 = sub_24A4AAB80();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v5, v6 + v17, v18);
  (*(v19 + 56))(v5, 0, 1, v18);

  v16(v58, v14, v5);

  sub_24A37EF2C(v5, &qword_27EF3F650, &qword_24A4B5A10);
  swift_beginAccess();
  sub_24A37EEE0((v1 + 136));
  sub_24A37B3F8(v58, v1 + 136);
  swift_endAccess();
  v20 = *(v1 + 88);
  sub_24A39997C(v1 + 136, v58);
  v21 = type metadata accessor for FMAPSConnectionHandler();
  v22 = qword_27EF3EBD8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_27EF4E1A8;
  v24 = unk_27EF4E1B0;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v26 = sub_24A3A1764(0xD000000000000017, 0x800000024A4B1A90, v23, 0, 0, v21, ObjectType, v24);
  LODWORD(v23) = *(v1 + 225);
  LODWORD(v24) = *(v6 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch);
  v27 = type metadata accessor for FMFRefreshController();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_24A3A20A8(v20, v58, v26, v23, v24);
  v31 = *(v1 + 128);
  *(v1 + 128) = v30;

  sub_24A39997C(v1 + 136, v58);
  v32 = *(v1 + 88);
  v33 = *(v1 + 208);
  if (v33)
  {
    v55 = type metadata accessor for FMFSecureLocationController(0);
    v56 = &off_285D869E8;
    *&v54 = v33;
    sub_24A37B3F8(&v54, v57);
  }

  else
  {
    v34 = *(v1 + 96);
    v57[3] = sub_24A37B428(0, &qword_27EF40408, 0x277D496C0);
    v57[4] = &off_285D88B10;
    v57[0] = v34;
    v35 = v34;
  }

  v36 = *(v1 + 112);
  type metadata accessor for FMFActionsController();
  swift_allocObject();

  v37 = sub_24A4761EC(v58, v32, v57, v36);
  v38 = *(v1 + 176);
  *(v1 + 176) = v37;

  v39 = 0;
  if ((*(v6 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_enabledSubsystems) & 2) != 0)
  {
    sub_24A39997C(v1 + 136, v58);
    v40 = objc_allocWithZone(type metadata accessor for FMFMyLocationController());
    v39 = sub_24A39A204(v58);
  }

  v41 = *(v1 + 184);
  *(v1 + 184) = v39;

  *(*(v1 + 88) + 40) = &protocol witness table for FMFManager;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v42 = *(v1 + 160);
  v43 = *(v1 + 168);
  sub_24A3A2CE4(v1 + 136, v42);
  v44 = *(v43 + 16);
  v45 = swift_unknownObjectRetain();
  v44(v45, &off_285D88A08, v42, v43);
  v46 = *(v1 + 160);
  v47 = *(v1 + 168);
  sub_24A3A2CE4(v1 + 136, v46);
  v48 = *(v47 + 40);
  v49 = swift_unknownObjectRetain();
  v48(v49, &off_285D88A28, v46, v47);
  swift_endAccess();
  v50 = *(v1 + 120) + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  *(v50 + 8) = &protocol witness table for FMFManager;
  swift_unknownObjectWeakAssign();
  *(*(v1 + 128) + 48) = &off_285D88970;
  result = swift_unknownObjectWeakAssign();
  v52 = *(v1 + 184);
  if (v52)
  {
    *(v52 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate + 8) = &protocol witness table for FMFManager;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_24A43BEF4(void *a1)
{
  v2 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = 0;
  sub_24A3A3944(v3);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = a1[5];
    ObjectType = swift_getObjectType();
    (*(v4 + 80))(a1, MEMORY[0x277D84F90], 0, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = a1[5];
    v7 = swift_getObjectType();
    (*(v6 + 32))(a1, MEMORY[0x277D84F90], 0, v7, v6);
    swift_unknownObjectRelease();
  }

  v8 = a1[9];
  v9 = a1[10];
  v11[0] = a1[8];
  v11[1] = v8;
  v11[2] = v9;

  sub_24A3A2E74(v11);
}

uint64_t sub_24A43C050(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v50 = a1;
  v51 = a2;
  v7 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v42 - v9;
  v10 = sub_24A3C9CEC(&qword_27EF3FE50, &unk_24A4B8C10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = (&v42 - v12);
  v13 = type metadata accessor for FMReverseGeocodingRequest();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMFLocation();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v42 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  v44 = *(a3 + 216);
  sub_24A399284(a4, &v42 - v24, type metadata accessor for FMFLocation);
  v52 = v23;
  sub_24A399284(v25, v23, type metadata accessor for FMFLocation);
  v26 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v27 = (v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v49;
  sub_24A3997D4(v25, v28 + v26, type metadata accessor for FMFLocation);
  *(v28 + v27) = v29;
  v30 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v50;
  v31 = v51;
  *v30 = v50;
  v30[1] = v31;
  v33 = v44;
  sub_24A399284(a4, v20, type metadata accessor for FMFLocation);
  v34 = v48;
  sub_24A37B740(v33 + qword_27EF4E178, v48, &qword_27EF3F650, &qword_24A4B5A10);

  v35 = v20;
  v36 = v45;
  sub_24A446558(v35, v34, v45);
  if ((*(v46 + 48))(v36, 1, v47) == 1)
  {
    sub_24A37EF2C(v36, &qword_27EF3FE50, &unk_24A4B8C10);
    sub_24A3BAFB0(v54);
    memcpy(v53, v54, sizeof(v53));
    v37 = v52;
    sub_24A43C484(v53, v52, v29, v32, v31);

    v38 = v37;
  }

  else
  {
    v39 = v36;
    v40 = v43;
    sub_24A3997D4(v39, v43, type metadata accessor for FMReverseGeocodingRequest);
    sub_24A4416C0(v40, sub_24A440F14, v28);

    sub_24A39A758(v40, type metadata accessor for FMReverseGeocodingRequest);
    v38 = v52;
  }

  return sub_24A39A758(v38, type metadata accessor for FMFLocation);
}

uint64_t sub_24A43C484(const void *a1, uint64_t *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v71 = a5;
  v72 = a4;
  v63 = a3;
  v70 = sub_24A3C9CEC(&qword_27EF40490, &qword_24A4BA658);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v9 = &v60 - v8;
  v10 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v60 - v15;
  MEMORY[0x28223BE20](v14);
  v73 = &v60 - v16;
  v74 = type metadata accessor for FMFLocation();
  v67 = *(v74 - 8);
  v17 = *(v67 + 64);
  v18 = MEMORY[0x28223BE20](v74);
  v62 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v60 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v66 = (&v60 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v68 = &v60 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v60 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v60 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = (&v60 - v32);
  memcpy(v78, a1, 0x130uLL);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v34 = sub_24A4AB630();
  sub_24A378E18(v34, qword_27EF4E260);
  sub_24A399284(a2, v33, type metadata accessor for FMFLocation);
  sub_24A399284(a2, v31, type metadata accessor for FMFLocation);
  sub_24A399284(a2, v28, type metadata accessor for FMFLocation);
  v35 = sub_24A4AB600();
  v36 = sub_24A4ABCE0();
  if (os_log_type_enabled(v35, v36))
  {
    v61 = v9;
    v37 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v77 = v60;
    *v37 = 136315651;
    if (v33[1])
    {
      v38 = *v33;
      v39 = v33[1];
    }

    else
    {
      v39 = 0xE300000000000000;
      v38 = 7104878;
    }

    sub_24A39A758(v33, type metadata accessor for FMFLocation);
    v45 = sub_24A37BD58(v38, v39, &v77);

    *(v37 + 4) = v45;
    *(v37 + 12) = 2049;
    memcpy(v76, &v31[*(v74 + 44)], 0x161uLL);
    if (sub_24A3B9C24(v76) == 1)
    {
      v46 = 0x7FF4000000000000;
    }

    else
    {
      [v76[38] coordinate];
      v46 = v47;
    }

    sub_24A39A758(v31, type metadata accessor for FMFLocation);
    *(v37 + 14) = v46;
    *(v37 + 22) = 2049;
    memcpy(v75, &v28[*(v74 + 44)], 0x161uLL);
    if (sub_24A3B9C24(v75) == 1)
    {
      v48 = 0x7FF4000000000000;
    }

    else
    {
      [v75[38] coordinate];
      v48 = v49;
    }

    v41 = v73;
    v42 = v69;
    v44 = v64;
    v43 = v65;
    sub_24A39A758(v28, type metadata accessor for FMFLocation);
    *(v37 + 24) = v48;
    _os_log_impl(&dword_24A376000, v35, v36, "👀 FMFManager.FMFSecureLocationRefreshControllerDelegate: did reverse geocode shallow/live (shifted) location for %s: shifted: {%{private}f,%{private}f}", v37, 0x20u);
    v50 = v60;
    sub_24A37EEE0(v60);
    MEMORY[0x24C219130](v50, -1, -1);
    MEMORY[0x24C219130](v37, -1, -1);

    v9 = v61;
  }

  else
  {

    sub_24A39A758(v33, type metadata accessor for FMFLocation);
    sub_24A39A758(v28, type metadata accessor for FMFLocation);
    v40 = sub_24A39A758(v31, type metadata accessor for FMFLocation);
    v41 = v73;
    v42 = v69;
    v44 = v64;
    v43 = v65;
  }

  MEMORY[0x28223BE20](v40);
  *(&v60 - 2) = a2;
  sub_24A3BC89C(sub_24A440FC0, v63, type metadata accessor for FMFLocation, type metadata accessor for FMFLocation, type metadata accessor for FMFLocation, type metadata accessor for FMFLocation, v41);
  v51 = v66;
  sub_24A399284(a2, v66, type metadata accessor for FMFLocation);
  sub_24A399284(a2, v43, type metadata accessor for FMFLocation);
  memcpy(v76, v78, 0x130uLL);
  sub_24A37B740(v78, v75, &unk_27EF404E0, &unk_24A4B5230);
  v52 = v68;
  FMFLocation.init(from:updatedLocation:address:)(v51, v43, v76, v68);
  sub_24A37B740(v41, v44, &qword_27EF3F480, &unk_24A4B8C20);
  v53 = v67;
  v54 = 1;
  if ((*(v67 + 48))(v44, 1, v74) != 1)
  {
    sub_24A3997D4(v44, v51, type metadata accessor for FMFLocation);
    sub_24A399284(v51, v43, type metadata accessor for FMFLocation);
    v55 = v51;
    v56 = v51;
    v57 = v62;
    sub_24A399284(v55, v62, type metadata accessor for FMFLocation);
    memcpy(v76, v78, 0x130uLL);
    sub_24A37B740(v78, v75, &unk_27EF404E0, &unk_24A4B5230);
    FMFLocation.init(from:updatedLocation:address:)(v43, v57, v76, v42);
    sub_24A39A758(v56, type metadata accessor for FMFLocation);
    v54 = 0;
  }

  (*(v53 + 56))(v42, v54, 1, v74);
  v58 = *(sub_24A3C9CEC(&qword_27EF40488, &unk_24A4BA648) + 48);
  sub_24A399284(v52, v9, type metadata accessor for FMFLocation);
  sub_24A37B740(v42, &v9[v58], &qword_27EF3F480, &unk_24A4B8C20);
  swift_storeEnumTagMultiPayload();
  v72(v9);
  sub_24A37EF2C(v9, &qword_27EF40490, &qword_24A4BA658);
  sub_24A37EF2C(v42, &qword_27EF3F480, &unk_24A4B8C20);
  sub_24A39A758(v52, type metadata accessor for FMFLocation);
  return sub_24A37EF2C(v73, &qword_27EF3F480, &unk_24A4B8C20);
}

BOOL sub_24A43CCF8(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_24A4AC270() & 1;
    }
  }

  return result;
}

uint64_t sub_24A43CD6C(unsigned int (***a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v59 - v6;
  v8 = type metadata accessor for FMFLocation();
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v70 = sub_24A3C9CEC(&qword_27EF40488, &unk_24A4BA648);
  v15 = *(v70 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v70);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v59 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v69 = &v59 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v63 = &v59 - v26;
  v27 = *a1;
  v28 = (*a1)[2];
  if (v28)
  {
    v62 = v7;
    v60 = a2;
    v71 = MEMORY[0x277D84F90];
    sub_24A3B57CC(0, v28, 0);
    v29 = v71;
    v30 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v61 = v27;
    v31 = *(v15 + 72);
    v67 = v27 + v30;
    v68 = v31;
    v32 = v27 + v30;
    do
    {
      v33 = v69;
      sub_24A37B740(v32, v69, &qword_27EF40488, &unk_24A4BA648);
      sub_24A37B740(v33, v22, &qword_27EF40488, &unk_24A4BA648);
      v34 = *(v70 + 48);
      sub_24A3997D4(v22, v19, type metadata accessor for FMFLocation);
      sub_24A37BE24(&v22[v34], &v19[v34], &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A399284(v19, v14, type metadata accessor for FMFLocation);
      sub_24A37EF2C(v19, &qword_27EF40488, &unk_24A4BA648);
      sub_24A37EF2C(v33, &qword_27EF40488, &unk_24A4BA648);
      v71 = v29;
      v35 = v14;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_24A3B57CC(v36 > 1, v37 + 1, 1);
        v29 = v71;
      }

      *(v29 + 16) = v37 + 1;
      v38 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v39 = v66[9];
      v25 = sub_24A3997D4(v35, v29 + v38 + v39 * v37, type metadata accessor for FMFLocation);
      v32 += v68;
      --v28;
      v14 = v35;
    }

    while (v28);
    v59 = v29;
    v40 = v61[2];
    if (v40)
    {
      v41 = v67;
      v61 = (v66 + 6);
      v66 = MEMORY[0x277D84F90];
      do
      {
        v67 = v41;
        v43 = v41;
        v44 = v63;
        sub_24A37B740(v43, v63, &qword_27EF40488, &unk_24A4BA648);
        v45 = v69;
        sub_24A37B740(v44, v69, &qword_27EF40488, &unk_24A4BA648);
        v46 = *(v70 + 48);
        sub_24A3997D4(v45, v22, type metadata accessor for FMFLocation);
        sub_24A37BE24(v45 + v46, &v22[v46], &qword_27EF3F480, &unk_24A4B8C20);
        v47 = v62;
        sub_24A37B740(&v22[v46], v62, &qword_27EF3F480, &unk_24A4B8C20);
        sub_24A37EF2C(v22, &qword_27EF40488, &unk_24A4BA648);
        sub_24A37EF2C(v44, &qword_27EF40488, &unk_24A4BA648);
        if ((*v61)(v47, 1, v65) == 1)
        {
          v25 = sub_24A37EF2C(v47, &qword_27EF3F480, &unk_24A4B8C20);
          v42 = v67;
        }

        else
        {
          sub_24A3997D4(v47, v64, type metadata accessor for FMFLocation);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v48 = v66;
            v42 = v67;
          }

          else
          {
            v48 = sub_24A3B5C2C(0, v66[2] + 1, 1, v66);
            v42 = v67;
          }

          v50 = v48[2];
          v49 = v48[3];
          if (v50 >= v49 >> 1)
          {
            v48 = sub_24A3B5C2C(v49 > 1, v50 + 1, 1, v48);
          }

          v48[2] = v50 + 1;
          v66 = v48;
          v25 = sub_24A3997D4(v64, v48 + v38 + v39 * v50, type metadata accessor for FMFLocation);
        }

        v41 = &v42[v68];
        v40 = (v40 - 1);
      }

      while (v40);
      v51 = v59;
      a2 = v60;
      v52 = v66;
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
      v51 = v59;
      a2 = v60;
    }
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
  }

  v53 = *(a2 + 88);
  v54 = *(v53 + 56);
  MEMORY[0x28223BE20](v25);
  *(&v59 - 2) = v53;
  *(&v59 - 1) = v51;

  sub_24A4ABD70();

  v56 = *(a2 + 88);
  v57 = *(v56 + 56);
  MEMORY[0x28223BE20](v55);
  *(&v59 - 2) = v52;
  *(&v59 - 1) = v56;

  sub_24A4ABD70();
}

uint64_t sub_24A43D43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A416888;
  v8[3] = &unk_285D88D38;
  v6 = _Block_copy(v8);

  [v5 publishCurrentLocationToStewieWithReason:a1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_24A43D4F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A43D554()
{
  v1 = *(v0 + 16);
  v2 = sub_24A4AB820();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A4AB850();

  return v4;
}

void sub_24A43D618(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = sub_24A4AB820();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_24A4AB820();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t sub_24A43D6BC()
{
  v1 = *(v0 + 16);
  v2 = sub_24A4AB820();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A4AB850();

  return v4;
}

void sub_24A43D754(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = sub_24A4AB820();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_24A4AB820();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t sub_24A43D840(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A43D990()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_24A43DAB0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_24A43DAE8(void *a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);
  v12 = a1;
  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v8;
    v17 = v5;
    v18 = v4;
    v19 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    aBlock[6] = a1;
    v20 = a1;
    sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
    v21 = sub_24A4AB870();
    v23 = sub_24A37BD58(v21, v22, aBlock);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_24A376000, v13, v14, "FMFManager: initializationDidFail %s", v15, 0xCu);
    sub_24A37EEE0(v19);
    v24 = v19;
    v4 = v18;
    v5 = v17;
    v8 = v35;
    MEMORY[0x24C219130](v24, -1, -1);
    MEMORY[0x24C219130](v15, -1, -1);
  }

  if (a1 && *(v2 + 225) == 1 && (*(v2 + 226) & 1) == 0)
  {
    *(v2 + 226) = 1;
    v25 = *(*(v2 + 88) + 56);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    sub_24A436774(aBlock[0], a1);
  }

  v26 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  result = swift_beginAccess();
  if ((*(v2 + v26) & 1) == 0)
  {
    v28 = *(v2 + 48);
    v29 = swift_allocObject();
    *(v29 + 16) = v2;
    *(v29 + 24) = a1;
    aBlock[4] = sub_24A441004;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D88D10;
    v30 = _Block_copy(aBlock);
    v31 = a1;

    v32 = v36;
    sub_24A4AB6B0();
    v39 = MEMORY[0x277D84F90];
    sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v33 = v38;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v32, v33, v30);
    _Block_release(v30);
    (*(v5 + 8))(v33, v4);
    (*(v37 + 8))(v32, v8);
  }

  return result;
}

uint64_t sub_24A43DFE0()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFManager: didInitialize", v13, 2u);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v14 = *(v1 + 48);
  aBlock[4] = sub_24A440FFC;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88CC0;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v5, v15);
  _Block_release(v15);
  (*(v19 + 8))(v5, v2);
  (*(v6 + 8))(v9, v18);
}

uint64_t sub_24A43E34C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return 0;
  }

  v26 = v3;
  v27 = v4;
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = sub_24A4AB820();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_24A37EF2C(v25, &qword_27EF3F808, &unk_24A4BA6D0);
LABEL_13:
    if (!a3)
    {
      return 1;
    }

LABEL_14:
    v12 = [v8 standardUserDefaults];
    v13 = sub_24A4AB820();
    v14 = sub_24A4AB820();
    [v12 setObject:v13 forKey:v14];

    v15 = [v8 standardUserDefaults];
    [v15 synchronize];

    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!a3)
  {

    return 1;
  }

  if (v21 != a2 || v22 != a3)
  {
    v16 = sub_24A4AC270();

    if (v16)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_18:
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);
  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A376000, v18, v19, "Location alert has already been displayed. Not displaying again.", v20, 2u);
    MEMORY[0x24C219130](v20, -1, -1);
  }

  return 0;
}

void sub_24A43E62C(void *a1)
{
  v2 = v1;
  v48 = type metadata accessor for FMFLocation();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v49 = a1[2];
  if (v49)
  {
    if (qword_27EF3EBF8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v12 = sub_24A4AB630();
    sub_24A378E18(v12, qword_27EF4E260);

    v13 = sub_24A4AB600();
    v14 = sub_24A4ABCE0();
    v15 = os_log_type_enabled(v13, v14);
    v43 = v2;
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v49;

      _os_log_impl(&dword_24A376000, v13, v14, "👀 FMFManager.FMFSecureLocationRefreshControllerDelegate:%ld shallow/live locations", v16, 0xCu);
      MEMORY[0x24C219130](v16, -1, -1);
    }

    else
    {
    }

    v17 = 0;
    v18 = *(v4 + 80);
    v44 = a1;
    v46 = (v18 + 32) & ~v18;
    v19 = a1 + v46;
    v20 = *(v4 + 72);
    v21 = MEMORY[0x277D84F90];
    a1 = v45;
    do
    {
      sub_24A399284(v19, v11, type metadata accessor for FMFLocation);
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      memcpy(v50, &v11[*(v48 + 44)], 0x161uLL);
      if (sub_24A3B9C24(v50) == 1)
      {
        sub_24A39A758(v11, type metadata accessor for FMFLocation);
      }

      else
      {
        sub_24A3997D4(v11, v47, type metadata accessor for FMFLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3B57CC(0, *(v21 + 16) + 1, 1);
          v21 = v51;
        }

        v2 = *(v21 + 16);
        v24 = *(v21 + 24);
        v4 = v2 + 1;
        if (v2 >= v24 >> 1)
        {
          sub_24A3B57CC(v24 > 1, v2 + 1, 1);
          v21 = v51;
        }

        *(v21 + 16) = v4;
        sub_24A3997D4(v47, v21 + v46 + v2 * v20, type metadata accessor for FMFLocation);
      }

      ++v17;
      v19 += v20;
    }

    while (v22 != v49);
    v25 = *(v21 + 16);
    if (v25)
    {
      v26 = v21 + v46;
      v27 = MEMORY[0x277D84F90];
      do
      {
        sub_24A399284(v26, a1, type metadata accessor for FMFLocation);
        v28 = a1[1];
        if (v28)
        {
          v29 = *a1;
          v30 = a1[1];

          sub_24A39A758(a1, type metadata accessor for FMFLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_24A3EDC98(0, *(v27 + 2) + 1, 1, v27);
          }

          v32 = *(v27 + 2);
          v31 = *(v27 + 3);
          if (v32 >= v31 >> 1)
          {
            v27 = sub_24A3EDC98((v31 > 1), v32 + 1, 1, v27);
          }

          *(v27 + 2) = v32 + 1;
          v33 = &v27[24 * v32];
          *(v33 + 4) = v29;
          *(v33 + 5) = v28;
          v33[48] = 0;
          a1 = v45;
        }

        else
        {
          sub_24A39A758(a1, type metadata accessor for FMFLocation);
        }

        v26 += v20;
        --v25;
      }

      while (v25);
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    v35 = v43;
    v36 = *(v43 + 88);
    v37 = *(v36 + 56);
    MEMORY[0x28223BE20](v34);
    *(&v42 - 2) = v27;
    *(&v42 - 1) = v36;

    sub_24A4ABD70();

    v39 = *(v35 + 88);
    v40 = *(v39 + 56);
    MEMORY[0x28223BE20](v38);
    v41 = v44;
    *(&v42 - 2) = v39;
    *(&v42 - 1) = v41;

    sub_24A4ABD70();
  }
}

uint64_t sub_24A43EBB8(uint64_t a1)
{
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A357C;

  return sub_24A437A0C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24A43ECB0(uint64_t a1)
{
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A357C;

  return sub_24A438334(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24A43EDA8()
{
  v1 = sub_24A4AB690();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A43B96C();
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D851C8], v9);
  v14 = sub_24A4ABDA0();
  (*(v10 + 8))(v13, v9);
  aBlock[4] = sub_24A440DB0;
  v22 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88BD0;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v8, v4, v15);
  _Block_release(v15);

  (*(v19 + 8))(v4, v1);
  (*(v5 + 8))(v8, v18);
}

uint64_t sub_24A43F16C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A3A35A8;

  return sub_24A43A740(a1, v4, v5, v7, v6);
}

uint64_t sub_24A43F22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A43F29C(uint64_t a1)
{
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A35A8;

  return sub_24A43A0A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t dispatch thunk of FMFManagerDelegate.fmfManager(_:didReceive:fromServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 32))();
}

{
  return (*(a5 + 80))();
}

uint64_t dispatch thunk of FMFManagerDelegate.fmfManager(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 40))();
}

{
  return (*(a4 + 48))();
}

{
  return (*(a4 + 64))();
}

{
  return (*(a4 + 72))();
}

{
  return (*(a4 + 88))();
}

{
  return (*(a4 + 96))();
}

{
  return (*(a4 + 104))();
}

uint64_t sub_24A43FA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF40428, &qword_24A4BA610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v93 - v6;
  v8 = sub_24A4AB6A0();
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = *(v100 + 64);
  MEMORY[0x28223BE20](v8);
  v99 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A3C9CEC(&qword_27EF40430, &qword_24A4BA618);
  v107 = *(v11 - 8);
  v108 = v11;
  v12 = *(v107 + 64);
  MEMORY[0x28223BE20](v11);
  v105 = (&v93 - v13);
  v14 = sub_24A3C9CEC(&qword_27EF40438, &qword_24A4BA620);
  v103 = *(v14 - 8);
  v104 = v14;
  v15 = *(v103 + 64);
  MEMORY[0x28223BE20](v14);
  v102 = &v93 - v16;
  v17 = sub_24A3C9CEC(&qword_27EF40440, &qword_24A4BA628);
  v109 = *(v17 - 8);
  v18 = *(v109 + 64);
  MEMORY[0x28223BE20](v17);
  v106 = &v93 - v19;
  v116 = type metadata accessor for FMFLocation();
  v113 = *(v116 - 8);
  v20 = *(v113 + 64);
  v21 = MEMORY[0x28223BE20](v116);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v94 = &v93 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v93 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v115 = &v93 - v30;
  v93 = v31;
  MEMORY[0x28223BE20](v29);
  v33 = &v93 - v32;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v34 = sub_24A4AB630();
  sub_24A378E18(v34, qword_27EF4E260);

  v35 = sub_24A4AB600();
  v36 = sub_24A4ABCE0();
  v37 = os_log_type_enabled(v35, v36);
  v110 = v17;
  v111 = v7;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 134218240;
    *(v38 + 4) = *(a1 + 16);

    *(v38 + 12) = 2048;
    *(v38 + 14) = *(a2 + 16);

    _os_log_impl(&dword_24A376000, v35, v36, "👀 FMFManager.FMFSecureLocationRefreshControllerDelegate: received %ld unshifted and %ld shifted shallow/live locations", v38, 0x16u);
    MEMORY[0x24C219130](v38, -1, -1);
  }

  else
  {
  }

  v95 = v23;
  v96 = a2;
  v39 = *(a2 + 16);
  v97 = a1;
  v98 = v39;
  if (v39)
  {
    v114 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v40 = a2 + v114;
    v41 = *(v113 + 72);
    v42 = MEMORY[0x277D84F90];
    v43 = v115;
    do
    {
      sub_24A399284(v40, v33, type metadata accessor for FMFLocation);
      memcpy(v117, &v33[*(v116 + 44)], 0x161uLL);
      if (sub_24A3B9C24(v117) == 1)
      {
        sub_24A39A758(v33, type metadata accessor for FMFLocation);
      }

      else
      {
        sub_24A3997D4(v33, v28, type metadata accessor for FMFLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3B57CC(0, *(v42 + 16) + 1, 1);
          v42 = v118;
        }

        v46 = *(v42 + 16);
        v45 = *(v42 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_24A3B57CC(v45 > 1, v46 + 1, 1);
          v42 = v118;
        }

        *(v42 + 16) = v46 + 1;
        sub_24A3997D4(v28, v42 + v114 + v46 * v41, type metadata accessor for FMFLocation);
      }

      v40 += v41;
      --v39;
    }

    while (v39);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
    v43 = v115;
  }

  v47 = *(v42 + 16);
  if (v47)
  {
    v48 = v42 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
    v49 = *(v113 + 72);
    v50 = MEMORY[0x277D84F90];
    do
    {
      sub_24A399284(v48, v43, type metadata accessor for FMFLocation);
      v51 = v43[1];
      if (v51)
      {
        v52 = *v43;
        v53 = v43[1];

        sub_24A39A758(v43, type metadata accessor for FMFLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_24A3EDC98(0, *(v50 + 2) + 1, 1, v50);
        }

        v55 = *(v50 + 2);
        v54 = *(v50 + 3);
        if (v55 >= v54 >> 1)
        {
          v50 = sub_24A3EDC98((v54 > 1), v55 + 1, 1, v50);
        }

        *(v50 + 2) = v55 + 1;
        v56 = &v50[24 * v55];
        *(v56 + 4) = v52;
        *(v56 + 5) = v51;
        v56[48] = 0;
        v43 = v115;
      }

      else
      {
        sub_24A39A758(v43, type metadata accessor for FMFLocation);
      }

      v48 += v49;
      --v47;
    }

    while (v47);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v58 = *(v112 + 88);
  v59 = *(v58 + 56);
  MEMORY[0x28223BE20](v57);
  *(&v93 - 2) = v50;
  *(&v93 - 1) = v58;

  sub_24A4ABD70();

  v60 = MEMORY[0x277D84F90];
  v61 = v98;
  if (v98)
  {
    v117[0] = MEMORY[0x277D84F90];
    sub_24A4ABFD0();
    v62 = v112;
    v63 = *(v113 + 80);
    v64 = v97;
    v65 = v96 + ((v63 + 32) & ~v63);
    v115 = *(v113 + 72);
    v116 = v63;
    v66 = v94;
    v113 = (v93 + ((v63 + 24) & ~v63) + 7) & 0xFFFFFFFFFFFFFFF8;
    v114 = (v63 + 24) & ~v63;
    v67 = v95;
    do
    {
      sub_24A399284(v65, v66, type metadata accessor for FMFLocation);
      sub_24A399284(v66, v67, type metadata accessor for FMFLocation);
      v68 = v113;
      v69 = swift_allocObject();
      *(v69 + 16) = v62;
      sub_24A3997D4(v67, v69 + v114, type metadata accessor for FMFLocation);
      *(v69 + v68) = v64;
      v70 = sub_24A3C9CEC(&qword_27EF40448, &qword_24A4BA630);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();

      sub_24A4AB650();
      sub_24A39A758(v66, type metadata accessor for FMFLocation);
      sub_24A4ABFB0();
      v73 = *(v117[0] + 16);
      sub_24A4ABFE0();
      sub_24A4ABFF0();
      sub_24A4ABFC0();
      v65 += v115;
      --v61;
    }

    while (v61);
    v60 = v117[0];
  }

  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  v115 = v74;
  v116 = v74 + 16;
  v117[0] = v60;
  sub_24A3C9CEC(&qword_27EF40448, &qword_24A4BA630);
  sub_24A3C9CEC(&qword_27EF40450, &qword_24A4BA638);
  sub_24A378704(&qword_27EF40458, &qword_27EF40448, &qword_24A4BA630);
  sub_24A378704(&qword_27EF40460, &qword_27EF40450, &qword_24A4BA638);
  v75 = v102;
  sub_24A4AB640();
  v76 = *(sub_24A3C9CEC(&qword_27EF40468, &qword_24A4BA640) + 48);
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v78 = v99;
  v77 = v100;
  v79 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x277D851D0], v101);
  v80 = sub_24A4ABDA0();
  (*(v77 + 8))(v78, v79);
  v81 = v105;
  *v105 = v80;
  sub_24A4ABD40();
  v83 = v107;
  v82 = v108;
  (*(v107 + 104))(v81, *MEMORY[0x277CBCBF8], v108);
  v84 = sub_24A4ABD30();
  v85 = v111;
  (*(*(v84 - 8) + 56))(v111, 1, 1, v84);
  sub_24A378704(&qword_27EF40470, &qword_27EF40438, &qword_24A4BA620);
  sub_24A440E68();
  v86 = v106;
  v87 = v104;
  sub_24A4AB670();
  sub_24A37EF2C(v85, &qword_27EF40428, &qword_24A4BA610);
  (*(v83 + 8))(v81, v82);
  (*(v103 + 8))(v75, v87);
  sub_24A378704(&qword_27EF40480, &qword_27EF40440, &qword_24A4BA628);

  v88 = v110;
  v89 = sub_24A4AB660();

  (*(v109 + 8))(v86, v88);
  v90 = v116;
  swift_beginAccess();
  v91 = *v90;
  *v90 = v89;
}

uint64_t sub_24A440778(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = a3;
  v6 = v4;
  v7 = a1;
  v8 = *(a1 + 16);
  if (v8)
  {
    v20 = v4;
    v21 = MEMORY[0x277D84F90];
    sub_24A3DBE70(0, v8, 0);
    v18 = v7;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v14 = *(v21 + 16);
      v13 = *(v21 + 24);

      if (v14 >= v13 >> 1)
      {
        a1 = sub_24A3DBE70((v13 > 1), v14 + 1, 1);
      }

      *(v21 + 16) = v14 + 1;
      v15 = v21 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      *(v15 + 48) = a4;
      v10 += 2;
      --v8;
    }

    while (v8);
    v6 = v20;
    v5 = a3;
    v7 = v18;
  }

  v16 = *(*(v6 + 88) + 56);
  MEMORY[0x28223BE20](a1);

  sub_24A4ABD70();

  return sub_24A4398F8(v7, v5 & 1);
}

uint64_t sub_24A440940(uint64_t a1, char a2, const char *a3)
{
  v4 = a3;
  v5 = v3;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v28 = v3;
    v29 = MEMORY[0x277D84F90];
    sub_24A3DBD70(0, v6, 0);
    v7 = v29;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v29 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);

      if (v14 >= v13 >> 1)
      {
        sub_24A3DBD70((v13 > 1), v14 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      *(v15 + 48) = a2;
      v10 += 2;
      --v6;
    }

    while (v6);
    v4 = a3;
    v5 = v28;
  }

  if (qword_27EF3EBF8 != -1)
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
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x24C217E90](v7, &type metadata for FMFSecureOrLiveLocateInProgress);
    v23 = sub_24A37BD58(v21, v22, &v29);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_24A376000, v17, v18, v4, v19, 0xCu);
    sub_24A37EEE0(v20);
    MEMORY[0x24C219130](v20, -1, -1);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  v24 = *(*(v5 + 88) + 56);
  MEMORY[0x28223BE20](v25);

  sub_24A4ABD70();
}

uint64_t sub_24A440C2C(uint64_t a1, unint64_t a2, char a3)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24A37BD58(a1, a2, &v12);
    *(v9 + 12) = 1024;
    *(v9 + 14) = a3 & 1;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFManager: liveSessionDidEndForFriend: %s, successfullyEstablished?: %{BOOL}d", v9, 0x12u);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  return sub_24A439760(a1, a2, a3 & 1);
}

uint64_t sub_24A440DB8(void (*a1)(char *), uint64_t a2)
{
  v5 = *(type metadata accessor for FMFLocation() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_24A43C050(a1, a2, v8, v2 + v6, v7);
}

unint64_t sub_24A440E68()
{
  result = qword_27EF40478;
  if (!qword_27EF40478)
  {
    sub_24A37B428(255, &qword_27EF40900, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40478);
  }

  return result;
}

uint64_t sub_24A440ED0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t sub_24A440F14(const void *a1)
{
  v3 = *(type metadata accessor for FMFLocation() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_24A43C484(a1, (v1 + v4), v6, v8, v9);
}

uint64_t sub_24A44102C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A357C;

  return sub_24A4353A0(a1, v4, v5, v6);
}

uint64_t sub_24A4410E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A357C;

  return sub_24A434BEC(a1, v4, v5, v6);
}

uint64_t sub_24A441270(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v42 = a2;
  v45 = a1;
  v4 = sub_24A3C9CEC(&qword_27EF404F0, qword_24A4BA768);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v41 = type metadata accessor for FMReverseGeocodingRequest();
  v8 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v43 = *(v11 - 1);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = sub_24A4AB710();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v3;
  v20 = *(v3 + qword_27EF400F0);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_24A4AB730();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v23 = v45;
    sub_24A446A98(v45, v10, type metadata accessor for FMReverseGeocodingRequest);
    v24 = v11[11];
    v25 = sub_24A4AAAD0();
    (*(*(v25 - 8) + 16))(&v14[v24], v40, v25);
    v26 = v10[1];
    *v14 = *v10;
    *(v14 + 1) = v26;
    v27 = v10[2];
    v28 = v42;
    sub_24A3E5340(v42, &v46);

    *(v14 + 2) = sub_24A448010();
    *(v14 + 3) = v29;
    *(v14 + 4) = v27;
    v30 = *(v10 + *(v41 + 28));
    v31 = v27;
    sub_24A447020(v10, type metadata accessor for FMReverseGeocodingRequest);
    v14[v11[13]] = v30;
    memcpy(&v14[v11[12]], v28, 0x130uLL);
    v32 = v23[2];
    v33 = sub_24A448010();
    v35 = v34;
    sub_24A37B740(v14, v7, &qword_27EF403A8, &qword_24A4BA760);
    v36 = *(v43 + 56);
    v36(v7, 0, 1, v11);
    swift_beginAccess();
    sub_24A4A36EC(v7, v33, v35);
    swift_endAccess();
    v38 = *v45;
    v37 = v45[1];
    sub_24A37B740(v14, v7, &qword_27EF403A8, &qword_24A4BA760);
    v36(v7, 0, 1, v11);
    swift_beginAccess();

    sub_24A4A36EC(v7, v38, v37);
    swift_endAccess();
    return sub_24A37EF2C(v14, &qword_27EF403A8, &qword_24A4BA760);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A4416C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_24A4AB690();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24A4AB6E0();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMReverseGeocodingRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v4 + qword_27EF400F0);
  sub_24A446A98(a1, v18, type metadata accessor for FMReverseGeocodingRequest);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  sub_24A44680C(v18, v21 + v19);
  v22 = (v21 + v20);
  *v22 = v26;
  v22[1] = a3;
  aBlock[4] = sub_24A446B00;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88FA8;
  v23 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v29 = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v10, v23);
  _Block_release(v23);
  (*(v28 + 8))(v10, v7);
  (*(v11 + 8))(v14, v27);
}

void sub_24A441A18(uint64_t a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  sub_24A441BE4(a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_24A3D77F8(__dst) == 1)
  {
    memcpy(v17, __src, sizeof(v17));
    sub_24A37EF2C(v17, &unk_27EF404E0, &unk_24A4B5230);
    v8 = a2[2];
    v9 = sub_24A448010();
    v11 = v10;
    v12 = qword_27EF400D8;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16))
    {

      sub_24A39B2C8(v9, v11);
      v14 = v13;

      if (v14)
      {
        sub_24A4449A0(a2, a3, a4);
        return;
      }
    }

    else
    {
    }

    sub_24A442D8C(a2, 0, a3, a4);
  }

  else
  {
    memcpy(v16, __src, sizeof(v16));
    memcpy(v15, __src, sizeof(v15));
    sub_24A37B740(v16, v17, &unk_27EF404E0, &unk_24A4B5230);
    a3(v15);
    sub_24A37EF2C(v16, &unk_27EF404E0, &unk_24A4B5230);
    memcpy(v17, v15, sizeof(v17));
    sub_24A37EF2C(v17, &unk_27EF404E0, &unk_24A4B5230);
  }
}

void *sub_24A441BE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v176 = a2;
  v5 = sub_24A4AAAD0();
  v162 = *(v5 - 8);
  v163 = v5;
  v6 = *(v162 + 64);
  MEMORY[0x28223BE20](v5);
  v161 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A3C9CEC(&qword_27EF404F0, qword_24A4BA768);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v170 = &v157 - v10;
  v171 = type metadata accessor for FMReverseGeocodingRequest();
  v11 = *(*(v171 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v171);
  v14 = (&v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v169 = (&v157 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v168 = &v157 - v18;
  MEMORY[0x28223BE20](v17);
  v167 = (&v157 - v19);
  v173 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v175 = *(v173 - 1);
  v20 = *(v175 + 64);
  v21 = MEMORY[0x28223BE20](v173);
  v160 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v159 = (&v157 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v158 = (&v157 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v157 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v165 = &v157 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v166 = &v157 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v157 - v35;
  MEMORY[0x28223BE20](v34);
  v174 = &v157 - v37;
  v38 = sub_24A4AB710();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = (&v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v3 + qword_27EF400F0);
  *v42 = v43;
  (*(v39 + 104))(v42, *MEMORY[0x277D85200], v38);
  v44 = v43;
  LOBYTE(v43) = sub_24A4AB730();
  (*(v39 + 8))(v42, v38);
  if ((v43 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_19:
    v109 = sub_24A4AB630();
    sub_24A378E18(v109, qword_27EF4E278);
    sub_24A446A98(a1, v14, type metadata accessor for FMReverseGeocodingRequest);

    v110 = sub_24A4AB600();
    v111 = sub_24A4ABCE0();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v179[0] = v113;
      *v112 = 136315394;
      v114 = *v3;
      v115 = sub_24A4AC420();
      v117 = sub_24A37BD58(v115, v116, v179);

      *(v112 + 4) = v117;
      *(v112 + 12) = 2080;
      v118 = *v14;
      v119 = v14[1];

      sub_24A447020(v14, type metadata accessor for FMReverseGeocodingRequest);
      v120 = sub_24A37BD58(v118, v119, v179);

      *(v112 + 14) = v120;
      _os_log_impl(&dword_24A376000, v110, v111, "%s: No cached request for %s.", v112, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v113, -1, -1);
      MEMORY[0x24C219130](v112, -1, -1);
    }

    else
    {

      sub_24A447020(v14, type metadata accessor for FMReverseGeocodingRequest);
    }

    goto LABEL_35;
  }

  v45 = a1[2];
  v46 = sub_24A448010();
  v48 = v47;
  v49 = qword_27EF400C8;
  swift_beginAccess();
  v50 = *(v3 + v49);
  if (*(v50 + 16))
  {
    v164 = v45;
    v172 = a1;

    v51 = sub_24A39B2C8(v46, v48);
    v53 = v52;

    if (v53)
    {
      sub_24A37B740(*(v50 + 56) + *(v175 + 72) * v51, v36, &qword_27EF403A8, &qword_24A4BA760);

      v54 = v36;
      v55 = v174;
      sub_24A37BE24(v54, v174, &qword_27EF403A8, &qword_24A4BA760);
      if (qword_27EF3EC00 != -1)
      {
        swift_once();
      }

      v56 = sub_24A4AB630();
      sub_24A378E18(v56, qword_27EF4E278);
      v57 = v172;
      v58 = v167;
      sub_24A446A98(v172, v167, type metadata accessor for FMReverseGeocodingRequest);
      v59 = v168;
      sub_24A446A98(v57, v168, type metadata accessor for FMReverseGeocodingRequest);
      v60 = v166;
      sub_24A37B740(v55, v166, &qword_27EF403A8, &qword_24A4BA760);

      v61 = sub_24A4AB600();
      v62 = sub_24A4ABCE0();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *&v179[0] = v165;
        *v63 = 136315906;
        v64 = *v3;
        v65 = sub_24A4AC420();
        LODWORD(v163) = v62;
        v67 = sub_24A37BD58(v65, v66, v179);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        v68 = *v58;
        v69 = v58[1];

        sub_24A447020(v58, type metadata accessor for FMReverseGeocodingRequest);
        v70 = sub_24A37BD58(v68, v69, v179);

        *(v63 + 14) = v70;
        *(v63 + 22) = 2080;
        v71 = *(v59 + 16);
        v72 = sub_24A448010();
        v74 = v73;
        sub_24A447020(v59, type metadata accessor for FMReverseGeocodingRequest);
        v75 = sub_24A37BD58(v72, v74, v179);

        *(v63 + 24) = v75;
        *(v63 + 32) = 2080;
        v76 = v173;
        v77 = v60 + v173[12];
        v78 = FMFAddress.debugDescription.getter();
        v80 = v79;
        sub_24A37EF2C(v60, &qword_27EF403A8, &qword_24A4BA760);
        v81 = sub_24A37BD58(v78, v80, v179);

        *(v63 + 34) = v81;
        _os_log_impl(&dword_24A376000, v61, v163, "%s: Using cached request %s based on geoHash %s -> %s.", v63, 0x2Au);
        v82 = v165;
        swift_arrayDestroy();
        MEMORY[0x24C219130](v82, -1, -1);
        MEMORY[0x24C219130](v63, -1, -1);
      }

      else
      {

        sub_24A37EF2C(v60, &qword_27EF403A8, &qword_24A4BA760);
        sub_24A447020(v58, type metadata accessor for FMReverseGeocodingRequest);
        sub_24A447020(v59, type metadata accessor for FMReverseGeocodingRequest);
        v76 = v173;
      }

      v121 = v172[1];
      v173 = *v172;
      v122 = v169;
      sub_24A446A98(v172, v169, type metadata accessor for FMReverseGeocodingRequest);
      v123 = v76[12];
      v124 = v174;
      memcpy(v178, (v174 + v123), sizeof(v178));

      sub_24A3E5340(v178, v179);
      v125 = [v164 timestamp];
      v126 = v170;
      v127 = &v170[v76[11]];
      sub_24A4AAAA0();

      v128 = v122[1];
      *v126 = *v122;
      v126[1] = v128;
      v129 = v122[2];

      v126[2] = sub_24A448010();
      v126[3] = v130;
      v126[4] = v129;
      v131 = *(v122 + *(v171 + 28));
      v132 = v129;
      sub_24A447020(v122, type metadata accessor for FMReverseGeocodingRequest);
      *(v126 + v76[13]) = v131;
      memcpy(v126 + v76[12], v178, 0x130uLL);
      (*(v175 + 56))(v126, 0, 1, v76);
      swift_beginAccess();
      sub_24A4A36EC(v126, v173, v121);
      swift_endAccess();
      memcpy(v179, (v124 + v123), sizeof(v179));
      sub_24A3E5340(v179, &v177);
      sub_24A37EF2C(v124, &qword_27EF403A8, &qword_24A4BA760);
      v133 = v176;
      memcpy(v176, v179, 0x130uLL);
      return nullsub_1(v133);
    }

    a1 = v172;
    v45 = v164;
  }

  else
  {
  }

  v83 = *a1;
  v84 = a1[1];
  v85 = qword_27EF400D0;
  swift_beginAccess();
  v86 = *(v3 + v85);
  if (!*(v86 + 16))
  {
LABEL_18:
    if (qword_27EF3EC00 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

  v87 = sub_24A39B2C8(v83, v84);
  if ((v88 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_24A37B740(*(v86 + 56) + *(v175 + 72) * v87, v29, &qword_27EF403A8, &qword_24A4BA760);

  v89 = v165;
  sub_24A37BE24(v29, v165, &qword_27EF403A8, &qword_24A4BA760);
  v90 = v161;
  sub_24A4AAAB0();
  v91 = v173;
  v92 = v173[11];
  sub_24A4AAA50();
  v94 = v93;
  v95 = (*(v162 + 8))(v90, v163);
  if ((*(*v3 + 256))(v95) >= v94)
  {
    v135 = [*(v89 + 32) distanceFromLocation_];
    v137 = v136;
    if (*(a1 + *(v171 + 28)))
    {
      v138 = (*(*v3 + 264))(v135);
    }

    else
    {
      v138 = 250.0;
    }

    v139 = v159;
    v140 = v160;
    if (v137 < v138)
    {
      if (qword_27EF3EC00 != -1)
      {
        swift_once();
      }

      v141 = sub_24A4AB630();
      sub_24A378E18(v141, qword_27EF4E278);
      sub_24A37B740(v89, v139, &qword_27EF403A8, &qword_24A4BA760);
      sub_24A37B740(v89, v140, &qword_27EF403A8, &qword_24A4BA760);
      v142 = sub_24A4AB600();
      v143 = sub_24A4ABCE0();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v179[0] = v145;
        *v144 = 136315906;
        v146 = *v139;
        v147 = v139[1];

        sub_24A37EF2C(v139, &qword_27EF403A8, &qword_24A4BA760);
        v148 = sub_24A37BD58(v146, v147, v179);

        *(v144 + 4) = v148;
        *(v144 + 12) = 2048;
        *(v144 + 14) = v137;
        *(v144 + 22) = 2048;
        *(v144 + 24) = v138;
        *(v144 + 32) = 2080;
        v149 = v140 + v173[12];
        v150 = FMFAddress.debugDescription.getter();
        v152 = v151;
        sub_24A37EF2C(v140, &qword_27EF403A8, &qword_24A4BA760);
        v153 = sub_24A37BD58(v150, v152, v179);
        v89 = v165;

        *(v144 + 34) = v153;
        _os_log_impl(&dword_24A376000, v142, v143, "FMReverseGeocodingCache: Using cached request for %s due to location distance throttling - distance: %f, limit: %f -> %s.", v144, 0x2Au);
        swift_arrayDestroy();
        v154 = v145;
        v91 = v173;
        MEMORY[0x24C219130](v154, -1, -1);
        MEMORY[0x24C219130](v144, -1, -1);
      }

      else
      {

        sub_24A37EF2C(v140, &qword_27EF403A8, &qword_24A4BA760);
        sub_24A37EF2C(v139, &qword_27EF403A8, &qword_24A4BA760);
      }

      v155 = *(v91 + 48);
      memcpy(v179, (v89 + v155), sizeof(v179));
      v156 = (v89 + v155);
      v133 = v176;
      memcpy(v176, v156, 0x130uLL);
      sub_24A3E5340(v179, v178);
      sub_24A37EF2C(v89, &qword_27EF403A8, &qword_24A4BA760);
      return nullsub_1(v133);
    }
  }

  else
  {
    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v96 = sub_24A4AB630();
    sub_24A378E18(v96, qword_27EF4E278);
    v97 = v158;
    sub_24A37B740(v89, v158, &qword_27EF403A8, &qword_24A4BA760);

    v98 = sub_24A4AB600();
    v99 = sub_24A4ABCE0();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *&v179[0] = v101;
      *v100 = 136315394;
      v102 = *v3;
      v103 = sub_24A4AC420();
      v105 = sub_24A37BD58(v103, v104, v179);

      *(v100 + 4) = v105;
      *(v100 + 12) = 2080;
      v106 = *v97;
      v107 = v97[1];

      sub_24A37EF2C(v97, &qword_27EF403A8, &qword_24A4BA760);
      v108 = sub_24A37BD58(v106, v107, v179);
      v89 = v165;

      *(v100 + 14) = v108;
      _os_log_impl(&dword_24A376000, v98, v99, "%s: Cached request for %s is older than the 30s.", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v101, -1, -1);
      MEMORY[0x24C219130](v100, -1, -1);
    }

    else
    {

      sub_24A37EF2C(v97, &qword_27EF403A8, &qword_24A4BA760);
    }
  }

  sub_24A37EF2C(v89, &qword_27EF403A8, &qword_24A4BA760);
LABEL_35:
  sub_24A3BAFB0(v179);
  return memcpy(v176, v179, 0x130uLL);
}

void sub_24A442D8C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v89 = a3;
  v90 = a4;
  v8 = type metadata accessor for FMReverseGeocodingRequest();
  v85 = *(v8 - 8);
  v9 = *(v85 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v88 = &v83 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v83 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v83 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v83 - v18;
  v87 = a1[2];
  v20 = sub_24A448010();
  v22 = v21;
  v23 = qword_27EF400D8;
  swift_beginAccess();
  v91 = v23;
  if (*(*(v5 + v23) + 16))
  {

    sub_24A39B2C8(v20, v22);
    v25 = v24;

    if (v25)
    {
      if (qword_27EF3EC00 != -1)
      {
        swift_once();
      }

      v26 = sub_24A4AB630();
      sub_24A378E18(v26, qword_27EF4E278);
      sub_24A446A98(a1, v19, type metadata accessor for FMReverseGeocodingRequest);

      v27 = sub_24A4AB600();
      v28 = sub_24A4ABCE0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v96[0] = v30;
        *v29 = 136315394;
        v31 = *v5;
        v32 = sub_24A4AC420();
        v34 = sub_24A37BD58(v32, v33, v96);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2080;
        v35 = FMReverseGeocodingRequest.debugDescription.getter();
        v37 = v36;
        sub_24A447020(v19, type metadata accessor for FMReverseGeocodingRequest);
        v38 = sub_24A37BD58(v35, v37, v96);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_24A376000, v27, v28, "%s: Loading declined, we are already processing similar location: %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C219130](v30, -1, -1);
        v39 = v29;
LABEL_21:
        MEMORY[0x24C219130](v39, -1, -1);
LABEL_22:

        return;
      }

      sub_24A447020(v19, type metadata accessor for FMReverseGeocodingRequest);
      return;
    }
  }

  else
  {
  }

  if (a2)
  {
LABEL_11:
    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v40 = sub_24A4AB630();
    sub_24A378E18(v40, qword_27EF4E278);
    sub_24A446A98(a1, v17, type metadata accessor for FMReverseGeocodingRequest);

    v41 = sub_24A4AB600();
    v42 = sub_24A4ABCE0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v96[0] = v84;
      *v43 = 136315394;
      v44 = *v5;
      v45 = sub_24A4AC420();
      v47 = sub_24A37BD58(v45, v46, v96);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = FMReverseGeocodingRequest.debugDescription.getter();
      v50 = v49;
      sub_24A447020(v17, type metadata accessor for FMReverseGeocodingRequest);
      v51 = sub_24A37BD58(v48, v50, v96);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_24A376000, v41, v42, "%s: Loading new address for %s", v43, 0x16u);
      v52 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v52, -1, -1);
      MEMORY[0x24C219130](v43, -1, -1);
    }

    else
    {

      sub_24A447020(v17, type metadata accessor for FMReverseGeocodingRequest);
    }

    v53 = v88;
    sub_24A446A98(a1, v88, type metadata accessor for FMReverseGeocodingRequest);
    v54 = v86;
    sub_24A446A98(a1, v86, type metadata accessor for FMReverseGeocodingRequest);
    v55 = (*(v85 + 80) + 24) & ~*(v85 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v5;
    sub_24A44680C(v54, v56 + v55);
    v57 = (v56 + ((v9 + v55 + 7) & 0xFFFFFFFFFFFFFFF8));
    v59 = v89;
    v58 = v90;
    *v57 = v89;
    v57[1] = v58;
    v60 = type metadata accessor for FMReverseGeocodingOperation();
    v61 = objc_allocWithZone(v60);
    v61[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation__isFinished] = 0;
    sub_24A446A98(v53, &v61[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation_request], type metadata accessor for FMReverseGeocodingRequest);
    v62 = &v61[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation_completion];
    *v62 = sub_24A446E0C;
    v62[1] = v56;

    sub_24A3C8498(v59);
    v93.receiver = v61;
    v93.super_class = v60;
    v63 = objc_msgSendSuper2(&v93, sel_init);
    sub_24A447020(v53, type metadata accessor for FMReverseGeocodingRequest);
    [*(v5 + qword_27EF400E8) addOperation_];
    v64 = sub_24A448010();
    v66 = v65;
    v67 = v91;
    swift_beginAccess();
    v27 = v63;
    v68 = *(v5 + v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94[0] = *(v5 + v67);
    *(v5 + v67) = 0x8000000000000000;
    sub_24A430A8C(v27, v64, v66, isUniquelyReferenced_nonNull_native);

    *(v5 + v67) = v94[0];
    swift_endAccess();
    goto LABEL_22;
  }

  sub_24A441BE4(a1, v95);
  memcpy(v96, v95, sizeof(v96));
  if (sub_24A3D77F8(v96) == 1)
  {
    memcpy(v94, v95, sizeof(v94));
    sub_24A37EF2C(v94, &unk_27EF404E0, &unk_24A4B5230);
    goto LABEL_11;
  }

  memcpy(v94, v95, sizeof(v94));
  sub_24A37EF2C(v94, &unk_27EF404E0, &unk_24A4B5230);
  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v70 = sub_24A4AB630();
  sub_24A378E18(v70, qword_27EF4E278);
  v71 = v84;
  sub_24A446A98(a1, v84, type metadata accessor for FMReverseGeocodingRequest);

  v27 = sub_24A4AB600();
  v72 = sub_24A4ABCE0();

  if (os_log_type_enabled(v27, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v92 = v74;
    *v73 = 136315394;
    v75 = *v5;
    v76 = sub_24A4AC420();
    v78 = sub_24A37BD58(v76, v77, &v92);

    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    v79 = FMReverseGeocodingRequest.debugDescription.getter();
    v81 = v80;
    sub_24A447020(v71, type metadata accessor for FMReverseGeocodingRequest);
    v82 = sub_24A37BD58(v79, v81, &v92);

    *(v73 + 14) = v82;
    _os_log_impl(&dword_24A376000, v27, v72, "%s: Loading declined, we have already processed similar location: %s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v74, -1, -1);
    v39 = v73;
    goto LABEL_21;
  }

  sub_24A447020(v71, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A443764(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a1;
  v35 = sub_24A4AB690();
  v38 = *(v35 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AB6E0();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMReverseGeocodingRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a3 + qword_27EF400F0);
  sub_24A446A98(a4, v19, type metadata accessor for FMReverseGeocodingRequest);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a2;
  sub_24A44680C(v19, v22 + v20);
  v23 = (v22 + v21);
  v25 = v32;
  v24 = v33;
  *v23 = v32;
  v23[1] = v24;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v31;
  aBlock[4] = sub_24A446EC0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89160;
  v26 = _Block_copy(aBlock);

  v27 = a2;
  sub_24A3C8498(v25);
  swift_unknownObjectRetain();
  sub_24A4AB6B0();
  v39 = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  v28 = v35;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v15, v11, v26);
  _Block_release(v26);
  (*(v38 + 8))(v11, v28);
  (*(v36 + 8))(v15, v37);
}

uint64_t sub_24A443AE4(uint64_t *a1, void *a2, void *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v154 = a2;
  v11 = sub_24A4AB690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v148 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v147 = *(v15 - 8);
  v16 = *(v147 + 64);
  MEMORY[0x28223BE20](v15);
  v146 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6A0();
  v144 = *(v18 - 8);
  v145 = v18;
  v19 = *(v144 + 64);
  MEMORY[0x28223BE20](v18);
  v143 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AAAD0();
  v140 = *(v21 - 8);
  v141 = v21;
  v22 = *(v140 + 64);
  MEMORY[0x28223BE20](v21);
  v139 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FMReverseGeocodingRequest();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v135 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v142 = &v134 - v29;
  MEMORY[0x28223BE20](v28);
  v149 = &v134 - v30;
  v31 = qword_27EF400E0;
  v32 = *(a1 + qword_27EF400E0);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    v153 = a3;
    v150 = a5;
    *(a1 + qword_27EF400E0) = v34;
    if (qword_27EF3EC00 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v35 = sub_24A4AB630();
  v36 = sub_24A378E18(v35, qword_27EF4E278);
  swift_retain_n();
  v151 = v36;
  v37 = sub_24A4AB600();
  v38 = sub_24A4ABCE0();
  v39 = os_log_type_enabled(v37, v38);
  v152 = a4;
  v137 = v12;
  v138 = v11;
  v136 = v15;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v160[0] = v41;
    *v40 = 136315394;
    v42 = *a1;
    v43 = sub_24A4AC420();
    v45 = a6;
    v46 = sub_24A37BD58(v43, v44, v160);

    *(v40 + 4) = v46;
    a6 = v45;
    *(v40 + 12) = 2048;
    v47 = *(a1 + v31);

    *(v40 + 14) = v47;

    _os_log_impl(&dword_24A376000, v37, v38, "%s: Total operations processed: %ld.", v40, 0x16u);
    sub_24A37EEE0(v41);
    MEMORY[0x24C219130](v41, -1, -1);
    MEMORY[0x24C219130](v40, -1, -1);
  }

  else
  {
  }

  v48 = *(a1 + v31);
  v50 = v153;
  v49 = v154;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v48 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
  {
    sub_24A4AAA70();
    v67 = v66;

    v68 = sub_24A4AB600();
    v69 = sub_24A4ABCE0();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v160[0] = v71;
      *v70 = 136315394;
      v72 = *a1;
      v73 = sub_24A4AC420();
      v75 = a6;
      v76 = sub_24A37BD58(v73, v74, v160);

      *(v70 + 4) = v76;
      a6 = v75;
      v49 = v154;
      *(v70 + 12) = 2048;
      *(v70 + 14) = v48 / fabs(v67);
      _os_log_impl(&dword_24A376000, v68, v69, "%s: Current throughput: %f requests per second.", v70, 0x16u);
      sub_24A37EEE0(v71);
      MEMORY[0x24C219130](v71, -1, -1);
      v77 = v70;
      v50 = v153;
      MEMORY[0x24C219130](v77, -1, -1);
    }

    if (v49)
    {
      goto LABEL_8;
    }
  }

  else if (v154)
  {
LABEL_8:
    v51 = v149;
    sub_24A446A98(v50, v149, type metadata accessor for FMReverseGeocodingRequest);
    v52 = v49;
    v53 = sub_24A4AB600();
    v54 = sub_24A4ABCE0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v160[0] = v56;
      *v55 = 136315394;
      v57 = FMReverseGeocodingRequest.debugDescription.getter();
      v58 = v51;
      v60 = v59;
      sub_24A447020(v58, type metadata accessor for FMReverseGeocodingRequest);
      v61 = sub_24A37BD58(v57, v60, v160);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      swift_getErrorValue();
      v62 = sub_24A4AC310();
      v64 = sub_24A37BD58(v62, v63, v160);

      *(v55 + 14) = v64;
      _os_log_impl(&dword_24A376000, v53, v54, "FMReverseGeocodingCache: Geocoding error: %s for request: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v56, -1, -1);
      v65 = v55;
LABEL_10:
      MEMORY[0x24C219130](v65, -1, -1);

      goto LABEL_19;
    }

    v103 = v51;
    goto LABEL_18;
  }

  if (!a6)
  {
    v110 = v135;
    sub_24A446A98(v50, v135, type metadata accessor for FMReverseGeocodingRequest);

    v53 = sub_24A4AB600();
    v111 = sub_24A4ABCE0();

    if (os_log_type_enabled(v53, v111))
    {
      v112 = swift_slowAlloc();
      v113 = v110;
      v114 = swift_slowAlloc();
      v160[0] = v114;
      *v112 = 136315394;
      v115 = *a1;
      v116 = sub_24A4AC420();
      v118 = sub_24A37BD58(v116, v117, v160);

      *(v112 + 4) = v118;
      *(v112 + 12) = 2080;
      v119 = FMReverseGeocodingRequest.debugDescription.getter();
      v121 = v120;
      sub_24A447020(v113, type metadata accessor for FMReverseGeocodingRequest);
      v122 = sub_24A37BD58(v119, v121, v160);

      *(v112 + 14) = v122;
      _os_log_impl(&dword_24A376000, v53, v111, "%s: No map items received for request: %s", v112, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v114, -1, -1);
      v65 = v112;
      goto LABEL_10;
    }

    v103 = v110;
LABEL_18:
    sub_24A447020(v103, type metadata accessor for FMReverseGeocodingRequest);
LABEL_19:
    v104 = v50[2];
    v105 = sub_24A448010();
    v107 = v106;
    swift_beginAccess();
    sub_24A4A38B4(0, v105, v107);
    result = swift_endAccess();
    v109 = v152;
    if (v152)
    {
      sub_24A3BAFB0(v159);
      memcpy(v158, v159, sizeof(v158));
      v109(v158);
      memcpy(v160, v158, 0x130uLL);
      return sub_24A37EF2C(v160, &unk_27EF404E0, &unk_24A4B5230);
    }

    return result;
  }

  v78 = swift_unknownObjectRetain_n();
  FMFAddress.init(mapItem:)(v78, v157);
  v79 = v50[2];
  v80 = sub_24A448010();
  v82 = v81;
  swift_beginAccess();
  sub_24A4A38B4(0, v80, v82);
  swift_endAccess();
  v83 = v139;
  sub_24A4AAAC0();
  memcpy(v160, v157, 0x130uLL);
  sub_24A441270(v50, v160, v83);
  (*(v140 + 8))(v83, v141);
  v84 = v50;
  v85 = v142;
  sub_24A446A98(v84, v142, type metadata accessor for FMReverseGeocodingRequest);
  memcpy(v159, v157, sizeof(v159));

  sub_24A3E5340(v159, v158);
  v86 = sub_24A4AB600();
  v87 = sub_24A4ABCE0();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v154 = a6;
    v90 = v89;
    v156[0] = v89;
    *v88 = 136315650;
    v91 = *a1;
    v92 = sub_24A4AC420();
    v94 = sub_24A37BD58(v92, v93, v156);

    *(v88 + 4) = v94;
    *(v88 + 12) = 2080;
    v95 = FMReverseGeocodingRequest.debugDescription.getter();
    v97 = v96;
    sub_24A447020(v85, type metadata accessor for FMReverseGeocodingRequest);
    v98 = sub_24A37BD58(v95, v97, v156);

    *(v88 + 14) = v98;
    *(v88 + 22) = 2080;
    memcpy(v158, v159, sizeof(v158));
    v99 = FMFAddress.debugDescription.getter();
    v101 = v100;
    sub_24A3D785C(v159);
    v102 = sub_24A37BD58(v99, v101, v156);

    *(v88 + 24) = v102;
    _os_log_impl(&dword_24A376000, v86, v87, "%s: address received for request: %s - %s", v88, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v90, -1, -1);
    MEMORY[0x24C219130](v88, -1, -1);
  }

  else
  {
    sub_24A3D785C(v159);

    sub_24A447020(v85, type metadata accessor for FMReverseGeocodingRequest);
  }

  sub_24A3785D4();
  v124 = v143;
  v123 = v144;
  v125 = v145;
  (*(v144 + 104))(v143, *MEMORY[0x277D851C8], v145);
  v126 = sub_24A4ABDA0();
  (*(v123 + 8))(v124, v125);
  memcpy(v156, v157, sizeof(v156));
  v127 = swift_allocObject();
  v127[2] = a1;
  memcpy(v127 + 3, v157, 0x130uLL);
  v128 = v152;
  v129 = v150;
  v127[41] = v152;
  v127[42] = v129;
  v155[4] = sub_24A447010;
  v155[5] = v127;
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 1107296256;
  v155[2] = sub_24A388564;
  v155[3] = &unk_285D891B0;
  v130 = _Block_copy(v155);

  sub_24A3E5340(v156, v158);
  sub_24A3C8498(v128);
  v131 = v146;
  sub_24A4AB6B0();
  v158[0] = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  v132 = v148;
  v133 = v138;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v131, v132, v130);
  _Block_release(v130);
  swift_unknownObjectRelease();

  (*(v137 + 8))(v132, v133);
  (*(v147 + 8))(v131, v136);
  memcpy(v158, v157, sizeof(v158));
  sub_24A3D785C(v158);
}

uint64_t sub_24A4449A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a3;
  v7 = sub_24A4AB690();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24A4AB6E0();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v28);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMReverseGeocodingRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *(v4 + qword_27EF400F0);
  sub_24A446A98(a1, v18, type metadata accessor for FMReverseGeocodingRequest);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  sub_24A44680C(v18, v21 + v19);
  v22 = (v21 + v20);
  v23 = v27;
  *v22 = a2;
  v22[1] = v23;
  aBlock[4] = sub_24A446B70;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88FF8;
  v24 = _Block_copy(aBlock);

  sub_24A3C8498(a2);
  sub_24A4AB6B0();
  v30 = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v10, v24);
  _Block_release(v24);
  (*(v29 + 8))(v10, v7);
  (*(v11 + 8))(v14, v28);
}

void sub_24A444CFC(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v54 = a4;
  v7 = type metadata accessor for FMReverseGeocodingRequest();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = a2[2];
  v14 = sub_24A448010();
  v16 = v15;
  v17 = qword_27EF400D8;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {

    if (!a3)
    {
      return;
    }

LABEL_10:
    sub_24A441BE4(a2, v55);
    a3(v55);
    memcpy(v56, v55, sizeof(v56));
    sub_24A37EF2C(v56, &unk_27EF404E0, &unk_24A4B5230);
    return;
  }

  v19 = sub_24A39B2C8(v14, v16);
  if ((v20 & 1) == 0)
  {

    if (!a3)
    {
      return;
    }

    goto LABEL_10;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v22 = sub_24A4AB630();
  sub_24A378E18(v22, qword_27EF4E278);
  sub_24A446A98(a2, v12, type metadata accessor for FMReverseGeocodingRequest);
  v23 = v21;

  v24 = sub_24A4AB600();
  v25 = sub_24A4ABCE0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v50 = v25;
    v27 = v26;
    v51 = swift_slowAlloc();
    v56[0] = v51;
    *v27 = 136315650;
    v28 = *a1;
    v29 = sub_24A4AC420();
    v49 = v24;
    v31 = sub_24A37BD58(v29, v30, v56);
    v52 = v23;
    v32 = v31;

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = FMReverseGeocodingRequest.debugDescription.getter();
    v35 = sub_24A37BD58(v33, v34, v56);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2080;
    v36 = FMReverseGeocodingRequest.debugDescription.getter();
    v38 = v37;
    sub_24A447020(v12, type metadata accessor for FMReverseGeocodingRequest);
    v39 = sub_24A37BD58(v36, v38, v56);
    v23 = v52;

    *(v27 + 24) = v39;
    v40 = v49;
    _os_log_impl(&dword_24A376000, v49, v50, "%s: Attaching to an existing operation: %s, source: %s", v27, 0x20u);
    v41 = v51;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v41, -1, -1);
    MEMORY[0x24C219130](v27, -1, -1);
  }

  else
  {

    sub_24A447020(v12, type metadata accessor for FMReverseGeocodingRequest);
  }

  sub_24A446A98(a2, v10, type metadata accessor for FMReverseGeocodingRequest);
  v42 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = a1;
  sub_24A44680C(v10, v43 + v42);
  v44 = (v43 + ((v8 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
  v45 = v54;
  *v44 = a3;
  v44[1] = v45;
  v56[4] = sub_24A446B88;
  v56[5] = v43;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 1107296256;
  v56[2] = sub_24A388564;
  v56[3] = &unk_285D89048;
  v46 = _Block_copy(v56);
  v47 = objc_opt_self();

  sub_24A3C8498(a3);
  v48 = [v47 blockOperationWithBlock_];
  _Block_release(v46);

  [v48 addDependency_];
  [*(a1 + qword_27EF400E8) addOperation_];
}

uint64_t sub_24A44527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_24A4AB690();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24A4AB6E0();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v28);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMReverseGeocodingRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *(a1 + qword_27EF400F0);
  sub_24A446A98(a2, v18, type metadata accessor for FMReverseGeocodingRequest);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_24A44680C(v18, v21 + v19);
  v22 = (v21 + v20);
  v23 = v27;
  *v22 = a3;
  v22[1] = v23;
  aBlock[4] = sub_24A446BA0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89098;
  v24 = _Block_copy(aBlock);

  sub_24A3C8498(a3);
  sub_24A4AB6B0();
  v30 = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v10, v24);
  _Block_release(v24);
  (*(v29 + 8))(v10, v7);
  (*(v11 + 8))(v14, v28);
}

uint64_t sub_24A4455D8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v81 = a3;
  v82 = a4;
  v6 = sub_24A4AB690();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v85 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_24A4AB6E0();
  v84 = *(v86 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6A0();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v78 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AAAD0();
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v74 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMReverseGeocodingRequest();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v77 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  v25 = sub_24A3C9CEC(&qword_27EF404F0, qword_24A4BA768);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v73 - v27;
  v89 = a2;
  v73 = a2[2];
  v29 = sub_24A448010();
  v31 = v30;
  v32 = qword_27EF400C8;
  swift_beginAccess();
  v33 = a1;
  v34 = *(a1 + v32);
  if (*(v34 + 16) && (, v35 = sub_24A39B2C8(v29, v31), v37 = v36, , (v37 & 1) != 0))
  {
    sub_24A37B740(*(v34 + 56) + *(v21 + 72) * v35, v28, &qword_27EF403A8, &qword_24A4BA760);

    v38 = 0;
  }

  else
  {

    v38 = 1;
  }

  (*(v21 + 56))(v28, v38, 1, v20);
  if ((*(v21 + 48))(v28, 1, v20))
  {
    sub_24A37EF2C(v28, &qword_27EF404F0, qword_24A4BA768);
    sub_24A3BAFB0(v94);
  }

  else
  {
    sub_24A37B740(v28, v24, &qword_27EF403A8, &qword_24A4BA760);
    sub_24A37EF2C(v28, &qword_27EF404F0, qword_24A4BA768);
    memcpy(v93, &v24[*(v20 + 48)], sizeof(v93));
    sub_24A3E5340(v93, v95);
    sub_24A37EF2C(v24, &qword_27EF403A8, &qword_24A4BA760);
    memcpy(v95, v93, 0x130uLL);
    nullsub_1(v95);
    memcpy(v94, v95, 0x130uLL);
  }

  v39 = v33;
  v40 = v77;
  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v41 = sub_24A4AB630();
  sub_24A378E18(v41, qword_27EF4E278);
  sub_24A446A98(v89, v40, type metadata accessor for FMReverseGeocodingRequest);
  sub_24A37B740(v94, v95, &unk_27EF404E0, &unk_24A4B5230);
  sub_24A37B740(v94, v95, &unk_27EF404E0, &unk_24A4B5230);

  v42 = sub_24A4AB600();
  v43 = sub_24A4ABCE0();

  sub_24A37EF2C(v94, &unk_27EF404E0, &unk_24A4B5230);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v90 = v45;
    *v44 = 136315650;
    v46 = *v39;
    v47 = sub_24A4AC420();
    v49 = sub_24A37BD58(v47, v48, &v90);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    v50 = FMReverseGeocodingRequest.debugDescription.getter();
    v52 = v51;
    sub_24A447020(v40, type metadata accessor for FMReverseGeocodingRequest);
    v53 = sub_24A37BD58(v50, v52, &v90);

    *(v44 + 14) = v53;
    *(v44 + 22) = 2080;
    memcpy(v93, v94, sizeof(v93));
    memcpy(v95, v94, 0x130uLL);
    if (sub_24A3D77F8(v95) == 1)
    {
      memcpy(v92, v93, sizeof(v92));
      sub_24A37B740(v94, v91, &unk_27EF404E0, &unk_24A4B5230);
      sub_24A37EF2C(v92, &unk_27EF404E0, &unk_24A4B5230);
      sub_24A37EF2C(v94, &unk_27EF404E0, &unk_24A4B5230);
      v54 = 0xE400000000000000;
      v55 = 1701736302;
    }

    else
    {
      sub_24A37B740(v94, v92, &unk_27EF404E0, &unk_24A4B5230);
      v56 = FMFAddress.debugDescription.getter();
      v54 = v57;
      memcpy(v92, v93, sizeof(v92));
      sub_24A3D785C(v92);
      sub_24A37EF2C(v94, &unk_27EF404E0, &unk_24A4B5230);
      v55 = v56;
    }

    v58 = sub_24A37BD58(v55, v54, &v90);

    *(v44 + 24) = v58;
    _os_log_impl(&dword_24A376000, v42, v43, "%s: Existing operation completed, notifying the duplicate: %s - %s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v45, -1, -1);
    MEMORY[0x24C219130](v44, -1, -1);
  }

  else
  {
    sub_24A37EF2C(v94, &unk_27EF404E0, &unk_24A4B5230);

    sub_24A447020(v40, type metadata accessor for FMReverseGeocodingRequest);
  }

  memcpy(v93, v94, sizeof(v93));
  if (sub_24A3D77F8(v93) != 1)
  {
    memcpy(v95, v94, 0x130uLL);
    memcpy(v92, v94, sizeof(v92));
    sub_24A3E5340(v92, v91);
    v59 = [v73 timestamp];
    v60 = v74;
    sub_24A4AAAA0();

    sub_24A441270(v89, v95, v60);
    sub_24A37EF2C(v94, &unk_27EF404E0, &unk_24A4B5230);
    (*(v75 + 8))(v60, v76);
  }

  sub_24A3785D4();
  v62 = v78;
  v61 = v79;
  v63 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277D851C8], v80);
  v64 = sub_24A4ABDA0();
  (*(v61 + 8))(v62, v63);
  v65 = swift_allocObject();
  v67 = v81;
  v66 = v82;
  v65[2] = v81;
  v65[3] = v66;
  memcpy(v65 + 4, v94, 0x130uLL);
  v91[4] = sub_24A446C60;
  v91[5] = v65;
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 1107296256;
  v91[2] = sub_24A388564;
  v91[3] = &unk_285D890E8;
  v68 = _Block_copy(v91);
  sub_24A37B740(v94, v92, &unk_27EF404E0, &unk_24A4B5230);
  sub_24A3C8498(v67);
  v69 = v83;
  sub_24A4AB6B0();
  v92[0] = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  v70 = v85;
  v71 = v88;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v69, v70, v68);
  _Block_release(v68);

  sub_24A37EF2C(v94, &unk_27EF404E0, &unk_24A4B5230);
  (*(v87 + 8))(v70, v71);
  (*(v84 + 8))(v69, v86);
}

uint64_t *FMFReverseGeocodingCache.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  swift_allocObject();
  sub_24A37B740(a1, v6, &qword_27EF3F650, &qword_24A4B5A10);
  v9 = sub_24A37B7A8(v6);
  sub_24A37EF2C(a1, &qword_27EF3F650, &qword_24A4B5A10);
  return v9;
}

double sub_24A4461FC(uint64_t a1)
{
  if (qword_27EF3EC08 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x28223BE20](a1);
  sub_24A4ABD70();
  return v3;
}

uint64_t sub_24A4462C0(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v5 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for FMFLocation();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A3C9CEC(&qword_27EF3FE50, &unk_24A4B8C10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v23 - v15);
  v17 = type metadata accessor for FMReverseGeocodingRequest();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A446A98(a1, v12, type metadata accessor for FMFLocation);
  sub_24A37B740(v3 + qword_27EF4E178, v8, &qword_27EF3F650, &qword_24A4B5A10);
  sub_24A446558(v12, v8, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24A37EF2C(v16, &qword_27EF3FE50, &unk_24A4B8C10);
    sub_24A3BAFB0(v27);
    memcpy(v26, v27, sizeof(v26));
    return v24(v26);
  }

  else
  {
    sub_24A44680C(v16, v21);
    sub_24A4416C0(v21, v24, v25);
    return sub_24A447020(v21, type metadata accessor for FMReverseGeocodingRequest);
  }
}

uint64_t sub_24A446558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  if (v6 && (v7 = *a1, v8 = type metadata accessor for FMFLocation(), memcpy(__dst, (a1 + *(v8 + 44)), 0x161uLL), sub_24A3B9C24(__dst) != 1))
  {
    v11 = __dst[38];
    v12 = *(a1 + 33);
    v13 = v12 == 2;
    if (v12 == 2 && (*(a1 + 32) & 1) == 0)
    {
      v15 = *(a1 + 24);

      v16 = v11;
      sub_24A447020(a1, type metadata accessor for FMFLocation);
      v13 = (v15 - 3) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {

      v14 = v11;
      sub_24A447020(a1, type metadata accessor for FMFLocation);
    }

    *a3 = v7;
    a3[1] = v6;
    v17 = type metadata accessor for FMReverseGeocodingRequest();
    *(a3 + v17[8]) = v13;
    *(a3 + v17[7]) = v12 == 2;
    a3[2] = v11;
    sub_24A37BE24(a2, a3 + v17[6], &qword_27EF3F650, &qword_24A4B5A10);
    return (*(*(v17 - 1) + 56))(a3, 0, 1, v17);
  }

  else
  {
    sub_24A37EF2C(a2, &qword_27EF3F650, &qword_24A4B5A10);
    sub_24A447020(a1, type metadata accessor for FMFLocation);
    v9 = type metadata accessor for FMReverseGeocodingRequest();
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t *FMFReverseGeocodingCache.init(preferredLocale:)(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_24A37B740(a1, &v8 - v4, &qword_27EF3F650, &qword_24A4B5A10);
  v6 = sub_24A37B7A8(v5);
  sub_24A37EF2C(a1, &qword_27EF3F650, &qword_24A4B5A10);
  return v6;
}

uint64_t sub_24A44680C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMReverseGeocodingRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMFReverseGeocodingCache.deinit()
{
  v1 = qword_27EF400C0;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_27EF400C8);

  v4 = *(v0 + qword_27EF400D0);

  v5 = *(v0 + qword_27EF400D8);

  sub_24A37EF2C(v0 + qword_27EF4E178, &qword_27EF3F650, &qword_24A4B5A10);
  return v0;
}

uint64_t FMFReverseGeocodingCache.__deallocating_deinit()
{
  v1 = qword_27EF400C0;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_27EF400C8);

  v4 = *(v0 + qword_27EF400D0);

  v5 = *(v0 + qword_27EF400D8);

  sub_24A37EF2C(v0 + qword_27EF4E178, &qword_27EF3F650, &qword_24A4B5A10);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A446A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A446B18()
{
  result = qword_27EF408E0;
  if (!qword_27EF408E0)
  {
    sub_24A4AB690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF408E0);
  }

  return result;
}

uint64_t sub_24A446BB8(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMReverseGeocodingRequest() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

void *sub_24A446C60()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  result = memcpy(v5, (v1 + 32), sizeof(v5));
  if (v2)
  {
    return v2(v5);
  }

  return result;
}

uint64_t sub_24A446CB4()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[8];
  v9 = sub_24A4AAB80();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  if (*(v0 + v4))
  {
    v11 = *(v0 + v4 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_24A446E0C(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for FMReverseGeocodingRequest() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_24A443764(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_24A446EC0()
{
  v1 = *(type metadata accessor for FMReverseGeocodingRequest() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  return sub_24A443AE4(v5, v6, (v0 + v2), v8, v9, v10);
}

void *sub_24A446F60(uint64_t a1, const void *a2, void (*a3)(_BYTE *))
{
  result = memcpy(__dst, a2, sizeof(__dst));
  if (a3)
  {
    memcpy(__src, a2, sizeof(__src));
    nullsub_1(__src);
    memcpy(v6, __src, sizeof(v6));
    sub_24A3E5340(__dst, v8);
    a3(v6);
    memcpy(v8, v6, sizeof(v8));
    return sub_24A37EF2C(v8, &unk_27EF404E0, &unk_24A4B5230);
  }

  return result;
}

uint64_t sub_24A447020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FMFAddUpdateLabelRequest()
{
  result = qword_27EF404F8;
  if (!qword_27EF404F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4470FC()
{
  result = type metadata accessor for FMFLabelledLocation();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_24A447194()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = sub_24A4AA790();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_24A4AA780();
  type metadata accessor for FMFLabelledLocation();
  sub_24A447550();
  v3 = sub_24A4AA770();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = sub_24A4AAA00();
  v14[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v14];

  v9 = v14[0];
  if (v8)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
    sub_24A3A60B4(v15, v17);
    sub_24A37EE84(v17, v15);
    v10 = sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
    if (swift_dynamicCast())
    {
      v16 = v10;
      v15[0] = v14[0];
      swift_beginAccess();
      sub_24A3A6CEC(v15, 0xD000000000000010, 0x800000024A4B1EF0);
      swift_endAccess();
      sub_24A386E10(v3, v5);
      sub_24A37EEE0(v17);
    }

    else
    {
      sub_24A37EEE0(v17);
      sub_24A386E10(v3, v5);
    }
  }

  else
  {
    v11 = v9;
    v12 = sub_24A4AA950();

    swift_willThrow();
    sub_24A386E10(v3, v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A44742C()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_24A3D7178(v0 + qword_27EF4E1D0);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A447550()
{
  result = qword_27EF3F348;
  if (!qword_27EF3F348)
  {
    type metadata accessor for FMFLabelledLocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F348);
  }

  return result;
}

uint64_t type metadata accessor for FMFRespondToInviteRequest()
{
  result = qword_27EF40508;
  if (!qword_27EF40508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A447648()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF4E1E8);
  v3 = *(v0 + qword_27EF4E1E8 + 8);
  v7 = MEMORY[0x277D837D0];
  v6[0] = v2;
  v6[1] = v3;
  swift_beginAccess();

  sub_24A3A6CEC(v6, 25705, 0xE200000000000000);
  v4 = *(v1 + qword_27EF4E1F0);
  v7 = MEMORY[0x277D839B0];
  LOBYTE(v6[0]) = v4;
  sub_24A3A6CEC(v6, 0x6465747065636361, 0xE800000000000000);
  return swift_endAccess();
}

uint64_t sub_24A44772C()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_27EF4E1E8 + 8);

  return v0;
}

uint64_t sub_24A447810()
{
  v0 = *sub_24A44772C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFAskToFollowRequest()
{
  result = qword_27EF40518;
  if (!qword_27EF40518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A447908()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF4E208);
  v3 = sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  v7 = v3;
  v6[0] = v2;
  swift_beginAccess();

  sub_24A3A6CEC(v6, 7562345, 0xE300000000000000);
  v4 = *(v1 + qword_27EF4E210);
  v7 = v3;
  v6[0] = v4;

  sub_24A3A6CEC(v6, 0x736C69616D65, 0xE600000000000000);
  return swift_endAccess();
}

uint64_t sub_24A4479E0()
{
  v1 = *(v0 + qword_27EF4E208);

  v2 = *(v0 + qword_27EF4E210);
}

uint64_t sub_24A447A20()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_27EF4E208);

  v9 = *(v0 + qword_27EF4E210);

  return v0;
}

uint64_t sub_24A447B10()
{
  v0 = *sub_24A447A20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FMReverseGeocodingRequest.debugDescription.getter()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4BA880);
  MEMORY[0x24C217D50](0x69746E656469203ALL, 0xEE00203A72656966);
  MEMORY[0x24C217D50](*v0, v0[1]);
  MEMORY[0x24C217D50](0x203A6873616820, 0xE700000000000000);
  v1 = v0[2];
  v2 = sub_24A448010();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](0x203A74616C20, 0xE600000000000000);
  [v1 coordinate];
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x203A676E6F6C20, 0xE700000000000000);
  [v1 coordinate];
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x3A73756964617220, 0xE900000000000020);
  [v1 horizontalAccuracy];
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x3A74656B63756220, 0xE900000000000020);
  [v1 horizontalAccuracy];
  v3 = sub_24A4AC240();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0xD000000000000015, 0x800000024A4B1F80);
  v4 = type metadata accessor for FMReverseGeocodingRequest();
  if (*(v0 + *(v4 + 28)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v4 + 28)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v5, v6);

  MEMORY[0x24C217D50](0xD000000000000013, 0x800000024A4B1FA0);
  MEMORY[0x24C217D50](v5, v6);

  MEMORY[0x24C217D50](0xD000000000000011, 0x800000024A4B1FC0);
  [v1 referenceFrame];
  v7 = sub_24A4AC240();
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0;
}

uint64_t FMReverseGeocodingRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMReverseGeocodingRequest.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMReverseGeocodingRequest() + 24);

  return sub_24A38D9BC(v3, a1);
}

uint64_t sub_24A448010()
{
  [v0 coordinate];
  v2 = round(v1 * 10000.0) / 10000.0;
  [v0 coordinate];
  v4 = round(v3 * 10000.0) / 10000.0;
  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24A4BA890;
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;
  v8 = [v0 referenceFrame];
  v9 = MEMORY[0x277D84D30];
  *(v5 + 136) = MEMORY[0x277D84CC0];
  *(v5 + 144) = v9;
  *(v5 + 112) = v8;
  [v0 horizontalAccuracy];
  if (v10 >= 5.0)
  {
    if (v10 >= 10.0)
    {
      if (v10 >= 25.0)
      {
        v11 = 50;
        v12 = 100;
        v13 = 1000;
        if (v10 < 250.0)
        {
          v13 = 250;
        }

        if (v10 >= 100.0)
        {
          v12 = v13;
        }

        if (v10 >= 50.0)
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = 25;
      }
    }

    else
    {
      v11 = 10;
    }
  }

  else
  {
    v11 = 5;
  }

  v14 = MEMORY[0x277D83C10];
  *(v5 + 176) = MEMORY[0x277D83B88];
  *(v5 + 184) = v14;
  *(v5 + 152) = v11;

  return sub_24A4AB860();
}

uint64_t type metadata accessor for FMReverseGeocodingRequest()
{
  result = qword_27EF40540;
  if (!qword_27EF40540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMReverseGeocodingRequest.hash(into:)()
{
  v1 = v0;
  v2 = sub_24A4AAB80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_24A4AB8F0();
  v13 = v0[2];
  sub_24A4ABDC0();
  v14 = type metadata accessor for FMReverseGeocodingRequest();
  sub_24A38D9BC(v1 + v14[6], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_24A4AC380();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_24A4AC380();
    sub_24A448AA8(&qword_27EF40528, MEMORY[0x277CC9788]);
    sub_24A4AB7E0();
    (*(v3 + 8))(v6, v2);
  }

  v15 = *(v1 + v14[7]);
  sub_24A4AC380();
  v16 = *(v1 + v14[8]);
  return sub_24A4AC380();
}

uint64_t FMReverseGeocodingRequest.hashValue.getter()
{
  sub_24A4AC360();
  FMReverseGeocodingRequest.hash(into:)();
  return sub_24A4AC3A0();
}

uint64_t sub_24A448468()
{
  sub_24A4AC360();
  FMReverseGeocodingRequest.hash(into:)();
  return sub_24A4AC3A0();
}

uint64_t sub_24A4484AC()
{
  sub_24A4AC360();
  FMReverseGeocodingRequest.hash(into:)();
  return sub_24A4AC3A0();
}

uint64_t sub_24A4484F0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AC390();
  return sub_24A4AC3A0();
}

uint64_t sub_24A448564()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AC390();
  return sub_24A4AC3A0();
}

uint64_t _s7FMFCore25FMReverseGeocodingRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24A4AAB80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_24A3C9CEC(&qword_27EF40550, &qword_24A4BA9F8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24A4AC270() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_24A37B428(0, &qword_27EF3F358, 0x277D82BB8);
  v17 = a1[2];
  v18 = a2[2];
  if ((sub_24A4ABDB0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v27 = type metadata accessor for FMReverseGeocodingRequest();
  v19 = v27[6];
  v20 = *(v13 + 48);
  sub_24A38D9BC(a1 + v19, v16);
  sub_24A38D9BC(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_24A38D9BC(v16, v12);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v20], v4);
      sub_24A448AA8(&qword_27EF40558, MEMORY[0x277CC9788]);
      v22 = sub_24A4AB810();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_24A37EF2C(v16, &qword_27EF3F650, &qword_24A4B5A10);
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_24A37EF2C(v16, &qword_27EF40550, &qword_24A4BA9F8);
    goto LABEL_13;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_24A37EF2C(v16, &qword_27EF3F650, &qword_24A4B5A10);
LABEL_12:
  if (*(a1 + v27[7]) == *(a2 + v27[7]))
  {
    v24 = *(a1 + v27[8]) ^ *(a2 + v27[8]) ^ 1;
    return v24 & 1;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

void sub_24A4489F4()
{
  sub_24A37B428(319, &qword_27EF40200, 0x277CE41F8);
  if (v0 <= 0x3F)
  {
    sub_24A37ECA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24A448AA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A448AF0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for FMFLocationAlert();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v24 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v23 = *(a1 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21 = a2;
    v22 = a1;
    while (v13 < *(a1 + 16))
    {
      v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v16 = *(v6 + 72);
      sub_24A3992EC(a1 + v15 + v16 * v13, v12, type metadata accessor for FMFLocationAlert);
      v17 = sub_24A44F594(v12, a2);
      if (v2)
      {
        sub_24A39A7B8(v12, type metadata accessor for FMFLocationAlert);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_24A39983C(v12, v24, type metadata accessor for FMFLocationAlert);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3DBDE8(0, *(v14 + 16) + 1, 1);
          v14 = v25;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24A3DBDE8(v19 > 1, v20 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_24A39983C(v24, v14 + v15 + v20 * v16, type metadata accessor for FMFLocationAlert);
        a2 = v21;
        a1 = v22;
      }

      else
      {
        result = sub_24A39A7B8(v12, type metadata accessor for FMFLocationAlert);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_24A448DBC()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v58 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v58);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFDataManager<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v20 = *(v1 + 24);

  sub_24A3C8470(v1 + 32);
  v21 = *(v1 + 48);

  sub_24A3873B4(v1 + 80);
  v22 = *(v1 + 536);

  v23 = *(v1 + 544);

  v24 = *(v1 + 552);

  v25 = *(v1 + 560);

  v26 = *(v1 + 568);

  v27 = *(v1 + 576);

  v28 = *(v1 + 584);

  v29 = *(v1 + 592);

  v30 = *(v1 + 600);

  v31 = *(v1 + 608);

  v32 = *(v1 + 616);

  v33 = *(v1 + 624);

  v34 = *(v1 + 632);

  v35 = *(v1 + 640);

  v36 = *(v1 + 648);

  v37 = *(v1 + 656);

  v38 = *(v1 + 664);

  v39 = *(v1 + 680);

  v40 = *(v1 + 688);

  v41 = *(v1 + 696);

  v42 = *(v1 + 712);

  v43 = *(v1 + 720);

  v44 = *(v1 + 728);

  v45 = *(v1 + 736);

  v46 = *(v1 + 768);
  sub_24A37F110(*(v1 + 744), *(v1 + 752), *(v1 + 760));
  v47 = *(v1 + 1040);
  v48 = *(v1 + 1048);
  v49 = *(v1 + 1056);
  v50 = *(v1 + 1064);
  v51 = *(v1 + 1072);
  v52 = *(v1 + 1080);
  v53 = *(v1 + 1088);
  sub_24A3B2D38(*(v1 + 1032));
  v54 = *(v1 + 1096);

  v55 = *(v1 + 1104);

  v56 = *(v1 + 1112);

  return v1;
}

uint64_t sub_24A4490B8()
{
  sub_24A448DBC();

  return swift_deallocClassInstance();
}

uint64_t sub_24A4490EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 784);
  *a2 = *(result + 776);
  *(a2 + 8) = v2;
  return result;
}

__n128 sub_24A449100@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1000);
  *(a2 + 192) = *(a1 + 984);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 1016);
  v3 = *(a1 + 936);
  *(a2 + 128) = *(a1 + 920);
  *(a2 + 144) = v3;
  v4 = *(a1 + 968);
  *(a2 + 160) = *(a1 + 952);
  *(a2 + 176) = v4;
  v5 = *(a1 + 872);
  *(a2 + 64) = *(a1 + 856);
  *(a2 + 80) = v5;
  v6 = *(a1 + 904);
  *(a2 + 96) = *(a1 + 888);
  *(a2 + 112) = v6;
  v7 = *(a1 + 808);
  *a2 = *(a1 + 792);
  *(a2 + 16) = v7;
  result = *(a1 + 840);
  *(a2 + 32) = *(a1 + 824);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_24A449148@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 536);
  v3 = *(v2 + 88);
  v12[0] = *(v2 + 72);
  v12[1] = v3;
  v13[0] = *(v2 + 104);
  *(v13 + 9) = *(v2 + 113);
  if (*&v12[0])
  {
    v4 = *(v2 + 88);
    *a2 = *(v2 + 72);
    a2[1] = v4;
    a2[2] = *(v2 + 104);
    *(a2 + 41) = *(v2 + 113);
  }

  else
  {
    v5 = *(a1 + 1048);
    v10[0] = *(a1 + 1032);
    v10[1] = v5;
    v11[0] = *(a1 + 1064);
    v6 = v11[0];
    *(v11 + 9) = *(a1 + 1073);
    v7 = *(v11 + 9);
    *a2 = v10[0];
    a2[1] = v5;
    a2[2] = v6;
    *(a2 + 41) = v7;
    sub_24A37B740(v10, &v9, &qword_27EF3FD68, &unk_24A4B9F40);
  }

  return sub_24A37B740(v12, v10, &qword_27EF3FD68, &unk_24A4B9F40);
}

uint64_t sub_24A44927C@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v4 = *(a1 + 536);
  result = swift_beginAccess();
  v6 = *(v4 + 32);
  v7 = v6[2];
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_5:
    *a2 = v8;
    return result;
  }

  v11[9] = v2;
  v8 = sub_24A40B47C(v7, 0);
  v9 = *(type metadata accessor for FMFFriend() - 8);
  v10 = sub_24A40C240(v11, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v6);

  result = sub_24A3A13C0();
  if (v10 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A4493A0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v2 + 56);
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  result = sub_24A4ABD70();
  v18 = v24;
  v19 = *(v24 + 16);
  if (v19)
  {
    v20 = 0;
    while (v20 < *(v18 + 16))
    {
      sub_24A3992EC(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v10, type metadata accessor for FMFFriend);
      v21 = *v10 == a1 && v10[1] == a2;
      if (v21 || (sub_24A4AC270() & 1) != 0)
      {

        sub_24A39983C(v10, v13, type metadata accessor for FMFFriend);
        sub_24A39983C(v13, v15, type metadata accessor for FMFFriend);
        v22 = *(v15 + 5);

        sub_24A39A7B8(v15, type metadata accessor for FMFFriend);
        return v22;
      }

      ++v20;
      result = sub_24A39A7B8(v10, type metadata accessor for FMFFriend);
      if (v19 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

void *sub_24A4495F8(uint64_t a1)
{
  v3 = type metadata accessor for FMFFriend();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 56);
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v9 = v28;
  v10 = *(v28 + 16);
  if (v10)
  {
    v27[1] = a1;
    v28 = MEMORY[0x277D84F90];
    sub_24A3DBDA8(0, v10, 0);
    v11 = v28;
    v12 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_24A3992EC(v12, v7, type metadata accessor for FMFFriend);
      v15 = *v7;
      v14 = v7[1];

      sub_24A39A7B8(v7, type metadata accessor for FMFFriend);
      v28 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_24A3DBDA8((v16 > 1), v17 + 1, 1);
        v11 = v28;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v19 = sub_24A3999E0(v11);

  v21 = sub_24A3999E0(v20);

  v22 = sub_24A473E64(v19, v21);

  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = sub_24A3A11D8(*(v22 + 16), 0);
  v25 = sub_24A3A1268(&v28, v24 + 4, v23, v22);
  sub_24A3A13C0();
  if (v25 != v23)
  {
    __break(1u);
LABEL_11:

    return MEMORY[0x277D84F90];
  }

  return v24;
}

uint64_t sub_24A44988C(uint64_t a1, uint64_t a2)
{
  v5 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v28 = type metadata accessor for FMFFriend();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v28);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *(v2 + 56);
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  result = sub_24A4ABD70();
  v21 = v29;
  v22 = *(v29 + 16);
  if (v22)
  {
    v23 = 0;
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      sub_24A3992EC(v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v13, type metadata accessor for FMFFriend);
      v24 = *v13 == a1 && v13[1] == a2;
      if (v24 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      ++v23;
      result = sub_24A39A7B8(v13, type metadata accessor for FMFFriend);
      if (v22 == v23)
      {
        goto LABEL_10;
      }
    }

    sub_24A39983C(v13, v16, type metadata accessor for FMFFriend);
    sub_24A39983C(v16, v18, type metadata accessor for FMFFriend);
    sub_24A37B740(&v18[*(v28 + 80)], v8, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A39A7B8(v18, type metadata accessor for FMFFriend);
    v25 = type metadata accessor for FMFLocation();
    if ((*(*(v25 - 8) + 48))(v8, 1, v25) == 1)
    {
      sub_24A37EF2C(v8, &qword_27EF3F480, &unk_24A4B8C20);
      return 1;
    }

    else
    {
      v26 = v8[33];
      sub_24A39A7B8(v8, type metadata accessor for FMFLocation);
      return v26 != 3;
    }
  }

  else
  {
LABEL_10:

    return 0;
  }
}

void sub_24A449BD8(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[85];

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = a2[72];
    a2[72] = 0;

    v10 = a2[78];
    a2[78] = 0;

    v8 = 1;
    swift_beginAccess();
    v11 = a2[79];
    a2[79] = 0;

    v12 = a2[85];
    a2[85] = a1;

    sub_24A387F3C();
  }

  *a3 = v8;
}

void sub_24A449CAC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 544);

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(a2 + 576);
    *(a2 + 576) = 0;

    v10 = *(a2 + 544);
    *(a2 + 544) = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A449D4C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 552);

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(a2 + 576);
    *(a2 + 576) = 0;

    v10 = *(a2 + 552);
    *(a2 + 552) = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A449DEC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 560);

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(a2 + 576);
    *(a2 + 576) = 0;

    v10 = *(a2 + 560);
    *(a2 + 560) = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A449E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 568);

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(a2 + 576);
    *(a2 + 576) = 0;

    v10 = *(a2 + 568);
    *(a2 + 568) = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

uint64_t sub_24A449F2C(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMFFriend();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v50 - v17;
  result = MEMORY[0x28223BE20](v16);
  v21 = a1[1];
  if (v21)
  {
    v50[0] = v50 - v20;
    v50[1] = a3;
    v22 = a4;
    v53 = v5;
    v23 = *a1;
    v24 = *(a2 + 16);

    if (v24)
    {
      v25 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v26 = *(v11 + 72);
      while (1)
      {
        sub_24A3992EC(v25, v15, type metadata accessor for FMFFriend);
        v27 = v23 == *v15 && v21 == v15[1];
        if (v27 || (sub_24A4AC270() & 1) != 0)
        {
          break;
        }

        sub_24A39A7B8(v15, type metadata accessor for FMFFriend);
        v25 += v26;
        if (!--v24)
        {
          goto LABEL_10;
        }
      }

      sub_24A39983C(v15, v18, type metadata accessor for FMFFriend);
      v34 = v18;
      v35 = v50[0];
      sub_24A39983C(v34, v50[0], type metadata accessor for FMFFriend);
      v36 = *(v35 + *(v10 + 52));
      v28 = v22;
      if (*v22)
      {
        v37 = 0;
      }

      else
      {
        v37 = 8236;
      }

      if (*v22)
      {
        v38 = 0xE000000000000000;
      }

      else
      {
        v38 = 0xE200000000000000;
      }

      v51 = v23;
      v52 = v21;
      v39 = sub_24A4AB9F0();
      v41 = v40;
      v51 = v37;
      v52 = v38;

      MEMORY[0x24C217D50](v39, v41);

      MEMORY[0x24C217D50](47, 0xE100000000000000);

      v42 = v51;
      v43 = v52;
      v44 = (v35 + *(v10 + 76));
      if (v44[1])
      {
        v45 = v44[5];
        v46 = v44[6];
        v47 = HIBYTE(v46) & 0xF;
        if ((v46 & 0x2000000000000000) == 0)
        {
          v47 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v47)
        {
        }

        else
        {
          v45 = 0;
          v46 = 0xE000000000000000;
        }
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;
      }

      v51 = v42;
      v52 = v43;

      MEMORY[0x24C217D50](v45, v46);

      if (v36)
      {
        v48 = 10518754;
      }

      else
      {
        v48 = 0;
      }

      if (v36)
      {
        v49 = 0xA300000000000000;
      }

      else
      {
        v49 = 0xE000000000000000;
      }

      MEMORY[0x24C217D50](v48, v49);

      MEMORY[0x24C217D50](v51, v52);

      result = sub_24A39A7B8(v50[0], type metadata accessor for FMFFriend);
    }

    else
    {
LABEL_10:
      v28 = v22;
      if (*v22)
      {
        v29 = 0;
      }

      else
      {
        v29 = 8236;
      }

      if (*v22)
      {
        v30 = 0xE000000000000000;
      }

      else
      {
        v30 = 0xE200000000000000;
      }

      v51 = v23;
      v52 = v21;
      v31 = sub_24A4AB9F0();
      v33 = v32;
      v51 = v29;
      v52 = v30;

      MEMORY[0x24C217D50](v31, v33);

      MEMORY[0x24C217D50](v51, v52);
    }

    *v28 = 0;
  }

  return result;
}

uint64_t sub_24A44A358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FMFLocation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v8 + 56);
  v26(a3, 1, 1, v7, v10);
  result = swift_beginAccess();
  v14 = *(a1 + 632);
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v23 = v7;
      v24 = a3;
      v25 = v3;
      v16 = *a2;
      v17 = a2[1];
      v18 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

      v19 = 0;
      while (v19 < *(v14 + 16))
      {
        sub_24A3992EC(v18 + *(v8 + 72) * v19, v12, type metadata accessor for FMFLocation);
        v20 = v12[1];
        if (v20)
        {
          v21 = *v12 == v16 && v20 == v17;
          if (v21 || (sub_24A4AC270() & 1) != 0)
          {
            v22 = v24;
            sub_24A37EF2C(v24, &qword_27EF3F480, &unk_24A4B8C20);

            sub_24A39983C(v12, v22, type metadata accessor for FMFLocation);
            return (v26)(v22, 0, 1, v23);
          }
        }

        ++v19;
        result = sub_24A39A7B8(v12, type metadata accessor for FMFLocation);
        if (v15 == v19)
        {
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24A44A59C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 56);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_24A454408;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89668;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_24A44A880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v15 = sub_24A45461C((a1 + 616), a2, a3);

  v17 = *(*(a1 + 616) + 16);
  if (v17 < v15)
  {
    __break(1u);
  }

  else
  {
    v26 = v11;
    v27 = v7;
    sub_24A45455C(v15, v17);
    swift_endAccess();
    v19 = sub_24A448D6C();
    if (!*v18)
    {
      (v19)(aBlock, 0);
      goto LABEL_6;
    }

    v20 = v18;

    v21 = sub_24A45461C(v20, a2, a3);

    v22 = *(*v20 + 16);
    if (v22 >= v21)
    {
      sub_24A45455C(v21, v22);
      (v19)(aBlock, 0);
LABEL_6:
      v23 = *(a1 + 64);
      aBlock[4] = sub_24A454390;
      aBlock[5] = a1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A388564;
      aBlock[3] = &unk_285D89690;
      v24 = _Block_copy(aBlock);

      sub_24A4AB6B0();
      v29 = MEMORY[0x277D84F90];
      sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
      sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
      sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
      sub_24A4ABE90();
      MEMORY[0x24C218190](0, v14, v10, v24);
      _Block_release(v24);
      (*(v27 + 8))(v10, v6);
      (*(v28 + 8))(v14, v26);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A44AC3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_24A4AB690();
  v132 = *(v7 - 8);
  v133 = v7;
  v8 = *(v132 + 64);
  MEMORY[0x28223BE20](v7);
  v130 = v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_24A4AB6E0();
  v129 = *(v131 - 8);
  v10 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v128 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[75];

  v13 = sub_24A41587C(a1, v12);

  if (v13)
  {
    *a3 = 0;
    return result;
  }

  v126 = a3;
  v127 = v3;
  v15 = a2[72];
  a2[72] = 0;

  v16 = a2[78];
  a2[78] = 0;

  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  v134 = a2;
  if (v17)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A3DBEA8(0, v17, 0);
    isUniquelyReferenced_nonNull_native = aBlock[0];
    v20 = sub_24A3C9CEC(&qword_27EF40570, &unk_24A4BAC80);
    v135 = v17;
    v136 = v20;
    v125 = a1;
    a1 += 48;
    v18 = v17;
    do
    {
      v17 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = *(a1 - 16);
      v21 = *(a1 - 8);
      v22 = *a1;
      v23 = sub_24A4AC090();
      swift_bridgeObjectRetain_n();

      v24 = sub_24A39B2C8(isUniquelyReferenced_nonNull_native, v21);
      v26 = v25;

      if (v26)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v23[(v24 >> 6) + 8] |= 1 << v24;
      v27 = (v23[6] + 16 * v24);
      *v27 = isUniquelyReferenced_nonNull_native;
      v27[1] = v21;
      *(v23[7] + v24) = v22;

      v28 = v23[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_63;
      }

      v23[2] = v30;
      isUniquelyReferenced_nonNull_native = v17;
      aBlock[0] = v17;
      v32 = *(v17 + 16);
      v31 = *(v17 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_24A3DBEA8((v31 > 1), v32 + 1, 1);
        isUniquelyReferenced_nonNull_native = aBlock[0];
      }

      a1 += 24;
      *(isUniquelyReferenced_nonNull_native + 16) = v32 + 1;
      *(isUniquelyReferenced_nonNull_native + 8 * v32 + 32) = v23;
      --v18;
    }

    while (v18);
    v18 = MEMORY[0x277D84F90];
    v17 = v135;
    a1 = v125;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  }

  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v33 = sub_24A4AB630();
    v34 = sub_24A378E18(v33, qword_27EF4E260);

    v125 = v34;
    v35 = sub_24A4AB600();
    v36 = sub_24A4ABCE0();

    v37 = os_log_type_enabled(v35, v36);
    v136 = isUniquelyReferenced_nonNull_native;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      v40 = sub_24A3C9CEC(&qword_27EF3F4E8, &qword_24A4B5748);
      v41 = MEMORY[0x24C217E90](isUniquelyReferenced_nonNull_native, v40);
      v43 = sub_24A37BD58(v41, v42, aBlock);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_24A376000, v35, v36, "FMFDataManager: Shallow locate in progress (in) - %s", v38, 0xCu);
      sub_24A37EEE0(v39);
      MEMORY[0x24C219130](v39, -1, -1);
      MEMORY[0x24C219130](v38, -1, -1);
    }

    if (v17)
    {
      v44 = (a1 + 48);
      v45 = MEMORY[0x277D84F98];
      while (1)
      {
        v50 = *(v44 - 2);
        v49 = *(v44 - 1);
        a1 = *v44;
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v45;
        v51 = sub_24A39B2C8(v50, v49);
        v53 = v45;
        v54 = v45[2];
        v55 = (v52 & 1) == 0;
        v29 = __OFADD__(v54, v55);
        v56 = v54 + v55;
        if (v29)
        {
          goto LABEL_64;
        }

        v57 = v52;
        if (v53[3] < v56)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v63 = v51;
        sub_24A4A9214();
        v51 = v63;
        v18 = MEMORY[0x277D84F90];
        if (v57)
        {
LABEL_17:
          v46 = v51;

          v45 = aBlock[0];
          v47 = *(aBlock[0] + 56) + 24 * v46;
          v48 = *(v47 + 8);
          *v47 = v50;
          *(v47 + 8) = v49;
          *(v47 + 16) = a1;

          goto LABEL_18;
        }

LABEL_25:
        v45 = aBlock[0];
        *(aBlock[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
        v59 = (v45[6] + 16 * v51);
        *v59 = v50;
        v59[1] = v49;
        v60 = v45[7] + 24 * v51;
        *v60 = v50;
        *(v60 + 8) = v49;
        *(v60 + 16) = a1;
        v61 = v45[2];
        v29 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v29)
        {
          goto LABEL_67;
        }

        v45[2] = v62;
LABEL_18:
        v44 += 24;
        if (!--v17)
        {
          goto LABEL_30;
        }
      }

      sub_24A4A5AF0(v56, isUniquelyReferenced_nonNull_native);
      v51 = sub_24A39B2C8(v50, v49);
      if ((v57 & 1) != (v58 & 1))
      {
        result = sub_24A4AC2B0();
        __break(1u);
        return result;
      }

LABEL_24:
      if (v57)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

    v45 = MEMORY[0x277D84F98];
LABEL_30:

    v139 = v18;
    v64 = v134;
    v65 = *(v134[75] + 16);
    if (v65)
    {

      v66 = (v136 + 48);
      v67 = MEMORY[0x277D84F90];
      do
      {
        v70 = *(v66 - 2);
        v69 = *(v66 - 1);
        v71 = *v66;
        v72 = v45[2];

        v73 = v45;
        if (v72 && (, v74 = sub_24A39B2C8(v70, v69), v76 = v75, , (v76 & 1) != 0))
        {

          v77 = v73[7] + 24 * v74;
          v79 = *v77;
          v78 = *(v77 + 8);
          v80 = *(v77 + 16);
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_24A3EDC98(0, *(v67 + 2) + 1, 1, v67);
          }

          v82 = *(v67 + 2);
          v81 = *(v67 + 3);
          if (v82 >= v81 >> 1)
          {
            v67 = sub_24A3EDC98((v81 > 1), v82 + 1, 1, v67);
          }

          *(v67 + 2) = v82 + 1;
          v83 = &v67[24 * v82];
          *(v83 + 4) = v79;
          *(v83 + 5) = v78;
          v83[48] = v80;
          v45 = v73;
          v84 = sub_24A39B2C8(v79, v78);
          v86 = v85;

          if (v86)
          {
            v87 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v45;
            if (!v87)
            {
              sub_24A4A9214();
              v45 = aBlock[0];
            }

            v88 = *(v45[6] + 16 * v84 + 8);

            v89 = *(v45[7] + 24 * v84 + 8);

            sub_24A4A9BC4(v84, v45);
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_24A3EDC98(0, *(v67 + 2) + 1, 1, v67);
          }

          v91 = *(v67 + 2);
          v90 = *(v67 + 3);
          if (v91 >= v90 >> 1)
          {
            v67 = sub_24A3EDC98((v90 > 1), v91 + 1, 1, v67);
          }

          *(v67 + 2) = v91 + 1;
          v68 = &v67[24 * v91];
          *(v68 + 4) = v70;
          *(v68 + 5) = v69;
          v68[48] = v71;
          v45 = v73;
        }

        v66 += 24;
        --v65;
      }

      while (v65);

      v139 = v67;
      v64 = v134;
      v18 = MEMORY[0x277D84F90];
    }

    v124[1] = v45;
    sub_24A3DB91C(v92);
    v93 = v139;
    v94 = *(v64 + 600);
    *(v64 + 600) = v139;

    v95 = *(v93 + 16);
    if (!v95)
    {
      break;
    }

    aBlock[0] = v18;
    sub_24A3BEBEC(0, v95, 0);
    v96 = aBlock[0];
    v135 = sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
    v124[0] = v93;
    v17 = v93 + 48;
    while (1)
    {
      v136 = v95;
      v97 = v96;
      v18 = *(v17 - 16);
      v98 = *(v17 - 8);
      LOBYTE(v137) = *v17;
      swift_bridgeObjectRetain_n();
      v99 = sub_24A4AB890();
      v101 = v100;
      isUniquelyReferenced_nonNull_native = sub_24A4AC090();

      v102 = sub_24A39B2C8(v18, v98);
      a1 = v103;

      if (a1)
      {
        break;
      }

      *(isUniquelyReferenced_nonNull_native + 8 * (v102 >> 6) + 64) |= 1 << v102;
      v104 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v102);
      *v104 = v18;
      v104[1] = v98;
      v105 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v102);
      *v105 = v99;
      v105[1] = v101;

      v106 = *(isUniquelyReferenced_nonNull_native + 16);
      v29 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v29)
      {
        goto LABEL_66;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v107;
      v96 = v97;
      aBlock[0] = v97;
      v109 = *(v97 + 16);
      v108 = *(v97 + 24);
      if (v109 >= v108 >> 1)
      {
        sub_24A3BEBEC((v108 > 1), v109 + 1, 1);
        v96 = aBlock[0];
      }

      v17 += 24;
      *(v96 + 16) = v109 + 1;
      *(v96 + 8 * v109 + 32) = isUniquelyReferenced_nonNull_native;
      v95 = v136 - 1;
      if (v136 == 1)
      {

        v64 = v134;
        goto LABEL_58;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v96 = MEMORY[0x277D84F90];
LABEL_58:

  v110 = sub_24A4AB600();
  v111 = sub_24A4ABCE0();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    aBlock[0] = v113;
    *v112 = 136315138;
    v114 = sub_24A3C9CEC(&qword_27EF3F4D8, &unk_24A4BAC90);
    v115 = MEMORY[0x24C217E90](v96, v114);
    v117 = v116;

    v118 = sub_24A37BD58(v115, v117, aBlock);

    *(v112 + 4) = v118;
    _os_log_impl(&dword_24A376000, v110, v111, "FMFDataManager: Shallow locate in progress (out) - %s", v112, 0xCu);
    sub_24A37EEE0(v113);
    MEMORY[0x24C219130](v113, -1, -1);
    MEMORY[0x24C219130](v112, -1, -1);
  }

  else
  {
  }

  v119 = *(v64 + 64);
  aBlock[4] = sub_24A454388;
  aBlock[5] = v64;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89460;
  v120 = _Block_copy(aBlock);

  v121 = v128;
  sub_24A4AB6B0();
  v137 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v122 = v130;
  v123 = v133;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v121, v122, v120);
  _Block_release(v120);
  (*(v132 + 8))(v122, v123);
  (*(v129 + 8))(v121, v131);

  *v126 = 1;
  return result;
}

uint64_t sub_24A44B87C(uint64_t a1)
{
  v2 = *(a1 + 56);
  sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
  sub_24A4ABD70();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 72))(v8, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a1 + 40);
    v7 = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    (*(v6 + 56))(v8, 0, v7, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A44B9EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_24A4AB690();
  v88 = *(v7 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v87 = *(v11 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v11);
  v86 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[74];

  v15 = sub_24A41587C(a1, v14);

  if (v15)
  {
    *a3 = 0;
    return result;
  }

  v17 = a3;
  v80 = v10;
  v81 = v11;
  v84 = v3;
  v18 = a2[72];
  a2[72] = 0;

  v19 = a2[78];
  v85 = a2;
  a2[78] = 0;

  v20 = *(a1 + 16);
  v82 = v7;
  v83 = v17;
  if (!v20)
  {
    v22 = MEMORY[0x277D84F98];
LABEL_18:
    v43 = MEMORY[0x277D84F90];
    v91 = MEMORY[0x277D84F90];
    v44 = v85;
    v45 = *(v85[74] + 16);
    if (v45)
    {

      v46 = (v79 + 48);
      v47 = MEMORY[0x277D84F90];
      do
      {
        v49 = *(v46 - 2);
        v50 = *(v46 - 1);
        v51 = *v46;
        v52 = v22[2];

        if (v52 && (, v53 = sub_24A39B2C8(v49, v50), v55 = v54, , (v55 & 1) != 0))
        {

          v56 = v22[7] + 24 * v53;
          v57 = *v56;
          v58 = *(v56 + 8);
          v59 = *(v56 + 16);
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_24A3EDC98(0, *(v47 + 2) + 1, 1, v47);
          }

          v61 = *(v47 + 2);
          v60 = *(v47 + 3);
          if (v61 >= v60 >> 1)
          {
            v47 = sub_24A3EDC98((v60 > 1), v61 + 1, 1, v47);
          }

          *(v47 + 2) = v61 + 1;
          v62 = &v47[24 * v61];
          *(v62 + 4) = v57;
          *(v62 + 5) = v58;
          v62[48] = v59;
          v63 = sub_24A39B2C8(v57, v58);
          v65 = v64;

          if (v65)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v22;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_24A4A9214();
              v22 = aBlock[0];
            }

            v67 = *(v22[6] + 16 * v63 + 8);

            v68 = *(v22[7] + 24 * v63 + 8);

            sub_24A4A9BC4(v63, v22);
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_24A3EDC98(0, *(v47 + 2) + 1, 1, v47);
          }

          v70 = *(v47 + 2);
          v69 = *(v47 + 3);
          if (v70 >= v69 >> 1)
          {
            v47 = sub_24A3EDC98((v69 > 1), v70 + 1, 1, v47);
          }

          *(v47 + 2) = v70 + 1;
          v48 = &v47[24 * v70];
          *(v48 + 4) = v49;
          *(v48 + 5) = v50;
          v48[48] = v51;
        }

        v46 += 24;
        --v45;
      }

      while (v45);

      v91 = v47;
      v44 = v85;
      v43 = MEMORY[0x277D84F90];
    }

    sub_24A3DB91C(v71);
    v72 = v44[74];
    v44[74] = v91;

    v73 = v44[8];
    aBlock[4] = sub_24A4540F8;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89410;
    v74 = _Block_copy(aBlock);

    v75 = v86;
    sub_24A4AB6B0();
    v89 = v43;
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v76 = v80;
    v77 = v82;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v75, v76, v74);
    _Block_release(v74);
    (*(v88 + 8))(v76, v77);
    (*(v87 + 8))(v75, v81);

    *v83 = 1;
    return result;
  }

  v21 = (a1 + 48);
  v22 = MEMORY[0x277D84F98];
  while (1)
  {
    v27 = *(v21 - 2);
    v26 = *(v21 - 1);
    v28 = *v21;
    swift_bridgeObjectRetain_n();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v22;
    v30 = sub_24A39B2C8(v27, v26);
    v32 = v22[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      break;
    }

    v36 = v31;
    if (v22[3] < v35)
    {
      sub_24A4A5AF0(v35, v29);
      v30 = sub_24A39B2C8(v27, v26);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_40;
      }

LABEL_12:
      if (v36)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if (v29)
    {
      goto LABEL_12;
    }

    v42 = v30;
    sub_24A4A9214();
    v30 = v42;
    if (v36)
    {
LABEL_5:
      v23 = v30;

      v22 = aBlock[0];
      v24 = *(aBlock[0] + 56) + 24 * v23;
      v25 = *(v24 + 8);
      *v24 = v27;
      *(v24 + 8) = v26;
      *(v24 + 16) = v28;

      goto LABEL_6;
    }

LABEL_13:
    v22 = aBlock[0];
    *(aBlock[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
    v38 = (v22[6] + 16 * v30);
    *v38 = v27;
    v38[1] = v26;
    v39 = v22[7] + 24 * v30;
    *v39 = v27;
    *(v39 + 8) = v26;
    *(v39 + 16) = v28;
    v40 = v22[2];
    v34 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v34)
    {
      goto LABEL_39;
    }

    v22[2] = v41;
LABEL_6:
    v21 += 24;
    if (!--v20)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

uint64_t sub_24A44C0E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_24A4AB690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_24A4AB6E0();
  v89 = *(isUniquelyReferenced_nonNull_native - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v15 = (v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_24A415A6C(a1, a2[76]);
  if (result)
  {
    *a3 = 0;
    return result;
  }

  v85 = v7;
  v87 = v3;
  v17 = a2[72];
  a2[72] = 0;

  v18 = a2[78];
  v88 = a2;
  a2[78] = 0;

  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_46;
  }

LABEL_4:
  v82 = v11;
  v83 = isUniquelyReferenced_nonNull_native;
  v84 = v8;
  v19 = sub_24A4AB630();
  v20 = sub_24A378E18(v19, qword_27EF4E260);

  v80[1] = v20;
  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();

  if (os_log_type_enabled(v21, v22))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 138412290;
    v24 = sub_24A4ABA50();
    *(v8 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&dword_24A376000, v21, v22, "FMFDataManager: fallbackToLegacy (in) %@", v8, 0xCu);
    sub_24A37EF2C(v23, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v23, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v81 = v15;

  v11 = *(a1 + 16);
  v86 = a3;
  if (v11)
  {
    a3 = (a1 + 48);
    v15 = MEMORY[0x277D84F98];
    while (1)
    {
      v28 = *(a3 - 2);
      a1 = *(a3 - 1);
      v29 = *a3;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v15;
      v30 = sub_24A39B2C8(v28, a1);
      v32 = v15[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        swift_once();
        goto LABEL_4;
      }

      v8 = v31;
      if (v15[3] < v35)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      isUniquelyReferenced_nonNull_native = v30;
      sub_24A4A93A0();
      v30 = isUniquelyReferenced_nonNull_native;
      if (v8)
      {
LABEL_8:
        v25 = v30;

        v15 = aBlock[0];
        v26 = *(aBlock[0] + 56) + 24 * v25;
        v27 = *(v26 + 8);
        *v26 = v28;
        *(v26 + 8) = a1;
        *(v26 + 16) = v29;

        goto LABEL_9;
      }

LABEL_16:
      v15 = aBlock[0];
      *(aBlock[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v37 = (v15[6] + 16 * v30);
      *v37 = v28;
      v37[1] = a1;
      v38 = v15[7] + 24 * v30;
      *v38 = v28;
      *(v38 + 8) = a1;
      *(v38 + 16) = v29;
      v39 = v15[2];
      v34 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v34)
      {
        goto LABEL_45;
      }

      v15[2] = v40;
LABEL_9:
      a3 += 24;
      if (!--v11)
      {
        goto LABEL_21;
      }
    }

    sub_24A4A5DCC(v35, isUniquelyReferenced_nonNull_native);
    v30 = sub_24A39B2C8(v28, a1);
    if ((v8 & 1) != (v36 & 1))
    {
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }

LABEL_15:
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v15 = MEMORY[0x277D84F98];
LABEL_21:
  v92 = MEMORY[0x277D84F90];
  v41 = *(v88[76] + 16);
  if (v41)
  {

    v42 = (v80[0] + 48);
    v43 = MEMORY[0x277D84F90];
    do
    {
      v45 = *(v42 - 2);
      v46 = *(v42 - 1);
      v47 = *v42;
      v48 = v15[2];

      if (v48 && (, v49 = sub_24A39B2C8(v45, v46), v51 = v50, , (v51 & 1) != 0))
      {

        v52 = v15[7] + 24 * v49;
        v53 = *v52;
        v54 = *(v52 + 8);
        v55 = *(v52 + 16);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_24A3EDED4(0, *(v43 + 2) + 1, 1, v43);
        }

        v57 = *(v43 + 2);
        v56 = *(v43 + 3);
        if (v57 >= v56 >> 1)
        {
          v43 = sub_24A3EDED4((v56 > 1), v57 + 1, 1, v43);
        }

        *(v43 + 2) = v57 + 1;
        v58 = &v43[24 * v57];
        *(v58 + 4) = v53;
        *(v58 + 5) = v54;
        v58[48] = v55;
        v59 = sub_24A39B2C8(v53, v54);
        v61 = v60;

        if (v61)
        {
          v62 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v15;
          if (!v62)
          {
            sub_24A4A93A0();
            v15 = aBlock[0];
          }

          v63 = *(v15[6] + 16 * v59 + 8);

          v64 = *(v15[7] + 24 * v59 + 8);

          sub_24A4A9BC4(v59, v15);
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_24A3EDED4(0, *(v43 + 2) + 1, 1, v43);
        }

        v66 = *(v43 + 2);
        v65 = *(v43 + 3);
        if (v66 >= v65 >> 1)
        {
          v43 = sub_24A3EDED4((v65 > 1), v66 + 1, 1, v43);
        }

        *(v43 + 2) = v66 + 1;
        v44 = &v43[24 * v66];
        *(v44 + 4) = v45;
        *(v44 + 5) = v46;
        v44[48] = v47;
      }

      v42 += 24;
      --v41;
    }

    while (v41);

    v92 = v43;
  }

  sub_24A3DB948(v67);
  v68 = v88;
  v69 = v88[76];
  v88[76] = v92;
  swift_bridgeObjectRetain_n();

  v70 = sub_24A4AB600();
  v71 = sub_24A4ABCE0();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    v74 = sub_24A4ABA50();

    *(v72 + 4) = v74;
    *v73 = v74;
    _os_log_impl(&dword_24A376000, v70, v71, "FMFDataManager: fallbackToLegacy (out) %@", v72, 0xCu);
    sub_24A37EF2C(v73, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v73, -1, -1);
    MEMORY[0x24C219130](v72, -1, -1);
  }

  else
  {
  }

  v75 = v68[8];
  aBlock[4] = sub_24A454390;
  aBlock[5] = v68;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89488;
  v76 = _Block_copy(aBlock);

  v77 = v81;
  sub_24A4AB6B0();
  v90 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v78 = v82;
  v79 = v85;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v77, v78, v76);
  _Block_release(v76);
  (*(v84 + 8))(v78, v79);
  (*(v89 + 8))(v77, v83);

  *v86 = 1;
  return result;
}

uint64_t sub_24A44C9D8(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    v4 = *(a1 + 56);
    sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
    sub_24A4ABD70();
    (*(v2 + 72))(v9, ObjectType, v2);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a1 + 40);
    v7 = swift_getObjectType();
    v8 = *(a1 + 56);
    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    (*(v6 + 56))(v9, 0, v7, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A44CB28()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFDataManager: purging old locations", v13, 2u);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v14 = *(v1 + 56);
  aBlock[4] = sub_24A4543F8;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D895C8;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v5, v15);
  _Block_release(v15);
  (*(v19 + 8))(v5, v2);
  (*(v6 + 8))(v9, v18);
}

uint64_t sub_24A44CE94(void *a1)
{
  v2 = sub_24A4AB690();
  v157 = *(v2 - 8);
  v158 = v2;
  v3 = *(v157 + 64);
  MEMORY[0x28223BE20](v2);
  v155 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_24A4AB6E0();
  v154 = *(v156 - 8);
  v5 = *(v154 + 64);
  MEMORY[0x28223BE20](v156);
  v153 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_24A4AAAD0();
  v7 = *(v171 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v171);
  v170 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFLocation();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v161 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v160 = &v152 - v14;
  MEMORY[0x28223BE20](v15);
  v174 = &v152 - v16;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v152 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v152 - v22;
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v173 = &v152 - v26;
  MEMORY[0x28223BE20](v27);
  v167 = &v152 - v28;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v166 = &v152 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v152 - v33;
  MEMORY[0x28223BE20](v35);
  v41 = &v152 - v40;
  v159 = a1;
  v42 = a1[78];
  if (v42)
  {
    v43 = *(v42 + 16);
    if (v43)
    {
      v162 = v36;
      v163 = v38;
      v165 = v39;
      v176 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v44 = v42 + v176;
      v45 = *(v37 + 72);
      v168 = (v7 + 8);
      v152 = v42;

      v178 = v43 - 1;
      *&v46 = 136315138;
      v164 = v46;
      v172 = MEMORY[0x277D84F90];
      v180 = MEMORY[0x277D84F90];
      v169 = v20;
      v177 = v45;
      v175 = v34;
      while (1)
      {
        v179 = v44;
        sub_24A3992EC(v44, v41, type metadata accessor for FMFLocation);
        v47 = v41[33];
        memcpy(v185, &v41[v10[11]], 0x161uLL);
        if (sub_24A3B9C24(v185) == 1)
        {
          goto LABEL_12;
        }

        v48 = v47 ? 604800.0 : 7200.0;
        v49 = v185[38];
        v50 = [v49 timestamp];
        v51 = v170;
        sub_24A4AAAA0();

        sub_24A4AAA70();
        v53 = v52;
        (*v168)(v51, v171);

        if (fabs(v53) >= v48)
        {
LABEL_12:
          if (qword_27EF3EBF8 != -1)
          {
            swift_once();
          }

          v60 = sub_24A4AB630();
          sub_24A378E18(v60, qword_27EF4E260);
          sub_24A3992EC(v41, v34, type metadata accessor for FMFLocation);
          v61 = sub_24A4AB600();
          v62 = sub_24A4ABCE0();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v184[0] = v64;
            *v63 = v164;
            v65 = FMFLocation.debugDescription.getter();
            v67 = v66;
            sub_24A39A7B8(v175, type metadata accessor for FMFLocation);
            v68 = sub_24A37BD58(v65, v67, v184);
            v20 = v169;

            *(v63 + 4) = v68;
            _os_log_impl(&dword_24A376000, v61, v62, "FMFDataManager: Purging location: %s", v63, 0xCu);
            sub_24A37EEE0(v64);
            v69 = v64;
            v34 = v175;
            MEMORY[0x24C219130](v69, -1, -1);
            MEMORY[0x24C219130](v63, -1, -1);
          }

          else
          {

            sub_24A39A7B8(v34, type metadata accessor for FMFLocation);
          }

          v54 = 0;
          v45 = v177;
          if (!v41[33])
          {
LABEL_10:
            v55 = v162;
            sub_24A3992EC(v41, v162, type metadata accessor for FMFLocation);
            v56 = v10[8];
            v57 = sub_24A4AAB20();
            v58 = v167;
            (*(*(v57 - 8) + 56))(&v167[v56], 1, 1, v57);
            v59 = *(v55 + 8);
            *v58 = *v55;
            v58[1] = v59;
            if (v54)
            {
              memcpy(v183, (v55 + v10[11]), 0x161uLL);
              sub_24A37B740(v183, v184, &qword_27EF3F840, &qword_24A4B6598);
              memcpy(v184, v183, 0x161uLL);
            }

            else
            {
              sub_24A3B4ACC(v184);
            }

            v83 = v167;
            memcpy(&v167[v10[11]], v184, 0x161uLL);
            *(v83 + 16) = 1;
            *(v83 + 33) = *(v55 + 33);
            v84 = *(v55 + 32);
            *(v83 + 24) = *(v55 + 24);
            v85 = v10[9];
            v86 = *(v55 + v85);
            *(v83 + 32) = v84;
            *(v83 + v85) = v86;
            v87 = *(v55 + v10[10]);

            sub_24A39A7B8(v55, type metadata accessor for FMFLocation);
            *(v83 + v10[10]) = v87;
            sub_24A39983C(v83, v166, type metadata accessor for FMFLocation);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v180 = sub_24A3B5C2C(0, v180[2] + 1, 1, v180);
            }

            v34 = v175;
            v89 = v180[2];
            v88 = v180[3];
            if (v89 >= v88 >> 1)
            {
              v180 = sub_24A3B5C2C(v88 > 1, v89 + 1, 1, v180);
            }

            v90 = v180;
            v180[2] = v89 + 1;
            sub_24A39983C(v166, v90 + v176 + v89 * v45, type metadata accessor for FMFLocation);
            if (*(v41 + 1))
            {
              v91 = *v41;
              v92 = *(v41 + 1);
            }

            else
            {
              v91 = 0;
              v92 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v172 = sub_24A3BEA68(0, *(v172 + 2) + 1, 1, v172);
            }

            v94 = *(v172 + 2);
            v93 = *(v172 + 3);
            if (v94 >= v93 >> 1)
            {
              v172 = sub_24A3BEA68((v93 > 1), v94 + 1, 1, v172);
            }

            v95 = v172;
            *(v172 + 2) = v94 + 1;
            v96 = &v95[24 * v94];
            *(v96 + 4) = v91;
            *(v96 + 5) = v92;
            v96[48] = 1;
            sub_24A39A7B8(v41, type metadata accessor for FMFLocation);
            v45 = v177;
            v78 = v179;
            v82 = v178;
            if (!v178)
            {
              goto LABEL_46;
            }

            goto LABEL_40;
          }
        }

        else
        {
          v54 = 1;
          if (!v41[33])
          {
            goto LABEL_10;
          }
        }

        v70 = v165;
        sub_24A3992EC(v41, v165, type metadata accessor for FMFLocation);
        v71 = v10[8];
        v72 = sub_24A4AAB20();
        (*(*(v72 - 8) + 56))(&v23[v71], 1, 1, v72);
        v73 = *(v70 + 8);
        *v23 = *v70;
        *(v23 + 1) = v73;
        if (v54)
        {
          memcpy(v183, (v70 + v10[11]), 0x161uLL);
          sub_24A37B740(v183, v184, &qword_27EF3F840, &qword_24A4B6598);
          memcpy(v184, v183, 0x161uLL);
        }

        else
        {
          sub_24A3B4ACC(v184);
        }

        memcpy(&v23[v10[11]], v184, 0x161uLL);
        v23[16] = 1;
        v23[33] = *(v70 + 33);
        v74 = *(v70 + 32);
        *(v23 + 3) = *(v70 + 24);
        v75 = v10[9];
        v76 = *(v70 + v75);
        v23[32] = v74;
        v23[v75] = v76;
        v77 = *(v70 + v10[10]);

        sub_24A39A7B8(v70, type metadata accessor for FMFLocation);
        v23[v10[10]] = v77;
        sub_24A39983C(v23, v173, type metadata accessor for FMFLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = sub_24A3B5C2C(0, v180[2] + 1, 1, v180);
        }

        v78 = v179;
        v80 = v180[2];
        v79 = v180[3];
        if (v80 >= v79 >> 1)
        {
          v180 = sub_24A3B5C2C(v79 > 1, v80 + 1, 1, v180);
        }

        v81 = v180;
        v180[2] = v80 + 1;
        sub_24A39983C(v173, v81 + v176 + v80 * v45, type metadata accessor for FMFLocation);
        sub_24A39A7B8(v41, type metadata accessor for FMFLocation);
        v82 = v178;
        if (!v178)
        {
LABEL_46:

          v102 = v159;
          swift_beginAccess();
          if (v102[79])
          {
            v103 = v102[79];
          }

          else
          {
            v103 = MEMORY[0x277D84F90];
          }

          v104 = *(v103 + 16);
          if (v104)
          {
            v175 = v103;
            v105 = v103 + v176;

            v106 = v105;
            v179 = v104 - 1;
            v107 = MEMORY[0x277D84F90];
            v109 = v160;
            v108 = v161;
            while (1)
            {
              v178 = v106;
              sub_24A3992EC(v106, v20, type metadata accessor for FMFLocation);
              v110 = v20[33];
              memcpy(v184, &v20[v10[11]], 0x161uLL);
              if (sub_24A3B9C24(v184) == 1)
              {
                goto LABEL_77;
              }

              v111 = v110 ? 604800.0 : 7200.0;
              v112 = v184[38];
              v113 = [v112 timestamp];
              v114 = v170;
              sub_24A4AAAA0();

              sub_24A4AAA70();
              v116 = v115;
              v117 = v114;
              v118 = v177;
              (*v168)(v117, v171);

              if (fabs(v116) >= v111)
              {
LABEL_77:
                if (qword_27EF3EBF8 != -1)
                {
                  swift_once();
                }

                v120 = sub_24A4AB630();
                sub_24A378E18(v120, qword_27EF4E260);
                v121 = v20;
                v122 = v163;
                sub_24A3992EC(v121, v163, type metadata accessor for FMFLocation);
                v123 = sub_24A4AB600();
                v124 = sub_24A4ABCE0();
                if (os_log_type_enabled(v123, v124))
                {
                  v125 = swift_slowAlloc();
                  v126 = swift_slowAlloc();
                  v183[0] = v126;
                  *v125 = v164;
                  v127 = FMFLocation.debugDescription.getter();
                  v129 = v128;
                  sub_24A39A7B8(v122, type metadata accessor for FMFLocation);
                  v130 = sub_24A37BD58(v127, v129, v183);
                  v109 = v160;

                  *(v125 + 4) = v130;
                  _os_log_impl(&dword_24A376000, v123, v124, "FMFDataManager: Purging location: %s", v125, 0xCu);
                  sub_24A37EEE0(v126);
                  v131 = v126;
                  v108 = v161;
                  MEMORY[0x24C219130](v131, -1, -1);
                  MEMORY[0x24C219130](v125, -1, -1);
                }

                else
                {

                  sub_24A39A7B8(v122, type metadata accessor for FMFLocation);
                }

                v119 = 0;
                v20 = v169;
                v118 = v177;
              }

              else
              {
                v119 = 1;
              }

              sub_24A3992EC(v20, v109, type metadata accessor for FMFLocation);
              v132 = v10[8];
              v133 = sub_24A4AAB20();
              (*(*(v133 - 8) + 56))(v108 + v132, 1, 1, v133);
              v134 = *(v109 + 8);
              *v108 = *v109;
              *(v108 + 8) = v134;
              if (v119)
              {
                memcpy(v182, (v109 + v10[11]), 0x161uLL);
                sub_24A37B740(v182, &v181, &qword_27EF3F840, &qword_24A4B6598);
                memcpy(v183, v182, 0x161uLL);
              }

              else
              {
                sub_24A3B4ACC(v183);
              }

              memcpy((v108 + v10[11]), v183, 0x161uLL);
              *(v108 + 16) = 1;
              *(v108 + 33) = *(v109 + 33);
              v135 = *(v109 + 32);
              *(v108 + 24) = *(v109 + 24);
              v136 = v10[9];
              v137 = *(v109 + v136);
              *(v108 + 32) = v135;
              *(v108 + v136) = v137;
              v138 = *(v109 + v10[10]);

              sub_24A39A7B8(v109, type metadata accessor for FMFLocation);
              *(v108 + v10[10]) = v138;
              sub_24A39983C(v108, v174, type metadata accessor for FMFLocation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v107 = sub_24A3B5C2C(0, v107[2] + 1, 1, v107);
              }

              v140 = v107[2];
              v139 = v107[3];
              if (v140 >= v139 >> 1)
              {
                v107 = sub_24A3B5C2C(v139 > 1, v140 + 1, 1, v107);
              }

              v107[2] = v140 + 1;
              sub_24A39983C(v174, v107 + v176 + v140 * v118, type metadata accessor for FMFLocation);
              sub_24A39A7B8(v20, type metadata accessor for FMFLocation);
              if (!v179)
              {
                break;
              }

              --v179;
              v106 = v178 + v118;
            }
          }

          else
          {

            v107 = MEMORY[0x277D84F90];
          }

          v141 = v159;
          v142 = v159[73];
          v159[73] = v172;

          swift_beginAccess();
          v143 = v141[77];
          v144 = v180;
          v141[77] = v180;

          v145 = v141[79];
          v141[79] = v107;

          v146 = v141[8];
          v147 = swift_allocObject();
          *(v147 + 16) = v141;
          *(v147 + 24) = v144;
          v184[4] = sub_24A454400;
          v184[5] = v147;
          v184[0] = MEMORY[0x277D85DD0];
          v184[1] = 1107296256;
          v184[2] = sub_24A388564;
          v184[3] = &unk_285D89618;
          v148 = _Block_copy(v184);

          v149 = v153;
          sub_24A4AB6B0();
          v182[0] = MEMORY[0x277D84F90];
          sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
          sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
          sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
          v150 = v155;
          v151 = v158;
          sub_24A4ABE90();
          MEMORY[0x24C218190](0, v149, v150, v148);
          _Block_release(v148);
          (*(v157 + 8))(v150, v151);
          (*(v154 + 8))(v149, v156);
        }

LABEL_40:
        v178 = v82 - 1;
        v44 = v78 + v45;
      }
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v97 = sub_24A4AB630();
  sub_24A378E18(v97, qword_27EF4E260);
  v98 = sub_24A4AB600();
  v99 = sub_24A4ABCE0();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_24A376000, v98, v99, "FMFDataManager: Purge skipped, we don't have any", v100, 2u);
    MEMORY[0x24C219130](v100, -1, -1);
  }

  return sub_24A44E7AC();
}

uint64_t sub_24A44E1E4(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = sub_24A4ABD70();
  if (v8 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
      sub_24A4ABD70();
      (*(v4 + 72))(v8, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(a1 + 40);
      v7 = swift_getObjectType();
      sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
      sub_24A4ABD70();
      (*(v6 + 56))(v8, 0, v7, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A44E38C()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFDataManager: reset falling back to legacy states", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v7 = *(v1 + 608);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = sub_24A3EDED4(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = (v7 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v14 = *(v9 + 2);
      v13 = *(v9 + 3);

      if (v14 >= v13 >> 1)
      {
        v9 = sub_24A3EDED4((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[24 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v15[48] = 0;
      v10 += 3;
      --v8;
    }

    while (v8);
  }

  v16 = *(v1 + 56);
  MEMORY[0x28223BE20](v6);
  sub_24A4ABD70();
}

uint64_t sub_24A44E598()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFDataManager: reset shallowlocates in progress", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v7 = *(v1 + 600);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = sub_24A3EDC98(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = (v7 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v9 + 2);
      v14 = *(v9 + 3);

      if (v13 >= v14 >> 1)
      {
        v9 = sub_24A3EDC98((v14 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v15 = &v9[24 * v13];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v15[48] = 1;
      v10 += 3;
      --v8;
    }

    while (v8);
  }

  v16 = *(v1 + 56);
  MEMORY[0x28223BE20](v6);
  sub_24A4ABD70();
}

uint64_t sub_24A44E7AC()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_24A4AB6E0();
  v80 = *(v82 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v75 - v10;
  v11 = type metadata accessor for FMFLocation();
  v12 = *(v11 - 8);
  v97 = v11;
  v98 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v88 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v75 - v16);
  MEMORY[0x28223BE20](v18);
  v87 = &v75 - v19;
  MEMORY[0x28223BE20](v20);
  v91 = &v75 - v21;
  MEMORY[0x28223BE20](v22);
  v90 = &v75 - v23;
  v83 = type metadata accessor for FMFFriend();
  v24 = *(v83 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v83);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v28 = sub_24A4AB630();
  sub_24A378E18(v28, qword_27EF4E260);
  v29 = sub_24A4AB600();
  v30 = sub_24A4ABCE0();
  v31 = os_log_type_enabled(v29, v30);
  v92 = v1;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24A376000, v29, v30, "FMFDataManager: reset locating state for friends", v32, 2u);
    v33 = v32;
    v1 = v92;
    MEMORY[0x24C219130](v33, -1, -1);
  }

  v34 = sub_24A390DA0();
  v96 = *(v34 + 16);
  if (v96)
  {
    v76 = v3;
    v77 = v2;
    v35 = *(v24 + 80);
    v78 = v34;
    v95 = v34 + ((v35 + 32) & ~v35);
    v86 = (v1 + 616);
    swift_beginAccess();
    v36 = 0;
    v94 = *(v24 + 72);
    v84 = (v98 + 48);
    v85 = (v98 + 56);
    v37 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v38 = v93;
    do
    {
      sub_24A3992EC(v95 + v94 * v36, v27, type metadata accessor for FMFFriend);
      if (*(v1 + 672) & 1) != 0 || (v46 = *(v27 + *(v83 + 48)), v46 != 2) && (v46)
      {
        v39 = *v86;
        v40 = *(*v86 + 16);

        if (v40)
        {
          v41 = v39 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
          v42 = *(v98 + 72);
          do
          {
            sub_24A3992EC(v41, v17, type metadata accessor for FMFLocation);
            v43 = v17[1];
            if (v43)
            {
              v44 = *v17 == *v27 && v43 == v27[1];
              if (v44 || (sub_24A4AC270() & 1) != 0)
              {
                v38 = v93;
                sub_24A39983C(v17, v93, type metadata accessor for FMFLocation);
                v45 = 0;
                v1 = v92;
                goto LABEL_33;
              }
            }

            sub_24A39A7B8(v17, type metadata accessor for FMFLocation);
            v41 += v42;
            --v40;
          }

          while (v40);
          v45 = 1;
          v1 = v92;
          v38 = v93;
        }

        else
        {
          v45 = 1;
        }

LABEL_33:
        v61 = v97;
        (*v85)(v38, v45, 1, v97);

        if ((*v84)(v38, 1, v61) == 1)
        {
          sub_24A37EF2C(v38, &qword_27EF3F480, &unk_24A4B8C20);
        }

        else
        {
          v62 = v87;
          sub_24A39983C(v38, v87, type metadata accessor for FMFLocation);
          sub_24A3992EC(v62, v88, type metadata accessor for FMFLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_24A3B5C2C(0, v37[2] + 1, 1, v37);
          }

          v64 = v37[2];
          v63 = v37[3];
          if (v64 >= v63 >> 1)
          {
            v37 = sub_24A3B5C2C(v63 > 1, v64 + 1, 1, v37);
          }

          sub_24A39A7B8(v87, type metadata accessor for FMFLocation);
          v37[2] = v64 + 1;
          sub_24A39983C(v88, v37 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v64, type metadata accessor for FMFLocation);
        }
      }

      else
      {
        v47 = v37;
        v48 = *v27;
        v49 = v27[1];
        v50 = v90;
        *(v90 + 24) = 0;
        *(v50 + 32) = 1;
        v51 = v97;
        v52 = v97[8];
        v53 = sub_24A4AAB20();
        (*(*(v53 - 8) + 56))(v50 + v52, 1, 1, v53);
        v89 = v48;
        *v50 = v48;
        *(v50 + 8) = v49;
        v37 = v47;
        sub_24A3B4ACC(v101);
        memcpy((v50 + v51[11]), v101, 0x161uLL);
        *(v50 + 16) = 1;
        *(v50 + 33) = 0;
        *(v50 + v51[9]) = 0;
        *(v50 + v51[10]) = 0;
        sub_24A3992EC(v50, v91, type metadata accessor for FMFLocation);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_24A3B5C2C(0, v47[2] + 1, 1, v47);
        }

        v55 = v37[2];
        v54 = v37[3];
        if (v55 >= v54 >> 1)
        {
          v37 = sub_24A3B5C2C(v54 > 1, v55 + 1, 1, v37);
        }

        v37[2] = v55 + 1;
        sub_24A39983C(v91, v37 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v55, type metadata accessor for FMFLocation);
        v56 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_24A3BEA68(0, *(v56 + 2) + 1, 1, v56);
        }

        v58 = *(v56 + 2);
        v57 = *(v56 + 3);
        v99 = v56;
        if (v58 >= v57 >> 1)
        {
          v99 = sub_24A3BEA68((v57 > 1), v58 + 1, 1, v99);
        }

        sub_24A39A7B8(v90, type metadata accessor for FMFLocation);
        v59 = v99;
        *(v99 + 2) = v58 + 1;
        v60 = &v59[24 * v58];
        *(v60 + 4) = v89;
        *(v60 + 5) = v49;
        v60[48] = 1;
        v1 = v92;
        v38 = v93;
      }

      ++v36;
      sub_24A39A7B8(v27, type metadata accessor for FMFFriend);
    }

    while (v36 != v96);

    v3 = v76;
    v2 = v77;
    v65 = MEMORY[0x277D84F90];
    v66 = v99;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
  }

  v67 = *(v1 + 584);
  *(v1 + 584) = v66;

  swift_beginAccess();
  v68 = *(v1 + 616);
  *(v1 + 616) = v37;

  v69 = *(v1 + 64);
  v70 = swift_allocObject();
  *(v70 + 16) = v1;
  *(v70 + 24) = v37;
  v101[4] = sub_24A4543F0;
  v101[5] = v70;
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 1107296256;
  v101[2] = sub_24A388564;
  v101[3] = &unk_285D895A0;
  v71 = _Block_copy(v101);

  v72 = v79;
  sub_24A4AB6B0();
  v100 = v65;
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v73 = v81;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v72, v73, v71);
  _Block_release(v71);
  (*(v3 + 8))(v73, v2);
  (*(v80 + 8))(v72, v82);
}

uint64_t sub_24A44F2C4(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = sub_24A4ABD70();
  if (v13 == 1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A4AB630();
    sub_24A378E18(v4, qword_27EF4E260);

    v5 = sub_24A4AB600();
    v6 = sub_24A4ABCE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
      sub_24A4ABD70();
      v8 = *(v13 + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&dword_24A376000, v5, v6, "FMFDataManager: resetting locating in progress for (%ld friend", v7, 0xCu);
      MEMORY[0x24C219130](v7, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
      sub_24A4ABD70();
      (*(v9 + 72))(v13, ObjectType, v9);

      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(a1 + 40);
      v12 = swift_getObjectType();
      sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
      sub_24A4ABD70();
      (*(v11 + 56))(v13, 0, v12, v11);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A44F594(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFLocationAlert();
  v7 = v6;
  v8 = *(a1 + *(v6 + 72));
  if (v8)
  {
    v9 = a2[1];
    v37[0] = *a2;
    v37[1] = v9;
    MEMORY[0x28223BE20](v6);
    v33[2] = v37;

    v10 = sub_24A45363C(sub_24A454B90, v33, v8);

    if (v10)
    {
      return 1;
    }
  }

  v12 = *(a1 + *(v7 + 68));
  if (!v12)
  {
    return 0;
  }

  v33[5] = v3;
  v13 = a2[4];
  v14 = *(v12 + 16);
  result = swift_bridgeObjectRetain_n();
  v36 = v14;
  if (!v14)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v15 = 0;
  v35 = v12 + 32;
  v16 = v13 + 56;
  v17 = MEMORY[0x277D84F90];
  v34 = v12;
  do
  {
    v18 = v15;
    while (1)
    {
      if (v18 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v15 = v18 + 1;
      if (*(v13 + 16))
      {
        break;
      }

LABEL_9:
      v18 = v15;
      if (v15 == v36)
      {
        goto LABEL_29;
      }
    }

    v19 = (v35 + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = *(v13 + 40);
    sub_24A4AC360();

    sub_24A4AB8F0();
    v23 = sub_24A4AC3A0();
    v24 = -1 << *(v13 + 32);
    v25 = v23 & ~v24;
    if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    v26 = ~v24;
    while (1)
    {
      v27 = (*(v13 + 48) + 16 * v25);
      v28 = *v27 == v21 && v27[1] == v20;
      if (v28 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v38 = v17;
    if ((result & 1) == 0)
    {
      result = sub_24A3DBDA8(0, *(v17 + 16) + 1, 1);
      v17 = v38;
    }

    v30 = *(v17 + 16);
    v29 = *(v17 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_24A3DBDA8((v29 > 1), v30 + 1, 1);
      v17 = v38;
    }

    *(v17 + 16) = v30 + 1;
    v31 = v17 + 16 * v30;
    *(v31 + 32) = v21;
    *(v31 + 40) = v20;
    v12 = v34;
  }

  while (v15 != v36);
LABEL_29:
  swift_bridgeObjectRelease_n();
  v32 = *(v17 + 16);

  return v32 != 0;
}

uint64_t sub_24A44F860(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void *), uint64_t (*a4)(void *))
{
  v38 = a4;
  v7 = type metadata accessor for FMFLocationAlert();
  v8 = v7;
  v9 = *(a1 + *(v7 + 72));
  if (v9)
  {
    v10 = a2[1];
    v39 = *a2;
    v40 = v10;
    MEMORY[0x28223BE20](v7);
    v33 = &v39;

    v11 = sub_24A45363C(a3, v32, v9);

    if (v11)
    {
      return 1;
    }
  }

  v13 = *(a1 + *(v8 + 68));
  if (!v13)
  {
    return 0;
  }

  v14 = a2[4];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_24A3A11D8(*(v14 + 16), 0);
    v17 = sub_24A3A1268(&v39, v16 + 4, v15, v14);
    v37 = v41;

    result = sub_24A3A13C0();
    if (v17 != v15)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v18 = v16;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = *(v13 + 16);
  v37 = v18;

  if (v19)
  {
    v20 = 0;
    v21 = v13 + 40;
    v34 = v19 - 1;
    v22 = MEMORY[0x277D84F90];
    v35 = v13 + 40;
    do
    {
      v36 = v22;
      v23 = (v21 + 16 * v20);
      v24 = v20;
      while (1)
      {
        if (v24 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v25 = *(v23 - 1);
        v26 = *v23;
        v20 = v24 + 1;
        v39 = v25;
        v40 = v26;
        MEMORY[0x28223BE20](result);
        v33 = &v39;

        if (sub_24A45363C(v38, v32, v37))
        {
          break;
        }

        v23 += 2;
        ++v24;
        if (v19 == v20)
        {
          v22 = v36;
          goto LABEL_24;
        }
      }

      v22 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      v42 = v22;
      if ((result & 1) == 0)
      {
        result = sub_24A3DBDA8(0, *(v22 + 16) + 1, 1);
        v22 = v42;
      }

      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v36 = v28 + 1;
        result = sub_24A3DBDA8((v27 > 1), v28 + 1, 1);
        v29 = v36;
        v22 = v42;
      }

      *(v22 + 16) = v29;
      v30 = v22 + 16 * v28;
      *(v30 + 32) = v25;
      *(v30 + 40) = v26;
      v21 = v35;
    }

    while (v34 != v24);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_24:

  v31 = *(v22 + 16);

  return v31 != 0;
}

void sub_24A44FB50(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 712);
  v7 = sub_24A42EE0C(a2, a3, 0);
  if (!v7)
  {
    return;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    v13 = v7;
    v14 = sub_24A4AC060();
    v7 = v13;
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C218380](0);
  }

  else
  {
    if (!*(v8 + 16))
    {
      __break(1u);
      return;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  sub_24A42E63C(v10, v16);
  swift_beginAccess();

  v11 = *(a1 + 728);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + 728);
  *(a1 + 728) = 0x8000000000000000;
  sub_24A430ACC(v16, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 728) = v15;
  swift_endAccess();
}

uint64_t sub_24A44FCB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A39CB88();
  *a1 = result;
  return result;
}

double sub_24A44FCF4(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_24A3873B4(__dst);
  sub_24A37F0C8(v7);
  sub_24A37F110(0, 0, 0);
  *&v5[183] = v7[11];
  *&v5[199] = v7[12];
  *&v5[215] = v7[13];
  *&v5[231] = v7[14];
  *&v5[119] = v7[7];
  *&v5[135] = v7[8];
  *&v5[151] = v7[9];
  *&v5[167] = v7[10];
  *&v5[55] = v7[3];
  *&v5[71] = v7[4];
  *&v5[87] = v7[5];
  *&v5[103] = v7[6];
  *&v5[7] = v7[0];
  *&v5[23] = v7[1];
  *&v5[39] = v7[2];
  memset(v8, 0, 57);
  sub_24A37EF2C(v8, &qword_27EF3FD68, &unk_24A4B9F40);
  v2 = MEMORY[0x277D84F90];
  *__src = MEMORY[0x277D84F90];
  *(__src + 1) = v2;
  *(__src + 2) = v2;
  *(__src + 3) = v2;
  *(__src + 4) = v2;
  *(__src + 5) = v2;
  *(__src + 6) = v2;
  *(__src + 7) = v2;
  *(__src + 8) = v2;
  *(__src + 72) = 0u;
  *(__src + 88) = 0u;
  *(__src + 13) = 0;
  __src[112] = 1;
  *(__src + 161) = *&v5[48];
  *(__src + 145) = *&v5[32];
  *(__src + 129) = *&v5[16];
  *(__src + 113) = *v5;
  *(__src + 225) = *&v5[112];
  *(__src + 209) = *&v5[96];
  *(__src + 193) = *&v5[80];
  *(__src + 177) = *&v5[64];
  *(__src + 257) = *&v5[144];
  *(__src + 273) = *&v5[160];
  *(__src + 241) = *&v5[128];
  *(__src + 44) = *&v5[239];
  *(__src + 321) = *&v5[208];
  *(__src + 337) = *&v5[224];
  *(__src + 289) = *&v5[176];
  *(__src + 305) = *&v5[192];
  result = 0.0;
  *(__src + 401) = 0u;
  *(__src + 376) = 0u;
  *(__src + 392) = 0u;
  *(__src + 360) = 0u;
  *(__src + 53) = v2;
  *(__src + 54) = v2;
  v4 = MEMORY[0x277D84F98];
  *(__src + 55) = v2;
  *(__src + 56) = v4;
  return result;
}

void sub_24A44FED0()
{
  v1 = sub_24A4AB690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4AB6E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(v0 + 48) + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_disableContactMatching) & 1) == 0)
  {
    v15 = *(v0 + 56);
    aBlock[4] = sub_24A45405C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D892F8;
    v14 = v9;
    v12 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v16 = MEMORY[0x277D84F90];
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v11, v5, v12);
    _Block_release(v12);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v14);
  }
}

void *sub_24A45019C(void *result)
{
  v1 = result[72];
  if (v1)
  {
    v2 = result[89];
    v3 = result[90];
    v4 = result[72];

    sub_24A39F9FC(v1, v3);
  }

  return result;
}

uint64_t sub_24A450218(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 56);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_24A454024;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D892A8;
  v14 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v18 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_24A4504F4(void *a1, uint64_t a2)
{
  v4 = sub_24A4AB690();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[90];
  a1[90] = a2;

  v13 = a1[72];
  a1[72] = 0;

  sub_24A387F3C();
  v14 = a1[8];
  aBlock[4] = sub_24A45402C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D892D0;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v15);
  _Block_release(v15);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_24A4507E0(uint64_t a1, _BYTE *a2)
{
  v5 = sub_24A4AB690();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMFFriend();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  LOBYTE(a2) = *a2;
  v20 = *(v2 + 56);
  sub_24A3992EC(a1, &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFFriend);
  v16 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  sub_24A39983C(&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FMFFriend);
  *(v17 + v16 + v15) = a2;
  aBlock[4] = sub_24A454064;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89348;
  v18 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v23 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v8, v18);
  _Block_release(v18);
  (*(v22 + 8))(v8, v5);
  (*(v9 + 8))(v12, v21);
}

uint64_t sub_24A450B84(void *a1, uint64_t *a2, int a3)
{
  v32 = a3;
  v5 = sub_24A4AB690();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A4AB6E0();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v31[-v15];
  v17 = a1[67];
  v18 = *a2;
  v19 = a2[1];
  sub_24A3992EC(a2, &v31[-v15], type metadata accessor for FMFFriend);
  v20 = type metadata accessor for FMFFriend();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v16, 0, 1, v20);
  swift_beginAccess();

  sub_24A39AF88(v16, v18, v19);
  swift_endAccess();
  v22 = sub_24A453580();
  v23 = sub_24A450FD8(v38, v18, v19);
  v25 = v24;
  if (!(*(v21 + 48))(v24, 1, v20))
  {
    *(v25 + *(v20 + 84)) = v32;
  }

  (v23)(v38, 0);
  (v22)(aBlock, 0);
  v26 = a1[72];
  a1[72] = 0;

  v27 = a1[8];
  aBlock[4] = sub_24A3BCC0C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89370;
  v28 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v38[0] = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v29 = v36;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v8, v28);
  _Block_release(v28);
  (*(v35 + 8))(v8, v29);
  (*(v33 + 8))(v12, v34);
}

void (*sub_24A450FD8(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24A453818(v6, a2, a3);
  return sub_24A451060;
}

void sub_24A451060(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_24A4510D4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a4;
  v7 = sub_24A4AB690();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24A4AB6E0();
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = a1[67];
  v17 = sub_24A453580();
  v18 = sub_24A450FD8(v39, a2, a3);
  v20 = v19;
  v21 = type metadata accessor for FMFFriend();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v20, 1, v21))
  {
    *(v20 + *(v21 + 84)) = 7;
  }

  (v18)(v39, 0);
  (v17)(aBlock, 0);
  (*(v22 + 56))(v15, 1, 1, v21);
  swift_beginAccess();

  sub_24A39AF88(v15, a2, a3);
  result = swift_endAccess();
  if (v37)
  {
    v24 = a1[72];
    a1[72] = 0;

    v25 = a1[8];
    aBlock[4] = sub_24A3BCC0C;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D893E8;
    v26 = _Block_copy(aBlock);

    v27 = v31;
    sub_24A4AB6B0();
    v39[0] = MEMORY[0x277D84F90];
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v28 = v33;
    v29 = v36;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v27, v28, v26);
    _Block_release(v26);
    (*(v35 + 8))(v28, v29);
    (*(v32 + 8))(v27, v34);
  }

  return result;
}

uint64_t sub_24A451528(uint64_t a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A4AB6E0();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFFriend();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v19[1] = *(v1 + 56);
  sub_24A3992EC(a1, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFFriend);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  sub_24A39983C(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for FMFFriend);
  aBlock[4] = sub_24A4549CC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89988;
  v17 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v17);
  _Block_release(v17);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v20);
}

uint64_t sub_24A4518B8(void *a1, uint64_t *a2)
{
  v4 = sub_24A4AB690();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = a1[67];
  v17 = *a2;
  v18 = a2[1];
  sub_24A3992EC(a2, &v24 - v14, type metadata accessor for FMFFriend);
  v19 = type metadata accessor for FMFFriend();
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  swift_beginAccess();

  sub_24A39AF88(v15, v17, v18);
  swift_endAccess();
  v20 = a1[72];
  a1[72] = 0;

  v21 = a1[8];
  aBlock[4] = sub_24A3BCC0C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D899B0;
  v22 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v27 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v22);
  _Block_release(v22);
  (*(v26 + 8))(v7, v4);
  (*(v24 + 8))(v11, v25);
}

uint64_t sub_24A451C90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v7 = v6;
  v11 = sub_24A4AB690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24A4AB6E0();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v7 + 56);
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v28 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v27);
}