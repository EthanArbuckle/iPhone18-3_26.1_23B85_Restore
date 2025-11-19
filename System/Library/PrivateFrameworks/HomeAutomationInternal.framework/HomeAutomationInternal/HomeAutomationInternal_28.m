void *sub_252B21778()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v5)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000076, 0x8000000252E7CDF0, 0xD00000000000001FLL, 0x8000000252E7CFC0, 137);
    return 0;
  }

  v6 = v5;
  sub_252E32E74();
  v7 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v8 = sub_252E32E44();
  v9 = [v7 initWithNSUUID_];

  (*(v1 + 8))(v4, v0);
  [v6 setCommandId_];

  [v6 setCommandType_];
  v10 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v10)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000076, 0x8000000252E7CDF0, 0xD00000000000001FLL, 0x8000000252E7CFC0, 143);

    return 0;
  }

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252E3C130;
  *(v12 + 32) = v11;
  sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
  v13 = v11;
  v14 = sub_252E37254();

  [v6 setHomeAutomationRequests_];

  return v6;
}

unint64_t sub_252B21AB4()
{
  result = qword_27F5421A8;
  if (!qword_27F5421A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541850, &qword_252E43DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5421A8);
  }

  return result;
}

uint64_t sub_252B21B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[153] = v3;
  v4[152] = a3;
  v4[151] = a2;
  v4[150] = a1;
  v5 = sub_252E34014();
  v4[154] = v5;
  v6 = *(v5 - 8);
  v4[155] = v6;
  v7 = *(v6 + 64) + 15;
  v4[156] = swift_task_alloc();
  v4[157] = swift_task_alloc();
  v4[158] = swift_task_alloc();
  v4[159] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B21C20, 0, 0);
}

uint64_t sub_252B21C20()
{
  v58 = v0;
  v1 = *(v0 + 1216);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = *(v0 + 1216);
    v4 = sub_252C285F0();
    v5 = v4;
    __dst[0] = v2;
    v61 = v1;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_40:
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_39;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v12 = sub_252DA124C(0);

      ++v8;
      if (v12)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v2 = __dst[0];
        v8 = v11;
      }
    }

    v1 = v61;
  }

  *(v0 + 1280) = v2;
  v14 = [*(v0 + 1208) userTask];
  if (v14)
  {
    v15 = v14;
    if ([v14 taskType] == 4)
    {

LABEL_21:
      v18 = *(v0 + 1224);
      v19 = swift_allocObject();
      *(v0 + 1288) = v19;
      v19[2] = v18;
      v19[3] = v2;

      if (v1)
      {
        v20 = *(v18 + 48);
        v21 = *(v0 + 1216);
        v22 = *__swift_project_boxed_opaque_existential_1((v18 + 24), v20);
        v61 = sub_252C0FE24;

        v23 = swift_task_alloc();
        *(v0 + 1296) = v23;
        *v23 = v0;
        v23[1] = sub_252B223F0;

        return (v61)(0, v22, v2);
      }

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 1272);
      v53 = *(v0 + 1224);
      v54 = sub_252E36AD4();
      __swift_project_value_buffer(v54, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v46 = v53[12];
      v55 = v53[13];
      __swift_project_boxed_opaque_existential_1(v53 + 9, v46);
      sub_252AD7CC4();
      v56 = swift_task_alloc();
      *(v0 + 1344) = v56;
      *v56 = v0;
      v56[1] = sub_252B22750;
      v49 = *(v0 + 1272);
      v60 = v55;
      v50 = &unk_252E4BC40;
      v51 = v0 + 1104;
      goto LABEL_35;
    }

    v17 = [v15 taskType];

    if (v17 == 5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(v0 + 1208);
    sub_252C515AC();
  }

  v25 = *(v0 + 1224);
  v26 = *(v0 + 1208);
  v19 = swift_allocObject();
  *(v0 + 1384) = v19;
  v19[2] = v25;
  v19[3] = v2;
  v19[4] = v26;

  v27 = v26;
  if (!v1)
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 1256);
    v44 = *(v0 + 1224);
    v45 = sub_252E36AD4();
    __swift_project_value_buffer(v45, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v46 = v44[12];
    v47 = v44[13];
    __swift_project_boxed_opaque_existential_1(v44 + 9, v46);
    sub_252AD7CC4();
    v48 = swift_task_alloc();
    *(v0 + 1464) = v48;
    *v48 = v0;
    v48[1] = sub_252B23464;
    v49 = *(v0 + 1256);
    v60 = v47;
    v50 = &unk_252E4BC28;
    v51 = v0 + 1024;
LABEL_35:

    return sub_252BDB88C(v51, v50, v19, v49, 0, 0, 0, v46);
  }

  v28 = v27;
  v29 = v25[6];
  v30 = *(v0 + 1216);
  v31 = *__swift_project_boxed_opaque_existential_1(v25 + 3, v29);
  v32 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v33 = swift_allocObject();
  *(v0 + 1392) = v33;
  *(v33 + 16) = 0;
  *(v33 + 24) = v2;
  memcpy((v0 + 16), v25 + 14, 0x1F8uLL);

  v34 = v28;
  memcpy(__dst, v25 + 14, 0x1F8uLL);

  v35 = v34;
  sub_2529D291C(v0 + 16, v0 + 520);
  v36 = sub_252953488(v28, __dst, 0);
  *(v0 + 1400) = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v37 = swift_allocObject();
  *(v0 + 1408) = v37;
  *(v37 + 16) = xmmword_252E3C280;
  *(v37 + 32) = 0xD000000000000017;
  *(v37 + 40) = 0x8000000252E6FE70;
  v38 = MEMORY[0x277D839B0];
  *(v37 + 48) = 0;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "intentContext");
  *(v37 + 94) = -4864;
  v39 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v37 + 96) = v36;
  *(v37 + 120) = v39;
  *(v37 + 128) = 0x65736E6F70736572;
  *(v37 + 168) = v32;
  *(v37 + 136) = 0xE900000000000073;
  *(v37 + 144) = v33;
  v40 = *(MEMORY[0x277D55BE8] + 4);
  v61 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v41 = swift_task_alloc();
  *(v0 + 1416) = v41;
  *v41 = v0;
  v41[1] = sub_252B23050;
  v42 = v61;

  return (v42)(0xD000000000000020, 0x8000000252E66650, v37);
}

uint64_t sub_252B223F0(uint64_t a1)
{
  v3 = *(*v2 + 1296);
  v4 = *(*v2 + 1280);
  v5 = *v2;
  v5[163] = a1;
  v5[164] = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252B226B0, 0, 0);
  }

  else
  {
    v6 = v5[152];
    v7 = swift_task_alloc();
    v5[165] = v7;
    *v7 = v5;
    v7[1] = sub_252B22598;
    v8 = v5[153];

    return sub_252E174F4(v6);
  }
}

uint64_t sub_252B22598(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1320);
  v7 = *v2;
  *(v3 + 1328) = a1;
  *(v3 + 1336) = v1;

  if (v1)
  {
    v5 = sub_252B22A1C;
  }

  else
  {
    v5 = sub_252B228C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B226B0()
{
  v1 = v0[161];
  v2 = v0[152];

  v3 = v0[164];
  v4 = v0[159];
  v5 = v0[158];
  v6 = v0[157];
  v7 = v0[156];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B22750()
{
  v2 = *(*v1 + 1344);
  v3 = *(*v1 + 1272);
  v4 = *(*v1 + 1240);
  v5 = *(*v1 + 1232);
  v8 = *v1;
  *(*v1 + 1352) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252B22FB8;
  }

  else
  {
    v6 = sub_252B22E78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252B228C0()
{
  v1 = v0 + 149;
  v2 = v0[166];
  v3 = v0[163];
  v0[149] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[158];
  v9 = v0[153];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[170] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[171] = v12;
  *v12 = v0;
  v12[1] = sub_252B22AC8;
  v13 = v0[158];

  return sub_252BDB88C((v0 + 143), &unk_252E3FA50, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252B22A1C()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1216);

  v3 = *(v0 + 1336);
  v4 = *(v0 + 1272);
  v5 = *(v0 + 1264);
  v6 = *(v0 + 1256);
  v7 = *(v0 + 1248);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252B22AC8()
{
  v2 = *v1;
  v3 = *(*v1 + 1368);
  v4 = *(*v1 + 1264);
  v5 = *(*v1 + 1240);
  v6 = *(*v1 + 1232);
  v10 = *v1;
  *(*v1 + 1376) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252B22DB0;
  }

  else
  {
    v8 = *(v2 + 1360);

    v7 = sub_252B22C48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252B22C48()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1328);
  v9 = *(v0 + 1304);
  v10 = *(v0 + 1288);
  v11 = *(v0 + 1216);
  v12 = *(v0 + 1200);
  (*(v4 + 112))(v7, v0 + 1144, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1144));

  v13 = *(v0 + 1272);
  v14 = *(v0 + 1264);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1248);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252B22DB0()
{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1216);

  v5 = *(v0 + 1376);
  v6 = *(v0 + 1272);
  v7 = *(v0 + 1264);
  v8 = *(v0 + 1256);
  v9 = *(v0 + 1248);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252B22E78()
{
  v1 = v0[153];
  v2 = v0[151];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[161];
  v9 = v0[150];
  (*(v4 + 112))(v7, v0 + 138, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 138);

  v10 = v0[159];
  v11 = v0[158];
  v12 = v0[157];
  v13 = v0[156];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252B22FB8()
{
  v1 = v0[161];

  v2 = v0[169];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[157];
  v6 = v0[156];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252B23050(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1416);
  v5 = *(*v2 + 1408);
  v8 = *v2;
  *(v3 + 1424) = a1;
  *(v3 + 1432) = v1;

  if (v1)
  {
    v6 = sub_252B23380;
  }

  else
  {
    v6 = sub_252B23188;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252B23188()
{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[160];
  v4 = v0[153];
  v5 = v0[152];
  v6 = v0[151];

  swift_bridgeObjectRelease_n();
  v7 = swift_task_alloc();
  v0[180] = v7;
  *v7 = v0;
  v7[1] = sub_252B23268;
  v8 = v0[153];

  return sub_252E174F4(v5);
}

uint64_t sub_252B23268(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1440);
  v7 = *v2;
  *(v3 + 1448) = a1;
  *(v3 + 1456) = v1;

  if (v1)
  {
    v5 = sub_252B23730;
  }

  else
  {
    v5 = sub_252B235D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B23380()
{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[160];
  v5 = v0[153];
  v6 = v0[152];
  v7 = v0[151];

  swift_bridgeObjectRelease_n();

  v8 = v0[179];
  v9 = v0[159];
  v10 = v0[158];
  v11 = v0[157];
  v12 = v0[156];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252B23464()
{
  v2 = *(*v1 + 1464);
  v3 = *(*v1 + 1256);
  v4 = *(*v1 + 1240);
  v5 = *(*v1 + 1232);
  v8 = *v1;
  *(*v1 + 1472) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252B23CCC;
  }

  else
  {
    v6 = sub_252B23B8C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252B235D4()
{
  v1 = v0 + 148;
  v2 = v0[181];
  v3 = v0[178];
  v0[148] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[156];
  v9 = v0[153];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[185] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[186] = v12;
  *v12 = v0;
  v12[1] = sub_252B237DC;
  v13 = v0[156];

  return sub_252BDB88C((v0 + 133), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252B23730()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1216);

  v3 = *(v0 + 1456);
  v4 = *(v0 + 1272);
  v5 = *(v0 + 1264);
  v6 = *(v0 + 1256);
  v7 = *(v0 + 1248);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252B237DC()
{
  v2 = *v1;
  v3 = *(*v1 + 1488);
  v4 = *(*v1 + 1248);
  v5 = *(*v1 + 1240);
  v6 = *(*v1 + 1232);
  v10 = *v1;
  *(*v1 + 1496) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252B23AC4;
  }

  else
  {
    v8 = *(v2 + 1480);

    v7 = sub_252B2395C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252B2395C()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1448);
  v9 = *(v0 + 1424);
  v10 = *(v0 + 1384);
  v11 = *(v0 + 1216);
  v12 = *(v0 + 1200);
  (*(v4 + 112))(v7, v0 + 1064, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));

  v13 = *(v0 + 1272);
  v14 = *(v0 + 1264);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1248);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252B23AC4()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1216);

  v5 = *(v0 + 1496);
  v6 = *(v0 + 1272);
  v7 = *(v0 + 1264);
  v8 = *(v0 + 1256);
  v9 = *(v0 + 1248);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252B23B8C()
{
  v1 = v0[153];
  v2 = v0[151];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[173];
  v9 = v0[150];
  (*(v4 + 112))(v7, v0 + 128, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  v10 = v0[159];
  v11 = v0[158];
  v12 = v0[157];
  v13 = v0[156];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252B23CCC()
{
  v1 = v0[173];

  v2 = v0[184];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[157];
  v6 = v0[156];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252B23D64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B23D84, 0, 0);
}

uint64_t sub_252B23D84()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25299F248;
  v4 = v0[3];

  return sub_252C0FE24(0, v2, v4);
}

uint64_t sub_252B23E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[130] = a3;
  v3[129] = a2;
  v3[128] = a1;
  return MEMORY[0x2822009F8](sub_252B23E80, 0, 0);
}

uint64_t sub_252B23E80()
{
  v18 = v0;
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  v4 = *__swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v5 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v6 = swift_allocObject();
  v0[131] = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = v2;
  memcpy(v0 + 2, v3 + 14, 0x1F8uLL);

  v7 = v1;

  memcpy(__dst, v3 + 14, sizeof(__dst));

  v8 = v7;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v9 = sub_252953488(v1, __dst, 0);
  v0[132] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  v0[133] = v10;
  *(v10 + 16) = xmmword_252E3C280;
  *(v10 + 32) = 0xD000000000000017;
  *(v10 + 40) = 0x8000000252E6FE70;
  v11 = MEMORY[0x277D839B0];
  *(v10 + 48) = 0;
  *(v10 + 72) = v11;
  strcpy((v10 + 80), "intentContext");
  *(v10 + 94) = -4864;
  v12 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v10 + 96) = v9;
  *(v10 + 120) = v12;
  *(v10 + 128) = 0x65736E6F70736572;
  *(v10 + 168) = v5;
  *(v10 + 136) = 0xE900000000000073;
  *(v10 + 144) = v6;
  v13 = *(MEMORY[0x277D55BE8] + 4);
  v16 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v14 = swift_task_alloc();
  v0[134] = v14;
  *v14 = v0;
  v14[1] = sub_2529D23F0;

  return v16(0xD000000000000020, 0x8000000252E66650, v10);
}

uint64_t sub_252B24100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252B21B30(a1, a2, a3);
}

void *sub_252B241B4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SprinklerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B24218(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_252C285F0();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v6 = *(v3 + 32 + 8 * v5);
        }

        v7 = v6;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v9 = sub_252DA10F8();
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = 32;
          while (v10)
          {
            v12 = *(v9 + v11);
            v11 += 8;
            --v10;
            if (v12 == 32)
            {

              return 1;
            }
          }
        }

        v13 = sub_252DA10F8();
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = 32;
          while (v14)
          {
            v16 = *(v13 + v15);
            v15 += 8;
            --v14;
            if (v16 == 33)
            {

              v17 = sub_252DA6828();
              v18 = *(v17 + 2);
              v19 = 32;
              while (v18)
              {
                v20 = *&v17[v19];
                v19 += 8;
                --v18;
                if (v20 == 51)
                {
LABEL_21:

                  return 1;
                }
              }

              v21 = sub_252DA6828();
              v22 = *(v21 + 2);
              v23 = 32;
              while (v22)
              {
                v24 = *&v21[v23];
                v23 += 8;
                --v22;
                if (v24 == 46)
                {
                  goto LABEL_21;
                }
              }

              break;
            }
          }

          if (v5 == i)
          {
            goto LABEL_35;
          }
        }

        else
        {

          if (v5 == i)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    return 0;
  }

  return result;
}

uint64_t sub_252B24428()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252B23E58(v2, v3, v4);
}

uint64_t sub_252B244D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B23D64(v2, v3);
}

id DiscoverHomeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_252B2459C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252B2547C(a1);
}

uint64_t sub_252B247CC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_252B248A0;

  return sub_252B2547C(v6);
}

uint64_t sub_252B248A0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  type metadata accessor for DiscoverHomeFiltersResolutionResult();
  v5 = sub_252E37254();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_252B24A24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2529C9ED8;

  return sub_252B256FC();
}

uint64_t sub_252B24C4C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_252A91798;

  return sub_252B256FC();
}

uint64_t sub_252B24CF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9ED8;

  return sub_252B258F4(a1);
}

id sub_252B24DA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v10 = qword_27F544F08;
  *&v52[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434A0, &qword_252E4BD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434A8, &unk_252E4BD40);
  v40 = 1;
  v39 = 1;
  v38 = 1;
  v37 = 1;
  *&v41 = 0;
  BYTE8(v41) = 1;
  v42 = 0uLL;
  *&v43 = 0;
  *(&v43 + 1) = a1;
  *&v44 = a2;
  *(&v44 + 1) = sub_252E36F94();
  v45 = v11;
  v46 = 0uLL;
  LOBYTE(v47) = 1;
  *(&v47 + 1) = 0;
  v48 = 0uLL;
  LOWORD(v49) = 513;
  *(&v49 + 1) = 0;
  v50 = 0uLL;
  v51 = 1;
  GEOLocationCoordinate2DMake(&v41);
  v34 = v49;
  v35 = v50;
  v36 = v51;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v10, a4, "HandleIntent", 12, 2, &v26);
  v52[8] = v34;
  v52[9] = v35;
  v53 = v36;
  v52[4] = v30;
  v52[5] = v31;
  v52[6] = v32;
  v52[7] = v33;
  v52[0] = v26;
  v52[1] = v27;
  v52[2] = v28;
  v52[3] = v29;
  sub_25293847C(v52, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v12 = sub_252E36804();
  v14 = v13;

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v16 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v16, &unk_27F541F10, &unk_252E42870);
  }

  v17 = [objc_opt_self() sharedAnalytics];
  if (v17)
  {
    v18 = v17;

    sub_252CC1408(v19);

    v20 = sub_252E36E24();

    [v18 logEventWithType:6506 context:v20];
  }

  else
  {
  }

  v21 = sub_252DB7C84()[5];

  v22 = sub_252DB5924();

  result = sub_252DE16D0(a5);
  v24 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v22))
  {
    [result setCommandDuration_];
LABEL_12:
    sub_252DB7C84();
    sub_252DB7138(v24);

    sub_252DB7C84();
    sub_252DB649C(0, 0, 1);

    v25 = a3;

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B25300(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_252A91F78;

  return sub_252B258F4(v6);
}

id DiscoverHomeIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoverHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiscoverHomeIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoverHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_252B2549C()
{
  if ([*(v0 + 16) discoveryType] != 3 || (v1 = *(v0 + 16), sub_2529D679C(), (v2 & 1) != 0) || (v3 = *(v0 + 16), sub_2529D6968(), (v4 & 1) != 0) || (v5 = *(v0 + 16), (sub_2529D6B60() & 1) != 0))
  {
    v6 = [*(v0 + 16) filters];
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v8 = v6;
      type metadata accessor for HomeFilter();
      v9 = sub_252E37264();
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v19 = v7;
    if (v9 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2530ADF00](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        type metadata accessor for DiscoverHomeFiltersResolutionResult();
        sub_252E2B004(v13);

        MEMORY[0x2530AD700]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v11;
        if (v14 == i)
        {
          v16 = v19;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_25:
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_252E3C130;
    type metadata accessor for DiscoverHomeFiltersResolutionResult();
    *(v16 + 32) = sub_252E20FF8(1);
  }

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_252B25718()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C70);
  sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E7D1D0, 0xD000000000000080, 0x8000000252E7D120);
  v2 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
  v3 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 1;
  [v2 setUserActivity_];
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_252B25854(void *a1)
{
  type metadata accessor for TriggersHandleDelegate();
  if (off_2864BFFE8(a1))
  {
    return off_2864BFFF0();
  }

  type metadata accessor for AccessoriesHandleDelegate();
  return swift_allocObject();
}

uint64_t sub_252B258F4(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_252E32E04();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v5 = sub_252E36AB4();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B25A1C, 0, 0);
}

uint64_t sub_252B25A1C()
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v3 = sub_252E36804();
  v5 = v4;

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v7 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v3;
    *(inited + 56) = v5;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v7, &unk_27F541F10, &unk_252E42870);
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;

    sub_252CC1408(v10);

    v11 = sub_252E36E24();

    [v9 logEventWithType:6505 context:v11];
  }

  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  v15 = sub_252DB7C84()[5];

  sub_252E32DF4();
  sub_252E32D44();
  v17 = v16;
  (*(v13 + 8))(v12, v14);
  v18 = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 < 9.22337204e18)
  {
    v20 = v0[27];
    v19 = v0[28];
    v21 = v0[25];
    v22 = v0[26];
    *(v15 + 16) = v18;

    (*(v22 + 16))(v20, v19, v21);
    if (qword_2814B09D0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  swift_once();
LABEL_11:
  v23 = v0[21];
  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_2814B09D8);
  sub_252E379F4();

  v25 = v23;
  v26 = [v25 description];
  v27 = sub_252E36F34();
  v29 = v28;

  MEMORY[0x2530AD570](v27, v29);

  sub_252CC4A5C(0xD000000000000028, 0x8000000252E7D0F0, 1, 0xD000000000000080, 0x8000000252E7D120);

  v30 = [v25 filters];
  if (v30)
  {
    v31 = v0[21];

    v32 = sub_252B25854(v31);
    v34 = v33;
    v0[29] = v32;
    v0[18] = swift_getObjectType();
    v0[19] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543498, &qword_252E4BD30);
    v35 = sub_252E36F94();
    v37 = v36;
    v0[30] = v35;
    v0[31] = v36;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v0[32] = __swift_project_value_buffer(v24, qword_27F544C70);
    sub_252E379F4();

    MEMORY[0x2530AD570](v35, v37);
    sub_252CC4A5C(0xD000000000000011, 0x8000000252E73E80, 1, 0xD000000000000080, 0x8000000252E7D120);

    ObjectType = swift_getObjectType();
    v39 = *(v34 + 8);
    v54 = (v39 + *v39);
    v40 = v39[1];
    v41 = swift_task_alloc();
    v0[33] = v41;
    *v41 = v0;
    v41[1] = sub_252B261DC;
    v42 = v0[21];

    return v54(v42, ObjectType, v34);
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v44 = v0[27];
    v45 = v0[21];
    __swift_project_value_buffer(v24, qword_27F544C70);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E6D800, 0xD000000000000080, 0x8000000252E7D120, 0x6928656C646E6168, 0xEF293A746E65746ELL, 62);
    v46 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
    v47 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
    swift_beginAccess();
    *&v46[v47] = 5;
    [v46 setUserActivity_];
    v48 = sub_252B24DA0(7104878, 0xE300000000000000, v46, v44, v45);

    v49 = v0[28];
    v50 = v0[25];
    v51 = v0[24];
    v52 = *(v0[26] + 8);
    v52(v0[27], v50);
    v52(v49, v50);

    v53 = v0[1];

    return v53(v48);
  }
}

uint64_t sub_252B261DC(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_252B262DC, 0, 0);
}

uint64_t sub_252B262DC()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v15 = v0[27];
  v16 = v0[29];
  v5 = v0[21];
  sub_252E379F4();

  v6 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  v0[20] = *&v1[v6];
  v7 = sub_252E36F94();
  MEMORY[0x2530AD570](v7);

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E7D1B0, 0xD000000000000080, 0x8000000252E7D120);

  v8 = sub_252B24DA0(v4, v2, v1, v15, v5);

  swift_unknownObjectRelease();
  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[24];
  v12 = *(v0[26] + 8);
  v12(v0[27], v10);
  v12(v9, v10);

  v13 = v0[1];

  return v13(v8);
}

uint64_t dispatch thunk of DiscoverHomeIntentHandler.resolveFilters(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25296BC70;

  return v8(a1);
}

uint64_t dispatch thunk of DiscoverHomeIntentHandler.confirm(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2529C9ED8;

  return v8(a1);
}

uint64_t dispatch thunk of DiscoverHomeIntentHandler.handle(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2529C9ED8;

  return v8(a1);
}

uint64_t sub_252B2686C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B954;

  return sub_252B25300(v2, v3, v4);
}

uint64_t sub_252B26920()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B954;

  return sub_252CD43D0(v2, v3, v5);
}

uint64_t sub_252B269E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B954;

  return sub_252B24C4C(v2, v3);
}

uint64_t sub_252B26A94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25293B808;

  return sub_252B247CC(v2, v3, v4);
}

char *sub_252B26B48(int64_t *a1, uint64_t *a2, void *a3, uint64_t a4, char a5)
{
  v8 = *a1;
  v9 = *a2;
  if (*a1 >> 62)
  {
    if (v8 < 0)
    {
      v20 = *a1;
    }

    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {

    v11 = [a3 userTask];
    if (v11)
    {
      v12 = v11;
      v13 = sub_2529B78B0(v8, v11, a4, a5 & 1);

      return v13;
    }
  }

  if (v9)
  {

    v15 = sub_2529B46E8(a3, v9);

    return v15;
  }

  else
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544EE0);
    sub_252CC3D90(0xD000000000000037, 0x8000000252E7D270, 0xD00000000000007BLL, 0x8000000252E6E7F0);
    v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v18 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v17[v18] = 5;
    [v17 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v19 = sub_252E37254();
    [v17 setEntityResponses_];

    return v17;
  }
}

uint64_t sub_252B26D8C(uint64_t a1, const void *a2)
{
  v3[129] = v2;
  v3[128] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  v3[130] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252B26E40, 0, 0);
}

uint64_t sub_252B26E40()
{
  v20 = v0;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = v0[128];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000032, 0x8000000252E7D400, 0xD00000000000008FLL, 0x8000000252E7D320);
  memcpy(__dst, v0 + 2, sizeof(__dst));
  v3 = v1;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v4 = sub_252953488(v1, __dst, 0);
  v0[131] = v4;

  v5 = [v3 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    type metadata accessor for HomeStore();
    v8 = static HomeStore.shared.getter();
    v9 = HomeStore.services(matching:supporting:)(v7, 0);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_252929F10(v9, 1);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_7:
  v12 = v0[130];
  v13 = *(v0[129] + 16);
  type metadata accessor for HomeAutomationEntityResponses();

  v14 = sub_25299DDFC(v9);
  sub_252BFD9D4(v4, v14);

  v15 = swift_task_alloc();
  v0[132] = v15;
  *v15 = v0;
  v15[1] = sub_252B270B8;
  v16 = v0[130];
  v17 = v0[129];

  return sub_2529588CC(v16);
}

