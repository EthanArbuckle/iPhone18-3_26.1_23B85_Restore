uint64_t sub_2529CAF70()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 280);
  v4 = *(v0 + 208);

  v5 = *(v0 + 368);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2529CB030()
{
  v1 = v0[27];
  v2 = v0[25];
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

  v8 = v0[35];
  v9 = v0[24];
  (*(v4 + 112))(v7, v0 + 12, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[30];
  v12 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2529CB168()
{
  v1 = v0[35];

  v2 = v0[43];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2529CB1F8(uint64_t a1)
{
  v3 = *(*v2 + 384);
  v4 = *(*v2 + 272);
  v5 = *v2;
  v5[49] = a1;
  v5[50] = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2529CB4B0, 0, 0);
  }

  else
  {
    v6 = v5[26];
    v7 = swift_task_alloc();
    v5[51] = v7;
    *v7 = v5;
    v7[1] = sub_2529CB39C;
    v8 = v5[27];

    return sub_252E174F4(v6);
  }
}

uint64_t sub_2529CB39C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v7 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v5 = sub_2529CB814;
  }

  else
  {
    v5 = sub_2529CB6B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529CB4B0()
{
  v1 = v0[47];
  v2 = v0[26];

  v3 = v0[50];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529CB548()
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v8 = *v1;
  *(*v1 + 440) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2529CBD90;
  }

  else
  {
    v6 = sub_2529CBC58;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529CB6B8()
{
  v1 = v0[49];
  v0[22] = v1;
  v2 = v0 + 22;
  v3 = v0[52];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[30];
  v9 = v0[27];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[56] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[57] = v12;
  *v12 = v0;
  v12[1] = sub_2529CB8B8;
  v13 = v0[30];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_2529CB814()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 208);

  v3 = *(v0 + 424);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2529CB8B8()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 224);
  v10 = *v1;
  *(*v1 + 464) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_2529CBB98;
  }

  else
  {
    v8 = *(v2 + 448);

    v7 = sub_2529CBA38;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2529CBA38()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
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

  v8 = *(v0 + 416);
  v9 = *(v0 + 392);
  v10 = *(v0 + 376);
  v11 = *(v0 + 208);
  v12 = *(v0 + 192);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2529CBB98()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 416);
  v3 = *(v0 + 376);
  v4 = *(v0 + 208);

  v5 = *(v0 + 464);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2529CBC58()
{
  v1 = v0[27];
  v2 = v0[25];
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

  v8 = v0[47];
  v9 = v0[24];
  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[30];
  v12 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2529CBD90()
{
  v1 = v0[47];

  v2 = v0[55];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2529CBE20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2529CBE40, 0, 0);
}

uint64_t sub_2529CBE40()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25299F248;
  v4 = v0[3];

  return sub_252C10198(0, v2, v4);
}

uint64_t sub_2529CBF14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2529CBF34, 0, 0);
}

uint64_t sub_2529CBF34()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2529CC350;
  v4 = v0[3];

  return sub_252C10354(0, v2, v4);
}

BOOL sub_2529CC02C(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = sub_252C285F0();
    if (v4 >> 62)
    {
      v7 = sub_252E378C4();

      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v5)
      {
LABEL_4:
        v6 = sub_252C7CEA4(a1);
LABEL_8:

        return v6;
      }
    }

    v6 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_2529CC0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_2529C9EE0(a1, a2, a3);
}

void *sub_2529CC17C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for WaterSystemResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_2529CC1E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_2529CBF14(v2, v3);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529CC2B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_2529CBE20(v2, v3);
}

uint64_t sub_2529CC354(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_252E33C44();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_252E33DB4();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529CC474, 0, 0);
}

uint64_t sub_2529CC474()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v5 = sub_252E34024();
  v0[14] = v5;
  sub_252E34044();
  v6 = sub_252E33DA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544C40);
  sub_252E379F4();

  MEMORY[0x2530AD570](v6, v8);

  sub_252CC3D90(0xD000000000000024, 0x8000000252E6FCE0, 0xD000000000000086, 0x8000000252E6FBB0);

  if ((sub_252CCFE10() & 1) == 0)
  {
    v10 = [v5 automatableTask];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for ControlAutomateHomeIntent();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v0[10];
        v14 = v0[7];
        v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

        v16 = [v15 attribute];
        v17 = *(v14 + 104);
        v18 = v13;
        v19 = v16;
        v20 = 1;
        v21 = 4;
        goto LABEL_9;
      }
    }
  }

  v22 = v0[10];
  v23 = *(v0[7] + 104);

  v21 = sub_252A63570();
  v18 = v22;
  v19 = 0;
  v20 = 2;
  v17 = v23;
LABEL_9:
  sub_252A6105C(v19, v20, v17, v21, v18);
  if (v6 == 0x6174616D6F747561 && v8 == 0xEF6B736154656C62 || (sub_252E37DB4() & 1) != 0)
  {

    v24 = sub_252B680FC();
    swift_beginAccess();
    v25 = *(v24 + 16);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v25 + 504 * v26 - 85);
    }

    else
    {
      v27 = 0;
    }

    v28 = v0[7];

    v29 = v28[6];
    v30 = v28[7];
    __swift_project_boxed_opaque_existential_1(v28 + 3, v29);
    v31 = swift_allocObject();
    v0[15] = v31;
    *(v31 + 16) = v28;
    *(v31 + 24) = v27;
    *(v31 + 32) = v5;

    v32 = v5;
    v33 = swift_task_alloc();
    v0[16] = v33;
    *v33 = v0;
    v33[1] = sub_2529CCA04;
    v34 = v0[10];
    v35 = v0[5];
    v36 = &unk_252E3FEE8;
    goto LABEL_16;
  }

  if (v6 == 0x72656767697274 && v8 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    v38 = v0[7];
    v29 = v38[6];
    v30 = v38[7];
    __swift_project_boxed_opaque_existential_1(v38 + 3, v29);
    v31 = swift_allocObject();
    v0[18] = v31;
    *(v31 + 16) = v38;
    *(v31 + 24) = v5;

    v39 = v5;
    v40 = swift_task_alloc();
    v0[19] = v40;
    *v40 = v0;
    v40[1] = sub_2529CCBCC;
    v34 = v0[10];
    v35 = v0[5];
    v36 = &unk_252E3FED8;
LABEL_16:

    return sub_252BDB3DC(v35, v36, v31, v34, v29, v30);
  }

  type metadata accessor for HomeAutomationError();
  sub_2529D02E4(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
  swift_allocError();
  *v41 = v6;
  v41[1] = v8;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v42 = v0[13];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v43 = v0[1];

  return v43();
}

uint64_t sub_2529CCA04()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);

  if (v0)
  {
    v6 = sub_2529CCD00;
  }

  else
  {
    v6 = sub_2529CCB38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529CCB38()
{
  v1 = *(v0 + 104);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529CCBCC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_2529CCD9C;
  }

  else
  {
    v6 = sub_2529D0534;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529CCD00()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529CCD9C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529CCE38(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v5 = type metadata accessor for HomeAutomationPromptForUserTaskParameters(0);
  *(v3 + 80) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v7 = sub_252E36324();
  *(v3 + 96) = v7;
  v8 = *(v7 - 8);
  *(v3 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529CCF70, 0, 0);
}

uint64_t sub_2529CCF70()
{
  v1 = v0[8];
  sub_252929E74(v0[7] + 64, (v0 + 2));
  v44 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = [v1 automatableTask];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ControlAutomateHomeIntent();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    v49 = v5 & 0xFFFFFFFFFFFFFF8;
    v50 = v5 & 0xC000000000000001;
    v45 = v0[13];
    v51 = (v45 + 32);
    v8 = MEMORY[0x277D84F90];
    v46 = v6;
    v47 = v5;
    while (1)
    {
      if (v50)
      {
        v9 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *(v49 + 16))
        {
          goto LABEL_24;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 homeEntityName];
      if (v12)
      {
        v14 = v0[14];
        v13 = v0[15];
        v15 = v0[12];
        v16 = v12;
        sub_252E36F34();

        sub_252E37024();

        v17 = *v51;
        (*v51)(v13, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2529F7F74(0, v8[2] + 1, 1, v8);
        }

        v19 = v8[2];
        v18 = v8[3];
        v0 = i;
        if (v19 >= v18 >> 1)
        {
          v8 = sub_2529F7F74(v18 > 1, v19 + 1, 1, v8);
        }

        v20 = i[15];
        v21 = i[12];
        v8[2] = v19 + 1;
        v17(v8 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v19, v20, v21);
        v6 = v46;
        v5 = v47;
      }

      else
      {
      }

      ++v7;
      if (v11 == v6)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v6 = sub_252E378C4();
  }

  v8 = MEMORY[0x277D84F90];
LABEL_27:
  v22 = v8;
  v24 = v0[12];
  v23 = v0[13];
  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[8];
  v28 = *(v0 + 160);

  v52 = *v44;
  v29 = v26[5];
  v30 = *(v23 + 56);
  v31 = 1;
  v30(&v25[v29], 1, 1, v24);
  v30(&v25[v26[8]], 1, 1, v24);
  *v25 = 0;
  v25[v26[6]] = 0;
  v25[v26[7]] = v28;
  *&v25[v26[9]] = v22;
  v32 = [v27 automatableTask];
  if (v32)
  {
    v33 = v32;
    type metadata accessor for ControlAutomateHomeIntent();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v36 = [v35 attribute];
      v31 = 0;
      v33 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = i;
  }

  else
  {
    v36 = 0;
    v37 = i;
  }

  v38 = v37[11];
  v39 = v37[9];
  static SemanticMapper.getSemanticKey(for:)(v36, v31, v39);
  sub_252956C98(v39, &v25[v29]);
  v40 = sub_252C07E14();
  v37[16] = v40;
  v41 = *(MEMORY[0x277D55BE8] + 4);
  v53 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v42 = swift_task_alloc();
  v37[17] = v42;
  *v42 = v37;
  v42[1] = sub_2529CD40C;

  return v53(0xD000000000000020, 0x8000000252E6FD10, v40);
}

uint64_t sub_2529CD40C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 128);
  v7 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v8 = sub_2529CD5FC;
  }

  else
  {
    *(v4 + 152) = a1;
    v8 = sub_2529CD558;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2529CD558()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];
  sub_2529D04D8(v0[11]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];
  v5 = v0[19];

  return v4(v5);
}

uint64_t sub_2529CD5FC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];
  sub_2529D04D8(v0[11]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_2529CD69C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_252E36324();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529CD768, 0, 0);
}

uint64_t sub_2529CD768()
{
  v1 = v0[8];
  sub_252929E74(v0[7] + 64, (v0 + 2));
  v25 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = [v1 automatableTask];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ControlAutomateHomeIntent();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    v30 = v5 & 0xFFFFFFFFFFFFFF8;
    v31 = v5 & 0xC000000000000001;
    v26 = v0[10];
    v8 = (v26 + 32);
    v9 = MEMORY[0x277D84F90];
    v28 = v0;
    v29 = v5;
    v27 = i;
    while (1)
    {
      if (v31)
      {
        v10 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *(v30 + 16))
        {
          goto LABEL_24;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = [v10 outerDeviceName];
      if (v13)
      {
        v14 = v0[11];
        v32 = v0[12];
        v15 = v0[9];
        v16 = v13;
        sub_252E36F34();

        sub_252E37024();

        v17 = *v8;
        (*v8)(v32, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2529F7F74(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        v0 = v28;
        if (v19 >= v18 >> 1)
        {
          v9 = sub_2529F7F74(v18 > 1, v19 + 1, 1, v9);
        }

        v20 = v28[12];
        v21 = v28[9];
        *(v9 + 2) = v19 + 1;
        v17(&v9[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19], v20, v21);
        v5 = v29;
        i = v27;
      }

      else
      {
      }

      ++v7;
      if (v12 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_27:
  v0[13] = v9;

  v22 = *v25;
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_2529CDA9C;

  return sub_252C0D360(0, v9);
}

uint64_t sub_2529CDA9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v8 = sub_2529CDC64;
  }

  else
  {
    *(v4 + 128) = a1;
    v8 = sub_2529CDBE8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2529CDBE8()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[16];

  return v3(v4);
}

uint64_t sub_2529CDC64()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2529CDCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[338] = a3;
  v3[337] = a2;
  v3[336] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541030, &qword_252E3FEB8) - 8) + 64) + 15;
  v3[339] = swift_task_alloc();
  v5 = sub_252E32BA4();
  v3[340] = v5;
  v6 = *(v5 - 8);
  v3[341] = v6;
  v7 = *(v6 + 64) + 15;
  v3[342] = swift_task_alloc();
  v3[343] = swift_task_alloc();
  v3[344] = swift_task_alloc();
  v3[345] = swift_task_alloc();
  v8 = sub_252E32E04();
  v3[346] = v8;
  v9 = *(v8 - 8);
  v3[347] = v9;
  v10 = *(v9 + 64) + 15;
  v3[348] = swift_task_alloc();
  v11 = sub_252E35BE4();
  v3[349] = v11;
  v12 = *(v11 - 8);
  v3[350] = v12;
  v13 = *(v12 + 64) + 15;
  v3[351] = swift_task_alloc();
  v14 = sub_252E35BF4();
  v3[352] = v14;
  v15 = *(v14 - 8);
  v3[353] = v15;
  v16 = *(v15 + 64) + 15;
  v3[354] = swift_task_alloc();
  v17 = sub_252E35C14();
  v3[355] = v17;
  v18 = *(v17 - 8);
  v3[356] = v18;
  v19 = *(v18 + 64) + 15;
  v3[357] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0) - 8) + 64) + 15;
  v3[358] = swift_task_alloc();
  v3[359] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490) - 8) + 64) + 15;
  v3[360] = swift_task_alloc();
  v3[361] = swift_task_alloc();
  v3[362] = swift_task_alloc();
  v3[363] = swift_task_alloc();
  v22 = sub_252E34164();
  v3[364] = v22;
  v23 = *(v22 - 8);
  v3[365] = v23;
  v24 = *(v23 + 64) + 15;
  v3[366] = swift_task_alloc();
  v25 = sub_252E33DB4();
  v3[367] = v25;
  v26 = *(v25 - 8);
  v3[368] = v26;
  v27 = *(v26 + 64) + 15;
  v3[369] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529CE0C8, 0, 0);
}

