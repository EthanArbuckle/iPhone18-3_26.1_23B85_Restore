void *sub_258A99948(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_258B032C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = swift_unknownObjectRetain();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_258A99AA0()
{
  v1 = v0;
  sub_258A9A3A0(0, &qword_27F970700);
  v2 = *v0;
  v3 = sub_258B032C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2589F44D0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_258A2D784(v25, (*(v4 + 56) + v22));
        result = sub_258B003E4();
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_258A99C50()
{
  v1 = v0;
  v32 = sub_258B029C4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A9A0DC(0, &qword_27F971420, MEMORY[0x277D84460]);
  v4 = *v0;
  v5 = sub_258B032C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_258A99ED4()
{
  v1 = v0;
  sub_258A9A3A0(0, &qword_27F970708);
  v2 = *v0;
  v3 = sub_258B032C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_258A9A3FC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2589F44D0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_258A2D784(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_258A9A084()
{
  if (!qword_27F96EBF8)
  {
    sub_2589F3AFC();
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EBF8);
    }
  }
}

void sub_258A9A0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_258B029C4();
    v7 = sub_2589F4488(255, &qword_27F970690, 0x277D28070);
    v8 = sub_258A9A888(&qword_27F9706A0, MEMORY[0x277CCB6A8]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258A9A1A0()
{
  if (!qword_27F9706D0)
  {
    sub_258A9A2EC(255, &qword_27F9706D8, &protocolRef_MTLRenderPipelineState);
    sub_258A9A21C();
    v0 = sub_258B032F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9706D0);
    }
  }
}

unint64_t sub_258A9A21C()
{
  result = qword_27F9706E0;
  if (!qword_27F9706E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9706E0);
  }

  return result;
}

void sub_258A9A270()
{
  if (!qword_27F971430)
  {
    sub_258A9A2EC(255, &unk_27F9706F0, &protocolRef_MTLComputePipelineState);
    sub_258A9A34C();
    v0 = sub_258B032F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971430);
    }
  }
}

uint64_t sub_258A9A2EC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_258A9A34C()
{
  result = qword_27F971440;
  if (!qword_27F971440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971440);
  }

  return result;
}

void sub_258A9A3A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_258B032F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_258A9A458(void *a1, uint64_t a2)
{
  v3 = v2;
  v26 = *v2;
  v27 = a2;
  v28 = sub_258B02E14();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A9A7F4();
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = a1;
  v15 = OBJC_IVAR____TtC14MentalHealthUI29StateOfMindCalendarDataSource_gregorianCalendar;
  v16 = sub_258B00224();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v3 + v15, a2, v16);
  sub_258A2D390();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_258B2E600;
  sub_2589F4488(0, &qword_27F970270, 0x277CCD8D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  a1;
  v20 = [ObjCClassFromMetadata stateOfMindType];
  v21 = [objc_opt_self() queryDescriptorWithSampleType_];

  *(v18 + 32) = v21;
  v31 = v26;
  swift_getMetatypeMetadata();
  sub_258B02B34();
  sub_258B02E24();

  sub_258A9A888(&qword_27F970718, MEMORY[0x277D11348]);
  v22 = v28;
  sub_258B005C4();
  (*(v6 + 8))(v9, v22);
  sub_258A9A888(&unk_27F970730, sub_258A9A7F4);
  v23 = v29;
  v24 = sub_258B00594();
  (*(v17 + 8))(v27, v16);
  (*(v30 + 8))(v14, v23);
  *(v3 + OBJC_IVAR____TtC14MentalHealthUI29StateOfMindCalendarDataSource_modelsDidChangePublisher) = v24;
  return v3;
}

void sub_258A9A7F4()
{
  if (!qword_27F970710)
  {
    sub_258B02E14();
    sub_258A9A888(&qword_27F970718, MEMORY[0x277D11348]);
    v0 = sub_258B00474();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970710);
    }
  }
}

uint64_t sub_258A9A888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A9A904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_258B006A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A83F18(21, a4);
  sub_258A9CD24(0, &qword_27F96F388, MEMORY[0x277CE1318], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B302A0;
  v14 = *(v9 + 16);
  v14(v12, a1, v8);
  *(inited + 32) = sub_258A9BA58(1, v12);
  v14(v12, a1, v8);
  *(inited + 40) = sub_258A9BA58(2, v12);
  v14(v12, a1, v8);
  *(inited + 48) = sub_258A9BA58(3, v12);
  v14(v12, a1, v8);
  *(inited + 56) = sub_258A9BA58(4, v12);
  v14(v12, a1, v8);
  *(inited + 64) = sub_258A9BA58(5, v12);
  v14(v12, a1, v8);
  *(inited + 72) = sub_258A9BA58(6, v12);
  v14(v12, a1, v8);
  *(inited + 80) = sub_258A9BA58(7, v12);
  v61 = MEMORY[0x277D84F90];
  sub_258AA91CC(0, 7, 0);
  v15 = v61;
  v17 = *(v61 + 16);
  v16 = *(v61 + 24);
  v18 = v16 >> 1;
  v19 = v17 + 1;
  if (v16 >> 1 <= v17)
  {
    sub_258AA91CC((v16 > 1), v17 + 1, 1);
    v15 = v61;
    v16 = *(v61 + 24);
    v18 = v16 >> 1;
  }

  *(v15 + 16) = v19;
  *(v15 + 8 * v17 + 32) = 0;
  v20 = v17 + 2;
  if (v18 < v20)
  {
    sub_258AA91CC((v16 > 1), v20, 1);
    v15 = v61;
  }

  *(v15 + 16) = v20;
  *(v15 + 8 * v19 + 32) = 0x3FC5604189374BC6;
  v22 = *(v15 + 16);
  v21 = *(v15 + 24);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    sub_258AA91CC((v21 > 1), v22 + 1, 1);
  }

  v24 = v61;
  *(v61 + 16) = v23;
  *(v24 + 8 * v22 + 32) = 0x3FD55810624DD2F2;
  v25 = *(v24 + 24);
  v26 = v22 + 2;
  if (v26 > (v25 >> 1))
  {
    sub_258AA91CC((v25 > 1), v26, 1);
    v24 = v61;
  }

  *(v24 + 16) = v26;
  *(v24 + 8 * v23 + 32) = 0x3FE0000000000000;
  v28 = *(v24 + 16);
  v27 = *(v24 + 24);
  v29 = v27 >> 1;
  v30 = v28 + 1;
  if (v27 >> 1 <= v28)
  {
    sub_258AA91CC((v27 > 1), v28 + 1, 1);
    v24 = v61;
    v27 = *(v61 + 24);
    v29 = v27 >> 1;
  }

  *(v24 + 16) = v30;
  *(v24 + 8 * v28 + 32) = 0x3FE553F7CED91687;
  v31 = v28 + 2;
  if (v29 < v31)
  {
    sub_258AA91CC((v27 > 1), v31, 1);
  }

  v32 = v61;
  *(v61 + 16) = v31;
  *(v32 + 8 * v30 + 32) = 0x3FEAA7EF9DB22D0ELL;
  v34 = *(v32 + 16);
  v33 = *(v32 + 24);
  if (v34 >= v33 >> 1)
  {
    sub_258AA91CC((v33 > 1), v34 + 1, 1);
    v32 = v61;
  }

  *(v32 + 16) = v34 + 1;
  *(v32 + 8 * v34 + 32) = 0x3FF0000000000000;
  sub_258A9BE00(inited, v32);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  v35 = sub_258B024F4();
  v37 = v36;
  v38 = sub_258B00B44();
  v39 = sub_258B01874();
  v40 = v62;
  v42 = v63;
  v41 = v64;
  v50 = v62;
  v51 = v63;
  *&v52 = v64;
  *(&v52 + 1) = v38;
  LOBYTE(v53) = v39;
  *(&v53 + 1) = v35;
  v54 = v37;
  sub_258A9C3F4(a2, a3);
  sub_258A9C55C(0, &qword_27F96DD40, sub_258A03E54, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  v44 = a3 + *(v43 + 36);
  v45 = v53;
  *(v44 + 32) = v52;
  *(v44 + 48) = v45;
  *(v44 + 64) = v54;
  v46 = v51;
  *v44 = v50;
  *(v44 + 16) = v46;
  v55[0] = v40;
  v55[1] = v42;
  v56 = v41;
  v57 = v38;
  v58 = v39;
  v59 = v35;
  v60 = v37;
  sub_258A9C2FC(&v50, &v49);
  return sub_258A9C37C(v55);
}

uint64_t sub_258A9AEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v49 = a4;
  v50 = a5;
  v48 = a3;
  v11 = sub_258B006A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A83F18(21, a7);
  sub_258A9CD24(0, &qword_27F96F388, MEMORY[0x277CE1318], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B302A0;
  v17 = *(v12 + 16);
  v17(v15, a1, v11);
  *(inited + 32) = sub_258A9BA58(1, v15);
  v17(v15, a1, v11);
  *(inited + 40) = sub_258A9BA58(2, v15);
  v17(v15, a1, v11);
  *(inited + 48) = sub_258A9BA58(3, v15);
  v17(v15, a1, v11);
  *(inited + 56) = sub_258A9BA58(4, v15);
  v17(v15, a1, v11);
  *(inited + 64) = sub_258A9BA58(5, v15);
  v17(v15, a1, v11);
  *(inited + 72) = sub_258A9BA58(6, v15);
  v17(v15, a1, v11);
  *(inited + 80) = sub_258A9BA58(7, v15);
  v63 = MEMORY[0x277D84F90];
  sub_258AA91CC(0, 7, 0);
  v18 = v63;
  v20 = *(v63 + 16);
  v19 = *(v63 + 24);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    sub_258AA91CC((v19 > 1), v20 + 1, 1);
    v18 = v63;
    v19 = *(v63 + 24);
    v21 = v19 >> 1;
  }

  *(v18 + 16) = v22;
  *(v18 + 8 * v20 + 32) = 0;
  if (v21 < (v20 + 2))
  {
    sub_258AA91CC((v19 > 1), v20 + 2, 1);
    v18 = v63;
  }

  *(v18 + 16) = v20 + 2;
  *(v18 + 8 * v22 + 32) = 0x3FC5604189374BC6;
  v24 = *(v18 + 16);
  v23 = *(v18 + 24);
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    sub_258AA91CC((v23 > 1), v24 + 1, 1);
  }

  v26 = v63;
  *(v63 + 16) = v25;
  *(v26 + 8 * v24 + 32) = 0x3FD55810624DD2F2;
  v27 = *(v26 + 24);
  if ((v24 + 2) > (v27 >> 1))
  {
    sub_258AA91CC((v27 > 1), v24 + 2, 1);
    v26 = v63;
  }

  *(v26 + 16) = v24 + 2;
  *(v26 + 8 * v25 + 32) = 0x3FE0000000000000;
  v29 = *(v26 + 16);
  v28 = *(v26 + 24);
  v30 = v28 >> 1;
  v31 = v29 + 1;
  if (v28 >> 1 <= v29)
  {
    sub_258AA91CC((v28 > 1), v29 + 1, 1);
    v26 = v63;
    v28 = *(v63 + 24);
    v30 = v28 >> 1;
  }

  *(v26 + 16) = v31;
  *(v26 + 8 * v29 + 32) = 0x3FE553F7CED91687;
  if (v30 < (v29 + 2))
  {
    sub_258AA91CC((v28 > 1), v29 + 2, 1);
  }

  v32 = v63;
  *(v63 + 16) = v29 + 2;
  *(v32 + 8 * v31 + 32) = 0x3FEAA7EF9DB22D0ELL;
  v34 = *(v32 + 16);
  v33 = *(v32 + 24);
  if (v34 >= v33 >> 1)
  {
    sub_258AA91CC((v33 > 1), v34 + 1, 1);
    v32 = v63;
  }

  *(v32 + 16) = v34 + 1;
  *(v32 + 8 * v34 + 32) = 0x3FF0000000000000;
  sub_258A9BE00(inited, v32);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  v35 = sub_258B024F4();
  v37 = v36;
  v38 = sub_258B00B44();
  v39 = sub_258B01874();
  v40 = v64;
  v42 = v65;
  v41 = v66;
  v52 = v64;
  v53 = v65;
  *&v54 = v66;
  *(&v54 + 1) = v38;
  LOBYTE(v55) = v39;
  *(&v55 + 1) = v35;
  v56 = v37;
  sub_258A9C458(a2, a6, v48);
  sub_258A9C55C(0, v49, v50, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  v44 = a6 + *(v43 + 36);
  v45 = v55;
  *(v44 + 32) = v54;
  *(v44 + 48) = v45;
  *(v44 + 64) = v56;
  v46 = v53;
  *v44 = v52;
  *(v44 + 16) = v46;
  v57[0] = v40;
  v57[1] = v42;
  v58 = v41;
  v59 = v38;
  v60 = v39;
  v61 = v35;
  v62 = v37;
  sub_258A9C2FC(&v52, &v51);
  return sub_258A9C37C(v57);
}

__n128 sub_258A9B4D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v45 = a5;
  v43 = a2;
  v44 = a4;
  v11 = sub_258B006A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A83F18(21, a7);
  sub_258A9CD24(0, &qword_27F96F388, MEMORY[0x277CE1318], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B302A0;
  v17 = *(v12 + 16);
  v17(v15, a1, v11);
  *(inited + 32) = sub_258A9BA58(1, v15);
  v17(v15, a1, v11);
  *(inited + 40) = sub_258A9BA58(2, v15);
  v17(v15, a1, v11);
  *(inited + 48) = sub_258A9BA58(3, v15);
  v17(v15, a1, v11);
  *(inited + 56) = sub_258A9BA58(4, v15);
  v17(v15, a1, v11);
  *(inited + 64) = sub_258A9BA58(5, v15);
  v17(v15, a1, v11);
  *(inited + 72) = sub_258A9BA58(6, v15);
  v17(v15, a1, v11);
  *(inited + 80) = sub_258A9BA58(7, v15);
  v63 = MEMORY[0x277D84F90];
  sub_258AA91CC(0, 7, 0);
  v18 = v63;
  v20 = *(v63 + 16);
  v19 = *(v63 + 24);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    sub_258AA91CC((v19 > 1), v20 + 1, 1);
    v18 = v63;
    v19 = *(v63 + 24);
    v21 = v19 >> 1;
  }

  *(v18 + 16) = v22;
  *(v18 + 8 * v20 + 32) = 0;
  if (v21 < (v20 + 2))
  {
    sub_258AA91CC((v19 > 1), v20 + 2, 1);
    v18 = v63;
  }

  *(v18 + 16) = v20 + 2;
  *(v18 + 8 * v22 + 32) = 0x3FC5604189374BC6;
  v24 = *(v18 + 16);
  v23 = *(v18 + 24);
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    sub_258AA91CC((v23 > 1), v24 + 1, 1);
  }

  v26 = v63;
  *(v63 + 16) = v25;
  *(v26 + 8 * v24 + 32) = 0x3FD55810624DD2F2;
  v27 = *(v26 + 24);
  if ((v24 + 2) > (v27 >> 1))
  {
    sub_258AA91CC((v27 > 1), v24 + 2, 1);
    v26 = v63;
  }

  *(v26 + 16) = v24 + 2;
  *(v26 + 8 * v25 + 32) = 0x3FE0000000000000;
  v29 = *(v26 + 16);
  v28 = *(v26 + 24);
  v30 = v28 >> 1;
  v31 = v29 + 1;
  if (v28 >> 1 <= v29)
  {
    sub_258AA91CC((v28 > 1), v29 + 1, 1);
    v26 = v63;
    v28 = *(v63 + 24);
    v30 = v28 >> 1;
  }

  *(v26 + 16) = v31;
  *(v26 + 8 * v29 + 32) = 0x3FE553F7CED91687;
  if (v30 < (v29 + 2))
  {
    sub_258AA91CC((v28 > 1), v29 + 2, 1);
  }

  v32 = v63;
  *(v63 + 16) = v29 + 2;
  *(v32 + 8 * v31 + 32) = 0x3FEAA7EF9DB22D0ELL;
  v34 = *(v32 + 16);
  v33 = *(v32 + 24);
  if (v34 >= v33 >> 1)
  {
    sub_258AA91CC((v33 > 1), v34 + 1, 1);
    v32 = v63;
  }

  *(v32 + 16) = v34 + 1;
  *(v32 + 8 * v34 + 32) = 0x3FF0000000000000;
  sub_258A9BE00(inited, v32);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  v35 = sub_258B024F4();
  v37 = v36;
  v38 = sub_258B00B44();
  v39 = sub_258B01874();
  *&v47 = v43;
  *(&v47 + 1) = a3;
  *&v48 = v44;
  BYTE8(v48) = v45;
  v49 = v64;
  v50 = v65;
  *&v51 = v66;
  *(&v51 + 1) = v38;
  LOBYTE(v52) = v39;
  *(&v52 + 1) = v35;
  v53 = v37;
  v54[0] = v43;
  v54[1] = a3;
  v54[2] = v44;
  v55 = v45;
  v56 = v64;
  v57 = v65;
  v58 = v66;
  v59 = v38;
  v60 = v39;
  v61 = v35;
  v62 = v37;

  sub_258A9C4C0(&v47, &v46);
  sub_258A9CE90(v54);
  v40 = v52;
  *(a6 + 64) = v51;
  *(a6 + 80) = v40;
  *(a6 + 96) = v53;
  v41 = v48;
  *a6 = v47;
  *(a6 + 16) = v41;
  result = v50;
  *(a6 + 32) = v49;
  *(a6 + 48) = result;
  return result;
}

uint64_t sub_258A9BA58(CGColor *a1, char *a2)
{
  v22 = a2;
  v23 = a1;
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  sub_258A9CD24(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2F490;
  sub_258A2D6A0();
  v13 = v5[2];
  v13(v11, a2, v4);
  v24 = 1;
  v13(v9, v11, v4);
  Color.init(valenceClassification:variant:colorScheme:)(a1, &v24, v9);
  v14 = sub_258B030A4();
  v15 = v5[1];
  v15(v11, v4);
  *(inited + 32) = v14;
  v16 = v22;
  v13(v11, v22, v4);
  v24 = 0;
  v13(v9, v11, v4);
  Color.init(valenceClassification:variant:colorScheme:)(v23, &v24, v9);
  v17 = sub_258B030A4();
  v15(v11, v4);
  *(inited + 40) = v17;
  sub_258A9BC94(inited);
  v19 = v18;
  v15(v16, v4);
  return v19;
}

void sub_258A9BC94(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_258B032B4();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  v9 = MEMORY[0x277D84F90];
  sub_258B03244();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      MEMORY[0x259C937C0]();
      sub_258B01F94();
      sub_258B03224();
      v5 = *(v9 + 16);
      sub_258B03254();
      sub_258B03264();
      sub_258B03234();
      v3 = v4;
    }

    while (v2 != v4);
  }

  else
  {
    v6 = 32;
    do
    {
      v7 = *(a1 + v6);
      sub_258B01F94();
      sub_258B03224();
      v8 = *(v9 + 16);
      sub_258B03254();
      sub_258B03264();
      sub_258B03234();
      v6 += 8;
      --v2;
    }

    while (v2);
  }

