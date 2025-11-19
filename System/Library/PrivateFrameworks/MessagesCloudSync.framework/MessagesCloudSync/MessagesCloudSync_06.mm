uint64_t sub_22B9AA454(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = sub_22B9ABB9C;
  }

  else
  {
    v8 = v4[55];
    v9 = v4[39];
    v10 = v4[43];
    swift_unknownObjectRelease();

    v4[58] = a1;
    v4[59] = v9;
    v7 = sub_22B9ABBA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9AA5B0()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0x656D686361747461, 0xEA0000000000746ELL);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0x656D686361747461, 0xEA0000000000746ELL);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17C20;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9AA9B4;

  return sub_22B9A853C();
}

uint64_t sub_22B9AA9B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[51];
  v10 = *v2;
  v4[52] = v1;

  if (v1)
  {
    v6 = sub_22B9ABB98;
  }

  else
  {
    v7 = v4[50];
    v8 = v4[43];
    swift_unknownObjectRelease();

    v6 = sub_22B9AAAE4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9AAAE4()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_22BA13CB0;
  *(v8 + 32) = v6;
  swift_unknownObjectRetain_n();
  v9 = v6;
  v10 = sub_22B9A7DB0(v8);
  swift_setDeallocating();
  sub_22B936BEC(v8 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v11 = swift_initStackObject();
  v0[54] = v11;
  *(v11 + 64) = MEMORY[0x277D84F90];
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v12 = swift_allocObject();
  v0[55] = v12;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v10;
  *(v12 + 40) = 1;
  *(v11 + 48) = &unk_22BA17C28;
  *(v11 + 56) = v12;
  v13 = swift_task_alloc();
  v0[56] = v13;
  *v13 = v0;
  v13[1] = sub_22B9AA454;

  return sub_22B9A853C();
}

uint64_t sub_22B9AACAC()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0x556567617373656DLL, 0xEF31566574616470);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0x556567617373656DLL, 0xEF31566574616470);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17C08;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9AB0BC;

  return sub_22B9A853C();
}

uint64_t sub_22B9AB0BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[51];
  v10 = *v2;
  v4[52] = v1;

  if (v1)
  {
    v6 = sub_22B9ABB98;
  }

  else
  {
    v7 = v4[50];
    v8 = v4[43];
    swift_unknownObjectRelease();

    v6 = sub_22B9AB1EC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9AB1EC()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_22BA13CB0;
  *(v8 + 32) = v6;
  swift_unknownObjectRetain_n();
  v9 = v6;
  v10 = sub_22B9A7DB0(v8);
  swift_setDeallocating();
  sub_22B936BEC(v8 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v11 = swift_initStackObject();
  v0[54] = v11;
  *(v11 + 64) = MEMORY[0x277D84F90];
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v12 = swift_allocObject();
  v0[55] = v12;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v10;
  *(v12 + 40) = 1;
  *(v11 + 48) = &unk_22BA17C10;
  *(v11 + 56) = v12;
  v13 = swift_task_alloc();
  v0[56] = v13;
  *v13 = v0;
  v13[1] = sub_22B9AA454;

  return sub_22B9A853C();
}

uint64_t sub_22B9AB3B4()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0xD000000000000012, 0x800000022BA1BA10);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0xD000000000000012, 0x800000022BA1BA10);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17BF0;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9AB7B4;

  return sub_22B9A853C();
}

uint64_t sub_22B9AB7B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[51];
  v10 = *v2;
  v4[52] = v1;

  if (v1)
  {
    v6 = sub_22B9ABB98;
  }

  else
  {
    v7 = v4[50];
    v8 = v4[43];
    swift_unknownObjectRelease();

    v6 = sub_22B9AB8E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9AB8E4()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_22BA13CB0;
  *(v8 + 32) = v6;
  swift_unknownObjectRetain_n();
  v9 = v6;
  v10 = sub_22B9A7DB0(v8);
  swift_setDeallocating();
  sub_22B936BEC(v8 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v11 = swift_initStackObject();
  v0[54] = v11;
  *(v11 + 64) = MEMORY[0x277D84F90];
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v12 = swift_allocObject();
  v0[55] = v12;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v10;
  *(v12 + 40) = 1;
  *(v11 + 48) = &unk_22BA17BF8;
  *(v11 + 56) = v12;
  v13 = swift_task_alloc();
  v0[56] = v13;
  *v13 = v0;
  v13[1] = sub_22B9AA454;

  return sub_22B9A853C();
}

uint64_t sub_22B9ABA90(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B9ABBA0;

  return sub_22B9A7EE4(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_22B9ABB58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B9ABBA8(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentRecord();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v166 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v159 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v167 = &v159 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v170 = &v159 - v15;
  v16 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v178 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v159 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v159 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v168 = &v159 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v171 = &v159 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v159 - v36;
  v38 = sub_22BA0FC4C();
  v39 = *(v38 - 8);
  v179 = v38;
  v180 = v39;
  v40 = *(v39 + 64);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v177 = &v159 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v176 = &v159 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v50 = &v159 - v49;
  v52 = MEMORY[0x28223BE20](v48, v51);
  v54 = &v159 - v53;
  v56 = MEMORY[0x28223BE20](v52, v55);
  v169 = &v159 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v172 = &v159 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v64 = &v159 - v63;
  MEMORY[0x28223BE20](v62, v65);
  v173 = &v159 - v66;
  v174 = v2;
  v67 = *(v2 + 52);
  v181 = a1;
  memcpy(v186, (a1 + v67), 0x140uLL);
  if (sub_22B97CA68(v186) == 1 || (v186[8] & 1) != 0 || v186[7] < 1)
  {
    memcpy(v185, (v181 + v67), sizeof(v185));
    if (sub_22B97CA68(v185) == 1 || !v185[26])
    {
      v68 = v180;
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v70 = sub_22BA0FEFC();
      sub_22B936CA8(v70, qword_28141AD40);
      sub_22B97CACC(v181, v10);
      v71 = sub_22BA0FEDC();
      v72 = sub_22BA1044C();
      v73 = os_log_type_enabled(v71, v72);
      v88 = v179;
      if (v73)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v183[0] = v75;
        *v74 = 136315138;
        memcpy(v184, &v10[*(v174 + 52)], sizeof(v184));
        if (sub_22B97CA68(v184) == 1)
        {
          v76 = 0;
          v77 = 0xE000000000000000;
        }

        else
        {
          v76 = v184[23];
          v77 = v184[24];
        }

        sub_22B9AD928(v10);
        v79 = sub_22B99153C(v76, v77, v183);

        *(v74 + 4) = v79;
        _os_log_impl(&dword_22B92A000, v71, v72, "Got IMFileTransfer record with %s with no file name", v74, 0xCu);
        sub_22B936C4C(v75);
        MEMORY[0x23189ADD0](v75, -1, -1);
        MEMORY[0x23189ADD0](v74, -1, -1);

        v88 = v179;
        v68 = v180;
      }

      else
      {

        sub_22B9AD928(v10);
      }

      goto LABEL_71;
    }

    v165 = v24;

    sub_22BA0FBAC();
    sub_22BA0E688(v28);
    v69 = v179;
    v68 = v180;
    if ((*(v180 + 48))(v28, 1, v179) == 1)
    {
      (*(v68 + 8))(v54, v69);

      sub_22B936BEC(v28, &qword_27D8D5210, qword_22BA16040);
      v88 = v69;
      v24 = v165;
      goto LABEL_71;
    }

    (*(v68 + 32))(v50, v28, v69);
    v111 = sub_22BA0FC5C();
    v113 = v112;
    sub_22BA0FCBC();
    sub_22B9359BC(v111, v113);

    v114 = v179;
    v68 = v180;
    v115 = *(v180 + 8);
    v115(v50, v179);
    v115(v54, v114);
    v88 = v114;
    goto LABEL_62;
  }

  v165 = v24;
  memcpy(v185, (v181 + v67), sizeof(v185));
  if (sub_22B97CA68(v185) == 1)
  {
    v78 = 0;
  }

  else
  {
    v78 = v185[10];
  }

  v80 = [v175 filename];
  if (!v80)
  {
    if (!v78)
    {
      goto LABEL_32;
    }

    v83 = 0;
LABEL_27:
    v166 = v83;
    v87 = v78;
    goto LABEL_28;
  }

  v81 = v80;
  sub_22BA0FFFC();
  v83 = v82;

  if (v78)
  {
    goto LABEL_27;
  }

  if (!v83)
  {
LABEL_32:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v96 = sub_22BA0FEFC();
    sub_22B936CA8(v96, qword_28141AD40);
    v97 = sub_22BA0FEDC();
    v98 = sub_22BA1044C();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v179;
    v68 = v180;
    v24 = v165;
    if (v99)
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_22B92A000, v97, v98, "Failed to write asset to disk because of nil path", v101, 2u);
      MEMORY[0x23189ADD0](v101, -1, -1);
    }

    goto LABEL_37;
  }

  v84 = sub_22BA0FFCC();

  v85 = [v84 im_lastPathComponent];

  if (!v85)
  {

    goto LABEL_32;
  }

  v166 = v83;
  sub_22BA0FFFC();
  v87 = v86;

LABEL_28:

  v89 = sub_22BA0E878();
  if (!v90)
  {

    goto LABEL_32;
  }

  v91 = v89;
  v92 = v90;
  v164 = v87;
  v93 = v173;
  sub_22BA0FBAC();
  sub_22BA0E688(v37);
  v94 = v179;
  v95 = v180;
  v162 = *(v180 + 48);
  v163 = v180 + 48;
  if (v162(v37, 1, v179) == 1)
  {
    sub_22B936BEC(v37, &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    (*(v95 + 32))(v64, v37, v94);
    sub_22B9AD984(v64, v93);
    v102 = sub_22BA0FFCC();
    [v175 _setLocalPath_];

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v103 = sub_22BA0FEFC();
    sub_22B936CA8(v103, qword_28141AD40);
    v104 = v170;
    sub_22B97CACC(v181, v170);

    v105 = sub_22BA0FEDC();
    v106 = sub_22BA1046C();

    if (os_log_type_enabled(v105, v106))
    {
      v160 = v106;
      v107 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183[0] = v159;
      *v107 = 136315394;
      memcpy(v184, (v104 + *(v174 + 52)), sizeof(v184));
      v108 = sub_22B97CA68(v184);
      v161 = v105;
      if (v108 == 1)
      {
        v109 = 0;
        v110 = 0xE000000000000000;
      }

      else
      {
        v109 = v184[23];
        v110 = v184[24];
      }

      sub_22B9AD928(v104);
      v116 = sub_22B99153C(v109, v110, v183);

      *(v107 + 4) = v116;
      *(v107 + 12) = 2080;
      *(v107 + 14) = sub_22B99153C(v91, v92, v183);
      v117 = v161;
      _os_log_impl(&dword_22B92A000, v161, v160, "Created transfer %s at finalAssetPath: %s", v107, 0x16u);
      v118 = v159;
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v118, -1, -1);
      MEMORY[0x23189ADD0](v107, -1, -1);
    }

    else
    {

      sub_22B9AD928(v104);
    }

    sub_22B9AE010(v91, v92);
    (*(v180 + 8))(v64, v179);
  }

  memcpy(v184, (v181 + v67), sizeof(v184));
  v119 = sub_22B97CA68(v184);
  v68 = v180;
  if (v119 == 1 || (v120 = v184[4]) == 0)
  {

    v124 = [v175 _auxVideoPathIfItExists];
    if (v124)
    {
      v125 = v124;
      v126 = [v124 im_lastPathComponent];

      v88 = v179;
      v24 = v165;
      v123 = v173;
      if (!v126)
      {
        (*(v68 + 8))(v173, v179);
        goto LABEL_71;
      }

      v122 = v179;
      v121 = sub_22BA0FFFC();
      v120 = v127;

      goto LABEL_53;
    }

    v88 = v179;
    (*(v68 + 8))(v173, v179);
LABEL_62:
    v24 = v165;
    goto LABEL_71;
  }

  v121 = v184[3];

  v122 = v179;
  v24 = v165;
  v123 = v173;
LABEL_53:
  v128 = v171;
  sub_22BA0E698(v171);
  v129 = v162(v128, 1, v122);
  v130 = v172;
  if (v129 == 1)
  {
    (*(v68 + 8))(v123, v122);

    sub_22B936BEC(v128, &qword_27D8D5210, qword_22BA16040);
    v88 = v122;
    goto LABEL_71;
  }

  (*(v68 + 32))(v172, v128, v122);
  v131 = v168;
  (*(v68 + 16))(v168, v123, v122);
  (*(v68 + 56))(v131, 0, 1, v122);
  v132 = sub_22B9AE3A8(v131, v121, v120);
  v134 = v133;

  sub_22B936BEC(v131, &qword_27D8D5210, qword_22BA16040);
  if (v134)
  {
    v135 = v169;
    sub_22BA0FBAC();
    sub_22B9AD984(v130, v135);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v136 = sub_22BA0FEFC();
    sub_22B936CA8(v136, qword_28141AD40);
    v137 = v167;
    sub_22B97CACC(v181, v167);

    v138 = sub_22BA0FEDC();
    v139 = sub_22BA1046C();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = v137;
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v182 = v142;
      *v141 = 136315394;
      memcpy(v183, (v140 + *(v174 + 52)), 0x140uLL);
      if (sub_22B97CA68(v183) == 1)
      {
        v143 = 0;
        v144 = 0xE000000000000000;
      }

      else
      {
        v143 = v183[23];
        v144 = v183[24];
      }

      sub_22B9AD928(v167);
      v157 = sub_22B99153C(v143, v144, &v182);

      *(v141 + 4) = v157;
      *(v141 + 12) = 2080;
      *(v141 + 14) = sub_22B99153C(v132, v134, &v182);
      _os_log_impl(&dword_22B92A000, v138, v139, "Stored aux video for transfer %s at finalAssetPath: %s", v141, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v142, -1, -1);
      MEMORY[0x23189ADD0](v141, -1, -1);

      v100 = v179;
      v24 = v165;
      v130 = v172;
    }

    else
    {

      sub_22B9AD928(v137);
      v100 = v179;
    }

    sub_22B9AE010(v132, v134);

    v68 = v180;
    v158 = *(v180 + 8);
    v158(v169, v100);
    v158(v130, v100);
    v158(v123, v100);
LABEL_37:
    v88 = v100;
    goto LABEL_71;
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v145 = sub_22BA0FEFC();
  sub_22B936CA8(v145, qword_28141AD40);
  v146 = sub_22BA0FEDC();
  v147 = sub_22BA1044C();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    *v148 = 0;
    _os_log_impl(&dword_22B92A000, v146, v147, "Failed to write aux asset to disk because of nil path", v148, 2u);
    MEMORY[0x23189ADD0](v148, -1, -1);
  }

  v149 = *(v68 + 8);
  v150 = v179;
  v149(v130, v179);
  v149(v123, v150);
  v88 = v150;
LABEL_71:
  sub_22BA0E688(v24);
  v151 = *(v68 + 48);
  if (v151(v24, 1, v88) == 1)
  {
    sub_22B936BEC(v24, &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    v152 = v176;
    (*(v68 + 32))(v176, v24, v88);
    v185[3] = &type metadata for FileManagerProvider;
    v185[4] = &off_283F53B48;
    v185[0] = [objc_opt_self() defaultManager];
    sub_22B971CA8(v152);
    (*(v68 + 8))(v152, v88);
    sub_22B957EE4(v185);
  }

  v153 = v178;
  sub_22BA0E698(v178);
  if (v151(v153, 1, v88) == 1)
  {
    return sub_22B936BEC(v153, &qword_27D8D5210, qword_22BA16040);
  }

  v155 = v180;
  v156 = v177;
  (*(v180 + 32))(v177, v153, v88);
  v185[3] = &type metadata for FileManagerProvider;
  v185[4] = &off_283F53B48;
  v185[0] = [objc_opt_self() &off_27871A638 + 3];
  sub_22B971CA8(v156);
  (*(v155 + 8))(v156, v88);
  return sub_22B957EE4(v185);
}