uint64_t sub_2529CE0C8()
{
  v144 = v0;
  v1 = *(v0 + 2952);
  v2 = *(v0 + 2944);
  v3 = *(v0 + 2936);
  v4 = *(v0 + 2704);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v5 = sub_252E34024();
  *(v0 + 2960) = v5;
  sub_252E34044();
  v6 = sub_252E33DA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  if (v6 == 0x6174616D6F747561 && v8 == 0xEF6B736154656C62 || (sub_252E37DB4() & 1) != 0)
  {

    v9 = *(v0 + 2928);
    v10 = *(v0 + 2920);
    v11 = *(v0 + 2912);
    v12 = *(v0 + 2696);
    sub_252E340E4();
    sub_252AB3FEC(v9, 0, __src);
    (*(v10 + 8))(v9, v11);
    memcpy((v0 + 1528), __src, 0x1F8uLL);
    if (sub_252956B94((v0 + 1528)) == 1)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 2696);
      v14 = sub_252E36AD4();
      __swift_project_value_buffer(v14, qword_27F544DA8);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();

      __dst[0] = 0xD000000000000026;
      __dst[1] = 0x8000000252E6FC90;
      v15 = sub_252E340C4();
      MEMORY[0x2530AD570](v15);

      sub_252CC4050(__dst[0], __dst[1], 0xD000000000000086, 0x8000000252E6FBB0, 0xD000000000000028, 0x8000000252E6FC40, 79);

      sub_2529515FC(6, 1, 0xD000000000000015, 0x8000000252E6FCC0);
LABEL_8:
      type metadata accessor for HomeAutomationError();
      sub_2529D02E4(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
      swift_allocError();
      sub_252E340E4();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_10:
      v16 = *(v0 + 2952);
      v17 = *(v0 + 2928);
      v18 = *(v0 + 2904);
      v19 = *(v0 + 2896);
      v20 = *(v0 + 2888);
      v21 = *(v0 + 2880);
      v22 = *(v0 + 2872);
      v23 = *(v0 + 2864);
      v24 = *(v0 + 2856);
      v25 = *(v0 + 2832);
      v121 = *(v0 + 2808);
      v122 = *(v0 + 2784);
      v125 = *(v0 + 2760);
      v128 = *(v0 + 2752);
      v131 = *(v0 + 2744);
      v134 = *(v0 + 2736);
      v137 = *(v0 + 2712);

      v26 = *(v0 + 8);
LABEL_63:

      return v26();
    }

    memcpy(__dst, (v0 + 1528), 0x1F8uLL);
    v27 = sub_252BADB6C();
    memcpy((v0 + 2032), __dst, 0x1F8uLL);
    sub_252935408(v0 + 2032);
    v28 = [v5 automatableTask];
    if (v28)
    {
      v29 = v28;
      type metadata accessor for ControlAutomateHomeIntent();
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

        v32 = type metadata accessor for MutableHomeUserTask();
        swift_allocObject();
        v33 = sub_252D6CA80(v31);
        v34 = [v27 value];
        if (v34)
        {
          type metadata accessor for MutableAttributeValue();
          swift_allocObject();
          v34 = sub_252D6CC80(v34);
        }

        swift_beginAccess();
        v35 = v33[4];
        v33[4] = v34;

        v36 = sub_252D6CB58();
        v37 = [v5 automatableTask];
        if (v37)
        {
          v38 = v37;
          v39 = swift_dynamicCastClass();
          if (v39)
          {
            v40 = *(v39 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
            *(v39 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = v36;

            v41 = v5;
LABEL_42:
            v63 = *(v0 + 2688);
            __dst[3] = v32;
            __dst[0] = v33;
            type metadata accessor for AutomateHomeIntent();

            sub_252E33CC4();

            goto LABEL_62;
          }
        }

        v67 = v5;
        goto LABEL_42;
      }
    }

    v63 = *(v0 + 2688);
    type metadata accessor for AutomateHomeIntent();
    memset(__dst, 0, 32);
    sub_252E33CC4();

LABEL_62:
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541038, &unk_252E47570);
    (*(*(v110 - 8) + 56))(v63, 0, 1, v110);
    v111 = *(v0 + 2952);
    v112 = *(v0 + 2928);
    v113 = *(v0 + 2904);
    v114 = *(v0 + 2896);
    v115 = *(v0 + 2888);
    v116 = *(v0 + 2880);
    v117 = *(v0 + 2872);
    v118 = *(v0 + 2864);
    v119 = *(v0 + 2856);
    v120 = *(v0 + 2832);
    v124 = *(v0 + 2808);
    v127 = *(v0 + 2784);
    v130 = *(v0 + 2760);
    v133 = *(v0 + 2752);
    v136 = *(v0 + 2744);
    v139 = *(v0 + 2736);
    v141 = *(v0 + 2712);

    v26 = *(v0 + 8);
    goto LABEL_63;
  }

  if ((v6 != 0x72656767697274 || v8 != 0xE700000000000000) && (sub_252E37DB4() & 1) == 0)
  {
    sub_2529515FC(6, 1, 0xD000000000000017, 0x8000000252E6FB60);
    type metadata accessor for HomeAutomationError();
    sub_2529D02E4(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v64 = v6;
    v64[1] = v8;
    goto LABEL_9;
  }

  v42 = *(v0 + 2928);
  v43 = *(v0 + 2920);
  v44 = *(v0 + 2912);
  v45 = *(v0 + 2696);
  sub_252E340E4();
  sub_252AB3FEC(v42, 0, __dst);
  (*(v43 + 8))(v42, v44);
  memcpy((v0 + 520), __dst, 0x1F8uLL);
  memcpy((v0 + 16), __dst, 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 2696);
    v47 = sub_252E36AD4();
    __swift_project_value_buffer(v47, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000024;
    __dst[1] = 0x8000000252E6FB80;
    v48 = sub_252E340C4();
    MEMORY[0x2530AD570](v48);

    sub_252CC4050(__dst[0], __dst[1], 0xD000000000000086, 0x8000000252E6FBB0, 0xD000000000000028, 0x8000000252E6FC40, 94);

    goto LABEL_8;
  }

  v49 = *(v0 + 2904);
  v50 = *(v0 + 2776);
  v51 = *(v0 + 2768);
  v52 = *(v50 + 56);
  *(v0 + 2968) = v52;
  *(v0 + 2976) = (v50 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v52(v49, 1, 1, v51);
  v53 = [v5 trigger];
  *(v0 + 2984) = v53;
  if (!v53)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v65 = *(v0 + 2904);
    v66 = sub_252E36AD4();
    __swift_project_value_buffer(v66, qword_27F544DA8);
    sub_252CC4050(0xD00000000000001BLL, 0x8000000252E6FC70, 0xD000000000000086, 0x8000000252E6FBB0, 0xD000000000000028, 0x8000000252E6FC40, 101);
    type metadata accessor for HomeAutomationError();
    sub_2529D02E4(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);

    sub_25293847C(v65, &qword_27F540F38, &unk_252E41490);
    goto LABEL_10;
  }

  v54 = v53;
  v55 = [v53 value];
  if (v55)
  {
    v56 = v55;
    type metadata accessor for EventTriggerValue();
    v57 = swift_dynamicCastClass();
    if (v57)
    {
      v58 = v57;
      v59 = *(v0 + 2904);
      sub_25293847C(v59, &qword_27F540F38, &unk_252E41490);
      v60 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
      swift_beginAccess();
      sub_252938414(v58 + v60, v59, &qword_27F540F38, &unk_252E41490);
    }
  }

  v61 = *(v0 + 56);
  if (v61 <= 1)
  {
    if (*(v0 + 56))
    {
      v62 = 4;
    }

    else
    {
      v62 = 3;
    }

    goto LABEL_51;
  }

  if (v61 == 2)
  {
    v62 = 1;
LABEL_51:
    v138 = v62;
    v135 = *(*(v0 + 2728) + 56);
    v135(*(v0 + 2872), 1, 1, *(v0 + 2720));
    v80 = [v54 recurrence];
    v132 = v52;
    if (v80)
    {
      v81 = *(v0 + 2720);
      v82 = v80;
      v140 = sub_252E37264();
    }

    else
    {
      v140 = 0;
    }

    v83 = *(v0 + 2896);
    v84 = *(v0 + 2888);
    v85 = *(v0 + 2872);
    v86 = *(v0 + 2864);
    v126 = *(v0 + 2720);
    v129 = *(v0 + 2768);
    sub_252938414(*(v0 + 2904), v83, &qword_27F540F38, &unk_252E41490);
    v123 = type metadata accessor for TriggerCondition();
    v87 = objc_allocWithZone(v123);
    v88 = sub_252E36F04();
    v89 = [v87 initWithIdentifier:0 displayString:v88 pronunciationHint:0];

    v90 = v89;
    [v90 setType_];
    sub_252938414(v85, v86, &qword_27F540F00, &unk_252E3FEC0);
    v91 = v84;
    sub_252938414(v83, v84, &qword_27F540F38, &unk_252E41490);
    v92 = type metadata accessor for EventTriggerValue();
    v93 = objc_allocWithZone(v92);
    v94 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v135(&v93[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v126);
    v95 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    v132(&v93[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v129);
    *&v93[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = v138;
    swift_beginAccess();
    sub_2529D032C(v86, &v93[v94], &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v91, &v93[v95], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v96 = sub_252E36F04();
    *(v0 + 2672) = v93;
    *(v0 + 2680) = v92;
    v97 = objc_msgSendSuper2((v0 + 2672), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v96, 0);

    sub_25293847C(v91, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v86, &qword_27F540F00, &unk_252E3FEC0);
    [v90 setValue_];

    if (v140)
    {
      v98 = *(v0 + 2720);
      v99 = sub_252E37254();
    }

    else
    {
      v99 = 0;
    }

    v100 = *(v0 + 2896);
    v101 = *(v0 + 2872);
    [v90 setRecurrence_];

    sub_25293847C(v100, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v101, &qword_27F540F00, &unk_252E3FEC0);
    v102 = *(v0 + 2960);
    v103 = v90;
    [v102 setTrigger_];
    v104 = v102;

    if (v103)
    {
      __dst[3] = v123;
      __dst[0] = v103;
LABEL_61:
      v106 = *(v0 + 2984);
      v107 = *(v0 + 2960);
      v108 = *(v0 + 2904);
      v63 = *(v0 + 2688);
      type metadata accessor for AutomateHomeIntent();
      v109 = v103;
      sub_252E33CC4();

      sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
      sub_25293847C(v108, &qword_27F540F38, &unk_252E41490);
      goto LABEL_62;
    }

LABEL_60:
    v103 = 0;
    memset(__dst, 0, 32);
    goto LABEL_61;
  }

  if (v61 == 3)
  {
    v62 = 2;
    goto LABEL_51;
  }

  if (!*(v0 + 32))
  {
    v105 = *(v0 + 2960);
    goto LABEL_60;
  }

  v68 = *(v0 + 2856);
  v69 = *(v0 + 2832);
  v70 = *(v0 + 2824);
  v71 = *(v0 + 2816);
  v72 = *(v0 + 2808);
  v73 = *(v0 + 2800);
  v74 = *(v0 + 2792);
  v75 = *(v0 + 2784);
  memcpy((v0 + 1024), (v0 + 16), 0x1F8uLL);
  (*(v70 + 104))(v69, *MEMORY[0x277D56130], v71);
  (*(v73 + 104))(v72, *MEMORY[0x277D56128], v74);
  sub_252CC6450(MEMORY[0x277D84F90]);
  sub_252E35C04();
  sub_252E32DF4();
  v76 = swift_task_alloc();
  *(v0 + 2992) = v76;
  *v76 = v0;
  v76[1] = sub_2529CF1F8;
  v77 = *(v0 + 2856);
  v78 = *(v0 + 2784);

  return sub_252BAE648(v77, v78);
}

uint64_t sub_2529CF1F8(uint64_t a1)
{
  v2 = *(*v1 + 2992);
  v3 = *(*v1 + 2856);
  v4 = *(*v1 + 2848);
  v5 = *(*v1 + 2840);
  v6 = *(*v1 + 2784);
  v7 = *(*v1 + 2776);
  v8 = *(*v1 + 2768);
  v10 = *v1;
  *(*v1 + 3000) = a1;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2529CF3B4, 0, 0);
}

uint64_t sub_2529CF3B4()
{
  v1 = *(v0 + 3000);
  if (v1)
  {
    v2 = [*(v0 + 3000) startDateComponents];
    if (v2)
    {
      v3 = *(v0 + 2760);
      v4 = *(v0 + 2752);
      v5 = *(v0 + 2728);
      v6 = *(v0 + 2720);
      v7 = v2;
      sub_252E32B24();

      (*(v5 + 32))(v3, v4, v6);
      v8 = [v1 dateInterval];
      v76 = v1;
      if (v8)
      {
        v9 = *(v0 + 2712);
        sub_252E32A74();

        v10 = 0;
      }

      else
      {
        v10 = 1;
      }

      v13 = *(v0 + 2984);
      v14 = *(v0 + 2760);
      v15 = *(v0 + 2744);
      v16 = *(v0 + 2728);
      v17 = *(v0 + 2720);
      v18 = *(v0 + 2712);
      v19 = sub_252E32A84();
      (*(*(v19 - 8) + 56))(v18, v10, 1, v19);
      sub_25293847C(v18, &qword_27F541030, &qword_252E3FEB8);
      v72 = *(v16 + 16);
      v72(v15, v14, v17);
      v20 = [v13 recurrence];
      if (v20)
      {
        v21 = *(v0 + 2720);
        v22 = v20;
        v74 = sub_252E37264();
      }

      else
      {
        v74 = 0;
      }

      v65 = *(v0 + 2968);
      v67 = *(v0 + 2976);
      v23 = *(v0 + 2888);
      v24 = *(v0 + 2880);
      v64 = *(v0 + 2768);
      v25 = *(v0 + 2744);
      v26 = *(v0 + 2736);
      v69 = *(v0 + 2728);
      v27 = *(v0 + 2720);
      sub_252938414(*(v0 + 2904), v24, &qword_27F540F38, &unk_252E41490);
      v28 = objc_allocWithZone(type metadata accessor for TriggerCondition());
      v29 = sub_252E36F04();
      v30 = [v28 initWithIdentifier:0 displayString:v29 pronunciationHint:0];

      v31 = v30;
      [v31 setType_];
      v72(v26, v25, v27);
      sub_252938414(v24, v23, &qword_27F540F38, &unk_252E41490);
      v32 = type metadata accessor for TimeTriggerValue();
      v33 = objc_allocWithZone(v32);
      v34 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
      v65(&v33[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate], 1, 1, v64);
      v72(&v33[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate], v26, v27);
      swift_beginAccess();
      sub_2529D032C(v23, &v33[v34], &qword_27F540F38, &unk_252E41490);
      swift_endAccess();
      v33[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval] = v8 != 0;
      v35 = sub_252E36F04();
      *(v0 + 2656) = v33;
      *(v0 + 2664) = v32;
      v36 = objc_msgSendSuper2((v0 + 2656), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v35, 0);

      sub_25293847C(v23, &qword_27F540F38, &unk_252E41490);
      v37 = *(v69 + 8);
      v37(v26, v27);
      [v31 setValue_];

      if (v74)
      {
        v38 = *(v0 + 2720);
        v39 = sub_252E37254();
      }

      else
      {
        v39 = 0;
      }

      v40 = *(v0 + 2880);
      v41 = *(v0 + 2760);
      v42 = *(v0 + 2744);
      v43 = *(v0 + 2720);
      [v31 setRecurrence_];

      sub_25293847C(v40, &qword_27F540F38, &unk_252E41490);
      v37(v42, v43);
      v37(v41, v43);
      v44 = *(v0 + 2960);
      v12 = v31;
      [v44 setTrigger_];
      v45 = v44;

      if (v12)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  v11 = *(v0 + 2960);
LABEL_7:
  v12 = 0;
LABEL_16:
  v46 = *(v0 + 2984);
  v47 = *(v0 + 2960);
  v48 = *(v0 + 2904);
  v49 = *(v0 + 2688);
  type metadata accessor for AutomateHomeIntent();
  v50 = v12;
  sub_252E33CC4();

  sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v48, &qword_27F540F38, &unk_252E41490);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541038, &unk_252E47570);
  (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
  v52 = *(v0 + 2952);
  v53 = *(v0 + 2928);
  v54 = *(v0 + 2904);
  v55 = *(v0 + 2896);
  v56 = *(v0 + 2888);
  v57 = *(v0 + 2880);
  v58 = *(v0 + 2872);
  v59 = *(v0 + 2864);
  v60 = *(v0 + 2856);
  v61 = *(v0 + 2832);
  v66 = *(v0 + 2808);
  v68 = *(v0 + 2784);
  v70 = *(v0 + 2760);
  v71 = *(v0 + 2752);
  v73 = *(v0 + 2744);
  v75 = *(v0 + 2736);
  v77 = *(v0 + 2712);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_2529CFA80()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *(sub_252B680FC() + 72) = 1;

  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v12);
  (*(v1 + 8))(v4, v0);
  memcpy(v13, v12, sizeof(v13));
  memcpy(v14, v12, sizeof(v14));
  if (sub_252956B94(v14) != 1)
  {
    v7 = BYTE1(v14[1]);
    if (BYTE1(v14[1]) > 1u)
    {
      if (BYTE1(v14[1]) == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = sub_252E37DB4();

      if (v8)
      {
LABEL_11:
        sub_252E339E4();
        return sub_25293847C(v13, &qword_27F5404C8, &unk_252E3FD60);
      }

      if (v7)
      {
LABEL_10:
        swift_bridgeObjectRelease_n();
        goto LABEL_11;
      }

      v9 = sub_252E37DB4();

      if (v9)
      {
        goto LABEL_11;
      }
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DA8);
    sub_252CC3D90(0x676E696C646E6148, 0xEE007475706E6920, 0xD00000000000008DLL, 0x8000000252E6FAD0);
    sub_252E339F4();
    return sub_25293847C(v13, &qword_27F5404C8, &unk_252E3FD60);
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6FAA0, 0xD00000000000008DLL, 0x8000000252E6FAD0);
  return sub_252E33A04();
}

uint64_t sub_2529CFDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_2529CDCDC(a1, a2, a3);
}

uint64_t sub_2529CFE50(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_2529CC354(a1, a2);
}

uint64_t sub_2529CFEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B370] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9BF8](a1, a2, v10, a4);
}

