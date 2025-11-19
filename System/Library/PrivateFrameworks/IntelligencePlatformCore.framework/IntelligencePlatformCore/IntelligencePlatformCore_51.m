uint64_t sub_1C486AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for GraphTriple(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Source();
  sub_1C442B738(v15, &qword_1EDDFD180);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B4AF44();
  swift_setDeallocating();
  sub_1C44DEE40();
  if (*&v14[*(v10 + 36)])
  {
    sub_1C4588D78();
    v17 = *(*a4 + 16);
    sub_1C4589968();
    v18 = *a4;
    *(v18 + 16) = v17 + 1;
    sub_1C448CCC8(v14, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17, type metadata accessor for GraphTriple);
  }

  sub_1C4588D78();
  v19 = *(*a5 + 16);
  sub_1C4589968();
  sub_1C449F0D0(v14, type metadata accessor for GraphTriple);
  v20 = *a5;
  *(v20 + 16) = v19 + 1;
  sub_1C448CCC8(a1, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, type metadata accessor for GraphTriple);
  return 1;
}

uint64_t sub_1C486B184(uint64_t a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v5[2] = a1;

  v3 = sub_1C443DD50(sub_1C486C200, v5);

  return v3;
}

uint64_t sub_1C486B1F4(uint64_t a1, uint64_t a2)
{
  sub_1C4420C3C(a2, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v4 = sub_1C4EFF0C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1C440BAA8(a2, 0, 1, v4);
  return 1;
}

uint64_t sub_1C486B328(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1C4F01138();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_1C4F01138();
  v11 = v10;
  v4[5] = v10;
  v12 = a4;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_1C486B420;

  return GraphSimulationXPC.Server.mockTripleEntityTagging(withContactId:inferredRelationshipLabel:)(v6, v8, v9, v11);
}

uint64_t sub_1C486B420(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 24);
  if (v3)
  {
    v13 = sub_1C4EF9798();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_1C486B5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0;
  v11 = *(a2 + 16);
  while (1)
  {
    if (v11 == v9)
    {
      return v10;
    }

    sub_1C448CCC8(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v8, type metadata accessor for GraphTriple);
    sub_1C44CD1F0(&qword_1EDDEBBC0, type metadata accessor for GraphTriple);
    result = sub_1C4EFBA58();
    if (v2)
    {
      sub_1C449F0D0(v8, type metadata accessor for GraphTriple);
      return v10;
    }

    if ((result & 1) != 0 && __OFADD__(v10++, 1))
    {
      break;
    }

    sub_1C449F0D0(v8, type metadata accessor for GraphTriple);
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C486B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v10 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_1C4EFF658();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF648();
  v19 = sub_1C4EFDE98();
  (*(*(v19 - 8) + 16))(v13, a3, v19);
  sub_1C440BAA8(v13, 0, 1, v19);
  sub_1C4C44CE4(a1, v18, v13, a4, a5, v22);
  sub_1C4420C3C(v13, &qword_1EC0BE4F0, &qword_1C4F37248);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1C486B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v10 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_1C4EFF658();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF648();
  v19 = sub_1C4EFDE98();
  (*(*(v19 - 8) + 16))(v13, a3, v19);
  sub_1C440BAA8(v13, 0, 1, v19);
  sub_1C4C452D4(a1, v18, v13, a4, a5, v22);
  sub_1C4420C3C(v13, &qword_1EC0BE4F0, &qword_1C4F37248);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1C486BC38(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1C4F020D8();
  v4 = *(a1 + 36);
  return result;
}

void sub_1C486BC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (sub_1C442DF94(a1, a2, v4, a4), v9 ^ v10 | v8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v7 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 36) == v6)
  {
    v11 = (*(v7 + 48) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBC98();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C486BCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (sub_1C442DF94(a1, a2, v4, a4), v9 ^ v10 | v8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v7 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 36) == v6)
  {
    v11 = *(v7 + 48) + 24 * v5;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = sub_1C43FBC98();
    sub_1C45E8718(v15, v16, v14);
    sub_1C43FBC98();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C486BD78(uint64_t a1)
{
  if (a1 < 0 || (sub_1C440D504(), sub_1C442DF94(v3, v4, v5, v6), v10 ^ v11 | v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v8 + 8 * (v2 >> 6) + 56) >> v2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v8 + 36) != v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = *(v8 + 48);
  v13 = sub_1C4EFF0C8();
  v14 = sub_1C43FBCE0(v13);
  v16 = *(v15 + 16);
  v17 = v12 + *(v15 + 72) * v2;

  v16(v1, v17, v14);
}

void sub_1C486BE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (sub_1C442DF94(a1, a2, v4, a4), v9 ^ v10 | v8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v7 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 36) == v6)
  {
    v11 = *(*(v7 + 48) + v5);
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_1C486BE74@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v14 = v4;
    v15 = v5;
    v6 = *(a3 + 48) + 56 * result;
    v8 = *(v6 + 16);
    v7 = *(v6 + 32);
    v9 = *v6;
    v13 = *(v6 + 48);
    v12[1] = v8;
    v12[2] = v7;
    v12[0] = v9;
    v10 = *(v6 + 16);
    *a4 = *v6;
    *(a4 + 16) = v10;
    *(a4 + 32) = *(v6 + 32);
    *(a4 + 48) = *(v6 + 48);
    return sub_1C461B90C(v12, v11);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C486BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (sub_1C442DF94(a1, a2, v4, a4), v9 ^ v10 | v8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v7 + 8 * (v5 >> 6) + 64) >> v5) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 36) == v6)
  {
    v11 = *(*(v7 + 48) + 8 * v5);
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C486BF78(uint64_t a1)
{
  if (a1 < 0 || (sub_1C440D504(), sub_1C442DF94(v3, v4, v5, v6), v10 ^ v11 | v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v8 + 8 * (v2 >> 6) + 64) >> v2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v8 + 36) != v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = *(v8 + 48);
  v13 = sub_1C4EF9DD8();
  v14 = sub_1C43FBCE0(v13);
  v16 = *(v15 + 16);
  v17 = v12 + *(v15 + 72) * v2;

  v16(v1, v17, v14);
}

uint64_t sub_1C486C020(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    sub_1C442E860(*(a5 + 56) + 40 * a2, result);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C486C0CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C44A7DA0;

  return sub_1C486B328(v2, v3, v5, v4);
}

uint64_t sub_1C486C1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C486B5F8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C486C2A0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C486C348()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F01298();
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4F01298();
  v5 = v0[4];
  v6 = v0[5];

  return sub_1C4F01298();
}

uint64_t sub_1C486C394()
{
  sub_1C4F02AF8();
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F01298();
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4F01298();
  v5 = v0[4];
  v6 = v0[5];
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C486C3F8()
{
  sub_1C4F02AF8();
  sub_1C486C348();
  return sub_1C4F02B68();
}

void sub_1C486C438()
{
  sub_1C441FC04();
  sub_1C456902C(&qword_1EC0BE4F8, qword_1C4F37250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = v3;
  v42 = inited + 32;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = 0;
  v6 = 0;
  while (2)
  {
    v43 = v5;
    v7 = (v42 + 16 * v6);
    v8 = v7[1];
    v9 = *v7 + 64;
    v10 = *(*v7 + 32);
    sub_1C43FEC90();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    v47 = v16;
    swift_bridgeObjectRetain_n();
    v48 = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = 0;
    v44 = v15;
    v45 = v9;
    if (v13)
    {
      while (1)
      {
        v18 = v17;
        v19 = v48;
LABEL_8:
        v20 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v21 = v20 | (v18 << 6);
        v22 = (*(v47 + 48) + 48 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[5];
        v46 = v22[4];
        v28 = *(*(v47 + 56) + 8 * v21);
        v29 = *(v19 + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!v29)
        {
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v30 = v23;
        v31 = sub_1C445FAA8(v23, v24);
        v33 = v32;

        if ((v33 & 1) == 0)
        {
          goto LABEL_12;
        }

        v34 = *(*(v48 + 56) + 8 * v31);
        sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_1C4F13950;
        *(v35 + 32) = 0x6C43797469746E65;
        *(v35 + 40) = 0xEB00000000737361;
        *(v35 + 48) = sub_1C4F01108();
        *(v35 + 56) = 0x7461636964657270;
        *(v35 + 64) = 0xE900000000000065;
        *(v35 + 72) = sub_1C4F01108();
        *(v35 + 80) = 0xD000000000000015;
        *(v35 + 88) = 0x80000001C4F86600;
        *(v35 + 96) = sub_1C4F01108();
        *(v35 + 104) = 0xD000000000000019;
        *(v35 + 112) = 0x80000001C4FA32C0;
        *(v35 + 120) = sub_1C4F01B58();
        *(v35 + 128) = 0xD000000000000010;
        *(v35 + 136) = 0x80000001C4FA32E0;
        *(v35 + 144) = sub_1C4F01B58();

        sub_1C4468200();
        sub_1C4F00F28();
        sub_1C4F00288();
        sub_1C4F00268();

LABEL_18:
        v17 = v18;
        v15 = v44;
        v9 = v45;
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      v30 = v23;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_12:
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CD8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = sub_1C43FD084();
        v40 = sub_1C43FFD34();
        v49 = v40;
        *v39 = 136315138;

        v41 = sub_1C441D828(v30, v24, &v49);

        *(v39 + 4) = v41;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Unable to get the count for entityClass %s", v39, 0xCu);
        sub_1C440962C(v40);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }

      goto LABEL_18;
    }

LABEL_4:
    v19 = v48;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return;
      }

      if (v18 >= v15)
      {
        break;
      }

      v13 = *(v9 + 8 * v18);
      ++v17;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    v5 = 1;
    v6 = 1;
    if ((v43 & 1) == 0)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  sub_1C49E1754();
}

void sub_1C486C938(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693D840](a1, a2);
  v22 = sub_1C4EFEEF8();
  if (sub_1C44157D4(v21, 1, v22) == 1)
  {
    sub_1C486D3F8(v21);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CD8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_1C43FD084();
      v27 = sub_1C43FFD34();
      v45[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1C441D828(a1, a2, v45);
      _os_log_impl(&dword_1C43F8000, v24, v25, "Unable to encode %s to EntityPredicate", v26, 0xCu);
      sub_1C440962C(v27);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  else
  {
    v41 = a5;
    v42 = a8;
    v28 = sub_1C4EFEC08();
    v30 = v29;
    v31 = *(*(v22 - 8) + 8);
    v31(v21, v22);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C693D840](a3, a4);
    if (sub_1C44157D4(v19, 1, v22) == 1)
    {

      sub_1C486D3F8(v19);
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v32 = sub_1C4F00978();
      sub_1C442B738(v32, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v33 = sub_1C4F00968();
      v34 = sub_1C4F01CD8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = sub_1C43FD084();
        v36 = sub_1C43FFD34();
        v45[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1C441D828(a3, a4, v45);
        _os_log_impl(&dword_1C43F8000, v33, v34, "Unable to encode %s to EntityPredicate", v35, 0xCu);
        sub_1C440962C(v36);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }
    }

    else
    {
      v37 = sub_1C4EFEC08();
      v39 = v38;
      v31(v19, v22);
      v45[0] = v43;
      v45[1] = v42;
      v45[2] = v28;
      v45[3] = v30;
      v45[4] = v37;
      v45[5] = v39;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v40 = *a6;
      swift_isUniquelyReferenced_nonNull_native();
      v44 = *a6;
      sub_1C4662408();
      *a6 = v44;
    }
  }
}

uint64_t sub_1C486CD18()
{
  sub_1C441FC04();
  sub_1C456902C(&qword_1EC0BE4F8, qword_1C4F37250);
  inited = swift_initStackObject();
  *(inited + 32) = v3;
  v70 = inited + 32;
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v68 = 0;
  v5 = 0;
  v6 = 0;
  v69 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v71 = v5;
    v7 = (v70 + 16 * v6);
    v9 = *v7;
    v8 = v7[1];
    v10 = *v7 + 64;
    v11 = *(*v7 + 32);
    sub_1C43FEC90();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = 0;
    v75 = v9;
    v76 = v8;
    v73 = v10;
    v74 = v16;
LABEL_3:
    v18 = v17;
    if (!v14)
    {
      goto LABEL_5;
    }

    do
    {
      v17 = v18;
LABEL_8:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v17 << 6);
      v21 = (*(v9 + 48) + 48 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[3];
      v25 = v21[5];
      if (*(v8 + 16))
      {
        v72 = *(*(v9 + 56) + 8 * v20);
        v26 = v21[4];
        v27 = v21[2];
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v28 = v22;
        v29 = sub_1C445FAA8(v22, v23);
        v31 = v30;

        if (v31)
        {
          v39 = *(*(v76 + 56) + 8 * v29);
          v77[0] = 0;
          v77[1] = 0xE000000000000000;
          sub_1C4F02248();

          strcpy(v77, "EntityClass: ");
          HIWORD(v77[1]) = -4864;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          MEMORY[0x1C6940010](v28, v23);

          MEMORY[0x1C6940010](0x3A746E756F43202CLL, 0xE900000000000020);
          v40 = sub_1C4F02858();
          MEMORY[0x1C6940010](v40);

          v42 = v77[0];
          v41 = v77[1];
          sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
          v43 = swift_initStackObject();
          *(v43 + 16) = xmmword_1C4F0C890;
          *(v43 + 32) = 0x7461636964657270;
          *(v43 + 40) = 0xE900000000000065;
          *(v43 + 48) = v27;
          *(v43 + 56) = v24;
          v44 = v41;

          *(v43 + 64) = 0xD000000000000015;
          *(v43 + 72) = 0x80000001C4F86600;
          *(v43 + 80) = v26;
          *(v43 + 88) = v25;
          *(v43 + 96) = 0xD000000000000019;
          *(v43 + 104) = 0x80000001C4FA32C0;
          v77[0] = v72;
          *(v43 + 112) = sub_1C4F02858();
          *(v43 + 120) = v45;
          v46 = v42;
          v47 = sub_1C4F00F28();
          sub_1C44239FC(v68);
          swift_isUniquelyReferenced_nonNull_native();
          v77[0] = v69;
          v48 = sub_1C445FAA8(v46, v41);
          if (__OFADD__(*(v69 + 16), (v49 & 1) == 0))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            result = sub_1C4F029F8();
            __break(1u);
            return result;
          }

          v50 = v48;
          v51 = v49;
          sub_1C456902C(&qword_1EC0BA8C0, &qword_1C4F147A8);
          v52 = sub_1C4F02458();
          v53 = v77[0];
          v69 = v77[0];
          if (v52)
          {
            v54 = sub_1C445FAA8(v46, v44);
            if ((v51 & 1) != (v55 & 1))
            {
              goto LABEL_37;
            }

            v50 = v54;
            v53 = v69;
          }

          if (v51)
          {

            v53 = v69;
          }

          else
          {
            v53[(v50 >> 6) + 8] |= 1 << v50;
            v56 = (v53[6] + 16 * v50);
            *v56 = v46;
            v56[1] = v44;
            *(v53[7] + 8 * v50) = MEMORY[0x1E69E7CC0];
            v57 = v53[2];
            v58 = __OFADD__(v57, 1);
            v59 = v57 + 1;
            if (v58)
            {
              goto LABEL_36;
            }

            v53[2] = v59;
          }

          v60 = v53[7];
          v61 = *(v60 + 8 * v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v60 + 8 * v50) = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = *(v61 + 16);
            sub_1C458DAD8();
            v61 = v65;
            *(v60 + 8 * v50) = v65;
          }

          v63 = *(v61 + 16);
          if (v63 >= *(v61 + 24) >> 1)
          {
            sub_1C458DAD8();
            v61 = v66;
            *(v60 + 8 * v50) = v66;
          }

          v16 = v74;
          v9 = v75;
          v10 = v73;
          *(v61 + 16) = v63 + 1;
          *(v61 + 8 * v63 + 32) = v47;
          v68 = sub_1C455B584;
          v8 = v76;
          goto LABEL_3;
        }
      }

      else
      {
        v28 = *v21;
        v32 = v21[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v33 = sub_1C4F00978();
      sub_1C442B738(v33, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v34 = sub_1C4F00968();
      v35 = sub_1C4F01CD8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = sub_1C43FD084();
        v37 = sub_1C43FFD34();
        v77[0] = v37;
        *v36 = 136315138;

        v38 = sub_1C441D828(v28, v23, v77);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_1C43F8000, v34, v35, "Unable to get the count for entityClass %s", v36, 0xCu);
        sub_1C440962C(v37);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }

      v18 = v17;
      v9 = v75;
      v8 = v76;
      v10 = v73;
      v16 = v74;
    }

    while (v14);
    while (1)
    {
LABEL_5:
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v16)
      {
        break;
      }

      v14 = *(v10 + 8 * v17);
      ++v18;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    v5 = 1;
    v6 = 1;
    if ((v71 & 1) == 0)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  sub_1C49E1754();
  sub_1C44239FC(v68);
  return v69;
}

uint64_t sub_1C486D3F8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C486D484()
{
  result = qword_1EDDFA018;
  if (!qword_1EDDFA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA018);
  }

  return result;
}

uint64_t GraphStore.loadConstructionGraphTriples(subject:)(uint64_t a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v5[2] = a1;

  v3 = sub_1C49A55B0(sub_1C486D7D4, v5);

  return v3;
}

uint64_t sub_1C486D548@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-1] - v8;
  type metadata accessor for ConstructionGraphTriple(0);
  v16[3] = &type metadata for FusedTripleColumn;
  v16[4] = sub_1C45021B8();
  LOBYTE(v16[0]) = 0;
  v10 = sub_1C4EFF0C8();
  v15[3] = v10;
  v15[4] = sub_1C4496440(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  v11 = sub_1C4422F90(v15);
  (*(*(v10 - 8) + 16))(v11, a1, v10);
  v17[3] = sub_1C4EFB298();
  v17[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v17);
  sub_1C4EFBB28();
  sub_1C4423A0C(v15, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v16);
  sub_1C4496440(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v17);
  sub_1C486DF5C();
  sub_1C4496440(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple);
  v12 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v9, v5);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

uint64_t sub_1C486D88C(uint64_t a1, const char *a2)
{
  v5 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v6 = sub_1C443DD50(a1, 0);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2E088);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_1C43F8000, v8, v9, a2, v10, 0xCu);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  return v6;
}

uint64_t sub_1C486DA10@<X0>(void (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  a1(0);
  sub_1C4496440(a2, a3);
  result = sub_1C4EFAE88();
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C486DA9C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v5[2] = a1;
  v5[3] = a2;

  sub_1C443DD50(sub_1C486DF40, v5);
}

uint64_t sub_1C486DB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = a1;
  v27 = a2;
  v28 = a3;
  v26 = a4;
  v38 = sub_1C4EFB4E8();
  v32 = *(v38 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  type metadata accessor for ConstructionGraphTriple(0);
  v34[3] = &type metadata for FusedTripleColumn;
  v34[4] = sub_1C45021B8();
  LOBYTE(v34[0]) = 0;
  v15 = sub_1C4EFF0C8();
  v33[3] = v15;
  v16 = sub_1C4496440(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  v33[4] = v16;
  v17 = sub_1C4422F90(v33);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v27, v15);
  v36 = sub_1C4EFB298();
  v37 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v35);
  sub_1C4EFBB28();
  sub_1C4423A0C(v33, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v34);
  sub_1C4496440(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v35);
  v19 = sub_1C4EFBF38();
  sub_1C440BAA8(v10, 1, 1, v19);
  LOBYTE(v34[0]) = 0;
  v36 = v15;
  v37 = v16;
  v20 = sub_1C4422F90(v35);
  v18(v20, v28, v15);
  sub_1C4505DC4();
  sub_1C4EFB568();
  sub_1C4423A0C(v35, &qword_1EC0C5040, &qword_1C4F0F950);
  v21 = v31;
  v22 = sub_1C4EFB8B8();
  if (v21)
  {
    (*(v32 + 8))(v6, v38);
    sub_1C4423A0C(v10, &unk_1EC0BCAB0, &unk_1C4F111A0);
    return (*(v29 + 8))(v14, v11);
  }

  else
  {
    v24 = v22;
    (*(v32 + 8))(v6, v38);
    sub_1C4423A0C(v10, &unk_1EC0BCAB0, &unk_1C4F111A0);
    result = (*(v29 + 8))(v14, v11);
    *v26 = v24;
  }

  return result;
}

unint64_t sub_1C486DF5C()
{
  result = qword_1EDDF00B0;
  if (!qword_1EDDF00B0)
  {
    sub_1C4572308(&qword_1EC0BA580, &unk_1C4F32530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF00B0);
  }

  return result;
}

void sub_1C486DFC0()
{
  v0 = type metadata accessor for GraphTriple(0);
  v63 = *(v0 - 8);
  v1 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C43FD2D8();
  v72 = v2;
  v3 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v3);
  v61 = v5;
  v62 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v60 = v8;
  v9 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v60 - v11;
  v12 = sub_1C4EFDE88();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v66 = &v60 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v60 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - v28;
  v30 = sub_1C4EFDE98();
  v31 = sub_1C43FCDF8(v30);
  v69 = v32;
  v70 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v65 = v35;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v36 = *(sub_1C4EFEEF8() - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE5D8();
  sub_1C4D504A4();
  v64 = v39;
  v40 = *MEMORY[0x1E69A95C0];
  v41 = *(v15 + 104);
  v42 = v29;
  sub_1C442C8C0();
  v41();
  sub_1C442C8C0();
  v41();
  sub_1C442C8C0();
  v41();
  v43 = v66;
  sub_1C442C8C0();
  v41();
  v44 = v67;
  sub_1C442C8C0();
  v41();
  v45 = v65;
  sub_1C4EFDCD8();

  v46 = *(v15 + 8);
  v46(v44, v12);
  v46(v43, v12);
  v46(v24, v12);
  v46(v27, v12);
  v46(v42, v12);
  v47 = sub_1C4EFF8F8();
  v48 = v68;
  sub_1C440BAA8(v68, 1, 1, v47);
  v49 = sub_1C498DB80();
  sub_1C482ADC8(v48);
  (*(v69 + 8))(v45, v70);
  v50 = *(v49 + 16);
  if (v50)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v51 = v73;
    v52 = v62;
    v53 = v49 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v54 = *(v63 + 72);
    v70 = v49;
    v71 = v54;
    v55 = v60;
    v56 = v61;
    v57 = (v61 + 16);
    do
    {
      v58 = v72;
      sub_1C4709E74(v53, v72);
      (*v57)(v55, v58, v52);
      sub_1C4709ED8(v58);
      v73 = v51;
      v59 = *(v51 + 16);
      if (v59 >= *(v51 + 24) >> 1)
      {
        sub_1C459D178();
        v51 = v73;
      }

      *(v51 + 16) = v59 + 1;
      (*(v56 + 32))(v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v59, v55, v52);
      v53 += v71;
      --v50;
    }

    while (v50);
  }

  sub_1C45972E0();
}