id sub_22B9AD110(uint64_t a1, int a2)
{
  v47 = a2;
  v4 = sub_22BA0FD8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v43 - v12;
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v46 = type metadata accessor for AttachmentRecord();
  v15 = *(v46 + 52);
  memcpy(v50, (a1 + v15), sizeof(v50));
  memcpy(v51, (a1 + v15), 0x140uLL);
  if (sub_22B97CA68(v51) == 1)
  {
    sub_22B9AE6F0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v45 = v2;
    memcpy(v49, v50, sizeof(v49));
    sub_22B9AE744(v49, &v48);
    v16 = sub_22BA0FFCC();
    [v14 setGuid_];

    if (v51[6])
    {

      v17 = sub_22BA0FFCC();
    }

    else
    {
      v17 = 0;
    }

    v44 = a1;
    [v14 setType_];

    if (v51[22])
    {
      v18 = 0;
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate_];
      sub_22BA0FD5C();

      v18 = sub_22BA0FCFC();
      (*(v43 + 8))(v13, v4);
    }

    [v14 setCreatedDate_];

    if (v51[20])
    {
      v20 = 0;
    }

    else
    {
      v21 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) &selRef:v51[19] setRecordName:? + 6];
      sub_22BA0FD5C();

      v20 = sub_22BA0FCFC();
      (*(v43 + 8))(v10, v4);
    }

    a1 = v44;
    [v14 _setStartDate_];

    if (LOBYTE(v51[36]))
    {
      v22 = 0;
    }

    else
    {
      v22 = v51[35];
    }

    [v14 _setTransferState_];
    [v14 setIsIncoming_];
    v23 = 0;
    if (v51[30] >> 60 != 15)
    {
      v23 = sub_22BA0FC8C();
    }

    v24 = JWDecodeDictionary();

    if (v24)
    {
      v25 = sub_22BA0FF6C();

      v26 = sub_22B98963C(v25);

      if (v26)
      {
        sub_22B98C248(v26);

        v26 = sub_22BA0FF5C();
      }
    }

    else
    {
      v26 = 0;
    }

    [v14 setUserInfo_];

    if (v51[32] >> 60 == 15)
    {
      v27 = 0;
    }

    else
    {
      v27 = sub_22BA0FC8C();
    }

    v28 = JWDecodeDictionary();

    if (v28)
    {
      v29 = sub_22BA0FF6C();

      v28 = sub_22B98963C(v29);

      if (v28)
      {
        sub_22B98C248(v28);

        v28 = sub_22BA0FF5C();
      }
    }

    [v14 setStickerUserInfo_];

    if (v51[34] >> 60 == 15)
    {
      v30 = 0;
    }

    else
    {
      v30 = sub_22BA0FC8C();
    }

    v31 = JWDecodeDictionary();

    if (v31)
    {
      v32 = sub_22BA0FF6C();

      v31 = sub_22B98963C(v32);

      if (v31)
      {
        sub_22B98C248(v31);

        v31 = sub_22BA0FF5C();
      }
    }

    [v14 setAttributionInfo_];

    if (LOBYTE(v51[2]))
    {
      v33 = 0;
    }

    else
    {
      v33 = v51[1];
    }

    [v14 setTotalBytes_];
    if (v51[18])
    {

      v34 = sub_22BA0FFCC();
    }

    else
    {
      v34 = 0;
    }

    [v14 setFilename_];

    [v14 setIsSticker_];
    if (v51[13])
    {

      v35 = sub_22BA0FFCC();
    }

    else
    {
      v35 = 0;
    }

    [v14 setAdaptiveImageGlyphContentIdentifier_];

    if (v51[15])
    {

      v36 = sub_22BA0FFCC();
    }

    else
    {
      v36 = 0;
    }

    [v14 setAdaptiveImageGlyphContentDescription_];

    [v14 setHideAttachment_];
    [v14 setCloudKitSyncState_];
    v37 = (a1 + *(v46 + 56));
    if (v37[1] >> 60 == 15)
    {
      v38 = 0;
    }

    else
    {
      v39 = *v37;
      v38 = sub_22BA0FC8C();
    }

    [v14 setCloudKitServerChangeTokenBlob_];

    if (*(a1 + 56))
    {
      v40 = *(a1 + 48);
      v41 = sub_22BA0FFCC();
    }

    else
    {
      v41 = 0;
    }

    [v14 setCloudKitRecordID_];

    [v14 setPreviewGenerationState_];
    [v14 _migratePreviewGenerationState];
    if (v47)
    {
      sub_22B9ABBA8(a1);
    }

    sub_22B936BEC(v50, qword_27D8D5630, &qword_22BA1B590);
  }

  sub_22B9AD928(a1);
  return v14;
}

uint64_t sub_22B9AD928(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B9AD984(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_22BA0FC4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = v21 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v21 - v15;
  v22 = objc_opt_self();
  v17 = [v22 defaultManager];
  v24 = a2;
  sub_22B964DE0(a2, v17);
  v21[4] = v11;

  v18 = v24;
  sub_22BA0FBFC();
  sub_22BA0FB7C();
  (*(v4 + 8))(v16, v3);
  v19 = sub_22BA0FFCC();

  IMSharedHelperEnsureDirectoryExistsAtPath();

  v20 = [v22 defaultManager];
  sub_22B964EA4(v23, v18, v20);
}

void sub_22B9AE010(uint64_t a1, unint64_t a2)
{
  v28[10] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultManager];
  sub_22B9349C8(&qword_27D8D5618, qword_22BA17C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13CB0;
  v6 = *MEMORY[0x277CCA1B0];
  *(inited + 32) = *MEMORY[0x277CCA1B0];
  v7 = *MEMORY[0x277CCA1A0];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  v9 = v6;
  v10 = v7;
  sub_22B9BBBBC(inited);
  swift_setDeallocating();
  sub_22B936BEC(inited + 32, &qword_27D8D5620, &qword_22BA186C0);
  type metadata accessor for FileAttributeKey(0);
  sub_22B97CB30();
  v11 = sub_22BA0FF5C();

  v12 = sub_22BA0FFCC();
  v28[0] = 0;
  LODWORD(v6) = [v4 setAttributes:v11 ofItemAtPath:v12 error:v28];

  v13 = v28[0];
  if (v6)
  {
    v14 = *MEMORY[0x277D85DE8];

    v15 = v13;
  }

  else
  {
    v16 = v28[0];
    v17 = sub_22BA0FB6C();

    swift_willThrow();
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v18 = sub_22BA0FEFC();
    sub_22B936CA8(v18, qword_28141AD40);

    v19 = v17;
    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1044C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_22B99153C(a1, a2, v28);
      *(v22 + 12) = 2112;
      v25 = v17;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&dword_22B92A000, v20, v21, "Failed making file class C %s: %@", v22, 0x16u);
      sub_22B936BEC(v23, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v23, -1, -1);
      sub_22B936C4C(v24);
      MEMORY[0x23189ADD0](v24, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    else
    {
    }

    v27 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_22B9AE3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_22BA0FB8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v29 - v14;
  v16 = sub_22BA0FC4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v29 - v24;
  sub_22B9AE680(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_22B936BEC(v15, &qword_27D8D5210, qword_22BA16040);
    return 0;
  }

  else
  {
    sub_22BA0FBFC();
    v27 = *(v17 + 8);
    v27(v15, v16);
    v31 = v30;
    v32 = a3;
    (*(v6 + 104))(v10, *MEMORY[0x277CC91D8], v5);
    sub_22B936ACC();
    sub_22BA0FC2C();
    (*(v6 + 8))(v10, v5);
    v27(v22, v16);
    v28 = sub_22BA0FB7C();
    v27(v25, v16);
    return v28;
  }
}

uint64_t sub_22B9AE680(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B9AE6F0()
{
  result = qword_27D8D5628;
  if (!qword_27D8D5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5628);
  }

  return result;
}

uint64_t sub_22B9AE7F0()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](sub_22B9AE838, v0, 0);
}

uint64_t sub_22B9AE838()
{
  v1 = v0[4];
  v2 = *(v0[3] + 112);
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = *(v1 + 80);
  *v4 = v0;
  v4[1] = sub_22B9AE8E0;

  return MEMORY[0x282200460](v0 + 2, v2, v5);
}

uint64_t sub_22B9AE8E0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9AE9F0, v2, 0);
}

uint64_t sub_22B9AEA10()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9AEAA0;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AEAA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);
  v13 = *v2;
  *(v5 + 32) = a1;

  ObjectType = swift_getObjectType();
  v8 = *(a2 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v13;
  v10[1] = sub_22B9AEC6C;

  return v12(ObjectType, a2);
}

uint64_t sub_22B9AEC6C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22B9B22B0;
  }

  else
  {
    v4 = sub_22B9B22BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9AED94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9AEE20;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AEE20(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v13 = *v2;
  *(v5 + 24) = a1;

  ObjectType = swift_getObjectType();
  v8 = *(a2 + 24);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 32) = v10;
  *v10 = v13;
  v10[1] = sub_22B9AEFEC;

  return v12(ObjectType, a2);
}

uint64_t sub_22B9AEFEC(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v7 = *v1;

  swift_unknownObjectRelease();
  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_22B9AF104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9AF190;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AF190(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v13 = *v2;
  *(v5 + 24) = a1;

  ObjectType = swift_getObjectType();
  v8 = *(a2 + 32);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 32) = v10;
  *v10 = v13;
  v10[1] = sub_22B9AF35C;

  return v12(ObjectType, a2);
}

uint64_t sub_22B9AF35C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  swift_unknownObjectRelease();
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B9AF46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_22B9AF500;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AF500(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;
  v5[7] = a1;

  ObjectType = swift_getObjectType();
  v9 = *(a2 + 40);
  v16 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v5[8] = v11;
  *v11 = v7;
  v11[1] = sub_22B9AF710;
  v12 = v5[4];
  v13 = v5[3];
  v14 = v5[2];

  return v16(v14, v13, v12, ObjectType, a2);
}

uint64_t sub_22B9AF710(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(v6 + 72) = v2;

  v9 = *(v6 + 40);
  if (v2)
  {
    v10 = sub_22B9AF8C4;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 80) = a1;
    v10 = sub_22B9AF854;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9AF854()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3(v4, v1 & 1);
}

uint64_t sub_22B9AF8C4()
{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_22B9AF928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_22B9AF9C0;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AF9C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;
  v5[8] = a1;

  ObjectType = swift_getObjectType();
  v9 = *(a2 + 48);
  v17 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v7;
  v11[1] = sub_22B9AFBE4;
  v12 = v5[5];
  v13 = v5[4];
  v14 = v5[3];
  v15 = v5[2];

  return v17(v15, v14, v13, v12, ObjectType, a2);
}

uint64_t sub_22B9AFBE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[6];
  if (v1)
  {
    v8 = sub_22B9AFD88;
  }

  else
  {
    v4[11] = a1;
    v8 = sub_22B9AFD20;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B9AFD20()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_22B9AFD88()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_22B9AFDEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22B9AFE7C;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AFE7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  v5[5] = a1;

  ObjectType = swift_getObjectType();
  v9 = *(a2 + 56);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v7;
  v11[1] = sub_22B9B0064;
  v12 = v5[2];

  return v14(v12, ObjectType, a2);
}

uint64_t sub_22B9B0064(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_22B9B0208;
  }

  else
  {
    v4[8] = a1;
    v8 = sub_22B9B01A0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B9B01A0()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[8];

  return v2(v3);
}

uint64_t sub_22B9B0208()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_22B9B026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_22B9B0304;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B0304(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *v2;
  v5[9] = a1;

  ObjectType = swift_getObjectType();
  v9 = *(a2 + 64);
  v18 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v5[10] = v11;
  *v11 = v7;
  v11[1] = sub_22B9B053C;
  v12 = v5[6];
  v13 = v5[5];
  v14 = v5[4];
  v15 = v5[3];
  v16 = v5[2];

  return v18(v16, v15, v14, v13, v12, ObjectType, a2);
}

uint64_t sub_22B9B053C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_22B9B22A8;
  }

  else
  {
    v4 = sub_22B9B22B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9B0664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_22B9B06FC;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B06FC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *v2;
  v5[9] = a1;

  ObjectType = swift_getObjectType();
  v9 = *(a2 + 72);
  v18 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v5[10] = v11;
  *v11 = v7;
  v11[1] = sub_22B9B0934;
  v12 = v5[6];
  v13 = v5[5];
  v14 = v5[4];
  v15 = v5[3];
  v16 = v5[2];

  return v18(v16, v15, v14, v13, v12, ObjectType, a2);
}

uint64_t sub_22B9B0934()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_22B9B0AC0;
  }

  else
  {
    v4 = sub_22B9B0A5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9B0A5C()
{
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9B0AC0()
{
  v1 = v0[9];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_22B9B0B24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 88) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  *v6 = v5;
  v6[1] = sub_22B9B0BBC;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B0BBC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(v5 + 56) = a1;

  ObjectType = swift_getObjectType();
  v9 = *(a2 + 80);
  v17 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 64) = v11;
  *v11 = v7;
  v11[1] = sub_22B9B0DD0;
  v12 = *(v5 + 32);
  v13 = *(v5 + 24);
  v14 = *(v5 + 88);
  v15 = *(v5 + 16);

  return v17(v15, v14, v13, v12, ObjectType, a2);
}

uint64_t sub_22B9B0DD0(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(v6 + 72) = v2;

  v9 = *(v6 + 40);
  if (v2)
  {
    v10 = sub_22B9B22AC;
  }

  else
  {
    *(v6 + 89) = a2;
    *(v6 + 80) = a1;
    v10 = sub_22B9B0F14;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9B0F14()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 56);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3(v4, v1 & 1);
}

uint64_t sub_22B9B0F84()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9B1014;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B1014(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);
  v13 = *v2;
  *(v5 + 32) = a1;

  ObjectType = swift_getObjectType();
  v8 = *(a2 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v13;
  v10[1] = sub_22B9B11E0;

  return v12(ObjectType, a2);
}

uint64_t sub_22B9B11E0()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22B9B136C;
  }

  else
  {
    v4 = sub_22B9B1308;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9B1308()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9B136C()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_22B9B13D0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9B1460;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B1460(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);
  v13 = *v2;
  *(v5 + 32) = a1;

  ObjectType = swift_getObjectType();
  v8 = *(a2 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v13;
  v10[1] = sub_22B9AEC6C;

  return v12(ObjectType, a2);
}

uint64_t sub_22B9B162C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9B16BC;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B16BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);
  v13 = *v2;
  *(v5 + 32) = a1;

  ObjectType = swift_getObjectType();
  v8 = *(a2 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v13;
  v10[1] = sub_22B9AEC6C;

  return v12(ObjectType, a2);
}

uint64_t sub_22B9B1888()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B9B18F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9AEA10();
}

uint64_t sub_22B9B1980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9B1A0C;

  return sub_22B9AED94();
}

uint64_t sub_22B9B1A0C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22B9B1B08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22B9AF104();
}

uint64_t sub_22B9B1B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B947814;

  return sub_22B9AF46C(a1, a2, a3);
}

uint64_t sub_22B9B1C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B9B22B4;

  return sub_22B9AF928(a1, a2, a3, a4);
}

uint64_t sub_22B9B1CFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B9B1D90;

  return sub_22B9AFDEC(a1);
}

uint64_t sub_22B9B1D90(uint64_t a1)
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

uint64_t sub_22B9B1E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B945AC8;

  return sub_22B9B026C(a1, a2, a3, a4, a5);
}

uint64_t sub_22B9B1F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B945AC8;

  return sub_22B9B0664(a1, a2, a3, a4, a5);
}

uint64_t sub_22B9B2018(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B980888;

  return sub_22B9B0B24(a1, a2, a3, a4);
}

uint64_t sub_22B9B20D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22B9B0F84();
}

uint64_t sub_22B9B2160()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9B13D0();
}

uint64_t sub_22B9B21EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9B162C();
}

id sub_22B9B2318()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_22B9B23C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  return v0;
}

uint64_t sub_22B9B23F0()
{
  sub_22B9B23C0();

  return swift_deallocClassInstance();
}

