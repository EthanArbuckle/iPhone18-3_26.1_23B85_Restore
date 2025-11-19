uint64_t sub_241CE5620()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_241CE58F4;
  }

  else
  {
    v5 = sub_241CE573C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CE573C()
{
  if (v0[9])
  {
    if (MEMORY[0x245CFD680](v0[9], MEMORY[0x277D837D0], v0[21], MEMORY[0x277D837E0]))
    {
    }

    else
    {
      v4 = v0[29];
      v5 = v0[27];
      v6 = v0[21];
      *(swift_task_alloc() + 16) = v6;
      sub_241CF8F18();
    }

    v7 = *(MEMORY[0x277D85828] + 4);
    v8 = swift_task_alloc();
    v0[28] = v8;
    *v8 = v0;
    v8[1] = sub_241CE5620;
    v9 = v0[26];
    v10 = v0[24];

    return MEMORY[0x2822004E8](v0 + 9, 0, 0, v10, v0 + 10);
  }

  else
  {
    v1 = v0[11];
    (*(v0[25] + 8))(v0[26], v0[24]);
    *v1 = v0[8];

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_241CE58F4()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[10];

  v2 = v0[1];

  return v2();
}

uint64_t sub_241CE5974(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v28 = a7;
  v29 = a2;
  v16 = sub_241C93918(&qword_27EC6A840, &qword_241CFEFB8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *a1;
  v21 = sub_241CF9388();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_241CEB7B0(a3, v30);
  v22 = swift_allocObject();
  v23 = v30[1];
  *(v22 + 40) = v30[0];
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = a10;
  *(v22 + 56) = v23;
  *(v22 + 72) = v30[2];
  *(v22 + 88) = v31;
  *(v22 + 96) = v20;
  *(v22 + 104) = a4;
  *(v22 + 112) = a5;
  v24 = v28;
  *(v22 + 120) = a6;
  *(v22 + 128) = v24;
  *(v22 + 136) = a8;
  *(v22 + 144) = a9;
  sub_241CF8F38();

  sub_241C9452C(&qword_27EC6A1F0, &unk_241CFED70);
  v25 = sub_241CF93D8();
  sub_241CE60D4(v19, &unk_241CFF060, v22, v25);
  return sub_241C8EA54(v19, &qword_27EC6A840, &qword_241CFEFB8);
}

uint64_t sub_241CE5B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v12;
  *(v8 + 36) = v11;
  *(v8 + 88) = v10;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  return MEMORY[0x2822009F8](sub_241CE5BCC, 0, 0);
}

uint64_t sub_241CE5BCC()
{
  sub_241CF9398();
  v1 = *(v0 + 36);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = v4[5];
  v6 = v4[6];
  sub_241C97000(v4 + 2, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 8);
  v16 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_241CE5D7C;
  v10 = *(v0 + 104);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);
  v14 = *(v0 + 56);

  return v16(v14, v13, v11, v12, v0 + 16, v10, v5, v6);
}

uint64_t sub_241CE5D7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_241CE5EC8;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_241CE5EA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241CE5EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = sub_241C93918(&qword_27EC6A840, &qword_241CFEFB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v24 - v13;
  sub_241CEB8EC(a1, v24 - v13);
  v15 = sub_241CF9388();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_241C8EA54(v14, &qword_27EC6A840, &qword_241CFEFB8);
    if (*(a3 + 16))
    {
LABEL_3:
      v17 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_241CF9348();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_241CF9378();
    (*(v16 + 8))(v14, v15);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v8;
  sub_241C93918(a4, a5);
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v21;
  swift_task_create();
}

uint64_t sub_241CE60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_241C93918(&qword_27EC6A840, &qword_241CFEFB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  sub_241CEB8EC(a1, v23 - v11);
  v13 = sub_241CF9388();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_241C8EA54(v12, &qword_27EC6A840, &qword_241CFEFB8);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_241CF9348();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_241CF9378();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = *a7;
  v10 = a7[1];
  *(v8 + 72) = v7;
  *(v8 + 80) = v9;
  *(v8 + 88) = v10;
  *(v8 + 128) = *(a7 + 4);
  return MEMORY[0x2822009F8](sub_241CE62F4, 0, 0);
}

uint64_t sub_241CE62F4()
{
  v27 = v0;
  v1 = *(v0 + 24);
  if (!v1)
  {
    v5 = *(v0 + 32);
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = 0;
    goto LABEL_9;
  }

  LOBYTE(v26) = 3;
  v2 = sub_241CE80E0(&v26, v1);
  v3 = sub_241CE0AC0(v2, 3, sub_241C946D4);

  if (*(v3 + 16))
  {
    sub_241C93918(&qword_27EC6A480, &unk_241CFD2F8);
    v4 = sub_241CF9808();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v26 = v4;
  sub_241CE90EC(v3, 1, &v26);
  v5 = *(v0 + 32);
  v7 = v26;
  if (v5)
  {
    v6 = v26;
LABEL_9:
    LOBYTE(v26) = 0;
    v8 = sub_241CE80E0(&v26, v5);
    v9 = sub_241CE0AC0(v8, 0, sub_241C946D4);

    if (*(v9 + 16))
    {
      sub_241C93918(&qword_27EC6A480, &unk_241CFD2F8);
      v10 = sub_241CF9808();
    }

    else
    {
      v10 = MEMORY[0x277D84F98];
    }

    v26 = v10;
    sub_241CE90EC(v9, 1, &v26);
    v7 = v26;
    if (v6)
    {
      if (v26)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v6;
        sub_241CE8D08(v7, sub_241CE9820, 0, isUniquelyReferenced_nonNull_native, &v26);

        v7 = v26;
      }

      else
      {
        v7 = v6;
      }

LABEL_20:
      v15 = *(v0 + 128);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      v18 = *(v0 + 56);
      v24 = *(v0 + 40);
      v25 = *(v0 + 64);
      v19 = sub_241CD1248(v7);
      *(v0 + 96) = v19;

      v20 = sub_241C93918(&qword_27EC6A808, &qword_241CFEE00);
      v21 = swift_task_alloc();
      *(v0 + 104) = v21;
      *(v21 + 16) = v19;
      *(v21 + 24) = v25;
      *(v21 + 40) = v24;
      *(v21 + 56) = v18;
      *(v21 + 64) = v17;
      *(v21 + 72) = v16;
      *(v21 + 80) = v15;
      v22 = *(MEMORY[0x277D859B8] + 4);
      v23 = swift_task_alloc();
      *(v0 + 112) = v23;
      *v23 = v0;
      v23[1] = sub_241CE66B8;
      v29 = v20;

      return MEMORY[0x282200740](v0 + 16, v20, v20, 0, 0, &unk_241CFEE10, v21, v20);
    }
  }

  if (v7)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_241CAB9BC();
  swift_allocError();
  *v12 = 8;
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_241CE66B8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_241CE67DC;
  }

  else
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 104);

    v4 = sub_241CEC0CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CE67DC()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[15];
  v4 = v0[1];

  return v4();
}

uint64_t MCatalogService.fetch(adamID:type:relationships:views:additionalParameters:metadata:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a6;
  *(v8 + 136) = v7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  *(v8 + 192) = *a3;
  v9 = *(a7 + 8);
  *(v8 + 144) = *a7;
  *(v8 + 152) = v9;
  *(v8 + 92) = *(a7 + 16);
  return MEMORY[0x2822009F8](sub_241CE6888, 0, 0);
}