double sub_1C486E5B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v33 = a5;
  v31 = a4;
  v30 = a3;
  v29 = a6;
  v8 = sub_1C456902C(&qword_1EC0BE500, &qword_1C4F37338);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  if (qword_1EC0B6BB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4EFBD38();
  v16 = sub_1C442B738(v15, qword_1EC1521C8);
  v39 = v15;
  v40 = MEMORY[0x1E69A0050];
  v17 = sub_1C4422F90(v38);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v16, v15);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = a1;
  v35 = a2;
  v19 = sub_1C4EFB298();
  v20 = MEMORY[0x1E699FE60];
  v42 = v19;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v34);
  sub_1C440962C(v38);
  sub_1C4867980();
  sub_1C4EFAE28();
  sub_1C440962C(v41);
  if (qword_1EC0B6BB8 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v15, qword_1EC1521E0);
  v39 = v15;
  v40 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v38);
  v18(v22, v21, v15);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v30;
  v35 = v31;
  v42 = v19;
  v43 = v20;
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v34);
  sub_1C440962C(v38);
  sub_1C486E9B8(&qword_1EC0BE508);
  sub_1C4EFB438();
  v23 = *(v32 + 8);
  v23(v12, v8);
  sub_1C440962C(v41);
  sub_1C486E9B8(&qword_1EC0BE510);
  sub_1C4867A5C();
  v24 = v47;
  sub_1C4EFAFF8();
  v23(v14, v8);
  if (!v24)
  {
    result = *&v44;
    v26 = v45;
    v27 = v46;
    v28 = v29;
    *v29 = v44;
    v28[1] = v26;
    v28[2] = v27;
  }

  return result;
}

uint64_t sub_1C486E9B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BE500, &qword_1C4F37338);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C486EA34(uint64_t a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v5[2] = a1;

  v3 = sub_1C49A52CC(sub_1C486FD0C, v5);

  return v3;
}

uint64_t sub_1C486EAD0(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v5 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v6 = a2(a1, 0);

  return v6;
}

uint64_t sub_1C486EB38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EventTriple(0);
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
  result = sub_1C4EFADD8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C486EBC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EventTriple(0);
  sub_1C486FCA8(&qword_1EDDFC2C8, type metadata accessor for EventTriple);
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
  result = sub_1C4EFB388();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C486EC90(uint64_t a1)
{
  v3 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1C4EFB298();
  v11 = sub_1C43FCDF8(v37);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v21 = v18;
    v32 = v1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C459D970();
    v23 = *(v6 + 16);
    v22 = v6 + 16;
    v20 = v40;
    v24 = (a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64)));
    v35 = *(v22 + 56);
    v36 = v23;
    v33 = v13 + 32;
    v34 = (v22 - 8);
    do
    {
      v25 = v36;
      v36(v10, v24, v3);
      v39[3] = &type metadata for FusedTripleColumn;
      v39[4] = sub_1C45021B8();
      LOBYTE(v39[0]) = 0;
      v38[3] = v3;
      v38[4] = sub_1C486FCA8(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
      v26 = sub_1C4422F90(v38);
      v25(v26, v10, v3);
      sub_1C4EFBB28();
      (*v34)(v10, v3);
      sub_1C44967E0(v38);
      sub_1C440962C(v39);
      v40 = v20;
      v27 = *(v20 + 16);
      if (v27 >= *(v20 + 24) >> 1)
      {
        sub_1C459D970();
        v20 = v40;
      }

      *(v20 + 16) = v27 + 1;
      v16 = (*(v13 + 32))(v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v27, v21, v37);
      v24 += v35;
      --v19;
    }

    while (v19);
    v1 = v32;
  }

  v28 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v16);
  *(&v31 - 2) = v20;

  v29 = sub_1C49A52CC(sub_1C486FCF0, (&v31 - 4));

  return v29;
}

uint64_t sub_1C486EFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a1;
  v16 = a3;
  v17 = sub_1C4EFB288();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v16 - v10;
  type metadata accessor for EventTriple(0);
  v21[6] = a2;
  sub_1C4EFB268();
  v21[3] = sub_1C4EFB298();
  v21[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v21);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4F01468();
  (*(v4 + 8))(v7, v17);
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v21);
  sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C486FCA8(&qword_1EDDFC2C8, type metadata accessor for EventTriple);
  v12 = v18;
  v13 = v20;
  v14 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v11, v12);
  if (!v13)
  {
    *v16 = v14;
  }

  return result;
}

uint64_t sub_1C486F2E0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17 = a2;
  v4 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-1] - v7;
  type metadata accessor for EventTriple(0);
  v15[3] = &type metadata for FusedTripleColumn;
  v15[4] = sub_1C45021B8();
  LOBYTE(v15[0]) = 0;
  v9 = sub_1C4EFF0C8();
  v14[3] = v9;
  v14[4] = sub_1C486FCA8(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  v10 = sub_1C4422F90(v14);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  v16[3] = sub_1C4EFB298();
  v16[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v16);
  sub_1C4EFBB28();
  sub_1C44967E0(v14);
  sub_1C440962C(v15);
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v16);
  sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C486FCA8(&qword_1EDDFC2C8, type metadata accessor for EventTriple);
  v11 = sub_1C4EFAFE8();
  result = (*(v5 + 8))(v8, v4);
  if (!v2)
  {
    *v17 = v11;
  }

  return result;
}

uint64_t sub_1C486F58C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  *&v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;

  v5 = sub_1C49A52CC(sub_1C486FC88, v7);

  return v5;
}

uint64_t sub_1C486F600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v39 = a3;
  v34 = a1;
  v32 = a4;
  v7 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  type metadata accessor for EventTriple(0);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0D130;
  *(v15 + 56) = &type metadata for FusedTripleColumn;
  *(v15 + 64) = sub_1C4811294();
  *(v15 + 32) = 8;
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
  sub_1C4EFAE08();
  v16 = v8;
  v17 = v11;

  v45 = &type metadata for FusedTripleColumn;
  v18 = sub_1C45021B8();
  v46 = v18;
  LOBYTE(v44[0]) = 8;
  v42 = MEMORY[0x1E69E63B0];
  v43 = MEMORY[0x1E69A0160];
  *v41 = a5;
  v19 = sub_1C4EFB298();
  v48 = v19;
  v49 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v47);
  sub_1C4EFB808();
  sub_1C440962C(v41);
  sub_1C440962C(v44);
  v20 = sub_1C4401CBC(&qword_1EDDFE878, &qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C4EFB438();
  v38 = v16;
  v21 = *(v16 + 8);
  v36 = v17;
  v21(v17, v7);
  sub_1C440962C(v47);
  v37 = v16 + 8;
  if (a2)
  {
    v41[0] = a2;
    v45 = &type metadata for FusedTripleColumn;
    v46 = v18;
    LOBYTE(v44[0]) = 0;
    v48 = v19;
    v49 = MEMORY[0x1E699FE60];
    v33 = sub_1C4422F90(v47);
    sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C486FCA8(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
    sub_1C4F01458();
    sub_1C440962C(v44);
    v22 = v36;
    sub_1C4EFB438();
    v21(v14, v7);
    sub_1C440962C(v47);
    (*(v38 + 32))(v14, v22, v7);
  }

  v33 = v20;
  v23 = v14;
  if (v39)
  {
    v41[0] = v39;
    v48 = &type metadata for FusedTripleColumn;
    v49 = v18;
    LOBYTE(v47[0]) = 1;
    v45 = v19;
    v46 = MEMORY[0x1E699FE60];
    v30[1] = sub_1C4422F90(v44);
    v31 = v21;
    sub_1C456902C(&qword_1EC0BDCF0, &qword_1C4F319A0);
    sub_1C4401CBC(&qword_1EDDDBD48, &qword_1EC0BDCF0, &qword_1C4F319A0);
    sub_1C486FCA8(&unk_1EDDFA1D8, MEMORY[0x1E69A9748]);
    v24 = v38;
    sub_1C4F01458();
    sub_1C440962C(v47);
    v40 = v39;
    v48 = &type metadata for FusedTripleColumn;
    v49 = v18;
    LOBYTE(v47[0]) = 3;
    v42 = v19;
    v25 = MEMORY[0x1E699FE60];
    v43 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v41);
    v21 = v31;
    sub_1C4F01458();
    sub_1C440962C(v47);
    v48 = v19;
    v49 = v25;
    sub_1C4422F90(v47);
    sub_1C4EFBB78();
    sub_1C440962C(v41);
    sub_1C440962C(v44);
    v26 = v36;
    sub_1C4EFB438();
    v21(v23, v7);
    sub_1C440962C(v47);
    (*(v24 + 32))(v23, v26, v7);
  }

  sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C486FCA8(&qword_1EDDFC2C8, type metadata accessor for EventTriple);
  v27 = v35;
  v28 = sub_1C4EFAFE8();
  result = (v21)(v23, v7);
  if (!v27)
  {
    *v32 = v28;
  }

  return result;
}

uint64_t sub_1C486FCA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C486FDB4(uint64_t a1)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v4 = sub_1C49A5480(a1, 0);

  return v4;
}

uint64_t sub_1C486FE68@<X0>(void (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  a1(0);
  sub_1C486FEF4(a2, a3);
  result = sub_1C4EFADD8();
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C486FEF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C486FF70(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C4EFBD38();
  sub_1C44F9918(v3, a2);
  sub_1C442B738(v3, a2);
  return sub_1C4EFBD48();
}

double sub_1C486FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v38 = a1;
  v3 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v12 = sub_1C43FCDF8(v11);
  v37 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v33 - v19;
  sub_1C4EFBD18();
  if (qword_1EDDFE760 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4EFBD38();
  v21 = sub_1C442B738(v20, qword_1EDDFE768);
  v40[3] = v20;
  v40[4] = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v40);
  v23 = *(*(v20 - 8) + 16);
  v23(v22, v21, v20);
  v39[3] = MEMORY[0x1E69E6158];
  v39[4] = MEMORY[0x1E69A0130];
  v39[0] = v34;
  v39[1] = v35;
  v43 = sub_1C4EFB298();
  v44 = MEMORY[0x1E699FE60];
  sub_1C4422F90(&v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v39);
  sub_1C440962C(v40);
  sub_1C4EFBCD8();
  (*(v5 + 8))(v10, v3);
  sub_1C440962C(&v41);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDFCA58 != -1)
  {
    swift_once();
  }

  v25 = sub_1C442B738(v20, qword_1EDDFCA60);
  v26 = MEMORY[0x1E69A0038];
  *(v24 + 56) = v20;
  *(v24 + 64) = v26;
  v27 = sub_1C4422F90((v24 + 32));
  v23(v27, v25, v20);
  sub_1C4401CBC(&unk_1EDDFE840, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v28 = v36;
  sub_1C4EFB688();

  v29 = *(v37 + 8);
  v29(v18, v11);
  sub_1C441310C();
  sub_1C4401CBC(v30, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v31 = v45;
  sub_1C4EFB9B8();
  v29(v28, v11);
  if (!v31)
  {
    result = v41;
    if (v42)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_1C4870410(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C4EFB768();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E6158];
  v17 = MEMORY[0x1E69A0138];
  *(v15 + 16) = xmmword_1C4F0CE60;
  *(v15 + 56) = v16;
  *(v15 + 64) = v17;
  v18 = MEMORY[0x1E69E63B0];
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  v19 = MEMORY[0x1E69A0168];
  *(v15 + 96) = v18;
  *(v15 + 104) = v19;
  *(v15 + 72) = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFBFF8();
  return (*(v10 + 8))(v14, v7);
}

double sub_1C4870588(uint64_t a1)
{
  v75 = sub_1C456902C(&qword_1EC0BE518, &qword_1C4F37340);
  sub_1C43FCDF8(v75);
  v74 = v3;
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v71 - v7;
  v8 = sub_1C456902C(&qword_1EC0BE520, &qword_1C4F37348);
  sub_1C43FCDF8(v8);
  v77 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v71 - v13;
  v79 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C43FCDF8(v79);
  v78 = v15;
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - v19;
  v21 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C43FCDF8(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v71 - v27;
  type metadata accessor for GraphTriple(0);
  v83 = sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v29 = swift_allocObject();
  v82 = xmmword_1C4F0D130;
  *(v29 + 16) = xmmword_1C4F0D130;
  v88 = &type metadata for FusedTripleColumn;
  v81 = sub_1C45021B8();
  v89 = v81;
  LOBYTE(v86) = 8;
  v30 = sub_1C4EFB298();
  v31 = MEMORY[0x1E699FE50];
  v80 = v30;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  sub_1C4422F90((v29 + 32));
  sub_1C443241C();
  sub_1C440962C(&v86);
  sub_1C4870DF0(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C43FD8AC();

  sub_1C441310C();
  sub_1C4401CBC(v32, &unk_1EC0C0800, &qword_1C4F0F948);
  v84 = a1;
  v33 = v85;
  sub_1C4EFB9B8();
  if (v33)
  {
    (*(v23 + 8))(v28, v21);
  }

  else
  {
    v73 = v14;
    v85 = v28;
    v34 = v78;
    v35 = sub_1C4411DC4();
    v36 = 0.0;
    if (v37)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0.0;
    }

    type metadata accessor for EventTriple(0);
    v39 = sub_1C441FC18();
    sub_1C440AC24(v39);
    v41 = sub_1C442CB80(v40);
    *(v41 + 64) = MEMORY[0x1E699FE50];
    sub_1C4422F90((v41 + 32));
    sub_1C443241C();
    sub_1C440962C(&v86);
    sub_1C4870DF0(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
    sub_1C43FD8AC();

    sub_1C441310C();
    sub_1C4401CBC(v42, v43, v44);
    v45 = v79;
    sub_1C4EFB9B8();
    v72 = v20;
    v46 = sub_1C4411DC4();
    if (v37)
    {
      v36 = v46;
    }

    type metadata accessor for ExpiredGraphTriple(0);
    v47 = sub_1C441FC18();
    sub_1C440AC24(v47);
    v49 = sub_1C442CB80(v48);
    *(v49 + 64) = MEMORY[0x1E699FE50];
    sub_1C4422F90((v49 + 32));
    sub_1C443241C();
    sub_1C440962C(&v86);
    sub_1C4870DF0(qword_1EDDFD7D0, type metadata accessor for ExpiredGraphTriple);
    sub_1C43FD8AC();

    sub_1C441310C();
    sub_1C4401CBC(v50, v51, v52);
    v53 = v8;
    sub_1C4EFB9B8();
    v54 = sub_1C4411DC4();
    if (v37)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0.0;
    }

    type metadata accessor for ExpiredEventTriple(0);
    v56 = sub_1C441FC18();
    sub_1C440AC24(v56);
    v58 = sub_1C442CB80(v57);
    *(v58 + 64) = MEMORY[0x1E699FE50];
    sub_1C4422F90((v58 + 32));
    sub_1C443241C();
    sub_1C440962C(&v86);
    sub_1C4870DF0(&qword_1EDDFD830, type metadata accessor for ExpiredEventTriple);
    sub_1C43FD8AC();

    sub_1C441310C();
    sub_1C4401CBC(v59, v60, v61);
    v62 = v75;
    sub_1C4EFB9B8();
    v63 = v86;
    v64 = v87;
    v66 = sub_1C486FFD0(v84, 0xD00000000000001CLL, 0x80000001C4FA3350);
    if (v64)
    {
      v63 = 0.0;
    }

    sub_1C456902C(&qword_1EC0B87D0, &qword_1C4F0DBC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0CE60;
    *(inited + 32) = v63;
    *(inited + 40) = v66;
    sub_1C4870E38(inited, v38, v36, v55);
    v1 = v68;
    swift_setDeallocating();
    sub_1C43FFB20(&v90);
    v69(v76, v62);
    sub_1C43FFB20(&v91);
    v70(v73, v53);
    (*(v34 + 8))(v72, v45);
    (*(v23 + 8))(v85, v21);
  }

  return v1;
}

uint64_t sub_1C4870DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4870E38(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

double sub_1C4870E6C()
{
  v1 = *v0;
  v2 = *(v0[2] + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v13 = v0;
  v14 = v1;

  sub_1C49A532C(sub_1C4870FC0, &v12, v3, v4, v5, v6, v7, v8);
  v10 = v9;

  return v10;
}

void sub_1C4870F24(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1C4870588(a1);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1C486FFD0(a1, 0xD000000000000019, 0x80000001C4FA3370);
    v8 = sub_1C486FFD0(a1, 0xD00000000000001CLL, 0x80000001C4FA3350);
    *a2 = v6;
    a2[1] = v7;
    a2[2] = v8;
  }
}

void sub_1C4870FC0(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1C4870F24(a1, a2);
}

uint64_t sub_1C4870FDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  while (1)
  {
    if (v26 == v4)
    {
    }

    v5 = *(type metadata accessor for GraphTriple(0) - 8);
    v27 = v4;
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4;
    v7 = objc_autoreleasePoolPush();
    v8 = GraphStore.loadGraphTriples(subject:)();
    v9 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *a3;
    v28 = *a3;
    sub_1C44E3664();
    if (__OFADD__(v10[2], (v12 & 1) == 0))
    {
      break;
    }

    v13 = v11;
    v14 = v12;
    sub_1C456902C(&qword_1EC0B97D0, &qword_1C4F0F940);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_15;
      }

      v13 = v15;
    }

    if (v14)
    {
      v17 = v28[7];
      v18 = *(v17 + 8 * v13);
      *(v17 + 8 * v13) = v8;
    }

    else
    {
      v28[(v13 >> 6) + 8] |= 1 << v13;
      v19 = v28[6];
      v20 = sub_1C4EFF0C8();
      (*(*(v20 - 8) + 16))(v19 + *(*(v20 - 8) + 72) * v13, v6, v20);
      *(v28[7] + 8 * v13) = v8;
      v21 = v28[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_14;
      }

      v28[2] = v23;
    }

    *a3 = v28;
    objc_autoreleasePoolPop(v7);
    v4 = v27 + 1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  sub_1C4EFF0C8();
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void (*sub_1C487129C(uint64_t a1, void (*a2)(uint64_t, void)))(uint64_t, void)
{
  v5 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  a2(a1, 0);
  sub_1C4407020();
  return a2;
}

uint64_t sub_1C4871328@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GraphTriple(0);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  result = sub_1C4EFB388();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t GraphStore.loadGraphTriples(subject:objectPrefix:)()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](42, 0xE100000000000000);
  v0 = sub_1C4871464();

  return v0;
}

uint64_t sub_1C4871464()
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  sub_1C441FC38(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  sub_1C4407020();
  return v0;
}

uint64_t sub_1C48714E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a4;
  v21[1] = a1;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  type metadata accessor for GraphTriple(0);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0D130;
  v17 = MEMORY[0x1E69A0138];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = v17;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE18();
  (*(v7 + 8))(v10, v6);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v18 = v21[3];
  v19 = sub_1C4EFAFE8();
  result = (*(v12 + 8))(v15, v11);
  if (!v18)
  {
    *v21[0] = v19;
  }

  return result;
}

uint64_t GraphStore.loadGraphTriples(subject:predicates:)()
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  sub_1C441FC38(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  sub_1C4407020();
  return v0;
}

uint64_t sub_1C487181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a3;
  v24 = a1;
  v22 = a4;
  v5 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  type metadata accessor for GraphTriple(0);
  v27 = &type metadata for FusedTripleColumn;
  v13 = sub_1C45021B8();
  v28 = v13;
  LOBYTE(v26[0]) = 0;
  v14 = sub_1C4EFF0C8();
  v25[3] = v14;
  v25[4] = sub_1C45022E4(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  v15 = sub_1C4422F90(v25);
  (*(*(v14 - 8) + 16))(v15, a2, v14);
  v16 = sub_1C4EFB298();
  v17 = MEMORY[0x1E699FE60];
  v30 = v16;
  v31 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v29);
  sub_1C4EFBB28();
  sub_1C44967E0(v25);
  sub_1C440962C(v26);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v29);
  v25[0] = v23;
  v27 = &type metadata for FusedTripleColumn;
  v28 = v13;
  LOBYTE(v26[0]) = 1;
  v30 = v16;
  v31 = v17;
  sub_1C4422F90(v29);
  sub_1C456902C(&qword_1EC0BDCF0, &qword_1C4F319A0);
  sub_1C4401CBC(&qword_1EDDDBD48, &qword_1EC0BDCF0, &qword_1C4F319A0);
  sub_1C45022E4(&unk_1EDDFA1D8, MEMORY[0x1E69A9748]);
  sub_1C4F01458();
  sub_1C440962C(v26);
  sub_1C4401CBC(&qword_1EDDFCD10, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C4EFB438();
  v18 = *(v6 + 8);
  v18(v10, v5);
  sub_1C440962C(v29);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v19 = v32;
  v20 = sub_1C4EFAFE8();
  result = (v18)(v12, v5);
  if (!v19)
  {
    *v22 = v20;
  }

  return result;
}

uint64_t sub_1C4871C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(v3 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v7[2] = a1;
  v7[3] = a2;

  sub_1C4505B00(a3, v7);
  sub_1C4407020();
  return a3;
}

uint64_t sub_1C4871C9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v17 = a3;
  v6 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-1] - v9;
  type metadata accessor for GraphTriple(0);
  v15[3] = &type metadata for FusedTripleColumn;
  v15[4] = sub_1C45021B8();
  LOBYTE(v15[0]) = 4;
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = MEMORY[0x1E69A0130];
  v14[0] = a1;
  v14[1] = a2;
  v16[3] = sub_1C4EFB298();
  v16[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v14);
  sub_1C440962C(v15);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v16);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v11 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v17 = v11;
  }

  return result;
}

uint64_t sub_1C4871EF4@<X0>(uint64_t *a1@<X8>)
{
  v13 = a1;
  v2 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-1] - v5;
  type metadata accessor for GraphTriple(0);
  v11[3] = &type metadata for FusedTripleColumn;
  v11[4] = sub_1C45021B8();
  LOBYTE(v11[0]) = 1;
  v10[3] = sub_1C4EFEEF8();
  v10[4] = sub_1C45022E4(&unk_1EDDFA1D8, MEMORY[0x1E69A9748]);
  sub_1C4422F90(v10);
  sub_1C4EFE5D8();
  v12[3] = sub_1C4EFB298();
  v12[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v12);
  sub_1C4EFBB28();
  sub_1C44967E0(v10);
  sub_1C440962C(v11);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v12);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v7 = sub_1C4EFAFE8();
  result = (*(v3 + 8))(v6, v2);
  if (!v1)
  {
    *v13 = v7;
  }

  return result;
}

uint64_t sub_1C48721C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a5;
  v28 = a3;
  v31 = a1;
  v30 = sub_1C4EFB768();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  type metadata accessor for GraphTriple(0);
  v33[3] = &type metadata for FusedTripleColumn;
  v33[4] = sub_1C45021B8();
  LOBYTE(v33[0]) = 0;
  v18 = sub_1C4EFF0C8();
  v32[3] = v18;
  v32[4] = sub_1C45022E4(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  v19 = sub_1C4422F90(v32);
  (*(*(v18 - 8) + 16))(v19, a2, v18);
  v34[3] = sub_1C4EFB298();
  v34[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v34);
  sub_1C4EFBB28();
  sub_1C44967E0(v32);
  sub_1C440962C(v33);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v34);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0D130;
  v21 = MEMORY[0x1E69A0138];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = v21;
  *(v20 + 32) = v28;
  *(v20 + 40) = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4401CBC(&qword_1EDDFCD10, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C4EFB428();
  (*(v7 + 8))(v10, v30);
  v22 = *(v29 + 8);
  v22(v15, v11);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v23 = v34[7];
  v24 = sub_1C4EFAFE8();
  result = (v22)(v17, v11);
  if (!v23)
  {
    *v27 = v24;
  }

  return result;
}