uint64_t sub_22B9B2424()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22B9B2464()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22B9B259C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B9B2600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_22B9B265C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22B9B26F0@<X0>(void *a1@<X0>, SEL *a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v20 - v9;
  if (a1)
  {
    v11 = a1;
    v12 = [v11 *a2];
    if (v12 != -1)
    {
      v13 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (v13)
      {
        v14 = v13;
        sub_22BA0FD5C();

        v15 = sub_22BA0FD8C();
        (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
      }

      else
      {

        v19 = sub_22BA0FD8C();
        (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
      }

      return sub_22B935A74(v10, a3);
    }
  }

  v16 = sub_22BA0FD8C();
  v17 = *(*(v16 - 8) + 56);

  return v17(a3, 1, 1, v16);
}

uint64_t sub_22B9B28C0()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9B2954()
{
  *v0;
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B9B29D4()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9B2A64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B9B3714();
  *a2 = result;
  return result;
}

void sub_22B9B2A94(void *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0xE900000000000034;
  if (*v1 == 2)
  {
    v3 = 0xE900000000000033;
  }

  if (*v1)
  {
    v2 = 0xE900000000000032;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  *a1 = 0x6F746F725067736DLL;
  a1[1] = v4;
}

uint64_t sub_22B9B2AE4()
{
  *v0;
  *v0;
  return 0x6F746F725067736DLL;
}

uint64_t sub_22B9B2B30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B9B3714();
  *a1 = result;
  return result;
}

uint64_t sub_22B9B2B58(uint64_t a1)
{
  v2 = sub_22B9B35A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9B2B94(uint64_t a1)
{
  v2 = sub_22B9B35A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9B2BD0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v40 = a5;
  v41 = a4;
  v9 = sub_22B9349C8(&qword_27D8D5740, &qword_22BA180A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v40 - v13;
  v15 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9B35A8();
  sub_22BA10D9C();
  if (a2)
  {
    v16 = a2;
    v17 = [v16 data];
    if (v17)
    {
      v18 = v17;
      v19 = sub_22BA0FCAC();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xF000000000000000;
    }

    v42 = v19;
    v43 = v21;
    v44 = 0;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();
    if (v5)
    {
      goto LABEL_19;
    }

    sub_22B9359A8(v42, v43);
  }

  if (a3)
  {
    v22 = a3;
    v23 = [v22 data];
    if (v23)
    {
      v24 = v23;
      v25 = sub_22BA0FCAC();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xF000000000000000;
    }

    v42 = v25;
    v43 = v27;
    v44 = 1;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();
    if (v5)
    {

LABEL_26:
      sub_22B9359A8(v42, v43);
      return (*(v10 + 8))(v14, v9);
    }

    sub_22B9359A8(v42, v43);
  }

  if (v41)
  {
    v16 = v41;
    v28 = [v16 data];
    if (v28)
    {
      v29 = v28;
      v30 = sub_22BA0FCAC();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xF000000000000000;
    }

    v42 = v30;
    v43 = v32;
    v44 = 2;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();
    if (v5)
    {
LABEL_19:

      goto LABEL_26;
    }

    sub_22B9359A8(v42, v43);
  }

  if (v40)
  {
    v33 = v40;
    v34 = [v33 data];
    if (v34)
    {
      v35 = v34;
      v36 = sub_22BA0FCAC();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0xF000000000000000;
    }

    v42 = v36;
    v43 = v38;
    v44 = 3;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();

    goto LABEL_26;
  }

  return (*(v10 + 8))(v14, v9);
}

void sub_22B9B2F84(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_22B9B2FD4(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }
}

void sub_22B9B2FD4(uint64_t *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5738, &qword_22BA180A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v45 - v7;
  v9 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9B35A8();
  sub_22BA10D8C();
  if (v1)
  {
LABEL_3:
    sub_22B936C4C(a1);
    return;
  }

  v51 = 0;
  v10 = sub_22B9363C8();
  sub_22BA10AFC();
  v11 = v50;
  if (v50 >> 60 == 15)
  {
    v48 = 0;
  }

  else
  {
    v46 = v49;
    v12 = sub_22BA0FC8C();
    v13 = [v12 _FTOptionallyDecompressData];

    if (v13)
    {
      v14 = sub_22BA0FCAC();
      v47 = v10;
      v16 = v15;

      v17 = v14;
      v18 = sub_22BA0FC8C();
      v19 = v16;
      v10 = v47;
      sub_22B9359BC(v17, v19);
    }

    else
    {
      v18 = 0;
    }

    v48 = [objc_allocWithZone(MEMORY[0x277D1ABF0]) initWithData_];

    sub_22B9359A8(v46, v11);
  }

  v51 = 1;
  sub_22BA10AFC();
  v20 = v50;
  if (v50 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v46 = v49;
    v47 = v10;
    v22 = sub_22BA0FC8C();
    v23 = [v22 _FTOptionallyDecompressData];

    if (v23)
    {
      v24 = sub_22BA0FCAC();
      v26 = v25;

      v27 = v26;
      v28 = sub_22BA0FC8C();
      sub_22B9359BC(v24, v27);
    }

    else
    {
      v28 = 0;
    }

    v10 = v47;
    v21 = [objc_allocWithZone(MEMORY[0x277D1AC00]) initWithData_];

    sub_22B9359A8(v46, v20);
  }

  v51 = 2;
  sub_22BA10AFC();
  v46 = 0;
  v29 = v50;
  if (v50 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v47 = v10;
    v45 = v49;
    v31 = sub_22BA0FC8C();
    v32 = [v31 _FTOptionallyDecompressData];

    if (v32)
    {
      v33 = sub_22BA0FCAC();
      v35 = v34;

      v32 = sub_22BA0FC8C();
      sub_22B9359BC(v33, v35);
    }

    v30 = [objc_allocWithZone(MEMORY[0x277D1AC08]) initWithData_];

    sub_22B9359A8(v45, v29);
  }

  v51 = 3;
  v36 = v46;
  sub_22BA10AFC();
  if (!v36)
  {
    v47 = v50;
    if (v50 >> 60 == 15)
    {
      (*(v4 + 8))(v8, v3);
    }

    else
    {
      v46 = v49;
      v38 = sub_22BA0FC8C();
      v39 = [v38 _FTOptionallyDecompressData];

      if (v39)
      {
        v45 = sub_22BA0FCAC();
        v41 = v40;

        v42 = v45;
        v43 = sub_22BA0FC8C();
        v44 = v42;
        v39 = v43;
        sub_22B9359BC(v44, v41);
      }

      [objc_allocWithZone(MEMORY[0x277D1AC10]) initWithData_];

      sub_22B9359A8(v46, v47);
      (*(v4 + 8))(v8, v3);
    }

    goto LABEL_3;
  }

  (*(v4 + 8))(v8, v3);
  v37 = v46;
  sub_22B936C4C(a1);

  if (!v37)
  {
  }
}

unint64_t sub_22B9B35A8()
{
  result = qword_281415E50;
  if (!qword_281415E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E50);
  }

  return result;
}

unint64_t sub_22B9B3610()
{
  result = qword_27D8D5748;
  if (!qword_27D8D5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5748);
  }

  return result;
}

unint64_t sub_22B9B3668()
{
  result = qword_281415E40;
  if (!qword_281415E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E40);
  }

  return result;
}

unint64_t sub_22B9B36C0()
{
  result = qword_281415E48;
  if (!qword_281415E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E48);
  }

  return result;
}

uint64_t sub_22B9B3714()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B9B3760()
{
  sub_22BA1008C();
}

uint64_t sub_22B9B38C0()
{
  sub_22BA1008C();
}

uint64_t sub_22B9B3A48()
{
  sub_22BA1008C();
}

uint64_t SyncPhase.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x7274656D656C6554;
    v7 = 0x6172745374736554;
    if (v1 != 8)
    {
      v7 = 1953719636;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6C6E4F746E756F43;
    if (v1 != 5)
    {
      v8 = 0x74696E4972657355;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616974696E49;
    v3 = 0x6369646F69726550;
    v4 = 0x70756B636142;
    if (v1 != 3)
    {
      v4 = 0xD000000000000017;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6C6C69666B636142;
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
}

uint64_t sub_22B9B3D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v19 = a3;
  v5 = sub_22B9349C8(&qword_27D8D51A0, &qword_22BA15448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = 0;
  v20 = 0x800000022BA1BD10;
  while (1)
  {
    v11 = byte_283F51BE0[v10 + 32];
    if (v11 > 4)
    {
      if (byte_283F51BE0[v10 + 32] <= 6u)
      {
        v13 = 0x6C6E4F746E756F43;
        if (v11 == 5)
        {
          v12 = 0xE900000000000079;
        }

        else
        {
          v13 = 0x74696E4972657355;
          v12 = 0xED00006465746169;
        }
      }

      else if (v11 == 7)
      {
        v13 = 0x7274656D656C6554;
        v12 = 0xE900000000000079;
      }

      else
      {
        v13 = 0x6172745374736554;
        if (v11 == 8)
        {
          v12 = 0xEE007372656C6767;
        }

        else
        {
          v13 = 1953719636;
          v12 = 0xE400000000000000;
        }
      }
    }

    else if (byte_283F51BE0[v10 + 32] <= 1u)
    {
      v13 = 0x6C616974696E49;
      if (byte_283F51BE0[v10 + 32])
      {
        v13 = 0x6C6C69666B636142;
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
      }
    }

    else if (v11 == 2)
    {
      v12 = 0xE800000000000000;
      v13 = 0x6369646F69726550;
    }

    else if (v11 == 3)
    {
      v12 = 0xE600000000000000;
      v13 = 0x70756B636142;
    }

    else
    {
      v13 = 0xD000000000000017;
      v12 = v20;
    }

    v23 = v13;
    v24 = v12;
    v21 = a1;
    v22 = a2;
    v14 = sub_22BA0FDEC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_22B936ACC();
    v15 = sub_22BA1078C();
    v17 = v16;
    sub_22B9B452C(v9);

    if ((v17 & 1) == 0 && !(v15 >> 14))
    {
      break;
    }

    if (++v10 == 10)
    {
      LOBYTE(v11) = 10;
      break;
    }
  }

  *v19 = v11;
  return result;
}

MessagesCloudSync::SyncPhase_optional __swiftcall SyncPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22BA10AAC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22B9B4074()
{
  result = qword_27D8D5750;
  if (!qword_27D8D5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5750);
  }

  return result;
}

uint64_t sub_22B9B40C8()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B38C0();
  return sub_22BA10D6C();
}

uint64_t sub_22B9B4118()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B38C0();
  return sub_22BA10D6C();
}

uint64_t sub_22B9B4168@<X0>(uint64_t *a1@<X8>)
{
  result = SyncPhase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B9B4240(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9B44D8();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_22B9B4294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22B9B44D8();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_22B9B4314()
{
  result = qword_27D8D5758;
  if (!qword_27D8D5758)
  {
    sub_22B948760(&qword_27D8D5760, &qword_22BA18330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5758);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B9B44D8()
{
  result = qword_27D8D5768;
  if (!qword_27D8D5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5768);
  }

  return result;
}

uint64_t sub_22B9B452C(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D51A0, &qword_22BA15448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B9B45A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  return MEMORY[0x2822009F8](sub_22B9B45CC, 0, 0);
}

uint64_t sub_22B9B45CC()
{
  v1 = *(v0 + 16);
  [*(v0 + 40) setFirstSyncDateToNow];
  v2 = v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase;
  v4 = *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_22B9B4710;

  return v10(ObjectType, v3);
}

uint64_t sub_22B9B4710()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B9B4840, 0, 0);
  }
}

uint64_t sub_22B9B4840()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 24);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_22B9B4954;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000015, 0x800000022BA1C690, sub_22B9B4F48, v3, v6);
}

uint64_t sub_22B9B4954()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22B9B4A70;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22B97F914;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9B4A70()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

void sub_22B9B4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = aBlock - v11;
  (*(v8 + 16))(aBlock - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  aBlock[4] = sub_22B9B4F58;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9B4E10;
  aBlock[3] = &unk_283F56408;
  v15 = _Block_copy(aBlock);

  [a5 toggleiCloudBackupsIfNeeded_];
  _Block_release(v15);
}

uint64_t sub_22B9B4C84(uint64_t a1, void *a2)
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v4 = sub_22BA0FEFC();
  sub_22B936CA8(v4, qword_28141AD40);
  v5 = a2;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1046C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2112;
    if (a2)
    {
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      v12 = v11;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v8 + 14) = v11;
    *v9 = v12;
    _os_log_impl(&dword_22B92A000, v6, v7, "Sync complete, toggle icloud backups result %ld, error %@", v8, 0x16u);
    sub_22B95DEF0(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  return sub_22BA102BC();
}

void sub_22B9B4E10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22B9B4E88(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B947814;

  return sub_22B9B45A4(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_22B9B4F58(uint64_t a1, void *a2)
{
  v4 = *(*(sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460) - 8) + 80);

  return sub_22B9B4C84(a1, a2);
}

uint64_t sub_22B9B4FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B9B4FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22B936C98(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22B9BAE64(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_22B936BEC(a1, &unk_27D8D5A30, qword_22BA13390);
    sub_22B9EB6F0(a2, a3, v10);

    return sub_22B936BEC(v10, &unk_27D8D5A30, qword_22BA13390);
  }

  return result;
}

uint64_t sub_22B9B50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_22B9BB48C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_22B990A58(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_22B9EC830();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_22B9EB944(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

void sub_22B9B51D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BA0FF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_22B9BC248(a1, a2);
  }

  else
  {
    sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
    v12 = sub_22BA1050C();
    v13 = sub_22BA0FF0C();
    MEMORY[0x28223BE20](v13, v14);
    v15[-4] = v3;
    v15[-3] = a1;
    v15[-2] = a2;
    sub_22BA1051C();
    (*(v7 + 8))(v11, v6);
  }
}

void sub_22B9B5378()
{
  v1 = v0;
  v2 = sub_22BA0FF1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_22B9BC538();
  }

  else
  {
    sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
    v8 = sub_22BA1050C();
    v9 = sub_22BA0FF0C();
    MEMORY[0x28223BE20](v9, v10);
    v11[-2] = v1;
    sub_22BA1051C();
    (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_22B9B5500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_22B9934AC(a3, v25 - v11, &unk_27D8D5780, &qword_22BA13DB0);
  v13 = sub_22BA1030C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B936BEC(v12, &unk_27D8D5780, &qword_22BA13DB0);
  }

  else
  {
    sub_22BA102FC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22BA1029C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22BA1006C() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22B9B57AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22B9B580C()
{
  v1 = *(v0 + 17);
  if (v1 > 4)
  {
    v6 = 0x7274656D656C6554;
    v7 = 0x6172745374736554;
    if (v1 != 8)
    {
      v7 = 1953719636;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6C6E4F746E756F43;
    if (v1 != 5)
    {
      v8 = 0x74696E4972657355;
    }

    if (*(v0 + 17) <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616974696E49;
    v3 = 0x6369646F69726550;
    v4 = 0x70756B636142;
    if (v1 != 3)
    {
      v4 = 0xD000000000000017;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*(v0 + 17))
    {
      v2 = 0x6C6C69666B636142;
    }

    if (*(v0 + 17) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

id sub_22B9B5960()
{
  result = sub_22B9B5980();
  qword_28141AF08 = result;
  return result;
}

id sub_22B9B5980()
{
  v0 = sub_22BA0FDCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281414B60 != -1)
  {
    swift_once();
  }

  v6 = qword_281414B68;
  v7 = qword_28141ACE8;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_28141ACF0;
  type metadata accessor for CloudState();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[6] = 0;
  v9[7] = 0;
  v10 = v8;
  v11 = sub_22BA0FFCC();
  v12 = [v10 stringForKey_];

  if (v12)
  {
    v13 = sub_22BA0FFFC();
    v15 = v14;
  }

  else
  {
    sub_22BA0FDBC();
    v13 = sub_22BA0FD9C();
    v15 = v16;
    (*(v1 + 8))(v5, v0);

    v17 = sub_22BA0FFCC();
    v18 = sub_22BA0FFCC();
    [v10 setObject:v17 forKey:v18];
  }

  v9[4] = v13;
  v9[5] = v15;
  v19 = sub_22B9BB724(v9);

  return v19;
}

uint64_t static SyncCoordinator.isSyncing()()
{
  v1 = v0;
  v2 = sub_22BA0FF1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    return off_281416A80 != 0;
  }

  v13 = 0;
  sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
  v9 = sub_22BA1050C();
  v10 = sub_22BA0FF0C();
  MEMORY[0x28223BE20](v10, v11);
  *&v12[-16] = &v13;
  *&v12[-8] = v1;
  sub_22BA1051C();

  (*(v3 + 8))(v7, v2);
  return v13;
}

uint64_t static SyncCoordinator.clearSyncStoreWhenSafe()()
{
  v1[2] = v0;
  v2 = sub_22BA0FF1C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9B5ECC, 0, 0);
}

uint64_t sub_22B9B5ECC()
{
  if ([objc_opt_self() isMainThread])
  {
    if (off_281416A80)
    {
LABEL_3:
      if (qword_281414B68 != -1)
      {
        swift_once();
      }

      [qword_28141ACF0 setBool:1 forKey:*MEMORY[0x277D199F8]];
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v1 = sub_22BA0FEFC();
      sub_22B936CA8(v1, qword_28141AD40);
      v2 = sub_22BA0FEDC();
      v3 = sub_22BA1046C();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_22B92A000, v2, v3, "Sync store will be deleted on completion of sync", v4, 2u);
        MEMORY[0x23189ADD0](v4, -1, -1);
      }

      v5 = *(v0 + 40);

      v6 = *(v0 + 8);

      return v6();
    }
  }

  else
  {
    *(v0 + 56) = 0;
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
    v12 = sub_22BA1050C();
    sub_22BA0FF0C();
    v13 = swift_task_alloc();
    *(v13 + 16) = v0 + 56;
    *(v13 + 24) = v10;
    sub_22BA1051C();

    (*(v9 + 8))(v8, v11);
    if (*(v0 + 56) == 1)
    {
      goto LABEL_3;
    }
  }

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v14 = *(&xmmword_28141AEB0 + 1);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 24);
  v19 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 48) = v18;
  *v18 = v0;
  v18[1] = sub_22B9B6254;

  return v19(ObjectType, v14);
}

uint64_t sub_22B9B6254(char a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 57) = a1;

  return MEMORY[0x2822009F8](sub_22B9B6354, 0, 0);
}