uint64_t sub_241CE6888()
{
  v1 = *(v0 + 192);
  if (v1 == 3 || v1 == 0)
  {
    v3 = *(v0 + 92);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = v6[6];
    v23 = v6[5];
    sub_241C97000(v6 + 2, v23);
    sub_241C93918(&qword_27EC69D48, &qword_241CFB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241CFAAF0;
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    *(inited + 48) = v1;

    v11 = sub_241CE0944(inited);
    *(v0 + 160) = v11;
    swift_setDeallocating();
    sub_241C8EA54(inited + 32, &qword_27EC69D50, &qword_241CFB058);
    *(v0 + 72) = v4;
    *(v0 + 80) = v5;
    *(v0 + 88) = v3;
    v12 = *(v9 + 8);
    v22 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    v15 = type metadata accessor for MAsset();
    *v14 = v0;
    v14[1] = sub_241CE6AF4;
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = *(v0 + 112);

    return v22(v11, v18, v16, v17, v0 + 72, v15, v23, v9);
  }

  else
  {
    sub_241CAB9BC();
    swift_allocError();
    *v20 = v1;
    swift_willThrow();
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_241CE6AF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v8 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  v5 = v3[20];

  if (v1)
  {
    v6 = sub_241CE6C18;
  }

  else
  {
    v6 = sub_241CEC0C8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t MCatalogService.fetch(authorIDs:relationships:views:additionalParameters:batchSize:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = v6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = *(a6 + 8);
  *(v7 + 72) = *a6;
  *(v7 + 80) = v8;
  *(v7 + 120) = *(a6 + 16);
  return MEMORY[0x2822009F8](sub_241CE6C68, 0, 0);
}

uint64_t sub_241CE6C68()
{
  v18 = v0;
  v1 = *(v0 + 24);
  LOBYTE(v17) = 2;
  v2 = sub_241CE80E0(&v17, v1);
  v3 = sub_241CE0AC0(v2, 2, sub_241C946D4);

  if (*(v3 + 16))
  {
    sub_241C93918(&qword_27EC6A480, &unk_241CFD2F8);
    v4 = sub_241CF9808();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v17 = v4;
  sub_241CE90EC(v3, 1, &v17);
  v5 = *(v0 + 120);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16 = *(v0 + 56);
  v9 = sub_241CD1248(v17);
  *(v0 + 88) = v9;

  v10 = sub_241C93918(&qword_27EC6A810, &qword_241CFEE28);
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v16;
  *(v11 + 40) = v15;
  *(v11 + 56) = v8;
  *(v11 + 64) = v7;
  *(v11 + 72) = v6;
  *(v11 + 80) = v5;
  v12 = *(MEMORY[0x277D859B8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_241CE6E9C;
  v20 = v10;

  return MEMORY[0x282200740](v0 + 16, v10, v10, 0, 0, &unk_241CFEE38, v11, v10);
}

uint64_t sub_241CE6E9C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_241CEC0BC;
  }

  else
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 96);

    v4 = sub_241CEC0CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t MCatalogService.fetch(genreIDs:relationships:views:additionalParameters:batchSize:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = v6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = *(a6 + 8);
  *(v7 + 72) = *a6;
  *(v7 + 80) = v8;
  *(v7 + 120) = *(a6 + 16);
  return MEMORY[0x2822009F8](sub_241CE6FF8, 0, 0);
}

uint64_t sub_241CE6FF8()
{
  v18 = v0;
  v1 = *(v0 + 24);
  LOBYTE(v17) = 5;
  v2 = sub_241CE80E0(&v17, v1);
  v3 = sub_241CE0AC0(v2, 5, sub_241C946D4);

  if (*(v3 + 16))
  {
    sub_241C93918(&qword_27EC6A480, &unk_241CFD2F8);
    v4 = sub_241CF9808();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v17 = v4;
  sub_241CE90EC(v3, 1, &v17);
  v5 = *(v0 + 120);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16 = *(v0 + 56);
  v9 = sub_241CD1248(v17);
  *(v0 + 88) = v9;

  v10 = sub_241C93918(&qword_27EC6A818, &qword_241CFEE48);
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v16;
  *(v11 + 40) = v15;
  *(v11 + 56) = v8;
  *(v11 + 64) = v7;
  *(v11 + 72) = v6;
  *(v11 + 80) = v5;
  v12 = *(MEMORY[0x277D859B8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_241CE722C;
  v20 = v10;

  return MEMORY[0x282200740](v0 + 16, v10, v10, 0, 0, &unk_241CFEE58, v11, v10);
}

uint64_t sub_241CE722C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_241CE7350;
  }

  else
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 96);

    v4 = sub_241CEC0CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CE7350()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t MCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = *a7;
  v10 = a7[1];
  *(v8 + 72) = v7;
  *(v8 + 80) = v9;
  *(v8 + 88) = v10;
  *(v8 + 128) = *(a7 + 4);
  return MEMORY[0x2822009F8](sub_241CE73F8, 0, 0);
}

uint64_t sub_241CE73F8()
{
  v27 = v0;
  v1 = *(v0 + 24);
  if (!v1)
  {
    v5 = *(v0 + 32);
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = 0;
    goto LABEL_9;
  }

  LOBYTE(v26) = 4;
  v2 = sub_241CE80E0(&v26, v1);
  v3 = sub_241CE0AC0(v2, 4, sub_241C946D4);

  if (*(v3 + 16))
  {
    sub_241C93918(&qword_27EC6A480, &unk_241CFD2F8);
    v4 = sub_241CF9808();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v26 = v4;
  sub_241CE90EC(v3, 1, &v26);
  v5 = *(v0 + 32);
  v7 = v26;
  if (v5)
  {
    v6 = v26;
LABEL_9:
    LOBYTE(v26) = 1;
    v8 = sub_241CE80E0(&v26, v5);
    v9 = sub_241CE0AC0(v8, 1, sub_241C946D4);

    if (*(v9 + 16))
    {
      sub_241C93918(&qword_27EC6A480, &unk_241CFD2F8);
      v10 = sub_241CF9808();
    }

    else
    {
      v10 = MEMORY[0x277D84F98];
    }

    v26 = v10;
    sub_241CE90EC(v9, 1, &v26);
    v7 = v26;
    if (v6)
    {
      if (v26)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v6;
        sub_241CE8D08(v7, sub_241CE9820, 0, isUniquelyReferenced_nonNull_native, &v26);

        v7 = v26;
      }

      else
      {
        v7 = v6;
      }

LABEL_20:
      v15 = *(v0 + 128);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      v18 = *(v0 + 56);
      v24 = *(v0 + 40);
      v25 = *(v0 + 64);
      v19 = sub_241CD1248(v7);
      *(v0 + 96) = v19;

      v20 = sub_241C93918(&qword_27EC6A820, &qword_241CFEE68);
      v21 = swift_task_alloc();
      *(v0 + 104) = v21;
      *(v21 + 16) = v19;
      *(v21 + 24) = v25;
      *(v21 + 40) = v24;
      *(v21 + 56) = v18;
      *(v21 + 64) = v17;
      *(v21 + 72) = v16;
      *(v21 + 80) = v15;
      v22 = *(MEMORY[0x277D859B8] + 4);
      v23 = swift_task_alloc();
      *(v0 + 112) = v23;
      *v23 = v0;
      v23[1] = sub_241CE77C0;
      v29 = v20;

      return MEMORY[0x282200740](v0 + 16, v20, v20, 0, 0, &unk_241CFEE78, v21, v20);
    }
  }

  if (v7)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_241CAB9BC();
  swift_allocError();
  *v12 = 8;
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_241CE77C0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_241CEC0B0;
  }

  else
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 104);

    v4 = sub_241CEC0CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = v6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = *(a6 + 8);
  *(v7 + 72) = *a6;
  *(v7 + 80) = v8;
  *(v7 + 120) = *(a6 + 16);
  return MEMORY[0x2822009F8](sub_241CE791C, 0, 0);
}

uint64_t sub_241CE791C()
{
  v18 = v0;
  v1 = *(v0 + 24);
  LOBYTE(v17) = 6;
  v2 = sub_241CE80E0(&v17, v1);
  v3 = sub_241CE0AC0(v2, 6, sub_241C94694);

  if (*(v3 + 16))
  {
    sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
    v4 = sub_241CF9808();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v17 = v4;
  sub_241CE8984(v3, 1, &v17);
  v5 = *(v0 + 120);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16 = *(v0 + 56);
  v9 = v17;
  *(v0 + 88) = v17;
  v10 = sub_241C93918(&qword_27EC6A828, &qword_241CFEE88);
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v16;
  *(v11 + 40) = v15;
  *(v11 + 56) = v8;
  *(v11 + 64) = v7;
  *(v11 + 72) = v6;
  *(v11 + 80) = v5;
  v12 = *(MEMORY[0x277D859B8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_241CE7B3C;
  v20 = v10;

  return MEMORY[0x282200740](v0 + 16, v10, v10, 0, 0, &unk_241CFEE98, v11, v10);
}

uint64_t sub_241CE7B3C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_241CE7C60;
  }

  else
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 96);

    v4 = sub_241CEC0CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CE7C60()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t MCatalogService.fetch(adamID:relationships:views:additionalParameters:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 128) = a5;
  *(v7 + 136) = v6;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  v8 = *(a6 + 8);
  *(v7 + 144) = *a6;
  *(v7 + 152) = v8;
  *(v7 + 92) = *(a6 + 16);
  return MEMORY[0x2822009F8](sub_241CE7D04, 0, 0);
}

uint64_t sub_241CE7D04()
{
  v1 = *(v0 + 92);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = v4[5];
  v8 = v4[6];
  sub_241C97000(v4 + 2, v7);
  sub_241C93918(&qword_27EC69D48, &qword_241CFB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241CFAAF0;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = 6;

  v10 = sub_241CE0944(inited);
  *(v0 + 160) = v10;
  swift_setDeallocating();
  sub_241C8EA54(inited + 32, &qword_27EC69D50, &qword_241CFB058);
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  v11 = *(v8 + 8);
  v19 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  v14 = type metadata accessor for MResource();
  *v13 = v0;
  v13[1] = sub_241CE7EFC;
  v15 = *(v0 + 120);
  v16 = *(v0 + 128);
  v17 = *(v0 + 112);

  return v19(v10, v17, v15, v16, v0 + 72, v14, v7, v8);
}

uint64_t sub_241CE7EFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *(*v2 + 160);
  v8 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v6 = sub_241CE80C8;
  }

  else
  {
    v6 = sub_241CE8030;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_241CE8030()
{
  if (*(v0[22] + 16) && (v1 = sub_241C8E1DC(v0[12], v0[13]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[22] + 56) + 8 * v1);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_241CE80E0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  result = MEMORY[0x277D84FA0];
  v32 = MEMORY[0x277D84FA0];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a2 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      v10 = v32;
      if (*(v32 + 16))
      {
        v11 = *(v32 + 40);
        sub_241CF9998();

        sub_241CF90B8();
        v12 = sub_241CF99C8();
        v13 = -1 << *(v10 + 32);
        v14 = v12 & ~v13;
        if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v10 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v8;
            if (v17 || (sub_241CF98C8() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (qword_27EC69AC8 != -1)
          {
            swift_once();
          }

          v18 = sub_241CF8E88();
          sub_241C936C0(v18, qword_27EC6A7F0);
          v19 = sub_241CF94F8();

          v20 = sub_241CF8E68();

          if (os_log_type_enabled(v20, v19))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v31 = v22;
            *v21 = 136315394;
            v23 = sub_241CB3A88(v9, v8, &v31);

            *(v21 + 4) = v23;
            *(v21 + 12) = 2080;
            if (v2 <= 2)
            {
              if (v2)
              {
                if (v2 == 1)
                {
                  v28 = 0xD000000000000011;
                }

                else
                {
                  v28 = 0x73726F68747561;
                }

                if (v2 == 1)
                {
                  v29 = 0x8000000241D008F0;
                }

                else
                {
                  v29 = 0xE700000000000000;
                }
              }

              else
              {
                v29 = 0xEB00000000736B6FLL;
                v28 = 0x6F622D6F69647561;
              }
            }

            else
            {
              v24 = 0x7365726E6567;
              if (v2 != 5)
              {
                v24 = 0x6E776F6E6B6E753CLL;
              }

              v25 = 0xE600000000000000;
              if (v2 != 5)
              {
                v25 = 0xE90000000000003ELL;
              }

              v26 = 0x736B6F6F62;
              if (v2 != 3)
              {
                v26 = 0x7265732D6B6F6F62;
              }

              v27 = 0xEB00000000736569;
              if (v2 == 3)
              {
                v27 = 0xE500000000000000;
              }

              if (v2 <= 4)
              {
                v28 = v26;
              }

              else
              {
                v28 = v24;
              }

              if (v2 <= 4)
              {
                v29 = v27;
              }

              else
              {
                v29 = v25;
              }
            }

            v30 = sub_241CB3A88(v28, v29, &v31);

            *(v21 + 14) = v30;
            _os_log_impl(&dword_241C8C000, v20, v19, "Duplicate id %s found for resource type: %s", v21, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245CFE970](v22, -1, -1);
            MEMORY[0x245CFE970](v21, -1, -1);
          }

          else
          {
          }

          goto LABEL_5;
        }
      }

      else
      {
      }

LABEL_4:
      sub_241CDB1BC(&v31, v9, v8);

LABEL_5:
      if (++v5 == v4)
      {
        return v32;
      }
    }
  }

  return result;
}

void sub_241CE8484()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_241CF9038();
    v4 = v3;
  }

  else
  {
    v4 = 0x8000000241D00560;
    v2 = 0xD000000000000010;
  }

  qword_27EC6A7E0 = v2;
  *algn_27EC6A7E8 = v4;
}

uint64_t static Logger.bundleIdentifier.getter()
{
  if (qword_27EC69AC0 != -1)
  {
    swift_once();
  }

  v0 = qword_27EC6A7E0;

  return v0;
}

uint64_t sub_241CE8590()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC6A7F0);
  sub_241C936C0(v0, qword_27EC6A7F0);
  if (qword_27EC69AC0 != -1)
  {
    swift_once();
  }

  return sub_241CF8E78();
}