uint64_t sub_2529CFFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B378] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9C00](a1, a2, v10, a4);
}

uint64_t sub_2529D0084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for AutomateHomeNeedsValueStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2529D0160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for AutomateHomeNeedsValueStrategy();
  *v15 = v7;
  v15[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_2529D028C(uint64_t a1, uint64_t a2)
{
  result = sub_2529D02E4(&qword_27F541028, a2, type metadata accessor for AutomateHomeNeedsValueStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2529D02E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529D032C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_2529D0394()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_2529CD69C(v2, v3);
}

uint64_t sub_2529D042C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_2529CCE38(v2, v3, v4);
}

uint64_t sub_2529D04D8(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationPromptForUserTaskParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529D0538()
{
  v1 = v0;
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v2 = *(v0 + 16);
  v4 = *(*v3 + 568);

  v6 = v4(v5);

  v7 = *(v0 + 24);
  v8 = *(v1 + 32);
  v9 = *(*v6 + 576);

  v10 = v9(v7, v8);

  v11 = (*(*v10 + 592))(*(v1 + 40));

  v12 = (*(*v11 + 600))(*(v1 + 48));

  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(*v12 + 608);

  v16 = v15(v13, v14);

  v17 = (*(*v16 + 624))(*(v1 + 72));

  v18 = *(v1 + 80);
  v19 = *(v1 + 88);
  v20 = *(*v17 + 632);

  v21 = v20(v18, v19);

  v22 = *(v1 + 96);
  v23 = *(v1 + 104);
  v24 = *(*v21 + 648);

  v25 = v24(v22, v23);

  v26 = *(v1 + 112);
  v27 = *(v1 + 120);
  v28 = *(*v25 + 664);

  v29 = v28(v26, v27);

  v30 = *(v1 + 128);
  v31 = *(v1 + 136);
  v32 = *(*v29 + 680);

  v33 = v32(v30, v31);

  v34 = (*(*v33 + 728))(*(v1 + 144));

  v35 = (*(*v34 + 736))(*(v1 + 145));

  v37 = (*(*v35 + 760))(v36);

  return v37;
}

void *sub_2529D09E8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  return v0;
}

uint64_t sub_2529D0A38()
{
  sub_2529D09E8();

  return swift_deallocClassInstance();
}

uint64_t sub_2529D0A90(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = (v1 + 16);
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  v5 = [a1 entityIdentifiers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = 0;
  }

  v8 = *v4;
  *v4 = v7;

  v9 = [a1 homeEntityName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_252E36F34();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *(v2 + 32);
  *(v2 + 24) = v11;
  *(v2 + 32) = v13;

  *(v2 + 40) = [a1 entityType];
  *(v2 + 48) = [a1 outerDeviceType];
  v15 = [a1 outerDeviceName];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E36F34();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = *(v2 + 64);
  *(v2 + 56) = v17;
  *(v2 + 64) = v19;

  *(v2 + 72) = [a1 deviceType];
  v21 = [a1 homeName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_252E36F34();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = *(v2 + 88);
  *(v2 + 80) = v23;
  *(v2 + 88) = v25;

  v27 = [a1 zoneName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_252E36F34();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = *(v2 + 104);
  *(v2 + 96) = v29;
  *(v2 + 104) = v31;

  v33 = [a1 groupName];
  if (v33)
  {
    v34 = v33;
    v35 = sub_252E36F34();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = *(v2 + 120);
  *(v2 + 112) = v35;
  *(v2 + 120) = v37;

  v39 = [a1 roomName];
  if (v39)
  {
    v40 = v39;
    v41 = sub_252E36F34();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = *(v2 + 136);
  *(v2 + 128) = v41;
  *(v2 + 136) = v43;

  v45 = [a1 isExcludeFilter];
  sub_252956D08();
  v46 = sub_252E37674();
  if (v45)
  {
    v47 = sub_252E37694();

    v46 = v45;
  }

  else
  {
    v47 = 0;
  }

  *(v2 + 144) = v47 & 1;
  v48 = [a1 hasAllQuantifier];
  v49 = sub_252E37674();
  if (v48)
  {
    v50 = sub_252E37694();

    v49 = v48;
  }

  else
  {
    v50 = 0;
  }

  *(v2 + 145) = v50 & 1;
  return v2;
}

uint64_t sub_2529D0DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[142] = v3;
  v4[141] = a3;
  v4[140] = a2;
  v4[139] = a1;
  v5 = sub_252E34014();
  v4[143] = v5;
  v6 = *(v5 - 8);
  v4[144] = v6;
  v7 = *(v6 + 64) + 15;
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529D0EA8, 0, 0);
}

uint64_t sub_2529D0EA8()
{
  v51 = v0;
  v1 = v0[141];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    goto LABEL_34;
  }

  v3 = v0[141];
  v4 = sub_252C285F0();
  v5 = v4;
  __dst[0] = v2;
  if (v4 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      v17 = MEMORY[0x277D84F90];
      goto LABEL_19;
    }

    v54 = v1;
    v8 = 0;
    v1 = v5 & 0xC000000000000001;
LABEL_7:
    if (v1)
    {
      break;
    }

    if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v5 + 32 + 8 * v8);
      goto LABEL_10;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v9 = MEMORY[0x2530ADF00](v8, v5);
LABEL_10:
  v10 = v9;
  if (__OFADD__(v8++, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v12 = sub_252DA6828();
  v13 = *(v12 + 2);
  v14 = 32;
  do
  {
    if (!v13)
    {

      if (v8 != i)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

    v15 = *&v12[v14];
    v14 += 8;
    --v13;
  }

  while (v15 != 13);

  sub_252E37A94();
  v16 = *(__dst[0] + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
  if (v8 != i)
  {
    goto LABEL_7;
  }

LABEL_17:
  v17 = __dst[0];
  v1 = v54;
  v7 = MEMORY[0x277D84F90];
LABEL_19:

  __dst[0] = v7;
  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *(v17 + 16);
  }

  v18 = 0;
  v2 = MEMORY[0x277D84F90];
  while (v5 != v18)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x2530ADF00](v18, v17);
    }

    else
    {
      if (v18 >= *(v17 + 16))
      {
        goto LABEL_44;
      }

      v19 = *(v17 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v22 = sub_252DA124C(0);

    ++v18;
    if (v22)
    {
      MEMORY[0x2530AD700]();
      if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v2 = __dst[0];
      v18 = v21;
    }
  }

LABEL_34:
  v0[147] = v2;
  v24 = v0[142];
  v25 = v0[140];
  v26 = swift_allocObject();
  v0[148] = v26;
  v26[2] = v24;
  v26[3] = v2;
  v26[4] = v25;
  v27 = v25;

  if (v1)
  {
    v28 = v24[6];
    v29 = v0[141];
    v30 = *__swift_project_boxed_opaque_existential_1(v24 + 3, v28);
    v31 = type metadata accessor for HomeAutomationSecuritySystemResponses();
    v32 = swift_allocObject();
    v0[149] = v32;
    *(v32 + 16) = 0;
    *(v32 + 24) = v2;
    memcpy(v0 + 2, v24 + 14, 0x1F8uLL);
    v33 = v27;

    memcpy(__dst, v24 + 14, 0x1F8uLL);
    v34 = v33;

    sub_2529D291C((v0 + 2), (v0 + 65));
    v35 = sub_252953488(v27, __dst, 0);
    v0[150] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v36 = swift_allocObject();
    v0[151] = v36;
    *(v36 + 16) = xmmword_252E3C280;
    *(v36 + 32) = 0xD000000000000017;
    *(v36 + 40) = 0x8000000252E6FE70;
    v37 = MEMORY[0x277D839B0];
    *(v36 + 48) = 0;
    *(v36 + 72) = v37;
    strcpy((v36 + 80), "intentContext");
    *(v36 + 94) = -4864;
    v38 = type metadata accessor for HomeAutomationIntentContext(0);
    *(v36 + 96) = v35;
    *(v36 + 120) = v38;
    *(v36 + 128) = 0x65736E6F70736572;
    *(v36 + 168) = v31;
    *(v36 + 136) = 0xE900000000000073;
    *(v36 + 144) = v32;
    v39 = *(MEMORY[0x277D55BE8] + 4);
    v54 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

    v40 = swift_task_alloc();
    v0[152] = v40;
    *v40 = v0;
    v40[1] = sub_2529D1500;
    v41 = v54;

    return v41(0xD000000000000025, 0x8000000252E6FE40, v36);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v43 = v0[146];
    v44 = v0[142];
    v45 = sub_252E36AD4();
    __swift_project_value_buffer(v45, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v46 = v44[12];
    v47 = v44[13];
    __swift_project_boxed_opaque_existential_1(v44 + 9, v46);
    sub_252AD7CC4();
    v48 = swift_task_alloc();
    v0[158] = v48;
    *v48 = v0;
    v48[1] = sub_2529D18FC;
    v49 = v0[146];
    v53 = v47;

    return sub_252BDB88C((v0 + 128), &unk_252E3FFE0, v26, v49, 0, 0, 0, v46);
  }
}

uint64_t sub_2529D1500(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1216);
  v5 = *(*v2 + 1208);
  v8 = *v2;
  *(v3 + 1224) = a1;
  *(v3 + 1232) = v1;

  if (v1)
  {
    v6 = sub_2529D1830;
  }

  else
  {
    v6 = sub_2529D1638;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529D1638()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[147];
  v4 = v0[142];
  v5 = v0[141];
  v6 = v0[140];

  swift_bridgeObjectRelease_n();
  v7 = swift_task_alloc();
  v0[155] = v7;
  *v7 = v0;
  v7[1] = sub_2529D1718;
  v8 = v0[142];

  return sub_252E174F4(v5);
}

uint64_t sub_2529D1718(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1240);
  v7 = *v2;
  *(v3 + 1248) = a1;
  *(v3 + 1256) = v1;

  if (v1)
  {
    v5 = sub_2529D1BC8;
  }

  else
  {
    v5 = sub_2529D1A6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529D1830()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[147];
  v5 = v0[142];
  v6 = v0[141];
  v7 = v0[140];

  swift_bridgeObjectRelease_n();

  v8 = v0[154];
  v9 = v0[146];
  v10 = v0[145];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2529D18FC()
{
  v2 = *(*v1 + 1264);
  v3 = *(*v1 + 1168);
  v4 = *(*v1 + 1152);
  v5 = *(*v1 + 1144);
  v8 = *v1;
  *(*v1 + 1272) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2529D20FC;
  }

  else
  {
    v6 = sub_2529D1FD4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529D1A6C()
{
  v1 = v0 + 138;
  v2 = v0[156];
  v3 = v0[153];
  v0[138] = v3;
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

  v8 = v0[145];
  v9 = v0[142];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[160] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[161] = v12;
  *v12 = v0;
  v12[1] = sub_2529D1C54;
  v13 = v0[145];

  return sub_252BDB88C((v0 + 133), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_2529D1BC8()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1128);

  v3 = *(v0 + 1256);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2529D1C54()
{
  v2 = *v1;
  v3 = *(*v1 + 1288);
  v4 = *(*v1 + 1160);
  v5 = *(*v1 + 1152);
  v6 = *(*v1 + 1144);
  v10 = *v1;
  *(*v1 + 1296) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_2529D1F24;
  }

  else
  {
    v8 = *(v2 + 1280);

    v7 = sub_2529D1DD4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2529D1DD4()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1120);
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

  v8 = *(v0 + 1248);
  v9 = *(v0 + 1224);
  v10 = *(v0 + 1184);
  v11 = *(v0 + 1128);
  v12 = *(v0 + 1112);
  (*(v4 + 112))(v7, v0 + 1064, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));

  v13 = *(v0 + 1168);
  v14 = *(v0 + 1160);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2529D1F24()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1128);

  v5 = *(v0 + 1296);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1160);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2529D1FD4()
{
  v1 = v0[142];
  v2 = v0[140];
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

  v8 = v0[148];
  v9 = v0[139];
  (*(v4 + 112))(v7, v0 + 128, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  v10 = v0[146];
  v11 = v0[145];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2529D20FC()
{
  v1 = v0[148];

  v2 = v0[159];
  v3 = v0[146];
  v4 = v0[145];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2529D2174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[130] = a3;
  v3[129] = a2;
  v3[128] = a1;
  return MEMORY[0x2822009F8](sub_2529D219C, 0, 0);
}

uint64_t sub_2529D219C()
{
  v18 = v0;
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  v4 = *__swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v5 = type metadata accessor for HomeAutomationSecuritySystemResponses();
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

  return v16(0xD000000000000025, 0x8000000252E6FE40, v10);
}

uint64_t sub_2529D23F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1072);
  v6 = *(*v2 + 1064);
  v7 = *v2;
  *(*v2 + 1080) = v1;

  if (v1)
  {
    v8 = sub_2529D25D8;
  }

  else
  {
    *(v4 + 1088) = a1;
    v8 = sub_2529D253C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2529D253C()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[128];

  v6 = v0[1];
  v7 = v0[136];

  return v6(v7);
}

uint64_t sub_2529D25D8()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[128];

  v6 = v0[1];
  v7 = v0[135];

  return v6();
}

uint64_t sub_2529D2698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_2529D0DD0(a1, a2, a3);
}

void *sub_2529D274C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetSecuritySystemStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_2529D27B0(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 13)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_6:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  if ([v5 taskType] == 4)
  {

    return 1;
  }

  else
  {
    v8 = [v6 taskType];

    return v8 == 5;
  }
}

uint64_t sub_2529D2874()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_2529D2174(v2, v3, v4);
}

uint64_t sub_2529D291C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529D298C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[159] = v3;
  v4[158] = a3;
  v4[157] = a2;
  v4[156] = a1;
  v5 = type metadata accessor for HomeAutomationSetNumericValueParameters(0);
  v4[160] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[161] = swift_task_alloc();
  v7 = *(*(sub_252E33944() - 8) + 64) + 15;
  v4[162] = swift_task_alloc();
  v8 = sub_252E34014();
  v4[163] = v8;
  v9 = *(v8 - 8);
  v4[164] = v9;
  v10 = *(v9 + 64) + 15;
  v4[165] = swift_task_alloc();
  v4[166] = swift_task_alloc();
  v4[167] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529D2ACC, 0, 0);
}