uint64_t sub_252B270B8()
{
  v2 = *(*v1 + 1056);
  v3 = *(*v1 + 1040);
  v6 = *v1;
  *(*v1 + 1064) = v0;

  sub_25295A3FC(v3);
  if (v0)
  {
    v4 = sub_252B27258;
  }

  else
  {
    v4 = sub_252B271E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B271E8()
{
  v1 = v0[131];
  v2 = v0[130];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252B27258()
{
  v1 = v0[131];
  v2 = v0[130];

  v3 = v0[1];
  v4 = v0[133];

  return v3();
}

uint64_t sub_252B272F0(uint64_t a1, const void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B26D8C(a1, a2);
}

void *sub_252B27398@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockFeatureNotAvailableForDeviceHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252B273D4(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = [a1 filters];
  if (!v3)
  {
    if (qword_27F53F500 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_6;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v6 = [a1 userTask];
  if (!v6)
  {

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544DA8);
    v13 = 0xD000000000000022;
    v14 = 0x8000000252E7D3D0;
    v15 = 42;
    goto LABEL_10;
  }

  v7 = v6;
  type metadata accessor for HomeStore();
  v8 = static HomeStore.shared.getter();
  v9 = HomeStore.accessories(matching:supporting:)(v5, 0);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);

    return 0;
  }

  v147 = v7;
  memcpy(v150, __dst, sizeof(v150));
  v18 = sub_252A12828();
  v19 = sub_2529A6C88(70, v18);

  if (v19)
  {
    if (v9 >> 62)
    {
      v20 = sub_252E378C4();
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_15:
        v21 = 0;
        v22 = v9 & 0xC000000000000001;
        v23 = v9 + 32;
        v148 = v20;
        while (1)
        {
          if (v22)
          {
            v24 = MEMORY[0x2530ADF00](v21, v9);
            v25 = __OFADD__(v21++, 1);
            if (v25)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (v21 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_80;
            }

            v24 = *(v23 + 8 * v21);

            v25 = __OFADD__(v21++, 1);
            if (v25)
            {
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              swift_once();
LABEL_6:
              v12 = sub_252E36AD4();
              __swift_project_value_buffer(v12, qword_27F544DA8);
              v13 = 0xD00000000000001ELL;
              v14 = 0x8000000252E7D300;
              v15 = 37;
LABEL_10:
              sub_252CC4050(v13, v14, 0xD00000000000008FLL, 0x8000000252E7D320, 0xD00000000000001ALL, 0x8000000252E7D3B0, v15);
              return 0;
            }
          }

          v26 = (*v24 + 256);
          v27 = *v26;
          if ((*v26)() != 35)
          {
            break;
          }

LABEL_17:
          if (v21 == v20)
          {
            goto LABEL_83;
          }
        }

        v28 = (*v24 + 272);
        v29 = *v28;
        v30 = (*v28)();
        if (*(v30 + 16))
        {
          v31 = *(v30 + 40);
          v32 = v30;
          sub_252E37EC4();
          MEMORY[0x2530AE390](35);
          v33 = sub_252E37F14();
          v34 = -1 << *(v32 + 32);
          v35 = v33 & ~v34;
          if ((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            v36 = ~v34;
            while (*(*(v32 + 48) + 8 * v35) != 35)
            {
              v35 = (v35 + 1) & v36;
              if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            goto LABEL_64;
          }
        }

LABEL_27:

        v38 = (v27)(v37);
        if (v38 == 38)
        {
          v41 = &unk_2864ACCC8;
        }

        else
        {
          v39 = v38;
          v40 = MEMORY[0x277D84FA0];
          if (v39 != 41)
          {
LABEL_32:
            if (*(v40 + 16))
            {
              v42 = *(v40 + 40);
              v43 = v40;
              sub_252E37EC4();
              MEMORY[0x2530AE390](35);
              v44 = sub_252E37F14();
              v45 = -1 << *(v43 + 32);
              v46 = v44 & ~v45;
              if ((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
              {
                v47 = ~v45;
                while (*(*(v43 + 48) + 8 * v46) != 35)
                {
                  v46 = (v46 + 1) & v47;
                  if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                  {
                    goto LABEL_37;
                  }
                }

                goto LABEL_64;
              }
            }

LABEL_37:

            if (sub_252D4FE78(35) || v27() == 45)
            {
              goto LABEL_65;
            }

            v48 = v29();
            if (*(v48 + 16))
            {
              v49 = *(v48 + 40);
              v50 = v48;
              sub_252E37EC4();
              MEMORY[0x2530AE390](45);
              v51 = sub_252E37F14();
              v52 = -1 << *(v50 + 32);
              v53 = v51 & ~v52;
              if ((*(v50 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
              {
                v54 = ~v52;
                while (*(*(v50 + 48) + 8 * v53) != 45)
                {
                  v53 = (v53 + 1) & v54;
                  if (((*(v50 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

LABEL_64:

LABEL_65:

                v22 = v9 & 0xC000000000000001;
                v20 = v148;
                v23 = v9 + 32;
                goto LABEL_17;
              }
            }

LABEL_44:

            v56 = (v27)(v55);
            if (v56 == 38)
            {
              v59 = &unk_2864ACD18;
            }

            else
            {
              v57 = v56;
              v58 = MEMORY[0x277D84FA0];
              if (v57 != 41)
              {
                goto LABEL_49;
              }

              v59 = &unk_2864ACD40;
            }

            v58 = sub_2529FC004(v59);
LABEL_49:
            if (!*(v58 + 16) || (v60 = *(v58 + 40), v61 = v58, sub_252E37EC4(), MEMORY[0x2530AE390](45), v62 = sub_252E37F14(), v63 = -1 << *(v61 + 32), v64 = v62 & ~v63, ((*(v61 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0))
            {
LABEL_54:

              if (!sub_252D4FE78(45) && v27() != 32)
              {
                v66 = v29();
                v67 = v66;
                v22 = v9 & 0xC000000000000001;
                v20 = v148;
                v23 = v9 + 32;
                if (*(v66 + 16))
                {
                  v68 = *(v66 + 40);
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](32);
                  v69 = sub_252E37F14();
                  v70 = -1 << *(v67 + 32);
                  v71 = v69 & ~v70;
                  if ((*(v67 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
                  {
                    v72 = ~v70;
                    while (*(*(v67 + 48) + 8 * v71) != 32)
                    {
                      v71 = (v71 + 1) & v72;
                      if (((*(v67 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
                      {
                        goto LABEL_61;
                      }
                    }

LABEL_75:

                    goto LABEL_17;
                  }
                }

LABEL_61:

                v74 = (v27)(v73);
                if (v74 == 38)
                {
                  v76 = &unk_2864ACD68;
LABEL_67:
                  v75 = sub_2529FC004(v76);
                }

                else
                {
                  v75 = MEMORY[0x277D84FA0];
                  if (v74 == 41)
                  {
                    v76 = &unk_2864ACD90;
                    goto LABEL_67;
                  }
                }

                if (!*(v75 + 16) || (v77 = *(v75 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](32), v78 = sub_252E37F14(), v79 = -1 << *(v75 + 32), v80 = v78 & ~v79, ((*(v75 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0))
                {
LABEL_73:

                  v82 = sub_252D4FE78(32);

                  if (!v82)
                  {
LABEL_156:
                    sub_252929F10(v9, 0);
                    goto LABEL_154;
                  }

                  goto LABEL_17;
                }

                v81 = ~v79;
                while (*(*(v75 + 48) + 8 * v80) != 32)
                {
                  v80 = (v80 + 1) & v81;
                  if (((*(v75 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }

                goto LABEL_75;
              }

              goto LABEL_65;
            }

            v65 = ~v63;
            while (*(*(v61 + 48) + 8 * v64) != 45)
            {
              v64 = (v64 + 1) & v65;
              if (((*(v61 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_64;
          }

          v41 = &unk_2864ACCF0;
        }

        v40 = sub_2529FC004(v41);
        goto LABEL_32;
      }
    }
  }

LABEL_83:
  v83 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v83 + 288), v150);

  v84 = v150[3];
  v85 = v150[4];
  __swift_project_boxed_opaque_existential_1(v150, v150[3]);
  v86 = (*(v85 + 24))(v84, v85);
  __swift_destroy_boxed_opaque_existential_1(v150);
  if ((v86 & 1) != 0 || (sub_252C4B680(0x1D) & 1) == 0)
  {
    goto LABEL_130;
  }

  v87 = (v9 & 0xFFFFFFFFFFFFFF8);
  if (v9 >> 62)
  {
    goto LABEL_159;
  }

  v88 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_87:
  v89 = 0;
  v90 = v9 & 0xC000000000000001;
  v91 = v9 + 32;
  v149 = v88;
  while (1)
  {
    if (v89 == v88)
    {
      goto LABEL_130;
    }

    if (!v90)
    {
      if (v89 >= v87[2])
      {
        goto LABEL_158;
      }

      v92 = *(v91 + 8 * v89);

      v25 = __OFADD__(v89++, 1);
      if (!v25)
      {
        goto LABEL_92;
      }

LABEL_129:
      __break(1u);
LABEL_130:
      v87 = v147;
      if (sub_252C4B5D4() && [v147 attribute] == 6)
      {
        if (v9 >> 62)
        {
          v131 = sub_252E378C4();
          if (v131)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v131 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v131)
          {
LABEL_134:
            v132 = 0;
            v93 = (v9 & 0xC000000000000001);
            do
            {
              if (v93)
              {
                v133 = MEMORY[0x2530ADF00](v132, v9);
                v25 = __OFADD__(v132++, 1);
                if (v25)
                {
LABEL_147:
                  __break(1u);
                  goto LABEL_148;
                }
              }

              else
              {
                if (v132 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  v88 = sub_252E378C4();
                  goto LABEL_87;
                }

                v133 = *(v9 + 32 + 8 * v132);

                v25 = __OFADD__(v132++, 1);
                if (v25)
                {
                  goto LABEL_147;
                }
              }

              v134 = (*(*v133 + 272))();
              if (*(v134 + 16))
              {
                v135 = *(v134 + 40);
                v136 = v134;
                sub_252E37EC4();
                MEMORY[0x2530AE390](29);
                v137 = sub_252E37F14();
                v138 = v136;
                v87 = v147;
                v139 = -1 << *(v138 + 32);
                v140 = v137 & ~v139;
                if ((*(v138 + 56 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140))
                {
                  v141 = ~v139;
                  do
                  {
                    if (*(*(v138 + 48) + 8 * v140) == 29)
                    {

                      goto LABEL_176;
                    }

                    v140 = (v140 + 1) & v141;
                  }

                  while (((*(v138 + 56 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140) & 1) != 0);
                }
              }
            }

            while (v132 != v131);
          }
        }
      }

      if (v9 >> 62)
      {
        goto LABEL_175;
      }

      v143 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v143)
      {
LABEL_176:
        sub_252929F10(v9, 0);

        return 0;
      }

LABEL_163:
      v144 = 0;
      while (1)
      {
        if (v143 == v144)
        {
          goto LABEL_173;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v145 = MEMORY[0x2530ADF00](v144, v9);
          if (__OFADD__(v144, 1))
          {
LABEL_172:
            __break(1u);
LABEL_173:
            sub_252929F10(v9, 0);

            return 1;
          }
        }

        else
        {
          if (v144 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_175:
            v143 = sub_252E378C4();
            if (!v143)
            {
              goto LABEL_176;
            }

            goto LABEL_163;
          }

          v145 = *(v9 + 8 * v144 + 32);

          if (__OFADD__(v144, 1))
          {
            goto LABEL_172;
          }
        }

        v146 = (*(*v145 + 392))(v87);

        ++v144;
        if (v146)
        {
          goto LABEL_176;
        }
      }
    }

    v92 = MEMORY[0x2530ADF00](v89, v9);
    v25 = __OFADD__(v89++, 1);
    if (v25)
    {
      goto LABEL_129;
    }

LABEL_92:
    v93 = v9;
    v94 = (*v92 + 256);
    v95 = *v94;
    if ((*v94)() == 35)
    {
      goto LABEL_155;
    }

    v96 = (*v92 + 272);
    v97 = *v96;
    v98 = (*v96)();
    v99 = v98;
    if (*(v98 + 16))
    {
      v100 = *(v98 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](35);
      v101 = sub_252E37F14();
      v102 = -1 << *(v99 + 32);
      v103 = v101 & ~v102;
      if ((*(v99 + 56 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103))
      {
        v104 = ~v102;
        while (*(*(v99 + 48) + 8 * v103) != 35)
        {
          v103 = (v103 + 1) & v104;
          if (((*(v99 + 56 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
          {
            goto LABEL_98;
          }
        }

LABEL_148:
        sub_252929F10(v93, 0);

LABEL_149:

        goto LABEL_154;
      }
    }

LABEL_98:

    v106 = (v95)(v105);
    if (v106 == 38)
    {
      v108 = &unk_2864ACDB8;
      goto LABEL_102;
    }

    v107 = MEMORY[0x277D84FA0];
    if (v106 == 41)
    {
      v108 = &unk_2864ACDE0;
LABEL_102:
      v107 = sub_2529FC004(v108);
    }

    if (*(v107 + 16))
    {
      v109 = *(v107 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](35);
      v110 = sub_252E37F14();
      v111 = -1 << *(v107 + 32);
      v112 = v110 & ~v111;
      if ((*(v107 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112))
      {
        v113 = ~v111;
        while (*(*(v107 + 48) + 8 * v112) != 35)
        {
          v112 = (v112 + 1) & v113;
          if (((*(v107 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_148;
      }
    }

LABEL_108:

    if (sub_252D4FE78(35) || v95() == 45)
    {
LABEL_155:
      sub_252929F10(v9, 0);
      goto LABEL_149;
    }

    v114 = v97();
    v115 = v114;
    if (*(v114 + 16))
    {
      v116 = *(v114 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](45);
      v117 = sub_252E37F14();
      v118 = -1 << *(v115 + 32);
      v119 = v117 & ~v118;
      if ((*(v115 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119))
      {
        break;
      }
    }

LABEL_115:

    v122 = (v95)(v121);
    if (v122 == 38)
    {
      v124 = &unk_2864ACE08;
      goto LABEL_119;
    }

    v123 = MEMORY[0x277D84FA0];
    if (v122 == 41)
    {
      v124 = &unk_2864ACE30;
LABEL_119:
      v123 = sub_2529FC004(v124);
    }

    if (*(v123 + 16))
    {
      v125 = *(v123 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](45);
      v126 = sub_252E37F14();
      v127 = -1 << *(v123 + 32);
      v128 = v126 & ~v127;
      if ((*(v123 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128))
      {
        v129 = ~v127;
        while (*(*(v123 + 48) + 8 * v128) != 45)
        {
          v128 = (v128 + 1) & v129;
          if (((*(v123 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) == 0)
          {
            goto LABEL_125;
          }
        }

        v142 = v9;
        goto LABEL_153;
      }
    }

LABEL_125:

    v130 = sub_252D4FE78(45);

    v90 = v9 & 0xC000000000000001;
    v88 = v149;
    v91 = v9 + 32;
    if (v130)
    {
      goto LABEL_156;
    }
  }

  v120 = ~v118;
  while (*(*(v115 + 48) + 8 * v119) != 45)
  {
    v119 = (v119 + 1) & v120;
    if (((*(v115 + 56 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) == 0)
    {
      goto LABEL_115;
    }
  }

  v142 = v9;
LABEL_153:
  sub_252929F10(v142, 0);

LABEL_154:

  return 1;
}

uint64_t sub_252B28410@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDefaultSwingModeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

BOOL sub_252B28444(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 taskType];

    if (v4 != 1 || (sub_252CCFCB8() & 1) != 0)
    {
      return 0;
    }

    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 22;
    }
  }

  sub_252C515AC();
  return 0;
}

id sub_252B284F0(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v9 = sub_252D6CA80(v8);
    v10 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

    v11 = sub_252E36F04();
    v12 = [v10 initWithIdentifier:0 displayString:v11];

    v13 = v12;
    [v13 setBoolValue_];
    [v13 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v14 = sub_252D6CC80(v13);
    swift_beginAccess();
    v15 = v9[4];
    v9[4] = v14;
  }

  else
  {
    v9 = 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v6, v16, v2);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_252E379F4();
  v30 = v27;
  v31 = v28;
  MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E7D480);
  if (v9)
  {
    swift_beginAccess();
    v17 = v9[4];
  }

  else
  {
    v18 = 0;
  }

  v29 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v19 = sub_252E36F94();
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(v30, v31, 0xD000000000000093, 0x8000000252E7D4C0);

  (*(v3 + 8))(v6, v2);
  if (v9)
  {

    v20 = sub_252D6CB58();
  }

  else
  {
    v20 = 0;
  }

  v21 = [a1 filters];
  if (v21)
  {
    v22 = v21;
    type metadata accessor for HomeFilter();
    v23 = sub_252E37264();
  }

  else
  {
    v23 = 0;
  }

  type metadata accessor for ControlHomeIntent();
  v24 = sub_252D473EC(v20, v23);

  return v24;
}

uint64_t sub_252B288A4(id *a1)
{
  v1 = a1;
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_61;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x2530ADF00](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
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
      v3 = sub_252E378C4();
      if (!v3)
      {
        return 0;
      }

      goto LABEL_3;
    }

    v9 = [v7 outerDeviceType];

    ++v4;
    if (v9)
    {
      goto LABEL_17;
    }
  }

  type metadata accessor for HomeStore();
  v10 = static HomeStore.shared.getter();
  if (v2)
  {
    type metadata accessor for HomeFilter();

    v2 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for HomeFilter();
    v2 = v1;
  }

  v4 = HomeStore.services(matching:supporting:)(v2, 0);
  v8 = v11;

  if (v8)
  {
    sub_252929F10(v4, 1);
LABEL_17:
    if (v5)
    {
      goto LABEL_64;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v1 + 32);
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!(v4 >> 62))
    {
      v38 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
LABEL_67:
        sub_252929F10(v4, 0);
        return 0;
      }

      goto LABEL_32;
    }
  }

  result = sub_252E378C4();
  v38 = result;
  if (!result)
  {
    goto LABEL_67;
  }

LABEL_32:
  v36 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x2530ADF00](0, v4);
  }

  else
  {
    if (!*(v8 + 16))
    {
      __break(1u);
      return result;
    }

    v37 = *(v4 + 32);
  }

  v6 = 0;
  v20 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
  v21 = &off_279711000;
  while (1)
  {
    if (v38 == v6)
    {
      sub_252929F10(v4, 0);
      v35 = sub_252CD941C();

      return v35;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

    v2 = MEMORY[0x2530ADF00](v6, v4);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_60;
    }

LABEL_45:
    v23 = [*&v2[OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate] v21[202]];
    v24 = sub_252E36F34();
    v26 = v25;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v27 = off_27F546230;
    if (*(off_27F546230 + 2) && (v28 = sub_252A44A10(v24, v26), (v29 & 1) != 0))
    {
      v1 = *(v27[7] + 8 * v28);
    }

    else
    {
      v1 = 0;
    }

    v3 = v21;
    v30 = [*(v37 + v20) v21[202]];
    v5 = sub_252E36F34();
    v32 = v31;

    if (v27[2] && (v33 = sub_252A44A10(v5, v32), (v34 & 1) != 0))
    {
      v22 = *(v27[7] + 8 * v33);
    }

    else
    {
      v22 = 0;
    }

    v21 = v3;

    ++v6;
    if (v1 != v22)
    {
      sub_252929F10(v4, 0);

      return 0;
    }
  }

  if (v6 < *(v36 + 16))
  {
    v2 = *(v4 + 8 * v6 + 32);

    if (__OFADD__(v6, 1))
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_64:
  v13 = MEMORY[0x2530ADF00](0, v1);
LABEL_20:
  v14 = v13;
  for (i = 0; v3 != i; ++i)
  {
    if (v5)
    {
      v16 = MEMORY[0x2530ADF00](i, v1);
    }

    else
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_59;
      }

      v16 = *(v1 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      goto LABEL_58;
    }

    v2 = [v16 deviceType];
    v18 = [v14 deviceType];

    if (v2 != v18)
    {

      return 0;
    }
  }

  v19 = [v14 outerDeviceType];

  return v19;
}

uint64_t sub_252B28D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a1;
  v7[9] = a3;
  v8 = sub_252E36324();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();
  v11 = *(type metadata accessor for DisambiguationOption(0) - 8);
  v7[17] = v11;
  v12 = *(v11 + 64) + 15;
  v7[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_252B28ED0, 0, 0);
}

uint64_t sub_252B28ED0()
{
  v1 = [*(v0 + 64) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 type];

      if (v4 == 8)
      {
        v5 = sub_252B288A4(*(v0 + 72));
        if (qword_27F53F2A0 != -1)
        {
          v40 = v5;
          swift_once();
          v5 = v40;
        }

        v6 = off_27F541CD0;
        if (*(off_27F541CD0 + 2) && (v7 = sub_252A488EC(v5), (v8 & 1) != 0))
        {
          v9 = *(v0 + 176);
          v45 = *(v6[7] + v7);
          AccessoryTypeSemantic.rawValue.getter();
          sub_252E362F4();
          v10 = 0;
        }

        else
        {
          v10 = 1;
        }

        v11 = *(v0 + 176);
        v12 = *(v0 + 184);
        (*(*(v0 + 120) + 56))(v11, v10, 1, *(v0 + 112));
        swift_beginAccess();
        sub_252A909F4(v11, v12, &qword_27F540298, &unk_252E3C270);
      }
    }
  }

  v13 = *(v0 + 96);
  v44 = *(v0 + 88);

  sub_25297C39C(v14);
  v15 = *(v44 + 16);
  if (v15)
  {
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    v41 = *(v0 + 120);
    v18 = v44 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v42 = (v41 + 32);
    v43 = *(v16 + 72);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v21 = *(v0 + 144);
      v20 = *(v0 + 152);
      v22 = *(v0 + 112);
      sub_252B2A9C0(v18, v21);
      v23 = *(v17 + 16);
      v24 = *(v17 + 24);
      sub_252E37024();
      (*(v41 + 56))(v20, 0, 1, v22);
      sub_252B2AA24(v21, type metadata accessor for DisambiguationOption);
      if ((*(v41 + 48))(v20, 1, v22) == 1)
      {
        sub_252938BBC(*(v0 + 152));
      }

      else
      {
        v25 = *v42;
        (*v42)(*(v0 + 128), *(v0 + 152), *(v0 + 112));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2529F7F74(0, *(v19 + 2) + 1, 1, v19);
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          v19 = sub_2529F7F74(v26 > 1, v27 + 1, 1, v19);
        }

        v28 = *(v0 + 128);
        v29 = *(v0 + 112);
        *(v19 + 2) = v27 + 1;
        v25(&v19[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v27], v28, v29);
      }

      v18 += v43;
      --v15;
    }

    while (v15);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *(v0 + 192) = v19;
  v30 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);
  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  sub_252BEBD04(*(v0 + 104));
  sub_252E37024();

  (*(v33 + 56))(v31, 0, 1, v34);
  swift_beginAccess();
  sub_252956C1C(v30, v32);
  v35 = swift_task_alloc();
  *(v0 + 200) = v35;
  *v35 = v0;
  v35[1] = sub_252B29300;
  v37 = *(v0 + 160);
  v36 = *(v0 + 168);
  v38 = *(v0 + 80);

  return sub_252D27C94(v19, v36, v37);
}

uint64_t sub_252B29300(uint64_t a1)
{
  v4 = *(*v2 + 200);
  v5 = *(*v2 + 192);
  v6 = *v2;
  v6[26] = v1;

  if (v1)
  {
    v7 = v6[21];
    sub_252938BBC(v6[20]);
    sub_252938BBC(v7);

    return MEMORY[0x2822009F8](sub_252B294E0, 0, 0);
  }

  else
  {
    v9 = v6[21];
    v8 = v6[22];
    v10 = v6[19];
    v11 = v6[18];
    v12 = v6[16];
    sub_252938BBC(v6[20]);
    sub_252938BBC(v9);

    v13 = v6[1];

    return v13(a1);
  }
}

uint64_t sub_252B294E0()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[16];

  v7 = v0[1];
  v8 = v0[26];

  return v7();
}

uint64_t sub_252B29588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_252B29650, 0, 0);
}

uint64_t sub_252B29650()
{
  v1 = [*(v0 + 64) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 type];

      if (v4 == 8)
      {
        v5 = sub_252B288A4(*(v0 + 72));
        if (qword_27F53F2A0 != -1)
        {
          v23 = v5;
          swift_once();
          v5 = v23;
        }

        v6 = off_27F541CD0;
        if (*(off_27F541CD0 + 2) && (v7 = sub_252A488EC(v5), (v8 & 1) != 0))
        {
          v9 = *(v0 + 112);
          v24 = *(v6[7] + v7);
          AccessoryTypeSemantic.rawValue.getter();
          sub_252E362F4();
          v10 = 0;
        }

        else
        {
          v10 = 1;
        }

        v12 = *(v0 + 112);
        v11 = *(v0 + 120);
        v13 = sub_252E36324();
        (*(*(v13 - 8) + 56))(v12, v10, 1, v13);
        swift_beginAccess();
        sub_252A909F4(v12, v11, &qword_27F540298, &unk_252E3C270);
      }
    }
  }

  v14 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  sub_252BEBD04(*(v0 + 88));
  sub_252E37024();

  v17 = sub_252E36324();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  swift_beginAccess();
  sub_252956C1C(v14, v16);
  v18 = swift_task_alloc();
  *(v0 + 128) = v18;
  *v18 = v0;
  v18[1] = sub_252B298E0;
  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  v21 = *(v0 + 80);

  return sub_252D28210(v20, v19);
}

uint64_t sub_252B298E0(uint64_t a1)
{
  v4 = *(*v2 + 128);
  v5 = *v2;
  v5[17] = v1;

  if (v1)
  {
    v6 = v5[13];
    sub_252938BBC(v5[12]);
    sub_252938BBC(v6);

    return MEMORY[0x2822009F8](sub_252B29A6C, 0, 0);
  }

  else
  {
    v8 = v5[13];
    v7 = v5[14];
    sub_252938BBC(v5[12]);
    sub_252938BBC(v8);

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_252B29A6C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_252B29AE4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v5[8] = v9;
  *v9 = v5;
  v9[1] = sub_252B29C14;

  return v11();
}

uint64_t sub_252B29C14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v3 + 56);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252B29D64, 0, 0);
  }
}

uint64_t sub_252B29D64()
{
  v1 = [*(v0 + 72) dialog];
  sub_252B2A974();
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v22 = 0xE000000000000000;
    v23 = 0;
    goto LABEL_9;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = [v5 fullPrint];

  v7 = sub_252E36F34();
  v22 = v8;
  v23 = v7;

LABEL_9:
  v9 = *(v0 + 48);
  v10 = *(v9 + 16);
  v11 = type metadata accessor for DisambiguationOption(0);
  v12 = *(v11 - 8);
  if (v10)
  {
    sub_252B2A9C0(v9 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)), *(v0 + 56));
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(v0 + 72);
  v15 = *(v0 + 56);
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);
  v18 = *(v12 + 56);
  v18(v15, v13, 1, v11);
  v19 = type metadata accessor for DisambiguationSnippetModel(0);
  v20 = *(v19 + 24);
  v18(v16 + v20, 1, 1, v11);
  *(v0 + 16) = v23;
  *(v0 + 24) = v22;
  sub_252E330C4();

  *(v16 + *(v19 + 20)) = v17;

  sub_252A909F4(v15, v16 + v20, &qword_27F5434B8, &qword_252E4BE48);
  type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_252B29FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for HomeAutomationDisambiguateFiltersParameters(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_252E36324();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2A114, 0, 0);
}

uint64_t sub_252B2A114()
{
  v1 = *(v0 + 24);
  v26 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    v31 = v1 & 0xC000000000000001;
    v27 = *(v0 + 80);
    v28 = *(v0 + 24) + 32;
    v1 = v27 + 32;
    v4 = MEMORY[0x277D84F90];
    while (v31)
    {
      v5 = MEMORY[0x2530ADF00](v3, *(v0 + 24));
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      sub_252956C1C(v5 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label, v8);

      if ((*(v27 + 48))(v8, 1, v7) == 1)
      {
        sub_252938BBC(*(v0 + 64));
      }

      else
      {
        v9 = *v1;
        (*v1)(*(v0 + 88), *(v0 + 64), *(v0 + 72));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2529F7F74(0, *(v4 + 2) + 1, 1, v4);
        }

        v11 = *(v4 + 2);
        v10 = *(v4 + 3);
        if (v11 >= v10 >> 1)
        {
          v4 = sub_2529F7F74(v10 > 1, v11 + 1, 1, v4);
        }

        v12 = *(v0 + 88);
        v13 = *(v0 + 72);
        *(v4 + 2) = v11 + 1;
        v9(&v4[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v11], v12, v13);
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_23;
      }
    }

    if (v3 >= *(v29 + 16))
    {
      goto LABEL_18;
    }

    v5 = *(v28 + 8 * v3);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (*(v0 + 24) < 0)
    {
      v14 = *(v0 + 24);
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:
  v15 = *(v0 + 72);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  v19 = *(v0 + 32);
  v18 = *(v0 + 40);
  v20 = *(v0 + 24);
  v32 = *v26;
  v21 = *(*(v0 + 80) + 56);
  v21(v16, 1, 1, v15);
  v21(v16 + v17[5], 1, 1, v15);
  v21(v16 + v17[6], 1, 1, v15);
  *(v16 + v17[7]) = v4;
  *(v16 + v17[8]) = 0;
  *(v16 + v17[9]) = v20;

  sub_252B2A714(v16, v19, v18);
  v22 = sub_252C06A24();
  *(v0 + 96) = v22;
  v23 = *(MEMORY[0x277D55BE8] + 4);
  v30 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v24 = swift_task_alloc();
  *(v0 + 104) = v24;
  *v24 = v0;
  v24[1] = sub_252B2A484;

  return v30(0xD000000000000022, 0x8000000252E7D560, v22);
}

uint64_t sub_252B2A484(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 96);
  v7 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v8 = sub_252B2A674;
  }

  else
  {
    *(v4 + 120) = a1;
    v8 = sub_252B2A5D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252B2A5D0()
{
  v1 = v0[11];
  v2 = v0[8];
  sub_252B2AA24(v0[7], type metadata accessor for HomeAutomationDisambiguateFiltersParameters);

  v3 = v0[1];
  v4 = v0[15];

  return v3(v4);
}

uint64_t sub_252B2A674()
{
  v1 = v0[11];
  v2 = v0[8];
  sub_252B2AA24(v0[7], type metadata accessor for HomeAutomationDisambiguateFiltersParameters);

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_252B2A714(uint64_t a1, id *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-v11];
  sub_252E37024();
  v13 = sub_252E36324();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 0, 1, v13);
  sub_252A909F4(v12, a1, &qword_27F540298, &unk_252E3C270);
  v15 = sub_252BAFC18(a2);
  if (qword_27F53F2A0 != -1)
  {
    v22 = v15;
    swift_once();
    v15 = v22;
  }

  v16 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v17 = sub_252A488EC(v15), (v18 & 1) != 0))
  {
    v23[15] = *(v16[7] + v17);
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v14(v10, v19, 1, v13);
  v20 = type metadata accessor for HomeAutomationDisambiguateFiltersParameters(0);
  sub_252A909F4(v10, a1 + *(v20 + 20), &qword_27F540298, &unk_252E3C270);
  sub_252BEBD04(a3);
  sub_252E37024();

  v14(v12, 0, 1, v13);
  return sub_252A909F4(v12, a1 + *(v20 + 24), &qword_27F540298, &unk_252E3C270);
}

unint64_t sub_252B2A974()
{
  result = qword_27F542128;
  if (!qword_27F542128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F542128);
  }

  return result;
}

uint64_t sub_252B2A9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B2AA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252B2AAC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ToggleHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

BOOL sub_252B2AAFC(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 == 1)
  {
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 value];

      if (v7)
      {

        return 0;
      }
    }

    v8 = [a1 userTask];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 attribute];

      if (v10 == 12)
      {
        return 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v12 = [a1 userTask];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 attribute];

      return v14 == 27;
    }

LABEL_12:
    sub_252C515AC();
  }

  return 0;
}

id sub_252B2AC2C(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    sub_252D6CA80(v2)[2] = 6;

    v2 = sub_252D6CB58();
  }

  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 time];
  v7 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v7 setUserTask_];
  if (v5)
  {
    type metadata accessor for HomeFilter();
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  [v7 setFilters_];

  [v7 setTime_];

  return v7;
}

BOOL sub_252B2ADC8(id a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_14:
  v4 = sub_252E378C4();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = [v7 entityType];

    ++v5;
  }

  while (v9 != a1);
  return v6;
}

uint64_t sub_252B2AEC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2AFB8, 0, 0);
}

uint64_t sub_252B2AFB8()
{
  v1 = v0[3];
  sub_252C4BEAC();
  if (v2)
  {
    v3 = v0[10];
    sub_252E37024();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[10];
  v6 = v0[3];
  v7 = sub_252E36324();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, v4, 1, v7);
  sub_252C51E70();
  v9 = v0[3];
  if (!v10)
  {
    sub_252C51FFC();
    v12 = v0[3];
    if (v13)
    {

      sub_252C51FFC();
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = v0[3];

      sub_252C4BEAC();
      if (!v17)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v18 = v0[9];
    sub_252E37024();

    v19 = 0;
    goto LABEL_14;
  }

  sub_252C51E70();
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  v19 = 1;
LABEL_14:
  v20 = v0[3];
  v21 = 1;
  v8(v0[9], v19, 1, v7);
  if ((sub_252C4B680(0x24) & 1) == 0)
  {
    v22 = v0[3];
    v21 = sub_252C4B680(0x29);
  }

  v39 = v21;
  v23 = v0[9];
  v24 = v0[10];
  v25 = v0[7];
  v26 = v0[8];
  v28 = v0[5];
  v27 = v0[6];
  v29 = v0[4];
  v40 = v0[2];
  v30 = v29[12];
  v41 = v29[13];
  v42 = v23;
  __swift_project_boxed_opaque_existential_1(v29 + 9, v30);
  sub_252956C1C(v23, v26);
  v31 = v25;
  sub_252956C1C(v24, v25);
  v32 = *(v28 + 80);
  v33 = (v32 + 24) & ~v32;
  v34 = (v27 + v32 + v33) & ~v32;
  v35 = v34 + v27;
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  sub_2529439A0(v26, v36 + v33);
  sub_2529439A0(v31, v36 + v34);
  *(v36 + v35) = v39 & 1;

  sub_252943BD0(sub_252B2DBF0, v36, 1, v30, v41);

  sub_25293847C(v42, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);

  v37 = v0[1];

  return v37();
}

uint64_t sub_252B2B2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  v16 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252E3C280;
  *(v17 + 32) = 0xD00000000000001ELL;
  *(v17 + 40) = 0x8000000252E6DE40;
  sub_252956C1C(a2, v15);
  v18 = sub_252E36324();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v15, 1, v18) == 1)
  {

    sub_25293847C(v15, &qword_27F540298, &unk_252E3C270);
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
  }

  else
  {
    *(v17 + 72) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 48));
    (*(v19 + 32))(boxed_opaque_existential_0, v15, v18);
  }

  *(v17 + 80) = 0x656D614E656D6F68;
  *(v17 + 88) = 0xE800000000000000;
  sub_252956C1C(a3, v13);
  if (v20(v13, 1, v18) == 1)
  {
    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
  }

  else
  {
    *(v17 + 120) = v18;
    v22 = __swift_allocate_boxed_opaque_existential_0((v17 + 96));
    (*(v19 + 32))(v22, v13, v18);
  }

  *(v17 + 128) = 0x7571655256547369;
  *(v17 + 136) = 0xEB00000000747365;
  *(v17 + 168) = MEMORY[0x277D839B0];
  *(v17 + 144) = a4 & 1;
  sub_252E362B4();
}

uint64_t sub_252B2B588(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_252E34014();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2B654, 0, 0);
}

uint64_t sub_252B2B654()
{
  v1 = v0[8];
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 288), (v0 + 2));

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 120))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v6);
  if (v5)
  {
    v7 = v0[12];
    sub_252B03B94();
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_252B2B87C;
    v9 = v0[12];
    v10 = v0[7];
    v11 = v0[8];

    return sub_252A199A8(v10, &unk_252E4BF78, v11, &unk_252E4BF80, 0, v9, 0, 0);
  }

  else
  {
    v13 = v0[11];
    sub_252AD7CC4();
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_252B2BA30;
    v15 = v0[11];
    v16 = v0[7];
    v17 = v0[8];

    return sub_252BDB88C(v16, &unk_252E4BF68, v17, v15, 0, 0, 0, v6);
  }
}

uint64_t sub_252B2B87C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *v1;
  v6[14] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252B2BBE4, 0, 0);
  }

  else
  {
    v8 = v6[11];
    v7 = v6[12];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_252B2BA30()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *v1;
  v6[16] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252B2BC50, 0, 0);
  }

  else
  {
    v8 = v6[11];
    v7 = v6[12];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_252B2BBE4()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252B2BC50()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252B2BCBC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2BD64, 0, 0);
}