uint64_t sub_22B9B6354()
{
  v14 = v0;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 57);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 7562585;
    }

    else
    {
      v7 = 28494;
    }

    if (v4)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    v9 = sub_22B99153C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22B92A000, v2, v3, "No sync in progress, deleted Sync store immediately success: %s", v5, 0xCu);
    sub_22B936C4C(v6);
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  v10 = *(v0 + 40);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B9B6660(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  swift_getObjCClassMetadata();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9B6704;

  return static SyncCoordinator.clearSyncStoreWhenSafe()();
}

uint64_t sub_22B9B6704()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

void static SyncCoordinator.clearLocalCountsWhenSafe()()
{
  v1 = v0;
  v2 = sub_22BA0FF1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    if (off_281416A80)
    {
LABEL_3:
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v8 = sub_22BA0FEFC();
      sub_22B936CA8(v8, qword_28141AD40);
      v9 = sub_22BA0FEDC();
      v10 = sub_22BA1046C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_22B92A000, v9, v10, "Tried clearing local counts but currently in a sync, will clear on completion", v11, 2u);
        MEMORY[0x23189ADD0](v11, -1, -1);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
    v12 = sub_22BA1050C();
    v13 = sub_22BA0FF0C();
    MEMORY[0x28223BE20](v13, v14);
    *&v20[-16] = &v21;
    *&v20[-8] = v1;
    sub_22BA1051C();

    (*(v3 + 8))(v7, v2);
    if (v21)
    {
      goto LABEL_3;
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v15 = sub_22BA0FEFC();
  sub_22B936CA8(v15, qword_28141AD40);
  v16 = sub_22BA0FEDC();
  v17 = sub_22BA1046C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22B92A000, v16, v17, "Clearing local counts", v18, 2u);
    MEMORY[0x23189ADD0](v18, -1, -1);
  }

  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  v19 = sub_22BA0FFCC();
  IMDKVPersistValueForKey();

  v9 = sub_22BA0FFCC();
  IMDKVPersistValueForKey();
LABEL_15:
}

id static SyncCoordinator.register(store:asType:)(uint64_t a1, uint64_t a2)
{
  if (qword_281416508 != -1)
  {
    swift_once();
  }

  v4 = qword_28141AE28;

  return [v4 registerRecordStoreWithType:a2 store:a1];
}

uint64_t sub_22B9B6D80(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = a1;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

uint64_t sub_22B9B6DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t static SyncCoordinator.register(notifier:)()
{
  if (qword_281416500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = swift_unknownObjectRetain();
  MEMORY[0x231899830](v0);
  if (*((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v2 = *((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22BA1022C();
  }

  sub_22BA1026C();
  return swift_endAccess();
}

uint64_t static SyncCoordinator.startInitialSync(delegate:)(void *a1)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v7);
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    swift_unknownObjectRetain();
    sub_22B96AA6C(v6);
    sub_22B9BC988(v6, a1, v7, &unk_22BA184A8, v5);

    sub_22B936C4C(v6);
    return sub_22B936C4C(v7);
  }

  return result;
}

uint64_t sub_22B9B70AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 48) = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = qword_281416458;
  v12 = swift_task_alloc();
  *(v6 + 40) = v12;
  *v12 = v6;
  v12[1] = sub_22B9B71D0;

  return sub_22B9BDBA8(a6, a1, a2, a3, a4, 88, 1);
}

uint64_t sub_22B9B71D0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v6 = *v0;

  sub_22BA102EC();
  v4 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9B72FC, v4, v3);
}

uint64_t sub_22B9B72FC()
{
  v1 = *(v0 + 48);
  if (v1 <= 0x3F)
  {
    if (v1)
    {
      v2 = sub_22BA10C6C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, v4, v5, "Scheduling backfill sync after initial sync, which will kick off periodic after that", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }

    v8 = *(v0 + 16);
    v7 = *(v0 + 24);

    static SyncCoordinator.scheduleBackfillSync(delegate:)(v7);
  }

LABEL_11:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t static SyncCoordinator.scheduleBackfillSync(delegate:)(void *a1)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v8);
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v9 = 1;
    swift_unknownObjectRetain();
    sub_22B9DBCF0();
    sub_22B96C910(&v9, 2, 3, v6, 0, v7);
    swift_unknownObjectRelease();
    sub_22B9BC988(v7, a1, v8, &unk_22BA184B8, v5);

    sub_22B936C4C(v7);
    return sub_22B936C4C(v8);
  }

  return result;
}

uint64_t sub_22B9B75CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 48) = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = qword_281416458;
  v12 = swift_task_alloc();
  *(v6 + 40) = v12;
  *v12 = v6;
  v12[1] = sub_22B9B76F0;

  return sub_22B9BDBA8(a6, a1, a2, a3, a4, 89, 1);
}

uint64_t sub_22B9B76F0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v6 = *v0;

  sub_22BA102EC();
  v4 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9B781C, v4, v3);
}

uint64_t sub_22B9B781C()
{
  v1 = *(v0 + 48);
  if (v1 <= 0x3F)
  {
    if (v1)
    {
      v2 = sub_22BA10C6C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, v4, v5, "Scheduling asset download after backfill sync", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }

    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    static SyncCoordinator.scheduleAttachmentAssetDownloadSync(delegate:)(v8);
  }

LABEL_11:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22B9B7B38(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void), uint64_t a4)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v12);
  if (!v5)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a1;
    swift_unknownObjectRetain();
    a3(v11, 0);
    sub_22B9BC988(v11, a1, v12, a4, v10);

    sub_22B936C4C(v11);
    return sub_22B936C4C(v12);
  }

  return result;
}

uint64_t sub_22B9B7C30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  *(v6 + 56) = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  *(v6 + 40) = qword_281416458;
  v12 = swift_task_alloc();
  *(v6 + 48) = v12;
  *v12 = v6;
  v12[1] = sub_22B9B7D58;

  return sub_22B9BDBA8(a6, a1, a2, a3, a4, 90, 1);
}

uint64_t sub_22B9B7D58()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v6 = *v0;

  sub_22BA102EC();
  v4 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9B7E84, v4, v3);
}

uint64_t sub_22B9B7E84()
{
  if (*(v0 + 16))
  {
    goto LABEL_5;
  }

  v1 = *(v0 + 56);
  if (v1 > 0x3F)
  {
    goto LABEL_5;
  }

  if ((v1 & 1) == 0)
  {

    goto LABEL_10;
  }

  v2 = sub_22BA10C6C();

  if (v2)
  {
LABEL_10:
    v7 = *(v0 + 24);
    sub_22B9B8164(*(v0 + 32));
    goto LABEL_12;
  }

LABEL_5:
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v3 = sub_22BA0FEFC();
  sub_22B936CA8(v3, qword_28141AD40);
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error during previous sync, not attempting to re-schedule asset download sync", v6, 2u);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

LABEL_12:
  type metadata accessor for CloudState();
  if (!sub_22BA0876C())
  {
    sub_22B9BEF4C(*(v0 + 32));
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_22B9B8164(void *a1)
{
  if (qword_28141ADC8)
  {
    if ((*(qword_28141ADD0 + 216))())
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v2 = sub_22BA0FEFC();
      sub_22B936CA8(v2, qword_28141AD40);
      v3 = sub_22BA0FEDC();
      v4 = sub_22BA1046C();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_22B92A000, v3, v4, "User has finished attachment download sync, not re-scheduling", v5, 2u);
        MEMORY[0x23189ADD0](v5, -1, -1);
      }
    }

    else
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v6 = sub_22BA0FEFC();
      sub_22B936CA8(v6, qword_28141AD40);
      v7 = sub_22BA0FEDC();
      v8 = sub_22BA1046C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22B92A000, v7, v8, "User has not finished attachment download sync, scheduling attachment download sync", v9, 2u);
        MEMORY[0x23189ADD0](v9, -1, -1);
      }

      static SyncCoordinator.scheduleAttachmentAssetDownloadSync(delegate:)(a1);
    }
  }

  else
  {
    sub_22B952500();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t static SyncCoordinator.scheduleBackupSync(delegate:)(void *a1)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v8);
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v9 = 3;
    swift_unknownObjectRetain();
    sub_22B9DB944();
    sub_22B96C910(&v9, 6, 7, v6, 0, v7);
    swift_unknownObjectRelease();
    sub_22B9BC988(v7, a1, v8, &unk_22BA184E8, v5);

    sub_22B936C4C(v7);
    return sub_22B936C4C(v8);
  }

  return result;
}

uint64_t sub_22B9B84D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22B943E68;

  return sub_22B9BDBA8(a6, a1, a2, a3, a4, 91, 1);
}

uint64_t sub_22B9B85F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22B945AC8;

  return sub_22B9BDBA8(a6, a1, a2, a3, a4, 94, 1);
}

uint64_t sub_22B9B8720()
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9B87C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  a5(a3);
  swift_unknownObjectRelease();
  return 1;
}

uint64_t static SyncCoordinator.startUserInitiatedSync(delegate:)(void *a1)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v11);
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v9 = 6;
    v6 = *MEMORY[0x277D86298];
    swift_unknownObjectRetain();
    v7 = sub_22BA0FFCC();
    IMBagIntValueWithDefault();

    sub_22B9DBA9C();
    sub_22B96C910(&v9, 12, 13, v8, 0, v10);
    swift_unknownObjectRelease();
    sub_22B9BC988(v10, a1, v11, &unk_22BA184F8, v5);

    sub_22B936C4C(v10);
    return sub_22B936C4C(v11);
  }

  return result;
}

uint64_t sub_22B9B89BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22B945AC8;

  return sub_22B9BDBA8(a6, a1, a2, a3, a4, 90, 1);
}

uint64_t sub_22B9B8AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_getObjCClassMetadata();
  v6 = swift_unknownObjectRetain();
  a5(v6);
  swift_unknownObjectRelease();
  return 1;
}

unint64_t static SyncCoordinator.initiateSync(for:delegate:forceRunNow:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_22B9B3D30(a1, a2, &v27);
  v10 = v27;
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  if (v10 == 10)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13410;
    *(inited + 32) = 0x73736563637573;
    *(inited + 40) = 0xE700000000000000;
    v12 = MEMORY[0x277D839B0];
    *(inited + 48) = 0;
    *(inited + 72) = v12;
    *(inited + 80) = 0x6E6F73616572;
    *(inited + 88) = 0xE600000000000000;
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_22BA108FC();

    *&v27 = 0x61685020636E7953;
    *(&v27 + 1) = 0xEB00000000206573;
    MEMORY[0x231899730](a1, a2);
    MEMORY[0x231899730](0x65646920746F6E20, 0xEF6465696669746ELL);
    v13 = v27;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = v13;
    v14 = sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
    swift_arrayDestroy();
    return v14;
  }

  else
  {
    v16 = v4;
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_22BA13CB0;
    *(v17 + 32) = 0x6573616870;
    *(v17 + 40) = 0xE500000000000000;
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    LOBYTE(v26[0]) = v10;
    sub_22BA10A2C();
    v18 = v27;
    v19 = MEMORY[0x277D837D0];
    *(v17 + 72) = MEMORY[0x277D837D0];
    *(v17 + 48) = v18;
    v20 = sub_22B9BBA8C(v17);
    swift_setDeallocating();
    sub_22B936BEC(v17 + 32, &unk_27D8D5770, &qword_22BA135E0);
    type metadata accessor for CloudSyncFactory();
    sub_22B968F70(&v27);
    if (v5)
    {
      v28 = MEMORY[0x277D839B0];
      LOBYTE(v27) = 0;
      sub_22B936C98(&v27, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v20;
      sub_22B9BAE64(v26, 0x73736563637573, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v23 = v29;
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      sub_22BA108FC();
      MEMORY[0x231899730](0xD00000000000001BLL, 0x800000022BA1DD90);
      *&v26[0] = v5;
      sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
      sub_22BA10A2C();
      v28 = v19;
      sub_22B936C98(&v27, v26);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v23;
      sub_22B9BAE64(v26, 0x6E6F73616572, 0xE600000000000000, v24);
    }

    else
    {
      v21 = swift_allocObject();
      *(v21 + 16) = v16;
      *(v21 + 24) = a3;
      *(v21 + 32) = v10;
      LOBYTE(v29) = v10;
      swift_unknownObjectRetain();
      sub_22B96A870(&v29, a4 & 1, v26);
      sub_22B9BC988(v26, a3, &v27, &unk_22BA18510, v21);

      sub_22B936C4C(v26);
      sub_22B936C4C(&v27);
      v28 = MEMORY[0x277D839B0];
      LOBYTE(v27) = 1;
      sub_22B936C98(&v27, v26);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v20;
      sub_22B9BAE64(v26, 0x73736563637573, 0xE700000000000000, v25);
    }

    return v29;
  }
}

uint64_t sub_22B9B9048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  if (a7 > 8u)
  {
    v14 = 99;
  }

  else
  {
    v14 = aXyzCcC[a7];
  }

  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22B945AC8;

  return sub_22B9BDBA8(a6, a1, a2, a3, a4, v14, 1);
}

void sub_22B9B92A0()
{
  v1 = sub_22BA0FD8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*sub_22B9358B4((v0 + 16), *(v0 + 40)) + 17) == 1)
  {
  }

  else
  {
    v7 = sub_22BA10C6C();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  sub_22BA0FD6C();
  sub_22BA0FCEC();
  v9 = v8;
  (*(v2 + 8))(v6, v1);
  if (v9 <= 60.0)
  {
    sub_22B9BF7D4();
    v10 = swift_allocError();
    sub_22B975FD8(28, v10, 0, 0);
  }
}

uint64_t static SyncCoordinator.fetchSyncStoreCounts(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_22BA1030C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;

  sub_22B9B5500(0, 0, v9, &unk_22BA18528, v11);
}

uint64_t sub_22B9B96E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_22B9B9774;

  return sub_22B9BF87C();
}

uint64_t sub_22B9B9774(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_22B9B98C0, 0, 0);
  }
}

uint64_t sub_22B9B98C0()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));

  v2 = *(v0 + 8);

  return v2();
}

void sub_22B9B9A84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22BA0FF5C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id SyncCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SyncCoordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncCoordinator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SyncCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B9B9BF0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 560) = v3;
  *(v4 + 552) = a3;
  *(v4 + 616) = a2;
  *(v4 + 544) = a1;
  v5 = *(*(sub_22BA1003C() - 8) + 64) + 15;
  *(v4 + 568) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9B9C8C, 0, 0);
}