uint64_t static Logger.catalogService.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EC69AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_241CF8E88();
  v3 = sub_241C936C0(v2, qword_27EC6A7F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_241CE86FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v16 = *(v2 + 24);
  v6 = *(v2 + 40);
  v15 = *(v2 + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v10 = *(v2 + 64);
  v9 = *(v2 + 72);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_241CABA94;

  return sub_241CE4EC8(a1, a2, v16, v15, v6, v7, v8, v10);
}

void *sub_241CE87FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_241C93918(&qword_27EC69D98, &unk_241CFED80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_241CE8880(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_241C93918(&qword_27EC69D88, &qword_241CFB090);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_241CE88F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_241C93918(&qword_27EC6A848, &qword_241CFEFD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void sub_241CE8984(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_241C8E1DC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_241CC79AC(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_241C8E1DC(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_241CF9938();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_241CC8C48();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + v10) = v6;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_241CF96C8();
    MEMORY[0x245CFD860](0xD00000000000001BLL, 0x8000000241D00B20);
    sub_241CF9788();
    MEMORY[0x245CFD860](39, 0xE100000000000000);
    sub_241CF9798();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v26 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = sub_241C8E1DC(v8, v7);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_241CC79AC(v32, 1);
        v33 = *a3;
        v28 = sub_241C8E1DC(v8, v7);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v8;
      v36[1] = v7;
      *(v35[7] + v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v35[2] = v38;
      v5 += 24;
      if (v39 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_241CE8D08(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v5 = a1;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v12 = 0;
  v40 = v5;
  v39 = v6;
  v13 = v9;
  if (!v9)
  {
LABEL_5:
    v14 = v11;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_23;
      }

      v13 = *(v6 + 8 * v12);
      ++v14;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_241CF9938();
    __break(1u);
LABEL_28:
    sub_241CF96C8();
    MEMORY[0x245CFD860](0xD00000000000001BLL, 0x8000000241D00B20);
    sub_241CF9788();
    MEMORY[0x245CFD860](39, 0xE100000000000000);
    sub_241CF9798();
    __break(1u);
    return;
  }

  while (1)
  {
LABEL_9:
    v15 = __clz(__rbit64(v13)) | (v12 << 6);
    v16 = (*(v5 + 48) + 16 * v15);
    v17 = v16[1];
    LOBYTE(v15) = *(*(v5 + 56) + v15);
    v44 = *v16;
    v45 = v17;
    v46 = v15;

    a2(&v47, &v44);

    v18 = v48;
    if (!v48)
    {
LABEL_23:
      sub_241C90BFC();

      return;
    }

    v19 = v47;
    v44 = v47;
    v45 = v48;
    v20 = v49;
    v21 = *a5;
    v23 = sub_241C8E1DC(v47, v48);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a4)
    {
      if (v22)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_241CC8DB0();
      if (v27)
      {
        goto LABEL_21;
      }
    }

LABEL_17:
    v31 = *a5;
    *(*a5 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v32 = (v31[6] + 16 * v23);
    *v32 = v19;
    v32[1] = v18;
    *(v31[7] + v23) = v20;
    v33 = v31[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_26;
    }

    v31[2] = v35;
    a4 = 1;
    v11 = v12;
    v5 = v40;
    v6 = v39;
    v13 &= v13 - 1;
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  sub_241CC7C4C(v26, a4 & 1);
  v28 = *a5;
  v29 = sub_241C8E1DC(v19, v18);
  if ((v27 & 1) != (v30 & 1))
  {
    goto LABEL_27;
  }

  v23 = v29;
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  sub_241CAB9BC();
  v36 = swift_allocError();
  *v37 = 7;
  swift_willThrow();

  v50 = v36;
  v38 = v36;
  sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  sub_241C90BFC();
}

void sub_241CE90EC(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_241C8E1DC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_241CC7C4C(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_241C8E1DC(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_241CF9938();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_241CC8DB0();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + v10) = v6;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_241CF96C8();
    MEMORY[0x245CFD860](0xD00000000000001BLL, 0x8000000241D00B20);
    sub_241CF9788();
    MEMORY[0x245CFD860](39, 0xE100000000000000);
    sub_241CF9798();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v26 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = sub_241C8E1DC(v8, v7);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_241CC7C4C(v32, 1);
        v33 = *a3;
        v28 = sub_241C8E1DC(v8, v7);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v8;
      v36[1] = v7;
      *(v35[7] + v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v35[2] = v38;
      v5 += 24;
      if (v39 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void *sub_241CE9470(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_241CE95C8(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_241CE96C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      LOBYTE(v17) = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v17;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_241CE9820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *(a2 + 16) = *(a1 + 16);
  *a2 = v3;
  *(a2 + 8) = v2;
}

uint64_t sub_241CE9838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_241CEC0B4;

  return sub_241CE13EC(a2, a3, a4, a5, a6, a7, a8, v19);
}

void sub_241CE9938()
{
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_241CABA94;

  JUMPOUT(0x241CE9838);
}

uint64_t sub_241CE9A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v12;
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  return MEMORY[0x2822009F8](sub_241CE9A78, 0, 0);
}

uint64_t sub_241CE9A78()
{
  sub_241CF9398();
  v1 = *(v0 + 36);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = v4[5];
  v6 = v4[6];
  sub_241C97000(v4 + 2, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 8);
  v16 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = type metadata accessor for MAsset();
  *v9 = v0;
  v9[1] = sub_241CE9C30;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);

  return v16(v13, v14, v11, v12, v0 + 16, v10, v5, v6);
}

uint64_t sub_241CE9C30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_241CEC0C0;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_241CEC0B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241CE9D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_241CEC0B4;

  return sub_241CE1F98(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_241CE9E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v12;
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  return MEMORY[0x2822009F8](sub_241CE9E94, 0, 0);
}

uint64_t sub_241CE9E94()
{
  sub_241CF9398();
  v1 = *(v0 + 36);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = v4[5];
  v6 = v4[6];
  sub_241C97000(v4 + 2, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 8);
  v16 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = type metadata accessor for MAuthor();
  *v9 = v0;
  v9[1] = sub_241CE9C30;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);

  return v16(v13, v14, v11, v12, v0 + 16, v10, v5, v6);
}

uint64_t sub_241CEA04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_241CEC0B4;

  return sub_241CE2B44(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_241CEA14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v12;
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  return MEMORY[0x2822009F8](sub_241CEA188, 0, 0);
}

uint64_t sub_241CEA188()
{
  sub_241CF9398();
  v1 = *(v0 + 36);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = v4[5];
  v6 = v4[6];
  sub_241C97000(v4 + 2, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 8);
  v16 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = type metadata accessor for MGenre();
  *v9 = v0;
  v9[1] = sub_241CE9C30;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);

  return v16(v13, v14, v11, v12, v0 + 16, v10, v5, v6);
}

uint64_t sub_241CEA340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_241CEC0B4;

  return sub_241CE36F0(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_241CEA440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v12;
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  return MEMORY[0x2822009F8](sub_241CEA47C, 0, 0);
}

uint64_t sub_241CEA47C()
{
  sub_241CF9398();
  v1 = *(v0 + 36);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = v4[5];
  v6 = v4[6];
  sub_241C97000(v4 + 2, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 8);
  v16 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = type metadata accessor for MSeries();
  *v9 = v0;
  v9[1] = sub_241CE9C30;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);

  return v16(v13, v14, v11, v12, v0 + 16, v10, v5, v6);
}

uint64_t sub_241CEA634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_241CEA734;

  return sub_241CE429C(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_241CEA734(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_241CEA844(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13)
{
  v32 = a12;
  v33 = a2;
  v31 = a13;
  v29 = a7;
  v30 = a11;
  v19 = sub_241C93918(&qword_27EC6A840, &qword_241CFEFB8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v29 - v21;
  v23 = *a1;
  v24 = sub_241CF9388();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  sub_241CEB7B0(a3, v34);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v26 = v34[1];
  *(v25 + 32) = v34[0];
  *(v25 + 48) = v26;
  *(v25 + 64) = v34[2];
  *(v25 + 80) = v35;
  *(v25 + 88) = v23;
  *(v25 + 96) = a4;
  *(v25 + 104) = a5;
  v27 = v29;
  *(v25 + 112) = a6;
  *(v25 + 120) = v27;
  *(v25 + 128) = a8;
  *(v25 + 136) = a9;

  sub_241CE5EE0(v22, v30, v25, v32, v31);
  return sub_241C8EA54(v22, &qword_27EC6A840, &qword_241CFEFB8);
}

uint64_t sub_241CEA9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v12;
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  return MEMORY[0x2822009F8](sub_241CEAA34, 0, 0);
}

uint64_t sub_241CEAA34()
{
  sub_241CF9398();
  v1 = *(v0 + 36);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = v4[5];
  v6 = v4[6];
  sub_241C97000(v4 + 2, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 8);
  v16 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = type metadata accessor for MResource();
  *v9 = v0;
  v9[1] = sub_241CEABEC;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);

  return v16(v13, v14, v11, v12, v0 + 16, v10, v5, v6);
}

uint64_t sub_241CEABEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_241CEAD38;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_241CEAD14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_241CEAD50()
{
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_241CABA94;

  JUMPOUT(0x241CE9D58);
}

void sub_241CEAE54()
{
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_241CABA94;

  JUMPOUT(0x241CEA04CLL);
}

void sub_241CEAF58()
{
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_241CABA94;

  JUMPOUT(0x241CEA340);
}

void sub_241CEB05C()
{
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_241CAB794;

  JUMPOUT(0x241CEA634);
}

__n128 sub_241CEB160(uint64_t a1, uint64_t a2)
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

uint64_t sub_241CEB17C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241CEB1C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MCatalogService.FetchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MCatalogService.FetchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_241CEB368(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_241CEB37C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t sub_241CEB39C(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v36 = MEMORY[0x277D84F90];
  result = sub_241C94654(0, v9, 0);
  v35 = v7;
  if (v9)
  {
    v14 = a5[2];
    v15 = a4;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_59;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_61;
      }

      if (v14 == v19)
      {

        v20 = a5;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            sub_241C93918(&qword_27EC6A848, &qword_241CFEFD0);
            v20 = swift_allocObject();
            v23 = j__malloc_size(v20);
            v20[2] = v19;
            v20[3] = 2 * ((v23 - 32) / 24);
          }

          sub_241C93918(&qword_27EC6A838, &qword_241CFEFB0);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_241C94654((v21 > 1), v22 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v22 + 1;
      *(v36 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v35;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a4;
LABEL_34:
    v24 = v17 <= v7;
    if (a3 > 0)
    {
      v24 = v17 >= v7;
    }

    if (v24)
    {
      return v36;
    }

    while (1)
    {
      v25 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v26 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v27 = a5[2];
      if (v27 < v26)
      {
        v26 = a5[2];
      }

      v28 = v26 - v17;
      if (v26 < v17)
      {
        goto LABEL_63;
      }

      if (v17 < 0)
      {
        goto LABEL_64;
      }

      if (v27 == v28)
      {

        v29 = a5;
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
        if (v26 != v17)
        {
          if (v28 >= 1)
          {
            sub_241C93918(&qword_27EC6A848, &qword_241CFEFD0);
            v29 = swift_allocObject();
            v33 = j__malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v33 - 32) / 24);
          }

          sub_241C93918(&qword_27EC6A838, &qword_241CFEFB0);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_241C94654((v30 > 1), v31 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v31 + 1;
      *(v36 + 8 * v31 + 32) = v29;
      v32 = v25 <= v35;
      if (a3 > 0)
      {
        v32 = v25 >= v35;
      }

      v17 = v25;
      if (v32)
      {
        return v36;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

void sub_241CEB7E8()
{
  v12 = *(v0 + 16);
  v2 = *(v0 + 96);
  v9 = *(v0 + 88);
  v10 = *(v0 + 24);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_241CABA94;

  JUMPOUT(0x241CEA9F8);
}

uint64_t sub_241CEB8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A840, &qword_241CFEFB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CEB95C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_241CEB9FC()
{
  v12 = *(v0 + 16);
  v2 = *(v0 + 96);
  v9 = *(v0 + 88);
  v10 = *(v0 + 24);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_241CABA94;

  JUMPOUT(0x241CEA440);
}

void sub_241CEBB44()
{
  v12 = *(v0 + 16);
  v2 = *(v0 + 96);
  v9 = *(v0 + 88);
  v10 = *(v0 + 24);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_241CABA94;

  JUMPOUT(0x241CEA14CLL);
}

void sub_241CEBC8C()
{
  v12 = *(v0 + 16);
  v2 = *(v0 + 96);
  v9 = *(v0 + 88);
  v10 = *(v0 + 24);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_241CABA94;

  JUMPOUT(0x241CE9E58);
}

uint64_t sub_241CEBDD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_241C8EEE8((v0 + 48));
  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 140, 7);
}

void sub_241CEBE44()
{
  v12 = *(v0 + 16);
  v2 = *(v0 + 96);
  v9 = *(v0 + 88);
  v10 = *(v0 + 24);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_241CABA94;

  JUMPOUT(0x241CE9A3CLL);
}

id sub_241CEBF84@<X0>(void **a1@<X1>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_241CEBFB4(uint64_t a1)
{
  v14 = *(v1 + 16);
  v3 = *(v1 + 32);
  v13 = *(v1 + 24);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241CABA94;

  return sub_241CE5B88(a1, v14, v13, v1 + 40, v4, v5, v6, v7);
}

uint64_t CommonLibraryAssetInfoEmbedding.author.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 52)];
  v10 = *v9;
  v11 = *(v9 + 1);

  sub_241CEC1E0(v8);
  return v10;
}

uint64_t type metadata accessor for CommonLibraryAssetInfo()
{
  result = qword_27EC6A888;
  if (!qword_27EC6A888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CEC1E0(uint64_t a1)
{
  v2 = type metadata accessor for CommonLibraryAssetInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CommonLibraryAssetInfoEmbedding.coverAspectRatio.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 56)];
  v10 = *v9;
  v11 = v9[8];
  sub_241CEC1E0(v8);
  return v10;
}

uint64_t CommonLibraryAssetInfoEmbedding.coverURLString.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 60)];
  v10 = *v9;
  v11 = *(v9 + 1);

  sub_241CEC1E0(v8);
  return v10;
}

uint64_t CommonLibraryAssetInfoEmbedding.dateFinished.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_241C8E174(&v10[*(v7 + 64)], a3, &qword_27EC69DF0, &unk_241CFB1C0);
  return sub_241CEC1E0(v10);
}

uint64_t CommonLibraryAssetInfoEmbedding.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 68)];
  v10 = *v9;
  v11 = *(v9 + 1);

  sub_241CEC1E0(v8);
  return v10;
}

uint64_t CommonLibraryAssetInfoEmbedding.filePath.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 72)];
  v10 = *v9;
  v11 = *(v9 + 1);

  sub_241CEC1E0(v8);
  return v10;
}

uint64_t CommonLibraryAssetInfoEmbedding.finishedDateKind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  LOBYTE(a2) = v10[*(v7 + 76)];
  result = sub_241CEC1E0(v10);
  *a3 = a2;
  return result;
}