LABEL_12:

LABEL_16:
  JUMPOUT(0x259C92A80);
}

unint64_t sub_258A9BE00(uint64_t a1, uint64_t a2)
{
  result = sub_258B02A44();
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  while (v6 != v5)
  {
    v8 = v5 + 1;
    v9 = *(v7 + 8 * v5++);
    if (v27 < v9)
    {
      v10 = v8 - 1;
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v10 = v6 - 1;
LABEL_7:
    v11 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
    }

    else if (v11 < v6)
    {
      if (v10 < v6)
      {
        v12 = *(a1 + 16);
        if (v11 < v12)
        {
          if (v10 < v12)
          {
            v13 = a1 + 32;
            v14 = *(a1 + 32 + 8 * v11);
            v15 = *(v13 + 8 * v10);
            v16 = *(v14 + 16);
            if (v16 == *(v15 + 16))
            {
              v17 = MEMORY[0x277D84F90];
              if (!v16)
              {
                return MEMORY[0x259C92A80](v17);
              }

              v18 = *(v7 + 8 * v11);
              v19 = *(v7 + 8 * v10);
              v26 = MEMORY[0x277D84F90];
              sub_258B003E4();
              sub_258B003E4();
              sub_258B03244();
              result = sub_258A2D6A0();
              if (v16 <= *(v14 + 16))
              {
                if (v16 <= *(v15 + 16))
                {
                  v20 = 32;
                  do
                  {
                    v21 = *(v14 + v20);

                    v22 = sub_258B030A4();
                    v23 = *(v15 + v20);

                    v24 = sub_258B030A4();
                    sub_258A9C02C(v22, v24, (v27 - v18) / (v19 - v18));

                    sub_258B03224();
                    v25 = *(v26 + 16);
                    sub_258B03254();
                    sub_258B03264();
                    sub_258B03234();
                    v20 += 16;
                    --v16;
                  }

                  while (v16);

                  v17 = v26;
                  return MEMORY[0x259C92A80](v17);
                }

                goto LABEL_27;
              }

LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_258A9C02C(void *a1, void *a2, double a3)
{
  v6 = sub_258B01FA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 CGColor];
  v12 = sub_258B02E04();

  if (v12)
  {
    v13 = [a2 CGColor];
    v14 = sub_258B02E04();

    if (v14)
    {
      v15 = *(v12 + 16);
      if (v15)
      {
        v16 = *(v14 + 16);
        if (v16)
        {
          if (v15 != 1)
          {
            if (v16 != 1)
            {
              if (v15 >= 3)
              {
                if (v16 >= 3)
                {
                  v17 = *(v12 + 32) + (*(v14 + 32) - *(v12 + 32)) * a3;
                  v18 = *(v12 + 40) + (*(v14 + 40) - *(v12 + 40)) * a3;
                  v19 = *(v12 + 48);
                  v20 = *(v14 + 48);

                  v21 = *(v12 + 48);

                  (*(v7 + 104))(v10, *MEMORY[0x277CE0EE0], v6);
                  sub_258B02054();
                  return;
                }

                goto LABEL_19;
              }

LABEL_18:
              __break(1u);
LABEL_19:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  v22 = a1;

  sub_258B01F94();
}

void sub_258A9C264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_258A9CC4C(255, &qword_27F96DB50, MEMORY[0x277CDF838], MEMORY[0x277CE0888], MEMORY[0x277CDFAB8]);
    v7 = v6;
    v8 = sub_2589FF714();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_258A9C2FC(uint64_t a1, uint64_t a2)
{
  sub_258A9C264(0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A9C37C(uint64_t a1)
{
  sub_258A9C264(0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A9C3F4(uint64_t a1, uint64_t a2)
{
  sub_258A03E54();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A9C458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A9C4C0(uint64_t a1, uint64_t a2)
{
  sub_258A9C55C(0, &qword_27F970740, sub_258A9C5E0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258A9C55C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A9C264(255, a4, a5);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A9C608()
{
  if (!qword_27F970750)
  {
    sub_258A9C9F4(255, &qword_27F970758, sub_258A9C690);
    sub_258A9CD74();
    v0 = sub_258B009C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970750);
    }
  }
}

void sub_258A9C690()
{
  if (!qword_27F970760)
  {
    sub_258A9C724();
    sub_258A9CE48(&qword_27F9707D8, sub_258A9C724);
    v0 = sub_258B022E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970760);
    }
  }
}

void sub_258A9C724()
{
  if (!qword_27F970768)
  {
    sub_258A9C7AC(255, &qword_27F970770, sub_258A9C828, sub_258A9C968);
    v0 = sub_258B02574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970768);
    }
  }
}

void sub_258A9C7AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258A9C828()
{
  if (!qword_27F970778)
  {
    sub_258A9C9F4(255, &qword_27F970780, sub_258A9C8B4);
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970778);
    }
  }
}

void sub_258A9C8DC()
{
  if (!qword_27F970790)
  {
    sub_258A9CC4C(255, &qword_27F96D110, &type metadata for StateOfMindVisualization.ValenceImage, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970790);
    }
  }
}

void sub_258A9C968()
{
  if (!qword_27F970798)
  {
    sub_258A9C9F4(255, &qword_27F9707A0, sub_258A9CA58);
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970798);
    }
  }
}

void sub_258A9C9F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A9CA58()
{
  if (!qword_27F9707A8)
  {
    sub_258A9CB14(255, &qword_27F9707B0, sub_258A9CB88, sub_258A9CBBC);
    sub_258A9CD24(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9707A8);
    }
  }
}

void sub_258A9CB14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A9CBBC()
{
  if (!qword_27F9707C0)
  {
    sub_258A9CC4C(255, &qword_27F9707C8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE03B8]);
    sub_258A9CCA0();
    v0 = sub_258B015C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9707C0);
    }
  }
}

void sub_258A9CC4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A9CCA0()
{
  result = qword_27F9707D0;
  if (!qword_27F9707D0)
  {
    sub_258A9CC4C(255, &qword_27F9707C8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE03B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9707D0);
  }

  return result;
}

void sub_258A9CD24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A9CD74()
{
  result = qword_27F9707E0;
  if (!qword_27F9707E0)
  {
    sub_258A9C9F4(255, &qword_27F970758, sub_258A9C690);
    sub_258A9CE48(&qword_27F9707E8, sub_258A9C690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9707E0);
  }

  return result;
}

uint64_t sub_258A9CE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A9CE90(uint64_t a1)
{
  sub_258A9C55C(0, &qword_27F970740, sub_258A9C5E0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A9CF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for IntroPhaseHeaderText()
{
  result = qword_27F9707F0;
  if (!qword_27F9707F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A9CFFC()
{
  sub_258A9CF38(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A9CF38(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A9D10C()
{
  v1 = v0;
  v2 = sub_258B01504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2AE68();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CE0570];
  v12 = MEMORY[0x277D83D88];
  sub_258A9CF38(0, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  (*(v3 + 104))(&v26 - v18, *MEMORY[0x277CE0560], v2);
  (*(v3 + 56))(v19, 0, 1, v2);
  v20 = *(v7 + 56);
  sub_258A9E3A8(v1, v10, &qword_27F96DE50, v11, v12);
  sub_258A9E3A8(v19, &v10[v20], &qword_27F96DE50, v11, v12);
  v21 = *(v3 + 48);
  if (v21(v10, 1, v2) != 1)
  {
    sub_258A9E3A8(v10, v17, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
    if (v21(&v10[v20], 1, v2) != 1)
    {
      v23 = v27;
      (*(v3 + 32))(v27, &v10[v20], v2);
      sub_258A9E7C8(&qword_27F96EAA8, MEMORY[0x277CE0570]);
      v22 = sub_258B02AA4();
      v24 = *(v3 + 8);
      v24(v23, v2);
      sub_258A9E2BC(v19);
      v24(v17, v2);
      sub_258A9E2BC(v10);
      return v22 & 1;
    }

    sub_258A9E2BC(v19);
    (*(v3 + 8))(v17, v2);
    goto LABEL_6;
  }

  sub_258A9E2BC(v19);
  if (v21(&v10[v20], 1, v2) != 1)
  {
LABEL_6:
    sub_258A9E348(v10, sub_258A2AE68);
    v22 = 0;
    return v22 & 1;
  }

  sub_258A9E2BC(v10);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_258A9D4E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF3E0];
  v9 = MEMORY[0x277CDF458];
  sub_258A9CF38(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for IntroPhaseHeaderText();
  sub_258A9E3A8(v1 + *(v14 + 20), v13, &qword_27F96C908, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_258A9D71C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF458];
  sub_258A9CF38(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  v13 = type metadata accessor for IntroPhaseHeaderText();
  sub_258A9E3A8(v1 + *(v13 + 24), v12, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258A37ED8(v12, a1);
  }

  v15 = *v12;
  sub_258B02E94();
  v16 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_258A9D920@<X0>(uint64_t a1@<X8>)
{
  v90 = sub_258B006A4();
  v88 = *(v90 - 8);
  v3 = *(v88 + 64);
  v4 = MEMORY[0x28223BE20](v90);
  v86 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = &v75 - v6;
  v89 = sub_258B02554();
  v87 = *(v89 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v85 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B00AA4();
  KeyPath = *(v9 - 8);
  v83 = v9;
  v10 = *(KeyPath + 64);
  MEMORY[0x28223BE20](v9);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B019F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v75 - v18;
  v20 = type metadata accessor for IntroPhaseSpecs();
  v21 = *(*(v20 - 8) + 64);
  v22 = v20 - 8;
  v75 = v20 - 8;
  v23 = MEMORY[0x28223BE20](v20 - 8);
  v77 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v75 - v25;
  v27 = *v1;
  v28 = v1[1];
  v76 = v1;
  v91 = v27;
  v92 = v28;
  sub_2589BFF58();
  sub_258B003E4();
  v29 = sub_258B01B44();
  v79 = v30;
  v80 = v29;
  v32 = v31;
  v78 = v33;
  sub_258A9D71C(v26);
  sub_258B019C4();
  v34 = &v26[*(v22 + 28)];
  v35 = sub_258B00A84();
  v36 = MEMORY[0x277CE0A10];
  if ((v35 & 1) == 0)
  {
    v36 = MEMORY[0x277CE0A18];
  }

  (*(v13 + 104))(v17, *v36, v12);
  (*(v13 + 32))(v19, v17, v12);
  sub_258B01A14();

  (*(v13 + 8))(v19, v12);
  sub_258A9E348(v26, type metadata accessor for IntroPhaseSpecs);
  v37 = v32;
  v38 = v79;
  v39 = v80;
  v40 = sub_258B01AE4();
  v42 = v41;
  v44 = v43;
  sub_2589BFFAC(v39, v38, v37 & 1);

  sub_258B01964();
  v45 = sub_258B01A94();
  v79 = v46;
  v80 = v45;
  v48 = v47;
  v78 = v49;
  v50 = v44 & 1;
  v51 = v77;
  sub_2589BFFAC(v40, v42, v50);

  sub_258A9D71C(v51);
  v52 = *(v75 + 28);
  v54 = v81;
  v53 = KeyPath;
  v55 = v83;
  (*(KeyPath + 104))(v81, *MEMORY[0x277CDF9D0], v83);
  LOBYTE(v52) = sub_258B00A94();
  (*(v53 + 8))(v54, v55);
  if (v52)
  {
    v56 = sub_258A9D10C();
    sub_258A9E348(v51, type metadata accessor for IntroPhaseSpecs);
    if (v56)
    {
      v57 = 0;
      v83 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_258A9E348(v51, type metadata accessor for IntroPhaseSpecs);
  }

  v83 = 0;
  v57 = 1;
LABEL_8:
  KeyPath = swift_getKeyPath();
  v81 = swift_getKeyPath();
  v58 = v48 & 1;
  LOBYTE(v91) = v48 & 1;
  v93 = v57;
  LODWORD(v77) = sub_258B014A4();
  v59 = swift_getKeyPath();
  v60 = v84;
  sub_258A9D4E8(v84);
  v61 = v88;
  v62 = v86;
  v63 = v90;
  (*(v88 + 104))(v86, *MEMORY[0x277CDF3C0], v90);
  v64 = sub_258B00694();
  v65 = *(v61 + 8);
  v65(v62, v63);
  v65(v60, v63);
  v66 = v87;
  v67 = MEMORY[0x277CE13B8];
  if ((v64 & 1) == 0)
  {
    v67 = MEMORY[0x277CE13D8];
  }

  v68 = v85;
  v69 = v89;
  (*(v87 + 104))(v85, *v67, v89);
  sub_258A9DFEC();
  result = (*(v66 + 32))(a1 + *(v70 + 36), v68, v69);
  v72 = v79;
  *a1 = v80;
  *(a1 + 8) = v72;
  *(a1 + 16) = v58;
  v74 = KeyPath;
  v73 = v83;
  *(a1 + 24) = v78;
  *(a1 + 32) = v74;
  *(a1 + 40) = v73;
  *(a1 + 48) = v57;
  *(a1 + 56) = v81;
  *(a1 + 64) = 0x3FE3333333333333;
  *(a1 + 72) = v77;
  *(a1 + 76) = 256;
  *(a1 + 80) = v59;
  *(a1 + 88) = 0;
  return result;
}

void sub_258A9DFEC()
{
  if (!qword_27F970800)
  {
    sub_258A9E080(255, &qword_27F970808, sub_258A9E118, &qword_27F96C8C0, MEMORY[0x277CDF720]);
    sub_258B00C84();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970800);
    }
  }
}

void sub_258A9E080(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_258A9E26C(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A9E118()
{
  if (!qword_27F970810)
  {
    sub_258A9E178();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970810);
    }
  }
}

void sub_258A9E178()
{
  if (!qword_27F970818)
  {
    sub_258A9E080(255, &qword_27F970820, sub_258A9E20C, &qword_27F96ED60, MEMORY[0x277D85048]);
    sub_258A4A19C();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970818);
    }
  }
}

void sub_258A9E20C()
{
  if (!qword_27F970828)
  {
    sub_258A4ED08();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970828);
    }
  }
}

void sub_258A9E26C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258A9E2BC(uint64_t a1)
{
  sub_258A9CF38(0, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A9E348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A9E3A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_258A9CF38(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_258A9E418()
{
  result = qword_27F970838;
  if (!qword_27F970838)
  {
    v1 = MEMORY[0x277CDF720];
    sub_258A9E080(255, &qword_27F970808, sub_258A9E118, &qword_27F96C8C0, MEMORY[0x277CDF720]);
    sub_258A9E51C(&qword_27F970840, sub_258A9E118, sub_258A9E59C);
    sub_258A9E810(&qword_27F96D1B8, &qword_27F96C8C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970838);
  }

  return result;
}

uint64_t sub_258A9E51C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A9E59C()
{
  result = qword_27F970848;
  if (!qword_27F970848)
  {
    sub_258A9E178();
    sub_258A9E64C();
    sub_258A9E7C8(&qword_27F96F3E8, sub_258A4A19C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970848);
  }

  return result;
}

unint64_t sub_258A9E64C()
{
  result = qword_27F970850;
  if (!qword_27F970850)
  {
    v1 = MEMORY[0x277D85048];
    sub_258A9E080(255, &qword_27F970820, sub_258A9E20C, &qword_27F96ED60, MEMORY[0x277D85048]);
    sub_258A9E718();
    sub_258A9E810(&qword_27F96F560, &qword_27F96ED60, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970850);
  }

  return result;
}

unint64_t sub_258A9E718()
{
  result = qword_27F970858;
  if (!qword_27F970858)
  {
    sub_258A9E20C();
    sub_258A9E7C8(&qword_27F96F558, sub_258A4ED08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970858);
  }

  return result;
}

uint64_t sub_258A9E7C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A9E810(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_258A9E26C(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258A9E9C4()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_2589C0D10();
    if (v1 <= 0x3F)
    {
      sub_2589F4488(319, &qword_27F970870, 0x277D280B8);
      if (v2 <= 0x3F)
      {
        sub_258AA101C(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258A9EAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ReminderView(0);
  v101 = *(v105 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = v7;
  v103 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA138C(0);
  v104 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v111 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v110 = (&v91 - v12);
  sub_258AA1190();
  v95 = v13;
  v94 = *(v13 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v13);
  v92 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA115C(0);
  v99 = *(v16 - 8);
  v100 = v16;
  v17 = *(v99 + 64);
  MEMORY[0x28223BE20](v16);
  v93 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA1128(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v109 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v113 = &v91 - v23;
  v24 = type metadata accessor for BulletPointView(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v107 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v106 = &v91 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = (&v91 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = &v91 - v33;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v97 = qword_27F97ABA0;
  v98 = qword_27F97AB90;
  v35 = sub_258AFFD94();
  v37 = v36;
  v38 = sub_258A9F634();
  v40 = v39;
  KeyPath = swift_getKeyPath();
  v114 = a1;
  *&v34[*(v24 + 28)] = KeyPath;
  v42 = v24;
  v43 = MEMORY[0x277CDF458];
  sub_258AA101C(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v96 = v44;
  swift_storeEnumTagMultiPayload();
  *v34 = v35;
  *(v34 + 1) = v37;
  *(v34 + 2) = v38;
  *(v34 + 3) = v40;
  strcpy(v34 + 32, "sun.max.fill");
  v34[45] = 0;
  *(v34 + 23) = -5120;
  v45 = *(v42 + 32);
  *&v34[v45] = swift_getKeyPath();
  sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, v43);
  swift_storeEnumTagMultiPayload();
  v46 = sub_258AFFD94();
  v48 = v47;
  v49 = sub_258A9F780();
  v51 = v50;
  *(v32 + *(v42 + 28)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v32 = v46;
  v32[1] = v48;
  v32[2] = v49;
  v32[3] = v51;
  v32[4] = 0xD000000000000014;
  v32[5] = 0x8000000258B38620;
  v52 = v114;
  v98 = v42;
  v53 = *(v42 + 32);
  *(v32 + v53) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v54 = *(v52 + 32);
  v55 = v32;
  if ([v54 hasEverEnabledAStateOfMindReminderNotification])
  {
    v56 = [v54 customReminderSchedule];
    sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
    v57 = sub_258B02C74();

    if (v57 >> 62)
    {
      if (sub_258B032B4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v116 = v57;
      swift_getKeyPath();
      sub_258AA1274();
      sub_258AA12DC(&qword_27F96F908, sub_258AA1274);
      sub_258AA1324();
      sub_258AA12DC(&qword_27F9708B0, type metadata accessor for BulletPointView);
      v58 = v92;
      sub_258B023B4();
      v59 = v94;
      v60 = v93;
      v61 = v95;
      (*(v94 + 32))(v93, v58, v95);
      v62 = 0;
LABEL_10:
      (*(v59 + 56))(v60, v62, 1, v61);
      v64 = v113;
      sub_258AA20F8(v60, v113, sub_258AA115C);
      v63 = 0;
      goto LABEL_11;
    }

    v62 = 1;
    v61 = v95;
    v59 = v94;
    v60 = v93;
    goto LABEL_10;
  }

  v63 = 1;
  v64 = v113;
LABEL_11:
  (*(v99 + 56))(v64, v63, 1, v100);
  v65 = *(v52 + 8);
  v66 = v103;
  sub_258AA1410(v52, v103, type metadata accessor for ReminderView);
  v67 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v68 = swift_allocObject();
  sub_258AA20F8(v66, v68 + v67, type metadata accessor for ReminderView);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258AA12DC(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);

  v69 = sub_258B00A24();
  v70 = v110;
  *v110 = v69;
  *(v70 + 8) = v71;
  v115 = 0;
  sub_258B02114();
  v72 = v117;
  *(v70 + 16) = v116;
  *(v70 + 24) = v72;
  *(v70 + 32) = sub_258AA13AC;
  *(v70 + 40) = v68;
  v73 = *(type metadata accessor for EditButton() + 28);
  *(v70 + v73) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v73) = sub_258B01884();
  v74 = v52 + *(v105 + 28);
  v75 = v108;
  sub_258AC1B5C(v108);
  sub_258AA1478(v75, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B00654();
  v76 = v70 + *(v104 + 36);
  *v76 = v73;
  *(v76 + 8) = v77;
  *(v76 + 16) = v78;
  *(v76 + 24) = v79;
  *(v76 + 32) = v80;
  *(v76 + 40) = 0;
  v81 = v34;
  v114 = v34;
  v82 = v106;
  sub_258AA1410(v81, v106, type metadata accessor for BulletPointView);
  v83 = v107;
  sub_258AA1410(v55, v107, type metadata accessor for BulletPointView);
  v84 = v64;
  v108 = v55;
  v85 = v109;
  sub_258AA1410(v84, v109, sub_258AA1128);
  v86 = v111;
  sub_258AA1410(v70, v111, sub_258AA138C);
  v87 = v112;
  sub_258AA1410(v82, v112, type metadata accessor for BulletPointView);
  sub_258AA1080();
  v89 = v88;
  sub_258AA1410(v83, v87 + *(v88 + 48), type metadata accessor for BulletPointView);
  sub_258AA1410(v85, v87 + *(v89 + 64), sub_258AA1128);
  sub_258AA1410(v86, v87 + *(v89 + 80), sub_258AA138C);
  sub_258AA1478(v70, sub_258AA138C);
  sub_258AA1478(v113, sub_258AA1128);
  sub_258AA1478(v108, type metadata accessor for BulletPointView);
  sub_258AA1478(v114, type metadata accessor for BulletPointView);
  sub_258AA1478(v86, sub_258AA138C);
  sub_258AA1478(v85, sub_258AA1128);
  sub_258AA1478(v83, type metadata accessor for BulletPointView);
  return sub_258AA1478(v82, type metadata accessor for BulletPointView);
}

uint64_t sub_258A9F634()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v1 = sub_258AFFD94();
  v2 = *(v0 + 32);
  if (![v2 hasEverEnabledAStateOfMindReminderNotification])
  {
    return v1;
  }

  [v2 middayNotificationsEnabled];
  return sub_258AFFD94();
}

uint64_t sub_258A9F780()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v1 = sub_258AFFD94();
  v2 = *(v0 + 32);
  if (![v2 hasEverEnabledAStateOfMindReminderNotification])
  {
    return v1;
  }

  [v2 endOfDayNotificationsEnabled];
  return sub_258AFFD94();
}

uint64_t sub_258A9F8CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = sub_258AFFE84();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_258AFFEA4();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B00084();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CustomReminderModel();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = v21;
  sub_258A2A268(v21, v20);
  sub_258A29A78(v16);
  sub_258AFFE94();
  sub_258AFFE74();
  v23 = sub_258B00054();
  v36 = v24;
  (*(v4 + 8))(v7, v37);
  (*(v8 + 8))(v11, v35);
  (*(v13 + 8))(v16, v12);
  sub_258AA1478(v20, type metadata accessor for CustomReminderModel);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v25 = sub_258AFFD94();
  v27 = v26;
  KeyPath = swift_getKeyPath();
  v29 = type metadata accessor for BulletPointView(0);
  *(a2 + *(v29 + 28)) = KeyPath;
  v30 = MEMORY[0x277CDF458];
  sub_258AA101C(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v31 = v36;
  *a2 = v23;
  a2[1] = v31;
  a2[2] = v25;
  a2[3] = v27;
  a2[4] = 0x6B636F6C63;
  a2[5] = 0xE500000000000000;
  v32 = *(v29 + 32);
  *(a2 + v32) = swift_getKeyPath();
  sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, v30);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_258A9FCC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA101C(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BulletPointView(0);
  sub_258A3B4D8(v1 + *(v12 + 28), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B00AA4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_258A9FEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B011A4();
  v11 = v2 + *(a1 + 28);
  sub_258AC1B5C(v9);
  sub_258AA1478(v9, type metadata accessor for NotificationsSetupPhaseSpecs);
  *a2 = v10;
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  sub_258AA2160(0, &qword_27F970878, sub_258AA0FE8);
  return sub_258A9EAD4(v4, a2 + *(v12 + 44));
}

uint64_t sub_258A9FFE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  sub_258AA16AC();
  v54 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA1BA8(0, &qword_27F9708F0, sub_258AA1760, sub_258AA16AC, MEMORY[0x277CE0330]);
  v51[1] = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v52 = v51 - v9;
  v10 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA1760();
  v51[2] = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_258B00AA4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v51 - v24;
  sub_258A9FCC8(v51 - v24);
  (*(v19 + 104))(v23, *MEMORY[0x277CDF998], v18);
  sub_258AA12DC(&qword_27F96D020, MEMORY[0x277CDFA28]);
  v26 = sub_258B02A54();
  v27 = *(v19 + 8);
  v27(v23, v18);
  v27(v25, v18);
  if (v26)
  {
    v28 = sub_258B00FF4();
    v29 = v2 + *(type metadata accessor for BulletPointView(0) + 32);
    sub_258AC1B5C(v13);
    sub_258AA1478(v13, type metadata accessor for NotificationsSetupPhaseSpecs);
    *v6 = v28;
    *(v6 + 1) = 0x4024000000000000;
    v6[16] = 0;
    sub_258AA2160(0, &qword_27F970918, type metadata accessor for BulletPointContent);
    v31 = &v6[*(v30 + 44)];
    v32 = v2[1];
    v33 = v2[2];
    v34 = v2[3];
    v35 = v2[4];
    v36 = v2[5];
    *v31 = *v2;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    *(v31 + 5) = v36;
    v37 = *(type metadata accessor for BulletPointContent(0) + 28);
    *&v31[v37] = swift_getKeyPath();
    sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_258AA1410(v6, v52, sub_258AA16AC);
    swift_storeEnumTagMultiPayload();
    sub_258AA12DC(&qword_27F970908, sub_258AA1760);
    sub_258AA12DC(&qword_27F970910, sub_258AA16AC);
    sub_258B003E4();
    sub_258B003E4();
    sub_258B003E4();
    sub_258B012A4();
    v38 = sub_258AA16AC;
    v39 = v6;
  }

  else
  {
    v40 = sub_258B011A4();
    v41 = v2 + *(type metadata accessor for BulletPointView(0) + 32);
    sub_258AC1B5C(v13);
    sub_258AA1478(v13, type metadata accessor for NotificationsSetupPhaseSpecs);
    *v17 = v40;
    *(v17 + 1) = 0x4024000000000000;
    v17[16] = 0;
    sub_258AA2160(0, &qword_27F970900, type metadata accessor for BulletPointContent);
    v43 = &v17[*(v42 + 44)];
    v44 = v2[1];
    v45 = v2[2];
    v46 = v2[3];
    v47 = v2[4];
    v48 = v2[5];
    *v43 = *v2;
    *(v43 + 1) = v44;
    *(v43 + 2) = v45;
    *(v43 + 3) = v46;
    *(v43 + 4) = v47;
    *(v43 + 5) = v48;
    v49 = *(type metadata accessor for BulletPointContent(0) + 28);
    *&v43[v49] = swift_getKeyPath();
    sub_258AA101C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_258AA1410(v17, v52, sub_258AA1760);
    swift_storeEnumTagMultiPayload();
    sub_258AA12DC(&qword_27F970908, sub_258AA1760);
    sub_258AA12DC(&qword_27F970910, sub_258AA16AC);
    sub_258B003E4();
    sub_258B003E4();
    sub_258B003E4();
    sub_258B012A4();
    v38 = sub_258AA1760;
    v39 = v17;
  }

  return sub_258AA1478(v39, v38);
}

uint64_t sub_258AA06C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  sub_258AA1C48();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v69 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = (v60 - v7);
  v63 = sub_258B019F4();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v63);
  v62 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v60 - v12;
  v14 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v66 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v60 - v19;
  sub_258AA1BA8(0, &qword_27F970968, sub_258AA1E38, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CDFAB8]);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v60 - v24;
  sub_258AA1FAC();
  v27 = *(v26 - 8);
  v65 = v26 - 8;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8);
  v67 = v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v60 - v32;
  MEMORY[0x28223BE20](v31);
  v64 = v60 - v34;
  v35 = v1[4];
  v36 = v2[5];
  sub_258B003E4();
  v61 = sub_258B02084();
  v60[1] = *(type metadata accessor for BulletPointContent(0) + 28);
  sub_258AC1B5C(v20);
  sub_258B01944();
  v37 = &v20[*(v15 + 28)];
  v38 = sub_258B00A84();
  v39 = MEMORY[0x277CE0A10];
  if ((v38 & 1) == 0)
  {
    v39 = MEMORY[0x277CE0A18];
  }

  v41 = v62;
  v40 = v63;
  (*(v8 + 104))(v62, *v39, v63);
  v42 = v41;
  v43 = v40;
  (*(v8 + 32))(v13, v42, v40);
  v44 = sub_258B01A14();

  (*(v8 + 8))(v13, v43);
  sub_258AA1478(v20, type metadata accessor for NotificationsSetupPhaseSpecs);
  KeyPath = swift_getKeyPath();
  v46 = sub_258B014B4();
  v47 = *(v22 + 44);
  *&v25[v47] = swift_getKeyPath();
  sub_258AA101C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v25 = v61;
  *(v25 + 1) = KeyPath;
  *(v25 + 2) = v44;
  *(v25 + 6) = v46;
  v48 = v66;
  sub_258AC1B5C(v66);
  sub_258AA1478(v48, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  sub_258AA2050(v25, v33);
  v49 = v64;
  v50 = &v33[*(v65 + 44)];
  v51 = v72;
  *v50 = v71;
  *(v50 + 1) = v51;
  *(v50 + 2) = v73;
  sub_258AA20F8(v33, v49, sub_258AA1FAC);
  v52 = sub_258B011A4();
  v53 = v68;
  *v68 = v52;
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  sub_258AA2160(0, &qword_27F970988, sub_258AA1CDC);
  sub_258AA0CD4(v2, v53 + *(v54 + 44));
  v55 = v67;
  sub_258AA1410(v49, v67, sub_258AA1FAC);
  v56 = v69;
  sub_258AA1410(v53, v69, sub_258AA1C48);
  v57 = v70;
  sub_258AA1410(v55, v70, sub_258AA1FAC);
  sub_258AA21CC();
  sub_258AA1410(v56, v57 + *(v58 + 48), sub_258AA1C48);
  sub_258AA1478(v53, sub_258AA1C48);
  sub_258AA1478(v49, sub_258AA1FAC);
  sub_258AA1478(v56, sub_258AA1C48);
  return sub_258AA1478(v55, sub_258AA1FAC);
}

uint64_t sub_258AA0CD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA1DBC(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = a1[1];
  v51 = *a1;
  v52 = v15;
  sub_2589BFF58();
  sub_258B003E4();
  v16 = sub_258B01B44();
  v18 = v17;
  LOBYTE(v15) = v19;
  v20 = sub_258B01AD4();
  v46 = v21;
  v47 = v20;
  v45 = v22;
  v48 = v23;
  sub_2589BFFAC(v16, v18, v15 & 1);

  v24 = a1[3];
  v51 = a1[2];
  v52 = v24;
  sub_258B003E4();
  v25 = sub_258B01B44();
  v27 = v26;
  v44 = v28;
  v50 = v29;
  sub_258B02394();
  v30 = sub_258B01884();
  v31 = a1 + *(type metadata accessor for BulletPointContent(0) + 28);
  sub_258AC1B5C(v7);
  sub_258AA1478(v7, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B00654();
  v32 = *(v9 + 44);
  v43 = v14;
  v33 = &v14[v32];
  *v33 = v30;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  LOBYTE(v31) = v45 & 1;
  LOBYTE(v51) = v45 & 1;
  v38 = v49;
  sub_258AA1410(v14, v49, sub_258AA1DBC);
  v39 = v46;
  v40 = v47;
  *a2 = v47;
  *(a2 + 8) = v39;
  *(a2 + 16) = v31;
  *(a2 + 24) = v48;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  LOBYTE(v14) = v44 & 1;
  *(a2 + 48) = v44 & 1;
  *(a2 + 56) = v50;
  *(a2 + 64) = 256;
  sub_258AA1D10();
  sub_258AA1410(v38, a2 + *(v41 + 64), sub_258AA1DBC);
  sub_2589E36D4(v40, v39, v31);
  sub_258B003E4();
  sub_2589E36D4(v25, v27, v14);
  sub_258B003E4();
  sub_258AA1478(v43, sub_258AA1DBC);
  sub_258AA1478(v38, sub_258AA1DBC);
  sub_2589BFFAC(v25, v27, v14);

  sub_2589BFFAC(v40, v39, v51);
}

void sub_258AA101C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AA1080()
{
  if (!qword_27F970888)
  {
    type metadata accessor for BulletPointView(255);
    sub_258AA1128(255);
    sub_258AA138C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F970888);
    }
  }
}

void sub_258AA1190()
{
  if (!qword_27F9708A0)
  {
    sub_258AA1274();
    sub_2589F4488(255, &qword_280DF8920, 0x277D280B0);
    type metadata accessor for BulletPointView(255);
    sub_258AA12DC(&qword_27F96F908, sub_258AA1274);
    sub_258AA1324();
    v0 = sub_258B023D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9708A0);
    }
  }
}

void sub_258AA1274()
{
  if (!qword_27F96D8C0)
  {
    sub_2589F4488(255, &qword_280DF8920, 0x277D280B0);
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D8C0);
    }
  }
}

uint64_t sub_258AA12DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258AA1324()
{
  result = qword_27F96F910;
  if (!qword_27F96F910)
  {
    sub_2589F4488(255, &qword_280DF8920, 0x277D280B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F910);
  }

  return result;
}

uint64_t sub_258AA13AC()
{
  v1 = *(type metadata accessor for ReminderView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 24);
  return (*(v2 + 16))();
}

uint64_t sub_258AA1410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AA1478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258AA1500()
{
  sub_258AA101C(319, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258AA101C(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258AA15FC()
{
  if (!qword_27F9708D0)
  {
    sub_258AA0FE8(255);
    sub_258AA12DC(&qword_27F9708D8, sub_258AA0FE8);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9708D0);
    }
  }
}

void sub_258AA16AC()
{
  if (!qword_27F9708E0)
  {
    type metadata accessor for BulletPointContent(255);
    sub_258AA12DC(&qword_27F9708E8, type metadata accessor for BulletPointContent);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9708E0);
    }
  }
}

void sub_258AA1760()
{
  if (!qword_27F9708F8)
  {
    type metadata accessor for BulletPointContent(255);
    sub_258AA12DC(&qword_27F9708E8, type metadata accessor for BulletPointContent);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9708F8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258AA101C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258AA101C(0, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_258AA19D0()
{
  sub_258AA101C(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_258AA1A84()
{
  result = qword_27F970930;
  if (!qword_27F970930)
  {
    sub_258AA1BA8(255, &qword_27F970938, sub_258AA1760, sub_258AA16AC, MEMORY[0x277CE0338]);
    sub_258AA12DC(&qword_27F970908, sub_258AA1760);
    sub_258AA12DC(&qword_27F970910, sub_258AA16AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970930);
  }

  return result;
}

void sub_258AA1BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258AA1C48()
{
  if (!qword_27F970940)
  {
    sub_258AA1CDC(255);
    sub_258AA12DC(&qword_27F970960, sub_258AA1CDC);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970940);
    }
  }
}

void sub_258AA1D10()
{
  if (!qword_27F970950)
  {
    sub_2589BF7E8(255, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_258AA1DBC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F970950);
    }
  }
}

void sub_258AA1DDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AA1E38()
{
  if (!qword_27F970970)
  {
    sub_258AA1ECC();
    sub_2589BF7E8(255, &qword_27F96F3D8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970970);
    }
  }
}

void sub_258AA1ECC()
{
  if (!qword_27F970978)
  {
    sub_258AA101C(255, &qword_27F96C868, sub_258AA1F5C, MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970978);
    }
  }
}

void sub_258AA1F5C()
{
  if (!qword_27F96C870)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C870);
    }
  }
}

void sub_258AA1FAC()
{
  if (!qword_27F970980)
  {
    sub_258AA1BA8(255, &qword_27F970968, sub_258AA1E38, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CDFAB8]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970980);
    }
  }
}

uint64_t sub_258AA2050(uint64_t a1, uint64_t a2)
{
  sub_258AA1BA8(0, &qword_27F970968, sub_258AA1E38, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AA20F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AA2160(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AA21CC()
{
  if (!qword_27F970990)
  {
    sub_258AA1FAC();
    sub_258AA1C48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970990);
    }
  }
}

uint64_t sub_258AA2270(uint64_t a1, __n128 a2)
{
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = qword_258B33210[v4];
  v6 = v4 >= 2;
  v7 = 3;
  v77 = 116 * *(v2 + 16) + 128;
  if (v6)
  {
    v7 = 4;
  }

  v79 = v7 + 2 * v5;
  v80 = v5 - 1;
  v8 = (v5 - 1);
  v85 = v7;
  v9 = (v7 + 1);
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
LABEL_6:
  v13 = 0;
  v81 = v3 + 1;
  v86 = v3;
  a2.n128_f32[0] = ((v3 / v77) * 3.1416) + ((v3 / v77) * 3.1416);
  v82 = a2;
  *&v14 = a2.n128_u64[0];
  *(&v14 + 1) = COERCE_UNSIGNED_INT(-1.0);
  v83 = v14;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_258A7502C(0, *(v10 + 2) + 1, 1, v10);
    }

    v16 = *(v10 + 2);
    v15 = *(v10 + 3);
    if (v16 >= v15 >> 1)
    {
      v10 = sub_258A7502C((v15 > 1), v16 + 1, 1, v10);
    }

    v17 = v83;
    *(&v17 + 1) = v13 / v8;
    *(v10 + 2) = v16 + 1;
    v18 = &v10[32 * v16];
    *(v18 + 2) = v17;
    *(v18 + 12) = 0;
    result = sub_258AA29D0(v3, v13);
    v19 = *(result + 16);
    v20 = *(v11 + 16);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    v22 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v11 + 24) >> 1)
    {
      if (*(v22 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      result = sub_258A74F10(result, v23, 1, v11);
      v11 = result;
      if (*(v22 + 16))
      {
LABEL_22:
        v24 = *(v11 + 16);
        if ((*(v11 + 24) >> 1) - v24 < v19)
        {
          goto LABEL_96;
        }

        memcpy((v11 + 4 * v24 + 32), (v22 + 32), 4 * v19);

        if (v19)
        {
          v25 = *(v11 + 16);
          v26 = __OFADD__(v25, v19);
          v27 = v25 + v19;
          if (v26)
          {
            goto LABEL_99;
          }

          *(v11 + 16) = v27;
        }

        goto LABEL_8;
      }
    }

    if (v19)
    {
      goto LABEL_89;
    }

LABEL_8:
    if (v5 == ++v13)
    {
      v28 = 0;
      v29 = v82;
      v29.n128_u32[1] = 1.0;
      v29.n128_u32[3] = 0;
      v84 = v29;
      while (1)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_258A7502C(0, *(v10 + 2) + 1, 1, v10);
          v10 = result;
        }

        v31 = *(v10 + 2);
        v30 = *(v10 + 3);
        if (v31 >= v30 >> 1)
        {
          result = sub_258A7502C((v30 > 1), v31 + 1, 1, v10);
          v10 = result;
        }

        v32 = v28 + 1;
        v33 = v84;
        v33.n128_f32[2] = ((v28 + 1) / v9) + -1.0;
        *(v10 + 2) = v31 + 1;
        v34 = &v10[32 * v31];
        *(v34 + 2) = v33;
        *(v34 + 12) = 1065353216;
        if (__OFADD__(v28, v5))
        {
          goto LABEL_90;
        }

        result = sub_258AA29D0(v3, v28 + v5);
        v35 = *(result + 16);
        v36 = *(v11 + 16);
        v37 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          goto LABEL_91;
        }

        v38 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v37 <= *(v11 + 24) >> 1)
        {
          if (*(v38 + 16))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v36 <= v37)
          {
            v39 = v36 + v35;
          }

          else
          {
            v39 = v36;
          }

          result = sub_258A74F10(result, v39, 1, v11);
          v11 = result;
          if (*(v38 + 16))
          {
LABEL_43:
            v40 = *(v11 + 16);
            if ((*(v11 + 24) >> 1) - v40 < v35)
            {
              goto LABEL_97;
            }

            memcpy((v11 + 4 * v40 + 32), (v38 + 32), 4 * v35);

            if (v35)
            {
              v41 = *(v11 + 16);
              v26 = __OFADD__(v41, v35);
              v42 = v41 + v35;
              if (v26)
              {
                goto LABEL_100;
              }

              *(v11 + 16) = v42;
            }

            goto LABEL_28;
          }
        }

        if (v35)
        {
          goto LABEL_92;
        }

LABEL_28:
        v28 = v32;
        if (v85 == v32)
        {
          v43 = v5;
          v44 = v80;
          while (1)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_258A7502C(0, *(v10 + 2) + 1, 1, v10);
              v10 = result;
            }

            v46 = *(v10 + 2);
            v45 = *(v10 + 3);
            if (v46 >= v45 >> 1)
            {
              result = sub_258A7502C((v45 > 1), v46 + 1, 1, v10);
              v10 = result;
            }

            v47 = v82.n128_u32[0];
            *(&v47 + 1) = v44 / v8;
            *(v10 + 2) = v46 + 1;
            v48 = &v10[32 * v46];
            *(v48 + 2) = v47;
            *(v48 + 12) = 0;
            if (__OFADD__(v43, v85))
            {
              goto LABEL_93;
            }

            v49 = v5;
            result = sub_258AA29D0(v86, v43 + v85);
            v50 = *(result + 16);
            v51 = *(v11 + 16);
            v52 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              goto LABEL_94;
            }

            v53 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if (!result || v52 > *(v11 + 24) >> 1)
            {
              if (v51 <= v52)
              {
                v54 = v51 + v50;
              }

              else
              {
                v54 = v51;
              }

              result = sub_258A74F10(result, v54, 1, v11);
              v11 = result;
            }

            v5 = v49;
            if (*(v53 + 16))
            {
              v55 = *(v11 + 16);
              if ((*(v11 + 24) >> 1) - v55 < v50)
              {
                goto LABEL_98;
              }

              memcpy((v11 + 4 * v55 + 32), (v53 + 32), 4 * v50);

              if (v50)
              {
                v56 = *(v11 + 16);
                v26 = __OFADD__(v56, v50);
                v57 = v56 + v50;
                if (v26)
                {
                  goto LABEL_101;
                }

                *(v11 + 16) = v57;
              }
            }

            else
            {

              if (v50)
              {
                goto LABEL_95;
              }
            }

            --v44;
            ++v43;
            if (v44 == -1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_258A7502C(0, *(v10 + 2) + 1, 1, v10);
              }

              v59 = *(v10 + 2);
              v58 = *(v10 + 3);
              if (v59 >= v58 >> 1)
              {
                v10 = sub_258A7502C((v58 > 1), v59 + 1, 1, v10);
              }

              *&v60 = v82.n128_u32[0];
              *(&v60 + 1) = COERCE_UNSIGNED_INT(0.5);
              *(v10 + 2) = v59 + 1;
              v61 = &v10[32 * v59 + 32];
              *v61 = v60;
              *(v61 + 16) = -1082130432;
              result = sub_258AA29D0(v86, v79);
              v62 = *(result + 16);
              v63 = *(v11 + 16);
              v64 = v63 + v62;
              if (__OFADD__(v63, v62))
              {
                goto LABEL_102;
              }

              v65 = result;
              result = swift_isUniquelyReferenced_nonNull_native();
              if (!result || v64 > *(v11 + 24) >> 1)
              {
                if (v63 <= v64)
                {
                  v66 = v63 + v62;
                }

                else
                {
                  v66 = v63;
                }

                result = sub_258A74F10(result, v66, 1, v11);
                v11 = result;
              }

              v5 = v49;
              if (*(v65 + 16))
              {
                v67 = *(v11 + 16);
                if ((*(v11 + 24) >> 1) - v67 < v62)
                {
                  goto LABEL_104;
                }

                memcpy((v11 + 4 * v67 + 32), (v65 + 32), 4 * v62);

                result = a1;
                v3 = v81;
                if (v62)
                {
                  v68 = *(v11 + 16);
                  v26 = __OFADD__(v68, v62);
                  v69 = v68 + v62;
                  if (v26)
                  {
                    goto LABEL_105;
                  }

                  *(v11 + 16) = v69;
                }
              }

              else
              {

                result = a1;
                v3 = v81;
                if (v62)
                {
                  goto LABEL_103;
                }
              }

              if (v3 != v77)
              {
                goto LABEL_6;
              }

              v70 = *(v10 + 2);
              *(v2 + 48) = v70;
              *(v2 + 56) = *(v11 + 16);
              if (!(v70 >> 58))
              {
                v71 = result;
                v72 = [result newBufferWithBytes:v10 + 32 length:32 * v70 options:0];

                v73 = *(v2 + 64);
                *(v2 + 64) = v72;
                result = swift_unknownObjectRelease();
                v74 = *(v2 + 56);
                if ((v74 - 0x2000000000000000) >> 62 != 3)
                {
                  goto LABEL_107;
                }

                v75 = [v71 newBufferWithBytes:v11 + 32 length:4 * v74 options:0];

                v76 = *(v2 + 72);
                *(v2 + 72) = v75;

                return swift_unknownObjectRelease();
              }

              goto LABEL_106;
            }
          }
        }
      }
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
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
  return result;
}