uint64_t sub_22B9B9C8C()
{
  v1 = *(*(v0 + 560) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 576) = v1;
  return MEMORY[0x2822009F8](sub_22B9B9CBC, v1, 0);
}

uint64_t sub_22B9B9CBC()
{
  if (qword_281416A58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v0 + 16) = *(v1 + 112);
  *(v0 + 32) = v2;
  v3 = *(v1 + 144);
  v4 = *(v1 + 160);
  v5 = *(v1 + 176);
  *(v0 + 96) = *(v1 + 192);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v7 = *(v1 + 160);
  v6 = *(v1 + 176);
  v8 = *(v1 + 192);
  *(v0 + 136) = *(v1 + 144);
  *(v0 + 184) = v8;
  *(v0 + 168) = v6;
  *(v0 + 152) = v7;
  v9 = *(v1 + 112);
  *(v0 + 120) = *(v1 + 128);
  *(v0 + 104) = v9;
  sub_22B964698(v0 + 16, v0 + 192);
  sub_22B9BF828();
  v10 = sub_22BA0F99C();
  v11 = *(v0 + 568);
  v12 = *(v0 + 152);
  *(v0 + 400) = *(v0 + 136);
  *(v0 + 416) = v12;
  *(v0 + 432) = *(v0 + 168);
  *(v0 + 448) = *(v0 + 184);
  v13 = *(v0 + 120);
  *(v0 + 368) = *(v0 + 104);
  *(v0 + 384) = v13;
  v14 = v10;
  v16 = v15;
  sub_22B9646D0(v0 + 368);
  sub_22BA1002C();
  v17 = sub_22BA1000C();
  v19 = v18;
  sub_22B9359BC(v14, v16);
  if (!v19)
  {
    v19 = 0x800000022BA1DF60;
    v17 = 0xD00000000000001ALL;
  }

  *(v0 + 592) = v19;
  *(v0 + 584) = v17;

  return MEMORY[0x2822009F8](sub_22B9B9EBC, 0, 0);
}