uint64_t CommonLibraryAssetInfoEmbedding.hasSpecifiedFinishedDate.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 84)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isDownloading.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 88)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isExplicit.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 92)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isFinished.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 96)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isLocal.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 100)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isManaged.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 104)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isPartOfSeries.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 108)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isPreorder.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 112)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isPurchased.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 116)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isInSamples.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 120)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.isSideloaded.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = v8[*(v5 + 124)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.language.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 128)];
  v10 = *v9;
  v11 = *(v9 + 1);

  sub_241CEC1E0(v8);
  return v10;
}

uint64_t CommonLibraryAssetInfoEmbedding.lastEngagedDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_241C8E174(&v10[*(v7 + 132)], a3, &qword_27EC69DF0, &unk_241CFB1C0);
  return sub_241CEC1E0(v10);
}

uint64_t CommonLibraryAssetInfoEmbedding.rating.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 136)];
  v10 = *v9;
  v11 = v9[8];
  sub_241CEC1E0(v8);
  return v10;
}

double CommonLibraryAssetInfoEmbedding.readingProgress.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = *&v8[*(v5 + 140)];
  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.releaseDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_241C8E174(&v10[*(v7 + 144)], a3, &qword_27EC69DF0, &unk_241CFB1C0);
  return sub_241CEC1E0(v10);
}

uint64_t CommonLibraryAssetInfoEmbedding.sequenceLabel.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 148)];
  v10 = *v9;
  v11 = *(v9 + 1);

  sub_241CEC1E0(v8);
  return v10;
}

uint64_t CommonLibraryAssetInfoEmbedding.sequenceNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 152)];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 4);
  LOBYTE(v5) = v9[20];
  sub_241CEC1E0(v8);
  return v10;
}

uint64_t CommonLibraryAssetInfoEmbedding.seriesSortKey.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 156)];
  v10 = *v9;
  v11 = v9[8];
  sub_241CEC1E0(v8);
  return v10;
}

unint64_t CommonLibraryAssetInfoEmbedding.versionNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = &v8[*(v5 + 160)];
  v10 = *v9;
  v11 = v9[4];
  sub_241CEC1E0(v8);
  return v10 | (v11 << 32);
}

uint64_t CommonLibraryAssetInfoEmbedding.assetLogID.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 16))(a1, a2);
  v8 = *v7;
  v9 = v7[1];

  sub_241CEC1E0(v7);
  return v8;
}

uint64_t CommonLibraryAssetInfoEmbedding.collectionMemberships.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v8 = *(v7 + 2);

  sub_241CEC1E0(v7);
  return v8;
}

uint64_t CommonLibraryAssetInfoEmbedding.id.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);

  sub_241CEC1E0(v7);
  return v8;
}

uint64_t CommonLibraryAssetInfoEmbedding.genreNames.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v9 = *&v8[*(v5 + 80)];

  sub_241CEC1E0(v8);
  return v9;
}

uint64_t CommonLibraryAssetInfoEmbedding.sortTitle.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v8 = *(v7 + 5);
  v9 = *(v7 + 6);

  sub_241CEC1E0(v7);
  return v8;
}

uint64_t CommonLibraryAssetInfoEmbedding.storeID.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v8 = *(v7 + 7);
  v9 = *(v7 + 8);

  sub_241CEC1E0(v7);
  return v8;
}

uint64_t CommonLibraryAssetInfoEmbedding.title.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  v8 = *(v7 + 9);
  v9 = *(v7 + 10);

  sub_241CEC1E0(v7);
  return v8;
}

uint64_t CommonLibraryAssetInfoEmbedding.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CommonLibraryAssetInfo();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_241C8E174(&v10[*(v7 + 48)], a3, &qword_27EC69EF0, &unk_241CFBC20);
  return sub_241CEC1E0(v10);
}

uint64_t LibraryAssetInfo.enriched(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  sub_241C96F9C(a1, v9);
  return (*(a3 + 224))(v9, a2, a3);
}

uint64_t CommonLibraryAssetInfo.assetLogID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CommonLibraryAssetInfo.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CommonLibraryAssetInfo.sortTitle.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t CommonLibraryAssetInfo.storeID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CommonLibraryAssetInfo.title.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t CommonLibraryAssetInfo.author.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CommonLibraryAssetInfo.coverAspectRatio.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CommonLibraryAssetInfo.coverURLString.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CommonLibraryAssetInfo.description.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CommonLibraryAssetInfo.filePath.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CommonLibraryAssetInfo.finishedDateKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CommonLibraryAssetInfo();
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t CommonLibraryAssetInfo.genreNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 72));
}

uint64_t CommonLibraryAssetInfo.language.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 120));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CommonLibraryAssetInfo.rating.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 128));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CommonLibraryAssetInfo.sequenceLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 140));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CommonLibraryAssetInfo.sequenceNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 144));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  v5 = *(v1 + 20);
  return result;
}

double CommonLibraryAssetInfo.seriesInfo.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t _s14BookFoundation14LibraryPDFInfoV10seriesInfoAA0c6SeriesF0_pSgvs_0(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69E58, &qword_241CFB200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*CommonLibraryAssetInfo.seriesInfo.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return sub_241CEE420;
}

void sub_241CEE420(uint64_t *a1)
{
  v1 = *a1;
  _s14BookFoundation14LibraryPDFInfoV10seriesInfoAA0c6SeriesF0_pSgvs_0(*a1);

  free(v1);
}

uint64_t CommonLibraryAssetInfo.seriesSortKey.getter()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 148));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CommonLibraryAssetInfo.init(assetLogID:collectionMemberships:id:sortTitle:storeID:title:url:author:coverAspectRatio:coverURLString:dateFinished:description:filePath:finishedDateKind:genreNames:hasSpecifiedFinishedDate:isDownloading:isExplicit:isFinished:isInSamples:isLocal:isManaged:isPartOfSeries:isPreorder:isPurchased:isSideloaded:language:lastEngagedDate:rating:readingProgress:releaseDate:sequenceLabel:sequenceNumber:seriesSortKey:versionNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49, uint64_t a50, char a51, int a52, int a53, char a54)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v69 = *a25;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  v56 = type metadata accessor for CommonLibraryAssetInfo();
  sub_241CEE838(a13, a9 + v56[10], &qword_27EC69EF0, &unk_241CFBC20);
  v57 = (a9 + v56[11]);
  *v57 = a14;
  v57[1] = a15;
  v58 = a9 + v56[12];
  *v58 = a16;
  *(v58 + 8) = a17 & 1;
  v59 = (a9 + v56[13]);
  *v59 = a18;
  v59[1] = a19;
  sub_241CEE838(a20, a9 + v56[14], &qword_27EC69DF0, &unk_241CFB1C0);
  v60 = (a9 + v56[15]);
  *v60 = a21;
  v60[1] = a22;
  v61 = (a9 + v56[16]);
  *v61 = a23;
  v61[1] = a24;
  *(a9 + v56[17]) = v69;
  *(a9 + v56[18]) = a26;
  *(a9 + v56[19]) = a27;
  *(a9 + v56[20]) = a28;
  *(a9 + v56[21]) = a29;
  *(a9 + v56[22]) = a30;
  *(a9 + v56[28]) = a31;
  *(a9 + v56[23]) = a32;
  *(a9 + v56[24]) = a33;
  *(a9 + v56[25]) = a34;
  *(a9 + v56[26]) = a35;
  *(a9 + v56[27]) = a36;
  *(a9 + v56[29]) = a37;
  v62 = (a9 + v56[30]);
  *v62 = a38;
  v62[1] = a39;
  sub_241CEE838(a40, a9 + v56[31], &qword_27EC69DF0, &unk_241CFB1C0);
  v63 = a9 + v56[32];
  *v63 = a41;
  *(v63 + 8) = a42 & 1;
  *(a9 + v56[33]) = a10;
  result = sub_241CEE838(a43, a9 + v56[34], &qword_27EC69DF0, &unk_241CFB1C0);
  v65 = (a9 + v56[35]);
  *v65 = a44;
  v65[1] = a45;
  v66 = a9 + v56[36];
  *v66 = a46;
  *(v66 + 8) = a47;
  *(v66 + 16) = a48;
  *(v66 + 20) = a49 & 1;
  v67 = a9 + v56[37];
  *v67 = a50;
  *(v67 + 8) = a51 & 1;
  v68 = a9 + v56[38];
  *v68 = a53;
  *(v68 + 4) = a54 & 1;
  return result;
}

uint64_t sub_241CEE838(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_241C93918(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_241CEE8A0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_241CEE8D8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_241CEE8EC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_241CEE958(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_241CEE990(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_241CEEA5C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 120));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_241CEEAC8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 128));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_241CEEB1C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 140));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_241CEEB54(uint64_t a1)
{
  v2 = (v1 + *(a1 + 144));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *(v2 + 20);
  return result;
}

double sub_241CEEB80@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void (*sub_241CEEB94(uint64_t *a1))(uint64_t *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return sub_241CEF684;
}