uint64_t sub_1C4872610(uint64_t a1)
{
  v3 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C4EFB298();
  v11 = sub_1C43FCDF8(v38);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v21 = v18;
    v33 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C459D970();
    v23 = *(v6 + 16);
    v22 = v6 + 16;
    v20 = v41;
    v24 = (a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64)));
    v36 = *(v22 + 56);
    v37 = v23;
    v34 = v13 + 32;
    v35 = (v22 - 8);
    do
    {
      v25 = v37;
      v37(v10, v24, v3);
      v40[3] = &type metadata for FusedTripleColumn;
      v40[4] = sub_1C45021B8();
      LOBYTE(v40[0]) = 0;
      v39[3] = v3;
      sub_1C4419880();
      v39[4] = sub_1C45022E4(&qword_1EDDFCCA0, v26);
      v27 = sub_1C4422F90(v39);
      v25(v27, v10, v3);
      sub_1C4EFBB28();
      (*v35)(v10, v3);
      sub_1C44967E0(v39);
      sub_1C440962C(v40);
      v41 = v20;
      v28 = *(v20 + 16);
      if (v28 >= *(v20 + 24) >> 1)
      {
        sub_1C459D970();
        v20 = v41;
      }

      *(v20 + 16) = v28 + 1;
      v16 = (*(v13 + 32))(v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v28, v21, v38);
      v24 += v36;
      --v19;
    }

    while (v19);
    v1 = v33;
  }

  v29 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v16);
  *(&v32 - 2) = v20;

  v30 = sub_1C4505B00(sub_1C487360C, (&v32 - 4));

  return v30;
}

uint64_t sub_1C4872954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a1;
  v16 = a3;
  v17 = sub_1C4EFB288();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v16 - v10;
  type metadata accessor for GraphTriple(0);
  v21[6] = a2;
  sub_1C4EFB268();
  v21[3] = sub_1C4EFB298();
  v21[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v21);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4F01468();
  (*(v4 + 8))(v7, v17);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v21);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v12 = v18;
  v13 = v20;
  v14 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v11, v12);
  if (!v13)
  {
    *v16 = v14;
  }

  return result;
}

uint64_t sub_1C4872C50()
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  sub_1C441FC38(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  sub_1C4407020();
  return v0;
}

uint64_t sub_1C4872CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v39 = a3;
  v34 = a1;
  v32 = a4;
  v7 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  type metadata accessor for GraphTriple(0);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0D130;
  *(v15 + 56) = &type metadata for FusedTripleColumn;
  *(v15 + 64) = sub_1C4811294();
  *(v15 + 32) = 8;
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE08();
  v16 = v8;
  v17 = v11;

  v45 = &type metadata for FusedTripleColumn;
  v18 = sub_1C45021B8();
  v46 = v18;
  LOBYTE(v44[0]) = 8;
  v42 = MEMORY[0x1E69E63B0];
  v43 = MEMORY[0x1E69A0160];
  *v41 = a5;
  v19 = sub_1C4EFB298();
  v48 = v19;
  v49 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v47);
  sub_1C4EFB808();
  sub_1C440962C(v41);
  sub_1C440962C(v44);
  v20 = sub_1C4401CBC(&qword_1EDDFCD10, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C4EFB438();
  v38 = v16;
  v21 = *(v16 + 8);
  v36 = v17;
  v21(v17, v7);
  sub_1C440962C(v47);
  v37 = v16 + 8;
  if (a2)
  {
    v41[0] = a2;
    v45 = &type metadata for FusedTripleColumn;
    v46 = v18;
    LOBYTE(v44[0]) = 0;
    v48 = v19;
    v49 = MEMORY[0x1E699FE60];
    v33 = sub_1C4422F90(v47);
    sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C45022E4(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
    sub_1C4F01458();
    sub_1C440962C(v44);
    v22 = v36;
    sub_1C4EFB438();
    v21(v14, v7);
    sub_1C440962C(v47);
    (*(v38 + 32))(v14, v22, v7);
  }

  v33 = v20;
  v23 = v14;
  if (v39)
  {
    v41[0] = v39;
    v48 = &type metadata for FusedTripleColumn;
    v49 = v18;
    LOBYTE(v47[0]) = 1;
    v45 = v19;
    v46 = MEMORY[0x1E699FE60];
    v30[1] = sub_1C4422F90(v44);
    v31 = v21;
    sub_1C456902C(&qword_1EC0BDCF0, &qword_1C4F319A0);
    sub_1C4401CBC(&qword_1EDDDBD48, &qword_1EC0BDCF0, &qword_1C4F319A0);
    sub_1C45022E4(&unk_1EDDFA1D8, MEMORY[0x1E69A9748]);
    v24 = v38;
    sub_1C4F01458();
    sub_1C440962C(v47);
    v40 = v39;
    v48 = &type metadata for FusedTripleColumn;
    v49 = v18;
    LOBYTE(v47[0]) = 3;
    v42 = v19;
    v25 = MEMORY[0x1E699FE60];
    v43 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v41);
    v21 = v31;
    sub_1C4F01458();
    sub_1C440962C(v47);
    v48 = v19;
    v49 = v25;
    sub_1C4422F90(v47);
    sub_1C4EFBB78();
    sub_1C440962C(v41);
    sub_1C440962C(v44);
    v26 = v36;
    sub_1C4EFB438();
    v21(v23, v7);
    sub_1C440962C(v47);
    (*(v24 + 32))(v23, v26, v7);
  }

  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v27 = v35;
  v28 = sub_1C4EFAFE8();
  result = (v21)(v23, v7);
  if (!v27)
  {
    *v32 = v28;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall GraphStore.loadGraphTriplesGroupedBySubject(groupsContainingObject:)(Swift::String groupsContainingObject)
{
  v2 = GraphStore.loadGraphTriples(object:)(groupsContainingObject._countAndFlagsBits, groupsContainingObject._object);
  sub_1C4EFF0C8();
  sub_1C456902C(&qword_1EC0BD400, &qword_1C4F2DBE0);
  sub_1C4419880();
  sub_1C45022E4(v3, v4);
  v7 = sub_1C4F00F28();

  sub_1C4870FDC(v2, v1, &v7);

  v6 = v7;
  result.value._rawValue = v6;
  result.is_nil = v5;
  return result;
}

Swift::Int __swiftcall GraphStore.clearGraphTriples()()
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  sub_1C443DD50(sub_1C4873520, 0);
  sub_1C4407020();
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2E088);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v0;
    _os_log_impl(&dword_1C43F8000, v4, v5, "GraphStore: clearGraphTriples: %ld deleted.", v6, 0xCu);
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  return v0;
}

uint64_t sub_1C487354C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for GraphTriple(0);
  v8 = sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  result = a2(a1, v7, v8);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4873648()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  sub_1C446C37C(sub_1C48736AC, 0);
}

uint64_t sub_1C48736AC()
{
  type metadata accessor for ProgressTokens(0);
  sub_1C4490890(&qword_1EDDF7A98, type metadata accessor for ProgressTokens);
  result = sub_1C4EFAE88();
  if (!v0)
  {
    type metadata accessor for ConstructionProgressTokens(0);
    sub_1C4490890(&qword_1EDDE1100, type metadata accessor for ConstructionProgressTokens);
    sub_1C4EFAE88();
    type metadata accessor for ConstructionPhaseStatus(0);
    sub_1C4490890(&qword_1EDDE2608, type metadata accessor for ConstructionPhaseStatus);
    return sub_1C4EFAE88();
  }

  return result;
}

uint64_t sub_1C48737EC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

void sub_1C4873854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for EntityTriple(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3;
  v21 = a4;
  v19[1] = a2;
LABEL_2:
  v13 = SourceEntityStore.Iterator.next()();
  if (v13)
  {
    v14 = v13;
    v15 = objc_autoreleasePoolPush();
    v22 = v14;
    v16 = a3(v14);
    objc_autoreleasePoolPop(v15);
    v17 = 0;
    v18 = *(v16 + 16);
    while (1)
    {
      if (v18 == v17)
      {

        a3 = v20;
        goto LABEL_2;
      }

      if (v17 >= *(v16 + 16))
      {
        break;
      }

      sub_1C4490938(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v12, type metadata accessor for EntityTriple);
      sub_1C4490890(&qword_1EDDF8D98, type metadata accessor for EntityTriple);
      sub_1C4EFB6C8();
      if (v4)
      {
        sub_1C4491300(v12, type metadata accessor for EntityTriple);

        return;
      }

      ++v17;
      sub_1C4491300(v12, type metadata accessor for EntityTriple);
    }

    __break(1u);
  }
}

uint64_t sub_1C4873A78()
{
  type metadata accessor for EntityPair(0);
  sub_1C4490890(&qword_1EDDFA0E0, type metadata accessor for EntityPair);
  return sub_1C4EFB6C8();
}

void sub_1C4873B00()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2E088);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "GraphStore: promoteConstructionGraphToProduction: completed", v7, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

void sub_1C4873C18(NSObject *a1, uint64_t a2, char a3)
{
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2E088);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "GraphStore: promoteConstructionGraphToProduction: starting", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  sub_1C487408C(a1, 0xD000000000000010, 0x80000001C4FA3390, 0x675F656C62617473, 0xEC00000068706172, 0xD000000000000019, 0x80000001C4FA2FA0);
  if (!v3)
  {
    sub_1C487408C(a1, 0x6E6576655F646C6FLL, 0xEF68706172675F74, 0x72675F746E657665, 0xEB00000000687061, 0xD000000000000018, 0x80000001C4FA2FC0);
    sub_1C487408C(a1, 0xD000000000000013, 0x80000001C4FA33B0, 0x73736572676F7270, 0xEF736E656B6F745FLL, 0xD00000000000001CLL, 0x80000001C4FA3060);
    sub_1C487408C(a1, 0xD000000000000010, 0x80000001C4FA33D0, 0x74735F6573616870, 0xEC00000073757461, 0xD000000000000019, 0x80000001C4FA3040);
    sub_1C487594C(a1);
    if ((a3 & 1) == 0)
    {
      type metadata accessor for KeyValueStore();
      v11 = OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
      v12 = sub_1C49A4CB8(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config);
      v23 = v13;
      v15 = v14;
      v16 = sub_1C486FFD0(a1, 0xD000000000000019, 0x80000001C4FA3370);
      if (v12)
      {
        v17 = v15;
        v18 = sub_1C4493790();
        v19 = v12;
        if (v18 != 2)
        {
          v20 = v11;
          goto LABEL_11;
        }
      }

      else
      {
        v17 = v15;
        v19 = 0;
      }

      v20 = v11;
      if (v16 != 0.0)
      {
LABEL_12:

        return;
      }

LABEL_11:
      sub_1C4EF9AE8();
      v22 = v21;
      sub_1C49A4D58(a2 + v20, &v24);
      sub_1C48767E8();
      v27 = v24;
      sub_1C4420C3C(&v27, &qword_1EC0BE528, &qword_1C4F37350);
      v26 = v25;
      sub_1C4471348(&v26);
      sub_1C4870410(v22, a1, 0xD000000000000019, 0x80000001C4FA3370);
      sub_1C4876AF8(v19, v23, v17);
      goto LABEL_12;
    }
  }
}