uint64_t sub_252B2BD64()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[5] = *(v0[2] + 64);
  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v4(v2, 1, 1, v3);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_252B2BE88;
  v6 = v0[3];
  v7 = v0[4];

  return sub_252D28554(v7, v6, 0);
}

uint64_t sub_252B2BE88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  v8 = *(v4 + 32);
  sub_25293847C(*(v4 + 24), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252B2C064, 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(a1);
  }
}

uint64_t sub_252B2C064()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_252B2C0D0(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  v1[4] = found;
  v4 = *(*(found - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2C19C, 0, 0);
}

uint64_t sub_252B2C19C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  v6(v1 + v2[9], 1, 1, v5);
  *(v1 + v2[5]) = 0;
  v7 = v1 + v2[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v1 + v2[8]) = 0;
  *v7 = 0x4014000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252956C98(v3, v1);
  v8 = sub_252C07368();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252B2C3A0;

  return v12(0xD000000000000026, 0x8000000252E6DE60, v8);
}

uint64_t sub_252B2C3A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252B2C56C;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252B2C4EC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252B2C4EC()
{
  v1 = v0[3];
  sub_252B2DA74(v0[5]);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252B2C56C()
{
  v1 = v0[3];
  sub_252B2DA74(v0[5]);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252B2C5E8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_252E34014();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2C6B8, 0, 0);
}

uint64_t sub_252B2C6B8()
{
  *(v0 + 152) = 5;
  v1 = (v0 + 152);
  v2 = [*(v0 + 64) filters];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    LOBYTE(v3) = sub_252B2ADC8(6, v4);

    if (v3)
    {
      *v1 = 6;
    }
  }

  v5 = *(v0 + 72);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 288), v0 + 16);

  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  LOBYTE(v8) = (*(v8 + 120))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = *(v5 + 96);
  __swift_project_boxed_opaque_existential_1((v5 + 72), v9);
  if (v8)
  {
    v10 = *(v0 + 104);
    sub_252B03B94();
    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v11[1] = sub_252B2C980;
    v12 = *(v0 + 104);
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);

    return sub_252A199A8(v14, &unk_252E4BF48, v13, &unk_252E4BF50, 0, v12, 0, 0);
  }

  else
  {
    v16 = *(v0 + 96);
    v17 = *(v0 + 72);
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v1;
    sub_252AD7CC4();
    v19 = swift_task_alloc();
    *(v0 + 136) = v19;
    *v19 = v0;
    v19[1] = sub_252B2CB5C;
    v20 = *(v0 + 96);
    v21 = *(v0 + 56);

    return sub_252BDB88C(v21, &unk_252E4BF38, v18, v20, 0, 0, 0, v9);
  }
}

uint64_t sub_252B2C980()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252B2CCDC;
  }

  else
  {
    v6 = sub_252B2CAF0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252B2CAF0()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252B2CB5C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252B2CD48;
  }

  else
  {
    v8 = *(v2 + 128);

    v7 = sub_252B2DCA0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252B2CCDC()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252B2CD48()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252B2CDBC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2CE64, 0, 0);
}

uint64_t sub_252B2CE64()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[5] = *(v0[2] + 64);
  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v4(v2, 1, 1, v3);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_252B2CF88;
  v6 = v0[3];
  v7 = v0[4];

  return sub_252D28554(v7, v6, 0);
}

uint64_t sub_252B2CF88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  v8 = *(v4 + 32);
  sub_25293847C(*(v4 + 24), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252B2DCA8, 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(a1);
  }
}

uint64_t sub_252B2D184(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  v2[5] = found;
  v5 = *(*(found - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2D250, 0, 0);
}

uint64_t sub_252B2D250()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  v6(v1 + v2[9], 1, 1, v5);
  *(v1 + v2[5]) = 0;
  v7 = v1 + v2[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v1 + v2[8]) = 0;
  v8 = v0[6];
  v9 = v0[4];
  *v7 = qword_252E4BF90[*v3];
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v9, 0, 1, v5);
  sub_252956C98(v9, v8);
  v10 = sub_252C07368();
  v0[7] = v10;
  v11 = *(MEMORY[0x277D55BE8] + 4);
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_252B2D46C;

  return v14(0xD000000000000026, 0x8000000252E6DE60, v10);
}

uint64_t sub_252B2D46C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252B2D638;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252B2D5B8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252B2D5B8()
{
  v1 = v0[4];
  sub_252B2DA74(v0[6]);

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_252B2D638()
{
  v1 = v0[4];
  sub_252B2DA74(v0[6]);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

BOOL sub_252B2D6D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v2) == 102;
}

uint64_t sub_252B2D73C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B2AEC0(a1, a2);
}

BOOL sub_252B2D7E8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v3) == 100;
}

uint64_t sub_252B2D83C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252B2C5E8(a1, a2);
}

void *sub_252B2D8E8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for FoundNoMatchingEntitiesResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B2D94C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B2D184(v2, v3);
}

uint64_t sub_252B2D9E4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252B2CDBC(v0);
}

uint64_t sub_252B2DA74(uint64_t a1)
{
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  (*(*(found - 8) + 8))(a1, found);
  return a1;
}

uint64_t sub_252B2DAD0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252B2C0D0(v0);
}

uint64_t sub_252B2DB60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252B2BCBC(v0);
}

uint64_t sub_252B2DBF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = v1 + ((v6 + v4 + v5) & ~v4);
  v8 = *(v7 + v6);
  v9 = *(v1 + 16);

  return sub_252B2B2B0(v9, v1 + v5, v7, v8, a1);
}

uint64_t DateAttributeSemantic.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_252E37B74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_252B2DD30()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252B2DD9C()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252B2DDEC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252B2DF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252B2E10C();
  v5 = sub_252B2E160();
  v6 = sub_252B2E1B4();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252B2DF90()
{
  result = qword_27F5434C0;
  if (!qword_27F5434C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5434C0);
  }

  return result;
}

unint64_t sub_252B2DFE8()
{
  result = qword_27F5434C8;
  if (!qword_27F5434C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5434C8);
  }

  return result;
}

unint64_t sub_252B2E040()
{
  result = qword_27F5434D0;
  if (!qword_27F5434D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5434D8, &qword_252E4C0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5434D0);
  }

  return result;
}

unint64_t sub_252B2E0A8()
{
  result = qword_27F5434E0;
  if (!qword_27F5434E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5434E0);
  }

  return result;
}

unint64_t sub_252B2E10C()
{
  result = qword_27F5434E8;
  if (!qword_27F5434E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5434E8);
  }

  return result;
}

unint64_t sub_252B2E160()
{
  result = qword_27F5434F0;
  if (!qword_27F5434F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5434F0);
  }

  return result;
}

unint64_t sub_252B2E1B4()
{
  result = qword_27F5434F8;
  if (!qword_27F5434F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5434F8);
  }

  return result;
}

uint64_t sub_252B2E20C(uint64_t a1)
{
  v34 = sub_252E32E84();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v33 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    sub_25292A2F8();
    sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8);
    result = sub_252E373E4();
    a1 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
    v9 = v41;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v30[1] = v7;
  v32 = (v2 + 8);
  v13 = MEMORY[0x277D84F90];
  v31 = v6;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_27:
      sub_25291AE30();
      return v13;
    }

    while (1)
    {
      v20 = a1;
      type metadata accessor for Action();
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      v22 = v18;
      v23 = [v22 uniqueIdentifier];
      v24 = v33;
      sub_252E32E64();

      v25 = sub_252E32E24();
      v27 = v26;
      (*v32)(v24, v34);
      *(v21 + 24) = v25;
      *(v21 + 32) = v27;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v28 = 1;
        a1 = v20;
      }

      else
      {
        objc_opt_self();
        a1 = v20;
        if (swift_dynamicCastObjCClass())
        {
          v28 = 2;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v28 = 3;
          }

          else
          {
            objc_opt_self();
            v28 = 4 * (swift_dynamicCastObjCClass() != 0);
          }
        }
      }

      *(v21 + 40) = v28;
      MEMORY[0x2530AD700]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v13 = v42;
      v8 = v16;
      v9 = v17;
      v6 = v31;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_252E37904();
      if (v19)
      {
        v35 = v19;
        sub_25292A2F8();
        swift_dynamicCast();
        v18 = v36;
        v16 = v8;
        v17 = v9;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252B2E608()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8);
  v2 = sub_252E373A4();

  v3 = sub_252B2E20C(v2);

  return v3;
}

void *sub_252B2E6CC(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_252B2E718(a1);
}

void *sub_252B2E718(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v53 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v53);
    type metadata accessor for Scene();
    v19 = *(*v49 + 48);
    v20 = *(*v49 + 52);
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v8;
  LOBYTE(v50[0]) = 0;
  sub_252B307F8(&qword_27F540498, MEMORY[0x277CC95F0]);
  sub_252E37C64();
  LOBYTE(v51) = 1;
  sub_252950A60();
  sub_252E37C64();
  v16 = v50[0];
  LOBYTE(v50[0]) = 2;
  v45 = sub_252E37C04();
  v46 = v16;
  v47 = v17;
  LOBYTE(v50[0]) = 3;
  v18 = sub_252E37BA4();
  v23 = v22;
  v42 = v11;
  v44 = v3;
  v24 = v18;
  type metadata accessor for HomeStore();
  v25 = static HomeStore.shared.getter();
  v26 = sub_2529DA828();

  MEMORY[0x28223BE20](v27);
  v43 = v6;
  v28 = v45;
  v29 = v46;
  *(&v41 - 6) = v6;
  *(&v41 - 5) = v28;
  *(&v41 - 4) = v47;
  *(&v41 - 3) = v24;
  *(&v41 - 2) = v23;
  *(&v41 - 1) = v29;
  v30 = v23;
  v31 = sub_2529A3DE8(sub_252B307D0, (&v41 - 8), v26);
  v41 = 0;

  if (!v31)
  {
    v41 = v24;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v35 = sub_252E36AD4();
    v36 = __swift_project_value_buffer(v35, qword_27F544CB8);
    sub_252CC4050(0xD000000000000022, 0x8000000252E7D640, 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);
    strcpy(v50, "identifier: ");
    BYTE5(v50[1]) = 0;
    HIWORD(v50[1]) = -5120;
    sub_252B307F8(&qword_27F5404A8, MEMORY[0x277CC95F0]);
    v37 = sub_252E37D94();
    MEMORY[0x2530AD570](v37);

    sub_252CC4050(v50[0], v50[1], 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    v50[0] = 0x203A656D616ELL;
    v50[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v45, v47);

    sub_252CC4050(v50[0], v50[1], 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 48);

    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_252E379F4();

    v50[0] = 0xD000000000000015;
    v50[1] = 0x8000000252E6AA20;
    v51 = v41;
    v52 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    sub_252CC4050(v50[0], v50[1], 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 49);

    strcpy(v50, "entityType: ");
    BYTE5(v50[1]) = 0;
    HIWORD(v50[1]) = -5120;
    v51 = v46;
    v39 = sub_252E36F94();
    MEMORY[0x2530AD570](v39);

    v14 = v36;
    sub_252CC4050(v50[0], v50[1], 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 50);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v15 + 8))(v42, v7);
    (*(v48 + 8))(v43, v44);
    goto LABEL_3;
  }

  v32 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);

  v14 = v49;
  *(v49 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) = v32;
  sub_252929E74(v53, v50);
  v33 = v41;
  v34 = Entity.init(from:)(v50);
  if (v33)
  {
    (*(v15 + 8))(v42, v7);

    (*(v48 + 8))(v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    v14 = v34;
    (*(v15 + 8))(v42, v7);

    v40 = *(v48 + 8);

    v40(v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return v14;
}

BOOL sub_252B2EF9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 5;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 5;
      }
    }
  }

  return 0;
}

uint64_t sub_252B2F098()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actionSetType];
  v2 = sub_252E36F34();
  v4 = v3;

  if (qword_27F53F8B0 != -1)
  {
    swift_once();
  }

  v5 = off_27F546228;
  if (*(off_27F546228 + 2) && (v6 = sub_252A44A10(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_252B2F15C(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for Home();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = v4;
    v9 = sub_2529E65BC(v8);
    type metadata accessor for HomeStore();
    v10 = static HomeStore.shared.getter();
    v11 = sub_2529F3704(a1);

    v16 = v9;
    MEMORY[0x28223BE20](v12);
    v15[2] = &v16;
    v13 = sub_252A00B58(sub_2529E963C, v15, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

char *sub_252B2F280()
{
  v0 = sub_252B2F470();
  v1 = v0;
  v18 = MEMORY[0x277D84F90];
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_21:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_20:
  v3 = sub_252E378C4();
  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v1 + 8 * v6 + 32);

        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v8 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
      if (v8)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v9 = v8;
    v10 = type metadata accessor for Accessory();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_252D4CE7C(v9);

    MEMORY[0x2530AD700](v13);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v5 = v18;
  }

  while (v4 != v3);
LABEL_22:

  v15 = sub_252C759D4(v5);

  v16 = sub_2529A3758(v15);

  return v16;
}

uint64_t sub_252B2F470()
{
  v1 = sub_252E32E84();
  v2 = *(v1 - 1);
  v3 = v2[8];
  MEMORY[0x28223BE20]();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8);
  v7 = sub_252E373A4();

  v8 = sub_252B2E20C(v7);

  v43 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
LABEL_25:
    v9 = sub_252E378C4();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_26:
    v42 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_3:
  v10 = 0;
  v41 = v5;
  v42 = MEMORY[0x277D84F90];
  v39 = (v2 + 4);
  v40 = v1;
  do
  {
    v5 = v10;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v5, v8);
        v10 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(v8 + 8 * v5 + 32);

        v10 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      if (*(v11 + 40) == 1)
      {
        v1 = *(v11 + 16);
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          break;
        }
      }

LABEL_5:

      ++v5;
      if (v10 == v9)
      {
        goto LABEL_27;
      }
    }

    v13 = v12;
    v1 = v1;
    v2 = [v13 characteristic];
    v14 = [v2 service];

    if (!v14)
    {

      goto LABEL_5;
    }

    v15 = type metadata accessor for Service();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v42 = swift_allocObject();
    *(v42 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v14;
    v18 = v14;
    v19 = [v18 uniqueIdentifier];
    sub_252E32E64();

    v20 = [v18 name];
    v21 = sub_252E36F34();
    v37 = v22;
    v38 = v21;

    v23 = [v18 assistantIdentifier];
    if (v23)
    {
      v24 = v23;
      v36 = sub_252E36F34();
      v26 = v25;

      v27 = v26;
      v28 = v36;
    }

    else
    {

      v28 = 0;
      v27 = 0;
    }

    v2 = v42;
    v29 = (*v39)(v42 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v41, v40);
    v30 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v31 = v37;
    *v30 = v38;
    v30[1] = v31;
    *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
    v32 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v32 = v28;
    v32[1] = v27;
    MEMORY[0x2530AD700](v29);
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
      v2 = v42;
    }

    sub_252E372D4();
    v42 = v43;
  }

  while (v10 != v9);
LABEL_27:

  return v42;
}