uint64_t sub_2529D2ACC()
{
  v35 = v0;
  v1 = *(v0 + 1264);
  *(v0 + 1224) = 0u;
  if (v1)
  {
    v2 = sub_252C2A7E8();
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 1344) = v2;
  v3 = [*(v0 + 1256) userTask];
  if (v3)
  {
    v4 = v3;
    if (v2)
    {
      v5 = v2;
      v2 = sub_252C32D14();
    }

    *(v0 + 1224) = v2;
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D84F90];
    *(v6 + 16) = MEMORY[0x277D84F90];
    if (v2)
    {

      v7 = v2;
    }

    type metadata accessor for HomeAutomationNumericEntityResponses();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v8 + 24) = v7;
    *(v0 + 1232) = v8;
  }

  else
  {
    v8 = 0;
    v2 = 0;
  }

  *(v0 + 1352) = v2;
  v9 = *(v0 + 1272);
  v10 = *(v0 + 1256);
  memcpy((v0 + 16), (v9 + 112), 0x1F8uLL);
  memcpy(__dst, (v9 + 112), 0x1F8uLL);
  sub_2529D291C(v0 + 16, v0 + 520);
  v11 = v10;
  v12 = sub_252953488(v10, __dst, 0);
  *(v0 + 1360) = v12;

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v13 + 288), v0 + 1024);

  v14 = *(v0 + 1048);
  v15 = *(v0 + 1056);
  __swift_project_boxed_opaque_existential_1((v0 + 1024), v14);
  LOBYTE(v10) = (*(v15 + 120))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1024));
  v16 = *(v0 + 1272);
  if (v10)
  {
    *(v0 + 1368) = *(v16 + 64);
    if (v1)
    {
      v17 = *(v0 + 1264);

      v18 = sub_252C2AC20();
    }

    else
    {

      v18 = 0;
    }

    v23 = swift_task_alloc();
    *(v0 + 1376) = v23;
    *v23 = v0;
    v23[1] = sub_2529D2F2C;

    return sub_252D2A778(v8, v18 & 1, v12);
  }

  else
  {
    sub_252929E74(v16 + 24, v0 + 1064);
    v19 = __swift_project_boxed_opaque_existential_1((v0 + 1064), *(v0 + 1088));
    if (v1)
    {
      v20 = (v0 + 1232);
      v21 = *(v0 + 1264);
      v22 = sub_252C2AC20();
    }

    else
    {
      v20 = (v0 + 1232);
      v22 = 0;
    }

    v25 = *(v0 + 1288);
    v26 = *(v0 + 1280);
    v33 = *v19;
    v27 = sub_252E36324();
    v28 = *(*(v27 - 8) + 56);

    v28(v25, 1, 1, v27);
    v28(v25 + v26[10], 1, 1, v27);
    *(v25 + v26[5]) = 0;
    *(v25 + v26[6]) = v22 & 1;
    *(v25 + v26[7]) = 0;
    *(v25 + v26[8]) = 0;
    *(v25 + v26[9]) = 0;
    sub_2529D4F7C(v25, v20, (v0 + 1224), v12);
    v29 = sub_252C09E14();
    *(v0 + 1472) = v29;
    v30 = *(MEMORY[0x277D55BE8] + 4);
    v32 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v31 = swift_task_alloc();
    *(v0 + 1480) = v31;
    *v31 = v0;
    v31[1] = sub_2529D3B14;

    return v32(0xD00000000000001ELL, 0x8000000252E66610, v29);
  }
}

uint64_t sub_2529D2F2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1376);
  v5 = *(*v2 + 1368);
  v6 = *(*v2 + 1360);
  v9 = *v2;
  *(v3 + 1384) = a1;
  *(v3 + 1392) = v1;

  if (v1)
  {
    v7 = sub_2529D4B48;
  }

  else
  {
    v7 = sub_2529D3088;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2529D3088()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1336);
  v4 = *(v0 + 1296);
  v5 = *(v0 + 1264);
  v6 = *(v0 + 1256);
  v7 = swift_task_alloc();
  *(v0 + 1400) = v7;
  v7[2] = v6;
  v7[3] = v0 + 1232;
  v7[4] = v2;
  *(v0 + 1576) = sub_252DC6D48(v6, v5);
  sub_252E33924();
  sub_252E33F54();
  v8 = v1;
  if (v5)
  {
    v9 = *(v0 + 1264);
    v10 = swift_task_alloc();
    *(v0 + 1408) = v10;
    *v10 = v0;
    v10[1] = sub_2529D32F0;
    v11 = *(v0 + 1272);

    return sub_252DC810C(v9);
  }

  else
  {
    v13 = *(v0 + 1384);
    *(v0 + 1432) = v13;
    v14 = *(v0 + 1400);
    v15 = *(v0 + 1272);
    v16 = v15[13];
    __swift_project_boxed_opaque_existential_1(v15 + 9, v15[12]);
    v17 = swift_task_alloc();
    *(v0 + 1440) = v17;
    *(v17 + 16) = v13;
    v18 = swift_task_alloc();
    *(v0 + 1448) = v18;
    *(v18 + 16) = &unk_252E40098;
    *(v18 + 24) = v14;
    v19 = v13;
    v20 = swift_task_alloc();
    *(v0 + 1456) = v20;
    *v20 = v0;
    v20[1] = sub_2529D3408;
    v21 = *(v0 + 1336);
    v23 = *(v0 + 1576);

    return sub_252A199A8(v0 + 1184, &unk_252E400A0, v17, &unk_252E3D1A0, v18, v21, 0, 0);
  }
}

uint64_t sub_2529D32F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1408);
  v7 = *v2;
  *(v3 + 1416) = a1;
  *(v3 + 1424) = v1;

  if (v1)
  {
    v5 = sub_2529D39F8;
  }

  else
  {
    v5 = sub_2529D3864;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529D3408()
{
  v2 = *v1;
  v3 = *(*v1 + 1456);
  v4 = *v1;
  *(v2 + 1464) = v0;

  v5 = *(v2 + 1448);
  v6 = *(v2 + 1440);
  if (v0)
  {

    v7 = sub_2529D374C;
  }

  else
  {

    v7 = sub_2529D357C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2529D357C()
{
  v1 = v0[159];
  v2 = v0[157];
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

  v8 = v0[179];
  v9 = v0[175];
  v23 = v0[173];
  v24 = v0[170];
  v25 = v0[168];
  v10 = v0[167];
  v11 = v0[164];
  v12 = v0[163];
  v13 = v0[156];
  (*(v4 + 112))(v7, v0 + 148, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 148);
  (*(v11 + 8))(v10, v12);

  v14 = v0[169];
  v15 = v0[167];
  v16 = v0[166];
  v17 = v0[165];
  v18 = v0[162];
  v19 = v0[161];

  v20 = v0[154];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2529D374C()
{
  v1 = v0[179];
  v2 = v0[167];
  v3 = v0[164];
  v4 = v0[163];

  (*(v3 + 8))(v2, v4);
  v5 = v0[183];
  v6 = v0[175];
  v7 = v0[173];
  v8 = v0[170];
  v9 = v0[168];

  v10 = v0[169];
  v11 = v0[167];
  v12 = v0[166];
  v13 = v0[165];
  v14 = v0[162];
  v15 = v0[161];
  v16 = v0[154];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2529D3864()
{
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1384);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 1416));

    v2 = v3;
  }

  *(v0 + 1432) = v2;
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1272);
  v6 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v5[12]);
  v7 = swift_task_alloc();
  *(v0 + 1440) = v7;
  *(v7 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 1448) = v8;
  *(v8 + 16) = &unk_252E40098;
  *(v8 + 24) = v4;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 1456) = v10;
  *v10 = v0;
  v10[1] = sub_2529D3408;
  v11 = *(v0 + 1336);
  v14 = *(v0 + 1576);

  return sub_252A199A8(v0 + 1184, &unk_252E400A0, v7, &unk_252E3D1A0, v8, v11, 0, 0);
}

uint64_t sub_2529D39F8()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v4 = *(v0 + 1264);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 1424);
  v6 = *(v0 + 1400);
  v7 = *(v0 + 1384);
  v8 = *(v0 + 1360);
  v9 = *(v0 + 1344);

  v10 = *(v0 + 1352);
  v11 = *(v0 + 1336);
  v12 = *(v0 + 1328);
  v13 = *(v0 + 1320);
  v14 = *(v0 + 1296);
  v15 = *(v0 + 1288);
  v16 = *(v0 + 1232);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2529D3B14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1480);
  v5 = *(*v2 + 1472);
  v8 = *v2;
  *(v3 + 1488) = a1;
  *(v3 + 1496) = v1;

  if (v1)
  {
    v6 = sub_2529D3FF8;
  }

  else
  {
    v6 = sub_2529D3C4C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529D3C4C()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);
  sub_2529D5C88(*(v0 + 1288));

  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
  v6 = swift_allocObject();
  *(v0 + 1504) = v6;
  *(v6 + 16) = v1;
  v7 = v1;
  *(v0 + 1577) = sub_252DC6D48(v5, v4);
  if (v3)
  {
    v8 = *(v0 + 1488);
    v9 = *(v0 + 1344);
    v10 = v8;
    v11 = swift_task_alloc();
    *(v0 + 1512) = v11;
    *v11 = v0;
    v11[1] = sub_2529D3EE0;
    v12 = *(v0 + 1272);

    return sub_252E174F4(v9);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 1328);
    v15 = *(v0 + 1272);
    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v17 = *(v15 + 96);
    __swift_project_boxed_opaque_existential_1((v15 + 72), v17);
    sub_252AD7CC4();
    v18 = swift_task_alloc();
    *(v0 + 1536) = v18;
    *v18 = v0;
    v18[1] = sub_2529D40E4;
    v19 = *(v0 + 1328);

    return sub_252BDB88C(v0 + 1104, &unk_252E40080, v6, v19, 0, 0, 0, v17);
  }
}

uint64_t sub_2529D3EE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1512);
  v7 = *v2;
  *(v3 + 1520) = a1;
  *(v3 + 1528) = v1;

  if (v1)
  {
    v5 = sub_2529D43B0;
  }

  else
  {
    v5 = sub_2529D4254;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529D3FF8()
{
  v1 = v0[170];
  v2 = v0[168];
  sub_2529D5C88(v0[161]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 133);
  v3 = v0[187];
  v4 = v0[169];
  v5 = v0[167];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[162];
  v9 = v0[161];
  v10 = v0[154];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2529D40E4()
{
  v2 = *(*v1 + 1536);
  v3 = *(*v1 + 1328);
  v4 = *(*v1 + 1312);
  v5 = *(*v1 + 1304);
  v8 = *v1;
  *(*v1 + 1544) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2529D4A6C;
  }

  else
  {
    v6 = sub_2529D48EC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529D4254()
{
  v1 = (v0 + 1240);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1488);
  *(v0 + 1240) = v3;
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

  v8 = *(v0 + 1320);
  v9 = *(v0 + 1272);
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  *(v0 + 1552) = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  *(v0 + 1560) = v12;
  *v12 = v0;
  v12[1] = sub_2529D44AC;
  v13 = *(v0 + 1577);
  v14 = *(v0 + 1320);

  return sub_252BDB88C(v0 + 1144, &unk_252E3F140, v11, v14, 0, 0, v13, v10);
}

uint64_t sub_2529D43B0()
{
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1344);

  v3 = *(v0 + 1528);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1360);

  v6 = *(v0 + 1352);
  v7 = *(v0 + 1336);
  v8 = *(v0 + 1328);
  v9 = *(v0 + 1320);
  v10 = *(v0 + 1296);
  v11 = *(v0 + 1288);
  v12 = *(v0 + 1232);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2529D44AC()
{
  v2 = *v1;
  v3 = *(*v1 + 1560);
  v4 = *(*v1 + 1320);
  v5 = *(*v1 + 1312);
  v6 = *(*v1 + 1304);
  v10 = *v1;
  *(*v1 + 1568) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_2529D47D4;
  }

  else
  {
    v8 = *(v2 + 1552);

    v7 = sub_2529D462C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2529D462C()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1256);
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

  v8 = *(v0 + 1520);
  v9 = *(v0 + 1504);
  v10 = *(v0 + 1488);
  v11 = *(v0 + 1344);
  v12 = *(v0 + 1248);
  (*(v4 + 112))(v7, v0 + 1144, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1144));

  v13 = *(v0 + 1344);
  v14 = *(v0 + 1360);

  v15 = *(v0 + 1352);
  v16 = *(v0 + 1336);
  v17 = *(v0 + 1328);
  v18 = *(v0 + 1320);
  v19 = *(v0 + 1296);
  v20 = *(v0 + 1288);

  v21 = *(v0 + 1232);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2529D47D4()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1344);

  v5 = *(v0 + 1568);
  v6 = *(v0 + 1488);
  v7 = *(v0 + 1360);

  v8 = *(v0 + 1352);
  v9 = *(v0 + 1336);
  v10 = *(v0 + 1328);
  v11 = *(v0 + 1320);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1232);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2529D48EC()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1256);
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

  v8 = *(v0 + 1504);
  v9 = *(v0 + 1248);
  (*(v4 + 112))(v7, v0 + 1104, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));

  v10 = *(v0 + 1360);

  v11 = *(v0 + 1352);
  v12 = *(v0 + 1336);
  v13 = *(v0 + 1328);
  v14 = *(v0 + 1320);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);

  v17 = *(v0 + 1232);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2529D4A6C()
{
  v1 = v0[188];

  v2 = v0[193];
  v3 = v0[186];
  v4 = v0[170];

  v5 = v0[169];
  v6 = v0[167];
  v7 = v0[166];
  v8 = v0[165];
  v9 = v0[162];
  v10 = v0[161];
  v11 = v0[154];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2529D4B48()
{
  v1 = v0[170];
  v2 = v0[168];

  v3 = v0[174];
  v4 = v0[169];
  v5 = v0[167];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[162];
  v9 = v0[161];
  v10 = v0[154];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2529D4C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529D4CB0, 0, 0);
}

uint64_t sub_2529D4CB0()
{
  v1 = **(v0 + 32);
  *(v0 + 56) = v1;

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2529D4D64;
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);

  return sub_252A23D80(v3, v5, v1, v4);
}

uint64_t sub_2529D4D64()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2529D4F10;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2529D4E80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529D4E80()
{
  sub_2529645E8(v0[6], v0[2]);
  type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_2529D4F10()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_2529D4F7C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v41[-v13];
  v15 = *a2;
  v16 = type metadata accessor for HomeAutomationSetNumericValueParameters(0);
  v17 = v16[9];
  v18 = *(a1 + v17);
  *(a1 + v17) = v15;

  v19 = *a3;
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationEntityResponses();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = v20;
  v22 = v16[8];
  v23 = *(a1 + v22);

  *(a1 + v22) = v21;
  v24 = v16[7];
  v25 = *(a1 + v24);

  *(a1 + v24) = a4;
  v26 = sub_25294833C(1u, 0, 0);
  if (!v26)
  {
    goto LABEL_10;
  }

  v27 = v26;
  v28 = [v26 dictionary];
  if (!v28)
  {

LABEL_10:
    v36 = sub_252E36324();
    (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
    goto LABEL_11;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v42[0] = 0;
  v31 = [v30 dataWithPropertyList:v29 format:200 options:0 error:v42];
  v32 = v42[0];
  if (!v31)
  {
    v37 = v32;
    v38 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_10;
  }

  v33 = sub_252E32D34();
  v35 = v34;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v33, v35);
  v36 = sub_252E36324();
  (*(*(v36 - 8) + 56))(v14, 0, 1, v36);
LABEL_11:
  sub_252956C98(v14, a1 + v16[10]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v36 - 8) + 56))(v12, 0, 1, v36);
  result = sub_252956C98(v12, a1);
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2529D52E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2529D530C, 0, 0);
}