uint64_t sub_1C487408C(NSObject *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t *a5, int64_t a6, uint64_t a7)
{
  v218 = a7;
  v219 = a6;
  v222 = a4;
  v223 = a5;
  v10 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v216 = *(v10 - 8);
  v217 = v10;
  v11 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v215 = &v199 - v12;
  v13 = sub_1C4EFB768();
  v220 = *(v13 - 8);
  v221 = v13;
  v14 = *(v220 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v214 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v199 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v199 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v199 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v199 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v199 - v29;
  v31 = v225;
  result = sub_1C4EFBE58();
  if (!v31)
  {
    v208 = v19;
    v209 = v25;
    v225 = a1;
    v211 = v30;
    v212 = a2;
    v213 = a3;
    v210 = v28;
    if (result)
    {
      sub_1C4EFBF68();
      v33 = 0;
      v35 = v222;
      v34 = v223;
    }

    else
    {
      v35 = v222;
      v34 = v223;
      v33 = 0;
    }

    v206 = v22;
    v224[0] = v35;
    v224[1] = v34;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
    v37 = v224[0];
    v36 = v224[1];
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v38 = sub_1C4F00978();
    v39 = sub_1C442B738(v38, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v207 = v39;
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CB8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v205 = 0;
      v43 = v37;
      v44 = v42;
      v45 = swift_slowAlloc();
      v224[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1C441D828(v43, v36, v224);
      _os_log_impl(&dword_1C43F8000, v40, v41, "GraphStore: promoteConstructionGraphToProduction: fetching FTS data for %s", v44, 0xCu);
      sub_1C440962C(v45);
      MEMORY[0x1C6942830](v45, -1, -1);
      v46 = v44;
      v37 = v43;
      v33 = v205;
      MEMORY[0x1C6942830](v46, -1, -1);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v47 = sub_1C46A9F90(v37, v36, 0x656C626174, 0xE500000000000000);
    if (v33)
    {
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      v48 = v47;

      v49 = sub_1C46A9F90(v35, v34, 0x72656767697274, 0xE700000000000000);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v50 = sub_1C4F00968();
      v51 = sub_1C4F01CB8();

      v52 = os_log_type_enabled(v50, v51);
      v205 = v49;
      v201 = v36;
      v200 = v37;
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v37;
        v56 = v54;
        v224[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1C441D828(v55, v36, v224);
        _os_log_impl(&dword_1C43F8000, v50, v51, "GraphStore: promoteConstructionGraphToProduction: dropping FTS objects for %s", v53, 0xCu);
        sub_1C440962C(v56);
        MEMORY[0x1C6942830](v56, -1, -1);
        MEMORY[0x1C6942830](v53, -1, -1);
      }

      v57 = v48 + 64;
      v58 = 1 << *(v48 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v60 = v59 & *(v48 + 64);
      v61 = (v58 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v62 = 0;
      v63 = v220;
      for (i = v48 + 64; v60; v57 = i)
      {
        v64 = v62;
LABEL_20:
        v65 = (v64 << 10) | (16 * __clz(__rbit64(v60)));
        v66 = (*(v48 + 48) + v65);
        v67 = *v66;
        v68 = v66[1];
        v69 = *(*(v48 + 56) + v65 + 8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFBF68();
        v60 &= v60 - 1;

        v62 = v64;
      }

      while (1)
      {
        v64 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v64 >= v61)
        {

          v70 = v205 + 64;
          v71 = 1 << *(v205 + 32);
          v72 = -1;
          if (v71 < 64)
          {
            v72 = ~(-1 << v71);
          }

          v73 = v72 & *(v205 + 64);
          v74 = (v71 + 63) >> 6;
          v203 = (v63 + 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v75 = 0;
          v220 = v48;
          for (j = v70; v73; v70 = j)
          {
            v76 = v75;
LABEL_29:
            v77 = (v76 << 10) | (16 * __clz(__rbit64(v73)));
            v78 = (*(v205 + 48) + v77);
            v79 = *v78;
            v80 = v78[1];
            v81 = *(*(v205 + 56) + v77 + 8);
            strcpy(v224, "DROP TRIGGER ");
            HIWORD(v224[1]) = -4864;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            MEMORY[0x1C6940010](v79, v80);
            v82 = v211;
            sub_1C4EFB758();
            sub_1C4EFBFF8();
            v73 &= v73 - 1;
            (*v203)(v82, v221);

            v75 = v76;
          }

          while (1)
          {
            v76 = v75 + 1;
            if (__OFADD__(v75, 1))
            {
              goto LABEL_57;
            }

            if (v76 >= v74)
            {

              v83 = sub_1C4F00968();
              v84 = sub_1C4F01CB8();
              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                *v85 = 0;
                _os_log_impl(&dword_1C43F8000, v83, v84, "GraphStore: promoteConstructionGraphToProduction: fetching index data", v85, 2u);
                MEMORY[0x1C6942830](v85, -1, -1);
              }

              v86 = v225;
              v87 = sub_1C46A9F90(v222, v223, 0x7865646E69, 0xE500000000000000);
              v199 = sub_1C46A9F90(v219, v218, 0x7865646E69, 0xE500000000000000);
              v88 = sub_1C4F00968();
              v89 = sub_1C4F01CB8();
              if (os_log_type_enabled(v88, v89))
              {
                v90 = swift_slowAlloc();
                *v90 = 0;
                _os_log_impl(&dword_1C43F8000, v88, v89, "GraphStore: promoteConstructionGraphToProduction: dropping indexes", v90, 2u);
                MEMORY[0x1C6942830](v90, -1, -1);
              }

              v91 = v87 + 64;
              v92 = 1 << *(v87 + 32);
              v93 = -1;
              if (v92 < 64)
              {
                v93 = ~(-1 << v92);
              }

              v94 = v93 & *(v87 + 64);
              v95 = (v92 + 63) >> 6;
              v211 = v87;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v96 = 0;
              if (v94)
              {
                while (1)
                {
                  v97 = v96;
LABEL_42:
                  v98 = (v97 << 10) | (16 * __clz(__rbit64(v94)));
                  v99 = (*(v211 + 6) + v98);
                  v100 = *v99;
                  v101 = v99[1];
                  v102 = *(*(v211 + 7) + v98 + 8);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v88 = v86;
                  sub_1C4EFBF58();
                  v94 &= v94 - 1;

                  v96 = v97;
                  if (!v94)
                  {
                    goto LABEL_39;
                  }
                }
              }

              while (1)
              {
LABEL_39:
                v97 = v96 + 1;
                if (__OFADD__(v96, 1))
                {
                  __break(1u);
                  goto LABEL_61;
                }

                if (v97 >= v95)
                {
                  break;
                }

                v94 = *(v91 + 8 * v97);
                ++v96;
                if (v94)
                {
                  goto LABEL_42;
                }
              }

              v97 = v199 + 64;
              v103 = 1 << *(v199 + 32);
              v104 = -1;
              if (v103 < 64)
              {
                v104 = ~(-1 << v103);
              }

              v105 = v104 & *(v199 + 64);
              v106 = (v103 + 63) >> 6;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              for (k = 0; v105; k = v108)
              {
                v108 = k;
LABEL_51:
                v109 = (v108 << 10) | (16 * __clz(__rbit64(v105)));
                v110 = (*(v199 + 48) + v109);
                v111 = *v110;
                v112 = v110[1];
                v113 = *(*(v199 + 56) + v109 + 8);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v88 = v225;
                sub_1C4EFBF58();
                v105 &= v105 - 1;
              }

              while (1)
              {
                v108 = k + 1;
                if (__OFADD__(k, 1))
                {
                  break;
                }

                if (v108 >= v106)
                {

                  v114 = sub_1C4F00968();
                  v115 = sub_1C4F01CB8();
                  if (os_log_type_enabled(v114, v115))
                  {
                    v116 = swift_slowAlloc();
                    *v116 = 0;
                    _os_log_impl(&dword_1C43F8000, v114, v115, "GraphStore: promoteConstructionGraphToProduction: renaming tables", v116, 2u);
                    MEMORY[0x1C6942830](v116, -1, -1);
                  }

                  sub_1C4EFBFE8();
                  sub_1C4EFBFE8();
                  sub_1C4EFBFE8();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v117 = v215;
                  sub_1C4EFBD18();
                  v118 = v217;
                  sub_1C4EFBD08();
                  (*(v216 + 8))(v117, v118);
                  v119 = v201;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v88 = sub_1C4F00968();
                  v120 = sub_1C4F01CB8();
                  v121 = v119;

                  if (os_log_type_enabled(v88, v120))
                  {
                    v123 = swift_slowAlloc();
                    v124 = swift_slowAlloc();
                    v224[0] = v124;
                    *v123 = 136315138;
                    v125 = sub_1C441D828(v200, v121, v224);

                    *(v123 + 4) = v125;
                    _os_log_impl(&dword_1C43F8000, v88, v120, "GraphStore: promoteConstructionGraphToProduction: recreating FTS table: %s", v123, 0xCu);
                    sub_1C440962C(v124);
                    MEMORY[0x1C6942830](v124, -1, -1);
                    MEMORY[0x1C6942830](v123, -1, -1);
                    goto LABEL_63;
                  }

                  goto LABEL_62;
                }

                v105 = *(v97 + 8 * v108);
                ++k;
                if (v105)
                {
                  goto LABEL_51;
                }
              }

LABEL_61:
              __break(1u);
LABEL_62:

LABEL_63:

              v126 = 1 << *(v220 + 32);
              v127 = -1;
              if (v126 < 64)
              {
                v127 = ~(-1 << v126);
              }

              v128 = v127 & *(v220 + 64);
              v223 = ((v126 + 63) >> 6);
              result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v129 = 0;
              if (v128)
              {
                while (1)
                {
                  v130 = v129;
LABEL_70:
                  v131 = (v130 << 10) | (16 * __clz(__rbit64(v128)));
                  v132 = *(*(v220 + 48) + v131 + 8);
                  v133 = (*(v220 + 56) + v131);
                  v134 = *v133;
                  v135 = v133[1];
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v136 = v210;
                  sub_1C4EFB758();
                  sub_1C4EFBFF8();
                  v128 &= v128 - 1;
                  (*v203)(v136, v221);

                  v129 = v130;
                  if (!v128)
                  {
                    goto LABEL_67;
                  }
                }
              }

              while (1)
              {
LABEL_67:
                v130 = v129 + 1;
                if (__OFADD__(v129, 1))
                {
                  __break(1u);
                  goto LABEL_115;
                }

                if (v130 >= v223)
                {
                  break;
                }

                v128 = *(i + 8 * v130);
                ++v129;
                if (v128)
                {
                  goto LABEL_70;
                }
              }

              v137 = 1 << *(v205 + 32);
              v138 = -1;
              if (v137 < 64)
              {
                v138 = ~(-1 << v137);
              }

              v139 = v138 & *(v205 + 64);
              v223 = ((v137 + 63) >> 6);
              result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              for (m = 0; v139; m = v141)
              {
                v141 = m;
LABEL_79:
                v142 = (v141 << 10) | (16 * __clz(__rbit64(v139)));
                v143 = *(*(v205 + 48) + v142 + 8);
                v144 = (*(v205 + 56) + v142);
                v145 = *v144;
                v146 = v144[1];
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v147 = v209;
                sub_1C4EFB758();
                sub_1C4EFBFF8();
                v139 &= v139 - 1;
                (*v203)(v147, v221);
              }

              while (1)
              {
                v141 = m + 1;
                if (__OFADD__(m, 1))
                {
                  break;
                }

                if (v141 >= v223)
                {

                  v148 = 1 << *(v220 + 32);
                  v149 = -1;
                  if (v148 < 64)
                  {
                    v149 = ~(-1 << v148);
                  }

                  v150 = v149 & *(v220 + 64);
                  v219 = (v148 + 63) >> 6;
                  v222 = "DataCollectionMetadata.";
                  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  for (n = 0; ; n = v153)
                  {
                    v152 = v220;
                    if (!v150)
                    {
                      break;
                    }

                    v153 = n;
LABEL_90:
                    v154 = (v153 << 10) | (16 * __clz(__rbit64(v150)));
                    v155 = (*(v152 + 48) + v154);
                    v157 = *v155;
                    v156 = v155[1];
                    v158 = *(*(v152 + 56) + v154 + 8);
                    v224[0] = 0;
                    v224[1] = 0xE000000000000000;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    v223 = v158;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    sub_1C4F02248();

                    strcpy(v224, "INSERT INTO ");
                    BYTE5(v224[1]) = 0;
                    HIWORD(v224[1]) = -5120;
                    MEMORY[0x1C6940010](v157, v156);
                    MEMORY[0x1C6940010](40, 0xE100000000000000);
                    MEMORY[0x1C6940010](v157, v156);
                    MEMORY[0x1C6940010](0xD000000000000014, v222 | 0x8000000000000000);
                    v159 = v206;
                    sub_1C4EFB758();
                    sub_1C4EFBFF8();
                    v150 &= v150 - 1;
                    (*v203)(v159, v221);
                  }

                  while (1)
                  {
                    v153 = n + 1;
                    if (__OFADD__(n, 1))
                    {
                      goto LABEL_116;
                    }

                    if (v153 >= v219)
                    {

                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      v160 = sub_1C4F00968();
                      v161 = sub_1C4F01CB8();

                      if (os_log_type_enabled(v160, v161))
                      {
                        v162 = swift_slowAlloc();
                        v223 = swift_slowAlloc();
                        v224[0] = v223;
                        *v162 = 136315138;
                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        v163 = sub_1C4F00F48();
                        v165 = v164;

                        v166 = sub_1C441D828(v163, v165, v224);

                        *(v162 + 4) = v166;
                        _os_log_impl(&dword_1C43F8000, v160, v161, "GraphStore: promoteConstructionGraphToProduction: recreating indexes: %s", v162, 0xCu);
                        v167 = v223;
                        sub_1C440962C(v223);
                        MEMORY[0x1C6942830](v167, -1, -1);
                        MEMORY[0x1C6942830](v162, -1, -1);
                      }

                      v168 = 1 << v211[32];
                      v169 = -1;
                      if (v168 < 64)
                      {
                        v169 = ~(-1 << v168);
                      }

                      v170 = v169 & *(v211 + 8);
                      v223 = ((v168 + 63) >> 6);
                      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      for (ii = 0; v170; ii = v172)
                      {
                        v172 = ii;
LABEL_100:
                        v173 = (v172 << 10) | (16 * __clz(__rbit64(v170)));
                        v174 = *(*(v211 + 6) + v173 + 8);
                        v175 = (*(v211 + 7) + v173);
                        v176 = *v175;
                        v177 = v175[1];
                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        v178 = v208;
                        sub_1C4EFB758();
                        sub_1C4EFBFF8();
                        v170 &= v170 - 1;
                        (*v203)(v178, v221);
                      }

                      while (1)
                      {
                        v172 = ii + 1;
                        if (__OFADD__(ii, 1))
                        {
                          goto LABEL_117;
                        }

                        if (v172 >= v223)
                        {

                          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                          v179 = sub_1C4F00968();
                          v180 = sub_1C4F01CB8();

                          if (os_log_type_enabled(v179, v180))
                          {
                            v181 = swift_slowAlloc();
                            v182 = swift_slowAlloc();
                            v224[0] = v182;
                            *v181 = 136315138;
                            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                            v183 = sub_1C4F00F48();
                            v185 = v184;

                            v186 = sub_1C441D828(v183, v185, v224);

                            *(v181 + 4) = v186;
                            _os_log_impl(&dword_1C43F8000, v179, v180, "GraphStore: promoteConstructionGraphToProduction: recreating indexes: %s", v181, 0xCu);
                            sub_1C440962C(v182);
                            MEMORY[0x1C6942830](v182, -1, -1);
                            MEMORY[0x1C6942830](v181, -1, -1);
                          }

                          v187 = 1 << *(v199 + 32);
                          v188 = -1;
                          if (v187 < 64)
                          {
                            v188 = ~(-1 << v187);
                          }

                          v189 = v188 & *(v199 + 64);
                          v190 = (v187 + 63) >> 6;
                          result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                          v191 = 0;
                          for (jj = v214; v189; v191 = v193)
                          {
                            v193 = v191;
LABEL_111:
                            v194 = (v193 << 10) | (16 * __clz(__rbit64(v189)));
                            v195 = *(*(v199 + 48) + v194 + 8);
                            v196 = (*(v199 + 56) + v194);
                            v197 = *v196;
                            v198 = v196[1];
                            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                            sub_1C4EFB758();
                            sub_1C4EFBFF8();
                            v189 &= v189 - 1;
                            (*v203)(jj, v221);
                          }

                          while (1)
                          {
                            v193 = v191 + 1;
                            if (__OFADD__(v191, 1))
                            {
                              goto LABEL_118;
                            }

                            if (v193 >= v190)
                            {
                            }

                            v189 = *(v97 + 8 * v193);
                            ++v191;
                            if (v189)
                            {
                              goto LABEL_111;
                            }
                          }
                        }

                        v170 = *(v91 + 8 * v172);
                        ++ii;
                        if (v170)
                        {
                          goto LABEL_100;
                        }
                      }
                    }

                    v150 = *(i + 8 * v153);
                    ++n;
                    if (v150)
                    {
                      v152 = v220;
                      goto LABEL_90;
                    }
                  }
                }

                v139 = *(j + 8 * v141);
                ++m;
                if (v139)
                {
                  goto LABEL_79;
                }
              }

LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
              return result;
            }

            v73 = *(v70 + 8 * v76);
            ++v75;
            if (v73)
            {
              goto LABEL_29;
            }
          }
        }

        v60 = *(v57 + 8 * v64);
        ++v62;
        if (v60)
        {
          goto LABEL_20;
        }
      }

LABEL_57:
      __break(1u);
    }
  }

  return result;
}

void sub_1C487594C(uint64_t a1)
{
  v106 = type metadata accessor for ExpiredEventTriple(0);
  v2 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C456902C(&unk_1EC0BC8A0, &qword_1C4F29AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v104 = &v97 - v6;
  v105 = type metadata accessor for ExpiredConstructionEventTriple(0);
  v7 = *(*(v105 - 1) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v111 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for ExpiredGraphTriple(0);
  v9 = *(*(v124 - 1) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v114 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BC8C0, &qword_1C4F29AB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v110 = &v97 - v13;
  v112 = type metadata accessor for ExpiredConstructionGraphTriple(0);
  v14 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1C456902C(&qword_1EC0BE518, &qword_1C4F37340);
  v102 = *(v103 - 8);
  v16 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v18 = &v97 - v17;
  v19 = sub_1C456902C(&qword_1EC0BE520, &qword_1C4F37348);
  v107 = *(v19 - 8);
  v20 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v97 - v21;
  v23 = sub_1C4EF9CD8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v113;
  v29 = sub_1C4870588(a1);
  if (!v28)
  {
    v30 = v29;
    v98 = v24;
    v99 = v23;
    v100 = v22;
    v101 = v19;
    v97 = v18;
    v31 = sub_1C486FFD0(a1, 0xD00000000000001CLL, 0x80000001C4FA3350);
    v113 = a1;
    if (v31 >= v30)
    {
      v39 = v114;
      v36 = v124;
    }

    else
    {
      sub_1C4EF9C38();
      sub_1C4EF9AD8();
      v33 = v32;
      (*(v98 + 8))(v27, v99);
      if (v30 >= v33)
      {
        v30 = v33;
      }

      v119 = &type metadata for FusedTripleColumn;
      v99 = sub_1C45021B8();
      v120 = v99;
      LOBYTE(v118[0]) = 8;
      v116 = MEMORY[0x1E69E63B0];
      v117 = MEMORY[0x1E69A0160];
      *v115 = v30;
      v34 = sub_1C4EFB298();
      v122 = v34;
      v123 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v121);
      sub_1C4EFBB58();
      sub_1C440962C(v115);
      sub_1C440962C(v118);
      sub_1C4490890(qword_1EDDFD7D0, type metadata accessor for ExpiredGraphTriple);
      v35 = v100;
      v36 = v124;
      sub_1C4EFAE28();
      sub_1C440962C(v121);
      v37 = v113;
      v38 = v101;
      sub_1C4EFB898();
      (*(v107 + 8))(v35, v38);
      v39 = v114;
      v119 = &type metadata for FusedTripleColumn;
      v120 = v99;
      LOBYTE(v118[0]) = 8;
      v116 = MEMORY[0x1E69E63B0];
      v117 = MEMORY[0x1E69A0160];
      *v115 = v30;
      v122 = v34;
      v123 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v121);
      sub_1C4EFBB58();
      sub_1C440962C(v115);
      sub_1C440962C(v118);
      sub_1C4490890(&qword_1EDDFD830, type metadata accessor for ExpiredEventTriple);
      v40 = v97;
      sub_1C4EFAE28();
      sub_1C440962C(v121);
      v41 = v103;
      sub_1C4EFB898();
      (*(v102 + 8))(v40, v41);
      sub_1C4870410(v30, v37, 0xD00000000000001CLL, 0x80000001C4FA3350);
    }

    sub_1C4490890(&qword_1EDDDF248, type metadata accessor for ExpiredConstructionGraphTriple);
    v42 = sub_1C4490890(&qword_1EDDDF258, type metadata accessor for ExpiredConstructionGraphTriple);
    v43 = v112;
    v44 = sub_1C4EFB378();
    v45 = v111;
    v107 = v42;
    while (1)
    {
      v46 = v110;
      v47 = v44;
      sub_1C47887B8();
      v48 = sub_1C44157D4(v46, 1, v43) == 1;
      v49 = v46;
      if (v48)
      {
        break;
      }

      v50 = v108;
      sub_1C44D1B5C(v49, v108, type metadata accessor for ExpiredConstructionGraphTriple);
      v51 = sub_1C4EFF0C8();
      (*(*(v51 - 8) + 16))(v39, v50, v51);
      v52 = v43[5];
      v53 = v36[5];
      v54 = sub_1C4EFEEF8();
      v55 = *(*(v54 - 8) + 16);
      v55(&v114[v53], v50 + v52, v54);
      v56 = v43[6];
      v57 = v124[6];
      v58 = sub_1C4EFF8A8();
      (*(*(v58 - 8) + 16))(&v114[v57], v50 + v56, v58);
      v55(&v114[v124[7]], v50 + v43[7], v54);
      v39 = v114;
      v59 = (v50 + v43[8]);
      v61 = *v59;
      v60 = v59[1];
      v62 = *(v50 + v43[9]);
      v63 = v43[11];
      v64 = *(v50 + v43[10]);
      v66 = *(v50 + v63);
      v65 = *(v50 + v63 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v67 = (v39 + v124[8]);
      *v67 = v61;
      v67[1] = v60;
      *(v39 + v124[9]) = v62;
      v36 = v124;
      *(v39 + v124[10]) = v64;
      v68 = (v39 + v36[11]);
      *v68 = v66;
      v68[1] = v65;
      *(v39 + v36[12]) = v69;
      sub_1C4490890(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple);
      sub_1C4EFB6C8();
      sub_1C4491300(v39, type metadata accessor for ExpiredGraphTriple);
      sub_1C4491300(v50, type metadata accessor for ExpiredConstructionGraphTriple);
      v45 = v111;
      v43 = v112;
      v44 = v47;
    }

    sub_1C4420C3C(v46, &unk_1EC0BC8C0, &qword_1C4F29AB0);
    sub_1C4490890(&qword_1EDDDF328, type metadata accessor for ExpiredConstructionEventTriple);
    v70 = sub_1C4490890(&qword_1EDDDF330, type metadata accessor for ExpiredConstructionEventTriple);
    v71 = sub_1C4EFB378();
    v111 = v70;
    v72 = v109;
    v73 = v104;
    v114 = v71;
    while (1)
    {
      sub_1C4788924();
      v124 = 0;
      v74 = v105;
      if (sub_1C44157D4(v73, 1, v105) == 1)
      {
        break;
      }

      sub_1C44D1B5C(v73, v45, type metadata accessor for ExpiredConstructionEventTriple);
      v75 = sub_1C4EFF0C8();
      (*(*(v75 - 8) + 16))(v72, v45, v75);
      v76 = v74[5];
      v77 = v106;
      v78 = *(v106 + 20);
      v79 = sub_1C4EFEEF8();
      v80 = *(*(v79 - 8) + 16);
      v80(&v109[v78], v45 + v76, v79);
      v81 = v74[6];
      v82 = v77[6];
      v83 = sub_1C4EFF8A8();
      (*(*(v83 - 8) + 16))(&v109[v82], v45 + v81, v83);
      v80(&v109[v77[7]], v45 + v74[7], v79);
      v84 = (v45 + v74[8]);
      v86 = *v84;
      v85 = v84[1];
      v87 = *(v45 + v74[9]);
      v88 = v74[11];
      v89 = *(v45 + v74[10]);
      v91 = *(v45 + v88);
      v90 = *(v45 + v88 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v92 = &v109[v77[8]];
      *v92 = v86;
      *(v92 + 1) = v85;
      *&v109[v77[9]] = v87;
      *&v109[v77[10]] = v89;
      v93 = &v109[v77[11]];
      *v93 = v91;
      *(v93 + 1) = v90;
      v72 = v109;
      *&v109[v77[12]] = v94;
      sub_1C4490890(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple);
      v95 = v124;
      sub_1C4EFB6C8();
      if (v95)
      {

        sub_1C4491300(v72, type metadata accessor for ExpiredEventTriple);
        sub_1C4491300(v45, type metadata accessor for ExpiredConstructionEventTriple);
        return;
      }

      sub_1C4491300(v72, type metadata accessor for ExpiredEventTriple);
      sub_1C4491300(v45, type metadata accessor for ExpiredConstructionEventTriple);
      v73 = v104;
    }

    sub_1C4420C3C(v73, &unk_1EC0BC8A0, &qword_1C4F29AA0);
    v96 = v124;
    sub_1C4EFAE88();
    if (!v96)
    {
      sub_1C4EFAE88();
    }
  }
}

void sub_1C48767E8()
{
  if (*v0)
  {
    v3 = v0 + 1;
    v1 = v0[1];
    v2 = v3[1];

    sub_1C495C4A4();
  }

  else
  {
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2E088);
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CB8();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "keyValueStore is nil", v6, 2u);
      MEMORY[0x1C6942830](v6, -1, -1);
    }
  }
}

void sub_1C4876AF8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2E088);
    oslog = sub_1C4F00968();
    v18 = sub_1C4F01CB8();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v18, "keyValueStore is nil", v19, 2u);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    v20 = oslog;

LABEL_13:

    return;
  }

  v5._countAndFlagsBits = a2;
  v5._object = a3;
  KeyValueStore.delete(key:)(v5);
  if (v6)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2E088);
    v8 = v6;
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = v6;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v14 = sub_1C4F01198();
      v16 = sub_1C441D828(v14, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Can't remove value due to: %s", v11, 0xCu);
      sub_1C440962C(v12);
      MEMORY[0x1C6942830](v12, -1, -1);
      MEMORY[0x1C6942830](v11, -1, -1);

      return;
    }

    v20 = v6;

    goto LABEL_13;
  }
}

uint64_t sub_1C4876DF8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v2 = sub_1C49A5480(sub_1C4876E5C, 0);

  return v2;
}

uint64_t sub_1C4876E5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EntityTriple(0);
  sub_1C4490890(&qword_1EDDF8DB0, type metadata accessor for EntityTriple);
  result = sub_1C4EFADD8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C4876F28(uint64_t a1, uint64_t a2)
{
  v17[3] = a2;
  v3 = sub_1C4EFD548();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v17[1] = v4 + 8;
  v17[2] = v4 + 16;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; v10; result = (*(v4 + 8))(v7, v3))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v4 + 16))(v7, *(a1 + 48) + *(v4 + 72) * (v15 | (v14 << 6)), v3);
    v16 = sub_1C4EFD508();
    sub_1C483A4A0(v18, v16);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(a1 + 56 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C48770F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = *(*(v6 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v10[2] = a1;
  v10[3] = a3;
  *&v10[4] = a5;
  v10[5] = a2;
  v10[6] = a4;
  *&v10[7] = a6;

  v8 = sub_1C49A5314(sub_1C487BD0C, v10);

  return v8;
}

uint64_t sub_1C487717C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v8 = *(a3 + 16);
  *(v6 + 24) = *a3;
  *(v6 + 16) = 0;
  *(v6 + 40) = v8;
  *(v6 + 56) = *(a3 + 32);
  *(v6 + 136) = a4;
  *(v6 + 137) = a5;
  *(v6 + 128) = 0;
  if (*(a3 + 16))
  {
    sub_1C487BE08(a3, &v66);
    sub_1C443D664();
    v10 = v9;
    v11 = *(v9 + 16);
    if (v11 >= *(v9 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v39;
    }

    *(v10 + 16) = v11 + 1;
    v12 = v10 + 16 * v11;
    *(v12 + 32) = 0x6D617473656D6974;
    *(v12 + 40) = 0xE900000000000070;
    v13 = 1;
  }

  else
  {
    sub_1C487BE08(a3, &v66);
    v13 = 0;
    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v6 + 64) = v13;
  if (*(a3 + 8))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v10 + 16);
      sub_1C443D664();
      v10 = v41;
    }

    v14 = *(v10 + 16);
    if (v14 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v42;
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = 0x7463656A627573;
    *(v15 + 40) = 0xE700000000000000;
    ++v13;
  }

  *(v6 + 72) = v13;
  if (*(a3 + 9))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = *(v10 + 16);
      sub_1C443D664();
      v10 = v44;
    }

    v16 = *(v10 + 16);
    if (v16 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v45;
    }

    *(v10 + 16) = v16 + 1;
    v17 = v10 + 16 * v16;
    *(v17 + 32) = 0x7461636964657270;
    *(v17 + 40) = 0xE900000000000065;
    ++v13;
  }

  *(v6 + 80) = v13;
  if (*(a3 + 10))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = *(v10 + 16);
      sub_1C443D664();
      v10 = v47;
    }

    v18 = *(v10 + 16);
    if (v18 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v48;
    }

    *(v10 + 16) = v18 + 1;
    v19 = v10 + 16 * v18;
    strcpy((v19 + 32), "relationshipId");
    *(v19 + 47) = -18;
    ++v13;
  }

  *(v6 + 88) = v13;
  if (*(a3 + 11))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = *(v10 + 16);
      sub_1C443D664();
      v10 = v50;
    }

    v20 = *(v10 + 16);
    if (v20 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v51;
    }

    *(v10 + 16) = v20 + 1;
    v21 = v10 + 16 * v20;
    *(v21 + 32) = 0xD000000000000015;
    *(v21 + 40) = 0x80000001C4F86600;
    ++v13;
  }

  *(v6 + 96) = v13;
  if (*(a3 + 12))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = *(v10 + 16);
      sub_1C443D664();
      v10 = v53;
    }

    v22 = *(v10 + 16);
    if (v22 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v54;
    }

    *(v10 + 16) = v22 + 1;
    v23 = v10 + 16 * v22;
    *(v23 + 32) = 0x7463656A626FLL;
    *(v23 + 40) = 0xE600000000000000;
    ++v13;
  }

  *(v6 + 104) = v13;
  if (*(a3 + 13))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = *(v10 + 16);
      sub_1C443D664();
      v10 = v56;
    }

    v24 = *(v10 + 16);
    if (v24 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v57;
    }

    *(v10 + 16) = v24 + 1;
    v25 = v10 + 16 * v24;
    *(v25 + 32) = 0x73656372756F73;
    *(v25 + 40) = 0xE700000000000000;
    ++v13;
  }

  *(v6 + 112) = v13;
  if (*(a3 + 14))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = *(v10 + 16);
      sub_1C443D664();
      v10 = v59;
    }

    v26 = *(v10 + 16);
    if (v26 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v60;
    }

    *(v10 + 16) = v26 + 1;
    v27 = v10 + 16 * v26;
    *(v27 + 32) = 0x6E656469666E6F63;
    *(v27 + 40) = 0xEA00000000006563;
    ++v13;
  }

  *(v6 + 120) = v13;
  sub_1C487BDB4(a3);
  if (*(a3 + 15))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = *(v10 + 16);
      sub_1C443D664();
      v10 = v62;
    }

    v28 = *(v10 + 16);
    if (v28 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v63;
    }

    *(v10 + 16) = v28 + 1;
    v29 = v10 + 16 * v28;
    *(v29 + 32) = 0xD000000000000010;
    *(v29 + 40) = 0x80000001C4F86630;
  }

  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FA3670);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v30 = sub_1C4F01048();
  v32 = v31;

  MEMORY[0x1C6940010](v30, v32);

  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4FA3690);
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](0xD00000000000003BLL, 0x80000001C4FA36B0);
  v33 = v67;
  *(v6 + 144) = v66;
  *(v6 + 152) = v33;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FA3670);
  v34 = sub_1C4F01048();
  v36 = v35;

  MEMORY[0x1C6940010](v34, v36);

  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4FA3690);
  MEMORY[0x1C6940010](a1, a2);

  MEMORY[0x1C6940010](0xD0000000000000A4, 0x80000001C4FA36F0);
  v37 = v67;
  *(v6 + 160) = v66;
  *(v6 + 168) = v37;
  return v6;
}

void *sub_1C48778D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v34 - v11;
  v13 = *(v6 + 40);
  v36[0] = *(v6 + 24);
  v36[1] = v13;
  v37 = *(v6 + 56);
  v14 = *(v6 + 136);
  _s9RawTripleCMa();
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C487BE08(v36, v34);
  v15 = sub_1C487717C(a2, a3, v36, v14, 0);
  v16 = v15[20];
  v17 = v15[21];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBED8();
  if (v5)
  {
  }

  else
  {

    v38 = sub_1C4EFBC58();
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C4F13950;
    v19 = sub_1C44F2AB4(v18);
    v20 = MEMORY[0x1E69A01D0];
    *(v18 + 56) = MEMORY[0x1E69E7360];
    *(v18 + 64) = v20;
    *(v18 + 32) = v19;
    v21 = sub_1C4877BE8(v19);
    v22 = MEMORY[0x1E69E6158];
    v23 = MEMORY[0x1E69A0138];
    *(v18 + 96) = MEMORY[0x1E69E6158];
    *(v18 + 104) = v23;
    *(v18 + 72) = v21;
    *(v18 + 80) = v24;
    v25 = sub_1C4877DD0(v21);
    *(v18 + 136) = MEMORY[0x1E69E7360];
    *(v18 + 144) = MEMORY[0x1E69A01D0];
    *(v18 + 112) = v25;
    v26 = sub_1C4877FA8(v25);
    *(v18 + 176) = v22;
    *(v18 + 184) = v23;
    *(v18 + 152) = v26;
    *(v18 + 160) = v27;
    v28 = sub_1C4878190(v26);
    *(v18 + 216) = v22;
    *(v18 + 224) = v23;
    *(v18 + 192) = v28;
    *(v18 + 200) = v29;
    sub_1C4EFB728();
    v30 = sub_1C4EFB768();
    sub_1C440BAA8(v12, 0, 1, v30);
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v32 = sub_1C4EFBC48();

    sub_1C4420C3C(v34, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v33 = v15[2];
    v15[2] = v32;

    if (!v32)
    {
      return 0;
    }
  }

  return v15;
}