uint64_t sub_258AA29D0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = 4;
  if (v3 >= 2)
  {
    v4 = 5;
  }

  v5 = v4 + qword_258B33228[v3];
  v6 = result * v5;
  if ((result * v5) >> 64 != (result * v5) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8 % v5;
  v10 = v6 + v8 % v5;
  if (__OFADD__(v6, v8 % v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(result, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = (result + 1) % (116 * v3 + 128) * v5;
  v12 = v11 + a2;
  if (__OFADD__(v11, a2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_258A38584();
  result = swift_allocObject();
  *(result + 16) = xmmword_258B2FB80;
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(result + 32) = v7;
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v10))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = v11 + v9;
  *(result + 36) = v10;
  if (v11 + v9 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(result + 40) = v13;
  *(result + 44) = v7;
  *(result + 48) = v13;
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!HIDWORD(v12))
  {
    *(result + 52) = v12;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_258AA2B0C()
{
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_258AA2B84()
{
  result = qword_27F9709B0;
  if (!qword_27F9709B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9709B0);
  }

  return result;
}

id sub_258AA2BD8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD7090]) init];
  v1 = [v0 attributes];
  v2 = [v0 layouts];
  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  [result setFormat_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [result setOffset_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [result setBufferIndex_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  [result setFormat_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  [result setOffset_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  [result setBufferIndex_];

  result = [v2 objectAtIndexedSubscript_];
  if (result)
  {
    v10 = result;
    [result setStride_];

    return v0;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *StateOfMindOverlayRoomViewController.init(displayDate:applicationItems:factorDisplayTypes:sleepChartFormatter:addDataViewControllerProvider:preferredOverlay:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  ObjectType = swift_getObjectType();
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - v15;
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation] = 0;
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_sleepChartFormatter] = a4;
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_addDataViewControllerProvider] = a5;
  sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
  v30 = a4;
  swift_unknownObjectRetain();
  sub_258ADEBAC(a2, 0, 0);
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayType] = v17;
  sub_258ADEBAC(a2, 0, 1);
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayTypeWithLegend] = v18;
  sub_258A312AC(a1, v16);
  v19 = sub_258B00084();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v16, 1, v19) != 1)
  {
    v21 = sub_258B00014();
    (*(v20 + 8))(v16, v19);
  }

  if (a3)
  {
    v22 = sub_258B02C64();
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for StateOfMindOverlayRoomViewController();
  v33.receiver = v7;
  v33.super_class = v23;
  v24 = objc_msgSendSuper2(&v33, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, v21, a2, v22, 3);

  v25 = v24;
  v26 = static StateOfMindOverlayRoomViewController.stateOfMindContextLocation(for:)();

  swift_unknownObjectRelease();
  sub_258A2A66C(a1);
  v27 = *&v25[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation];
  *&v25[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation] = v26;

  return v25;
}

id static StateOfMindOverlayRoomViewController.stateOfMindContextLocation(for:)()
{
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B02FA4();
  result = 0;
  if ((v7 & 1) == 0)
  {
    type metadata accessor for StateOfMindOverlayRoomViewController();
    v8 = static StateOfMindOverlayRoomViewController.supportedStateOfMindDomainContexts()();
    v9 = *(v8 + 2);
    if (v9)
    {
      v10 = 0;
      while (*&v8[8 * v10 + 32] != v5)
      {
        if (v9 == ++v10)
        {
          goto LABEL_6;
        }
      }

      return [objc_allocWithZone(MEMORY[0x277D129D0]) initWithContainerIndex:1 sectionIndex:0 itemIndex:v10];
    }

    else
    {
LABEL_6:

      sub_258B00364();
      v11 = sub_258B00374();
      v12 = sub_258B02E84();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19 = v14;
        *v13 = 136446466;
        v15 = sub_258B035A4();
        v17 = sub_2589F1F78(v15, v16, &v19);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v5;
        _os_log_impl(&dword_2589A1000, v11, v12, "[%{public}s] Asked to create context location for unsupported domain: %ld", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x259C945C0](v14, -1, -1);
        MEMORY[0x259C945C0](v13, -1, -1);
      }

      (*(v1 + 8))(v4, v0);
      return 0;
    }
  }

  return result;
}

id sub_258AA36CC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v7 = sub_258B00374();
  v8 = sub_258B02EA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_258B035A4();
    v13 = sub_2589F1F78(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2589A1000, v7, v8, "[%{public}s] View did load", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C945C0](v10, -1, -1);
    MEMORY[0x259C945C0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = type metadata accessor for StateOfMindOverlayRoomViewController();
  v18.receiver = v1;
  v18.super_class = v14;
  return objc_msgSendSuper2(&v18, sel_viewDidLoad);
}

id sub_258AA396C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA98A8(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v60 - v9;
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v60 - v13;
  v15 = [v1 primaryDisplayType];
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      v20 = [v18 baseDisplayType];
      if (v20)
      {
        v21 = v20;
        v67 = [v20 hk_interactiveChartOptions];
      }

      else
      {

        v67 = 0;
      }
    }

    else
    {
      v67 = [v16 hk_interactiveChartOptions];
    }

    v65 = [v1 additionalChartOptions];
    v32 = [v1 applicationItems];
    v68 = [v32 healthStore];

    v33 = [v1 applicationItems];
    v66 = [v33 unitController];

    v34 = [v1 applicationItems];
    v64 = [v34 dateCache];

    v35 = [v1 applicationItems];
    v63 = [v35 chartDataCacheController];

    v36 = [v1 applicationItems];
    v62 = [v36 timeScopeController];

    v37 = [v1 applicationItems];
    v61 = [v37 sampleDateRangeController];

    v38 = [v1 displayDate];
    if (v38)
    {
      v39 = v38;
      sub_258B00034();

      v40 = sub_258B00084();
      (*(*(v40 - 8) + 56))(v14, 0, 1, v40);
    }

    else
    {
      v40 = sub_258B00084();
      (*(*(v40 - 8) + 56))(v14, 1, 1, v40);
    }

    v41 = sub_258B00224();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v10, 1, 1, v41);
    sub_258B00084();
    v43 = *(v40 - 8);
    v44 = (*(v43 + 48))(v14, 1, v40);
    v45 = v16;
    v46 = 0;
    if (v44 != 1)
    {
      v46 = sub_258B00014();
      (*(v43 + 8))(v14, v40);
    }

    v47 = v65 | v67;
    v48 = (*(v42 + 48))(v10, 1, v41);
    v60 = v1;
    if (v48 == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = sub_258B00194();
      (*(v42 + 8))(v10, v41);
    }

    v50 = objc_allocWithZone(type metadata accessor for StateOfMindChartViewController());
    v59 = v47;
    v51 = v61;
    v52 = v68;
    v53 = v66;
    v55 = v63;
    v54 = v64;
    v56 = v62;
    v57 = [v50 initWithHealthStore:v68 primaryDisplayType:v45 unitPreferenceController:v66 dateCache:v64 chartDataCacheController:v63 selectedTimeScopeController:v62 sampleTypeDateRangeController:v61 initialXValue:v46 currentCalendarOverride:v49 options:v59];

    v58 = v57;
    [v58 setCurrentOverlayLocationProvider_];

    return v58;
  }

  else
  {
    sub_258B00364();
    v22 = sub_258B00374();
    v23 = sub_258B02E94();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v69 = v25;
      *v24 = 136446210;
      v26 = sub_258B035A4();
      v28 = sub_2589F1F78(v26, v27, &v69);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2589A1000, v22, v23, "[%{public}s] Asked to create chart overlay without a display type", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x259C945C0](v25, -1, -1);
      MEMORY[0x259C945C0](v24, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v29 = type metadata accessor for StateOfMindOverlayRoomViewController();
    v70.receiver = v1;
    v70.super_class = v29;
    v30 = objc_msgSendSuper2(&v70, sel_createChartOverlayViewController);

    return v30;
  }
}