uint64_t sub_241CEEC00(uint64_t a1)
{
  v2 = (v1 + *(a1 + 148));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_241CEEC3C(uint64_t a1)
{
  result = sub_241CEED48(&qword_27EC6A870);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CEECC0(uint64_t a1)
{
  result = sub_241CEED48(&qword_27EC6A878);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CEED04(uint64_t a1)
{
  result = sub_241CEED48(&qword_27EC6A880);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CEED48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CommonLibraryAssetInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_241CEF0D4()
{
  sub_241CC3240();
  if (v0 <= 0x3F)
  {
    sub_241CC32FC(319, &qword_27EC6A3E8);
    if (v1 <= 0x3F)
    {
      sub_241CEF364(319, &qword_27EC6A3F0, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        sub_241CC32FC(319, &qword_27EC6A898);
        if (v3 <= 0x3F)
        {
          sub_241CEF364(319, &qword_27EC6A8A0, MEMORY[0x277CC9578]);
          if (v4 <= 0x3F)
          {
            sub_241CC32FC(319, &qword_27EC6A8A8);
            if (v5 <= 0x3F)
            {
              sub_241CC32FC(319, &qword_27EC6A8B0);
              if (v6 <= 0x3F)
              {
                sub_241CEF364(319, &qword_27EC6A8B8, type metadata accessor for Decimal);
                if (v7 <= 0x3F)
                {
                  sub_241CC32FC(319, &qword_27EC6A3F8);
                  if (v8 <= 0x3F)
                  {
                    sub_241CC32FC(319, &qword_27EC6A8C0);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_241CEF364(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_241CF9598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_241CEF3B8()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_241CEF3F8()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_241CEF424()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_241CEF464()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_241CEF4A4()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_241CEF4E4()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 120));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_241CEF524()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 128));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_241CEF550()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 140));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_241CEF590()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 144));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  v5 = *(v1 + 20);
  return result;
}

uint64_t sub_241CEF5D4()
{
  v1 = (v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 148));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_241CEF640()
{
  v1 = *(v0 + *(type metadata accessor for CommonLibraryAssetInfo() + 72));
}

uint64_t MAudiobook.narrator.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  sub_241CEF770();
  sub_241CD7154(v0, MEMORY[0x277D837D0], &v2);

  return v2;
}

unint64_t sub_241CEF770()
{
  result = qword_27EC6A8C8;
  if (!qword_27EC6A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A8C8);
  }

  return result;
}

id MAudiobook.__allocating_init(with:config:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a2 + 8);
  v8[0] = *a2;
  v9 = v6;
  return MAsset.init(with:config:)(a1, v8);
}

id MAudiobook.init(with:config:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4[0] = *a2;
  v5 = v2;
  return MAsset.init(with:config:)(a1, v4);
}

uint64_t sub_241CEF94C()
{
  swift_getObjectType();
  v0 = MAsset.seriesResource.getter();
  if (v0)
  {
    v1 = v0;
    v2 = sub_241CF1C04(3u);
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CEFCF0();
  sub_241CD7154(v2, v3, &v6);

  result = v6;
  if (!v6)
  {
    v5 = sub_241CF1C04(3u);
    sub_241CD7154(v5, v3, &v6);

    return v6;
  }

  return result;
}

unint64_t MAudiobook.seriesName.getter()
{
  result = sub_241CB3890();
  if (!result)
  {
    return result;
  }

  result = sub_241CF1840();
  if (!result)
  {
LABEL_11:

    return 0;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v5 = result;
    v6 = sub_241CF97D8();
    result = v5;
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x245CFDE40](0, result);

    v4 = *(v7 + OBJC_IVAR____TtC14BookFoundation7MSeries_name);
    v8 = *(v7 + OBJC_IVAR____TtC14BookFoundation7MSeries_name + 8);

    swift_unknownObjectRelease();
    return v4;
  }

  if (*(v1 + 16))
  {
    v2 = *(result + 32);

    v4 = *&v2[OBJC_IVAR____TtC14BookFoundation7MSeries_name];
    v3 = *&v2[OBJC_IVAR____TtC14BookFoundation7MSeries_name + 8];

    return v4;
  }

  __break(1u);
  return result;
}

id MAudiobook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MAudiobook()
{
  result = qword_27EC6A8D0;
  if (!qword_27EC6A8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_241CEFC9C()
{
  result = qword_27EC6A8E0;
  if (!qword_27EC6A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A8E0);
  }

  return result;
}

unint64_t sub_241CEFCF0()
{
  result = qword_27EC6A8E8;
  if (!qword_27EC6A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A8E8);
  }

  return result;
}

unint64_t sub_241CEFD58()
{
  result = qword_27EC6A8F0;
  if (!qword_27EC6A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A8F0);
  }

  return result;
}

double LibraryPDFInfo.seriesInfo.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void (*LibraryPDFInfo.seriesInfo.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return sub_241CEE420;
}

void (*sub_241CEFE68(uint64_t *a1))(uint64_t *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return sub_241CEF684;
}

uint64_t sub_241CEFED4(uint64_t a1)
{
  result = sub_241CF0030(&qword_27EC6A210);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibraryPDFInfo()
{
  result = qword_27EC6A908;
  if (!qword_27EC6A908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CEFF64(uint64_t a1)
{
  result = sub_241CF0030(&qword_27EC6A200);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CEFFA8(uint64_t a1)
{
  result = sub_241CF0030(&qword_27EC6A8F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CEFFEC(uint64_t a1)
{
  result = sub_241CF0030(&qword_27EC6A900);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CF0030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LibraryPDFInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_241CF00A0()
{
  result = type metadata accessor for CommonLibraryAssetInfo();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void __swiftcall GenreInfo.init(id:name:parentId:parentName:)(BookFoundation::GenreInfo *__return_ptr retstr, Swift::String_optional id, Swift::String name, Swift::String_optional parentId, Swift::String_optional parentName)
{
  retstr->id = id;
  retstr->name = name;
  retstr->parentId = parentId;
  retstr->parentName = parentName;
}

uint64_t GenreInfo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenreInfo.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GenreInfo.parentId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GenreInfo.parentName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_241CF01E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241CF0228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241CF0288(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_241CF0334(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = ((v3 + *(v4 + 80)) & ~*(v4 + 80)) + v5;
  if (v3 > v6)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_27:
      v13 = *(a1 + v5);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_27;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_241CF04A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 64);
  v8 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + v7;
  if (v5 > v8)
  {
    v8 = *(*(*(a4 + 16) - 8) + 64);
  }

  if (v7 > v8)
  {
    v8 = *(v6 + 64);
  }

  v9 = v8 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_41:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v8] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_26;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

id sub_241CF06C4()
{
  result = [objc_allocWithZone(BooksSettings) init];
  qword_27EC6A998 = result;
  return result;
}

void __swiftcall BooksSettings.init()(BooksSettings *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id BooksSettings.init()()
{
  v1 = OBJC_IVAR___BooksSettings_defaults;
  if (qword_2810D56C8 != -1)
  {
    swift_once();
  }

  v2 = qword_2810D56D0;
  *&v0[v1] = qword_2810D56D0;
  v5.receiver = v0;
  v5.super_class = BooksSettings;
  v3 = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_241CF0918()
{
  v0 = sub_241CF9008();

  return v0;
}

id sub_241CF0984(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_241CF0A08(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_241CF0A6C(void *a1)
{
  v1 = a1;
  v2 = sub_241CF9008();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.booksMenuOnLeft.getter()
{
  v1 = sub_241CF9008();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_241CF0B40(void *a1)
{
  v3 = a1;
  v1 = sub_241CF9338();
  v2 = sub_241CF9008();
  [v3 setValue:v1 forKey:v2];
}

void NSUserDefaults.booksMenuOnLeft.setter()
{
  v1 = sub_241CF9338();
  v2 = sub_241CF9008();
  [v0 setValue:v1 forKey:v2];
}

id sub_241CF0C54(void *a1)
{
  v1 = a1;
  v2 = sub_241CF9008();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.booksFilterBrightImages.getter()
{
  v1 = sub_241CF9008();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_241CF0D20(void *a1)
{
  v3 = a1;
  v1 = sub_241CF9338();
  v2 = sub_241CF9008();
  [v3 setValue:v1 forKey:v2];
}

void NSUserDefaults.booksFilterBrightImages.setter()
{
  v1 = sub_241CF9338();
  v2 = sub_241CF9008();
  [v0 setValue:v1 forKey:v2];
}

unint64_t type metadata accessor for BooksSettings()
{
  result = qword_27EC6A9A8;
  if (!qword_27EC6A9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC6A9A8);
  }

  return result;
}

uint64_t sub_241CF0E98()
{
  sub_241CF90B8();
}

uint64_t sub_241CF0FB4()
{
  sub_241CF90B8();
}

uint64_t sub_241CF1124()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  sub_241CF1F7C();
  sub_241CD7154(v0, MEMORY[0x277D83B88], &v2);

  return v2;
}

id MSeries.authorCount.getter()
{
  swift_getObjectType();
  v7 = 0;
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CF1F7C();
  sub_241CD7154(v0, v1, &v6);

  v2 = v6;
  sub_241CF1FD0();
  v3 = sub_241CD73D8(&v7, v2);

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 integerValue];

  return v4;
}

uint64_t MSeries.assetsResourceSet.getter()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v16);
  v1 = BFMCatalogRequestRelationshipAudiobooks;
  if (v16 == 4)
  {
    v1 = BFMCatalogRequestRelationshipBooks;
  }

  v2 = *v1;
  v3 = sub_241CBC9DC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_241CF9038();
    if (*(v4 + 16))
    {
      v7 = sub_241C8E1DC(v5, v6);
      v9 = v8;

      if (v9)
      {
        v10 = *(*(v4 + 56) + 8 * v7);

        return v10;
      }
    }

    else
    {
    }
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v12 = sub_241CF8E88();
  sub_241C936C0(v12, qword_27EC69E28);
  v13 = sub_241CF8E68();
  v14 = sub_241CF9508();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    MEMORY[0x245CFE970](v15, -1, -1);
  }

  return 0;
}

uint64_t MSeries.currentSort.getter()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v14);
  v1 = BFMCatalogRequestRelationshipBooks;
  if (v14 == 1)
  {
    v1 = BFMCatalogRequestRelationshipAudiobooks;
  }

  v2 = *v1;
  v3 = sub_241CBC9DC();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_241CF9038();
  if (!*(v4 + 16))
  {

    goto LABEL_9;
  }

  v7 = sub_241C8E1DC(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = *(*(v4 + 56) + 8 * v7);

  v11 = sub_241CA9644();
  if (v11)
  {
    v12 = v11;
    sub_241CF41F4();
    sub_241CD7154(v12, MEMORY[0x277D837D0], &v14);

    return v14;
  }

LABEL_10:

  return 0;
}

unint64_t MSeries.mappedSeries.getter()
{
  result = sub_241CF21E4(@"mapped-series");
  if (!result)
  {
    return 0;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v3 = result;
  v4 = sub_241CF97D8();
  result = v3;
  if (!v4)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x245CFDE40](0);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(result + 32);

LABEL_7:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t MSeries.assetsEnrichedWithSeries.getter()
{
  if (!MSeries.assetsResourceSet.getter())
  {
    return 0;
  }

  v0 = sub_241CF18A0(type metadata accessor for MAsset);

  if (!v0)
  {
    return 0;
  }

  v10 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
LABEL_21:
    v1 = sub_241CF97D8();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  while (v1 != v2)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x245CFDE40](v2, v0);
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v4 = *(v0 + 8 * v2 + 32);
    }

    v5 = v4;
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v7 = MAsset.enrichIfNeeded(with:)();

    ++v2;
    if (v7)
    {
      MEMORY[0x245CFD9D0]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_241CF92A8();
      }

      sub_241CF92E8();
      v3 = v10;
      v2 = v6;
    }
  }

  return v3;
}

uint64_t sub_241CF18A0(void (*a1)(void))
{
  v2 = sub_241CAAE20();
  if (v2)
  {
    v3 = v2;
    v13 = MEMORY[0x277D84F90];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_21:
      v5 = sub_241CF97D8();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v7 = MEMORY[0x277D84F90];
        do
        {
          v8 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x245CFDE40](v8, v3);
            }

            else
            {
              if (v8 >= *(v4 + 16))
              {
                goto LABEL_20;
              }

              v9 = *(v3 + 8 * v8 + 32);
            }

            v10 = v9;
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            a1(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v8;
            if (v6 == v5)
            {
              goto LABEL_23;
            }
          }

          MEMORY[0x245CFD9D0]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_241CF92A8();
          }

          sub_241CF92E8();
          v7 = v13;
        }

        while (v6 != v5);
        goto LABEL_23;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_23:

    return v7;
  }

  return 0;
}

uint64_t sub_241CF1A2C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CA95A4();
  result = sub_241CD7154(a1, v5, &v18);
  v7 = v18;
  if (!v18)
  {
    return 0;
  }

  v8 = 0;
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v9 = *(v7 + 16);
LABEL_3:
  v10 = v8;
  while (1)
  {
    if (v9 == v10)
    {

      return v17;
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    v8 = v10 + 1;
    v11 = *(v7 + 8 * v10 + 32);
    v12 = v2[4];
    v13 = *(v2 + 24);
    sub_241C93918(&qword_27EC6AA10, &qword_241CFF7D8);
    swift_allocObject();
    v14 = v12;

    result = sub_241CF2B14(v15, v13, v12);
    v10 = v8;
    if (result)
    {
      MEMORY[0x245CFD9D0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_241CF92A8();
      }

      result = sub_241CF92E8();
      v17 = v18;
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241CF1C04(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource_data);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v3 = 0xE400000000000000;
        v4 = 1717924456;
      }

      else
      {
        v3 = 0x8000000241D00100;
        v4 = 0xD000000000000011;
      }
    }

    else if (a1 == 4)
    {
      v3 = 0xE400000000000000;
      v4 = 1701869940;
    }

    else
    {
      v3 = 0xE200000000000000;
      v4 = 25705;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xE500000000000000;
      v4 = 0x7377656976;
    }

    else
    {
      v3 = 0xE400000000000000;
      v4 = 1635018093;
    }
  }

  else if (a1)
  {
    v3 = 0xED00007370696873;
    v4 = 0x6E6F6974616C6572;
  }

  else
  {
    v3 = 0xEA00000000007365;
    v4 = 0x7475626972747461;
  }

  *&v9[0] = v4;
  *(&v9[0] + 1) = v3;
  sub_241CF9668();
  if (*(v2 + 16) && (v5 = sub_241CF45AC(v10), (v6 & 1) != 0))
  {
    sub_241C93664(*(v2 + 56) + 32 * v5, v9);
    sub_241C93610(v10);
  }

  else
  {
    sub_241C93610(v10);
    memset(v9, 0, sizeof(v9));
  }

  sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
  sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CF1DC8(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource_data);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v3 = 0xE400000000000000;
        v4 = 1717924456;
      }

      else
      {
        v3 = 0x8000000241D00100;
        v4 = 0xD000000000000011;
      }
    }

    else if (a1 == 4)
    {
      v3 = 0xE400000000000000;
      v4 = 1701869940;
    }

    else
    {
      v3 = 0xE200000000000000;
      v4 = 25705;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xE500000000000000;
      v4 = 0x7377656976;
    }

    else
    {
      v3 = 0xE400000000000000;
      v4 = 1635018093;
    }
  }

  else if (a1)
  {
    v3 = 0xED00007370696873;
    v4 = 0x6E6F6974616C6572;
  }

  else
  {
    v3 = 0xEA00000000007365;
    v4 = 0x7475626972747461;
  }

  *&v9[0] = v4;
  *(&v9[0] + 1) = v3;
  sub_241CF9668();
  if (*(v2 + 16) && (v5 = sub_241CF45AC(v10), (v6 & 1) != 0))
  {
    sub_241C93664(*(v2 + 56) + 32 * v5, v9);
    sub_241C93610(v10);
  }

  else
  {
    sub_241C93610(v10);
    memset(v9, 0, sizeof(v9));
  }

  sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_241CF1F7C()
{
  result = qword_27EC6A9B8;
  if (!qword_27EC6A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A9B8);
  }

  return result;
}

unint64_t sub_241CF1FD0()
{
  result = qword_27EC6A9C0;
  if (!qword_27EC6A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A9C0);
  }

  return result;
}

