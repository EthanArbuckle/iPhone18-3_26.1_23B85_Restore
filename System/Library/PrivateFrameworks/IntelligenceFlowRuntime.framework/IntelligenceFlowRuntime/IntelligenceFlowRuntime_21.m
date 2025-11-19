uint64_t sub_22BD44F8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6598, &qword_22BDCE498);
    v1 = sub_22BDBB524();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v4)));
    v11 = (*(a1 + 48) + v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(a1 + 56) + v10);
    v29 = *v14;
    v30 = v14[1];

    sub_22BBE6DE0(&qword_27D8E65A0, &qword_22BDCE4A0);
    sub_22BBE6DE0(&qword_27D8E6570, &qword_22BDCFBF0);
    swift_dynamicCast();
    v27 = v32;
    v28 = v31;
    v31 = v12;
    v32 = v13;
    v15 = *(v1 + 40);
    sub_22BB97200();
    result = sub_22BDBABA4();
    v16 = -1 << *(v1 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v4 &= v4 - 1;
    v24 = (*(v1 + 48) + 16 * v19);
    *v24 = v12;
    v24[1] = v13;
    v25 = (*(v1 + 56) + 16 * v19);
    *v25 = v28;
    v25[1] = v27;
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_22BD45220(uint64_t a1)
{
  v26 = sub_22BDB9B04();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v25 = sub_22BDB9B14();
  v9 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v27 = a1;
  v28 = *(a1 + 16);
  v24 = (v13 + 8);
  v23 = *MEMORY[0x277D1E7E0];
  v22 = (v2 + 104);
  v14 = (v2 + 8);
  do
  {
    v15 = v12;
    if (v28 == v12)
    {
      break;
    }

    v16 = *(sub_22BDB9B54() - 8);
    ++v12;
    v17 = v27 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v15;
    sub_22BDB9B24();
    sub_22BDB9AD4();
    (*v24)(v11, v25);
    v18 = v26;
    (*v22)(v6, v23, v26);
    LOBYTE(v17) = sub_22BDB9AF4();
    v19 = *v14;
    (*v14)(v6, v18);
    v19(v8, v18);
  }

  while ((v17 & 1) == 0);
  return v28 != v15;
}

void sub_22BD454DC()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22BB38518();
  v8 = sub_22BBE6DE0(v6, v7);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  sub_22BD62134();
  sub_22BB3CD70(v14, v15, v16, &qword_22BDBD020);
  v17 = sub_22BDBAEF4();
  v18 = sub_22BB3A190();
  v20 = sub_22BB3AA28(v18, v19, v17);

  if (v20 == 1)
  {
    sub_22BB325EC(v13, &qword_27D8E2978, &qword_22BDBD020);
  }

  else
  {
    sub_22BDBAEE4();
    sub_22BB30474(v17);
    v22 = *(v21 + 8);
    v23 = sub_22BB8AB74();
    v24(v23);
  }

  v26 = *(v1 + 16);
  v25 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v26)
  {
    swift_getObjectType();
    v27 = sub_22BDBAE44();
    v29 = v28;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v32[0] = v5;
      v30 = sub_22BDBAC24() + 32;

      if (v29 | v27)
      {
        v33[0] = 0;
        v33[1] = 0;
        v31 = v33;
        v33[2] = v27;
        v33[3] = v29;
      }

      else
      {
        v31 = 0;
      }

      v32[1] = 7;
      v32[2] = v31;
      v32[3] = v30;
      swift_task_create();
      sub_22BB313B4();

      sub_22BB325EC(v3, &qword_27D8E2978, &qword_22BDBD020);

      goto LABEL_14;
    }
  }

  else
  {
    v27 = 0;
    v29 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_22BB325EC(v3, &qword_27D8E2978, &qword_22BDBD020);
  if (v29 | v27)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v27;
    v33[7] = v29;
  }

  swift_task_create();
LABEL_14:
  sub_22BB314EC();
}

void sub_22BD4573C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22BB34FB8();
  v8 = sub_22BBE6DE0(v6, v7);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = sub_22BB95B5C();
  sub_22BB3CD70(v14, v15, &qword_27D8E2978, &qword_22BDBD020);
  v16 = sub_22BDBAEF4();
  v17 = sub_22BB3A190();
  v19 = sub_22BB3AA28(v17, v18, v16);

  if (v19 == 1)
  {
    sub_22BB325EC(v13, &qword_27D8E2978, &qword_22BDBD020);
  }

  else
  {
    sub_22BDBAEE4();
    sub_22BB30474(v16);
    v21 = *(v20 + 8);
    v22 = sub_22BB393C4();
    v23(v22);
  }

  v25 = *(v1 + 16);
  v24 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v25)
  {
    swift_getObjectType();
    v26 = v25;
    sub_22BDBAE44();
    sub_22BD6345C();
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      sub_22BB362AC();
      v27 = sub_22BDBAC24() + 32;

      sub_22BBE6DE0(&qword_27D8E6610, &qword_22BDCE598);
      v28 = (v24 | v26);
      if (v24 | v26)
      {
        v30[0] = 0;
        v30[1] = 0;
        v28 = v30;
        v30[2] = v26;
        v30[3] = v24;
      }

      v29[1] = 7;
      v29[2] = v28;
      v29[3] = v27;
      swift_task_create();
      sub_22BB313B4();

      sub_22BB325EC(v3, &qword_27D8E2978, &qword_22BDBD020);

      goto LABEL_13;
    }
  }

  else
  {
    v26 = 0;
    v24 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_22BB325EC(v3, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BBE6DE0(&qword_27D8E6610, &qword_22BDCE598);
  if (v24 | v26)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v26;
    v30[7] = v24;
  }

  swift_task_create();
LABEL_13:
  sub_22BB314EC();
}

uint64_t sub_22BD459A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_22BDB9254();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v30 - v9;
  v38 = sub_22BDB9B14();
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB9B54();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v47 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = *(a1 + 16);
  v40 = a1;
  v41 = v17;
  v35 = (v10 + 8);
  v36 = v18 + 16;
  v34 = *MEMORY[0x277D1E308];
  v19 = (v4 + 8);
  v42 = v18;
  v32 = (v18 + 8);
  v33 = (v4 + 104);
  while (1)
  {
    if (v41 == v16)
    {
      v26 = 1;
      v27 = v31;
      return sub_22BB336D0(v27, v26, 1, v13);
    }

    v20 = v13;
    (*(v42 + 16))(v47, v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v16, v13);
    v21 = v37;
    sub_22BDB9B24();
    v22 = v39;
    sub_22BDB9AC4();
    (*v35)(v21, v38);
    (*v33)(v8, v34, v3);
    sub_22BB3B194(&qword_27D8E3210, MEMORY[0x277D1E310]);
    sub_22BDBAD04();
    sub_22BDBAD04();
    if (v45 == v43 && v46 == v44)
    {
      break;
    }

    v24 = sub_22BDBB6D4();

    v25 = *v19;
    (*v19)(v8, v3);
    v25(v22, v3);
    if (v24)
    {
      goto LABEL_11;
    }

    v13 = v20;
    (*v32)(v47, v20);
    ++v16;
  }

  v28 = *v19;
  (*v19)(v8, v3);
  v28(v22, v3);
LABEL_11:
  v27 = v31;
  v13 = v20;
  (*(v42 + 32))(v31, v47, v20);
  v26 = 0;
  return sub_22BB336D0(v27, v26, 1, v13);
}

BOOL sub_22BD45DE8(uint64_t a1)
{
  v26 = sub_22BDB9B04();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v25 = sub_22BDB9B14();
  v9 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v27 = a1;
  v28 = *(a1 + 16);
  v24 = (v13 + 8);
  v23 = *MEMORY[0x277D1E7F0];
  v22 = (v2 + 104);
  v14 = (v2 + 8);
  do
  {
    v15 = v12;
    if (v28 == v12)
    {
      break;
    }

    v16 = *(sub_22BDB9B54() - 8);
    ++v12;
    v17 = v27 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v15;
    sub_22BDB9B24();
    sub_22BDB9AD4();
    (*v24)(v11, v25);
    v18 = v26;
    (*v22)(v6, v23, v26);
    LOBYTE(v17) = sub_22BDB9AF4();
    v19 = *v14;
    (*v14)(v6, v18);
    v19(v8, v18);
  }

  while ((v17 & 1) != 0);
  return v28 == v15;
}

uint64_t sub_22BD46088(uint64_t a1)
{
  v2 = sub_22BDB9B04();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v19 = a1;
  v9 = *(a1 + 16);
  v18 = *MEMORY[0x277D1E7E8];
  v11 = (v10 + 104);
  v12 = (v10 + 8);
  do
  {
    if (!v9)
    {
      break;
    }

    --v9;
    v13 = type metadata accessor for EventPayloadWithPreassignedID(0);
    v14 = v19 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)) + *(*(v13 - 8) + 72) * v9 + *(v13 + 20);
    sub_22BDB9AD4();
    (*v11)(v6, v18, v2);
    LOBYTE(v14) = sub_22BDB9AF4();
    v15 = *v12;
    (*v12)(v6, v2);
    v15(v8, v2);
  }

  while ((v14 & 1) == 0);
  return v9;
}

uint64_t sub_22BD46274(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E65A8, &qword_22BDCE4A8);
    v3 = sub_22BDBB524();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22BD5D6C8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_22BD4633C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < a1 || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_22BB2F0C8(v6);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);

    sub_22BD64BE0();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_22BD463E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    sub_22BD64BE0();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_22BD46448(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a6;
  v25 = a1;
  v26 = a4;
  v11 = sub_22BDB5B44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = *a1;

  v19 = sub_22BDBAEF4();
  sub_22BB336D0(v17, 1, 1, v19);
  (*(v12 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  v20 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  (*(v12 + 32))(&v21[v20], &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v22 = &v21[(v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  v23 = v27;
  *v22 = v26;
  *(v22 + 1) = v23;
  *(v22 + 2) = v28;
  *(v22 + 3) = a7;

  sub_22BD454DC();
  *v25 = v24;
}

uint64_t sub_22BD46670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = sub_22BDB4C64();
  v7[28] = v8;
  v9 = *(v8 - 8);
  v7[29] = v9;
  v10 = *(v9 + 64) + 15;
  v7[30] = swift_task_alloc();
  v11 = sub_22BDBA014();
  v7[31] = v11;
  v12 = *(v11 - 8);
  v7[32] = v12;
  v13 = *(v12 + 64) + 15;
  v7[33] = swift_task_alloc();
  v14 = sub_22BDB7734();
  v7[34] = v14;
  v15 = *(v14 - 8);
  v7[35] = v15;
  v16 = *(v15 + 64) + 15;
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v17 = sub_22BDB7754();
  v7[38] = v17;
  v18 = *(v17 - 8);
  v7[39] = v18;
  v19 = *(v18 + 64) + 15;
  v7[40] = swift_task_alloc();
  v20 = sub_22BDB77D4();
  v7[41] = v20;
  v21 = *(v20 - 8);
  v7[42] = v21;
  v22 = *(v21 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD468C0, 0, 0);
}

uint64_t sub_22BD468C0()
{
  v2 = *(v0 + 352);
  v3 = *(v0 + 192);
  v4 = sub_22BDB64C4();
  sub_22BB34ED4(v4);
  sub_22BD63964();

  *(v0 + 360) = sub_22BDB64D4();
  sub_22BDB63E4();
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB134();
  if (sub_22BB333C0(v6))
  {
    v7 = sub_22BB37F30();
    sub_22BB360F0(v7);
    sub_22BB2F0A8(&dword_22BB2C000, v8, v9, "Indexing client actions");
    sub_22BB35600();
  }

  v10 = *(v0 + 352);
  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
  v13 = *(v0 + 320);
  v14 = *(v0 + 296);

  *(v0 + 368) = *(v12 + 8);
  v15 = sub_22BB30AE4();
  v16(v15);
  sub_22BDB60C4();
  sub_22BDB7724();
  v17 = sub_22BDB7744();
  sub_22BDBB1D4();
  if (sub_22BD646BC())
  {
    v18 = *(v0 + 296);
    v19 = sub_22BB37F30();
    *v19 = 0;
    sub_22BDB7714();
    sub_22BD6424C();
    _os_signpost_emit_with_name_impl(v20, v21, v22, v23, v24, v25, v19, 2u);
    sub_22BB32238();
  }

  v27 = *(v0 + 312);
  v26 = *(v0 + 320);
  v29 = *(v0 + 296);
  v28 = *(v0 + 304);
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);
  v32 = *(v0 + 272);

  sub_22BB97BA8();
  v33 = sub_22BB393C4();
  v34(v33);
  v35 = sub_22BDB77A4();
  sub_22BB34ED4(v35);
  sub_22BB3A190();
  *(v0 + 376) = sub_22BDB7794();
  v36 = *(v31 + 8);
  v37 = sub_22BB32E04();
  v38(v37);
  v39 = *(v27 + 8);
  v40 = sub_22BB2F0E0();
  v41(v40);
  v42 = static ToolboxManager.toolboxes()();
  *(v0 + 384) = v42;
  v43 = *(v42 + 32);
  *(v0 + 440) = v43;
  v44 = -1;
  if (-(-1 << v43) < 64)
  {
    v44 = ~(-1 << -(-1 << v43));
  }

  v45 = v44 & *(v42 + 64);
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    sub_22BD63CF8();
    v49 = (v48 >> 6) - 1;
    do
    {
      if (v49 == v47)
      {

        sub_22BDB8124();
        sub_22BDB8114();
        sub_22BB30F68();
        sub_22BDB8C64();
        sub_22BB98088();
        sub_22BB3B194(v76, v77);
        sub_22BDB8104();

        sub_22BDB8114();
        sub_22BB30F68();
        sub_22BDB92C4();
        sub_22BD629D4();
        sub_22BB3B194(v78, v79);
        sub_22BD639E0();
        sub_22BDB8104();
        v83 = *(v0 + 344);

        sub_22BDB63E4();
        sub_22BDB77C4();
        v84 = sub_22BDBB134();
        if (sub_22BB333C0(v84))
        {
          v86 = sub_22BB37F30();
          sub_22BB360F0(v86);
          sub_22BB2F0A8(&dword_22BB2C000, v87, v88, "Finished indexing client actions");
          sub_22BB35600();
        }

        sub_22BD637D0();
        v89 = sub_22BB32E04();
        v1(v89);
        sub_22BD476D4();

        sub_22BB360FC();
        sub_22BB32660();

        __asm { BRAA            X1, X16 }
      }

      v46 = v47 + 1;
      v45 = *(v42 + 8 * v47++ + 72);
    }

    while (!v45);
  }

  *(v0 + 392) = v45;
  *(v0 + 400) = v46;
  v50 = *(v0 + 200);
  sub_22BD65010(v42, __clz(__rbit64(v45)) | (v46 << 6));
  sub_22BB690EC(v0 + 16, v0 + 96);
  v51 = *(v0 + 120);
  v52 = *(v0 + 128);
  v53 = sub_22BB69FEC((v0 + 96), v51);
  sub_22BB690EC(v0 + 56, v0 + 136);
  sub_22BD5F4C0(v0 + 16);
  v54 = *(v0 + 160);
  v55 = *(v0 + 168);
  v56 = sub_22BB69FEC((v0 + 136), v54);
  *(v0 + 176) = sub_22BDB5B24();
  *(v0 + 408) = StandardToolboxConfiguration.makeMutableToolbox<A, B>(delegate:planGenerationDelegate:)(v53, v56, v51, v54, v52, v55);
  v57 = *(v0 + 176);
  v60 = *(v0 + 200);

  sub_22BD64A48();
  v61 = sub_22BDB5B24();
  v62 = v61;
  v63 = *(v61 + 16);
  if (v63)
  {
    v64 = *(v0 + 232);
    sub_22BD64478(MEMORY[0x277D84F90]);
    v65 = *(v0 + 184);
    sub_22BB969F4();
    sub_22BD64A34();
    do
    {
      v66 = *(v0 + 264);
      v67 = *(v0 + 232);
      v68 = *(v0 + 240);
      v69 = *(v0 + 224);
      sub_22BB8E9F0();
      v64();
      sub_22BDB4C44();
      v70 = sub_22BD61AB0();
      v71(v70);
      sub_22BD64A20();
      if (v73)
      {
        sub_22BB2F158(v72);
        sub_22BD63494();
        sub_22BB69CB4();
        v65 = *(v0 + 184);
      }

      v74 = sub_22BD62DBC();
      v75(v74);
      v62 += v1;
      --v63;
    }

    while (v63);
  }

  else
  {

    v65 = MEMORY[0x277D84F90];
  }

  *(v0 + 416) = v65;
  v80 = *(MEMORY[0x277D1DD68] + 4);
  v81 = swift_task_alloc();
  *(v0 + 424) = v81;
  *v81 = v0;
  sub_22BD621D8(v81);
  sub_22BB32660();

  return MEMORY[0x282177140]();
}

uint64_t sub_22BD46F08()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v2 + 424);
  *v4 = *v1;
  *(v3 + 432) = v0;

  v6 = *(v2 + 416);

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD4702C()
{
  v2 = *(v0 + 408);

  v3 = *(v0 + 432);
  v4 = *(v0 + 400);
  v5 = (*(v0 + 392) - 1) & *(v0 + 392);
  if (v5)
  {
    v6 = *(v0 + 384);
    goto LABEL_7;
  }

  do
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return MEMORY[0x282177140]();
    }

    v6 = *(v0 + 384);
    if (v7 >= (((1 << *(v0 + 440)) + 63) >> 6))
    {

      sub_22BDB8124();
      sub_22BDB8114();
      sub_22BB30F68();
      sub_22BDB8C64();
      sub_22BB98088();
      sub_22BB3B194(v39, v40);
      sub_22BDB8104();

      if (v3)
      {
LABEL_9:
        v17 = *(v0 + 376);
        v19 = *(v0 + 352);
        v18 = *(v0 + 360);
        sub_22BD63294();
        v20 = *(v0 + 240);
        sub_22BD476D4();

        sub_22BB2F09C();
      }

      else
      {
        sub_22BDB8114();
        sub_22BB30F68();
        sub_22BDB92C4();
        sub_22BD629D4();
        sub_22BB3B194(v41, v42);
        sub_22BD639E0();
        sub_22BDB8104();
        v46 = *(v0 + 344);

        sub_22BDB63E4();
        sub_22BDB77C4();
        v47 = sub_22BDBB134();
        if (sub_22BB333C0(v47))
        {
          v48 = sub_22BB37F30();
          sub_22BB360F0(v48);
          sub_22BB2F0A8(&dword_22BB2C000, v49, v50, "Finished indexing client actions");
          sub_22BB35600();
        }

        sub_22BD637D0();
        v51 = sub_22BB32E04();
        v1(v51);
        sub_22BD476D4();

        sub_22BB360FC();
      }

      sub_22BB32660();

      __asm { BRAA            X1, X16 }
    }

    v5 = *(v6 + 8 * v7 + 64);
    ++v4;
  }

  while (!v5);
  v4 = v7;
LABEL_7:
  *(v0 + 392) = v5;
  *(v0 + 400) = v4;
  v8 = *(v0 + 200);
  sub_22BD65010(v6, __clz(__rbit64(v5)) | (v4 << 6));
  sub_22BB690EC(v0 + 16, v0 + 96);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = sub_22BB69FEC((v0 + 96), v9);
  sub_22BB690EC(v0 + 56, v0 + 136);
  sub_22BD5F4C0(v0 + 16);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v14 = sub_22BB69FEC((v0 + 136), v12);
  *(v0 + 176) = sub_22BDB5B24();
  *(v0 + 408) = StandardToolboxConfiguration.makeMutableToolbox<A, B>(delegate:planGenerationDelegate:)(v11, v14, v9, v12, v10, v13);
  if (v3)
  {
    v15 = *(v0 + 384);
    v16 = *(v0 + 176);

    sub_22BD64A48();
    goto LABEL_9;
  }

  v23 = *(v0 + 200);
  v24 = *(v0 + 176);

  sub_22BD64A48();
  v25 = sub_22BDB5B24();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(v0 + 232);
    sub_22BD64478(MEMORY[0x277D84F90]);
    v28 = *(v0 + 184);
    sub_22BB969F4();
    sub_22BD64A34();
    do
    {
      v29 = *(v0 + 264);
      v30 = *(v0 + 232);
      v31 = *(v0 + 240);
      v32 = *(v0 + 224);
      sub_22BB8E9F0();
      v27();
      sub_22BDB4C44();
      v33 = sub_22BD61AB0();
      v34(v33);
      sub_22BD64A20();
      if (v36)
      {
        sub_22BB2F158(v35);
        sub_22BD63494();
        sub_22BB69CB4();
        v28 = *(v0 + 184);
      }

      v37 = sub_22BD62DBC();
      v38(v37);
      v25 += v1;
      --v26;
    }

    while (v26);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  *(v0 + 416) = v28;
  v43 = *(MEMORY[0x277D1DD68] + 4);
  v44 = swift_task_alloc();
  *(v0 + 424) = v44;
  *v44 = v0;
  sub_22BD621D8();
  sub_22BB32660();

  return MEMORY[0x282177140]();
}

uint64_t sub_22BD474C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[51];
  v14 = v12[48];

  v28 = v12[54];
  v15 = v12[47];
  v17 = v12[44];
  v16 = v12[45];
  sub_22BD63294();
  v18 = v12[30];
  sub_22BD476D4();

  sub_22BB2F09C();
  sub_22BB33430();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t sub_22BD4759C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 16))
  {
    sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
    sub_22BDBAFD4();
  }

  os_unfair_lock_unlock((a1 + 24));
  v4 = *MEMORY[0x277D41D58];
  v5 = sub_22BDB64B4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

void sub_22BD47668(void (*a1)(os_unfair_lock_s *), uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 5);
  a1(a3 + 4);
  os_unfair_lock_unlock(a3 + 5);
}

uint64_t sub_22BD476D4()
{
  v0 = sub_22BDB7764();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22BDB7734();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22BDB7754();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22BDB60C4();
  v13 = sub_22BDB7744();
  sub_22BDB7774();
  v20 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v13, v20, v17, "IF.ClientSessionManager.clientActionIndex", v15, v16, 2u);
    MEMORY[0x2318A6080](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22BD479C0()
{
  v78 = v0[118];
  v1 = v0[113];
  v74 = v0[121];
  v76 = v0[92];
  v2 = v0[66];
  v70 = v0[65];
  v72 = v0[68];
  v3 = v0[63];
  v4 = v0[62];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[57];
  v8 = v0[40];
  v9 = v0[36];
  v10 = v0[37];
  v66 = v0[64];
  v68 = v0[24];

  v11 = *(v10 + 8);
  v12 = sub_22BB30AE4();
  v13(v12);
  v14 = *(v5 + 8);
  v15 = sub_22BB2F12C();
  v16(v15);
  (*(v3 + 8))(v66, v4);
  (*(v2 + 8))(v72, v70);

  sub_22BB76C64(v78, v68, v76);
  v79 = v0[125];
  v17 = v0[118];
  v18 = v0[117];
  v19 = v0[112];
  v20 = v0[109];
  v21 = v0[108];
  v22 = v0[107];
  v23 = v0[106];
  v24 = v0[105];
  v25 = v0[101];
  v29 = v0[104];
  v30 = v0[100];
  v31 = v0[99];
  v32 = v0[98];
  v33 = v0[97];
  v34 = v0[96];
  v26 = v0[92];
  v35 = v0[93];
  v36 = v0[91];
  v37 = v0[90];
  v38 = v0[89];
  v39 = v0[88];
  v40 = v0[87];
  v41 = v0[86];
  v42 = v0[85];
  v43 = v0[84];
  v44 = v0[80];
  sub_22BB71D94();
  sub_22BBD2288();
  v45 = v0[70];
  v46 = v0[68];
  v47 = v0[67];
  v48 = v0[64];
  v49 = v0[61];
  v50 = v0[60];
  v51 = v0[59];
  v52 = v0[56];
  v53 = v0[55];
  v54 = v0[54];
  v55 = v0[51];
  v56 = v0[50];
  v57 = v0[49];
  v58 = v0[48];
  v59 = v0[45];
  v60 = v0[42];
  v61 = v0[41];
  v62 = v0[40];
  v63 = v0[39];
  v64 = v0[38];
  v65 = v0[35];
  v67 = v0[34];
  v69 = v0[33];
  v71 = v0[32];
  v73 = v0[29];
  v75 = v0[26];
  v77 = v0[25];

  sub_22BB3093C();
  sub_22BB34648();
  sub_22BB325EC(v25, &qword_27D8E6440, &qword_22BDCE290);
  sub_22BDB6604();

  sub_22BB2F09C();

  return v27();
}

uint64_t sub_22BD47DF8()
{
  sub_22BB2F0D4();
  v1 = v0[124];
  sub_22BD5B268();
  v2 = v0[116];
  v3 = v0[115];

  return MEMORY[0x2822009F8](sub_22BD47E5C, v3, v2);
}

uint64_t sub_22BD47E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v17 = *(v13 + 904);

  v18 = *(v13 + 992);
  v56 = *(v13 + 1042);
  v55 = *(v13 + 976);
  v69 = *(v13 + 968);
  v70 = *(v13 + 944);
  v53 = *(v13 + 912);
  v72 = *(v13 + 936);
  v73 = *(v13 + 896);
  v74 = *(v13 + 872);
  v75 = *(v13 + 864);
  v76 = *(v13 + 856);
  v77 = *(v13 + 848);
  v78 = *(v13 + 840);
  v79 = *(v13 + 832);
  v71 = *(v13 + 808);
  v80 = *(v13 + 800);
  v81 = *(v13 + 792);
  v82 = *(v13 + 784);
  v83 = *(v13 + 776);
  v84 = *(v13 + 768);
  v85 = *(v13 + 744);
  v19 = *(v13 + 736);
  v86 = *(v13 + 728);
  v87 = *(v13 + 720);
  v88 = *(v13 + 712);
  v89 = *(v13 + 704);
  v90 = *(v13 + 696);
  v91 = *(v13 + 688);
  sub_22BD64108();
  v92 = *(v13 + 640);
  sub_22BB71D94();
  sub_22BBD2288();
  v96 = *(v13 + 560);
  v54 = *(v13 + 544);
  sub_22BD647EC();
  v67 = v21;
  v68 = v20;
  v64 = *(v13 + 504);
  v65 = *(v13 + 496);
  v66 = *(v13 + 512);
  v93 = *(v13 + 488);
  v94 = *(v13 + 480);
  v61 = *(v13 + 464);
  v62 = *(v13 + 456);
  v63 = *(v13 + 472);
  sub_22BD6259C();
  v59 = v22;
  v95 = *(v13 + 304);
  v23 = *(v13 + 280);
  v57 = *(v13 + 296);
  v58 = *(v13 + 288);
  sub_22BD62C80();
  v60 = v24;
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v25, v26, v27, v28);
  sub_22BB366B8();
  v29 = swift_allocObject();
  swift_weakInit();
  sub_22BB32CE8();
  v30 = sub_22BB34FB8();
  v31 = v14;
  sub_22BB335C0(v30, v32);
  v33 = qword_28142F3F0;
  sub_22BD63BA0();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v53;
  v34[4] = v29;
  sub_22BB2F5B0();
  sub_22BB3A518(v31, v35 + v12);
  *(v34 + v15) = v16;

  sub_22BB58138();

  v36 = *(v16 + v55);

  sub_22BDB5854();
  sub_22BB37DF4();
  sub_22BB335C0(v16 + v37, v96);
  sub_22BB3FBBC();
  sub_22BB70820();

  sub_22BB343F4();
  sub_22BB34648();
  sub_22BB325EC(v97, &qword_27D8E6410, &unk_22BDCE250);
  v38 = [objc_opt_self() defaultCenter];
  sub_22BD64E50();
  v39 = sub_22BD63698();
  sub_22BB335C0(v39, v31);
  sub_22BDBB724();
  v40 = sub_22BB3E460();
  [v40 v41];
  swift_unknownObjectRelease();

  (*(v57 + 8))(v59, v58);
  (*(v61 + 8))(v63, v62);
  (*(v64 + 8))(v66, v65);
  (*(v67 + 8))(v54, v68);
  sub_22BB335C0(v19, v60);

  v42 = sub_22BB3A19C();
  sub_22BB76C64(v42, v43, v19);

  sub_22BB3093C();
  sub_22BB34648();
  sub_22BB325EC(v71, &qword_27D8E6440, &qword_22BDCE290);
  sub_22BDB6604();

  sub_22BB360FC();
  sub_22BB33430();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_22BD4843C()
{
  sub_22BB2F35C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22BDB52C4();
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_22BB30ACC();
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  v1[6] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB96094();
  sub_22BB3B194(v7, v8);
  sub_22BD63964();

  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BD64CF0();
  v1[7] = v9;
  v1[8] = v10;
  v11 = sub_22BD649DC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BD48534()
{
  sub_22BB30F5C();
  v1 = v0[5];
  v2 = v0[2];
  v3 = *(v0[4] + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard);
  sub_22BB37DF4();
  sub_22BB335C0(v4 + v5, v1);

  v6 = sub_22BB345A8();
  v0[9] = sub_22BB5190C(v6);
  sub_22BB343F4();
  sub_22BB34648();

  sub_22BB32A48(dword_22BDCE230);
  v11 = v7;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_22BD486A4;
  v9 = sub_22BB3487C(v0[3]);

  return v11(v9);
}

uint64_t sub_22BD486A4()
{
  sub_22BB2F0D4();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22BD487B8, v6, v5);
}

uint64_t sub_22BD487B8()
{
  sub_22BB2F0D4();
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];

  sub_22BB360FC();

  return v4();
}

uint64_t sub_22BD48824()
{
  sub_22BB2F35C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22BDB52C4();
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_22BB30ACC();
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  v1[6] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB96094();
  sub_22BB3B194(v7, v8);
  sub_22BD63964();

  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BD64CF0();
  v1[7] = v9;
  v1[8] = v10;
  v11 = sub_22BD649DC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BD4891C()
{
  sub_22BB30F5C();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v0[4] + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard);
  sub_22BB37DF4();
  sub_22BB335C0(v4 + v5, v1);

  v6 = sub_22BB345A8();
  v0[9] = sub_22BB5190C(v6);
  sub_22BB343F4();
  sub_22BB34648();

  v7 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD48A48()
{
  sub_22BB2F0D4();
  v1 = v0[9];
  v2 = v0[2];
  sub_22BD5B764();
  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x2822009F8](sub_22BD5F66C, v3, v4);
}

void sub_22BD48AB4()
{
  v0 = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22BD48B98();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22BD48B98()
{
  if (!qword_28142DC48)
  {
    sub_22BDB5B44();
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_28142DC48);
    }
  }
}

uint64_t sub_22BD48BF8()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      sub_22BB690EC(v4, v7);
      sub_22BB382E8(v7, v6);
      sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
      type metadata accessor for XPCClientAvatar();
      if ((swift_dynamicCast() & 1) != 0 && v6[5])
      {
        MEMORY[0x2318A4D10]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22BDBADA4();
        }

        sub_22BDBADE4();
        v2 = v8;
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_22BD48D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22BC5496C();
  v31 = v30[57];
  v32 = v30[43];
  v34 = v30[41];
  v33 = v30[42];
  v35 = v30[37];
  v36 = v30[38];
  v89 = v30[33];
  v37 = v30[31];
  v39 = v30[28];
  v38 = v30[29];
  v85 = v30[44];
  v87 = v30[9];
  (*(v30[22] + 8))(v30[23], v30[21]);
  v40 = sub_22BD61AB0();
  v41(v40);
  v42 = *(v36 + 8);
  v43 = sub_22BB331D4();
  v44(v43);
  (*(v32 + 8))(v85, v33);
  sub_22BD62A64();
  sub_22BB34648();
  sub_22BBD1194(v31, v87);

  v90 = v30[65];
  v45 = v30[62];
  v46 = v30[58];
  v47 = v30[54];
  v70 = v30[53];
  v71 = v30[50];
  v72 = v30[49];
  v73 = v30[48];
  v74 = v30[47];
  v75 = v30[44];
  v76 = v30[41];
  v77 = v30[40];
  v78 = v30[36];
  v79 = v30[33];
  v80 = v30[31];
  v81 = v30[30];
  v82 = v30[27];
  v83 = v30[26];
  v84 = v30[23];
  v86 = v30[20];
  v48 = v30[18];
  v88 = v30[19];
  v49 = v30[16];
  v50 = v30[17];
  v52 = v30[11];
  v51 = v30[12];
  v53 = (v49 + v30[59]);
  v69 = v30[9];
  sub_22BB34648();
  v54 = *v53;
  v55 = v53[1];

  v56 = *(v49 + v47);

  v57 = *(v49 + v45);

  sub_22BBE6DE0(&qword_27D8E6458, &qword_22BDCE2D0);
  swift_defaultActor_destroy();

  (*(v48 + 8))(v52, v50);
  v58 = *(*v49 + 48);
  v59 = *(*v49 + 52);
  sub_22BB8AB74();
  swift_deallocPartialClassInstance();
  sub_22BB34648();

  sub_22BB2F09C();
  sub_22BB3E07C();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v86, v88, v90, a28, a29, a30);
}

uint64_t sub_22BD48FE0()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);

  v6 = v0[52];

  sub_22BB2F09C();
  sub_22BB3A1C0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_22BD4909C()
{
  sub_22BB2F0D4();
  sub_22BC8E35C((v0 + 16));
  sub_22BB2F09C();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_22BD490F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22BB3C48C;

  return sub_22BD59D78(a5);
}