uint64_t sub_22B9B9EBC()
{
  v58 = v0;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 592);
  v2 = sub_22BA0FEFC();
  *(v0 + 600) = sub_22B936CA8(v2, qword_28141AD40);

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 592);
  if (v5)
  {
    v7 = *(v0 + 584);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56 = v9;
    *v8 = 136315138;
    v10 = sub_22B99153C(v7, v6, &v56);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_22B92A000, v3, v4, "%s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);

    v11 = *(v0 + 552);
    if (v11)
    {
LABEL_5:
      v12 = v11;
      v13 = swift_task_alloc();
      *(v0 + 608) = v13;
      *v13 = v0;
      v13[1] = sub_22B9BA5BC;
      v14 = *(v0 + 560);

      return sub_22B97D504(v11);
    }
  }

  else
  {

    v11 = *(v0 + 552);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  v16 = *(v0 + 560);
  v17 = *(v0 + 616);
  v18 = (v16 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  sub_22B935B38(v16 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, v0 + 456);
  v19 = sub_22B9358B4((v0 + 456), *(v0 + 480));
  LOBYTE(v56) = *(*sub_22B9358B4((v16 + 16), *(v16 + 40)) + 17);
  if ((v17 & 1) == 0)
  {

    goto LABEL_13;
  }

  v20 = sub_22BA10C6C();

  if (v20)
  {
LABEL_13:
    v22 = *(v0 + 552);
    v21 = v22 == 0;
    goto LABEL_14;
  }

  v21 = 0;
  v22 = *(v0 + 552);
LABEL_14:
  v23 = *v19;
  sub_22BA09450(&v56, v21);
  sub_22B936C4C((v0 + 456));
  if (v22 && (v24 = *(v0 + 552), *(v0 + 536) = v24, v25 = v24, sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0), swift_dynamicCast()) && (v26 = *(v0 + 520), v27 = *(v0 + 528), sub_22B944AB0(v26), v26 >= 5))
  {
    v44 = *(v0 + 600);
    v45 = *(v0 + 560);

    v46 = sub_22BA0FEDC();
    v47 = sub_22BA1046C();

    if (os_log_type_enabled(v46, v47))
    {
      v54 = *(v0 + 560);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 136315138;
      v55 = v49;
      v56 = 0x2E636E7973;
      v57 = 0xE500000000000000;
      v50 = *sub_22B9358B4((v16 + 16), *(v16 + 40));
      v51 = sub_22B9B580C();
      MEMORY[0x231899730](v51);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v52 = sub_22BA10C1C();
      MEMORY[0x231899730](v52);

      v53 = sub_22B99153C(v56, v57, &v55);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_22B92A000, v46, v47, "Tried to kick off %s, while another sync was in progress. See above for active sync handle. Not setting completed sync date or resetting sync state and status.", v48, 0xCu);
      sub_22B936C4C(v49);
      MEMORY[0x23189ADD0](v49, -1, -1);
      MEMORY[0x23189ADD0](v48, -1, -1);
    }
  }

  else
  {
    v28 = *(*sub_22B9358B4(v18, v18[3]) + 56);
    if (v28)
    {
      [v28 setSyncJobStateWithState_];
    }

    v29 = *sub_22B9358B4(v18, v18[3]);
    sub_22BA08EA4(1);
  }

  v30 = sub_22B9358B4(v18, v18[3]);
  if (*(*sub_22B9358B4((v16 + 16), *(v16 + 40)) + 17))
  {
    if (*(v0 + 616))
    {
      goto LABEL_22;
    }

LABEL_25:

LABEL_26:
    v32 = sub_22B9358B4(v18, v18[3]);
    if (!*(*sub_22B9358B4((v16 + 16), *(v16 + 40)) + 17))
    {
      [*(*v32 + 16) setBool:1 forKey:*MEMORY[0x277D19A58]];
    }

    goto LABEL_28;
  }

  [*(*v30 + 16) setBool:1 forKey:*MEMORY[0x277D19A60]];
  if ((*(v0 + 616) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v31 = sub_22BA10C6C();

  if (v31)
  {
    goto LABEL_26;
  }

LABEL_28:
  v33 = *(v0 + 544);
  if (v33)
  {
    v34 = *(v0 + 560);
    v35 = *(v0 + 552);
    v56 = 0x2E636E7973;
    v57 = 0xE500000000000000;
    v36 = *sub_22B9358B4((v16 + 16), *(v16 + 40));
    v37 = sub_22B9B580C();
    MEMORY[0x231899730](v37);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v38 = sub_22BA10C1C();
    MEMORY[0x231899730](v38);

    v39 = sub_22BA0FFCC();

    v40 = sub_22BA0FDAC();
    if (v35)
    {
      v41 = *(v0 + 552);
      v35 = sub_22BA0FB5C();
    }

    [v33 syncCoordinatorFinishedSyncWithName:v39 identifier:v40 error:v35];
  }

  v42 = *(v0 + 568);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_22B9BA5BC()
{
  v1 = *(*v0 + 608);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B9BA6B8, 0, 0);
}

uint64_t sub_22B9BA6B8()
{
  v44 = v0;

  v1 = *(v0 + 560);
  v2 = *(v0 + 616);
  v3 = (v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  sub_22B935B38(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, v0 + 456);
  v4 = sub_22B9358B4((v0 + 456), *(v0 + 480));
  LOBYTE(v42) = *(*sub_22B9358B4((v1 + 16), *(v1 + 40)) + 17);
  if ((v2 & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = sub_22BA10C6C();

  if (v5)
  {
LABEL_5:
    v7 = *(v0 + 552);
    v6 = v7 == 0;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = *(v0 + 552);
LABEL_6:
  v8 = *v4;
  sub_22BA09450(&v42, v6);
  sub_22B936C4C((v0 + 456));
  if (v7 && (v9 = *(v0 + 552), *(v0 + 536) = v9, v10 = v9, sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0), swift_dynamicCast()) && (v11 = *(v0 + 520), v12 = *(v0 + 528), sub_22B944AB0(v11), v11 >= 5))
  {
    v30 = *(v0 + 600);
    v31 = *(v0 + 560);

    v32 = sub_22BA0FEDC();
    v33 = sub_22BA1046C();

    if (os_log_type_enabled(v32, v33))
    {
      v40 = *(v0 + 560);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136315138;
      v41 = v35;
      v42 = 0x2E636E7973;
      v43 = 0xE500000000000000;
      v36 = *sub_22B9358B4((v1 + 16), *(v1 + 40));
      v37 = sub_22B9B580C();
      MEMORY[0x231899730](v37);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v38 = sub_22BA10C1C();
      MEMORY[0x231899730](v38);

      v39 = sub_22B99153C(v42, v43, &v41);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_22B92A000, v32, v33, "Tried to kick off %s, while another sync was in progress. See above for active sync handle. Not setting completed sync date or resetting sync state and status.", v34, 0xCu);
      sub_22B936C4C(v35);
      MEMORY[0x23189ADD0](v35, -1, -1);
      MEMORY[0x23189ADD0](v34, -1, -1);
    }
  }

  else
  {
    v13 = *(*sub_22B9358B4(v3, v3[3]) + 56);
    if (v13)
    {
      [v13 setSyncJobStateWithState_];
    }

    v14 = *sub_22B9358B4(v3, v3[3]);
    sub_22BA08EA4(1);
  }

  v15 = sub_22B9358B4(v3, v3[3]);
  if (*(*sub_22B9358B4((v1 + 16), *(v1 + 40)) + 17))
  {
    if (*(v0 + 616))
    {
      goto LABEL_14;
    }
  }

  else
  {
    [*(*v15 + 16) setBool:1 forKey:*MEMORY[0x277D19A60]];
    if (*(v0 + 616))
    {
LABEL_14:
      v16 = sub_22BA10C6C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

LABEL_18:
  v17 = sub_22B9358B4(v3, v3[3]);
  if (!*(*sub_22B9358B4((v1 + 16), *(v1 + 40)) + 17))
  {
    [*(*v17 + 16) setBool:1 forKey:*MEMORY[0x277D19A58]];
  }

LABEL_20:
  v18 = *(v0 + 544);
  if (v18)
  {
    v19 = *(v0 + 560);
    v20 = *(v0 + 552);
    v42 = 0x2E636E7973;
    v43 = 0xE500000000000000;
    v21 = *sub_22B9358B4((v1 + 16), *(v1 + 40));
    v22 = sub_22B9B580C();
    MEMORY[0x231899730](v22);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v23 = sub_22BA10C1C();
    MEMORY[0x231899730](v23);

    v24 = sub_22BA0FFCC();

    v25 = sub_22BA0FDAC();
    if (v20)
    {
      v26 = *(v0 + 552);
      v20 = sub_22BA0FB5C();
    }

    [v18 syncCoordinatorFinishedSyncWithName:v24 identifier:v25 error:v20];
  }

  v27 = *(v0 + 568);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_22B9BABE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B990A58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_22B9EBAF4();
      result = v19;
      goto LABEL_8;
    }

    sub_22B9D7F9C(v16, a4 & 1);
    v20 = *v5;
    result = sub_22B990A58(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_22B9D9D64(result, a2, a3, a1, v22);
  }

  return result;
}

id sub_22B9BAD14(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_22B990B14(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_22B9EBDD0();
      v10 = v18;
      goto LABEL_8;
    }

    sub_22B9D84F8(v15, a4 & 1);
    v19 = *v5;
    v10 = sub_22B990B14(a3);
    if ((v16 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_22B9D9DAC(v10, a3, a1, a2, v21);

    return a3;
  }
}

_OWORD *sub_22B9BAE64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B990A58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22B9EBF40();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B9D877C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22B990A58(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_22B936C4C(v23);

    return sub_22B936C98(a1, v23);
  }

  else
  {
    sub_22B9D9DF4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22B9BAFB4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B990A58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_22B9EC0E4();
      result = v19;
      goto LABEL_8;
    }

    sub_22B9D8A34(v16, a4 & 1);
    v20 = *v5;
    result = sub_22B990A58(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 48 * result);
    v24 = a1[1];
    *v23 = *a1;
    v23[1] = v24;
    *(v23 + 25) = *(a1 + 25);
  }

  else
  {
    sub_22B9D9E60(result, a2, a3, a1, v22);
  }

  return result;
}

unint64_t sub_22B9BB0F8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B990B64(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_22B9EC284();
      result = v19;
      goto LABEL_8;
    }

    sub_22B9D8D34(v16, a4 & 1);
    v20 = *v5;
    result = sub_22B990B64(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_22B9D9EBC(result, a3, a1, a2, v22);
  }

  return result;
}

_OWORD *sub_22B9BB21C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22B990AD0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22B9EC530();
      goto LABEL_7;
    }

    sub_22B9D92B4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_22B990AD0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22B958068(a2, v22);
      return sub_22B9D9F04(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_22BA10CBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_22B936C4C(v17);

  return sub_22B936C98(a1, v17);
}

unint64_t sub_22B9BB368(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22B990D50(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_22B9EC6D4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_22B9D956C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_22B990D50(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for RecordStoreType(0);
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_22B9D9F80(v9, a2, a1, v20);
  }
}

uint64_t sub_22B9BB48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22B990A58(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_22B9EC830();
      v13 = v21;
      goto LABEL_8;
    }

    sub_22B9D97FC(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_22B990A58(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_22B9D9FC4(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_22B9BB5DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B990A58(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22B9EC9A8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B9D9ABC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22B990A58(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_22B9D9D64(v11, a2, a3, a1, v22);
  }
}

id sub_22B9BB724(uint64_t *a1)
{
  v11 = *a1;
  v12 = &off_283F589F0;
  v10[0] = a1;
  v1 = objc_allocWithZone(MEMORY[0x277CBC230]);

  v2 = [v1 init];
  [v2 setMmcsEncryptionSupport_];
  [v2 setUseZoneWidePCS_];
  v3 = *sub_22B9358B4(v10, v11);
  if (sub_22BA08818())
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v6 = sub_22BA0FFCC();
  v7 = [v5 initWithContainerIdentifier:v6 environment:v4];

  v8 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v7 options:v2];
  sub_22B936C4C(v10);
  return v8;
}

unint64_t sub_22B9BB884(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5808, qword_22BA18600);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22B990A58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22B9BB998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&unk_27D8D5790, &unk_22BA19790);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_22B990B64(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_22B9BBA8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
    v3 = sub_22BA10A8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B9934AC(v4, &v13, &unk_27D8D5770, &qword_22BA135E0);
      v5 = v13;
      v6 = v14;
      result = sub_22B990A58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22B936C98(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22B9BBBBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5820, &qword_22BA186B8);
    v3 = sub_22BA10A8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B9934AC(v4, &v11, &qword_27D8D5620, &qword_22BA186C0);
      v5 = v11;
      result = sub_22B990C6C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22B936C98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_22B9BBCE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5810, &qword_22BA186A8);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_22B990D00(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_22B9BBDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&unk_27D8D57A0, &qword_22BA18568);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_22B990B14(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22B9BBEF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
    v3 = sub_22BA10A8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B9934AC(v4, v13, &unk_27D8D57B0, &unk_22BA16D78);
      result = sub_22B990AD0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22B936C98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_22B9BC02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5818, &qword_22BA186B0);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22B990A58(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_22B9BC154(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_22B9349C8(a2, a3);
    v5 = sub_22BA10A8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22B990A58(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void sub_22B9BC248(uint64_t a1, uint64_t a2)
{
  v2 = off_281416A80;
  if (off_281416A80)
  {
    v3 = *(&off_281416A80 + 1);
    sub_22B944A5C();
    swift_allocError();
    *v4 = v2;
    v4[1] = v3;
    swift_willThrow();
    swift_unknownObjectRetain();
  }

  else
  {
    off_281416A80 = a1;
    *(&off_281416A80 + 1) = a2;
    v6 = qword_281414D30;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);
    swift_unknownObjectRetain();
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1046C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      v16 = v11;
      v12 = *sub_22B9358B4((a1 + 16), *(a1 + 40));
      v13 = sub_22B9B580C();
      MEMORY[0x231899730](v13);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v14 = sub_22BA10C1C();
      MEMORY[0x231899730](v14);

      v15 = sub_22B99153C(0x2E636E7973, 0xE500000000000000, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_22B92A000, v8, v9, "Activated sync %s", v10, 0xCu);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }
  }
}

uint64_t sub_22B9BC494()
{
  v0 = sub_22B9ECB18();
  if (*(v0 + 16) && (v1 = sub_22B990A58(0xD000000000000022, 0x800000022BA1DF30), (v2 & 1) != 0))
  {
    sub_22B936B20(*(v0 + 56) + 32 * v1, v5);

    v3 = 1;
  }

  else
  {

    v3 = 0;
    memset(v5, 0, sizeof(v5));
  }

  sub_22B936BEC(v5, &unk_27D8D5A30, qword_22BA13390);
  return v3;
}

void sub_22B9BC538()
{
  v0 = off_281416A80;
  if (off_281416A80)
  {
    off_281416A80 = 0;
    *(&off_281416A80 + 1) = 0;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141AD40);
    swift_unknownObjectRetain();
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1046C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 136315138;
      v11 = v5;
      v6 = *sub_22B9358B4((v0 + 16), *(v0 + 40));
      v7 = sub_22B9B580C();
      MEMORY[0x231899730](v7);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v8 = sub_22BA10C1C();
      MEMORY[0x231899730](v8);

      v9 = sub_22B99153C(0x2E636E7973, 0xE500000000000000, &v11);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_22B92A000, v2, v3, "Deactivated sync %s", v4, 0xCu);
      sub_22B936C4C(v5);
      MEMORY[0x23189ADD0](v5, -1, -1);
      MEMORY[0x23189ADD0](v4, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22B944A5C();
    swift_allocError();
    *v10 = xmmword_22BA18470;
    swift_willThrow();
  }
}

uint64_t sub_22B9BC788(uint64_t a1)
{
  if (a1 && (swift_unknownObjectRetain(), sub_22B9349C8(&qword_27D8D57F8, &qword_22BA185F0), sub_22B9349C8(&qword_27D8D5800, &qword_22BA185F8), (swift_dynamicCast() & 1) != 0))
  {
    v1 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v2 = v10;
      sub_22B9358B4(&v8, *(&v9 + 1));
      v3 = (*(v2 + 8))(v1, v2);
      v5 = v4;
      result = sub_22B936C4C(&v8);
      qword_28141ADC8 = v3;
      qword_28141ADD0 = v5;
      return result;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_22B936BEC(&v8, &qword_27D8D57F0, &qword_22BA185E8);
  sub_22B944A5C();
  swift_allocError();
  *v7 = xmmword_22BA18480;
  return swift_willThrow();
}

uint64_t sub_22B9BC8C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B943E68;

  return sub_22B9B70AC(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BC988(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22BA0FD8C();
  v11 = *(v10 - 8);
  v150 = v10;
  v151 = v11;
  v12 = v11[8];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v141 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v142 = &v127 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v147 = &v127 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v127 - v23;
  v25 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v143 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v144 = &v127 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v127 - v35;
  MEMORY[0x28223BE20](v34, v37);
  v152 = &v127 - v38;
  v39 = sub_22B9358B4(a3, a3[3]);
  v40 = a1[3];
  v169 = a1;
  if (!*(*sub_22B9358B4(a1, v40) + 17))
  {
    [*(*v39 + 16) setBool:1 forKey:*MEMORY[0x277D19A68]];
  }

  v41 = *sub_22B9358B4(a3, a3[3]);
  v42 = sub_22BA09CBC();
  if (v42)
  {
    [v42 setSyncCancelled_];
  }

  if (*(*sub_22B9358B4(v169, v169[3]) + 72) == 1)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v43 = sub_22BA0FEFC();
    sub_22B936CA8(v43, qword_28141AD40);
    sub_22B935B38(v169, &v154);
    v44 = sub_22BA0FEDC();
    v45 = sub_22BA1046C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v149 = a5;
      v47 = v46;
      v48 = swift_slowAlloc();
      v148 = a2;
      v49 = v48;
      v166[0] = v48;
      *v47 = 136315138;
      v50 = *sub_22B9358B4(&v154, v157);
      v51 = sub_22B9B580C();
      v52 = a3;
      v53 = a4;
      v55 = v54;
      sub_22B936C4C(&v154);
      v56 = sub_22B99153C(v51, v55, v166);
      a4 = v53;
      a3 = v52;

      *(v47 + 4) = v56;
      _os_log_impl(&dword_22B92A000, v44, v45, "%s running immediately", v47, 0xCu);
      sub_22B936C4C(v49);
      v57 = v49;
      a2 = v148;
      MEMORY[0x23189ADD0](v57, -1, -1);
      v58 = v47;
      a5 = v149;
      MEMORY[0x23189ADD0](v58, -1, -1);
    }

    else
    {

      sub_22B936C4C(&v154);
    }

    if (qword_281416A68 != -1)
    {
      swift_once();
    }

    sub_22B935B38(&unk_28141AEE0, &v154);
    sub_22B9358B4(&v154, v157);
    if (qword_281416A70 != -1)
    {
      swift_once();
    }

    v71 = [qword_28141AF08 privateCloudDatabase];
    v167 = sub_22B951A54(0, &qword_281414BF0, 0x277CBC280);
    v168 = &off_283F53198;
    v166[0] = v71;
    if (qword_281414F10 != -1)
    {
      swift_once();
    }

    sub_22B935B38(&unk_28141AD68, v165);
    if (qword_281416500 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v72 = qword_28141AE00;

    sub_22B93809C(v169, a3, v166, v165, a2, v72, a4, a5);
    sub_22B936C4C(v165);

    sub_22B936C4C(v166);
    v73 = &v154;
    return sub_22B936C4C(v73);
  }

  v146 = v24;
  v149 = a5;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v59 = sub_22BA0FEFC();
  v60 = sub_22B936CA8(v59, qword_28141AD40);
  sub_22B935B38(v169, &v154);
  v145 = v60;
  v61 = sub_22BA0FEDC();
  v62 = sub_22BA1046C();
  v63 = os_log_type_enabled(v61, v62);
  v148 = a2;
  v139 = a3;
  v140 = a4;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v166[0] = v65;
    *v64 = 136315138;
    v66 = *sub_22B9358B4(&v154, v157);
    v67 = sub_22B9B580C();
    v69 = v68;
    sub_22B936C4C(&v154);
    v70 = sub_22B99153C(v67, v69, v166);

    *(v64 + 4) = v70;
    _os_log_impl(&dword_22B92A000, v61, v62, "%s scheduling", v64, 0xCu);
    sub_22B936C4C(v65);
    MEMORY[0x23189ADD0](v65, -1, -1);
    MEMORY[0x23189ADD0](v64, -1, -1);
  }

  else
  {

    sub_22B936C4C(&v154);
  }

  v74 = v150;
  v75 = v151;
  if (qword_281416A68 != -1)
  {
    swift_once();
  }

  sub_22B935B38(&unk_28141AEE0, v166);
  sub_22B9358B4(v166, v167);
  if (qword_281416A70 != -1)
  {
    swift_once();
  }

  v76 = [qword_28141AF08 privateCloudDatabase];
  v165[3] = sub_22B951A54(0, &qword_281414BF0, 0x277CBC280);
  v165[4] = &off_283F53198;
  v165[0] = v76;
  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  sub_22B935B38(&unk_28141AD68, v164);
  if (qword_281416500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v77 = qword_28141AE00;
  v78 = v152;
  v137 = v75[7];
  v137(v152, 1, 1, v74);
  v79 = *(*sub_22B9358B4(v169, v169[3]) + 80);
  sub_22B9934AC(v78, v36, &unk_27D8D4A90, &qword_22BA126A0);
  v80 = v75[6];
  v81 = v80(v36, 1, v74);
  v138 = v77;
  if (v81 == 1)
  {

    swift_unknownObjectRetain();
    sub_22B936BEC(v36, &unk_27D8D4A90, &qword_22BA126A0);
LABEL_45:
    sub_22B935B38(v169, &v154);
    v110 = sub_22BA0FEDC();
    v111 = sub_22BA1046C();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v163[0] = v113;
      *v112 = 136315138;
      v114 = *sub_22B9358B4(&v154, v157);
      v115 = sub_22B9B580C();
      v117 = v116;
      sub_22B936C4C(&v154);
      v118 = sub_22B99153C(v115, v117, v163);

      *(v112 + 4) = v118;
      _os_log_impl(&dword_22B92A000, v110, v111, "Registering xpc_activity: %s", v112, 0xCu);
      sub_22B936C4C(v113);
      MEMORY[0x23189ADD0](v113, -1, -1);
      MEMORY[0x23189ADD0](v112, -1, -1);
    }

    else
    {

      sub_22B936C4C(&v154);
    }

    v119 = v169;
    v120 = *sub_22B9358B4(v169, v169[3]);
    v154 = 0;
    v155 = 0xE000000000000000;
    sub_22BA108FC();

    v154 = 0xD000000000000018;
    v155 = 0x800000022BA1C340;
    v121 = sub_22B9B580C();
    MEMORY[0x231899730](v121);

    v153 = *MEMORY[0x277D86238];
    v122 = swift_allocObject();
    *(v122 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_22B935B38(v119, v163);
    sub_22B935B38(v139, v162);
    sub_22B935B38(v165, v161);
    sub_22B935B38(v164, v160);
    v123 = swift_allocObject();
    sub_22B92DFEC(v163, (v123 + 2));
    v123[7] = v79;
    v123[8] = v122;
    sub_22B92DFEC(v162, (v123 + 9));
    sub_22B92DFEC(v161, (v123 + 14));
    v124 = v138;
    v123[19] = v148;
    v123[20] = v124;
    v123[21] = 0;
    sub_22B92DFEC(v160, (v123 + 22));
    v125 = v149;
    v123[27] = v140;
    v123[28] = v125;
    v158 = sub_22B9449FC;
    v159 = v123;
    v154 = MEMORY[0x277D85DD0];
    v155 = 1107296256;
    v156 = sub_22B9B57AC;
    v157 = &unk_283F56688;
    v126 = _Block_copy(&v154);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    sub_22BA1006C();

    IMRegisterSADAwareXPCActivity();
    _Block_release(v126);
    swift_unknownObjectRelease();
    sub_22B936BEC(v152, &unk_27D8D4A90, &qword_22BA126A0);
    sub_22B936C4C(v164);

    sub_22B936C4C(v165);
    v73 = v166;
    return sub_22B936C4C(v73);
  }

  v134 = v80;
  v82 = v74;
  v85 = v75[4];
  v84 = v75 + 4;
  v83 = v85;
  v85(v146, v36, v82);

  v136 = v79;
  swift_unknownObjectRetain();
  result = sub_22BA0FD3C();
  v88 = ceil(v87);
  if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v88 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v88 < 9.22337204e18)
  {
    v131 = v83;
    v132 = v84;
    v89 = v88;
    v91 = v150;
    v90 = v151;
    v92 = v147;
    v135 = v151[2];
    v135(v147, v146, v150);
    v93 = sub_22BA0FEDC();
    v133 = sub_22BA1046C();
    if (os_log_type_enabled(v93, v133))
    {
      v129 = v93;
      v130 = v89;
      v94 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v154 = v128;
      *v94 = 136315394;
      v95 = v144;
      v135(v144, v92, v91);
      v137(v95, 0, 1, v91);
      v96 = v143;
      sub_22B9934AC(v95, v143, &unk_27D8D4A90, &qword_22BA126A0);
      if (v134(v96, 1, v91) == 1)
      {
        v97 = v92;
        sub_22B936BEC(v96, &unk_27D8D4A90, &qword_22BA126A0);
        sub_22B936BEC(v95, &unk_27D8D4A90, &qword_22BA126A0);
        v98 = v151[1];
        v98(v97, v91);
        v99 = 0xE300000000000000;
        v100 = 7104878;
      }

      else
      {
        v103 = v142;
        v131(v142, v96, v91);
        v135(v141, v103, v91);
        v143 = sub_22BA1005C();
        v99 = v104;
        v98 = v151[1];
        v98(v103, v91);
        sub_22B936BEC(v95, &unk_27D8D4A90, &qword_22BA126A0);
        v98(v147, v91);
        v100 = v143;
      }

      v102 = v91;
      v105 = v133;
      v106 = sub_22B99153C(v100, v99, &v154);

      *(v94 + 4) = v106;
      *(v94 + 12) = 2048;
      v107 = v129;
      v89 = v130;
      *(v94 + 14) = v130;
      _os_log_impl(&dword_22B92A000, v107, v105, "Overriding xpc_activity XPC_ACTIVITY_EARLIEST_START_DATE with %s, delay: %lld", v94, 0x16u);
      v108 = v128;
      sub_22B936C4C(v128);
      MEMORY[0x23189ADD0](v108, -1, -1);
      MEMORY[0x23189ADD0](v94, -1, -1);
    }

    else
    {

      v101 = v92;
      v98 = v90[1];
      v98(v101, v91);
      v102 = v91;
    }

    v109 = v136;
    xpc_dictionary_set_int64(v136, *MEMORY[0x277D86250], v89);
    v98(v146, v102);
    v79 = v109;
    goto LABEL_45;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_22B9BD950(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B75CC(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BDA18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B85F8(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BDAE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B7C30(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BDBA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 114) = a7;
  *(v7 + 113) = a6;
  *(v7 + 112) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v9 = sub_22BA1029C();
  *(v7 + 56) = v9;
  *(v7 + 64) = v8;

  return MEMORY[0x2822009F8](sub_22B9BDC70, v9, v8);
}

uint64_t sub_22B9BDC70()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v1 > 0x3F)
  {
    sub_22B9BF7AC(*(v0 + 32), *(v0 + 40), v1);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_22B9BEBA0;
    v7 = *(v0 + 48);
    v9 = *(v0 + 24);
    v8 = 1;
    goto LABEL_5;
  }

  sub_22B9B92A0();
  if (sub_22B9BC494())
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 32);
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_22B9BE028;
    v7 = *(v0 + 48);
    v8 = v4 & 1;
    v9 = *(v0 + 24);
LABEL_5:

    return sub_22B9B9BF0(v9, v8, v7);
  }

  v12 = *(v3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_22B9BDE98;
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v16 = *(v0 + 32);
  v17 = *(v0 + 112);

  return sub_22B9E923C(v3, v2, v12, v16, v14, v17, v15, 1);
}

uint64_t sub_22B9BDE98()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v3;
  v6[1] = sub_22B9BE028;
  v7 = *(v1 + 48);
  v8 = *(v1 + 24);

  return sub_22B9B9BF0(v8, v4 & 1, v7);
}

uint64_t sub_22B9BE028()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B9BE148, v4, v3);
}

uint64_t sub_22B9BE148()
{
  v49 = v0;
  if (*(v0 + 113) == 99)
  {
    v1 = *(v0 + 48);
    if (v1)
    {
      v2 = v1;
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 32);
      v3 = *(v0 + 40);
      v5 = *(v0 + 112);
      v6 = sub_22BA0FEFC();
      sub_22B936CA8(v6, qword_28141AD40);
      v7 = v1;
      sub_22B9BF7AC(v4, v3, v5);
      v8 = sub_22BA0FEDC();
      v9 = sub_22BA1045C();
      sub_22B9BF7C0(v4, v3, v5);

      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 32);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v48 = v12;
        *v11 = 136315394;
        v13 = *sub_22B9358B4((v10 + 16), *(v10 + 40));
        v14 = sub_22B9B580C();
        v16 = sub_22B99153C(v14, v15, &v48);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2080;
        *(v0 + 16) = v1;
        v17 = v1;
        sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
        v18 = sub_22BA1005C();
        v20 = sub_22B99153C(v18, v19, &v48);

        *(v11 + 14) = v20;
        _os_log_impl(&dword_22B92A000, v8, v9, "Completion called for %s sync with error %s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v12, -1, -1);
        MEMORY[0x23189ADD0](v11, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 32);
      v30 = *(v0 + 40);
      v32 = *(v0 + 112);
      v33 = sub_22BA0FEFC();
      sub_22B936CA8(v33, qword_28141AD40);
      swift_unknownObjectRetain();
      v34 = sub_22BA0FEDC();
      v35 = sub_22BA1046C();
      sub_22B9BF7C0(v31, v30, v32);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v0 + 112);
        v37 = *(v0 + 32);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v48 = v39;
        *v38 = 136315394;
        v40 = *sub_22B9358B4((v37 + 16), *(v37 + 40));
        v41 = sub_22B9B580C();
        v43 = sub_22B99153C(v41, v42, &v48);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        if (v36)
        {
          v44 = 0x7972746572;
        }

        else
        {
          v44 = 1701736292;
        }

        if (v36)
        {
          v45 = 0xE500000000000000;
        }

        else
        {
          v45 = 0xE400000000000000;
        }

        v46 = sub_22B99153C(v44, v45, &v48);

        *(v38 + 14) = v46;
        _os_log_impl(&dword_22B92A000, v34, v35, "%s sync finished with response %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v39, -1, -1);
        MEMORY[0x23189ADD0](v38, -1, -1);
      }

      if (*(v0 + 114) == 1 && qword_28141ADC8)
      {
        (*(qword_28141ADD0 + 136))(qword_28141ADC8);
      }
    }

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v21 = *(v0 + 32);
    v22 = *(v0 + 40);
    v23 = *(v21 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
    v24 = swift_task_alloc();
    *(v0 + 88) = v24;
    *v24 = v0;
    v24[1] = sub_22B9BE65C;
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    v27 = *(v0 + 32);
    v28 = *(v0 + 112);
    v58 = *(v0 + 113);
    v57 = 477;
    v56 = 2;
    v55 = 75;
    v54 = "handleSyncCompletion(delegate:scheduledStatus:error:metric:reloadDatabase:)";
    v53 = 2;
    v51 = "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/CloudKit/SyncCoordinator.swift";
    v52 = 106;

    return sub_22B9E923C(v21, v22, v23, v27, v25, v28, v26, 1);
  }
}