id sub_258AA41A8(uint64_t a1, uint64_t a2)
{
  if (a1 != 3)
  {
    return 0;
  }

  result = *(v2 + OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation);
  if (result)
  {
    *(v2 + OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation) = 0;
    return result;
  }

  if (a2 == 2)
  {
    return [objc_allocWithZone(MEMORY[0x277D129D0]) initWithContainerIndex:2 sectionIndex:0 itemIndex:0];
  }

  else
  {
    return 0;
  }
}

double sub_258AA43A0(void *a1)
{
  sub_258AA98A8(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v109 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v108 = v99 - v7;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v103 = qword_27F97ABA0;
  v104 = qword_27F97AB98;
  v105 = qword_27F97AB90;
  v8 = sub_258AFFD94();
  v112 = v9;
  v113 = v8;
  sub_258A0032C(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v102 = v10;
  v111 = swift_allocObject();
  v101 = xmmword_258B2E600;
  *(v111 + 16) = xmmword_258B2E600;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_258B2F490;
  v12 = [v1 applicationItems];
  v114 = sub_2589F4488(0, &unk_27F970A60, 0x277D12900);
  sub_258AFFD94();
  v13 = sub_258B03064();

  v14 = type metadata accessor for StateOfMindSampleCountContext();
  v15 = objc_allocWithZone(v14);
  v107 = v1;
  v16 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v17 = &v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v17 = 0x6E6152796C696144;
  *(v17 + 1) = 0xEA00000000006567;
  *&v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a1;
  sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
  v18 = a1;
  sub_258ADEBAC(v12, v13, 0);
  *&v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v19;
  *&v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = v13;
  v20 = *&v15[v16];
  *&v15[v16] = 0;
  v21 = v13;

  v22 = type metadata accessor for StateOfMindOverlayContext();
  v117.receiver = v15;
  v117.super_class = v22;
  v23 = objc_msgSendSuper2(&v117, sel_init);

  *(v11 + 32) = v23;
  v24 = [v107 applicationItems];
  sub_258AFFD94();
  v25 = sub_258B03064();

  v26 = objc_allocWithZone(v14);
  v27 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v26[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v28 = &v26[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  strcpy(&v26[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_], "MomentaryRange");
  v28[15] = -18;
  *&v26[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = v18;
  v114 = v18;
  sub_258ADEBAC(v24, v25, 0);
  *&v26[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v29;
  *&v26[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = v25;
  v30 = *&v26[v27];
  *&v26[v27] = 0;
  v31 = v25;

  v116.receiver = v26;
  v116.super_class = v22;
  v32 = v107;
  v33 = objc_msgSendSuper2(&v116, sel_init);

  *(v11 + 40) = v33;
  v34 = objc_allocWithZone(MEMORY[0x277D129D8]);
  v35 = sub_258A9A2EC(0, &qword_27F970A78, &protocolRef_HKOverlayContext);
  v36 = sub_258B02C64();

  v37 = [v34 initWithSectionTitle:0 overlayContextItems:v36];

  *(v111 + 32) = v37;
  v38 = objc_allocWithZone(MEMORY[0x277D129E0]);
  v39 = sub_258B02AD4();

  v40 = sub_2589F4488(0, &qword_27F970A80, 0x277D129D8);
  v41 = sub_258B02C64();

  v42 = &property descriptor for StateOfMindEntryModel.valence;
  v100 = [v38 initWithContainerTitle:v39 overlayContextSections:v41];

  v97 = 0xE000000000000000;
  sub_258AFFD94();
  v43 = swift_allocObject();
  *(v43 + 16) = v101;
  sub_258AA5940(v114);
  v44 = objc_allocWithZone(MEMORY[0x277D129D8]);
  v99[2] = v35;
  v45 = sub_258B02C64();

  v46 = [v44 initWithSectionTitle:0 overlayContextItems:v45];

  *(v43 + 32) = v46;
  v47 = objc_allocWithZone(MEMORY[0x277D129E0]);
  v48 = sub_258B02AD4();

  v99[1] = v40;
  v49 = sub_258B02C64();

  v50 = [v47 initWithContainerTitle:v48 overlayContextSections:v49];

  v51 = sub_258AA5564();
  if (v51 >> 62)
  {
    v96 = v51;
    v52 = sub_258B032B4();
    v51 = v96;
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99[0] = v50;
  if (v52)
  {
    v53 = v51;
    v115 = MEMORY[0x277D84F90];
    sub_258B03244();
    if (v52 < 0)
    {
      __break(1u);
LABEL_34:
      sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
      sub_258B003E4();
      v80 = sub_258B032A4();

      goto LABEL_24;
    }

    v54 = 0;
    v55 = v53;
    v110 = v53 & 0xC000000000000001;
    v111 = OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayTypeWithLegend;
    v106 = OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_sleepChartFormatter;
    v112 = v52;
    v113 = v53;
    do
    {
      if (v110)
      {
        v58 = MEMORY[0x259C937C0](v54, v55);
      }

      else
      {
        v58 = *(v55 + 8 * v54 + 32);
      }

      v59 = v58;
      v60 = [v58 objectType];
      v61 = [v60 code];

      if (v61 == 63)
      {
        v62 = [(SEL *)v32 applicationItems];
        v63 = *(v32 + v106);
        v64 = *(v32 + v111);
        v65 = sub_258B00224();
        v66 = *(v65 - 8);
        v67 = v108;
        (*(v66 + 56))(v108, 1, 1, v65);
        v68 = sub_258B02AD4();
        v69 = 0;
        if ((*(v66 + 48))(v67, 1, v65) != 1)
        {
          v70 = v108;
          v69 = sub_258B00194();
          (*(v66 + 8))(v70, v65);
        }

        v71 = objc_allocWithZone(MEMORY[0x277D129F8]);
        LOBYTE(v98) = 0;
        [v71 initWithApplicationItems:v62 overlayChartController:v114 sleepChartFormatter:v63 primaryDisplayType:v64 uniqueIdentifier:v68 firstWeekdayOverride:0 currentCalendarOverride:v69 isInfoButtonHidden:v98];
        v32 = v107;
      }

      else
      {
        v62 = [v59 sampleType];
        v72 = *(v32 + v111);
        v73 = sub_258B00224();
        v74 = *(v73 - 8);
        v75 = v109;
        (*(v74 + 56))(v109, 1, 1, v73);
        v69 = [(SEL *)v32 applicationItems];
        v68 = 0;
        if ((*(v74 + 48))(v75, 1, v73) != 1)
        {
          v76 = v109;
          v68 = sub_258B00194();
          (*(v74 + 8))(v76, v73);
        }

        v56 = objc_allocWithZone(MEMORY[0x277D12A00]);
        LOBYTE(v97) = 0;
        [v56 initWithDisplayType:v72 overlayDisplayType:0 stackedSampleType:v62 overlayChartController:v114 currentCalendarOverride:v68 applicationItems:v69 isInfoButtonHidden:v97];
      }

      ++v54;
      sub_258B03224();
      v57 = *(v115 + 16);
      sub_258B03254();
      sub_258B03264();
      sub_258B03234();
      v55 = v113;
    }

    while (v112 != v54);

    v50 = v115;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v77 = [(SEL *)v32 buildFactorContextsAllowingDeselection:0, v99[0]];
  if (!v77)
  {
    v42 = v100;
    v32 = &property descriptor for StateOfMindEntryModel.valence;
    goto LABEL_28;
  }

  v48 = v77;
  v78 = [v77 activeFactorContexts];
  sub_2589F4488(0, &qword_27F970A58, 0x277D129F0);
  v79 = sub_258B02C74();

  v42 = v100;
  v32 = &property descriptor for StateOfMindEntryModel.valence;
  if (v79 >> 62)
  {
    goto LABEL_34;
  }

  sub_258B003E4();
  sub_258B03464();
  sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
  v80 = v79;
LABEL_24:

  v115 = v80;
  sub_2589FCAB4(v50);
  v81 = v115;
  v82 = [v48 inactiveFactorContexts];
  v83 = sub_258B02C74();

  if (v83 >> 62)
  {
    sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
    sub_258B003E4();
    v84 = sub_258B032A4();
  }

  else
  {
    sub_258B003E4();
    sub_258B03464();
    sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
    v84 = v83;
  }

  v115 = v81;
  sub_2589FCAB4(v84);

  v50 = v115;
LABEL_28:
  sub_258AFFD94();
  v85 = swift_allocObject();
  *(v85 + 16) = v101;
  sub_258B003E4();
  if (v50 >> 62)
  {
    sub_258B032A4();
  }

  else
  {
    sub_258B03464();
  }

  v86 = objc_allocWithZone(MEMORY[0x277D129D8]);
  v87 = sub_258B02C64();

  v88 = [v86 v32[324]];

  *(v85 + 32) = v88;
  v89 = objc_allocWithZone(MEMORY[0x277D129E0]);
  v90 = sub_258B02AD4();

  v91 = sub_258B02C64();

  v92 = [v89 initWithContainerTitle:v90 overlayContextSections:v91];

  v93 = swift_allocObject();
  *&result = 3;
  *(v93 + 16) = xmmword_258B33250;
  v95 = v99[0];
  *(v93 + 32) = v42;
  *(v93 + 40) = v95;
  *(v93 + 48) = v92;
  return result;
}

char *static StateOfMindOverlayRoomViewController.supportedStateOfMindDomainContexts()()
{
  v0 = sub_258B02FB4();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v8 = *(v4 + 8 * v3);
      v11 = v8;
      if (sub_258AA5334(&v11))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_258AA930C(0, *(v5 + 2) + 1, 1);
          v5 = v12;
        }

        v7 = *(v5 + 2);
        v6 = *(v5 + 3);
        if (v7 >= v6 >> 1)
        {
          sub_258AA930C((v6 > 1), v7 + 1, 1);
          v5 = v12;
        }

        *(v5 + 2) = v7 + 1;
        *&v5[8 * v7 + 32] = v8;
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_12:

    v12 = v5;

    sub_258AA7444(&v12);

    return v12;
  }

  return result;
}

BOOL sub_258AA5334(uint64_t *a1)
{
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = HKUILocalizedStringForStateOfMindDomain();
  v9 = sub_258B02B14();
  v11 = v10;

  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    sub_258B00364();
    v13 = sub_258B00374();
    v14 = sub_258B02E94();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v14;
      v16 = v15;
      v26 = swift_slowAlloc();
      v28 = v26;
      *v16 = 136446466;
      v17 = sub_258B035A4();
      v19 = sub_2589F1F78(v17, v18, &v28);
      v25 = v13;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v7;
      v21 = v25;
      _os_log_impl(&dword_2589A1000, v25, v27, "[%{public}s] Active domain has empty title: %ld", v16, 0x16u);
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x259C945C0](v22, -1, -1);
      MEMORY[0x259C945C0](v16, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
  }

  return v12 != 0;
}

uint64_t sub_258AA5564()
{
  v1 = v0;
  sub_258A0032C(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B33260;
  sub_2589F4488(0, &qword_27F970270, 0x277CCD8D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = &property descriptor for StateOfMindEntryModel.valence;
  v5 = [ObjCClassFromMetadata dataTypeWithCode_];
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 32) = v5;
  v6 = [ObjCClassFromMetadata dataTypeWithCode_];
  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 40) = v6;
  v7 = [ObjCClassFromMetadata dataTypeWithCode_];
  if (!v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(inited + 48) = v7;
  v8 = [ObjCClassFromMetadata dataTypeWithCode_];
  if (v8)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    *(inited + 56) = v8;
    v20 = v10;
    while (1)
    {
      if (v9 == 4)
      {
        swift_setDeallocating();
        v17 = *(inited + 16);
        swift_arrayDestroy();
        v18 = sub_258B003E4();
        v20 = sub_2589F3D34(v18);
        sub_258AA74B0(&v20);

        return v20;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x259C937C0](v9, inited);
      }

      else
      {
        if (v9 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(inited + 8 * v9 + 32);
      }

      v12 = v11;
      v4 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v1 applicationItems];
      v14 = [v13 displayTypeController];

      v15 = [v14 displayTypeForObjectType_];
      ++v9;
      if (v15)
      {
        MEMORY[0x259C93250]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_258B02C94();
        }

        sub_258B02CB4();
        v9 = v4;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_258AA582C(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 localization];
  v4 = [v3 displayName];

  v5 = sub_258B02B14();
  v7 = v6;

  v8 = [v2 localization];
  v9 = [v8 displayName];

  v10 = sub_258B02B14();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_258B03454();
  }

  return v14 & 1;
}

uint64_t sub_258AA5940(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = static StateOfMindOverlayRoomViewController.supportedStateOfMindDomainContexts()();
  v5 = *(v4 + 2);
  if (v5)
  {
    v33 = MEMORY[0x277D84F90];
    sub_258B03244();
    sub_2589F4488(0, &unk_27F970A60, 0x277D12900);
    v28 = a1;
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    v6 = 32;
    do
    {
      v29 = v5;
      v7 = *&v4[v6];
      v31 = 0x6E69616D6F44;
      v32 = 0xE600000000000000;
      v8 = NSStringFromHKStateOfMindDomain();
      v9 = sub_258B02B14();
      v11 = v10;

      MEMORY[0x259C931B0](v9, v11);

      v12 = v31;
      v13 = v32;
      v14 = [v2 applicationItems];
      v15 = sub_258B03074();
      v16 = objc_allocWithZone(type metadata accessor for StateOfMindSampleCountContext());
      v17 = v4;
      v18 = v2;
      v19 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
      *&v16[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
      v20 = &v16[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
      *v20 = v12;
      v20[1] = v13;
      *&v16[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = v28;
      v21 = v28;
      sub_258ADEBAC(v14, v15, 0);
      *&v16[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v22;
      *&v16[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = v15;
      v23 = *&v16[v19];
      *&v16[v19] = 0;
      v2 = v18;
      v4 = v17;
      v24 = v15;

      v25 = type metadata accessor for StateOfMindOverlayContext();
      v30.receiver = v16;
      v30.super_class = v25;
      objc_msgSendSuper2(&v30, sel_init);

      sub_258B03224();
      v26 = *(v33 + 16);
      sub_258B03254();
      sub_258B03264();
      sub_258B03234();
      v6 += 8;
      v5 = v29 - 1;
    }

    while (v29 != 1);

    return v33;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_258AA5C20(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_258AA5564();
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (result >> 62)
    {
      v23 = result;
      v24 = sub_258B032B4();
      result = v23;
      if (v24 > a1)
      {
LABEL_4:
        if ((result & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x259C937C0](a1);
        }

        else
        {
          if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
          {
            __break(1u);
            return result;
          }

          v8 = *(result + 8 * a1 + 32);
        }

        v9 = v8;

        v10 = [v9 objectType];
        v11 = [v10 code];

        if (v11 > 98)
        {
          if (v11 == 99)
          {
            v12 = 0x4E4C5546444E494DLL;
            v14 = 0xEB00000000535345;
            v13 = v9;
          }

          else
          {
            if (v11 != 279)
            {
LABEL_14:
              sub_258B00364();
              v16 = sub_258B00374();
              v17 = sub_258B02E84();
              if (os_log_type_enabled(v16, v17))
              {
                v18 = swift_slowAlloc();
                v19 = swift_slowAlloc();
                v26 = v19;
                *v18 = 136446210;
                v20 = sub_258B035A4();
                v22 = sub_2589F1F78(v20, v21, &v26);

                *(v18 + 4) = v22;
                _os_log_impl(&dword_2589A1000, v16, v17, "[%{public}s] Unsupported comparison type", v18, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v19);
                MEMORY[0x259C945C0](v19, -1, -1);
                MEMORY[0x259C945C0](v18, -1, -1);
              }

              (*(v3 + 8))(v6, v2);
              return 0;
            }

            v12 = 0x544847494C594144;
            v13 = v9;
            v14 = 0xE800000000000000;
          }
        }

        else
        {
          if (v11 != 63)
          {
            if (v11 == 75)
            {
              v12 = 0x4553494352455845;
              v13 = v9;
              v14 = 0xE800000000000000;
              v15 = 0;
LABEL_20:
              sub_258AA6360(v13, v12, v14, v15);

              return 1;
            }

            goto LABEL_14;
          }

          v12 = 0x5045454C53;
          v13 = v9;
          v14 = 0xE500000000000000;
        }

        v15 = 1;
        goto LABEL_20;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

unint64_t sub_258AA5F5C(uint64_t a1, void *a2)
{
  v5 = sub_258AA5564();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v6 = sub_258B032B4();

  if (!a2)
  {
    return 0;
  }

LABEL_3:
  v7 = a2;
  v8 = [v7 activeFactorContexts];
  v9 = sub_2589F4488(0, &qword_27F970A58, 0x277D129F0);
  v10 = sub_258B02C74();

  if (v10 >> 62)
  {
    v11 = sub_258B032B4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 > a1)
  {
    v13 = [v7 activeFactorContexts];
    v9 = sub_258B02C74();

    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x259C937C0](a1, v9);
      goto LABEL_10;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v14 = *(v9 + 8 * a1 + 32);
LABEL_10:
        v15 = v14;

        v16 = [v15 stackedBaseDisplayType];
        v17 = objc_opt_self();
        v18 = *&v2[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayType];
        v19 = v16;
        v20 = [v2 applicationItems];
        v21 = [v20 healthStore];

        v22 = [v17 infographicViewControllerForDisplayType:v18 factorDisplayType:v19 healthStore:v21];
        if (!v22)
        {
          v25 = 0;
          goto LABEL_26;
        }

        v23 = v7;
        v24 = v22;
LABEL_23:
        v34 = v15;
        v25 = 1;
        [v2 hk:v22 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];

        v7 = v24;
        v15 = v19;
        v19 = v34;
LABEL_26:

        v7 = v19;
        goto LABEL_27;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (__OFADD__(v6, v11))
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v6 + v11 > a1)
  {
    v25 = 0;
LABEL_27:

    return v25;
  }

  v26 = [v7 inactiveFactorContexts];
  v9 = sub_258B02C74();

  v27 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
    goto LABEL_36;
  }

  result = v27 - v11;
  if (__OFSUB__(v27, v11))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_38:
    v28 = MEMORY[0x259C937C0](result, v9);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v9 + 8 * result + 32);
LABEL_21:
    v19 = v28;

    v29 = [v19 stackedBaseDisplayType];
    v30 = objc_opt_self();
    v31 = *&v2[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayType];
    v24 = v29;
    v32 = [v2 applicationItems];
    v33 = [v32 healthStore];

    v22 = [v30 infographicViewControllerForDisplayType:v31 factorDisplayType:v24 healthStore:v33];
    if (!v22)
    {
      v25 = 0;
      v15 = v19;
      v19 = v24;
      goto LABEL_26;
    }

    v23 = v22;
    v15 = v7;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_258AA6360(void *a1, uint64_t a2, id a3, int a4)
{
  LODWORD(v75) = a4;
  ObjectType = swift_getObjectType();
  v8 = sub_258B00384();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v13 = a1;
  v14 = sub_258B00374();
  v15 = sub_258B02EA4();

  v16 = os_log_type_enabled(v14, v15);
  v66 = v13;
  v67 = ObjectType;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v73 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v71 = v8;
    v20 = v19;
    aBlock = v19;
    *v18 = 136446466;
    v21 = sub_258B035A4();
    v23 = sub_2589F1F78(v21, v22, &aBlock);
    v72 = a2;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v25 = v13;
    v26 = [v25 description];
    v27 = sub_258B02B14();
    v29 = v28;

    a2 = v72;
    v30 = sub_2589F1F78(v27, v29, &aBlock);

    *(v18 + 14) = v30;
    _os_log_impl(&dword_2589A1000, v14, v15, "[%{public}s] Opening life factor view for type: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v20, -1, -1);
    v31 = v18;
    a3 = v73;
    MEMORY[0x259C945C0](v31, -1, -1);

    (*(v9 + 8))(v12, v71);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v73 = [objc_allocWithZone(MEMORY[0x277D12970]) init];
  aBlock = 0;
  v77 = 0xE000000000000000;
  sub_258B031B4();

  aBlock = 0xD000000000000012;
  v77 = 0x8000000258B389C0;
  MEMORY[0x259C931B0](a2, a3);
  MEMORY[0x259C931B0](0x454C5449545FLL, 0xE600000000000000);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v32 = qword_27F97AB90;
  v33 = qword_27F97AB98;
  v34 = qword_27F97ABA0;
  v69 = sub_258AFFD94();

  aBlock = 0;
  v77 = 0xE000000000000000;
  sub_258B031B4();

  aBlock = 0xD000000000000012;
  v77 = 0x8000000258B389C0;
  MEMORY[0x259C931B0](a2, a3);
  MEMORY[0x259C931B0](0x59444F425FLL, 0xE500000000000000);
  v70 = v34;
  v71 = v33;
  v72 = v32;
  v68 = sub_258AFFD94();

  v35 = 0;
  v36 = 0;
  v37 = a2;
  v38 = 0;
  if (v75)
  {
    aBlock = 0;
    v77 = 0xE000000000000000;
    sub_258B031B4();

    aBlock = 0xD000000000000012;
    v77 = 0x8000000258B389C0;
    MEMORY[0x259C931B0](v37, a3);
    MEMORY[0x259C931B0](0x474E4947474F4C5FLL, 0xE800000000000000);
    sub_258AFFD94();
    v38 = v39;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v42 = v66;
    v41 = v67;
    v36[2] = v40;
    v36[3] = v42;
    v43 = v73;
    v36[4] = v73;
    v36[5] = v41;
    v44 = v42;
    v45 = v43;
    v35 = sub_258AA9E84;
  }

  sub_258A103FC(v35);
  v46 = sub_258B02AD4();

  v47 = sub_258B02AD4();

  if (!v38)
  {
    v48 = 0;
    if (v75)
    {
      goto LABEL_10;
    }

LABEL_12:
    v49 = 0;
    goto LABEL_13;
  }

  v48 = sub_258B02AD4();

  if ((v75 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v80 = v35;
  v81 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_2589E92FC;
  v79 = &block_descriptor_13;
  v49 = _Block_copy(&aBlock);

LABEL_13:
  v50 = [objc_allocWithZone(MEMORY[0x277D128E0]) initWithTitle:v46 detail:v47 buttonTextString:v48 buttonAction:v49];
  _Block_release(v49);

  sub_258A0032C(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v51 = swift_allocObject();
  v75 = xmmword_258B2E600;
  *(v51 + 16) = xmmword_258B2E600;
  *(v51 + 32) = v50;
  v52 = objc_allocWithZone(MEMORY[0x277D128E8]);
  sub_258A9A2EC(0, &qword_27F970A48, &protocolRef_HKInfographicItem);
  v53 = v50;
  v54 = sub_258B02C64();

  v55 = [v52 initWithItems_];

  v56 = v55;
  sub_258AFFD94();
  v57 = sub_258B02AD4();

  [v56 setTitle_];

  v58 = [v56 navigationItem];
  v59 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v60 = v74;
  v61 = [v59 initWithBarButtonSystemItem:24 target:v74 action:sel_dismissAnimated_];
  [v58 setRightBarButtonItem_];

  v62 = swift_allocObject();
  *(v62 + 16) = v75;
  *(v62 + 32) = v56;
  sub_2589F4488(0, &qword_27F970A50, 0x277D75D28);
  v63 = sub_258B02C64();

  v64 = v73;
  [v73 setViewControllers:v63 animated:0];

  [v60 hk:v64 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];
  sub_258A1040C(v35);
}

void sub_258AA6BA4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_258B00384();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_258B00364();
    v12 = a2;
    v13 = sub_258B00374();
    v14 = sub_258B02EA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v35 = a3;
      v16 = v15;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v16 = 136446466;
      v17 = sub_258B035A4();
      v19 = sub_2589F1F78(v17, v18, &v36);
      v34 = v5;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v21 = v12;
      v22 = [v21 description];
      v23 = sub_258B02B14();
      HIDWORD(v32) = v14;
      v24 = v12;
      v26 = v25;

      v27 = sub_2589F1F78(v23, v26, &v36);
      v12 = v24;

      *(v16 + 14) = v27;
      _os_log_impl(&dword_2589A1000, v13, BYTE4(v32), "[%{public}s] Opening logging view for type: %{public}s", v16, 0x16u);
      v28 = v33;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v28, -1, -1);
      v29 = v16;
      a3 = v35;
      MEMORY[0x259C945C0](v29, -1, -1);

      (*(v6 + 8))(v9, v34);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v30 = [*&v11[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_addDataViewControllerProvider] addDataViewControllerForDisplayType_];
    v31 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [a3 hk:v31 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];
  }
}

id sub_258AA6E9C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v7 = sub_258B00374();
  v8 = sub_258B02EA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_258B035A4();
    v13 = sub_2589F1F78(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2589A1000, v7, v8, "[%{public}s] Dismissing", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C945C0](v10, -1, -1);
    MEMORY[0x259C945C0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id StateOfMindOverlayRoomViewController.__allocating_init(displayDate:applicationItems:factorDisplayTypes:mode:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(a1, 1, v10) != 1)
  {
    v12 = sub_258B00014();
    (*(v11 + 8))(a1, v10);
  }

  if (a3)
  {
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    v13 = sub_258B02C64();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v5) initWithDisplayDate:v12 applicationItems:a2 factorDisplayTypes:v13 mode:a4];

  return v14;
}

id StateOfMindOverlayRoomViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindOverlayRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258AA7444(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258AE9B70(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_258AA752C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_258AA74B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_258AEAF8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_258AA7628(v6);
  return sub_258B03234();
}

uint64_t sub_258AA752C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_258B03404();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for __HKStateOfMindDomain(0);
        v5 = sub_258B02CA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_258AA7A38(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_258AA773C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258AA7628(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_258B03404();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
        v6 = sub_258B02CA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_258AA81A8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_258AA7880(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258AA773C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v23 = v7;
    v24 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = HKUILocalizedStringForStateOfMindDomain();
      v11 = sub_258B02B14();
      v13 = v12;

      v14 = HKUILocalizedStringForStateOfMindDomain();
      v15 = sub_258B02B14();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        ++v4;
        v6 = v24 + 1;
        v7 = v23 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_258B03454();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v20 = *v6;
      result = v6[1];
      *v6 = result;
      v6[1] = v20;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258AA7880(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v6 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localization];
      v11 = [v10 displayName];

      v12 = sub_258B02B14();
      v14 = v13;

      v15 = [v9 localization];
      v16 = [v15 displayName];

      v17 = sub_258B02B14();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {

LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v21 = sub_258B03454();

      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v22 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258AA7A38(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v116 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v7 = v6;
    v6 = *v116;
    if (!*v116)
    {
      goto LABEL_147;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_110:
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v106 = *(result + 16 * v4);
          v107 = result;
          v108 = *(result + 16 * (v4 - 1) + 40);
          sub_258AA89E0((*a3 + 8 * v106), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v108), v6);
          if (v7)
          {
          }

          if (v108 < v106)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_258AE8CC8(v107);
          }

          if (v4 - 2 >= *(v107 + 2))
          {
            goto LABEL_135;
          }

          v109 = &v107[16 * v4];
          *v109 = v106;
          *(v109 + 1) = v108;
          sub_258AE8C3C(v4 - 1);
          result = v107;
          v4 = *(v107 + 2);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_145;
      }
    }

LABEL_141:
    result = sub_258AE8CC8(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v114 = v9;
      v4 = *a3;
      v11 = *(*a3 + 8 * v8);
      v12 = *(*a3 + 8 * v10);
      v13 = HKUILocalizedStringForStateOfMindDomain();
      v14 = sub_258B02B14();
      v16 = v15;

      v17 = HKUILocalizedStringForStateOfMindDomain();
      v18 = sub_258B02B14();
      v20 = v19;

      if (v14 == v18 && v16 == v20)
      {
        v120 = 0;
      }

      else
      {
        v120 = sub_258B03454();
      }

      v8 = (v10 + 2);
      if (v10 + 2 < v7)
      {
        v111 = v10;
        v4 += 8 * v10 + 16;
        do
        {
          v24 = v6;
          v26 = *(v4 - 8);
          v25 = *v4;
          v27 = HKUILocalizedStringForStateOfMindDomain();
          v28 = sub_258B02B14();
          v30 = v29;

          v31 = HKUILocalizedStringForStateOfMindDomain();
          v32 = sub_258B02B14();
          v34 = v33;

          if (v28 == v32 && v30 == v34)
          {

            v6 = v24;
            if (v120)
            {
              v9 = v114;
              v10 = v111;
              goto LABEL_25;
            }
          }

          else
          {
            v22 = sub_258B03454();

            v23 = v120 ^ v22;
            v6 = v24;
            if (v23)
            {
              goto LABEL_23;
            }
          }

          v4 += 8;
          ++v8;
        }

        while (v7 != v8);
        v8 = v7;
LABEL_23:
        v10 = v111;
      }

      v9 = v114;
      if (v120)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_138;
        }

        if (v10 < v8)
        {
          v36 = v8 - 1;
          v37 = v10;
          do
          {
            if (v37 != v36)
            {
              v39 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v40 = *(v39 + 8 * v37);
              *(v39 + 8 * v37) = *(v39 + 8 * v36);
              *(v39 + 8 * v36) = v40;
            }
          }

          while (++v37 < v36--);
        }
      }
    }

    v41 = a3[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_137;
      }

      if (&v8[-v10] < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_136;
    }

    v59 = v9;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v9 = v59;
    }

    else
    {
      result = sub_258A74C78(0, *(v59 + 16) + 1, 1, v59);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v60 = *(v9 + 24);
    v61 = v4 + 1;
    if (v4 >= v60 >> 1)
    {
      result = sub_258A74C78((v60 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v61;
    v62 = v9 + 16 * v4;
    *(v62 + 32) = v10;
    *(v62 + 40) = v8;
    v7 = *v116;
    if (!*v116)
    {
      goto LABEL_146;
    }

    if (v4)
    {
      while (1)
      {
        v63 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v64 = *(v9 + 32);
          v65 = *(v9 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_75:
          if (v67)
          {
            goto LABEL_125;
          }

          v80 = (v9 + 16 * v61);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_128;
          }

          v86 = (v9 + 32 + 16 * v63);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_132;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v61 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v90 = (v9 + 16 * v61);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_89:
        if (v85)
        {
          goto LABEL_127;
        }

        v93 = v9 + 16 * v63;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_130;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v63 - 1;
        if (v63 - 1 >= v61)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v101 = v8;
        v102 = v9;
        v103 = *(v9 + 32 + 16 * v4);
        v104 = *(v9 + 32 + 16 * v63 + 8);
        sub_258AA89E0((*a3 + 8 * v103), (*a3 + 8 * *(v9 + 32 + 16 * v63)), (*a3 + 8 * v104), v7);
        if (v6)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_258AE8CC8(v102);
        }

        if (v4 >= *(v102 + 2))
        {
          goto LABEL_122;
        }

        v105 = &v102[16 * v4];
        *(v105 + 4) = v103;
        *(v105 + 5) = v104;
        result = sub_258AE8C3C(v63);
        v9 = v102;
        v61 = *(v102 + 2);
        v8 = v101;
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v9 + 32 + 16 * v61;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_123;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_124;
      }

      v75 = (v9 + 16 * v61);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_126;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_129;
      }

      if (v79 >= v71)
      {
        v97 = (v9 + 32 + 16 * v63);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_133;
        }

        if (v66 < v100)
        {
          v63 = v61 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_139;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v10)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v110 = v6;
  v112 = v10;
  v4 = *a3;
  v43 = *a3 + 8 * v8 - 8;
  v44 = v10 - v8;
  v117 = v42;
LABEL_44:
  v119 = v43;
  v121 = v8;
  v45 = *(v4 + 8 * v8);
  v118 = v44;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = HKUILocalizedStringForStateOfMindDomain();
    v49 = sub_258B02B14();
    v7 = v50;

    v51 = HKUILocalizedStringForStateOfMindDomain();
    v52 = sub_258B02B14();
    v54 = v53;

    if (v49 == v52 && v7 == v54)
    {

LABEL_43:
      v8 = v121 + 1;
      v43 = v119 + 8;
      v44 = v118 - 1;
      if (v121 + 1 == v117)
      {
        v8 = v117;
        v6 = v110;
        v10 = v112;
        v9 = v115;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v56 = sub_258B03454();

    if ((v56 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v4)
    {
      break;
    }

    v57 = *v46;
    *v46 = v46[1];
    v46[1] = v57;
    --v46;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

void sub_258AA81A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = *(a3 + 8);
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = v5;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v4;
LABEL_107:
      v124 = v101;
      v4 = *(v101 + 2);
      if (v4 >= 2)
      {
        while (*v6)
        {
          v102 = *&v101[16 * v4];
          v103 = v101;
          v104 = *&v101[16 * v4 + 24];
          sub_258AA8D3C((*v6 + 8 * v102), (*v6 + 8 * *&v101[16 * v4 + 16]), (*v6 + 8 * v104), v5);
          if (v119)
          {
            goto LABEL_115;
          }

          if (v104 < v102)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_258AE8CC8(v103);
          }

          if (v4 - 2 >= *(v103 + 2))
          {
            goto LABEL_133;
          }

          v105 = &v103[16 * v4];
          *v105 = v102;
          *(v105 + 1) = v104;
          v124 = v103;
          sub_258AE8C3C(v4 - 1);
          v101 = v124;
          v4 = *(v124 + 2);
          if (v4 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_143;
      }

LABEL_115:

      return;
    }

LABEL_139:
    v101 = sub_258AE8CC8(v4);
    goto LABEL_107;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v110 = v8;
      v4 = *v5;
      v123 = *(*v5 + 8 * v7);
      v122 = *(v4 + 8 * v9);
      v10 = v122;
      v11 = v123;
      v12 = v10;
      v120 = sub_258AA582C(&v123, &v122);
      if (v119)
      {

        return;
      }

      v7 = v9 + 2;
      if (v9 + 2 >= v6)
      {
        v8 = v110;
      }

      else
      {
        v106 = v9;
        v4 += 8 * v9 + 16;
        v115 = v6;
        do
        {
          v117 = v7;
          v14 = *(v4 - 8);
          v15 = *v4;
          v16 = v14;
          v17 = [v15 localization];
          v18 = [v17 displayName];

          v19 = sub_258B02B14();
          v21 = v20;

          v22 = [v16 localization];
          v6 = [v22 displayName];

          v23 = sub_258B02B14();
          v25 = v24;

          if (v19 == v23 && v21 == v25)
          {

            v7 = v117;
            if (v120)
            {
              v5 = a3;
              v8 = v110;
              v9 = v106;
              goto LABEL_21;
            }
          }

          else
          {
            v13 = sub_258B03454();

            v7 = v117;
            if ((v120 ^ v13))
            {
              goto LABEL_19;
            }
          }

          ++v7;
          v4 += 8;
          v6 = v115;
        }

        while (v115 != v7);
        v7 = v115;
LABEL_19:
        v8 = v110;
        v9 = v106;
      }

      v5 = a3;
      if (v120)
      {
LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_136;
        }

        if (v9 < v7)
        {
          v27 = 8 * v7 - 8;
          v28 = 8 * v9;
          v29 = v7;
          v30 = v9;
          do
          {
            if (v30 != --v29)
            {
              v32 = *v5;
              if (!*v5)
              {
                goto LABEL_142;
              }

              v31 = *(v32 + v28);
              *(v32 + v28) = *(v32 + v27);
              *(v32 + v27) = v31;
            }

            ++v30;
            v27 -= 8;
            v28 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = *(v5 + 8);
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_135;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v7 < v9)
    {
      goto LABEL_134;
    }

    v54 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v54;
    }

    else
    {
      v8 = sub_258A74C78(0, *(v54 + 2) + 1, 1, v54);
    }

    v4 = *(v8 + 2);
    v55 = *(v8 + 3);
    v56 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      v8 = sub_258A74C78((v55 > 1), v4 + 1, 1, v8);
    }

    *(v8 + 2) = v56;
    v57 = &v8[16 * v4];
    *(v57 + 4) = v9;
    *(v57 + 5) = v7;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_71:
          if (v62)
          {
            goto LABEL_123;
          }

          v75 = &v8[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_126;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_130;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v85 = &v8[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_85:
        if (v80)
        {
          goto LABEL_125;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_128;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_92:
        v4 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v5)
        {
          goto LABEL_141;
        }

        v96 = v7;
        v97 = v8;
        v98 = *&v8[16 * v4 + 32];
        v99 = *&v8[16 * v58 + 40];
        sub_258AA8D3C((*v5 + 8 * v98), (*v5 + 8 * *&v8[16 * v58 + 32]), (*v5 + 8 * v99), v6);
        if (v119)
        {
          goto LABEL_115;
        }

        if (v99 < v98)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_258AE8CC8(v97);
        }

        if (v4 >= *(v97 + 2))
        {
          goto LABEL_120;
        }

        v100 = &v97[16 * v4];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v124 = v97;
        sub_258AE8C3C(v58);
        v8 = v124;
        v56 = *(v124 + 2);
        v7 = v96;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_121;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_122;
      }

      v70 = &v8[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_124;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_127;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_131;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v6 = *(v5 + 8);
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_137;
  }

  if (v34 >= v33)
  {
    v34 = *(v5 + 8);
  }

  if (v34 < v9)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v7 == v34)
  {
    goto LABEL_51;
  }

  v111 = v8;
  v121 = *v5;
  v4 = *v5 + 8 * v7 - 8;
  v107 = v9;
  v35 = v9 - v7;
  v113 = v34;
LABEL_40:
  v116 = v4;
  v118 = v7;
  v36 = *(v121 + 8 * v7);
  v114 = v35;
  v37 = v35;
  while (1)
  {
    v38 = *v4;
    v39 = v36;
    v6 = v38;
    v40 = [v39 localization];
    v41 = [v40 displayName];

    v42 = sub_258B02B14();
    v44 = v43;

    v45 = [v6 localization];
    v46 = [v45 displayName];

    v47 = sub_258B02B14();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

LABEL_39:
      v7 = v118 + 1;
      v4 = v116 + 8;
      v35 = v114 - 1;
      if (v118 + 1 == v113)
      {
        v7 = v113;
        v5 = a3;
        v8 = v111;
        v9 = v107;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    v51 = sub_258B03454();

    if ((v51 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (!v121)
    {
      break;
    }

    v52 = *v4;
    v36 = *(v4 + 8);
    *v4 = v36;
    *(v4 + 8) = v52;
    v4 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_258AA89E0(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v46 = &v4[8 * v9];
    if (v7 < 8)
    {
LABEL_10:
      v14 = v6;
      goto LABEL_47;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v13;
      v17 = *v4;
      v18 = HKUILocalizedStringForStateOfMindDomain();
      v19 = sub_258B02B14();
      v21 = v20;

      v22 = HKUILocalizedStringForStateOfMindDomain();
      v23 = sub_258B02B14();
      v25 = v24;

      v26 = v19 == v23 && v21 == v25;
      if (v26)
      {
        break;
      }

      v27 = sub_258B03454();

      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v13;
      v26 = v6 == v13;
      v13 += 8;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v4 >= v46)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v26 = v6 == v4;
    v4 += 8;
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v15;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v28 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v28;
  }

  v14 = a2;
  v46 = &v4[8 * v12];
  if (v10 >= 8 && a2 > v6)
  {
LABEL_30:
    __dst = v14;
    v29 = v14 - 8;
    v5 -= 8;
    v30 = v46;
    v45 = v14 - 8;
    do
    {
      v31 = *(v30 - 1);
      v30 -= 8;
      v32 = *v29;
      v33 = HKUILocalizedStringForStateOfMindDomain();
      v34 = sub_258B02B14();
      v36 = v35;

      v37 = HKUILocalizedStringForStateOfMindDomain();
      v38 = sub_258B02B14();
      v40 = v39;

      if (v34 == v38 && v36 == v40)
      {
      }

      else
      {
        v42 = sub_258B03454();

        if (v42)
        {
          if (v5 + 8 != __dst)
          {
            *v5 = *v45;
          }

          if (v46 <= v4 || (v14 = v45, v45 <= v6))
          {
            v14 = v45;
            goto LABEL_47;
          }

          goto LABEL_30;
        }
      }

      if (v5 + 8 != v46)
      {
        *v5 = *v30;
      }

      v5 -= 8;
      v46 = v30;
      v29 = v45;
    }

    while (v30 > v4);
    v46 = v30;
    v14 = __dst;
  }

LABEL_47:
  if (v14 != v4 || v14 >= &v4[(v46 - v4 + (v46 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v14, v4, 8 * ((v46 - v4) / 8));
  }

  return 1;
}

uint64_t sub_258AA8D3C(void **__dst, void **a2, char *a3, char *__src)
{
  v4 = a3;
  v5 = a2 - __dst;
  v6 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v6 = a2 - __dst;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    if (__src != a2 || &a2[v10] <= __src)
    {
      v32 = a2;
      v33 = __src;
      memmove(__src, a2, 8 * v10);
      __src = v33;
      a2 = v32;
    }

    v62 = &__src[8 * v10];
    v12 = __src;
    if (v8 >= 8 && a2 > __dst)
    {
      v61 = __src;
LABEL_31:
      v59 = a2;
      v34 = a2 - 1;
      v35 = v4;
      v36 = v62;
      v55 = a2 - 1;
      do
      {
        v37 = *(v36 - 1);
        v36 -= 8;
        v38 = *v34;
        v39 = v37;
        v40 = v38;
        v41 = [v39 localization];
        v42 = [v41 displayName];

        v43 = sub_258B02B14();
        v45 = v44;

        v57 = v40;
        v46 = [v40 localization];
        v47 = [v46 displayName];

        v48 = sub_258B02B14();
        v50 = v49;

        if (v43 == v48 && v45 == v50)
        {

          v4 = v35 - 8;
        }

        else
        {
          v52 = sub_258B03454();

          v4 = v35 - 8;
          if (v52)
          {
            if (v35 != v59)
            {
              *v4 = *v55;
            }

            v12 = v61;
            if (v62 <= v61 || (a2 = v55, v55 <= __dst))
            {
              a2 = v55;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v34 = v55;
        if (v62 != v35)
        {
          *v4 = *v36;
        }

        v62 = v36;
        v35 = v4;
      }

      while (v36 > v61);
      v62 = v36;
      a2 = v59;
      v12 = v61;
    }
  }

  else
  {
    v11 = a2;
    v12 = __src;
    v13 = __dst;
    if (__src != __dst || &__dst[v7] <= __src)
    {
      memmove(__src, __dst, 8 * v7);
    }

    v62 = &v12[v7];
    if (v5 >= 8 && v11 < v4)
    {
      v14 = v11;
      v56 = v4;
      while (1)
      {
        v58 = v14;
        v60 = v12;
        v15 = *v12;
        v16 = *v14;
        v17 = v15;
        v18 = [v16 localization];
        v19 = [v18 displayName];

        v20 = sub_258B02B14();
        v22 = v21;

        v23 = [v17 localization];
        v24 = [v23 displayName];

        v25 = sub_258B02B14();
        v27 = v26;

        if (v20 == v25 && v22 == v27)
        {
          break;
        }

        v29 = sub_258B03454();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }

        v30 = v56;
        v31 = v58;
        v14 = v58 + 1;
        if (v13 != v58)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v13;
        if (v12 >= v62 || v14 >= v30)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v14 = v58;
      v31 = v12++;
      v30 = v56;
      if (v13 == v60)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v13 = *v31;
      goto LABEL_22;
    }

LABEL_24:
    a2 = v13;
  }

LABEL_48:
  if (a2 != v12 || a2 >= (v12 + ((v62 - v12 + (v62 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v12, 8 * ((v62 - v12) / 8));
  }

  return 1;
}

char *sub_258AA91CC(char *a1, int64_t a2, char a3)
{
  result = sub_258AE8CDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA91EC(char *a1, int64_t a2, char a3)
{
  result = sub_258AE8DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA920C(char *a1, int64_t a2, char a3)
{
  result = sub_258AE8F1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA922C(char *a1, int64_t a2, char a3)
{
  result = sub_258AE9044(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258AA924C(void *a1, int64_t a2, char a3)
{
  result = sub_258AE915C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258AA926C(size_t a1, int64_t a2, char a3)
{
  result = sub_258AE92A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA928C(char *a1, int64_t a2, char a3)
{
  result = sub_258AE92DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA92AC(char *a1, int64_t a2, char a3)
{
  result = sub_258AE9408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA92CC(char *a1, int64_t a2, char a3)
{
  result = sub_258AE9544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258AA92EC(size_t a1, int64_t a2, char a3)
{
  result = sub_258AE9668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA930C(char *a1, int64_t a2, char a3)
{
  result = sub_258AE9890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258AA932C(size_t a1, int64_t a2, char a3)
{
  result = sub_258AE99C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258AA934C(size_t a1, int64_t a2, char a3)
{
  result = sub_258AE99F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA936C(char *a1, int64_t a2, char a3)
{
  result = sub_258AE9524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA938C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v13 = sub_258B00384();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v46 - v22;
  v24 = [a1 sleepChartFormatter];
  if (v24)
  {
    v25 = v24;
    v26 = [a1 addDataViewControllerProvider];
    if (v26)
    {
      v27 = v26;
      sub_258A312AC(a3, v23);
      v28 = objc_allocWithZone(type metadata accessor for StateOfMindOverlayRoomViewController());
      sub_258B003E4();
      v29 = v25;
      swift_unknownObjectRetain();
      v30 = StateOfMindOverlayRoomViewController.init(displayDate:applicationItems:factorDisplayTypes:sleepChartFormatter:addDataViewControllerProvider:preferredOverlay:)(v23, a2, a6, v29, v27, a4);
      [v30 setRestorationUserActivity_];
      [v30 setAdditionalChartOptions_];

      swift_unknownObjectRelease();
      return v30;
    }

    sub_258B00364();
    v39 = sub_258B00374();
    v40 = sub_258B02E94();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50 = v42;
      *v41 = 136446210;
      v43 = sub_258B035A4();
      v45 = sub_2589F1F78(v43, v44, &v50);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2589A1000, v39, v40, "[%{public}s] State of mind requires an add data provider", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x259C945C0](v42, -1, -1);
      MEMORY[0x259C945C0](v41, -1, -1);
    }

    else
    {
    }

    (*(v48 + 8))(v19, v49);
  }

  else
  {
    sub_258B00364();
    v32 = sub_258B00374();
    v33 = sub_258B02E94();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136446210;
      v36 = sub_258B035A4();
      v38 = sub_2589F1F78(v36, v37, &v50);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2589A1000, v32, v33, "[%{public}s] State of mind overlays require a sleep formatter", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x259C945C0](v35, -1, -1);
      MEMORY[0x259C945C0](v34, -1, -1);
    }

    (*(v48 + 8))(v17, v49);
  }

  return 0;
}

void sub_258AA97BC(void *a1)
{
  v1 = [a1 displayTypeController];
  v2 = [objc_opt_self() stateOfMindType];
  v3 = [v1 displayTypeForObjectType_];

  if (v3)
  {
    v4 = [v3 localization];

    v5 = [v4 displayName];
    sub_258B02B14();
  }

  else
  {
    __break(1u);
  }
}

void sub_258AA98A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AA98FC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  sub_258B00364();
  v12 = sub_258B00374();
  v13 = sub_258B02EA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v49 = v2;
    v15 = v14;
    v48 = swift_slowAlloc();
    v50 = v48;
    *v15 = 136446466;
    v16 = sub_258B035A4();
    LODWORD(v47) = v13;
    v18 = a1;
    v19 = v9;
    v20 = v4;
    v21 = v5;
    v22 = sub_2589F1F78(v16, v17, &v50);

    *(v15 + 4) = v22;
    v5 = v21;
    v4 = v20;
    v9 = v19;
    a1 = v18;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v18;
    _os_log_impl(&dword_2589A1000, v12, v47, "[%{public}s] Did tap info button at index: %ld", v15, 0x16u);
    v23 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x259C945C0](v23, -1, -1);
    v24 = v15;
    v2 = v49;
    MEMORY[0x259C945C0](v24, -1, -1);
  }

  v25 = *(v5 + 8);
  (v25)(v11, v4);
  v26 = [v2 buildFactorContextsAllowingDeselection_];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 activeFactorContexts];
    sub_2589F4488(0, &qword_27F970A58, 0x277D129F0);
    v29 = sub_258B02C74();

    if (v29 >> 62)
    {
      v30 = sub_258B032B4();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = a1 - v30;
    if (__OFSUB__(a1, v30))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v31 = a1;
  }

  if (sub_258AA5C20(v31) & 1) != 0 || (sub_258AA5F5C(a1, v27))
  {

    return;
  }

LABEL_13:
  v32 = sub_258AA5564();
  if (v32 >> 62)
  {
    v49 = sub_258B032B4();
  }

  else
  {
    v49 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = [v2 factorDisplayTypes];
  v46 = a1;
  if (v33)
  {
    v34 = v33;
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    v35 = sub_258B02C74();

    if (v35 >> 62)
    {
      v36 = sub_258B032B4();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v36 = -1;
  }

  sub_258B00364();
  v37 = sub_258B00374();
  v38 = sub_258B02EA4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v48 = v25;
    v40 = v39;
    v41 = swift_slowAlloc();
    v50 = v41;
    *v40 = 136446978;
    v42 = sub_258B035A4();
    v47 = v5;
    v44 = sub_2589F1F78(v42, v43, &v50);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2048;
    *(v40 + 14) = v46;
    *(v40 + 22) = 2048;
    *(v40 + 24) = v49;
    *(v40 + 32) = 2048;
    *(v40 + 34) = v36;
    _os_log_impl(&dword_2589A1000, v37, v38, "[%{public}s] Unable to open context information view controller for index %ld.  Standard count: %ld, Health factors %ld", v40, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x259C945C0](v41, -1, -1);
    MEMORY[0x259C945C0](v40, -1, -1);

    (v48)(v9, v4);
  }

  else
  {

    (v25)(v9, v4);
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_258AA9E90()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v17.origin.x = v1;
  v17.origin.y = v2;
  v17.size.width = v3;
  v17.size.height = v4;
  Width = CGRectGetWidth(v17);
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  CGRectGetHeight(v18);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v19.origin.x = *v0;
  v19.origin.y = v6;
  v19.size.width = v7;
  v19.size.height = v8;
  v14 = CGRectGetWidth(v19);
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  CGRectGetHeight(v20);
  rect = v1;
  v21.origin.x = v1;
  v21.origin.y = v2;
  v21.size.width = v3;
  v21.size.height = v4;
  v9 = 1.0;
  if (CGRectGetHeight(v21) != 0.0)
  {
    v22.origin.x = v5;
    v22.origin.y = v6;
    v22.size.width = v7;
    v22.size.height = v8;
    if (CGRectGetWidth(v22) != 0.0)
    {
      v23.origin.x = v5;
      v23.origin.y = v6;
      v23.size.width = v7;
      v23.size.height = v8;
      if (CGRectGetHeight(v23) != 0.0)
      {
        v24.origin.x = rect;
        v24.origin.y = v2;
        v24.size.width = v3;
        v24.size.height = v4;
        Height = CGRectGetHeight(v24);
        v25.origin.x = v5;
        v25.origin.y = v6;
        v25.size.width = v7;
        v25.size.height = v8;
        v11 = CGRectGetWidth(v25);
        v26.origin.x = v5;
        v26.origin.y = v6;
        v26.size.width = v7;
        v26.size.height = v8;
        v12 = CGRectGetHeight(v26);
        if (v12 >= v11)
        {
          v12 = v11;
        }

        v9 = Height * 1.5 / v12;
      }
    }
  }

  return (rect + Width * 0.5 - (v5 + v14 * 0.5)) / v9;
}

double sub_258AAA034()
{
  v1 = sub_258B00F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v6 = *v0;
  v10 = *v0;
  if (v11 == 1)
  {
    result = v6;
  }

  else
  {

    sub_258B02E94();
    v8 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();
    sub_258AAE1F8(&v10);
    (*(v2 + 8))(v5, v1);
    result = *&v9[1];
  }

  if (result > 2.2)
  {
    return 2.2;
  }

  return result;
}

id sub_258AAA198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v3 = type metadata accessor for EmotionShape();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AAD94C(0);
  v113 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v115 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AAD96C(0, &qword_27F970AD0, sub_258AAD94C);
  v114 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v117 = &v107 - v12;
  sub_258AAD9C8();
  v116 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v120 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AADBEC();
  v119 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v118 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v20 = result;
    v21 = [result isiPad];

    if (v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v112 = v22;
    v23 = sub_258AAA034();
    sub_258B02D24();
    sub_258AADCD8(v2, v132);
    v24 = sub_258B02D14();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    v27 = *(v2 + 112);
    *(v25 + 128) = *(v2 + 96);
    *(v25 + 144) = v27;
    *(v25 + 160) = *(v2 + 128);
    v28 = *(v2 + 48);
    *(v25 + 64) = *(v2 + 32);
    *(v25 + 80) = v28;
    v29 = *(v2 + 80);
    *(v25 + 96) = *(v2 + 64);
    *(v25 + 112) = v29;
    v30 = *(v2 + 16);
    *(v25 + 32) = *v2;
    *(v25 + 48) = v30;
    sub_258AADCD8(v2, v132);
    v31 = sub_258B02D14();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v26;
    v33 = *(v2 + 112);
    *(v32 + 128) = *(v2 + 96);
    *(v32 + 144) = v33;
    *(v32 + 160) = *(v2 + 128);
    v34 = *(v2 + 48);
    *(v32 + 64) = *(v2 + 32);
    *(v32 + 80) = v34;
    v35 = *(v2 + 80);
    *(v32 + 96) = *(v2 + 64);
    *(v32 + 112) = v35;
    v36 = *(v2 + 16);
    *(v32 + 32) = *v2;
    *(v32 + 48) = v36;
    sub_258B02344();
    v111 = v132[17];
    v110 = v132[18];
    v37 = v133;
    sub_258AADCD8(v2, v132);
    v38 = sub_258B02D14();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v26;
    v40 = *(v2 + 112);
    *(v39 + 128) = *(v2 + 96);
    *(v39 + 144) = v40;
    *(v39 + 160) = *(v2 + 128);
    v41 = *(v2 + 48);
    *(v39 + 64) = *(v2 + 32);
    *(v39 + 80) = v41;
    v42 = *(v2 + 80);
    *(v39 + 96) = *(v2 + 64);
    *(v39 + 112) = v42;
    v43 = *(v2 + 16);
    *(v39 + 32) = *v2;
    *(v39 + 48) = v43;
    sub_258AADCD8(v2, v132);
    v44 = sub_258B02D14();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v26;
    v46 = *(v2 + 112);
    *(v45 + 128) = *(v2 + 96);
    *(v45 + 144) = v46;
    *(v45 + 160) = *(v2 + 128);
    v47 = *(v2 + 48);
    *(v45 + 64) = *(v2 + 32);
    *(v45 + 80) = v47;
    v48 = *(v2 + 80);
    *(v45 + 96) = *(v2 + 64);
    *(v45 + 112) = v48;
    v49 = *(v2 + 16);
    *(v45 + 32) = *v2;
    *(v45 + 48) = v49;
    sub_258B02344();
    v109 = v129;
    v108 = v130;
    v50 = v131;
    v126 = vcvt_f32_f64(*(v2 + 112));
    sub_258AADFC0();
    sub_258B02354();
    v51 = v132[0];
    v52 = v132[1];
    v53 = v132[2];
    v54 = *(v2 + 128);
    *&v122 = v54;
    sub_258B02354();
    v55 = v126;
    v56 = v127;
    v57 = v128;
    v125 = *(v2 + 16);
    sub_258AAE374(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02144();
    v58 = v122;
    v59 = v123;
    LOBYTE(v38) = v124;
    *v6 = swift_getKeyPath();
    sub_258AAE3C4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v61 = v6 + v3[5];
    *v61 = KeyPath;
    v61[8] = 0;
    *(v6 + v3[6]) = v112;
    *(v6 + v3[7]) = v23;
    v62 = v6 + v3[8];
    v63 = v110;
    *v62 = v111;
    *(v62 + 1) = v63;
    *(v62 + 4) = v37;
    v64 = v6 + v3[9];
    v65 = v108;
    *v64 = v109;
    *(v64 + 1) = v65;
    *(v64 + 4) = v50;
    v66 = (v6 + v3[10]);
    *v66 = v51;
    v66[1] = v52;
    v66[2] = v53;
    v67 = v6 + v3[11];
    *v67 = v55;
    *(v67 + 1) = v56;
    *(v67 + 4) = v57;
    v68 = v6 + v3[12];
    *v68 = v58;
    *(v68 + 1) = v59;
    v68[16] = v38;
    v69 = swift_allocObject();
    v70 = *(v2 + 112);
    *(v69 + 112) = *(v2 + 96);
    *(v69 + 128) = v70;
    *(v69 + 144) = *(v2 + 128);
    v71 = *(v2 + 48);
    *(v69 + 48) = *(v2 + 32);
    *(v69 + 64) = v71;
    v72 = *(v2 + 80);
    *(v69 + 80) = *(v2 + 64);
    *(v69 + 96) = v72;
    v73 = *(v2 + 16);
    *(v69 + 16) = *v2;
    *(v69 + 32) = v73;
    v74 = v6;
    v75 = v115;
    sub_258AAE05C(v74, v115, type metadata accessor for EmotionShape);
    v76 = (v75 + *(v113 + 36));
    *v76 = sub_258AAE01C;
    v76[1] = v69;
    v76[2] = 0;
    v76[3] = 0;
    v77 = swift_allocObject();
    v78 = *(v2 + 112);
    *(v77 + 112) = *(v2 + 96);
    *(v77 + 128) = v78;
    *(v77 + 144) = *(v2 + 128);
    v79 = *(v2 + 48);
    *(v77 + 48) = *(v2 + 32);
    *(v77 + 64) = v79;
    v80 = *(v2 + 80);
    *(v77 + 80) = *(v2 + 64);
    *(v77 + 96) = v80;
    v81 = *(v2 + 16);
    *(v77 + 16) = *v2;
    *(v77 + 32) = v81;
    v82 = v117;
    sub_258AAE05C(v75, v117, sub_258AAD94C);
    v83 = (v82 + *(v114 + 36));
    *v83 = 0;
    v83[1] = 0;
    v83[2] = sub_258AAE03C;
    v83[3] = v77;
    v84 = objc_opt_self();
    sub_258AADCD8(v2, v132);
    sub_258AADCD8(v2, v132);
    v85 = [v84 defaultCenter];
    v86 = *MEMORY[0x277D76648];
    v87 = v116;
    v88 = v120;
    v89 = &v120[*(v116 + 52)];
    sub_258B02FD4();

    v90 = swift_allocObject();
    v91 = *(v2 + 112);
    *(v90 + 112) = *(v2 + 96);
    *(v90 + 128) = v91;
    *(v90 + 144) = *(v2 + 128);
    v92 = *(v2 + 48);
    *(v90 + 48) = *(v2 + 32);
    *(v90 + 64) = v92;
    v93 = *(v2 + 80);
    *(v90 + 80) = *(v2 + 64);
    *(v90 + 96) = v93;
    v94 = *(v2 + 16);
    *(v90 + 16) = *v2;
    *(v90 + 32) = v94;
    sub_258AAE0E4(v82, v88);
    v95 = (v88 + *(v87 + 56));
    *v95 = sub_258AAE0C4;
    v95[1] = v90;
    sub_258AADCD8(v2, v132);
    v96 = [v84 defaultCenter];
    v97 = *MEMORY[0x277D76768];
    v98 = v119;
    v99 = v118;
    v100 = &v118[*(v119 + 52)];
    sub_258B02FD4();

    v101 = swift_allocObject();
    v102 = *(v2 + 112);
    *(v101 + 112) = *(v2 + 96);
    *(v101 + 128) = v102;
    *(v101 + 144) = *(v2 + 128);
    v103 = *(v2 + 48);
    *(v101 + 48) = *(v2 + 32);
    *(v101 + 64) = v103;
    v104 = *(v2 + 80);
    *(v101 + 80) = *(v2 + 64);
    *(v101 + 96) = v104;
    v105 = *(v2 + 16);
    *(v101 + 16) = *v2;
    *(v101 + 32) = v105;
    sub_258AAE05C(v88, v99, sub_258AAD9C8);
    v106 = (v99 + *(v98 + 56));
    *v106 = sub_258AAE1D8;
    v106[1] = v101;
    sub_258AAE05C(v99, v121, sub_258AADBEC);
    return sub_258AADCD8(v2, v132);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258AAAB1C()
{
  v3 = v0[2];
  sub_258AAE374(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v2 == 1)
  {
    v4 = v0[3];
    sub_258B02124();
  }

  v5 = v0[1];
  return sub_258B02134();
}

uint64_t sub_258AAABE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_258AAE374(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02134();
  return sub_258AAAB1C();
}

uint64_t sub_258AAAC5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  sub_258AAE374(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02134();
  return sub_258AAAB1C();
}

id sub_258AAACD4@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + 16);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_258AAA198(a1);
}

uint64_t sub_258AAAD64()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

void (*sub_258AAADDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_2589EF694;
}

uint64_t sub_258AAAE80(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258AAAF10(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x277D839F8];
  sub_258AAE374(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = *(v7 + 16);
  v14(&v17 - v12, a1, v6);
  v15 = *a2;
  v14(v11, v13, v6);
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, v4, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_258AAB0CC()
{
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258AAB158(uint64_t a1)
{
  v2 = MEMORY[0x277D839F8];
  sub_258AAE374(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v9 - v7, a1, v4);
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, v2, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*sub_258AAB2C8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258AAE374(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__valence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_2589EFCE4;
}

uint64_t StateOfMindVisualization.VisualizationPPTModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_258B00524();
  sub_258B00524();
  return v3;
}

uint64_t StateOfMindVisualization.VisualizationPPTModel.init()()
{
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__valence;
  v12 = 0;
  sub_258B00524();
  v8 = *(v3 + 32);
  v8(v0 + v7, v6, v2);
  v9 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__effectiveValence;
  v12 = 0;
  sub_258B00524();
  v8(v0 + v9, v6, v2);
  return v0;
}

uint64_t sub_258AAB640(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  sub_258AAD16C(-1.0, 1.0, 0.002);
  sub_258AAB6A8(v5, a1, a2, v2);
}

uint64_t sub_258AAB6A8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a3;
  v6 = sub_258B02624();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258B02654();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258B02674();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v24 = &v33 - v23;
  if (!*(a1 + 16))
  {
    return v40(v21);
  }

  v25 = *(a1 + 32);
  v35 = v22;
  v36 = v6;
  v26 = v22;
  swift_getKeyPath();
  v37 = v7;
  swift_getKeyPath();
  v38 = v11;
  aBlock[0] = v25;

  sub_258B00574();
  sub_2589EEBEC();
  v27 = sub_258B02F54();
  sub_258B02664();
  sub_258B02694();
  v34 = *(v16 + 8);
  v34(v20, v26);
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a1;
  v29 = v41;
  v28[4] = v40;
  v28[5] = v29;
  aBlock[4] = sub_258AAE2E4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2589E92FC;
  aBlock[3] = &block_descriptor_14;
  v30 = _Block_copy(aBlock);

  sub_258B003E4();

  sub_258B02644();
  v42 = MEMORY[0x277D84F90];
  sub_258AAE308(&unk_27F96EBD0, MEMORY[0x277D85198]);
  sub_2589EECAC(0);
  sub_258AAE308(&qword_27F96EBE0, sub_2589EECAC);
  v31 = v36;
  sub_258B03114();
  MEMORY[0x259C93530](v24, v14, v10, v30);
  _Block_release(v30);

  (*(v37 + 8))(v10, v31);
  (*(v39 + 8))(v14, v38);
  v34(v24, v35);
}

uint64_t sub_258AABB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = *(a2 + 16);
  if (v8)
  {
    sub_258AACB88(a2, a2 + 32, 1, (2 * v8) | 1);
    v6 = v10;
  }

  else
  {
    sub_258B003E4();
  }

  sub_258AAB6A8(v6, a3, a4, a1);
}

uint64_t static StateOfMindVisualization.VisualizationPPTModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_258B02D24();
  v5[2] = a1;
  v5[3] = a2;
  return sub_258AABD98(sub_258AAD43C, v5, "MentalHealthUI/StateOfMindVisualizationLive.swift") & 1;
}

uint64_t sub_258AABC0C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a1 = 1;
  return result;
}

uint64_t sub_258AABD98(uint64_t a1, uint64_t a2, char a3)
{
  sub_258B02D14();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_258AAE2A0(v12);
    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_258B031B4();
  MEMORY[0x259C931B0](0xD00000000000003FLL, 0x8000000258B38B50);
  v11 = sub_258B035A4();
  MEMORY[0x259C931B0](v11);

  MEMORY[0x259C931B0](46, 0xE100000000000000);
  result = sub_258B03294();
  __break(1u);
  return result;
}

uint64_t sub_258AABF50(uint64_t a1, uint64_t a2)
{
  sub_258B02D14();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_258AAE278();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_258B031B4();
    MEMORY[0x259C931B0](0xD00000000000003FLL, 0x8000000258B38B50);
    v8 = sub_258B035A4();
    MEMORY[0x259C931B0](v8);

    MEMORY[0x259C931B0](46, 0xE100000000000000);
    result = sub_258B03294();
    __break(1u);
  }

  return result;
}

uint64_t sub_258AAC0D8(uint64_t a1)
{
  sub_258B02D24();
  v4[2] = a1;
  v5 = v1;
  return sub_258AABF50(sub_258AAD458, v4);
}

uint64_t sub_258AAC150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v0 = v3;
  if (v3 == 0.0)
  {
    v0 = 0.0;
  }

  MEMORY[0x259C93B40](*&v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v1 = v3;
  if (v3 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x259C93B40](*&v1);
}

uint64_t StateOfMindVisualization.VisualizationPPTModel.deinit()
{
  v1 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__valence;
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__effectiveValence, v3);
  return v0;
}

uint64_t StateOfMindVisualization.VisualizationPPTModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__valence;
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__effectiveValence, v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258AAC3F4()
{
  sub_258B03514();
  sub_258B02D24();
  v2[2] = &v4;
  v3 = v0;
  sub_258AABF50(sub_258AAE428, v2);
  return sub_258B03554();
}

uint64_t sub_258AAC480()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02D24();
  v3[2] = &v4;
  v3[3] = v1;
  sub_258AABF50(sub_258AAE428, v3);
  return sub_258B03554();
}

uint64_t sub_258AAC50C(uint64_t a1)
{
  v3 = *v1;
  sub_258B02D24();
  v5[2] = a1;
  v5[3] = v3;
  return sub_258AABF50(sub_258AAE428, v5);
}

uint64_t sub_258AAC584()
{
  sub_258B03514();
  v1 = *v0;
  sub_258B02D24();
  v3[2] = &v4;
  v3[3] = v1;
  sub_258AABF50(sub_258AAE428, v3);
  return sub_258B03554();
}

uint64_t sub_258AAC60C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StateOfMindVisualization.VisualizationPPTModel();
  result = sub_258B004E4();
  *a1 = result;
  return result;
}

uint64_t sub_258AAC64C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_258B02D24();
  v5[2] = v2;
  v5[3] = v3;
  return sub_258AABD98(sub_258AAE440, v5, "MentalHealthUI/StateOfMindVisualizationLive.swift") & 1;
}

uint64_t StateOfMindVisualization.VisualizationPPTView.model.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t StateOfMindVisualization.VisualizationPPTView.$model.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for StateOfMindVisualization.VisualizationPPTModel();
  sub_258AAE308(&qword_27F970A98, type metadata accessor for StateOfMindVisualization.VisualizationPPTModel);

  return sub_258B00A34();
}

uint64_t StateOfMindVisualization.VisualizationPPTView.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StateOfMindVisualization.VisualizationPPTModel();
  sub_258AAE308(&qword_27F970A98, type metadata accessor for StateOfMindVisualization.VisualizationPPTModel);
  result = sub_258B00A24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StateOfMindVisualization.VisualizationPPTView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for StateOfMindVisualization.VisualizationPPTModel();
  sub_258AAE308(&qword_27F970A98, type metadata accessor for StateOfMindVisualization.VisualizationPPTModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  KeyPath = swift_getKeyPath();
  sub_258B02114();
  sub_258B02114();
  sub_258B02114();
  v6 = sub_258B00B44();
  result = sub_258B01874();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  *(a1 + 104) = v12;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = v6;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_258AACA34@<X0>(void *a1@<X8>)
{
  result = sub_258B00D44();
  *a1 = v3;
  return result;
}

void sub_258AACA88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_258AAE374(0, &qword_27F96E608, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_258AACB88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_258AAE374(0, &qword_27F970B08, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_258AACC70(uint64_t a1)
{
  sub_258A320A4();
  v44 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = *(v3 + 80);
    v41 = v13;
    v42 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x277D84F90] + v42;
    v15 = 0;
    v16 = 0;
    v17 = *(_s5EntryVMa() - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v43 = *(v17 + 72);
    v19 = v12;
    v39 = v11;
    v40 = v3;
    while (1)
    {
      v21 = *(v44 + 48);
      *v7 = v15;
      sub_258A2C4E4(v18, v7 + v21);
      result = sub_258AAE05C(v7, v10, sub_258A320A4);
      if (v16)
      {
        v12 = v19;
        v20 = __OFSUB__(v16--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v19[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v10;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_258AAE3C4(0, &qword_27F970B18, sub_258A320A4, MEMORY[0x277D84560]);
        v26 = *(v3 + 72);
        v27 = v42;
        v12 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v12);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if (result - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v12[2] = v25;
        v12[3] = 2 * (v28 / v26);
        v31 = v12 + v27;
        v32 = v19[3] >> 1;
        v33 = v32 * v26;
        if (v19[2])
        {
          if (v12 < v19 || v31 >= v19 + v42 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v10 = v23;
        v11 = v39;
        v3 = v40;
        v20 = __OFSUB__(v35, 1);
        v16 = v35 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      result = sub_258AAE05C(v10, v14, sub_258A320A4);
      v14 += *(v3 + 72);
      v18 += v43;
      v19 = v12;
      if (v11 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v36 = v12[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v20 = __OFSUB__(v37, v16);
    v38 = v37 - v16;
    if (v20)
    {
      goto LABEL_36;
    }

    v12[2] = v38;
  }

  return v12;
}

uint64_t sub_258AACFBC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {
        v8 = *(v6 + 8 * v3);
        result = sub_258B003E4();
        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = *(v2 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_258AAE3C4(0, &qword_27F970B20, sub_258A77A24, MEMORY[0x277D84560]);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 17;
        }

        v16 = v15 >> 4;
        *(v13 + 2) = v12;
        *(v13 + 3) = 2 * (v15 >> 4);
        v17 = v13 + 32;
        v18 = *(v2 + 3) >> 1;
        v5 = &v13[16 * v18 + 32];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (*(v2 + 2))
        {
          v20 = v2 + 32;
          if (v13 != v2 || v17 >= &v20[16 * v18])
          {
            memmove(v17, v20, 16 * v18);
          }

          sub_258B003E4();
          *(v2 + 2) = 0;
        }

        else
        {
          sub_258B003E4();
        }

        v2 = v13;
        v9 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v9)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v21 = *(v2 + 3);
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v9 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v9)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v23;
  }

  return v2;
}

void sub_258AAD16C(double a1, double a2, double a3)
{
  v6 = a1 <= a2;
  if (a3 > 0.0)
  {
    v6 = a1 >= a2;
  }

  if (!v6)
  {
    v7 = -1;
    do
    {
      v8 = ++v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v9 = a1 + v8 * a3;
      v10 = v9 <= a2;
      if (a3 > 0.0)
      {
        v10 = v9 >= a2;
      }
    }

    while (!v10);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    sub_258AAE374(0, &qword_27F970B08, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v14 = v13 >> 3;
    *(v11 + 2) = v8;
    *(v11 + 3) = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v8;
    v17 = -1;
    v18 = a1;
    while (1)
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        goto LABEL_48;
      }

      v20 = a1 + (v17 + 2) * a3;
      *v15++ = v18;
      ++v17;
      v18 = v20;
      if (v7 == v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v11 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 24);

  v8 = 0;
  v15 = v11 + 4;
  v16 = v21 >> 1;
  v20 = a1;
LABEL_19:
  v22 = v20 <= a2;
  if (a3 > 0.0)
  {
    v22 = v20 >= a2;
  }

  if (!v22)
  {
    v23 = MEMORY[0x277D839F8];
    while (!__OFADD__(v8, 1))
    {
      if (!v16)
      {
        v24 = *(v11 + 3);
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_49;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        sub_258AAE374(0, &qword_27F970B08, v23, MEMORY[0x277D84560]);
        v27 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v27);
        v29 = v28 - 32;
        if (v28 < 32)
        {
          v29 = v28 - 25;
        }

        v30 = v29 >> 3;
        *(v27 + 2) = v26;
        *(v27 + 3) = 2 * (v29 >> 3);
        v31 = (v27 + 4);
        v32 = *(v11 + 3) >> 1;
        if (*(v11 + 2))
        {
          v33 = v11 + 4;
          if (v27 != v11 || v31 >= v33 + 8 * v32)
          {
            memmove(v27 + 4, v33, 8 * v32);
          }

          v11[2] = 0.0;
        }

        v15 = (v31 + 8 * v32);
        v16 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v11 = v27;
      }

      v34 = __OFSUB__(v16--, 1);
      if (v34)
      {
        goto LABEL_47;
      }

      *v15++ = v20;
      v20 = a1 + (v8 + 1) * a3;
      v35 = v20 <= a2;
      if (a3 > 0.0)
      {
        v35 = v20 >= a2;
      }

      ++v8;
      if (v35)
      {
        goto LABEL_41;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_41:
  v36 = *(v11 + 3);
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v34 = __OFSUB__(v37, v16);
    v38 = v37 - v16;
    if (v34)
    {
LABEL_50:
      __break(1u);
      return;
    }

    *(v11 + 2) = v38;
  }
}

uint64_t sub_258AAD43C@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_258AABC0C(a1);
}

uint64_t sub_258AAD458()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258AAC150();
}

uint64_t type metadata accessor for StateOfMindVisualization.VisualizationPPTModel()
{
  result = qword_27F970AA8;
  if (!qword_27F970AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AAD52C()
{
  sub_258AAE374(319, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_258AAD760()
{
  result = qword_27F970AB8;
  if (!qword_27F970AB8)
  {
    sub_258AAD7E0();
    sub_258A669C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970AB8);
  }

  return result;
}

void sub_258AAD7E0()
{
  if (!qword_27F970AC0)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970AC0);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_258AAD878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258AAD8C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258AAD96C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AAD9C8()
{
  if (!qword_27F970AD8)
  {
    sub_258B02FC4();
    sub_258AAD96C(255, &qword_27F970AD0, sub_258AAD94C);
    sub_258AAE308(&qword_27F96FD38, MEMORY[0x277CC9DB0]);
    sub_258AADAA0();
    v0 = sub_258B00C54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970AD8);
    }
  }
}

unint64_t sub_258AADAA0()
{
  result = qword_27F970AE0;
  if (!qword_27F970AE0)
  {
    sub_258AAD96C(255, &qword_27F970AD0, sub_258AAD94C);
    sub_258AADB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970AE0);
  }

  return result;
}

unint64_t sub_258AADB3C()
{
  result = qword_27F970AE8;
  if (!qword_27F970AE8)
  {
    sub_258AAD94C(255);
    sub_258AAE308(&qword_27F971CA0, type metadata accessor for EmotionShape);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970AE8);
  }

  return result;
}

void sub_258AADBEC()
{
  if (!qword_27F970AF0)
  {
    sub_258B02FC4();
    sub_258AAD9C8();
    sub_258AAE308(&qword_27F96FD38, MEMORY[0x277CC9DB0]);
    sub_258AAE308(&qword_27F970AF8, sub_258AAD9C8);
    v0 = sub_258B00C54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970AF0);
    }
  }
}

uint64_t sub_258AADD10(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

float sub_258AADD1C@<S0>(float *a1@<X8>)
{
  v5 = *(v1 + 96);
  v6 = *(v1 + 112);
  sub_258AAE374(0, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v4);
  result = (v4 + 1.0) * 0.5;
  *a1 = result;
  return result;
}

uint64_t sub_258AADDA8(float *a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 112);
  v3 = ((*a1 + *a1) + -1.0);
  sub_258AAE374(0, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

float sub_258AADE30@<S0>(float *a1@<X8>)
{
  v5 = *(v1 + 120);
  v6 = *(v1 + 136);
  sub_258AAE374(0, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v4);
  result = (v4 + 1.0) * 0.5;
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_22()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_258AADD10(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_258AADF38(float *a1)
{
  v4 = *(v1 + 120);
  v5 = *(v1 + 136);
  v3 = ((*a1 + *a1) + -1.0);
  sub_258AAE374(0, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

void sub_258AADFC0()
{
  if (!qword_27F971C80)
  {
    sub_258A75B6C();
    v0 = sub_258B034D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971C80);
    }
  }
}

uint64_t sub_258AAE05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AAE0E4(uint64_t a1, uint64_t a2)
{
  sub_258AAD96C(0, &qword_27F970AD0, sub_258AAD94C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_45Tm()
{
  sub_258AADD10(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_258AAE1F8(uint64_t a1)
{
  sub_258AAE374(0, &qword_27F970B00, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258AAE278()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_258AAE2A0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258AAE308(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_258AAE374(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258AAE3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AAE46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ConfirmationView()
{
  result = qword_27F970B28;
  if (!qword_27F970B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AAE530()
{
  sub_258AAE46C(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258AAE46C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_258AAE65C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConfirmationView();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_258AAFF44(v2, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_258AAFA68(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ConfirmationView);
  v15 = sub_258B00B44();
  v16 = sub_258B01874();
  v17 = *v2;
  v18 = v2 + *(v10 + 56);
  sub_258AC14E8(v8);
  sub_258A9B4D8(v8, sub_258AAF890, v14, v15, v16, v24, v17);

  (*(v5 + 8))(v8, v4);
  result = *(v2 + 32);
  v20 = v24[5];
  *(a1 + 64) = v24[4];
  *(a1 + 80) = v20;
  *(a1 + 96) = v25;
  v21 = v24[1];
  *a1 = v24[0];
  *(a1 + 16) = v21;
  v22 = v24[3];
  *(a1 + 32) = v24[2];
  *(a1 + 48) = v22;
  *(a1 + 104) = result;
  return result;
}