void sub_22BD49194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12;
  v14 = v12[590];
  v15 = v12[588];
  v16 = v12[583];
  v2985 = v12[566];
  v17 = v12[505];
  v18 = v12[312];

  sub_22BDB63E4();
  sub_22BB322B0();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22BB89C78;
  *(v19 + 24) = v18;
  sub_22BB366B8();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  sub_22BB322B0();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22BB8AE80;
  *(v21 + 24) = v20;
  sub_22BB366B8();
  v2983 = swift_allocObject();
  v2983[2].isa = v14;

  v22 = v14;
  v2997 = sub_22BDB77C4();
  sub_22BDBB114();
  sub_22BD616A8();
  v23 = swift_allocObject();
  *(v23 + 16) = 34;
  sub_22BD616A8();
  v2980 = swift_allocObject();
  sub_22BB6FB2C(v2980);
  sub_22BB322B0();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22BB8AE88;
  *(v24 + 24) = v19;
  sub_22BB322B0();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_22BB89C80;
  *(v25 + 24) = v24;
  sub_22BD616A8();
  v26 = swift_allocObject();
  *(v26 + 16) = 34;
  sub_22BD616A8();
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v28 = v27;
  sub_22BB322B0();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_22BB8AE24;
  *(v29 + 24) = v21;
  sub_22BB322B0();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_22BB89C80;
  *(v30 + 24) = v29;
  sub_22BD616A8();
  v31 = swift_allocObject();
  sub_22BD61794(v31);
  sub_22BD616A8();
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  sub_22BB322B0();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_22BD5EBC0;
  *(v33 + 24) = v2983;
  sub_22BB322B0();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_22BD5F65C;
  *(v34 + 24) = v33;
  sub_22BB322B0();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_22BD5F660;
  *(v35 + 24) = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22BDCE140;
  *(v36 + 32) = sub_22BB89C08;
  *(v36 + 40) = v23;
  *(v36 + 48) = sub_22BB89C08;
  *(v36 + 56) = v2980;
  *(v36 + 64) = sub_22BB89C7C;
  *(v36 + 72) = v25;
  *(v36 + 80) = sub_22BB89C08;
  *(v36 + 88) = v26;
  *(v36 + 96) = sub_22BB89C08;
  *(v36 + 104) = v28;
  *(v36 + 112) = sub_22BB89C7C;
  *(v36 + 120) = v30;
  *(v36 + 128) = sub_22BB89C08;
  *(v36 + 136) = v21;
  *(v36 + 144) = sub_22BB89C08;
  *(v36 + 152) = v32;
  *(v36 + 160) = sub_22BD5F648;
  *(v36 + 168) = v35;
  sub_22BD63C2C();
  v38 = v37;

  v2981 = v25;

  v39 = v26;

  HIDWORD(v2983) = HIDWORD(v21);

  sub_22BD6224C();
  if (os_log_type_enabled(v2997, v40))
  {
    v41 = sub_22BB67968();
    sub_22BD63870();
    v42 = sub_22BBC01B4();
    *(v13 + 2176) = v30;
    *(v13 + 2184) = v42;
    *v41 = 770;
    *(v13 + 2168) = v41 + 2;
    *(v13 + 1208) = sub_22BB89C08;
    *(v13 + 1216) = v2985;
    v43 = sub_22BD60A18();
    sub_22BB67984(v43, v44, v45, v46);

    *(v13 + 1208) = sub_22BB89C08;
    *(v13 + 1216) = v38;
    v2304 = sub_22BD60A18();
    sub_22BB67984(v2304, v2305, v2306, v2307);

    *(v13 + 1208) = sub_22BB89C7C;
    *(v13 + 1216) = v2981;
    v2312 = sub_22BD60A18();
    sub_22BB67984(v2312, v2313, v2314, v2315);

    *(v13 + 1208) = sub_22BB89C08;
    *(v13 + 1216) = v26;
    v2332 = sub_22BD60A18();
    sub_22BB67984(v2332, v2333, v2334, v2335);

    *(v13 + 1208) = sub_22BB89C08;
    *(v13 + 1216) = v28;
    v2378 = sub_22BD60A18();
    sub_22BB67984(v2378, v2379, v2380, v2381);

    *(v13 + 1208) = sub_22BB89C7C;
    *(v13 + 1216) = v30;
    v2466 = sub_22BD60A18();
    sub_22BB67984(v2466, v2467, v2468, v2469);

    *(v13 + 1208) = sub_22BB89C08;
    *(v13 + 1216) = v21;
    v2535 = sub_22BD60A18();
    sub_22BB67984(v2535, v2536, v2537, v2538);

    *(v13 + 1208) = sub_22BB89C08;
    *(v13 + 1216) = v32;
    v2568 = sub_22BD60A18();
    sub_22BB67984(v2568, v2569, v2570, v2571);

    *(v13 + 1208) = sub_22BD5F648;
    *(v13 + 1216) = v35;
    v2580 = sub_22BD60A18();
    sub_22BB67984(v2580, v2581, v2582, v2583);
    v2593 = *(v13 + 4720);
    v2990 = *(v13 + 4040);
    sub_22BD6256C();

    sub_22BBD1A34();
    _os_log_impl(v2594, v2997, v2595, v2596, v41, 0x20u);
    sub_22BB325EC(v30, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB89BBC();
    sub_22BB8ABD4();
    sub_22BB38680();
    sub_22BB679C0();
  }

  v47 = *(v13 + 4040);
  v48 = *(v13 + 3840);
  v49 = *(v13 + 3832);

  isa = v48[1].isa;
  v50 = &v48[1];
  v52 = sub_22BB53C48();
  v2991 = v53;
  v53(v52);
  v54 = 0;
  v2840 = (v13 + 360);
  while (1)
  {
    v55 = *(v13 + 4632);
    sub_22BB31B88();
    swift_beginAccess();
    v56 = sub_22BD64644();
    LOBYTE(v57) = sub_22BD45DE8(v56);
    v2998 = v54;

    if (v57)
    {
      sub_22BD61714();
      sub_22BD63BF4();
      sub_22BB322B0();
      swift_allocObject();
      sub_22BBC0284();
      *(v58 + 16) = v59;
      *(v58 + 24) = v50;
      sub_22BB366B8();
      v60 = swift_allocObject();
      sub_22BD64DEC(v60);
      sub_22BB322B0();
      v30 = swift_allocObject();
      sub_22BD5F6EC(v30);

      v2983 = sub_22BDB77C4();
      LODWORD(v2985) = sub_22BDBB0F4();
      sub_22BD616A8();
      v61 = swift_allocObject();
      sub_22BD634DC(v61);
      sub_22BD616A8();
      v62 = swift_allocObject();
      sub_22BB7011C(v62);
      sub_22BB322B0();
      v50 = swift_allocObject();
      sub_22BBC0614(v50);
      sub_22BB322B0();
      v57 = swift_allocObject();
      sub_22BD6052C(v57);
      sub_22BD616A8();
      v35 = swift_allocObject();
      *(v35 + 16) = v55;
      sub_22BD616A8();
      v63 = swift_allocObject();
      sub_22BD62B48(v63);
      sub_22BB322B0();
      swift_allocObject();
      sub_22BB756B0();
      *(v64 + 16) = v65;
      *(v64 + 24) = v30;
      sub_22BB322B0();
      v66 = swift_allocObject();
      sub_22BB51370(v66);
      v67 = sub_22BD620F4();
      sub_22BB31444(v67);
      v68[4] = v69;
      v68[5] = v32;
      v68[6] = sub_22BB89C08;
      v68[7] = v39;
      v68[8] = sub_22BB89C7C;
      v68[9] = v57;
      v68[10] = sub_22BB89C08;
      v68[11] = v35;
      v68[12] = sub_22BB89C08;
      v68[13] = v28;
      v68[14] = sub_22BB89C7C;
      v68[15] = v50;

      sub_22BD64CD8();

      sub_22BB93DBC();
      if (os_log_type_enabled(v55, v70))
      {
        sub_22BB67968();
        v71 = sub_22BB3869C();
        sub_22BBB6144(v71);
        sub_22BD62364();
        *(v13 + 2128) = v54;
        *(v13 + 1176) = sub_22BB89C08;
        *(v13 + 1184) = v32;
        v72 = sub_22BB32E7C();
        sub_22BB67984(v72, v73, v74, v75);
        if (!v54)
        {

          sub_22BD604FC();
          *(v13 + 1184) = v39;
          v76 = sub_22BB32E7C();
          sub_22BB67984(v76, v77, v78, v79);

          sub_22BD60514();
          *(v13 + 1184) = v57;
          v80 = sub_22BB32E7C();
          sub_22BB67984(v80, v81, v82, v83);

          sub_22BD604FC();
          *(v13 + 1184) = v35;
          v84 = sub_22BB32E7C();
          sub_22BB67984(v84, v85, v86, v87);

          sub_22BD604FC();
          *(v13 + 1184) = v28;
          v88 = sub_22BB32E7C();
          sub_22BB67984(v88, v89, v90, v91);

          *(v13 + 1176) = sub_22BB89C7C;
          *(v13 + 1184) = v50;
          v92 = sub_22BB32E7C();
          sub_22BB67984(v92, v93, v94, v95);
          v96 = v55;
          v97 = *(v13 + 4032);
          sub_22BD62094();

          sub_22BB96D8C();
          sub_22BD636C8(&dword_22BB2C000, v96, v98, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is advisory.");
          sub_22BD61EE4();
          sub_22BB89BBC();
          sub_22BB679C0();
        }

        goto LABEL_344;
      }

      sub_22BD6437C();

      (v2991)(v54, v2985);
      sub_22BB897B0();
      sub_22BB707F8();
      sub_22BD62070();
      sub_22BD64288();
    }

    v99 = sub_22BBC3B90();
    sub_22BD45220(v99);
    sub_22BD61FB4();

    if (v57)
    {
      sub_22BD61714();
      v100 = *(v13 + 4024);
      sub_22BD62768();
      sub_22BDB63E4();
      sub_22BB322B0();
      v101 = swift_allocObject();
      sub_22BB3E014(v101);
      sub_22BB366B8();
      v102 = swift_allocObject();
      sub_22BD63DE4(v102);
      sub_22BB322B0();
      v103 = swift_allocObject();
      sub_22BB89B20(v103);
      v2985 = sub_22BDB77C4();
      sub_22BDBB0F4();
      sub_22BD616A8();
      v104 = swift_allocObject();
      sub_22BB3CE80(v104);
      sub_22BD616A8();
      v105 = swift_allocObject();
      sub_22BD624C4(v105);
      sub_22BB322B0();
      v106 = swift_allocObject();
      sub_22BBBE860(v106);
      sub_22BB322B0();
      v107 = swift_allocObject();
      sub_22BB3AE40(v107);
      sub_22BD616A8();
      v108 = swift_allocObject();
      sub_22BD636BC(v108);
      sub_22BD616A8();
      v109 = swift_allocObject();
      sub_22BBD1A04(v109);
      sub_22BB322B0();
      v110 = swift_allocObject();
      sub_22BBBE888(v110);
      sub_22BB322B0();
      v111 = swift_allocObject();
      v112 = sub_22BD60980(v111);
      sub_22BB34620(v112);
      v113[4] = v114;
      v113[5] = v50;
      v113[6] = sub_22BB89C08;
      v113[7] = v105;
      v113[8] = sub_22BB89C7C;
      v113[9] = v100;
      v113[10] = sub_22BB89C08;
      v113[11] = v35;
      v113[12] = sub_22BB89C08;
      v113[13] = v32;
      v113[14] = sub_22BB89C7C;
      v113[15] = v30;
      sub_22BD6443C();

      v28 = sub_22BD60DFC();
      if (os_log_type_enabled(v28, v115))
      {
        v2977 = v35;
        sub_22BB67968();
        v116 = sub_22BBBFF34();
        sub_22BD5FA78(v116);
        *(v13 + 1104) = v54;
        v117 = sub_22BB71F54();
        sub_22BB67984(v117, v118, v119, v120);
        if (!v54)
        {

          *(v13 + 1096) = sub_22BB89C08;
          *(v13 + 1104) = v105;
          v121 = sub_22BB71F54();
          sub_22BB67984(v121, v122, v123, v124);

          *(v13 + 1096) = sub_22BB89C7C;
          *(v13 + 1104) = v100;
          v125 = sub_22BB71F54();
          sub_22BB67984(v125, v126, v127, v128);

          sub_22BBD2250();
          *(v13 + 1104) = v2977;
          v129 = sub_22BB71F54();
          sub_22BB67984(v129, v130, v131, v132);

          sub_22BBD2250();
          *(v13 + 1104) = v32;
          v133 = sub_22BB71F54();
          sub_22BB67984(v133, v134, v135, v136);

          *(v13 + 1096) = sub_22BB89C7C;
          *(v13 + 1104) = v30;
          v137 = sub_22BB71F54();
          sub_22BB67984(v137, v138, v139, v140);
          v141 = *(v13 + 4024);
          sub_22BD624B8();

          sub_22BD61B3C();
          sub_22BD62590();
          sub_22BD636C8(v142, v143, v144, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is work-allowing advisory.");
          sub_22BB8ABD4();
          sub_22BB38680();
          sub_22BB679C0();
        }

        goto LABEL_344;
      }

      sub_22BD6204C();

      v145 = sub_22BD61130();
      v146(v145);
      sub_22BD64BEC();
      v2998 = v147;
      sub_22BB897B0();
      sub_22BB707F8();
      sub_22BD618EC();
      *(v100 + 16) = v30;
    }

    else
    {
      v2961 = v54;
    }

    v2996 = v13;
    sub_22BB966A8();
    v148 = sub_22BB94E5C();
    v149(v148);
    sub_22BDB96A4();
    v150 = sub_22BB2F324();
    (v35)(v150);
    v151 = sub_22BB95A18();
    v152 = v13;
    v153 = (v13)(v151);
    v154 = sub_22BB2F0E0();
    (v32)(v154);
    v155 = *(v13 + 2496);
    if (v153)
    {
      break;
    }

    sub_22BD62FC4();
    sub_22BDB63E4();
    sub_22BB322B0();
    v156 = swift_allocObject();
    sub_22BB3CF50(v156);
    sub_22BB366B8();
    v157 = swift_allocObject();
    *(v157 + 16) = v30;
    sub_22BB322B0();
    swift_allocObject();
    sub_22BD60754();
    *(v158 + 16) = v159;
    *(v158 + 24) = v157;

    v2986 = sub_22BDB77C4();
    LODWORD(v2983) = sub_22BDBB134();
    sub_22BD616A8();
    v160 = v13;
    v161 = swift_allocObject();
    sub_22BD648CC(v161);
    sub_22BD616A8();
    v162 = swift_allocObject();
    sub_22BD61688(v162);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BB9710C();
    *(v163 + 16) = v164;
    *(v163 + 24) = v156;
    sub_22BB322B0();
    swift_allocObject();
    sub_22BD5F734();
    *(v165 + 16) = v166;
    *(v165 + 24) = v54;
    sub_22BD616A8();
    v167 = swift_allocObject();
    sub_22BB7564C(v167);
    sub_22BD616A8();
    v168 = swift_allocObject();
    sub_22BD642B8(v168);
    sub_22BB322B0();
    v169 = swift_allocObject();
    sub_22BBBE888(v169);
    sub_22BB322B0();
    v170 = swift_allocObject();
    v171 = sub_22BD60980(v170);
    sub_22BB34620(v171);
    v172[4] = v173;
    v172[5] = v161;
    v172[6] = sub_22BB89C08;
    v172[7] = v35;
    v172[8] = sub_22BB89C7C;
    v172[9] = v13;
    v172[10] = sub_22BB89C08;
    v172[11] = v157;
    v172[12] = sub_22BB89C08;
    v172[13] = v13;
    v172[14] = sub_22BB89C7C;
    v172[15] = v30;
    v54 = v161;

    v50 = sub_22BD60DFC();
    if (os_log_type_enabled(v50, v174))
    {
      sub_22BD64E90();
      v175 = sub_22BD62464();
      sub_22BB975AC(v175);
      if (!v54)
      {

        *(v13 + 1352) = sub_22BB89C08;
        *(v13 + 1360) = v35;
        v176 = sub_22BD6020C();
        sub_22BB67984(v176, v177, v178, v179);
        sub_22BD653E0();
        *(v13 + 1352) = sub_22BB89C7C;
        *(v13 + 1360) = v171;
        v180 = sub_22BD6020C();
        sub_22BB67984(v180, v181, v182, v183);

        sub_22BD60444();

        sub_22BD60810();

        sub_22BB6FD50();
        v184 = *(v13 + 4008);
        sub_22BD61A18();

        sub_22BD61B3C();
        sub_22BD62590();
        sub_22BD63F58(v185, v186, v187, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition FAILED. It will be skipped.");
        sub_22BBBE764();
        sub_22BB2F194();
        sub_22BB679C0();
      }

      goto LABEL_344;
    }

    sub_22BB3FB4C();
    v188 = *(v13 + 3832);

    v189 = sub_22BD64A8C();
    v190(v189);
    sub_22BD600DC();

    v191 = sub_22BB97B18();
    sub_22BB325EC(v191, &qword_27D8E3218, &qword_22BDBE390);
    sub_22BD5FA08();

    v192 = sub_22BD00AA4();
    sub_22BB74044(v192, v193, v13);

    sub_22BB35CBC();
    sub_22BB34648();
    sub_22BD61A24();
    while (2)
    {
      v194 = v2998;
LABEL_21:
      sub_22BD61A78();
      *(v13 + 4520) = v194;
      sub_22BD62D9C();
      sub_22BBBFF9C(v30);
      if (v309)
      {
        sub_22BB325EC(*(v13 + 4296), &qword_27D8E6520, &qword_22BDCE430);
        v2308 = *(MEMORY[0x277D857A0] + 4);
        v2309 = swift_task_alloc();
        v2310 = sub_22BB980E8(v2309);
        *v2310 = v2311;
        sub_22BB6BE8C(v2310);
        sub_22BD63350();
        sub_22BB33430();

        goto LABEL_423;
      }

      v195 = sub_22BD61F18();
      sub_22BB3A518(v195, v171);
      sub_22BDB6124();
      sub_22BB322B0();
      swift_allocObject();
      sub_22BB758D8();
      *(v196 + 16) = v197;
      *(v196 + 24) = v188;
      v198 = sub_22BD00AA4();
      sub_22BB335C0(v198, v199);
      sub_22BD62438();
      swift_allocObject();
      sub_22BD64D5C();
      sub_22BB3A518(v50, v200);

      sub_22BDB7724();
      v2992 = sub_22BDB7744();
      LODWORD(v2986) = sub_22BDBB1D4();
      sub_22BD616A8();
      v188 = swift_allocObject();
      sub_22BD6250C(v188);
      sub_22BD616A8();
      v201 = swift_allocObject();
      sub_22BD62CE4(v201);
      sub_22BB322B0();
      swift_allocObject();
      sub_22BD5F7DC();
      *(v202 + 16) = v203;
      *(v202 + 24) = v30;
      sub_22BB322B0();
      v204 = swift_allocObject();
      sub_22BB3CEDC(v204);
      sub_22BD616A8();
      v205 = swift_allocObject();
      *(v205 + 16) = v194;
      sub_22BD616A8();
      v30 = swift_allocObject();
      *(v30 + 16) = v157;
      sub_22BB322B0();
      v206 = swift_allocObject();
      sub_22BD601AC(v206);
      sub_22BB322B0();
      v157 = swift_allocObject();
      sub_22BB69C9C(v157);
      v194 = v188;
      v207 = sub_22BBE6DE0(&qword_27D8E6548, &qword_22BDCE458);
      *(v13 + 4528) = v207;
      v2965 = v207;
      v171 = sub_22BB970B4();
      sub_22BB3B5F8(v171);
      v208[4] = v209;
      v208[5] = v188;
      v208[6] = sub_22BB89C08;
      v208[7] = v201;
      v208[8] = sub_22BB89C68;
      v208[9] = v204;
      v208[10] = sub_22BB89C08;
      v208[11] = v205;
      v208[12] = sub_22BB89C08;
      v208[13] = v30;
      v208[14] = sub_22BB89C7C;
      v208[15] = v157;

      if (sub_22BDBB244())
      {
        sub_22BB73F58("CommandProcess", &v3003);
        sub_22BD62384();
        v210 = sub_22BD619F0();
        sub_22BD5F9D4(v210);
        *(v13 + 1440) = v188;
        v211 = sub_22BB39404();
        sub_22BB67984(v211, v212, v213, v214);
        if (!v2998)
        {
          *(v13 + 1432) = sub_22BB89C08;
          *(v13 + 1440) = v201;
          v215 = sub_22BB39404();
          sub_22BB67984(v215, v216, v217, v218);
          *(v13 + 1432) = sub_22BB89C68;
          *(v13 + 1440) = v204;
          v219 = sub_22BB39404();
          sub_22BB67984(v219, v220, v221, v222);
          *(v13 + 1432) = sub_22BB89C08;
          *(v13 + 1440) = v205;
          v223 = sub_22BB39404();
          sub_22BB67984(v223, v224, v225, v226);
          *(v13 + 1432) = sub_22BB89C08;
          *(v13 + 1440) = v30;
          v227 = sub_22BB39404();
          sub_22BB67984(v227, v228, v229, v230);
          *(v13 + 1432) = sub_22BB89C7C;
          *(v13 + 1440) = v157;
          v231 = sub_22BB39404();
          sub_22BB67984(v231, v232, v233, v234);
          sub_22BD63C54();

          sub_22BDB7714();
          sub_22BD61E34();
          sub_22BD62418();
          sub_22BD65380(v235, v236, v237, v238, v239, "[SessionCoordinator %{public}s] | Begin processing command %{public}s.");
          sub_22BD619D4();
          sub_22BD6193C();
          sub_22BB679C0();
        }

        goto LABEL_406;
      }

      sub_22BD61C8C();
      v240 = sub_22BD639EC();
      sub_22BB92AA4();
      v241 = sub_22BB97B0C();
      v2942 = v242;
      v2936 = v243;
      v243(v241);
      sub_22BB3A840();
      v2950 = v240;
      v244 = sub_22BDB7784();
      v245 = sub_22BD63D78(v244);
      (v13)(v245);
      v246 = *(v205 + 8);
      v50 = v205 + 8;
      v160 = v246;
      v247 = sub_22BB35464();
      v246(v247);
      v248 = sub_22BB39368();
      sub_22BB335C0(v248, v171);
      sub_22BD63410();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22BB70028();
          v347 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
          sub_22BD60B44(v347);
          v349 = sub_22BD63110(v348);
          sub_22BB6BEE0(v349, v350, &qword_27D8E3218, &qword_22BDBE390);
          sub_22BDB63E4();
          sub_22BB322B0();
          v351 = swift_allocObject();
          sub_22BD5F704(v351);
          sub_22BB366B8();
          v28 = swift_allocObject();
          v2795 = v204;
          v28[2] = v204;
          sub_22BB322B0();
          swift_allocObject();
          sub_22BBC0500();
          *(v352 + 16) = v353;
          *(v352 + 24) = v28;

          v2991 = sub_22BDB77C4();
          LODWORD(v2986) = sub_22BDBB134();
          sub_22BD616A8();
          v354 = swift_allocObject();
          sub_22BD648CC(v354);
          sub_22BD616A8();
          v355 = swift_allocObject();
          sub_22BB97EE0(v355);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v356 + 16) = v357;
          *(v356 + 24) = v351;
          sub_22BB322B0();
          v30 = swift_allocObject();
          sub_22BB3DEE8(v30);
          sub_22BD616A8();
          v358 = swift_allocObject();
          sub_22BB7564C(v358);
          sub_22BD616A8();
          v152 = swift_allocObject();
          *(v152 + 16) = v201;
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD5F77C();
          *(v359 + 16) = v360;
          *(v359 + 24) = v171;
          sub_22BB322B0();
          v361 = swift_allocObject();
          sub_22BB3DEE8(v361);
          v362 = sub_22BBCCA6C();
          sub_22BB31444(v362);
          v363[4] = v364;
          v363[5] = v354;
          v363[6] = sub_22BB89C08;
          v363[7] = v355;
          v363[8] = sub_22BB89C7C;
          v363[9] = v30;
          v363[10] = sub_22BB89C08;
          v363[11] = v28;
          v363[12] = sub_22BB89C08;
          v363[13] = v152;
          v363[14] = sub_22BB89C7C;
          v363[15] = v361;
          sub_22BD640D8();

          v365 = sub_22BD612E8();
          if (os_log_type_enabled(v365, v366))
          {
            sub_22BB67968();
            v367 = sub_22BB97DCC();
            sub_22BD63440(v367);
            sub_22BD5FC78(v365);
            *(v50 + 1472) = v171;
            v368 = sub_22BD5F8D0();
            sub_22BB67984(v368, v369, v370, v371);
            if (!v2998)
            {

              sub_22BB6F924();
              *(v50 + 1472) = v355;
              v372 = sub_22BD5F8D0();
              sub_22BB67984(v372, v373, v374, v375);

              sub_22BB6FCD0();
              *(v50 + 1472) = v30;
              v376 = sub_22BD5F8D0();
              sub_22BB67984(v376, v377, v378, v379);

              sub_22BB6F924();
              *(v50 + 1472) = v28;
              v380 = sub_22BD5F8D0();
              sub_22BB67984(v380, v381, v382, v383);

              sub_22BB6F924();
              *(v50 + 1472) = v152;
              v384 = sub_22BD5F8D0();
              sub_22BB67984(v384, v385, v386, v387);

              sub_22BD60848();
              v388 = *(v50 + 4088);
              sub_22BD62094();

              sub_22BD61E34();
              sub_22BD62CB8();
              _os_log_impl(v389, v390, v391, "[SessionCoordinator %{public}s] | [TX %{public}s] Begin commit of transaction.", v365, 0x16u);
              sub_22BD61EC8();
              sub_22BB77E48();
              sub_22BB679C0();
            }

            goto LABEL_379;
          }

          sub_22BB75884();
          v461 = *(v50 + 3832);

          v462 = sub_22BD633D4();
          v2796 = v463;
          (v463)(v462);
          v464 = v50;
          v2926 = *(v50 + 4448);
          sub_22BD609DC();
          v2916 = v465;
          v466 = sub_22BD60CF4();
          (v30)(v466);
          sub_22BDB96A4();
          v467 = *(v365 + 8);
          v32 = v365 + 8;
          v468 = sub_22BB393C4();
          v467(v468);
          v469 = v354;
          sub_22BDB9744();
          v470 = sub_22BB89BAC();
          v54 = v2916;
          (v28)(v470, v2916);
          v2833 = sub_22BB954F8(v469);

          v471 = sub_22BD613BC();
          v2828 = v30;
          (v30)(v471);
          sub_22BBBE690();
          sub_22BDB96A4();
          v472 = sub_22BB393C4();
          v2805 = v467;
          v467(v472);
          v473 = sub_22BDB9744();
          v474 = sub_22BB30AE4();
          v2800 = v28;
          (v28)(v474);
          sub_22BB954F8(v473);
          sub_22BD63F10();
          v2886 = v467;
          if (v467 < v2833)
          {
            __break(1u);
            goto LABEL_395;
          }

          v476 = sub_22BB721E4(v2983);
          v2825 = v475;
          do
          {
            v2927 = v476;
            if (v475 == v476)
            {
              goto LABEL_73;
            }

            if (v475 < v476)
            {
              __break(1u);
LABEL_370:
              __break(1u);
LABEL_371:
              __break(1u);
              goto LABEL_372;
            }

            if (v476 >= v475)
            {
              goto LABEL_370;
            }

            v2860 = *(v50 + 4448);
            sub_22BD62F70();
            v2917 = v477;
            sub_22BB500E4();
            v2844 = v478;
            v2887 = *(v50 + 3096);
            v479 = *(v50 + 3088);
            logj = *(v50 + 3080);
            v480 = *(v50 + 2496);
            osloge = *(v50 + 2472);
            sub_22BD62E00();
            sub_22BD62C40();
            sub_22BDB9694();
            sub_22BD63698();
            sub_22BDB9734();
            v481 = sub_22BB70784();
            v482 = v2844;
            v2845 = v483;
            (v483)(v481, v482);
            v484 = sub_22BB97E58();
            (v30)(v484);
            swift_endAccess();
            v485 = sub_22BB97B0C();
            sub_22BB929E0(v485, v486, v487);
            sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
            v30 = v2887;
            sub_22BBB797C();
            sub_22BDBAF34();
            v488 = sub_22BB970E8();
            v489(v488, logj);
            sub_22BD62F60();
            v54 = v2917;
            sub_22BB97C78();
            v490();
            sub_22BD63388();
            sub_22BDB96A4();
            v491 = sub_22BB30AE4();
            v2805(v491);
            sub_22BDB9744();
            v492 = sub_22BD619C8();
            (v2800)(v492, v2991);
            sub_22BB954F8(v479);
            sub_22BD63F10();
            v2886 = v479;
            if (v479 < v2833)
            {
              goto LABEL_371;
            }

            sub_22BD60F34(v476);
            sub_22BDB9B24();
            v493 = sub_22BB53C48();
            (v2845)(v493);
            v494 = *(v480 + 11);
            v32 = v480 + 88;
            v495 = sub_22BB30AE4();
            v496(v495);
            v497 = sub_22BD615B8();
            v498(v497);
            v475 = v2825;
          }

          while (v479 != v50);
          sub_22BD636E0();
          sub_22BD61894();
          sub_22BB53C48();
          sub_22BB9741C();
          sub_22BB71DA0();
          v2983 = v499;
LABEL_73:
          v54 = v2998;
          v500 = sub_22BD62F50();
          v502 = v500 + 64;
          v501 = *(v500 + 64);
          sub_22BB8EA20(v500);
          v2915 = v504 & v503;
          sub_22BD63CF8();
          v506 = (v505 >> 6);
          v2819 = v507;

          v30 = 0;
          v2861 = v502;
          v2846 = v506;
LABEL_74:
          v28 = &qword_27D8E6568;
          v50 = &unk_22BDCE460;
          if (v2915)
          {
            v32 = v54;
            log = v30;
            goto LABEL_80;
          }

          while (2)
          {
            v508 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              __break(1u);
              goto LABEL_346;
            }

            if (v508 >= v506)
            {
              log = v30;
              v590 = v464[383];
              v591 = sub_22BB331D4();
              sub_22BBE6DE0(v591, v592);
              v593 = sub_22BB3A190();
              sub_22BB336D0(v593, v594, 1, v595);
              v2915 = 0;
              goto LABEL_81;
            }

            ++v30;
            if (!*(v502 + 8 * v508))
            {
              continue;
            }

            break;
          }

          v32 = v54;
          log = v508;
LABEL_80:
          sub_22BD62F40();
          sub_22BD64858();
          v2915 = v509;
          v512 = *(v2819 + 56);
          v513 = *(*(v2819 + 48) + 8 * (v511 | (v510 << 6)));
          v515 = *(v514 + 72);
          sub_22BB366A0();
          sub_22BB335C0(v516, v502);
          v28 = &qword_27D8E6568;
          v30 = sub_22BBE6DE0(&qword_27D8E6568, &unk_22BDCE460);
          v517 = *(v30 + 48);
          v506->isa = v513;
          sub_22BB31DC8();
          sub_22BD64614(v518);
          v519 = sub_22BD6108C();
          sub_22BB336D0(v519, v520, v521, v30);
          v54 = v32;
LABEL_81:
          v522 = sub_22BB8EA40();
          sub_22BB6BEE0(v522, v523, &qword_27D8E64F8, &qword_22BDCE400);
          v524 = sub_22BB331D4();
          v526 = sub_22BBE6DE0(v524, v525);
          sub_22BB3329C();
          if (v309)
          {

            v2991 = sub_22BB954F8(v2983);
            if (v2991)
            {
              v628 = 0;
              do
              {
                v2998 = v54;
                v629 = v464[408];
                v630 = v464[404];
                v631 = v464[403];
                v632 = sub_22BB34748();
                sub_22BB954F0(v632, v633, v2983);
                v635 = *(v630 + 16);
                v30 = v630 + 16;
                v634 = v635;
                v636 = v464;
                v637 = *(v30 + 64);
                v638 = *(v30 + 56);
                v639 = sub_22BB95BF8();
                v635(v639);
                v2915 = &v628->isa + 1;
                if (__OFADD__(v628, 1))
                {
                  __break(1u);

                  goto LABEL_379;
                }

                loga = v628;
                v640 = sub_22BD635D8();
                v641(v640);
                sub_22BD636FC();
                sub_22BB97EEC();
                if (v642)
                {
                  oslogf = v636[492];
                  v643 = sub_22BB500C0();
                  v634(v643);
                  sub_22BB702C8(&v637[2]);
                  v644 = swift_allocObject();
                  sub_22BBC3934();
                  v2986();
                  sub_22BDB63E4();
                  sub_22BB322B0();
                  swift_allocObject();
                  sub_22BB758D8();
                  *(v645 + 16) = v646;
                  *(v645 + 24) = v628;
                  sub_22BB322B0();
                  swift_allocObject();
                  sub_22BD60784();
                  *(v647 + 16) = v648;
                  *(v647 + 24) = v644;

                  v2981 = v644;

                  v2986 = sub_22BDB77C4();
                  v649 = sub_22BDBB134();
                  sub_22BD616A8();
                  v650 = swift_allocObject();
                  sub_22BD60E0C(v650);
                  sub_22BD616A8();
                  v526 = swift_allocObject();
                  sub_22BD62C10(v526);
                  sub_22BB322B0();
                  v651 = swift_allocObject();
                  sub_22BBBE7C0(v651);
                  sub_22BB322B0();
                  v361 = swift_allocObject();
                  sub_22BB69C9C(v361);
                  sub_22BD616A8();
                  v152 = swift_allocObject();
                  sub_22BB6C06C(v152);
                  sub_22BD616A8();
                  v30 = swift_allocObject();
                  *(v30 + 16) = v634;
                  sub_22BB322B0();
                  v652 = swift_allocObject();
                  sub_22BBBEB28(v652);
                  sub_22BB322B0();
                  v653 = swift_allocObject();
                  sub_22BB69C9C(v653);
                  v654 = sub_22BBCCA6C();
                  sub_22BB348E0(v654);
                  v655[4] = v656;
                  v655[5] = v628;
                  v655[6] = sub_22BB89C08;
                  v655[7] = v526;
                  v655[8] = sub_22BB89C7C;
                  v655[9] = v361;
                  v655[10] = sub_22BB89C08;
                  v655[11] = v152;
                  v655[12] = sub_22BB89C08;
                  v655[13] = v30;
                  v655[14] = sub_22BB89C7C;
                  v655[15] = v653;

                  v657 = v649;

                  if (os_log_type_enabled(v2986, v649))
                  {
                    sub_22BB67968();
                    v658 = sub_22BBBFF34();
                    v636[201] = 0;
                    v636[202] = v658;
                    sub_22BBBEB6C();
                    v636[200] = v659;
                    v636[121] = sub_22BB89C08;
                    v636[122] = v628;
                    v660 = sub_22BD60220();
                    sub_22BB67984(v660, v661, v662, v663);
                    if (!v2998)
                    {

                      sub_22BB6C8F4();
                      v636[122] = v526;
                      v664 = sub_22BD60220();
                      sub_22BB67984(v664, v665, v666, v667);

                      sub_22BD62AB8();
                      v636[122] = v361;
                      v668 = sub_22BD60220();
                      sub_22BB67984(v668, v669, v670, v671);

                      sub_22BB6C8F4();
                      v636[122] = v152;
                      v672 = sub_22BD60220();
                      sub_22BB67984(v672, v673, v674, v675);

                      sub_22BB6C8F4();
                      v636[122] = v30;
                      v676 = sub_22BD60220();
                      sub_22BB67984(v676, v677, v678, v679);

                      sub_22BD62AB8();
                      v636[122] = v653;
                      v680 = sub_22BD60220();
                      sub_22BB67984(v680, v681, v682, v683);
                      v684 = v636[492];
                      v685 = v636[480];
                      sub_22BB702B4();

                      sub_22BD636C8(&dword_22BB2C000, v2986, v657, "[SessionCoordinator %{public}s] Event: %s");
                      sub_22BD63178();
                      sub_22BD62140();
                      sub_22BB679C0();
                    }

                    goto LABEL_377;
                  }

                  v2863 = v636[492];
                  v506 = v636[480];
                  v2849 = v636[479];
                  oslogh = v636[407];
                  v753 = v636[404];
                  v28 = v636[403];

                  v2796(v2863, v2849);
                  (*(v753 + 8))(oslogh, v28);
                }

                else
                {
                  oslogg = v636[491];
                  sub_22BDB63E4();
                  sub_22BB322B0();
                  v686 = swift_allocObject();
                  v687 = sub_22BBBE69C(v686);
                  *(v687 + 16) = v688;
                  *(v687 + 24) = v628;
                  v689 = sub_22BB500C0();
                  v634(v689);
                  sub_22BB89F18(&v637[2]);
                  v690 = swift_allocObject();
                  sub_22BB70520(v690);
                  sub_22BD64B28();
                  v631();
                  sub_22BB322B0();
                  v2847 = swift_allocObject();
                  v2847[2].isa = sub_22BD5EC34;
                  v2847[3].isa = v690;
                  (v634)(v30, v2981, v152);
                  v2814 = swift_allocObject();
                  v691 = sub_22BB70520(v2814);
                  (v631)(v691);

                  v526 = oslogg;
                  osloga = sub_22BDB77C4();
                  v2862 = sub_22BDBB134();
                  sub_22BD616A8();
                  v692 = swift_allocObject();
                  sub_22BB973E4(v692);
                  sub_22BD616A8();
                  v2981 = swift_allocObject();
                  sub_22BB97EE0(v2981);
                  sub_22BB322B0();
                  swift_allocObject();
                  sub_22BB9710C();
                  *(v693 + 16) = v694;
                  *(v693 + 24) = v2819;
                  sub_22BB322B0();
                  v695 = swift_allocObject();
                  sub_22BB69C9C(v695);
                  sub_22BD616A8();
                  v696 = swift_allocObject();
                  sub_22BD64AAC(v696);
                  sub_22BD616A8();
                  v697 = swift_allocObject();
                  *(v697 + 16) = v361;
                  sub_22BB322B0();
                  swift_allocObject();
                  sub_22BD6067C();
                  *(v698 + 16) = v699;
                  *(v698 + 24) = v2847;
                  sub_22BB322B0();
                  v700 = swift_allocObject();
                  sub_22BB69C9C(v700);
                  sub_22BD616A8();
                  v701 = swift_allocObject();
                  sub_22BD63D38(v701);
                  sub_22BD616A8();
                  v702 = swift_allocObject();
                  sub_22BD64300(v702);
                  sub_22BB322B0();
                  swift_allocObject();
                  sub_22BD6073C();
                  *(v703 + 16) = v704;
                  *(v703 + 24) = v2814;
                  sub_22BB322B0();
                  v361 = swift_allocObject();
                  sub_22BB960B8(v361);
                  v705 = sub_22BD61958();
                  sub_22BB2F294(v705, xmmword_22BDCE140);
                  v705[4].n128_u64[1] = v695;
                  v705[5].n128_u64[0] = sub_22BB89C08;
                  v705[5].n128_u64[1] = v637;
                  v705[6].n128_u64[0] = sub_22BB89C08;
                  v705[6].n128_u64[1] = v697;
                  v705[7].n128_u64[0] = sub_22BB89C7C;
                  v705[7].n128_u64[1] = v700;
                  v705[8].n128_u64[0] = sub_22BB89C08;
                  v705[8].n128_u64[1] = v690;
                  v705[9].n128_u64[0] = sub_22BB89C08;
                  v705[9].n128_u64[1] = v526;
                  v705[10].n128_u64[0] = sub_22BB89C7C;
                  v705[10].n128_u64[1] = v361;

                  v2848 = v637;

                  sub_22BD652C0();

                  if (os_log_type_enabled(osloga, v2862))
                  {
                    v706 = v695;
                    v2962 = v690;
                    v707 = sub_22BB67968();
                    v708 = sub_22BD63AC4();
                    v636[199] = 0;
                    v636[307] = v708;
                    sub_22BD61FC0(v707);
                    v636[203] = v709;
                    v636[119] = sub_22BB89C08;
                    v636[120] = v2986;
                    v710 = sub_22BD5F964();
                    v711 = v2998;
                    sub_22BB67984(v710, v712, v713, v714);
                    if (!v2998)
                    {

                      v636[119] = sub_22BB89C08;
                      v636[120] = v2981;
                      v715 = sub_22BD5F964();
                      sub_22BB67984(v715, v716, v717, v718);

                      sub_22BB96D10();
                      v636[120] = v706;
                      v719 = sub_22BD5F964();
                      sub_22BB67984(v719, v720, v721, v722);

                      sub_22BB6C054();
                      v636[120] = v2848;
                      v723 = sub_22BD5F964();
                      sub_22BB67984(v723, v724, v725, v726);

                      sub_22BB6C054();
                      v636[120] = v30;
                      v727 = sub_22BD5F964();
                      sub_22BB67984(v727, v728, v729, v730);

                      sub_22BB96D10();
                      v636[120] = v700;
                      v731 = sub_22BD5F964();
                      sub_22BB67984(v731, v732, v733, v734);

                      sub_22BB6C054();
                      v636[120] = v2962;
                      v735 = sub_22BD5F964();
                      sub_22BB67984(v735, v736, v737, v738);

                      v636[119] = sub_22BB89C08;
                      v636[120] = v526;
                      v739 = sub_22BD5F964();
                      sub_22BB67984(v739, v740, v741, v742);

                      sub_22BB96D10();
                      v636[120] = v361;
                      v743 = sub_22BD5F964();
                      sub_22BB67984(v743, v744, v745, v746);
                      v747 = v636[491];
                      v748 = v636[480];
                      v749 = v636[479];
                      v750 = v636[407];
                      v751 = v636[404];
                      v752 = v636[403];

                      _os_log_impl(&dword_22BB2C000, osloga, v2862, "[SessionCoordinator %{public}s] Event ID: %{public}s is %{public}s", v707, 0x20u);
                      sub_22BD62500();
                      swift_arrayDestroy();
                      sub_22BB30458();
                      sub_22BB679C0();
                    }

                    goto LABEL_365;
                  }

                  v2819 = v636[491];
                  v754 = v636[480];
                  v506 = v636[479];
                  v2864 = v636[407];
                  v755 = v636[404];
                  v28 = v636[403];

                  v2796 = *(v754 + 8);
                  v2796(v2819, v506);
                  v756 = *(v755 + 8);
                  v152 = v755 + 8;
                  v756(v2864, v28);
                }

                v54 = v2998;
                v628 = (&loga->isa + 1);
                v464 = v2996;
              }

              while (v2915 != v2991);
            }

            v2998 = v54;
            v2781 = sub_22BB954F8(v464[308]);
            if (v2781)
            {
              v757 = 0;
              v152 = v464[379];
              v361 = *(v464[374] + 48);
              v54 = &qword_22BDD0300;
              v2780 = v152;
              v2779 = v361;
              while (1)
              {
                sub_22BD632A8();
                sub_22BD618B8();
                sub_22BB954F0(v758, v759, v760);
                sub_22BD622FC();
                sub_22BD63468();
                sub_22BB3CD70(v761, v762, v763, &qword_22BDD0300);
                v2788 = v757 + 1;
                if (__OFADD__(v757, 1))
                {
                  goto LABEL_401;
                }

                v764 = sub_22BB6FFCC();
                v766 = v526 + v765;
                sub_22BB970CC(v764);
                v767(v766, v152 + v361, v506);
                v768 = sub_22BD60A8C();
                v769(v768);
                sub_22BD64B34();
                if (v770)
                {
                  v771 = &qword_22BDD0300;
                  sub_22BB72B1C();
                  sub_22BD63E60();
                  if (&qword_22BDD0300)
                  {
                    sub_22BD64144();
                    goto LABEL_130;
                  }
                }

                else
                {
                }

                v775 = sub_22BD60CC4(v464[378]);
                v776(v775);
                sub_22BB366B8();
                v506 = swift_allocObject();
                v506[2].isa = &qword_22BDD0300;
                v777 = sub_22BBC05B4();
                sub_22BD63CDC(v777);

                v771 = v464 + 10;
                sub_22BBBFFC8();
                sub_22BD64C70();
                v779 = v778;
                sub_22BD620D0();

                v780 = v464[16];

                if (v30)
                {
                  break;
                }

                v526 = v757 + 1;
                v152 = v2780;
                v361 = v2779;
                v28 = &qword_27D8E6038;
LABEL_145:
                v54 = &qword_22BDD0300;
                sub_22BB325EC(v464[378], &qword_27D8E6038, &qword_22BDD0300);
                ++v757;
                if (v526 == v2781)
                {
                  goto LABEL_146;
                }
              }

              v2784 = v757;
              v781 = sub_22BB38518();
              sub_22BD5EC9C(v781, v782, v783);
              v773 = &qword_22BDD0300;
              v30 = v152;
              v772 = v361;
              v774 = v779;
LABEL_130:
              v784 = v464[490];
              oslogi = v464[478];
              v2865 = v464[473];
              v2918 = v464[466];
              logk = v464[465];
              v785 = v464[378];
              v786 = v464[377];
              v2815 = v464[376];
              v787 = v464[312];
              v2783 = v772;
              sub_22BB97FF0(v464 + 175, v30, v772, v774 & 1, v773);
              sub_22BD62B9C();
              v788 = v464[175];
              v2782 = v464[176];
              sub_22BDB63E4();
              sub_22BB322B0();
              v789 = swift_allocObject();
              v790 = sub_22BD62A1C(v789);
              *(v790 + 16) = v791;
              *(v790 + 24) = v787;
              sub_22BB366B8();
              v792 = swift_allocObject();
              sub_22BD60D9C(v792);
              sub_22BB322B0();
              v793 = swift_allocObject();
              *(v793 + 16) = sub_22BB8AE80;
              *(v793 + 24) = v784;
              v794 = sub_22BB2F0E0();
              sub_22BB3CD70(v794, v795, &qword_27D8E6038, &qword_22BDD0300);
              swift_allocObject();
              sub_22BD64AFC();
              v796 = sub_22BD639E0();
              sub_22BB6BEE0(v796, v797, v798, &qword_22BDD0300);
              sub_22BB322B0();
              v799 = swift_allocObject();
              sub_22BB976A8(v799);
              sub_22BB322B0();
              v800 = swift_allocObject();
              v2791 = v771;
              *(v800 + 16) = v771;
              *(v800 + 24) = v506;
              sub_22BB322B0();
              v801 = swift_allocObject();
              sub_22BB97D80(v801);
              sub_22BB366B8();
              v2850 = v788;
              *(swift_allocObject() + 16) = v788;
              sub_22BB322B0();
              v802 = swift_allocObject();
              sub_22BD60634(v802);
              v803 = v2865;
              sub_22BB3CD70(oslogi, v2865, &qword_27D8E3218, &qword_22BDBE390);
              sub_22BD62264(logk);
              sub_22BB92A98();
              v804 = swift_allocObject();
              sub_22BD644D4(v804);

              v2866 = v506;

              v2785 = sub_22BDB77C4();
              v2786 = sub_22BDBB134();
              sub_22BD616A8();
              v2816 = swift_allocObject();
              sub_22BBC3BAC(v2816);
              sub_22BD616A8();
              v2919 = swift_allocObject();
              sub_22BD612D8(v2919);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB96B64();
              *(v805 + 16) = v806;
              *(v805 + 24) = v2986;
              sub_22BB322B0();
              v807 = swift_allocObject();
              v2810 = sub_22BBC3BB8(v807);
              sub_22BD616A8();
              v2820 = swift_allocObject();
              *(v2820 + 16) = &qword_22BDBE390;
              sub_22BD616A8();
              logb = swift_allocObject();
              LOBYTE(logb[2].isa) = &qword_27D8E3218;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97D10();
              *(v808 + 16) = v809;
              *(v808 + 24) = v793;
              sub_22BB322B0();
              v810 = swift_allocObject();
              v2792 = sub_22BB97474(v810);
              sub_22BD616A8();
              v2806 = swift_allocObject();
              *(v2806 + 16) = &qword_22BDBE390;
              sub_22BD616A8();
              v2987 = swift_allocObject();
              *(v2987 + 16) = &qword_27D8E3218;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB3AC60();
              *(v811 + 16) = v812;
              *(v811 + 24) = v799;
              sub_22BB322B0();
              v2982 = swift_allocObject();
              *(v2982 + 16) = sub_22BB89C80;
              *(v2982 + 24) = v506;
              sub_22BD616A8();
              v813 = swift_allocObject();
              *(v813 + 16) = &qword_22BDBE390;
              v814 = v813;
              sub_22BD616A8();
              v2801 = swift_allocObject();
              *(v2801 + 16) = &qword_27D8E3218;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F86C();
              *(v815 + 16) = v816;
              *(v815 + 24) = v801;
              sub_22BB322B0();
              v817 = swift_allocObject();
              v818 = sub_22BB70340(v817);
              *(v818 + 16) = v819;
              *(v818 + 24) = v506;
              sub_22BD616A8();
              v820 = swift_allocObject();
              *(v820 + 16) = &qword_22BDBE390;
              sub_22BD616A8();
              v2797 = swift_allocObject();
              *(v2797 + 16) = &qword_27D8E3218;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97D10();
              *(v821 + 16) = v822;
              *(v821 + 24) = v802;
              sub_22BB322B0();
              v823 = swift_allocObject();
              sub_22BB97474(v823);
              sub_22BD616A8();
              v2789 = swift_allocObject();
              *(v2789 + 16) = &qword_22BDBE390;
              sub_22BD616A8();
              v824 = swift_allocObject();
              *(v824 + 16) = &qword_27D8E3218;
              v825 = v824;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97EBC();
              *(v826 + 16) = v827;
              *(v826 + 24) = v786;
              sub_22BB322B0();
              v828 = swift_allocObject();
              sub_22BB97474(v828);
              v829 = sub_22BD62608();
              sub_22BB73BD0(v829);
              sub_22BD60544(v2816);
              sub_22BB3FE84(v2919);
              v829[9] = v803;
              v829[10] = sub_22BB89C08;
              sub_22BD6298C();
              sub_22BD6061C(logb);
              v829[15] = v2792;
              v829[16] = sub_22BB89C08;
              sub_22BD6295C(v2806);
              sub_22BD62944(v2987);
              sub_22BB96D28(v2982);
              v829[23] = v814;
              v829[24] = sub_22BB89C08;
              sub_22BD61E40();
              v829[29] = v820;
              v829[30] = sub_22BB89C08;
              sub_22BD6292C();
              v829[33] = v823;
              v829[34] = sub_22BB89C08;
              v829[35] = v2789;
              v829[36] = sub_22BB89C08;
              v829[37] = v825;
              v829[38] = sub_22BB89C7C;
              v829[39] = v828;

              v2787 = v814;

              v830 = v825;

              if (sub_22BD64F30())
              {
                v831 = sub_22BB67968();
                v832 = swift_slowAlloc();
                sub_22BB8A61C(v832);
                *v831 = 1538;
                *(v2797 + 1672) = v831 + 1;
                sub_22BB6B724();
                *(v2797 + 1552) = v2816;
                v833 = sub_22BB39218();
                sub_22BB67984(v833, v834, v835, v836);
                if (!v2998)
                {

                  sub_22BB6B724();
                  *(v2797 + 1552) = v2919;
                  v837 = sub_22BB39218();
                  sub_22BB67984(v837, v838, v839, v840);

                  sub_22BB37EF8();
                  *(v2797 + 1552) = v2810;
                  v841 = sub_22BB39218();
                  sub_22BB67984(v841, v842, v843, v844);

                  sub_22BB6B724();
                  *(v2797 + 1552) = v2820;
                  v845 = sub_22BB39218();
                  sub_22BB67984(v845, v846, v847, v848);

                  sub_22BB6B724();
                  *(v2797 + 1552) = logb;
                  v849 = sub_22BB39218();
                  sub_22BB67984(v849, v850, v851, v852);

                  sub_22BB37EF8();
                  *(v2797 + 1552) = v2792;
                  v853 = sub_22BB39218();
                  sub_22BB67984(v853, v854, v855, v856);

                  sub_22BB6B724();
                  *(v2797 + 1552) = v2806;
                  v857 = sub_22BB39218();
                  sub_22BB67984(v857, v858, v859, v860);

                  sub_22BB6B724();
                  *(v2797 + 1552) = v2987;
                  v861 = sub_22BB39218();
                  sub_22BB67984(v861, v862, v863, v864);

                  sub_22BB37EF8();
                  *(v2797 + 1552) = v2982;
                  v865 = sub_22BB39218();
                  sub_22BB67984(v865, v866, v867, v868);

                  sub_22BB6B724();
                  *(v2797 + 1552) = v2787;
                  v869 = sub_22BB39218();
                  sub_22BB67984(v869, v870, v871, v872);

                  sub_22BB6B724();
                  *(v2797 + 1552) = v2801;
                  v873 = sub_22BB39218();
                  sub_22BB67984(v873, v874, v875, v876);

                  sub_22BB37EF8();
                  *(v2797 + 1552) = v2790;
                  v877 = sub_22BB39218();
                  sub_22BB67984(v877, v878, v879, v880);

                  sub_22BB6B724();
                  *(v2797 + 1552) = v820;
                  v881 = sub_22BB39218();
                  sub_22BB67984(v881, v882, v883, v884);

                  sub_22BB6B724();
                  *(v2797 + 1552) = v2797;
                  v885 = sub_22BB39218();
                  sub_22BB67984(v885, v886, v887, v888);

                  sub_22BB37EF8();
                  *(v2797 + 1552) = v823;
                  v889 = sub_22BB39218();
                  sub_22BB67984(v889, v890, v891, v892);

                  *(v2797 + 1544) = sub_22BB89C08;
                  *(v2797 + 1552) = v2789;
                  v893 = sub_22BB39218();
                  sub_22BB67984(v893, v894, v895, v896);

                  *(v2797 + 1544) = sub_22BB89C08;
                  *(v2797 + 1552) = v825;
                  v897 = sub_22BB39218();
                  sub_22BB67984(v897, v898, v899, v900);

                  sub_22BB37EF8();
                  *(v2797 + 1552) = v828;
                  v901 = sub_22BB39218();
                  sub_22BB67984(v901, v902, v903, v904);
                  v905 = *(v2797 + 3920);
                  sub_22BD62624();

                  sub_22BD63EC8(&dword_22BB2C000, v2785, v2786, "[SessionCoordinator %{public}s] | [TX %{public}s] %{public}s (as %{public}s) notified. Span %{public}s spawned with request ID %{public}s.");
                  sub_22BD62D5C();
                  sub_22BB30458();
                  sub_22BB679C0();
                }

                goto LABEL_378;
              }

              v464 = v2996;
              v906 = *(v2996 + 3920);
              v907 = *(v2996 + 3840);
              v908 = *(v2996 + 3832);

              v909 = *(v907 + 8);
              v910 = sub_22BB35464();
              v911(v910);
              v912 = sub_22BD5FC9C();
              v2811 = v913;
              v913(v912);
              sub_22BD60604();
              sub_22BB335C0(v830 + v2806, v829);
              sub_22BDB6104();
              v914 = sub_22BB3AC54();
              sub_22BB335C0(v914, v915);
              sub_22BB58DFC();
              swift_allocObject();
              sub_22BB2F5B0();
              sub_22BD652D8(v916);
              sub_22BB322B0();
              v917 = swift_allocObject();
              sub_22BB3E2EC(v917);
              sub_22BB366B8();
              *(swift_allocObject() + 16) = v2850;
              sub_22BB322B0();
              v918 = swift_allocObject();
              sub_22BD5F71C(v918);
              sub_22BB322B0();
              v919 = swift_allocObject();
              *(v919 + 16) = v771;
              *(v919 + 24) = v2866;
              sub_22BB322B0();
              oslogj = swift_allocObject();
              oslogj[2].isa = sub_22BD5ED18;
              oslogj[3].isa = v919;

              sub_22BDB7724();
              logc = sub_22BDB7744();
              v2807 = sub_22BDBB1D4();
              sub_22BD616A8();
              v920 = swift_allocObject();
              sub_22BD63318(v920);
              sub_22BD616A8();
              v921 = swift_allocObject();
              v2988 = sub_22BB6FB2C(v921);
              sub_22BB322B0();
              v922 = swift_allocObject();
              sub_22BB586D8(v922);
              sub_22BB322B0();
              v923 = swift_allocObject();
              sub_22BB3DEE8(v923);
              sub_22BD616A8();
              v2981 = swift_allocObject();
              *(v2981 + 16) = v2789;
              sub_22BD616A8();
              v924 = swift_allocObject();
              *(v924 + 16) = 8;
              v925 = v924;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB756B0();
              *(v926 + 16) = v927;
              *(v926 + 24) = v918;
              sub_22BB322B0();
              v928 = swift_allocObject();
              sub_22BB3DEE8(v928);
              sub_22BD616A8();
              v2920 = swift_allocObject();
              *(v2920 + 16) = v2789;
              sub_22BD616A8();
              v929 = swift_allocObject();
              sub_22BB6FB2C(v929);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD60724();
              *(v930 + 16) = v931;
              *(v930 + 24) = oslogj;
              sub_22BB322B0();
              v932 = swift_allocObject();
              sub_22BB960B8(v932);
              v933 = sub_22BD61958();
              v934 = sub_22BBC2570(v933, xmmword_22BDCE140);
              v934[2].n128_u64[0] = v935;
              v934[2].n128_u64[1] = v920;
              v934[3].n128_u64[0] = sub_22BB89C08;
              v934[3].n128_u64[1] = v2988;
              v934[4].n128_u64[0] = sub_22BB89C7C;
              v934[4].n128_u64[1] = v923;
              v934[5].n128_u64[0] = sub_22BB89C08;
              v934[5].n128_u64[1] = v2981;
              v934[6].n128_u64[0] = sub_22BB89C08;
              v934[6].n128_u64[1] = v925;
              v934[7].n128_u64[0] = sub_22BB89C7C;
              v934[7].n128_u64[1] = v928;
              v934[8].n128_u64[0] = sub_22BB89C08;
              v934[8].n128_u64[1] = v2920;
              v934[9].n128_u64[0] = sub_22BB89C08;
              v934[9].n128_u64[1] = v929;
              v934[10].n128_u64[0] = sub_22BB89C7C;
              v934[10].n128_u64[1] = v932;

              v2821 = v923;
              v936 = v929;

              v937 = logc;
              if (sub_22BDBB244())
              {
                v938 = v928;
                sub_22BB73F58("Span", &v3003);
                v939 = v3003;
                v940 = sub_22BB67968();
                v941 = sub_22BD63AC4();
                sub_22BD641EC(v941);
                sub_22BB35530(v940);
                v942 = sub_22BB3A2F8(v920);
                sub_22BB67984(v942, v943, v944, v945);
                if (!v2998)
                {
                  sub_22BB73F80();
                  v946 = sub_22BB3A2F8(v2988);
                  sub_22BB67984(v946, v947, v948, v949);
                  sub_22BB6F960();
                  v950 = sub_22BB3A2F8(v2821);
                  sub_22BB67984(v950, v951, v952, v953);
                  v2999 = v939;
                  sub_22BB73F80();
                  v954 = sub_22BB3A2F8(v2981);
                  sub_22BB67984(v954, v955, v956, v957);
                  sub_22BB73F80();
                  v958 = sub_22BB3A2F8(v925);
                  sub_22BB67984(v958, v959, v960, v961);
                  sub_22BB6F960();
                  *(v2996 + 1488) = v938;
                  v962 = sub_22BB69324();
                  sub_22BB67984(v962, v963, v964, v965);
                  sub_22BB73F80();
                  v966 = sub_22BB3A2F8(v2920);
                  sub_22BB67984(v966, v967, v968, v969);
                  sub_22BB73F80();
                  *(v2996 + 1488) = v936;
                  v970 = sub_22BB69324();
                  sub_22BB67984(v970, v971, v972, v973);
                  sub_22BB6F960();
                  *(v2996 + 1488) = v932;
                  v974 = sub_22BB69324();
                  sub_22BB67984(v974, v975, v976, v977);
                  v978 = *(v2996 + 4192);

                  v979 = sub_22BDB7714();
                  _os_signpost_emit_with_name_impl(&dword_22BB2C000, logc, v2807, v979, v2999, "[SessionCoordinator %{public}s] - Span %{public}s - Part: %{public}s", v940, 0x20u);
                  sub_22BD62500();
                  swift_arrayDestroy();
                  sub_22BB30458();
                  sub_22BB679C0();
                }

                goto LABEL_406;
              }

              logl = *(v2996 + 4488);
              v980 = *(v2996 + 4264);
              v981 = *(v2996 + 4224);
              sub_22BBD1A10();
              oslogk = v982;
              v2802 = *(v2996 + 3408);
              v983 = *(v2996 + 3392);
              sub_22BD64DA4();
              v2921 = v984;
              sub_22BB4FE90();
              sub_22BD631B0();
              v2793 = v985;
              v2790 = *(v2996 + 2920);
              v2822 = *(v2996 + 2912);
              v2808 = *(v2996 + 2496);
              sub_22BB345A8();
              sub_22BBB65DC();
              v986();
              sub_22BB3A190();
              v987 = sub_22BDB7784();
              sub_22BB3AAD8();
              sub_22BB97E14();
              v988();
              sub_22BD61C58();
              v989();
              sub_22BB3CD70(v2981, v983 + SLODWORD(v937[3].isa), &qword_27D8E3218, &qword_22BDBE390);
              *v983 = v2850;
              v983[1] = v771;
              sub_22BD627AC();
              sub_22BB3B410();
              sub_22BB335C0(v2793, v2790);
              sub_22BB366A0();
              v990 = v2802;
              sub_22BB335C0(v983, v2802);
              v991 = sub_22BBC01E4();
              v2811(v991);

              sub_22BB35FA0();
              HIDWORD(v2981) = HIDWORD(v987);
              v2986 = sub_22BBBED88(v992, v993, v994, v987);
              sub_22BB8B6A4();
              sub_22BB335C0(logl + v2808, v2822);
              sub_22BB94F54(v2983, oslogk);
              v995 = sub_22BB3A190();
              v997 = sub_22BB3AA28(v995, v996, v2921);
              v998 = *(v2996 + 3624);
              if (v997 == 1)
              {
                sub_22BB325EC(*(v2996 + 3624), &unk_27D8E69E0, &qword_22BDC1660);
              }

              else
              {
                v999 = *(v2996 + 3232);
                v1000 = *(v2996 + 3224);
                v1001 = *(v2996 + 3624);
                sub_22BDB9AA4();
                sub_22BC54A30();
                v1002 = sub_22BD61704();
                v1003(v1002);
                if (v2802)
                {
LABEL_141:
                  logm = *(v2996 + 4464);
                  v2794 = *(v2996 + 4448);
                  v2915 = *(v2996 + 4440);
                  sub_22BD647C0();
                  v2823 = v1004;
                  oslogl = *(v2996 + 3368);
                  v1005 = *(v2996 + 2912);
                  v2809 = *(v2996 + 2904);
                  v1006 = *(v2996 + 2896);
                  v2812 = *(v2996 + 2888);
                  v1007 = *(v2996 + 2880);
                  v2798 = *(v2996 + 2872);
                  v2817 = *(v2996 + 2864);
                  v2803 = *(v2996 + 2792);
                  v1008 = *(v2996 + 2496);
                  SessionPersistenceManager.write(initiatedParticipant:initiatedSpanId:postingParticipant:postingSpanId:)(v2791, v2866, v2850, v1009, v990, v2795);

                  sub_22BB387B8();
                  sub_22BB34648();
                  sub_22BB96DFC();
                  sub_22BB97C78();
                  v1010();
                  v1011 = sub_22BD63D44();
                  sub_22BD645F0(v1011, v2833, v2886, v1012);
                  swift_storeEnumTagMultiPayload();

                  sub_22BD63650();
                  sub_22BDBAF34();
                  v1013 = sub_22BD623E0();
                  v1014(v1013, v2812);
                  sub_22BB366A0();
                  sub_22BB335C0(v2823, v2817);
                  sub_22BB331C8();
                  sub_22BB336D0(v1015, v1016, v1017, oslogl);
                  sub_22BB3B574();
                  sub_22BD63D1C();
                  swift_endAccess();
                  if (*(v1008 + v2915) == 1)
                  {
                    v1018 = *(v2996 + 4896);
                    logn = *(v2996 + 3216);
                    v1019 = *(v2996 + 3208);
                    v2915 = *(v2996 + 3200);
                    sub_22BD64264();
                    sub_22BDB8444();
                    sub_22BD63804();
                    sub_22BD61528();
                    sub_22BDB5D24();
                    v1020 = sub_22BD639D4();
                    v1021(v1020, v1018, v1007);
                    sub_22BB93D50();
                    sub_22BDB5E14();
                    sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                    sub_22BD63C70();
                    sub_22BDBAF34();
                    v1022 = sub_22BD647B4();
                    v1023 = sub_22BD6147C(v1022, v2783);
                    sub_22BBBFEB0(v1023, v2783, v1024);

                    (*(v1019 + 8))(logn, v2915);
                  }

                  else
                  {
                    v1025 = sub_22BD647B4();
                    v1026 = sub_22BD6147C(v1025, v2783);
                    sub_22BBBFEB0(v1026, v2783, v1027);
                  }

                  v28 = &qword_27D8E6038;
                  v757 = v2784;
                  v152 = v2780;
                  v361 = v2779;
                  v1028 = *(v2996 + 3392);
                  v1029 = *(v2996 + 2984);
                  v1030 = *(v2996 + 2968);
                  v506 = *(v2996 + 2960);
                  v30 = *(v2996 + 2952);
                  sub_22BB33E70();
                  sub_22BB34648();
                  sub_22BB3093C();
                  sub_22BB34648();
                  v1031 = sub_22BBB4C24();
                  v1032(v1031);
                  v526 = v2788;
                  goto LABEL_145;
                }
              }

              sub_22BDB83A4();
              sub_22BC54A30();

              goto LABEL_141;
            }

LABEL_146:
            v1033 = v464[534];
            v1034 = v464[525];
            sub_22BD62768();
            sub_22BDB6124();
            sub_22BB322B0();
            v1035 = swift_allocObject();
            sub_22BB3E014(v1035);
            sub_22BB366B8();
            v1036 = swift_allocObject();
            sub_22BD60D9C(v1036);
            sub_22BB322B0();
            v1037 = swift_allocObject();
            sub_22BD601E4(v1037);
            sub_22BDB7724();
            v2986 = sub_22BDB7744();
            LODWORD(v2981) = sub_22BDBB1D4();
            sub_22BD616A8();
            v1038 = swift_allocObject();
            sub_22BB97E20(v1038);
            sub_22BD616A8();
            v1039 = swift_allocObject();
            v50 = v464;
            sub_22BBC0370(v1039);
            sub_22BB322B0();
            v1040 = swift_allocObject();
            sub_22BB89D30(v1040);
            sub_22BB322B0();
            v32 = swift_allocObject();
            sub_22BB3DEE8(v32);
            sub_22BD616A8();
            v1041 = swift_allocObject();
            sub_22BD62B48(v1041);
            sub_22BD616A8();
            v1042 = swift_allocObject();
            *(v1042 + 16) = v152;
            sub_22BB322B0();
            v1043 = swift_allocObject();
            sub_22BD6018C(v1043);
            sub_22BB322B0();
            v1044 = swift_allocObject();
            sub_22BD60264(v1044);
            v1045 = sub_22BBCCA6C();
            sub_22BB34620(v1045);
            v1046[4] = v1047;
            v1046[5] = v1038;
            v1046[6] = sub_22BB89C08;
            v1046[7] = v361;
            v1046[8] = sub_22BB89C7C;
            v1046[9] = v32;
            v1046[10] = sub_22BB89C08;
            v1046[11] = v28;
            v1046[12] = sub_22BB89C08;
            v1046[13] = v1042;
            v1046[14] = sub_22BB89C7C;
            v1046[15] = v1044;

            if (sub_22BDBB244())
            {
              sub_22BB73F58("InstrumentationSend", &v3003);
              sub_22BD65428();
              v1048 = sub_22BD619F0();
              sub_22BD5F9A0(v1048);
              *(v50 + 1392) = v54;
              v1049 = sub_22BB3CE1C();
              sub_22BB67984(v1049, v1050, v1051, v1052);
              if (!v2998)
              {
                sub_22BB70508();
                *(v50 + 1392) = v361;
                v1053 = sub_22BB3CE1C();
                sub_22BB67984(v1053, v1054, v1055, v1056);
                *(v50 + 1384) = sub_22BB89C7C;
                *(v50 + 1392) = v32;
                v1057 = sub_22BB3CE1C();
                sub_22BB67984(v1057, v1058, v1059, v1060);
                sub_22BB70508();
                *(v50 + 1392) = v28;
                v1061 = sub_22BB3CE1C();
                sub_22BB67984(v1061, v1062, v1063, v1064);
                sub_22BD60234();
                *(v50 + 1392) = v1042;
                v1065 = sub_22BB3CE1C();
                sub_22BB67984(v1065, v1066, v1067, v1068);
                sub_22BD602A8();
                *(v50 + 1392) = v1044;
                v1069 = sub_22BB3CE1C();
                sub_22BB67984(v1069, v1070, v1071, v1072);
                v1073 = *(v50 + 4200);

                sub_22BDB7714();
                sub_22BBBE830();
                sub_22BD62590();
                sub_22BD65410(v1074, v1075, v1076, v1077, v1045, "[SessionCoordinator %s] | [TX %s] Begin dispatch to instrumentation.");
                sub_22BD62D7C();
                sub_22BD6193C();
                sub_22BB679C0();
              }

              goto LABEL_406;
            }

            v1213 = sub_22BD609B4();
            v2936(v1213);
            sub_22BB3A190();
            v473 = sub_22BDB7784();
            *(v50 + 4768) = v473;
            sub_22BB2F0E0();
            sub_22BB97E14();
            v1214();
            sub_22BB37074();
            sub_22BD61C58();
            v1215();
            sub_22BD648C0();
            v2867 = v473;
            if (v1216)
            {
              if (v1216 < 1)
              {
                goto LABEL_415;
              }

              sub_22BD60DAC();
              oslogb = *(v1217 + 16);
              do
              {
                sub_22BD60928();
                sub_22BD61C78();
                sub_22BB89508(v1218);
                v50 = *(v1219 + 4400);
                sub_22BB720E0();
                sub_22BD634D0();
                oslogb();
                sub_22BD62C60();
                v1220 = sub_22BD615E4();
                v1221(v1220);
                v1222 = sub_22BD62454();
                v1038(v1222);
                v473 = v2915;
                sub_22BDB9C74();
                sub_22BD654A0();

                sub_22BB6FB0C();
              }

              while (!v309);
            }

            sub_22BD60B30();
            if (v309)
            {
              v1223 = sub_22BD635CC();
              sub_22BD44098(v1223);
              v2961 = v2998;
              if (v2998)
              {
                sub_22BD63BBC();
                sub_22BDB63E4();
                sub_22BB322B0();
                v1224 = swift_allocObject();
                sub_22BD6049C(v1224);
                sub_22BB366B8();
                v1225 = swift_allocObject();
                sub_22BD61A0C(v1225);
                sub_22BB322B0();
                v1226 = swift_allocObject();
                sub_22BD60348(v1226);
                sub_22BB366B8();
                v1227 = swift_allocObject();
                sub_22BBC0200(v1227);
                v1228 = v2998;
                v2983 = sub_22BDB77C4();
                LODWORD(v2981) = sub_22BDBB114();
                sub_22BD616A8();
                v2991 = swift_allocObject();
                sub_22BD6250C(v2991);
                sub_22BD616A8();
                v2986 = swift_allocObject();
                sub_22BB6FB2C(v2986);
                sub_22BB322B0();
                v1229 = swift_allocObject();
                sub_22BD62708(v1229);
                sub_22BB322B0();
                v1230 = swift_allocObject();
                v1231 = v1042;
                v3000 = sub_22BB5811C(v1230);
                sub_22BD616A8();
                v1232 = swift_allocObject();
                sub_22BB75830(v1232);
                sub_22BD616A8();
                v1233 = swift_allocObject();
                sub_22BB929D4(v1233);
                sub_22BB322B0();
                v1234 = swift_allocObject();
                sub_22BBBE888(v1234);
                sub_22BB322B0();
                v1235 = swift_allocObject();
                sub_22BD6032C(v1235);
                sub_22BD616A8();
                v1236 = swift_allocObject();
                sub_22BD61EB0(v1236);
                sub_22BD616A8();
                v28 = swift_allocObject();
                *(v28 + 16) = v1042;
                sub_22BB322B0();
                v1237 = swift_allocObject();
                sub_22BD60380(v1237);
                sub_22BB322B0();
                v1238 = swift_allocObject();
                sub_22BD603F0(v1238);
                sub_22BB322B0();
                v1239 = swift_allocObject();
                sub_22BD603B8(v1239);
                v1240 = sub_22BD61958();
                v1241 = sub_22BBC2570(v1240, xmmword_22BDCE140);
                v1241[2].n128_u64[0] = v1242;
                sub_22BD60544(v2991);
                v1240[3].n128_u64[1] = v2986;
                v1240[4].n128_u64[0] = sub_22BB89C7C;
                v1240[4].n128_u64[1] = v473;
                v1240[5].n128_u64[0] = sub_22BB89C08;
                v1240[5].n128_u64[1] = v361;
                v1240[6].n128_u64[0] = sub_22BB89C08;
                v1240[6].n128_u64[1] = v1233;
                v1240[7].n128_u64[0] = sub_22BB89C7C;
                v1240[7].n128_u64[1] = v50;
                v1240[8].n128_u64[0] = sub_22BB89C08;
                sub_22BD62698();
                v1240[9].n128_u64[1] = v28;
                v1240[10].n128_u64[0] = sub_22BD5F648;
                v1240[10].n128_u64[1] = v1038;

                v2915 = v1233;

                sub_22BB974A0();
                if (os_log_type_enabled(v2983, v1243))
                {
                  v1244 = v361;
                  v1245 = sub_22BB67968();
                  v1246 = sub_22BD63870();
                  v1247 = sub_22BB3E490();
                  v1231[223] = v1246;
                  v1231[222] = v1247;
                  sub_22BD61FC0(v1245);
                  v1231[225] = v1248;
                  v1231[165] = sub_22BB89C08;
                  v1231[166] = v2991;
                  v1249 = sub_22BD615D0();
                  sub_22BB67984(v1249, v1250, v1251, v1252);

                  v1231[165] = sub_22BB89C08;
                  v1231[166] = v2986;
                  v1253 = sub_22BD615D0();
                  sub_22BB67984(v1253, v1254, v1255, v1256);

                  v1231[165] = sub_22BB89C7C;
                  v1231[166] = v3000;
                  v1257 = sub_22BD615D0();
                  sub_22BB67984(v1257, v1258, v1259, v1260);

                  v1231[165] = sub_22BB89C08;
                  v1231[166] = v1244;
                  v1261 = sub_22BD615D0();
                  sub_22BB67984(v1261, v1262, v1263, v1264);

                  v1231[165] = sub_22BB89C08;
                  v1231[166] = v2915;
                  v1265 = sub_22BD615D0();
                  sub_22BB67984(v1265, v1266, v1267, v1268);

                  sub_22BD5F6D4();
                  v1231[166] = v50;
                  v1269 = sub_22BB397F4();
                  sub_22BB67984(v1269, v1270, v1271, v1272);

                  sub_22BB3A8C8();
                  v1231[166] = v473;
                  v1273 = sub_22BB397F4();
                  sub_22BB67984(v1273, v1274, v1275, v1276);

                  sub_22BB3A8C8();
                  v1231[166] = v28;
                  v1277 = sub_22BB397F4();
                  sub_22BB67984(v1277, v1278, v1279, v1280);

                  sub_22BB70C3C();
                  v1231[166] = v1038;
                  v1281 = sub_22BB397F4();
                  sub_22BB67984(v1281, v1282, v1283, v1284);
                  sub_22BD64E30();
                  sub_22BBBE830();
                  sub_22BB6BF2C();
                  sub_22BD646EC(v1285, v1286, v1287, "[SessionCoordinator %{public}s] | [TX %{public}s] Failed to encode to proto data for debugger: %{public}@");
                  sub_22BB325EC(v1246, &unk_27D8E6A70, &unk_22BDBCDB0);
                  sub_22BB38680();
                  sub_22BBBE7DC();
                  sub_22BB32238();
                  sub_22BB679C0();
                }

                v1477 = *(v1042 + 3912);
                v1478 = v1231[480];
                v1479 = v1231[479];

                (*(v1478 + 8))(v1477, v1479);
                v2998 = 0;
                v1042 = v1231;
              }

              else
              {
                sub_22BD61E00();
                logp = v1399;
                sub_22BB97628();
                v2915 = v1400;
                sub_22BD619BC();
                sub_22BD65170(v1401);
                sub_22BD65248();
                sub_22BD600B0();
                sub_22BD62EA8();
                v1402 = sub_22BD62428();
                sub_22BD594F8(v1402, v1403, v1404);
                sub_22BB3CD70(logp, v361, &qword_27D8E3218, &qword_22BDBE390);
                sub_22BB7583C();
                v1405 = v1045[6].n128_u64[1];
                v1406 = sub_22BD633F4();
                v1407(v1406);
                sub_22BD63650();
                sub_22BDB5E14();
                sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                sub_22BD62448();
                sub_22BDBAF34();
                v1408 = sub_22BBD1A5C();
                v1409(v1408);
                v1042 = v2996;
                v2998 = 0;
              }
            }

            else
            {
            }

            v1480 = *(v1042 + 4256);
            v1481 = *(v1042 + 4184);
            sub_22BD62680();
            sub_22BDB6124();
            sub_22BB322B0();
            v1482 = swift_allocObject();
            sub_22BB977E8(v1482);
            sub_22BB366B8();
            v1483 = swift_allocObject();
            sub_22BD60D9C(v1483);
            sub_22BB322B0();
            v1484 = swift_allocObject();
            sub_22BB77E74(v1484);

            v1485 = sub_22BDB7744();
            sub_22BB96D04(v1485);
            sub_22BDB7774();
            LODWORD(v2983) = sub_22BDBB1C4();
            sub_22BD616A8();
            v1486 = swift_allocObject();
            sub_22BB97E20(v1486);
            sub_22BD616A8();
            v50 = swift_allocObject();
            sub_22BD62CE4(v50);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v1487 + 16) = v1488;
            *(v1487 + 24) = v1038;
            sub_22BB322B0();
            v188 = swift_allocObject();
            sub_22BB3DEE8(v188);
            sub_22BD616A8();
            v1489 = swift_allocObject();
            sub_22BD64D08(v1489);
            sub_22BD616A8();
            v1490 = swift_allocObject();
            sub_22BD64AF0(v1490);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v1491 + 16) = v1492;
            *(v1491 + 24) = v1484;
            sub_22BB322B0();
            v1493 = swift_allocObject();
            sub_22BB3DEE8(v1493);
            v1494 = sub_22BBCCA6C();
            sub_22BB31444(v1494);
            v1495[4] = v1496;
            v1495[5] = v1486;
            v1495[6] = sub_22BB89C08;
            v1495[7] = v50;
            v1495[8] = sub_22BB89C7C;
            v1495[9] = v188;
            v1495[10] = sub_22BB89C08;
            v1495[11] = v1038;
            v1495[12] = sub_22BB89C08;
            v1495[13] = v1481;
            v1495[14] = sub_22BB89C7C;
            v1495[15] = v1493;

            v160 = v2991;
            v171 = v2991;
            if (sub_22BDBB244())
            {
              sub_22BD642DC();
              sub_22BB73F58("InstrumentationSend", v1497);
              loge = v3003;

              sub_22BDB77B4();

              v1498 = v28[11];
              v1499 = sub_22BB53C48();
              if (v1500(v1499) == v1481)
              {
                v1501 = "[Error] Interval already ended";
              }

              else
              {
                v1505 = sub_22BD61D04();
                v1506(v1505);
                v1501 = "[SessionCoordinator %s] | [TX %s] Finished dispatch to instrumentation.";
              }

              sub_22BB67968();
              v1507 = sub_22BB97DCC();
              sub_22BD64CB4(v1507);
              sub_22BB756D4();
              *(v1042 + 1848) = v1508;
              *(v1042 + 1256) = sub_22BB89C08;
              *(v1042 + 1264) = v1486;
              v1509 = sub_22BD5F6A8();
              sub_22BB67984(v1509, v1510, v1511, v1512);
              if (!v2998)
              {
                sub_22BBC3C0C();
                *(v1042 + 1264) = v50;
                v1513 = sub_22BD5F6A8();
                sub_22BB67984(v1513, v1514, v1515, v1516);
                sub_22BD606AC();
                *(v1042 + 1264) = v188;
                v1517 = sub_22BD5F6A8();
                sub_22BB67984(v1517, v1518, v1519, v1520);
                sub_22BBC3C0C();
                *(v1042 + 1264) = v1038;
                v1521 = sub_22BD5F6A8();
                sub_22BB67984(v1521, v1522, v1523, v1524);
                sub_22BBC3C0C();
                *(v1042 + 1264) = v1481;
                v1525 = sub_22BD5F6A8();
                sub_22BB67984(v1525, v1526, v1527, v1528);
                sub_22BD606AC();
                *(v1042 + 1264) = v1493;
                v1529 = sub_22BD5F6A8();
                sub_22BB67984(v1529, v1530, v1531, v1532);
                sub_22BB3AC78();

                sub_22BDB7714();
                sub_22BD61B3C();
                sub_22BD6465C(&dword_22BB2C000, v2991, v1533, v1534, loge, v1501);
                sub_22BBBE7DC();
                sub_22BB32238();
                sub_22BB679C0();
              }

              goto LABEL_406;
            }

            sub_22BD61D18();
            v1502 = *(v1042 + 4152);

            sub_22BD61B0C();
            v1503();
            sub_22BD61C58();
            v1504();
            v54 = &qword_22BDBE390;
            LOBYTE(v157) = v2867;
            v30 = &qword_27D8E3218;
            if (v2825 != v2927)
            {
              sub_22BD64F70();
              sub_22BB322B0();
              v2597 = swift_allocObject();
              sub_22BD603D4(v2597);
              sub_22BB366B8();
              v2598 = swift_allocObject();
              sub_22BD61A0C(v2598);
              sub_22BB322B0();
              v2599 = swift_allocObject();
              sub_22BBC02FC(v2599);
              v473 = sub_22BDB77C4();
              LOBYTE(v28) = sub_22BDBB134();
              sub_22BD616A8();
              v2600 = swift_allocObject();
              sub_22BD632F8(v2600);
              sub_22BD616A8();
              v361 = swift_allocObject();
              *(v361 + 16) = 8;
              sub_22BB322B0();
              v2601 = swift_allocObject();
              sub_22BBBE7C0(v2601);
              sub_22BB322B0();
              v2602 = swift_allocObject();
              sub_22BB69C9C(v2602);
              sub_22BD616A8();
              v2603 = swift_allocObject();
              sub_22BD64D14(v2603);
              sub_22BD616A8();
              v2604 = swift_allocObject();
              sub_22BD642D0(v2604);
              sub_22BB322B0();
              v2605 = swift_allocObject();
              sub_22BD602C4(v2605);
              sub_22BB322B0();
              v32 = swift_allocObject();
              sub_22BB69C9C(v32);
              v2606 = sub_22BBCCA6C();
              sub_22BB72F5C(v2606);
              v2607[6] = sub_22BB89C08;
              v2607[7] = v361;
              v2607[8] = sub_22BB89C7C;
              v2607[9] = v2602;
              v2607[10] = sub_22BB89C08;
              v2607[11] = &qword_27D8E3218;
              v2607[12] = sub_22BB89C08;
              v2607[13] = v50;
              v2607[14] = sub_22BB89C7C;
              v2607[15] = v32;

              if (sub_22BB72E44())
              {
                sub_22BB67968();
                v2608 = sub_22BBBFF34();
                sub_22BD62E2C(v2608);
                *v2991 = v2609;
                v3003 = sub_22BB89C08;
                v3004 = v1042;
                v2610 = sub_22BB58B08();
                sub_22BB67984(v2610, v2611, v2612, v2613);
                if (&qword_22BDBE390)
                {

LABEL_321:

LABEL_379:

                  goto LABEL_380;
                }

LABEL_395:

                v3003 = sub_22BB89C08;
                v3004 = v361;
                v2709 = sub_22BB542B0();
                sub_22BB67984(v2709, v2710, v2711, v2712);
                if (v54)
                {

                  goto LABEL_380;
                }

                v2724 = sub_22BB542B0();
                sub_22BB67984(v2724, v2725, v2726, v2727);

                v3003 = sub_22BB89C08;
                v3004 = v30;
                v2758 = sub_22BB542B0();
                sub_22BB67984(v2758, v2759, v2760, v2761);
LABEL_416:

                v3003 = sub_22BB89C08;
                v3004 = v50;
                v2762 = sub_22BB542B0();
                sub_22BB67984(v2762, v2763, v2764, v2765);
                if (!v54)
                {

                  v3003 = sub_22BB89C7C;
                  v3004 = v32;
                  v2766 = sub_22BB542B0();
                  sub_22BB67984(v2766, v2767, v2768, v2769);
                  v2770 = *(v2996 + 3904);
                  v2771 = *(v2996 + 3840);
                  v2772 = *(v2996 + 3832);

                  _os_log_impl(&dword_22BB2C000, v473, v28, "[SessionCoordinator %{public}s] | [TX %{public}s] Terminate was encountered. Begin cleanup of session.", v2991, 0x16u);
                  sub_22BD619D4();
                  sub_22BD6193C();
                  sub_22BB679C0();
                }

                goto LABEL_379;
              }

              v2622 = *(v2996 + 3904);
              v2623 = *(v2996 + 3840);
              v2624 = *(v2996 + 3832);

              v2625 = sub_22BD61704();
              v2626(v2625);
              v2627 = *(v2996 + 4248);
              v2628 = *(v2996 + 4176);
              v2629 = *(v2996 + 2496);
              sub_22BDB6124();
              sub_22BB322B0();
              v2630 = swift_allocObject();
              sub_22BB977E8(v2630);
              sub_22BB366B8();
              v2631 = swift_allocObject();
              sub_22BD60D9C(v2631);
              sub_22BB322B0();
              v2632 = swift_allocObject();
              sub_22BD60A50(v2632);
              sub_22BDB7724();
              v2633 = sub_22BDB7744();
              sub_22BDBB1D4();
              sub_22BD616A8();
              v2634 = swift_allocObject();
              *(v2634 + 16) = 32;
              sub_22BD616A8();
              v2635 = swift_allocObject();
              sub_22BD631A4(v2635);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB3E0C4();
              *(v2636 + 16) = v2637;
              *(v2636 + 24) = &qword_27D8E3218;
              sub_22BB322B0();
              v2638 = swift_allocObject();
              sub_22BB3DEE8(v2638);
              sub_22BD616A8();
              v2639 = swift_allocObject();
              sub_22BD64CFC(v2639);
              sub_22BD616A8();
              v2640 = swift_allocObject();
              sub_22BB894FC(v2640);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB756B0();
              *(v2641 + 16) = v2642;
              *(v2641 + 24) = v2622;
              sub_22BB322B0();
              v2643 = swift_allocObject();
              sub_22BB3DEE8(v2643);
              v2644 = sub_22BBCCA6C();
              sub_22BB31444(v2644);
              v2645[4] = v2646;
              v2645[5] = v2634;
              v2645[6] = sub_22BB89C08;
              v2645[7] = v2635;
              v2645[8] = sub_22BB89C7C;
              v2645[9] = v2638;
              v2645[10] = sub_22BB89C08;
              v2645[11] = &qword_27D8E3218;
              v2645[12] = sub_22BB89C08;
              v2645[13] = v50;
              v2645[14] = sub_22BB89C7C;
              v2645[15] = v2643;

              if (sub_22BDBB244())
              {
                sub_22BD63EB0("ODPWait");
                sub_22BD62384();
                v2647 = sub_22BBBFF34();
                sub_22BB3ADEC(v2647);
                v3003 = v2648;
                v3004 = v2634;
                v2649 = sub_22BB58B08();
                sub_22BB67984(v2649, v2650, v2651, v2652);
                if (!v2628)
                {
                  v2653 = sub_22BB542B0();
                  sub_22BB67984(v2653, v2654, v2655, v2656);
                  v2657 = sub_22BB542B0();
                  sub_22BB67984(v2657, v2658, v2659, v2660);
                  v2661 = sub_22BB542B0();
                  sub_22BB67984(v2661, v2662, v2663, v2664);
                  v2665 = sub_22BB542B0();
                  sub_22BB67984(v2665, v2666, v2667, v2668);
                  v3003 = sub_22BB89C7C;
                  v3004 = v2643;
                  v2669 = sub_22BB542B0();
                  sub_22BB67984(v2669, v2670, v2671, v2672);
                  sub_22BB3E564();

                  v2673 = sub_22BDB7714();
                  sub_22BB40F38(&dword_22BB2C000, v2674, v2675, v2673, v2676, "[SessionCoordinator %s] | [TX %s] Notifying ODP about session end.");
                  sub_22BD623A0();
                  sub_22BB77E48();
                  sub_22BB679C0();
                }
              }

              else
              {

                sub_22BD6153C();
                v2682 = v2628[550];
                sub_22BD61CA0();
                v2683 = v2628[528];
                v2684 = sub_22BBBEAD0();
                v2936(v2684);
                sub_22BB3A190();
                v2685 = sub_22BDB7784();
                v2628[597] = v2685;
                sub_22BD61B0C();
                v2686();
                sub_22BB96020();
                sub_22BD61C58();
                v2687();
                (qword_27D8E3218)(v2682, *MEMORY[0x277D1DE98], v2635);
                sub_22BDB9C74();
                sub_22BD65518();

                sub_22BD65200();
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD60428();
                *(v2688 + 16) = v2689;
                *(v2688 + 24) = v2633;
                sub_22BB366B8();
                v2690 = swift_allocObject();
                sub_22BD61A0C(v2690);
                sub_22BB322B0();
                v2691 = swift_allocObject();
                sub_22BB6FEDC(v2691);

                v2692 = sub_22BDB7744();
                sub_22BDB7774();
                sub_22BDBB1C4();
                sub_22BD616A8();
                v2693 = swift_allocObject();
                sub_22BD63D94(v2693);
                sub_22BD616A8();
                v2694 = swift_allocObject();
                sub_22BD631A4(v2694);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB3E0C4();
                *(v2695 + 16) = v2696;
                *(v2695 + 24) = v2635;
                sub_22BB322B0();
                v2697 = swift_allocObject();
                sub_22BB3DEE8(v2697);
                sub_22BD616A8();
                v2698 = swift_allocObject();
                sub_22BD64AB8(v2698);
                sub_22BD616A8();
                v2699 = swift_allocObject();
                sub_22BB894FC(v2699);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB756B0();
                *(v2700 + 16) = v2701;
                *(v2700 + 24) = v2691;
                sub_22BB322B0();
                v2702 = swift_allocObject();
                sub_22BB8DCE0(v2702);
                v2703 = sub_22BBCCA6C();
                sub_22BB6B6F0(v2703);
                v2704[6] = sub_22BB89C08;
                v2704[7] = v2694;
                v2704[8] = sub_22BB89C7C;
                v2704[9] = v2697;
                v2704[10] = sub_22BB89C08;
                v2704[11] = v2638;
                v2704[12] = sub_22BB89C08;
                v2704[13] = v2685;
                v2704[14] = sub_22BB89C7C;
                v2704[15] = v2691;

                if ((sub_22BDBB244() & 1) == 0)
                {
                  sub_22BBC251C();
                  v2714 = *(v2713 + 4152);

                  sub_22BB8E9D0();
                  sub_22BB97E14();
                  v2716();
                  sub_22BB53C48();
                  sub_22BD61C58();
                  v2717();
                  sub_22BD615F8();
                  v2718 = swift_task_alloc();
                  v2719 = sub_22BD624A8(v2718);
                  *v2719 = v2720;
                  sub_22BB37558(v2719);
                  sub_22BB33430();

                  sub_22BB75AA8();
                  return;
                }

                sub_22BD614E4();
                sub_22BD63EB0("ODPWait");
                sub_22BD64800();

                sub_22BDB77B4();

                v2706 = v2628[11];
                v2705 = v2628 + 11;
                v2707 = sub_22BB53C48();
                if (v2708(v2707) != *MEMORY[0x277D85B00])
                {
                  v2728 = sub_22BD60E1C();
                  v2729(v2728);
                  sub_22BD647E0("[SessionCoordinator %s] | [TX %s] Finished notifying ODP about session end.");
                }

                sub_22BB67968();
                v2730 = sub_22BD62464();
                sub_22BD64B60(v2730);
                sub_22BD63FF8();
                v3003 = sub_22BB89C08;
                v3004 = v2633;
                v2731 = sub_22BB58B08();
                sub_22BB67984(v2731, v2732, v2733, v2734);
                if (!v2705)
                {
                  v2735 = sub_22BB542B0();
                  sub_22BB67984(v2735, v2736, v2737, v2738);
                  v2739 = sub_22BB542B0();
                  sub_22BB67984(v2739, v2740, v2741, v2742);
                  v2743 = sub_22BB542B0();
                  sub_22BB67984(v2743, v2744, v2745, v2746);
                  v2747 = sub_22BB542B0();
                  sub_22BB67984(v2747, v2748, v2749, v2750);
                  v3003 = sub_22BB89C7C;
                  v3004 = v2691;
                  v2751 = sub_22BB542B0();
                  sub_22BB67984(v2751, v2752, v2753, v2754);
                  sub_22BB757D4();

                  sub_22BDB7714();
                  sub_22BD61424();
                  _os_signpost_emit_with_name_impl(v2773, v2774, v2775, v2776, v2777, v2778, v2692, 0x16u);

                  sub_22BD619D4();
                  sub_22BD6193C();
                  sub_22BB679C0();
                }
              }

LABEL_406:
              sub_22BB33430();

              return;
            }

            v13 = v2996;
            sub_22BD6451C();

            sub_22BBC02E4();
            sub_22BB705A8();
            v1535 = sub_22BB2F324();
            sub_22BB325EC(v1535, v1536, &qword_22BDBE390);
            goto LABEL_105;
          }

          sub_22BD62F1C();
          oslog = v527;
          v528 = *(v526 + 48);
          sub_22BB31DC8();
          sub_22BB3A518(v529 + v530, v531);
          v2981 = sub_22BB954F8(v2983);
          v532 = 0;
          v533 = v2961;
          while (1)
          {
            if (v2981 == v532)
            {
              v2961 = v533;
              v464 = v2996;
              goto LABEL_95;
            }

            if (v532 >= v2983[2].isa)
            {
              break;
            }

            sub_22BD61B54(v2996);
            sub_22BB704CC(v534);
            v536 = *(v535 + 3048);
            sub_22BB966E8(v535);
            v537 = sub_22BD61CC8();
            v538(v537);
            v532 = (v532 + 1);
            sub_22BD63B6C();
            v539 = v28[1];
            ++v28;
            v540 = sub_22BB2F3F0();
            v541(v540);
            sub_22BB71FB0();
            sub_22BDB9AC4();
            v542 = sub_22BB58D10();
            v543(v542);
            *(swift_task_alloc() + 16) = v30;
            sub_22BD5FBA4();
            sub_22BD65500();
            v544 = *(v536 + 8);
            v361 = v536 + 8;
            v545 = sub_22BD62E38();
            v546(v545);
            v533 = v54;
            if (&unk_22BDCE460)
            {
              sub_22BD61364();
              sub_22BBCBF94();
              sub_22BB335C0(v30, v506);
              v547 = *(v28 + 80);
              sub_22BD61350();
              swift_allocObject();
              sub_22BB3E408();
              sub_22BB3A518(v506, v532 + v548);
              sub_22BB322B0();
              v549 = swift_allocObject();
              sub_22BD5F6BC(v549);
              v550 = sub_22BB500C0();
              sub_22BB335C0(v550, v551);
              sub_22BD62C1C();
              v552 = swift_allocObject();
              sub_22BD62E88(v552);
              sub_22BB322B0();
              v553 = swift_allocObject();
              sub_22BB96620(v553);
              LODWORD(v2986) = sub_22BDBB104();
              sub_22BD616A8();
              v554 = swift_allocObject();
              sub_22BB97E20(v554);
              sub_22BD616A8();
              v555 = swift_allocObject();
              sub_22BB97EE0(v555);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB756B0();
              *(v556 + 16) = v557;
              *(v556 + 24) = v549;
              sub_22BB322B0();
              v558 = swift_allocObject();
              sub_22BB3DEE8(v558);
              sub_22BD616A8();
              v559 = swift_allocObject();
              *(v559 + 16) = v54;
              sub_22BD616A8();
              v560 = swift_allocObject();
              *(v560 + 16) = v547;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB500CC();
              *(v561 + 16) = v562;
              *(v561 + 24) = v506;
              sub_22BB322B0();
              v361 = swift_allocObject();
              sub_22BB3DEE8(v361);
              v563 = sub_22BBCCA6C();
              sub_22BB31444(v563);
              v564[4] = v565;
              v564[5] = v554;
              v564[6] = sub_22BB89C08;
              v564[7] = v555;
              v564[8] = sub_22BB89C7C;
              v564[9] = v558;
              v564[10] = sub_22BB89C08;
              v564[11] = v559;
              v564[12] = sub_22BB89C08;
              v564[13] = v560;
              v564[14] = sub_22BB89C7C;
              v564[15] = v361;
              v566 = v554;

              v567 = sub_22BD612E8();
              if (os_log_type_enabled(v567, v568))
              {
                sub_22BB67968();
                v569 = sub_22BB3869C();
                sub_22BD64E04(v569);
                sub_22BD62364();
                *(v152 + 1648) = v54;
                sub_22BB384C8();
                *(v152 + 1504) = v566;
                v570 = sub_22BD607FC();
                sub_22BB67984(v570, v571, v572, v573);
                if (!v54)
                {
                  sub_22BB75658();
                  sub_22BB384C8();
                  *(v152 + 1504) = v555;
                  v574 = sub_22BD607FC();
                  sub_22BB67984(v574, v575, v576, v577);

                  sub_22BD608D0();

                  sub_22BD607E4();
                  *(v560 + 1504) = v559;
                  sub_22BD611FC();

                  sub_22BD607E4();
                  *(v560 + 1504) = v560;
                  sub_22BD611FC();

                  sub_22BD607CC();
                  *(v560 + 1504) = v361;
                  sub_22BD611FC();
                  v578 = *(v560 + 3944);
                  sub_22BD62094();

                  sub_22BB96D8C();
                  sub_22BD62CB8();
                  sub_22BD63EE0(v579, v580, v581, "SessionCoordinator found ongoing span to be terminated: %s for participant: %s");
                  sub_22BBBE764();
                  sub_22BB2F194();
                  sub_22BB679C0();
                }

                goto LABEL_344;
              }

              sub_22BD62028();

              v582 = sub_22BD62FF8();
              (v2796)(v582);
              v32 = v54;
              v2961 = v54;
              v464 = v152;
              if (sub_22BD61DCC())
              {
                sub_22BDBAFD4();
                v555 = *(v152 + 3368);
              }

              v583 = *(v152 + 2496);
              sub_22BBC45D0();
              sub_22BD636B0();
              sub_22BBC463C(v2840, oslog);
              sub_22BD63450();
              if (!sub_22BB3AA28(v584, 1, v555))
              {
                sub_22BD634B0();
                *(v558 + v585) = v586;
              }

              v587 = sub_22BD63DBC();
              v583(v587);
              v588 = sub_22BB97E58();
              v566(v588);
LABEL_95:
              v502 = v2861;
              v506 = v2846;
              v30 = log;
              v589 = v464[425];
              sub_22BB33E70();
              sub_22BB34648();
              goto LABEL_74;
            }
          }

          __break(1u);

LABEL_380:
          sub_22BB33430();

          return;
        case 2u:
          v13 = v2996;
          sub_22BD649A0();
          v2966 = *(v2996 + 3816);
          v249 = *(v2996 + 3712);
          sub_22BD63BD8();
          v250 = *(v2996 + 3528);
          sub_22BB93944();
          v2959 = v251;
          v252 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
          sub_22BD641BC(v252);
          sub_22BD62134();
          v253();
          sub_22BB6BEE0(v160 + v157, v2966, &qword_27D8E3218, &qword_22BDBE390);
          (*(v171 + 16))(v201, v2959 + v2981, v250);
          sub_22BDB96A4();
          v254 = sub_22BD63620();
          v255(v254, v250);
          v157 = sub_22BDB9744();
          v256 = sub_22BB8EAA8();
          v257(v256);
          *(v2996 + 1872) = v157;
          v30 = sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
          sub_22BB31DE0();
          sub_22BB69260();
          sub_22BB899C0(v258, v259, v260);
          v171 = v2986;
          sub_22BBBFFBC();
          sub_22BDB90D4();

          sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
          sub_22BB3329C();
          if (v309)
          {
            v277 = sub_22BB325EC(*(v2996 + 3584), &qword_27D8E6518, &unk_22BDCE420);
            v278 = 1;
          }

          else
          {
            v275 = sub_22BB8EAD8();
            v277 = v276(v275);
            v278 = 0;
          }

          sub_22BB96DB0(v277, v278);
          v160 = &unk_27D8E69E0;
          sub_22BD64BE0();
          sub_22BB3CD70(v279, v280, v281, v282);
          sub_22BB36B74(v2986);
          v188 = &qword_22BDBE390;
          if (v309)
          {
            v283 = *(v2996 + 3616);
            sub_22BB75920();
            v289 = sub_22BB325EC(v284, v285, v286);
            v290 = 1;
          }

          else
          {
            sub_22BB93D70();
            v287 = sub_22BD60A7C();
            v289 = v288(v287);
            v290 = 0;
          }

          sub_22BD60C28(v289, v290);
          sub_22BD6392C();
          sub_22BB3CD70(v291, v292, v293, v294);
          sub_22BBBE174();
          sub_22BD6392C();
          sub_22BB3CD70(v295, v296, v297, v298);
          v299 = sub_22BB3A190();
          sub_22BB31814(v299, v300, &qword_22BDC1660);
          if (v309)
          {
            v301 = sub_22BD6493C();
            sub_22BB325EC(v301, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BBBFF9C(&unk_27D8E69E0 + v204);
            if (v309)
            {
              sub_22BB325EC(*(v2996 + 3352), &qword_27D8E3218, &qword_22BDBE390);
LABEL_42:
              sub_22BD613E8();
              sub_22BD6392C();
              sub_22BB3CD70(v320, v321, v322, v323);
              sub_22BDB97E4();
              sub_22BDB9804();
              v324 = sub_22BB954F8(v30);
              sub_22BD64008(v324);
              while (1)
              {
                if (v157 == v30)
                {
                  sub_22BD642AC();
                }

                else
                {
                  v327 = *(v13 + 3000);
                  v160 = *(v13 + 2816);
                  v171 = *(v13 + 2464);
                  v328 = sub_22BD617C4();
                  sub_22BB954F0(v328, v329, v330);
                  v331 = sub_22BD60908();
                  v325 = sub_22BB3CD70(v331, v332, &qword_27D8E6038, &qword_22BDD0300);
                  v333 = __OFADD__(v157++, 1);
                  if (v333)
                  {
                    __break(1u);

                    goto LABEL_379;
                  }

                  v326 = 0;
                }

                v334 = sub_22BD6124C(v325, v326);
                sub_22BB6BEE0(v334, v335, &qword_27D8E64E0, &qword_22BDCE3E8);
                sub_22BB3329C();
                if (v309)
                {
                  v456 = sub_22BD613D0();
                  sub_22BB325EC(v456, &unk_27D8E69E0, &qword_22BDC1660);
                  v457 = sub_22BB3CB04();
                  sub_22BB325EC(v457, v458, &qword_22BDBE390);
                  v459 = sub_22BD60A40();
                  v460(v459);
                  goto LABEL_105;
                }

                v336 = sub_22BD60AE8();
                v337(v336);
                sub_22BD651E8();
                sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
                sub_22BB30F68();
                type metadata accessor for XPCClientAvatar();
                if (sub_22BB6FAB0())
                {
                  sub_22BB97548();
                  v338 = sub_22BB679CC();
                  v339(v338);
                  v30 = v2983;
                  sub_22BB35464();
                  swift_storeEnumTagMultiPayload();
                  sub_22BB96D40();
                  v188 = &qword_22BDBE390;
                  sub_22BBC11B4();
                  v340 = sub_22BD61F9C();
                  v341(v340, v2992);
                  v342 = sub_22BD63620();
                  v343 = v13;
                  v13 = v2996;
                  v344(v342, v343);
                }

                else
                {
                  v345 = sub_22BD61BCC();
                  v346(v345);
                }
              }
            }

            goto LABEL_245;
          }

          sub_22BD630F0();
          sub_22BD6392C();
          sub_22BB3CD70(v302, v303, v304, v305);
          sub_22BD618B8();
          sub_22BB3AA28(v306, v307, v308);
          v157 = *(v2996 + 3744);
          sub_22BD64930();
          if (v309)
          {
            sub_22BD64924();
            v1710 = sub_22BB97B0C();
            sub_22BB325EC(v1710, v1711, &qword_22BDBE390);
            v1712 = *(v30 + 8);
            v30 += 8;
            v1713 = sub_22BB3627C();
            v1714(v1713);
LABEL_245:
            sub_22BB325EC(*(v2996 + 3352), &qword_27D8E6510, &qword_22BDCE418);
            goto LABEL_246;
          }

          v310 = sub_22BB70488();
          v311(v310);
          sub_22BB30DC4();
          sub_22BB3B194(&unk_28142DD40, v312);
          sub_22BB3AC54();
          v160 = sub_22BB8AF28();
          v313 = *(v50 + 8);
          v50 += 8;
          v314 = sub_22BD00E3C();
          v313(v314);
          v315 = sub_22BB97B0C();
          sub_22BB325EC(v315, v316, &qword_22BDBE390);
          v317 = sub_22BD6220C();
          v188 = &qword_22BDBE390;
          v313(v317);
          v318 = sub_22BB3A84C();
          sub_22BB325EC(v318, v319, &qword_22BDBE390);
          if (v160)
          {
            goto LABEL_42;
          }

LABEL_246:
          sub_22BD63100();
          v1715 = sub_22BD64788();
          sub_22BB325EC(v1715, &unk_27D8E69E0, &qword_22BDC1660);
          v1716 = sub_22BB30E10();
          sub_22BB325EC(v1716, v1717, &qword_22BDBE390);
          v1718 = sub_22BD612F8();
          v1719(v1718);
          v1708 = v2992;
          v1709 = v157;
          LOBYTE(v157) = v2992;
LABEL_247:
          sub_22BB74044(v1708, v1709, v160);

          sub_22BB35CBC();
          sub_22BB34648();
          continue;
        case 3u:
          v13 = v2996;
          v436 = *(v2996 + 4328);
          v437 = *(v2996 + 3480);
          v160 = *(v2996 + 2496) + *(v2996 + 4440);
          sub_22BB3737C();
          sub_22BB3A518(v438, v439);
          sub_22BD612B0();
          sub_22BD6233C();
          sub_22BD6462C();
          sub_22BD643C4();
          sub_22BD61FB4();

          sub_22BD6486C();
          if (v171)
          {
            sub_22BD62314();
            v2832 = v440;
            sub_22BB6FFE8();
            v2959 = *(v2996 + 3192);
            sub_22BD64D8C();
            v2943 = *(v2996 + 3176);
            v2953 = *(v2996 + 3168);
            v441 = sub_22BD60B0C();
            (v50)(v441);
            sub_22BD5FFD4();
            v442 = sub_22BD6108C();
            sub_22BB336D0(v442, v443, v444, v188);
            sub_22BB3B69C();
            sub_22BD80A04();
            v445 = *(v30 + 8);
            v2925 = *v30;
            v446 = *(v30 + 16);
            v2915 = sub_22BDB8444();
            v447 = *(v30 + 24);
            v448 = *(v30 + 32);
            sub_22BDB8444();
            v449 = *(v30 + 48);
            v2859 = *(v30 + 40);
            v450 = *(v30 + 64);
            v2843 = *(v30 + 56);
            (v50)(v157, v30 + v204, v2832);
            sub_22BD60F68();

            v451 = sub_22BB53C48();
            sub_22BB352C4(v451, v452);

            sub_22BD61C08();
            v171 = v2936;
            v13 = v2996;
            sub_22BDB5D54();
            v453 = sub_22BD62FE8();
            v454(v453);
            v160 = v2959;
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BB6C5A8();
            sub_22BD61E28();
            v455(v2936);
            sub_22BB32824();
            goto LABEL_98;
          }

          v171 = *(v2996 + 4352);
          sub_22BD61670();
          sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
          sub_22BD63E28();
          sub_22BB32824();
          sub_22BB34648();
          v611 = sub_22BB39478();
          sub_22BB74044(v611, v612, v171);
          v194 = v2998;
          goto LABEL_107;
        case 4u:
          v13 = v2996;
          sub_22BB96D4C();
          v393 = *v392;
          v171 = v392[1];
          v188 = v392[2];
          v160 = v392[3];
          v394 = v392[4];
          v2967 = v392[5];
          sub_22BB5837C();
          v50 = v395[10];
          v2952 = v395[9];
          v2959 = v396;
          v398 = v395[11];
          v397 = v395[12];
          sub_22BD61468(v399);
          v401 = *(v400 + 8);
          sub_22BB71D80();
          sub_22BD6232C();
          if (v309)
          {
            v403 = 0;
          }

          v30 = v402 | v403;

          sub_22BD7577C(v30, v401);
          sub_22BC54DB0();

          if (v30)
          {
            v2858 = *(v2996 + 4884);
            v2924 = *(v2996 + 3216);
            sub_22BD6415C();
            sub_22BD6121C();
            v2842 = v404;
            logi = *(v2996 + 2480);
            v2915 = v188;
            sub_22BDB8444();
            sub_22BDB8444();
            sub_22BD62B9C();

            LOBYTE(v157) = v2983;

            v188 = v2992;
            v405 = sub_22BB3ACBC();
            sub_22BB352C4(v405, v406);
            sub_22BB6FF88();
            v407 = sub_22BD62C28();
            v408(v407, v2858, v2842);
            sub_22BB6FCB8();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            v171 = v2924;
            sub_22BD61B48();
            v160 = logi;
            sub_22BDBAF34();

            v409 = sub_22BB3ACBC();
            sub_22BB3531C(v409, v410);
            v411 = sub_22BB9607C();
            v413 = v2942;
            goto LABEL_104;
          }

          sub_22BB93D44();

          sub_22BB3531C(v2986, v2992);
          goto LABEL_243;
        case 5u:
          v13 = v2996;
          v261 = sub_22BB758A0();
          (v204)(v261);
          sub_22BD64948();
          if ((v262 & 1) == 0)
          {
            sub_22BD614A0();
            v1707();
LABEL_243:
            v1708 = sub_22BB3AAD8();
            goto LABEL_247;
          }

          sub_22BB7021C();
          v263 = *(v157 + 88);
          LOBYTE(v157) = v157 + 88;
          v264 = sub_22BB37074();
          if (v265(v264) == v188)
          {
            LODWORD(v2959) = *(v2996 + 4880);
            sub_22BB36924();
            v267 = *(v266 + 3192);
            sub_22BB955CC();
            sub_22BB31234();
            sub_22BD61BE0();
            v269 = *(v268 + 2728);
            sub_22BB707B8();
            v2951 = v270;
            v271 = sub_22BD61400();
            v272(v271);
            v273 = sub_22BD60294();
            v274(v273);
            *(v204 + 2) = 1;
            sub_22BD62270();
            MEMORY[0x23189FC60]();
            goto LABEL_103;
          }

          sub_22BD64D38();
          if (v309)
          {
            LODWORD(v2959) = *(v2996 + 4880);
            sub_22BB36924();
            v614 = *(v613 + 3192);
            sub_22BB955CC();
            sub_22BB31234();
            sub_22BB3E550();
            v269 = *(v615 + 2704);
            sub_22BB707B8();
            v2951 = v616;
            v617 = sub_22BD61400();
            v618(v617);
            v619 = sub_22BD60294();
            v620(v619);
            *(v204 + 2) = 0;
            sub_22BD62270();
            MEMORY[0x23189FC80]();
LABEL_103:
            v621 = sub_22BB5810C();
            MEMORY[0x23189FDB0](v621);
            v622 = sub_22BD63474();
            v623(v622);
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD61B2C();
            v160 = v2951;
            sub_22BDBAF34();
            v624 = sub_22BD61754();
            v625(v624);
            v626 = sub_22BD62DE8();
            v627(v626, v269);
            v411 = sub_22BD62480();
LABEL_104:
            v412(v411, v413);
            goto LABEL_105;
          }

          sub_22BD64A80();
          if (v1078)
          {
            sub_22BD60EAC();
            v171 = *(v2996 + 2696);
            v1079 = *(v2996 + 2688);
            v30 = *(v2996 + 2680);
            v1081 = sub_22BC54A3C(v1080);
            v1082(v1081);
            v1083 = sub_22BD60BA4();
            v1084(v1083);
            v1085 = sub_22BDB5BE4();
            sub_22BBC0358(v1085);
            if (!v1079)
            {
              sub_22BB701E8();
              sub_22BD5A87C(v30);
              sub_22BD64DC8();
              sub_22BBE6DE0(&qword_27D8E6558, &unk_22BDCFC00);
              sub_22BB97200();
              v1362 = sub_22BDBAB14();
              if (sub_22BD63E94(v1362))
              {
                sub_22BD64C10();
                do
                {
                  sub_22BD618B8();
                  sub_22BB954F0(v1363, v1364, v1365);
                  sub_22BD65530();
                  v1366 = sub_22BD60F9C();
                  v1367(v1366);
                  sub_22BD62E50();
                  if (v188)
                  {
                    sub_22BBC066C();
                    sub_22BD62584();
                    sub_22BD80B94(v1368);
                  }

                  sub_22BB954F8(v171);
                  sub_22BBD1A4C();
                }

                while (!v309);
              }

              sub_22BD61DB8();
              sub_22BB36E60();
              logo = *(v2996 + 3336);
              sub_22BBC0934();
              v2915 = *(v2996 + 3184);
              sub_22BD64D80();
              sub_22BD61280();
              sub_22BDB95A4();
              v1369 = sub_22BDB5C04();
              sub_22BD63E0C(v1369);
              sub_22BB702A8();

              sub_22BD46274(v50);
              sub_22BD64CA8();
              v1370 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
              sub_22BB976D0(v1370);
              MEMORY[0] = sub_22BDB5BF4();
              MEMORY[8] = v1371;
              v194 = v204;
              sub_22BD44F8C(v50);
              sub_22BD65488();
              sub_22BD634A0();
              swift_storeEnumTagMultiPayload();
              sub_22BB370B8();
              sub_22BD652A8(v1372, v1373);
              sub_22BB35CBC();
              sub_22BB34648();
              v30 = logo;
              sub_22BD65398();
              v1374 = sub_22BB6FCB8();
              MEMORY[0x23189FDA0](v1374);
              v1375 = sub_22BD61DA4();
              v1376(v1375);
              sub_22BB6FCB8();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD60A2C();
              v160 = v2950;
              sub_22BDBAF34();
              v1377 = sub_22BB9607C();
              v1378(v1377, v2983);
              v1379 = sub_22BD61D90();
              v1380(v1379);
              v1381 = sub_22BD60C18();
              v1382(v1381);
              v1383 = *(v2996 + 1880);

              v2961 = v204;
              goto LABEL_106;
            }

            sub_22BD64C64();
            sub_22BD651D0();
            sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
            sub_22BB76654();
            v1146 = swift_dynamicCast();
            v1147 = *(v2996 + 2496);
            if (!v1146)
            {
              sub_22BD65188();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1170 = swift_allocObject();
              sub_22BB3CF50(v1170);
              sub_22BB366B8();
              v1171 = swift_allocObject();
              sub_22BD62774(v1171);
              sub_22BD640C0();
              v1172 = v1079;
              v2998 = sub_22BDB77C4();
              LODWORD(v2992) = sub_22BDBB114();
              sub_22BD616A8();
              v1173 = swift_allocObject();
              sub_22BB97ED4(v1173);
              sub_22BD616A8();
              v204 = swift_allocObject();
              sub_22BD62C10(v204);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB3E0C4();
              *(v1174 + 16) = v1175;
              *(v1174 + 24) = v1170;
              sub_22BB322B0();
              v157 = swift_allocObject();
              sub_22BB3DEE8(v157);
              sub_22BD616A8();
              v1176 = swift_allocObject();
              sub_22BD61794(v1176);
              sub_22BD616A8();
              v1177 = swift_allocObject();
              sub_22BD636BC(v1177);
              v30 = v2998;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBBEBAC();
              *(v1178 + 16) = v1179;
              *(v1178 + 24) = v171;
              sub_22BB322B0();
              v1180 = swift_allocObject();
              sub_22BB3965C(v1180);
              sub_22BB322B0();
              v188 = swift_allocObject();
              sub_22BB69760(v188);
              v1181 = sub_22BBCCA6C();
              sub_22BB31444(v1181);
              v1182[4] = v1183;
              v1182[5] = v1173;
              v1182[6] = sub_22BB89C08;
              v1182[7] = v204;
              v1182[8] = sub_22BB89C7C;
              v1182[9] = v157;
              v1182[10] = sub_22BB89C08;
              v1182[11] = v50;
              v1182[12] = sub_22BB89C08;
              v1182[13] = v201;
              v1182[14] = sub_22BD5F648;
              v1182[15] = v188;
              sub_22BD640D8();

              if (sub_22BD62224())
              {
                sub_22BB67968();
                sub_22BBB5D38();
                v1184 = sub_22BD62730();
                sub_22BD64038(v1184);
                sub_22BD62364();
                *(v2996 + 2024) = v1173;
                *(v2996 + 1000) = sub_22BB89C08;
                *(v2996 + 1008) = v171;
                v1185 = sub_22BB72008();
                sub_22BB67984(v1185, v1186, v1187, v1188);

                sub_22BD604CC();
                *(v2996 + 1008) = v204;
                v1189 = sub_22BB72008();
                sub_22BB67984(v1189, v1190, v1191, v1192);

                sub_22BD604E4();
                *(v2996 + 1008) = v157;
                v1193 = sub_22BB72008();
                sub_22BB67984(v1193, v1194, v1195, v1196);

                sub_22BD604CC();
                *(v2996 + 1008) = v50;
                v1197 = sub_22BB72008();
                sub_22BB67984(v1197, v1198, v1199, v1200);

                sub_22BD604CC();
                *(v2996 + 1008) = v201;
                v1201 = sub_22BB72008();
                sub_22BB67984(v1201, v1202, v1203, v1204);

                sub_22BD604B4();
                *(v2996 + 1008) = v188;
                v1205 = sub_22BB72008();
                sub_22BB67984(v1205, v1206, v1207, v1208);
                v1209 = *(v2996 + 3880);
                sub_22BD61A18();

                sub_22BBD1A34();
                sub_22BB6F9C8();
                sub_22BD63EE0(v1210, v1211, v1212, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
                sub_22BB325EC(v2998, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB89BBC();
                sub_22BB35808();
                sub_22BB679C0();
              }

              sub_22BB89F08(*(v2996 + 3880));
              v1322 = *(v2996 + 3832);

              v1323 = sub_22BD6268C();
              v1324(v1323, v1322);
              sub_22BB756C8();
              logd = *(v2996 + 4848);
              sub_22BB34150();
              sub_22BD60AD4();
              sub_22BD6121C();
              v2915 = v1325;
              v2959 = *(v2996 + 2696);
              sub_22BD6477C();
              sub_22BD60AC0();
              sub_22BBD1A40(v1326);
              MEMORY[0x23189FBE0]();
              goto LABEL_184;
            }

            sub_22BD651B8();
            sub_22BB322B0();
            v1148 = swift_allocObject();
            sub_22BD6002C(v1148);
            v1149 = sub_22BDB77C4();
            LOBYTE(v157) = sub_22BDBB114();
            sub_22BD616A8();
            v1150 = swift_allocObject();
            sub_22BD60E0C(v1150);
            sub_22BD616A8();
            v1151 = swift_allocObject();
            sub_22BD617B4(v1151);
            sub_22BB322B0();
            v188 = swift_allocObject();
            sub_22BB97500(v188);
            sub_22BB322B0();
            v1152 = swift_allocObject();
            sub_22BD6040C(v1152);
            v1153 = sub_22BB6F8FC();
            v1154 = sub_22BBC2570(v1153, xmmword_22BDC2F20);
            v1154[2].n128_u64[0] = v1155;
            v1154[2].n128_u64[1] = v50;
            v1154[3].n128_u64[0] = sub_22BB89C08;
            v1154[3].n128_u64[1] = v30;
            v1154[4].n128_u64[0] = sub_22BB89C7C;
            v1154[4].n128_u64[1] = v171;

            if (sub_22BB72E44())
            {
              sub_22BB67968();
              v1156 = sub_22BB38198();
              sub_22BD64138(v1156);
              sub_22BB3A9B0(v188);
              *(v2996 + 1072) = v50;
              v1157 = sub_22BD5FBD4();
              sub_22BB67984(v1157, v1158, v1159, v1160);

              sub_22BB385A8();
              *(v2996 + 1072) = v30;
              v1161 = sub_22BD5FBD4();
              sub_22BB67984(v1161, v1162, v1163, v1164);

              sub_22BBCC154();
              *(v2996 + 1072) = v171;
              v1165 = sub_22BD5FBD4();
              sub_22BB67984(v1165, v1166, v1167, v1168);
              v1169 = *(v2996 + 3888);
              sub_22BBD1A28();

              sub_22BB337EC(&dword_22BB2C000, v1149, v157, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
              sub_22BB30DDC();
              sub_22BB679C0();
            }

            v1305 = *(v2996 + 3888);
            sub_22BD624B8();

            v1306 = sub_22BB70554();
            v1307(v1306);
            v2928 = *(v2996 + 4856);
            sub_22BB35798();
            v160 = *(v1308 + 2696);
            sub_22BD61C64();
            v2981 = v1309;
            sub_22BB38E74();
            sub_22BD639C8(v1310);
            MEMORY[0x23189FBE0]();
            v1311 = sub_22BBD1188();
            v1312(v1311, v2928, v201);
            sub_22BD60C68();
            sub_22BDB5D34();
            v1313 = sub_22BD610B8();
            v1314(v1313);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD61834();
            v1315 = sub_22BD60E8C();
            v1316(v1315);
            v1317 = sub_22BB97FE0();
            v1318(v1317);
            v1319 = sub_22BD60C18();
            v1320(v1319);
            v1321 = *(v2996 + 2056);
LABEL_182:

LABEL_186:
            v194 = 0;
            goto LABEL_106;
          }

          sub_22BD649AC();
          if (v1086)
          {
            v1087 = sub_22BD5F900();
            v1088(v1087);
            v1089 = sub_22BB6FF74();
            v1090(v1089);
            v1091 = sub_22BB8ADB4();
            v1092(v1091);
            sub_22BDB96A4();
            v1093 = *(v2996 + 8);
            v1094 = sub_22BB53C48();
            v1095(v1094);
            v160 = v30;
            sub_22BDB9744();
            v1096 = sub_22BD6161C();
            v1097(v1096);
            sub_22BD64734();
            v2961 = v188;
            if (v188)
            {
              sub_22BD63C38();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1098 = swift_allocObject();
              sub_22BB977E8(v1098);
              sub_22BB366B8();
              v1099 = swift_allocObject();
              sub_22BBC0200(v1099);
              v1100 = v188;
              v1101 = v50;
              sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v1102 = swift_allocObject();
              sub_22BB97ED4(v1102);
              sub_22BD616A8();
              v1103 = swift_allocObject();
              sub_22BD62E20(v1103);
              sub_22BB322B0();
              v1104 = swift_allocObject();
              sub_22BB31A44(v1104);
              sub_22BB322B0();
              v157 = swift_allocObject();
              sub_22BB3DEE8(v157);
              sub_22BD616A8();
              v13 = swift_allocObject();
              sub_22BD61EB0(v13);
              sub_22BD616A8();
              v1105 = swift_allocObject();
              sub_22BD64DE0(v1105);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBBEBAC();
              *(v1106 + 16) = v1107;
              *(v1106 + 24) = v171;
              sub_22BB322B0();
              v1108 = swift_allocObject();
              sub_22BB3965C(v1108);
              sub_22BB322B0();
              v50 = swift_allocObject();
              sub_22BB69760(v50);
              v1109 = sub_22BBCCA6C();
              sub_22BB31444(v1109);
              v1110[4] = v1111;
              v1110[5] = v1102;
              v1110[6] = sub_22BB89C08;
              v1110[7] = v1103;
              v1110[8] = sub_22BB89C7C;
              v1110[9] = v157;
              v1110[10] = sub_22BB89C08;
              v1110[11] = v13;
              v1110[12] = sub_22BB89C08;
              v1110[13] = v188;
              v1110[14] = sub_22BD5F648;
              v1110[15] = v50;
              sub_22BD640D8();

              if (sub_22BD62224())
              {
                sub_22BB67968();
                sub_22BBB5D38();
                v1112 = sub_22BD62BF4();
                *(v201 + 2072) = v1101;
                *(v201 + 2064) = v1112;
                sub_22BD62374();
                *(v201 + 2104) = v1102;
                *(v201 + 1080) = sub_22BB89C08;
                *(v201 + 1088) = v171;
                v1113 = sub_22BB6C714();
                sub_22BB67984(v1113, v1114, v1115, v1116);

                sub_22BB96064();
                *(v201 + 1088) = v1103;
                v1117 = sub_22BB6C714();
                sub_22BB67984(v1117, v1118, v1119, v1120);

                sub_22BD605BC();
                *(v201 + 1088) = v157;
                v1121 = sub_22BB6C714();
                sub_22BB67984(v1121, v1122, v1123, v1124);

                *(v201 + 1080) = sub_22BB89C08;
                *(v201 + 1088) = v13;
                v1125 = sub_22BB6C714();
                sub_22BB67984(v1125, v1126, v1127, v1128);

                sub_22BB96064();
                *(v201 + 1088) = v188;
                v1129 = sub_22BB6C714();
                sub_22BB67984(v1129, v1130, v1131, v1132);

                *(v201 + 1080) = sub_22BD5F648;
                *(v201 + 1088) = v50;
                v1133 = sub_22BB6C714();
                sub_22BB67984(v1133, v1134, v1135, v1136);
                sub_22BD62CF0();
                sub_22BBD1A34();
                sub_22BD64B84();
                sub_22BD636C8(v1137, v1138, v1139, "[SessionCoordinator %{public}s] Failed to encode to proto data for debugger: %{public}@");
                sub_22BB325EC(v1101, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB77E48();
                sub_22BB32FA4(v1112);
                sub_22BB89BBC();
                sub_22BB679C0();
              }

              sub_22BD61E14();
              v1346 = *(v201 + 3832);

              v1347 = sub_22BD6268C();
              v1348(v1347, v1346);
              v2998 = v188;
              LODWORD(v2915) = *(v201 + 4868);
              v2937 = *(v201 + 4852);
              sub_22BB9666C();
              v2954 = v1349;
              sub_22BB9664C();
              v2929 = v1350;
              v2959 = *(v201 + 2672);
              sub_22BD64DD4();
              sub_22BD6116C();
              v2944 = v1351;
              MEMORY[0x23189FC40]();
              sub_22BB6FC88();
              sub_22BD64AA0();
              v1352();
              sub_22BD63938();
              sub_22BDB5D34();
              v1353 = sub_22BD62C28();
              v1354(v1353, v2937, v2929);
              sub_22BBBFFBC();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              v160 = v2944;
              v30 = v2954;
              sub_22BD61F0C();
              sub_22BDBAF34();

              v1355 = sub_22BB96A1C();
              v1356(v1355, v2981);
              v1357 = v188[1];
              ++v188;
              v1358 = sub_22BD64918();
              v1359(v1358);
              v1360 = sub_22BB6B714();
              v1361(v1360);
              v194 = 0;
              sub_22BD64BEC();
            }

            else
            {
              sub_22BD64C4C();
              sub_22BD6109C();
              v2969 = *(v201 + 3216);
              sub_22BB8AD4C();
              sub_22BD62288();
              v2959 = v1338;

              sub_22BD646D4();
              sub_22BB3FBBC();
              sub_22BDB5D64();
              sub_22BD64DF8();
              sub_22BB70548();
              v1339();
              sub_22BD62724();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD6455C();
              v1340 = sub_22BD633C4();
              v1341(v1340);
              v1342 = sub_22BB70264();
              v1343(v1342, v2981);
              v1344 = sub_22BD60C18();
              v1345(v1344);
              v194 = 0;
              v13 = v201;
            }

            goto LABEL_106;
          }

          sub_22BBC01F4();
          if (v1140)
          {
            v1141 = sub_22BD60BB8();
            v1142(v1141);
            v1143 = sub_22BD60BA4();
            v1144(v1143);
            v1145 = sub_22BDB5C54();
            sub_22BBC0358(v1145);
            if (v188)
            {

              sub_22BD64C64();
              sub_22BD654E8();
              sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
              sub_22BD64D2C();
              v1410 = swift_dynamicCast();
              v1411 = *(v2996 + 2496);
              if (v1410)
              {
                sub_22BD654D0();
                sub_22BB322B0();
                v1412 = swift_allocObject();
                sub_22BD6002C(v1412);
                v1413 = sub_22BDB77C4();
                LOBYTE(v157) = sub_22BDBB114();
                sub_22BD616A8();
                v30 = swift_allocObject();
                sub_22BB97ED4(v30);
                sub_22BD616A8();
                v50 = swift_allocObject();
                sub_22BB6FB2C(v50);
                sub_22BB322B0();
                v188 = swift_allocObject();
                sub_22BB97500(v188);
                sub_22BB322B0();
                v171 = swift_allocObject();
                sub_22BD6076C(v171);
                v1414 = sub_22BB6F8FC();
                v1415 = sub_22BBC2570(v1414, xmmword_22BDC2F20);
                v1415[2].n128_u64[0] = v1416;
                v1415[2].n128_u64[1] = v30;
                v1415[3].n128_u64[0] = sub_22BB89C08;
                v1415[3].n128_u64[1] = v50;
                v1415[4].n128_u64[0] = sub_22BB89C7C;
                v1415[4].n128_u64[1] = v171;

                if (sub_22BB72E44())
                {
                  sub_22BB67968();
                  v1417 = sub_22BB38198();
                  sub_22BB89B00(v1417);
                  sub_22BB6BD50(v188);
                  *(v2996 + 1200) = v30;
                  v1418 = sub_22BD5FC64();
                  sub_22BB67984(v1418, v1419, v1420, v1421);

                  sub_22BD5F824();
                  *(v2996 + 1200) = v50;
                  v1422 = sub_22BD5FC64();
                  sub_22BB67984(v1422, v1423, v1424, v1425);

                  sub_22BD5F80C();
                  *(v2996 + 1200) = v171;
                  v1426 = sub_22BD5FC64();
                  sub_22BB67984(v1426, v1427, v1428, v1429);
                  v1430 = *(v2996 + 3856);
                  sub_22BBD1A28();

                  sub_22BB337EC(&dword_22BB2C000, v1413, v157, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
                  sub_22BB30DDC();
                  sub_22BB679C0();
                }

                v1544 = *(v2996 + 3856);
                sub_22BD624B8();

                v1545 = sub_22BB70554();
                v1546(v1545);
                v2930 = *(v2996 + 4856);
                sub_22BB35798();
                v160 = *(v1547 + 2648);
                sub_22BD60B7C();
                v2981 = v1548;
                sub_22BB38E74();
                sub_22BD639C8(v1549);
                MEMORY[0x23189FC10]();
                v1550 = sub_22BBD1188();
                v1551(v1550, v2930, v201);
                sub_22BD60C68();
                sub_22BDB5D34();
                v1552 = sub_22BD610B8();
                v1553(v1552);
                sub_22BBBFFBC();
                sub_22BDB5E14();
                sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                sub_22BD61834();
                v1554 = sub_22BD60E8C();
                v1555(v1554);
                v1556 = sub_22BB97FE0();
                v1557(v1556);
                v1558 = sub_22BD60C18();
                v1559(v1558);
                v1321 = *(v2996 + 2304);
                goto LABEL_182;
              }

              sub_22BD654B8();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1431 = swift_allocObject();
              sub_22BB3CF50(v1431);
              sub_22BB366B8();
              v1432 = swift_allocObject();
              sub_22BD62774(v1432);
              sub_22BD640C0();
              v2998 = sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v1433 = swift_allocObject();
              sub_22BB96D7C(v1433);
              sub_22BD616A8();
              v1434 = swift_allocObject();
              sub_22BB7011C(v1434);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB3E0C4();
              *(v1435 + 16) = v1436;
              *(v1435 + 24) = v1431;
              sub_22BB322B0();
              v157 = swift_allocObject();
              sub_22BB3DEE8(v157);
              sub_22BD616A8();
              v1437 = swift_allocObject();
              sub_22BD61794(v1437);
              sub_22BD616A8();
              v1438 = swift_allocObject();
              sub_22BB75830(v1438);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBBEBAC();
              *(v1439 + 16) = v1440;
              *(v1439 + 24) = v171;
              sub_22BB322B0();
              v1441 = swift_allocObject();
              sub_22BB3FE28(v1441);
              sub_22BB322B0();
              v1442 = swift_allocObject();
              sub_22BB8E554(v1442);
              v1443 = sub_22BBCCA6C();
              sub_22BB31444(v1443);
              v1444[4] = v1445;
              v1444[5] = v188;
              v1444[6] = sub_22BB89C08;
              v1444[7] = v204;
              v1444[8] = sub_22BB89C7C;
              v1444[9] = v157;
              v1444[10] = sub_22BB89C08;
              v1444[11] = v50;
              v1444[12] = sub_22BB89C08;
              v1444[13] = v201;
              v1444[14] = sub_22BD5EBD8;
              v1444[15] = v1442;
              v171 = v188;
              v188 = v1442;

              sub_22BD6224C();
              if (os_log_type_enabled(v2998, v1446))
              {
                sub_22BB67968();
                sub_22BD63820();
                v1447 = sub_22BD62730();
                sub_22BD64CE4(v1447);
                sub_22BD60DCC();
                *(v2996 + 2272) = v1448;
                *(v2996 + 1240) = sub_22BB89C08;
                *(v2996 + 1248) = v171;
                v1449 = sub_22BB72E30();
                sub_22BB67984(v1449, v1450, v1451, v1452);

                sub_22BD6070C();
                *(v2996 + 1248) = v204;
                v1453 = sub_22BB72E30();
                sub_22BB67984(v1453, v1454, v1455, v1456);

                sub_22BB73B04();
                *(v2996 + 1248) = v157;
                v1457 = sub_22BB72E30();
                sub_22BB67984(v1457, v1458, v1459, v1460);

                sub_22BD6070C();
                *(v2996 + 1248) = v50;
                v1461 = sub_22BB72E30();
                sub_22BB67984(v1461, v1462, v1463, v1464);

                sub_22BD6070C();
                *(v2996 + 1248) = v201;
                v1465 = sub_22BB72E30();
                sub_22BB67984(v1465, v1466, v1467, v1468);

                sub_22BD606F4();
                *(v2996 + 1248) = v1442;
                v1469 = sub_22BB72E30();
                sub_22BB67984(v1469, v1470, v1471, v1472);
                v1473 = *(v2996 + 3848);
                sub_22BD61A18();

                sub_22BBD1A34();
                sub_22BB6F9C8();
                sub_22BD63EE0(v1474, v1475, v1476, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
                sub_22BB325EC(v1442, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB89BBC();
                sub_22BB35808();
                sub_22BB679C0();
              }

              v2992 = *(v2996 + 3848);
              v30 = *(v2996 + 3840);
              v1560 = *(v2996 + 3832);

              v1561 = sub_22BD6268C();
              v1562(v1561, v1560);
              sub_22BB756C8();
              logd = *(v2996 + 4848);
              sub_22BB34150();
              sub_22BD60AD4();
              sub_22BD6121C();
              v2915 = v1563;
              v2959 = *(v2996 + 2648);
              sub_22BD64C58();
              sub_22BD60AC0();
              sub_22BBD1A40(v1564);
              MEMORY[0x23189FC10]();
LABEL_184:
              v1327 = sub_22BD64258();
              v1328(v1327, logd, v204);
              sub_22BD61F0C();
              sub_22BDB5D34();
              v1329 = sub_22BD62C28();
              v1330(v1329, v2942, v2915);
              sub_22BB6FCB8();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD61644();
              v160 = v2936;
              sub_22BDBAF34();

              v1331 = sub_22BD61FA8();
              v1332(v1331, v2981);
              v1333 = *(v50 + 8);
              v50 += 8;
              v1334 = sub_22BD64918();
              v1335(v1334);
            }

            else
            {
              sub_22BB701E8();
              sub_22BD5A87C(v30);
              v2961 = 0;
              sub_22BD63DA0();
              sub_22BDB96D4();
              sub_22BB3329C();
              if (v309)
              {
                v1565 = sub_22BD633E4();
                sub_22BB325EC(v1565, &qword_27D8E64D0, &qword_22BDCE3D8);
                sub_22BDB63E4();
                sub_22BB322B0();
                v1566 = swift_allocObject();
                sub_22BD60000(v1566);
                v1567 = sub_22BDB77C4();
                LOBYTE(v157) = sub_22BDBB114();
                sub_22BD616A8();
                v1568 = swift_allocObject();
                sub_22BB96D7C(v1568);
                sub_22BD616A8();
                v50 = swift_allocObject();
                sub_22BB6FB2C(v50);
                sub_22BB322B0();
                v1569 = swift_allocObject();
                sub_22BB97500(v1569);
                sub_22BB322B0();
                v171 = swift_allocObject();
                sub_22BBC0888(v171);
                v1570 = sub_22BB6F8FC();
                v1571 = sub_22BBC2570(v1570, xmmword_22BDC2F20);
                v1571[2].n128_u64[0] = v1572;
                v1571[2].n128_u64[1] = 0;
                v1571[3].n128_u64[0] = sub_22BB89C08;
                v1571[3].n128_u64[1] = v50;
                v1571[4].n128_u64[0] = sub_22BB89C7C;
                v1571[4].n128_u64[1] = v171;

                if (sub_22BB72E44())
                {
                  sub_22BB67968();
                  v1573 = sub_22BB6B650();
                  sub_22BD5FB4C(v1573);
                  if (!v1570)
                  {

                    *(v2996 + 1144) = sub_22BB89C08;
                    *(v2996 + 1152) = v50;
                    sub_22BD65070(v2996);

                    *(v2996 + 1144) = sub_22BB89C7C;
                    *(v2996 + 1152) = v171;
                    sub_22BD65070(v2996);
                    sub_22BD650B0();

                    sub_22BD63B54(&dword_22BB2C000, v1567, v157, "[SessionCoordinator %{public}s] | Provided transcript had no events. Rejecting it.");
                    sub_22BB35808();
                    sub_22BB679C0();
                  }

LABEL_314:

                  goto LABEL_379;
                }

                v1629 = *(v2996 + 3864);
                v1630 = *(v2996 + 3840);
                sub_22BD62CAC();

                v1631 = *(v1630 + 8);
                v1632 = sub_22BB2F0E0();
                v1633(v1632);
                v2931 = *(v2996 + 4864);
                sub_22BB35798();
                v160 = *(v1634 + 2648);
                sub_22BD60B7C();
                v2981 = v1635;
                sub_22BB38E74();
                sub_22BD639C8(v1636);
                MEMORY[0x23189FC10]();
                v1637 = sub_22BBD1188();
                v1638(v1637, v2931, v201);
                sub_22BD60C68();
                sub_22BDB5D34();
                v1639 = sub_22BD610B8();
                v1640(v1639);
                sub_22BBBFFBC();
                sub_22BDB5E14();
                sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                sub_22BD61834();
                v1641 = sub_22BD60E8C();
                v1642(v1641);
                v1643 = sub_22BB97FE0();
                v1644(v1643);
              }

              else
              {
                v2945 = *(v2996 + 4860);
                v157 = *(v2996 + 4448);
                v1589 = *(v2996 + 3544);
                v188 = *(v2996 + 3536);
                v1590 = *(v2996 + 3528);
                sub_22BB36E60();
                sub_22BD630B0();
                v2959 = v1591;
                sub_22BD63F70();
                v13 = *(v2996 + 3184);
                sub_22BD60B90();
                sub_22BB89508(v1592);
                logq = *(v1593 + 2648);
                sub_22BD605D4();
                v2938 = v1594;

                v1595 = sub_22BD61510();
                v1596(v1595);
                sub_22BD62110();
                v1597 = sub_22BD614F8();
                v1598(v1597);
                v1599 = sub_22BD65260();
                v50 = logq;
                MEMORY[0x23189FC10](v1599);
                sub_22BD653F8();
                v1600 = *(v171 + 104);
                v171 += 104;
                v1600(v13, v2945, v2915);
                sub_22BD63888();
                sub_22BB97B18();
                sub_22BDB5E14();
                sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                sub_22BD61644();
                v160 = v2938;
                sub_22BDBAF34();
                v1601 = sub_22BB9607C();
                v1602(v1601, v2965);
                v1603 = sub_22BD632C4();
                v1604(v1603);
                v1605 = sub_22BD63394();
                v1606(v1605);
              }
            }

            v1336 = sub_22BD61EBC();
            v1337(v1336, v2992);
            goto LABEL_186;
          }

          sub_22BD647A8();
          if (v1288)
          {
            LODWORD(v2959) = *(v2996 + 4844);
            sub_22BD5FA30();
            sub_22BB58D38();
            v2968 = v1289;
            v1291 = sub_22BC54A3C(v1290);
            v1292(v1291);
            v1293 = sub_22BD60294();
            v1294(v1293);
            sub_22BD653C8();
            v1295 = sub_22BBC055C();
            MEMORY[0x23189FDC0](v1295);
            v1296 = sub_22BD63474();
            v1297(v1296);
            sub_22BD642A0();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            v171 = v2981;
            sub_22BB5810C();
            v160 = v2968;
            sub_22BDBAF34();
            v1298 = sub_22BD6160C();
            v1299(v1298);
            v1300 = *(v30 + 8);
            v30 += 8;
            v1301 = sub_22BB35464();
            v1302(v1301);
            v1303 = sub_22BD649D0();
LABEL_199:
            v1304(v1303);
            goto LABEL_105;
          }

          sub_22BD64D50();
          if (v1384)
          {
            sub_22BD64018();
            v2959 = *(v2996 + 4104);
            sub_22BD5FADC();
            v1385 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
            sub_22BD64960(v1385);
            sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
            v1386 = *(v171 + 72);
            v1387 = *(v171 + 80);
            v1388 = sub_22BD61330();
            sub_22BD5B890(v1388, 1);
            v1389 = sub_22BD60DDC();
            v1390(v1389);
            v1391 = sub_22BD63D10();
            sub_22BD74A58(v1391, v1392);
            v1393 = sub_22BD61CB4();
            v1394(v1393);
            sub_22BD61D54();
            swift_storeEnumTagMultiPayload();
            sub_22BD5F83C();
            sub_22BD645B8();
            sub_22BB3630C();
            sub_22BD65290(v1395, v1396);
            sub_22BB35CBC();
            sub_22BB34648();
            v1397 = sub_22BD62FB4();
            v1398(v1397);
            v1303 = sub_22BD63194();
            goto LABEL_199;
          }

          sub_22BD64C9C();
          if (v1537)
          {
            v2970 = *(v2996 + 4840);
            sub_22BB32468();
            v188 = *(v1538 + 2544);
            v157 = *(v2996 + 2536);
            v1539 = *(v2996 + 2528);
            v1540 = sub_22BB381B4();
            v1541(v1540);
            v1542 = sub_22BD601CC();
            v1543(v1542);
            sub_22BD63EF8();
            sub_22BD5FC18();

            sub_22BD62270();
            MEMORY[0x23189FB20]();
LABEL_230:
            v1581 = sub_22BD60C68();
            MEMORY[0x23189FD40](v1581);
            sub_22BD62240();
            sub_22BD64994();
            v1582();
            v160 = v2959;
            sub_22BB6FCB8();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BB70270();
            v1583 = sub_22BB8EAA8();
            v1584(v1583);
            v1585 = sub_22BD62FA4();
            v1586(v1585);
            v1587 = sub_22BD641B0();
            v1588(v1587);
            v2961 = v194;
            goto LABEL_106;
          }

          sub_22BD64C34();
          if (v1574)
          {
            v2971 = *(v2996 + 4840);
            sub_22BB32468();
            v188 = *(v1575 + 2520);
            v157 = *(v2996 + 2512);
            v1576 = *(v2996 + 2504);
            v1577 = sub_22BB381B4();
            v1578(v1577);
            v1579 = sub_22BD601CC();
            v1580(v1579);
            sub_22BD63EF8();
            sub_22BD5FBE8();

            sub_22BD62270();
            MEMORY[0x23189FB40]();
            goto LABEL_230;
          }

          sub_22BD64C1C();
          if (v1607)
          {
            v1608 = *(v2996 + 3464);
            sub_22BB96B90();
            v1609 = *(v2996 + 2488);
            v1611 = sub_22BC54A3C(v1610);
            v1612(v1611);
            v1613 = sub_22BB70250();
            v1614(v1613);
            sub_22BB71FB0();
            sub_22BDB5BA4();
            sub_22BD81270(v30, *v1609);
            v1615 = sub_22BD61590();
            v1616(v1615);
            v1617 = sub_22BD617C4();
            sub_22BB3AA28(v1617, v1618, v1619);
            sub_22BB97DC0();
            if (v309)
            {
              sub_22BB325EC(*(v2996 + 2776), &qword_27D8E64D8, &qword_22BDCE3E0);
            }

            else
            {
              v1620 = *(v2996 + 3472);
              v1621 = *(v2996 + 3464);
              v1622 = *(v2996 + 3336);
              v50 = *(v2996 + 2784);
              v1623 = *(v2996 + 2776);
              v1624 = *(v2996 + 2600);
              v1625 = *(v2996 + 2488);
              sub_22BB3737C();
              sub_22BB3A518(v1626, v1620);
              v1627 = sub_22BD65440();
              sub_22BB75894(v1627, v1628);
              sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
              sub_22BD63E44();
              sub_22BD646A4();
              sub_22BD61854();
              sub_22BB32824();
              sub_22BB34648();
            }

            v13 = v2996;
            v2946 = *(v2996 + 4836);
            sub_22BD61390();
            v1689 = *(v2996 + 3208);
            v1690 = *(v2996 + 3192);
            v157 = *(v2996 + 3184);
            v1691 = *(v2996 + 3176);
            v1692 = *(v2996 + 3168);
            v2972 = *(v2996 + 2600);
            v1693 = *(v2996 + 2592);
            v2981 = *(v2996 + 2584);
            v2983 = *(v2996 + 3200);
            v2955 = *(v2996 + 2480);
            v2959 = *(v2996 + 3216);
            MEMORY[0x23189FB80]();
            sub_22BDB5DB4();
            v1694 = *(v1691 + 104);
            v30 = v1691 + 104;
            v1694(v157, v2946, v1692);
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            v160 = v2955;
            v171 = v2959;
            sub_22BBC055C();
            sub_22BDBAF34();
            v1695 = sub_22BD6160C();
            v1696(v1695);
            v1697 = *(v1693 + 8);
            v188 = (v1693 + 8);
            v1698 = sub_22BD62578();
            v1699(v1698);
            v1700 = sub_22BB3ACA0();
            v1701(v1700);
          }

          else
          {
            v1645 = *(v2996 + 3896);
            v1646 = *(v2996 + 3456);
            v1647 = *(v2996 + 3448);
            v1648 = *(v2996 + 3440);
            v1649 = *(v2996 + 3432);
            v1650 = *(v2996 + 3424);
            v1651 = *(v2996 + 2496);
            sub_22BDB63E4();
            sub_22BB322B0();
            v1652 = swift_allocObject();
            v1653 = sub_22BD5FB20(v1652);
            v1654(v1653);
            v1655 = (*(v1649 + 64) + 16) & ~*(v1649 + 64);
            v1656 = swift_allocObject();
            v1657 = sub_22BD61D68(v1656);
            (v204)(v1657);

            v2993 = sub_22BDB77C4();
            v1658 = sub_22BDBB114();
            sub_22BD616A8();
            v157 = swift_allocObject();
            sub_22BB97ED4(v157);
            sub_22BD616A8();
            v1659 = swift_allocObject();
            sub_22BD63308(v1659);
            sub_22BB322B0();
            v1660 = swift_allocObject();
            sub_22BBBE7C0(v1660);
            sub_22BB322B0();
            v1661 = swift_allocObject();
            sub_22BB69C9C(v1661);
            sub_22BD616A8();
            v188 = swift_allocObject();
            sub_22BB6C06C(v188);
            sub_22BD616A8();
            v1662 = swift_allocObject();
            sub_22BD64AC4(v1662);
            sub_22BB322B0();
            v1663 = swift_allocObject();
            sub_22BD6039C(v1663);
            sub_22BB322B0();
            v1664 = swift_allocObject();
            sub_22BB960B8(v1664);
            v1665 = sub_22BBCCA6C();
            sub_22BB34620(v1665);
            v1666[4] = v1667;
            v1666[5] = v157;
            v1666[6] = sub_22BB89C08;
            v1666[7] = v1655;
            v1666[8] = sub_22BB89C7C;
            v1666[9] = v1661;
            v1666[10] = sub_22BB89C08;
            v1666[11] = v188;
            v1666[12] = sub_22BB89C08;
            v1666[13] = v1647;
            v1666[14] = sub_22BB89C7C;
            v1666[15] = v1664;

            sub_22BD63C2C();

            if (os_log_type_enabled(v2993, v1658))
            {
              sub_22BB67968();
              v1668 = sub_22BBBFF34();
              v54 = v2998;
              *(v2996 + 2344) = 0;
              *(v2996 + 2312) = v1668;
              sub_22BD62524(v1665);
              *(v1669 + 1376) = v157;
              sub_22BD65050();
              if (!v2998)
              {

                sub_22BB3B510();
                *(v1670 + 1368) = v1671;
                *(v1670 + 1376) = v1655;
                sub_22BD60E34(v1670);

                sub_22BB70564();
                *(v1672 + 1368) = v1673;
                *(v1672 + 1376) = v1661;
                sub_22BD60E34(v1672);

                sub_22BB3B510();
                *(v1674 + 1368) = v1675;
                *(v1674 + 1376) = v188;
                sub_22BD60E34(v1674);

                sub_22BB3B510();
                *(v1676 + 1368) = v1677;
                *(v1676 + 1376) = v2986;
                sub_22BD60E34(v1676);

                sub_22BB70564();
                *(v1678 + 1368) = v1679;
                *(v1678 + 1376) = v1664;
                sub_22BD60E34(v1678);
                v1680 = *(v2996 + 3896);
                v1681 = *(v2996 + 3840);
                v1682 = *(v2996 + 3832);
                v1683 = *(v2996 + 3456);
                v1684 = *(v2996 + 3432);
                v1685 = *(v2996 + 3424);

                sub_22BD61B3C();
                sub_22BD6479C();
                sub_22BD636C8(v1686, v1687, v1688, "[SessionCoordinator %{public}s] Unrecognized debugger event: %s.");
                sub_22BD61EE4();
                sub_22BB89BBC();
                sub_22BB679C0();
              }

LABEL_344:

              goto LABEL_379;
            }

            v171 = *(v2996 + 3896);
            v1702 = *(v2996 + 3840);
            v30 = *(v2996 + 3832);
            v50 = *(v2996 + 3456);
            v1703 = *(v2996 + 3432);
            v2983 = *(v2996 + 3424);

            v1704 = sub_22BD60A40();
            v1705(v1704);
            v1706 = *(v1703 + 8);
            v160 = v1703 + 8;
            v1706(v50, v2983);
            v13 = v2996;
            (*(*(v2996 + 2760) + 8))(*(v2996 + 2768), *(v2996 + 2752));
          }

          goto LABEL_105;
        case 6u:
          v2316 = *(v2996 + 4080);
          sub_22BD63920();
          _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
          sub_22BB322B0();
          v2317 = swift_allocObject();
          sub_22BD60000(v2317);
          v2318 = sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BD616A8();
          v2319 = swift_allocObject();
          sub_22BB97ED4(v2319);
          sub_22BD616A8();
          v2320 = swift_allocObject();
          sub_22BB6FB2C(v2320);
          sub_22BB322B0();
          v2321 = swift_allocObject();
          sub_22BB97500(v2321);
          sub_22BB322B0();
          v2322 = swift_allocObject();
          sub_22BBC0888(v2322);
          v1570 = sub_22BB6F8FC();
          v2323 = sub_22BBC2570(v1570, xmmword_22BDC2F20);
          v2323[2].n128_u64[0] = v2324;
          v2323[2].n128_u64[1] = v2319;
          v2323[3].n128_u64[0] = sub_22BB89C08;
          v2323[3].n128_u64[1] = v2320;
          v2323[4].n128_u64[0] = sub_22BB89C7C;
          v2323[4].n128_u64[1] = v2322;

          if (sub_22BC54EF8())
          {
            sub_22BB67968();
            v2325 = sub_22BB6B650();
            sub_22BB3E0DC(v2325);
            sub_22BBC78A8(v2326);
            v3003 = v2327;
            v3004 = v2319;
            v2328 = sub_22BB58B08();
            sub_22BB67984(v2328, v2329, v2330, v2331);
            if (!v1570)
            {

              v2425 = sub_22BB542B0();
              sub_22BB67984(v2425, v2426, v2427, v2428);

              v3003 = sub_22BB89C7C;
              v3004 = v2322;
              v2474 = sub_22BB542B0();
              sub_22BB67984(v2474, v2475, v2476, v2477);
              v2543 = *(v2996 + 4080);
              sub_22BBD1A28();

              sub_22BB6FAD4(&dword_22BB2C000, v2544, v2545, "[SessionCoordinator %{public}s] Processed SIGTERM. Exiting.");
              sub_22BB35808();
              sub_22BB679C0();
            }

            goto LABEL_314;
          }

          v2336 = *(v2996 + 4080);
          sub_22BBD1A28();

          v2337 = sub_22BB96A1C();
          v2338(v2337, v1570);
          sub_22BB704B0();
          sub_22BBBE8EC();
          v2339 = *(v2996 + 4352);
          v2340 = *(v2996 + 4344);
          v2341 = *(v2996 + 4336);
          v2342 = *(v2996 + 4328);
          v2343 = *(v2996 + 4296);
          sub_22BD5FCEC();
          sub_22BD61B68(v2344);
          v2841 = *(v2996 + 2920);
          v2857 = *(v2996 + 2912);
          v2870 = *(v2996 + 2904);
          oslogn = *(v2996 + 2880);
          v2894 = *(v2996 + 2864);
          logs = *(v2996 + 2856);
          v2923 = *(v2996 + 2848);
          v2934 = *(v2996 + 2824);
          v2935 = *(v2996 + 2816);
          v2941 = *(v2996 + 2808);
          sub_22BB898F4();
          sub_22BB35CBC();
          sub_22BB34648();
          v2345 = *(v2996 + 1576);

          v2346 = sub_22BD632B8();
          v2347(v2346, v2319);

          sub_22BB2F09C();
          sub_22BB33430();

          v2349(v2348, v2349, v2350, v2351, v2352, v2353, v2354, v2355, a9, a10, a11, a12);
          return;
        case 7u:
          sub_22BD65090();
          sub_22BB322B0();
          v414 = swift_allocObject();
          sub_22BD60000(v414);
          v160 = sub_22BDB77C4();
          v415 = sub_22BDBB114();
          sub_22BD616A8();
          v416 = swift_allocObject();
          sub_22BD60E0C(v416);
          sub_22BD616A8();
          v417 = swift_allocObject();
          sub_22BB70358(v417);
          sub_22BB322B0();
          v418 = swift_allocObject();
          sub_22BB97500(v418);
          sub_22BB322B0();
          v419 = swift_allocObject();
          sub_22BD6040C(v419);
          v420 = sub_22BB6F8FC();
          v421 = sub_22BBC2570(v420, xmmword_22BDC2F20);
          v421[2].n128_u64[0] = v422;
          v421[2].n128_u64[1] = v50;
          v421[3].n128_u64[0] = sub_22BB89C08;
          v421[3].n128_u64[1] = v157;
          v421[4].n128_u64[0] = sub_22BB89C7C;
          v421[4].n128_u64[1] = v171;

          if (sub_22BC54EF8())
          {
            sub_22BB67968();
            v423 = sub_22BB38198();
            *(v201 + 2392) = 0;
            *(v201 + 2360) = v423;
            *v418 = 258;
            *(v201 + 2424) = v418 + 2;
            *(v201 + 1448) = sub_22BB89C08;
            *(v201 + 1456) = v50;
            v424 = sub_22BD610E0();
            sub_22BB67984(v424, v425, v426, v427);
            if (!v2998)
            {

              *(v201 + 1448) = sub_22BB89C08;
              *(v201 + 1456) = v157;
              v428 = sub_22BD610E0();
              sub_22BB67984(v428, v429, v430, v431);

              *(v201 + 1448) = sub_22BB89C7C;
              *(v201 + 1456) = v171;
              v432 = sub_22BD610E0();
              sub_22BB67984(v432, v433, v434, v435);
              sub_22BD644F8();
              sub_22BB337EC(&dword_22BB2C000, v160, v415, "[SessionCoordinator %{public}s] | Detected failure in debugger handling. Disabling debug modes and terminating session.");
              sub_22BB30DDC();
              sub_22BB679C0();
            }

LABEL_378:

            goto LABEL_379;
          }

          sub_22BD64ED0();

          v596 = *(v418 + 8);
          v188 = (v418 + 8);
          v597 = sub_22BB30AE4();
          v598(v597);
          v599 = *(v201 + 4792);
          v171 = *(v201 + 4344);
          v30 = *(v201 + 4304);
          v157 = *(v201 + 4104);
          v600 = *(v201 + 3144);
          v50 = *(v201 + 3128);
          sub_22BB96BBC(*(v201 + 4440));
          v601 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
          sub_22BD64954(v601);
          sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
          v602 = sub_22BD60FD4();
          sub_22BD5B890(v602, 1);
          sub_22BD61630();
          v603(v50, v599, v188);
          v604 = sub_22BD64B54();
          sub_22BD74A58(v604, v605);
          v606 = *(v13 + 8);
          v13 += 8;
          v607 = sub_22BB32E04();
          v608(v607);
          sub_22BD614B8();
          sub_22BD5F854();
          sub_22BB37074();
          swift_storeEnumTagMultiPayload();
          sub_22BB3630C();
          sub_22BD64674(v609, v610);
          sub_22BB35CBC();
LABEL_98:
          sub_22BB34648();
LABEL_105:
          v194 = v2998;
LABEL_106:
          sub_22BB6FC94();
LABEL_107:

          sub_22BB35CBC();
          sub_22BB34648();
          goto LABEL_21;
        default:
          sub_22BD63360();
          v1720 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
          sub_22BB8D2E4(v1720);
          v1722 = *v1721;
          *(v201 + 4552) = *v1721;
          v1723 = v1721[1];
          *(v201 + 4560) = v1723;
          sub_22BBBE74C();
          sub_22BB3A518(v30, v50);
          sub_22BDB63E4();
          sub_22BB322B0();
          v1724 = swift_allocObject();
          sub_22BB977E8(v1724);
          sub_22BB335C0(v50, v171);
          sub_22BD60E54(*(v13 + 80));
          v1725 = swift_allocObject();
          sub_22BD65130(v1725);
          sub_22BB322B0();
          v1726 = swift_allocObject();
          *(v1726 + 16) = v1722;
          *(v1726 + 24) = v1723;

          v2984 = sub_22BDB77C4();
          v2978 = sub_22BDBB104();
          sub_22BD616A8();
          v2994 = swift_allocObject();
          sub_22BB97ED4(v2994);
          sub_22BD616A8();
          v2989 = swift_allocObject();
          sub_22BD612D8(v2989);
          sub_22BB322B0();
          v1727 = swift_allocObject();
          sub_22BBBDEB0(v1727);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD5F74C();
          *(v1728 + 16) = v1729;
          *(v1728 + 24) = v1727;
          sub_22BD616A8();
          v1730 = swift_allocObject();
          *(v1730 + 16) = 32;
          sub_22BD616A8();
          v1731 = swift_allocObject();
          sub_22BD64CC0(v1731);
          sub_22BB322B0();
          v1732 = swift_allocObject();
          sub_22BB8EA90(v1732);
          sub_22BB322B0();
          v1733 = swift_allocObject();
          sub_22BD626D0(v1733);
          sub_22BD616A8();
          v1734 = swift_allocObject();
          sub_22BD63D38(v1734);
          sub_22BD616A8();
          v1735 = swift_allocObject();
          sub_22BD617B4(v1735);
          v1736 = v160;
          sub_22BB322B0();
          v1737 = swift_allocObject();
          sub_22BD6055C(v1737);
          sub_22BB322B0();
          v1738 = swift_allocObject();
          *(v1738 + 16) = sub_22BB89C80;
          *(v1738 + 24) = v1737;
          v1739 = sub_22BD61958();
          sub_22BBC96FC(v1739, xmmword_22BDCE140);
          sub_22BD60544(v2994);
          v1739[3].n128_u64[1] = v2989;
          v1739[4].n128_u64[0] = sub_22BB89C7C;
          v1739[4].n128_u64[1] = v204;
          v1739[5].n128_u64[0] = sub_22BB89C08;
          v1739[5].n128_u64[1] = v1730;
          v1739[6].n128_u64[0] = sub_22BB89C08;
          v1739[6].n128_u64[1] = v1736;
          v1739[7].n128_u64[0] = sub_22BB89C7C;
          v1739[7].n128_u64[1] = v157;
          v1739[8].n128_u64[0] = sub_22BB89C08;
          v1739[8].n128_u64[1] = v1722;
          v1739[9].n128_u64[0] = sub_22BB89C08;
          v1739[9].n128_u64[1] = 32;
          v1739[10].n128_u64[0] = sub_22BB89C7C;
          v1739[10].n128_u64[1] = v1738;

          v2976 = v1730;

          if (os_log_type_enabled(v2984, v2978))
          {
            v1740 = sub_22BB67968();
            v1741 = sub_22BD63AC4();
            *(v201 + 2408) = 0;
            *(v201 + 2416) = v1741;
            sub_22BBBFF10(v1740);
            *(v201 + 1536) = v2994;
            v1742 = sub_22BB3AB24();
            sub_22BB67984(v1742, v1743, v1744, v1745);
            if (!v2998)
            {

              *(v201 + 1528) = sub_22BB89C08;
              *(v201 + 1536) = v2989;
              v1746 = sub_22BB3AB24();
              sub_22BB67984(v1746, v1747, v1748, v1749);

              sub_22BD61014();
              *(v201 + 1536) = v204;
              v1750 = sub_22BB3AB24();
              sub_22BB67984(v1750, v1751, v1752, v1753);

              sub_22BD6102C();
              *(v201 + 1536) = v2976;
              v1754 = sub_22BB3AB24();
              sub_22BB67984(v1754, v1755, v1756, v1757);

              sub_22BD6102C();
              *(v201 + 1536) = v1736;
              v1758 = sub_22BB3AB24();
              sub_22BB67984(v1758, v1759, v1760, v1761);

              sub_22BD61014();
              *(v201 + 1536) = v157;
              v1762 = sub_22BB3AB24();
              sub_22BB67984(v1762, v1763, v1764, v1765);

              *(v201 + 1528) = sub_22BB89C08;
              *(v201 + 1536) = v1722;
              v1766 = sub_22BB3AB24();
              sub_22BB67984(v1766, v1767, v1768, v1769);

              sub_22BD6102C();
              *(v201 + 1536) = 32;
              v1770 = sub_22BB3AB24();
              sub_22BB67984(v1770, v1771, v1772, v1773);

              sub_22BD61014();
              *(v201 + 1536) = v1738;
              v1774 = sub_22BB3AB24();
              sub_22BB67984(v1774, v1775, v1776, v1777);
              sub_22BD63F28();

              sub_22BBBEB60();
              _os_log_impl(v1778, v1779, v1780, "[SessionCoordinator %{public}s] | Processing transaction request:\nContents: %s\nPostcondition: %s", v1740, 0x20u);
              swift_arrayDestroy();
              sub_22BB30458();
              sub_22BB679C0();
            }

LABEL_386:

            goto LABEL_379;
          }

          v1781 = *(v201 + 4096);
          v1782 = *(v201 + 3840);
          v1783 = *(v201 + 3832);

          v1784 = *(v1782 + 8);
          v1785 = sub_22BD6220C();
          v1786(v1785);
          v1787 = sub_22BD634EC();
          v2983 = v1788;
          v2888 = v1787;
          *(v201 + 4576) = v1787;
          sub_22BD642C4();
          *(v201 + 4584) = v1789;
          sub_22BD6480C();
          *(v201 + 4592) = v1790;
          v1791 = sub_22BB3E460();
          v2915 = v1792;
          logf = v1793;
          (v1793)(v1791);
          sub_22BDB96A4();
          v1794 = *(v204 + 8);
          *(v201 + 4600) = v1794;
          sub_22BD63D50();
          *(v201 + 4608) = v1795;
          v1796 = sub_22BB2F324();
          (v1794)(v1796);
          v1797 = sub_22BDB9744();
          v1798 = *(v1722 + 8);
          *(v201 + 4616) = v1798;
          *(v201 + 4624) = (v1722 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v1799 = sub_22BB2F0E0();
          v2947 = v1722 + 8;
          v1798(v1799);
          *(v201 + 1712) = v1797;
          sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
          sub_22BB31DE0();
          sub_22BD63468();
          sub_22BB899C0(v1800, v1801, v1802);
          v1803 = (v201 + 1712);
          sub_22BD62448();
          sub_22BDB90D4();

          v1804 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
          v1805 = sub_22BBD2268(v1804);
          v1806 = *(v201 + 3576);
          v13 = v201;
          oslogc = v1794;
          if (v1805 == 1)
          {
            sub_22BB325EC(v1806, &qword_27D8E6518, &unk_22BDCE420);
          }

          else
          {
            sub_22BD61658(v1806);
            v1803 = v2983;
            v1807(v2983);
          }

          sub_22BD61D40();
          sub_22BB336D0(v1808, v1809, 1, v1810);
          sub_22BB366B8();
          v1811 = swift_allocObject();
          *(v201 + 4632) = v1811;
          v54 = &unk_283F7E048;
          sub_22BD616A8();
          v1812 = swift_allocObject();
          *(v201 + 4640) = v1812;
          sub_22BD616A8();
          v2975 = swift_allocObject();
          *(v201 + 4648) = v2975;
          sub_22BD60084();
          sub_22BB37074();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v1814 = *v1781;
          v2985 = v1811;
          v2932 = v1812;
          if (EnumCaseMultiPayload != 1)
          {
            v1872 = *(v201 + 4128);
            logr = *(v201 + 4056);
            v1873 = *(v201 + 3800);
            sub_22BB70530();
            v1874 = *(v201 + 3680);
            sub_22BD61CF0();
            v2960 = v1876;
            v2963 = v1875;
            sub_22BD63FE8();
            v2922 = v1877;
            v1878 = *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48);
            sub_22BB31DC8();
            sub_22BB3A518(v1872 + v1879, v1803);
            v1880 = v1803[2].isa;
            v2979 = v1803[1].isa;
            v1881 = v1803->isa;
            *(v1811 + 16) = v1814;
            v1882 = (v1803 + *(v1812 + 28));
            v1883 = v1882[1];
            v2804 = *v1882;
            v2813 = v1803;
            sub_22BB3CD70(v1803 + *(v1812 + 24), v1873, &qword_27D8E3218, &qword_22BDBE390);

            v2799 = v1883;

            sub_22BD459A4(v1814, v1874);
            v2826 = v2998;

            sub_22BDB63E4();
            sub_22BB322B0();
            v1884 = swift_allocObject();
            *(v1884 + 16) = sub_22BB89C78;
            *(v1884 + 24) = v2922;
            sub_22BB366B8();
            v1885 = v13;
            v1886 = swift_allocObject();
            v2981 = v1881;
            *(v1886 + 16) = v1881;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB89B58();
            *(v1887 + 16) = v1888;
            *(v1887 + 24) = v1886;
            sub_22BD634D0();
            sub_22BB3CD70(v1889, v1890, v1891, &qword_22BDBE390);
            sub_22BD62264(v2947);
            sub_22BD649E8(v1892);
            v2835 = swift_allocObject();
            sub_22BD6392C();
            sub_22BB6BEE0(v1893, v1894, v1895, v1896);
            sub_22BB3CD70(v1874, v2960, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BD62264(v2963);
            v2831 = swift_allocObject();
            sub_22BD639B0();
            sub_22BB6BEE0(v1897, v1898, v1899, v1900);

            v1901 = logr;
            v2852 = sub_22BDB77C4();
            LODWORD(v2828) = sub_22BDBB134();
            sub_22BD616A8();
            oslogd = swift_allocObject();
            sub_22BD62E44(oslogd);
            sub_22BD616A8();
            v2939 = swift_allocObject();
            sub_22BB6FB2C(v2939);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v1902 + 16) = v1903;
            *(v1902 + 24) = v1884;
            sub_22BB322B0();
            v1904 = swift_allocObject();
            v2869 = sub_22BB3DEE8(v1904);
            sub_22BD616A8();
            logg = swift_allocObject();
            LOBYTE(logg[2].isa) = &qword_22BDC1660;
            sub_22BD616A8();
            v2964 = swift_allocObject();
            *(v2964 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v1905 + 16) = v1906;
            *(v1905 + 24) = &qword_27D8E3218;
            sub_22BB322B0();
            v1907 = swift_allocObject();
            v1908 = sub_22BD62B84(v1907);
            *(v1908 + 16) = v1909;
            *(v1908 + 24) = v1901;
            sub_22BD616A8();
            v2957 = swift_allocObject();
            sub_22BD62E7C(v2957);
            sub_22BD616A8();
            v3001 = swift_allocObject();
            *(v3001 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F7F4();
            *(v1910 + 16) = v1911;
            *(v1910 + 24) = v2985;
            sub_22BB322B0();
            v1912 = swift_allocObject();
            sub_22BD62B54(v1912);
            sub_22BD616A8();
            v2948 = swift_allocObject();
            sub_22BD639BC(v2948);
            sub_22BD616A8();
            v2995 = swift_allocObject();
            *(v2995 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F7AC();
            *(v1913 + 16) = v1914;
            *(v1913 + 24) = v2835;
            sub_22BB322B0();
            v1915 = swift_allocObject();
            sub_22BB3DEE8(v1915);
            sub_22BD616A8();
            v1916 = swift_allocObject();
            *(v1916 + 16) = &qword_22BDC1660;
            sub_22BD616A8();
            v1917 = swift_allocObject();
            *(v1917 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F794();
            *(v1918 + 16) = v1919;
            *(v1918 + 24) = v2888;
            sub_22BB322B0();
            v1920 = swift_allocObject();
            sub_22BD60ED8(v1920);
            sub_22BD616A8();
            v2836 = swift_allocObject();
            LOBYTE(v2836[2].isa) = &qword_22BDC1660;
            sub_22BD616A8();
            v2890 = swift_allocObject();
            *(v2890 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F884();
            *(v1921 + 16) = v1922;
            *(v1921 + 24) = v2831;
            sub_22BB322B0();
            v1923 = swift_allocObject();
            sub_22BB97474(v1923);
            v1924 = sub_22BD62608();
            sub_22BB73BD0(v1924);
            v1924[5] = oslogd;
            v1924[6] = sub_22BB89C08;
            sub_22BB3FE84(v2939);
            v1924[9] = v1904;
            v1924[10] = sub_22BB89C08;
            v1924[11] = logg;
            v1924[12] = sub_22BB89C08;
            sub_22BD60694();
            v1924[15] = v1925;
            v1924[16] = sub_22BB89C08;
            v1924[17] = v2957;
            v1924[18] = sub_22BB89C08;
            sub_22BB97130(v3001);
            v1924[21] = v1912;
            v1924[22] = sub_22BB89C08;
            sub_22BB3FC00(v2948);
            v1924[27] = v1915;
            v1924[28] = sub_22BB89C08;
            v1924[29] = v1916;
            v1924[30] = sub_22BB89C08;
            v1924[31] = v1917;
            v1924[32] = sub_22BB89C7C;
            v1924[33] = v1901;
            v1924[34] = sub_22BB89C08;
            sub_22BB6F990();
            v1924[37] = v2890;
            v1924[38] = sub_22BB89C7C;
            v1924[39] = v1923;

            v2818 = v1916;

            sub_22BD64DB0();
            if (os_log_type_enabled(v2852, v1926))
            {
              sub_22BB67968();
              v1927 = sub_22BD64704();
              sub_22BD6215C(v1927);
              v1885[190] = oslogd;
              v1928 = sub_22BB3A498();
              v54 = v2826;
              sub_22BB67984(v1928, v1929, v1930, v1931);
              if (!v2826)
              {

                sub_22BB75804();
                v1885[190] = v2939;
                v1932 = sub_22BB3A498();
                sub_22BB67984(v1932, v1933, v1934, v1935);

                sub_22BD62B30();
                v1885[190] = v2869;
                v1936 = sub_22BB3A498();
                sub_22BB67984(v1936, v1937, v1938, v1939);

                sub_22BB75804();
                v1885[190] = logg;
                v1940 = sub_22BB3A498();
                sub_22BB67984(v1940, v1941, v1942, v1943);

                sub_22BB75804();
                v1885[190] = v2964;
                v1944 = sub_22BB3A498();
                sub_22BB67984(v1944, v1945, v1946, v1947);

                v1885[189] = sub_22BB89C7C;
                v1885[190] = v2960;
                v1948 = sub_22BB3A498();
                sub_22BB67984(v1948, v1949, v1950, v1951);

                v1885[189] = sub_22BB89C08;
                v1885[190] = v2957;
                v1952 = sub_22BB3A498();
                sub_22BB67984(v1952, v1953, v1954, v1955);

                v1885[189] = sub_22BB89C08;
                v1885[190] = v3001;
                v1956 = sub_22BB3A498();
                sub_22BB67984(v1956, v1957, v1958, v1959);

                sub_22BB3FF54();
                v1885[190] = v1912;
                v1960 = sub_22BB3A498();
                sub_22BB67984(v1960, v1961, v1962, v1963);

                sub_22BB75804();
                v1885[190] = v2948;
                v1964 = sub_22BB3A498();
                sub_22BB67984(v1964, v1965, v1966, v1967);

                v1885[189] = sub_22BB89C08;
                v1885[190] = v2995;
                v1968 = sub_22BB3A498();
                sub_22BB67984(v1968, v1969, v1970, v1971);

                v1885[189] = sub_22BB89C7C;
                v1885[190] = v1915;
                v1972 = sub_22BB3A498();
                sub_22BB67984(v1972, v1973, v1974, v1975);

                v1885[189] = sub_22BB89C08;
                v1885[190] = v2818;
                v1976 = sub_22BB3A498();
                sub_22BB67984(v1976, v1977, v1978, v1979);

                v1885[189] = sub_22BB89C08;
                v1885[190] = v1917;
                v1980 = sub_22BB3A498();
                sub_22BB67984(v1980, v1981, v1982, v1983);

                v1885[189] = sub_22BB89C7C;
                v1885[190] = v1901;
                v1984 = sub_22BB3A498();
                sub_22BB67984(v1984, v1985, v1986, v1987);

                v1885[189] = sub_22BB89C08;
                v1885[190] = v2836;
                v1988 = sub_22BB3A498();
                sub_22BB67984(v1988, v1989, v1990, v1991);

                sub_22BB75804();
                v1885[190] = v2890;
                v1992 = sub_22BB3A498();
                sub_22BB67984(v1992, v1993, v1994, v1995);

                sub_22BD62AE8();
                v1885[190] = v1923;
                sub_22BD65150();
                v1996 = v1885[507];
                v1997 = v1885[480];
                v1998 = v1885[479];

                sub_22BD64DBC();
                sub_22BD63EC8(&dword_22BB2C000, v2852, v1999, "[SessionCoordinator %{public}s] | [TX %{public}s] Internal transaction turned in with %{public}ld events. originatingSpanQueryEventId: %s, latestQueryEventId: %s, newQueryEventId: %s");
                sub_22BB6FD00();
                sub_22BB30458();
                sub_22BB679C0();
              }

LABEL_372:

              goto LABEL_379;
            }

            v2000 = v1885[507];
            v2001 = v1885[480];
            v2002 = v1885[479];

            v2003 = *(v2001 + 8);
            v2004 = sub_22BB3AC54();
            v2005(v2004);
            v2006 = v1885;
            v54 = v2826;
            v2007 = v1885[474];
            v2008 = v1885[472];
            v2009 = v1885[403];
            v2010 = sub_22BD63E88(v2813);
            sub_22BB3CD70(v2010, v2011, &qword_27D8E3218, &qword_22BDBE390);
            v2012 = sub_22BB53C48();
            sub_22BB3CD70(v2012, v2013, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BD6383C();
            v2014 = 1;
            v2015 = sub_22BB3A190();
            if (!sub_22BB3AA28(v2015, v2016, v2009))
            {
              v2017 = v2006[471];
              sub_22BDB8F24();
              v2014 = 0;
            }

            swift_endAccess();
            v2018 = v2006[472];
            v2019 = v2006[420];
            v2020 = v2006[418];
            v2021 = v2006[414];
            sub_22BB336D0(v2006[471], v2014, 1, v2021);
            v2022 = *(v2020 + 48);
            v2023 = sub_22BB31F54();
            sub_22BB3CD70(v2023, v2024, &qword_27D8E3218, &qword_22BDBE390);
            v2025 = sub_22BD64D74();
            sub_22BB3CD70(v2025, v2026, v2027, &qword_22BDBE390);
            v2028 = sub_22BB3A190();
            v2030 = sub_22BB3AA28(v2028, v2029, v2021);
            v2031 = v2006[414];
            if (v2030 == 1)
            {
              v2032 = v2006[472];
              sub_22BB325EC(v2006[471], &qword_27D8E3218, &qword_22BDBE390);
              v2033 = sub_22BB3B528();
              sub_22BB325EC(v2033, v2034, &qword_22BDBE390);
              sub_22BBBFF9C(v2019 + v2022);
              v2035 = v2932;
              if (v309)
              {
                sub_22BB325EC(v2006[420], &qword_27D8E3218, &qword_22BDBE390);
              }

              else
              {
LABEL_279:
                sub_22BB325EC(v2006[420], &qword_27D8E6510, &qword_22BDCE418);
              }
            }

            else
            {
              sub_22BB3CD70(v2006[420], v2006[470], &qword_27D8E3218, &qword_22BDBE390);
              sub_22BD618B8();
              v2095 = sub_22BB3AA28(v2092, v2093, v2094);
              v2032 = v2006[472];
              v2096 = v2006[471];
              v2031 = v2006[470];
              if (v2095 == 1)
              {
                v2097 = v2006[415];
                v2098 = v2006[414];
                v2099 = sub_22BB32E04();
                sub_22BB325EC(v2099, v2100, &qword_22BDBE390);
                v2101 = sub_22BB3B528();
                sub_22BB325EC(v2101, v2102, &qword_22BDBE390);
                v2103 = *(v2097 + 8);
                v2104 = sub_22BB3627C();
                v2105(v2104);
                v2035 = v2932;
                goto LABEL_279;
              }

              v2164 = v2006[420];
              v2165 = sub_22BD62EC8();
              v2166(v2165);
              sub_22BB30DC4();
              sub_22BB3B194(&unk_28142DD40, v2167);
              sub_22BD6220C();
              sub_22BDBABD4();
              v2022 = 0x100001E030;
              MEMORY[0x100001E030](&qword_27D8E3218, v2006);
              sub_22BD62584();
              sub_22BB325EC(v2168, v2169, v2170);
              v2171 = sub_22BB31B54();
              sub_22BB325EC(v2171, v2172, &qword_22BDBE390);
              v2173 = sub_22BD642F4();
              MEMORY[0x100001E030](v2173);
              v2006 = v2996;
              v2174 = sub_22BB331D4();
              sub_22BB325EC(v2174, v2175, &qword_22BDBE390);
              v2035 = v2932;
            }

            sub_22BD64F10();
            sub_22BB89B88();
            sub_22BBC03CC();
            sub_22BD61FB4();

            if (v2031)
            {
              v2176 = v2006[563];
              v2031 = v2006[312];
              sub_22BB707F8();
              v2032 = 1;
              *(v2035 + 16) = 1;
              sub_22BB707F8();
              *(v2022 + 16) = 1;
              sub_22BD641A4();
              if (v333)
              {
                __break(1u);
                goto LABEL_410;
              }

              *(v2006[312] + v2006[563]) = v2177;
            }

            v2178 = v2006[506];
            v2179 = v2006[312];
            sub_22BDB63E4();
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBBEE48();
            *(v2180 + 16) = v2181;
            *(v2180 + 24) = v2179;
            sub_22BB366B8();
            v2182 = swift_allocObject();
            *(v2182 + 16) = v2981;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBC0500();
            *(v2183 + 16) = v2184;
            *(v2183 + 24) = v2182;

            v2958 = sub_22BDB77C4();
            sub_22BDBB134();
            sub_22BD616A8();
            v2185 = swift_allocObject();
            *(v2185 + 16) = 34;
            v28 = v2185;
            sub_22BD616A8();
            v3002 = swift_allocObject();
            sub_22BB97EE0(v3002);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v2186 + 16) = v2187;
            *(v2186 + 24) = v2032;
            sub_22BB322B0();
            v2188 = swift_allocObject();
            v2959 = sub_22BB3DEE8(v2188);
            sub_22BD616A8();
            v2991 = swift_allocObject();
            *(v2991 + 16) = 34;
            sub_22BD616A8();
            v2983 = swift_allocObject();
            LOBYTE(v2983[2].isa) = v2022;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v2189 + 16) = v2190;
            *(v2189 + 24) = v2031;
            sub_22BB322B0();
            logh = swift_allocObject();
            logh[2].isa = sub_22BB89C80;
            logh[3].isa = v2178;
            sub_22BD616A8();
            v2961 = swift_allocObject();
            v2961[16] = 0;
            sub_22BD616A8();
            v2191 = swift_allocObject();
            sub_22BBD19F8(v2191);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F7C4();
            *(v2192 + 16) = v2193;
            *(v2192 + 24) = v2035;
            sub_22BB322B0();
            v2194 = swift_allocObject();
            sub_22BD5F670(v2194);
            sub_22BB322B0();
            v2195 = swift_allocObject();
            sub_22BB95B9C(v2195);
            sub_22BB322B0();
            v2933 = swift_allocObject();
            *(v2933 + 16) = sub_22BD5F238;
            *(v2933 + 24) = v2178;
            sub_22BD616A8();
            v2949 = swift_allocObject();
            *(v2949 + 16) = 0;
            sub_22BD616A8();
            v2940 = swift_allocObject();
            *(v2940 + 16) = v2032;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F7C4();
            *(v2196 + 16) = v2197;
            *(v2196 + 24) = v2975;
            sub_22BB322B0();
            v2198 = swift_allocObject();
            sub_22BD5F68C(v2198);
            sub_22BB322B0();
            v2199 = swift_allocObject();
            sub_22BB53C68(v2199);
            sub_22BB322B0();
            v2200 = swift_allocObject();
            sub_22BB97728(v2200);
            v2201 = sub_22BD63C10();
            sub_22BB3E214(v2201);
            sub_22BD62790();
            sub_22BB3FE84(v3002);
            v2201[9] = v2959;
            v2201[10] = sub_22BB89C08;
            sub_22BB97404(v2991);
            v2201[13] = v2983;
            v2201[14] = sub_22BB89C7C;
            v2201[15] = logh;
            v2201[16] = sub_22BB89C08;
            v2201[17] = v2961;
            v2201[18] = sub_22BB89C08;
            v2201[19] = v2191;
            v2201[20] = sub_22BD5F268;
            v50 = v2933;
            v2201[21] = v2933;
            v2201[22] = sub_22BB89C08;
            sub_22BD62884();
            v2201[23] = v28;
            v2201[24] = v2202;
            v2201[25] = v2940;
            v2201[26] = sub_22BD5F650;
            v2201[27] = v2200;
            v2973 = v2203;

            sub_22BD64B08();
            if (os_log_type_enabled(v2958, v2204))
            {
              sub_22BB67968();
              v2205 = sub_22BD619F0();
              v2006[291] = 0;
              v2006[292] = v2205;
              *v2940 = 1026;
              v2006[290] = v2940 + 2;
              sub_22BB6FA80();
              v2006[178] = v2973;
              sub_22BD60F14();
              if (!v2826)
              {

                sub_22BB6FA80();
                v2006[178] = v3002;
                sub_22BD60F14();

                sub_22BB95A38();
                v2006[178] = v2959;
                sub_22BD60F14();

                sub_22BB6FA80();
                v2006[178] = v2991;
                sub_22BD60F14();

                sub_22BB6FA80();
                v2006[178] = v2983;
                sub_22BD60F14();

                sub_22BB95A38();
                v2006[178] = logh;
                sub_22BD60F14();

                sub_22BB6FA80();
                v2006[178] = v2961;
                sub_22BD60F14();

                sub_22BB6FA80();
                v2006[178] = v2191;
                sub_22BD60F14();

                sub_22BD6283C();
                v2006[178] = v2933;
                sub_22BD60F14();

                sub_22BB6FA80();
                v2006[178] = v2949;
                sub_22BD60F14();
                sub_22BB75658();
                sub_22BB6FA80();
                v2006[178] = v2940;
                sub_22BD60F14();

                sub_22BB8EA6C();
                v2983[178].isa = v2200;
                v2206 = sub_22BB95784();
                sub_22BB67984(v2206, v2207, v2208, v2209);
                v2210 = v2983[506].isa;
                sub_22BD64324();
                v2211 = v2983[475].isa;
                v2212 = v2983[460].isa;
                sub_22BD65218();
                sub_22BD6427C();
                sub_22BD65458(&dword_22BB2C000, v2958, v2213, "[SessionCoordinator %{public}s] | [TX %{public}s] workCausationAllowed: %{BOOL}d, allowedToSendToClient: %{BOOL}d");
                swift_arrayDestroy();
                sub_22BB38680();
                sub_22BB679C0();
              }

              goto LABEL_379;
            }

            oslogm = v2006[506];
            v2214 = v2006[480];
            v2215 = v2006[479];
            v2216 = v2006[475];
            v2893 = v2006[460];
            v2915 = v2006[427];

            v2217 = *(v2214 + 8);
            v35 = v2214 + 8;
            sub_22BD61DF4(v2217);
            v2218();
            sub_22BB325EC(v2893, &unk_27D8E69E0, &qword_22BDC1660);
            v2219 = v2216;
            v1831 = &qword_27D8E3218;
            sub_22BB325EC(v2219, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB33E70();
            sub_22BB34648();
            v13 = v2006;
            sub_22BD62CC4();
            v39 = v2985;
            v30 = v2804;
            v32 = v2799;
            goto LABEL_305;
          }

          v2830 = v1798;
          sub_22BD61D2C();
          v2868 = v1815;
          v2956 = v1816;
          sub_22BDB8404();
          v1817 = *(v1781 + v1797);
          sub_22BDB8404();
          sub_22BBBE80C();
          sub_22BB97C94();
          if (v333)
          {
            __break(1u);
LABEL_401:
            __break(1u);

            goto LABEL_379;
          }

          sub_22BD61914(v1818);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB89DB4();
          *(v1819 + 16) = v1820;
          *(v1819 + 24) = &unk_283F7E048;
          sub_22BB366B8();
          v2981 = v1812;
          *(swift_allocObject() + 16) = v1812;
          sub_22BB322B0();
          v1821 = swift_allocObject();
          sub_22BD60348(v1821);
          sub_22BB366B8();
          v1822 = swift_allocObject();
          sub_22BD645D4(v1822);
          v2961 = v1814;

          v2959 = sub_22BDB77C4();
          v2889 = sub_22BDBB134();
          sub_22BD616A8();
          v2991 = swift_allocObject();
          sub_22BD63B94(v2991);
          sub_22BD616A8();
          *(swift_allocObject() + 16) = 8;
          sub_22BB322B0();
          v1823 = swift_allocObject();
          sub_22BB70160(v1823);
          sub_22BB322B0();
          v1824 = swift_allocObject();
          sub_22BB69C9C(v1824);
          sub_22BD616A8();
          v2834 = swift_allocObject();
          LOBYTE(v2834[2].isa) = v1812;
          sub_22BD616A8();
          v1825 = swift_allocObject();
          *(v1825 + 16) = 8;
          sub_22BB322B0();
          v1826 = swift_allocObject();
          sub_22BBBE888(v1826);
          sub_22BB322B0();
          v1827 = swift_allocObject();
          sub_22BB69C9C(v1827);
          sub_22BD616A8();
          v1828 = swift_allocObject();
          sub_22BD62E7C(v1828);
          sub_22BD616A8();
          v1829 = swift_allocObject();
          *(v1829 + 16) = 8;
          sub_22BB322B0();
          v1830 = swift_allocObject();
          sub_22BD602E0(v1830);
          sub_22BB322B0();
          v1831 = swift_allocObject();
          sub_22BD606DC(v1831);
          v1832 = sub_22BD61958();
          sub_22BB70434(v1832, xmmword_22BDCE140);
          sub_22BD625D0();
          v1832[4].n128_u64[1] = v1824;
          v1832[5].n128_u64[0] = sub_22BB89C08;
          sub_22BBC0640();
          v1832[6].n128_u64[1] = v1825;
          v1832[7].n128_u64[0] = sub_22BB89C7C;
          v1832[7].n128_u64[1] = v1827;
          v1832[8].n128_u64[0] = sub_22BB89C08;
          v1832[8].n128_u64[1] = v1828;
          v1832[9].n128_u64[0] = sub_22BB89C08;
          v1832[9].n128_u64[1] = v1829;
          v1832[10].n128_u64[0] = sub_22BB70118;
          v1832[10].n128_u64[1] = v1831;

          v2851 = v1825;

          if (os_log_type_enabled(v2959, v2889))
          {
            v1833 = v1823;
            v2829 = v1829;
            sub_22BB67968();
            v1834 = sub_22BBC01B4();
            *(v201 + 2288) = 0;
            *(v201 + 2296) = v1834;
            *v1828 = 770;
            *(v201 + 2280) = v1828 + 2;
            sub_22BB70328();
            *(v201 + 1312) = v2991;
            v1835 = sub_22BB58898();
            v711 = v2998;
            sub_22BB67984(v1835, v1836, v1837, v1838);
            if (!v2998)
            {

              sub_22BB70328();
              *(v201 + 1312) = v1833;
              v1839 = sub_22BB58898();
              sub_22BB67984(v1839, v1840, v1841, v1842);

              sub_22BB96CEC();
              *(v201 + 1312) = v1824;
              v1843 = sub_22BB58898();
              sub_22BB67984(v1843, v1844, v1845, v1846);

              sub_22BB70328();
              *(v201 + 1312) = v2834;
              v1847 = sub_22BB58898();
              sub_22BB67984(v1847, v1848, v1849, v1850);

              sub_22BB70328();
              *(v201 + 1312) = v2851;
              v1851 = sub_22BB58898();
              sub_22BB67984(v1851, v1852, v1853, v1854);

              sub_22BB96CEC();
              *(v201 + 1312) = v1827;
              v1855 = sub_22BB58898();
              sub_22BB67984(v1855, v1856, v1857, v1858);

              sub_22BB70328();
              *(v201 + 1312) = v1828;
              v1859 = sub_22BB58898();
              sub_22BB67984(v1859, v1860, v1861, v1862);

              sub_22BB70328();
              *(v201 + 1312) = v2829;
              v1863 = sub_22BB58898();
              sub_22BB67984(v1863, v1864, v1865, v1866);

              sub_22BD606C4();
              *(v201 + 1312) = v1831;
              v1867 = sub_22BB58898();
              sub_22BB67984(v1867, v1868, v1869, v1870);
              v1871 = *(v201 + 4064);
              sub_22BD6256C();

              sub_22BD63B3C(&dword_22BB2C000, v2959, v2889, "[SessionCoordinator %{public}s] | [TX %{public}s] Client transaction turned in with %{public}ld events.");
              sub_22BD62500();
              swift_arrayDestroy();
              sub_22BB30458();
              sub_22BB679C0();
            }

LABEL_365:

            goto LABEL_379;
          }

          v2891 = *(v201 + 4064);
          v2036 = *(v201 + 3840);
          sub_22BD640F0();

          sub_22BD61DF4(*(v2036 + 8));
          v2037();
          v2038 = v2998;
          sub_22BD60B30();
          if (v309)
          {
            sub_22BD615A0();
            v1828 = v2998;
            v2039 = *(v201 + 3192);
            sub_22BB75638();
            sub_22BDB8444();
            sub_22BD62408();
            sub_22BB8E9C4();
            sub_22BDB5D24();
            v2040 = sub_22BD61CDC();
            v2041(v2040);
            sub_22BD649B8();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD62448();
            v2038 = v2998;
            sub_22BDBAF34();
            v2042 = sub_22BD62DF4();
            v2043(v2042, v2998);
          }

          v2044 = v2961;
          v2045 = sub_22BD46088(v2961);
          sub_22BD65110(v2045);
          v2046 = sub_22BB31614();
          v2048 = sub_22BB6F9D4(v2046, v2047, v2961);
          sub_22BD6471C(v2048, v2049);
          sub_22BB2F1B0();

          v2892 = v1824;
          if (v1828 < 2)
          {
            v39 = v2985;
            v35 = v2956;
            v2091 = v2868;
          }

          else
          {
            v2050 = *(v201 + 3960);
            sub_22BD62680();
            sub_22BDB63E4();
            sub_22BB322B0();
            v2051 = swift_allocObject();
            sub_22BB977E8(v2051);
            sub_22BB366B8();
            v2052 = swift_allocObject();
            *(v2052 + 16) = v2981;
            sub_22BB322B0();
            v2053 = swift_allocObject();
            sub_22BD60A50(v2053);
            v2837 = sub_22BDB77C4();
            v2853 = sub_22BDBB114();
            sub_22BD616A8();
            v1831 = swift_allocObject();
            sub_22BD6250C(v1831);
            sub_22BD616A8();
            v2054 = swift_allocObject();
            sub_22BD62E20(v2054);
            sub_22BB322B0();
            v2055 = swift_allocObject();
            sub_22BD60310(v2055);
            sub_22BB322B0();
            v2056 = swift_allocObject();
            sub_22BD60664(v2056);
            sub_22BD616A8();
            v2057 = swift_allocObject();
            *(v2057 + 16) = v2038;
            sub_22BD616A8();
            v2058 = swift_allocObject();
            *(v2058 + 16) = v2052;
            sub_22BB322B0();
            v2059 = swift_allocObject();
            sub_22BD60364(v2059);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F764();
            *(v2060 + 16) = v2061;
            *(v2060 + 24) = v1828;
            v2062 = sub_22BBCCA6C();
            sub_22BB34620(v2062);
            v2063[4] = v2064;
            v2063[5] = v1831;
            v2063[6] = sub_22BB89C08;
            v2063[7] = v2054;
            v2063[8] = sub_22BB89C7C;
            v2063[9] = v2056;
            v2063[10] = sub_22BB89C08;
            v2063[11] = v2057;
            v2063[12] = sub_22BB89C08;
            v2063[13] = v2058;
            v2063[14] = sub_22BB89C7C;
            v2063[15] = v2052;

            if (os_log_type_enabled(v2837, v2853))
            {
              sub_22BB67968();
              v2065 = sub_22BB3869C();
              sub_22BD64A74(v2065);
              LOWORD(v2038->isa) = 514;
              *(v13 + 2248) = &v2038->isa + 2;
              sub_22BB97DA8();
              *(v13 + 1296) = v1831;
              v2066 = sub_22BB8ABC0();
              sub_22BB67984(v2066, v2067, v2068, v2069);
              if (!v2998)
              {

                sub_22BB97DA8();
                *(v13 + 1296) = v2054;
                v2070 = sub_22BB8ABC0();
                sub_22BB67984(v2070, v2071, v2072, v2073);

                sub_22BD6064C();
                *(v13 + 1296) = v2056;
                v2074 = sub_22BB8ABC0();
                sub_22BB67984(v2074, v2075, v2076, v2077);

                sub_22BB97DA8();
                *(v13 + 1296) = v2057;
                v2078 = sub_22BB8ABC0();
                sub_22BB67984(v2078, v2079, v2080, v2081);

                sub_22BB97DA8();
                *(v13 + 1296) = v2058;
                v2082 = sub_22BB8ABC0();
                sub_22BB67984(v2082, v2083, v2084, v2085);

                *(v13 + 1288) = sub_22BB89C7C;
                *(v13 + 1296) = v2052;
                v2086 = sub_22BB8ABC0();
                sub_22BB67984(v2086, v2087, v2088, v2089);
                v2090 = *(v13 + 3960);
                sub_22BD624B8();

                sub_22BD636C8(&dword_22BB2C000, v2837, v2853, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains more than one query. Only the last one will be used as the current query.");
                sub_22BD61EE4();
                sub_22BB89BBC();
                sub_22BB679C0();
              }

LABEL_377:

              goto LABEL_378;
            }

            v2854 = *(v13 + 3960);
            sub_22BB96A7C();

            (v2991)(v2854, v1828);
            v39 = v2985;
            v2044 = v2961;
            v35 = v2956;
            v2091 = v2868;
            v1824 = v2892;
          }

          if ((v1824 & 1) == 0)
          {
            if (v2959)
            {
              v2106 = *(v13 + 3952);
              sub_22BD62680();
              sub_22BDB63E4();
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB758D8();
              *(v2107 + 16) = v2108;
              *(v2107 + 24) = v2091;
              sub_22BB366B8();
              *(swift_allocObject() + 16) = v2981;
              sub_22BB322B0();
              v2109 = swift_allocObject();
              sub_22BD5F71C(v2109);
              sub_22BB366B8();
              v2110 = swift_allocObject();
              sub_22BBC0200(v2110);
              v2855 = sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v2991 = swift_allocObject();
              sub_22BBC3BAC(v2991);
              sub_22BD616A8();
              v2827 = swift_allocObject();
              sub_22BB6FB2C(v2827);
              sub_22BB322B0();
              v2111 = swift_allocObject();
              sub_22BB31A44(v2111);
              sub_22BB322B0();
              v2112 = swift_allocObject();
              sub_22BB3DEE8(v2112);
              sub_22BD616A8();
              v2838 = swift_allocObject();
              LOBYTE(v2838[2].isa) = v2044;
              sub_22BD616A8();
              v2113 = swift_allocObject();
              *(v2113 + 16) = 8;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD607B4();
              *(v2114 + 16) = v2115;
              *(v2114 + 24) = v2109;
              sub_22BB322B0();
              v2116 = swift_allocObject();
              sub_22BB72DE4(v2116);
              sub_22BD616A8();
              v2117 = swift_allocObject();
              sub_22BD6430C(v2117);
              sub_22BD616A8();
              v2118 = swift_allocObject();
              *(v2118 + 16) = 8;
              sub_22BB322B0();
              v2119 = swift_allocObject();
              sub_22BD605A4(v2119);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD6079C();
              *(v2120 + 16) = v2121;
              *(v2120 + 24) = v2119;
              v2122 = sub_22BD61958();
              v2122[2].n128_u64[1] = sub_22BB53DC8(v2122, xmmword_22BDCE140);
              v2122[3].n128_u64[0] = v2123;
              v2122[3].n128_u64[1] = v2827;
              v2122[4].n128_u64[0] = sub_22BB89C7C;
              v2122[4].n128_u64[1] = v2112;
              v2122[5].n128_u64[0] = sub_22BB89C08;
              v1824 = v2838;
              v2122[5].n128_u64[1] = v2838;
              v2122[6].n128_u64[0] = sub_22BB89C08;
              v2122[6].n128_u64[1] = v2113;
              v2122[7].n128_u64[0] = sub_22BB89C7C;
              v2122[7].n128_u64[1] = v2116;
              v2122[8].n128_u64[0] = sub_22BB89C08;
              v2122[8].n128_u64[1] = v1828;
              v2122[9].n128_u64[0] = sub_22BB89C08;
              v2122[9].n128_u64[1] = v2118;
              v2122[10].n128_u64[0] = sub_22BD5F64C;
              v2122[10].n128_u64[1] = v35;

              sub_22BD64DB0();
              if (os_log_type_enabled(v2855, v2124))
              {
                sub_22BB67968();
                v2125 = sub_22BD619F0();
                *(v13 + 2224) = 0;
                *(v13 + 2232) = v2125;
                sub_22BB75908();
                *(v13 + 2216) = v2118;
                sub_22BB6B120();
                *(v13 + 1280) = v2991;
                v2126 = sub_22BB33564();
                sub_22BB67984(v2126, v2127, v2128, v2129);
                if (!v2998)
                {

                  sub_22BB6B120();
                  *(v13 + 1280) = v2827;
                  v2130 = sub_22BB33564();
                  sub_22BB67984(v2130, v2131, v2132, v2133);

                  sub_22BBC0960();
                  *(v13 + 1280) = v2112;
                  v2134 = sub_22BB33564();
                  sub_22BB67984(v2134, v2135, v2136, v2137);

                  sub_22BB6B120();
                  *(v13 + 1280) = v2838;
                  v2138 = sub_22BB33564();
                  sub_22BB67984(v2138, v2139, v2140, v2141);

                  sub_22BB6B120();
                  *(v13 + 1280) = v2113;
                  v2142 = sub_22BB33564();
                  sub_22BB67984(v2142, v2143, v2144, v2145);

                  sub_22BBC0960();
                  *(v13 + 1280) = v2116;
                  v2146 = sub_22BB33564();
                  sub_22BB67984(v2146, v2147, v2148, v2149);

                  sub_22BB6B120();
                  *(v13 + 1280) = v1828;
                  v2150 = sub_22BB33564();
                  sub_22BB67984(v2150, v2151, v2152, v2153);

                  sub_22BB6B120();
                  *(v13 + 1280) = v2118;
                  v2154 = sub_22BB33564();
                  sub_22BB67984(v2154, v2155, v2156, v2157);

                  sub_22BD6058C();
                  *(v13 + 1280) = v35;
                  v2158 = sub_22BB33564();
                  sub_22BB67984(v2158, v2159, v2160, v2161);
                  v2162 = *(v13 + 3952);
                  sub_22BD62624();

                  sub_22BD64DBC();
                  sub_22BD63B3C(&dword_22BB2C000, v2855, v2163, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains a query at index %ld. Queries should be the first event in their transaction. This may cause incorrect behavior.");
                  sub_22BB96A94();
                  sub_22BB30458();
                  sub_22BB679C0();
                }

                goto LABEL_386;
              }

              v2828 = *(v13 + 3952);
              sub_22BD6256C();

              sub_22BD61DF4(*(v2113 + 8));
              v2220();
            }

            v2221 = *(v13 + 4448);
            v2839 = *(v13 + 3672);
            sub_22BD64120();
            v2856 = v2222;
            sub_22BB96E08();
            v2223 = *(v13 + 3312);
            v2974 = *(v13 + 3224);
            v2044 = *(v13 + 3160);
            sub_22BD61BF4();
            v2824 = v2224;
            sub_22BD61A40();
            v2226 = sub_22BD61410(v2225);
            (logf)(v2226);
            sub_22BDB96A4();
            v2227 = sub_22BB2F324();
            (oslogc)(v2227);
            v1828 = v2961;
            v2228 = sub_22BB94E38();
            sub_22BD446BC(v2228, v2229, v2230);
            v2231 = sub_22BD63144();
            v2232(v2231);
            sub_22BB69550();
            sub_22BB34648();
            v2233 = sub_22BD63D44();
            MEMORY[0x2318A2C10](v2233);
            v2234 = sub_22BB94E38();
            sub_22BD446BC(v2234, v2235, v2236);
            sub_22BD61C44(v2824);
            v2237(v1824);
            sub_22BB97B18();
            sub_22BB34648();
            sub_22BD64B54();
            v35 = v2956;
            sub_22BD6392C();
            v1831 = v2828;
            sub_22BDB9704();
            v2238 = sub_22BB6FA6C();
            v2239(v2238);
            v2091 = v2868;
            v2830(v2828, v2856);
            sub_22BB331C8();
            sub_22BB336D0(v2240, v2241, v2242, v2974);
            sub_22BB707F8();
            v2243 = sub_22BB3ADA8();
            sub_22BB385F4(v2243, v2244, &unk_27D8E69E0, &qword_22BDC1660);
            v39 = v2985;
            v1824 = v2892;
          }

          sub_22BD618C4();
          v2245 = sub_22BB3627C();
          sub_22BB3CD70(v2245, v2246, &unk_27D8E69E0, &qword_22BDC1660);
          v2247 = swift_task_alloc();
          v2247[2] = v1828;
          v2247[3] = v2091;
          v2247[4] = v35;
          v2247[5] = v1831;
          v2248 = sub_22BB36C20();
          v28 = &qword_22BDC1660;
          v54 = v2998;
          sub_22BB72184(v2248, v2249, v2044);
          sub_22BD619C8();

          sub_22BD63F80();
          if (v1824)
          {
            v2250 = *(v13 + 3648);

            v2251 = sub_22BB37074();
            sub_22BB3CD70(v2251, v2252, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB93908();
            if (v309)
            {
              sub_22BB325EC(v2253, &unk_27D8E69E0, &qword_22BDC1660);
              v2254 = sub_22BB36B68();
              sub_22BBC0340(v2254, v2255);
              v50 = 0;
              v30 = 0;
              v32 = 0xE000000000000000;
            }

            else
            {
              v2287 = sub_22BBC3B70();
              v2288(v2287);
              sub_22BDB8F24();
              v50 = 1;
              v2289 = sub_22BB72084();
              sub_22BB336D0(v2289, v2290, v2291, v2247);
              v30 = sub_22BDB9A24();
              v2293 = v2292;
              v2294 = *(v1824 + 8);
              v2295 = sub_22BB345A8();
              v2296(v2295);
              v32 = v2293;
            }
          }

          else
          {
            v30 = *(v13 + 3656);
            v2256 = sub_22BB37074();
            sub_22BB3CD70(v2256, v2257, &unk_27D8E69E0, &qword_22BDC1660);
            v2258 = sub_22BB2F164(v30);
            if (v309)
            {
              goto LABEL_421;
            }

            sub_22BD63718();
            sub_22BB93884();
            v2266 = *(v39 + 16);
            v2267 = sub_22BB8B49C();
            sub_22BB938EC(v2267, v2268);
            v2269 = *(v1824 + 40);
            v32 = v1824 + 40;
            v2270 = *(v32 + 40);
            sub_22BD62BA8();
            v2271 = sub_22BB9744C();
            v2273 = v2272(v2271);
            v1831 = (v39 + 16);
            nullsub_1(v2273);
            swift_endAccess();
            v2274 = sub_22BB3B69C();
            sub_22BB3CD70(v2274, v2275, &unk_27D8E69E0, &qword_22BDC1660);
            v2276 = sub_22BB3A840();
            v2258 = sub_22BB31814(v2276, v2277, v2044);
            if (v309)
            {
              __break(1u);
LABEL_421:
              __break(1u);
LABEL_422:
              __break(1u);
LABEL_423:
              MEMORY[0x2822003F0](v2258, v2259, v2260, v2261, v2262, v2263, v2264, v2265, a9, a10, a11, a12);
              return;
            }

            sub_22BD61450();
            sub_22BD64538();
            v35 = &v2959[1];
            v28 = v2959[1].isa;
            v2278 = sub_22BB8AB74();
            (v28)(v2278);
            v2279 = sub_22BB72084();
            sub_22BB336D0(v2279, v2280, v2281, v32);
            v2282 = sub_22BB500C0();
            sub_22BB6BEE0(v2282, v2283, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB3CD70(v2998, v2044, &unk_27D8E69E0, &qword_22BDC1660);
            v2284 = sub_22BB34748();
            v2258 = sub_22BB31814(v2284, v2285, v39);
            if (v309)
            {
              goto LABEL_422;
            }

            sub_22BD64174();

            sub_22BDB9A24();
            sub_22BD64D20();
            v2286 = sub_22BB53C48();
            (v28)(v2286);
            v50 = 1;
            v39 = v2985;
          }

          v2297 = sub_22BBBE290(v2932);
          sub_22BB325EC(v2297, &unk_27D8E69E0, &qword_22BDC1660);
          sub_22BB53C48();
          sub_22BB705A8();
LABEL_305:
          sub_22BBC02B0();
          if (v1831)
          {
            v2298 = *(v13 + 4480);
            sub_22BB707F8();
            v2299 = *(v39 + 16);

            v2300 = swift_task_alloc();
            v2301 = sub_22BB702D8(v2300);
            *v2301 = v2302;
            sub_22BB34F38();
            sub_22BB33430();

            sub_22BB95A50();
            return;
          }

          break;
      }

      break;
    }
  }

  sub_22BD63228();
  sub_22BB322B0();
  v2356 = swift_allocObject();
  sub_22BB922D8(v2356);
  sub_22BB366B8();
  v2357 = swift_allocObject();
  sub_22BBBE07C(v2357);
  sub_22BB322B0();
  v2358 = swift_allocObject();
  sub_22BD60058(v2358);
  sub_22BDB77C4();
  LODWORD(v2985) = sub_22BDBB134();
  sub_22BD616A8();
  v2359 = swift_allocObject();
  sub_22BD62F80(v2359);
  sub_22BD616A8();
  v2360 = swift_allocObject();
  sub_22BD61F00(v2360);
  sub_22BB322B0();
  v2361 = swift_allocObject();
  sub_22BBC0614(v2361);
  sub_22BB322B0();
  swift_allocObject();
  sub_22BD5F74C();
  *(v2362 + 16) = v2363;
  *(v2362 + 24) = v2361;
  sub_22BD616A8();
  v2364 = swift_allocObject();
  sub_22BD64C40(v2364);
  sub_22BD616A8();
  v2365 = swift_allocObject();
  sub_22BB89CA8(v2365);
  sub_22BB322B0();
  v2366 = swift_allocObject();
  sub_22BBBD2AC(v2366);
  sub_22BB322B0();
  swift_allocObject();
  sub_22BD5F764();
  v2368 = sub_22BD620AC(v2367);
  sub_22BB348E0(v2368);
  v2369[4] = v2370;
  v2369[5] = v13;
  v2369[6] = sub_22BB89C08;
  v2369[7] = v2360;
  v2369[8] = sub_22BB89C7C;
  v2369[9] = v13;
  v2369[10] = sub_22BB89C08;
  v2369[11] = v28;
  v2369[12] = sub_22BB89C08;
  v2369[13] = v30;
  v2369[14] = sub_22BB89C7C;
  v2369[15] = v50;

  sub_22BB93DBC();
  if (os_log_type_enabled(v2366, v2371))
  {
    v2983 = v2366;
    sub_22BB67968();
    v2372 = sub_22BD619F0();
    *(v32 + 2040) = 0;
    *(v32 + 2048) = v2372;
    sub_22BD641F8(514);
    *(v32 + 2032) = v2373;
    *(v32 + 1048) = sub_22BB89C08;
    *(v32 + 1056) = v13;
    v2374 = sub_22BD5FCD8();
    v54 = v2998;
    sub_22BB67984(v2374, v2375, v2376, v2377);
    if (v2998)
    {

      goto LABEL_321;
    }

    *(v32 + 1048) = sub_22BB89C08;
    *(v32 + 1056) = v2360;
    v2470 = sub_22BD5FCD8();
    sub_22BB67984(v2470, v2471, v2472, v2473);
LABEL_346:

    *(v32 + 1048) = sub_22BB89C7C;
    *(v32 + 1056) = v152;
    v2539 = sub_22BD5FCD8();
    sub_22BB67984(v2539, v2540, v2541, v2542);
    if (!v54)
    {

      sub_22BD61044();
      *(v32 + 1056) = v28;
      v2572 = sub_22BD5FCD8();
      sub_22BB67984(v2572, v2573, v2574, v2575);

      *(v32 + 1048) = sub_22BB89C08;
      *(v32 + 1056) = v30;
      v2584 = sub_22BD5FCD8();
      sub_22BB67984(v2584, v2585, v2586, v2587);

      *(v32 + 1048) = sub_22BB89C7C;
      *(v32 + 1056) = v50;
      v2614 = sub_22BD5FCD8();
      sub_22BB67984(v2614, v2615, v2616, v2617);
      sub_22BD63154();
      sub_22BD61E34();
      sub_22BD63EE0(v2677, v2983, v2678, v2679);
      sub_22BD619D4();
      sub_22BD6193C();
      sub_22BB679C0();
    }

    goto LABEL_379;
  }

  sub_22BD631E4();

  v2382 = sub_22BD623D0();
  v2383(v2382);
  sub_22BD623C0();
  sub_22BB31B88();
  swift_beginAccess();
  sub_22BD64A14();
  sub_22BB31B88();
  swift_beginAccess();
  sub_22BD61A94();
  if (v309)
  {
    if (v2384)
    {
      sub_22BD65368();
      sub_22BB322B0();
      v2385 = swift_allocObject();
      sub_22BB351E8(v2385);
      sub_22BB366B8();
      v2386 = swift_allocObject();
      sub_22BD6227C(v2386);
      sub_22BB322B0();
      v2387 = swift_allocObject();
      sub_22BB52D3C(v2387);
      sub_22BDB77C4();
      sub_22BDBB134();
      sub_22BD616A8();
      v2388 = swift_allocObject();
      sub_22BD60C88(v2388);
      sub_22BD616A8();
      v2389 = swift_allocObject();
      sub_22BD60EF4(v2389);
      sub_22BB322B0();
      v54 = swift_allocObject();
      sub_22BB70160(v54);
      sub_22BB322B0();
      swift_allocObject();
      sub_22BB97CD8();
      *(v2390 + 16) = v2391;
      *(v2390 + 24) = v54;
      sub_22BD616A8();
      v2392 = swift_allocObject();
      sub_22BD642D0(v2392);
      sub_22BD616A8();
      v2393 = swift_allocObject();
      sub_22BB89CA8(v2393);
      sub_22BB322B0();
      v2394 = swift_allocObject();
      sub_22BD602C4(v2394);
      sub_22BB322B0();
      swift_allocObject();
      sub_22BD5F89C();
      v2396 = sub_22BD617D4(v2395);
      sub_22BB3602C(v2396);
      v2397[6] = sub_22BB89C08;
      v2397[7] = v13;
      v2397[8] = sub_22BB89C7C;
      v2397[9] = v2360;
      v2397[10] = sub_22BB89C08;
      v2397[11] = v50;
      v2397[12] = sub_22BB89C08;
      v2397[13] = v30;
      v2397[14] = sub_22BB89C7C;
      v2397[15] = v32;

      sub_22BD62518();
      if (os_log_type_enabled(v54, v2398))
      {
        sub_22BD65350();
        v2399 = sub_22BBC01B4();
        *(v32 + 2008) = 0;
        *(v32 + 2016) = v2399;
        sub_22BD60D8C();
        *(v32 + 2000) = v2400;
        *(v32 + 1032) = sub_22BB89C08;
        *(v32 + 1040) = v28;
        v2401 = sub_22BD60178();
        v54 = v2998;
        sub_22BB67984(v2401, v2402, v2403, v2404);
        if (v2998)
        {
          goto LABEL_344;
        }

        *(v32 + 1032) = sub_22BB89C08;
        *(v32 + 1040) = v13;
        v2405 = sub_22BD60178();
        sub_22BB67984(v2405, v2406, v2407, v2408);

        *(v32 + 1032) = sub_22BB89C7C;
        *(v32 + 1040) = v2360;
        v2409 = sub_22BD60178();
        sub_22BB67984(v2409, v2410, v2411, v2412);

        sub_22BD628FC();
        *(v32 + 1040) = v50;
        v2413 = sub_22BD60178();
        sub_22BB67984(v2413, v2414, v2415, v2416);

        sub_22BB3B510();
        *(v2417 + 1032) = v2418;
        *(v2417 + 1040) = v2985;
        sub_22BD611DC(v2417);

        sub_22BB70564();
        *(v2419 + 1032) = v2420;
        *(v2419 + 1040) = v32;
        sub_22BD611DC(v2419);
        v2421 = *(v13 + 4000);
        sub_22BD61A18();

        v2424 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work and be sent to client.";
        goto LABEL_411;
      }

      v2546 = *(v32 + 4000);
      goto LABEL_352;
    }

    sub_22BD65308();
    sub_22BB322B0();
    v2478 = swift_allocObject();
    sub_22BB351E8(v2478);
    sub_22BB366B8();
    v2479 = swift_allocObject();
    sub_22BD6227C(v2479);
    sub_22BB322B0();
    v2480 = swift_allocObject();
    sub_22BB52D3C(v2480);
    sub_22BDB77C4();
    sub_22BDBB134();
    sub_22BD616A8();
    v2481 = swift_allocObject();
    sub_22BD60C88(v2481);
    sub_22BD616A8();
    v2482 = swift_allocObject();
    sub_22BD60EF4(v2482);
    sub_22BB322B0();
    v54 = swift_allocObject();
    sub_22BB70160(v54);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BB97CD8();
    *(v2483 + 16) = v2484;
    *(v2483 + 24) = v54;
    sub_22BD616A8();
    v2485 = swift_allocObject();
    sub_22BD642D0(v2485);
    sub_22BD616A8();
    v2486 = swift_allocObject();
    sub_22BB89CA8(v2486);
    sub_22BB322B0();
    v2487 = swift_allocObject();
    sub_22BD602C4(v2487);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BD5F89C();
    v2489 = sub_22BD617D4(v2488);
    sub_22BB3602C(v2489);
    v2490[6] = sub_22BB89C08;
    v2490[7] = v13;
    v2490[8] = sub_22BB89C7C;
    v2490[9] = v2360;
    v2490[10] = sub_22BB89C08;
    v2490[11] = v50;
    v2490[12] = sub_22BB89C08;
    v2490[13] = v30;
    v2490[14] = sub_22BB89C7C;
    v2490[15] = v32;

    sub_22BD62518();
    if (!os_log_type_enabled(v54, v2491))
    {
      v2548 = *(v32 + 3992);
      goto LABEL_352;
    }

    sub_22BD65350();
    v2492 = sub_22BBC01B4();
    *(v32 + 1976) = 0;
    *(v32 + 1984) = v2492;
    sub_22BD60D8C();
    *(v32 + 1968) = v2493;
    *(v32 + 1560) = sub_22BB89C08;
    *(v32 + 1568) = v28;
    v2494 = sub_22BD60150();
    v54 = v2998;
    sub_22BB67984(v2494, v2495, v2496, v2497);
    if (v2998)
    {
      goto LABEL_344;
    }

    *(v32 + 1560) = sub_22BB89C08;
    *(v32 + 1568) = v13;
    v2498 = sub_22BD60150();
    sub_22BB67984(v2498, v2499, v2500, v2501);

    *(v32 + 1560) = sub_22BB89C7C;
    *(v32 + 1568) = v2360;
    v2502 = sub_22BD60150();
    sub_22BB67984(v2502, v2503, v2504, v2505);

    sub_22BB75A20();
    *(v32 + 1568) = v50;
    v2506 = sub_22BD60150();
    sub_22BB67984(v2506, v2507, v2508, v2509);

    sub_22BB3B510();
    *(v2510 + 1560) = v2511;
    *(v2510 + 1568) = v2985;
    sub_22BB97758(v2510);

    sub_22BB70564();
    *(v2512 + 1560) = v2513;
    *(v2512 + 1568) = v32;
    sub_22BB97758(v2512);
    v2514 = *(v13 + 3992);
    sub_22BD61A18();

    v2424 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work, but will not be sent to client.";
  }

  else
  {
    if (v2384)
    {
      sub_22BD65320();
      sub_22BB322B0();
      v2429 = swift_allocObject();
      sub_22BB351E8(v2429);
      sub_22BB366B8();
      v2430 = swift_allocObject();
      sub_22BD6227C(v2430);
      sub_22BB322B0();
      v2431 = swift_allocObject();
      sub_22BB52D3C(v2431);
      sub_22BDB77C4();
      sub_22BDBB134();
      sub_22BD616A8();
      v2432 = swift_allocObject();
      sub_22BD60C88(v2432);
      sub_22BD616A8();
      v2433 = swift_allocObject();
      sub_22BD60EF4(v2433);
      sub_22BB322B0();
      v54 = swift_allocObject();
      sub_22BB70160(v54);
      sub_22BB322B0();
      swift_allocObject();
      sub_22BB97CD8();
      *(v2434 + 16) = v2435;
      *(v2434 + 24) = v54;
      sub_22BD616A8();
      v2436 = swift_allocObject();
      sub_22BD642D0(v2436);
      sub_22BD616A8();
      v2437 = swift_allocObject();
      sub_22BB89CA8(v2437);
      sub_22BB322B0();
      v2438 = swift_allocObject();
      sub_22BD602C4(v2438);
      sub_22BB322B0();
      swift_allocObject();
      sub_22BD5F89C();
      v2440 = sub_22BD617D4(v2439);
      sub_22BB3602C(v2440);
      v2441[6] = sub_22BB89C08;
      v2441[7] = v13;
      v2441[8] = sub_22BB89C7C;
      v2441[9] = v2360;
      v2441[10] = sub_22BB89C08;
      v2441[11] = v50;
      v2441[12] = sub_22BB89C08;
      v2441[13] = v30;
      v2441[14] = sub_22BB89C7C;
      v2441[15] = v32;

      sub_22BD62518();
      if (os_log_type_enabled(v54, v2442))
      {
        sub_22BD65350();
        v2443 = sub_22BBC01B4();
        *(v32 + 1944) = 0;
        *(v32 + 1952) = v2443;
        sub_22BD60D8C();
        *(v32 + 1936) = v2444;
        *(v32 + 984) = sub_22BB89C08;
        *(v32 + 992) = v28;
        v2445 = sub_22BD60164();
        v54 = v2998;
        sub_22BB67984(v2445, v2446, v2447, v2448);
        if (v2998)
        {
          goto LABEL_344;
        }

        *(v32 + 984) = sub_22BB89C08;
        *(v32 + 992) = v13;
        v2449 = sub_22BD60164();
        sub_22BB67984(v2449, v2450, v2451, v2452);

        *(v32 + 984) = sub_22BB89C7C;
        *(v32 + 992) = v2360;
        v2453 = sub_22BD60164();
        sub_22BB67984(v2453, v2454, v2455, v2456);

        sub_22BB89B70();
        *(v32 + 992) = v50;
        v2457 = sub_22BD60164();
        sub_22BB67984(v2457, v2458, v2459, v2460);

        sub_22BB3B510();
        *(v2461 + 984) = v2462;
        *(v2461 + 992) = v2985;
        sub_22BD611BC(v2461);

        sub_22BB70564();
        *(v2463 + 984) = v2464;
        *(v2463 + 992) = v32;
        sub_22BD611BC(v2463);
        v2465 = *(v13 + 3976);
        sub_22BD61A18();

        v2424 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work, but will be sent to client.";
        goto LABEL_411;
      }

      v2547 = *(v32 + 3976);
LABEL_352:
      v473 = *(v32 + 3840);
      v2550 = *(v32 + 3832);

      v2551 = sub_22BD623D0();
      v2552(v2551);
      v2553 = sub_22BB756F4(v2998);
      if (v2553 != v2554)
      {
        sub_22BB97DE8();
        if (v2555 != v333)
        {
          __break(1u);
        }

        else if (v54 < v473)
        {
          sub_22BB73FE8();
          do
          {
            sub_22BD60880();
            v2556 = sub_22BD60D38();
            nullsub_1(v2556);

            sub_22BB93884();
            sub_22BB52814();
            sub_22BBBEC20();
            v2557 = sub_22BDB9AB4();
            nullsub_1(v2557);
            v2558 = sub_22BB97B18();
            sub_22BB3CD70(v2558, v2360, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB93884();
            sub_22BB52814();
            v2559 = sub_22BDB9974();
            nullsub_1(v2559);
            sub_22BD65278();
            sub_22BB93884();
            sub_22BB52814();
            v2560 = sub_22BD65230();
            nullsub_1(v2560);
            sub_22BD61C1C();
          }

          while (!v309);
          swift_endAccess();
          goto LABEL_359;
        }

        __break(1u);
LABEL_415:
        __break(1u);
        goto LABEL_416;
      }

LABEL_359:
      v2561 = *(v32 + 4632);
      sub_22BBE6DE0(&qword_27D8E6570, &qword_22BDCFBF0);
      sub_22BB97200();
      v2562 = sub_22BDBAB14();
      sub_22BD631C0(v2562);

      v2563 = swift_task_alloc();
      v2564 = sub_22BD64B78(v2563);
      *v2564 = v2565;
      sub_22BB34818();
      sub_22BD61554();
      sub_22BB33430();

      sub_22BD59BE8(v2566);
      return;
    }

    sub_22BD652F0();
    sub_22BB322B0();
    v2515 = swift_allocObject();
    sub_22BB351E8(v2515);
    sub_22BB366B8();
    v2516 = swift_allocObject();
    sub_22BD6227C(v2516);
    sub_22BB322B0();
    v2517 = swift_allocObject();
    sub_22BB52D3C(v2517);
    sub_22BDB77C4();
    sub_22BDBB134();
    sub_22BD616A8();
    v2518 = swift_allocObject();
    sub_22BD60C88(v2518);
    sub_22BD616A8();
    v2519 = swift_allocObject();
    sub_22BD60EF4(v2519);
    sub_22BB322B0();
    v54 = swift_allocObject();
    sub_22BB70160(v54);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BB97CD8();
    *(v2520 + 16) = v2521;
    *(v2520 + 24) = v54;
    sub_22BD616A8();
    v2522 = swift_allocObject();
    sub_22BD642D0(v2522);
    sub_22BD616A8();
    v2523 = swift_allocObject();
    sub_22BB89CA8(v2523);
    sub_22BB322B0();
    v2524 = swift_allocObject();
    sub_22BD602C4(v2524);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BD5F89C();
    v2526 = sub_22BD617D4(v2525);
    sub_22BB3602C(v2526);
    v2527[6] = sub_22BB89C08;
    v2527[7] = v13;
    v2527[8] = sub_22BB89C7C;
    v2527[9] = v2360;
    v2527[10] = sub_22BB89C08;
    v2527[11] = v50;
    v2527[12] = sub_22BB89C08;
    v2527[13] = v30;
    v2527[14] = sub_22BB89C7C;
    v2527[15] = v32;

    sub_22BD62518();
    if (!os_log_type_enabled(v54, v2528))
    {
      v2549 = *(v32 + 3968);
      goto LABEL_352;
    }

    sub_22BD65350();
    v2529 = sub_22BBC01B4();
    *(v32 + 1912) = 0;
    *(v32 + 1920) = v2529;
    sub_22BD60D8C();
    *(v32 + 1904) = v2530;
    *(v32 + 1016) = sub_22BB89C08;
    *(v32 + 1024) = v28;
    v2531 = sub_22BD6013C();
    v54 = v2998;
    sub_22BB67984(v2531, v2532, v2533, v2534);
    if (v2998)
    {
      goto LABEL_344;
    }

    *(v32 + 1016) = sub_22BB89C08;
    *(v32 + 1024) = v13;
    v2576 = sub_22BD6013C();
    sub_22BB67984(v2576, v2577, v2578, v2579);

    *(v32 + 1016) = sub_22BB89C7C;
    *(v32 + 1024) = v2360;
    v2588 = sub_22BD6013C();
    sub_22BB67984(v2588, v2589, v2590, v2591);

    sub_22BD628E4();
    *(v32 + 1024) = v50;
    v2618 = sub_22BD6013C();
    sub_22BB67984(v2618, v2619, v2620, v2621);

    sub_22BB3B510();
    *(v2680 + 1016) = v2681;
    *(v2680 + 1024) = v2985;
    sub_22BD6119C(v2680);

    sub_22BB70564();
    *(v2722 + 1016) = v2723;
    *(v2722 + 1024) = v32;
    sub_22BD6119C(v2722);
LABEL_410:
    v2757 = *(v2996 + 3968);
    sub_22BD61A18();

    v2424 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work or be sent to client.";
  }

LABEL_411:
  sub_22BD632D4(&dword_22BB2C000, v2422, v2423, v2424);
  sub_22BD619D4();
  sub_22BD6193C();
  sub_22BB679C0();
}

uint64_t sub_22BD58490()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 4784);
  v3 = *(v1 + 2496);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  v6 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BD58588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[597];
  v14 = v12[596];
  v15 = v12[571];
  v16 = v12[568];
  v17 = v12[544];
  v18 = v12[478];
  v19 = v12[312];

  sub_22BC5448C();
  sub_22BB705A8();
  sub_22BB325EC(v18, &qword_27D8E3218, &qword_22BDBE390);
  v20 = sub_22BD00E3C();
  sub_22BB74044(v20, v21, v17);
  v22 = v12[568];
  v23 = v12[550];
  v24 = v12[547];
  v25 = v12[546];
  v26 = v12[545];
  v27 = v12[544];
  v28 = v12[543];
  v29 = v12[542];
  v30 = v12[541];
  v31 = v12[537];
  v45 = v12[536];
  v46 = v12[535];
  v47 = v12[534];
  v48 = v12[533];
  v49 = v12[532];
  v50 = v12[531];
  v51 = v12[530];
  v52 = v12[527];
  v53 = v12[526];
  v54 = v12[525];
  v55 = v12[524];
  v56 = v12[523];
  v57 = v12[522];
  v58 = v12[521];
  v59 = v12[518];
  v60 = v12[517];
  v61 = v12[516];
  v62 = v12[512];
  v63 = v12[511];
  v64 = v12[510];
  v65 = v12[509];
  v66 = v12[508];
  v67 = v12[507];
  v68 = v12[506];
  v69 = v12[505];
  v70 = v12[504];
  v71 = v12[503];
  v72 = v12[502];
  v73 = v12[501];
  v74 = v12[500];
  v75 = v12[499];
  v76 = v12[498];
  v77 = v12[497];
  v78 = v12[496];
  v79 = v12[495];
  v80 = v12[494];
  v81 = v12[493];
  v82 = v12[492];
  v83 = v12[491];
  v84 = v12[490];
  v85 = v12[489];
  v86 = v12[488];
  v87 = v12[487];
  v88 = v12[486];
  v89 = v12[485];
  v90 = v12[484];
  v91 = v12[483];
  v92 = v12[482];
  v93 = v12[481];
  v94 = v12[478];
  v95 = v12[477];
  v96 = v12[476];
  v97 = v12[475];
  v98 = v12[474];
  v99 = v12[473];
  v100 = v12[472];
  v101 = v12[471];
  v102 = v12[470];
  v103 = v12[469];
  v104 = v12[468];
  v105 = v12[467];
  v106 = v12[464];
  v107 = v12[461];
  v108 = v12[460];
  v109 = v12[459];
  v110 = v12[458];
  v111 = v12[457];
  v112 = v12[456];
  v113 = v12[455];
  v114 = v12[454];
  v115 = v12[453];
  v116 = v12[452];
  v117 = v12[448];
  v118 = v12[447];
  v119 = v12[446];
  v120 = v12[445];
  v121 = v12[444];
  v122 = v12[443];
  v123 = v12[440];
  v124 = v12[439];
  v125 = v12[438];
  v126 = v12[435];
  v127 = v12[434];
  v128 = v12[432];
  v129 = v12[431];
  v130 = v12[427];
  v131 = v12[426];
  v132 = v12[425];
  v133 = v12[424];
  v134 = v12[420];
  v135 = v12[419];
  v136 = v12[417];
  v137 = v12[416];
  v138 = v12[413];
  v139 = v12[412];
  v140 = v12[411];
  v141 = v12[410];
  v142 = v12[409];
  v143 = v12[408];
  v144 = v12[407];
  v145 = v12[406];
  v146 = v12[402];
  v147 = v12[399];
  v148 = v12[398];
  v149 = v12[395];
  v150 = v12[394];
  v151 = v12[391];
  v152 = v12[390];
  v153 = v12[387];
  v154 = v12[384];
  v155 = v12[383];
  v156 = v12[382];
  v157 = v12[379];
  v158 = v12[378];
  v159 = v12[377];
  v160 = v12[373];
  v161 = v12[372];
  v162 = v12[369];
  v163 = v12[368];
  v164 = v12[365];
  v165 = v12[364];
  v166 = v12[363];
  v167 = v12[360];
  v168 = v12[358];
  v169 = v12[357];
  v170 = v12[356];
  v171 = v12[353];
  v172 = v12[352];
  v173 = v12[351];
  v174 = v12[348];
  v175 = v12[347];
  v176 = v12[346];
  v177 = v12[343];
  v178 = v12[340];
  v179 = v12[337];
  v180 = v12[334];
  v181 = v12[331];
  v182 = v12[328];
  v183 = v12[325];
  v184 = v12[322];
  v185 = v12[319];
  v186 = v12[318];
  v187 = v12[315];

  sub_22BB35CBC();
  sub_22BB34648();
  v32 = v12[197];

  v33 = *(v25 + 8);
  v34 = sub_22BB34FB8();
  v35(v34);

  sub_22BB2F09C();
  sub_22BB33430();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_22BD58F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a4;
  v54 = a5;
  v51 = a2;
  v52 = a3;
  v61 = a6;
  v7 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - v9;
  v11 = sub_22BDB9B54();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB43E4();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v56 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BDB8C54();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v59 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BDB9774();
  v49 = *(v20 - 8);
  v50 = v20;
  v21 = *(v49 + 64);
  MEMORY[0x28223BE20](v20);
  v48 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BDB96E4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22BDB9B04();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(type metadata accessor for EventPayloadWithPreassignedID(0) + 20);
  v60 = a1;
  v55 = v33;
  sub_22BDB9AD4();
  v34 = (*(v29 + 88))(v32, v28);
  if (v34 != *MEMORY[0x277D1E7F8] && v34 != *MEMORY[0x277D1E7E8])
  {
    if (v34 == *MEMORY[0x277D1E7F0] || v34 == *MEMORY[0x277D1E7E0])
    {
      goto LABEL_12;
    }

    (*(v29 + 8))(v32, v28);
  }

  sub_22BB3CD70(v54, v10, &unk_27D8E69E0, &qword_22BDC1660);
  if (sub_22BB3AA28(v10, 1, v11) == 1)
  {
    sub_22BB325EC(v10, &unk_27D8E69E0, &qword_22BDC1660);
LABEL_12:
    v37 = v51;
    v38 = *(*v51 + 128);
    swift_beginAccess();
    (*(v24 + 16))(v27, v37 + v38, v23);
    v39 = v48;
    sub_22BDB96A4();
    (*(v24 + 8))(v27, v23);
    v40 = v56;
    (*(v57 + 16))(v56, v60, v58);
    MEMORY[0x2318A2C10](v40);
    sub_22BDB9724();
    return (*(v49 + 8))(v39, v50);
  }

  v43 = v46;
  v42 = v47;
  (*(v47 + 32))(v46, v10, v11);
  v44 = v56;
  (*(v57 + 16))(v56, v60, v58);
  MEMORY[0x2318A2C10](v44);
  sub_22BDB9A44();
  return (*(v42 + 8))(v43, v11);
}

uint64_t sub_22BD594AC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a3;
}

uint64_t sub_22BD594F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6580, &qword_22BDCE480);
    v6 = sub_22BDBB524();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;
  sub_22BD5D89C(a1, a2, a3, 1, &v8);
  return v8;
}

uint64_t sub_22BD595B0()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v2 + 848);
  *v4 = *v1;
  *(v3 + 856) = v0;

  v6 = *(v2 + 360);
  if (v0)
  {
    v7 = sub_22BD598D0;
  }

  else
  {
    v7 = sub_22BD596D0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22BD596D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB68EA4();
  sub_22BD64F50();
  sub_22BDB7744();
  sub_22BD64580();
  sub_22BDBB1C4();
  if (sub_22BD646BC())
  {
    sub_22BD64454();
    sub_22BDB77B4();

    v17 = *(v15 + 88);
    v18 = sub_22BB331D4();
    if (v19(v18) == v14)
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v13[47] + 8))(v13[48], v13[46]);
      v20 = "Accept End";
    }

    sub_22BBBE7F8();
    v54 = v13[101];
    v26 = v13[100];
    a10 = v13[63];
    a11 = v13[65];
    v27 = v13[58];
    v28 = v13[56];
    v50 = v29;
    v52 = v13[55];
    v30 = v13[54];
    a12 = v13[53];
    v31 = sub_22BB37F30();
    *v31 = 0;
    sub_22BDB7714();
    sub_22BD6424C();
    _os_signpost_emit_with_name_impl(v32, v33, v34, v35, v36, v20, v31, 2u);
    sub_22BB2F194();

    v37 = sub_22BB393C4();
    v50(v37);
    v54(a11, a10);
    (*(v30 + 8))(v52, a12);
  }

  else
  {
    sub_22BD64818();
    v53 = v13[101];
    sub_22BD64204();
    v51 = v21;
    v23 = v13[53];
    v22 = v13[54];

    v24 = sub_22BB32E04();
    v16(v24);
    v25 = sub_22BB2F0E0();
    v53(v25);
    (*(v22 + 8))(v51, v23);
  }

  sub_22BD6484C();
  v38 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v13[91] = v39;
  *v39 = v40;
  sub_22BB6BBD8();
  sub_22BB3CEF4();

  return MEMORY[0x2822003E8](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_22BD598D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t))
{
  sub_22BB68EA4();
  v15 = v12[86];
  v16 = v12[84];
  v17 = v12[76];
  sub_22BDB63E4();
  sub_22BB32CE8();
  v18 = sub_22BB2F324();
  sub_22BB335C0(v18, v19);
  v20 = sub_22BDB77C4();
  sub_22BDBB114();
  sub_22BB93938();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v12[107];
  v24 = v12[84];
  v25 = v12[76];
  v26 = v12[74];
  v27 = (v12[75] + 8);
  if (v22)
  {
    sub_22BB31AD8();
    sub_22BB6B650();
    *v26 = 136446210;
    v14 = sub_22BDB5624();
    sub_22BB3093C();
    sub_22BB34648();
    v28 = sub_22BD64D44();
    v31 = sub_22BB32EE0(v28, v29, v30);

    *(v26 + 4) = v31;
    sub_22BD63B54(&dword_22BB2C000, v20, v13, "[SessionCoordinator %{public}s] Failed to send status update to client.");
    sub_22BB35808();
    sub_22BB3A3D8();

    (*v27)(v25, v26);
  }

  else
  {

    sub_22BB3093C();
    sub_22BB34648();
    v32 = *v27;
    v33 = sub_22BB8E9D0();
    v35(v33, v34);
  }

  sub_22BD64F50();
  sub_22BDB7744();
  sub_22BD64580();
  sub_22BDBB1C4();
  if (sub_22BD646BC())
  {
    sub_22BD64454();
    sub_22BDB77B4();

    v36 = *(v26 + 88);
    v37 = sub_22BB331D4();
    if (v38(v37) == v13)
    {
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12[47] + 8))(v12[48], v12[46]);
      v39 = "Accept End";
    }

    sub_22BBBE7F8();
    v72 = v12[101];
    v45 = v12[100];
    a9 = v12[63];
    a10 = v12[65];
    v46 = v12[58];
    v47 = v12[56];
    a12 = v48;
    v70 = v12[55];
    v49 = v12[54];
    a11 = v12[53];
    v50 = sub_22BB37F30();
    *v50 = 0;
    sub_22BDB7714();
    sub_22BD6424C();
    _os_signpost_emit_with_name_impl(v51, v52, v53, v54, v55, v39, v50, 2u);
    sub_22BB2F194();

    v56 = sub_22BB393C4();
    a12(v56);
    v72(a10, a9);
    (*(v49 + 8))(v70, a11);
  }

  else
  {
    sub_22BD64818();
    v71 = v12[101];
    sub_22BD64204();
    v69 = v40;
    v42 = v12[53];
    v41 = v12[54];

    v43 = sub_22BB32E04();
    v14(v43);
    v44 = sub_22BB2F0E0();
    v71(v44);
    (*(v41 + 8))(v69, v42);
  }

  sub_22BD6484C();
  v57 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v12[91] = v58;
  *v58 = v59;
  sub_22BB6BBD8();
  sub_22BB3CEF4();

  return MEMORY[0x2822003E8](v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
}

uint64_t sub_22BD59BE8(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_22BD59C08, v1, 0);
}

uint64_t sub_22BD59C08()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  sub_22BD649FC(*(v0 + 128));
  v3 = *(v2 + *(v1 + 120));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v0 + 120);
      sub_22BB690EC(v5, v0 + 80);
      v8 = *(v0 + 104);
      v9 = *(v0 + 112);
      v10 = sub_22BB69FEC((v0 + 80), v8);
      v11 = v7;
      v12 = v10;
      (*(v9 + 24))(v11, v8, v9);
      if (v13)
      {
        sub_22BD63450();
        v15 = v14;
        sub_22BB690EC(v0 + 80, v0 + 16);
        *(v0 + 56) = v12;
        *(v0 + 64) = v8;
        *(v0 + 72) = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v6 + 16);
          sub_22BB305BC();
          sub_22BD91498();
          v6 = v23;
        }

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_22BB2F138(v16);
          sub_22BD91498();
          v6 = v24;
        }

        *(v6 + 16) = v17 + 1;
        v18 = (v6 + (v17 << 6));
        v19 = *(v0 + 16);
        v20 = *(v0 + 32);
        v21 = *(v0 + 64);
        v18[4] = *(v0 + 48);
        v18[5] = v21;
        v18[2] = v19;
        v18[3] = v20;
      }

      sub_22BB32FA4((v0 + 80));
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  sub_22BB39738();
  sub_22BB3A1C0();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_22BD59D78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SessionCoordinatorCommand(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_22BDB77D4();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = sub_22BDB5E34();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = *(*(sub_22BBE6DE0(&qword_27D8E64B0, &qword_22BDCE3B8) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = sub_22BBE6DE0(&qword_27D8E64B8, &qword_22BDCE3C0);
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD59FCC, v1, 0);
}

uint64_t sub_22BD59FCC()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 24);
  *(v0 + 152) = sub_22BD48BF8();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BD5A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB2F35C();
  v13 = v12[18];
  v14 = v12[2];
  v15 = v12[3];
  sub_22BBE6DE0(&qword_27D8E6478, &qword_22BDCE328);
  sub_22BDBAF64();
  v16 = qword_28142AC88;
  v12[20] = *(*v15 + 176);
  v12[21] = v16;
  v17 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v12[22] = v18;
  *v18 = v19;
  v20 = sub_22BD5FAA8(v18);

  return MEMORY[0x2822003E8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_22BD5A0EC()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD5A1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB34E84();
  v13 = v12[15];
  v14 = v12[12];
  v15 = sub_22BB3A190();
  v17 = sub_22BB3AA28(v15, v16, v14);
  v18 = v12[19];
  if (v17 == 1)
  {
    v19 = v12[14];
    v20 = v12[11];
    v21 = v12[8];
    v22 = v12[5];
    (*(v12[17] + 8))(v12[18], v12[16]);

    sub_22BB2F09C();
    sub_22BB37AC0();

    __asm { BRAA            X1, X16 }
  }

  v25 = v12[14];
  v26 = *(v12[13] + 32);
  sub_22BB75920();
  v27();
  v35 = v12[19];
  if (v18 >> 62)
  {
    if (v35 < 0)
    {
      v47 = v12[19];
    }

    v36 = sub_22BDBB4F4();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12[23] = v36;
  if (!v36)
  {
    v39 = sub_22BD63FB8();
    v40(v39);
    v41 = *(MEMORY[0x277D85798] + 4);
    swift_task_alloc();
    sub_22BB30B34();
    v12[22] = v42;
    *v42 = v43;
    sub_22BD5FAA8();
    sub_22BB37AC0();

    return MEMORY[0x2822003E8](v36, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  if (v36 < 1)
  {
    __break(1u);
    return MEMORY[0x2822003E8](v36, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  v12[24] = 0;
  v37 = v12[19];
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x2318A5340](0);
  }

  else
  {
    v38 = *(v37 + 32);
  }

  v12[25] = v38;
  v44 = swift_task_alloc();
  v12[26] = v44;
  *v44 = v12;
  sub_22BD60C98(v44);
  sub_22BB37AC0();

  return sub_22BD7F884();
}

uint64_t sub_22BD5A3E8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BD5A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB2F0D4();
  v13 = v12[25];

  v14 = v12[24] + 1;
  if (v14 == v12[23])
  {
    v15 = sub_22BD63FB8();
    v16(v15);
    v17 = *(MEMORY[0x277D85798] + 4);
    swift_task_alloc();
    sub_22BB30B34();
    v12[22] = v18;
    *v18 = v19;
    v20 = sub_22BD5FAA8();

    return MEMORY[0x2822003E8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  else
  {
    v12[24] = v14;
    v28 = v12[19];
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x2318A5340]();
    }

    else
    {
      v29 = *(v28 + 8 * v14 + 32);
    }

    v12[25] = v29;
    v30 = swift_task_alloc();
    v12[26] = v30;
    *v30 = v12;
    sub_22BD60C98();

    return sub_22BD7F884();
  }
}

uint64_t sub_22BD5A5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB31550();
  v14 = v12[11];
  v15 = v12[3];
  sub_22BDB63E4();

  v16 = sub_22BDB77C4();
  v17 = sub_22BDBB114();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v12[21];
    v19 = v12[10];
    a10 = v12[11];
    v20 = v12[9];
    v21 = v12[3];
    sub_22BB31AD8();
    a11 = sub_22BB38198();
    *v13 = 136446210;
    sub_22BDB5624();
    sub_22BC54D78();

    v22 = sub_22BB3A19C();
    sub_22BB32EE0(v22, v23, v24);
    sub_22BB36C3C();

    *(v13 + 4) = v21 + v18;
    sub_22BB337EC(&dword_22BB2C000, v16, v17, "[SessionCoordinator %{public}s] Failed to send debugger event to client.");
    sub_22BB35808();
    sub_22BB2F194();

    (*(v19 + 8))(a10, v20);
  }

  else
  {
    v26 = v12[10];
    v25 = v12[11];
    v27 = v12[9];
    v28 = v12[3];

    v29 = *(v26 + 8);
    v30 = sub_22BB2F3F0();
    v31(v30);
  }

  v32 = v12[27];
  v33 = v12[25];
  v34 = v12[20];
  v36 = v12[7];
  v35 = v12[8];
  v38 = v12[5];
  v37 = v12[6];
  v40 = v12[3];
  v39 = v12[4];
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();

  v41 = *(v36 + 8);
  v42 = sub_22BB331D4();
  v43(v42);
  v44 = v12[24] + 1;
  if (v44 == v12[23])
  {
    v45 = sub_22BD63FB8();
    v46(v45);
    v47 = *(MEMORY[0x277D85798] + 4);
    swift_task_alloc();
    sub_22BB30B34();
    v12[22] = v48;
    *v48 = v49;
    sub_22BD5FAA8();
    sub_22BB31534();

    return MEMORY[0x2822003E8](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
  }

  else
  {
    v12[24] = v44;
    v58 = v12[19];
    if ((v58 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x2318A5340]();
    }

    else
    {
      v59 = *(v58 + 8 * v44 + 32);
    }

    v12[25] = v59;
    v60 = swift_task_alloc();
    v12[26] = v60;
    *v60 = v12;
    sub_22BD60C98();
    sub_22BB31534();

    return sub_22BD7F884();
  }
}

uint64_t sub_22BD5A87C(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_22BDB5F24();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22BDB43E4();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB9B54();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + *(*v2 + 152) + 1) & 1) == 0)
  {
    v14 = 0;
    v15 = *(v55 + 16);
    v16 = qword_28142AC88;
    v48 = v54 + 16;
    v47 = (v6 + 8);
    v49 = (v54 + 8);
    v50 = v15;
    while (1)
    {
      if (v50 == v14)
      {
        return result;
      }

      v17 = v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v18 = *(v54 + 72);
      v56 = v14;
      (*(v54 + 16))(v13, v17 + v18 * v14, v9);
      v19 = v51;
      sub_22BDB9B34();
      v20 = v53;
      sub_22BB335C0(v2 + v16, v53);
      v21 = sub_22BDB43B4();
      v22 = *v47;
      v23 = v19;
      v24 = v9;
      v25 = v52;
      (*v47)(v23, v52);
      v26 = v25;
      v9 = v24;
      v22(v20, v26);
      if ((v21 & 1) == 0)
      {
        goto LABEL_34;
      }

      v27 = sub_22BDB9984();
      v29 = v28;
      if (v27 == sub_22BDB5614() && v29 == v30)
      {
      }

      else
      {
        v32 = sub_22BDBB6D4();

        if ((v32 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v33 = sub_22BDB9A74();
      v35 = v34;
      if (v33 == sub_22BDB5644() && v35 == v36)
      {
      }

      else
      {
        v38 = sub_22BDBB6D4();

        if ((v38 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v39 = sub_22BDB99F4();
      v41 = v40;
      v42 = sub_22BDB5634();
      if (!v41)
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_33;
      }

      if (v39 == v42 && v41 == v43)
      {

LABEL_31:
        result = (*v49)(v13, v24);
        goto LABEL_32;
      }

      v45 = sub_22BDBB6D4();

      result = (*v49)(v13, v24);
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_32:
      v14 = v56 + 1;
    }

    if (v43)
    {
LABEL_33:

LABEL_34:
      (*v49)(v13, v24);
LABEL_35:
      sub_22BD5EBE0();
      return swift_willThrowTypedImpl();
    }

    goto LABEL_31;
  }

  return result;
}