uint64_t sub_22B9BE65C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B9BE77C, v4, v3);
}

uint64_t sub_22B9BE77C()
{
  v41 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 112);
    v6 = sub_22BA0FEFC();
    sub_22B936CA8(v6, qword_28141AD40);
    v7 = v1;
    sub_22B9BF7AC(v4, v3, v5);
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1045C();
    sub_22B9BF7C0(v4, v3, v5);

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v40 = v12;
      *v11 = 136315394;
      v13 = *sub_22B9358B4((v10 + 16), *(v10 + 40));
      v14 = sub_22B9B580C();
      v16 = sub_22B99153C(v14, v15, &v40);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      *(v0 + 16) = v1;
      v17 = v1;
      sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
      v18 = sub_22BA1005C();
      v20 = sub_22B99153C(v18, v19, &v40);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_22B92A000, v8, v9, "Completion called for %s sync with error %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 32);
    v21 = *(v0 + 40);
    v23 = *(v0 + 112);
    v24 = sub_22BA0FEFC();
    sub_22B936CA8(v24, qword_28141AD40);
    swift_unknownObjectRetain();
    v25 = sub_22BA0FEDC();
    v26 = sub_22BA1046C();
    sub_22B9BF7C0(v22, v21, v23);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 112);
      v28 = *(v0 + 32);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315394;
      v31 = *sub_22B9358B4((v28 + 16), *(v28 + 40));
      v32 = sub_22B9B580C();
      v34 = sub_22B99153C(v32, v33, &v40);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      if (v27)
      {
        v35 = 0x7972746572;
      }

      else
      {
        v35 = 1701736292;
      }

      if (v27)
      {
        v36 = 0xE500000000000000;
      }

      else
      {
        v36 = 0xE400000000000000;
      }

      v37 = sub_22B99153C(v35, v36, &v40);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_22B92A000, v25, v26, "%s sync finished with response %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v30, -1, -1);
      MEMORY[0x23189ADD0](v29, -1, -1);
    }

    if (*(v0 + 114) == 1 && qword_28141ADC8)
    {
      (*(qword_28141ADD0 + 136))(qword_28141ADC8);
    }
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_22B9BEBA0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B9BECC0, v4, v3);
}

uint64_t sub_22B9BECC0()
{
  if (*(v0 + 113) == 99)
  {
    sub_22B9BF7C0(*(v0 + 32), *(v0 + 40), *(v0 + 112));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_22B9BEE14;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = *(v0 + 112);
    v12 = *(v0 + 113);

    return sub_22B9E923C(v3, v4, v5, v9, v7, v10, v8, 1);
  }
}

uint64_t sub_22B9BEE14()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;
  v5 = *(v4 + 112);

  sub_22B9BF7C0(v3, v2, v5);
  v6 = *(v4 + 8);

  return v6();
}

void sub_22B9BEF4C(void *a1)
{
  type metadata accessor for CloudState();
  if (sub_22BA0876C())
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = 1;
      _os_log_impl(&dword_22B92A000, v4, v5, "Already finished telemetry not scheduling, current version: %ld", v6, 0xCu);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    type metadata accessor for CloudSyncFactory();
    sub_22B968F70(v8);
    if (!v1)
    {
      sub_22B96C35C(0, v7);
      sub_22B9BC988(v7, a1, v8, &unk_22BA185D8, 0);
      sub_22B936C4C(v7);
      sub_22B936C4C(v8);
    }
  }
}

uint64_t sub_22B9BF0D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B84D0(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BF198(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B89BC(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BF260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22B945AC8;

  return sub_22B9B9048(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_22B9BF338(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B945AC8;

  return sub_22B9B96E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B9BF42C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B9BF46C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B943E68;

  return sub_22B9B96E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B9BF534()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B945AC8;

  return sub_22B9B6660(v2);
}

uint64_t sub_22B9BF5E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B945AC8;

  return sub_22BA0493C(v2, v3, v5);
}

uint64_t sub_22B9BF6A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B9BF6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B945AC8;

  return sub_22BA04A24(a1, v4, v5, v7);
}

uint64_t sub_22B9BF7AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_22B9BF7C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_22B9BF7D4()
{
  result = qword_281416960;
  if (!qword_281416960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416960);
  }

  return result;
}

unint64_t sub_22B9BF828()
{
  result = qword_281416A18;
  if (!qword_281416A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A18);
  }

  return result;
}

uint64_t sub_22B9BF898()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  v0[18] = sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Fetching sync store statistics", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v0[19] = xmmword_28141AEB0;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_22B9BFA3C;

  return sub_22B9A9140();
}

uint64_t sub_22B9BFA3C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[20];
  v10 = *v3;
  v5[21] = v2;

  if (v2)
  {
    v7 = sub_22B9BFD30;
  }

  else
  {
    v8 = v5[19];
    swift_unknownObjectRelease();
    v7 = sub_22B9BFB60;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9BFB60()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_22B9BFC0C;

  return sub_22B9A9D5C();
}

uint64_t sub_22B9BFC0C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[6] = v3;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = v2;
  v6 = v4[22];
  v10 = *v3;
  v5[23] = v2;

  if (v2)
  {
    v7 = sub_22B9C0054;
  }

  else
  {
    v8 = v5[19];
    swift_unknownObjectRelease();
    v7 = sub_22B9BFE84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9BFD30()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error fetching sync store counts for statistics: %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_22B9BFE84()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_22B9BFF30;

  return sub_22B9AA594();
}

uint64_t sub_22B9BFF30(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[10] = v3;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = v2;
  v6 = v4[24];
  v10 = *v3;
  v5[25] = v2;

  if (v2)
  {
    v7 = sub_22B9C0378;
  }

  else
  {
    v8 = v5[19];
    swift_unknownObjectRelease();
    v7 = sub_22B9C01A8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9C0054()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error fetching sync store counts for statistics: %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_22B9C01A8()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_22B9C0254;

  return sub_22B9AAC90();
}

uint64_t sub_22B9C0254(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[14] = v3;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = v2;
  v6 = v4[26];
  v10 = *v3;
  v5[27] = v2;

  if (v2)
  {
    v7 = sub_22B9C06E8;
  }

  else
  {
    v8 = v5[19];
    swift_unknownObjectRelease();
    v7 = sub_22B9C04CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9C0378()
{
  v1 = v0[25];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error fetching sync store counts for statistics: %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_22B9C04CC()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_22B9C0578;

  return sub_22B9AB398();
}

uint64_t sub_22B9C0578(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 224);
  v19 = *v3;
  *(*v3 + 232) = v2;

  if (v2)
  {
    v8 = sub_22B9C0AF0;
  }

  else
  {
    v9 = v6[16];
    v10 = v6[11];
    v11 = v6[12];
    v12 = v6[7];
    v13 = v6[8];
    v14 = v6[4];
    v17 = v6[3];
    v18 = v6[15];
    v15 = v6[19];
    swift_unknownObjectRelease();
    v6[30] = a2;
    v6[31] = a1;
    v6[32] = v9;
    v6[33] = v18;
    v6[34] = v11;
    v6[35] = v10;
    v6[36] = v13;
    v6[37] = v12;
    v6[38] = v14;
    v6[39] = v17;
    v8 = sub_22B9C083C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22B9C06E8()
{
  v1 = v0[27];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error fetching sync store counts for statistics: %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_22B9C083C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v0[35];
  v20 = v0[36];
  v21 = v0[34];
  v5 = v0[33];
  v6 = v0[31];
  v22 = v0[32];
  v23 = v0[30];
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v1, 0xD000000000000014, 0x800000022BA1DF80, isUniquelyReferenced_nonNull_native);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v3, 0xD000000000000017, 0x800000022BA1DFA0, v9);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v4, 0xD00000000000001ALL, 0x800000022BA1DFC0, v10);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v5, 0xD00000000000001ELL, 0x800000022BA1DFE0, v11);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v6, 0xD000000000000023, 0x800000022BA1E000, v12);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v2, 0xD000000000000013, 0x800000022BA1E030, v13);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v20, 0xD000000000000016, 0x800000022BA1E050, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v21, 0xD000000000000019, 0x800000022BA1E070, v15);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v22, 0xD00000000000001DLL, 0x800000022BA1E090, v16);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v23, 0xD000000000000022, 0x800000022BA1E0B0, v17);
  v18 = v0[1];

  return v18(v7);
}