uint64_t sub_1C4877BE8(uint64_t a1)
{
  if (*(v1 + 33) != 1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 72);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v3 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v3, v2);
  if (a1 != 5)
  {
    v4 = sub_1C4F011E8();

    return v4;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4877DD0(uint64_t a1)
{
  v2 = 0;
  if (*(v1 + 34) != 1)
  {
    return v2;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v3 = *(v1 + 80);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v4 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v4, v3);
  if (a1 != 5)
  {
    v2 = sub_1C4F02AA8();

    return v2;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4877FA8(uint64_t a1)
{
  if (*(v1 + 35) != 1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 88);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v3 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v3, v2);
  if (a1 != 5)
  {
    v4 = sub_1C4F011E8();

    return v4;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4878190(uint64_t a1)
{
  if (*(v1 + 36) != 1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 96);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v3 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v3, v2);
  if (a1 != 5)
  {
    v4 = sub_1C4F011E8();

    return v4;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_1C4878378()
{
  v1 = v0[2];

  v2 = v0[3];
  v3 = v0[7];

  v4 = v0[19];

  v5 = v0[21];

  return v0;
}

uint64_t sub_1C48783C4()
{
  sub_1C4878378();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4878418(uint64_t a1)
{
  v2 = 0;
  if (*(v1 + 37) != 1)
  {
    return v2;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v3 = *(v1 + 104);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v4 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v4, v3);
  if (a1 != 5)
  {
    v2 = sub_1C4F02AA8();

    return v2;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C48785F0(uint64_t result)
{
  if (*(v1 + 38) == 1)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_12;
    }

    v2 = *(v1 + 112);

    sub_1C4EFBBA8();
    result = sub_1C4EFBBE8();
    v3 = result;
    if (result)
    {
      if (v2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v2 <= 0x7FFFFFFF)
      {
        MEMORY[0x1EEE9AC00](result);
        result = sqlite3_column_type(v3, v2);
        if (result != 5)
        {
          sub_1C4F01A08();
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      MEMORY[0x1EEE9AC00](result);
      sub_1C4EFB968();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    sub_1C4EFBB98();
  }

  return result;
}

uint64_t sub_1C48787D0(uint64_t a1)
{
  if (*(v1 + 39) != 1)
  {
    return 23899;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 120);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v3 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v3, v2);
  if (a1 != 5)
  {
    v4 = sub_1C4F011E8();

    return v4;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C48789B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v30 = *(v1 + 24);
  v31 = v3;
  v32 = *(v1 + 56);
  v4 = sub_1C487BE08(&v30, v29);
  v28 = sub_1C44F2AB4(v4);
  v5 = sub_1C4877BE8(v28);
  v26 = v6;
  v27 = v5;
  v7 = sub_1C4877DD0(v5);
  v8 = sub_1C4877FA8(v7);
  v10 = v9;
  v11 = sub_1C4878190(v8);
  v13 = v12;
  v14 = sub_1C4878418(v11);
  v15 = sub_1C48785F0(v14);
  v17 = v16;
  v18 = sub_1C48787D0(v15);
  v20 = v19;
  result = sub_1C44F28F8(v18);
  v22 = *(v1 + 136);
  v23 = *(v1 + 137);
  v24 = v31;
  *a1 = v30;
  *(a1 + 16) = v24;
  *(a1 + 32) = v32;
  *(a1 + 40) = v28;
  *(a1 + 48) = v27;
  *(a1 + 56) = v26;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v17;
  *(a1 + 120) = v18;
  *(a1 + 128) = v20;
  *(a1 + 136) = v25;
  *(a1 + 144) = v22;
  *(a1 + 145) = v23;
  return result;
}

uint64_t sub_1C4878ABC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v9 = v8;
  v10 = v7;
  v17 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v31 - v19;
  sub_1C4B756E8(&unk_1F43D9AA8, v33);
  sub_1C4878D7C(v33, v34);
  sub_1C487BDB4(a5);
  sub_1C487BDB4(v33);
  _s9RawTripleCMa();
  swift_allocObject();
  v21 = sub_1C487717C(a3, a4, v34, a6, a7);
  *(v10 + 24) = v21;
  v22 = *(v21 + 144);
  v23 = *(v21 + 152);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBED8();

  if (v9)
  {

    v28 = *(v10 + 24);

    _s15RawTripleCursorCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C4EFBC58();
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E63B0];
    *(v24 + 16) = xmmword_1C4F0D130;
    v26 = MEMORY[0x1E69A0168];
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    *(v24 + 32) = a1;
    sub_1C4EFB728();
    v27 = sub_1C4EFB768();
    sub_1C440BAA8(v20, 0, 1, v27);
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v30 = sub_1C4EFBBC8();

    sub_1C4420C3C(v31, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v20, &unk_1EC0C06C0, &unk_1C4F10DB0);
    *(v10 + 16) = v30;
    *(v10 + 32) = 1;
  }

  return v10;
}

double sub_1C4878D7C@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[8] & 1) != 0 || (a1[8])
  {
    sub_1C458DB8C();
    v6 = v5;
    if (*(v5 + 16) >= *(v5 + 24) >> 1)
    {
      sub_1C4407038();
      v6 = v19;
    }

    sub_1C441FC68();
    *(v7 + 32) = 0;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (v2[9] & 1) != 0 || (a1[9])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v6 = v20;
    }

    sub_1C442CBA4();
    if (v8)
    {
      sub_1C4407038();
      v6 = v21;
    }

    sub_1C441FC68();
    *(v9 + 32) = 1;
  }

  if (v2[10] & 1) != 0 || (a1[10])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v6 = v22;
    }

    sub_1C442CBA4();
    if (v8)
    {
      sub_1C4407038();
      v6 = v23;
    }

    sub_1C441FC68();
    *(v10 + 32) = 2;
  }

  if (v2[11] & 1) != 0 || (a1[11])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v6 = v24;
    }

    sub_1C442CBA4();
    if (v8)
    {
      sub_1C4407038();
      v6 = v25;
    }

    sub_1C441FC68();
    *(v11 + 32) = 3;
  }

  if (v2[12] & 1) != 0 || (a1[12])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v6 = v26;
    }

    sub_1C442CBA4();
    if (v8)
    {
      sub_1C4407038();
      v6 = v27;
    }

    sub_1C441FC68();
    *(v12 + 32) = 4;
  }

  if (v2[13] & 1) != 0 || (a1[13])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v6 = v28;
    }

    sub_1C442CBA4();
    if (v8)
    {
      sub_1C4407038();
      v6 = v29;
    }

    sub_1C441FC68();
    *(v13 + 32) = 5;
  }

  if (v2[14] & 1) != 0 || (a1[14])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v6 = v30;
    }

    sub_1C442CBA4();
    if (v8)
    {
      sub_1C4407038();
      v6 = v31;
    }

    sub_1C441FC68();
    *(v14 + 32) = 6;
  }

  if (v2[15] & 1) != 0 || (a1[15])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v6 = v32;
    }

    sub_1C442CBA4();
    if (v8)
    {
      sub_1C4407038();
      v6 = v33;
    }

    sub_1C441FC68();
    *(v15 + 32) = 7;
  }

  if (v2[16] & 1) != 0 || (a1[16])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v6 = v34;
    }

    v16 = *(v6 + 16);
    if (v16 >= *(v6 + 24) >> 1)
    {
      sub_1C458DB8C();
      v6 = v35;
    }

    *(v6 + 16) = v16 + 1;
    *(v6 + v16 + 32) = 8;
  }

  sub_1C4B756E8(v6, v36);
  result = *v36;
  v18 = v36[1];
  *a2 = v36[0];
  *(a2 + 16) = v18;
  *(a2 + 32) = v37;
  return result;
}

uint64_t sub_1C4879094()
{
  sub_1C487B6D8(MEMORY[0x1E69E7D48]);

  return swift_deallocClassInstance();
}

uint64_t sub_1C48790FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_1C4EFD548();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0B8568, &unk_1C4F319B0);
    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  v13 = sub_1C4EFD508();
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_1C487929C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5];
  v7 = sub_1C4EFD548();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2)
  {
    return 0;
  }

  v17 = MEMORY[0x1E69E7CD0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0B8568, &unk_1C4F319B0);
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v13 = sub_1C4EFD508();
    sub_1C483A4A0(v16, v13);
    v14 = sub_1C4EFD0A8();
    sub_1C4876F28(v14, &v17);

    (*(v8 + 8))(v11, v7);
    return v17;
  }
}

uint64_t sub_1C4879480(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for Source();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  SourceSet.init(arrayLiteral:)(&v36, MEMORY[0x1E69E7CC0]);
  v31 = a1;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v36;
  }

  v12 = (v31 + 40);
  v13 = &unk_1EC0C0760;
  *&v10 = 136315138;
  v32 = v10;
  v33 = v6;
  v34 = v9;
  while (1)
  {
    v15 = *(v12 - 1);
    v14 = *v12;
    swift_bridgeObjectRetain_n();
    Source.init(rawValue:)(v15, v14, v5);
    if (sub_1C44157D4(v5, 1, v6) != 1)
    {
      break;
    }

    sub_1C4420C3C(v5, v13, &qword_1C4F170D0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CC8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v13;
      v21 = swift_slowAlloc();
      v35 = v21;
      *v19 = v32;
      v22 = sub_1C441D828(v15, v14, &v35);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_1C43F8000, v17, v18, "GraphStore: ResolvedKnowledgeGraphFilter: Invalid source %s", v19, 0xCu);
      sub_1C440962C(v21);
      v23 = v21;
      v13 = v20;
      MEMORY[0x1C6942830](v23, -1, -1);
      v24 = v19;
      v6 = v33;
      v9 = v34;
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    else
    {
    }

LABEL_19:
    v12 += 2;
    if (!--v11)
    {
      return v36;
    }
  }

  sub_1C487BCAC(v5, v9, type metadata accessor for Source);
  v25 = *(v9 + 2);
  result = sub_1C447E918(v9, type metadata accessor for Source);
  v27 = v25 - 1;
  if (!__OFSUB__(v25, 1))
  {
    v28 = v27 > 0x40;
    if (v27 >= 0x40)
    {
      v29 = 0;
    }

    else
    {
      v29 = 1 << v27;
    }

    if (v28)
    {
      v29 = 0;
    }

    if ((v36 & v29) == 0)
    {
      v36 |= v29;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C48797C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = *(a1 + 16);
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v12 = sub_1C48790FC(*a1, *(a1 + 8));
    v11 = 0;
    *a2 = v12;
    *(a2 + 8) = v13 & 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
    v11 = sub_1C487929C(*a1, *(a1 + 8));
  }

  *(a2 + 16) = v11;
  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4499940(v15, v16, v17, v18, v19, v20, v21, v22, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  }

  *(a2 + 24) = v14;
  *(a2 + 32) = sub_1C4879480(*(a1 + 32));
  *(a2 + 40) = v23 & 1;
  if (*(a1 + 48))
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C487BBE8(a1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFCC18();

    v28 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
    sub_1C440BAA8(v9, 0, 1, v28);
    v29 = _s28ResolvedKnowledgeGraphFilterVMa();
    return sub_1C487BC3C(v9, a2 + *(v29 + 32));
  }

  else
  {
    sub_1C487BBE8(a1);
    v26 = *(_s28ResolvedKnowledgeGraphFilterVMa() + 32);
    v27 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);

    return sub_1C440BAA8(a2 + v26, 1, 1, v27);
  }
}

void *sub_1C4879C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s28ResolvedKnowledgeGraphFilterVMa();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4[2] = a1;
  v4[4] = a3;
  v13 = *(a2 + 16);
  if (v13)
  {
    v20 = MEMORY[0x1E69E7CC0];

    sub_1C459E678();
    v14 = 32;
    v15 = v20;
    do
    {
      v16 = *(a2 + v14 + 16);
      v21[0] = *(a2 + v14);
      v21[1] = v16;
      v21[2] = *(a2 + v14 + 32);
      v22 = *(a2 + v14 + 48);
      sub_1C487BB8C(v21, v19);
      sub_1C48797C0(v21, v12);
      v20 = v15;
      v17 = *(v15 + 16);
      if (v17 >= *(v15 + 24) >> 1)
      {
        sub_1C459E678();
        v15 = v20;
      }

      *(v15 + 16) = v17 + 1;
      sub_1C487BCAC(v12, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, _s28ResolvedKnowledgeGraphFilterVMa);
      v14 += 56;
      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v4[3] = v15;
  return v4;
}

uint64_t sub_1C4879DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, double *a6, double a7)
{
  v8 = v7;
  v11 = 0;
  v12 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  v73 = MEMORY[0x1E69E7CC0];
  v13 = a2 + 56;
  do
  {
    v14 = v11;
    if (*(a2 + 16))
    {
      v15 = *(&unk_1F43D9AD0 + v12 + 32);
      v16 = *(a2 + 40);
      sub_1C4F02AF8();
      v17 = v15 ? 0x617247746E657665 : 0x7247656C62617473;
      v18 = v15 ? 0xEA00000000006870 : 0xEB00000000687061;
      sub_1C4F01298();

      v19 = sub_1C4F02B68();
      v20 = -1 << *(a2 + 32);
      v21 = v19 & ~v20;
      if ((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v69 = v14;
        v70 = v8;
        v22 = ~v20;
        while (1)
        {
          v23 = *(*(a2 + 48) + v21) ? 0x617247746E657665 : 0x7247656C62617473;
          v24 = *(*(a2 + 48) + v21) ? 0xEA00000000006870 : 0xEB00000000687061;
          if (v23 == v17 && v24 == v18)
          {
            break;
          }

          v26 = sub_1C4F02938();

          if (v26)
          {
            goto LABEL_25;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            v8 = v70;
            goto LABEL_37;
          }
        }

LABEL_25:
        v27 = *(a3 + 16);
        _s15RawTripleCursorCMa();
        swift_allocObject();
        if (v15)
        {
          sub_1C487BE08(a1, v71);

          sub_1C4878ABC(a7, v28, 0x72675F746E657665, 0xEB00000000687061, a1, 0, 0);
          v8 = v70;
          if (v70)
          {
            goto LABEL_72;
          }

          MEMORY[0x1C6940330]();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C4F016D8();
          }

          sub_1C4F01748();
          swift_allocObject();
          sub_1C487BE08(a1, v71);

          v30 = 0x80000001C4FA2F80;
          v31 = 0xD000000000000013;
          v32 = a1;
          v33 = a7;
          v34 = 0;
        }

        else
        {

          sub_1C487BE08(a1, v71);
          sub_1C4878ABC(a7, v27, 0x675F656C62617473, 0xEC00000068706172, a1, 1, 0);
          v8 = v70;
          if (v70)
          {
LABEL_72:
          }

          MEMORY[0x1C6940330]();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C4F016D8();
          }

          sub_1C4F01748();
          swift_allocObject();

          sub_1C487BE08(a1, v71);
          v31 = 0xD000000000000014;
          v30 = 0x80000001C4FA2F60;
          v29 = v27;
          v32 = a1;
          v33 = a7;
          v34 = 1;
        }

        sub_1C4878ABC(v33, v29, v31, v30, v32, v34, 1);
        MEMORY[0x1C6940330]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        sub_1C4F01748();
        v68 = v73;
LABEL_37:
        v14 = v69;
      }
    }

    v11 = 1;
    v12 = 1u;
  }

  while ((v14 & 1) == 0);
  v35 = v68;
  v36 = sub_1C4428DA0();
  v37 = 0;
  v65 = 0;
  v38 = v68 & 0xC000000000000001;
  v39 = INFINITY;
  v67 = v36;
  while (1)
  {
    while (1)
    {
      while (v36 == v37)
      {
        if (!v65)
        {
          goto LABEL_72;
        }

        v48 = v8;
        v49 = sub_1C44F2860();
        if (v8)
        {
        }

        v50 = v49;

        if (!v50)
        {
          goto LABEL_72;
        }

        if (*(*a4 + 16) >= *(a5 + 32))
        {
          v51 = sub_1C44F28F8(v51);
          if (v52 != *a6)
          {
            goto LABEL_77;
          }
        }

        sub_1C44F28F8(v51);
        *a6 = v53;
        if (sub_1C44F2E34(v50))
        {
          sub_1C48789B8(__src);
          v54 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v54;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v57 = *(v54 + 16);
            sub_1C458DC70();
            v54 = v58;
            *a4 = v58;
          }

          v56 = *(v54 + 16);
          if (v56 >= *(v54 + 24) >> 1)
          {
            sub_1C458DC70();
            v54 = v59;
            *a4 = v59;
          }

          *(v54 + 16) = v56 + 1;
          memcpy((v54 + 152 * v56 + 32), __src, 0x92uLL);

          v37 = 0;
          v65 = 0;
          v39 = INFINITY;
          v8 = v48;
          v36 = v67;
        }

        else
        {

          v37 = 0;
          v65 = 0;
          v39 = INFINITY;
        }
      }

      if (v38)
      {
        v40 = MEMORY[0x1C6940F90](v37, v35);
      }

      else
      {
        if ((v37 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
        }

        if (v37 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v40 = *(v35 + 8 * v37 + 32);
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_75;
      }

      v41 = sub_1C44F27CC();
      if (v8)
      {
      }

      if (v41)
      {
        break;
      }

LABEL_55:

      ++v37;
    }

    if (!*(v41 + 16))
    {

      goto LABEL_55;
    }

    v42 = *(v41 + 16);

    sub_1C4EFBBA8();
    v43 = sub_1C4EFBBE8();
    if (v43)
    {
      break;
    }

    sub_1C4EFBB98();
    v38 = v68 & 0xC000000000000001;

    v47 = v71[0];
    v35 = v68;
LABEL_54:
    if (v47 >= v39)
    {
      goto LABEL_55;
    }

    ++v37;
    v65 = v40;
    v39 = v47;
  }

  MEMORY[0x1EEE9AC00](v43);
  v45 = sqlite3_column_type(v44, 0);
  if (v45 != 5)
  {
    sub_1C4F01A08();
    v47 = v46;

    v35 = v68;
    v36 = v67;
    v38 = v68 & 0xC000000000000001;
    goto LABEL_54;
  }

  MEMORY[0x1EEE9AC00](v45);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C487A7E4(uint64_t a1, uint64_t a2, double a3)
{
  v57 = a1;
  v58 = a2;
  v5 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v57 - v7;
  v64 = _s28ResolvedKnowledgeGraphFilterVMa();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v57 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = 0;
  v66 = a3;
  v62 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v59 = v3;
  v21 = *(v3 + 24);
  v22 = *(v21 + 16);
  while (v22 != v20)
  {
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_1C44F2DD0(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v19);
    v20 = (v20 + 1);
    v23 = v19[8];
    sub_1C447E918(v19, _s28ResolvedKnowledgeGraphFilterVMa);
    if ((v23 & 1) == 0)
    {
      sub_1C458DB8C();
      v25 = v24;
      v20 = *(v24 + 16);
      v3 = v20 + 1;
      if (v20 < *(v24 + 24) >> 1)
      {
LABEL_6:
        v26 = v61;
        *(v25 + 16) = v3;
        v62 = v25;
        *(v20 + v25 + 32) = 0;
        goto LABEL_8;
      }

LABEL_50:
      sub_1C458DB8C();
      v25 = v45;
      goto LABEL_6;
    }
  }

  v26 = v61;
LABEL_8:
  v20 = 0;
  v27 = *(v21 + 16);
  do
  {
    if (v27 == v20)
    {
      v28 = v62;
      goto LABEL_22;
    }

    if (v20 >= *(v21 + 16))
    {
      goto LABEL_47;
    }

    sub_1C44F2DD0(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v16);
    v20 = (v20 + 1);
    v3 = *(v16 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C447E918(v16, _s28ResolvedKnowledgeGraphFilterVMa);
  }

  while (!v3);

  v28 = v62;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = *(v28 + 16);
    sub_1C458DB8C();
    v28 = v47;
  }

  v29 = *(v28 + 16);
  v30 = *(v28 + 24) >> 1;
  v16 = v29 + 1;
  if (v30 <= v29)
  {
    sub_1C458DB8C();
    v28 = v48;
    v30 = *(v48 + 24) >> 1;
  }

  *(v28 + 16) = v16;
  *(v28 + v29 + 32) = 1;
  v31 = v29 + 2;
  if (v30 < (v29 + 2))
  {
    sub_1C458DB8C();
    v28 = v49;
    v30 = *(v49 + 24) >> 1;
  }

  *(v28 + 16) = v31;
  *(v28 + v16 + 32) = 2;
  v32 = v29 + 3;
  if (v30 < v32)
  {
    sub_1C458DB8C();
    v28 = v50;
  }

  *(v28 + 16) = v32;
  *(v28 + v31 + 32) = 3;
LABEL_22:
  v3 = 0;
  v20 = *(v21 + 16);
  do
  {
    if (v20 == v3)
    {
      v62 = v28;
      goto LABEL_32;
    }

    if (v3 >= *(v21 + 16))
    {
      goto LABEL_48;
    }

    sub_1C44F2DD0(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3++, v13);
    v16 = *(v13 + 40);
    sub_1C447E918(v13, _s28ResolvedKnowledgeGraphFilterVMa);
  }

  while ((v16 & 1) != 0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = *(v28 + 16);
    sub_1C458DB8C();
    v28 = v52;
  }

  v33 = *(v28 + 16);
  if (v33 >= *(v28 + 24) >> 1)
  {
    sub_1C458DB8C();
    v28 = v53;
  }

  *(v28 + 16) = v33 + 1;
  v62 = v28;
  *(v28 + v33 + 32) = 5;
LABEL_32:
  v34 = 0;
  v3 = *(v21 + 16);
  v13 = &qword_1EC0BE568;
  v16 = &unk_1C4F374A0;
  v20 = &qword_1C4F37468;
  v35 = v63;
  while (1)
  {
    if (v3 == v34)
    {
      v38 = v59;
      v37 = v60;
      v39 = v58;
      v40 = v62;
      goto LABEL_43;
    }

    if (v34 >= *(v21 + 16))
    {
      goto LABEL_49;
    }

    sub_1C44F2DD0(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, v35);
    sub_1C487BD34(v35 + *(v64 + 32), v26);
    sub_1C447E918(v35, _s28ResolvedKnowledgeGraphFilterVMa);
    v36 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
    if (sub_1C44157D4(v26, 1, v36) != 1)
    {
      break;
    }

    v34 = (v34 + 1);
    sub_1C4420C3C(v26, &qword_1EC0BE560, &qword_1C4F37468);
  }

  sub_1C4420C3C(v26, &qword_1EC0BE560, &qword_1C4F37468);
  v41 = v62;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = *(v41 + 16);
    sub_1C458DB8C();
    v41 = v55;
  }

  v38 = v59;
  v37 = v60;
  v39 = v58;
  v42 = *(v41 + 16);
  v43 = v41;
  if (v42 >= *(v41 + 24) >> 1)
  {
    sub_1C458DB8C();
    v43 = v56;
  }

  *(v43 + 16) = v42 + 1;
  v40 = v43;
  *(v43 + v42 + 32) = 4;
LABEL_43:
  sub_1C4B756E8(v40, v67);
  sub_1C4878D7C(v67, v68);
  sub_1C487BDB4(v67);

  sub_1C4879DF4(v68, v39, v38, &v65, v38, &v66, a3);
  sub_1C487BDB4(v68);
  if (v37)
  {
  }

  else
  {
    return v65;
  }
}