uint64_t sub_2529D530C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v13 = sub_252E378C4();

      if (!v13)
      {
LABEL_4:
        if (sub_252C28D24(v0[3]))
        {
          v5 = v0[5];
          sub_252C24354(v2, v0[2]);

          v6 = v0[1];

          return v6();
        }
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v14 = v2;
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    v15[1] = sub_2529D55C4;
    v11 = v0[4];
    v16 = v0[5];
    v9 = v0[2];
    v10 = v0[3];
    goto LABEL_12;
  }

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_2529D54D0;
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];
  v11 = 0;
LABEL_12:

  return sub_2529D298C(v9, v10, v11);
}

uint64_t sub_2529D54D0()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2529D55C4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2529D56E0;
  }

  else
  {

    v4 = sub_2529D5EC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529D56E0()
{
  v1 = v0[4];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2529D5748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2529D576C, 0, 0);
}

uint64_t sub_2529D576C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v13 = sub_252E378C4();

      if (!v13)
      {
LABEL_4:
        if (sub_252C28D24(v0[3]))
        {
          v5 = v0[5];
          sub_252C24354(v2, v0[2]);

          v6 = v0[1];

          return v6();
        }
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v14 = v2;
    v15 = swift_task_alloc();
    v0[6] = v15;
    *v15 = v0;
    v15[1] = sub_252963D44;
    v11 = v0[4];
    v16 = v0[5];
    v9 = v0[2];
    v10 = v0[3];
    goto LABEL_12;
  }

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_252963EC4;
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];
  v11 = 0;
LABEL_12:

  return sub_2529D298C(v9, v10, v11);
}

uint64_t sub_2529D5958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_2529D298C(a1, a2, a3);
}

uint64_t sub_2529D5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_2529D5748(a1, a2, a3);
}

uint64_t sub_2529D5AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_2529D52E8(a1, a2, a3);
}

void *sub_2529D5B74@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetNumericValueResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

id sub_2529D5BD8(void *a1, uint64_t a2)
{
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (!a2)
  {
LABEL_8:

    return 0;
  }

  v5 = sub_252C32D14();
  if (!sub_252C4B5D4())
  {

    goto LABEL_8;
  }

  if (v5 >> 62)
  {
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v6 != 0);
}

uint64_t sub_2529D5C88(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSetNumericValueParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529D5CE4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_2529D5D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_2529D4C1C(a1, v4, v5, v6);
}

uint64_t sub_2529D5E2C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t type metadata accessor for RoomEntity()
{
  result = qword_27F541068;
  if (!qword_27F541068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2529D5F64(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F541050;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  v15 = qword_27F541058;
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_252E36734();
  v18 = qword_27F541060;
  v19 = *(v12 + 48);
  v20 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v18) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v21 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v21;
}

uint64_t sub_2529D6110()
{
  v1 = *(v0 + qword_27F541050);

  v2 = *(v0 + qword_27F541058);

  v3 = *(v0 + qword_27F541060);
}

uint64_t sub_2529D6160()
{
  v0 = sub_252E364A4();
  v1 = *(v0 + qword_27F541050);

  v2 = *(v0 + qword_27F541058);

  v3 = *(v0 + qword_27F541060);

  return swift_deallocClassInstance();
}

uint64_t sub_2529D61EC()
{
  v0 = *aComAppleHome;

  return v0;
}

uint64_t sub_2529D6240(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2529D62A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2529D62F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_2529D64F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RoomEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529D6550(unint64_t a1)
{
  i = a1;
  v2 = *(a1 + 16);
  v3 = v2 + 1;
  v4 = 344;
  v5 = MEMORY[0x277D84F90];
  while (--v3)
  {
    v6 = *(a1 + v4);
    if (v6 != 2)
    {
      v4 += 504;
      if ((v6 & 1) == 0)
      {
        continue;
      }
    }

    if (qword_27F53F520 != -1)
    {
LABEL_22:
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000002CLL;
    __dst[1] = 0x8000000252E6FF20;
    v8 = MEMORY[0x2530AD730](i, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v8);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000097, 0x8000000252E6FF50);

    v9 = 0;
    v10 = i + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v11 = (v10 + 504 * v9);
      for (i = v9; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        memcpy(__dst, v11, sizeof(__dst));
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }

        if (LOBYTE(__dst[39]) == 2 || (__dst[39] & 1) != 0)
        {
          break;
        }

        v11 += 504;
        if (v9 == v2)
        {
          return v5;
        }
      }

      sub_2529353AC(__dst, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, *(v5 + 16) + 1, 1);
        v5 = v18;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2529AA480((v13 > 1), v14 + 1, 1);
        v5 = v18;
      }

      *(v5 + 16) = v14 + 1;
      memcpy((v5 + 504 * v14 + 32), __dst, 0x1F8uLL);
    }

    while (v9 != v2);
    return v5;
  }

  return v5;
}

void sub_2529D679C()
{
  v1 = [v0 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v4 = sub_252E378C4();
LABEL_4:

  if (!v4)
  {
    return;
  }

  v5 = [v0 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    if (!(v7 >> 62))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_7:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_8;
      }

LABEL_21:

      return;
    }
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_8:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2530ADF00](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 outerDeviceName];
    if (v13)
    {
      v14 = v13;

      return;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_2529D6968()
{
  v1 = [v0 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v4 = sub_252E378C4();
LABEL_4:

  if (!v4)
  {
    return;
  }

  v5 = [v0 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    if (!(v7 >> 62))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_7:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_8;
      }

LABEL_24:

      return;
    }
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_8:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2530ADF00](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 homeEntityName];
    if (v13)
    {

      v14 = [v11 entityType];
      if (v14 == 7)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_2529D6B60()
{
  v1 = [v0 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v4 = sub_252E378C4();
LABEL_4:

  if (v4)
  {
    v5 = [v0 filters];
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

    if (v7 >> 62)
    {
LABEL_27:
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    do
    {
      v4 = v8 != v9;
      if (v8 == v9)
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ([v10 deviceType])
      {

        break;
      }

      v12 = [v11 outerDeviceType];

      ++v9;
    }

    while (!v12);
  }

  return v4;
}

uint64_t sub_2529D6D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x8000000252E70090 == a2;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x52545F4D52414C41;
    v8 = 0xEF44455245474749;
LABEL_7:
    v9 = sub_25299CB2C(v7, v8);
    v10 = type metadata accessor for HomeAutomationSecuritySystemResponses();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v9;
    a3[3] = v10;
    *a3 = result;
    return result;
  }

  if (a1 == 0x65526D7261736964 && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x4D5241534944;
    v8 = 0xE600000000000000;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x8000000252E700B0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x4D52415F59415741;
LABEL_16:
    v8 = 0xE800000000000000;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x8000000252E700D0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x52415F544847494ELL;
    v8 = 0xE90000000000004DLL;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x8000000252E700F0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x4D52415F59415453;
    goto LABEL_16;
  }

  return sub_252C86824(a1, a2, a3);
}

id static HomeStore.shared.getter()
{
  sub_252D806C0();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  sub_252D7ED58(0x726F7453656D6F48, 0xE900000000000065, sub_2529DE544, v1, 15);

  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  if (qword_2814B0E30)
  {
    v2 = qword_2814B0E30;
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for HomeStore()) init];
    v4 = qword_2814B0E30;
    qword_2814B0E30 = v3;
    v2 = v3;
  }

  sub_252E37614();
  return v2;
}