char *sub_252B2F8B4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8);
  v2 = sub_252E373A4();

  v3 = sub_252B2E20C(v2);

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_23:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v3);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v3 + 8 * v7 + 32);

        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v9 = *(v8 + 16);
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_24;
      }
    }

    v11 = v10;
    v12 = v9;
    v13 = [v11 state];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2529F834C(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_2529F834C((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    *&v6[8 * v15 + 32] = v13;
  }

  while (v5 != v4);
LABEL_24:

  return v6;
}

uint64_t sub_252B2FB08()
{
  v0 = sub_252B2F470();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_29:

    return 0;
  }

LABEL_28:
  v2 = sub_252E378C4();
  if (!v2)
  {
    goto LABEL_29;
  }

LABEL_3:
  v3 = 0;
  v21 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v21)
    {
      v4 = MEMORY[0x2530ADF00](v3, v1);
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v4 = *(v1 + 32 + 8 * v3);

      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v6 = qword_27F575A48;
    v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v8 = sub_252E36F34();
    v10 = v9;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v11 = off_27F546230;
    if (*(off_27F546230 + 2) && (v12 = sub_252A44A10(v8, v10), (v13 & 1) != 0))
    {
      v14 = *(v11[7] + 8 * v12);
    }

    else
    {
      v14 = 0;
    }

    if (*(v6 + 16))
    {
      v15 = *(v6 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v14);
      v16 = sub_252E37F14();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      if ((*(v6 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_4:

    if (v3 == v2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v17;
  while (*(*(v6 + 48) + 8 * v18) != v14)
  {
    v18 = (v18 + 1) & v19;
    if (((*(v6 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

uint64_t sub_252B2FD74()
{
  v43 = sub_252E32E84();
  v1 = *(v43 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8);
  v5 = sub_252E373A4();

  v6 = sub_252B2E20C(v5);

  if (v6 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v8 = 0;
    LOBYTE(v9) = 0;
    v10 = v6 & 0xC000000000000001;
    v37 = v6 & 0xFFFFFFFFFFFFFF8;
    v38 = v6 & 0xC000000000000001;
    v40 = (v1 + 32);
    v41 = (v1 + 8);
    v39 = i;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x2530ADF00](v8, v6);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        goto LABEL_12;
      }

      if (v8 >= *(v37 + 16))
      {
        goto LABEL_32;
      }

      v11 = *(v6 + 8 * v8 + 32);

      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

LABEL_12:
      if (sub_252B3DE94())
      {
        if (*(v11 + 40) != 1)
        {
          goto LABEL_28;
        }

        v13 = *(v11 + 16);
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (!v9)
        {

LABEL_26:

          return v9 & 1;
        }

        v14 = v13;
        v15 = [v9 characteristic];
        v16 = [v15 service];

        if (!v16)
        {

LABEL_28:

          goto LABEL_29;
        }

        v17 = type metadata accessor for Service();
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        v20 = swift_allocObject();
        v21 = v16;
        v22 = [v21 uniqueIdentifier];
        sub_252E32E64();

        v23 = [v21 assistantIdentifier];
        if (v23)
        {
          v24 = v23;
          sub_252E36F34();
        }

        (*v40)(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v42, v43);
        v25 = [v21 serviceType];
        v26 = sub_252E36F34();
        v1 = v27;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v28 = off_27F546230;
        if (!*(off_27F546230 + 2) || (v29 = sub_252A44A10(v26, v1), (v30 & 1) == 0))
        {

          swift_setDeallocating();
          (*v41)(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v43);

          v34 = *(*v20 + 48);
          v35 = *(*v20 + 52);
          swift_deallocClassInstance();
          goto LABEL_29;
        }

        v31 = *(v28[7] + 8 * v29);

        swift_setDeallocating();
        (*v41)(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v43);

        v32 = *(*v20 + 48);
        v33 = *(*v20 + 52);
        swift_deallocClassInstance();
        if (v31 != 4)
        {
          goto LABEL_29;
        }

        LOBYTE(v9) = 1;
        v10 = v38;
        i = v39;
      }

      else
      {
      }

      ++v8;
      if (v12 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_29:

  LOBYTE(v9) = 0;
  return v9 & 1;
}

id sub_252B30298()
{
  result = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for Home();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return sub_2529E65BC(v2);
  }

  return result;
}

uint64_t sub_252B302FC()
{
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v1.n128_f64[0] = HomeEntity.Builder.init()();
  v3 = (*(*v2 + 376))(*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v1);

  v4 = (*(*v3 + 384))(5);

  v5 = sub_252E32E24();
  v6 = (*(*v4 + 392))(v5);

  v7 = sub_252B2F098();
  v8 = (*(*v6 + 408))(v7);

  v9 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
  if (v9)
  {
    v10 = v9;
    v11 = type metadata accessor for Home();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_2529E65BC(v10);
    v15 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v16 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v17 = (*(*v8 + 424))(v15, v16);

    v8 = v17;
  }

  v18 = (*(*v8 + 448))();

  return v18;
}

uint64_t Scene.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  return v0;
}

uint64_t Scene.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Scene()
{
  result = qword_2814B0570;
  if (!qword_2814B0570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252B307F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252B30840(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3[84] = v2;
  v3[83] = a2;
  v3[82] = a1;
  v4 = sub_252E34014();
  v3[85] = v4;
  v5 = *(v4 - 8);
  v3[86] = v5;
  v6 = *(v5 + 64) + 15;
  v3[87] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v8 = sub_252E32E84();
  v3[91] = v8;
  v9 = *(v8 - 8);
  v3[92] = v9;
  v10 = *(v9 + 64) + 15;
  v3[93] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_252B309E0, 0, 0);
}

uint64_t sub_252B309E0()
{
  v164 = v0;
  v163[63] = *MEMORY[0x277D85DE8];
  v0[80] = 0;
  type metadata accessor for HomeStore();
  v1 = static HomeStore.shared.getter();
  v2 = v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v2 != 2 && (v2 & 1) == 0)
  {
    v33 = 12;
    goto LABEL_39;
  }

  v3 = [v0[83] filters];
  if (!v3)
  {
    v33 = 1;
LABEL_39:
    sub_2529318DC();
    swift_allocError();
    *v34 = v33;

    goto LABEL_40;
  }

  v4 = v3;
  v5 = v0[83];
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [v5 userTask];
  v8 = HomeStore.accessories(matching:supporting:)(v6, v7);
  LOBYTE(v5) = v9;

  if (v5)
  {
LABEL_40:
    swift_willThrow();
    v35 = v0[93];
    v36 = v0[90];
    v37 = v0[89];
    v38 = v0[88];
    v39 = v0[87];
    v40 = v0[80];

    v41 = v0[1];
    v42 = *MEMORY[0x277D85DE8];

    return v41();
  }

  v163[0] = MEMORY[0x277D84F90];
  v157 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_89;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v11 = MEMORY[0x277D84F90];
    v161 = v0;
    v152 = v8;
    v158 = i;
    if (!i)
    {
      break;
    }

    v12 = 0;
    v162 = v8 & 0xC000000000000001;
    v160 = v8 + 32;
    v13 = v157;
    while (1)
    {
      if (v162)
      {
        v14 = MEMORY[0x2530ADF00](v12, v152);
        v15 = __OFADD__(v12++, 1);
        if (v15)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v12 >= *(v13 + 16))
        {
          goto LABEL_87;
        }

        v14 = *(v160 + 8 * v12);

        v15 = __OFADD__(v12++, 1);
        if (v15)
        {
          goto LABEL_86;
        }
      }

      v16 = (*(*v14 + 272))();
      v17 = v16;
      v18 = *(v16 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      if ((v18 & 0x3Fu) <= 0xD)
      {
        break;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

        v13 = v157;
        break;
      }

      v8 = swift_slowAlloc();

      v32 = sub_252C54758(v8, v19, v17, sub_252AFABD8);
      v159 = 0;
      v31 = v32;
      swift_bridgeObjectRelease_n();
      MEMORY[0x2530AED00](v8, -1, -1);
      v13 = v157;
LABEL_29:

      sub_25297AEDC(v31);
      i = v158;
      if (v12 == v158)
      {
        v11 = v163[0];
        v0 = v161;
        goto LABEL_43;
      }
    }

    v0 = &v146;
    MEMORY[0x28223BE20](v16);
    v8 = &v146 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v20);
    v21 = 0;
    v22 = 0;
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 56);
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v28 = v27 | (v22 << 6);
LABEL_24:
      if (*(*(v17 + 48) + 8 * v28))
      {
        *(v8 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v15 = __OFADD__(v21++, 1);
        if (v15)
        {
          goto LABEL_88;
        }
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
        v31 = sub_252C53500(v8, v19, v21, v17);
        goto LABEL_29;
      }

      v30 = *(v17 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v25 = (v30 - 1) & v30;
        v28 = __clz(__rbit64(v30)) | (v22 << 6);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    ;
  }

LABEL_43:
  v44 = sub_252C759A0(v11);

  if (*(v44 + 16) == 1)
  {
    v45 = sub_252DB4F48(v44);
    v47 = v46;

    v48 = (v47 & 1) == 0;
    i = v158;
    if (v48)
    {
      v49 = v45;
    }

    else
    {
      v49 = 0;
    }

    v149 = v49;
  }

  else
  {

    v149 = 0;
  }

  v50 = v152;
  v51 = v157;
  v52 = MEMORY[0x277D84F90];
  v0[81] = MEMORY[0x277D84F90];
  if (i)
  {
    v53 = 0;
    v54 = v0[92];
    v150 = v0 + 81;
    v151 = v50 & 0xC000000000000001;
    v147 = (v54 + 8);
    v148 = (v54 + 32);
    do
    {
      if (v151)
      {
        v55 = MEMORY[0x2530ADF00](v53, v50);
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v53 >= *(v51 + 16))
        {
          goto LABEL_85;
        }

        v55 = *(v50 + 8 * v53 + 32);

        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_84;
        }
      }

      v159 = v56;
      v57 = [*(v55 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
      v160 = v53;
      v162 = v55;
      if (v57)
      {
        v58 = v57;
        v59 = v0[93];
        v60 = type metadata accessor for Room();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        v63 = swift_allocObject();
        v64 = v58;
        v65 = [v64 uniqueIdentifier];
        sub_252E32E64();

        v66 = [v64 name];
        v67 = sub_252E36F34();
        v154 = v68;
        v155 = v67;

        v69 = [v64 assistantIdentifier];
        if (v69)
        {
          v70 = v69;
          sub_252E36F34();
        }

        else
        {
        }

        v92 = v161[91];
        v93 = v161[90];
        (*v148)(v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v161[93], v92);
        swift_setDeallocating();
        (*v147)(v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v92);

        v94 = *(*v63 + 48);
        v95 = *(*v63 + 52);
        swift_deallocClassInstance();
        v96 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
        v97 = *(v96 + 48);
        v98 = *(v96 + 52);
        v99 = swift_allocObject();
        v100 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
        v101 = sub_252E36324();
        v102 = *(*(v101 - 8) + 56);
        v102(v99 + v100, 1, 1, v101);
        v102(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v101);
        v153 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room;
        *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
        v103 = MEMORY[0x277D84F90];
        *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
        *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
        v156 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
        v102(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v101);
        *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v103;
        *(v99 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v103;
        v104 = *(v162 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v105 = *(v162 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        sub_252E362F4();
        v102(v93, 0, 1, v101);
        swift_beginAccess();
        sub_252956C98(v93, v99 + v100);
        swift_endAccess();
        v106 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
        v107 = *(v106 + 48);
        v108 = *(v106 + 52);
        v109 = swift_allocObject();
        v110 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
        v102(v109 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v101);
        sub_252E362F4();
        v102(v93, 0, 1, v101);
        swift_beginAccess();
        sub_252956BAC(v93, v109 + v110);
        swift_endAccess();
        v8 = &unk_252E3C270;
        sub_25293847C(v93, &qword_27F540298, &unk_252E3C270);
        v111 = type metadata accessor for HomeAutomationHomeLocation(0);
        v112 = *(v111 + 48);
        v113 = *(v111 + 52);
        v114 = swift_allocObject();
        *(v114 + 16) = 0;
        sub_252956C1C(v109 + v110, v114 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
        swift_setDeallocating();
        sub_25293847C(v109 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
        v115 = *(*v109 + 48);
        v116 = *(*v109 + 52);
        swift_deallocClassInstance();
        *(v99 + v153) = v114;
        if (qword_27F53F2A0 != -1)
        {
          swift_once();
        }

        v117 = off_27F541CD0;
        v51 = v157;
        if (*(off_27F541CD0 + 2) && (v118 = sub_252A488EC(v149), (v119 & 1) != 0))
        {
          v120 = v161[89];
          LOBYTE(v163[0]) = *(v117[7] + v118);
          AccessoryTypeSemantic.rawValue.getter();
          v51 = v157;
          sub_252E362F4();
          v121 = 0;
        }

        else
        {
          v121 = 1;
        }

        v0 = v161;
        v122 = v161[89];
        v102(v122, v121, 1, v101);
        v123 = v156;
        swift_beginAccess();
        sub_252956C98(v122, v99 + v123);
        swift_endAccess();
        v124 = type metadata accessor for HomeAutomationEntityResponse(0);
        v125 = *(v124 + 48);
        v126 = *(v124 + 52);
        swift_allocObject();
        sub_2529605C0(v99);
        swift_setDeallocating();
        v75 = sub_25295E9E4();
      }

      else
      {
        v71 = v0[90];
        v72 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
        v73 = *(v72 + 48);
        v74 = *(v72 + 52);
        v75 = swift_allocObject();
        v76 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
        v77 = sub_252E36324();
        v8 = *(*(v77 - 8) + 56);
        (v8)(v75 + v76, 1, 1, v77);
        (v8)(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v77);
        *(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
        v78 = MEMORY[0x277D84F90];
        *(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
        *(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
        v156 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
        (v8)(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v77);
        *(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v78;
        *(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v78;
        v79 = v55 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
        v80 = *(v55 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v81 = *(v79 + 8);

        sub_252E362F4();
        (v8)(v71, 0, 1, v77);
        swift_beginAccess();
        v0 = v161;
        sub_252956C98(v71, v75 + v76);
        swift_endAccess();
        if (qword_27F53F2A0 != -1)
        {
          swift_once();
        }

        v82 = off_27F541CD0;
        if (*(off_27F541CD0 + 2) && (v83 = sub_252A488EC(v149), (v84 & 1) != 0))
        {
          v85 = v0[88];
          LOBYTE(v163[0]) = *(v82[7] + v83);
          AccessoryTypeSemantic.rawValue.getter();
          sub_252E362F4();
          v86 = 0;
        }

        else
        {
          v86 = 1;
        }

        v51 = v157;
        v87 = v0[88];
        (v8)(v87, v86, 1, v77);
        v88 = v156;
        swift_beginAccess();
        sub_252956C98(v87, v75 + v88);
        swift_endAccess();
        v89 = type metadata accessor for HomeAutomationEntityResponse(0);
        v90 = *(v89 + 48);
        v91 = *(v89 + 52);
        swift_allocObject();
        sub_2529605C0(v75);
        swift_setDeallocating();
        sub_25293847C(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v75 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, &qword_27F540298, &unk_252E3C270);
      }

      v127 = *(*v75 + 48);
      v128 = *(*v75 + 52);
      swift_deallocClassInstance();

      v130 = v150;
      MEMORY[0x2530AD700](v129);
      if (*((*v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v131 = *((*v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
        v51 = v157;
      }

      sub_252E372D4();
      v53 = v160 + 1;
      v50 = v152;
    }

    while (v159 != v158);
    v132 = *v130;
    v52 = MEMORY[0x277D84F90];
  }

  else
  {
    v132 = v52;
  }

  v133 = v0[87];
  v134 = v0[84];
  v135 = v0[83];
  sub_252929F10(v152, 0);
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = v52;
  type metadata accessor for HomeAutomationEntityResponses();
  v136 = swift_allocObject();
  *(v136 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v136 + 24) = v132;
  v0[80] = v136;
  sub_25293DEE0((v0 + 2));
  memcpy(v163, v0 + 2, 0x1F8uLL);
  v137 = v135;
  v138 = sub_252953488(v135, v163, 0);
  v0[94] = v138;

  v139 = v134[12];
  v140 = v134[13];
  __swift_project_boxed_opaque_existential_1(v134 + 9, v139);
  v141 = swift_task_alloc();
  v0[95] = v141;
  v141[2] = v134;
  v141[3] = v0 + 80;
  v141[4] = v138;
  sub_252AD7CC4();
  v142 = swift_task_alloc();
  v0[96] = v142;
  *v142 = v0;
  v142[1] = sub_252B31AD4;
  v143 = v0[87];
  v144 = v0[82];
  v145 = *MEMORY[0x277D85DE8];
  v166 = v140;

  return sub_252BDB88C(v144, &unk_252E4C2A0, v141, v143, 0, 0, 0, v139);
}

uint64_t sub_252B31AD4()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 768);
  v9 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    (*(v2[86] + 8))(v2[87], v2[85]);
    v4 = sub_252B31D44;
  }

  else
  {
    v5 = v2[95];
    (*(v2[86] + 8))(v2[87], v2[85]);

    v4 = sub_252B31C60;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B31C60()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];

  v7 = v0[80];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_252B31D44()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[95];
  v2 = v0[94];

  v3 = v0[97];
  v4 = v0[93];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[80];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_252B31E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252B31E60, 0, 0);
}

uint64_t sub_252B31E60()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v4 = *v2;
  v0[5] = v4;

  v5 = sub_252C051A4(0, v1, v4);
  v0[6] = v5;
  v6 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_252B31F84;

  return v9(0xD000000000000028, 0x8000000252E7D720, v5);
}

uint64_t sub_252B31F84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252B32144;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252B320D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252B320D0()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t sub_252B32144()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_252B321DC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B30840(a1, a2);
}

void *sub_252B32288@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AsyncEagerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

id sub_252B322EC(void *a1, char *a2)
{
  v3 = sub_2529408F4(a1);
  result = 0;
  if ((v3 & 1) != 0 && a2)
  {
    v5 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    if (*&a2[v5] == 4)
    {
      result = [a2 entityResponses];
      if (result)
      {
        v6 = result;
        type metadata accessor for HomeEntityResponse();
        v7 = sub_252E37264();

        if (v7 >> 62)
        {
          v8 = sub_252E378C4();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        return (v8 == 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252B323D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252B31E3C(v2, v3, v4);
}

uint64_t HueSemantic.rawValue.getter()
{
  result = 0x6873696E65657267;
  switch(*v0)
  {
    case 1:
      return 0x656C646E6163;
    case 2:
      return 0x676E757420773034;
    case 3:
      return 0x6E75742077303031;
    case 4:
      return 0x6E65676F6C6168;
    case 5:
      return 0x61206E6F62726163;
    case 6:
      return 0x6F6F6E2068676968;
    case 7:
      return 0x747361637265766FLL;
    case 8:
      return 0x6C62207261656C63;
    case 9:
      return 0xD000000000000010;
    case 0xA:
    case 0x11:
    case 0x52:
    case 0xAD:
    case 0xFB:
    case 0x13B:
    case 0x18C:
    case 0x268:
    case 0x287:
      return 0xD000000000000014;
    case 0xB:
    case 0x166:
    case 0x189:
    case 0x23E:
      return 0xD000000000000016;
    case 0xC:
      v35 = 9;
      return v35 | 0xD000000000000010;
    case 0xD:
      return 0xD000000000000017;
    case 0xE:
      return 0x207972756372656DLL;
    case 0xF:
      return 0x76206D7569646F73;
    case 0x10:
      return 0x6168206C6174656DLL;
    case 0x12:
      return 0x63726F6620726961;
    case 0x13:
      return 0x6C62206563696C61;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x646E6F6D6C61;
    case 0x16:
      return 0x68746E6172616D61;
    case 0x17:
      return 0x7265626D61;
    case 0x18:
      return 0x6E61636972656D61;
    case 0x19:
      return 0x7473796874656D61;
    case 0x1A:
    case 0x1C:
      return 0x2065757169746E61;
    case 0x1B:
      return 0x2065757169746E61;
    case 0x1D:
      return 0x746F6369727061;
    case 0x1E:
      return 1635086689;
    case 0x1F:
      return 0x6972616D61757161;
    case 0x20:
      v2 = 2037215841;
      return v2 | 0x6572672000000000;
    case 0x21:
      return 0x206564696C797261;
    case 0x22:
      return 0x7965726720687361;
    case 0x23:
      return 0x7567617261707361;
    case 0x24:
      return 0xD000000000000010;
    case 0x25:
      return 0x6E7275627561;
    case 0x26:
      return 0x6E696C6F65727561;
    case 0x27:
      return 0x6174656D6F727561;
    case 0x28:
      return 0x6572757A61;
    case 0x29:
      v10 = 2036490594;
      return v10 | 0x756C622000000000;
    case 0x2A:
      v5 = 2036490594;
      return v5 | 0x6E69702000000000;
    case 0x2B:
      return 0x6D20616E616E6162;
    case 0x2C:
      v7 = 0x616E616E6162;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x2D:
      return 0x6873656C74746162;
    case 0x2E:
      return 0x756C622075616562;
    case 0x2F:
      return 0x6567696562;
    case 0x30:
      return 0x657571736962;
    case 0x31:
      return 0x657274736962;
    case 0x32:
      return 0x7773726574746962;
    case 0x33:
      return 0x6B63616C62;
    case 0x34:
      return 0x646568636E616C62;
    case 0x35:
      return 0x2065642075656C62;
    case 0x36:
      return 0x646E6F6C62;
    case 0x37:
      return 1702194274;
    case 0x38:
      return 0x6172672065756C62;
    case 0x39:
      v2 = 1702194274;
      return v2 | 0x6572672000000000;
    case 0x3A:
      return 0x7275702065756C62;
    case 0x3B:
      return 0x6F69762065756C62;
    case 0x3C:
      return 0x6873756C62;
    case 0x3D:
      return 0x6C622069646E6F62;
    case 0x3E:
      return 1701736290;
    case 0x3F:
    case 0x68:
      v35 = 5;
      return v35 | 0xD000000000000010;
    case 0x40:
      v26 = 0x656C74746F62;
      goto LABEL_608;
    case 0x41:
      return 0x65626E6573796F62;
    case 0x42:
      return 0x736965646E617262;
    case 0x43:
      return 0x7373617262;
    case 0x44:
      return 0x6572206B63697262;
    case 0x45:
      return 0x61696E6F676562;
    case 0x46:
      return 0x7220746867697262;
    case 0x47:
      v9 = 0x746867697262;
      return v9 & 0xFFFFFFFFFFFFLL | 0x7720000000000000;
    case 0x48:
      v7 = 0x746867697262;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x49:
      v3 = 0x746867697262;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x4A:
      return 0x6320746867697262;
    case 0x4B:
      v26 = 0x746867697262;
      goto LABEL_608;
    case 0x4C:
      return 0x6C20746867697262;
    case 0x4D:
      return 0x6D20746867697262;
    case 0x4E:
      v36 = 0x746867697262;
      return v36 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x4F:
      return 0xD000000000000010;
    case 0x50:
    case 0xB2:
    case 0xBB:
    case 0xC1:
    case 0xD9:
    case 0x10E:
    case 0x110:
    case 0x125:
    case 0x15D:
    case 0x161:
    case 0x165:
    case 0x20E:
    case 0x21D:
    case 0x225:
      return 0xD000000000000012;
    case 0x51:
      return 0x6E61696C6C697262;
    case 0x53:
      return 0x657A6E6F7262;
    case 0x54:
      return 0x6E776F7262;
    case 0x55:
      return 0x6720656C62627562;
    case 0x56:
      return 1717990754;
    case 0x57:
      return 0x61697261676C7562;
    case 0x58:
      return 0x79646E7567727562;
    case 0x59:
      return 0x6F6F77796C727562;
    case 0x5A:
      return 0x726F20746E727562;
    case 0x5B:
      return 0x697320746E727562;
    case 0x5C:
      return 0x6D7520746E727562;
    case 0x5D:
      return 0x6E69746E617A7962;
    case 0x5E:
      return 0x7569746E617A7962;
    case 0x5F:
      return 0x65756C62206763;
    case 0x60:
      return 0x646572206763;
    case 0x61:
      return 0x7465646163;
    case 0x62:
      return 0x6C62207465646163;
    case 0x63:
      return 0x7267207465646163;
    case 0x64:
      return 0x206D75696D646163;
    case 0x65:
      return 0x206D75696D646163;
    case 0x66:
      return 0x206D75696D646163;
    case 0x67:
      return 0x206D75696D646163;
    case 0x69:
      return 0x67646972626D6163;
    case 0x6A:
      return 0xD000000000000010;
    case 0x6B:
      return 0x7972616E6163;
    case 0x6C:
      v22 = 0x7972616E6163;
      return v22 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x6D:
      return 0x70612079646E6163;
    case 0x6E:
      return 0x69702079646E6163;
    case 0x6F:
      return 0x6972706163;
    case 0x70:
      return 0x6F6D207475706163;
    case 0x71:
      return 0x6C616E6964726163;
    case 0x72:
      return 0x6165626269726163;
    case 0x73:
      return 0x656E696D726163;
    case 0x74:
      return 0x20656E696D726163;
    case 0x75:
      return 0x20656E696D726163;
    case 0x76:
      return 0x6F6974616E726163;
    case 0x77:
      return 0x61696C656E726163;
    case 0x78:
      return 0x616E696C6F726163;
    case 0x79:
      return 0x6F20746F72726163;
    case 0x7A:
      return 0x6E6F64616C6563;
    case 0x7B:
      return 0x657473656C6563;
    case 0x7C:
      return 0x61697473656C6563;
    case 0x7D:
      return 0x657369726563;
    case 0x7E:
      v36 = 0x657369726563;
      return v36 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x7F:
      return 0x6E61656C75726563;
    case 0x80:
      return 0x6E61656C75726563;
    case 0x81:
      return 0x6573696F6D616863;
    case 0x82:
      return 0x6E6761706D616863;
    case 0x83:
      return 0x6C616F6372616863;
    case 0x84:
      return 0x7565727472616863;
    case 0x85:
      return 0x797272656863;
    case 0x86:
    case 0x16A:
    case 0x186:
    case 0x18D:
    case 0x194:
      return 0xD000000000000013;
    case 0x87:
      return 0x74756E7473656863;
    case 0x88:
      return 0x74616C6F636F6863;
    case 0x89:
      v22 = 0x656D6F726863;
      return v22 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x8A:
      return 0x756F6572656E6963;
    case 0x8B:
      return 0x726162616E6E6963;
    case 0x8C:
      return 0x6E6F6D616E6E6963;
    case 0x8D:
      return 0x656E6972746963;
    case 0x8E:
      return 0x2063697373616C63;
    case 0x8F:
      return 0x746C61626F63;
    case 0x90:
      v30 = 0x20616F636F63;
      return v30 & 0xFFFFFFFFFFFFLL | 0x7262000000000000;
    case 0x91:
      return 0x656566666F63;
    case 0x92:
      return 0x6169626D756C6F63;
    case 0x93:
      return 0x616C62206C6F6F63;
    case 0x94:
      v4 = 1819242339;
      return v4 | 0x6572672000000000;
    case 0x95:
      return 0x726570706F63;
    case 0x96:
      return 0x7220726570706F63;
    case 0x97:
      return 0x63696C6575716F63;
    case 0x98:
      return 0x6C61726F63;
    case 0x99:
      return 0x6970206C61726F63;
    case 0x9A:
      return 0x6572206C61726F63;
    case 0x9B:
      return 0x6E61766F64726F63;
    case 0x9C:
      return 1852993379;
    case 0x9D:
      v16 = 1852993379;
      goto LABEL_302;
    case 0x9E:
      return 0x776F6C666E726F63;
    case 0x9F:
      return 0x776F6C666E726F63;
    case 0xA0:
      return 0x6B6C69736E726F63;
    case 0xA1:
      return 0x6C2063696D736F63;
    case 0xA2:
      return 0x63206E6F74746F63;
    case 0xA3:
      return 0x6D61657263;
    case 0xA4:
      return 0x6E6F736D697263;
    case 0xA5:
      return 0x206E6F736D697263;
    case 0xA6:
      return 0x206E6F736D697263;
    case 0xA7:
      return 1851881827;
    case 0xA8:
      return 0x6C69646F66666164;
    case 0xA9:
      return 0x6F696C65646E6164;
    case 0xAA:
      v10 = 1802658148;
      return v10 | 0x756C622000000000;
    case 0xAB:
      return 0x6F7262206B726164;
    case 0xAC:
      return 0x7A7962206B726164;
    case 0xAE:
      v37 = 1802658148;
      return v37 | 0x7265632000000000;
    case 0xAF:
      return 0x656863206B726164;
    case 0xB0:
      return 0x726F63206B726164;
    case 0xB1:
      return 0x617963206B726164;
    case 0xB3:
      return 0x6C6F67206B726164;
    case 0xB4:
      return 0x617267206B726164;
    case 0xB5:
      v2 = 1802658148;
      return v2 | 0x6572672000000000;
    case 0xB6:
    case 0xC0:
    case 0xCD:
    case 0xD8:
    case 0xDF:
    case 0xF8:
    case 0x16D:
    case 0x187:
    case 0x191:
    case 0x193:
    case 0x198:
    case 0x1B4:
    case 0x1CA:
    case 0x24E:
    case 0x290:
    case 0x2C4:
      return 0xD000000000000011;
    case 0xB7:
      return 0x61686B206B726164;
    case 0xB8:
      return 0x76616C206B726164;
    case 0xB9:
      v40 = 1802658148;
      return v40 | 0x76616C2000000000;
    case 0xBA:
      return 0x67616D206B726164;
    case 0xBC:
      return 0xD000000000000010;
    case 0xBD:
      return 0x61726F206B726164;
    case 0xBE:
      return 0x63726F206B726164;
    case 0xBF:
      return 0xD000000000000010;
    case 0xC2:
      return 0x736170206B726164;
    case 0xC3:
      v5 = 1802658148;
      return v5 | 0x6E69702000000000;
    case 0xC4:
      return 0xD000000000000010;
    case 0xC5:
      return 0x736172206B726164;
    case 0xC6:
      v23 = 1802658148;
      return v23 | 0x6465722000000000;
    case 0xC7:
      return 0x6C6173206B726164;
    case 0xC8:
      return 0x616373206B726164;
    case 0xC9:
      return 0x616573206B726164;
    case 0xCA:
      return 0x656973206B726164;
    case 0xCB:
      return 0x616C73206B726164;
    case 0xCC:
      return 0x616C73206B726164;
    case 0xCE:
      return 0x6E6174206B726164;
    case 0xCF:
      return 0x6E6174206B726164;
    case 0xD0:
      return 0x756174206B726164;
    case 0xD1:
      return 0xD000000000000010;
    case 0xD2:
      return 0x727574206B726164;
    case 0xD3:
      return 0x6F6976206B726164;
    case 0xD4:
      return 0x6C6579206B726164;
    case 0xD5:
      return 0x74756F6D74726164;
    case 0xD6:
      v4 = 2037801316;
      return v4 | 0x6572672000000000;
    case 0xD7:
      return 0x7261632070656564;
    case 0xDA:
      return 0x7265632070656564;
    case 0xDB:
      return 0x6168632070656564;
    case 0xDC:
      v34 = 1885693284;
      return v34 | 0x6568632000000000;
    case 0xDD:
      return 0x666F632070656564;
    case 0xDE:
      return 0x6375662070656564;
    case 0xE0:
      return 0x6C696C2070656564;
    case 0xE1:
      return 0x67616D2070656564;
    case 0xE2:
      v15 = 1885693284;
      return v15 | 0x6165702000000000;
    case 0xE3:
      return 0x6E69702070656564;
    case 0xE4:
      return 0x6661732070656564;
    case 0xE5:
      return 0x796B732070656564;
    case 0xE6:
      return 0x6D696E6564;
    case 0xE7:
      return 0x747265736564;
    case 0xE8:
      return 0x7320747265736564;
    case 0xE9:
      return 0x79617267206D6964;
    case 0xEA:
      v25 = 0x726567646F64;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0xEB:
      return 0x20646F6F77676F64;
    case 0xEC:
      return 0x622072616C6C6F64;
    case 0xED:
      return 1650553444;
    case 0xEE:
      v24 = 1701541220;
      return v24 | 0x756C622000000000;
    case 0xEF:
      return 0x6579206874726165;
    case 0xF0:
      return 1970430821;
    case 0xF1:
      return 0x746E616C70676765;
    case 0xF2:
      return 0x6C6C656873676765;
    case 0xF3:
      return 0x6E61697470796765;
    case 0xF4:
      return 0x6369727463656C65;
    case 0xF5:
      return 0xD000000000000010;
    case 0xF6:
    case 0xF9:
      return 0x6369727463656C65;
    case 0xF7:
      return 0x6369727463656C65;
    case 0xFA:
      return 0x6369727463656C65;
    case 0xFC:
      return 0x6369727463656C65;
    case 0xFD:
      return 0x646C6172656D65;
    case 0xFE:
      v24 = 1852798053;
      return v24 | 0x756C622000000000;
    case 0xFF:
      return 0x776F6C6C6166;
    case 0x100:
      v23 = 1970037094;
      return v23 | 0x6465722000000000;
    case 0x101:
      return 0x206E6F6968736166;
    case 0x102:
      return 1853317478;
    case 0x103:
      return 1852990822;
    case 0x104:
      v41 = 1852990822;
      return v41 | 0x6572672000000000;
    case 0x105:
      return 0x2069726172726566;
    case 0x106:
      return 0x726420646C656966;
    case 0x107:
      return 0x676E652065726966;
    case 0x108:
      return 0x6369726265726966;
    case 0x109:
      v14 = 1835101286;
      goto LABEL_367;
    case 0x10A:
      return 0x6F676E696D616C66;
    case 0x10B:
      return 0x6563736576616C66;
    case 0x10C:
      return 2019650662;
    case 0x10D:
      v9 = 0x6C61726F6C66;
      return v9 & 0xFFFFFFFFFFFFLL | 0x7720000000000000;
    case 0x10F:
    case 0x133:
    case 0x149:
    case 0x170:
    case 0x18B:
    case 0x192:
    case 0x196:
    case 0x197:
    case 0x1A7:
    case 0x20C:
    case 0x228:
    case 0x24C:
    case 0x254:
    case 0x265:
    case 0x273:
    case 0x29E:
    case 0x2BB:
      return 0xD000000000000010;
    case 0x111:
      return 0x796C6C6F66;
    case 0x112:
      v26 = 0x747365726F66;
      goto LABEL_608;
    case 0x113:
      return 0x622068636E657266;
    case 0x114:
      v3 = 0x68636E657266;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x115:
      return 0x6C2068636E657266;
    case 0x116:
      return 0x722068636E657266;
    case 0x117:
      v28 = 0x697368637566;
      return v28 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
    case 0x118:
      return 0x2061697368637566;
    case 0x119:
      return 0x757720797A7A7566;
    case 0x11A:
      return 0x726F62736E696167;
    case 0x11B:
      return 0x65676F626D6167;
    case 0x11C:
      return 0x68772074736F6867;
    case 0x11D:
      v17 = 1735289191;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 0x11E:
      return 0x73756F6375616C67;
    case 0x11F:
      return 0x72657474696C67;
    case 0x120:
      return 1684828007;
    case 0x121:
      v33 = 0x6E65646C6F67;
      return v33 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x122:
      return 0x70206E65646C6F67;
    case 0x123:
      v7 = 0x6E65646C6F67;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x124:
      return 0x6F726E65646C6F67;
    case 0x126:
      return 2036429415;
    case 0x127:
      v8 = 1701147239;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x128:
      return 0x6C62206E65657267;
    case 0x129:
      v18 = 0x206E65657267;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
    case 0x12A:
      return 0x6F6C6C757267;
    case 0x12B:
      return 0x6720656970707567;
    case 0x12C:
      v31 = 544104808;
      return v31 | 0x65756C6200000000;
    case 0x12D:
      return 0x70727570206E6168;
    case 0x12E:
      return 0x65792061736E6168;
    case 0x12F:
      return 0x2064726176726168;
    case 0x130:
      return 0x2074736576726168;
    case 0x131:
      return 0x6F67207472616568;
    case 0x132:
      return 0x6F72746F696C6568;
    case 0x134:
      return 0x77656479656E6F68;
    case 0x135:
      return 0x6567616D20746F68;
    case 0x136:
      return 0x6B6E697020746F68;
    case 0x137:
      return 0x656E697265746369;
    case 0x138:
      return 0x7365646E61636E69;
    case 0x139:
      return 0x6F6769646E69;
    case 0x13A:
      return 0xD000000000000018;
    case 0x13C:
      return 1936290409;
    case 0x13D:
      return 0x696C6C6562617369;
    case 0x13E:
      return 0x79726F7669;
    case 0x13F:
      return 1701077354;
    case 0x140:
      v6 = 1836278122;
      goto LABEL_129;
    case 0x141:
      return 0x72657073616ALL;
    case 0x142:
      return 0x727265627A7A616ALL;
    case 0x143:
      v32 = 0x6975716E6F6ALL;
      return v32 & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
    case 0x144:
      return 0x64756220656E756ALL;
    case 0x145:
      return 0x6720656C676E756ALL;
    case 0x146:
      return 0x726720796C6C656BLL;
    case 0x147:
      return 0x696B61686BLL;
    case 0x148:
      return 0x656C6C617320616CLL;
    case 0x14A:
      return 0x616C20736970616CLL;
    case 0x14B:
      return 0x656C20726573616CLL;
    case 0x14C:
      v26 = 0x6C657275616CLL;
      goto LABEL_608;
    case 0x14D:
      return 1635148140;
    case 0x14E:
      return 0x7265646E6576616CLL;
    case 0x14F:
      return 0x7265646E6576616CLL;
    case 0x150:
    case 0x151:
    case 0x153:
      return 0x7265646E6576616CLL;
    case 0x152:
      return 0x7265646E6576616CLL;
    case 0x154:
      return 0x7265646E6576616CLL;
    case 0x155:
      return 0x7265646E6576616CLL;
    case 0x156:
      return 0x7265646E6576616CLL;
    case 0x157:
      v2 = 1853317484;
      return v2 | 0x6572672000000000;
    case 0x158:
      v8 = 1869440364;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x159:
      return 0x6579206E6F6D656CLL;
    case 0x15A:
      return 0x6863206E6F6D656CLL;
    case 0x15B:
      return 0x696C206E6F6D656CLL;
    case 0x15C:
      return 0x726320746867696CLL;
    case 0x15E:
      return 0x706120746867696CLL;
    case 0x15F:
      return 0x6C6220746867696CLL;
    case 0x160:
      return 0x726220746867696CLL;
    case 0x162:
      return 0x6F6320746867696CLL;
    case 0x163:
      v20 = 5;
      return v20 | 0xD000000000000010;
    case 0x164:
      return 0x796320746867696CLL;
    case 0x167:
      return 0x726720746867696CLL;
    case 0x168:
      v39 = 0x20746867696CLL;
      return v39 & 0xFFFFFFFFFFFFLL | 0x7267000000000000;
    case 0x169:
      return 0x686B20746867696CLL;
    case 0x16B:
      return 0x697020746867696CLL;
    case 0x16C:
      return 0x617320746867696CLL;
    case 0x16E:
      return 0x657320746867696CLL;
    case 0x16F:
      return 0x6B7320746867696CLL;
    case 0x171:
      return 0x617420746867696CLL;
    case 0x172:
      v18 = 0x20746867696CLL;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
    case 0x173:
      return 0x63616C696CLL;
    case 0x174:
      return 1701669228;
    case 0x175:
      v41 = 1701669228;
      return v41 | 0x6572672000000000;
    case 0x176:
      return 0x206E6C6F636E696CLL;
    case 0x177:
      v8 = 1701734764;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x178:
      return 1852795244;
    case 0x179:
      return 0x656572672075736DLL;
    case 0x17A:
      v28 = 0x746E6567616DLL;
      return v28 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
    case 0x17B:
      return 0x696D20636967616DLL;
    case 0x17C:
      return 0x61696C6F6E67616DLL;
    case 0x17D:
      return 0x796E61676F68616DLL;
    case 0x17E:
      return 0x657A69616DLL;
    case 0x17F:
      return 0x6C6C65726F6A616DLL;
    case 0x180:
      return 0x74696863616C616DLL;
    case 0x181:
      return 0x6174206F676E616DLL;
    case 0x182:
      return 0x6E6F6F72616DLL;
    case 0x183:
      v14 = 1987404141;
      goto LABEL_367;
    case 0x184:
      return 0x617420657675616DLL;
    case 0x185:
      return 0x756F6C657675616DLL;
    case 0x188:
      v25 = 0x6D756964656DLL;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x18A:
      return 0x63206D756964656DLL;
    case 0x18E:
      return 0xD000000000000017;
    case 0x18F:
      return 0x6F206D756964656DLL;
    case 0x190:
      v38 = 0x6D756964656DLL;
      return v38 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x195:
      return 0x74206D756964656DLL;
    case 0x199:
      v8 = 1869374829;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x19A:
      return 0x746867696E64696DLL;
    case 0x19B:
      return 0x746867696E64696DLL;
    case 0x19C:
      v7 = 0x6F64616B696DLL;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x19D:
      return 1953393005;
    case 0x19E:
      return 0x65726320746E696DLL;
    case 0x19F:
      return 0x65726720746E696DLL;
    case 0x1A0:
      return 0x6F7220797473696DLL;
    case 0x1A1:
      return 0x6E69736163636F6DLL;
    case 0x1A2:
      return 0x6965622065646F6DLL;
    case 0x1A3:
      return 0x6E6F74736E6F6F6DLL;
    case 0x1A4:
      return 0x20746E6164726F6DLL;
    case 0x1A5:
      v41 = 1936945005;
      return v41 | 0x6572672000000000;
    case 0x1A6:
      return 0x6E6961746E756F6DLL;
    case 0x1A8:
      return 0x79727265626C756DLL;
    case 0x1A9:
      v32 = 0x6C65736E756DLL;
      return v32 & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
    case 0x1AA:
      return 0x6472617473756DLL;
    case 0x1AB:
      return 0x656C7472796DLL;
    case 0x1AC:
      return 0x6B6968736564616ELL;
    case 0x1AD:
      v26 = 0x72656970616ELL;
      goto LABEL_608;
    case 0x1AE:
      v22 = 0x73656C70616ELL;
      return v22 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x1AF:
      return 0x77206F6A6176616ELL;
    case 0x1B0:
      v10 = 2037801326;
      return v10 | 0x756C622000000000;
    case 0x1B1:
      return 0x726163206E6F656ELL;
    case 0x1B2:
      return 0x637566206E6F656ELL;
    case 0x1B3:
      v2 = 1852794222;
      return v2 | 0x6572672000000000;
    case 0x1B5:
      return 0x6F62206E6165636FLL;
    case 0x1B6:
      v14 = 1919443823;
      goto LABEL_367;
    case 0x1B7:
      v26 = 0x65636966666FLL;
      goto LABEL_608;
    case 0x1B8:
      return 0x646C6F6720646C6FLL;
    case 0x1B9:
      return 0x6563616C20646C6FLL;
    case 0x1BA:
      return 0x6576616C20646C6FLL;
    case 0x1BB:
      return 0x7675616D20646C6FLL;
    case 0x1BC:
      return 0x65736F7220646C6FLL;
    case 0x1BD:
      return 0x6576696C6FLL;
    case 0x1BE:
      return 0x7264206576696C6FLL;
    case 0x1BF:
      v39 = 0x206576696C6FLL;
      return v39 & 0xFFFFFFFFFFFFLL | 0x7267000000000000;
    case 0x1C0:
      v6 = 1986620527;
LABEL_129:
      v13 = v6 & 0xFFFF0000FFFFFFFFLL | 0x6E6900000000;
      return v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x1C1:
      return 2021224047;
    case 0x1C2:
      return 0x616D20617265706FLL;
    case 0x1C3:
      return 0x65676E61726FLL;
    case 0x1C4:
      v7 = 0x65676E61726FLL;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x1C5:
      return 0x702065676E61726FLL;
    case 0x1C6:
      return 0x722065676E61726FLL;
    case 0x1C7:
      return 0x64696863726FLL;
    case 0x1C8:
      return 0x726220726574746FLL;
    case 0x1C9:
      return 0x707320726574756FLL;
    case 0x1CB:
      v3 = 0x64726F66786FLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x1CC:
      return 0x2063696669636170;
    case 0x1CD:
      return 0x75716120656C6170;
    case 0x1CE:
      v10 = 1701601648;
      return v10 | 0x756C622000000000;
    case 0x1CF:
      return 0x6F726220656C6170;
    case 0x1D0:
      return 0x72616320656C6170;
    case 0x1D1:
      v37 = 1701601648;
      return v37 | 0x7265632000000000;
    case 0x1D2:
      v34 = 1701601648;
      return v34 | 0x6568632000000000;
    case 0x1D3:
      return 0x706F6320656C6170;
    case 0x1D4:
      return 0xD000000000000014;
    case 0x1D5:
      return 0x6C6F6720656C6170;
    case 0x1D6:
      return 0x6C6F6720656C6170;
    case 0x1D7:
      v2 = 1701601648;
      return v2 | 0x6572672000000000;
    case 0x1D8:
      v40 = 1701601648;
      return v40 | 0x76616C2000000000;
    case 0x1D9:
      return 0x67616D20656C6170;
    case 0x1DA:
      return 0x6E697020656C6170;
    case 0x1DB:
      return 0x756C7020656C6170;
    case 0x1DC:
      return 0x64657220656C6170;
    case 0x1DD:
      return 0xD000000000000013;
    case 0x1DE:
      return 0x6C697320656C6170;
    case 0x1DF:
      return 0x75617420656C6170;
    case 0x1E0:
      return 0x6F697620656C6170;
    case 0x1E1:
      return 0x7720617961706170;
    case 0x1E2:
      v39 = 0x207369726170;
      return v39 & 0xFFFFFFFFFFFFLL | 0x7267000000000000;
    case 0x1E3:
      v25 = 0x6C6574736170;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x1E4:
      return 0x62206C6574736170;
    case 0x1E5:
      return 0x67206C6574736170;
    case 0x1E6:
      return 0x67206C6574736170;
    case 0x1E7:
      return 0x6D206C6574736170;
    case 0x1E8:
      v11 = 0x6C6574736170;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6F20000000000000;
    case 0x1E9:
      v36 = 0x6C6574736170;
      return v36 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x1EA:
      v38 = 0x6C6574736170;
      return v38 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x1EB:
      return 0x72206C6574736170;
    case 0x1EC:
      return 0x76206C6574736170;
    case 0x1ED:
      v7 = 0x6C6574736170;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x1EE:
      return 0x726720656E796170;
    case 0x1EF:
      return 0x6863616570;
    case 0x1F0:
      return 0x7570206863616570;
    case 0x1F1:
      v18 = 0x206863616570;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
    case 0x1F2:
      return 1918985584;
    case 0x1F3:
      return 0x6C72616570;
    case 0x1F4:
      return 0x7161206C72616570;
    case 0x1F5:
      return 0x746F6469726570;
    case 0x1F6:
      return 0x6B6E697769726570;
    case 0x1F7:
      return 0x206E616973726570;
    case 0x1F8:
      return 0x206E616973726570;
    case 0x1F9:
      return 0x206E616973726570;
    case 0x1FA:
      return 0x206E616973726570;
    case 0x1FB:
      return 0x206E616973726570;
    case 0x1FC:
      return 0x206E616973726570;
    case 0x1FD:
      return 0x206E616973726570;
    case 0x1FE:
      return 0x786F6C6870;
    case 0x1FF:
      return 0x206F6C6168746870;
    case 0x200:
      return 0x206F6C6168746870;
    case 0x201:
      return 0x6970207967676970;
    case 0x202:
      v2 = 1701734768;
      return v2 | 0x6572672000000000;
    case 0x203:
      return 1802398064;
    case 0x204:
      return 0x616C66206B6E6970;
    case 0x205:
      return 0x656873206B6E6970;
    case 0x206:
      v15 = 1802398064;
      return v15 | 0x6165702000000000;
    case 0x207:
      return 0x6968636174736970;
    case 0x208:
      return 0x6D756E6974616C70;
    case 0x209:
      return 1836412016;
    case 0x20A:
      return 0x646E616C74726F70;
    case 0x20B:
      v25 = 0x726564776F70;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x20D:
      return 0x6E61697373757270;
    case 0x20F:
      return 1701016944;
    case 0x210:
      v12 = 0x696B706D7570;
      return v12 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
    case 0x211:
      return 0x656C70727570;
    case 0x212:
      return 0x6820656C70727570;
    case 0x213:
      v20 = 9;
      return v20 | 0xD000000000000010;
    case 0x214:
      return 0xD000000000000017;
    case 0x215:
      return 0x7020656C70727570;
    case 0x216:
      return 0x7420656C70727570;
    case 0x217:
      v21 = 0x616369646172;
      return v21 & 0xFFFFFFFFFFFFLL | 0x206C000000000000;
    case 0x218:
      return 0x7272656270736172;
    case 0x219:
      return 0x7272656270736172;
    case 0x21A:
      return 0x7272656270736172;
    case 0x21B:
      return 0x7272656270736172;
    case 0x21C:
      return 0x6E65697320776172;
    case 0x21E:
      return 0x6174616D7A7A6172;
    case 0x21F:
      return 6579570;
    case 0x220:
      return 0x6E61726F20646572;
    case 0x221:
      return 0x776F726220646572;
    case 0x222:
      return 0x6C6F697620646572;
    case 0x223:
      return 0x616C622068636972;
    case 0x224:
      return 0x7261632068636972;
    case 0x226:
      return 0x6C696C2068636972;
    case 0x227:
      return 0x72616D2068636972;
    case 0x229:
      return 1702063986;
    case 0x22A:
      return 0x6E6F622065736F72;
    case 0x22B:
      return 0x6F62652065736F72;
    case 0x22C:
      return 0x64616D2065736F72;
    case 0x22D:
      v5 = 1702063986;
      return v5 | 0x6E69702000000000;
    case 0x22E:
      return 0x6175712065736F72;
    case 0x22F:
      return 0x7561742065736F72;
    case 0x230:
      return 0x6C61762065736F72;
    case 0x231:
      return 0x646F6F7765736F72;
    case 0x232:
      return 0x6F63206F73736F72;
    case 0x233:
      return 0x6F72622079736F72;
    case 0x234:
      return 0x7A61206C61796F72;
    case 0x235:
      v19 = 1635348338;
      return v19 | 0x6C62206C00000000;
    case 0x236:
      return 0x7566206C61796F72;
    case 0x237:
      return 0x7570206C61796F72;
    case 0x238:
      return 2036495730;
    case 0x239:
      return 0x7262207964647572;
    case 0x23A:
      return 0x6970207964647572;
    case 0x23B:
      return 0x73756F667572;
    case 0x23C:
      v29 = 1936946546;
      return v29 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 0x23D:
      return 1953723762;
    case 0x23F:
      v33 = 0x656C64646173;
      return v33 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x240:
      v11 = 0x797465666173;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6F20000000000000;
    case 0x241:
      v12 = 0x6F7266666173;
      return v12 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
    case 0x242:
      return 0xD000000000000012;
    case 0x243:
      return 0x6E6F6D6C6173;
    case 0x244:
      return 0x70206E6F6D6C6173;
    case 0x245:
      return 1684955507;
    case 0x246:
      return 0x6E756420646E6173;
    case 0x247:
      return 0x726F7473646E6173;
    case 0x248:
      v30 = 0x2079646E6173;
      return v30 & 0xFFFFFFFFFFFFLL | 0x7262000000000000;
    case 0x249:
      return 0x61742079646E6173;
    case 0x24A:
      return 0x6565726720706173;
    case 0x24B:
      return 0x6572696870706173;
    case 0x24D:
      return 0x74656C72616373;
    case 0x24F:
      return 0x6E696D6165726373;
    case 0x250:
      v31 = 543253875;
      return v31 | 0x65756C6200000000;
    case 0x251:
      return 0x6565726720616573;
    case 0x252:
      return 0x6F7262206C616573;
    case 0x253:
      return 0x6C6C656873616573;
    case 0x255:
      return 0x6169706573;
    case 0x256:
      return 0x776F64616873;
    case 0x257:
      return 0x6B636F726D616873;
    case 0x258:
      return 0x6B636F726D616873;
    case 0x259:
      return 0x676E696B636F6873;
    case 0x25A:
      return 0x616E6E656973;
    case 0x25B:
      v17 = 1986816371;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 0x25C:
      return 0x666F6C65626F6B73;
    case 0x25D:
      v31 = 544828275;
      return v31 | 0x65756C6200000000;
    case 0x25E:
      return 0x6567616D20796B73;
    case 0x25F:
      return 0x6C62206574616C73;
    case 0x260:
      return 0x7267206574616C73;
    case 0x261:
      return 0x746C616D73;
    case 0x262:
      return 0x742079656B6F6D73;
    case 0x263:
      return 0x6C6220796B6F6D73;
    case 0x264:
      return 2003791475;
    case 0x266:
      v26 = 0x676E69727073;
      goto LABEL_608;
    case 0x267:
      v19 = 1701147763;
      return v19 | 0x6C62206C00000000;
    case 0x269:
      return 0x617A7A697473;
    case 0x26A:
      return 0x6F6C636D726F7473;
    case 0x26B:
      return 0x7761727473;
    case 0x26C:
      return 0x776F6C676E7573;
    case 0x26D:
      return 0x746867696C6E7573;
    case 0x26E:
      v29 = 1936618867;
      return v29 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 0x26F:
      v27 = 0x7465736E7573;
      goto LABEL_399;
    case 0x270:
      return 7233908;
    case 0x271:
      return 0x6F6C65676E6174;
    case 0x272:
      return 0x6E697265676E6174;
    case 0x274:
      v14 = 1886740852;
      goto LABEL_367;
    case 0x275:
      return 0x7267206570756174;
    case 0x276:
      return 0x796E776174;
    case 0x277:
      return 0x6565726720616574;
    case 0x278:
      return 0x65736F7220616574;
    case 0x279:
      return 1818322292;
    case 0x27A:
      v24 = 1818322292;
      return v24 | 0x756C622000000000;
    case 0x27B:
      return 0x657267206C616574;
    case 0x27C:
      return 0x6F63206172726574;
    case 0x27D:
      v13 = 0x6C7473696874;
      return v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x27E:
      return 0x206E61696C756874;
    case 0x27F:
      return 0x20796E6166666974;
    case 0x280:
      return 0x7965207265676974;
    case 0x281:
      return 0x6F777265626D6974;
    case 0x282:
      return 0x6D75696E61746974;
    case 0x283:
      return 0x6F74616D6F74;
    case 0x284:
      return 0x7A61706F74;
    case 0x285:
      return 0x20726F7463617274;
    case 0x286:
      return 0x2079656C6C6F7274;
    case 0x288:
      v24 = 1702195828;
      return v24 | 0x756C622000000000;
    case 0x289:
      return 0x6C62207374667574;
    case 0x28A:
      return 0x6577656C626D7574;
    case 0x28B:
      return 0x206873696B727574;
    case 0x28C:
      return 0x73696F7571727574;
    case 0x28D:
      return 0x73696F7571727574;
    case 0x28E:
      return 0x73696F7571727574;
    case 0x28F:
      return 0x72206E6163737574;
    case 0x291:
      return 0x70206E6169727974;
    case 0x292:
      v13 = 0x756C62206175;
      return v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x293:
      return 0x646572206175;
    case 0x294:
      v10 = 1634493301;
      return v10 | 0x756C622000000000;
    case 0x295:
      return 0x6C6F6720616C6375;
    case 0x296:
      return 0x65657267206F6675;
    case 0x297:
      return 0x7365726F66207075;
    case 0x298:
      return 0x6F6F72616D207075;
    case 0x299:
      return 0x6472616320637375;
    case 0x29A:
      return 0x646C6F6720637375;
    case 0x29B:
      return 6644341;
    case 0x29C:
      return 0x6970206172746C75;
    case 0x29D:
      return 0x72616D6172746C75;
    case 0x29F:
      return 0x7265626D75;
    case 0x2A0:
      return 0xD000000000000013;
    case 0x2A1:
      v20 = 13;
      return v20 | 0xD000000000000010;
    case 0x2A2:
      return 0x776F6C6C656D6E75;
    case 0x2A3:
      v16 = 1685287029;
LABEL_302:
      v21 = v16 & 0xFFFF0000FFFFFFFFLL | 0x6C6500000000;
      return v21 & 0xFFFFFFFFFFFFLL | 0x206C000000000000;
    case 0x2A4:
      v28 = 0x6C6C696E6176;
      return v28 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
    case 0x2A5:
      return 0x6F67207361676576;
    case 0x2A6:
      return 0x6E616974656E6576;
    case 0x2A7:
      return 0x6972676964726576;
    case 0x2A8:
      return 0x6F696C696D726576;
    case 0x2A9:
      return 0x6163696E6F726576;
    case 0x2AA:
      v29 = 1819240822;
      return v29 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 0x2AB:
      v25 = 0x74656C6F6976;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x2AC:
      return 0x722074656C6F6976;
    case 0x2AD:
      return 0x6E61696469726976;
    case 0x2AE:
      return 0x7561206469766976;
    case 0x2AF:
      return 0x7562206469766976;
    case 0x2B0:
      return 0x6563206469766976;
    case 0x2B1:
      return 0x6174206469766976;
    case 0x2B2:
      return 0x6976206469766976;
    case 0x2B3:
      return 0x616C62206D726177;
    case 0x2B4:
      return 0x6F70737265746177;
    case 0x2B5:
      v14 = 1735288183;
      goto LABEL_367;
    case 0x2B6:
      return 0x7461656877;
    case 0x2B7:
      v14 = 1953065079;
LABEL_367:
      result = v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 0x2B8:
      result = 0x6D73206574696877;
      break;
    case 0x2B9:
      result = 0x72747320646C6977;
      break;
    case 0x2BA:
      result = 0x74617720646C6977;
      break;
    case 0x2BC:
      result = 1701734775;
      break;
    case 0x2BD:
      result = 0x6169726574736977;
      break;
    case 0x2BE:
      result = 0x7564616E6178;
      break;
    case 0x2BF:
      result = 0x756C6220656C6179;
      break;
    case 0x2C0:
      result = 0x776F6C6C6579;
      break;
    case 0x2C1:
      v27 = 0x776F6C6C6579;
LABEL_399:
      result = v27 & 0xFFFFFFFFFFFFLL | 0x6F20000000000000;
      break;
    case 0x2C2:
      v26 = 0x776F6C6C6579;
LABEL_608:
      result = v26 & 0xFFFFFFFFFFFFLL | 0x6720000000000000;
      break;
    case 0x2C3:
      result = 0x65726666617ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static HueSemantic.< infix(_:_:)(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = HueSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == HueSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

HomeAutomationInternal::HueSemantic_optional __swiftcall HueSemantic.init(rawValue:)(Swift::String rawValue)
{
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543500, &qword_252E4C2B0);
  v2 = swift_allocObject();
  v11 = sub_252948DB8(v2, 709);
  *v3 = "greenish";
  *(v3 + 8) = 8;
  *(v3 + 16) = 2;
  *(v3 + 24) = "candle";
  *(v3 + 32) = 6;
  *(v3 + 40) = 2;
  *(v3 + 48) = "40w tungsten";
  *(v3 + 56) = 12;
  *(v3 + 64) = 2;
  *(v3 + 72) = "100w tungsten";
  *(v3 + 80) = 13;
  *(v3 + 88) = 2;
  *(v3 + 96) = "halogen";
  *(v3 + 104) = 7;
  *(v3 + 112) = 2;
  *(v3 + 120) = "carbon arc";
  *(v3 + 128) = 10;
  *(v3 + 136) = 2;
  *(v3 + 144) = "high noon sun";
  *(v3 + 152) = 13;
  *(v3 + 160) = 2;
  *(v3 + 168) = "overcast sky";
  *(v3 + 176) = 12;
  *(v3 + 184) = 2;
  *(v3 + 192) = "clear blue sky";
  *(v3 + 200) = 14;
  *(v3 + 208) = 2;
  *(v3 + 216) = "warm fluorescent";
  *(v3 + 224) = 16;
  *(v3 + 232) = 2;
  *(v3 + 240) = "standard fluorescent";
  *(v3 + 248) = 20;
  *(v3 + 256) = 2;
  *(v3 + 264) = "cool white fluorescent";
  *(v3 + 272) = 22;
  *(v3 + 280) = 2;
  *(v3 + 288) = "full spectrum fluorescent";
  *(v3 + 296) = 25;
  *(v3 + 304) = 2;
  *(v3 + 312) = "black light fluorescent";
  *(v3 + 320) = 23;
  *(v3 + 328) = 2;
  *(v3 + 336) = "mercury vapor";
  *(v3 + 344) = 13;
  *(v3 + 352) = 2;
  *(v3 + 360) = "sodium vapor";
  *(v3 + 368) = 12;
  *(v3 + 376) = 2;
  *(v3 + 384) = "metal halide";
  *(v3 + 392) = 12;
  *(v3 + 400) = 2;
  *(v3 + 408) = "high pressure sodium";
  *(v3 + 416) = 20;
  *(v3 + 424) = 2;
  *(v3 + 432) = "air force blue";
  *(v3 + 440) = 14;
  *(v3 + 448) = 2;
  *(v3 + 456) = "alice blue";
  *(v3 + 464) = 10;
  *(v3 + 472) = 2;
  *(v3 + 480) = "alizarin crimson";
  *(v3 + 488) = 16;
  *(v3 + 496) = 2;
  *(v3 + 504) = "almond";
  *(v3 + 512) = 6;
  *(v3 + 520) = 2;
  *(v3 + 528) = "amaranth";
  *(v3 + 536) = 8;
  *(v3 + 544) = 2;
  *(v3 + 552) = "amber";
  *(v3 + 560) = 5;
  *(v3 + 568) = 2;
  *(v3 + 576) = "american rose";
  *(v3 + 584) = 13;
  *(v3 + 592) = 2;
  *(v3 + 600) = "amethyst";
  *(v3 + 608) = 8;
  *(v3 + 616) = 2;
  *(v3 + 624) = "antique brass";
  *(v3 + 632) = 13;
  *(v3 + 640) = 2;
  *(v3 + 648) = "antique fuchsia";
  *(v3 + 656) = 15;
  *(v3 + 664) = 2;
  *(v3 + 672) = "antique white";
  *(v3 + 680) = 13;
  *(v3 + 688) = 2;
  *(v3 + 696) = "apricot";
  *(v3 + 704) = 7;
  *(v3 + 712) = 2;
  *(v3 + 720) = "aqua";
  *(v3 + 728) = 4;
  *(v3 + 736) = 2;
  *(v3 + 744) = "aquamarine";
  *(v3 + 752) = 10;
  *(v3 + 760) = 2;
  *(v3 + 768) = "army green";
  *(v3 + 776) = 10;
  *(v3 + 784) = 2;
  *(v3 + 792) = "arylide yellow";
  *(v3 + 800) = 14;
  *(v3 + 808) = 2;
  *(v3 + 816) = "ash grey";
  *(v3 + 824) = 8;
  *(v3 + 832) = 2;
  *(v3 + 840) = "asparagus";
  *(v3 + 848) = 9;
  *(v3 + 856) = 2;
  *(v3 + 864) = "atomic tangerine";
  *(v3 + 872) = 16;
  *(v3 + 880) = 2;
  *(v3 + 888) = "auburn";
  *(v3 + 896) = 6;
  *(v3 + 904) = 2;
  *(v3 + 912) = "aureolin";
  *(v3 + 920) = 8;
  *(v3 + 928) = 2;
  *(v3 + 936) = "aurometalsaurus";
  *(v3 + 944) = 15;
  *(v3 + 952) = 2;
  *(v3 + 960) = "azure";
  *(v3 + 968) = 5;
  *(v3 + 976) = 2;
  *(v3 + 984) = "baby blue";
  *(v3 + 992) = 9;
  *(v3 + 1000) = 2;
  *(v3 + 1008) = "baby pink";
  *(v3 + 1016) = 9;
  *(v3 + 1024) = 2;
  *(v3 + 1032) = "banana mania";
  *(v3 + 1040) = 12;
  *(v3 + 1048) = 2;
  *(v3 + 1056) = "banana yellow";
  *(v3 + 1064) = 13;
  *(v3 + 1072) = 2;
  *(v3 + 1080) = "battleship grey";
  *(v3 + 1088) = 15;
  *(v3 + 1096) = 2;
  *(v3 + 1104) = "beau blue";
  *(v3 + 1112) = 9;
  *(v3 + 1120) = 2;
  *(v3 + 1128) = "beige";
  *(v3 + 1136) = 5;
  *(v3 + 1144) = 2;
  *(v3 + 1152) = "bisque";
  *(v3 + 1160) = 6;
  *(v3 + 1168) = 2;
  *(v3 + 1176) = "bistre";
  *(v3 + 1184) = 6;
  *(v3 + 1192) = 2;
  *(v3 + 1200) = "bittersweet";
  *(v3 + 1208) = 11;
  *(v3 + 1216) = 2;
  *(v3 + 1224) = "black";
  *(v3 + 1232) = 5;
  *(v3 + 1240) = 2;
  *(v3 + 1248) = "blanched almond";
  *(v3 + 1256) = 15;
  *(v3 + 1264) = 2;
  *(v3 + 1272) = "bleu de france";
  *(v3 + 1280) = 14;
  *(v3 + 1288) = 2;
  *(v3 + 1296) = "blond";
  *(v3 + 1304) = 5;
  *(v3 + 1312) = 2;
  *(v3 + 1320) = "blue";
  *(v3 + 1328) = 4;
  *(v3 + 1336) = 2;
  *(v3 + 1344) = "blue gray";
  *(v3 + 1352) = 9;
  *(v3 + 1360) = 2;
  *(v3 + 1368) = "blue green";
  *(v3 + 1376) = 10;
  *(v3 + 1384) = 2;
  *(v3 + 1392) = "blue purple";
  *(v3 + 1400) = 11;
  *(v3 + 1408) = 2;
  *(v3 + 1416) = "blue violet";
  *(v3 + 1424) = 11;
  *(v3 + 1432) = 2;
  *(v3 + 1440) = "blush";
  *(v3 + 1448) = 5;
  *(v3 + 1456) = 2;
  *(v3 + 1464) = "bondi blue";
  *(v3 + 1472) = 10;
  *(v3 + 1480) = 2;
  *(v3 + 1488) = "bone";
  *(v3 + 1496) = 4;
  *(v3 + 1504) = 2;
  *(v3 + 1512) = "boston university red";
  *(v3 + 1520) = 21;
  *(v3 + 1528) = 2;
  *(v3 + 1536) = "bottle green";
  *(v3 + 1544) = 12;
  *(v3 + 1552) = 2;
  *(v3 + 1560) = "boysenberry";
  *(v3 + 1568) = 11;
  *(v3 + 1576) = 2;
  *(v3 + 1584) = "brandeis blue";
  *(v3 + 1592) = 13;
  *(v3 + 1600) = 2;
  *(v3 + 1608) = "brass";
  *(v3 + 1616) = 5;
  *(v3 + 1624) = 2;
  *(v3 + 1632) = "brick red";
  *(v3 + 1640) = 9;
  *(v3 + 1648) = 2;
  *(v3 + 1656) = "begonia";
  *(v3 + 1664) = 7;
  *(v3 + 1672) = 2;
  *(v3 + 1680) = "bright red";
  *(v3 + 1688) = 10;
  *(v3 + 1696) = 2;
  *(v3 + 1704) = "bright white";
  *(v3 + 1712) = 12;
  *(v3 + 1720) = 2;
  *(v3 + 1728) = "bright yellow";
  *(v3 + 1736) = 13;
  *(v3 + 1744) = 2;
  *(v3 + 1752) = "bright blue";
  *(v3 + 1760) = 11;
  *(v3 + 1776) = "bright cerulean";
  *(v3 + 1800) = "bright green";
  *(v3 + 1824) = "bright lavender";
  *(v3 + 1848) = "bright maroon";
  *(v3 + 1872) = "bright pink";
  *(v3 + 1896) = "bright turquoise";
  *(v3 + 1920) = "brilliant lavender";
  *(v3 + 1944) = "brilliant rose";
  *(v3 + 1968) = "british racing green";
  *(v3 + 2640) = "candy pink";
  *(v3 + 2736) = "caribbean green";
  *(v3 + 2832) = "carnation pink";
  *(v3 + 2928) = "celadon";
  *(v3 + 3024) = "cerise pink";
  *(v3 + 3120) = "champagne";
  *(v3 + 3360) = "cinnamon";
  *(v3 + 3456) = "cocoa brown";
  *(v3 + 3552) = "cool grey";
  *(v3 + 3648) = "coral";
  *(v3 + 3744) = "corn";
  *(v3 + 3840) = "cornsilk";
  *(v3 + 3936) = "crimson";
  *(v3 + 4032) = "daffodil";
  *(v3 + 4128) = "dark byzantium";
  *(v3 + 1768) = 2;
  *(v3 + 4440) = "dark lavender";
  *(v3 + 4424) = 9;
  *(v3 + 4432) = 2;
  *(v3 + 4224) = "dark coral";
  *(v3 + 4400) = 10;
  *(v3 + 4408) = 2;
  *(v3 + 4416) = "dark lava";
  *(v3 + 4392) = "dark khaki";
  *(v3 + 4376) = 17;
  *(v3 + 4384) = 2;
  *(v3 + 4344) = "dark green";
  *(v3 + 4352) = 10;
  *(v3 + 4360) = 2;
  *(v3 + 4368) = "dark jungle green";
  *(v3 + 4312) = 2;
  *(v3 + 4320) = "dark gray";
  *(v3 + 4328) = 9;
  *(v3 + 4336) = 2;
  *(v3 + 4296) = "dark goldenrod";
  *(v3 + 4288) = 2;
  *(v3 + 4304) = 14;
  *(v3 + 4272) = "dark electric blue";
  *(v3 + 4256) = 9;
  *(v3 + 4264) = 2;
  *(v3 + 4280) = 18;
  *(v3 + 1784) = 15;
  *(v3 + 4248) = "dark cyan";
  *(v3 + 4232) = 10;
  *(v3 + 4240) = 2;
  *(v3 + 4200) = "dark chestnut";
  *(v3 + 4192) = 2;
  *(v3 + 4208) = 13;
  *(v3 + 4216) = 2;
  *(v3 + 4176) = "dark cerulean";
  *(v3 + 4160) = 20;
  *(v3 + 4168) = 2;
  *(v3 + 4184) = 13;
  *(v3 + 1792) = 2;
  *(v3 + 4152) = "dark candy apple red";
  *(v3 + 4136) = 14;
  *(v3 + 4144) = 2;
  *(v3 + 4104) = "dark brown";
  *(v3 + 4096) = 2;
  *(v3 + 4112) = 10;
  *(v3 + 4120) = 2;
  *(v3 + 4080) = "dark blue";
  *(v3 + 4064) = 9;
  *(v3 + 4072) = 2;
  *(v3 + 4088) = 9;
  *(v3 + 1808) = 12;
  *(v3 + 4056) = "dandelion";
  *(v3 + 4040) = 8;
  *(v3 + 4048) = 2;
  *(v3 + 4008) = "cyan";
  *(v3 + 4000) = 2;
  *(v3 + 4016) = 4;
  *(v3 + 4024) = 2;
  *(v3 + 3984) = "crimson glory";
  *(v3 + 3968) = 11;
  *(v3 + 3976) = 2;
  *(v3 + 3992) = 13;
  *(v3 + 1816) = 2;
  *(v3 + 3960) = "crimson red";
  *(v3 + 3944) = 7;
  *(v3 + 3952) = 2;
  *(v3 + 3912) = "cream";
  *(v3 + 3904) = 2;
  *(v3 + 3920) = 5;
  *(v3 + 3928) = 2;
  *(v3 + 3888) = "cotton candy";
  *(v3 + 3872) = 12;
  *(v3 + 3880) = 2;
  *(v3 + 3896) = 12;
  *(v3 + 1832) = 15;
  *(v3 + 3864) = "cosmic latte";
  *(v3 + 3848) = 8;
  *(v3 + 3856) = 2;
  *(v3 + 3816) = "cornflower blue";
  *(v3 + 3808) = 2;
  *(v3 + 3824) = 15;
  *(v3 + 3832) = 2;
  *(v3 + 3792) = "cornflower";
  *(v3 + 3776) = 11;
  *(v3 + 3784) = 2;
  *(v3 + 3800) = 10;
  *(v3 + 1840) = 2;
  *(v3 + 3768) = "cornell red";
  *(v3 + 3752) = 4;
  *(v3 + 3760) = 2;
  *(v3 + 3720) = "cordovan";
  *(v3 + 3712) = 2;
  *(v3 + 3728) = 8;
  *(v3 + 3736) = 2;
  *(v3 + 3696) = "coral red";
  *(v3 + 3680) = 10;
  *(v3 + 3688) = 2;
  *(v3 + 3704) = 9;
  *(v3 + 1856) = 13;
  *(v3 + 3672) = "coral pink";
  *(v3 + 3656) = 5;
  *(v3 + 3664) = 2;
  *(v3 + 3624) = "coquelicot";
  *(v3 + 3616) = 2;
  *(v3 + 3632) = 10;
  *(v3 + 3640) = 2;
  *(v3 + 3600) = "copper rose";
  *(v3 + 3584) = 6;
  *(v3 + 3592) = 2;
  *(v3 + 3608) = 11;
  *(v3 + 1864) = 2;
  *(v3 + 3576) = "copper";
  *(v3 + 3560) = 9;
  *(v3 + 3568) = 2;
  *(v3 + 3528) = "cool black";
  *(v3 + 3520) = 2;
  *(v3 + 3536) = 10;
  *(v3 + 3544) = 2;
  *(v3 + 3504) = "columbia blue";
  *(v3 + 3488) = 6;
  *(v3 + 3496) = 2;
  *(v3 + 3512) = 13;
  *(v3 + 1880) = 11;
  *(v3 + 3480) = "coffee";
  *(v3 + 3464) = 11;
  *(v3 + 3472) = 2;
  *(v3 + 3432) = "cobalt";
  *(v3 + 3424) = 2;
  *(v3 + 3440) = 6;
  *(v3 + 3448) = 2;
  *(v3 + 3408) = "classic rose";
  *(v3 + 3392) = 7;
  *(v3 + 3400) = 2;
  *(v3 + 3416) = 12;
  *(v3 + 1888) = 2;
  *(v3 + 3384) = "citrine";
  *(v3 + 3368) = 8;
  *(v3 + 3376) = 2;
  *(v3 + 3336) = "cinnabar";
  *(v3 + 3328) = 2;
  *(v3 + 3344) = 8;
  *(v3 + 3352) = 2;
  *(v3 + 3312) = "cinereous";
  *(v3 + 3296) = 13;
  *(v3 + 3304) = 2;
  *(v3 + 3320) = 9;
  *(v3 + 1904) = 16;
  *(v3 + 3288) = "chrome yellow";
  *(v3 + 3272) = 9;
  *(v3 + 3280) = 2;
  *(v3 + 3216) = "cherry blossom pink";
  *(v3 + 3248) = 8;
  *(v3 + 3256) = 2;
  *(v3 + 3264) = "chocolate";
  *(v3 + 3240) = "chestnut";
  *(v3 + 3224) = 19;
  *(v3 + 3232) = 2;
  *(v3 + 3192) = "cherry";
  *(v3 + 3184) = 2;
  *(v3 + 3200) = 6;
  *(v3 + 3208) = 2;
  *(v3 + 3168) = "chartreuse";
  *(v3 + 3152) = 8;
  *(v3 + 3160) = 2;
  *(v3 + 3176) = 10;
  *(v3 + 1912) = 2;
  *(v3 + 3144) = "charcoal";
  *(v3 + 3128) = 9;
  *(v3 + 3136) = 2;
  *(v3 + 3096) = "chamoisee";
  *(v3 + 3088) = 2;
  *(v3 + 3104) = 9;
  *(v3 + 3112) = 2;
  *(v3 + 3072) = "cerulean blue";
  *(v3 + 3056) = 8;
  *(v3 + 3064) = 2;
  *(v3 + 3080) = 13;
  *(v3 + 1928) = 18;
  *(v3 + 3048) = "cerulean";
  *(v3 + 3032) = 11;
  *(v3 + 3040) = 2;
  *(v3 + 3000) = "cerise";
  *(v3 + 2992) = 2;
  *(v3 + 3008) = 6;
  *(v3 + 3016) = 2;
  *(v3 + 2976) = "celestial blue";
  *(v3 + 2960) = 7;
  *(v3 + 2968) = 2;
  *(v3 + 2984) = 14;
  *(v3 + 1936) = 2;
  *(v3 + 2952) = "celeste";
  *(v3 + 2936) = 7;
  *(v3 + 2944) = 2;
  *(v3 + 2904) = "carrot orange";
  *(v3 + 2896) = 2;
  *(v3 + 2912) = 13;
  *(v3 + 2920) = 2;
  *(v3 + 2880) = "carolina blue";
  *(v3 + 2864) = 9;
  *(v3 + 2872) = 2;
  *(v3 + 2888) = 13;
  *(v3 + 1952) = 14;
  *(v3 + 2856) = "carnelian";
  *(v3 + 2840) = 14;
  *(v3 + 2848) = 2;
  *(v3 + 2808) = "carmine red";
  *(v3 + 2800) = 2;
  *(v3 + 2816) = 11;
  *(v3 + 2824) = 2;
  *(v3 + 2784) = "carmine pink";
  *(v3 + 2768) = 7;
  *(v3 + 2776) = 2;
  *(v3 + 2792) = 12;
  *(v3 + 1960) = 2;
  *(v3 + 2760) = "carmine";
  *(v3 + 2744) = 15;
  *(v3 + 2752) = 2;
  *(v3 + 2712) = "cardinal";
  *(v3 + 2704) = 2;
  *(v3 + 2720) = 8;
  *(v3 + 2728) = 2;
  *(v3 + 2688) = "caput mortuum";
  *(v3 + 2672) = 5;
  *(v3 + 2680) = 2;
  *(v3 + 2696) = 13;
  *(v3 + 1976) = 20;
  *(v3 + 2664) = "capri";
  *(v3 + 2648) = 10;
  *(v3 + 2656) = 2;
  *(v3 + 2616) = "candy apple red";
  *(v3 + 2608) = 2;
  *(v3 + 2624) = 15;
  *(v3 + 2632) = 2;
  *(v3 + 2592) = "canary yellow";
  *(v3 + 2576) = 6;
  *(v3 + 2584) = 2;
  *(v3 + 2600) = 13;
  *(v3 + 1984) = 2;
  *(v3 + 2568) = "canary";
  *(v3 + 2552) = 16;
  *(v3 + 2560) = 2;
  *(v3 + 2520) = "cambridge blue";
  *(v3 + 2528) = 14;
  *(v3 + 2536) = 2;
  *(v3 + 2544) = "camouflage green";
  *(v3 + 2488) = 2;
  *(v3 + 2496) = "cal poly pomona green";
  *(v3 + 2504) = 21;
  *(v3 + 2512) = 2;
  *(v3 + 1992) = "bronze";
  *(v3 + 2000) = 6;
  *(v3 + 2008) = 2;
  *(v3 + 2480) = 14;
  *(v3 + 2016) = "brown";
  *(v3 + 2024) = 5;
  *(v3 + 2032) = 2;
  *(v3 + 2040) = "bubble gum";
  *(v3 + 2048) = 10;
  *(v3 + 2056) = 2;
  *(v3 + 2064) = "buff";
  *(v3 + 2072) = 4;
  *(v3 + 2080) = 2;
  *(v3 + 2088) = "bulgarian rose";
  *(v3 + 2096) = 14;
  *(v3 + 2104) = 2;
  *(v3 + 2112) = "burgundy";
  *(v3 + 2120) = 8;
  *(v3 + 2128) = 2;
  *(v3 + 2136) = "burlywood";
  *(v3 + 2144) = 9;
  *(v3 + 2152) = 2;
  *(v3 + 2160) = "burnt orange";
  *(v3 + 2168) = 12;
  *(v3 + 2176) = 2;
  *(v3 + 2184) = "burnt sienna";
  *(v3 + 2192) = 12;
  *(v3 + 2200) = 2;
  *(v3 + 2208) = "burnt umber";
  *(v3 + 2216) = 11;
  *(v3 + 2224) = 2;
  *(v3 + 2232) = "byzantine";
  *(v3 + 2240) = 9;
  *(v3 + 2248) = 2;
  *(v3 + 2256) = "byzantium";
  *(v3 + 2264) = 9;
  *(v3 + 2272) = 2;
  *(v3 + 2280) = "cg blue";
  *(v3 + 2288) = 7;
  *(v3 + 2296) = 2;
  *(v3 + 2304) = "cg red";
  *(v3 + 2312) = 6;
  *(v3 + 2320) = 2;
  *(v3 + 2328) = "cadet";
  *(v3 + 2336) = 5;
  *(v3 + 2344) = 2;
  *(v3 + 2352) = "cadet blue";
  *(v3 + 2360) = 10;
  *(v3 + 2368) = 2;
  *(v3 + 2376) = "cadet grey";
  *(v3 + 2384) = 10;
  *(v3 + 2392) = 2;
  *(v3 + 2400) = "cadmium green";
  *(v3 + 2408) = 13;
  *(v3 + 2416) = 2;
  *(v3 + 2424) = "cadmium orange";
  *(v3 + 2432) = 14;
  *(v3 + 2440) = 2;
  *(v3 + 2448) = "cadmium red";
  *(v3 + 2456) = 11;
  *(v3 + 2464) = 2;
  *(v3 + 2472) = "cadmium yellow";
  *(v3 + 4448) = 13;
  *(v3 + 4456) = 2;
  *(v3 + 4464) = "dark magenta";
  *(v3 + 4472) = 12;
  *(v3 + 4480) = 2;
  *(v3 + 4488) = "dark midnight blue";
  *(v3 + 4496) = 18;
  *(v3 + 4504) = 2;
  *(v3 + 4512) = "dark olive green";
  *(v3 + 4520) = 16;
  *(v3 + 4528) = 2;
  *(v3 + 4536) = "dark orange";
  *(v3 + 4544) = 11;
  *(v3 + 4552) = 2;
  *(v3 + 4560) = "dark orchid";
  *(v3 + 4568) = 11;
  *(v3 + 4576) = 2;
  *(v3 + 4584) = "dark pastel blue";
  *(v3 + 4592) = 16;
  *(v3 + 4600) = 2;
  *(v3 + 4608) = "dark pastel green";
  *(v3 + 4616) = 17;
  *(v3 + 4624) = 2;
  *(v3 + 4632) = "dark pastel purple";
  *(v3 + 4640) = 18;
  *(v3 + 4648) = 2;
  *(v3 + 4656) = "dark pastel red";
  *(v3 + 4664) = 15;
  *(v3 + 4672) = 2;
  *(v3 + 4680) = "dark pink";
  *(v3 + 4688) = 9;
  *(v3 + 4696) = 2;
  *(v3 + 4704) = "dark powder blue";
  *(v3 + 4712) = 16;
  *(v3 + 4720) = 2;
  *(v3 + 4728) = "dark raspberry";
  *(v3 + 4736) = 14;
  *(v3 + 4744) = 2;
  *(v3 + 4752) = "dark red";
  *(v3 + 4760) = 8;
  *(v3 + 4768) = 2;
  *(v3 + 4776) = "dark salmon";
  *(v3 + 4784) = 11;
  *(v3 + 4792) = 2;
  *(v3 + 4800) = "dark scarlet";
  *(v3 + 4808) = 12;
  *(v3 + 4816) = 2;
  *(v3 + 4824) = "dark sea green";
  *(v3 + 4832) = 14;
  *(v3 + 4840) = 2;
  *(v3 + 4848) = "dark sienna";
  *(v3 + 4856) = 11;
  *(v3 + 4864) = 2;
  *(v3 + 4872) = "dark slate blue";
  *(v3 + 4880) = 15;
  *(v3 + 4888) = 2;
  *(v3 + 4896) = "dark slate gray";
  *(v3 + 4904) = 15;
  *(v3 + 4912) = 2;
  *(v3 + 4920) = "dark spring green";
  *(v3 + 4928) = 17;
  *(v3 + 4936) = 2;
  *(v3 + 4944) = "dark tan";
  *(v3 + 4952) = 8;
  *(v3 + 4960) = 2;
  *(v3 + 4968) = "dark tangerine";
  *(v3 + 4976) = 14;
  *(v3 + 4984) = 2;
  *(v3 + 4992) = "dark taupe";
  *(v3 + 5000) = 10;
  *(v3 + 5008) = 2;
  *(v3 + 5016) = "dark terra cotta";
  *(v3 + 5040) = "dark turquoise";
  *(v3 + 5064) = "dark violet";
  *(v3 + 5088) = "dark yellow";
  *(v3 + 5112) = "dartmouth green";
  *(v3 + 5136) = "davy grey";
  *(v3 + 5160) = "deep carmine";
  *(v3 + 5184) = "deep carmine pink";
  *(v3 + 5208) = "deep carrot orange";
  *(v3 + 5232) = "deep cerise";
  *(v3 + 5256) = "deep champagne";
  *(v3 + 5280) = "deep chestnut";
  *(v3 + 5304) = "deep coffee";
  *(v3 + 5328) = "deep fuchsia";
  *(v3 + 5352) = "deep jungle green";
  *(v3 + 5376) = "deep lilac";
  *(v3 + 5400) = "deep magenta";
  *(v3 + 5424) = "deep peach";
  *(v3 + 5448) = "deep pink";
  *(v3 + 5472) = "deep saffron";
  *(v3 + 5496) = "deep sky blue";
  *(v3 + 5520) = "denim";
  *(v3 + 5544) = "desert";
  *(v3 + 5568) = "desert sand";
  *(v3 + 5592) = "dim gray";
  *(v3 + 5616) = "dodger blue";
  *(v3 + 5640) = "dogwood rose";
  *(v3 + 5664) = "dollar bill";
  *(v3 + 5688) = "drab";
  *(v3 + 5712) = "duke blue";
  *(v3 + 5736) = "earth yellow";
  *(v3 + 5760) = "ecru";
  *(v3 + 5784) = "eggplant";
  *(v3 + 5808) = "eggshell";
  *(v3 + 5832) = "egyptian blue";
  *(v3 + 5856) = "electric blue";
  *(v3 + 5880) = "electric crimson";
  *(v3 + 5904) = "electric cyan";
  *(v3 + 5928) = "electric indigo";
  *(v3 + 5952) = "electric lavender";
  *(v3 + 5976) = "electric lime";
  *(v3 + 6000) = "electric purple";
  *(v3 + 6024) = "electric ultramarine";
  *(v3 + 6048) = "electric violet";
  *(v3 + 6072) = "emerald";
  *(v3 + 6096) = "eton blue";
  *(v3 + 6120) = "fallow";
  *(v3 + 6144) = "falu red";
  *(v3 + 6168) = "fashion fuchsia";
  *(v3 + 6192) = "fawn";
  *(v3 + 6216) = "fern";
  *(v3 + 6240) = "fern green";
  *(v3 + 6264) = "ferrari red";
  *(v3 + 6288) = "field drab";
  *(v3 + 6312) = "fire engine red";
  *(v3 + 6336) = "firebrick";
  *(v3 + 6360) = "flame";
  *(v3 + 6384) = "flamingo pink";
  *(v3 + 6408) = "flavescent";
  *(v3 + 6432) = "flax";
  *(v3 + 6456) = "floral white";
  *(v3 + 6480) = "fluorescent orange";
  *(v3 + 6504) = "fluorescent pink";
  *(v3 + 6528) = "fluorescent yellow";
  *(v3 + 6552) = "folly";
  *(v3 + 6576) = "forest green";
  *(v3 + 6600) = "french beige";
  *(v3 + 6624) = "french blue";
  *(v3 + 6648) = "french lilac";
  *(v3 + 6672) = "french rose";
  *(v3 + 6696) = "fuchsia";
  *(v3 + 6720) = "fuchsia pink";
  *(v3 + 6744) = "fuzzy wuzzy";
  *(v3 + 6768) = "gainsboro";
  *(v3 + 6792) = "gamboge";
  *(v3 + 6816) = "ghost white";
  *(v3 + 6840) = "ginger";
  *(v3 + 6864) = "glaucous";
  *(v3 + 6888) = "glitter";
  *(v3 + 6912) = "gold";
  *(v3 + 6936) = "golden brown";
  *(v3 + 6960) = "golden poppy";
  *(v3 + 6984) = "golden yellow";
  *(v3 + 7008) = "goldenrod";
  *(v3 + 7032) = "granny smith apple";
  *(v3 + 7056) = "gray";
  *(v3 + 7080) = "green";
  *(v3 + 7104) = "green blue";
  *(v3 + 7128) = "green yellow";
  *(v3 + 7152) = "grullo";
  *(v3 + 7176) = "guppie green";
  *(v3 + 7200) = "han blue";
  *(v3 + 7224) = "han purple";
  *(v3 + 7248) = "hansa yellow";
  *(v3 + 7272) = "harvard crimson";
  *(v3 + 7296) = "harvest gold";
  *(v3 + 7320) = "heart gold";
  *(v3 + 7344) = "heliotrope";
  *(v3 + 7368) = "hollywood cerise";
  *(v3 + 7392) = "honeydew";
  *(v3 + 7416) = "hot magenta";
  *(v3 + 7440) = "hot pink";
  *(v3 + 7464) = "icterine";
  *(v3 + 7488) = "incandescent";
  *(v3 + 7512) = "indigo";
  *(v3 + 7536) = "international klein blue";
  *(v3 + 7544) = 24;
  *(v3 + 7560) = "international orange";
  *(v3 + 7584) = "iris";
  *(v3 + 7608) = "isabelline";
  *(v3 + 7632) = "ivory";
  *(v3 + 7656) = "jade";
  *(v3 + 7680) = "jasmine";
  *(v3 + 7704) = "jasper";
  *(v3 + 7728) = "jazzberry jam";
  *(v3 + 7752) = "jonquil";
  *(v3 + 7776) = "june bud";
  *(v3 + 7800) = "jungle green";
  *(v3 + 7824) = "kelly green";
  *(v3 + 7848) = "khaki";
  *(v3 + 7872) = "la salle green";
  *(v3 + 7896) = "languid lavender";
  *(v3 + 7920) = "lapis lazuli";
  *(v3 + 7944) = "laser lemon";
  *(v3 + 7992) = "lava";
  *(v3 + 8016) = "lavender";
  *(v3 + 8040) = "lavender blue";
  *(v3 + 8064) = "lavender blush";
  *(v3 + 8088) = "lavender gray";
  *(v3 + 8112) = "lavender indigo";
  *(v3 + 8136) = "lavender mist";
  *(v3 + 8160) = "lavender pink";
  *(v3 + 8184) = "lavender purple";
  *(v3 + 8208) = "lavender rose";
  *(v3 + 8232) = "lawn green";
  *(v3 + 8256) = "lemon";
  *(v3 + 8280) = "lemon yellow";
  *(v3 + 8304) = "lemon chiffon";
  *(v3 + 8328) = "lemon lime";
  *(v3 + 8352) = "light crimson";
  *(v3 + 8376) = "light thulian pink";
  *(v3 + 8400) = "light apricot";
  *(v3 + 8424) = "light blue";
  *(v3 + 8448) = "light brown";
  *(v3 + 8472) = "light carmine pink";
  *(v3 + 8496) = "light coral";
  *(v3 + 8520) = "light cornflower blue";
  *(v3 + 8528) = 21;
  *(v3 + 8544) = "light cyan";
  *(v3 + 8568) = "light fuchsia pink";
  *(v3 + 8592) = "light goldenrod yellow";
  *(v3 + 8616) = "light gray";
  *(v3 + 8640) = "light green";
  *(v3 + 8648) = 11;
  *(v3 + 8656) = 2;
  *(v3 + 8664) = "light khaki";
  *(v3 + 8672) = 11;
  *(v3 + 8680) = 2;
  *(v3 + 8688) = "light pastel purple";
  *(v3 + 8696) = 19;
  *(v3 + 8704) = 2;
  *(v3 + 8712) = "light pink";
  *(v3 + 8720) = 10;
  *(v3 + 8728) = 2;
  *(v3 + 8736) = "light salmon";
  *(v3 + 8744) = 12;
  *(v3 + 8752) = 2;
  *(v3 + 8760) = "light salmon pink";
  *(v3 + 8768) = 17;
  *(v3 + 8776) = 2;
  *(v3 + 8784) = "light sea green";
  *(v3 + 8792) = 15;
  *(v3 + 8800) = 2;
  *(v3 + 8808) = "light sky blue";
  *(v3 + 8816) = 14;
  *(v3 + 8824) = 2;
  *(v3 + 8832) = "light slate gray";
  *(v3 + 8856) = "light taupe";
  *(v3 + 8880) = "light yellow";
  *(v3 + 8904) = "lilac";
  *(v3 + 8928) = "lime";
  *(v3 + 8952) = "lime green";
  *(v3 + 8976) = "lincoln green";
  *(v3 + 9000) = "linen";
  *(v3 + 9024) = "lion";
  *(v3 + 9040) = 2;
  *(v3 + 9048) = "msu green";
  *(v3 + 9072) = "magenta";
  *(v3 + 9096) = "magic mint";
  *(v3 + 9120) = "magnolia";
  *(v3 + 9144) = "mahogany";
  *(v3 + 9168) = "maize";
  *(v3 + 9192) = "majorelle blue";
  *(v3 + 9216) = "malachite";
  *(v3 + 9240) = "mango tango";
  *(v3 + 9264) = "maroon";
  *(v3 + 9288) = "mauve";
  *(v3 + 9312) = "mauve taupe";
  *(v3 + 9336) = "mauvelous";
  *(v3 + 9360) = "medium persian blue";
  *(v3 + 9384) = "medium aquamarine";
  *(v3 + 9408) = "medium blue";
  *(v3 + 9432) = "medium candy apple red";
  *(v3 + 9456) = "medium carmine";
  *(v3 + 9480) = "medium champagne";
  *(v3 + 9504) = "medium electric blue";
  *(v3 + 9528) = "medium jungle green";
  *(v3 + 9552) = "medium lavender magenta";
  *(v3 + 9576) = "medium orchid";
  *(v3 + 9600) = "medium purple";
  *(v3 + 9624) = "medium red violet";
  *(v3 + 9648) = "medium sea green";
  *(v3 + 9672) = "medium slate blue";
  *(v3 + 9696) = "medium spring green";
  *(v3 + 9720) = "medium taupe";
  *(v3 + 9744) = "medium teal blue";
  *(v3 + 9768) = "medium turquoise";
  *(v3 + 9792) = "medium violet red";
  *(v3 + 9816) = "melon";
  *(v3 + 9840) = "midnight blue";
  *(v3 + 9864) = "midnight green";
  *(v3 + 9888) = "mikado yellow";
  *(v3 + 9912) = "mint";
  *(v3 + 9936) = "mint cream";
  *(v3 + 9960) = "mint green";
  *(v3 + 9984) = "misty rose";
  *(v3 + 10008) = "moccasin";
  *(v3 + 10032) = "mode beige";
  *(v3 + 10056) = "moonstone blue";
  *(v3 + 10080) = "mordant red 19";
  *(v3 + 10104) = "moss green";
  *(v3 + 10128) = "mountain meadow";
  *(v3 + 10152) = "mountbatten pink";
  *(v3 + 10176) = "mulberry";
  *(v3 + 10200) = "munsell";
  *(v3 + 10224) = "mustard";
  *(v3 + 10248) = "myrtle";
  *(v3 + 10272) = "nadeshiko pink";
  *(v3 + 10296) = "napier green";
  *(v3 + 10320) = "naples yellow";
  *(v3 + 10344) = "navajo white";
  *(v3 + 10368) = "navy blue";
  *(v3 + 10392) = "neon carrot";
  *(v3 + 10416) = "neon fuchsia";
  *(v3 + 10440) = "neon green";
  *(v3 + 10464) = "north texas green";
  *(v3 + 10488) = "ocean boat blue";
  *(v3 + 10512) = "ochre";
  *(v3 + 10536) = "office green";
  *(v3 + 10560) = "old gold";
  *(v3 + 10584) = "old lace";
  *(v3 + 10608) = "old lavender";
  *(v3 + 10632) = "old mauve";
  *(v3 + 10656) = "old rose";
  *(v3 + 10680) = "olive";
  *(v3 + 10704) = "olive drab";
  *(v3 + 10728) = "olive green";
  *(v3 + 10752) = "olivine";
  *(v3 + 10776) = "onyx";
  *(v3 + 10800) = "opera mauve";
  *(v3 + 10824) = "orange";
  *(v3 + 10848) = "orange yellow";
  *(v3 + 10872) = "orange peel";
  *(v3 + 10896) = "orange red";
  *(v3 + 10920) = "orchid";
  *(v3 + 10944) = "otter brown";
  *(v3 + 10968) = "outer space";
  *(v3 + 10992) = "outrageous orange";
  *(v3 + 11568) = "paris green";
  *(v3 + 11664) = "pastel green";
  *(v3 + 11760) = "pastel purple";
  *(v3 + 11856) = "payne grey";
  *(v3 + 11952) = "pear";
  *(v3 + 12048) = "periwinkle";
  *(v3 + 12144) = "persian pink";
  *(v3 + 12240) = "phlox";
  *(v3 + 8600) = 22;
  *(v3 + 8608) = 2;
  *(v3 + 8624) = 10;
  *(v3 + 8632) = 2;
  *(v3 + 5024) = 16;
  *(v3 + 5032) = 2;
  *(v3 + 8552) = 10;
  *(v3 + 8560) = 2;
  *(v3 + 8576) = 18;
  *(v3 + 8584) = 2;
  *(v3 + 5048) = 14;
  *(v3 + 5056) = 2;
  *(v3 + 5072) = 11;
  *(v3 + 8504) = 11;
  *(v3 + 8512) = 2;
  *(v3 + 8536) = 2;
  *(v3 + 5080) = 2;
  *(v3 + 5096) = 11;
  *(v3 + 8456) = 11;
  *(v3 + 8464) = 2;
  *(v3 + 8480) = 18;
  *(v3 + 8488) = 2;
  *(v3 + 5104) = 2;
  *(v3 + 5120) = 15;
  *(v3 + 8408) = 13;
  *(v3 + 8416) = 2;
  *(v3 + 8432) = 10;
  *(v3 + 8440) = 2;
  *(v3 + 5128) = 2;
  *(v3 + 5144) = 9;
  *(v3 + 8360) = 13;
  *(v3 + 8368) = 2;
  *(v3 + 8384) = 18;
  *(v3 + 8392) = 2;
  *(v3 + 5152) = 2;
  *(v3 + 5168) = 12;
  *(v3 + 8312) = 13;
  *(v3 + 8320) = 2;
  *(v3 + 8336) = 10;
  *(v3 + 8344) = 2;
  *(v3 + 5176) = 2;
  *(v3 + 5192) = 17;
  *(v3 + 8264) = 5;
  *(v3 + 8272) = 2;
  *(v3 + 8288) = 12;
  *(v3 + 8296) = 2;
  *(v3 + 5200) = 2;
  *(v3 + 5216) = 18;
  *(v3 + 8216) = 13;
  *(v3 + 8224) = 2;
  *(v3 + 8240) = 10;
  *(v3 + 8248) = 2;
  *(v3 + 5224) = 2;
  *(v3 + 8168) = 13;
  *(v3 + 8176) = 2;
  *(v3 + 0x2000) = 15;
  *(v3 + 7952) = 11;
  *(v3 + 8200) = 2;
  *(v3 + 5240) = 11;
  *(v3 + 5248) = 2;
  *(v3 + 8120) = 15;
  *(v3 + 8128) = 2;
  *(v3 + 8144) = 13;
  *(v3 + 8152) = 2;
  *(v3 + 5264) = 14;
  *(v3 + 5272) = 2;
  *(v3 + 8072) = 14;
  *(v3 + 8080) = 2;
  *(v3 + 8096) = 13;
  *(v3 + 8104) = 2;
  *(v3 + 5288) = 13;
  *(v3 + 5296) = 2;
  *(v3 + 8024) = 8;
  *(v3 + 8032) = 2;
  *(v3 + 8048) = 13;
  *(v3 + 8056) = 2;
  *(v3 + 5312) = 11;
  *(v3 + 5320) = 2;
  *(v3 + 5336) = 12;
  *(v3 + 7984) = 2;
  *(v3 + 8000) = 4;
  *(v3 + 8008) = 2;
  *(v3 + 5344) = 2;
  *(v3 + 5360) = 17;
  *(v3 + 7904) = 16;
  *(v3 + 7912) = 2;
  *(v3 + 7928) = 12;
  *(v3 + 7936) = 2;
  *(v3 + 5368) = 2;
  *(v3 + 5384) = 10;
  *(v3 + 7856) = 5;
  *(v3 + 7864) = 2;
  *(v3 + 7880) = 14;
  *(v3 + 7888) = 2;
  *(v3 + 5392) = 2;
  *(v3 + 5408) = 12;
  *(v3 + 7808) = 12;
  *(v3 + 7816) = 2;
  *(v3 + 7832) = 11;
  *(v3 + 7840) = 2;
  *(v3 + 5416) = 2;
  *(v3 + 5432) = 10;
  *(v3 + 7760) = 7;
  *(v3 + 7768) = 2;
  *(v3 + 7784) = 8;
  *(v3 + 7792) = 2;
  *(v3 + 5440) = 2;
  *(v3 + 5456) = 9;
  *(v3 + 7712) = 6;
  *(v3 + 7720) = 2;
  *(v3 + 7736) = 13;
  *(v3 + 7744) = 2;
  *(v3 + 5464) = 2;
  *(v3 + 5480) = 12;
  *(v3 + 7664) = 4;
  *(v3 + 7672) = 2;
  *(v3 + 7688) = 7;
  *(v3 + 7696) = 2;
  *(v3 + 5488) = 2;
  *(v3 + 5504) = 13;
  *(v3 + 7616) = 10;
  *(v3 + 7624) = 2;
  *(v3 + 7640) = 5;
  *(v3 + 7648) = 2;
  *(v3 + 5512) = 2;
  *(v3 + 5528) = 5;
  *(v3 + 7568) = 20;
  *(v3 + 7576) = 2;
  *(v3 + 7592) = 4;
  *(v3 + 7600) = 2;
  *(v3 + 5536) = 2;
  *(v3 + 5552) = 6;
  *(v3 + 5560) = 2;
  *(v3 + 7520) = 6;
  *(v3 + 7528) = 2;
  *(v3 + 7552) = 2;
  *(v3 + 5576) = 11;
  *(v3 + 5584) = 2;
  *(v3 + 7472) = 8;
  *(v3 + 7480) = 2;
  *(v3 + 7496) = 12;
  *(v3 + 7504) = 2;
  *(v3 + 5600) = 8;
  *(v3 + 5608) = 2;
  *(v3 + 7424) = 11;
  *(v3 + 7432) = 2;
  *(v3 + 7448) = 8;
  *(v3 + 7456) = 2;
  *(v3 + 5624) = 11;
  *(v3 + 5632) = 2;
  *(v3 + 7376) = 16;
  *(v3 + 7384) = 2;
  *(v3 + 7400) = 8;
  *(v3 + 7408) = 2;
  *(v3 + 5648) = 12;
  *(v3 + 5656) = 2;
  *(v3 + 7328) = 10;
  *(v3 + 7336) = 2;
  *(v3 + 7352) = 10;
  *(v3 + 7360) = 2;
  *(v3 + 5672) = 11;
  *(v3 + 5680) = 2;
  *(v3 + 7280) = 15;
  *(v3 + 7288) = 2;
  *(v3 + 7304) = 12;
  *(v3 + 7312) = 2;
  *(v3 + 5696) = 4;
  *(v3 + 5704) = 2;
  *(v3 + 7232) = 10;
  *(v3 + 7240) = 2;
  *(v3 + 7256) = 12;
  *(v3 + 7264) = 2;
  *(v3 + 5720) = 9;
  *(v3 + 5728) = 2;
  *(v3 + 7184) = 12;
  *(v3 + 7192) = 2;
  *(v3 + 7208) = 8;
  *(v3 + 7216) = 2;
  *(v3 + 5744) = 12;
  *(v3 + 5752) = 2;
  *(v3 + 7136) = 12;
  *(v3 + 7144) = 2;
  *(v3 + 7160) = 6;
  *(v3 + 7168) = 2;
  *(v3 + 5768) = 4;
  *(v3 + 5776) = 2;
  *(v3 + 7088) = 5;
  *(v3 + 7096) = 2;
  *(v3 + 7112) = 10;
  *(v3 + 7120) = 2;
  *(v3 + 5792) = 8;
  *(v3 + 5800) = 2;
  *(v3 + 7040) = 18;
  *(v3 + 7048) = 2;
  *(v3 + 7064) = 4;
  *(v3 + 7072) = 2;
  *(v3 + 5816) = 8;
  *(v3 + 5824) = 2;
  *(v3 + 6992) = 13;
  *(v3 + 7000) = 2;
  *(v3 + 7016) = 9;
  *(v3 + 7024) = 2;
  *(v3 + 5840) = 13;
  *(v3 + 5848) = 2;
  *(v3 + 6944) = 12;
  *(v3 + 6952) = 2;
  *(v3 + 6968) = 12;
  *(v3 + 6976) = 2;
  *(v3 + 5864) = 13;
  *(v3 + 5872) = 2;
  *(v3 + 6896) = 7;
  *(v3 + 6904) = 2;
  *(v3 + 6920) = 4;
  *(v3 + 6928) = 2;
  *(v3 + 5888) = 16;
  *(v3 + 5896) = 2;
  *(v3 + 6848) = 6;
  *(v3 + 6856) = 2;
  *(v3 + 6872) = 8;
  *(v3 + 6880) = 2;
  *(v3 + 5912) = 13;
  *(v3 + 5920) = 2;
  *(v3 + 6800) = 7;
  *(v3 + 6808) = 2;
  *(v3 + 6824) = 11;
  *(v3 + 6832) = 2;
  *(v3 + 5936) = 15;
  *(v3 + 5944) = 2;
  *(v3 + 6752) = 11;
  *(v3 + 6760) = 2;
  *(v3 + 6776) = 9;
  *(v3 + 6784) = 2;
  *(v3 + 5960) = 17;
  *(v3 + 5968) = 2;
  *(v3 + 6704) = 7;
  *(v3 + 6712) = 2;
  *(v3 + 6728) = 12;
  *(v3 + 6736) = 2;
  *(v3 + 5984) = 13;
  *(v3 + 5992) = 2;
  *(v3 + 6656) = 12;
  *(v3 + 6664) = 2;
  *(v3 + 6680) = 11;
  *(v3 + 6688) = 2;
  *(v3 + 6008) = 15;
  *(v3 + 6016) = 2;
  *(v3 + 6608) = 12;
  *(v3 + 6616) = 2;
  *(v3 + 6632) = 11;
  *(v3 + 6640) = 2;
  *(v3 + 6032) = 20;
  *(v3 + 6040) = 2;
  *(v3 + 6560) = 5;
  *(v3 + 6568) = 2;
  *(v3 + 6584) = 12;
  *(v3 + 6592) = 2;
  *(v3 + 6056) = 15;
  *(v3 + 6064) = 2;
  *(v3 + 6512) = 16;
  *(v3 + 6520) = 2;
  *(v3 + 6536) = 18;
  *(v3 + 6544) = 2;
  *(v3 + 6080) = 7;
  *(v3 + 6088) = 2;
  *(v3 + 6464) = 12;
  *(v3 + 6472) = 2;
  *(v3 + 6488) = 18;
  *(v3 + 6496) = 2;
  *(v3 + 6104) = 9;
  *(v3 + 6112) = 2;
  *(v3 + 6416) = 10;
  *(v3 + 6424) = 2;
  *(v3 + 6440) = 4;
  *(v3 + 6448) = 2;
  *(v3 + 6128) = 6;
  *(v3 + 6136) = 2;
  *(v3 + 6368) = 5;
  *(v3 + 6376) = 2;
  *(v3 + 6392) = 13;
  *(v3 + 6400) = 2;
  *(v3 + 6152) = 8;
  *(v3 + 6160) = 2;
  *(v3 + 6320) = 15;
  *(v3 + 6328) = 2;
  *(v3 + 6344) = 9;
  *(v3 + 6352) = 2;
  *(v3 + 6176) = 15;
  *(v3 + 6184) = 2;
  *(v3 + 6272) = 11;
  *(v3 + 6280) = 2;
  *(v3 + 6296) = 10;
  *(v3 + 6304) = 2;
  *(v3 + 6200) = 4;
  *(v3 + 6208) = 2;
  *(v3 + 6224) = 4;
  *(v3 + 6232) = 2;
  *(v3 + 6248) = 10;
  *(v3 + 6256) = 2;
  *(v3 + 8840) = 16;
  *(v3 + 8848) = 2;
  *(v3 + 8864) = 11;
  *(v3 + 8872) = 2;
  *(v3 + 8888) = 12;
  *(v3 + 8896) = 2;
  *(v3 + 8912) = 5;
  *(v3 + 8920) = 2;
  *(v3 + 8936) = 4;
  *(v3 + 8944) = 2;
  *(v3 + 8960) = 10;
  *(v3 + 8968) = 2;
  *(v3 + 8984) = 13;
  *(v3 + 8992) = 2;
  *(v3 + 9008) = 5;
  *(v3 + 9016) = 2;
  *(v3 + 9032) = 4;
  *(v3 + 9056) = 9;
  *(v3 + 9064) = 2;
  *(v3 + 9080) = 7;
  *(v3 + 9088) = 2;
  *(v3 + 9104) = 10;
  *(v3 + 9112) = 2;
  *(v3 + 9128) = 8;
  *(v3 + 9136) = 2;
  *(v3 + 9152) = 8;
  *(v3 + 9160) = 2;
  *(v3 + 9176) = 5;
  *(v3 + 9184) = 2;
  *(v3 + 9200) = 14;
  *(v3 + 9208) = 2;
  *(v3 + 9224) = 9;
  *(v3 + 9232) = 2;
  *(v3 + 9248) = 11;
  *(v3 + 9256) = 2;
  *(v3 + 9272) = 6;
  *(v3 + 9280) = 2;
  *(v3 + 9296) = 5;
  *(v3 + 9304) = 2;
  *(v3 + 9320) = 11;
  *(v3 + 9328) = 2;
  *(v3 + 9344) = 9;
  *(v3 + 9352) = 2;
  *(v3 + 9368) = 19;
  *(v3 + 9376) = 2;
  *(v3 + 9392) = 17;
  *(v3 + 9400) = 2;
  *(v3 + 9416) = 11;
  *(v3 + 9424) = 2;
  *(v3 + 9440) = 22;
  *(v3 + 9448) = 2;
  *(v3 + 9464) = 14;
  *(v3 + 9472) = 2;
  *(v3 + 9488) = 16;
  *(v3 + 9496) = 2;
  *(v3 + 9512) = 20;
  *(v3 + 9520) = 2;
  *(v3 + 9536) = 19;
  *(v3 + 9544) = 2;
  *(v3 + 9560) = 23;
  *(v3 + 9568) = 2;
  *(v3 + 9584) = 13;
  *(v3 + 9592) = 2;
  *(v3 + 9608) = 13;
  *(v3 + 9616) = 2;
  *(v3 + 9632) = 17;
  *(v3 + 9640) = 2;
  *(v3 + 9656) = 16;
  *(v3 + 9664) = 2;
  *(v3 + 9680) = 17;
  *(v3 + 9688) = 2;
  *(v3 + 9704) = 19;
  *(v3 + 9712) = 2;
  *(v3 + 9728) = 12;
  *(v3 + 9736) = 2;
  *(v3 + 9752) = 16;
  *(v3 + 9760) = 2;
  *(v3 + 9776) = 16;
  *(v3 + 9784) = 2;
  *(v3 + 9800) = 17;
  *(v3 + 9808) = 2;
  *(v3 + 9824) = 5;
  *(v3 + 9832) = 2;
  *(v3 + 9848) = 13;
  *(v3 + 9856) = 2;
  *(v3 + 9872) = 14;
  *(v3 + 9880) = 2;
  *(v3 + 9896) = 13;
  *(v3 + 9904) = 2;
  *(v3 + 9920) = 4;
  *(v3 + 9928) = 2;
  *(v3 + 9944) = 10;
  *(v3 + 9952) = 2;
  *(v3 + 9968) = 10;
  *(v3 + 9976) = 2;
  *(v3 + 9992) = 10;
  *(v3 + 10000) = 2;
  *(v3 + 10016) = 8;
  *(v3 + 10024) = 2;
  *(v3 + 10040) = 10;
  *(v3 + 10048) = 2;
  *(v3 + 10064) = 14;
  *(v3 + 10072) = 2;
  *(v3 + 10088) = 14;
  *(v3 + 10096) = 2;
  *(v3 + 10112) = 10;
  *(v3 + 10120) = 2;
  *(v3 + 10136) = 15;
  *(v3 + 10144) = 2;
  *(v3 + 10160) = 16;
  *(v3 + 10168) = 2;
  *(v3 + 10184) = 8;
  *(v3 + 10192) = 2;
  *(v3 + 10208) = 7;
  *(v3 + 10216) = 2;
  *(v3 + 10232) = 7;
  *(v3 + 10240) = 2;
  *(v3 + 10256) = 6;
  *(v3 + 10264) = 2;
  *(v3 + 10280) = 14;
  *(v3 + 10288) = 2;
  *(v3 + 10304) = 12;
  *(v3 + 10312) = 2;
  *(v3 + 10328) = 13;
  *(v3 + 10336) = 2;
  *(v3 + 10352) = 12;
  *(v3 + 10360) = 2;
  *(v3 + 10376) = 9;
  *(v3 + 10384) = 2;
  *(v3 + 10400) = 11;
  *(v3 + 10408) = 2;
  *(v3 + 10424) = 12;
  *(v3 + 10432) = 2;
  *(v3 + 10448) = 10;
  *(v3 + 10456) = 2;
  *(v3 + 10472) = 17;
  *(v3 + 10480) = 2;
  *(v3 + 10496) = 15;
  *(v3 + 10504) = 2;
  *(v3 + 10520) = 5;
  *(v3 + 10528) = 2;
  *(v3 + 10544) = 12;
  *(v3 + 10552) = 2;
  *(v3 + 10568) = 8;
  *(v3 + 7960) = 2;
  *(v3 + 12360) = "pink";
  *(v3 + 12456) = "pistachio";
  *(v3 + 12552) = "powder blue";
  *(v3 + 12624) = "psychedelic purple";
  *(v3 + 12648) = "puce";
  *(v3 + 12720) = "purple heart";
  *(v3 + 12752) = 25;
  *(v3 + 12768) = "purple mountain majesty";
  *(v3 + 12936) = "raspberry rose";
  *(v3 + 13032) = "red";
  *(v3 + 13104) = "red violet";
  *(v3 + 13200) = "rich lilac";
  *(v3 + 13296) = "rose bonbon";
  *(v3 + 13392) = "rose quartz";
  *(v3 + 13488) = "rosso corsa";
  *(v3 + 13584) = "royal fuchsia";
  *(v3 + 13680) = "ruddy pink";
  *(v3 + 13776) = "sacramento state green";
  *(v3 + 13896) = "salmon";
  *(v3 + 13992) = "sandstorm";
  *(v3 + 14088) = "sapphire";
  *(v3 + 14184) = "screamin green";
  *(v3 + 14280) = "seashell";
  *(v3 + 14376) = "shamrock";
  *(v3 + 14472) = "silver";
  *(v3 + 14568) = "slate blue";
  *(v3 + 14664) = "smoky black";
  *(v3 + 14760) = "steel blue";
  *(v3 + 14856) = "straw";
  *(v3 + 10576) = 2;
  *(v3 + 14952) = "sunset orange";
  *(v3 + 14960) = 13;
  *(v3 + 14968) = 2;
  *(v3 + 14928) = "sunset";
  *(v3 + 14920) = 2;
  *(v3 + 14936) = 6;
  *(v3 + 14944) = 2;
  *(v3 + 14904) = "sunlight";
  *(v3 + 14888) = 7;
  *(v3 + 14896) = 2;
  *(v3 + 14912) = 8;
  *(v3 + 10592) = 8;
  *(v3 + 14880) = "sunglow";
  *(v3 + 14864) = 5;
  *(v3 + 14872) = 2;
  *(v3 + 14832) = "stormcloud";
  *(v3 + 14824) = 2;
  *(v3 + 14840) = 10;
  *(v3 + 14848) = 2;
  *(v3 + 14808) = "stizza";
  *(v3 + 14792) = 20;
  *(v3 + 14800) = 2;
  *(v3 + 14816) = 6;
  *(v3 + 10600) = 2;
  *(v3 + 14784) = "stil de grain yellow";
  *(v3 + 14768) = 10;
  *(v3 + 14776) = 2;
  *(v3 + 14736) = "spring green";
  *(v3 + 14728) = 2;
  *(v3 + 14744) = 12;
  *(v3 + 14752) = 2;
  *(v3 + 14712) = "spiro disco ball";
  *(v3 + 14696) = 4;
  *(v3 + 14704) = 2;
  *(v3 + 14720) = 16;
  *(v3 + 10616) = 12;
  *(v3 + 14688) = "snow";
  *(v3 + 14672) = 11;
  *(v3 + 14680) = 2;
  *(v3 + 14640) = "smokey topaz";
  *(v3 + 14632) = 2;
  *(v3 + 14648) = 12;
  *(v3 + 14656) = 2;
  *(v3 + 14616) = "smalt";
  *(v3 + 14600) = 10;
  *(v3 + 14608) = 2;
  *(v3 + 14624) = 5;
  *(v3 + 10624) = 2;
  *(v3 + 14592) = "slate gray";
  *(v3 + 14576) = 10;
  *(v3 + 14584) = 2;
  *(v3 + 14544) = "sky magenta";
  *(v3 + 14536) = 2;
  *(v3 + 14552) = 11;
  *(v3 + 14560) = 2;
  *(v3 + 14520) = "sky blue";
  *(v3 + 14504) = 9;
  *(v3 + 14512) = 2;
  *(v3 + 14528) = 8;
  *(v3 + 10640) = 9;
  *(v3 + 14496) = "skobeloff";
  *(v3 + 14480) = 6;
  *(v3 + 14488) = 2;
  *(v3 + 14448) = "sienna";
  *(v3 + 14440) = 2;
  *(v3 + 14456) = 6;
  *(v3 + 14464) = 2;
  *(v3 + 14424) = "shocking pink";
  *(v3 + 14408) = 14;
  *(v3 + 14416) = 2;
  *(v3 + 14432) = 13;
  *(v3 + 10648) = 2;
  *(v3 + 14400) = "shamrock green";
  *(v3 + 14384) = 8;
  *(v3 + 14392) = 2;
  *(v3 + 14352) = "shadow";
  *(v3 + 14344) = 2;
  *(v3 + 14360) = 6;
  *(v3 + 14368) = 2;
  *(v3 + 14328) = "sepia";
  *(v3 + 14312) = 16;
  *(v3 + 14320) = 2;
  *(v3 + 14336) = 5;
  *(v3 + 10664) = 8;
  *(v3 + 14304) = "selective yellow";
  *(v3 + 14288) = 8;
  *(v3 + 14296) = 2;
  *(v3 + 14256) = "seal brown";
  *(v3 + 14248) = 2;
  *(v3 + 14264) = 10;
  *(v3 + 14272) = 2;
  *(v3 + 14232) = "sea green";
  *(v3 + 14216) = 8;
  *(v3 + 14224) = 2;
  *(v3 + 14240) = 9;
  *(v3 + 10672) = 2;
  *(v3 + 14208) = "sea blue";
  *(v3 + 14192) = 14;
  *(v3 + 14200) = 2;
  *(v3 + 14160) = "school bus yellow";
  *(v3 + 14152) = 2;
  *(v3 + 14168) = 17;
  *(v3 + 14176) = 2;
  *(v3 + 14136) = "scarlet";
  *(v3 + 14120) = 16;
  *(v3 + 14128) = 2;
  *(v3 + 14144) = 7;
  *(v3 + 10688) = 5;
  *(v3 + 14112) = "satin sheen gold";
  *(v3 + 14096) = 8;
  *(v3 + 14104) = 2;
  *(v3 + 14064) = "sap green";
  *(v3 + 14056) = 2;
  *(v3 + 14072) = 9;
  *(v3 + 14080) = 2;
  *(v3 + 14040) = "sandy taupe";
  *(v3 + 14024) = 11;
  *(v3 + 14032) = 2;
  *(v3 + 14048) = 11;
  *(v3 + 10696) = 2;
  *(v3 + 14016) = "sandy brown";
  *(v3 + 14000) = 9;
  *(v3 + 14008) = 2;
  *(v3 + 13968) = "sand dune";
  *(v3 + 13960) = 2;
  *(v3 + 13976) = 9;
  *(v3 + 13984) = 2;
  *(v3 + 13944) = "sand";
  *(v3 + 13928) = 11;
  *(v3 + 13936) = 2;
  *(v3 + 13952) = 4;
  *(v3 + 10712) = 10;
  *(v3 + 13920) = "salmon pink";
  *(v3 + 13904) = 6;
  *(v3 + 13912) = 2;
  *(v3 + 13872) = "saint patrick blue";
  *(v3 + 13864) = 2;
  *(v3 + 13880) = 18;
  *(v3 + 13888) = 2;
  *(v3 + 13848) = "saffron";
  *(v3 + 13832) = 13;
  *(v3 + 13840) = 2;
  *(v3 + 13856) = 7;
  *(v3 + 13784) = 22;
  *(v3 + 13808) = 12;
  *(v3 + 13816) = 2;
  *(v3 + 13824) = "safety orange";
  *(v3 + 13800) = "saddle brown";
  *(v3 + 13792) = 2;
  *(v3 + 13752) = "rust";
  *(v3 + 13744) = 2;
  *(v3 + 13760) = 4;
  *(v3 + 13768) = 2;
  *(v3 + 13728) = "russet";
  *(v3 + 13712) = 6;
  *(v3 + 13720) = 2;
  *(v3 + 13736) = 6;
  *(v3 + 10720) = 2;
  *(v3 + 13704) = "rufous";
  *(v3 + 13688) = 10;
  *(v3 + 13696) = 2;
  *(v3 + 13656) = "ruddy brown";
  *(v3 + 13648) = 2;
  *(v3 + 13664) = 11;
  *(v3 + 13672) = 2;
  *(v3 + 13632) = "ruby";
  *(v3 + 13616) = 12;
  *(v3 + 13624) = 2;
  *(v3 + 13640) = 4;
  *(v3 + 10736) = 11;
  *(v3 + 13608) = "royal purple";
  *(v3 + 13592) = 13;
  *(v3 + 13600) = 2;
  *(v3 + 13560) = "royal blue";
  *(v3 + 13552) = 2;
  *(v3 + 13568) = 10;
  *(v3 + 13576) = 2;
  *(v3 + 13536) = "royal azure";
  *(v3 + 13520) = 10;
  *(v3 + 13528) = 2;
  *(v3 + 13544) = 11;
  *(v3 + 10744) = 2;
  *(v3 + 13512) = "rosy brown";
  *(v3 + 13496) = 11;
  *(v3 + 13504) = 2;
  *(v3 + 13464) = "rosewood";
  *(v3 + 13456) = 2;
  *(v3 + 13472) = 8;
  *(v3 + 13480) = 2;
  *(v3 + 13440) = "rose vale";
  *(v3 + 13424) = 10;
  *(v3 + 13432) = 2;
  *(v3 + 13448) = 9;
  *(v3 + 10760) = 7;
  *(v3 + 13416) = "rose taupe";
  *(v3 + 13400) = 11;
  *(v3 + 13408) = 2;
  *(v3 + 13368) = "rose pink";
  *(v3 + 13360) = 2;
  *(v3 + 13376) = 9;
  *(v3 + 13384) = 2;
  *(v3 + 13344) = "rose madder";
  *(v3 + 13328) = 10;
  *(v3 + 13336) = 2;
  *(v3 + 13352) = 11;
  *(v3 + 10768) = 2;
  *(v3 + 13320) = "rose ebony";
  *(v3 + 13304) = 11;
  *(v3 + 13312) = 2;
  *(v3 + 13272) = "rose";
  *(v3 + 13264) = 2;
  *(v3 + 13280) = 4;
  *(v3 + 13288) = 2;
  *(v3 + 13248) = "robin's egg blue";
  *(v3 + 13232) = 11;
  *(v3 + 13240) = 2;
  *(v3 + 13256) = 16;
  *(v3 + 10784) = 4;
  *(v3 + 13224) = "rich maroon";
  *(v3 + 13208) = 10;
  *(v3 + 13216) = 2;
  *(v3 + 13176) = "rich electric blue";
  *(v3 + 13168) = 2;
  *(v3 + 13184) = 18;
  *(v3 + 13192) = 2;
  *(v3 + 13152) = "rich carmine";
  *(v3 + 13136) = 10;
  *(v3 + 13144) = 2;
  *(v3 + 13160) = 12;
  *(v3 + 10792) = 2;
  *(v3 + 13128) = "rich black";
  *(v3 + 13112) = 10;
  *(v3 + 13120) = 2;
  *(v3 + 13080) = "red brown";
  *(v3 + 13072) = 2;
  *(v3 + 13088) = 9;
  *(v3 + 13096) = 2;
  *(v3 + 10808) = 11;
  *(v3 + 13056) = "red orange";
  *(v3 + 13040) = 3;
  *(v3 + 13048) = 2;
  *(v3 + 13064) = 10;
  *(v3 + 13008) = "razzmatazz";
  *(v3 + 13000) = 2;
  *(v3 + 13016) = 10;
  *(v3 + 13024) = 2;
  *(v3 + 12984) = "razzle dazzle rose";
  *(v3 + 12968) = 10;
  *(v3 + 12976) = 2;
  *(v3 + 12992) = 18;
  *(v3 + 10816) = 2;
  *(v3 + 12960) = "raw sienna";
  *(v3 + 12944) = 14;
  *(v3 + 12952) = 2;
  *(v3 + 12912) = "raspberry pink";
  *(v3 + 12904) = 2;
  *(v3 + 12920) = 14;
  *(v3 + 12928) = 2;
  *(v3 + 12888) = "raspberry glace";
  *(v3 + 12872) = 9;
  *(v3 + 12880) = 2;
  *(v3 + 12896) = 15;
  *(v3 + 10832) = 6;
  *(v3 + 12864) = "raspberry";
  *(v3 + 12848) = 11;
  *(v3 + 12856) = 2;
  *(v3 + 12816) = "purple taupe";
  *(v3 + 12824) = 12;
  *(v3 + 12832) = 2;
  *(v3 + 12840) = "radical red";
  *(v3 + 12784) = 2;
  *(v3 + 12792) = "purple pizzazz";
  *(v3 + 12800) = 14;
  *(v3 + 12808) = 2;
  *(v3 + 12776) = 23;
  *(v3 + 12760) = 2;
  *(v3 + 10840) = 2;
  *(v3 + 12744) = "purple mountain's majesty";
  *(v3 + 12728) = 12;
  *(v3 + 12736) = 2;
  *(v3 + 12696) = "purple";
  *(v3 + 12688) = 2;
  *(v3 + 12704) = 6;
  *(v3 + 12712) = 2;
  *(v3 + 12672) = "pumpkin";
  *(v3 + 12656) = 4;
  *(v3 + 12664) = 2;
  *(v3 + 12680) = 7;
  *(v3 + 10856) = 13;
  *(v3 + 12632) = 18;
  *(v3 + 12616) = 2;
  *(v3 + 12640) = 2;
  *(v3 + 12600) = "prussian blue";
  *(v3 + 12584) = 16;
  *(v3 + 12592) = 2;
  *(v3 + 12608) = 13;
  *(v3 + 10864) = 2;
  *(v3 + 12576) = "princeton orange";
  *(v3 + 12560) = 11;
  *(v3 + 12568) = 2;
  *(v3 + 12528) = "portland orange";
  *(v3 + 12520) = 2;
  *(v3 + 12536) = 15;
  *(v3 + 12544) = 2;
  *(v3 + 12504) = "plum";
  *(v3 + 12488) = 8;
  *(v3 + 12496) = 2;
  *(v3 + 12512) = 4;
  *(v3 + 10880) = 11;
  *(v3 + 12480) = "platinum";
  *(v3 + 12464) = 9;
  *(v3 + 12472) = 2;
  *(v3 + 12432) = "pink pearl";
  *(v3 + 12424) = 2;
  *(v3 + 12440) = 10;
  *(v3 + 12448) = 2;
  *(v3 + 12408) = "pink sherbet";
  *(v3 + 12392) = 13;
  *(v3 + 12400) = 2;
  *(v3 + 12416) = 12;
  *(v3 + 10888) = 2;
  *(v3 + 12384) = "pink flamingo";
  *(v3 + 12368) = 4;
  *(v3 + 12376) = 2;
  *(v3 + 12336) = "pine green";
  *(v3 + 12328) = 2;
  *(v3 + 12344) = 10;
  *(v3 + 12352) = 2;
  *(v3 + 10904) = 10;
  *(v3 + 12312) = "piggy pink";
  *(v3 + 12304) = 2;
  *(v3 + 12320) = 10;
  *(v3 + 12288) = "phthalo green";
  *(v3 + 12272) = 12;
  *(v3 + 12280) = 2;
  *(v3 + 12296) = 13;
  *(v3 + 10912) = 2;
  *(v3 + 12264) = "phthalo blue";
  *(v3 + 12248) = 5;
  *(v3 + 12256) = 2;
  *(v3 + 12216) = "persian rose";
  *(v3 + 12208) = 2;
  *(v3 + 12224) = 12;
  *(v3 + 12232) = 2;
  *(v3 + 12192) = "persian red";
  *(v3 + 12176) = 12;
  *(v3 + 12184) = 2;
  *(v3 + 12200) = 11;
  *(v3 + 10928) = 6;
  *(v3 + 12168) = "persian plum";
  *(v3 + 12152) = 12;
  *(v3 + 12160) = 2;
  *(v3 + 12120) = "persian orange";
  *(v3 + 12112) = 2;
  *(v3 + 12128) = 14;
  *(v3 + 12136) = 2;
  *(v3 + 12096) = "persian indigo";
  *(v3 + 12080) = 12;
  *(v3 + 12088) = 2;
  *(v3 + 12104) = 14;
  *(v3 + 10936) = 2;
  *(v3 + 12072) = "persian blue";
  *(v3 + 12056) = 10;
  *(v3 + 12064) = 2;
  *(v3 + 12024) = "peridot";
  *(v3 + 12016) = 2;
  *(v3 + 12032) = 7;
  *(v3 + 12040) = 2;
  *(v3 + 12000) = "pearl aqua";
  *(v3 + 11984) = 5;
  *(v3 + 11992) = 2;
  *(v3 + 12008) = 10;
  *(v3 + 10952) = 11;
  *(v3 + 11976) = "pearl";
  *(v3 + 11960) = 4;
  *(v3 + 11968) = 2;
  *(v3 + 11928) = "peach yellow";
  *(v3 + 11920) = 2;
  *(v3 + 11936) = 12;
  *(v3 + 11944) = 2;
  *(v3 + 11904) = "peach puff";
  *(v3 + 11888) = 5;
  *(v3 + 11896) = 2;
  *(v3 + 11912) = 10;
  *(v3 + 10960) = 2;
  *(v3 + 11880) = "peach";
  *(v3 + 11864) = 10;
  *(v3 + 11872) = 2;
  *(v3 + 11832) = "pastel yellow";
  *(v3 + 11824) = 2;
  *(v3 + 11840) = 13;
  *(v3 + 11848) = 2;
  *(v3 + 11808) = "pastel violet";
  *(v3 + 11792) = 10;
  *(v3 + 11800) = 2;
  *(v3 + 11816) = 13;
  *(v3 + 10976) = 11;
  *(v3 + 11784) = "pastel red";
  *(v3 + 11768) = 13;
  *(v3 + 11776) = 2;
  *(v3 + 11736) = "pastel pink";
  *(v3 + 11728) = 2;
  *(v3 + 11744) = 11;
  *(v3 + 11752) = 2;
  *(v3 + 11712) = "pastel orange";
  *(v3 + 11696) = 14;
  *(v3 + 11704) = 2;
  *(v3 + 11720) = 13;
  *(v3 + 10984) = 2;
  *(v3 + 11688) = "pastel magenta";
  *(v3 + 11672) = 12;
  *(v3 + 11680) = 2;
  *(v3 + 11640) = "pastel gray";
  *(v3 + 11632) = 2;
  *(v3 + 11648) = 11;
  *(v3 + 11656) = 2;
  *(v3 + 11616) = "pastel brown";
  *(v3 + 11600) = 11;
  *(v3 + 11608) = 2;
  *(v3 + 11624) = 12;
  *(v3 + 11000) = 17;
  *(v3 + 11592) = "pastel blue";
  *(v3 + 11576) = 11;
  *(v3 + 11584) = 2;
  *(v3 + 11544) = "papaya whip";
  *(v3 + 11536) = 2;
  *(v3 + 11552) = 11;
  *(v3 + 11560) = 2;
  *(v3 + 11520) = "pale violet red";
  *(v3 + 11504) = 10;
  *(v3 + 11512) = 2;
  *(v3 + 11528) = 15;
  *(v3 + 11008) = 2;
  *(v3 + 11496) = "pale taupe";
  *(v3 + 11480) = 11;
  *(v3 + 11488) = 2;
  *(v3 + 11016) = "oxford blue";
  *(v3 + 11456) = 19;
  *(v3 + 11464) = 2;
  *(v3 + 11472) = "pale silver";
  *(v3 + 11424) = "pale red violet";
  *(v3 + 11432) = 15;
  *(v3 + 11440) = 2;
  *(v3 + 11448) = "pale robin egg blue";
  *(v3 + 11392) = 2;
  *(v3 + 11400) = "pale plum";
  *(v3 + 11408) = 9;
  *(v3 + 11416) = 2;
  *(v3 + 11360) = 12;
  *(v3 + 11368) = 2;
  *(v3 + 11376) = "pale pink";
  *(v3 + 11384) = 9;
  *(v3 + 11024) = 11;
  *(v3 + 11336) = 13;
  *(v3 + 11344) = 2;
  *(v3 + 11352) = "pale magenta";
  *(v3 + 11304) = "pale green";
  *(v3 + 11312) = 10;
  *(v3 + 11320) = 2;
  *(v3 + 11328) = "pale lavender";
  *(v3 + 11272) = 2;
  *(v3 + 11280) = "pale goldenrod";
  *(v3 + 11288) = 14;
  *(v3 + 11296) = 2;
  *(v3 + 11240) = 20;
  *(v3 + 11248) = 2;
  *(v3 + 11256) = "pale gold";
  *(v3 + 11264) = 9;
  *(v3 + 11032) = 2;
  *(v3 + 11216) = 11;
  *(v3 + 11224) = 2;
  *(v3 + 11232) = "pale cornflower blue";
  *(v3 + 11040) = "pacific blue";
  *(v3 + 11192) = 13;
  *(v3 + 11200) = 2;
  *(v3 + 11208) = "pale copper";
  *(v3 + 11160) = "pale cerulean";
  *(v3 + 11168) = 13;
  *(v3 + 11176) = 2;
  *(v3 + 11184) = "pale chestnut";
  *(v3 + 11128) = 2;
  *(v3 + 11136) = "pale carmine";
  *(v3 + 11144) = 12;
  *(v3 + 11152) = 2;
  *(v3 + 11096) = 9;
  *(v3 + 11104) = 2;
  *(v3 + 11112) = "pale brown";
  *(v3 + 11120) = 10;
  *(v3 + 11048) = 12;
  *(v3 + 11072) = 9;
  *(v3 + 11080) = 2;
  *(v3 + 11088) = "pale blue";
  *(v3 + 11056) = 2;
  *(v3 + 11064) = "pale aqua";
  *(v3 + 14976) = "tan";
  *(v3 + 14984) = 3;
  *(v3 + 14992) = 2;
  *(v3 + 15000) = "tangelo";
  *(v3 + 15008) = 7;
  *(v3 + 15016) = 2;
  *(v3 + 15024) = "tangerine";
  *(v3 + 15032) = 9;
  *(v3 + 15040) = 2;
  *(v3 + 15048) = "tangerine yellow";
  *(v3 + 15056) = 16;
  *(v3 + 15064) = 2;
  *(v3 + 15072) = "taupe";
  *(v3 + 15080) = 5;
  *(v3 + 15088) = 2;
  *(v3 + 15096) = "taupe gray";
  *(v3 + 15104) = 10;
  *(v3 + 15112) = 2;
  *(v3 + 15120) = "tawny";
  *(v3 + 15128) = 5;
  *(v3 + 15136) = 2;
  *(v3 + 15144) = "tea green";
  *(v3 + 15152) = 9;
  *(v3 + 15160) = 2;
  *(v3 + 15168) = "tea rose";
  *(v3 + 15176) = 8;
  *(v3 + 15184) = 2;
  *(v3 + 15192) = "teal";
  *(v3 + 15200) = 4;
  *(v3 + 15208) = 2;
  *(v3 + 15216) = "teal blue";
  *(v3 + 15224) = 9;
  *(v3 + 15232) = 2;
  *(v3 + 15240) = "teal green";
  *(v3 + 15248) = 10;
  *(v3 + 15256) = 2;
  *(v3 + 15264) = "terra cotta";
  *(v3 + 15272) = 11;
  *(v3 + 15280) = 2;
  *(v3 + 15288) = "thistle";
  *(v3 + 15296) = 7;
  *(v3 + 15304) = 2;
  *(v3 + 15312) = "thulian pink";
  *(v3 + 15320) = 12;
  *(v3 + 15328) = 2;
  *(v3 + 15336) = "tiffany blue";
  *(v3 + 15344) = 12;
  *(v3 + 15352) = 2;
  *(v3 + 15360) = "tiger eye";
  *(v3 + 15368) = 9;
  *(v3 + 15376) = 2;
  *(v3 + 15384) = "timberwolf";
  *(v3 + 15392) = 10;
  *(v3 + 15400) = 2;
  *(v3 + 15408) = "titanium yellow";
  *(v3 + 15416) = 15;
  *(v3 + 15424) = 2;
  *(v3 + 15432) = "tomato";
  *(v3 + 15440) = 6;
  *(v3 + 15448) = 2;
  *(v3 + 15456) = "topaz";
  *(v3 + 15464) = 5;
  *(v3 + 15472) = 2;
  *(v3 + 15480) = "tractor red";
  *(v3 + 15488) = 11;
  *(v3 + 15496) = 2;
  *(v3 + 15504) = "trolley grey";
  *(v3 + 15512) = 12;
  *(v3 + 15520) = 2;
  *(v3 + 15528) = "tropical rain forest";
  *(v3 + 15536) = 20;
  *(v3 + 15544) = 2;
  *(v3 + 15552) = "true blue";
  *(v3 + 15560) = 9;
  *(v3 + 15568) = 2;
  *(v3 + 15576) = "tufts blue";
  *(v3 + 15584) = 10;
  *(v3 + 15592) = 2;
  *(v3 + 15600) = "tumbleweed";
  *(v3 + 15608) = 10;
  *(v3 + 15616) = 2;
  *(v3 + 15624) = "turkish rose";
  *(v3 + 15632) = 12;
  *(v3 + 15640) = 2;
  *(v3 + 15648) = "turquoise";
  *(v3 + 15656) = 9;
  *(v3 + 15664) = 2;
  *(v3 + 15672) = "turquoise blue";
  *(v3 + 15680) = 14;
  *(v3 + 15688) = 2;
  *(v3 + 15696) = "turquoise green";
  *(v3 + 15704) = 15;
  *(v3 + 15712) = 2;
  *(v3 + 15720) = "tuscan red";
  *(v3 + 15728) = 10;
  *(v3 + 15736) = 2;
  *(v3 + 15744) = "twilight lavender";
  *(v3 + 15752) = 17;
  *(v3 + 15760) = 2;
  *(v3 + 15768) = "tyrian purple";
  *(v3 + 15776) = 13;
  *(v3 + 15784) = 2;
  *(v3 + 15792) = "ua blue";
  *(v3 + 15800) = 7;
  *(v3 + 15808) = 2;
  *(v3 + 15816) = "ua red";
  *(v3 + 15824) = 6;
  *(v3 + 15832) = 2;
  *(v3 + 15840) = "ucla blue";
  *(v3 + 15848) = 9;
  *(v3 + 15856) = 2;
  *(v3 + 15864) = "ucla gold";
  *(v3 + 15872) = 9;
  *(v3 + 15880) = 2;
  *(v3 + 15888) = "ufo green";
  *(v3 + 15896) = 9;
  *(v3 + 15904) = 2;
  *(v3 + 15912) = "up forest green";
  *(v3 + 15920) = 15;
  *(v3 + 15928) = 2;
  *(v3 + 15936) = "up maroon";
  *(v3 + 15944) = 9;
  *(v3 + 15952) = 2;
  *(v3 + 15960) = "usc cardinal";
  *(v3 + 15968) = 12;
  *(v3 + 15976) = 2;
  *(v3 + 15984) = "usc gold";
  *(v3 + 15992) = 8;
  *(v3 + 16000) = 2;
  *(v3 + 16008) = "ube";
  *(v3 + 16016) = 3;
  *(v3 + 16024) = 2;
  *(v3 + 16032) = "ultra pink";
  *(v3 + 16040) = 10;
  *(v3 + 16048) = 2;
  *(v3 + 16056) = "ultramarine";
  *(v3 + 16064) = 11;
  *(v3 + 16072) = 2;
  *(v3 + 16080) = "ultramarine blue";
  *(v3 + 16088) = 16;
  *(v3 + 16096) = 2;
  *(v3 + 16104) = "umber";
  *(v3 + 16112) = 5;
  *(v3 + 16120) = 2;
  *(v3 + 16128) = "united nations blue";
  *(v3 + 16136) = 19;
  *(v3 + 16144) = 2;
  *(v3 + 16152) = "university of california gold";
  *(v3 + 16160) = 29;
  *(v3 + 16168) = 2;
  *(v3 + 16176) = "unmellow yellow";
  *(v3 + 16184) = 15;
  *(v3 + 16192) = 2;
  *(v3 + 16200) = "upsdell red";
  *(v3 + 16208) = 11;
  *(v3 + 16216) = 2;
  *(v3 + 16224) = "vanilla";
  *(v3 + 16232) = 7;
  *(v3 + 16240) = 2;
  *(v3 + 16248) = "vegas gold";
  *(v3 + 16256) = 10;
  *(v3 + 16264) = 2;
  *(v3 + 16272) = "venetian red";
  *(v3 + 16280) = 12;
  *(v3 + 16288) = 2;
  *(v3 + 16296) = "verdigris";
  *(v3 + 16304) = 9;
  *(v3 + 16312) = 2;
  *(v3 + 16320) = "vermilion";
  *(v3 + 16328) = 9;
  *(v3 + 16336) = 2;
  *(v3 + 16344) = "veronica";
  *(v3 + 16352) = 8;
  *(v3 + 16360) = 2;
  *(v3 + 16368) = "violet";
  *(v3 + 16376) = 6;
  *(v3 + 0x4000) = 2;
  *(v3 + 16392) = "violet blue";
  *(v3 + 16400) = 11;
  *(v3 + 7968) = "laurel green";
  *(v3 + 16408) = 2;
  *(v3 + 16416) = "violet red";
  *(v3 + 16424) = 10;
  *(v3 + 16432) = 2;
  *(v3 + 16440) = "viridian";
  *(v3 + 16448) = 8;
  *(v3 + 16456) = 2;
  *(v3 + 16464) = "vivid auburn";
  *(v3 + 16472) = 12;
  *(v3 + 16480) = 2;
  *(v3 + 16488) = "vivid burgundy";
  *(v3 + 16496) = 14;
  *(v3 + 16504) = 2;
  *(v3 + 16512) = "vivid cerise";
  *(v3 + 16520) = 12;
  *(v3 + 16528) = 2;
  *(v3 + 16536) = "vivid tangerine";
  *(v3 + 16544) = 15;
  *(v3 + 16552) = 2;
  *(v3 + 16560) = "vivid violet";
  *(v3 + 16568) = 12;
  *(v3 + 16576) = 2;
  *(v3 + 16584) = "warm black";
  *(v3 + 16592) = 10;
  *(v3 + 16600) = 2;
  *(v3 + 16608) = "waterspout";
  *(v3 + 16616) = 10;
  *(v3 + 16624) = 2;
  *(v3 + 16632) = "wenge";
  *(v3 + 16640) = 5;
  *(v3 + 16648) = 2;
  *(v3 + 16656) = "wheat";
  *(v3 + 16664) = 5;
  *(v3 + 16672) = 2;
  *(v3 + 16680) = "white";
  *(v3 + 16688) = 5;
  *(v3 + 16696) = 2;
  *(v3 + 16704) = "white smoke";
  *(v3 + 16712) = 11;
  *(v3 + 16720) = 2;
  *(v3 + 16728) = "wild strawberry";
  *(v3 + 16736) = 15;
  *(v3 + 16744) = 2;
  *(v3 + 16752) = "wild watermelon";
  *(v3 + 16760) = 15;
  *(v3 + 16768) = 2;
  *(v3 + 16776) = "wild blue yonder";
  *(v3 + 16784) = 16;
  *(v3 + 16792) = 2;
  *(v3 + 16800) = "wine";
  *(v3 + 16808) = 4;
  *(v3 + 16816) = 2;
  *(v3 + 16824) = "wisteria";
  *(v3 + 16832) = 8;
  *(v3 + 16840) = 2;
  *(v3 + 16848) = "xanadu";
  *(v3 + 16856) = 6;
  *(v3 + 16864) = 2;
  *(v3 + 16872) = "yale blue";
  *(v3 + 16880) = 9;
  *(v3 + 16888) = 2;
  *(v3 + 16896) = "yellow";
  *(v3 + 16904) = 6;
  *(v3 + 16912) = 2;
  *(v3 + 16920) = "yellow orange";
  *(v3 + 16928) = 13;
  *(v3 + 16936) = 2;
  *(v3 + 16944) = "yellow green";
  *(v3 + 16952) = 12;
  *(v3 + 16960) = 2;
  *(v3 + 16968) = "zaffre";
  *(v3 + 16976) = 6;
  *(v3 + 16984) = 2;
  *(v3 + 16992) = "zinnwaldite brown";
  *(v3 + 17000) = 17;
  *(v3 + 17008) = 2;
  *(v3 + 7976) = 12;
  GEOLocationCoordinate2DMake(v11);
  v4 = sub_252E37B74();

  v6 = v4 - 128;
  if (v4 < 0x80)
  {
    goto LABEL_17;
  }

  if (v6 < 0x40)
  {
    LOWORD(v4) = v6 | 0x80;
LABEL_17:
    v9 = v4;
    goto LABEL_18;
  }

  if (v4 - 192 < 0x40)
  {
    LOWORD(v4) = (v4 - 192) | 0xC0;
    goto LABEL_17;
  }

  if (v4 - 256 < 0x40)
  {
    LOWORD(v4) = (v4 - 256) | 0x100;
    goto LABEL_17;
  }

  v7 = v4 - 320;
  if (v4 - 320 < 0x40)
  {
    v8 = 320;
LABEL_10:
    LOWORD(v4) = v7 | v8;
    goto LABEL_17;
  }

  if (v4 - 384 < 0x40)
  {
    LOWORD(v4) = (v4 - 384) | 0x180;
    goto LABEL_17;
  }

  if (v4 - 448 < 0x40)
  {
    LOWORD(v4) = (v4 - 448) | 0x1C0;
    goto LABEL_17;
  }

  if (v4 - 512 < 0x40)
  {
    LOWORD(v4) = (v4 - 512) | 0x200;
    goto LABEL_17;
  }

  v7 = v4 - 576;
  if (v4 - 576 < 0x40)
  {
    v8 = 576;
    goto LABEL_10;
  }

  v10 = v4 - 640;
  v9 = 691;
  LOWORD(v4) = 640;
  switch(v10)
  {
    case 0uLL:
      goto LABEL_17;
    case 1uLL:
      LOWORD(v4) = 641;
      goto LABEL_17;
    case 2uLL:
      LOWORD(v4) = 642;
      goto LABEL_17;
    case 3uLL:
      LOWORD(v4) = 643;
      goto LABEL_17;
    case 4uLL:
      LOWORD(v4) = 644;
      goto LABEL_17;
    case 5uLL:
      LOWORD(v4) = 645;
      goto LABEL_17;
    case 6uLL:
      LOWORD(v4) = 646;
      goto LABEL_17;
    case 7uLL:
      LOWORD(v4) = 647;
      goto LABEL_17;
    case 8uLL:
      LOWORD(v4) = 648;
      goto LABEL_17;
    case 9uLL:
      LOWORD(v4) = 649;
      goto LABEL_17;
    case 0xAuLL:
      LOWORD(v4) = 650;
      goto LABEL_17;
    case 0xBuLL:
      LOWORD(v4) = 651;
      goto LABEL_17;
    case 0xCuLL:
      LOWORD(v4) = 652;
      goto LABEL_17;
    case 0xDuLL:
      LOWORD(v4) = 653;
      goto LABEL_17;
    case 0xEuLL:
      LOWORD(v4) = 654;
      goto LABEL_17;
    case 0xFuLL:
      LOWORD(v4) = 655;
      goto LABEL_17;
    case 0x10uLL:
      LOWORD(v4) = 656;
      goto LABEL_17;
    case 0x11uLL:
      LOWORD(v4) = 657;
      goto LABEL_17;
    case 0x12uLL:
      LOWORD(v4) = 658;
      goto LABEL_17;
    case 0x13uLL:
      LOWORD(v4) = 659;
      goto LABEL_17;
    case 0x14uLL:
      LOWORD(v4) = 660;
      goto LABEL_17;
    case 0x15uLL:
      LOWORD(v4) = 661;
      goto LABEL_17;
    case 0x16uLL:
      LOWORD(v4) = 662;
      goto LABEL_17;
    case 0x17uLL:
      LOWORD(v4) = 663;
      goto LABEL_17;
    case 0x18uLL:
      LOWORD(v4) = 664;
      goto LABEL_17;
    case 0x19uLL:
      LOWORD(v4) = 665;
      goto LABEL_17;
    case 0x1AuLL:
      LOWORD(v4) = 666;
      goto LABEL_17;
    case 0x1BuLL:
      LOWORD(v4) = 667;
      goto LABEL_17;
    case 0x1CuLL:
      LOWORD(v4) = 668;
      goto LABEL_17;
    case 0x1DuLL:
      LOWORD(v4) = 669;
      goto LABEL_17;
    case 0x1EuLL:
      LOWORD(v4) = 670;
      goto LABEL_17;
    case 0x1FuLL:
      LOWORD(v4) = 671;
      goto LABEL_17;
    case 0x20uLL:
      LOWORD(v4) = 672;
      goto LABEL_17;
    case 0x21uLL:
      LOWORD(v4) = 673;
      goto LABEL_17;
    case 0x22uLL:
      LOWORD(v4) = 674;
      goto LABEL_17;
    case 0x23uLL:
      LOWORD(v4) = 675;
      goto LABEL_17;
    case 0x24uLL:
      LOWORD(v4) = 676;
      goto LABEL_17;
    case 0x25uLL:
      LOWORD(v4) = 677;
      goto LABEL_17;
    case 0x26uLL:
      LOWORD(v4) = 678;
      goto LABEL_17;
    case 0x27uLL:
      LOWORD(v4) = 679;
      goto LABEL_17;
    case 0x28uLL:
      LOWORD(v4) = 680;
      goto LABEL_17;
    case 0x29uLL:
      LOWORD(v4) = 681;
      goto LABEL_17;
    case 0x2AuLL:
      LOWORD(v4) = 682;
      goto LABEL_17;
    case 0x2BuLL:
      LOWORD(v4) = 683;
      goto LABEL_17;
    case 0x2CuLL:
      LOWORD(v4) = 684;
      goto LABEL_17;
    case 0x2DuLL:
      LOWORD(v4) = 685;
      goto LABEL_17;
    case 0x2EuLL:
      LOWORD(v4) = 686;
      goto LABEL_17;
    case 0x2FuLL:
      LOWORD(v4) = 687;
      goto LABEL_17;
    case 0x30uLL:
      LOWORD(v4) = 688;
      goto LABEL_17;
    case 0x31uLL:
      LOWORD(v4) = 689;
      goto LABEL_17;
    case 0x32uLL:
      LOWORD(v4) = 690;
      goto LABEL_17;
    case 0x33uLL:
      break;
    case 0x34uLL:
      v9 = 692;
      break;
    case 0x35uLL:
      v9 = 693;
      break;
    case 0x36uLL:
      v9 = 694;
      break;
    case 0x37uLL:
      v9 = 695;
      break;
    case 0x38uLL:
      v9 = 696;
      break;
    case 0x39uLL:
      v9 = 697;
      break;
    case 0x3AuLL:
      v9 = 698;
      break;
    case 0x3BuLL:
      v9 = 699;
      break;
    case 0x3CuLL:
      v9 = 700;
      break;
    case 0x3DuLL:
      v9 = 701;
      break;
    case 0x3EuLL:
      v9 = 702;
      break;
    case 0x3FuLL:
      v9 = 703;
      break;
    default:
      v9 = 709;
      break;
  }

LABEL_18:
  *v12 = v9;
  return result;
}