uint64_t sub_1C487AE8C(uint64_t a1, uint64_t *a2, double a3, double a4)
{
  v53 = a2;
  v8 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v50 - v10;
  v56 = _s28ResolvedKnowledgeGraphFilterVMa();
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v56);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v50 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - v20;
  v60 = a3;
  v58 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  sub_1C458DB8C();
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);
  v55 = v22;
  v25 = v24 + 1;
  v51 = a1;
  if (v24 >= v23 >> 1)
  {
LABEL_35:
    sub_1C458DB8C();
    v55 = v44;
  }

  v26 = 0;
  v27 = v55;
  *(v55 + 16) = v25;
  *(v24 + v27 + 32) = 0;
  v52 = v4;
  v4 = *(v4 + 24);
  v24 = *(v4 + 16);
  while (v24 != v26)
  {
    if (v26 >= *(v4 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_1C44F2DD0(v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26, v21);
    v26 = (v26 + 1);
    v25 = *(v21 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C447E918(v21, _s28ResolvedKnowledgeGraphFilterVMa);
    if (v25)
    {

      v28 = v55;
      v24 = *(v55 + 16);
      v29 = *(v55 + 24) >> 1;
      v30 = v24 + 1;
      if (v29 <= v24)
      {
        sub_1C458DB8C();
        v28 = v45;
        v29 = *(v45 + 24) >> 1;
      }

      *(v28 + 16) = v30;
      *(v24 + v28 + 32) = 1;
      v31 = v24 + 2;
      if (v29 < v24 + 2)
      {
        sub_1C458DB8C();
        v28 = v46;
        v29 = *(v46 + 24) >> 1;
      }

      *(v28 + 16) = v31;
      v30[v28 + 32] = 2;
      if (v29 < v24 + 3)
      {
        sub_1C458DB8C();
        v28 = v47;
      }

      *(v28 + 16) = v24 + 3;
      v55 = v28;
      v31[v28 + 32] = 3;
      break;
    }
  }

  v21 = 0;
  v25 = *(v4 + 16);
  while (v25 != v21)
  {
    if (v21 >= *(v4 + 16))
    {
      goto LABEL_33;
    }

    sub_1C44F2DD0(v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21++, v19);
    v32 = *(v19 + 40);
    sub_1C447E918(v19, _s28ResolvedKnowledgeGraphFilterVMa);
    if ((v32 & 1) == 0)
    {
      v33 = v55;
      v34 = *(v55 + 16);
      if (v34 >= *(v55 + 24) >> 1)
      {
        sub_1C458DB8C();
        v33 = v48;
      }

      *(v33 + 16) = v34 + 1;
      v55 = v33;
      *(v33 + v34 + 32) = 5;
      break;
    }
  }

  v35 = 0;
  v25 = *(v4 + 16);
  v19 = &qword_1EC0BE568;
  v21 = &unk_1C4F374A0;
  v24 = &qword_1C4F37468;
  while (1)
  {
    if (v25 == v35)
    {
      v38 = v53;
      v37 = v54;
      v40 = v51;
      v39 = v52;
      v41 = v55;
      goto LABEL_29;
    }

    if (v35 >= *(v4 + 16))
    {
      goto LABEL_34;
    }

    sub_1C44F2DD0(v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35, v16);
    sub_1C487BD34(&v16[*(v56 + 32)], v11);
    sub_1C447E918(v16, _s28ResolvedKnowledgeGraphFilterVMa);
    v36 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
    if (sub_1C44157D4(v11, 1, v36) != 1)
    {
      break;
    }

    ++v35;
    sub_1C4420C3C(v11, &qword_1EC0BE560, &qword_1C4F37468);
  }

  sub_1C4420C3C(v11, &qword_1EC0BE560, &qword_1C4F37468);
  v42 = *(v55 + 16);
  if (v42 >= *(v55 + 24) >> 1)
  {
    sub_1C458DB8C();
    v55 = v49;
  }

  v38 = v53;
  v37 = v54;
  v40 = v51;
  v39 = v52;
  v41 = v55;
  *(v55 + 16) = v42 + 1;
  *(v41 + v42 + 32) = 4;
LABEL_29:
  sub_1C4B756E8(v41, v59);

  sub_1C44F1D20(v59, v40, v39, &v57, v39, &v60, &v58, v38, a3, a4);
  sub_1C487BDB4(v59);
  if (v37)
  {
  }

  else
  {
    return v57;
  }
}

uint64_t sub_1C487B3F0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_1C4EFF8A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFD548();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 24);
  if (!v17)
  {
    return 1;
  }

  v31 = v14;
  v18 = sub_1C4877BE8(v13);
  v20 = sub_1C4499AD0(v18, v19, v17);

  if (v20)
  {
    return 1;
  }

  sub_1C4877DD0(v21);
  sub_1C4EFF898();
  sub_1C4EFF828();
  (*(v7 + 8))(v10, v6);
  if (sub_1C44157D4(v5, 1, v11) == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v23 = v31;
    v24 = (*(v31 + 32))(v16, v5, v11);
    v32 = sub_1C4877BE8(v24);
    v33 = v25;
    MEMORY[0x1C6940010](47, 0xE100000000000000);
    v26 = sub_1C4EFD2F8();
    MEMORY[0x1C6940010](v26);

    v27 = MEMORY[0x1C6940010](47, 0xE100000000000000);
    v28 = sub_1C4877FA8(v27);
    MEMORY[0x1C6940010](v28);

    v29 = sub_1C4499AD0(v32, v33, v17);

    (*(v23 + 8))(v16, v11);
    if (v29)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C487B6D8(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  return v1;
}

uint64_t sub_1C487B710()
{
  sub_1C487B6D8(MEMORY[0x1E69E7CF8]);

  return swift_deallocClassInstance();
}

void sub_1C487B7A0()
{
  sub_1C44FCC6C(319, &qword_1EDDFEA40);
  if (v0 <= 0x3F)
  {
    sub_1C487B8D4(319, &qword_1EDDFCE88, &qword_1EC0B9B70, &unk_1C4F37490);
    if (v1 <= 0x3F)
    {
      sub_1C487B8D4(319, &qword_1EDDFA540, &qword_1EC0B9178, &qword_1C4F11B50);
      if (v2 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFCDC0);
        if (v3 <= 0x3F)
        {
          sub_1C487B8D4(319, &qword_1EDDFCCE0, &qword_1EC0BE568, &unk_1C4F374A0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C487B8D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1C4572308(a3, a4);
    v5 = sub_1C4F01F48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C487B928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = *(*(v5 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v9[2] = a2;
  v9[3] = a4;
  *&v9[4] = a5;
  v9[5] = a1;
  v9[6] = a3;

  v7 = sub_1C49A53C8(sub_1C487BA88, v9);

  return v7;
}

uint64_t sub_1C487B9B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  _s19FilteredBatchLoaderCMa();
  swift_initStackObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4879C14(v13, a1, a2);
  v14 = sub_1C487A7E4(a3, a4, a6);
  v16 = v15;
  v17 = v14;

  if (!v6)
  {
    *a5 = v16;
    a5[1] = v17;
  }

  return result;
}

uint64_t sub_1C487BAAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, void *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  _s19FilteredBatchLoaderCMa();
  swift_initStackObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4879C14(v15, a1, a2);
  v16 = sub_1C487AE8C(a3, a4, a6, a7);
  v18 = v17;
  v19 = v16;

  if (!v7)
  {
    *a5 = v18;
    a5[1] = v19;
  }

  return result;
}

uint64_t sub_1C487BC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C487BCAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C487BD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C487BE6C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 146))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C487BEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GraphStore.__allocating_init(config:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  GraphStore.init(config:)(a1);
  return v5;
}

uint64_t GraphStore.store<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 134218242;
    sub_1C4404084();
    *(v11 + 4) = sub_1C4F01758();

    *(v11 + 12) = 2080;
    v13 = sub_1C4F02C58();
    v15 = sub_1C441D828(v13, v14, &v20);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1C43F8000, v9, v10, "GraphStore: store: %ld %s records.", v11, 0x16u);
    sub_1C440962C(v12);
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  else
  {
  }

  v17 = *(*(v4 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v16);
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a1;

  sub_1C446C37C(sub_1C487EB5C, v19);
}

void sub_1C487C188()
{
  sub_1C43FE96C();
  sub_1C441FC74();
  v31 = sub_1C4EFB1E8();
  v2 = sub_1C43FCDF8(v31);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v5);
  v14 = sub_1C4410D94(v6, v7, v8, v9, v10, v11, v12, v13, v30);
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4406E1C();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BE588, &qword_1C4F37680);
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v1)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v20 = v1;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v21 = *(v17 + 8);
  v22 = sub_1C43FD574();
  v21(v22);
  if (v0)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v23 = v1;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v24 = sub_1C43FD574();
  v21(v24);
  v25 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442BBD0())
  {

    goto LABEL_8;
  }

  v26 = sub_1C4400510();
  v27(v26);
  v28 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v28, v29);
  __break(1u);
}

void sub_1C487C49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4432434(v12);
  v33 = *v10;
  v34 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v34);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FC010();
  v17 = sub_1C4EFAD98();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C4EFB2C8();
  if (!v11)
  {
    sub_1C443137C();
    memcpy(a10, v35, 0x70uLL);
    goto LABEL_8;
  }

  v23 = v11;
  sub_1C4EFA798();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v24 = *(v20 + 8);
  v25 = sub_1C4409D0C();
  v24(v25);
  if (v10)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v26 = v11;
  sub_1C4EFAAC8();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v27 = sub_1C4409D0C();
  v24(v27);
  v35[0] = v11;
  v28 = v11;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442DFA8())
  {

    goto LABEL_8;
  }

  v29 = sub_1C44132A8();
  v30(v29);
  v31 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v31, v32);
  __break(1u);
}

void sub_1C487C724()
{
  sub_1C43FE96C();
  sub_1C441FC74();
  v32 = sub_1C4EFB1E8();
  v2 = sub_1C43FCDF8(v32);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  v31 = v5;
  sub_1C43FD1D0();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_1C43FEFC4(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4406E1C();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BE590, &qword_1C4F37688);
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v1)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v21 = v1;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v22 = *(v18 + 8);
  v23 = sub_1C43FD574();
  v22(v23);
  if (v0)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v24 = v1;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v25 = sub_1C43FD574();
  v22(v25);
  v26 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442BBD0())
  {

    goto LABEL_8;
  }

  v27 = sub_1C4400510();
  v28(v27);
  v29 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v29, v30);
  __break(1u);
}

void sub_1C487C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  v13 = v12;
  v15 = v14;
  v44 = *v10;
  v45 = sub_1C4EFB1E8();
  v16 = sub_1C43FCDF8(v45);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v28 = sub_1C4410D94(v20, v21, v22, v23, v24, v25, v26, v27, v43);
  v29 = sub_1C43FCDF8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C4406E1C();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(v15, v13);
  sub_1C4EFB2C8();
  if (!v11)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v34 = v11;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v35 = *(v31 + 8);
  v36 = sub_1C43FD574();
  v35(v36);
  if (v10)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v37 = v11;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v38 = sub_1C43FD574();
  v35(v38);
  sub_1C4425150();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C442DFA8())
  {

    goto LABEL_8;
  }

  v39 = sub_1C4400510();
  v40(v39);
  v41 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v41, v42);
  __break(1u);
}

void sub_1C487CC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4404F80();
  v40 = *v10;
  v41 = sub_1C4EFB1E8();
  v11 = sub_1C43FCDF8(v41);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v39 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  v24 = sub_1C43FEFC4(v16, v17, v18, v19, v20, v21, v22, v23, v39);
  v25 = sub_1C43FCDF8(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4406E1C();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  _s10ViewConfigVMa(0);
  sub_1C440D510();
  sub_1C4EFB2C8();
  if (!v42)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v30 = v42;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v31 = *(v27 + 8);
  v32 = sub_1C43FD574();
  v31(v32);
  if (v10)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v33 = v42;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v34 = sub_1C43FD574();
  v31(v34);
  sub_1C4425150();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C442DFA8())
  {

    goto LABEL_8;
  }

  v35 = sub_1C4400510();
  v36(v35);
  v37 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v37, v38);
  __break(1u);
}

uint64_t GraphStore.delete<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;

  v5 = sub_1C443DD50(sub_1C487EBF4, v7);

  return v5;
}

void *GraphStore.init(config:)(uint64_t a1)
{
  v4 = *v1;
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  sub_1C44098F0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config);
  if (qword_1EDDFF500 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4ABF788();
  sub_1C4467948(a1);
  if (v2)
  {
    sub_1C4467948(v1 + v5);
    v7 = *(*v1 + 48);
    v8 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = v6;
  }

  return v1;
}

uint64_t GraphStore.deinit()
{
  v1 = *(v0 + 16);

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config);
  return v0;
}