unint64_t sub_2529D70FC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v33)
          {
            goto LABEL_45;
          }

          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_2529E6488(&qword_27F541360, &unk_27F53FBC0, &unk_252E3B240);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v19 = sub_2529FBE00(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Service();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          if (v33 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D7470(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject zones];
      sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_2529E6488(&unk_27F5413C0, &qword_27F5413B8, &unk_252E404C0);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413B8, &unk_252E404C0);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D7804(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject actionSets];
      sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_2529E6488(&qword_27F541380, &qword_27F541378, &qword_252E404A0);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541378, &qword_252E404A0);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D7B98(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject serviceGroups];
      sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_2529E6488(&qword_27F5413A0, &qword_27F541398, &qword_252E404B0);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541398, &qword_252E404B0);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D7F2C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject rooms];
      sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_2529E6488(&qword_27F5413B0, &qword_27F5413A8, &qword_252E404B8);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413A8, &qword_252E404B8);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D82C0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject triggers];
      sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_2529E6488(&qword_27F541370, &qword_27F541368, &qword_252E40498);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541368, &qword_252E40498);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D8654(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v37 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_2529DF758(&v37, &v36);
      if (v2)
      {
        goto LABEL_42;
      }

      v8 = v36;
      v6 = (v36 >> 62);
      if (v36 >> 62)
      {
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_252E378C4();
        v12 = v26 + v9;
        if (__OFADD__(v26, v9))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_22;
        }

        v13 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v10)
        {
LABEL_22:
          sub_252E378C4();
          goto LABEL_23;
        }

        v13 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v6)
      {
        v18 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v13 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v9)
        {
          goto LABEL_46;
        }

        v19 = v13 + 8 * v15 + 32;
        v30 = v13;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_48;
          }

          sub_2529E6488(&unk_27F541350, &qword_27F541348, &unk_252E40488);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541348, &unk_252E40488);
            v21 = sub_2529FBE00(v35, j, v8);
            v23 = *v22;

            (v21)(v35, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          type metadata accessor for MatterAccessory();
          swift_arrayInitWithCopy();
        }

        v2 = 0;
        if (v9 >= 1)
        {
          v24 = *(v30 + 16);
          v7 = __OFADD__(v24, v9);
          v25 = v24 + v9;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v30 + 16) = v25;
        }
      }

      else
      {

        if (v9 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_252E378C4();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2529D89C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2529E6204(a3, v27 - v11);
  v13 = sub_252E37344();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2529E6274(v12);
  }

  else
  {
    sub_252E37334();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_252E37324();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_252E36FD4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2529E6274(a3);

      return v25;
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

  sub_2529E6274(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

dispatch_semaphore_t sub_2529D8C84()
{
  result = dispatch_semaphore_create(1);
  qword_2814B1370 = result;
  return result;
}

uint64_t sub_2529D8CA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
  os_unfair_lock_lock(v5 + 4);
  v6 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];

  v9 = v8;
  [v9 lock];
  [v9 unlock];

  if (*(v7 + 16) && (v10 = sub_252A44A10(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v7 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(v5 + 4);
  return v12;
}

void *sub_2529D8D90()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager);
  v2 = v1;
  return v1;
}

uint64_t sub_2529D8DC0()
{
  v37 = sub_252E32E84();
  v1 = *(v37 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v37);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager) homes];
  sub_25293F638(0, &qword_2814B0210, 0x277CD1A60);
  v6 = sub_252E37264();

  v38 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v8 = 0;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    v36 = v6 & 0xC000000000000001;
    v32 = v1 + 4;
    v33 = i;
    v34 = v6;
    while (1)
    {
      if (v36)
      {
        v9 = MEMORY[0x2530ADF00](v8, v6);
      }

      else
      {
        if (v8 >= *(v35 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v1 = v9;
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = type metadata accessor for Home();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v1;
      v15 = v1;
      v16 = [v15 uniqueIdentifier];
      v17 = v4;
      sub_252E32E64();

      v18 = [v15 name];
      v19 = sub_252E36F34();
      v21 = v20;

      v22 = [v15 assistantIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_252E36F34();
        v1 = v25;
      }

      else
      {

        v24 = 0;
        v1 = 0;
      }

      v4 = v17;
      v26 = (*v32)(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v17, v37);
      v27 = (v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v27 = v19;
      v27[1] = v21;
      *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
      v28 = (v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v28 = v24;
      v28[1] = v1;
      MEMORY[0x2530AD700](v26);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v8;
      v6 = v34;
      if (v10 == v33)
      {
        v29 = v38;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_20:

  return v29;
}

uint64_t sub_2529D9114()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager);
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
  os_unfair_lock_lock(v2 + 4);
  sub_2529E445C(&v42);
  os_unfair_lock_unlock(v2 + 4);
  result = v42;
  if (v42)
  {
    return result;
  }

  if (qword_2814B0A98 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v4 = sub_252E36AD4();
    v5 = __swift_project_value_buffer(v4, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000015, 0x8000000252E70140, 0xD00000000000006FLL, 0x8000000252E70160);
    v6 = [objc_opt_self() siriCurrentHome];
    v7 = [v6 currentHomeIdentifier];

    if (v7)
    {
      v41 = sub_252E36F34();
      v9 = v8;
    }

    else
    {
      v41 = 0;
      v9 = 0;
    }

    v40 = v1;
    v10 = [v1 homes];
    sub_25293F638(0, &qword_2814B0210, 0x277CD1A60);
    v11 = sub_252E37264();

    if (v11 >> 62)
    {
      break;
    }

    v12 = v11;
    v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_33;
    }

LABEL_8:
    v37 = "Computing currentHome";
    v38 = v5;
    v39 = v2;
    v13 = 0;
    v14 = v12;
    v15 = v12 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v16 = MEMORY[0x2530ADF00](v13, v14);
      }

      else
      {
        if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v19 = [v16 assistantIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_252E36F34();
        v2 = v22;

        if (v9)
        {
          if (v21 == v41 && v9 == v2)
          {

LABEL_27:

LABEL_28:
            v42 = 0;
            v43 = 0xE000000000000000;
            sub_252E379F4();

            v42 = 0xD000000000000016;
            v43 = 0x8000000252E70230;
            [v40 currentHome];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5410D0, &unk_252E403B0);
            v25 = sub_252E36F94();
            MEMORY[0x2530AD570](v25);

            MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E70250);
            v26 = v17;
            v27 = [v26 description];
            v28 = sub_252E36F34();
            v30 = v29;

            MEMORY[0x2530AD570](v28, v30);

            sub_252CC3D90(v42, v43, 0xD00000000000006FLL, 0x8000000252E70160);

            v32 = MEMORY[0x28223BE20](v31);
            MEMORY[0x28223BE20](v32);
            os_unfair_lock_lock(v39 + 4);
            sub_2529E6564(&v42);
            os_unfair_lock_unlock(v39 + 4);

            return v42;
          }

          v24 = sub_252E37DB4();

          if (v24)
          {
            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      else if (!v9)
      {
        goto LABEL_28;
      }

      ++v13;
      if (v18 == v1)
      {

        v2 = v39;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v12 = v11;
  v1 = sub_252E378C4();
  if (v1)
  {
    goto LABEL_8;
  }

LABEL_33:

LABEL_34:

  v33 = [v40 currentHome];
  if (v33)
  {
    v34 = v33;
    sub_252CC3D90(0xD000000000000031, 0x8000000252E701F0, 0xD00000000000006FLL, 0x8000000252E70160);
    v36 = MEMORY[0x28223BE20](v35);
    MEMORY[0x28223BE20](v36);
    os_unfair_lock_lock(v2 + 4);
    sub_2529E6564(&v42);
    os_unfair_lock_unlock(v2 + 4);

    return v42;
  }

  else
  {
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E701D0, 0xD00000000000006FLL, 0x8000000252E70160);
    return 0;
  }
}

uint64_t sub_2529D96F0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
    v5 = type metadata accessor for Home();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();

    v8 = sub_2529E65BC(v4);
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_2529D9788@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Home();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2529E65BC(a2);
  v10 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome);
  *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome) = v9;

  v11 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  swift_allocObject();
  v14 = sub_2529E65BC(v11);

  *a3 = v14;
  return result;
}

uint64_t sub_2529D98BC(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void), void *a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v47 = sub_252E32E84();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2529D8DC0();
  v9 = v8;
  v52 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v46 = v5;
    v12 = 0;
    v5 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v13 = MEMORY[0x2530ADF00](v12, v9);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v13 = *(v9 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v10 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v15 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      MEMORY[0x2530AD700](v16);
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v45 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v12;
      if (v14 == v10)
      {
        v17 = v52;
        v5 = v46;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_16:

  v18 = a1(v17);

  v52 = v11;
  if (v18 >> 62)
  {
    v9 = sub_252E378C4();
    if (v9)
    {
LABEL_18:
      v19 = 0;
      v45 = v18 & 0xFFFFFFFFFFFFFF8;
      v46 = v18 & 0xC000000000000001;
      v43 = (v5 + 32);
      v44 = v18;
      while (1)
      {
        if (v46)
        {
          v20 = MEMORY[0x2530ADF00](v19, v18);
        }

        else
        {
          if (v19 >= *(v45 + 16))
          {
            goto LABEL_34;
          }

          v20 = *(v18 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_33;
        }

        v23 = v48(0);
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        v26 = swift_allocObject();
        *(v26 + *v49) = v21;
        v27 = v21;
        v28 = [v27 uniqueIdentifier];
        sub_252E32E64();

        v29 = [v27 name];
        v30 = sub_252E36F34();
        v32 = v31;

        v33 = [v27 assistantIdentifier];
        if (v33)
        {
          a1 = v33;
          v5 = sub_252E36F34();
          v35 = v34;
        }

        else
        {

          v5 = 0;
          v35 = 0;
        }

        v36 = (*v43)(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v51, v47);
        v37 = (v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v37 = v30;
        v37[1] = v32;
        *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = v50;
        v38 = (v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v38 = v5;
        v38[1] = v35;
        MEMORY[0x2530AD700](v36);
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v39 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v19;
        v18 = v44;
        if (v22 == v9)
        {
          v40 = v52;
          goto LABEL_38;
        }
      }
    }
  }

  else
  {
    v9 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_18;
    }
  }

  v40 = MEMORY[0x277D84F90];
LABEL_38:

  return v40;
}

uint64_t sub_2529D9D50()
{
  v0 = sub_2529D8DC0();
  v1 = v0;
  v48 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_49;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v5 = *(v1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      MEMORY[0x2530AD700](v8);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v4;
      if (v6 == v2)
      {
        v9 = v48;
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  v1 = sub_25291B664(v9);

  v49 = v3;
  if (v1 >> 62)
  {
    v10 = sub_252E378C4();
    if (v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_18:
      v11 = 0;
      v12 = v1 & 0xC000000000000001;
      v13 = v1 & 0xFFFFFFFFFFFFFF8;
      v47 = *MEMORY[0x277CCE8C8];
      v45 = ". Returning .robotVacuumCleaner";
      while (1)
      {
        if (v12)
        {
          v14 = MEMORY[0x2530ADF00](v11, v1);
        }

        else
        {
          if (v11 >= *(v13 + 16))
          {
            goto LABEL_48;
          }

          v14 = *(v1 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_47;
        }

        v17 = [v14 matterNodeID];
        if (!v17)
        {
          goto LABEL_31;
        }

        v18 = [v15 matterNodeID];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 unsignedLongLongValue];

          if (!v20)
          {
            goto LABEL_31;
          }
        }

        v21 = sub_252E37434();
        v23 = v22;
        if (v21 == sub_252E36F34() && v23 == v24)
        {
        }

        else
        {
          v25 = sub_252E37DB4();

          if ((v25 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        if (([v15 isBridged] & 1) == 0)
        {
          v30 = type metadata accessor for MatterAccessory();
          v31 = *(v30 + 48);
          v32 = *(v30 + 52);
          v33 = swift_allocObject();
          v34 = [v15 matterNodeID];
          if (v34)
          {
            v35 = v34;
            v36 = [v34 unsignedLongLongValue];

            *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v36;
            if (!v36)
            {
LABEL_40:
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v37 = sub_252E36AD4();
              __swift_project_value_buffer(v37, qword_27F544CB8);
              sub_252E379F4();

              v48 = 0xD000000000000018;
              v38 = [v15 name];
              v39 = sub_252E36F34();
              v41 = v40;

              MEMORY[0x2530AD570](v39, v41);

              MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
              sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, v45 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 19);

              v12 = v1 & 0xC000000000000001;
              v13 = v1 & 0xFFFFFFFFFFFFFF8;
            }

            v29 = v15;
            goto LABEL_32;
          }

          *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
          goto LABEL_40;
        }

LABEL_31:
        v26 = type metadata accessor for Accessory();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        v29 = v15;
LABEL_32:
        sub_252D4CE7C(v29);
        MEMORY[0x2530AD700]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        sub_252E372D4();
        ++v11;
        if (v16 == v10)
        {
          v43 = v49;
          goto LABEL_52;
        }
      }
    }
  }

  v43 = MEMORY[0x277D84F90];
LABEL_52:

  return v43;
}

uint64_t sub_2529DA2BC()
{
  v0 = sub_2529D8DC0();
  v1 = v0;
  v45 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_51;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v5 = *(v1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      MEMORY[0x2530AD700](v8);
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v4;
      if (v6 == v2)
      {
        v9 = v45;
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  v1 = sub_25291B664(v9);

  if (v1 >> 62)
  {
    v10 = sub_252E378C4();
    if (v10)
    {
LABEL_18:
      v11 = 0;
      v43 = *MEMORY[0x277CCE8C8];
      v41 = ". Returning .robotVacuumCleaner";
      v12 = MEMORY[0x277D84F90];
      v13 = &off_279711000;
LABEL_19:
      v42 = v12;
      v14 = v11;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2530ADF00](v14, v1);
        }

        else
        {
          if (v14 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v15 = *(v1 + 8 * v14 + 32);
        }

        v16 = v15;
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_49;
        }

        v17 = [v15 v13[297]];
        if (v17)
        {

          v18 = [v16 v13[297]];
          if (!v18 || (v19 = v18, v20 = [v18 unsignedLongLongValue], v19, v20))
          {
            v21 = v13;
            v22 = sub_252E37434();
            v24 = v23;
            if (v22 == sub_252E36F34() && v24 == v25)
            {

              v13 = v21;
            }

            else
            {
              v26 = sub_252E37DB4();

              v13 = v21;
              if ((v26 & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            if (([v16 isBridged] & 1) == 0)
            {
              v27 = type metadata accessor for MatterAccessory();
              v28 = *(v27 + 48);
              v29 = *(v27 + 52);
              v30 = swift_allocObject();
              v31 = [v16 v13 + 82];
              if (v31)
              {
                v32 = v31;
                v33 = [v31 unsignedLongLongValue];

                *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v33;
                if (!v33)
                {
LABEL_39:
                  if (qword_27F53F4B0 != -1)
                  {
                    swift_once();
                  }

                  v34 = sub_252E36AD4();
                  __swift_project_value_buffer(v34, qword_27F544CB8);
                  sub_252E379F4();

                  v45 = 0xD000000000000018;
                  v35 = [v16 name];
                  v36 = sub_252E36F34();
                  v38 = v37;

                  MEMORY[0x2530AD570](v36, v38);

                  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
                  sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, v41 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 19);

                  v13 = v21;
                }

                sub_252D4CE7C(v16);
                MEMORY[0x2530AD700]();
                if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_252E372A4();
                }

                sub_252E372D4();
                v12 = v3;
                if (v11 != v10)
                {
                  goto LABEL_19;
                }

                goto LABEL_54;
              }

              *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
              goto LABEL_39;
            }
          }
        }

LABEL_22:

        ++v14;
        if (v11 == v10)
        {
          v12 = v42;
          goto LABEL_54;
        }
      }
    }
  }

  else
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_18;
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_54:

  return v12;
}

unint64_t sub_2529DA860()
{
  v0 = sub_2529D9D50();
  v1 = sub_2529D70FC(v0);

  return v1;
}

uint64_t sub_2529DA8E4()
{
  v18 = MEMORY[0x277D84F90];
  v0 = sub_2529D8DC0();
  if (v0 >> 62)
  {
    type metadata accessor for Entity();
    v1 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v1 = v0;
  }

  sub_25297B290(v1);
  v2 = sub_2529D984C();
  if (v2 >> 62)
  {
    type metadata accessor for Entity();
    v3 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v3 = v2;
  }

  sub_25297B290(v3);
  v4 = sub_2529D9884();
  if (v4 >> 62)
  {
    type metadata accessor for Entity();
    v5 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v5 = v4;
  }

  sub_25297B290(v5);
  v6 = sub_2529D9D18();
  if (v6 >> 62)
  {
    type metadata accessor for Entity();
    v7 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v7 = v6;
  }

  sub_25297B290(v7);
  v8 = sub_2529DA828();
  if (v8 >> 62)
  {
    type metadata accessor for Entity();
    v9 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v9 = v8;
  }

  sub_25297B290(v9);
  v10 = sub_2529D9D50();
  if (v10 >> 62)
  {
    type metadata accessor for Entity();
    v11 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v11 = v10;
  }

  sub_25297B290(v11);
  v12 = sub_2529D9D50();
  v13 = sub_2529D70FC(v12);

  if (v13 >> 62)
  {
    type metadata accessor for Entity();

    v14 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v14 = v13;
  }

  sub_25297B290(v14);
  v15 = sub_2529DA8AC();
  if (v15 >> 62)
  {
    type metadata accessor for Entity();
    v16 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v16 = v15;
  }

  sub_25297B290(v16);
  return v18;
}

uint64_t sub_2529DACA8()
{
  v1 = v0;
  v381 = sub_252E36DF4();
  v380 = *(v381 - 8);
  v2 = *(v380 + 64);
  MEMORY[0x28223BE20](v381);
  v379 = &v372 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = sub_252E36E04();
  v384 = *(v385 - 8);
  v4 = *(v384 + 64);
  MEMORY[0x28223BE20](v385);
  v383 = &v372 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = sub_252E32E84();
  v6 = *(v412 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v412);
  v411 = &v372 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F528 != -1)
  {
    goto LABEL_355;
  }

LABEL_2:
  v9 = sub_252E36AD4();
  v10 = __swift_project_value_buffer(v9, qword_27F544E20);
  v388 = "Computing currentHome";
  v389 = v10;
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E70770, 0xD00000000000006FLL, 0x8000000252E70160);
  v11 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedStableHomeGraphHash);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  v382 = v11;
  v14 = v11[2];

  v15 = v14;
  [v15 lock];
  [v15 unlock];

  v400 = v1;
  if (v12)
  {
    v16 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    [v18 lock];
    [v18 unlock];

    if (v17 == 1)
    {
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E707B0, 0xD00000000000006FLL, v388 | 0x8000000000000000);
      return v13;
    }
  }

  v417 = 0;
  v418 = 0xE000000000000000;
  v19 = sub_2529D8DC0();
  v20 = v19;
  v415 = MEMORY[0x277D84F90];
  if (!(v19 >> 62))
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_357:
  v21 = sub_252E378C4();
LABEL_8:
  if (v21)
  {
    v22 = 0;
    v1 = v20 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2530ADF00](v22, v20);
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_333;
        }
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_334;
        }

        v23 = *(v20 + 8 * v22 + 32);

        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_333;
        }
      }

      v25 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      MEMORY[0x2530AD700](v26);
      if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v415 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v410 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v22;
    }

    while (v24 != v21);
  }

  v415 = sub_252ACB588(v27);
  v20 = 0;
  sub_2529E3010(&v415, sub_252935460, &qword_2814B0210, 0x277CD1A60);

  v28 = v415;
  if ((v415 & 0x8000000000000000) == 0 && (v415 & 0x4000000000000000) == 0)
  {
    v29 = *(v415 + 16);
    if (!v29)
    {
      goto LABEL_359;
    }

LABEL_23:
    v30 = 0;
    v31 = v28 & 0xC000000000000001;
    v376 = v28 + 32;
    v410 = (v6 + 8);
    v375 = v28;
    v374 = v29;
    v373 = v28 & 0xC000000000000001;
    while (1)
    {
      if (v31)
      {
        v32 = v30;
        v33 = MEMORY[0x2530ADF00](v30, v28);
      }

      else
      {
        if (v30 >= *(v28 + 16))
        {
          goto LABEL_364;
        }

        v32 = v30;
        v33 = *(v376 + 8 * v30);
      }

      v391 = v33;
      v34 = __OFADD__(v32, 1);
      v35 = v32 + 1;
      if (v34)
      {
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        for (i = v20; ; i = *(v171 - 32))
        {

          __break(1u);
LABEL_373:
          ;
        }
      }

      v377 = v35;
      v36 = v391;
      v37 = [v391 name];
      v38 = sub_252E36F34();
      v40 = v39;

      v41 = [v36 uniqueIdentifier];
      v42 = v411;
      sub_252E32E64();

      v1 = sub_252E32E24();
      v44 = v43;
      v409 = *v410;
      v409(v42, v412);
      v45 = [v36 assistantIdentifier];
      if (v45)
      {
        v46 = v45;
        v47 = sub_252E36F34();
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0xE000000000000000;
      }

      v415 = v38;
      v416 = v40;

      MEMORY[0x2530AD570](v1, v44);

      MEMORY[0x2530AD570](v47, v49);

      MEMORY[0x2530AD570](v415, v416);

      v6 = [v391 rooms];
      v394 = sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
      sub_252E37264();

      v415 = sub_252ACB55C(v50);
      sub_2529E3010(&v415, sub_252935460, &qword_2814B0200, 0x277CD1D88);

      v51 = v415;
      v387 = v415;

      v52 = *(v415 + 16);
      if (v52)
      {
        goto LABEL_35;
      }

LABEL_118:

      v150 = [v391 zones];
      sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
      sub_252E37264();

      v415 = sub_252ACB504(v151);
      sub_2529E3010(&v415, sub_252935460, &qword_2814B01E8, 0x277CD1F50);
      v404 = 0;

      v152 = v415;
      if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
      {
        v153 = sub_252E378C4();
        if (!v153)
        {
          goto LABEL_153;
        }

LABEL_121:
        v6 = 0;
        v402 = v152 & 0xC000000000000001;
        v398 = v152 + 32;
        v401 = v152;
        v399 = v153;
        while (2)
        {
          if (v402)
          {
            v154 = MEMORY[0x2530ADF00](v6, v152);
          }

          else
          {
            if (v6 >= *(v152 + 16))
            {
              goto LABEL_351;
            }

            v154 = *(v398 + 8 * v6);
          }

          v405 = v154;
          v34 = __OFADD__(v6++, 1);
          if (v34)
          {
            goto LABEL_337;
          }

          v403 = v6;
          v155 = v405;
          v156 = [v405 name];
          v157 = sub_252E36F34();
          v6 = v158;

          v159 = [v155 uniqueIdentifier];
          v160 = v411;
          sub_252E32E64();

          v161 = sub_252E32E24();
          v163 = v162;
          v409(v160, v412);
          v164 = [v155 assistantIdentifier];
          if (v164)
          {
            v165 = v164;
            v1 = sub_252E36F34();
            v167 = v166;
          }

          else
          {
            v1 = 0;
            v167 = 0xE000000000000000;
          }

          v415 = v157;
          v416 = v6;

          MEMORY[0x2530AD570](v161, v163);

          MEMORY[0x2530AD570](v1, v167);

          MEMORY[0x2530AD570](v415, v416);

          v168 = [v405 rooms];
          v169 = sub_252E37264();

          if (v169 >> 62)
          {
            v190 = sub_252E378C4();
            if (v190)
            {
              v191 = v190;
              v20 = sub_252E11384(v190, 0);

              sub_252E06104(v20 + 32, v191, v169);
              v6 = v192;

              if (v6 != v191)
              {
                goto LABEL_367;
              }
            }

            else
            {
              v20 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v20 = v169 & 0xFFFFFFFFFFFFFF8;
          }

          v415 = v20;
          v170 = v404;
          sub_2529E3010(&v415, sub_252935460, &qword_2814B0200, 0x277CD1D88);
          v171 = &v419;
          v404 = v170;
          if (v170)
          {
            goto LABEL_373;
          }

          v172 = v415;
          if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
          {
            v193 = v415;
            v173 = sub_252E378C4();
            v172 = v193;
            if (v173)
            {
LABEL_137:
              if (v173 < 1)
              {
                goto LABEL_346;
              }

              v174 = 0;
              v406 = (v172 & 0xC000000000000001);
              v408 = v172;
              v407 = v173;
              do
              {
                if (v406)
                {
                  v179 = MEMORY[0x2530ADF00](v174);
                }

                else
                {
                  v179 = *(v172 + 8 * v174 + 32);
                }

                v180 = v179;
                v181 = [v179 name];
                v1 = sub_252E36F34();
                v183 = v182;

                v184 = [v180 uniqueIdentifier];
                v185 = v411;
                sub_252E32E64();

                v186 = sub_252E32E24();
                v188 = v187;
                v409(v185, v412);
                v189 = [v180 assistantIdentifier];
                if (v189)
                {
                  v175 = v189;
                  v176 = sub_252E36F34();
                  v178 = v177;
                }

                else
                {
                  v176 = 0;
                  v178 = 0xE000000000000000;
                }

                ++v174;
                v415 = v1;
                v416 = v183;

                MEMORY[0x2530AD570](v186, v188);

                MEMORY[0x2530AD570](v176, v178);

                MEMORY[0x2530AD570](v415, v416);

                v172 = v408;
              }

              while (v407 != v174);
            }
          }

          else
          {
            v173 = *(v415 + 16);
            if (v173)
            {
              goto LABEL_137;
            }
          }

          v6 = v403;
          v152 = v401;
          if (v403 == v399)
          {
            goto LABEL_153;
          }

          continue;
        }
      }

      v153 = *(v415 + 16);
      if (v153)
      {
        goto LABEL_121;
      }

LABEL_153:

      v194 = sub_2529D9D18();
      v6 = v194;
      v415 = MEMORY[0x277D84F90];
      if (v194 >> 62)
      {
        v195 = sub_252E378C4();
        if (v195)
        {
LABEL_155:
          v196 = 0;
          do
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v197 = MEMORY[0x2530ADF00](v196, v6);
              v1 = v196 + 1;
              if (__OFADD__(v196, 1))
              {
                goto LABEL_338;
              }
            }

            else
            {
              if (v196 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_339;
              }

              v197 = *(v6 + 8 * v196 + 32);

              v1 = v196 + 1;
              if (__OFADD__(v196, 1))
              {
                goto LABEL_338;
              }
            }

            v198 = *(v197 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate);

            MEMORY[0x2530AD700](v199);
            if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v415 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v200 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v196;
          }

          while (v1 != v195);
        }
      }

      else
      {
        v195 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v195)
        {
          goto LABEL_155;
        }
      }

      v415 = sub_252ACB4D8(v201);
      v202 = v404;
      sub_2529E3010(&v415, sub_252935460, &unk_2814B0248, 0x277CD1D98);
      v171 = &v419;
      v404 = v202;
      if (v202)
      {
        goto LABEL_373;
      }

      v203 = v415;
      if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
      {
        v204 = sub_252E378C4();
        if (!v204)
        {
          goto LABEL_203;
        }

LABEL_171:
        v6 = 0;
        v402 = v203 & 0xC000000000000001;
        v398 = v203 + 32;
        v401 = v203;
        v399 = v204;
        while (2)
        {
          if (v402)
          {
            v205 = MEMORY[0x2530ADF00](v6, v203);
          }

          else
          {
            if (v6 >= *(v203 + 16))
            {
              goto LABEL_352;
            }

            v205 = *(v398 + 8 * v6);
          }

          v405 = v205;
          v34 = __OFADD__(v6++, 1);
          if (v34)
          {
            goto LABEL_340;
          }

          v403 = v6;
          v206 = v405;
          v207 = [v405 name];
          v208 = sub_252E36F34();
          v6 = v209;

          v210 = [v206 uniqueIdentifier];
          v211 = v411;
          sub_252E32E64();

          v212 = sub_252E32E24();
          v214 = v213;
          v409(v211, v412);
          v215 = [v206 assistantIdentifier];
          if (v215)
          {
            v216 = v215;
            v1 = sub_252E36F34();
            v218 = v217;
          }

          else
          {
            v1 = 0;
            v218 = 0xE000000000000000;
          }

          v415 = v208;
          v416 = v6;

          MEMORY[0x2530AD570](v212, v214);

          MEMORY[0x2530AD570](v1, v218);

          MEMORY[0x2530AD570](v415, v416);

          v219 = [v405 services];
          sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
          v220 = sub_252E37264();

          if (v220 >> 62)
          {
            v240 = sub_252E378C4();
            if (v240)
            {
              v241 = v240;
              v20 = sub_252E11384(v240, 0);

              sub_252E07104(v20 + 32, v241, v220);
              v6 = v242;

              if (v6 != v241)
              {
                goto LABEL_368;
              }
            }

            else
            {
              v20 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v20 = v220 & 0xFFFFFFFFFFFFFF8;
          }

          v415 = v20;
          v221 = v404;
          sub_2529E3010(&v415, sub_252935460, &qword_27F540478, 0x277CD1D90);
          v171 = &v419;
          v404 = v221;
          if (v221)
          {
            goto LABEL_373;
          }

          v222 = v415;
          if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
          {
            v243 = v415;
            v223 = sub_252E378C4();
            v222 = v243;
            if (v223)
            {
LABEL_187:
              if (v223 < 1)
              {
                goto LABEL_347;
              }

              v224 = 0;
              v406 = (v222 & 0xC000000000000001);
              v408 = v222;
              v407 = v223;
              do
              {
                if (v406)
                {
                  v227 = MEMORY[0x2530ADF00](v224);
                }

                else
                {
                  v227 = *(v222 + 8 * v224 + 32);
                }

                v228 = v227;
                v229 = [v227 name];
                v1 = sub_252E36F34();
                v231 = v230;

                v232 = [v228 uniqueIdentifier];
                v233 = v411;
                sub_252E32E64();

                v234 = sub_252E32E24();
                v236 = v235;
                v409(v233, v412);
                v237 = [v228 assistantIdentifier];
                if (v237)
                {
                  v238 = v237;
                  v225 = sub_252E36F34();
                  v226 = v239;
                }

                else
                {
                  v225 = 0;
                  v226 = 0xE000000000000000;
                }

                ++v224;
                v415 = v1;
                v416 = v231;

                MEMORY[0x2530AD570](v234, v236);

                MEMORY[0x2530AD570](v225, v226);

                MEMORY[0x2530AD570](v415, v416);

                v222 = v408;
              }

              while (v407 != v224);
            }
          }

          else
          {
            v223 = *(v415 + 16);
            if (v223)
            {
              goto LABEL_187;
            }
          }

          v6 = v403;
          v203 = v401;
          if (v403 == v399)
          {
            goto LABEL_203;
          }

          continue;
        }
      }

      v204 = *(v415 + 16);
      if (v204)
      {
        goto LABEL_171;
      }

LABEL_203:

      v244 = sub_2529DA828();
      v6 = v244;
      v415 = MEMORY[0x277D84F90];
      if (v244 >> 62)
      {
        v245 = sub_252E378C4();
        if (v245)
        {
LABEL_205:
          v246 = 0;
          do
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v247 = MEMORY[0x2530ADF00](v246, v6);
              v1 = v246 + 1;
              if (__OFADD__(v246, 1))
              {
                goto LABEL_341;
              }
            }

            else
            {
              if (v246 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_342;
              }

              v247 = *(v6 + 8 * v246 + 32);

              v1 = v246 + 1;
              if (__OFADD__(v246, 1))
              {
                goto LABEL_341;
              }
            }

            v248 = *(v247 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);

            MEMORY[0x2530AD700](v249);
            if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v415 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v250 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v246;
          }

          while (v1 != v245);
        }
      }

      else
      {
        v245 = *((v244 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v245)
        {
          goto LABEL_205;
        }
      }

      v415 = sub_252ACB4AC(v251);
      v20 = v404;
      sub_2529E3010(&v415, sub_252935460, &unk_2814B0260, 0x277CD1800);
      if (v20)
      {
        goto LABEL_371;
      }

      v252 = v415;
      if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
      {
        v6 = sub_252E378C4();
        if (!v6)
        {
          goto LABEL_252;
        }

LABEL_221:
        v1 = 0;
        v407 = v252 & 0xC000000000000001;
        v404 = v252 + 32;
        v406 = v252;
        v405 = v6;
        while (2)
        {
          if (v407)
          {
            v253 = MEMORY[0x2530ADF00](v1, v252);
          }

          else
          {
            if (v1 >= *(v252 + 16))
            {
              goto LABEL_353;
            }

            v253 = *(v404 + 8 * v1);
          }

          v408 = v253;
          v34 = __OFADD__(v1++, 1);
          if (v34)
          {
            goto LABEL_343;
          }

          v254 = v408;
          v255 = [v408 name];
          v256 = sub_252E36F34();
          v258 = v257;

          v259 = [v254 uniqueIdentifier];
          v260 = v411;
          sub_252E32E64();

          v261 = sub_252E32E24();
          v263 = v262;
          v409(v260, v412);
          v264 = [v254 assistantIdentifier];
          if (v264)
          {
            v265 = v264;
            v266 = sub_252E36F34();
            v268 = v267;
          }

          else
          {
            v266 = 0;
            v268 = 0xE000000000000000;
          }

          v415 = v256;
          v416 = v258;

          MEMORY[0x2530AD570](v261, v263);

          MEMORY[0x2530AD570](v266, v268);

          MEMORY[0x2530AD570](v415, v416);

          v269 = [v408 actions];
          sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
          sub_2529E6100();
          v270 = sub_252E373A4();

          if ((v270 & 0xC000000000000001) != 0)
          {
            v271 = sub_252E378C4();
          }

          else
          {
            v271 = *(v270 + 16);
          }

          v6 = MEMORY[0x277D84F90];
          if (v271)
          {
            if (v271 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v6 = swift_allocObject();
              v272 = _swift_stdlib_malloc_size(v6);
              v273 = v272 - 32;
              if (v272 < 32)
              {
                v273 = v272 - 25;
              }

              *(v6 + 16) = v271;
              *(v6 + 24) = (2 * (v273 >> 3)) | 1;
            }

            v274 = sub_252E08894(&v415, (v6 + 32), v271, v270);
            sub_25291AE30();
            if (v274 != v271)
            {
              goto LABEL_348;
            }
          }

          v415 = v6;
          sub_2529E3010(&v415, sub_252935460, &qword_27F5412F0, 0x277CD17F8);

          v275 = v415;
          if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
          {
            v276 = sub_252E378C4();
            if (v276)
            {
LABEL_243:
              if (v276 < 1)
              {
                goto LABEL_349;
              }

              v277 = 0;
              do
              {
                if ((v275 & 0xC000000000000001) != 0)
                {
                  v278 = MEMORY[0x2530ADF00](v277, v275);
                }

                else
                {
                  v278 = *(v275 + 8 * v277 + 32);
                }

                v279 = v278;
                ++v277;
                v280 = [v278 uniqueIdentifier];
                v281 = v411;
                sub_252E32E64();

                v282 = sub_252E32E24();
                v284 = v283;
                v409(v281, v412);
                MEMORY[0x2530AD570](v282, v284);
              }

              while (v276 != v277);
            }
          }

          else
          {
            v276 = *(v415 + 16);
            if (v276)
            {
              goto LABEL_243;
            }
          }

          v6 = v405;
          v252 = v406;
          if (v1 == v405)
          {
            goto LABEL_252;
          }

          continue;
        }
      }

      v6 = *(v415 + 16);
      if (v6)
      {
        goto LABEL_221;
      }

LABEL_252:

      v285 = sub_2529DA8AC();
      v6 = v285;
      v415 = MEMORY[0x277D84F90];
      if (v285 >> 62)
      {
        v286 = sub_252E378C4();
        if (v286)
        {
LABEL_254:
          v287 = 0;
          v1 = v6 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v288 = MEMORY[0x2530ADF00](v287, v6);
              v289 = v287 + 1;
              if (__OFADD__(v287, 1))
              {
                goto LABEL_344;
              }
            }

            else
            {
              if (v287 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_345;
              }

              v288 = *(v6 + 8 * v287 + 32);

              v289 = v287 + 1;
              if (__OFADD__(v287, 1))
              {
                goto LABEL_344;
              }
            }

            v290 = *(v288 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate);

            MEMORY[0x2530AD700](v291);
            if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v415 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v292 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v287;
          }

          while (v289 != v286);
        }
      }

      else
      {
        v286 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v286)
        {
          goto LABEL_254;
        }
      }

      v415 = sub_252ACB480(v293);
      sub_2529E3010(&v415, sub_252935460, &qword_27F541320, 0x277CD1EC0);

      v294 = v415;
      if ((v415 & 0x8000000000000000) == 0 && (v415 & 0x4000000000000000) == 0)
      {
        v295 = *(v415 + 16);
        if (v295)
        {
          goto LABEL_269;
        }

        goto LABEL_323;
      }

      v295 = sub_252E378C4();
      if (v295)
      {
LABEL_269:
        v6 = 0;
        v401 = (v294 & 0xC000000000000001);
        v397 = v294 + 32;
        v399 = v294;
        v398 = v295;
        do
        {
          if (v401)
          {
            v296 = MEMORY[0x2530ADF00](v6, v294);
            v34 = __OFADD__(v6++, 1);
            if (v34)
            {
              goto LABEL_350;
            }
          }

          else
          {
            if (v6 >= *(v294 + 16))
            {
              __break(1u);
              goto LABEL_357;
            }

            v296 = *(v397 + 8 * v6);
            v34 = __OFADD__(v6++, 1);
            if (v34)
            {
              goto LABEL_350;
            }
          }

          v402 = v6;
          v297 = v296;
          v298 = [v296 name];
          v299 = sub_252E36F34();
          v301 = v300;

          v302 = [v297 uniqueIdentifier];
          v303 = v411;
          sub_252E32E64();

          v1 = sub_252E32E24();
          v305 = v304;
          v409(v303, v412);
          v403 = v297;
          v306 = [v297 assistantIdentifier];
          if (v306)
          {
            v307 = v306;
            v308 = sub_252E36F34();
            v310 = v309;
          }

          else
          {
            v308 = 0;
            v310 = 0xE000000000000000;
          }

          v415 = v299;
          v416 = v301;

          MEMORY[0x2530AD570](v1, v305);

          MEMORY[0x2530AD570](v308, v310);

          MEMORY[0x2530AD570](v415, v416);

          v311 = [v403 actionSets];
          sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
          v312 = sub_252E37264();

          if (v312 >> 62)
          {
            v345 = sub_252E378C4();
            if (v345)
            {
              v346 = v345;
              v6 = sub_252E11384(v345, 0);

              sub_252E05DC4(v6 + 32, v346, v312);
              v348 = v347;

              if (v348 != v346)
              {
                goto LABEL_369;
              }
            }

            else
            {
              v6 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v6 = v312 & 0xFFFFFFFFFFFFFF8;
          }

          v415 = v6;
          sub_2529E3010(&v415, sub_252935460, &unk_2814B0260, 0x277CD1800);

          v313 = v415;
          if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
          {
            v314 = sub_252E378C4();
            if (!v314)
            {
              goto LABEL_270;
            }

LABEL_285:
            v315 = 0;
            v407 = v313 & 0xC000000000000001;
            v404 = v313 + 32;
            v406 = v313;
            v405 = v314;
            while (2)
            {
              if (v407)
              {
                v316 = MEMORY[0x2530ADF00](v315, v313);
                v34 = __OFADD__(v315++, 1);
                if (v34)
                {
                  goto LABEL_328;
                }
              }

              else
              {
                if (v315 >= *(v313 + 16))
                {
                  goto LABEL_331;
                }

                v316 = *(v404 + 8 * v315);
                v34 = __OFADD__(v315++, 1);
                if (v34)
                {
                  goto LABEL_328;
                }
              }

              v317 = v316;
              v318 = [v316 name];
              v319 = sub_252E36F34();
              v321 = v320;

              v322 = [v317 uniqueIdentifier];
              v323 = v411;
              sub_252E32E64();

              v324 = sub_252E32E24();
              v326 = v325;
              v409(v323, v412);
              v408 = v317;
              v327 = [v317 assistantIdentifier];
              if (v327)
              {
                v328 = v327;
                v1 = sub_252E36F34();
                v330 = v329;
              }

              else
              {
                v1 = 0;
                v330 = 0xE000000000000000;
              }

              v415 = v319;
              v416 = v321;

              MEMORY[0x2530AD570](v324, v326);

              MEMORY[0x2530AD570](v1, v330);

              MEMORY[0x2530AD570](v415, v416);

              v331 = [v408 actions];
              sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
              sub_2529E6100();
              v332 = sub_252E373A4();

              if ((v332 & 0xC000000000000001) != 0)
              {
                v6 = sub_252E378C4();
              }

              else
              {
                v6 = *(v332 + 16);
              }

              v333 = MEMORY[0x277D84F90];
              if (v6)
              {
                if (v6 >= 1)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                  v333 = swift_allocObject();
                  v334 = _swift_stdlib_malloc_size(v333);
                  v335 = v334 - 32;
                  if (v334 < 32)
                  {
                    v335 = v334 - 25;
                  }

                  *(v333 + 16) = v6;
                  *(v333 + 24) = (2 * (v335 >> 3)) | 1;
                }

                v336 = sub_252E08894(&v415, (v333 + 32), v6, v332);
                sub_25291AE30();
                if (v336 != v6)
                {
                  goto LABEL_329;
                }
              }

              v415 = v333;
              sub_2529E3010(&v415, sub_252935460, &qword_27F5412F0, 0x277CD17F8);

              v337 = v415;
              if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
              {
                v338 = sub_252E378C4();
                if (v338)
                {
LABEL_308:
                  if (v338 < 1)
                  {
                    goto LABEL_330;
                  }

                  v6 = 0;
                  do
                  {
                    if ((v337 & 0xC000000000000001) != 0)
                    {
                      v339 = MEMORY[0x2530ADF00](v6, v337);
                    }

                    else
                    {
                      v339 = *(v337 + 8 * v6 + 32);
                    }

                    v340 = v339;
                    ++v6;
                    v341 = [v339 uniqueIdentifier];
                    v342 = v411;
                    sub_252E32E64();

                    v343 = sub_252E32E24();
                    v1 = v344;
                    v409(v342, v412);
                    MEMORY[0x2530AD570](v343, v1);
                  }

                  while (v338 != v6);
                }
              }

              else
              {
                v338 = *(v415 + 16);
                if (v338)
                {
                  goto LABEL_308;
                }
              }

              v313 = v406;
              if (v315 == v405)
              {
                goto LABEL_270;
              }

              continue;
            }
          }

          v314 = *(v415 + 16);
          if (v314)
          {
            goto LABEL_285;
          }

LABEL_270:

          v6 = v402;
          v294 = v399;
        }

        while (v402 != v398);
      }