uint64_t sub_22B9C0AF0()
{
  v1 = v0[29];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error fetching sync store counts for statistics: %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_22B9C0C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B9C0C90(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22B9C0CA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B9C0D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_22B9C0D50(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_22B9C0D98(char a1)
{
  result = 24936;
  switch(a1)
  {
    case 1:
      result = 25204;
      break;
    case 2:
      result = 0x6368746170787561;
      break;
    case 3:
      result = 116;
      break;
    case 4:
      result = 1936876918;
      break;
    case 5:
      result = 0x6368746170;
      break;
    case 6:
      result = 29545;
      break;
    case 7:
      result = 1768121705;
      break;
    case 8:
      result = 1685284201;
      break;
    case 9:
      result = 26473;
      break;
    case 10:
      result = 28276;
      break;
    case 11:
      result = 7627891;
      break;
    case 12:
      result = 7627875;
      break;
    case 13:
      result = 0x6469756761;
      break;
    case 14:
      result = 28262;
      break;
    case 15:
      result = 6841453;
      break;
    case 16:
      result = 26997;
      break;
    case 17:
      result = 6911347;
      break;
    case 18:
      result = 6911329;
      break;
    case 19:
      result = 29811;
      break;
    case 20:
      result = 0x74656D696DLL;
      break;
    case 21:
      result = 0x737465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22B9C0F08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B9C0F50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B9C0FF4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22B9C0D98(*a1);
  v5 = v4;
  if (v3 == sub_22B9C0D98(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B9C107C()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9C0D98(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C10E0()
{
  sub_22B9C0D98(*v0);
  sub_22BA1008C();
}

uint64_t sub_22B9C1134()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9C0D98(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C1194@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B9C188C();
  *a2 = result;
  return result;
}

uint64_t sub_22B9C11C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B9C0D98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22B9C11F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B9C188C();
  *a1 = result;
  return result;
}

uint64_t sub_22B9C122C(uint64_t a1)
{
  v2 = sub_22B9C26D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9C1268(uint64_t a1)
{
  v2 = sub_22B9C26D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9C12A4(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D5830, &unk_22BA18978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v47[-v9 - 8];
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9C26D4();
  sub_22BA10D9C();
  v12 = *v3;
  LOBYTE(v49) = 0;
  sub_22BA10B8C();
  if (!v2)
  {
    v13 = *(v3 + 1);
    v14 = v3[16];
    LOBYTE(v49) = 1;
    sub_22BA10BBC();
    v15 = *(v3 + 3);
    v16 = *(v3 + 4);
    LOBYTE(v49) = 2;
    sub_22BA10B7C();
    v17 = *(v3 + 5);
    v18 = *(v3 + 6);
    LOBYTE(v49) = 3;
    sub_22BA10B7C();
    v19 = *(v3 + 7);
    v20 = v3[64];
    LOBYTE(v49) = 4;
    sub_22BA10B9C();
    v21 = *(v3 + 9);
    v22 = *(v3 + 10);
    LOBYTE(v49) = 5;
    sub_22BA10B7C();
    v23 = v3[88];
    LOBYTE(v49) = 6;
    sub_22BA10B8C();
    v24 = *(v3 + 12);
    v25 = *(v3 + 13);
    LOBYTE(v49) = 7;
    sub_22BA10B7C();
    v26 = *(v3 + 14);
    v27 = *(v3 + 15);
    LOBYTE(v49) = 8;
    sub_22BA10B7C();
    v28 = v3[128];
    LOBYTE(v49) = 9;
    sub_22BA10B8C();
    v29 = *(v3 + 17);
    v30 = *(v3 + 18);
    LOBYTE(v49) = 10;
    sub_22BA10B7C();
    v31 = *(v3 + 19);
    v32 = v3[160];
    LOBYTE(v49) = 11;
    sub_22BA10BBC();
    v33 = *(v3 + 21);
    v34 = v3[176];
    LOBYTE(v49) = 12;
    sub_22BA10BBC();
    v35 = *(v3 + 23);
    v36 = *(v3 + 24);
    LOBYTE(v49) = 13;
    sub_22BA10B7C();
    v37 = *(v3 + 25);
    v38 = *(v3 + 26);
    LOBYTE(v49) = 14;
    sub_22BA10B7C();
    v39 = *(v3 + 27);
    v40 = *(v3 + 28);
    LOBYTE(v49) = 15;
    sub_22BA10B7C();
    v41 = *(v3 + 35);
    v42 = v3[288];
    LOBYTE(v49) = 19;
    sub_22BA10B9C();
    v43 = *(v3 + 37);
    v44 = *(v3 + 38);
    LOBYTE(v49) = 20;
    sub_22BA10B7C();
    v52 = *(v3 + 232);
    v49 = *(v3 + 232);
    v48 = 16;
    sub_22B9C2758(&v52, v47);
    sub_22B968DB4();
    sub_22BA10BAC();
    sub_22B9359A8(v49, *(&v49 + 1));
    v51 = *(v3 + 248);
    v49 = *(v3 + 248);
    v48 = 17;
    sub_22B9C2758(&v51, v47);
    sub_22BA10BAC();
    sub_22B9359A8(v49, *(&v49 + 1));
    v49 = *(v3 + 264);
    v50 = v49;
    v48 = 18;
    sub_22B9C2758(&v50, v47);
    sub_22BA10BAC();
    sub_22B9359A8(v49, *(&v49 + 1));
    *&v49 = *(v3 + 39);
    v47[0] = 21;
    sub_22B9349C8(&qword_27D8D54A8, &qword_22BA18970);
    sub_22B9C27C8(&qword_27D8D5838, sub_22B9C284C);
    sub_22BA10BAC();
  }

  return (*(v6 + 8))(v10, v5);
}

void *sub_22B9C1828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22B9C18E0(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x140uLL);
  }

  return result;
}

uint64_t sub_22B9C188C()
{
  v0 = sub_22BA10C7C();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

void *sub_22B9C18E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5828, &qword_22BA18968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v144 = a1;
  sub_22B9358B4(a1, v11);
  sub_22B9C26D4();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(v144);
  }

  v13 = v6;
  LOBYTE(v82) = 0;
  v14 = sub_22BA10ADC();
  LOBYTE(v82) = 1;
  v15 = sub_22BA10B0C();
  v142 = v16 & 1;
  LOBYTE(v82) = 2;
  v78 = sub_22BA10ACC();
  v79 = v18;
  LOBYTE(v82) = 3;
  v19 = sub_22BA10ACC();
  v75 = v20;
  v77 = v19;
  LOBYTE(v82) = 4;
  v74 = 0;
  v76 = sub_22BA10AEC();
  v140 = v21 & 1;
  LOBYTE(v82) = 5;
  v60 = sub_22BA10ACC();
  v73 = v23;
  LOBYTE(v82) = 6;
  v59 = sub_22BA10ADC();
  LOBYTE(v82) = 7;
  v58 = sub_22BA10ACC();
  v72 = v24;
  LOBYTE(v82) = 8;
  v57 = sub_22BA10ACC();
  v71 = v25;
  v80 = 0;
  LOBYTE(v82) = 9;
  v26 = sub_22BA10ADC();
  v80 = 0;
  v27 = v26;
  LOBYTE(v82) = 10;
  v56 = sub_22BA10ACC();
  v70 = v28;
  v80 = 0;
  LOBYTE(v82) = 11;
  v55 = sub_22BA10B0C();
  v80 = 0;
  v136 = v29 & 1;
  LOBYTE(v82) = 12;
  v54 = sub_22BA10B0C();
  v80 = 0;
  v134 = v30 & 1;
  LOBYTE(v82) = 13;
  v53 = sub_22BA10B1C();
  v69 = v31;
  v80 = 0;
  LOBYTE(v82) = 14;
  v52 = sub_22BA10ACC();
  v68 = v32;
  v80 = 0;
  LOBYTE(v82) = 15;
  v51 = sub_22BA10ACC();
  v67 = v33;
  v80 = 0;
  LOBYTE(v81[0]) = 16;
  v62 = sub_22B9363C8();
  v34 = v80;
  sub_22BA10AFC();
  v80 = v34;
  if (v34)
  {
    (*(v13 + 8))(v10, v5);
    LODWORD(v77) = 0;
    LODWORD(v78) = 0;
    LODWORD(v76) = 1;
    v22 = v74;
    sub_22B936C4C(v144);

    if (!v22)
    {
    }

    if (v76)
    {

      if (v77)
      {
        goto LABEL_12;
      }
    }

    else if (v77)
    {
LABEL_12:
      result = sub_22B9359A8(v66, v65);
      if ((v78 & 1) == 0)
      {
        return result;
      }

      return sub_22B9359A8(v64, v63);
    }

    if (!v78)
    {
      return result;
    }

    return sub_22B9359A8(v64, v63);
  }

  v65 = v83;
  v66 = v82;
  LOBYTE(v81[0]) = 17;
  sub_22BA10AFC();
  v80 = 0;
  v63 = v83;
  v64 = v82;
  LOBYTE(v81[0]) = 18;
  sub_22BA10AFC();
  v80 = 0;
  v61 = v83;
  v62 = v82;
  LOBYTE(v82) = 19;
  v50 = sub_22BA10AEC();
  v80 = 0;
  v132 = v35 & 1;
  LOBYTE(v82) = 20;
  v48 = sub_22BA10ACC();
  v49 = v36;
  v80 = 0;
  sub_22B9349C8(&qword_27D8D54A8, &qword_22BA18970);
  v129 = 21;
  sub_22B9C27C8(&qword_281414C60, sub_22B9931D0);
  v37 = v80;
  sub_22BA10AFC();
  v80 = v37;
  (*(v13 + 8))(v10, v5);
  if (v37)
  {
    sub_22B936C4C(v144);

    sub_22B9359A8(v66, v65);
    sub_22B9359A8(v64, v63);
    sub_22B9359A8(v62, v61);
  }

  else
  {
    v43 = v130;
    LOBYTE(v81[0]) = v14;
    *(v81 + 1) = v143[0];
    HIDWORD(v81[0]) = *(v143 + 3);
    v46 = v15;
    v81[1] = v15;
    v45 = v142;
    LOBYTE(v81[2]) = v142;
    *(&v81[2] + 1) = *v141;
    HIDWORD(v81[2]) = *&v141[3];
    v81[3] = v78;
    v81[4] = v79;
    v81[5] = v77;
    v81[6] = v75;
    v81[7] = v76;
    v44 = v140;
    LOBYTE(v81[8]) = v140;
    *(&v81[8] + 1) = *v139;
    HIDWORD(v81[8]) = *&v139[3];
    v81[9] = v60;
    v81[10] = v73;
    LOBYTE(v81[11]) = v59;
    *(&v81[11] + 1) = *v138;
    HIDWORD(v81[11]) = *&v138[3];
    v81[12] = v58;
    v81[13] = v72;
    v81[14] = v57;
    v81[15] = v71;
    v47 = v27;
    LOBYTE(v81[16]) = v27;
    HIDWORD(v81[16]) = *&v137[3];
    *(&v81[16] + 1) = *v137;
    v81[17] = v56;
    v81[18] = v70;
    v81[19] = v55;
    LODWORD(v74) = v136;
    LOBYTE(v81[20]) = v136;
    HIDWORD(v81[20]) = *&v135[3];
    *(&v81[20] + 1) = *v135;
    v38 = v53;
    v81[21] = v54;
    *(&v81[22] + 1) = *v133;
    *(&v81[36] + 1) = *v131;
    v39 = v134;
    LOBYTE(v81[22]) = v134;
    HIDWORD(v81[22]) = *&v133[3];
    v40 = v69;
    v81[23] = v53;
    v81[24] = v69;
    v41 = v52;
    v81[25] = v52;
    v81[26] = v68;
    v81[27] = v51;
    v81[28] = v67;
    v81[29] = v66;
    v81[30] = v65;
    v81[31] = v64;
    v81[32] = v63;
    v81[33] = v62;
    v81[34] = v61;
    v81[35] = v50;
    HIDWORD(v81[36]) = *&v131[3];
    v42 = v132;
    LOBYTE(v81[36]) = v132;
    v81[37] = v48;
    v81[38] = v49;
    v81[39] = v130;
    sub_22B9AE744(v81, &v82);
    sub_22B936C4C(v144);
    LOBYTE(v82) = v14;
    v83 = v46;
    v84 = v45;
    v86 = v78;
    v87 = v79;
    v88 = v77;
    v89 = v75;
    v90 = v76;
    v91 = v44;
    v93 = v60;
    v94 = v73;
    v95 = v59;
    *(&v82 + 1) = v143[0];
    HIDWORD(v82) = *(v143 + 3);
    *v85 = *v141;
    *&v85[3] = *&v141[3];
    *&v92[3] = *&v139[3];
    *v92 = *v139;
    *v96 = *v138;
    *&v96[3] = *&v138[3];
    v97 = v58;
    v98 = v72;
    v99 = v57;
    v100 = v71;
    v101 = v47;
    *&v102[3] = *&v137[3];
    *v102 = *v137;
    v103 = v56;
    v104 = v70;
    v105 = v55;
    v106 = v74;
    *&v107[3] = *&v135[3];
    *v107 = *v135;
    v108 = v54;
    v109 = v39;
    *&v110[3] = *&v133[3];
    *v110 = *v133;
    v111 = v38;
    v112 = v40;
    v113 = v41;
    v114 = v68;
    v115 = v51;
    v116 = v67;
    v117 = v66;
    v118 = v65;
    v119 = v64;
    v120 = v63;
    v121 = v62;
    v122 = v61;
    v123 = v50;
    v124 = v42;
    *v125 = *v131;
    *&v125[3] = *&v131[3];
    v126 = v48;
    v127 = v49;
    v128 = v43;
    sub_22B9C2728(&v82);
    return memcpy(a2, v81, 0x140uLL);
  }
}

unint64_t sub_22B9C26D4()
{
  result = qword_281415650;
  if (!qword_281415650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415650);
  }

  return result;
}

uint64_t sub_22B9C2758(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9C27C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(&qword_27D8D54A8, &qword_22BA18970);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B9C284C()
{
  result = qword_27D8D5840;
  if (!qword_27D8D5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5840);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B9C29F4()
{
  result = qword_27D8D5848;
  if (!qword_27D8D5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5848);
  }

  return result;
}

unint64_t sub_22B9C2A4C()
{
  result = qword_281415640;
  if (!qword_281415640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415640);
  }

  return result;
}

unint64_t sub_22B9C2AA4()
{
  result = qword_281415648;
  if (!qword_281415648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415648);
  }

  return result;
}

uint64_t sub_22B9C2B10()
{
  *v0;
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B9C2C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B9C2E30();
  *a2 = result;
  return result;
}

void sub_22B9C2C80(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF32766465747079;
  v4 = 0x72636E4574616863;
  v5 = 0xEF31566574616470;
  v6 = 0x556567617373656DLL;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEA0000000000746ELL;
  v8 = 0x656D686361747461;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000022BA1BA10;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000022BA1B9F0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000022BA1B9C0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_22B9C2E30()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22B9C2E90()
{
  result = qword_27D8D5850;
  if (!qword_27D8D5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5850);
  }

  return result;
}

unint64_t sub_22B9C2EE4()
{
  result = qword_27D8D5858;
  if (!qword_27D8D5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5858);
  }

  return result;
}

Swift::Int __swiftcall CKRecordID.protocolBufferSize(for:)(Swift::Int a1)
{
  v1 = a1;
  v2 = __OFADD__(a1, 2);
  result = a1 + 2;
  if (v2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v1 >= 128)
  {
    while (1)
    {
      v4 = result + 1;
      if (__OFADD__(result, 1))
      {
        break;
      }

      v5 = v1 >> 14;
      v1 = v1 >> 7;
      ++result;
      if (!v5)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  return result;
}

__n128 sub_22B9C2F84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B9C2F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B9C2FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22B9C3040(uint64_t a1)
{
  sub_22BA108FC();

  strcpy(&v20, "Summary for ");
  BYTE13(v20) = 0;
  HIWORD(v20) = -5120;
  v18 = *(a1 + 16);

  v2 = sub_22BA10C1C();
  MEMORY[0x231899730](v2);

  result = MEMORY[0x231899730](0x203A736570797420, 0xE800000000000000);
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v19 = v20;
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(a1 + 56) + 48 * v11);
    v16 = v15[1];
    v20 = *v15;
    v21[0] = v16;
    *(v21 + 9) = *(v15 + 25);

    MEMORY[0x231899730](v13, v14);

    MEMORY[0x231899730](32, 0xE100000000000000);
    v17 = sub_22B9C3378();
    MEMORY[0x231899730](v17);

    MEMORY[0x231899730](8233, 0xE200000000000000);
    MEMORY[0x231899730](40, 0xE100000000000000);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v19;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B9C3254(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  do
  {
    if (!v5)
    {
      while (1)
      {
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v6 >= ((v3 + 63) >> 6))
        {
          return v2;
        }

        v5 = *(result + 64 + 8 * v6);
        ++v1;
        if (v5)
        {
          v1 = v6;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

LABEL_9:
    v7 = (*(result + 56) + 48 * (__clz(__rbit64(v5)) | (v1 << 6)));
    v8 = v7[2];
    v9 = *v7 + v8;
    if (__OFADD__(*v7, v8))
    {
      goto LABEL_16;
    }

    v10 = v7[4];
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      goto LABEL_17;
    }

    v5 &= v5 - 1;
    v11 = __OFADD__(v2, v12);
    v2 += v12;
  }

  while (!v11);
  __break(1u);
  return v2;
}

uint64_t sub_22B9C330C(uint64_t a1, char a2)
{
  if (!a2)
  {
    v5 = __OFADD__(*v2, a1);
    result = *v2 + a1;
    if (!v5)
    {
      v7 = 1;
      v3 = v2;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v3 = v2 + 2;
    v4 = v2[2];
    v5 = __OFADD__(v4, a1);
    result = v4 + a1;
    if (!v5)
    {
      v7 = 3;
LABEL_9:
      *v3 = result;
      LOBYTE(v2[v7]) = a2;
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2 + 4;
  v8 = v2[4];
  v5 = __OFADD__(v8, a1);
  result = v8 + a1;
  if (!v5)
  {
    v7 = 5;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22B9C3378()
{
  sub_22BA108FC();

  v5 = *v0;
  v1 = sub_22BA10C1C();
  MEMORY[0x231899730](v1);

  MEMORY[0x231899730](0x73696E6966202C5DLL, 0xEB000000005B2068);
  v6 = v0[2];
  v2 = sub_22BA10C1C();
  MEMORY[0x231899730](v2);

  MEMORY[0x231899730](0x206C696166202C5DLL, 0xE90000000000005BLL);
  v7 = v0[4];
  v3 = sub_22BA10C1C();
  MEMORY[0x231899730](v3);

  MEMORY[0x231899730](4071517, 0xE300000000000000);
  return 0x207472617473203CLL;
}

void sub_22B9C34D8(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v6 = v5;
  v12 = *v5;
  if (*(v12 + 16) && (v13 = sub_22B990A58(a3, a4), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 48 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    LOBYTE(v15) = *(v15 + 40);
    *&v52 = v16;
    BYTE8(v52) = v17;
    v53 = v18;
    v54 = v19;
    v55 = v20;
    v56 = v15;
    a1 = sub_22B9C330C(a1, a2);
    v21 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v57 = *v6;
    sub_22B9BAFB4(&v52, a3, a4, isUniquelyReferenced_nonNull_native);
    *v6 = v57;
    if (!a5)
    {
LABEL_4:
      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v23 = sub_22BA0FEFC();
      sub_22B936CA8(v23, qword_28141AD10);

      oslog = sub_22BA0FEDC();
      v24 = sub_22BA1043C();

      if (os_log_type_enabled(oslog, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v51 = v26;
        *v25 = 136315650;
        if (a2)
        {
          if (a2 == 1)
          {
            v27 = 0x6873696E6966;
          }

          else
          {
            v27 = 1818845542;
          }

          if (a2 == 1)
          {
            v28 = 0xE600000000000000;
          }

          else
          {
            v28 = 0xE400000000000000;
          }
        }

        else
        {
          v27 = 0x7472617473;
          v28 = 0xE500000000000000;
        }

        v48 = sub_22B99153C(v27, v28, &v51);

        *(v25 + 4) = v48;
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_22B99153C(a3, a4, &v51);
        *(v25 + 22) = 2048;
        *(v25 + 24) = a1;
        _os_log_impl(&dword_22B92A000, oslog, v24, "%s importing %s, count: %ld", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v26, -1, -1);
        MEMORY[0x23189ADD0](v25, -1, -1);

        return;
      }

      v44 = oslog;

LABEL_32:

      return;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = a1;
      }

      else
      {
        v31 = 0;
        v30 = 0;
        v29 = a1;
      }
    }

    else
    {
      v29 = a2;
      v31 = a2;
      v30 = a1;
    }

    *&v57 = v30;
    BYTE8(v57) = 0;
    v58 = v31;
    v59 = 1;
    v60 = v29;
    v61 = 2;
    v32 = *v6;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *v6;
    sub_22B9BAFB4(&v57, a3, a4, v33);
    *v6 = v51;
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  v34 = a5;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v35 = sub_22BA0FEFC();
  sub_22B936CA8(v35, qword_28141AD10);
  v36 = a5;

  v37 = sub_22BA0FEDC();
  v38 = sub_22BA1044C();

  if (!os_log_type_enabled(v37, v38))
  {

    v44 = a5;

    goto LABEL_32;
  }

  osloga = a1;
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v51 = v41;
  *v39 = 136315906;
  if (a2)
  {
    if (a2 == 1)
    {
      v42 = 0x6873696E6966;
    }

    else
    {
      v42 = 1818845542;
    }

    if (a2 == 1)
    {
      v43 = 0xE600000000000000;
    }

    else
    {
      v43 = 0xE400000000000000;
    }
  }

  else
  {
    v42 = 0x7472617473;
    v43 = 0xE500000000000000;
  }

  v45 = sub_22B99153C(v42, v43, &v51);

  *(v39 + 4) = v45;
  *(v39 + 12) = 2080;
  *(v39 + 14) = sub_22B99153C(a3, a4, &v51);
  *(v39 + 22) = 2048;
  *(v39 + 24) = osloga;
  *(v39 + 32) = 2112;
  v46 = a5;
  v47 = _swift_stdlib_bridgeErrorToNSError();
  *(v39 + 34) = v47;
  *v40 = v47;
  _os_log_impl(&dword_22B92A000, v37, v38, "%s importing %s, count: %ld, error: %@", v39, 0x2Au);
  sub_22B95DEF0(v40);
  MEMORY[0x23189ADD0](v40, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x23189ADD0](v41, -1, -1);
  MEMORY[0x23189ADD0](v39, -1, -1);
}