uint64_t GraphStore.__deallocating_deinit()
{
  v1 = v0[2];

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

BOOL static GraphStore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  v3 = a2 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  if ((sub_1C4EF98B8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Configuration() + 20);
  v6 = *(v2 + v4);
  v5 = *(v2 + v4 + 8);
  v7 = (v3 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t GraphStore.hash(into:)()
{
  v1 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  sub_1C4EF98F8();
  sub_1C4408B50();
  sub_1C487EF54(v2, v3);
  sub_1C4F00FE8();
  v4 = (v1 + *(type metadata accessor for Configuration() + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  return MEMORY[0x1C69417F0](v5);
}

uint64_t GraphStore.hashValue.getter()
{
  sub_1C4F02AF8();
  v1 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  sub_1C4EF98F8();
  sub_1C4408B50();
  sub_1C487EF54(v2, v3);
  sub_1C4F00FE8();
  v4 = (v1 + *(type metadata accessor for Configuration() + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  MEMORY[0x1C69417F0](v5);
  return sub_1C4F02B68();
}

uint64_t sub_1C487D2B0()
{
  v1 = *v0;
  sub_1C4F02AF8();
  v2 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  sub_1C4EF98F8();
  sub_1C487EF54(&qword_1EDDFFA00, MEMORY[0x1E6968FB0]);
  sub_1C4F00FE8();
  v3 = (v2 + *(type metadata accessor for Configuration() + 20));
  v4 = v3[1];
  MEMORY[0x1C69417F0](*v3);
  MEMORY[0x1C69417F0](v4);
  return sub_1C4F02B68();
}

uint64_t sub_1C487D36C()
{
  v1 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v111 = &v96 - v3;
  v4 = sub_1C4EFDE88();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v113 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v110 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C441E3FC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C441E3FC();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441E3FC();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FC010();
  v112 = sub_1C4EFDE98();
  v21 = sub_1C43FCDF8(v112);
  v114 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  *&v115 = v26 - v25;
  v126[0] = MEMORY[0x1E69E7CC8];
  v108 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v27 = *(sub_1C4EFEEF8() - 8);
  v109 = *(v27 + 72);
  v107 = *(v27 + 80);
  v105 = (v107 + 32) & ~v107;
  v28 = swift_allocObject();
  v106 = xmmword_1C4F0D130;
  *(v28 + 16) = xmmword_1C4F0D130;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v104 = v29;
  v30 = *MEMORY[0x1E69A95C0];
  v101 = *(v7 + 104);
  v31 = v101;
  v98 = v0;
  sub_1C43FC2F4();
  v31();
  v32 = v19;
  sub_1C43FC2F4();
  v31();
  v33 = v16;
  sub_1C43FC2F4();
  v31();
  sub_1C43FC2F4();
  v31();
  v34 = v110;
  sub_1C43FC2F4();
  v31();
  v35 = v34;
  v99 = v33;
  v100 = v13;
  sub_1C4EFDCD8();

  v36 = *(v113 + 8);
  v102 = v36;
  v113 += 8;
  (v36)(v35, v4);
  (v36)(v13, v4);
  (v36)(v33, v4);
  v97 = v32;
  (v36)(v32, v4);
  v37 = v98;
  (v36)(v98, v4);
  v104 = sub_1C4EFD678();
  v38 = v111;
  sub_1C440BAA8(v111, 1, 1, v104);
  v121 = v126;
  v39 = v115;
  v40 = sub_1C440D510();
  sub_1C48687D0(v40, v41, v42, v43);
  sub_1C4423A0C(v38, &unk_1EC0C07E0, &unk_1C4F168F0);
  v44 = *(v114 + 8);
  v114 += 8;
  v103 = v44;
  v44(v39, v112);
  *(swift_allocObject() + 16) = v106;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v45 = v37;
  v46 = v30;
  sub_1C43FC2F4();
  v47 = v101;
  v101();
  sub_1C43FC2F4();
  v47();
  v48 = v99;
  (v47)(v99, v46, v4);
  v49 = v46;
  (v47)(v100, v46, v4);
  v50 = v110;
  (v47)(v110, v49, v4);
  v51 = v97;
  sub_1C4EFDCD8();

  v52 = v102;
  (v102)(v50, v4);
  v53 = sub_1C4404B44();
  v52(v53);
  (v52)(v48, v4);
  (v52)(v51, v4);
  (v52)(v45, v4);
  v54 = v111;
  sub_1C440BAA8(v111, 1, 1, v104);
  v120 = v126;
  v55 = v115;
  v56 = sub_1C4404084();
  sub_1C48687E8(v56, v57, v58, v59);
  sub_1C4423A0C(v54, &unk_1EC0C07E0, &unk_1C4F168F0);
  v103(v55, v112);
  v60 = MEMORY[0x1E69E7CC8];
  v125 = MEMORY[0x1E69E7CC8];
  type metadata accessor for GraphTriple(0);
  sub_1C487EF54(&qword_1EDDEBBB0, type metadata accessor for GraphTriple);
  v119 = &v125;
  v61 = sub_1C4404084();
  sub_1C487E2E4(v61, v62, 1, v63, v64);
  v124 = v60;
  v118 = &v124;
  v65 = sub_1C4404084();
  sub_1C487E2E4(v65, v66, 3, v67, v68);
  v123 = v60;
  type metadata accessor for EventTriple(0);
  sub_1C487EF54(&qword_1EDDEBC00, type metadata accessor for EventTriple);
  v117 = &v123;
  v69 = sub_1C4404084();
  sub_1C487E2E4(v69, v70, 1, v71, v72);
  v122 = v60;
  v116 = &v122;
  v73 = sub_1C4404084();
  sub_1C487E2E4(v73, v74, 3, v75, v76);
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = 0x73656C70697254;
  *(inited + 40) = 0xE700000000000000;
  sub_1C456902C(&qword_1EC0B9250, &qword_1C4F0ED70);
  v78 = swift_initStackObject();
  v115 = xmmword_1C4F0CE60;
  *(v78 + 16) = xmmword_1C4F0CE60;
  *(v78 + 32) = 0x6870617247;
  *(v78 + 40) = 0xE500000000000000;
  *(v78 + 48) = GraphStore.graphTripleCount()();
  *(v78 + 56) = 0x746E657645;
  *(v78 + 64) = 0xE500000000000000;
  *(v78 + 72) = GraphStore.eventTripleCount()();
  v79 = sub_1C4F00F28();
  v80 = sub_1C456902C(&qword_1EC0B97F8, &unk_1C4F3FA10);
  *(inited + 48) = v79;
  *(inited + 72) = v80;
  *(inited + 80) = 0x7365697469746E45;
  v81 = v126[0];
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v81;
  v114 = v81;
  sub_1C443FCD8();
  *(inited + 120) = v82;
  *(inited + 128) = v83;
  v84 = v83;
  *(inited + 136) = 0xEA00000000007365;
  sub_1C456902C(&qword_1EC0BE5B8, &qword_1C4F376C0);
  v85 = swift_initStackObject();
  *(v85 + 16) = v115;
  *(v85 + 32) = 0x6870617247;
  *(v85 + 40) = 0xE500000000000000;
  sub_1C456902C(&qword_1EC0BE5C0, &qword_1C4F376C8);
  v86 = swift_initStackObject();
  *(v86 + 16) = v115;
  *(v86 + 32) = v84;
  *(v86 + 40) = 0xEA00000000007365;
  v88 = v124;
  v87 = v125;
  *(v86 + 48) = v125;
  *(v86 + 56) = 0xD000000000000017;
  v113 = v87;
  *(v86 + 64) = 0x80000001C4FA37D0;
  *(v86 + 72) = v88;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v85 + 48) = sub_1C4F00F28();
  *(v85 + 56) = 0x746E657645;
  *(v85 + 64) = 0xE500000000000000;
  *(swift_initStackObject() + 16) = v115;
  sub_1C443FCD8();
  v89[4] = v90;
  v91 = v122;
  v92 = v123;
  v89[5] = 0xEA00000000007365;
  v89[6] = v92;
  v89[7] = 0xD000000000000017;
  v89[8] = 0x80000001C4FA37D0;
  v89[9] = v91;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v85 + 72) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BE5C8, &qword_1C4F376D0);
  v93 = sub_1C4F00F28();
  *(inited + 168) = sub_1C456902C(&qword_1EC0BE5D0, &qword_1C4F376D8);
  *(inited + 144) = v93;
  v94 = sub_1C4F00F28();

  return v94;
}

uint64_t sub_1C487DE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a1;
  v16 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15[0] = v9;
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4F01688();
  for (i = v11; ; v11 = i)
  {
    result = sub_1C4F01758();
    if (v11 == result)
    {
      break;
    }

    v13 = sub_1C4F01738();
    sub_1C4F016B8();
    if (v13)
    {
      (*(v7 + 16))(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, a3);
    }

    else
    {
      result = sub_1C4F02298();
      if (v15[0] != 8)
      {
        __break(1u);
        return result;
      }

      v17 = result;
      (*(v7 + 16))(v10, &v17, a3);
      swift_unknownObjectRelease();
    }

    sub_1C4F01788();
    v14 = *(v16 + 16);
    sub_1C4EFB6A8();
    result = (*(v7 + 8))(v10, a3);
    if (v4)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1C487E030()
{
  sub_1C4F017A8();
  swift_getWitnessTable();
  return sub_1C4F01538();
}

uint64_t sub_1C487E0DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*(a2 + 16) + 8);
  result = sub_1C4EFBA58();
  if (!v3)
  {
    if ((result & 1) != 0 && (v8 = __OFADD__(v5, 1), ++v5, v8))
    {
      __break(1u);
    }

    else
    {
      *a3 = v5;
    }
  }

  return result;
}

uint64_t sub_1C487E13C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - v8;
  v10 = (a1 + *(a3(0) + 32));
  v12 = *v10;
  v11 = v10[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  v13 = sub_1C4EFD548();
  if (sub_1C44157D4(v9, 1, v13) == 1)
  {
    sub_1C4423A0C(v9, &qword_1EC0B8568, &unk_1C4F319B0);
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v12 = sub_1C4EFD3D8();
    v11 = v15;
    result = (*(*(v13 - 8) + 8))(v9, v13);
  }

  v16 = *a2;
  v17 = *(*a2 + 16);
  if (v17)
  {
    result = sub_1C445FAA8(v12, v11);
    if (v18)
    {
      v17 = *(*(v16 + 56) + 8 * result);
    }

    else
    {
      v17 = 0;
    }
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4416128();
    sub_1C4662330();
    *a2 = v20[1];

    return 1;
  }

  return result;
}

uint64_t sub_1C487E2E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(v5 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v8[2] = a1;
  v8[3] = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;

  sub_1C4465390(sub_1C487EF9C, v8);
}

uint64_t sub_1C487E354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v14 - v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693D840](a1, a2);
  v11 = sub_1C4EFEEF8();
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4423A0C(v10, &qword_1EC0B9A08, &unk_1C4F107B0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4EFEC08();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v12 = *a4;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4416128();
  sub_1C4662330();
  *a4 = v14[1];
}

uint64_t sub_1C487E4AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v41 = a1;
  v39 = a6;
  v45 = a5;
  v43 = a4;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = *(*(*(a3 + 16) + 8) + 16);
  sub_1C4EFADB8();
  sub_1C4EFBD18();
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0CE60;
  *(v20 + 56) = &type metadata for FusedTripleColumn;
  *(v20 + 64) = sub_1C48112EC();
  v21 = v43;
  *(v20 + 32) = v43;
  v44[3] = &type metadata for FusedTripleColumn;
  v44[4] = sub_1C45021B8();
  LOBYTE(v44[0]) = v21;
  v22 = sub_1C4EFB298();
  v23 = MEMORY[0x1E699FE50];
  *(v20 + 96) = v22;
  *(v20 + 104) = v23;
  sub_1C4422F90((v20 + 72));
  sub_1C4EFBD28();
  sub_1C440962C(v44);
  sub_1C4EFBCF8();

  (*(v8 + 8))(v11, v7);
  sub_1C456902C(&qword_1EC0BE5D8, &qword_1C4F376E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F0D130;
  *(v24 + 56) = &type metadata for FusedTripleColumn;
  *(v24 + 64) = sub_1C481123C();
  *(v24 + 32) = v43;
  sub_1C487EFC0(&qword_1EDDFA270);
  sub_1C4EFB6E8();

  v25 = *(v40 + 8);
  v25(v16, v12);
  sub_1C487EFC0(&qword_1EDDFE850);
  v26 = v42;
  sub_1C4EFB028();
  result = (v25)(v18, v12);
  if (v26)
  {
    return result;
  }

  while (1)
  {
    v28 = sub_1C4458EE8();
    if (!v28)
    {
    }

    sub_1C4EFBBA8();
    v29 = sub_1C4EFBBE8();
    if (v29)
    {
      v30 = MEMORY[0x1EEE9AC00](v29);
      *(&v39 - 2) = v28;
      *(&v39 - 1) = 0;
      v31 = sqlite3_column_type(v30, 0);
      if (v31 == 5)
      {
        MEMORY[0x1EEE9AC00](v31);
        *(&v39 - 2) = sub_1C487BF24;
        *(&v39 - 1) = (&v39 - 4);
        goto LABEL_16;
      }

      v32 = sub_1C4F011E8();
      v34 = v33;
      v44[0] = v32;
    }

    else
    {
      sub_1C4EFBB98();
      v32 = v44[0];
      v34 = v44[1];
    }

    sub_1C4EFBBA8();
    v35 = sub_1C4EFBBE8();
    if (v35)
    {
      break;
    }

    sub_1C4EFBB98();
    v38 = v44[0];
LABEL_11:
    v45(v32, v34, v38);
  }

  v36 = MEMORY[0x1EEE9AC00](v35);
  *(&v39 - 2) = v28;
  *(&v39 - 1) = 1;
  v37 = sqlite3_column_type(v36, 1);
  if (v37 != 5)
  {
    v38 = sub_1C4F02AA8();
    goto LABEL_11;
  }

  MEMORY[0x1EEE9AC00](v37);
  *(&v39 - 2) = sub_1C487BDA4;
  *(&v39 - 1) = (&v39 - 4);
LABEL_16:
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t GraphStore.TransactionOperation.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

void *sub_1C487EB7C(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_1C487EBC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C487EBF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C487E030();
}

uint64_t type metadata accessor for GraphStore()
{
  result = qword_1EDDFE748;
  if (!qword_1EDDFE748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C487ECB8()
{
  result = qword_1EC0BE580;
  if (!qword_1EC0BE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE580);
  }

  return result;
}

uint64_t sub_1C487ED14()
{
  result = type metadata accessor for Configuration();
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

_BYTE *storeEnumTagSinglePayload for GraphStore.TransactionOperation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C487EF54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C487EFC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B9AC8, &unk_1C4F10E00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C487F010@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1C487E0DC(a1, v2[3], a2);
}

uint64_t GraphValidator.__allocating_init(config:)(uint64_t a1)
{
  sub_1C4406518();
  v2 = swift_allocObject();
  GraphValidator.init(config:)(a1);
  return v2;
}

void *GraphValidator.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for Configuration();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  sub_1C4430CAC(a1, v24 - v13, type metadata accessor for Configuration);
  v15 = type metadata accessor for GraphStore();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = GraphStore.init(config:)(v14);
  if (v2)
  {
    sub_1C4453E9C(a1, type metadata accessor for Configuration);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[2] = v18;
    sub_1C4430CAC(a1, v12, type metadata accessor for Configuration);
    v19 = type metadata accessor for OntologyStore();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = OntologyStore.init(config:)(v12);
    sub_1C4453E9C(a1, type metadata accessor for Configuration);
    v3[3] = v22;
  }

  return v3;
}

void sub_1C487F264()
{
  sub_1C43FBD3C();
  v236 = v1;
  v225 = v2;
  v4 = v3;
  v229 = v0;
  v210 = v5;
  v7 = v6;
  v237 = v6;
  v242 = sub_1C4EFEEF8();
  v239 = *(v242 - 8);
  v8 = v239;
  v9 = v239[8];
  MEMORY[0x1EEE9AC00](v242);
  sub_1C43FD2D8();
  v232 = v10;
  v231 = sub_1C4EFF0C8();
  v11 = *(v231 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v231);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v13);
  v230 = sub_1C4EFF8A8();
  v14 = *(v230 - 1);
  v217 = v230 - 8;
  v223 = v14;
  v226 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v230 - 8);
  sub_1C43FD2D8();
  v17 = sub_1C43FD2C8(v16);
  v18 = v4(v17);
  v19 = sub_1C43FCDF8(v18);
  v228 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v227 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  v207 = &v199 - v27;
  v28 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v29 = sub_1C43FBD18(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2C8(&v199 - v32);
  v33 = sub_1C4EFDE88();
  v34 = sub_1C43FCDF8(v33);
  v235 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD2C8(&v199 - v42);
  v212 = sub_1C4EFDE98();
  v43 = sub_1C43FCDF8(v212);
  v211 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  v240 = v47;
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v48 = *(v11 + 72);
  v49 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v50 = swift_allocObject();
  v241 = xmmword_1C4F0D130;
  *(v50 + 16) = xmmword_1C4F0D130;
  v206 = v11;
  v51 = *(v11 + 16);
  v203 = v11 + 16;
  v202 = v51;
  v51(v50 + v49, v7, v231);
  sub_1C4D51ABC();
  v216 = v52;
  v214 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v53 = v239[9];
  v54 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v241;
  v238 = v18;
  v239 = v8;
  v56 = *(v18 + 20);
  v233 = v8[2];
  v234 = v8 + 2;
  v209 = v56;
  v233(v55 + v54, v7 + v56, v242);
  sub_1C4D504A4();
  v215 = v57;
  sub_1C456902C(&qword_1EC0B8ED0, &unk_1C4F377B0);
  v58 = *(v223 + 72);
  v59 = v226;
  v60 = *(v226 + 80);
  v61 = sub_1C441613C();
  *(v61 + 16) = v241;
  v62 = *(v59 + 16);
  v217 = *(v18 + 24);
  v200 = v62;
  v201 = v59 + 16;
  v62(v61 + v7, &v217[v7], v230);
  sub_1C4D51DB8();
  v223 = v63;
  *(swift_allocObject() + 16) = v241;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v64 = *MEMORY[0x1E69A95C0];
  v65 = v235[13];
  v66 = v218;
  sub_1C43FC448();
  v65();
  v67 = v219;
  sub_1C43FC448();
  v65();
  v68 = v220;
  sub_1C43FC448();
  v65();
  v69 = v221;
  sub_1C43FC448();
  v65();
  v70 = v222;
  sub_1C43FC448();
  v65();
  v71 = v70;
  sub_1C4EFDCD8();

  v72 = v235[1];
  v72(v71, v33);
  v72(v69, v33);
  v73 = v68;
  v74 = v233;
  v72(v73, v33);
  v72(v67, v33);
  v72(v66, v33);
  v75 = v242;
  v76 = v229;
  v77 = *(v229 + 16);
  v78 = sub_1C4EFF8F8();
  v79 = v224;
  sub_1C440BAA8(v224, 1, 1, v78);
  v80 = v225(v240, v79);
  v81 = v238;
  v82 = v80;
  sub_1C482ADC8(v79);
  v83 = v228;
  v84 = v236;
  v85 = 0;
  v86 = v82[2];
  v235 = v82;
  if (!v86)
  {
    v87 = v207;
    v88 = v208;
    v89 = v230;
    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v90 = sub_1C4F00978();
      sub_1C442B738(v90, qword_1EDDFECB8);
      v92 = v236;
      v91 = v237;
      sub_1C4430CAC(v237, v87, v236);
      sub_1C4430CAC(v91, v88, v92);
      v93 = sub_1C4F00968();
      v94 = sub_1C4F01CD8();
      v95 = os_log_type_enabled(v93, v94);
      v96 = v238;
      if (v95)
      {
        v97 = swift_slowAlloc();
        *&v241 = swift_slowAlloc();
        v243 = v241;
        *v97 = 136315394;
        v98 = v204;
        v200(v204, v87 + *(v96 + 24), v89);
        sub_1C4453E9C(v87, v92);
        sub_1C4400524();
        sub_1C4882C0C(v99, v100);
        v101 = sub_1C4F02858();
        v103 = v102;
        (*(v226 + 8))(v98, v89);
        v104 = sub_1C441D828(v101, v103, &v243);

        *(v97 + 4) = v104;
        *(v97 + 12) = 2080;
        v105 = v205;
        v106 = v231;
        v202(v205, v88, v231);
        v107 = v92;
        v108 = v106;
        sub_1C4453E9C(v88, v107);
        sub_1C440705C();
        sub_1C4882C0C(v109, v110);
        v111 = sub_1C4F02858();
        v113 = v112;
        sub_1C43FFB20(&v238);
        v114(v105, v108);
        v115 = sub_1C441D828(v111, v113, &v243);

        *(v97 + 14) = v115;
        _os_log_impl(&dword_1C43F8000, v93, v94, "GraphValidator: PS1 predicate does not exist for nested predicate %s with IntelligencePlatformID %s", v97, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
        sub_1C4453E9C(v88, v92);
        sub_1C4453E9C(v87, v92);
      }

      v89 = 0xD000000000000019;
      v243 = 0;
      v244 = 0xE000000000000000;
      sub_1C4F02248();

      v243 = 0x3A7463656A627573;
      v244 = 0xE900000000000020;
      sub_1C440705C();
      sub_1C4882C0C(v116, v117);
      v118 = sub_1C4F02858();
      MEMORY[0x1C6940010](v118);

      MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4FA3990);
      sub_1C4400524();
      sub_1C4882C0C(v119, v120);
      v121 = sub_1C4F02858();
      MEMORY[0x1C6940010](v121);

      MEMORY[0x1C6940010](0x636964657270202CLL, 0xEE0020203A657461);
      sub_1C44198BC();
      sub_1C4882C0C(v122, v123);
      v124 = sub_1C4F02858();
      MEMORY[0x1C6940010](v124);

      MEMORY[0x1C6940010](32, 0xE100000000000000);
      v125 = v243;
      v126 = v244;
      v88 = v210;
      v127 = *v210;
      swift_isUniquelyReferenced_nonNull_native();
      v243 = *v88;
      sub_1C445FAA8(0xD000000000000021, 0x80000001C4FA3910);
      sub_1C43FC438();
      if (__OFADD__(v130, v131))
      {
        break;
      }

      v132 = v128;
      v87 = v129;
      sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
      v133 = sub_1C4F02458();
      v134 = v243;
      if (v133)
      {
        v135 = sub_1C445FAA8(0xD000000000000021, 0x80000001C4FA3910);
        if ((v87 & 1) != (v136 & 1))
        {
          goto LABEL_32;
        }

        v132 = v135;
      }

      *v88 = v134;
      if ((v87 & 1) == 0)
      {
        sub_1C44686DC(v132, 0xD000000000000021, 0x80000001C4FA3910, MEMORY[0x1E69E7CD0], v134);
      }

      v137 = *(v134 + 56) + 8 * v132;
      sub_1C44869B4(&v243, v125, v126);

      v82 = v235;
      v85 = sub_1C455B6CC;
      if (v235[2])
      {
        v75 = v242;
        v84 = v236;
        v81 = v238;
        v83 = v228;
        v76 = v229;
        v74 = v233;
        goto LABEL_14;
      }

      __break(1u);
LABEL_29:
      sub_1C43FFB88();
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_14:
  v230 = v85;
  *&v241 = *(v76 + 24);
  v138 = (v83[80] + 32) & ~v83[80];
  v139 = v227;
  sub_1C4430CAC(v82 + v138, v227, v84);
  v140 = v232;
  v74(v232, v139 + *(v81 + 20), v75);
  sub_1C4453E9C(v139, v84);
  v141 = v81;
  v231 = sub_1C4EFEB68();
  v143 = v142;
  v144 = v239[1];
  ++v239;
  v228 = v144;
  (v144)(v140, v75);
  v145 = v213;
  sub_1C4430CAC(v82 + v138, v213, v84);
  v146 = (v145 + *(v141 + 32));
  v147 = v82;
  v148 = *v146;
  v149 = v146[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4453E9C(v145, v84);
  v150 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
  v151 = *(v241 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v231 = sub_1C4A570F0(v231, v143, v148, v149);

  v229 = *(v141 + 28);
  v152 = sub_1C4EFEB68();
  v154 = v153;
  v226 = v138;
  sub_1C4430CAC(v147 + v138, v139, v84);
  v155 = (v139 + *(v141 + 32));
  v156 = *v155;
  v157 = v155[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4453E9C(v139, v84);
  v158 = *(v241 + v150);
  v159 = sub_1C4A56CF4(v152, v154, v156, v157);

  v160 = *(v159 + 16);

  if (v160)
  {
    v161 = *(v231 + 16);

    if (v161)
    {
LABEL_19:
      sub_1C43FFB20(&v242);
      v168(v240, v212);

LABEL_27:
      sub_1C44239FC(v230);
      sub_1C43FE9F0();
      return;
    }
  }

  else
  {
  }

  v162 = v232;
  sub_1C4EFEBB8();
  sub_1C44198BC();
  sub_1C4882C0C(v163, v164);
  v165 = v242;
  v166 = sub_1C4F010B8();
  v167 = v228;
  (v228)(v162, v165);
  if (v166)
  {
    goto LABEL_19;
  }

  v170 = v235;
  v169 = v236;
  v172 = v226;
  v171 = v227;
  sub_1C4430CAC(v235 + v226, v227, v236);
  v233(v162, v171 + *(v238 + 20), v165);
  sub_1C4453E9C(v171, v169);
  sub_1C44198BC();
  *&v241 = sub_1C4882C0C(v173, v174);
  v175 = sub_1C4F02858();
  v176 = v167;
  v178 = v177;
  (v176)(v162, v165);
  v243 = v175;
  v244 = v178;
  MEMORY[0x1C6940010](92, 0xE100000000000000);
  sub_1C4430CAC(v170 + v172, v171, v169);

  v179 = (v171 + *(v238 + 32));
  v180 = *v179;
  v181 = v179[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4453E9C(v171, v169);
  MEMORY[0x1C6940010](v180, v181);

  MEMORY[0x1C6940010](92, 0xE100000000000000);
  v182 = sub_1C4F02858();
  MEMORY[0x1C6940010](v182);

  v183 = v243;
  v184 = v244;
  v185 = v210;
  v186 = *v210;
  swift_isUniquelyReferenced_nonNull_native();
  v243 = *v185;
  sub_1C445FAA8(0xD000000000000019, 0x80000001C4FA3970);
  sub_1C43FC438();
  if (__OFADD__(v189, v190))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v191 = v187;
  v192 = v188;
  sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
  v193 = sub_1C4F02458();
  v194 = v243;
  if ((v193 & 1) == 0)
  {
LABEL_24:
    *v185 = v194;
    if ((v192 & 1) == 0)
    {
      sub_1C44686DC(v191, 0xD000000000000019, 0x80000001C4FA3970, MEMORY[0x1E69E7CD0], v194);
    }

    v197 = *(v194 + 56) + 8 * v191;
    sub_1C44869B4(&v243, v183, v184);

    sub_1C43FFB20(&v242);
    v198(v240, v212);
    goto LABEL_27;
  }

  v195 = sub_1C445FAA8(0xD000000000000019, 0x80000001C4FA3970);
  if ((v192 & 1) == (v196 & 1))
  {
    v191 = v195;
    goto LABEL_24;
  }

LABEL_32:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4880458()
{
  sub_1C43FBD3C();
  v180 = v1;
  v169 = v2;
  v179 = v3;
  v193 = v4;
  v192 = v5;
  v7 = v6;
  v197 = v0;
  v178 = v8;
  v10 = v9;
  v177 = sub_1C4EFF8A8();
  v11 = sub_1C43FCDF8(v177);
  v176 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v15);
  v16 = sub_1C4EFF0C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v20 = sub_1C43FD2C8(v19);
  v194 = v7(v20);
  v21 = sub_1C43FCDF8(v194);
  v181 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  v171 = &v166 - v26;
  v27 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v28 = sub_1C43FBD18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2C8(&v166 - v31);
  v32 = sub_1C4EFDE88();
  v33 = sub_1C43FCDF8(v32);
  v35 = v34;
  v186 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v166 - v44;
  v184 = sub_1C4EFDE98();
  v46 = sub_1C43FCDF8(v184);
  v183 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD2D8();
  v198 = v50;
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  v167 = sub_1C4F00F28();
  v204 = v167;
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v51 = *(v17 + 72);
  v52 = *(v17 + 80);
  v53 = sub_1C441613C();
  v196 = xmmword_1C4F0D130;
  *(v53 + 16) = xmmword_1C4F0D130;
  v173 = v17;
  v54 = *(v17 + 16);
  v195 = v10;
  v174 = v16;
  v170 = v17 + 16;
  v168 = v54;
  v54(v53 + v16 - 8, v10, v16);
  sub_1C4D51ABC();
  v187 = v55;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v166 = sub_1C4EFEEF8();
  v56 = *(*(v166 - 8) + 72);
  v57 = (*(*(v166 - 8) + 80) + 32) & ~*(*(v166 - 8) + 80);
  v58 = swift_allocObject();
  sub_1C443349C(v58);
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v59 = *MEMORY[0x1E69A95C0];
  v60 = *(v35 + 104);
  v185 = v45;
  sub_1C4407074();
  v60();
  v61 = v42;
  sub_1C4407074();
  v60();
  v62 = v188;
  sub_1C4407074();
  v60();
  v63 = v189;
  sub_1C4407074();
  v60();
  v64 = v190;
  sub_1C4407074();
  v60();
  v65 = v198;
  sub_1C4EFDCD8();

  v66 = *(v186 + 8);
  v66(v64, v32);
  v66(v63, v32);
  v66(v62, v32);
  v66(v61, v32);
  v66(v185, v32);
  v67 = v197;
  v68 = *(v197 + 16);
  v69 = sub_1C4EFF8F8();
  v70 = v191;
  sub_1C440BAA8(v191, 1, 1, v69);
  v71 = v192(v65, v70);
  sub_1C482ADC8(v70);
  if (*(v71 + 16))
  {
    v72 = v182;
    v73 = v193;
    sub_1C4430CAC(v71 + ((*(v181 + 80) + 32) & ~*(v181 + 80)), v182, v193);

    v74 = v194;
    v75 = (v72 + *(v194 + 32));
    v77 = *v75;
    v76 = v75[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4453E9C(v72, v73);
    v78 = *(v67 + 24);
    v79 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v80 = *(v78 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
    v81 = sub_1C4404C28();
    sub_1C4A5512C(v81, v82);
    v83 = sub_1C4428DA0();

    if (v83)
    {
      v84 = *(v74 + 20);
      v85 = sub_1C4EFEB68();
      v86 = *(v78 + v79);
      v88 = sub_1C4A56CF4(v85, v87, v77, v76);

      v89 = *(v88 + 16);

      if (v89)
      {
      }

      else if (sub_1C4663244(0xD000000000000012, 0x80000001C4FA38D0, v167))
      {

        v138 = sub_1C4B5A9F8(&v201, 0xD000000000000012, 0x80000001C4FA38D0);
        if (*v139)
        {
          v199 = 40;
          v200 = 0xE100000000000000;
          v140 = sub_1C4404C28();
          MEMORY[0x1C6940010](v140);

          MEMORY[0x1C6940010](8236, 0xE200000000000000);
          sub_1C44198BC();
          sub_1C4882C0C(v141, v142);
          v143 = sub_1C4425168();
          MEMORY[0x1C6940010](v143);

          MEMORY[0x1C6940010](41, 0xE100000000000000);
          sub_1C44869B4(&v203, v199, v200);
        }

        (v138)(&v201, 0);
      }

      else
      {
        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        inited = swift_initStackObject();
        sub_1C443349C(inited);
        v201 = 40;
        v202 = 0xE100000000000000;
        v145 = sub_1C4404C28();
        MEMORY[0x1C6940010](v145);

        MEMORY[0x1C6940010](8236, 0xE200000000000000);
        sub_1C44198BC();
        sub_1C4882C0C(v146, v147);
        v148 = sub_1C4425168();
        MEMORY[0x1C6940010](v148);

        MEMORY[0x1C6940010](41, 0xE100000000000000);
        v149 = v202;
        inited[2].n128_u64[0] = v201;
        inited[2].n128_u64[1] = v149;
        sub_1C4499940(inited, v150, v151, v152, v153, v154, v155, v156, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
        v157 = v204;
        swift_isUniquelyReferenced_nonNull_native();
        v201 = v157;
        sub_1C4486BA8();
        v204 = v201;
      }

      v158 = *(v194 + 24);
      v159 = v175;
      sub_1C4EFF888();
      sub_1C4400524();
      sub_1C4882C0C(v160, v161);
      v162 = v177;
      LOBYTE(v158) = sub_1C4F010B8();
      sub_1C43FFB20(&v201);
      v163(v159, v162);
      if ((v158 & 1) == 0)
      {
        sub_1C487F264();
      }

      sub_1C488206C();
      v164 = sub_1C4411DD4();
      v165(v164);
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v107 = swift_initStackObject();
      sub_1C443349C(v107);
      *(v108 + 32) = v77;
      *(v108 + 40) = v76;
      sub_1C4499940(v108, v109, v110, v111, v112, v113, v114, v115, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
      v116 = v204;
      swift_isUniquelyReferenced_nonNull_native();
      v201 = v116;
      sub_1C4486BA8();
      v117 = sub_1C4411DD4();
      v118(v117);
    }

LABEL_26:
    sub_1C43FE9F0();
    return;
  }

  v90 = v171;
  v91 = v172;
  v92 = v173;
  v93 = v174;
  v94 = v193;

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v95 = sub_1C4F00978();
  sub_1C442B738(v95, qword_1EDDFECB8);
  sub_1C4430CAC(v195, v90, v94);
  v96 = sub_1C4F00968();
  v97 = sub_1C4F01CD8();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = v90;
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v201 = v100;
    *v99 = 136315138;
    v168(v91, v98, v93);
    sub_1C4453E9C(v98, v94);
    sub_1C440705C();
    sub_1C4882C0C(v101, v102);
    v103 = sub_1C4F02858();
    v105 = v104;
    (*(v92 + 8))(v91, v93);
    v106 = sub_1C441D828(v103, v105, &v201);

    *(v99 + 4) = v106;
    _os_log_impl(&dword_1C43F8000, v96, v97, "GraphValidator: PS1 predicate does not exist for %s", v99, 0xCu);
    sub_1C440962C(v100);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    sub_1C4453E9C(v90, v94);
  }

  sub_1C440705C();
  sub_1C4882C0C(v119, v120);
  v121 = sub_1C4F02858();
  v123 = v122;
  v124 = v204;
  swift_isUniquelyReferenced_nonNull_native();
  v201 = v124;
  sub_1C445FAA8(0xD000000000000021, 0x80000001C4FA3910);
  sub_1C43FC438();
  if (__OFADD__(v127, v128))
  {
    __break(1u);
  }

  else
  {
    v129 = v125;
    v130 = v126;
    sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
    v131 = sub_1C4F02458();
    v132 = v201;
    if ((v131 & 1) == 0)
    {
LABEL_15:

      if ((v130 & 1) == 0)
      {
        sub_1C44686DC(v129, 0xD000000000000021, 0x80000001C4FA3910, MEMORY[0x1E69E7CD0], v132);
      }

      v135 = *(v132 + 56) + 8 * v129;
      sub_1C44869B4(&v201, v121, v123);

      v136 = sub_1C4411DD4();
      v137(v136);

      goto LABEL_26;
    }

    v133 = sub_1C445FAA8(0xD000000000000021, 0x80000001C4FA3910);
    if ((v130 & 1) == (v134 & 1))
    {
      v129 = v133;
      goto LABEL_15;
    }
  }

  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4881260()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = type metadata accessor for EventTriple(0);
  v145 = *(v2 - 8);
  v3 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FD2D8();
  v144 = v4;
  v5 = type metadata accessor for GraphTriple(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C43FD2D8();
  v151 = v8;
  v9 = *(v0 + 16);
  v10 = GraphStore.loadGraphTriples()();
  v146 = GraphStore.loadEventTriples()();
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  v11 = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BE5E8, &unk_1C4F377A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x80000001C4FA38B0;
  v13 = *(v1 + 24);
  type metadata accessor for GraphValidator.TriplePredicateCountValidator();
  v14 = swift_allocObject();

  sub_1C4881CB0(v15);
  *(inited + 48) = v14;
  sub_1C4F00F28();
  v149 = *(v10 + 2);
  if (!v149)
  {
    goto LABEL_39;
  }

  v16 = 0;
  v147 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v139 = v10;
  v142 = v6;
  do
  {
    if (v16 >= *(v10 + 2))
    {
      goto LABEL_80;
    }

    sub_1C4430CAC(&v147[*(v6 + 72) * v16], v151, type metadata accessor for GraphTriple);
    sub_1C465DBBC();
    sub_1C4414B7C();
    v18 = v17;

    v19 = sub_1C4404C28();
    sub_1C4453E9C(v19, v20);
    if (!v18[2])
    {

      goto LABEL_38;
    }

    v153 = v16;
    v21 = 0;
    sub_1C4408B68();
    v24 = v23 & v22;
    v26 = (v25 + 63) >> 6;
    while (v24)
    {
LABEL_11:
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v29 = v28 | (v21 << 6);
      v30 = (v18[6] + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(v18[7] + 8 * v29);
      v34 = v11[2];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v34 && (sub_1C4417348(), (v35 & 1) != 0))
      {
        if (v11[2] && (v36 = sub_1C4417348(), (v37 & 1) != 0))
        {
          v60 = *(v11[7] + 8 * v36);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44999E0(v33, v60);
          v138 = v61;
          swift_isUniquelyReferenced_nonNull_native();
          v62 = sub_1C4417348();
          sub_1C43FD8D0(v62, v63);
          if (v47)
          {
            goto LABEL_86;
          }

          v66 = v64;
          v136 = v65;
          sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
          sub_1C440D51C();
          if (sub_1C4F02458())
          {
            v67 = sub_1C4404BCC();
            sub_1C445FAA8(v67, v68);
            sub_1C442DFC0();
            if (!v52)
            {
              goto LABEL_90;
            }

            v66 = v69;
            if ((v70 & 1) == 0)
            {
              goto LABEL_32;
            }

LABEL_35:

            sub_1C44043D4();
            v75 = *(v74 + 8 * v66);
            *(v74 + 8 * v66) = v138;
          }

          else
          {
            if (v136)
            {
              goto LABEL_35;
            }

LABEL_32:
            sub_1C4405CBC();
            sub_1C4432450(v71);
            sub_1C442BBF0((v72 + 16 * v66));
            *(v73 + 8 * v66) = v138;
            sub_1C4418AE4();
            if (v47)
            {
              goto LABEL_88;
            }

LABEL_33:
            v11[2] = v57;
          }
        }

        else
        {

          v38 = sub_1C4417348();
          v40 = v39;

          if (v40)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v41 = v11[3];
            sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
            sub_1C440D51C();
            sub_1C4F02458();
            sub_1C4409D18();
            v42 = *(v11[7] + 8 * v38);

            sub_1C4F02478();
          }
        }
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v43 = sub_1C4417348();
        sub_1C43FD8D0(v43, v44);
        if (v47)
        {
          goto LABEL_82;
        }

        v137 = v46;
        v135 = v45;
        sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
        sub_1C440D51C();
        if (sub_1C4F02458())
        {
          v48 = sub_1C4404BCC();
          sub_1C445FAA8(v48, v49);
          sub_1C442DFC0();
          if (!v52)
          {
            goto LABEL_90;
          }

          v53 = v50;
          if ((v51 & 1) == 0)
          {
LABEL_22:
            sub_1C4405CBC();
            sub_1C4432450(v54);
            sub_1C442BBF0((v55 + 16 * v53));
            *(v56 + 8 * v53) = v33;
            sub_1C4418AE4();
            if (v47)
            {
              goto LABEL_84;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v53 = v135;
          if ((v137 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        sub_1C44043D4();
        v59 = *(v58 + 8 * v53);
        *(v58 + 8 * v53) = v33;
      }
    }

    while (1)
    {
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v27 >= v26)
      {
        break;
      }

      v24 = v18[v27];
      ++v21;
      if (v24)
      {
        v21 = v27;
        goto LABEL_11;
      }
    }

    v10 = v139;
    v6 = v142;
    v16 = v153;
LABEL_38:
    ++v16;
  }

  while (v16 != v149);
LABEL_39:

  v76 = v146;
  v152 = *(v146 + 16);
  if (!v152)
  {
LABEL_77:

    sub_1C43FE9F0();
    return;
  }

  v77 = 0;
  v150 = v146 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
  while (1)
  {
    if (v77 >= *(v76 + 16))
    {
      goto LABEL_81;
    }

    sub_1C4430CAC(v150 + *(v145 + 72) * v77, v144, type metadata accessor for EventTriple);
    sub_1C465DBBC();
    sub_1C4414B7C();
    v79 = v78;

    v80 = sub_1C4404C28();
    sub_1C4453E9C(v80, v81);
    if (v79[2])
    {
      break;
    }

LABEL_76:
    ++v77;
    v76 = v146;
    if (v77 == v152)
    {
      goto LABEL_77;
    }
  }

  v154 = v77;
  v82 = 0;
  sub_1C4408B68();
  v85 = v84 & v83;
  v87 = (v86 + 63) >> 6;
  while (v85)
  {
LABEL_49:
    v89 = __clz(__rbit64(v85));
    v85 &= v85 - 1;
    v90 = v89 | (v82 << 6);
    v91 = (v79[6] + 16 * v90);
    v92 = *v91;
    v93 = v91[1];
    v94 = *(v79[7] + 8 * v90);
    v95 = v11[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v95 || (sub_1C4417348(), (v96 & 1) == 0))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v104 = sub_1C4417348();
      sub_1C43FD8D0(v104, v105);
      if (v47)
      {
        goto LABEL_83;
      }

      v143 = v107;
      v140 = v106;
      sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
      sub_1C440D51C();
      if (sub_1C4F02458())
      {
        v108 = sub_1C4404BCC();
        sub_1C445FAA8(v108, v109);
        sub_1C442DFC0();
        if (!v52)
        {
          goto LABEL_90;
        }

        v112 = v110;
        if (v111)
        {
LABEL_64:

          sub_1C44043D4();
          v118 = *(v117 + 8 * v112);
          *(v117 + 8 * v112) = v94;

          continue;
        }
      }

      else
      {
        v112 = v140;
        if (v143)
        {
          goto LABEL_64;
        }
      }

      sub_1C4405CBC();
      sub_1C4432450(v113);
      sub_1C442BBF0((v114 + 16 * v112));
      *(v115 + 8 * v112) = v94;
      sub_1C4418AE4();
      if (v47)
      {
        goto LABEL_85;
      }

      goto LABEL_71;
    }

    if (v11[2] && (v97 = sub_1C4417348(), (v98 & 1) != 0))
    {
      v119 = *(v11[7] + 8 * v97);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44999E0(v94, v119);
      v148 = v120;
      swift_isUniquelyReferenced_nonNull_native();
      v121 = sub_1C4417348();
      sub_1C43FD8D0(v121, v122);
      if (v47)
      {
        goto LABEL_87;
      }

      v125 = v123;
      v141 = v124;
      sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
      sub_1C440D51C();
      if (sub_1C4F02458())
      {
        v126 = sub_1C4404BCC();
        sub_1C445FAA8(v126, v127);
        sub_1C442DFC0();
        if (!v52)
        {
          goto LABEL_90;
        }

        v125 = v128;
        if ((v129 & 1) == 0)
        {
LABEL_70:
          sub_1C4405CBC();
          sub_1C4432450(v130);
          sub_1C442BBF0((v131 + 16 * v125));
          *(v132 + 8 * v125) = v148;
          sub_1C4418AE4();
          if (v47)
          {
            goto LABEL_89;
          }

LABEL_71:
          v11[2] = v116;
          continue;
        }
      }

      else if ((v141 & 1) == 0)
      {
        goto LABEL_70;
      }

      sub_1C44043D4();
      v134 = *(v133 + 8 * v125);
      *(v133 + 8 * v125) = v148;
    }

    else
    {

      v99 = sub_1C4417348();
      v101 = v100;

      if (v101)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v102 = v11[3];
        sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
        sub_1C440D51C();
        sub_1C4F02458();
        sub_1C4409D18();
        v103 = *(v11[7] + 8 * v99);

        sub_1C4F02478();
      }
    }
  }

  while (1)
  {
    v88 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v88 >= v87)
    {

      v77 = v154;
      goto LABEL_76;
    }

    v85 = v79[v88];
    ++v82;
    if (v85)
    {
      v82 = v88;
      goto LABEL_49;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
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
  __break(1u);
LABEL_90:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4881CB0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  v2 = sub_1C4A55968();
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = 48 * v3;
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    ++v3;
    v8 = v7 + 48;
    v9 = *(v2 + v7 + 72);
    v7 += 48;
    if ((v9 & 1) == 0)
    {
      v10 = *(v2 + v8 - 16);
      v11 = *(v2 + v8 - 8);
      v12 = *(v2 + v8);
      v13 = *(v2 + v8 + 8);
      v14 = *(v2 + v8 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v6 + 16);
        sub_1C459E6F0();
      }

      v16 = *(v6 + 16);
      if (v16 >= *(v6 + 24) >> 1)
      {
        sub_1C459E6F0();
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 48 * v16;
      *(v17 + 32) = v29;
      *(v17 + 40) = v11;
      *(v17 + 48) = v12;
      *(v17 + 56) = v13;
      *(v17 + 64) = v14;
      *(v17 + 72) = 0;
      goto LABEL_2;
    }
  }

  v18 = *(v6 + 16);
  if (v18)
  {
    sub_1C459E6D0(0, v18, 0);
    v19 = 0;
    v20 = (v6 + 72);
    while (v19 < *(v6 + 16))
    {
      if (*v20)
      {
        goto LABEL_23;
      }

      v21 = v6;
      v22 = *(v20 - 4);
      v23 = *(v20 - 1);
      v30 = *(v20 - 5);
      v24 = *(v5 + 16);
      v25 = *(v5 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v24 >= v25 >> 1)
      {
        sub_1C459E6D0((v25 > 1), v24 + 1, 1);
      }

      ++v19;
      *(v5 + 16) = v24 + 1;
      v26 = (v5 + 24 * v24);
      v26[4] = v30;
      v26[5] = v22;
      v26[6] = v23;
      v20 += 48;
      v6 = v21;
      if (v18 == v19)
      {

        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v27 = sub_1C4BA04F4(v5);

  *(v28 + 16) = v27;
  *(v28 + 24) = v27;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4881F24()
{
  sub_1C4881F7C(MEMORY[0x1E69E7CF8]);
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4881F7C(void (*a1)(void))
{
  a1(*(v1 + 16));
  a1(*(v1 + 24));
  return v1;
}

uint64_t GraphValidator.__deallocating_deinit()
{
  GraphValidator.deinit();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

void sub_1C488206C()
{
  sub_1C43FBD3C();
  v48 = v0;
  v2 = v1;
  v51 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v13;
  v45 = v2;
  sub_1C4430CAC(v5, &v44 - v13, v2);
  v14 = v7 + 64;
  v15 = 1 << *(v7 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v7 + 64);
  v18 = (v15 + 63) >> 6;
  v50 = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = 0;
  v46 = xmmword_1C4F0D130;
  while (v17)
  {
LABEL_9:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = (v19 << 10) | (16 * v21);
    v23 = (*(v50 + 48) + v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = *(*(v50 + 56) + v22);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_unknownObjectRetain();
    v27 = v48(v49, v26);
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      if (*(*v51 + 16) && (sub_1C445FAA8(v24, v25), (v31 & 1) != 0))
      {
        v32 = sub_1C4B5A9F8(v52, v24, v25);
        if (*v33)
        {
          sub_1C44869B4(&v53, v29, v30);
        }

        (v32)(v52, 0);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        inited = swift_initStackObject();
        *(inited + 16) = v46;
        *(inited + 32) = v29;
        *(inited + 40) = v30;
        sub_1C4499940(inited, v35, v36, v37, v38, v39, v40, v41, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v53);
        v42 = v51;
        v43 = *v51;
        swift_isUniquelyReferenced_nonNull_native();
        v52[0] = *v42;
        sub_1C4486BA8();

        swift_unknownObjectRelease();
        *v42 = v52[0];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      sub_1C4453E9C(v49, v45);

      sub_1C43FE9F0();
      return;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C4882304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for EventTriple(0);
  v51 = v14;
  v52 = sub_1C4882C0C(&qword_1EDDEBC08, type metadata accessor for EventTriple);
  v15 = sub_1C4422F90(v50);
  sub_1C4430CAC(a1, v15, type metadata accessor for EventTriple);
  v43 = sub_1C4409678(v50, v51);
  v16 = v5[2];
  v16(v13, v15 + *(v14 + 20), v4);
  v17 = sub_1C4EFEB68();
  v19 = v18;
  v44 = v5[1];
  v44(v13, v4);
  swift_beginAccess();
  v45 = a2;
  v20 = sub_1C465C024(v17, v19, *(a2 + 16));
  LOBYTE(a2) = v21;

  swift_endAccess();
  v22 = 0;
  if ((a2 & 1) == 0)
  {
    if (v20 < 1)
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1C4F02248();
      v46 = v48;
      v47 = v49;
      MEMORY[0x1C6940010](0x7461636964657250, 0xEA00000000002065);
      v41 = *(v14 + 20);
      v25 = v43;
      v16(v11, &v43[v41], v4);
      v26 = sub_1C4EFEB68();
      v28 = v27;
      v29 = v44;
      v44(v11, v4);
      MEMORY[0x1C6940010](v26, v28);

      MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FA3940);
      v30 = v42;
      v16(v42, &v25[v41], v4);
      v31 = sub_1C4EFEB68();
      v33 = v32;
      v29(v30, v4);
      v34 = v45;
      swift_beginAccess();
      v35 = sub_1C465C024(v31, v33, *(v34 + 24));
      LOBYTE(v31) = v36;
      swift_endAccess();

      v37 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v31 & 1) == 0)
      {
        v37 = v35;
      }

      v48 = v37;
      v38 = sub_1C4F02858();
      MEMORY[0x1C6940010](v38);

      MEMORY[0x1C6940010](0x6465776F6C6C6120, 0xE900000000000029);
      v22 = v46;
    }

    else
    {
      v16(v11, &v43[*(v14 + 20)], v4);
      sub_1C4EFEB68();
      v44(v11, v4);
      v23 = v45;
      swift_beginAccess();
      v24 = *(v23 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v23 + 16);
      sub_1C4662330();
      *(v23 + 16) = v46;

      swift_endAccess();
      v22 = 0;
    }
  }

  sub_1C440962C(v50);
  return v22;
}

uint64_t sub_1C4882788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for GraphTriple(0);
  v51 = v14;
  v52 = sub_1C4882C0C(&qword_1EC0BAA28, type metadata accessor for GraphTriple);
  v15 = sub_1C4422F90(v50);
  sub_1C4430CAC(a1, v15, type metadata accessor for GraphTriple);
  v43 = sub_1C4409678(v50, v51);
  v16 = v5[2];
  v16(v13, v15 + *(v14 + 20), v4);
  v17 = sub_1C4EFEB68();
  v19 = v18;
  v44 = v5[1];
  v44(v13, v4);
  swift_beginAccess();
  v45 = a2;
  v20 = sub_1C465C024(v17, v19, *(a2 + 16));
  LOBYTE(a2) = v21;

  swift_endAccess();
  v22 = 0;
  if ((a2 & 1) == 0)
  {
    if (v20 < 1)
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1C4F02248();
      v46 = v48;
      v47 = v49;
      MEMORY[0x1C6940010](0x7461636964657250, 0xEA00000000002065);
      v41 = *(v14 + 20);
      v25 = v43;
      v16(v11, &v43[v41], v4);
      v26 = sub_1C4EFEB68();
      v28 = v27;
      v29 = v44;
      v44(v11, v4);
      MEMORY[0x1C6940010](v26, v28);

      MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FA3940);
      v30 = v42;
      v16(v42, &v25[v41], v4);
      v31 = sub_1C4EFEB68();
      v33 = v32;
      v29(v30, v4);
      v34 = v45;
      swift_beginAccess();
      v35 = sub_1C465C024(v31, v33, *(v34 + 24));
      LOBYTE(v31) = v36;
      swift_endAccess();

      v37 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v31 & 1) == 0)
      {
        v37 = v35;
      }

      v48 = v37;
      v38 = sub_1C4F02858();
      MEMORY[0x1C6940010](v38);

      MEMORY[0x1C6940010](0x6465776F6C6C6120, 0xE900000000000029);
      v22 = v46;
    }

    else
    {
      v16(v11, &v43[*(v14 + 20)], v4);
      sub_1C4EFEB68();
      v44(v11, v4);
      v23 = v45;
      swift_beginAccess();
      v24 = *(v23 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v23 + 16);
      sub_1C4662330();
      *(v23 + 16) = v46;

      swift_endAccess();
      v22 = 0;
    }
  }

  sub_1C440962C(v50);
  return v22;
}

uint64_t sub_1C4882C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GroupMatcher()
{
  result = qword_1EDDF8B08;
  if (!qword_1EDDF8B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GroupMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GroupMatcher();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t GroupMatcher.stateStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for GroupMatcher() + 28));
}

uint64_t GroupMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupMatcher() + 32);
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t GroupMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for GroupMatcher();
  v9 = a4 + v8[8];
  sub_1C4EFCF48();
  *(a4 + v8[9]) = 1056964608;
  sub_1C440053C();
  sub_1C44718CC(a1, a4);
  sub_1C447200C(a2, a4 + v8[5]);
  *(a4 + v8[6]) = v7;
  v10 = *(a1 + *(type metadata accessor for PhaseStores() + 28));

  result = sub_1C44854B4(a1, type metadata accessor for PhaseStores);
  *(a4 + v8[7]) = v10;
  return result;
}

float sub_1C4882ED0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v55 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v55 - v13;
  v67 = type metadata accessor for EntityTriple(0);
  v62 = *(v67 - 8);
  v14 = *(v62 + 64);
  v15 = MEMORY[0x1EEE9AC00](v67);
  v66 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v56 = &v55 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v55 - v22;
  v23 = 0;
  v24 = *(a1 + 16);
  v63 = a1;
  v64 = v24;
  v69 = (v4 + 8);
  while (1)
  {
    v25 = 0.0;
    if (v64 == v23)
    {
      return v25;
    }

    v26 = *(v62 + 72);
    v61 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = v26;
    sub_1C44718CC(v63 + v61 + v26 * v23, v21);
    v27 = *(v67 + 28);
    sub_1C4EFE558();
    sub_1C4885B38(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v72 == v70 && v73 == v71)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_1C4F02938();
    }

    v30 = *v69;
    (*v69)(v68, v3);

    if (v29)
    {
      goto LABEL_17;
    }

    sub_1C4EFE7E8();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v72 == v70 && v73 == v71)
    {
      v30(v12, v3);

LABEL_17:
      v33 = v57;
      sub_1C447200C(v21, v57);
      v34 = (v33 + *(v67 + 32));
      v35 = v34[1];
      v68 = *v34;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v33, type metadata accessor for EntityTriple);
      v36 = *(v58 + 16);
      v37 = v58 + v61;
      while (1)
      {
        v38 = v60;
        if (!v36)
        {

          return v25;
        }

        sub_1C44718CC(v37, v66);
        v39 = *(v67 + 28);
        sub_1C4EFE558();
        sub_1C4F01578();
        sub_1C4F01578();
        if (v72 == v70 && v73 == v71)
        {
          break;
        }

        v41 = sub_1C4F02938();
        v42 = v38;
        v43 = v41;
        v30(v42, v3);

        if (v43)
        {
          goto LABEL_31;
        }

        v38 = v59;
        sub_1C4EFE7E8();
        sub_1C4F01578();
        sub_1C4F01578();
        if (v72 == v70 && v73 == v71)
        {
          break;
        }

        v45 = sub_1C4F02938();
        v46 = v38;
        v47 = v45;
        v30(v46, v3);

        if (v47)
        {
          goto LABEL_31;
        }

        sub_1C44854B4(v66, type metadata accessor for EntityTriple);
        v37 += v65;
        --v36;
      }

      v30(v38, v3);

LABEL_31:
      v48 = v56;
      sub_1C447200C(v66, v56);
      v49 = (v48 + *(v67 + 32));
      v51 = *v49;
      v50 = v49[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v48, type metadata accessor for EntityTriple);
      if (v51 == v68 && v50 == v35)
      {
      }

      else
      {
        v53 = sub_1C4F02938();

        if ((v53 & 1) == 0)
        {
          return v25;
        }
      }

      return 1.0;
    }

    v32 = sub_1C4F02938();
    v30(v12, v3);

    if (v32)
    {
      goto LABEL_17;
    }

    sub_1C44854B4(v21, type metadata accessor for EntityTriple);
    ++v23;
  }
}