LABEL_323:

      v30 = v377;
      v28 = v375;
      v31 = v373;
      if (v377 == v374)
      {

        v349 = v417;
        v350 = v418;
        goto LABEL_360;
      }
    }

    v52 = sub_252E378C4();
    v51 = v387;
    if (!v52)
    {
      goto LABEL_118;
    }

LABEL_35:
    v53 = 0;
    v390 = v51 & 0xC000000000000001;
    v378 = v51 + 32;
    v386 = v52;
    while (1)
    {
      if (v390)
      {
        v54 = v53;
        v55 = MEMORY[0x2530ADF00](v53, v51);
      }

      else
      {
        if (v53 >= *(v51 + 16))
        {
          goto LABEL_363;
        }

        v54 = v53;
        v55 = *(v378 + 8 * v53);
      }

      v393 = v55;
      v34 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v34)
      {
        goto LABEL_354;
      }

      v392 = v56;
      v57 = v393;
      v58 = [v393 name];
      v59 = sub_252E36F34();
      v61 = v60;

      v62 = [v57 uniqueIdentifier];
      v63 = v411;
      sub_252E32E64();

      v1 = sub_252E32E24();
      v65 = v64;
      v409(v63, v412);
      v66 = [v57 assistantIdentifier];
      if (v66)
      {
        v67 = v66;
        v68 = sub_252E36F34();
        v70 = v69;
      }

      else
      {
        v68 = 0;
        v70 = 0xE000000000000000;
      }

      v415 = v59;
      v416 = v61;

      MEMORY[0x2530AD570](v1, v65);

      MEMORY[0x2530AD570](v68, v70);

      MEMORY[0x2530AD570](v415, v416);

      v71 = [v393 accessories];
      sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
      v72 = sub_252E37264();

      if (v72 >> 62)
      {
        v146 = sub_252E378C4();
        if (v146)
        {
          v147 = v146;
          v73 = sub_252E11384(v146, 0);

          sub_252E04DF4(v73 + 32, v147, v72);
          v149 = v148;

          if (v149 != v147)
          {
            goto LABEL_370;
          }
        }

        else
        {
          v73 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v73 = v72 & 0xFFFFFFFFFFFFFF8;
      }

      v415 = v73;
      sub_2529E3010(&v415, sub_252935460, &qword_2814B0270, 0x277CD1650);

      v74 = v415;

      v6 = *(v415 + 16);
      if (v6)
      {
        goto LABEL_50;
      }

LABEL_36:

      v53 = v392;
      v51 = v387;
      if (v392 == v386)
      {
        goto LABEL_118;
      }
    }

    v6 = sub_252E378C4();
    if (!v6)
    {
      goto LABEL_36;
    }