uint64_t MSeries.trimmed()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v11 = *(v0 + OBJC_IVAR____TtC14BookFoundation9MResource_data);
  LOBYTE(v10[0]) = 1;
  sub_241CF4248();

  sub_241CF9668();
  sub_241CF40BC(v8, v10);
  sub_241C93610(v8);
  sub_241C8EA54(v10, &qword_27EC6A0B0, &qword_241CFE350);
  LOBYTE(v10[0]) = 2;
  sub_241CF9668();
  sub_241CF40BC(v8, v10);
  sub_241C93610(v8);
  sub_241C8EA54(v10, &qword_27EC6A0B0, &qword_241CFE350);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource_config + 8);
  v8[0] = *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource_config);
  v9 = v4;
  v5 = *(ObjectType + 128);
  v6 = v4;
  return v5(v3, v8);
}

uint64_t MSeries.assets.getter()
{
  if (!MSeries.assetsResourceSet.getter())
  {
    return 0;
  }

  v0 = sub_241CF18A0(type metadata accessor for MAsset);

  return v0;
}

uint64_t sub_241CF21E4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_241CBC9DC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_241CF9038();
    if (*(v4 + 16))
    {
      v7 = sub_241C8E1DC(v5, v6);
      v9 = v8;

      if (v9)
      {
        v10 = *(*(v4 + 56) + 8 * v7);

        v11 = *(v10 + 16);

        v13 = sub_241CF1A2C(v12);

        return v13;
      }
    }

    else
    {
    }
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v15 = sub_241CF8E88();
  sub_241C936C0(v15, qword_27EC69E28);
  v16 = a1;
  v17 = sub_241CF8E68();
  v18 = sub_241CF9508();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315394;
    v21 = sub_241CF9038();
    v23 = sub_241CB3A88(v21, v22, &v27);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_241CBE228(ObjectType);
    v26 = sub_241CB3A88(v24, v25, &v27);

    *(v19 + 14) = v26;
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v20, -1, -1);
    MEMORY[0x245CFE970](v19, -1, -1);
  }

  return 0;
}

id MSeries.init(with:config:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v11 = sub_241CF8CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a2;
  v16 = *(a2 + 1);
  v46 = 0;

  v17 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB443C();
  sub_241CD7154(a1, v17, &v44);

  v18 = v44;
  if (!v44)
  {

    goto LABEL_10;
  }

  v41 = v12;
  v43 = v16;
  v46 = 3;
  sub_241CF1F7C();
  sub_241CD7154(v18, MEMORY[0x277D839B0], &v44);
  v19 = v44;
  if (v44 == 2 || (v46 = 7, sub_241CD7154(v18, MEMORY[0x277D837D0], &v44), !v45))
  {
LABEL_9:

    goto LABEL_10;
  }

  v40 = v45;
  v39 = v44;
  v46 = 8;
  sub_241CD7154(v18, MEMORY[0x277D837D0], &v44);
  if (!v45)
  {

    goto LABEL_9;
  }

  sub_241CF8CD8();

  v20 = v41;
  if ((*(v41 + 48))(v10, 1, v11) != 1)
  {
    (*(v20 + 32))(v15, v10, v11);
    *(v3 + OBJC_IVAR____TtC14BookFoundation7MSeries_isOrdered) = v19 & 1;
    *(v3 + OBJC_IVAR____TtC14BookFoundation7MSeries_kind) = 2;
    v36 = (v3 + OBJC_IVAR____TtC14BookFoundation7MSeries_name);
    v37 = v40;
    *v36 = v39;
    v36[1] = v37;
    (*(v20 + 16))(v3 + OBJC_IVAR____TtC14BookFoundation7MSeries_url, v15, v11);
    v46 = 1;
    sub_241CD7154(v18, MEMORY[0x277D839B0], &v44);

    *(v3 + OBJC_IVAR____TtC14BookFoundation7MSeries_hasUniqueAuthors) = v44 & 1;
    LOBYTE(v44) = v42;
    v45 = v43;
    v38 = MResource.init(with:config:)(a1, &v44);
    (*(v20 + 8))(v15, v11);
    return v38;
  }

  sub_241C8EA54(v10, &qword_27EC69EF0, &unk_241CFBC20);
LABEL_10:
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_241CF8E88();
  sub_241C936C0(v21, qword_27EC69E28);

  v22 = sub_241CF8E68();
  v23 = sub_241CF9508();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315394;
    v26 = sub_241CAE848(ObjectType);
    v28 = sub_241CB3A88(v26, v27, &v44);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = sub_241CF8F08();
    v31 = v30;

    v32 = sub_241CB3A88(v29, v31, &v44);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_241C8C000, v22, v23, "Invalid data for %s: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v25, -1, -1);
    MEMORY[0x245CFE970](v24, -1, -1);
  }

  else
  {
  }

  type metadata accessor for MSeries();
  v33 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v34 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

BOOL sub_241CF2A6C()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v2);
  return v2 == 4;
}

BOOL sub_241CF2AC0()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v2);
  return v2 == 1;
}

void *sub_241CF2B14(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v8 = *v3;

  sub_241C93918(&qword_27EC6AA18, &qword_241CFF7E0);
  sub_241CF4DD4();
  sub_241CD7154(a1, MEMORY[0x277D837D0], &v28);
  v9 = v29;
  if (v29)
  {
    v10 = v28;
    v11 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v11 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_241CD7154(a1, MEMORY[0x277D837D0], &v28);
      v12 = v29;
      if (v29)
      {
        v27 = v28;
        sub_241CD7154(a1, MEMORY[0x277D837D0], &v28);

        v13 = v29;
        if (v29)
        {
          v14 = v28;

          sub_241CF6C94(v14, v13, &v28);
          v15 = v28;
          if (v28 == 6)
          {
          }

          else
          {
            v26 = static MResourceType.classType(for:)(v14, v13);

            if (v26)
            {
              type metadata accessor for MSeries();
              if (swift_dynamicCastMetatype())
              {
                v4[5] = v10;
                v4[6] = v9;
                *(v4 + 56) = v15;
                v4[8] = v27;
                v4[9] = v12;
                v4[2] = a1;
                *(v4 + 24) = a2;
                v4[4] = a3;
                return v4;
              }
            }
          }
        }
      }
    }
  }

  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v16 = sub_241CF8E88();
  sub_241C936C0(v16, qword_27EC69E28);

  v17 = sub_241CF8E68();
  v18 = sub_241CF9508();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v21 = sub_241CF8F08();
    v23 = v22;

    v24 = sub_241CB3A88(v21, v23, &v28);

    *(v19 + 4) = v24;

    _os_log_impl(&dword_241C8C000, v17, v18, "Invalid data for sparse resource: %s", v19, 0xCu);
    sub_241C8EEE8(v20);
    MEMORY[0x245CFE970](v20, -1, -1);
    MEMORY[0x245CFE970](v19, -1, -1);
  }

  else
  {
  }

  sub_241C93918(&qword_27EC6AA10, &qword_241CFF7D8);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_241CF2F68(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x52746E65746E6F63;
    if (a1 != 2)
    {
      v5 = 0x65726564724F7369;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    v2 = 1701667182;
    if (a1 != 7)
    {
      v2 = 7107189;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 1684957547;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_241CF30A0()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF0FB4();
  return sub_241CF99C8();
}

uint64_t sub_241CF30F0()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF0FB4();
  return sub_241CF99C8();
}

uint64_t sub_241CF3134@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_241CF4D88();
  *a2 = result;
  return result;
}

uint64_t sub_241CF3164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_241CF2F68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MSeries.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation7MSeries_name);
  v2 = *(v0 + OBJC_IVAR____TtC14BookFoundation7MSeries_name + 8);

  return v1;
}

uint64_t MSeries.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14BookFoundation7MSeries_url;
  v4 = sub_241CF8CF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_241CF34DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation7MSeries_name + 8);

  v2 = OBJC_IVAR____TtC14BookFoundation7MSeries_url;
  v3 = sub_241CF8CF8();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

id MSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSeries();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MSeries.isExplicit.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  sub_241CF1F7C();
  sub_241CD7154(v0, MEMORY[0x277D837D0], &v3);

  if (v4)
  {
    if (v3 == 0x746963696C707865 && v4 == 0xE800000000000000)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_241CF98C8();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_241CF3750()
{
  v1 = v0[2];
  v2 = MSeries.assetsResourceSet.getter();
  v0[3] = v2;
  if (v2)
  {
    v3 = [objc_opt_self() defaultBag];
    v0[4] = v3;
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_241CF3864;

    return sub_241CA9CC4(v3, &unk_241CFBAB0, 0);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_241CF3864()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_241CF4E38, 0, 0);
  }

  else
  {
    v4 = *(v3 + 24);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_241CF39CC()
{
  v1 = v0[2];
  v2 = MSeries.assetsResourceSet.getter();
  v0[3] = v2;
  if (v2)
  {
    if (*(v2 + 48))
    {
      v3 = [objc_opt_self() defaultBag];
      v0[4] = v3;
      v4 = swift_task_alloc();
      v0[5] = v4;
      *v4 = v0;
      v4[1] = sub_241CF3AF4;

      return sub_241CA9CC4(v3, &unk_241CFBAB0, 0);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_241CF3AF4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_241CF3D28;
  }

  else
  {

    v4 = sub_241CF3C10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CF3C10()
{
  if (*(v0[3] + 48))
  {
    v1 = [objc_opt_self() defaultBag];
    v0[4] = v1;
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_241CF3AF4;

    return sub_241CA9CC4(v1, &unk_241CFBAB0, 0);
  }

  else
  {
    v4 = v0[3];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_241CF3D28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_241CF3D94@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_241CF9838();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t MSeries.authorNames.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CF1F7C();
  sub_241CD7154(v0, v1, &v5);

  v2 = v5;
  v3 = sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CF1FD0();
  sub_241CD7154(v2, v3, &v5);

  return v5;
}

uint64_t sub_241CF3F60()
{
  sub_241CF9998();
  sub_241CF90B8();
  return sub_241CF99C8();
}

uint64_t sub_241CF3FDC()
{
  sub_241CF9998();
  sub_241CF90B8();
  return sub_241CF99C8();
}

uint64_t sub_241CF4034@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_241CF9838();

  *a2 = v5 != 0;
  return result;
}

double sub_241CF40BC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_241CF45AC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_241CC88F0();
      v11 = v13;
    }

    sub_241C93610(*(v11 + 48) + 40 * v8);
    sub_241C8E30C((*(v11 + 56) + 32 * v8), a2);
    sub_241CF4B5C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_241CF4160(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = *(v2 + 40);
  sub_241CF9998();
  sub_241CF99B8();
  if (v4 != 6)
  {
    MEMORY[0x245CFE100](a1);
  }

  v6 = sub_241CF99C8();

  return sub_241CF465C(a1, v6);
}

unint64_t sub_241CF41F4()
{
  result = qword_27EC6A9C8;
  if (!qword_27EC6A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A9C8);
  }

  return result;
}

unint64_t sub_241CF4248()
{
  result = qword_27EC6A9D0;
  if (!qword_27EC6A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A9D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSeries.Attributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MSeries.Attributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241CF44A8()
{
  result = qword_27EC6A9F8;
  if (!qword_27EC6A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A9F8);
  }

  return result;
}

unint64_t sub_241CF4500()
{
  result = qword_27EC6AA00;
  if (!qword_27EC6AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AA00);
  }

  return result;
}

unint64_t sub_241CF4558()
{
  result = qword_27EC6AA08;
  if (!qword_27EC6AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AA08);
  }

  return result;
}

unint64_t sub_241CF45AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_241CF9648();

  return sub_241CF46E0(a1, v5);
}

unint64_t sub_241CF45F0(char a1)
{
  v3 = *(v1 + 40);
  sub_241CF9998();
  MEMORY[0x245CFE100](a1 & 1);
  v4 = sub_241CF99C8();

  return sub_241CF47A8(a1 & 1, v4);
}

unint64_t sub_241CF465C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 6)
      {
        if (a1 == 6)
        {
          return result;
        }
      }

      else if (v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_241CF46E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_241CBE164(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CFDDB0](v9, a1);
      sub_241C93610(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_241CF47A8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_241CF4818(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_241CF9638() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_241CF9998();
      MEMORY[0x245CFE100](v11);
      result = sub_241CF99C8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_241CF49AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_241CF9638() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_241CF9998();

      sub_241CF90B8();
      v13 = sub_241CF99C8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_241CF4B5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_241CF9638() + 1) & ~v5;
    do
    {
      sub_241CBE164(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_241CF9648();
      result = sub_241C93610(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void (*sub_241CF4D00(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CFDE40](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_241CF4D80;
  }

  __break(1u);
  return result;
}

uint64_t sub_241CF4D88()
{
  v0 = sub_241CF9838();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_241CF4DD4()
{
  result = qword_27EC6AA20;
  if (!qword_27EC6AA20)
  {
    sub_241C9452C(&qword_27EC6AA18, &qword_241CFF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AA20);
  }

  return result;
}

BookFoundation::AssetArtistInfo __swiftcall AssetArtistInfo.init(id:name:)(Swift::String id, Swift::String name)
{
  *v2 = id;
  v2[1] = name;
  result.name = name;
  result.id = id;
  return result;
}

uint64_t AssetArtistInfo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetArtistInfo.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_241CF4EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_241CF4EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BooksAppleAccountFeatureFlag.init(rawValue:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = sub_241CF96D8();
  v8 = v7;
  if (v6 == sub_241CF96D8() && v8 == v9)
  {

    v13 = 0;
  }

  else
  {
    v11 = sub_241CF98C8();

    v13 = v11 ^ 1;
  }

  *a2 = v13 & 1;
  return result;
}

uint64_t BooksAppleAccountFeatureFlag.hashValue.getter()
{
  sub_241CF9998();
  MEMORY[0x245CFE100](0);
  return sub_241CF99C8();
}

void BooksAppleAccountFeatureFlag.rawValue.getter(uint64_t a1@<X8>)
{
  *a1 = "AABranding";
  *(a1 + 8) = 10;
  *(a1 + 16) = 2;
}

uint64_t sub_241CF508C()
{
  v0 = sub_241CF96D8();
  v2 = v1;
  if (v0 == sub_241CF96D8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_241CF98C8();
  }

  return v5 & 1;
}

uint64_t sub_241CF5128()
{
  sub_241CF9998();
  MEMORY[0x245CFE100](0);
  return sub_241CF99C8();
}

uint64_t sub_241CF5194()
{
  sub_241CF9998();
  MEMORY[0x245CFE100](0);
  return sub_241CF99C8();
}

uint64_t sub_241CF51D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = sub_241CF96D8();
  v8 = v7;
  if (v6 == sub_241CF96D8() && v8 == v9)
  {

    v13 = 0;
  }

  else
  {
    v11 = sub_241CF98C8();

    v13 = v11 ^ 1;
  }

  *a2 = v13 & 1;
  return result;
}

void sub_241CF5298(uint64_t a1@<X8>)
{
  *a1 = "AABranding";
  *(a1 + 8) = 10;
  *(a1 + 16) = 2;
}

void sub_241CF52DC()
{
  v8 = MEMORY[0x277D84F90];
  sub_241C94714(0, 1, 0);
  v0 = v8;
  v1 = sub_241CF96D8();
  v4 = v8[2];
  v3 = v8[3];
  if (v4 >= v3 >> 1)
  {
    v6 = v1;
    v7 = v2;
    sub_241C94714((v3 > 1), v4 + 1, 1);
    v2 = v7;
    v1 = v6;
    v0 = v8;
  }

  v0[2] = v4 + 1;
  v5 = &v0[2 * v4];
  v5[4] = v1;
  v5[5] = v2;
  sub_241C93918(&qword_27EC6A450, &qword_241CFD2C8);
  v8 = sub_241CF9808();
  sub_241CF56C8(v0, 1, &v8);
  off_27EC6AA28 = v8;
}

uint64_t BooksAppleAccountFeatureFlag.init(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_27EC69AE0 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a1 = v8;
    a2 = v9;
  }

  if (*(off_27EC6AA28 + 2))
  {
    sub_241C8E1DC(a1, a2);
    v5 = v4;

    v7 = v5 ^ 1;
  }

  else
  {

    v7 = 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t isFeatureEnabled(_:)()
{
  v2[3] = &type metadata for BooksAppleAccountFeatureFlag;
  v2[4] = sub_241CF551C();
  v0 = sub_241CF8E58();
  sub_241C8EEE8(v2);
  return v0 & 1;
}

unint64_t sub_241CF551C()
{
  result = qword_27EC6AA30;
  if (!qword_27EC6AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AA30);
  }

  return result;
}

unint64_t sub_241CF5574()
{
  result = qword_27EC6AA38;
  if (!qword_27EC6AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AA38);
  }

  return result;
}

unint64_t sub_241CF55D4(uint64_t a1)
{
  result = sub_241CF55FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241CF55FC()
{
  result = qword_2810D5720;
  if (!qword_2810D5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D5720);
  }

  return result;
}

unint64_t sub_241CF5654()
{
  result = qword_27EC6AA40;
  if (!qword_27EC6AA40)
  {
    sub_241C9452C(&qword_27EC6AA48, &qword_241CFF920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AA40);
  }

  return result;
}

void sub_241CF56C8(void *a1, char a2, uint64_t *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_241C8E1DC(v8, v7);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (*(v9 + 24) < v15)
  {
    sub_241CC7F4C(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_241C8E1DC(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_241CF9938();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_241CC8F70();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (*(v22 + 48) + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  v24 = *(v22 + 16);
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_241CF96C8();
    MEMORY[0x245CFD860](0xD00000000000001BLL, 0x8000000241D00B20);
    sub_241CF9788();
    MEMORY[0x245CFD860](39, 0xE100000000000000);
    sub_241CF9798();
    __break(1u);
    return;
  }

  *(v22 + 16) = v25;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      if (!v7)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = sub_241C8E1DC(v8, v7);
      v30 = *(v27 + 16);
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (*(v27 + 24) < v32)
      {
        sub_241CC7F4C(v32, 1);
        v33 = *a3;
        v28 = sub_241C8E1DC(v8, v7);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (*(v35 + 48) + 16 * v28);
      *v36 = v8;
      v36[1] = v7;
      v37 = *(v35 + 16);
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v26;
      *(v35 + 16) = v38;
      v6 += 2;
      if (v4 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t Comparable.clamped(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (sub_241CF8FC8())
  {
    v8 = *(*(a2 - 8) + 16);
    v9 = a3;
    v10 = a1;
  }

  else
  {
    v11 = *(sub_241CF8FE8() + 36);
    v12 = sub_241CF8FB8();
    v8 = *(*(a2 - 8) + 16);
    if (v12)
    {
      v10 = a1 + v11;
      v9 = a3;
    }

    else
    {
      v9 = a3;
      v10 = v4;
    }
  }

  return v8(v9, v10, a2);
}

uint64_t JSONDecoder.decode<A>(_:withJSONObject:options:)(uint64_t a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  sub_241C97000(a2, a2[3]);
  v14[0] = 0;
  v6 = [v5 dataWithJSONObject:sub_241CF98B8() options:a3 error:v14];
  swift_unknownObjectRelease();
  v7 = v14[0];
  if (v6)
  {
    v8 = sub_241CF8D18();
    v10 = v9;

    sub_241CF8A38();
    result = sub_241CD0B1C(v8, v10);
  }

  else
  {
    v12 = v7;
    sub_241CF8C58();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_241CF5C84()
{
  result = qword_27EC6AA50;
  if (!qword_27EC6AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AA50);
  }

  return result;
}

uint64_t sub_241CF5CE0()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  sub_241CF5C84();
  sub_241CD7154(v0, MEMORY[0x277D837D0], &v2);

  return v2;
}

uint64_t sub_241CF5D7C()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CF5E48()
{
  *v0;
  *v0;
  *v0;
  sub_241CF90B8();
}

uint64_t sub_241CF5F00()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CF5FC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_241CF6AC8();
  *a2 = result;
  return result;
}

void sub_241CF5FF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x6449746E65726170;
  v7 = 0xEA0000000000656DLL;
  v8 = 0x614E746E65726170;
  if (v2 != 3)
  {
    v8 = 7107189;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
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

uint64_t MGenre.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MGenre_name);
  v2 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MGenre_name + 8);

  return v1;
}

uint64_t MGenre.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14BookFoundation6MGenre_url;
  swift_beginAccess();
  v4 = sub_241CF8CF8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MGenre.url.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BookFoundation6MGenre_url;
  swift_beginAccess();
  v4 = sub_241CF8CF8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id MGenre.init(with:config:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_241CF8CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a2;
  v15 = *(a2 + 1);
  v43 = 0;

  v16 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB443C();
  sub_241CD7154(a1, v16, &v41);

  v17 = v41;
  if (v41)
  {
    v40 = v15;
    v38 = v11;
    v43 = 1;
    sub_241CF5C84();
    sub_241CD7154(v17, MEMORY[0x277D837D0], &v41);
    v18 = v42;
    if (v42 && (v37 = v41, v43 = 4, sub_241CD7154(v17, MEMORY[0x277D837D0], &v41), , v42))
    {
      sub_241CF8CD8();

      v19 = v38;
      v20 = (*(v38 + 48))(v9, 1, v10);
      v21 = v40;
      if (v20 != 1)
      {
        (*(v19 + 32))(v14, v9, v10);
        v34 = (v3 + OBJC_IVAR____TtC14BookFoundation6MGenre_name);
        *v34 = v37;
        v34[1] = v18;
        (*(v19 + 16))(v3 + OBJC_IVAR____TtC14BookFoundation6MGenre_url, v14, v10);
        LOBYTE(v41) = v39;
        v42 = v21;
        v35 = MResource.init(with:config:)(a1, &v41);
        (*(v19 + 8))(v14, v10);
        return v35;
      }

      sub_241CABCEC(v9);
    }

    else
    {
    }
  }

  else
  {
  }

  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v22 = sub_241CF8E88();
  sub_241C936C0(v22, qword_27EC69E28);

  v23 = sub_241CF8E68();
  v24 = sub_241CF9508();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_241CB3A88(0x7365726E6567, 0xE600000000000000, &v41);
    *(v25 + 12) = 2080;
    v27 = sub_241CF8F08();
    v29 = v28;

    v30 = sub_241CB3A88(v27, v29, &v41);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_241C8C000, v23, v24, "Missing genre data for %s: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v26, -1, -1);
    MEMORY[0x245CFE970](v25, -1, -1);
  }

  else
  {
  }

  v31 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v32 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_241CF683C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MGenre_name + 8);

  v2 = OBJC_IVAR____TtC14BookFoundation6MGenre_url;
  v3 = sub_241CF8CF8();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

id MGenre.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MGenre()
{
  result = qword_27EC6AA60;
  if (!qword_27EC6AA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CF69C4()
{
  result = sub_241CF8CF8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_241CF6A74()
{
  result = qword_27EC6AA70;
  if (!qword_27EC6AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AA70);
  }

  return result;
}

uint64_t sub_241CF6AC8()
{
  v0 = sub_241CF9838();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t static MResourceType.classType(for:)(uint64_t a1, uint64_t a2)
{

  sub_241CF6C94(a1, a2, &v5);
  if (v5 <= 2u)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return type metadata accessor for MAudiobookSeries();
      }

      else
      {
        return type metadata accessor for MAuthor();
      }
    }

    else
    {
      return type metadata accessor for MAudiobook();
    }
  }

  else if (v5 > 4u)
  {
    if (v5 == 5)
    {
      return type metadata accessor for MGenre();
    }

    else
    {
      return 0;
    }
  }

  else if (v5 == 3)
  {
    return type metadata accessor for MBook();
  }

  else
  {
    return type metadata accessor for MBookSeries();
  }
}

uint64_t MResourceType.name.getter()
{
  v1 = *v0;
  v2 = 0x6F622D6F69647561;
  v3 = 0x736B6F6F62;
  v4 = 0x7265732D6B6F6F62;
  if (v1 != 4)
  {
    v4 = 0x7365726E6567;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x73726F68747561;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_241CF6C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x6F622D6F69647561 && a2 == 0xEB00000000736B6FLL || (sub_241CF98C8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000241D008F0 == a2 || (sub_241CF98C8() & 1) != 0)
  {

    v7 = 1;
  }

  else if (a1 == 0x73726F68747561 && a2 == 0xE700000000000000 || (sub_241CF98C8() & 1) != 0)
  {

    v7 = 2;
  }

  else if (a1 == 0x736B6F6F62 && a2 == 0xE500000000000000 || (sub_241CF98C8() & 1) != 0)
  {

    v7 = 3;
  }

  else if (a1 == 0x7265732D6B6F6F62 && a2 == 0xEB00000000736569 || (sub_241CF98C8() & 1) != 0)
  {

    v7 = 4;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000)
  {

    v7 = 5;
  }

  else
  {
    v8 = sub_241CF98C8();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *a3 = v7;
  return result;
}

BookFoundation::MResourceType_optional __swiftcall MResourceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t MResourceType.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    sub_241CF96C8();
    MEMORY[0x245CFD860](0xD000000000000018, 0x8000000241D01330);
    type metadata accessor for __BFMResourceType(0);
    sub_241CF9788();
    MEMORY[0x245CFD860](46, 0xE100000000000000);
    result = sub_241CF9798();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_241CF6FBC()
{
  result = qword_2810D5760;
  if (!qword_2810D5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D5760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MResourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MResourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_241CF71B8(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v5 = sub_241CF9A08();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v29 + 1) = a1(0);
  v9 = sub_241CA8DEC(&v28);
  sub_241CF7CC0(v2, v9, a2);
  sub_241CF99D8();
  sub_241CF99E8();
  *&v28 = sub_241CF9A58();
  *(&v28 + 1) = v10;
  MEMORY[0x245CFD860](40, 0xE100000000000000);
  v31 = v28;
  v22 = v8;
  v21 = sub_241CF99F8();
  sub_241CF9768();
  sub_241CF9818();
  if (*(&v30 + 1))
  {
    v11 = MEMORY[0x277D84F90];
    do
    {
      v27[0] = v28;
      v27[1] = v29;
      v27[2] = v30;
      if (*(&v28 + 1))
      {
        v25 = 0;
        v26 = 0xE000000000000000;
        MEMORY[0x245CFD860](*&v27[0]);
        MEMORY[0x245CFD860](8250, 0xE200000000000000);
        sub_241CF9788();
        v13 = v25;
        v12 = v26;
        sub_241CBF804(v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_241CBFC8C(0, *(v11 + 2) + 1, 1, v11);
        }

        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          v11 = sub_241CBFC8C((v14 > 1), v15 + 1, 1, v11);
        }

        *(v11 + 2) = v15 + 1;
        v16 = &v11[16 * v15];
        *(v16 + 4) = v13;
        *(v16 + 5) = v12;
      }

      else
      {
        sub_241CBF804(v27);
      }

      sub_241CF9818();
    }

    while (*(&v30 + 1));
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  *&v28 = v11;
  sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CAC078();
  v17 = sub_241CF8FA8();
  v19 = v18;

  MEMORY[0x245CFD860](v17, v19);

  MEMORY[0x245CFD860](41, 0xE100000000000000);
  (*(v23 + 8))(v22, v24);
  return v31;
}

uint64_t BookSeriesInfo.init(dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_241CF7650(a1, a2);
  result = type metadata accessor for BookSeriesInfo();
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_241CF7650(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BookSeriesInfo()
{
  result = qword_27EC6AA90;
  if (!qword_27EC6AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BookSeriesInfo.init(dataSource:additionalStoreAssetsForEnrichment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_241CF7650(a1, a3);
  result = type metadata accessor for BookSeriesInfo();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t BookSeriesInfo.contentKind.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_241CCE08C();
}

uint64_t sub_241CF77D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BookSeriesInfo.additionalStoreAssetsForEnrichment.getter()
{
  v1 = *(v0 + *(type metadata accessor for BookSeriesInfo() + 20));
}

uint64_t sub_241CF7914()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_241CCE08C();
}

uint64_t sub_241CF7994(uint64_t a1)
{
  result = sub_241CF7B24(&qword_27EC6AA78, type metadata accessor for BookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CF7A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_241CF7650(a1, a3);
  *(a3 + *(a2 + 20)) = 0;
  return result;
}

uint64_t sub_241CF7A74(uint64_t a1)
{
  result = sub_241CF7B24(&qword_27EC6AA80, type metadata accessor for BookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CF7ACC(uint64_t a1)
{
  result = sub_241CF7B24(&qword_27EC6AA88, type metadata accessor for BookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CF7B24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_241CF7BD4()
{
  sub_241CF7C58();
  if (v0 <= 0x3F)
  {
    sub_241CB6374();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_241CF7C58()
{
  if (!qword_27EC6AAA0)
  {
    type metadata accessor for LibraryBookSeriesInfo();
    type metadata accessor for MBookSeries();
    v0 = type metadata accessor for ContentDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27EC6AAA0);
    }
  }
}

uint64_t sub_241CF7CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t BooksUIKitFeatureFlag.init(rawValue:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = sub_241CF96D8();
  v8 = v7;
  if (v6 == sub_241CF96D8() && v8 == v9)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v11 = sub_241CF98C8();

  v13 = 0;
  if ((v11 & 1) == 0)
  {
    v14 = sub_241CF96D8();
    v16 = v15;
    if (v14 == sub_241CF96D8() && v16 == v17)
    {
      v13 = 1;
LABEL_10:

      goto LABEL_11;
    }

    v18 = sub_241CF98C8();

    if (v18)
    {
      v13 = 1;
      goto LABEL_11;
    }

    v13 = 2;
    v19 = sub_241CF96D8();
    v21 = v20;
    if (v19 == sub_241CF96D8() && v21 == v22)
    {
      goto LABEL_10;
    }

    v23 = sub_241CF98C8();

    if (v23)
    {
      goto LABEL_11;
    }

    v24 = sub_241CF96D8();
    v26 = v25;
    v13 = 3;
    if (v24 == sub_241CF96D8() && v26 == v27)
    {
      goto LABEL_10;
    }

    v28 = sub_241CF98C8();

    if (v28)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }
  }

LABEL_11:
  *a2 = v13;
  return result;
}

uint64_t BooksUIKitFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

void BooksUIKitFeatureFlag.rawValue.getter(uint64_t a1@<X8>)
{
  v2 = "uip_floating_tab_bar";
  v3 = 20;
  v4 = "uip_fluid_transitions";
  v5 = 21;
  if (*v1 != 2)
  {
    v4 = "uip_document_landing_page";
    v5 = 25;
  }

  if (*v1)
  {
    v2 = "uip_floating_tab_bar_only";
    v3 = 25;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = 2;
}

uint64_t sub_241CF803C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_241CACEC4();
}

uint64_t sub_241CF8048@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v2;
  return BooksUIKitFeatureFlag.init(rawValue:)(&v4, a2);
}

void sub_241CF807C(uint64_t a1@<X8>)
{
  v2 = "uip_floating_tab_bar";
  v3 = 20;
  v4 = "uip_fluid_transitions";
  v5 = 21;
  if (*v1 != 2)
  {
    v4 = "uip_document_landing_page";
    v5 = 25;
  }

  if (*v1)
  {
    v2 = "uip_floating_tab_bar_only";
    v3 = 25;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = 2;
}

void sub_241CF80E4()
{
  v33 = MEMORY[0x277D84F90];
  sub_241C94734(0, 4, 0);
  v0 = v33;
  v1 = byte_2853DC3B8;
  v2 = sub_241CF96D8();
  v5 = *(v33 + 16);
  v4 = *(v33 + 24);
  if (v5 >= v4 >> 1)
  {
    v25 = v2;
    v26 = v3;
    sub_241C94734((v4 > 1), v5 + 1, 1);
    v3 = v26;
    v2 = v25;
    v0 = v33;
  }

  *(v0 + 16) = v5 + 1;
  v6 = v0 + 24 * v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v1;
  v7 = byte_2853DC3B9;
  v8 = sub_241CF96D8();
  v33 = v0;
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (v11 >= v10 >> 1)
  {
    v27 = v8;
    v28 = v9;
    sub_241C94734((v10 > 1), v11 + 1, 1);
    v9 = v28;
    v8 = v27;
    v0 = v33;
  }

  *(v0 + 16) = v11 + 1;
  v12 = v0 + 24 * v11;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v7;
  v13 = byte_2853DC3BA;
  v14 = sub_241CF96D8();
  v33 = v0;
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  if (v17 >= v16 >> 1)
  {
    v29 = v14;
    v30 = v15;
    sub_241C94734((v16 > 1), v17 + 1, 1);
    v15 = v30;
    v14 = v29;
    v0 = v33;
  }

  *(v0 + 16) = v17 + 1;
  v18 = v0 + 24 * v17;
  *(v18 + 32) = v14;
  *(v18 + 40) = v15;
  *(v18 + 48) = v13;
  v19 = byte_2853DC3BB;
  v20 = sub_241CF96D8();
  v33 = v0;
  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  if (v23 >= v22 >> 1)
  {
    v31 = v20;
    v32 = v21;
    sub_241C94734((v22 > 1), v23 + 1, 1);
    v21 = v32;
    v20 = v31;
    v0 = v33;
  }

  *(v0 + 16) = v23 + 1;
  v24 = v0 + 24 * v23;
  *(v24 + 32) = v20;
  *(v24 + 40) = v21;
  *(v24 + 48) = v19;
  sub_241C93918(&qword_27EC6A448, "a");
  v33 = sub_241CF9808();
  sub_241CF86B4(v0, 1, &v33);
  off_27EC6AAA8 = v33;
}

BookFoundation::BooksUIKitFeatureFlag_optional __swiftcall BooksUIKitFeatureFlag.init(key:)(Swift::String key)
{
  v2 = v1;
  if (qword_27EC69AE8 != -1)
  {
    countAndFlagsBits = key._countAndFlagsBits;
    object = key._object;
    swift_once();
    key._countAndFlagsBits = countAndFlagsBits;
    key._object = object;
  }

  v3 = off_27EC6AAA8;
  if (!*(off_27EC6AAA8 + 2))
  {

    goto LABEL_7;
  }

  v4 = sub_241C8E1DC(key._countAndFlagsBits, key._object);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v8 = 4;
    goto LABEL_8;
  }

  v8 = *(v3[7] + v4);
LABEL_8:
  *v2 = v8;
  return result;
}

unint64_t sub_241CF8570()
{
  result = qword_27EC6AAB0;
  if (!qword_27EC6AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AAB0);
  }

  return result;
}

unint64_t sub_241CF85D0(uint64_t a1)
{
  result = sub_241CF85F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241CF85F8()
{
  result = qword_2810D5728;
  if (!qword_2810D5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D5728);
  }

  return result;
}

unint64_t sub_241CF8650()
{
  result = qword_27EC6AAB8;
  if (!qword_27EC6AAB8)
  {
    sub_241C9452C(&unk_27EC6AAC0, &qword_241CFFD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6AAB8);
  }

  return result;
}

void sub_241CF86B4(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_241C8E1DC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_241CC81DC(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_241C8E1DC(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_241CF9938();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_241CC90CC();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + v10) = v6;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_241CF96C8();
    MEMORY[0x245CFD860](0xD00000000000001BLL, 0x8000000241D00B20);
    sub_241CF9788();
    MEMORY[0x245CFD860](39, 0xE100000000000000);
    sub_241CF9798();
    __break(1u);
    sub_241CF8A38();
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v26 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = sub_241C8E1DC(v8, v7);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_241CC81DC(v32, 1);
        v33 = *a3;
        v28 = sub_241C8E1DC(v8, v7);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v8;
      v36[1] = v7;
      *(v35[7] + v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v35[2] = v38;
      v5 += 24;
      if (v39 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}