LABEL_50:
    v75 = 0;
    v398 = v74 & 0xC000000000000001;
    v395 = v74 + 32;
    v397 = v74;
    v396 = v6;
    while (1)
    {
      if (v398)
      {
        v76 = MEMORY[0x2530ADF00](v75, v74);
      }

      else
      {
        if (v75 >= *(v74 + 16))
        {
          goto LABEL_336;
        }

        v76 = *(v395 + 8 * v75);
      }

      v401 = v76;
      v34 = __OFADD__(v75, 1);
      v77 = (v75 + 1);
      if (v34)
      {
        goto LABEL_332;
      }

      v399 = v77;
      v78 = v401;
      v79 = [v401 name];
      v80 = sub_252E36F34();
      v82 = v81;

      v83 = [v78 uniqueIdentifier];
      v84 = v411;
      sub_252E32E64();

      v1 = sub_252E32E24();
      v86 = v85;
      v409(v84, v412);
      v87 = [v78 assistantIdentifier];
      if (v87)
      {
        v88 = v87;
        v89 = sub_252E36F34();
        v91 = v90;
      }

      else
      {
        v89 = 0;
        v91 = 0xE000000000000000;
      }

      v415 = v80;
      v416 = v82;

      MEMORY[0x2530AD570](v1, v86);

      MEMORY[0x2530AD570](v89, v91);

      MEMORY[0x2530AD570](v415, v416);

      v92 = [v401 services];
      sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
      v93 = sub_252E37264();

      if (v93 >> 62)
      {
        v127 = sub_252E378C4();
        if (v127)
        {
          v128 = v127;
          v94 = sub_252E11384(v127, 0);

          sub_252E07104(v94 + 32, v128, v93);
          v130 = v129;

          if (v130 != v128)
          {
            goto LABEL_365;
          }
        }

        else
        {
          v94 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v94 = v93 & 0xFFFFFFFFFFFFFF8;
      }

      v415 = v94;
      sub_2529E3010(&v415, sub_252935460, &qword_27F540478, 0x277CD1D90);

      v95 = v415;

      v96 = *(v415 + 16);
      if (v96)
      {
        goto LABEL_65;
      }

LABEL_92:

      v131 = [v401 profiles];
      sub_25293F638(0, &qword_27F540170, 0x277CD1760);
      v132 = sub_252E37264();

      if (v132 >> 62)
      {
        v142 = sub_252E378C4();
        if (v142)
        {
          v143 = v142;
          v133 = sub_252E11384(v142, 0);

          sub_252E06DC4(v133 + 32, v143, v132);
          v145 = v144;

          if (v145 != v143)
          {
            goto LABEL_366;
          }
        }

        else
        {
          v133 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v133 = v132 & 0xFFFFFFFFFFFFFF8;
      }

      v415 = v133;
      sub_2529E3010(&v415, sub_252935460, &qword_27F540170, 0x277CD1760);
      if (v20)
      {
        goto LABEL_371;
      }

      v6 = v415;
      if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
      {
        v134 = sub_252E378C4();
        if (v134)
        {
LABEL_98:
          if (v134 < 1)
          {
            goto LABEL_335;
          }

          v135 = 0;
          do
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v136 = MEMORY[0x2530ADF00](v135, v6);
            }

            else
            {
              v136 = *(v6 + 8 * v135 + 32);
            }

            v137 = v136;
            ++v135;
            v138 = [v136 uniqueIdentifier];
            v139 = v411;
            sub_252E32E64();

            v140 = sub_252E32E24();
            v1 = v141;
            v409(v139, v412);
            MEMORY[0x2530AD570](v140, v1);
          }

          while (v134 != v135);
        }
      }

      else
      {
        v134 = *(v415 + 16);
        if (v134)
        {
          goto LABEL_98;
        }
      }

      v6 = v396;
      v75 = v399;
      v74 = v397;
      if (v399 == v396)
      {
        goto LABEL_36;
      }
    }

    v96 = sub_252E378C4();
    if (!v96)
    {
      goto LABEL_92;
    }

LABEL_65:
    v6 = 0;
    v405 = (v95 & 0xC000000000000001);
    v402 = v95 + 32;
    v404 = v95;
    v403 = v96;
    while (1)
    {
      if (v405)
      {
        v97 = MEMORY[0x2530ADF00](v6, v95);
        v34 = __OFADD__(v6++, 1);
        if (v34)
        {
          goto LABEL_325;
        }
      }

      else
      {
        if (v6 >= *(v95 + 16))
        {
          goto LABEL_327;
        }

        v97 = *(v402 + 8 * v6);
        v34 = __OFADD__(v6++, 1);
        if (v34)
        {
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          swift_once();
          goto LABEL_2;
        }
      }

      v406 = v6;
      v98 = v97;
      v99 = [v97 name];
      v100 = sub_252E36F34();
      v102 = v101;

      v103 = [v98 uniqueIdentifier];
      v104 = v411;
      sub_252E32E64();

      v105 = sub_252E32E24();
      v107 = v106;
      v409(v104, v412);
      v408 = v98;
      v108 = [v98 assistantIdentifier];
      if (v108)
      {
        v109 = v108;
        v110 = sub_252E36F34();
        v112 = v111;
      }

      else
      {
        v110 = 0;
        v112 = 0xE000000000000000;
      }

      v415 = v100;
      v416 = v102;

      MEMORY[0x2530AD570](v105, v107);

      MEMORY[0x2530AD570](v110, v112);

      MEMORY[0x2530AD570](v415, v416);

      v6 = [v408 characteristics];
      sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
      sub_252E37264();

      v415 = sub_252ACB530(v113);
      sub_2529E3010(&v415, sub_252935460, &qword_27F5412E0, 0x277CD1970);
      if (v20)
      {
        goto LABEL_371;
      }

      v114 = v415;
      v407 = 0;
      if (v415 < 0 || (v415 & 0x4000000000000000) != 0)
      {
        v1 = sub_252E378C4();
        if (!v1)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v1 = *(v415 + 16);
        if (!v1)
        {
          goto LABEL_66;
        }
      }

      if (v1 < 1)
      {
        goto LABEL_326;
      }

      v115 = 0;
      do
      {
        if ((v114 & 0xC000000000000001) != 0)
        {
          v116 = MEMORY[0x2530ADF00](v115, v114);
        }

        else
        {
          v116 = *(v114 + 8 * v115 + 32);
        }

        v117 = v116;
        ++v115;
        v118 = [v116 uniqueIdentifier];
        v119 = v411;
        sub_252E32E64();

        v120 = sub_252E32E24();
        v122 = v121;
        v409(v119, v412);
        v123 = [v117 characteristicType];
        v124 = sub_252E36F34();
        v126 = v125;

        v415 = v120;
        v416 = v122;

        MEMORY[0x2530AD570](v124, v126);

        MEMORY[0x2530AD570](v415, v416);
      }

      while (v1 != v115);
LABEL_66:

      v6 = v406;
      v20 = v407;
      v95 = v404;
      if (v406 == v403)
      {
        goto LABEL_92;
      }
    }
  }

  v351 = v415;
  v29 = sub_252E378C4();
  v28 = v351;
  if (v29)
  {
    goto LABEL_23;
  }

LABEL_359:

  v349 = 0;
  v350 = 0xE000000000000000;
LABEL_360:
  v352 = sub_252ABF638(v349, v350);
  v354 = v353;
  sub_2529E6168(&qword_27F5412F8, MEMORY[0x277CC5588]);
  v355 = v379;
  v356 = v381;
  sub_252E36DE4();
  sub_2529E61B0(v352, v354);
  sub_252D7BB0C(v352, v354);
  sub_25296464C(v352, v354);
  v357 = v383;
  sub_252E36DD4();
  (*(v380 + 8))(v355, v356);
  v415 = sub_2529DDFB0(v357);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
  v13 = sub_252E36EA4();
  v359 = v358;

  v360 = v400 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v361 = *(v360 + 8);

  [v361 lock];
  *v360 = 1;
  [v361 unlock];
  swift_endAccess();
  v362 = v382;
  swift_beginAccess();
  v363 = v362[2];
  [v363 lock];
  v364 = v362[1];
  *v362 = v13;
  v362[1] = v359;

  [v363 unlock];
  swift_endAccess();
  v415 = 0;
  v416 = 0xE000000000000000;
  sub_252E379F4();

  v415 = 0xD000000000000015;
  v416 = 0x8000000252E70790;
  v366 = *v362;
  v365 = v362[1];
  v367 = v362[2];

  v368 = v367;
  [v368 lock];
  [v368 unlock];

  v413 = v366;
  v414 = v365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v369 = sub_252E36F94();
  MEMORY[0x2530AD570](v369);

  sub_252CC3D90(v415, v416, 0xD00000000000006FLL, v388 | 0x8000000000000000);

  sub_25296464C(v352, v354);
  (*(v384 + 8))(v357, v385);
  return v13;
}