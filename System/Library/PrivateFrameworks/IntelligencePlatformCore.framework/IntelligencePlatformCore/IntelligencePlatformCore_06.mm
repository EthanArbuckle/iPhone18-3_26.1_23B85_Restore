uint64_t sub_1C4474460()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1C4CDBB1C, v9, 0);
  }

  else
  {
    v10 = v3[7];

    sub_1C43FBDA0();

    return v11();
  }
}

uint64_t sub_1C4474580()
{
  v1 = *(v0 + 112);

  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_metricsPayload, &qword_1EC0C6428, &unk_1C4F6D7E8);
  sub_1C4463890(*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery), *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery + 8));
  v2 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C44745F0()
{
  sub_1C440962C((v0 + 16));
  sub_1C4463890(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  return v0;
}

uint64_t sub_1C447462C()
{
  sub_1C44745F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4474660()
{
  sub_1C4475B28();
  v11 = v2;
  sub_1C43FEAEC();
  sub_1C4475DF8();
  sub_1C4426F9C();
  sub_1C441CF44();
  if (v1)
  {
    sub_1C44BBF4C();
    sub_1C440FE6C();
    sub_1C4430798();
    sub_1C446073C(MEMORY[0x1E69E7CD0]);
    sub_1C4408120();
    v3 = *(v0 + 4);
    v4 = swift_task_alloc();
    v5 = sub_1C447FAC0(v4);
    *v5 = v6;
    v7 = sub_1C4401314(v5);

    return v8(v7);
  }

  else
  {
    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C447476C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C447486C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C44748C4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 56);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_1C4CE97E8;
  }

  else
  {

    v7 = sub_1C447486C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C44749D4()
{
  sub_1C43FCF70();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);

  sub_1C4463890(v3, v4);
  v5 = *(v0 + 8);
  v6 = *(v0 + 56);

  return v5(v6);
}

uint64_t sub_1C4474A5C(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  result = sub_1C4474C78(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    v8 = sub_1C4428DA0(v5);
LABEL_36:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_1C4F02128();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_36;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1C6940F90](v9, v5);
        result = swift_unknownObjectRelease();
        if (v19 != a2)
        {
          if (v8 != v9)
          {
            v12 = MEMORY[0x1C6940F90](v8, v5);
            v11 = MEMORY[0x1C6940F90](v9, v5);
            goto LABEL_16;
          }

LABEL_26:
          v18 = __OFADD__(v8++, 1);
          if (v18)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v10)
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 32 + 8 * v9);
        if (v11 != a2)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v10)
            {
              goto LABEL_42;
            }

            v12 = *(v5 + 32 + 8 * v8);

LABEL_16:
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1C4836300(v5);
              v13 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v13) = 0;
            }

            v14 = v5 & 0xFFFFFFFFFFFFFF8;
            v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v11;

            if ((v5 & 0x8000000000000000) != 0 || v13)
            {
              result = sub_1C4836300(v5);
              v5 = result;
              v14 = result & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v14 + 16))
            {
              goto LABEL_43;
            }

            v16 = v14 + 8 * v9;
            v17 = *(v16 + 32);
            *(v16 + 32) = v12;

            *a1 = v5;
          }

          goto LABEL_26;
        }
      }

      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4474C78(uint64_t a1, uint64_t a2)
{
  result = sub_1C4428DA0(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1C6940F90](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C4474D50()
{
  sub_1C44755A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4474DA8()
{
  sub_1C4474580();

  return MEMORY[0x1EEE6DEF0](v0);
}

char *sub_1C4474DD4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

void sub_1C4474DF8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1C44755E4(a1, a2 & 1);
  }
}

uint64_t sub_1C4474E10()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4474E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4474EA0()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;
  *(v4 + 48) = v0;

  if (!v0)
  {
    *(v4 + 56) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4474FA4()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[9];
    v10 = sub_1C44150AC();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    sub_1C440962C(v3 + 2);
    v13 = sub_1C44355E0();

    return v14(v13);
  }
}

uint64_t sub_1C44750D0()
{
  sub_1C43FBCD4();
  v1 = v0[9];
  v2 = v0[5];
  sub_1C44128FC();
  sub_1C4474E48(v1, v3);

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1C4475148()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = sub_1C4CDBAA0;
  }

  else
  {
    v12 = v3[11];
    v11 = v3[12];
    v13 = v3[7];

    v10 = sub_1C44750D0;
    v9 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C4475260()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C4475294@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1;
  *(v1 - 184) = 0xE100000000000000;
  return v1 - 192;
}

uint64_t sub_1C44752AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C441DFEC(a13, a11);
}

uint64_t sub_1C44752DC()
{
  v2 = v0[35];
  v3 = v0[28];
  v4 = v0[20];

  return sub_1C445A19C(v3);
}

uint64_t sub_1C44752FC@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;
  v3 = *(v1 - 136);

  return sub_1C4F02618();
}

uint64_t sub_1C4475320()
{

  return sub_1C4F02618();
}

uint64_t sub_1C4475344@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v1, v2 + a1);
}

uint64_t sub_1C447535C()
{
  v2 = *(*(v0 - 104) + *(*(v0 - 232) + 48));
}

uint64_t sub_1C44753A0(uint64_t result)
{
  *(v1 - 424) = result;
  *(v1 - 128) = result;
  return result;
}

uint64_t sub_1C44753B0()
{
  v3 = *(v1 + 8 * v0 + 32);
}

uint64_t sub_1C44753CC()
{
  v2 = *(v0 - 344);

  return swift_arrayDestroy();
}

uint64_t sub_1C44753F0(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1C4EFEEF8();
}

uint64_t sub_1C447540C()
{
  result = v0 + v1;
  v4 = *(v2 - 264);
  return result;
}

void sub_1C4475420(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v4;
  *(v2 + *(v3 + 44)) = v5;
  v6 = *(v3 + 48);
}

__n128 sub_1C447544C()
{
  v2 = *(v0 + 32);
  *(v1 - 144) = *(v0 + 16);
  *(v1 - 128) = v2;
  result = *(v0 + 41);
  *(v1 - 119) = result;
  return result;
}

unint64_t sub_1C447546C()
{
  *(v2 - 88) = *(v0 + *(v1 + 24));
  *(v2 - 65) = 2;

  return sub_1C479852C();
}

void sub_1C4475490()
{
  v3 = *(v1 - 208);
  v2 = *(v1 - 200);
  *(v1 - 160) = v0;
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
}

uint64_t sub_1C44754B4()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 320);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4475524()
{
  v1 = *(v0 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C44755A0()
{
  sub_1C440962C((v0 + 16));
  sub_1C44128FC();
  sub_1C4474E48(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations);

  return v0;
}

void sub_1C44755E4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t *sub_1C4475624(uint64_t a1, uint64_t a2)
{
  *(v6 - 184) = v2;
  *(v6 - 176) = v5;
  *(v6 - 208) = a1;
  *(v6 - 200) = a2;
  *(v6 - 104) = v4;
  *(v6 - 96) = v3;

  return sub_1C4422F90((v6 - 128));
}

uint64_t sub_1C447581C()
{
  v2 = *(v0 + 28);

  return sub_1C4EFD548();
}

double sub_1C4475850()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_1C4475874()
{
  v2 = *(v0 - 104);

  return sub_1C4EF9F28();
}

uint64_t sub_1C44758B8()
{
  v3 = v1 + *(v0 + 24);

  return sub_1C4EFF888();
}

uint64_t sub_1C44758E8(uint64_t a1, _BYTE *a2, uint64_t a3, char a4)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 217) = a4;
  *(v5 + 96) = a1;
  v7 = type metadata accessor for Fuser();
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  *(v5 + 120) = sub_1C43FBE7C();
  v10 = type metadata accessor for Linker();
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  *(v5 + 128) = sub_1C43FBE7C();
  v13 = type metadata accessor for Source();
  *(v5 + 136) = v13;
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v16 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  *(v5 + 160) = sub_1C43FBE7C();
  v19 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  *(v5 + 168) = sub_1C43FBE7C();
  v22 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v22);
  v24 = *(v23 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 218) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C44725E0, 0, 0);
}

uint64_t sub_1C4475A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4475AE4()
{

  return sub_1C4F010B8();
}

uint64_t sub_1C4475B10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C4F02458();
}

uint64_t sub_1C4475B74@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D468(v4 + a2, v3 + v2, a1);
}

void sub_1C4475BB0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4475BC8()
{
  v2 = *(v0 + 24);

  return sub_1C4EFF878();
}

uint64_t sub_1C4475BE4()
{

  return sub_1C4F02858();
}

uint64_t sub_1C4475C04()
{
  v1 = v0[6];
  sub_1C4409678(v0 + 2, v0[5]);
  v3 = v0[5];
  v2 = v0[6];
  sub_1C4409678(v0 + 2, v3);
  v4 = *(*(v2 + 8) + 48);
  return v3;
}

uint64_t sub_1C4475C50()
{
  v2 = *(v0 - 432);

  return swift_dynamicCast();
}

uint64_t sub_1C4475C70()
{

  return sub_1C4F022D8();
}

uint64_t sub_1C4475CA4()
{

  return swift_slowAlloc();
}

uint64_t sub_1C4475CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 - 200) + a1);
  v4 = *v3;
  v5 = v3[1];
  *(v1 - 152) = 4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4475CE8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D3B8(v4 + a2, v3 + v2, a1);
}

uint64_t sub_1C4475D00(float a1)
{
  *v3 = a1;

  return sub_1C441D828(v1, v2, (v4 - 104));
}

uint64_t sub_1C4475D20()
{
  result = v0;
  v3 = *(v1 - 288);
  return result;
}

uint64_t sub_1C4475D34()
{
  *(v3 - 136) = v0;
  result = sub_1C440BAA8(v2, 1, 1, v0);
  v5 = v2 + *(v1 + 20);
  return result;
}

uint64_t sub_1C4475D8C()
{

  return sub_1C4F02BC8();
}

__n128 sub_1C4475DB0@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 48) + *(*(v3 - 192) + 72) * a1;
  *&STACK[0x300] = *(v2 + 1952);
  return *(v2 + 2000);
}

uint64_t sub_1C4475DD4()
{
  v2 = *(v0 - 256);

  return sub_1C4EFB2F8();
}

void sub_1C4475DF8()
{
  v2 = (*(v0 + 64) + 24);

  os_unfair_lock_lock(v2);
}

uint64_t sub_1C4475E10()
{

  return sub_1C4EFBFF8();
}

uint64_t sub_1C4475E40@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *(v2 - 184);
  *v3 = *(v2 - 192);
  v3[1] = result;
  return result;
}

void sub_1C4475E84()
{
  *(v6 - 200) = v5;
  *(v6 - 192) = v1;
  *(v6 - 112) = v0;
  *(v6 - 216) = v2;
  *(v6 - 208) = v3;
  *(v6 - 224) = v4;
  *(v6 - 65) = 0;
}

void sub_1C4475E9C()
{
  v2 = *(v0 + 20);
  v3 = *(v1 - 136);
  v4 = *(*(v1 - 144) + 16);
}

uint64_t type metadata accessor for LocationMatcher()
{
  result = qword_1EDDF6710;
  if (!qword_1EDDF6710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C4475EF8(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1C4475FAC()
{
  result = qword_1EDDED208[0];
  if (!qword_1EDDED208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDED208);
  }

  return result;
}

uint64_t sub_1C4476000()
{
  sub_1C4418CA4();
  if (*(v1 + 8))
  {
    sub_1C446C11C(v1);
    sub_1C445EA78();
    sub_1C4591F4C();

    return sub_1C446C11C(v5);
  }

  else
  {
    sub_1C447D27C(v1, v5);
    v3 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442EDD4();
    sub_1C447E144();

    *v0 = v4;
  }

  return result;
}

uint64_t sub_1C44760B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4476108()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);
  v3 = sub_1C43FBC98();

  return sub_1C4471624(v3, v4);
}

uint64_t type metadata accessor for RelationshipFullSourceIngestor()
{
  result = qword_1EDDDEE50;
  if (!qword_1EDDDEE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Resolver()
{
  result = qword_1EDDF0A48;
  if (!qword_1EDDF0A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4476228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v14 = *(v12 + 2573);
  v15 = *(v12 + 1584);
  v16 = *(v12 + 544);
  v17 = *(v12 + 536);
  v18 = *(v12 + 528);
  sub_1C440F91C();
  sub_1C4471988(v19, v18);
  v20 = type metadata accessor for Linker();
  *(v12 + 1592) = v20;
  v21 = *(v20 + 20);
  sub_1C4424D24();
  sub_1C4471988(v17, v18 + v22);
  *(v18 + *(v20 + 28)) = v14;
  sub_1C4471988(v17, v15);
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v23 = *(v12 + 1584);
  v24 = sub_1C442B738(*(v12 + 1304), &unk_1EDDFD088);
  v25 = *v23;
  v26 = v23[1];
  v27 = *v24 == v25 && v24[1] == v26;
  if (v27 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C441E0B0();
    v28 = *(v12 + 1576);
    v1551 = *(v12 + 1568);
    v29 = *(v12 + 1296);
    v1649 = *(v12 + 1024);
    v30 = *(v12 + 1016);
    v31 = *(v12 + 968);
    v1569 = *(v12 + 960);
    v32 = *(v12 + 544);
    v1482 = v32;
    v1490 = *(v12 + 1288);
    v33 = *(v12 + 536);
    sub_1C440741C();
    v1600 = v33;
    v1619 = v34;
    sub_1C447E970(v35, v36);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v37 = swift_allocObject();
    *(v12 + 1600) = v37;
    sub_1C4432614(v37, xmmword_1C4F17CF0);
    sub_1C4471988(v32, v29);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1567 = v12;
    sub_1C4471988(v33, v28);
    v38 = type metadata accessor for Blocker();
    v37[3].n128_u64[1] = v38;
    sub_1C4403494();
    v1539 = sub_1C4471C58(v39, v40);
    v37[4].n128_u64[0] = v1539;
    v41 = sub_1C4422F90(&v37[2]);
    sub_1C440AEDC();
    v42 = sub_1C4424948();
    sub_1C4471988(v42, v43);
    v1524 = *(v31 + 16);
    v1524(v41 + v38[5], v30, v1569);
    sub_1C4471988(v28, v41 + v38[6]);
    *(v41 + v38[7]) = 0;
    sub_1C4471988(v29, v41 + v38[8]);
    v44 = *(v29 + *(v1649 + 32));
    sub_1C448177C();
    *(v41 + v38[9]) = v45;
    v46 = sub_1C44829A4(v28, v29);
    sub_1C447E970(v28, v1619);
    v1513 = *(v31 + 8);
    v1513(v30, v1569);
    *(v41 + v38[10]) = v46;
    *(v41 + v38[11]) = v1631;
    v47 = *(v29 + *(v1649 + 28));

    sub_1C447E970(v29, type metadata accessor for PhaseStores);
    *(v41 + v38[12]) = v47;
    v1463 = v38;
    *(v41 + v38[13]) = 0;
    sub_1C4471988(v1482, v29);
    sub_1C4471988(v1600, v28);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v48 = type metadata accessor for PairGenerator();
    v37[6].n128_u64[0] = v48;
    sub_1C43FDB14();
    v1505 = sub_1C4471C58(v49, v50);
    v37[6].n128_u64[1] = v1505;
    v51 = sub_1C4422F90(&v37[4].n128_i64[1]);
    sub_1C4450770(v51, v48[8]);
    v52 = sub_1C43FCE84();
    sub_1C4471988(v52, v53);
    sub_1C4472068(v28, v51 + v48[5]);
    (*(v31 + 32))(v51 + v48[6], v30, v1569);
    *(v51 + v48[7]) = v1631;
    sub_1C4475394();
    v55 = *(v29 + v54);

    sub_1C447E970(v29, type metadata accessor for PhaseStores);
    *(v51 + v48[9]) = v55;
    sub_1C4471988(v1482, v1490);
    sub_1C4471988(v1600, v1551);
    LOBYTE(v1655[0]) = v1631;
    v37[8].n128_u64[1] = type metadata accessor for LocationMatcher();
    sub_1C441CC08();
    v37[9].n128_u64[0] = sub_1C4471C58(v56, v57);
    v58 = sub_1C4422F90(&v37[7]);
    LocationMatcher.init(stores:source:pipelineType:)(v1490, v1551, v1655, v58);
    LOBYTE(v1551) = *(v12 + 2573);
    v96 = *(v12 + 1576);
    v1459 = *(v12 + 1560);
    v97 = *(v12 + 1296);
    v1456 = *(v12 + 1280);
    v98 = *(v12 + 1016);
    v99 = *(v12 + 960);
    v1586 = *(v12 + 536);
    v1602 = *(v12 + 544);
    sub_1C44807E8();
    sub_1C4471988(v100, v97);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C445E900();
    sub_1C4471988(v1586, v96);
    v37[11].n128_u64[0] = v1463;
    v37[11].n128_u64[1] = v1539;
    v101 = sub_1C4422F90(&v37[9].n128_i64[1]);
    sub_1C440AEDC();
    v102 = sub_1C44158DC();
    sub_1C4471988(v102, v103);
    v104 = sub_1C4459BC0(v1463[5]);
    (v1524)(v104);
    v105 = v1463[6];
    v106 = sub_1C44569C0();
    sub_1C4471988(v106, v107);
    sub_1C44691D4();
    sub_1C4471988(v97, v108);
    v109 = *(v97 + *(v1649 + 32));
    sub_1C448177C();
    sub_1C442A620(v110);
    v111 = sub_1C49E1CF0();
    v113 = sub_1C44829A4(v111, v112);
    sub_1C440741C();
    v1621 = v114;
    sub_1C447E970(v96, v115);
    v116 = sub_1C4414A08();
    (v1513)(v116);
    sub_1C49E19E8();
    *(v101 + v117) = v1551;
    sub_1C49E1BB4(*(v1649 + 28));
    sub_1C4410FD4();
    v1492 = v118;
    sub_1C447E970(v97, v118);
    sub_1C442578C();
    sub_1C4471988(v1602, v97);
    sub_1C49E1E40(v1586);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v37[13].n128_u64[1] = v48;
    v37[14].n128_u64[0] = v1505;
    v119 = sub_1C4422F90(&v37[12]);
    sub_1C4441148(v119);
    v120 = sub_1C44158DC();
    sub_1C4471988(v120, v121);
    v122 = v48[5];
    v123 = sub_1C44569C0();
    sub_1C4472068(v123, v124);
    sub_1C4459BC0(v48[6]);
    sub_1C49E19D8();
    v125();
    *(v101 + v48[7]) = v1551;
    sub_1C4475394();
    sub_1C49E1BB4(v126);
    sub_1C4485FF0();
    *(v101 + v48[9]) = v113;
    v127 = type metadata accessor for OrganizationMatcher();
    v37[16].n128_u64[0] = v127;
    sub_1C445C1B8();
    v130 = sub_1C4471C58(v128, v129);
    v131 = sub_1C49E1DE0(v130);
    v132 = sub_1C43FD258();
    sub_1C4471988(v132, v133);
    sub_1C4471988(v1586, v131 + v127[5]);
    *(v131 + v127[7]) = 1056964608;
    *(v131 + v127[6]) = v1551;
    v134 = sub_1C43FD018();
    sub_1C4471988(v134, v135);
    sub_1C4EFD4A8();
    sub_1C4471988(v1586, v96);
    v37[18].n128_u64[1] = v1463;
    v37[19].n128_u64[0] = v1539;
    v136 = sub_1C4422F90(&v37[17]);
    v137 = sub_1C44158DC();
    sub_1C4471988(v137, v138);
    v139 = sub_1C4459BC0(v1463[5]);
    (v1524)(v139);
    v140 = v1463[6];
    v141 = sub_1C44569C0();
    sub_1C4471988(v141, v142);
    sub_1C44691D4();
    sub_1C4471988(v97, v143);
    v144 = *(v97 + *(v1649 + 32));
    sub_1C448177C();
    sub_1C442A620(v145);
    v146 = sub_1C49E1CF0();
    sub_1C44829A4(v146, v147);
    sub_1C447E970(v96, v1621);
    v148 = sub_1C4414A08();
    (v1513)(v148);
    sub_1C49E19E8();
    *(v136 + v149) = v1551;
    sub_1C49E1BB4(*(v1649 + 28));
    sub_1C447E970(v97, v1492);
    sub_1C442578C();
    sub_1C4471988(v1602, v97);
    sub_1C49E1E40(v1586);
    sub_1C4EFD4A8();
    v37[21].n128_u64[0] = v48;
    v37[21].n128_u64[1] = v1505;
    v150 = sub_1C4422F90(&v37[19].n128_i64[1]);
    sub_1C4441148(v150);
    v151 = sub_1C44158DC();
    sub_1C4471988(v151, v152);
    v153 = v48[5];
    v154 = sub_1C44EB8C0();
    sub_1C4472068(v154, v155);
    v156 = v48[6];
    sub_1C49E19D8();
    v157();
    *(v136 + v48[7]) = v1551;
    sub_1C4475394();
    sub_1C49E1BB4(v158);
    sub_1C447E970(v97, v1492);
    *(v136 + v48[9]) = v96;
    sub_1C4471988(v1602, v97);
    sub_1C4471988(v1586, v96);
    v159 = type metadata accessor for TopicMatcher();
    v37[23].n128_u64[1] = v159;
    v37[24].n128_u64[0] = sub_1C4471C58(&qword_1EDDF89E0, type metadata accessor for TopicMatcher);
    v160 = sub_1C4422F90(&v37[22]);
    v161 = sub_1C449AEEC(v160);
    *(v161 + v162) = 2;
    v163 = v161 + v159[9];
    sub_1C4EFD4A8();
    sub_1C4472068(v97, v160);
    sub_1C4472068(v96, v160 + v159[5]);
    *(v160 + v159[6]) = v1551;
    sub_1C4471988(v1602, v97);
    sub_1C4EFD4C8();
    sub_1C4471988(v1586, v96);
    v37[26].n128_u64[0] = v1463;
    v37[26].n128_u64[1] = v1539;
    v164 = sub_1C4422F90(&v37[24].n128_i64[1]);
    v165 = sub_1C44158DC();
    sub_1C4471988(v165, v166);
    v167 = sub_1C44A14C0(v1463[5]);
    (v1524)(v167);
    v168 = v1463[6];
    v169 = sub_1C444AD48();
    sub_1C4471988(v169, v170);
    sub_1C44691D4();
    sub_1C4471988(v97, v171);
    v172 = *(v97 + *(v1649 + 32));
    sub_1C448177C();
    sub_1C442A620(v173);
    v174 = sub_1C43FD018();
    sub_1C44829A4(v174, v175);
    sub_1C447E970(v96, v1621);
    v176 = sub_1C4410428();
    (v1513)(v176);
    sub_1C49E19E8();
    *(v164 + v177) = v1551;
    sub_1C49E1BB4(*(v1649 + 28));
    sub_1C447E970(v97, v1492);
    sub_1C442578C();
    sub_1C4471988(v1602, v97);
    v178 = sub_1C43FCE84();
    sub_1C4471988(v178, v179);
    sub_1C4EFD4C8();
    v37[28].n128_u64[1] = v48;
    v37[29].n128_u64[0] = v1505;
    sub_1C4422F90(&v37[27]);
    sub_1C49E1BE4();
    sub_1C4450770(v180, v181);
    v182 = sub_1C44158DC();
    sub_1C4471988(v182, v183);
    v184 = v48[5];
    v185 = sub_1C444AD48();
    sub_1C4472068(v185, v186);
    v187 = v48[6];
    sub_1C49E19D8();
    v188();
    *(v164 + v48[7]) = v1551;
    sub_1C4475394();
    v190 = *(v97 + v189);

    sub_1C447E970(v97, v1492);
    *(v164 + v48[9]) = v190;
    sub_1C4471988(v1602, v1456);
    sub_1C4471988(v1586, v1459);
    *(v1567 + 2572) = v1551;
    v37[31].n128_u64[0] = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v37[31].n128_u64[1] = sub_1C4471C58(v191, v192);
    sub_1C4422F90(&v37[29].n128_i64[1]);
    v193 = swift_task_alloc();
    *(v1567 + 1608) = v193;
    *v193 = v1567;
    v193[1] = sub_1C4487288;
    v194 = *(v1567 + 1560);
    v195 = *(v1567 + 1280);
LABEL_25:
    sub_1C43FEA3C();

    PeopleMatcher.init(stores:source:pipelineType:)();
    return;
  }

  if (qword_1EDDFD0D0 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD0D8);
  v197 = v27 && v196 == v26;
  if (v197 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C49E1CB0();
    v198 = *(v12 + 1296);
    v1571 = *(v12 + 1264);
    v1587 = *(v12 + 1544);
    v199 = *(v12 + 1016);
    v200 = *(v12 + 968);
    v1603 = *(v12 + 1024);
    v1622 = v200;
    v201 = *(v12 + 960);
    v202 = *(v12 + 544);
    v203 = *(v12 + 536);
    sub_1C440741C();
    sub_1C447E970(v204, v205);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v206 = sub_1C49E1AD8();
    *(v12 + 1624) = v206;
    sub_1C4432614(v206, xmmword_1C4F0F830);
    v208 = v207;
    sub_1C4471988(v202, v198);
    sub_1C4EFD4C8();
    sub_1C441346C();
    v209 = v203;
    v211 = v210;
    sub_1C4471988(v209, v14);
    v212 = type metadata accessor for Blocker();
    *(v12 + 1632) = v212;
    v206[3].n128_u64[1] = v212;
    sub_1C4403494();
    v215 = sub_1C4471C58(v213, v214);
    *(v12 + 1640) = v215;
    v206[4].n128_u64[0] = v215;
    v216 = sub_1C4422F90(&v206[2]);
    sub_1C440AEDC();
    v217 = sub_1C43FD018();
    sub_1C4471988(v217, v218);
    v219 = v212[5];
    v220 = *(v200 + 16);
    v200 += 16;
    *(v12 + 1648) = v220;
    *(v12 + 1656) = v200 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v221 = sub_1C442F958(v219);
    v222(v221);
    sub_1C448875C();
    v223 = sub_1C442EC40();
    sub_1C4471988(v223, v224);
    v225 = *(v198 + *(v1603 + 32));
    sub_1C448177C();
    sub_1C49E1C10(v226);
    v227 = sub_1C4409D98();
    sub_1C44829A4(v227, v228);
    sub_1C49E1D08();
    *(v12 + 1664) = *(v1622 + 8);
    sub_1C44F0924();
    *(v12 + 1672) = v229;
    v230 = sub_1C441E0A4();
    v231(v230);
    *(v216 + v212[10]) = v208;
    sub_1C441680C(v212[11]);
    sub_1C441FE54();
    v1520 = v232;
    sub_1C447E970(v198, v233);
    sub_1C4457910();
    sub_1C49E1B54();
    sub_1C4EFD4C8();
    v234 = type metadata accessor for PairGenerator();
    *(v211 + 1680) = v234;
    sub_1C44289F0(v234);
    sub_1C43FDB14();
    v237 = sub_1C4471C58(v235, v236);
    *(v211 + 1688) = v237;
    v238 = sub_1C49E1A18(v237);
    v239 = sub_1C441EDE4(v238);
    sub_1C4471988(v239, v240);
    v241 = v234[5];
    v242 = sub_1C4488240();
    sub_1C4472068(v242, v243);
    v244 = v234[6];
    *(v211 + 1696) = *(v1622 + 32);
    sub_1C49E19A4();
    *(v211 + 1704) = v245;
    v247 = sub_1C44BBCAC(v246);
    v248(v247);
    *(v1603 + v234[7]) = v1648;
    sub_1C445136C(v1603);
    sub_1C447E970(v198, v1520);
    v249 = sub_1C4414658();
    sub_1C4471988(v249, v1571);
    sub_1C4471988(v208, v1587);
    *(v211 + 2571) = v1648;
    *(v200 + 136) = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v252 = sub_1C4471C58(v250, v251);
    sub_1C4488B14(v252);
    swift_task_alloc();
    sub_1C449F444();
    *(v211 + 1712) = v253;
    *v253 = v254;
    v253[1] = sub_1C49D4D44;
    v255 = *(v211 + 1544);
    v256 = *(v211 + 1264);
    goto LABEL_25;
  }

  if (qword_1EDDFD268 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD270);
  v259 = v27 && v258 == v26;
  if (v259 || (sub_1C44306B4() & 1) != 0)
  {
    v1475 = v20;
    sub_1C441E0B0();
    v260 = *(v12 + 1576);
    v261 = *(v12 + 1296);
    v1568 = v12;
    v1572 = *(v12 + 1024);
    v262 = *(v12 + 1016);
    v263 = *(v12 + 968);
    v264 = *(v12 + 960);
    v1499 = *(v12 + 1528);
    v1506 = *(v12 + 936);
    v1484 = *(v12 + 1248);
    v1493 = *(v12 + 808);
    v1514 = *(v12 + 656);
    v1521 = *(v12 + 784);
    v265 = *(v12 + 544);
    v1652 = *(v12 + 536);
    sub_1C440741C();
    v1604 = v266;
    sub_1C447E970(v267, v268);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v269 = sub_1C49E1AD8();
    sub_1C4432614(v269, xmmword_1C4F0F830);
    v271 = v270;
    sub_1C4471988(v265, v261);
    sub_1C4EFD3E8();
    sub_1C4471988(v1652, v260);
    v272 = type metadata accessor for Blocker();
    v269[3].n128_u64[1] = v272;
    sub_1C4403494();
    v1467 = sub_1C4471C58(v273, v274);
    v1553 = v269;
    v269[4].n128_u64[0] = v1467;
    v275 = sub_1C4422F90(&v269[2]);
    sub_1C440AEDC();
    v276 = sub_1C4401D48();
    sub_1C4471988(v276, v277);
    v1640 = v263;
    v1461 = *(v263 + 16);
    v278 = sub_1C4459BC0(v272[5]);
    v279(v278);
    sub_1C445BC08();
    sub_1C4471988(v260, v280);
    sub_1C4422414();
    v281 = v271;
    sub_1C4471988(v261, v282);
    v283 = *(v261 + *(v1572 + 32));
    sub_1C448177C();
    sub_1C49E1A84(v284);
    v285 = sub_1C445852C();
    v287 = sub_1C44829A4(v285, v286);
    sub_1C447E970(v260, v1604);
    v1455 = *(v263 + 8);
    v288 = sub_1C4410428();
    v289(v288);
    *(v275 + v272[10]) = v287;
    *(v275 + v272[11]) = v1631;
    v290 = *(v261 + *(v1572 + 28));

    sub_1C441FE54();
    v1525 = v291;
    sub_1C447E970(v261, v292);
    *(v275 + v272[12]) = v290;
    sub_1C4495410();
    sub_1C4471988(v265, v261);
    sub_1C4471988(v1652, v260);
    sub_1C4EFD3E8();
    v293 = type metadata accessor for PairGenerator();
    v1553[12] = v293;
    sub_1C43FDB14();
    v1453 = sub_1C4471C58(v294, v295);
    v1553[13] = v1453;
    v296 = sub_1C4422F90(v1553 + 9);
    v297 = sub_1C440CCE8(v296, v293[8]);
    sub_1C4471988(v297, v298);
    sub_1C4472068(v260, v296 + v293[5]);
    v1541 = *(v1640 + 32);
    v299 = sub_1C4459BC0(v293[6]);
    v300(v299);
    *(v296 + v293[7]) = v1631;
    sub_1C49E1E58(*(v1572 + 28));
    sub_1C447E970(v261, v1525);
    *(v296 + v293[9]) = v1631;
    sub_1C4471988(v265, v261);
    sub_1C4EFD3E8();
    v301 = type metadata accessor for IdentifierBasedMatcher();
    v1553[17] = v301;
    sub_1C44C1290();
    v1553[18] = sub_1C4471C58(v302, v303);
    v304 = sub_1C4422F90(v1553 + 14);
    sub_1C4471988(v1652, v304 + v301[5]);
    *(v304 + v301[7]) = 1056964608;
    sub_1C4472068(v261, v304);
    v1541(v304 + v301[8], v262, v264);
    *(v304 + v301[6]) = v1631;
    sub_1C4471988(v265, v261);
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4471988(v1652, v260);
    v1553[22] = v272;
    v1553[23] = v1467;
    v305 = sub_1C4422F90(v1553 + 19);
    v306 = sub_1C4401D48();
    sub_1C4471988(v306, v307);
    v308 = sub_1C4459BC0(v272[5]);
    v1461(v308);
    sub_1C445BC08();
    sub_1C4471988(v260, v309);
    sub_1C4422414();
    sub_1C4471988(v261, v310);
    v311 = *(v261 + *(v1572 + 32));
    sub_1C448177C();
    sub_1C49E1A84(v312);
    v313 = sub_1C44829A4(v260, v261);
    sub_1C447E970(v260, v1604);
    v1455(v262, v264);
    *(v305 + v272[10]) = v313;
    *(v305 + v272[11]) = v1631;
    sub_1C49E1E58(*(v1572 + 28));
    sub_1C447E970(v261, v1525);
    *(v305 + v272[12]) = v313;
    v314 = v272[13];
    v70 = v1553;
    *(v305 + v314) = 0;
    sub_1C4471988(v265, v261);
    sub_1C4471988(v1652, v260);
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1553[27] = v293;
    v1553[28] = v1453;
    v315 = sub_1C4422F90(v1553 + 24);
    v316 = sub_1C440CCE8(v315, v293[8]);
    sub_1C4471988(v316, v317);
    sub_1C4472068(v260, v315 + v293[5]);
    v318 = sub_1C4459BC0(v293[6]);
    (v1541)(v318);
    *(v315 + v293[7]) = v1631;
    v319 = *(v261 + *(v1572 + 28));

    sub_1C447E970(v261, v1525);
    *(v315 + v293[9]) = v319;
    v320 = type metadata accessor for EventMatcher();
    v1553[32] = v320;
    sub_1C445876C();
    v1553[33] = sub_1C4471C58(v321, v322);
    v323 = sub_1C4422F90(v1553 + 29);
    sub_1C44754D4(v323);
    sub_1C4471988(v265, v324);
    v325 = sub_1C44158DC();
    sub_1C4471988(v325, v326);
    *(v315 + *(v320 + 20)) = v1631;
    sub_1C4471988(v265, v1484);
    sub_1C4471988(v1652, v1499);
    v1553[37] = v1493;
    sub_1C44174EC();
    v1553[38] = sub_1C4471C58(v327, v328);
    sub_1C4422F90(v1553 + 34);
    *(v1506 + v1493[6]) = 4;
    sub_1C4471988(v1484, v1506);
    sub_1C4471988(v1499, v1506 + v1493[5]);
    *(v1506 + v1493[7]) = v1631;
    v329 = sub_1C4EF9E48();
    sub_1C44102A4(v1514, v330, v331, v329);
    sub_1C448895C();
    if (v281)
    {

      v332 = 1;
    }

    else
    {
      v332 = 0;
    }

    v20 = v1475;
    v333 = v1568;
    v334 = v1568[191];
    v335 = v1568[156];
    v336 = v1568[117];
    v337 = v1568[101];
    v338 = v1568[98];
    sub_1C49E19C8();
    v69 = v1568[66];
    sub_1C440741C();
    sub_1C447E970(v339, v340);
    sub_1C441FE54();
    sub_1C447E970(v335, v341);
    sub_1C4EFF1C8();
    v342 = sub_1C49E18D8();
    sub_1C440BAA8(v342, v332, 1, v343);
    v344 = *(v337 + 32);
    v345 = sub_1C448E070();
    sub_1C4482F3C(v345, v346);
    sub_1C440E538();
    v347 = sub_1C44333A0();
    sub_1C4472068(v347, v348);
    goto LABEL_14;
  }

  if (qword_1EDDFD068 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD070);
  v350 = v27 && v349 == v26;
  if (v350 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C49E1CB0();
    v351 = *(v12 + 1296);
    v1573 = *(v12 + 1240);
    v1588 = *(v12 + 1520);
    v352 = *(v12 + 1016);
    v353 = *(v12 + 968);
    v1605 = *(v12 + 1024);
    v1623 = v353;
    v354 = *(v12 + 960);
    v355 = *(v12 + 544);
    v356 = *(v12 + 536);
    sub_1C440741C();
    sub_1C447E970(v357, v358);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v359 = swift_allocObject();
    *(v12 + 1728) = v359;
    sub_1C4432614(v359, xmmword_1C4F140B0);
    v361 = v360;
    sub_1C4471988(v355, v351);
    sub_1C4EFD4C8();
    sub_1C441346C();
    v362 = v356;
    v364 = v363;
    sub_1C4471988(v362, v14);
    v365 = type metadata accessor for Blocker();
    *(v12 + 1736) = v365;
    v359[3].n128_u64[1] = v365;
    sub_1C4403494();
    v368 = sub_1C4471C58(v366, v367);
    *(v12 + 1744) = v368;
    v359[4].n128_u64[0] = v368;
    v369 = sub_1C4422F90(&v359[2]);
    sub_1C440AEDC();
    v370 = sub_1C43FD018();
    sub_1C4471988(v370, v371);
    v372 = v365[5];
    v373 = *(v353 + 16);
    v353 += 16;
    *(v12 + 1752) = v373;
    *(v12 + 1760) = v353 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v374 = sub_1C442F958(v372);
    v375(v374);
    sub_1C448875C();
    v376 = sub_1C442EC40();
    sub_1C4471988(v376, v377);
    v378 = *(v351 + *(v1605 + 32));
    sub_1C448177C();
    sub_1C49E1C10(v379);
    v380 = sub_1C4409D98();
    sub_1C44829A4(v380, v381);
    sub_1C49E1D08();
    *(v12 + 1768) = *(v1623 + 8);
    sub_1C44F0924();
    *(v12 + 1776) = v382;
    v383 = sub_1C441E0A4();
    v384(v383);
    *(v369 + v365[10]) = v361;
    sub_1C441680C(v365[11]);
    sub_1C441FE54();
    v1522 = v385;
    sub_1C447E970(v351, v386);
    sub_1C4457910();
    sub_1C49E1B54();
    sub_1C4EFD4C8();
    v387 = type metadata accessor for PairGenerator();
    *(v364 + 1784) = v387;
    sub_1C44289F0(v387);
    sub_1C43FDB14();
    v390 = sub_1C4471C58(v388, v389);
    *(v364 + 1792) = v390;
    v391 = sub_1C49E1A18(v390);
    v392 = sub_1C441EDE4(v391);
    sub_1C4471988(v392, v393);
    v394 = v387[5];
    v395 = sub_1C4488240();
    sub_1C4472068(v395, v396);
    v397 = v387[6];
    *(v364 + 1800) = *(v1623 + 32);
    sub_1C49E19A4();
    *(v364 + 1808) = v398;
    v400 = sub_1C44BBCAC(v399);
    v401(v400);
    *(v1605 + v387[7]) = v1648;
    sub_1C445136C(v1605);
    sub_1C447E970(v351, v1522);
    v402 = sub_1C4414658();
    sub_1C4471988(v402, v1573);
    sub_1C4471988(v361, v1588);
    *(v364 + 2570) = v1648;
    *(v353 + 136) = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v405 = sub_1C4471C58(v403, v404);
    sub_1C4488B14(v405);
    swift_task_alloc();
    sub_1C449F444();
    *(v364 + 1816) = v406;
    *v406 = v407;
    v406[1] = sub_1C49D5630;
    v408 = *(v364 + 1520);
    v409 = *(v364 + 1240);
    goto LABEL_25;
  }

  if (qword_1EDDFD110 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD118);
  v411 = v27 && v410 == v26;
  v1473 = (v12 + 536);
  if (v411 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C441E0B0();
    v412 = *(v12 + 1576);
    v413 = *(v12 + 1296);
    v1533 = *(v12 + 1216);
    v1542 = *(v12 + 1496);
    sub_1C447CFFC();
    v1554 = v414;
    v415 = *(v12 + 544);
    v416 = *(v12 + 536);
    v1589 = v416;
    sub_1C440741C();
    v1606 = v417;
    v1624 = v415;
    sub_1C447E970(v418, v419);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v420 = swift_allocObject();
    *(v12 + 1832) = v420;
    sub_1C4432614(v420, xmmword_1C4F17CF0);
    v333 = v12;
    sub_1C4471988(v415, v413);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4418B34();
    sub_1C4471988(v416, v412);
    v421 = type metadata accessor for Blocker();
    *(v12 + 1840) = v421;
    v420[3].n128_u64[1] = v421;
    sub_1C4403494();
    v424 = sub_1C4471C58(v422, v423);
    *(v12 + 1848) = v424;
    v1500 = v424;
    v420[4].n128_u64[0] = v424;
    sub_1C4422F90(&v420[2]);
    sub_1C440AEDC();
    v425 = sub_1C4404084();
    sub_1C4471988(v425, v426);
    v427 = *(v421 + 20);
    *(v12 + 1856) = *(v14 + 16);
    *(v12 + 1864) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v428 = sub_1C4459BC0(v427);
    v1507 = v429;
    v429(v428);
    v430 = *(v421 + 24);
    v431 = sub_1C444C020();
    sub_1C4471988(v431, v432);
    sub_1C44691D4();
    sub_1C4471988(v413, v433);
    v434 = *&v413[*(v1638 + 32)];
    sub_1C448177C();
    sub_1C442A620(v435);
    sub_1C44829A4(v412, v413);
    sub_1C447E970(v412, v1606);
    v436 = *(v1648 + 8);
    *(v12 + 1872) = v436;
    *(v12 + 1880) = (v1648 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1485 = v436;
    v436(v25, v1554);
    sub_1C49E1A48();
    v437 = *&v413[*(v1638 + 28)];

    sub_1C441FE54();
    v1526 = v438;
    sub_1C447E970(v413, v439);
    sub_1C49E1C4C();
    sub_1C4471988(v1624, v413);
    sub_1C4471988(v1589, v412);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v440 = type metadata accessor for PairGenerator();
    *(v12 + 1888) = v440;
    v420[6].n128_u64[0] = v440;
    sub_1C43FDB14();
    v443 = sub_1C4471C58(v441, v442);
    *(v12 + 1896) = v443;
    v1476 = v443;
    v420[6].n128_u64[1] = v443;
    v444 = sub_1C4422F90(&v420[4].n128_i64[1]);
    sub_1C4450770(v444, v440[8]);
    v445 = sub_1C4404084();
    sub_1C4471988(v445, v446);
    v447 = v440[5];
    v448 = sub_1C444C020();
    v449 = v333;
    sub_1C4472068(v448, v450);
    v451 = v440[6];
    v333[238] = *(v1648 + 32);
    v333[239] = (v1648 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v452 = sub_1C4459BC0(v451);
    v1607 = v453;
    v453(v452);
    *(v444 + v440[7]) = v1631;
    sub_1C49E1D28();
    sub_1C447E970(v413, v1526);
    *(v444 + v440[9]) = v25;
    sub_1C4471988(v1624, v1533);
    sub_1C4471988(v1589, v1542);
    LOBYTE(v1655[0]) = v1631;
    v420[8].n128_u64[1] = type metadata accessor for LocationMatcher();
    sub_1C441CC08();
    v420[9].n128_u64[0] = sub_1C4471C58(v454, v455);
    v456 = sub_1C4422F90(&v420[7]);
    sub_1C4466D44(v456);
    if (!v413)
    {
      v1633 = *(v333 + 2573);
      v457 = v333[197];
      v458 = v333[162];
      v1543 = v333[151];
      v1555 = v333[186];
      v459 = v333[127];
      v460 = v333[120];
      v461 = v449[67];
      v1534 = v449[68];
      sub_1C440F91C();
      sub_1C4471988(v462, v458);
      sub_1C4EFD4C8();
      sub_1C441346C();
      sub_1C4471988(v461, v457);
      v420[11].n128_u64[0] = v421;
      v420[11].n128_u64[1] = v1500;
      sub_1C4422F90(&v420[9].n128_i64[1]);
      sub_1C440AEDC();
      v463 = sub_1C440C60C();
      sub_1C4471988(v463, v464);
      v465 = sub_1C49E19F8();
      v1507(v465);
      v466 = sub_1C44B9200();
      sub_1C4471988(v466, v467);
      sub_1C4426418();
      sub_1C4471988(v458, v468);
      v469 = *(v458 + *(v1638 + 32));
      sub_1C448177C();
      v471 = sub_1C49E1C88(v470);
      v472 = sub_1C44829A4(v471, v458);
      sub_1C440741C();
      sub_1C447E970(v457, v473);
      v1485(v459, v460);
      sub_1C44A837C();
      v475 = *(v458 + v474);

      sub_1C441FE54();
      v1515 = v476;
      sub_1C447E970(v458, v477);
      sub_1C442A738();
      sub_1C4471988(v1534, v458);
      v478 = sub_1C49E1C74();
      sub_1C4471988(v478, v479);
      sub_1C4EFD4C8();
      v420[13].n128_u64[1] = v440;
      v420[14].n128_u64[0] = v1476;
      v480 = sub_1C4422F90(&v420[12]);
      v481 = sub_1C441D310(v480, v440[8]);
      sub_1C44F0C40(v481);
      v482 = v440[5];
      v483 = sub_1C44AB274();
      sub_1C4472068(v483, v484);
      v485 = sub_1C447CC40(v440[6]);
      v1607(v485);
      *(v480 + v440[7]) = v1633;
      sub_1C49E1988(v1638);
      sub_1C447E970(v458, v1515);
      *(v480 + v440[9]) = v459;
      v486 = sub_1C443E3A8();
      sub_1C4471988(v486, v487);
      sub_1C4471988(v472, v1555);
      *(v449 + 2569) = v1633;
      v420[16].n128_u64[0] = type metadata accessor for PeopleMatcher();
      sub_1C43FF3E0();
      v490 = sub_1C4471C58(v488, v489);
      sub_1C49E1DE0(v490);
      v491 = swift_task_alloc();
      v449[240] = v491;
      *v491 = v449;
      v491[1] = sub_1C49D64A8;
      v492 = v449[186];
      v493 = v449[151];
      goto LABEL_25;
    }

    goto LABEL_55;
  }

  if (qword_1EDDFED08 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFED10);
  v495 = v27 && v494 == v26;
  if (v495 || (sub_1C44306B4() & 1) != 0)
  {
    goto LABEL_71;
  }

  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD2A8);
  v497 = v27 && v496 == v26;
  if (v497 || (sub_1C44306B4() & 1) != 0)
  {
LABEL_71:
    sub_1C441E0B0();
    v498 = *(v12 + 1576);
    v413 = *(v12 + 1296);
    v1544 = *(v12 + 1192);
    v1556 = *(v12 + 1472);
    sub_1C447CFFC();
    v1574 = v499;
    v500 = *(v12 + 544);
    v1535 = v500;
    v501 = *(v12 + 536);
    sub_1C440741C();
    v1608 = v501;
    v1625 = v502;
    sub_1C447E970(v503, v504);
    *(v12 + 1936) = sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v420 = swift_allocObject();
    *(v12 + 1944) = v420;
    sub_1C4432614(v420, xmmword_1C4F17D00);
    v505 = v12;
    sub_1C4471988(v500, v413);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4418B34();
    sub_1C4471988(v501, v498);
    v506 = type metadata accessor for Blocker();
    *(v12 + 1952) = v506;
    v420[3].n128_u64[1] = v506;
    sub_1C4403494();
    v509 = sub_1C4471C58(v507, v508);
    *(v12 + 1960) = v509;
    v1501 = v509;
    v420[4].n128_u64[0] = v509;
    sub_1C4422F90(&v420[2]);
    sub_1C440AEDC();
    v510 = sub_1C4404084();
    sub_1C4471988(v510, v511);
    v512 = *(v506 + 20);
    *(v12 + 1968) = *(v14 + 16);
    *(v12 + 1976) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v513 = sub_1C4459BC0(v512);
    v1508 = v514;
    v514(v513);
    v515 = *(v506 + 24);
    v516 = sub_1C44EB8C0();
    sub_1C4471988(v516, v517);
    sub_1C44691D4();
    sub_1C4471988(v413, v518);
    v519 = *&v413[*(v1638 + 32)];
    sub_1C448177C();
    sub_1C442A620(v520);
    sub_1C44829A4(v498, v413);
    sub_1C447E970(v498, v1625);
    v521 = *(v1648 + 8);
    *(v12 + 1984) = v521;
    *(v12 + 1992) = (v1648 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1486 = v521;
    v521(v25, v1574);
    sub_1C49E1A48();
    v522 = *&v413[*(v1638 + 28)];

    sub_1C441FE54();
    v1527 = v523;
    sub_1C447E970(v413, v524);
    sub_1C49E1C4C();
    v525 = sub_1C4422A18();
    sub_1C4471988(v525, v526);
    sub_1C4471988(v1608, v498);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v527 = type metadata accessor for PairGenerator();
    *(v12 + 2000) = v527;
    v420[6].n128_u64[0] = v527;
    sub_1C43FDB14();
    v530 = sub_1C4471C58(v528, v529);
    *(v12 + 2008) = v530;
    v1477 = v530;
    v420[6].n128_u64[1] = v530;
    v531 = sub_1C4422F90(&v420[4].n128_i64[1]);
    sub_1C4450770(v531, v527[8]);
    v532 = sub_1C4404084();
    sub_1C4471988(v532, v533);
    v534 = v527[5];
    v535 = sub_1C44EB8C0();
    sub_1C4472068(v535, v536);
    v537 = v527[6];
    *(v505 + 2016) = *(v1648 + 32);
    v333 = v505;
    *(v505 + 2024) = (v1648 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v538 = sub_1C4459BC0(v537);
    v1626 = v539;
    v539(v538);
    *(v531 + v527[7]) = v1631;
    sub_1C49E1D28();
    sub_1C447E970(v413, v1527);
    *(v531 + v527[9]) = v25;
    sub_1C44805D4(v1535);
    sub_1C4471988(v1608, v1556);
    LOBYTE(v1655[0]) = v1631;
    v420[8].n128_u64[1] = type metadata accessor for LocationMatcher();
    sub_1C441CC08();
    v420[9].n128_u64[0] = sub_1C4471C58(v540, v541);
    v542 = sub_1C4422F90(&v420[7]);
    sub_1C4466D44(v542);
    if (!v413)
    {
      v1634 = *(v505 + 2573);
      v543 = *(v505 + 1576);
      v544 = *(v505 + 1296);
      v1545 = *(v505 + 1184);
      v1557 = *(v505 + 1464);
      v545 = *(v505 + 1016);
      v546 = *(v505 + 960);
      v1528 = *(v505 + 536);
      v1536 = *(v505 + 544);
      sub_1C440F91C();
      sub_1C4471988(v547, v544);
      sub_1C4EFD4C8();
      sub_1C441346C();
      sub_1C4471988(v1528, v543);
      v420[11].n128_u64[0] = v506;
      v420[11].n128_u64[1] = v1501;
      sub_1C4422F90(&v420[9].n128_i64[1]);
      sub_1C440AEDC();
      v548 = sub_1C43FCE84();
      sub_1C4471988(v548, v549);
      v550 = sub_1C49E19F8();
      v1508(v550);
      v551 = sub_1C44B9200();
      sub_1C4471988(v551, v552);
      sub_1C4426418();
      sub_1C4471988(v544, v553);
      v554 = *(v544 + *(v1638 + 32));
      sub_1C448177C();
      v556 = sub_1C49E1C88(v555);
      v557 = sub_1C44829A4(v556, v544);
      sub_1C440741C();
      sub_1C447E970(v543, v558);
      v1486(v545, v546);
      sub_1C44A837C();
      v560 = *(v544 + v559);

      sub_1C441FE54();
      v1516 = v561;
      sub_1C447E970(v544, v562);
      sub_1C442A738();
      sub_1C4471988(v1536, v544);
      v563 = sub_1C49E1C74();
      sub_1C4471988(v563, v564);
      sub_1C4EFD4C8();
      v420[13].n128_u64[1] = v527;
      v420[14].n128_u64[0] = v1477;
      v565 = sub_1C4422F90(&v420[12]);
      sub_1C4450770(v565, v527[8]);
      sub_1C44F0C40(v544);
      v566 = v527[5];
      v567 = sub_1C44AB274();
      sub_1C4472068(v567, v568);
      v569 = sub_1C447CC40(v527[6]);
      v1626(v569);
      *(v565 + v527[7]) = v1634;
      v570 = *(v544 + *(v1638 + 28));

      sub_1C447E970(v544, v1516);
      *(v565 + v527[9]) = v570;
      v571 = sub_1C443E3A8();
      sub_1C4471988(v571, v572);
      sub_1C4471988(v557, v1557);
      *(v505 + 2568) = v1634;
      v420[16].n128_u64[0] = type metadata accessor for PeopleMatcher();
      sub_1C43FF3E0();
      v575 = sub_1C4471C58(v573, v574);
      sub_1C49E1DE0(v575);
      v576 = swift_task_alloc();
      *(v505 + 2032) = v576;
      *v576 = v505;
      v576[1] = sub_1C49D7088;
      v577 = *(v505 + 1464);
      v578 = *(v505 + 1184);
      goto LABEL_25;
    }

LABEL_55:
    sub_1C47C41F8(&v420[7]);
    sub_1C44584F4();
LABEL_9:
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v59 = sub_1C4F00978();
    sub_1C43FCEE8(v59, qword_1EDE2DE10);
    v60 = sub_1C4F01CD8();
    v61 = v413;
    v62 = sub_1C4F00968();

    if (os_log_type_enabled(v62, v60))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v1655[0] = v64;
      *v63 = 136315138;
      v333[64] = v413;
      v65 = v413;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v66 = sub_1C4F01198();
      v68 = sub_1C441D828(v66, v67, v1655);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1C43F8000, v62, v60, "Linker could not construct children, creating empty list due to: %s", v63, 0xCu);
      sub_1C440962C(v64);
      sub_1C43FEA20();
      sub_1C43FBE2C();
    }

    v20 = v333[199];
    v1650 = *v1473;
    v69 = v333[66];

    v70 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  if (qword_1EDDFD040 != -1)
  {
    swift_once();
  }

  v579 = v12;
  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD048);
  v581 = v27 && v580 == v26;
  if (v581 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C4F024A8();
    sub_1C43FEA3C();
    return;
  }

  if (qword_1EDDFD130 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD138);
  v583 = v27 && v582 == v26;
  if (v583 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C4433D90();
    v584 = *(v12 + 1296);
    v1575 = *(v12 + 1448);
    v1590 = *(v12 + 1024);
    v585 = *(v12 + 1016);
    v586 = *(v12 + 968);
    v587 = *(v12 + 960);
    v588 = *(v12 + 544);
    v1558 = *(v12 + 1168);
    v1609 = *(v12 + 536);
    sub_1C440741C();
    sub_1C447E970(v589, v590);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v591 = swift_allocObject();
    *(v12 + 2048) = v591;
    sub_1C4432614(v591, xmmword_1C4F140B0);
    v592 = sub_1C44CD058();
    sub_1C4471988(v592, v593);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C49E1E28();
    v594 = type metadata accessor for Blocker();
    *(v12 + 2056) = v594;
    v591[3].n128_u64[1] = v594;
    sub_1C4403494();
    v597 = sub_1C4471C58(v595, v596);
    *(v12 + 2064) = v597;
    sub_1C4495D4C(v597);
    sub_1C440AEDC();
    v598 = sub_1C43FD018();
    sub_1C4471988(v598, v599);
    sub_1C442AC28();
    *(v20 + 2072) = v600;
    sub_1C44CD914();
    *(v20 + 2080) = v601;
    v603 = sub_1C442F958(v602);
    v604(v603);
    sub_1C4485D80();
    sub_1C4423790();
    sub_1C4482D00();
    v606 = *(v584 + v605);
    sub_1C448177C();
    sub_1C446202C(v607);
    sub_1C4488834();
    sub_1C49E1C04();
    *(v20 + 2088) = v608;
    sub_1C44F0924();
    *(v20 + 2096) = v609;
    v610 = sub_1C43FD2BC();
    v611(v610);
    sub_1C4402414();
    sub_1C441FE54();
    sub_1C447E970(v584, v612);
    sub_1C443F280();
    sub_1C4485BA4();
    sub_1C49E1DC8();
    v613 = type metadata accessor for PairGenerator();
    *(v20 + 2104) = v613;
    sub_1C44289F0(v613);
    sub_1C43FDB14();
    v616 = sub_1C4471C58(v614, v615);
    *(v20 + 2112) = v616;
    v617 = sub_1C49E1A18(v616);
    v618 = sub_1C441EDE4(v617);
    sub_1C49E1DF8(v618, v619);
    sub_1C447CE10();
    sub_1C441D730();
    *(v20 + 2120) = v620;
    sub_1C49E19A4();
    *(v20 + 2128) = v621;
    v623 = sub_1C44BBCAC(v622);
    v624(v623);
    sub_1C442F2B8();
    sub_1C4473D84();
    v625 = sub_1C4414658();
    sub_1C49E1E10(v625);
    sub_1C445AAE8();
    *(v20 + 2567) = v587;
    v591[8].n128_u64[1] = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v628 = sub_1C4471C58(v626, v627);
    sub_1C4488B14(v628);
    swift_task_alloc();
    sub_1C449F444();
    *(v20 + 2136) = v629;
    *v629 = v630;
    v629[1] = sub_1C49D8924;
    v631 = *(v20 + 1448);
    v632 = *(v20 + 1168);
    goto LABEL_25;
  }

  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD180);
  v634 = v27 && v633 == v26;
  if (v634 || (sub_1C44306B4() & 1) != 0)
  {
    goto LABEL_110;
  }

  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD0B0);
  v636 = v27 && v635 == v26;
  if (v636 || (sub_1C44306B4() & 1) != 0)
  {
    goto LABEL_110;
  }

  if (qword_1EDDFD218 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD220);
  v638 = v27 && v637 == v26;
  if (v638 || (sub_1C44306B4() & 1) != 0)
  {
LABEL_110:
    sub_1C49E1A6C();
    v639 = *(v26 + 1296);
    v1576 = *(v26 + 1152);
    v1591 = *(v26 + 1432);
    v1610 = *(v26 + 1024);
    v640 = *(v26 + 1016);
    v641 = *(v26 + 968);
    v642 = *(v26 + 960);
    v643 = *(v26 + 536);
    v1559 = *(v26 + 544);
    sub_1C440741C();
    v1641 = v644;
    sub_1C447E970(v645, v646);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v647 = swift_allocObject();
    *(v26 + 2152) = v647;
    sub_1C4432614(v647, xmmword_1C4F0D480);
    v648 = sub_1C440C60C();
    sub_1C4471988(v648, v649);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C4471988(v643, v579);
    v650 = type metadata accessor for Blocker();
    v647[3].n128_u64[1] = v650;
    sub_1C4403494();
    v653 = sub_1C4471C58(v651, v652);
    sub_1C4495D4C(v653);
    sub_1C440AEDC();
    v654 = sub_1C43FD018();
    sub_1C4471988(v654, v655);
    v656 = *(v650 + 20);
    v657 = *(v641 + 16);
    sub_1C443E1E0();
    v658();
    sub_1C4482E1C();
    v659 = sub_1C442EC40();
    sub_1C4471988(v659, v660);
    v661 = *(v639 + *(v1610 + 32));
    sub_1C448177C();
    sub_1C49E1C10(v662);
    v663 = sub_1C43FD388();
    v665 = sub_1C44829A4(v663, v664);
    sub_1C447E970(v13, v1641);
    v666 = *(v641 + 8);
    v667 = sub_1C441E0A4();
    v668(v667);
    sub_1C44C0474();
    sub_1C441FE54();
    sub_1C447E970(v639, v669);
    sub_1C49E1910();
    sub_1C49E1B78();
    sub_1C4EFD4C8();
    v670 = type metadata accessor for PairGenerator();
    sub_1C44289F0(v670);
    sub_1C43FDB14();
    v673 = sub_1C4471C58(v671, v672);
    v674 = sub_1C49E1A18(v673);
    v675 = sub_1C4426CB8(v674, v670[8]);
    sub_1C4471988(v675, v674);
    sub_1C49E1B14(v670[5]);
    v676 = sub_1C49E1A30();
    v677(v676);
    *(v674 + v670[7]) = v1631;
    sub_1C445136C(v1610);
    sub_1C4473D84();
    sub_1C49E1AF0();
    sub_1C4471988(v642, v1591);
    *(v26 + 2566) = v1631;
    *(v665 + 136) = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v680 = sub_1C4471C58(v678, v679);
    sub_1C4488B14(v680);
    v681 = swift_task_alloc();
    *(v26 + 2160) = v681;
    *v681 = v26;
    v681[1] = sub_1C4488BD4;
    v682 = *(v26 + 1432);
    v683 = *(v26 + 1152);
    goto LABEL_25;
  }

  if (qword_1EDDFED38 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD0F0);
  v685 = v27 && v684 == v26;
  if (v685 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C4433D90();
    v686 = *(v12 + 1296);
    v1577 = *(v12 + 1416);
    v1592 = *(v12 + 1024);
    v687 = *(v12 + 1016);
    v688 = *(v12 + 968);
    v689 = *(v12 + 960);
    v690 = *(v12 + 544);
    v1560 = *(v12 + 1136);
    v1611 = *(v12 + 536);
    sub_1C440741C();
    sub_1C447E970(v691, v692);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v693 = sub_1C49E1AD8();
    *(v12 + 2176) = v693;
    sub_1C4432614(v693, xmmword_1C4F0F830);
    v694 = sub_1C44CD058();
    sub_1C4471988(v694, v695);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C49E1E28();
    v696 = type metadata accessor for Blocker();
    *(v12 + 2184) = v696;
    v693[3].n128_u64[1] = v696;
    sub_1C4403494();
    v699 = sub_1C4471C58(v697, v698);
    *(v12 + 2192) = v699;
    sub_1C4495D4C(v699);
    sub_1C440AEDC();
    v700 = sub_1C43FD018();
    sub_1C4471988(v700, v701);
    sub_1C442AC28();
    *(v20 + 2200) = v702;
    sub_1C44CD914();
    *(v20 + 2208) = v703;
    v705 = sub_1C442F958(v704);
    v706(v705);
    sub_1C4485D80();
    sub_1C4423790();
    sub_1C4482D00();
    v708 = *(v686 + v707);
    sub_1C448177C();
    sub_1C446202C(v709);
    sub_1C4488834();
    sub_1C49E1C04();
    *(v20 + 2216) = v710;
    sub_1C44F0924();
    *(v20 + 2224) = v711;
    v712 = sub_1C43FD2BC();
    v713(v712);
    sub_1C4402414();
    sub_1C441FE54();
    sub_1C447E970(v686, v714);
    sub_1C443F280();
    sub_1C4485BA4();
    sub_1C49E1DC8();
    v715 = type metadata accessor for PairGenerator();
    *(v20 + 2232) = v715;
    sub_1C44289F0(v715);
    sub_1C43FDB14();
    v718 = sub_1C4471C58(v716, v717);
    *(v20 + 2240) = v718;
    v719 = sub_1C49E1A18(v718);
    v720 = sub_1C441EDE4(v719);
    sub_1C49E1DF8(v720, v721);
    sub_1C447CE10();
    sub_1C441D730();
    *(v20 + 2248) = v722;
    sub_1C49E19A4();
    *(v20 + 2256) = v723;
    v725 = sub_1C44BBCAC(v724);
    v726(v725);
    sub_1C442F2B8();
    sub_1C4473D84();
    v727 = sub_1C4414658();
    sub_1C49E1E10(v727);
    sub_1C445AAE8();
    *(v20 + 2565) = v689;
    v693[8].n128_u64[1] = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v730 = sub_1C4471C58(v728, v729);
    sub_1C4488B14(v730);
    swift_task_alloc();
    sub_1C449F444();
    *(v20 + 2264) = v731;
    *v731 = v732;
    v731[1] = sub_1C49D9504;
    v733 = *(v20 + 1416);
    v734 = *(v20 + 1136);
    goto LABEL_25;
  }

  if (qword_1EDDFD150 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD158);
  v736 = v27 && v735 == v26;
  if (v736 || (sub_1C44306B4() & 1) != 0)
  {
    v1561 = *(v12 + 2573);
    v737 = *(v12 + 1584);
    v738 = *(v12 + 1576);
    v1468 = *(v12 + 1400);
    v739 = *(v12 + 1296);
    v1464 = *(v12 + 1120);
    v740 = *(v12 + 1016);
    v741 = *(v12 + 968);
    v1635 = *(v12 + 960);
    v742 = *(v12 + 544);
    v1546 = v742;
    v743 = *(v12 + 536);
    v1578 = v743;
    v1593 = *(v12 + 1024);
    sub_1C440741C();
    v1642 = v744;
    sub_1C447E970(v745, v746);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v747 = swift_allocObject();
    *(v12 + 2280) = v747;
    sub_1C4432614(v747, xmmword_1C4F140B0);
    sub_1C4471988(v742, v739);
    sub_1C4EFCF28();
    sub_1C445E900();
    sub_1C4471988(v743, v738);
    v748 = type metadata accessor for Blocker();
    v747[3].n128_u64[1] = v748;
    sub_1C4403494();
    v1487 = sub_1C4471C58(v749, v750);
    v751 = sub_1C4495D4C(v1487);
    sub_1C440AEDC();
    v752 = sub_1C4401D48();
    sub_1C4471988(v752, v753);
    v1502 = *(v741 + 16);
    v754 = sub_1C4459BC0(v748[5]);
    v755(v754);
    v756 = v748[6];
    v757 = sub_1C444C020();
    sub_1C4471988(v757, v758);
    *(v751 + v748[7]) = 0;
    v759 = v748[8];
    v760 = sub_1C44EB8C0();
    sub_1C4471988(v760, v761);
    v762 = *(v739 + *(v1593 + 32));
    sub_1C448177C();
    *(v751 + v748[9]) = v763;
    v764 = sub_1C44829A4(v738, v739);
    sub_1C447E970(v738, v1642);
    v1494 = *(v741 + 8);
    v765 = sub_1C4410428();
    v766(v765);
    *(v751 + v748[10]) = v764;
    *(v751 + v748[11]) = v1561;
    sub_1C49E1E58(*(v1593 + 28));
    sub_1C441FE54();
    v1529 = v767;
    sub_1C447E970(v739, v768);
    *(v751 + v748[12]) = v764;
    *(v751 + v748[13]) = 0;
    sub_1C4471988(v1546, v739);
    v769 = v738;
    v1457 = v738;
    sub_1C4471988(v1578, v738);
    sub_1C4EFCF28();
    v770 = type metadata accessor for PairGenerator();
    sub_1C44289F0(v770);
    sub_1C43FDB14();
    v1478 = sub_1C4471C58(v771, v772);
    v773 = sub_1C49E1A18(v1478);
    v774 = sub_1C440CCE8(v773, v770[8]);
    sub_1C4471988(v774, v775);
    sub_1C4472068(v769, v773 + v770[5]);
    v776 = v770[6];
    sub_1C4482EA0();
    v1523 = v777;
    v779 = sub_1C4459BC0(v778);
    v780(v779);
    *(v773 + v770[7]) = v1561;
    sub_1C4413F50();
    v782 = *(v739 + v781);

    sub_1C447E970(v739, v1529);
    *(v773 + v770[9]) = v782;
    sub_1C4471988(v1546, v739);
    sub_1C4471988(v1578, v1457);
    sub_1C4EFCF28();
    v783 = type metadata accessor for PassthroughMatcher();
    v1531[17] = v783;
    sub_1C442FF54();
    v786 = sub_1C4471C58(v784, v785);
    v787 = sub_1C4488B14(v786);
    sub_1C4472068(v1457, v787);
    *(v787 + v783[5]) = v1561;
    sub_1C4472068(v739, v787 + v783[6]);
    v1523(v787 + v783[7], v740, v1635);
    sub_1C4471988(v1546, v739);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4471988(v1578, v1457);
    v1531[22] = v748;
    v1531[23] = v1487;
    v788 = sub_1C4422F90(v1531 + 19);
    v789 = sub_1C4401D48();
    sub_1C4471988(v789, v790);
    v791 = sub_1C4459BC0(v748[5]);
    v1502(v791);
    sub_1C4471988(v1457, v788 + v748[6]);
    *(v788 + v748[7]) = 0;
    v792 = v748[8];
    v793 = sub_1C44EB8C0();
    sub_1C4471988(v793, v794);
    sub_1C4482D00();
    v796 = *(v739 + v795);
    sub_1C448177C();
    *(v788 + v748[9]) = v797;
    v798 = sub_1C445852C();
    v800 = sub_1C44829A4(v798, v799);
    sub_1C447E970(v1457, v1642);
    v1494(v740, v1635);
    *(v788 + v748[10]) = v800;
    *(v788 + v748[11]) = v1561;
    v801 = *(v739 + *(v1635 + 28));

    sub_1C447E970(v739, v1529);
    *(v788 + v748[12]) = v801;
    *(v788 + v748[13]) = 0;
    sub_1C4471988(v1546, v739);
    v413 = v1578;
    sub_1C4471988(v1578, v1457);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1531[27] = v770;
    v1531[28] = v1478;
    v802 = sub_1C4422F90(v1531 + 24);
    v803 = sub_1C440CCE8(v802, v770[8]);
    sub_1C4471988(v803, v804);
    sub_1C49E1B14(v770[5]);
    v1523(v802 + v770[6], v740, v1635);
    *(v802 + v770[7]) = v1561;
    sub_1C4413F50();
    v806 = *(v739 + v805);

    sub_1C447E970(v739, v1529);
    v1643 = v770;
    *(v802 + v770[9]) = v806;
    sub_1C44A3AB8();
    sub_1C4471988(v807, v808);
    sub_1C4471988(v1578, v1468);
    LOBYTE(v1655[0]) = v1561;
    v1531[32] = type metadata accessor for LocationMatcher();
    sub_1C441CC08();
    v1531[33] = sub_1C4471C58(v809, v810);
    v811 = sub_1C4422F90(v1531 + 29);
    sub_1C4466D44(v811);
    if (!v1578)
    {
      v1627 = *(v579 + 2573);
      v812 = *(v579 + 1576);
      v1612 = *(v579 + 1392);
      v813 = *(v579 + 1296);
      v1579 = *(v579 + 1112);
      v814 = *(v579 + 1016);
      v815 = *(v579 + 960);
      v816 = *(v579 + 536);
      v1547 = v816;
      v1562 = *(v579 + 544);
      sub_1C440D610();
      sub_1C4471988(v817, v813);
      sub_1C4EFD4C8();
      sub_1C441346C();
      sub_1C4471988(v816, v812);
      v1531[37] = v748;
      v1531[38] = v1487;
      v818 = sub_1C4422F90(v1531 + 34);
      sub_1C440AEDC();
      v819 = sub_1C43FCE84();
      sub_1C4471988(v819, v820);
      v821 = sub_1C49E19F8();
      v1502(v821);
      v822 = sub_1C44B9200();
      sub_1C4471988(v822, v823);
      sub_1C4426418();
      sub_1C4471988(v813, v824);
      v825 = *(v813 + *(v1593 + 32));
      sub_1C448177C();
      *(v818 + v748[9]) = v826;
      v827 = sub_1C44829A4(v812, v813);
      sub_1C440741C();
      sub_1C447E970(v812, v828);
      v1494(v814, v815);
      *(v818 + v748[10]) = v827;
      *(v818 + v748[11]) = v1627;
      v829 = *(v813 + *(v1593 + 28));

      sub_1C441FE54();
      v1509 = v830;
      sub_1C447E970(v813, v831);
      sub_1C442A738();
      sub_1C4471988(v1562, v813);
      sub_1C49E1E40(v1547);
      sub_1C4EFD4C8();
      v1531[42] = v1643;
      v1531[43] = v1478;
      v832 = sub_1C4422F90(v1531 + 39);
      sub_1C4450770(v832, v1643[8]);
      sub_1C44F0C40(v813);
      v833 = v1643[5];
      v834 = sub_1C44AB274();
      sub_1C4472068(v834, v835);
      v836 = sub_1C447CC40(v1643[6]);
      (v1523)(v836);
      *(v832 + v1643[7]) = v1627;
      sub_1C4413F50();
      v838 = *(v813 + v837);

      sub_1C447E970(v813, v1509);
      *(v832 + v1643[9]) = v838;
      sub_1C4471988(v1562, v1579);
      sub_1C4471988(v1547, v1612);
      *(v579 + 2564) = v1627;
      v1531[47] = type metadata accessor for PeopleMatcher();
      sub_1C43FF3E0();
      v1531[48] = sub_1C4471C58(v839, v840);
      sub_1C4422F90(v1531 + 44);
      v841 = swift_task_alloc();
      *(v579 + 2288) = v841;
      *v841 = v579;
      v841[1] = sub_1C49D9EF8;
      v842 = *(v579 + 1392);
      v843 = *(v579 + 1112);
      goto LABEL_25;
    }

    sub_1C47C41F8(v1531 + 29);
    sub_1C440962C(v1531 + 24);
    sub_1C440962C(v1531 + 19);
    sub_1C440962C(v1531 + 14);
    sub_1C44584F4();
    v333 = v579;
    goto LABEL_9;
  }

  if (qword_1EDDFD2F0 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD2F8);
  v845 = v27 && v844 == v26;
  if (v845 || (sub_1C44306B4() & 1) != 0)
  {
    v1548 = *(v12 + 2573);
    v846 = *(v12 + 1584);
    v847 = *(v12 + 1576);
    v1488 = *(v12 + 1376);
    v848 = *(v12 + 1296);
    v1469 = *(v12 + 1096);
    v849 = *(v12 + 1016);
    v850 = *(v12 + 968);
    v1628 = *(v12 + 960);
    v1479 = *(v12 + 808);
    v1510 = *(v12 + 720);
    v1495 = *(v12 + 856);
    v1503 = *(v12 + 592);
    v851 = *(v12 + 544);
    v1594 = *(v12 + 1024);
    v1613 = v851;
    v1580 = *(v12 + 536);
    sub_1C440741C();
    v1644 = v853;
    v1653 = v852;
    sub_1C447E970(v854, v855);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v856 = sub_1C49E1AD8();
    sub_1C4432614(v856, xmmword_1C4F0F830);
    sub_1C4471988(v851, v848);
    sub_1C4EFD538();
    sub_1C4424D24();
    sub_1C4471988(v1580, v847);
    v857 = type metadata accessor for Blocker();
    v856[3].n128_u64[1] = v857;
    sub_1C4403494();
    v1465 = sub_1C4471C58(v858, v859);
    v1563 = v856;
    v856[4].n128_u64[0] = v1465;
    v860 = sub_1C4422F90(&v856[2]);
    sub_1C440AEDC();
    v861 = sub_1C4404084();
    sub_1C4471988(v861, v862);
    v1458 = *(v1653 + 16);
    v863 = sub_1C4459BC0(v857[5]);
    v864(v863);
    sub_1C445BC08();
    sub_1C4471988(v847, v865);
    sub_1C4422414();
    sub_1C4471988(v848, v866);
    v867 = *(v848 + *(v1594 + 32));
    sub_1C448177C();
    sub_1C49E1A84(v868);
    v869 = sub_1C44829A4(v847, v848);
    sub_1C447E970(v847, v1644);
    v1454 = *(v1653 + 8);
    v1454(v849, v1628);
    *(v860 + v857[10]) = v869;
    *(v860 + v857[11]) = v1548;
    v870 = *(v848 + *(v1594 + 28));

    sub_1C441FE54();
    v1537 = v871;
    sub_1C447E970(v848, v872);
    *(v860 + v857[12]) = v870;
    sub_1C4495410();
    sub_1C4471988(v1613, v848);
    sub_1C4471988(v1580, v847);
    v873 = v849;
    v1517 = v849;
    sub_1C4EFD538();
    v874 = type metadata accessor for PairGenerator();
    v856[6].n128_u64[0] = v874;
    v875 = v874;
    sub_1C43FDB14();
    v1451 = sub_1C4471C58(v876, v877);
    v856[6].n128_u64[1] = v1451;
    sub_1C4422F90(&v856[4].n128_i64[1]);
    sub_1C49E1BE4();
    v880 = sub_1C440CCE8(v878, v879);
    sub_1C4471988(v880, v881);
    v882 = v875[5];
    v883 = sub_1C444AD48();
    sub_1C4472068(v883, v884);
    v885 = v875[6];
    sub_1C4482EA0();
    v1449 = v886;
    v886(v860 + v887, v873, v1628);
    v1447 = v875;
    *(v860 + v875[7]) = v1548;
    sub_1C4413F50();
    sub_1C49E1E58(v888);
    sub_1C447E970(v848, v1537);
    *(v860 + v875[9]) = v1594;
    v889 = sub_1C43FD258();
    sub_1C4471988(v889, v890);
    v891 = v847;
    sub_1C49E1E40(v1580);
    v892 = type metadata accessor for SoftwareMatcher();
    v856[8].n128_u64[1] = v892;
    sub_1C43FC670();
    v856[9].n128_u64[0] = sub_1C4471C58(v893, v894);
    v895 = sub_1C4422F90(&v856[7]);
    sub_1C449AEEC(v895);
    sub_1C4EFD538();
    v896 = sub_1C4424948();
    sub_1C4472068(v896, v897);
    sub_1C4472068(v891, v895 + *(v892 + 20));
    *(v895 + *(v892 + 24)) = v1548;
    sub_1C4471988(v1613, v848);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v898 = sub_1C445852C();
    sub_1C4471988(v898, v899);
    v856[11].n128_u64[0] = v857;
    v856[11].n128_u64[1] = v1465;
    v900 = sub_1C4422F90(&v856[9].n128_i64[1]);
    v901 = sub_1C440BB4C();
    sub_1C4471988(v901, v902);
    v903 = sub_1C4459BC0(v857[5]);
    v1458(v903);
    sub_1C44D4544();
    sub_1C4471988(v891, v904);
    *(v900 + v857[7]) = 0;
    v905 = v857[8];
    v906 = sub_1C445BA88();
    sub_1C4471988(v906, v907);
    sub_1C49E1A60();
    sub_1C448177C();
    sub_1C447F854(v908);
    v909 = sub_1C4424948();
    v911 = sub_1C44829A4(v909, v910);
    sub_1C447E970(v891, v1644);
    v912 = sub_1C4410428();
    (v1454)(v912);
    *(v900 + v857[10]) = v911;
    *(v900 + v857[11]) = v1548;
    v913 = *(v848 + *(v1594 + 28));

    sub_1C447E970(v848, v1537);
    *(v900 + v857[12]) = v913;
    *(v900 + v857[13]) = 0;
    sub_1C4471988(v1613, v848);
    sub_1C4471988(v1580, v891);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v856[13].n128_u64[1] = v875;
    v856[14].n128_u64[0] = v1451;
    v914 = sub_1C4422F90(&v856[12]);
    sub_1C4441148(v914);
    v915 = sub_1C43FE99C();
    sub_1C4471988(v915, v916);
    v917 = v875[5];
    v918 = sub_1C44EB8C0();
    sub_1C4472068(v918, v919);
    v1449(v900 + v875[6], v1517, v1628);
    *(v900 + v875[7]) = v1548;
    sub_1C4413F50();
    v921 = *(v848 + v920);

    sub_1C447E970(v848, v1537);
    *(v900 + v1447[9]) = v921;
    v922 = type metadata accessor for OrganizationMatcher();
    v856[16].n128_u64[0] = v922;
    sub_1C445C1B8();
    v856[16].n128_u64[1] = sub_1C4471C58(v923, v924);
    v925 = sub_1C4422F90(&v856[14].n128_i64[1]);
    v926 = sub_1C4410CBC();
    sub_1C4471988(v926, v927);
    sub_1C4471988(v1580, v925 + v922[5]);
    *(v925 + v922[7]) = 1056964608;
    *(v925 + v922[6]) = v1548;
    sub_1C4471988(v1613, v1469);
    sub_1C44805D4(v1580);
    v856[18].n128_u64[1] = v1479;
    sub_1C44174EC();
    v856[19].n128_u64[0] = sub_1C4471C58(v928, v929);
    sub_1C4422F90(&v856[17]);
    v1495[v1479[6]] = 4;
    sub_1C4471988(v1469, v1495);
    sub_1C4471988(v1488, &v1495[v1479[5]]);
    v1495[v1479[7]] = v1548;
    v930 = sub_1C4EF9E48();
    sub_1C44102A4(v1503, v931, v932, v930);
    sub_1C448895C();
    if (v1495)
    {

      v933 = 1;
    }

    else
    {
      v933 = 0;
    }

    v333 = v579;
    v934 = *(v579 + 1376);
    v935 = *(v579 + 1096);
    v936 = *(v579 + 856);
    v937 = *(v579 + 808);
    v938 = *(v579 + 720);
LABEL_140:
    sub_1C49E19C8();
    v69 = *(v579 + 528);
    sub_1C440741C();
    sub_1C447E970(v939, v940);
    sub_1C441FE54();
    sub_1C447E970(v935, v941);
    sub_1C4EFF1C8();
    v942 = sub_1C49E18D8();
    sub_1C440BAA8(v942, v933, 1, v943);
    v944 = *(v937 + 32);
    v945 = sub_1C448E070();
    sub_1C4482F3C(v945, v946);
    sub_1C440E538();
    v947 = sub_1C44333A0();
LABEL_141:
    sub_1C4472068(v947, v948);
    v70 = v1563;
LABEL_14:
    sub_1C441FE54();
    sub_1C447E970(v71, v72);
    sub_1C440741C();
    sub_1C447E970(v73, v74);
    *(v69 + *(v20 + 24)) = v70;
    v75 = v333[198];
    v76 = v333[197];
    v77 = v333[196];
    v78 = v333[195];
    v79 = v333[194];
    v80 = v333[193];
    v81 = v333;
    v82 = v333[192];
    v83 = v81[191];
    v84 = v81[190];
    v85 = v81[189];
    v86 = v81[188];
    v87 = v81[187];
    sub_1C44359B4();
    v1466 = v81[88];
    v1472 = v81[87];
    v1474 = v81[86];
    v1483 = v81[85];
    v1491 = v81[84];
    v1498 = v81[83];
    sub_1C49E1CD0();
    sub_1C49E1CC4();
    v1532 = v81[78];
    v1540 = v81[77];
    v1552 = v81[76];
    v1570 = v81[75];
    v1585 = v81[74];
    v1601 = v81[73];
    v1620 = v81[72];
    v1632 = v81[71];
    v1639 = v81[70];
    v1651 = v81[69];

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12);
    return;
  }

  if (qword_1EDDFD240 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD248);
  v950 = v27 && v949 == v26;
  if (v950 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C4433D90();
    v951 = *(v12 + 1296);
    v1581 = *(v12 + 1368);
    v1595 = *(v12 + 1024);
    v952 = *(v12 + 1016);
    v953 = *(v12 + 968);
    v954 = *(v12 + 960);
    v955 = *(v12 + 544);
    v1564 = *(v12 + 1088);
    v1614 = *(v12 + 536);
    sub_1C440741C();
    sub_1C447E970(v956, v957);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v958 = sub_1C49E1AD8();
    *(v12 + 2304) = v958;
    sub_1C4432614(v958, xmmword_1C4F0F830);
    v959 = sub_1C44CD058();
    sub_1C4471988(v959, v960);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C49E1E28();
    v961 = type metadata accessor for Blocker();
    *(v12 + 2312) = v961;
    v958[3].n128_u64[1] = v961;
    sub_1C4403494();
    v964 = sub_1C4471C58(v962, v963);
    *(v12 + 2320) = v964;
    sub_1C4495D4C(v964);
    sub_1C440AEDC();
    v965 = sub_1C43FD018();
    sub_1C4471988(v965, v966);
    sub_1C442AC28();
    *(v20 + 2328) = v967;
    sub_1C44CD914();
    *(v20 + 2336) = v968;
    v970 = sub_1C442F958(v969);
    v971(v970);
    sub_1C4485D80();
    sub_1C4423790();
    sub_1C4482D00();
    v973 = *(v951 + v972);
    sub_1C448177C();
    sub_1C446202C(v974);
    sub_1C4488834();
    sub_1C49E1C04();
    *(v20 + 2344) = v975;
    sub_1C44F0924();
    *(v20 + 2352) = v976;
    v977 = sub_1C43FD2BC();
    v978(v977);
    sub_1C4402414();
    sub_1C441FE54();
    sub_1C447E970(v951, v979);
    sub_1C443F280();
    sub_1C4485BA4();
    sub_1C49E1DC8();
    v980 = type metadata accessor for PairGenerator();
    *(v20 + 2360) = v980;
    sub_1C44289F0(v980);
    sub_1C43FDB14();
    v983 = sub_1C4471C58(v981, v982);
    *(v20 + 2368) = v983;
    v984 = sub_1C49E1A18(v983);
    v985 = sub_1C441EDE4(v984);
    sub_1C49E1DF8(v985, v986);
    sub_1C447CE10();
    sub_1C441D730();
    *(v20 + 2376) = v987;
    sub_1C49E19A4();
    *(v20 + 2384) = v988;
    v990 = sub_1C44BBCAC(v989);
    v991(v990);
    sub_1C442F2B8();
    sub_1C4473D84();
    v992 = sub_1C4414658();
    sub_1C49E1E10(v992);
    sub_1C445AAE8();
    *(v20 + 2563) = v954;
    v958[8].n128_u64[1] = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v995 = sub_1C4471C58(v993, v994);
    sub_1C4488B14(v995);
    swift_task_alloc();
    sub_1C449F444();
    *(v20 + 2392) = v996;
    *v996 = v997;
    v996[1] = sub_1C49DA550;
    v998 = *(v20 + 1368);
    v999 = *(v20 + 1088);
    goto LABEL_25;
  }

  if (qword_1EDDFD318 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD320);
  v1001 = v27 && v1000 == v26;
  if (v1001 || (sub_1C44306B4() & 1) != 0)
  {
    v1636 = *(v12 + 2573);
    v1002 = *(v12 + 1584);
    v1003 = *(v12 + 1576);
    v1004 = *(v12 + 1296);
    v1549 = *(v12 + 1024);
    v1005 = *(v12 + 1016);
    v1645 = *(v12 + 960);
    v1654 = *(v12 + 968);
    v1496 = *(v12 + 1352);
    v1504 = *(v12 + 840);
    v1480 = *(v12 + 1072);
    v1489 = *(v12 + 808);
    v1511 = *(v12 + 576);
    v1518 = *(v12 + 704);
    v1596 = *(v12 + 544);
    v1615 = *(v12 + 536);
    sub_1C440741C();
    v1629 = v1006;
    sub_1C447E970(v1007, v1008);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v1009 = swift_allocObject();
    sub_1C4432614(v1009, xmmword_1C4F0D480);
    sub_1C4471988(v1596, v1004);
    sub_1C4EFD1E8();
    sub_1C44A180C();
    v1010 = v1003;
    sub_1C4471988(v1615, v1003);
    v1011 = type metadata accessor for Blocker();
    v1009[3].n128_u64[1] = v1011;
    sub_1C4403494();
    v1563 = v1009;
    v1009[4].n128_u64[0] = sub_1C4471C58(v1012, v1013);
    v1014 = sub_1C4422F90(&v1009[2]);
    sub_1C440AEDC();
    v1015 = v1004;
    sub_1C4471988(v1004, v1014);
    (*(v1654 + 16))(v1014 + v1011[5], v1005, v1645);
    sub_1C4471988(v1010, v1014 + v1011[6]);
    *(v1014 + v1011[7]) = 0;
    v1016 = v1011[8];
    v1017 = sub_1C448E070();
    sub_1C4471988(v1017, v1018);
    sub_1C49E1A60();
    sub_1C448177C();
    *(v1014 + v1011[9]) = v1019;
    v1020 = sub_1C44829A4(v1010, v1004);
    sub_1C447E970(v1010, v1629);
    (*(v1654 + 8))(v1005, v1645);
    *(v1014 + v1011[10]) = v1020;
    *(v1014 + v1011[11]) = v1636;
    v1021 = *(v1004 + *(v1549 + 28));

    sub_1C441FE54();
    v1538 = v1022;
    sub_1C447E970(v1015, v1023);
    *(v1014 + v1011[12]) = v1021;
    *(v1014 + v1011[13]) = 0;
    sub_1C4471988(v1596, v1015);
    sub_1C4471988(v1615, v1010);
    sub_1C4EFD1E8();
    v1024 = type metadata accessor for PairGenerator();
    v1563[12] = v1024;
    sub_1C43FDB14();
    v1563[13] = sub_1C4471C58(v1025, v1026);
    v1027 = sub_1C4422F90(v1563 + 9);
    v1028 = sub_1C4426CB8(v1027, v1024[8]);
    sub_1C4471988(v1028, v1027);
    sub_1C4472068(v1010, v1027 + v1024[5]);
    v1029 = v1024[6];
    sub_1C4482EA0();
    v1470 = v1030;
    v1030(v1027 + v1031, v1005, v1645);
    *(v1027 + v1024[7]) = v1636;
    v1032 = *(v1015 + *(v1549 + 28));

    sub_1C447E970(v1015, v1538);
    *(v1027 + v1024[9]) = v1032;
    v1033 = sub_1C43FD388();
    sub_1C4471988(v1033, v1034);
    sub_1C4471988(v1615, v1010);
    sub_1C4EFD1E8();
    v1035 = type metadata accessor for PassthroughMatcher();
    v1563[17] = v1035;
    sub_1C442FF54();
    v1563[18] = sub_1C4471C58(v1036, v1037);
    v1038 = sub_1C4422F90(v1563 + 14);
    sub_1C4472068(v1010, v1038);
    *(v1038 + v1035[5]) = v1636;
    sub_1C4472068(v1015, v1038 + v1035[6]);
    v1470(v1038 + v1035[7], v1005, v1645);
    sub_1C4471988(v1596, v1480);
    sub_1C4471988(v1615, v1496);
    v1563[22] = v1489;
    sub_1C44174EC();
    v1563[23] = sub_1C4471C58(v1039, v1040);
    sub_1C4422F90(v1563 + 19);
    v1504[v1489[6]] = 4;
    sub_1C4471988(v1480, v1504);
    sub_1C4471988(v1496, &v1504[v1489[5]]);
    v1504[v1489[7]] = v1636;
    v1041 = sub_1C4EF9E48();
    sub_1C44102A4(v1511, v1042, v1043, v1041);
    sub_1C448895C();
    if (v1504)
    {

      v933 = 1;
    }

    else
    {
      v933 = 0;
    }

    v333 = v579;
    v1044 = *(v579 + 1352);
    v935 = *(v579 + 1072);
    v1045 = *(v579 + 840);
    v937 = *(v579 + 808);
    v1046 = *(v579 + 704);
    goto LABEL_140;
  }

  if (qword_1EDDFD340 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD348);
  v1048 = v27 && v1047 == v26;
  if (v1048 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C4433D90();
    v1049 = *(v12 + 1296);
    v1582 = *(v12 + 1344);
    v1597 = *(v12 + 1024);
    v1050 = *(v12 + 1016);
    v1051 = *(v12 + 968);
    v1052 = *(v12 + 960);
    v1053 = *(v12 + 544);
    v1565 = *(v12 + 1064);
    v1616 = *(v12 + 536);
    sub_1C440741C();
    sub_1C447E970(v1054, v1055);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v1056 = sub_1C49E1AD8();
    *(v12 + 2408) = v1056;
    sub_1C4432614(v1056, xmmword_1C4F0F830);
    v1057 = sub_1C44CD058();
    sub_1C4471988(v1057, v1058);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C49E1E28();
    v1059 = type metadata accessor for Blocker();
    *(v12 + 2416) = v1059;
    v1056[3].n128_u64[1] = v1059;
    sub_1C4403494();
    v1062 = sub_1C4471C58(v1060, v1061);
    *(v12 + 2424) = v1062;
    sub_1C4495D4C(v1062);
    sub_1C440AEDC();
    v1063 = sub_1C43FD018();
    sub_1C4471988(v1063, v1064);
    sub_1C442AC28();
    *(v20 + 2432) = v1065;
    sub_1C44CD914();
    *(v20 + 2440) = v1066;
    v1068 = sub_1C442F958(v1067);
    v1069(v1068);
    sub_1C4485D80();
    sub_1C4423790();
    sub_1C4482D00();
    v1071 = *(v1049 + v1070);
    sub_1C448177C();
    sub_1C446202C(v1072);
    sub_1C4488834();
    sub_1C49E1C04();
    *(v20 + 2448) = v1073;
    sub_1C44F0924();
    *(v20 + 2456) = v1074;
    v1075 = sub_1C43FD2BC();
    v1076(v1075);
    sub_1C4402414();
    sub_1C441FE54();
    sub_1C447E970(v1049, v1077);
    sub_1C443F280();
    sub_1C4485BA4();
    sub_1C49E1DC8();
    v1078 = type metadata accessor for PairGenerator();
    *(v20 + 2464) = v1078;
    sub_1C44289F0(v1078);
    sub_1C43FDB14();
    v1081 = sub_1C4471C58(v1079, v1080);
    *(v20 + 2472) = v1081;
    v1082 = sub_1C49E1A18(v1081);
    v1083 = sub_1C441EDE4(v1082);
    sub_1C49E1DF8(v1083, v1084);
    sub_1C447CE10();
    sub_1C441D730();
    *(v20 + 2480) = v1085;
    sub_1C49E19A4();
    *(v20 + 2488) = v1086;
    v1088 = sub_1C44BBCAC(v1087);
    v1089(v1088);
    sub_1C442F2B8();
    sub_1C4473D84();
    v1090 = sub_1C4414658();
    sub_1C49E1E10(v1090);
    sub_1C445AAE8();
    *(v20 + 2562) = v1052;
    v1056[8].n128_u64[1] = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v1093 = sub_1C4471C58(v1091, v1092);
    sub_1C4488B14(v1093);
    swift_task_alloc();
    sub_1C449F444();
    *(v20 + 2496) = v1094;
    *v1094 = v1095;
    v1094[1] = sub_1C49DAF10;
    v1096 = *(v20 + 1344);
    v1097 = *(v20 + 1064);
    goto LABEL_25;
  }

  if (qword_1EDDFD2C8 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), qword_1EDDFD2D0);
  v1099 = v27 && v1098 == v26;
  if (v1099 || (sub_1C44306B4() & 1) != 0)
  {
    sub_1C49E1A6C();
    v1100 = *(v26 + 1296);
    v1583 = *(v26 + 1048);
    v1598 = *(v26 + 1328);
    v1617 = *(v26 + 1024);
    v1101 = *(v26 + 1016);
    v1102 = *(v26 + 968);
    v1103 = *(v26 + 960);
    v1104 = *(v26 + 536);
    v1566 = *(v26 + 544);
    sub_1C440741C();
    v1646 = v1105;
    sub_1C447E970(v1106, v1107);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v1108 = swift_allocObject();
    *(v26 + 2512) = v1108;
    sub_1C4432614(v1108, xmmword_1C4F0D480);
    v1109 = sub_1C440C60C();
    sub_1C4471988(v1109, v1110);
    sub_1C4EFD4C8();
    sub_1C441346C();
    sub_1C4471988(v1104, v579);
    v1111 = type metadata accessor for Blocker();
    v1108[3].n128_u64[1] = v1111;
    sub_1C4403494();
    v1114 = sub_1C4471C58(v1112, v1113);
    sub_1C4495D4C(v1114);
    sub_1C440AEDC();
    v1115 = sub_1C43FD018();
    sub_1C4471988(v1115, v1116);
    v1117 = *(v1111 + 20);
    v1118 = *(v1102 + 16);
    sub_1C443E1E0();
    v1119();
    sub_1C4482E1C();
    v1120 = sub_1C442EC40();
    sub_1C4471988(v1120, v1121);
    v1122 = *(v1100 + *(v1617 + 32));
    sub_1C448177C();
    sub_1C49E1C10(v1123);
    v1124 = sub_1C43FD388();
    v1126 = sub_1C44829A4(v1124, v1125);
    sub_1C447E970(v13, v1646);
    v1127 = *(v1102 + 8);
    v1128 = sub_1C441E0A4();
    v1129(v1128);
    sub_1C44C0474();
    sub_1C441FE54();
    sub_1C447E970(v1100, v1130);
    sub_1C49E1910();
    sub_1C49E1B78();
    sub_1C4EFD4C8();
    v1131 = type metadata accessor for PairGenerator();
    sub_1C44289F0(v1131);
    sub_1C43FDB14();
    v1134 = sub_1C4471C58(v1132, v1133);
    v1135 = sub_1C49E1A18(v1134);
    v1136 = sub_1C4426CB8(v1135, v1131[8]);
    sub_1C4471988(v1136, v1135);
    sub_1C49E1B14(v1131[5]);
    v1137 = sub_1C49E1A30();
    v1138(v1137);
    *(v1135 + v1131[7]) = v1631;
    sub_1C445136C(v1617);
    sub_1C4473D84();
    sub_1C49E1AF0();
    sub_1C4471988(v1103, v1598);
    *(v26 + 2561) = v1631;
    *(v1126 + 136) = type metadata accessor for PeopleMatcher();
    sub_1C43FF3E0();
    v1141 = sub_1C4471C58(v1139, v1140);
    sub_1C4488B14(v1141);
    v1142 = swift_task_alloc();
    *(v26 + 2520) = v1142;
    *v1142 = v26;
    v1142[1] = sub_1C4489C4C;
    v1143 = *(v26 + 1328);
    v1144 = *(v26 + 1048);
    goto LABEL_25;
  }

  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD290);
  v1146 = v27 && v1145 == v26;
  if (v1146 || (sub_1C44306B4() & 1) != 0)
  {
    goto LABEL_205;
  }

  if (qword_1EDDFD1F0 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD1F8);
  v1148 = v27 && v1147 == v26;
  if (v1148 || (sub_1C44306B4() & 1) != 0)
  {
    goto LABEL_205;
  }

  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD1D0);
  v1150 = v27 && v1149 == v26;
  if (v1150 || (sub_1C44306B4() & 1) != 0)
  {
    goto LABEL_205;
  }

  if (qword_1EDDFD1A0 != -1)
  {
    swift_once();
  }

  sub_1C44008C8(*(v12 + 1304), &qword_1EDDFD1A8);
  v1152 = v27 && v1151 == v26;
  if (v1152 || (sub_1C44306B4() & 1) != 0)
  {
LABEL_205:
    v1584 = *(v12 + 2573);
    v1153 = *(v12 + 1584);
    v1154 = *(v12 + 1576);
    v1446 = *(v12 + 1312);
    v1155 = *(v12 + 1296);
    v1444 = *(v12 + 1032);
    v1530 = *(v12 + 1024);
    v1156 = *(v12 + 1016);
    v1599 = *(v12 + 968);
    v1647 = *(v12 + 960);
    v1448 = *(v12 + 816);
    v1445 = *(v12 + 808);
    v1452 = *(v12 + 680);
    v1450 = *(v12 + 552);
    v1157 = *(v12 + 536);
    v1630 = v1157;
    v1637 = *(v12 + 544);
    sub_1C440741C();
    v1618 = v1158;
    sub_1C447E970(v1159, v1160);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v1161 = swift_allocObject();
    sub_1C4432614(v1161, xmmword_1C4F2C2A0);
    sub_1C4471988(v1637, v1155);
    sub_1C4EFCEF8();
    sub_1C441346C();
    sub_1C4471988(v1157, v1154);
    v1162 = type metadata accessor for Blocker();
    v1161[3].n128_u64[1] = v1162;
    sub_1C4403494();
    v1471 = sub_1C4471C58(v1163, v1164);
    v1563 = v1161;
    v1161[4].n128_u64[0] = v1471;
    v1165 = sub_1C4422F90(&v1161[2]);
    sub_1C440AEDC();
    v1166 = sub_1C4410CBC();
    sub_1C4471988(v1166, v1167);
    v1512 = v1599[2];
    v1168 = sub_1C4459BC0(v1162[5]);
    v1169(v1168);
    sub_1C44D4544();
    v1170 = v1154;
    sub_1C4471988(v1154, v1171);
    v1172 = sub_1C441E57C();
    sub_1C4471988(v1172, v1173);
    v1174 = *(v1155 + *(v1530 + 32));
    sub_1C448177C();
    sub_1C447F854(v1175);
    v1519 = v1154;
    v1176 = sub_1C440C60C();
    v1178 = sub_1C44829A4(v1176, v1177);
    sub_1C447E970(v1170, v1618);
    v1497 = v1599[1];
    v1497(v1156, v1647);
    *(v1165 + v1162[10]) = v1178;
    *(v1165 + v1162[11]) = v1584;
    v1179 = *(v1155 + *(v1530 + 28));

    sub_1C441FE54();
    v1550 = v1180;
    sub_1C447E970(v1155, v1181);
    sub_1C443F6C8();
    *(v1165 + v1182) = 0;
    v1183 = sub_1C447E320();
    sub_1C4471988(v1183, v1184);
    sub_1C49E1D48();
    sub_1C4EFCEF8();
    v1185 = type metadata accessor for PairGenerator();
    v1563[12] = v1185;
    v1186 = v1185;
    sub_1C43FDB14();
    v1481 = sub_1C4471C58(v1187, v1188);
    v1563[13] = v1481;
    sub_1C4422F90(v1563 + 9);
    sub_1C49E1BD8();
    v1191 = sub_1C4426CB8(v1189, v1190);
    sub_1C44805D4(v1191);
    sub_1C4472068(v1178, v1563 + v1186[5]);
    v1192 = v1599[4];
    v1193 = sub_1C4459BC0(v1186[6]);
    v1194(v1193);
    v1462 = v1186;
    *(v1563 + v1186[7]) = v1584;
    sub_1C4423C50();
    sub_1C447E970(v1155, v1550);
    sub_1C49E1BCC();
    v1195 = sub_1C4414A08();
    sub_1C4471988(v1195, v1196);
    v1197 = sub_1C4424948();
    sub_1C4471988(v1197, v1198);
    v1199 = type metadata accessor for WalletOrderMatcher();
    v1563[17] = v1199;
    v1200 = sub_1C4471C58(&qword_1EDDE5900, type metadata accessor for WalletOrderMatcher);
    v1201 = sub_1C4488B14(v1200);
    sub_1C449AEEC(v1201);
    sub_1C4EFCEF8();
    sub_1C4472068(v1155, v1201);
    sub_1C4472068(v1178, v1201 + *(v1199 + 20));
    *(v1201 + *(v1199 + 24)) = v1584;
    v1202 = sub_1C4414A08();
    sub_1C4464B84(v1202, v1203);
    sub_1C4EFD428();
    sub_1C4471988(v1157, v1178);
    v1563[22] = v1162;
    v1563[23] = v1471;
    v1204 = sub_1C4422F90(v1563 + 19);
    sub_1C444197C(v1204);
    v1205 = sub_1C44AE8D4();
    v1512(v1205, v1156, v1647);
    v1206 = v1162[6];
    v1207 = sub_1C44569C0();
    sub_1C4471988(v1207, v1208);
    *(v1199 + v1162[7]) = 0;
    v1209 = v1162[8];
    v1210 = sub_1C444AD48();
    sub_1C4471988(v1210, v1211);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1212);
    v1213 = sub_1C44CD058();
    sub_1C44829A4(v1213, v1214);
    sub_1C447E970(v1178, v1618);
    v1497(v1156, v1647);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1215 = sub_1C443E3A8();
    sub_1C447E970(v1215, v1216);
    v1217 = sub_1C444FE74();
    sub_1C4464B84(v1217, v1218);
    sub_1C49E1CFC();
    sub_1C4471988(v1219, v1220);
    sub_1C4EFD428();
    v1563[27] = v1462;
    v1563[28] = v1481;
    sub_1C4422F90(v1563 + 24);
    sub_1C49E1BE4();
    v1223 = sub_1C4426CB8(v1221, v1222);
    sub_1C4471988(v1223, v1199);
    v1224 = v1462[5];
    v1225 = sub_1C444C020();
    sub_1C4472068(v1225, v1226);
    v1227 = v1462[6];
    sub_1C4460AB8();
    v1228();
    *(v1199 + v1462[7]) = v1584;
    sub_1C4423C50();
    v1229 = sub_1C443E3A8();
    sub_1C447E970(v1229, v1230);
    sub_1C49E1BCC();
    v1231 = sub_1C4409D98();
    sub_1C4471988(v1231, v1232);
    sub_1C49E1D48();
    sub_1C4EFD428();
    v1233 = type metadata accessor for PassthroughMatcher();
    v1563[32] = v1233;
    sub_1C442FF54();
    v1460 = sub_1C4471C58(v1234, v1235);
    v1563[33] = v1460;
    v1236 = sub_1C4422F90(v1563 + 29);
    v1237 = sub_1C440BB4C();
    sub_1C4472068(v1237, v1238);
    *(v1236 + v1233[5]) = v1584;
    v1239 = v1233[6];
    v1240 = sub_1C444AD48();
    sub_1C4472068(v1240, v1241);
    v1242 = v1233[7];
    sub_1C44A1C58();
    v1243();
    v1244 = sub_1C4409D98();
    sub_1C4464B84(v1244, v1245);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C49E1CFC();
    sub_1C4471988(v1246, v1247);
    v1563[37] = v1162;
    v1563[38] = v1471;
    v1248 = sub_1C4422F90(v1563 + 34);
    sub_1C444197C(v1248);
    v1249 = sub_1C44AE8D4();
    v1512(v1249, v1156, v1647);
    v1250 = v1162[6];
    v1251 = sub_1C444C020();
    sub_1C4471988(v1251, v1252);
    v1253 = sub_1C441E57C();
    sub_1C4471988(v1253, v1254);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1255);
    v1256 = sub_1C43FCE84();
    sub_1C44829A4(v1256, v1257);
    sub_1C447E970(v1584, v1618);
    v1258 = sub_1C445CCD4();
    v1259(v1258);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1260 = sub_1C443E3A8();
    sub_1C447E970(v1260, v1261);
    sub_1C443F6C8();
    *(v1236 + v1262) = 1;
    sub_1C4440D6C();
    sub_1C4471988(v1630, v1584);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1563[42] = v1462;
    v1563[43] = v1481;
    sub_1C4422F90(v1563 + 39);
    sub_1C49E1BD8();
    *(v1263 + v1264) = 1;
    v1265 = sub_1C4410CBC();
    sub_1C4471988(v1265, v1266);
    v1267 = v1462[5];
    v1268 = sub_1C444C020();
    sub_1C4472068(v1268, v1269);
    v1192(v1236 + v1462[6], v1156, v1647);
    sub_1C441DDA4(v1462[7]);
    sub_1C447E970(v1155, v1550);
    *(v1236 + v1462[9]) = v1462;
    v1270 = sub_1C43FD388();
    sub_1C4471988(v1270, v1271);
    sub_1C4471988(v1630, v1519);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v1563[47] = v1233;
    v1563[48] = v1460;
    v1272 = sub_1C4422F90(v1563 + 44);
    v1273 = sub_1C43FE99C();
    sub_1C4472068(v1273, v1274);
    *(v1272 + v1233[5]) = v1178;
    v1275 = v1233[6];
    v1276 = sub_1C444AD48();
    sub_1C4472068(v1276, v1277);
    sub_1C4507B5C();
    sub_1C44A1C58();
    v1278();
    v1279 = sub_1C43FD388();
    sub_1C4471988(v1279, v1280);
    sub_1C4EFD4C8();
    sub_1C4471988(v1630, v1519);
    v1563[52] = v1162;
    v1563[53] = v1471;
    v1281 = sub_1C4422F90(v1563 + 49);
    sub_1C444197C(v1281);
    v1282 = sub_1C44AE8D4();
    v1512(v1282, v1156, v1647);
    sub_1C44D4544();
    sub_1C4471988(v1519, v1283);
    v1284 = sub_1C441E57C();
    sub_1C4471988(v1284, v1285);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1286);
    v1287 = sub_1C4409D98();
    sub_1C44829A4(v1287, v1288);
    sub_1C447E970(v1519, v1618);
    v1497(v1156, v1647);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1289 = sub_1C443E3A8();
    sub_1C447E970(v1289, v1290);
    v1291 = sub_1C444FE74();
    sub_1C4464B84(v1291, v1292);
    sub_1C4455954();
    sub_1C4471988(v1293, v1294);
    sub_1C4EFD4C8();
    v1563[57] = v1462;
    v1563[58] = v1481;
    sub_1C4422F90(v1563 + 54);
    sub_1C49E1BD8();
    v1297 = sub_1C4426CB8(v1295, v1296);
    sub_1C4471988(v1297, v1272);
    v1298 = v1462[5];
    v1299 = sub_1C44EB8C0();
    sub_1C4472068(v1299, v1300);
    sub_1C44A14C0(v1462[6]);
    sub_1C4460AB8();
    v1301();
    sub_1C441DDA4(v1462[7]);
    v1302 = sub_1C443E3A8();
    sub_1C447E970(v1302, v1303);
    *(v1272 + v1462[9]) = v1462;
    v1304 = sub_1C4409D98();
    sub_1C4471988(v1304, v1305);
    sub_1C49E1D68();
    sub_1C4EFD4C8();
    v1563[62] = v1233;
    v1563[63] = v1460;
    v1306 = sub_1C4422F90(v1563 + 59);
    v1307 = sub_1C4401D48();
    sub_1C4472068(v1307, v1308);
    *(v1306 + v1233[5]) = v1647;
    v1309 = v1233[6];
    v1310 = sub_1C444AD48();
    sub_1C4472068(v1310, v1311);
    sub_1C49E1BF0();
    sub_1C44A1C58();
    v1312();
    v1313 = sub_1C4409D98();
    sub_1C4471988(v1313, v1314);
    sub_1C4EFD218();
    sub_1C4471988(v1630, v1462);
    v1563[67] = v1162;
    v1563[68] = v1471;
    v1315 = sub_1C4422F90(v1563 + 64);
    sub_1C444197C(v1315);
    v1316 = sub_1C4459BC0(v1162[5]);
    (v1512)(v1316);
    sub_1C44D4544();
    sub_1C4471988(v1462, v1317);
    v1318 = sub_1C441E57C();
    sub_1C4471988(v1318, v1319);
    v1320 = *(v1155 + *(v1530 + 32));
    sub_1C448177C();
    sub_1C447F854(v1321);
    v1322 = sub_1C440C60C();
    sub_1C44829A4(v1322, v1323);
    sub_1C447E970(v1462, v1618);
    v1324 = sub_1C445CCD4();
    v1325(v1324);
    sub_1C4409F24();
    v1326 = *(v1155 + *(v1530 + 28));

    v1327 = sub_1C443E3A8();
    sub_1C447E970(v1327, v1328);
    v1329 = sub_1C444FE74();
    sub_1C4471988(v1329, v1330);
    sub_1C49E1D68();
    sub_1C4EFD218();
    v1563[72] = v1462;
    v1563[73] = v1481;
    sub_1C4422F90(v1563 + 69);
    sub_1C49E1BD8();
    v1333 = sub_1C4426CB8(v1331, v1332);
    sub_1C44805D4(v1333);
    v1334 = v1462[5];
    v1335 = sub_1C44EB8C0();
    sub_1C4472068(v1335, v1336);
    v1337 = v1462[6];
    sub_1C4460AB8();
    v1338();
    sub_1C441DDA4(v1462[7]);
    sub_1C447E970(v1155, v1550);
    *(v1306 + v1462[9]) = v1462;
    v1339 = sub_1C447E320();
    sub_1C4471988(v1339, v1340);
    sub_1C49E1CFC();
    sub_1C4471988(v1341, v1342);
    sub_1C4EFD218();
    v1563[77] = v1233;
    v1563[78] = v1460;
    v1343 = sub_1C4422F90(v1563 + 74);
    sub_1C44A3AB8();
    sub_1C4472068(v1344, v1345);
    *(v1343 + v1233[5]) = v1462;
    v1346 = v1233[6];
    v1347 = sub_1C444AD48();
    sub_1C4472068(v1347, v1348);
    v1349 = v1233[7];
    sub_1C44A1C58();
    v1350();
    sub_1C4440D6C();
    sub_1C4EFCEE8();
    sub_1C4471988(v1630, v1519);
    v1563[82] = v1162;
    v1563[83] = v1471;
    v1351 = sub_1C4422F90(v1563 + 79);
    sub_1C444197C(v1351);
    v1352 = sub_1C44AE8D4();
    v1512(v1352, v1618, v1647);
    v1353 = v1162[6];
    v1354 = sub_1C44569C0();
    sub_1C4471988(v1354, v1355);
    v1356 = sub_1C441E57C();
    sub_1C4471988(v1356, v1357);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1358);
    sub_1C44829A4(v1519, v1155);
    sub_1C447E970(v1519, v1618);
    v1497(v1156, v1647);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1359 = sub_1C443E3A8();
    sub_1C447E970(v1359, v1360);
    sub_1C443F6C8();
    *(v1343 + v1361) = 1;
    sub_1C4440D6C();
    sub_1C4455954();
    sub_1C4471988(v1362, v1363);
    sub_1C4EFCEE8();
    v1563[87] = v1462;
    v1563[88] = v1481;
    sub_1C4422F90(v1563 + 84);
    sub_1C49E1BE4();
    *(v1364 + v1365) = 1;
    v1366 = sub_1C4410CBC();
    sub_1C4471988(v1366, v1367);
    v1368 = v1462[5];
    v1369 = sub_1C444C020();
    sub_1C4472068(v1369, v1370);
    v1192(v1343 + v1462[6], v1156, v1647);
    sub_1C441DDA4(v1462[7]);
    sub_1C447E970(v1155, v1550);
    sub_1C49E1BCC();
    v1371 = sub_1C447E320();
    sub_1C4471988(v1371, v1372);
    sub_1C4471988(v1630, v1519);
    sub_1C4EFCEE8();
    v1563[92] = v1233;
    v1563[93] = v1460;
    v1373 = sub_1C4422F90(v1563 + 89);
    sub_1C44A3AB8();
    sub_1C4472068(v1374, v1375);
    *(v1373 + v1233[5]) = v1462;
    v1376 = v1233[6];
    v1377 = sub_1C444AD48();
    sub_1C4472068(v1377, v1378);
    v1379 = sub_1C49E1BF0();
    (v1192)(v1379);
    v1380 = sub_1C447E320();
    sub_1C4471988(v1380, v1381);
    sub_1C4EFD4D8();
    sub_1C49E1CFC();
    sub_1C4471988(v1382, v1383);
    v1563[97] = v1162;
    v1563[98] = v1471;
    v1384 = sub_1C4422F90(v1563 + 94);
    sub_1C444197C(v1384);
    v1385 = sub_1C4459BC0(v1162[5]);
    (v1512)(v1385);
    v1386 = v1162[6];
    v1387 = sub_1C444C020();
    sub_1C4471988(v1387, v1388);
    v1389 = sub_1C441E57C();
    sub_1C4471988(v1389, v1390);
    sub_1C444C2D0();
    sub_1C448177C();
    sub_1C447F854(v1391);
    v1392 = sub_1C43FCE84();
    sub_1C44829A4(v1392, v1393);
    sub_1C447E970(v1233, v1618);
    v1394 = sub_1C445CCD4();
    v1395(v1394);
    sub_1C4409F24();
    sub_1C44A1D94();
    v1396 = sub_1C443E3A8();
    sub_1C447E970(v1396, v1397);
    v1398 = sub_1C444FE74();
    sub_1C4471988(v1398, v1399);
    sub_1C4471988(v1630, v1233);
    sub_1C4EFD4D8();
    v1563[102] = v1462;
    v1563[103] = v1481;
    v1400 = sub_1C4422F90(v1563 + 99);
    v1401 = sub_1C4426CB8(v1400, v1462[8]);
    sub_1C4471988(v1401, v1400);
    sub_1C4472068(v1233, v1400 + v1462[5]);
    v1402 = v1462[6];
    sub_1C4460AB8();
    v1403();
    *(v1400 + v1462[7]) = v1584;
    sub_1C4423C50();
    v1404 = sub_1C443E3A8();
    sub_1C447E970(v1404, v1405);
    sub_1C49E1BCC();
    v1406 = sub_1C447E320();
    sub_1C4471988(v1406, v1407);
    sub_1C4455954();
    sub_1C4471988(v1408, v1409);
    sub_1C4EFD4D8();
    v1563[107] = v1233;
    v1563[108] = v1460;
    v1410 = sub_1C4422F90(v1563 + 104);
    sub_1C44A3AB8();
    sub_1C4472068(v1411, v1412);
    *(v1410 + v1233[5]) = v1584;
    v1413 = v1233[6];
    v1414 = sub_1C444AD48();
    sub_1C4472068(v1414, v1415);
    sub_1C4507B5C();
    sub_1C4460AB8();
    v1416();
    sub_1C4471988(v1637, v1444);
    sub_1C4471988(v1630, v1446);
    v1563[112] = v1445;
    sub_1C44174EC();
    v1563[113] = sub_1C4471C58(v1417, v1418);
    v1419 = sub_1C4422F90(v1563 + 109);
    v1448[v1445[6]] = 4;
    sub_1C4471988(v1444, v1448);
    sub_1C4471988(v1446, &v1448[v1445[5]]);
    v1448[v1445[7]] = v1584;
    v1420 = sub_1C4EF9E48();
    sub_1C44102A4(v1450, v1421, v1422, v1420);
    sub_1C448895C();
    if (v1448)
    {

      v1423 = 1;
    }

    else
    {
      v1423 = 0;
    }

    v333 = v579;
    v1424 = *(v579 + 1312);
    v1425 = *(v579 + 1032);
    v1426 = *(v579 + 816);
    v1427 = *(v579 + 808);
    v1428 = *(v579 + 680);
    sub_1C49E19C8();
    v69 = *(v579 + 528);
    sub_1C440741C();
    sub_1C447E970(v1429, v1430);
    sub_1C441FE54();
    sub_1C447E970(v1425, v1431);
    sub_1C4EFF1C8();
    v1432 = sub_1C49E18D8();
    sub_1C440BAA8(v1432, v1423, 1, v1433);
    v1434 = *(v1427 + 32);
    v1435 = sub_1C448E070();
    sub_1C4482F3C(v1435, v1436);
    sub_1C440E538();
    v947 = v1426;
    v948 = v1419;
    goto LABEL_141;
  }

  *(v12 + 2560) = *(v12 + 2573);
  v1437 = swift_task_alloc();
  *(v12 + 2536) = v1437;
  *v1437 = v12;
  v1437[1] = sub_1C49DB7FC;
  v1438 = *(v12 + 544);
  v1439 = *(v12 + 536);
  sub_1C43FEA3C();

  sub_1C49E0D78(v1440, v1441, v1442);
}

uint64_t sub_1C447CB3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C447CB9C(uint64_t a1, uint64_t a2)
{
  v4 = (*(v2 - 120) + *(*(v2 - 136) + 44));
  *v4 = a1;
  v4[1] = a2;
  *(v2 - 65) = 8;

  return sub_1C444C16C();
}

uint64_t sub_1C447CBF0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v4 - 96);
  v6 = *(v4 - 88);
  *(a1 - 48) = v1;
  *(a1 - 40) = v7;
  *(a1 - 32) = v6;
  *(a1 - 24) = v2;
  *(a1 - 16) = v3;
}

uint64_t sub_1C447CC14(uint64_t a1)
{

  return sub_1C4420C3C(a1, v1, v2);
}

uint64_t sub_1C447CC2C()
{
  v1 = **(v0 - 176);
  result = *(v0 - 160);
  v3 = *(v0 - 112);
  return result;
}

double sub_1C447CC68()
{
  v1 = *(v0 - 192);
  v2 = *(v0 - 184);
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_1C447CCC4()
{

  return sub_1C4D4E63C(v0, type metadata accessor for WalletEmailOrderStructs.OrderPaymentRelationshipType);
}

void sub_1C447CCF8()
{
  v2 = (v1 + *(v0 + 32));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v0 + 36);
}

uint64_t sub_1C447CD1C(uint64_t a1)
{
  sub_1C441DFEC(a1, v2);
  v4 = *(v1 + 8);
  return v3;
}

void sub_1C447CD40(char a1)
{

  sub_1C44C9240(a1, v2, 1, v1);
}

uint64_t sub_1C447CD80@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;

  return sub_1C46ACB44();
}

void sub_1C447CD98()
{
  v1 = *(v0 - 128);
  v2 = *(v0 - 120);
  v3 = *(v0 - 144);
  v4 = *(v0 - 160);
}

uint64_t sub_1C447CDD0()
{

  return sub_1C4F019A8();
}

uint64_t sub_1C447CDF0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = v1;
  *(v3 - 176) = a1 + 8;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C447CE10()
{
  v5 = v0 + *(v1 + 20);
  v6 = *(v3 - 128);

  return sub_1C4472068(v2, v5);
}

uint64_t sub_1C447CE30()
{

  return sub_1C4EFD548();
}

uint64_t sub_1C447CE9C@<X0>(uint64_t a1@<X8>)
{
  result = v1 + *(v2 + 28);
  v5 = *(v3 - 152) + a1;
  return result;
}

void sub_1C447CEB4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C447CED4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D30C(v4 + a2, v3 + v2, a1);
}

uint64_t sub_1C447CEFC()
{
  v2 = *(v0 - 152);

  return sub_1C4F026C8();
}

uint64_t *sub_1C447CF3C()
{
  STACK[0x328] = v0;
  *(v0 + 56) = *&STACK[0x300];

  return sub_1C4422F90((v0 + 32));
}

uint64_t sub_1C447CF5C()
{

  return sub_1C440962C((v0 + 160));
}

uint64_t sub_1C447CF74()
{
  v4 = *(v1 + 16);
  result = v2 + *(v0 + 20);
  v6 = *(v3 - 160);
  return result;
}

uint64_t sub_1C447CF8C()
{

  return swift_beginAccess();
}

void sub_1C447CFFC()
{
  v2 = v0[127];
  v3 = v0[121];
  *(v1 - 120) = v0[128];
  *(v1 - 112) = v3;
  v4 = v0[120];
}

uint64_t sub_1C447D014()
{
  *(v1 - 184) = *(v0 + 400);

  return sub_1C44E3634(v1 - 240);
}

void sub_1C447D030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 - 280);
  v9 = *(v6 - 320);

  sub_1C44E7634(a1, a2, a3, a4, a5, a6, v9);
}

uint64_t sub_1C447D054()
{
}

uint64_t sub_1C447D0A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = v5 + *(v6 - 88);

  return sub_1C444088C(v4, v8, a3, a4);
}

uint64_t type metadata accessor for StandardEntityFusion()
{
  result = qword_1EDDF4640;
  if (!qword_1EDDF4640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ContactsPersonPhase()
{
  result = qword_1EDDF4D00;
  if (!qword_1EDDF4D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447D15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C447D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C441DC98(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1C445FAA8(v4, v5), (v10 & 1) != 0))
  {
    sub_1C447D220(*(v8 + 56) + 8 * v9, v3);
    v11 = 0;
  }

  else
  {
    *v3 = 0;
    v11 = 1;
  }

  *(v3 + 8) = v11;
}

uint64_t *sub_1C447D2E4(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = *v5;
  v103 = sub_1C4EF98F8();
  v9 = sub_1C43FCDF8(v103);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v5[14] = a1;
  v5[15] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v18 = v5[14];
  v17 = v5[15];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = sub_1C4F01108();

  sub_1C447DC44(v19, 1852797802, 0xE400000000000000, v16);
  v21 = v20;

  if (!v21)
  {
    sub_1C4EFCEA8();
    sub_1C4418F74();
    sub_1C45776F4(v31, v32);
    v33 = sub_1C440F170();
    sub_1C4416CB4(v33, v34);
    v35 = *MEMORY[0x1E69A9270];
    sub_1C440DD48();
    (*(v36 + 104))();
    swift_willThrow();

    goto LABEL_6;
  }

  sub_1C4EF9838();

  v22 = sub_1C447DCE0(v14);
  if (!v4)
  {
    v39 = v22;
    if (!v22)
    {
      goto LABEL_4;
    }

    if (!*(v22 + 16))
    {

      goto LABEL_4;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C445FAA8(0x5365727574616566, 0xEB00000000657A69);
    sub_1C4402A9C();
    if ((v8 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_1C44735D4(0x5365727574616566, 0xEB00000000657A69, v39);
    if (v40)
    {
      v41 = sub_1C4F01108();

      v42 = [v41 integerValue];

      v5[4] = v42;
      if (!*(v39 + 16))
      {
        goto LABEL_34;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v43 = sub_1C440F190();
      sub_1C445FAA8(v43, v44);
      sub_1C4402A9C();
      if ((v41 & 1) == 0)
      {
        goto LABEL_34;
      }

      v45 = sub_1C440F190();
      sub_1C44735D4(v45, v46, v39);
      if (v47)
      {
        v48 = sub_1C4F01108();

        v49 = [v48 integerValue];

        v5[5] = v49;
        if (!*(v39 + 16))
        {
          goto LABEL_34;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C445FAA8(0x6C6F687365726874, 0xE900000000000064);
        sub_1C4402A9C();
        if ((v48 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_1C44735D4(0x6C6F687365726874, 0xE900000000000064, v39);
        if (v50)
        {
          v51 = sub_1C4F01108();

          [v51 floatValue];
          v53 = v52;

          *(v5 + 12) = v53;
          if (*(v39 + 16))
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C445FAA8(0x6E6F6973726576, 0xE700000000000000);
            sub_1C4402A9C();
            if (v51)
            {
              v54 = sub_1C44735D4(0x6E6F6973726576, 0xE700000000000000, v39);
              if (v55)
              {
                v5[7] = v54;
                v5[8] = v55;
                if (*(v39 + 16) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C445FAA8(1701667182, 0xE400000000000000), sub_1C4402A9C(), (v51 & 1) != 0))
                {
                  v56 = sub_1C44735D4(1701667182, 0xE400000000000000, v39);
                  if (!v57)
                  {

                    v85 = 0;
                    v86 = 0;
LABEL_47:
                    v87 = MEMORY[0x1E69A9278];
                    goto LABEL_41;
                  }

                  v5[9] = v56;
                  v5[10] = v57;
                  if (*(v39 + 16))
                  {
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    v58 = sub_1C440F190();
                    sub_1C445FAA8(v58, v59);
                    sub_1C4402A9C();
                    if (v51)
                    {
                      v60 = sub_1C440F190();
                      v62 = sub_1C44735D4(v60, v61, v39);
                      if (v63)
                      {
                        v5[11] = v62;
                        v5[12] = v63;
                        if (*(v39 + 16))
                        {
                          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                          sub_1C445FAA8(0x636F765F72616863, 0xEA00000000006261);
                          sub_1C4402A9C();
                          if (v51)
                          {
                            v102 = sub_1C44735D4(0x636F765F72616863, 0xEA00000000006261, v39);
                            if (!v64)
                            {
LABEL_52:

                              v85 = 1;
                              v87 = MEMORY[0x1E69A9270];
                              goto LABEL_51;
                            }

                            v65 = v64;
                            if (*(v39 + 16))
                            {
                              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                              sub_1C445FAA8(0x61636F765F657062, 0xE900000000000062);
                              sub_1C4402A9C();
                              if (v51)
                              {
                                v101 = sub_1C44735D4(0x61636F765F657062, 0xE900000000000062, v39);
                                v67 = v66;

                                if (v67)
                                {
                                  sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
                                  inited = swift_initStackObject();
                                  *(inited + 16) = xmmword_1C4F0CE60;
                                  *(inited + 32) = 0x636F765F72616863;
                                  *(inited + 40) = 0xEA00000000006261;
                                  *(inited + 48) = v102;
                                  *(inited + 56) = v65;
                                  *(inited + 64) = 0x61636F765F657062;
                                  *(inited + 72) = 0xE900000000000062;
                                  *(inited + 80) = v101;
                                  *(inited + 88) = v67;
                                  sub_1C4F00F28();
                                  v69 = v5[11];
                                  v70 = v5[12];
                                  v71 = sub_1C4EFE278();
                                  sub_1C44099C4(v71);
                                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                                  v5[13] = sub_1C4EFE268();
                                  v104 = v5[14];
                                  v105 = v5[15];
                                  swift_bridgeObjectRetain_n();

                                  MEMORY[0x1C6940010](0x726464612D29282DLL, 0xEB00000000737365);

                                  v99 = sub_1C43FFB50();
                                  v100(v99);
                                  v5[2] = v104;
                                  v5[3] = v105;
                                  return v5;
                                }

                                goto LABEL_52;
                              }
                            }
                          }
                        }

                        v85 = 1;
                        v87 = MEMORY[0x1E69A9280];
LABEL_51:
                        v86 = 1;
                        goto LABEL_41;
                      }

                      v86 = 0;
                      v85 = 1;
                      goto LABEL_47;
                    }
                  }

                  v86 = 0;
                  v85 = 1;
                }

                else
                {

                  v85 = 0;
                  v86 = 0;
                }

                v87 = MEMORY[0x1E69A9280];
LABEL_41:
                sub_1C4EFCEA8();
                sub_1C4418F74();
                sub_1C45776F4(v88, v89);
                v90 = sub_1C440F170();
                sub_1C4416CB4(v90, v91);
                v92 = *v87;
                sub_1C440DD48();
                (*(v93 + 104))();
                swift_willThrow();

                v94 = sub_1C43FFB50();
                v95(v94);
                v96 = v5[8];

                if (v85)
                {
                  v97 = v5[10];
                }

                if (v86)
                {
                  v98 = v5[12];
                }

                goto LABEL_6;
              }

              goto LABEL_36;
            }
          }

LABEL_34:

          sub_1C4EFCEA8();
          sub_1C4418F74();
          sub_1C45776F4(v72, v73);
          v74 = sub_1C440F170();
          sub_1C4416CB4(v74, v75);
          v76 = MEMORY[0x1E69A9280];
LABEL_37:
          v81 = *v76;
          sub_1C440DD48();
          (*(v82 + 104))();
          swift_willThrow();

          v83 = sub_1C43FFB50();
          v84(v83);
          goto LABEL_6;
        }
      }
    }

LABEL_36:

    sub_1C4EFCEA8();
    sub_1C4418F74();
    sub_1C45776F4(v77, v78);
    v79 = sub_1C440F170();
    sub_1C4416CB4(v79, v80);
    v76 = MEMORY[0x1E69A9278];
    goto LABEL_37;
  }

LABEL_4:
  sub_1C4EFCEA8();
  sub_1C4418F74();
  sub_1C45776F4(v23, v24);
  v25 = sub_1C440F170();
  sub_1C4416CB4(v25, v26);
  v27 = *MEMORY[0x1E69A9268];
  sub_1C440DD48();
  (*(v28 + 104))();
  swift_willThrow();

  v29 = sub_1C43FFB50();
  v30(v29);
LABEL_6:
  v37 = v5[15];

  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1C447DC44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C4F01108();

  v7 = [a4 pathForResource:a1 ofType:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1C4F01138();

  return v8;
}

uint64_t sub_1C447DCE0(uint64_t a1)
{
  v3 = sub_1C4EF98F8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4F00978();
  v13 = sub_1C43FCDF8(v12);
  v39 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C4EF9938();
  v40 = v19;
  if (v1)
  {
    sub_1C4F00158();
    (*(v6 + 16))(v11, a1, v3);
    v26 = v1;
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();

    if (os_log_type_enabled(v27, v28))
    {
      v38 = v12;
      v29 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v29 = 136315394;
      sub_1C45776F4(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0]);
      v30 = sub_1C4F02858();
      v32 = v31;
      (*(v6 + 8))(v11, v3);
      v33 = sub_1C441D828(v30, v32, &v41);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v34 = sub_1C4F02A38();
      v36 = sub_1C441D828(v34, v35, &v41);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Error: Unable to read file %s with error %s", v29, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      (*(v39 + 8))(v40, v38);
    }

    else
    {

      (*(v6 + 8))(v11, v3);
      (*(v39 + 8))(v19, v12);
    }

    return 0;
  }

  else
  {
    v22 = v20;
    v23 = v21;
    v24 = sub_1C4EF9348();
    sub_1C44099C4(v24);
    sub_1C4EF9338();
    v25 = objc_autoreleasePoolPush();
    sub_1C447323C();
    sub_1C4EF9328();
    objc_autoreleasePoolPop(v25);

    sub_1C4434000(v22, v23);
    return v41;
  }
}

uint64_t type metadata accessor for AssetRegistryRemoteBackendInProcess()
{
  result = qword_1EDDFD458;
  if (!qword_1EDDFD458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447E144()
{
  sub_1C442F0C4();
  sub_1C444B080();
  v4 = v3;
  v6 = sub_1C440DFB8(v3, v5);
  v8 = sub_1C445FAA8(v6, v7);
  sub_1C442C5D8(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C4460A24();
  sub_1C456902C(&qword_1EC0B8DB8, &qword_1C4F0E350);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C444C21C();
    sub_1C44331E4();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    v12 = *(*v1 + 56);
    sub_1C4422220();

    return sub_1C4485A04(v13, v14);
  }

  else
  {
    v17 = sub_1C44158DC();
    sub_1C457DCCC(v17, v18, v0, v4, v19);
    sub_1C4422220();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C447E23C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 232) = a1;
  v4 = v1[1];
  *(v2 - 128) = *v1;
  *(v2 - 120) = v4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C447E260()
{
  *(v4 - 112) = v2;
  *(v4 - 104) = v1;
  *(v4 - 128) = v0;
  *(v4 - 120) = v3;
}

uint64_t sub_1C447E284()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_1C447E290()
{
  v2 = *(v0 + 20);

  return sub_1C4EFEEF8();
}

uint64_t sub_1C447E2D4(uint64_t result)
{
  v2 = (*(v1 + 56) + 24 * result);
  v3 = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1C447E2E8()
{

  return sub_1C4EF9368();
}

uint64_t sub_1C447E300()
{
  v2 = *(v0 - 656);
  v3 = *(v0 - 664);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C447E350()
{
  v3 = *(v1 - 88);

  return sub_1C4471BAC(v0, v3);
}

uint64_t sub_1C447E384()
{
}

uint64_t sub_1C447E3BC()
{

  return sub_1C4F02938();
}

uint64_t sub_1C447E3F4()
{
  *(v1 - 160) = v0;
  v3 = *(v1 - 168);

  return sub_1C4F02778();
}

id sub_1C447E480(uint64_t a1, const char *a2)
{
  *(v4 - 272) = v3;

  return [v3 a2];
}

char *sub_1C447E4A0(uint64_t a1, uint64_t a2)
{

  return sub_1C461950C(v2 + 16, a2, v2);
}

uint64_t sub_1C447E4C8()
{

  return sub_1C4EFEEF8();
}

uint64_t sub_1C447E4E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_1C447E514@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  result = type metadata accessor for NicknameEntry(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_1C447E558()
{
  sub_1C4411B70();
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1C4406AC8();
      sub_1C44801DC();
    }

    else if (result == 1)
    {
      sub_1C4406AC8();
      sub_1C4480178();
    }
  }

  return result;
}

uint64_t sub_1C447E5D8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v11 = type metadata accessor for RelationshipFullSourceIngestor();
  *(v3 + 48) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v14 = type metadata accessor for Source();
  *(v3 + 64) = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v17 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4480EA8, 0, 0);
}

uint64_t type metadata accessor for Fuser()
{
  result = qword_1EDDF0EA8;
  if (!qword_1EDDF0EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447E790(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 - 408);

  return sub_1C4498FD8(a1, a2);
}

uint64_t sub_1C447E7AC()
{

  return sub_1C4EFF808();
}

uint64_t sub_1C447E7C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C4F02678();
}

void sub_1C447E810()
{
  sub_1C440962C(v0);

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C447E844()
{
  v3 = (v1 + *(v0 + 32));
  *v3 = 0;
  v3[1] = 0;
  v4 = *(v0 + 36);

  return sub_1C4EFE658();
}

uint64_t sub_1C447E868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447E8C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447E918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447E970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447E9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C447EA28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EA80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C447EAE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EB38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EB90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FD3F8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EBE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447ECEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447ED44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447ED9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EDF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EEA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C447EF28()
{

  return swift_beginAccess();
}

id sub_1C447EF58()
{
  v6 = *(v0 + v4);
  v7 = *(v1 + v3);

  return [v7 (v2 + 3163)];
}

void sub_1C447EFA8()
{
  *(v2 - 144) = v1 + 16;
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 112) = v1 + 32;
}

uint64_t sub_1C447EFEC()
{

  return sub_1C4EFD5E8();
}

uint64_t sub_1C447F014()
{
  *(v0 + 8) = sub_1C4795B3C;
  result = v1[23];
  v3 = v1[20];
  v4 = v1[18];
  return result;
}

uint64_t sub_1C447F048@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C447F05C(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for EventStreamsEvent(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C447F088()
{

  return sub_1C4EFAD68();
}

uint64_t sub_1C447F0A0()
{
  v5 = *(v3 - 176);

  return sub_1C44CDA30(v0, v5, v1, v2);
}

uint64_t sub_1C447F0D0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;
  *(v2 - 104) = a1;

  return swift_willThrow();
}

uint64_t sub_1C447F194@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  v3 = *a2;
  return result;
}

uint64_t sub_1C447F1E8()
{

  return sub_1C4A26040();
}

uint64_t sub_1C447F204()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  return sub_1C4F02248();
}

uint64_t sub_1C447F224(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;
}

uint64_t sub_1C447F244()
{
  v2 = *(v0 + 20);

  return sub_1C4EFEEF8();
}

uint64_t sub_1C447F268()
{
  v3 = *(v1 - 192);
  v4 = *(v1 - 256);

  return sub_1C445FAA8(v0, v4);
}

void sub_1C447F288()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
}

uint64_t sub_1C447F2A4()
{
  v3 = *(v0 + 16);
  result = v1;
  *(v2 - 544) = v0 + 16;
  *(v2 - 552) = v3;
  return result;
}

void sub_1C447F2D0()
{
  v2 = *(v1 - 160);
  v3 = *(v1 - 200) + 2;
  *(v1 - 144) = v0;
}

uint64_t sub_1C447F344(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1C442B870(v3, va);
}

uint64_t sub_1C447F35C()
{
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  return sub_1C4F00978();
}

__n128 sub_1C447F394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23, __int128 a24)
{
  result = a23;
  *(a1 + 16) = a23;
  *(a1 + 32) = a24;
  return result;
}

void sub_1C447F3A4()
{
  v1 = v0[56];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[54];
}

uint64_t sub_1C447F3B8()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1C4409678(v0 + 2, v1);
  v3 = *(v2 + 72);
  return v1;
}

uint64_t sub_1C447F400()
{
  v4 = *(v2 + 20);
  *(v3 - 360) = v0;
  v5 = *(*(v3 - 328) + 16);
  result = v1 + v4;
  v7 = *(v3 - 352);
  return result;
}

uint64_t sub_1C447F42C()
{
  v1 = *(v0 - 320);
  v2 = *(v0 - 128);
  result = *(v2 + v1);
  *(v2 + v1) = *(v0 - 112);
  return result;
}

uint64_t sub_1C447F458@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  result = v2 + a1;
  v6 = *(v3 - 72);
  return result;
}

uint64_t type metadata accessor for Blocker()
{
  result = qword_1EDDF0D40;
  if (!qword_1EDDF0D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447F500()
{
  v3 = *(v0 + 48) + *(v1 - 192);
  v4 = *(v1 - 224);

  return sub_1C4851984();
}

uint64_t sub_1C447F534()
{

  return sub_1C4EF93A8();
}

uint64_t sub_1C447F54C()
{
  v2 = *(v0 - 608);
  v3 = *(v0 - 616);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C447F56C()
{
  v3 = v0[77];
  *(v1 - 176) = v0[78];
  *(v1 - 168) = v3;
  v4 = v0[75];
  *(v1 - 160) = v0[76];
  *(v1 - 152) = v4;
  v5 = v0[73];
  *(v1 - 144) = v0[74];
  *(v1 - 136) = v5;
  v6 = v0[71];
  *(v1 - 128) = v0[72];
  *(v1 - 120) = v6;
  v7 = v0[69];
  *(v1 - 112) = v0[70];
  *(v1 - 104) = v7;
}

uint64_t sub_1C447F5B8()
{
  v3 = *(v0 + *(v1 + 24));
  v4 = *(v0 + *(v1 + 36));

  return type metadata accessor for PromoteConstructionPhase();
}

uint64_t sub_1C447F5DC()
{
  result = v1;
  *(v2 - 400) = *(v0 + 8);
  return result;
}

void sub_1C447F5F4()
{
  v2 = v1 + 16 * v0;
  v3 = *(v2 - 64);
  v4 = *(v2 - 56);
}

uint64_t sub_1C447F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  *(v16 - 96) = a1;
  *v15 = a15;
}

uint64_t sub_1C447F6A4@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v1 + a1, v2);
}

uint64_t sub_1C447F6D0(uint64_t a1, unint64_t a2)
{

  return sub_1C441D828(a1, a2, (v2 - 88));
}

double sub_1C447F6E8()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t sub_1C447F6F4()
{
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[19];
  v7 = *(v1 + 20);

  return _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
}

uint64_t sub_1C447F720@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
}

uint64_t sub_1C447F750()
{
  v4 = *(v1 + 16);
  result = v0 + *(v2 + 20);
  v6 = *(v3 - 160);
  return result;
}

uint64_t sub_1C447F7A8()
{

  return sub_1C4F027E8();
}

uint64_t sub_1C447F7C8@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v3 + v1, v2 + a1);
}

uint64_t sub_1C447F7E0()
{

  return sub_1C440BAA8(v1, 0, 1, v0);
}

void sub_1C447F800()
{

  sub_1C47E5C30();
}

uint64_t sub_1C447F818()
{

  return sub_1C4471FB4();
}

uint64_t sub_1C447F834()
{

  return sub_1C456902C(v1, v0);
}

uint64_t sub_1C447F860(float a1)
{
  *v1 = a1;

  return sub_1C441D828(v2, v3, (v4 - 176));
}

uint64_t sub_1C447F880()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 152);
  return result;
}

void *sub_1C447F8A0()
{

  return memcpy((v0 - 256), (v0 - 176), 0x48uLL);
}

uint64_t sub_1C447F8BC()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t sub_1C447F8F8()
{

  return sub_1C4F02548();
}

uint64_t sub_1C447F910()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C447F928()
{

  return swift_slowAlloc();
}

void sub_1C447F944(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

id sub_1C447F964()
{

  return [v0 (v1 + 2296)];
}

uint64_t sub_1C447F9C0()
{
}

uint64_t sub_1C447F9DC(uint64_t a1)
{

  return sub_1C440BAA8(v1, 0, 1, a1);
}

uint64_t sub_1C447F9FC()
{

  return sub_1C44239FC(&unk_1C4F4E0D8);
}

uint64_t **sub_1C447FA48(uint64_t **result)
{
  v1 = **result;
  v2 = *(*result + 56);
  return result;
}

uint64_t sub_1C447FA58()
{
  v2 = *(v0 + 8);
  result = *(v1 - 232);
  v4 = *(v1 - 224);
  return result;
}

unint64_t sub_1C447FA64()
{

  return sub_1C4B9B1DC();
}

void sub_1C447FACC()
{
  sub_1C440962C(v0);

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C447FB54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 152);
  v5 = *(v1 - 144);

  return sub_1C4F026C8();
}

uint64_t sub_1C447FB94(double a1)
{
  v7 = (v1 + v4[8]);
  *v7 = v3;
  v7[1] = v2;
  v8 = (v1 + v4[10]);
  v9 = *(v5 - 112);
  *v8 = *(v5 - 120);
  v8[1] = v9;
  *(v1 + v4[11]) = a1;
  *(v1 + v4[12]) = *(v5 - 132);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C447FBD4()
{
  v3 = (v1 + *(v0 + 32));
  *v3 = 0;
  v3[1] = 0;
  *(v2 - 200) = *(v0 + 36);
}

uint64_t type metadata accessor for PairGenerator()
{
  result = qword_1EDDF8030;
  if (!qword_1EDDF8030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PassthroughMatcher()
{
  result = qword_1EDDF4EC0;
  if (!qword_1EDDF4EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C447FCA0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1008);
  *(v0 + 712) = *(v0 + 1064);
  sub_1C443F708();
  *(v0 + 720) = sub_1C4472508(v5, v6);
  *(v0 + 688) = v1;
  *(v0 + 1088) = sub_1C456902C(&qword_1EC0B8AA8, &unk_1C4F4E0E0);
  inited = swift_initStackObject();
  *(v0 + 1096) = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 688), inited + 32);
  sub_1C441A2F4();
  sub_1C443113C(v4 + v2, v3);
  *(v0 + 1193) = 1;
  [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_1C43FBE94();
  v8 = type metadata accessor for ContactsPersonPhase();
  *(v0 + 1104) = v8;
  sub_1C43FD23C(v8);
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 1112) = v9;
  *v9 = v0;
  sub_1C44C12B8(v9);
  v11 = sub_1C440F4D4(v10);

  return sub_1C44758E8(v11, v12, v3, 1);
}

uint64_t *sub_1C447FE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Configuration();
  sub_1C43FBD18(v7);
  return sub_1C44736B0(a1, a2, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a3);
}

uint64_t AssetRegistryOverrideStore.__allocating_init(config:)(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4430848(a1, v6, type metadata accessor for Configuration);
  v7 = type metadata accessor for KeyValueStore();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = KeyValueStore.init(config:domain:)(v6, 0xD000000000000017, 0x80000001C4F8A750);
  sub_1C4404B44();
  result = sub_1C4453C94();
  if (!v1)
  {
    result = swift_allocObject();
    *(result + 16) = v10;
  }

  return result;
}

uint64_t sub_1C447FFF4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CC8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "MatcherModel: re-using cached nicknames";
LABEL_10:
      _os_log_impl(&dword_1C43F8000, v3, v4, v6, v5, 2u);
      MEMORY[0x1C6942830](v5, -1, -1);
    }
  }

  else
  {
    type metadata accessor for Nicknames();
    sub_1C43FBDBC();
    v1 = swift_allocObject();
    sub_1C4486210();
    swift_weakAssign();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CC8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "MatcherModel: caching nicknames";
      goto LABEL_10;
    }
  }

  return v1;
}

uint64_t sub_1C4480248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NicknameEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C44802AC()
{
  sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v4)
  {
    v5 = sub_1C44323C4();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_1C445FC08(v5, v6);
    }

    sub_1C4404F28();
    while (v3)
    {
      sub_1C43FEA58();
LABEL_15:
      sub_1C4851B5C();
      v16 = (v15 + 16 * v14);
      v17 = v16[1];
      v18 = (v0[6] + 16 * v14);
      *v18 = *v16;
      v18[1] = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_1C4851B68();
      if (v11)
      {
        sub_1C43FCF1C();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

uint64_t sub_1C448037C()
{

  return sub_1C4F01198();
}

uint64_t sub_1C44803A0()
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C44803C0()
{
  v2 = *(v0 - 888);
  v3 = *(v0 - 896);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44803E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C440BAA8(v4, 1, 1, a4);
}

uint64_t sub_1C4480414()
{
  v3 = *(v1 - 120);

  return sub_1C4471BAC(v0, v3);
}

uint64_t sub_1C4480440()
{

  return sub_1C4F02938();
}

void *sub_1C4480460()
{

  return sub_1C4409678((v1 - 136), v0);
}

uint64_t sub_1C4480478()
{
  v2 = *(v0 + 20);

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4480490()
{
  v2 = *(v0 - 160);

  return sub_1C4F027E8();
}

uint64_t sub_1C44804C0()
{
  *(v1 - 348) = v0;
  v3 = *(v1 - 72);

  return sub_1C4F02858();
}

void sub_1C44804F8()
{
  *(v0 - 280) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 272) = 0;
}

uint64_t sub_1C4480510()
{
  result = v1 + v0;
  v4 = *(v2 - 120);
  v5 = *(v2 - 104);
  return result;
}

uint64_t sub_1C448053C()
{
  v2 = **(v0 - 144);

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1C4480554()
{

  return v0;
}

uint64_t sub_1C448056C()
{
  result = v0;
  v3 = *(v1 - 248);
  return result;
}

void *sub_1C4480578()
{
  v2 = v0[36];
  v3 = (v0[37] + 24);

  return memcpy(v0 + 11, v3, 0x48uLL);
}

uint64_t sub_1C44805D4(uint64_t a1)
{

  return sub_1C4471988(a1, v1);
}

uint64_t sub_1C44805EC()
{

  return sub_1C441D828(v1, v0, (v2 - 176));
}

uint64_t sub_1C4480620@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 248) = a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4480668@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D7C0(v3 + a2, v4 + v2, a1);
}

uint64_t sub_1C44806A4@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v2, v1 + a1);
}

void sub_1C44806E0()
{
  v3 = *(v1 - 176);
  v4 = *(v1 - 168);

  sub_1C4B5B968(v0);
}

void sub_1C448072C(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  v4 = *(v3 + 40);
}

uint64_t sub_1C4480738@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1 & 1;

  return type metadata accessor for PhaseStores();
}

uint64_t sub_1C4480754()
{
  v3 = *v0;
  *(v1 - 88) = 0;

  return sub_1C4F027F8();
}

uint64_t sub_1C44807A0()
{
  *(v1 - 120) = v0;
  v3 = *(v1 - 112);

  return sub_1C4F02BC8();
}

void sub_1C44807C8()
{
  v5 = *(v3 - 176);

  sub_1C457E054(v5, v2, v0, v1);
}

void sub_1C4480810()
{
  v1 = *(v0 - 72);
  v2 = *(v0 - 216);
  v3 = *(v0 - 200);
}

void sub_1C4480820(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1C4480848(uint64_t a1)
{

  return sub_1C4440C6C(a1);
}

uint64_t sub_1C44808B4()
{
  v2 = *(v0 - 224);

  return sub_1C4F02658();
}

uint64_t sub_1C44808F8()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C44878E0, 0, 0);
}

uint64_t sub_1C44809F4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1104);
  sub_1C44A1824();
  *(v0 + 752) = v3;
  sub_1C4418510();
  *(v0 + 760) = sub_1C4472508(v4, v5);
  *(v0 + 728) = v1;
  inited = swift_initStackObject();
  *(v0 + 1128) = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 728), inited + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 1194) = 1;
  v7 = type metadata accessor for PhotosPersonPhase();
  *(v0 + 1136) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 1144) = v8;
  *v8 = v0;
  sub_1C44C12B8(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4487D4C(v10, v11);
}

uint64_t PipelineType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1819047270;
      break;
    case 2:
      result = 0x61746C6564;
      break;
    case 3:
      result = sub_1C44133C0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4480BF4()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  if (v0[8])
  {
    v4 = v0[9];
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C4480C54()
{
  v1[126] = v0;
  v2 = type metadata accessor for Source();
  v1[127] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[128] = swift_task_alloc();
  v4 = *(*(type metadata accessor for Configuration() - 8) + 64) + 15;
  v1[129] = swift_task_alloc();
  v5 = type metadata accessor for PhaseStores();
  v1[130] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[131] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4480D90, 0, 0);
}

uint64_t type metadata accessor for Source()
{
  result = qword_1EDDFFB50;
  if (!qword_1EDDFFB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4480D90()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1008);
  *(v0 + 1056) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
  sub_1C441A2F4();
  sub_1C443113C(v3 + v4, v5);
  *(v0 + 1192) = 1;
  v6 = type metadata accessor for RelationshipPhase();
  *(v0 + 1064) = v6;
  sub_1C43FD23C(v6);
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1072) = v7;
  *v7 = v0;
  sub_1C44C12B8(v7);
  v9 = sub_1C440F4D4(v8);

  return sub_1C447E5D8(v9, v10);
}

uint64_t type metadata accessor for Linker()
{
  result = qword_1EDDF0E10;
  if (!qword_1EDDF0E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4480EA8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C44717B8(v3, v4, v5);
  if (qword_1EDDFD318 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 121);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 64), qword_1EDDFD320);
  *(v0 + 104) = v13;
  sub_1C44717B8(v13, v7, type metadata accessor for Source);
  sub_1C44717B8(v12, v10 + *(v11 + 20), type metadata accessor for PhaseStores);
  *(v10 + *(v11 + 24)) = 1;
  sub_1C44717B8(v13, v10, type metadata accessor for Source);
  sub_1C44717B8(v13, v9, type metadata accessor for Source);
  sub_1C44717B8(v12, v8, type metadata accessor for PhaseStores);
  *(v0 + 120) = v6;
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_1C4482FAC;
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t Linker.init(source:stores:pipelineType:)()
{
  sub_1C43FBCD4();
  v2 = v1;
  *(v0 + 544) = v3;
  *(v0 + 536) = v4;
  *(v0 + 528) = v5;
  v6 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  *(v0 + 552) = sub_1C4488314();
  *(v0 + 560) = swift_task_alloc();
  *(v0 + 568) = swift_task_alloc();
  *(v0 + 576) = swift_task_alloc();
  *(v0 + 584) = swift_task_alloc();
  *(v0 + 592) = swift_task_alloc();
  *(v0 + 600) = swift_task_alloc();
  *(v0 + 608) = swift_task_alloc();
  *(v0 + 616) = swift_task_alloc();
  *(v0 + 624) = swift_task_alloc();
  *(v0 + 632) = swift_task_alloc();
  *(v0 + 640) = swift_task_alloc();
  *(v0 + 648) = swift_task_alloc();
  *(v0 + 656) = swift_task_alloc();
  *(v0 + 664) = swift_task_alloc();
  *(v0 + 672) = swift_task_alloc();
  v9 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  *(v0 + 680) = sub_1C4488314();
  *(v0 + 688) = swift_task_alloc();
  *(v0 + 696) = swift_task_alloc();
  *(v0 + 704) = swift_task_alloc();
  *(v0 + 712) = swift_task_alloc();
  *(v0 + 720) = swift_task_alloc();
  *(v0 + 728) = swift_task_alloc();
  *(v0 + 736) = swift_task_alloc();
  *(v0 + 744) = swift_task_alloc();
  *(v0 + 752) = swift_task_alloc();
  *(v0 + 760) = swift_task_alloc();
  *(v0 + 768) = swift_task_alloc();
  *(v0 + 776) = swift_task_alloc();
  *(v0 + 784) = swift_task_alloc();
  *(v0 + 792) = swift_task_alloc();
  *(v0 + 800) = swift_task_alloc();
  v12 = type metadata accessor for Resolver();
  *(v0 + 808) = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  *(v0 + 816) = sub_1C4488314();
  *(v0 + 824) = swift_task_alloc();
  *(v0 + 832) = swift_task_alloc();
  *(v0 + 840) = swift_task_alloc();
  *(v0 + 848) = swift_task_alloc();
  *(v0 + 856) = swift_task_alloc();
  *(v0 + 864) = swift_task_alloc();
  *(v0 + 872) = swift_task_alloc();
  *(v0 + 880) = swift_task_alloc();
  *(v0 + 888) = swift_task_alloc();
  *(v0 + 896) = swift_task_alloc();
  *(v0 + 904) = swift_task_alloc();
  *(v0 + 912) = swift_task_alloc();
  *(v0 + 920) = swift_task_alloc();
  *(v0 + 928) = swift_task_alloc();
  *(v0 + 936) = swift_task_alloc();
  *(v0 + 944) = swift_task_alloc();
  *(v0 + 952) = swift_task_alloc();
  v15 = sub_1C4EFD548();
  *(v0 + 960) = v15;
  v16 = *(v15 - 8);
  *(v0 + 968) = v16;
  v17 = *(v16 + 64);
  *(v0 + 976) = sub_1C4488314();
  *(v0 + 984) = swift_task_alloc();
  *(v0 + 992) = swift_task_alloc();
  *(v0 + 1000) = swift_task_alloc();
  *(v0 + 1008) = swift_task_alloc();
  *(v0 + 1016) = swift_task_alloc();
  v18 = type metadata accessor for PhaseStores();
  *(v0 + 1024) = v18;
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  *(v0 + 1032) = sub_1C4488314();
  *(v0 + 1040) = swift_task_alloc();
  *(v0 + 1048) = swift_task_alloc();
  *(v0 + 1056) = swift_task_alloc();
  *(v0 + 1064) = swift_task_alloc();
  *(v0 + 1072) = swift_task_alloc();
  *(v0 + 1080) = swift_task_alloc();
  *(v0 + 1088) = swift_task_alloc();
  *(v0 + 1096) = swift_task_alloc();
  *(v0 + 1104) = swift_task_alloc();
  *(v0 + 1112) = swift_task_alloc();
  *(v0 + 1120) = swift_task_alloc();
  *(v0 + 1128) = swift_task_alloc();
  *(v0 + 1136) = swift_task_alloc();
  *(v0 + 1144) = swift_task_alloc();
  *(v0 + 1152) = swift_task_alloc();
  *(v0 + 1160) = swift_task_alloc();
  *(v0 + 1168) = swift_task_alloc();
  *(v0 + 1176) = swift_task_alloc();
  *(v0 + 1184) = swift_task_alloc();
  *(v0 + 1192) = swift_task_alloc();
  *(v0 + 1200) = swift_task_alloc();
  *(v0 + 1208) = swift_task_alloc();
  *(v0 + 1216) = swift_task_alloc();
  *(v0 + 1224) = swift_task_alloc();
  *(v0 + 1232) = swift_task_alloc();
  *(v0 + 1240) = swift_task_alloc();
  *(v0 + 1248) = swift_task_alloc();
  *(v0 + 1256) = swift_task_alloc();
  *(v0 + 1264) = swift_task_alloc();
  *(v0 + 1272) = swift_task_alloc();
  *(v0 + 1280) = swift_task_alloc();
  *(v0 + 1288) = swift_task_alloc();
  *(v0 + 1296) = swift_task_alloc();
  v21 = type metadata accessor for Source();
  *(v0 + 1304) = v21;
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  *(v0 + 1312) = sub_1C4488314();
  *(v0 + 1320) = swift_task_alloc();
  *(v0 + 1328) = swift_task_alloc();
  *(v0 + 1336) = swift_task_alloc();
  *(v0 + 1344) = swift_task_alloc();
  *(v0 + 1352) = swift_task_alloc();
  *(v0 + 1360) = swift_task_alloc();
  *(v0 + 1368) = swift_task_alloc();
  *(v0 + 1376) = swift_task_alloc();
  *(v0 + 1384) = swift_task_alloc();
  *(v0 + 1392) = swift_task_alloc();
  *(v0 + 1400) = swift_task_alloc();
  *(v0 + 1408) = swift_task_alloc();
  *(v0 + 1416) = swift_task_alloc();
  *(v0 + 1424) = swift_task_alloc();
  *(v0 + 1432) = swift_task_alloc();
  *(v0 + 1440) = swift_task_alloc();
  *(v0 + 1448) = swift_task_alloc();
  *(v0 + 1456) = swift_task_alloc();
  *(v0 + 1464) = swift_task_alloc();
  *(v0 + 1472) = swift_task_alloc();
  *(v0 + 1480) = swift_task_alloc();
  *(v0 + 1488) = swift_task_alloc();
  *(v0 + 1496) = swift_task_alloc();
  *(v0 + 1504) = swift_task_alloc();
  *(v0 + 1512) = swift_task_alloc();
  *(v0 + 1520) = swift_task_alloc();
  *(v0 + 1528) = swift_task_alloc();
  *(v0 + 1536) = swift_task_alloc();
  *(v0 + 1544) = swift_task_alloc();
  *(v0 + 1552) = swift_task_alloc();
  *(v0 + 1560) = swift_task_alloc();
  *(v0 + 1568) = swift_task_alloc();
  *(v0 + 1576) = swift_task_alloc();
  *(v0 + 1584) = swift_task_alloc();
  *(v0 + 2573) = *v2;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

void sub_1C448177C()
{
  sub_1C43FBD3C();
  v4 = v3;
  v5 = sub_1C4EFD548();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  (*(v8 + 16))(v1, v0, v5);
  sub_1C4EFD4C8();
  sub_1C44189E4();
  sub_1C447CB3C(v12, v13);
  v14 = sub_1C44021B8();
  v15 = *(v8 + 8);
  v15(v2, v5);
  if (v14)
  {
    v16 = sub_1C43FD024();
    (v15)(v16);
    sub_1C456902C(&qword_1EC0BA5A0, &qword_1C4F142F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C4F13950;
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    sub_1C43FBE94();
    v18 = sub_1C4EFEEF8();
    sub_1C43FCF7C(v18);
    v19 = v4;
    v21 = *(v20 + 72);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_1C4485B60();
    v24 = swift_allocObject();
    sub_1C44AE010(v24, xmmword_1C4F0CE60);
    sub_1C4EFE478();
    sub_1C4EFE518();
    *(v17 + 56) = &type metadata for ContactHandleBlockingFunction;
    *(v17 + 64) = &protocol witness table for ContactHandleBlockingFunction;
    v25 = MEMORY[0x1E69E7CC0];
    *(v17 + 32) = MEMORY[0x1E69E7CC0];
    *(v17 + 40) = v24;
    sub_1C4485B60();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C4F0D130;
    sub_1C4EFE558();
    *(v17 + 96) = &type metadata for VisualIdentifierBlockingFunction;
    *(v17 + 104) = &protocol witness table for VisualIdentifierBlockingFunction;
    *(v17 + 72) = v25;
    *(v17 + 80) = v26;
    *(v17 + 88) = v19;
    sub_1C4485B60();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C4F0D130;

    sub_1C4EFE558();
    *(v17 + 136) = &type metadata for SimpleBlockingFunction;
    *(v17 + 144) = &protocol witness table for SimpleBlockingFunction;
    *(v17 + 112) = v25;
    *(v17 + 120) = v27;
    sub_1C4485B60();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C4F0F830;
    sub_1C4EFEBF8();
    sub_1C4EFE338();
    sub_1C4EFEE68();
    sub_1C4EFE328();
    sub_1C4EFE2C8();
    sub_1C4EFE348();
    sub_1C4EFE3A8();
    *(v17 + 176) = &type metadata for SimpleBlockingFunction;
    *(v17 + 184) = &protocol witness table for SimpleBlockingFunction;
    *(v17 + 152) = v28;
    *(v17 + 160) = v25;
    sub_1C4485B60();
    v29 = swift_allocObject();
    *(v29 + 16) = v72;
    sub_1C4EFE5D8();
    sub_1C4EFE9C8();
    *(v17 + 216) = &type metadata for SimpleBlockingFunction;
    *(v17 + 224) = &protocol witness table for SimpleBlockingFunction;
    *(v17 + 192) = v29;
    *(v17 + 200) = v25;
LABEL_5:
    sub_1C43FE9F0();
    return;
  }

  sub_1C4EFD4A8();
  sub_1C44021B8();
  v30 = sub_1C442F114();
  (v15)(v30);
  sub_1C4EFCF18();
  sub_1C44021B8();
  v31 = sub_1C442F114();
  (v15)(v31);
  sub_1C4EFD1C8();
  sub_1C44021B8();
  v32 = sub_1C442F114();
  (v15)(v32);
  sub_1C4EFD4E8();
  sub_1C44021B8();
  v33 = sub_1C442F114();
  (v15)(v33);
  _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v34 = sub_1C442F114();
  (v15)(v34);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v42 = sub_1C442F114();
  (v15)(v42);
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v43 = sub_1C442F114();
  (v15)(v43);
  sub_1C4EFD538();
  sub_1C44021B8();
  v44 = sub_1C442F114();
  (v15)(v44);
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v45 = sub_1C442F114();
  (v15)(v45);
  if (v14)
  {
    goto LABEL_4;
  }

  sub_1C4EFD1C8();
  sub_1C44021B8();
  v46 = sub_1C442F114();
  (v15)(v46);
  sub_1C4EFCF28();
  sub_1C44021B8();
  v47 = sub_1C442F114();
  (v15)(v47);
  sub_1C4EFCFB8();
  v14 = v2;
  sub_1C4EFD0A8();
  v48 = sub_1C4404CE0();
  v15(v48, v5);
  sub_1C4404050();
  sub_1C448285C();
  v50 = v49;

  if (v50)
  {
    goto LABEL_4;
  }

  sub_1C4EFCF18();
  v14 = v2;
  sub_1C4EFD0A8();
  v51 = sub_1C4404CE0();
  v15(v51, v5);
  sub_1C4404050();
  sub_1C448285C();
  v53 = v52;

  if (v53 & 1) != 0 || (sub_1C4EFD3B8(), sub_1C44021B8(), v54 = sub_1C442F114(), (v15)(v54), (v2))
  {
LABEL_4:
    v35 = sub_1C43FD024();
    (v15)(v35);
    sub_1C456902C(&qword_1EC0BA5A0, &qword_1C4F142F0);
    v36 = sub_1C44331AC();
    sub_1C44AE010(v36, xmmword_1C4F0D130);
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    sub_1C43FBE94();
    v37 = sub_1C4EFEEF8();
    sub_1C43FCF7C(v37);
    v39 = *(v38 + 72);
    v40 = sub_1C443F558();
    sub_1C441AE54(v40);
    sub_1C4EFEBB8();
    v36[3].n128_u64[1] = &type metadata for SimpleBlockingFunction;
    v36[4].n128_u64[0] = &protocol witness table for SimpleBlockingFunction;
    v41 = MEMORY[0x1E69E7CC0];
    v36[2].n128_u64[0] = v14;
    v36[2].n128_u64[1] = v41;
    goto LABEL_5;
  }

  sub_1C4EFCF48();
  sub_1C44021B8();
  v55 = sub_1C442F114();
  (v15)(v55);
  sub_1C4EFD3E8();
  sub_1C44021B8();
  v56 = sub_1C442F114();
  (v15)(v56);
  sub_1C4EFD4E8();
  sub_1C44021B8();
  v57 = sub_1C442F114();
  (v15)(v57);
  sub_1C4EFCEC8();
  sub_1C44021B8();
  v58 = sub_1C442F114();
  (v15)(v58);
  sub_1C4EFCFC8();
  sub_1C44021B8();
  v59 = sub_1C442F114();
  (v15)(v59);
  sub_1C4EFD498();
  sub_1C44021B8();
  v60 = sub_1C442F114();
  (v15)(v60);
  sub_1C4EFD018();
  sub_1C44021B8();
  v61 = sub_1C442F114();
  (v15)(v61);
  sub_1C4EFCED8();
  sub_1C44021B8();
  v62 = sub_1C442F114();
  (v15)(v62);
  sub_1C4EFD1E8();
  sub_1C44021B8();
  v63 = sub_1C442F114();
  (v15)(v63);
  sub_1C4EFD0B8();
  sub_1C44021B8();
  v64 = sub_1C442F114();
  (v15)(v64);
  sub_1C4EFD428();
  sub_1C44021B8();
  v65 = sub_1C442F114();
  (v15)(v65);
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44021B8();
  v66 = sub_1C442F114();
  (v15)(v66);
  sub_1C4EFD218();
  sub_1C44021B8();
  v67 = sub_1C442F114();
  (v15)(v67);
  sub_1C4EFCEE8();
  sub_1C44021B8();
  v68 = sub_1C442F114();
  (v15)(v68);
  sub_1C4EFD4D8();
  sub_1C44021B8();
  v69 = sub_1C442F114();
  (v15)(v69);
  sub_1C4EFCEF8();
  sub_1C44021B8();
  v70 = sub_1C442F114();
  (v15)(v70);
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4F8ECC0);
  v71 = sub_1C4EFD3D8();
  MEMORY[0x1C6940010](v71);

  MEMORY[0x1C6940010](0xD000000000000021, 0x80000001C4F8ECE0);
  sub_1C4656C24();
  __break(1u);
}

void sub_1C448285C()
{
  sub_1C43FBD3C();
  sub_1C43FFB44();
  v1 = sub_1C4EFD548();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440F400();
  if (*(v0 + 16))
  {
    v5 = *(v0 + 40);
    sub_1C44586E0();
    sub_1C4403D94(v6, v7);
    sub_1C442F8E4();
    sub_1C440CAC8();
    sub_1C4475608();
    do
    {
      sub_1C4416780(v8);
      if (!v9)
      {
        break;
      }

      v10 = sub_1C4461CA0();
      v11(v10);
      sub_1C44586E0();
      sub_1C4403D94(&qword_1EDDFCCD8, v12);
      sub_1C442234C();
      sub_1C4F010B8();
      v13 = sub_1C443E188();
      v14(v13);
      v8 = v0 + 1;
    }

    while ((v1 & 1) == 0);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44829A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = sub_1C4EFD548();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v12);
  (*(v9 + 16))(&v33 - v13, v4, v6);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C44189E4();
  sub_1C447CB3C(v14, v15);
  v16 = sub_1C44068D0();
  v17 = *(v9 + 8);
  v17(v3, v6);
  if (v16)
  {
    v18 = sub_1C4404050();
    (v17)(v18);
    sub_1C456902C(&qword_1EC0BA598, &unk_1C4F142E0);
    v19 = sub_1C44331AC();
    *(v19 + 16) = xmmword_1C4F0D130;
    *(v19 + 56) = &type metadata for LocationGeoHashBlockingFunction;
    *(v19 + 64) = &protocol witness table for LocationGeoHashBlockingFunction;
  }

  else
  {
    sub_1C4EFCEF8();
    v20 = sub_1C44068D0();
    v17(v3, v6);
    v21 = sub_1C4404050();
    (v17)(v21);
    v19 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      sub_1C456902C(&qword_1EC0BA598, &unk_1C4F142E0);
      v22 = sub_1C44331AC();
      v33 = xmmword_1C4F0D130;
      *(v22 + 16) = xmmword_1C4F0D130;
      v23 = *(a2 + *(type metadata accessor for PhaseStores() + 48));
      sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v24 = sub_1C4EFEEF8();
      sub_1C43FCF7C(v24);
      v26 = *(v25 + 72);
      v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v33;

      sub_1C4EFE558();
      *(v22 + 56) = &type metadata for WalletOrderBlockingFunction;
      *(v22 + 64) = &protocol witness table for WalletOrderBlockingFunction;
      v30 = swift_allocObject();
      *(v22 + 32) = v30;
      sub_1C448DE08(&unk_1F43D6C80);
      v30[2] = v19;
      v30[3] = v29;
      v30[4] = v23;
      v30[5] = v31;
      return v22;
    }
  }

  return v19;
}

uint64_t sub_1C4482C7C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4482CE8()
{

  return sub_1C48519DC(v1, v0);
}

uint64_t sub_1C4482D0C()
{
  result = v0;
  v3 = *(v1 - 200);
  return result;
}

uint64_t sub_1C4482D4C()
{
}

uint64_t sub_1C4482DB0@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + *(v2 + 36);

  return sub_1C449ED64(v1 + a1, v5);
}

uint64_t sub_1C4482DCC()
{
  v2 = *(*(v0 - 160) + 20);

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4482DEC@<X0>(uint64_t a1@<X8>)
{
  result = v2 + v1;
  v5 = *(v3 - 72) + a1;
  return result;
}

id sub_1C4482DFC(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t sub_1C4482E1C()
{
  v5 = v2 + *(v1 + 24);
  v6 = *(v3 - 112);

  return sub_1C4471988(v0, v5);
}

uint64_t sub_1C4482E64()
{
  v2 = v0 + *(v1 - 120);
  result = *(v1 - 240);
  v4 = *(v1 - 72);
  return result;
}

uint64_t sub_1C4482E7C()
{
  v3 = *(v0 + *(v1 + 28));

  return sub_1C448D934(v3);
}

void sub_1C4482EA0()
{
  v1 = *(v0 - 112);
  v2 = *(v1 + 32);
  *(v0 - 112) = v1 + 32;
}

void sub_1C4482EB0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4482EF0()
{

  return sub_1C44CC80C(v1, v0, v2);
}

uint64_t sub_1C4482F20()
{
  v3 = *(v2 - 224);
  v4 = *(*(v2 - 232) + 16);
  result = v0 + *(v1 + 24);
  v6 = *(v2 - 328);
  return result;
}

uint64_t sub_1C4482F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4482FAC()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4472240, 0, 0);
}

void Fuser.init(source:stores:pipelineType:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v504 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for StandardEntityFusion();
  v9 = sub_1C43FCDF8(v8);
  v488 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v494 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v496 = (&v481 - v15);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v495 = (&v481 - v17);
  v18 = sub_1C4EFD548();
  v500 = sub_1C43FCDF8(v18);
  v501 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v500);
  sub_1C43FBFDC();
  v493 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v487 = (&v481 - v24);
  sub_1C43FD1D0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v481 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v481 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v490 = &v481 - v32;
  v33 = type metadata accessor for PhaseStores();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  sub_1C43FBCC4();
  v489 = v36 - v35;
  v37 = type metadata accessor for Source();
  v38 = sub_1C43FBCE0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v43 = (v42 - v41);
  v44 = *v1;
  sub_1C441FAA8();
  v498 = v3;
  sub_1C4471874(v3, v7);
  v45 = type metadata accessor for Fuser();
  v46 = *(v45 + 20);
  sub_1C4432340();
  sub_1C4471874(v5, v7 + v47);
  v491 = v45;
  v492 = v7;
  v48 = *(v45 + 28);
  v499 = v44;
  *(v7 + v48) = v44;
  v497 = v5;
  sub_1C4471874(v5, v43);
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v49 = sub_1C442B738(v37, &unk_1EDDFD088);
  v50 = *v43;
  v51 = v43[1];
  v52 = *v49 == *v43 && v49[1] == v51;
  if (v52 || (v53 = sub_1C44250D8(), (v53 & 1) != 0))
  {
    sub_1C440041C();
    v494 = v54;
    sub_1C4485404(v43, v55);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    sub_1C442A404();
    v56 = swift_allocObject();
    sub_1C4419768(v56, xmmword_1C4F0D480);
    v57 = v498;
    v58 = v489;
    v495 = v59;
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v56[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v62 = sub_1C445E5E8(v60, v61);
    v63 = sub_1C44145B4(v62);
    v64 = sub_1C43FC3C0(v63);
    sub_1C4471874(v64, v65);
    sub_1C4406F18();
    v493 = v66;
    v67 = sub_1C4422A94();
    sub_1C4485614(v67, v68);
    v69 = v8[5];
    v70 = v501 + 32;
    v496 = *(v501 + 32);
    v71 = sub_1C447F0C4(v69);
    v72(v71);
    v501 = v70;
    sub_1C4409CC8();
    sub_1C4471874(v57, v58);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v56[6].n128_u64[0] = v8;
    v56[6].n128_u64[1] = v62;
    v488 = v62;
    v73 = sub_1C4422F90(&v56[4].n128_i64[1]);
    sub_1C442BB84(v73);
    sub_1C4471874(v31, v74);
    v75 = sub_1C4422A94();
    v76 = v493;
    sub_1C4485614(v75, v77);
    v78 = sub_1C447F0C4(v8[5]);
    v496(v78);
    LOBYTE(v70) = v499;
    *(v51 + v8[7]) = v499;
    sub_1C4471874(v57, v58);
    sub_1C4EFD4A8();
    v56[8].n128_u64[1] = v8;
    v56[9].n128_u64[0] = v62;
    v79 = sub_1C4422F90(&v56[7]);
    sub_1C442BB84(v79);
    v80 = v497;
    sub_1C4471874(v497, v81);
    v82 = sub_1C4422A94();
    sub_1C4485614(v82, v83);
    v84 = sub_1C447F0C4(v8[5]);
    v85 = v500;
    v86 = v496;
    v496(v84);
    *(v51 + v8[7]) = v70;
    v87 = v80;
    v88 = v498;
    v89 = v495;
    sub_1C4471874(v498, v58);
    sub_1C4EFD4C8();
    v90 = v488;
    v56[11].n128_u64[0] = v8;
    v56[11].n128_u64[1] = v90;
    v91 = sub_1C4422F90(&v56[9].n128_i64[1]);
    sub_1C4418444(v91);
    sub_1C4471874(v87, v92);
    v93 = sub_1C43FD7E0();
    sub_1C4485614(v93, v94);
    v86(v76 + v8[5], v45, v85);
    sub_1C4422AEC();
    v95 = v88;
    v51 = v87;
    v96 = v89;
LABEL_19:
    sub_1C4485404(v95, v96);
LABEL_20:
    sub_1C440041C();
    sub_1C4485404(v51, v118);
    *(v492 + *(v491 + 24)) = v56;
    v119 = *MEMORY[0x1E69E9840];
    sub_1C43FE9F0();
    return;
  }

  if (qword_1EDDFD0D0 != -1)
  {
    v53 = swift_once();
  }

  sub_1C440AB64(v53, qword_1EDDFD0D8);
  v98 = v52 && v97 == v51;
  if (v98 || (v99 = sub_1C44250D8(), (v99 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v100;
    sub_1C4485404(v43, v101);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = sub_1C4404370();
    sub_1C4419768(v56, xmmword_1C4F0CE60);
    v496 = v102;
    sub_1C445FD38();
    sub_1C442F1E4();
    sub_1C4EFD538();
    v56[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v105 = sub_1C445E5E8(v103, v104);
    v106 = sub_1C443F614(v105);
    v107 = sub_1C442DF64(v106);
    sub_1C4471874(v107, v108);
    sub_1C4406F18();
    v494 = v109;
    sub_1C4401DD8();
    v110 = sub_1C4414B0C(v8[5]);
    v44 = v8;
LABEL_17:
    v111(v110);
    sub_1C4404344();
    sub_1C4EFD4C8();
LABEL_18:
    v56[6].n128_u64[0] = v44;
    v56[6].n128_u64[1] = v31;
    v112 = sub_1C4422F90(&v56[4].n128_i64[1]);
    v113 = sub_1C4434124(v112);
    sub_1C4471874(v113, v114);
    v115 = sub_1C43FD7E0();
    sub_1C4485614(v115, v116);
    v117 = sub_1C442ABDC();
    (v501)(v117);
    v31[*(v44 + 7)] = v50;
    v95 = v106;
    v96 = v496;
    goto LABEL_19;
  }

  if (qword_1EDDFD268 != -1)
  {
    v99 = swift_once();
  }

  sub_1C440AB64(v99, &qword_1EDDFD270);
  v121 = v52 && v120 == v51;
  if (v121 || (v122 = sub_1C44250D8(), (v122 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v123;
    sub_1C4485404(v43, v124);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = sub_1C4404370();
    sub_1C4419768(v56, xmmword_1C4F0CE60);
    v496 = v125;
    sub_1C445FD38();
    sub_1C442F1E4();
    sub_1C4EFD3E8();
    v56[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v128 = sub_1C445E5E8(v126, v127);
    v106 = sub_1C443F614(v128);
    v129 = sub_1C442DF64(v106);
    sub_1C4471874(v129, v130);
    sub_1C4406F18();
    v494 = v131;
    sub_1C4401DD8();
    v132 = sub_1C4414B0C(v8[5]);
    v44 = v8;
    v133(v132);
    sub_1C4404344();
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    goto LABEL_18;
  }

  if (qword_1EDDFD068 != -1)
  {
LABEL_101:
    v122 = swift_once();
  }

  sub_1C440AB64(v122, qword_1EDDFD070);
  v135 = v52 && v134 == v51;
  if (v135 || (v136 = sub_1C44250D8(), (v136 & 1) != 0))
  {
    sub_1C440041C();
    v494 = v137;
    sub_1C4485404(v43, v138);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = swift_allocObject();
    sub_1C4419768(v56, xmmword_1C4F0C890);
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    sub_1C4EFD4C8();
    v56[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v496 = sub_1C445E5E8(v139, v140);
    v141 = sub_1C44145B4(v496);
    v142 = sub_1C43FC3C0(v141);
    sub_1C4471874(v142, v143);
    sub_1C4406F18();
    v495 = v144;
    v145 = sub_1C4422A94();
    sub_1C4485614(v145, v146);
    v147 = sub_1C443FC80();
    v148(v147);
    sub_1C4409CC8();
    v149 = sub_1C440C50C();
    sub_1C4471874(v149, v150);
    sub_1C4EFD538();
    v151 = sub_1C4416764();
    sub_1C442BB84(v151);
    sub_1C4471874(v31, v152);
    v153 = sub_1C4422A94();
    sub_1C4485614(v153, v154);
    v155 = sub_1C447F0C4(v8[5]);
    (v501)(v155);
    *(v51 + v8[7]) = v499;
    v51 = v31;
    v156 = sub_1C440C50C();
    sub_1C4471874(v156, v157);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v158 = v496;
    v56[8].n128_u64[1] = v8;
    v56[9].n128_u64[0] = v158;
    v159 = sub_1C4422F90(&v56[7]);
    v160 = sub_1C4434124(v159);
    sub_1C4471874(v160, v161);
    v162 = sub_1C43FD7E0();
    sub_1C4485614(v162, v163);
    v164 = sub_1C442ABDC();
    (v501)(v164);
    v165 = v8[7];
LABEL_36:
    v31[v165] = v499;
    v95 = sub_1C44057DC();
    goto LABEL_19;
  }

  if (qword_1EDDFD110 != -1)
  {
    v136 = swift_once();
  }

  sub_1C440AB64(v136, qword_1EDDFD118);
  v167 = v52 && v166 == v51;
  if (v167 || (v168 = sub_1C44250D8(), (v168 & 1) != 0))
  {
    sub_1C4432340();
    sub_1C4485404(v43, v169);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    sub_1C442A404();
    v56 = swift_allocObject();
    sub_1C4419768(v56, xmmword_1C4F0D480);
    v496 = v170;
    v171 = v489;
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    sub_1C4EFD4C8();
    v56[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v494 = sub_1C445E5E8(v172, v173);
    v174 = sub_1C44145B4(v494);
    v175 = sub_1C43FC3C0(v174);
    sub_1C4471874(v175, v176);
    sub_1C4406F18();
    v493 = v177;
    v178 = sub_1C4422A94();
    sub_1C4485614(v178, v179);
    v180 = v8[5];
    v181 = v501 + 32;
    v495 = *(v501 + 32);
    v182 = sub_1C447F0C4(v180);
    v183 = v8;
    v184(v182);
    v501 = v181;
    sub_1C4409CC8();
    v185 = sub_1C440C50C();
    sub_1C4471874(v185, v186);
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v56[6].n128_u64[0] = v8;
    v187 = v494;
    v56[6].n128_u64[1] = v494;
    v188 = sub_1C4422F90(&v56[4].n128_i64[1]);
    v189 = v188 + v183[6];
    v488 = v50;
    sub_1C4471874(v31, v189);
    v190 = sub_1C4422A94();
    v191 = v493;
    sub_1C4485614(v190, v192);
    v193 = sub_1C447F0C4(v183[5]);
    v495(v193);
    LOBYTE(v181) = v499;
    *(v188 + v183[7]) = v499;
    v194 = sub_1C440C50C();
    v195 = v496;
    sub_1C4471874(v194, v196);
    sub_1C4EFCF28();
    v56[8].n128_u64[1] = v183;
    v56[9].n128_u64[0] = v187;
    v197 = sub_1C4422F90(&v56[7]);
    v198 = v497;
    sub_1C4471874(v497, v197 + v183[6]);
    v199 = sub_1C4422A94();
    sub_1C4485614(v199, v200);
    v201 = sub_1C447F0C4(v183[5]);
    v202 = v495;
    v495(v201);
    *(v197 + v183[7]) = v181;
    v51 = v198;
    v203 = v498;
    sub_1C4471874(v498, v171);
    sub_1C4EFD1C8();
    v204 = v494;
    v56[11].n128_u64[0] = v183;
    v56[11].n128_u64[1] = v204;
    v205 = sub_1C4422F90(&v56[9].n128_i64[1]);
    v206 = sub_1C4434124(v205);
    sub_1C4471874(v206, v207);
    v208 = sub_1C43FD7E0();
    sub_1C4485614(v208, v209);
    v210 = sub_1C442ABDC();
    v202(v210);
    *(v191 + v183[7]) = v181;
    v95 = v203;
    v96 = v195;
    goto LABEL_19;
  }

  if (qword_1EDDFED08 != -1)
  {
    v168 = swift_once();
  }

  sub_1C440AB64(v168, qword_1EDDFED10);
  if (v52 && v211 == v51)
  {
    goto LABEL_59;
  }

  v213 = sub_1C44250D8();
  if (v213)
  {
    goto LABEL_59;
  }

  if (qword_1EDDFED40 != -1)
  {
    v213 = swift_once();
  }

  sub_1C440AB64(v213, qword_1EDDFD2A8);
  v215 = v52 && v214 == v51;
  if (v215 || (v216 = sub_1C44250D8(), (v216 & 1) != 0))
  {
LABEL_59:
    sub_1C440041C();
    v217 = v43;
    v219 = v218;
    sub_1C4485404(v217, v220);
    sub_1C456902C(&qword_1EC0BDAC8, &qword_1C4F3E860);
    v221 = (*(v488 + 80) + 32) & ~*(v488 + 80);
    v222 = *(v488 + 9);
    v50 = swift_allocObject();
    v481 = xmmword_1C4F0D480;
    *(v50 + 16) = xmmword_1C4F0D480;
    v223 = v50 + v221;
    v488 = type metadata accessor for PhaseStores;
    v489 = v221;
    sub_1C4471874(v498, v50 + v221);
    v224 = v50 + v221 + v8[5];
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v225 = v219;
    sub_1C4471874(v497, v223 + v8[6]);
    sub_1C4409CC8();
    v227 = v226;
    v228 = v222;
    v490 = v222;
    v229 = &v222[v223];
    sub_1C4471874(v498, v229);
    v230 = v229 + v8[5];
    sub_1C4EFD4C8();
    v231 = v229 + v8[6];
    v37 = v497;
    v486 = v225;
    sub_1C4471874(v497, v231);
    *(v229 + v8[7]) = v227;
    v232 = v223 + 2 * v228;
    v233 = v498;
    sub_1C4471874(v498, v232);
    v234 = v232 + v8[5];
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C4471874(v37, v232 + v8[6]);
    LOBYTE(v225) = v499;
    *(v232 + v8[7]) = v499;
    v235 = v223 + 3 * v490;
    sub_1C4471874(v233, v235);
    v236 = v235 + v8[5];
    sub_1C4EFD538();
    sub_1C4471874(v37, v235 + v8[6]);
    *(v235 + v8[7]) = v225;
    _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
    v237 = sub_1C4EFD0A8();
    v43 = (v501 + 8);
    v482 = *(v501 + 8);
    v482(v31, v500);
    v45 = 0;
    v31 = (v237 + 56);
    v238 = *(v237 + 56);
    v485 = v237;
    sub_1C440CC3C();
    v488 = (v43 + 1);
    v483 = v43;
    v486 = (v43 + 3);
    v484 = v237 + 56;
    v44 = v501;
    if (v37)
    {
      while (1)
      {
        v51 = v497;
LABEL_66:
        v240 = v500;
        v44[2](v28, *(v485 + 48) + v44[9] * (__clz(__rbit64(v37)) | (v45 << 6)), v500);
        sub_1C441FAA8();
        v241 = v495;
        sub_1C4471874(v498, v495);
        v44[4]((v241 + v8[5]), v28, v240);
        v242 = v8[6];
        sub_1C4408A90();
        sub_1C4471874(v51, v241 + v243);
        sub_1C4422AEC();
        v244 = *(v50 + 24);
        if (*(v50 + 16) >= v244 >> 1)
        {
          sub_1C4461C7C(v244);
          v50 = v246;
        }

        sub_1C44409B0();
        sub_1C441EC30();
        sub_1C4485614(v495, v245);
      }
    }

    v51 = v497;
    while (1)
    {
      v239 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v239 >= v237)
      {
        break;
      }

      v37 = *&v31[8 * v239];
      ++v45;
      if (v37)
      {
        v45 = v239;
        goto LABEL_66;
      }
    }

    v495 = v8;

    sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
    v247 = *(v501 + 72);
    v248 = (*(v501 + 80) + 32) & ~*(v501 + 80);
    v249 = swift_allocObject();
    *(v249 + 16) = v481;
    v250 = v249 + v248;
    sub_1C4EFCEC8();
    sub_1C4EFCFC8();
    sub_1C4EFD498();
    v501 = v247;
    sub_1C4EFD4E8();
    v45 = 4;
    v8 = v500;
    v37 = v499;
    v28 = v496;
    do
    {
      sub_1C441FAA8();
      sub_1C4471874(v498, v28);
      v251 = v495;
      v44 = *v488;
      (*v488)(&v28[*(v495 + 5)], v250, v8);
      v252 = *(v251 + 24);
      sub_1C4408A90();
      sub_1C4471874(v51, &v28[v253]);
      v28[*(v251 + 28)] = v37;
      v255 = *(v50 + 16);
      v254 = *(v50 + 24);
      if (v255 >= v254 >> 1)
      {
        sub_1C458C108(v254 > 1, v255 + 1, 1, v50);
        v50 = v257;
      }

      *(v50 + 16) = v255 + 1;
      sub_1C441EC30();
      v28 = v496;
      sub_1C4485614(v496, v256);
      v250 += v501;
      --v45;
    }

    while (v45);
    swift_setDeallocating();
    sub_1C49E16E8();
    v43 = v487;
    sub_1C4EFCFB8();
    v258 = sub_1C4EFD0A8();
    v482(v43, v8);
    v31 = (v258 + 56);
    v259 = *(v258 + 56);
    v496 = v258;
    sub_1C440CC3C();
    v487 = (v258 + 56);
    if (v37)
    {
      while (1)
      {
LABEL_78:
        v261 = v500;
        v262 = v493;
        (v44)(v493, *(v496 + 6) + (__clz(__rbit64(v37)) | (v45 << 6)) * v501, v500);
        sub_1C441FAA8();
        v263 = v494;
        sub_1C4471874(v498, v494);
        v264 = v495;
        (*v486)(&v263[*(v495 + 5)], v262, v261);
        v265 = *(v264 + 24);
        sub_1C4408A90();
        sub_1C4471874(v51, &v263[v266]);
        v263[*(v264 + 28)] = v499;
        v267 = *(v50 + 24);
        if (*(v50 + 16) >= v267 >> 1)
        {
          sub_1C4461C7C(v267);
          v50 = v269;
        }

        sub_1C44409B0();
        sub_1C441EC30();
        sub_1C4485614(v494, v268);
      }
    }

    while (1)
    {
      v260 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_100;
      }

      if (v260 >= v258)
      {
        break;
      }

      v37 = *&v31[8 * v260];
      ++v45;
      if (v37)
      {
        v45 = v260;
        goto LABEL_78;
      }
    }

    v56 = sub_1C4811F4C(v50);

    v95 = sub_1C44022F0();
    goto LABEL_19;
  }

  if (qword_1EDDFD130 != -1)
  {
    v216 = swift_once();
  }

  sub_1C440AB64(v216, qword_1EDDFD138);
  v271 = v52 && v270 == v51;
  if (v271 || (v272 = sub_1C44250D8(), (v272 & 1) != 0))
  {
    sub_1C441D224();
    sub_1C4485404(v43, v273);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = swift_allocObject();
    sub_1C4419768(v56, xmmword_1C4F0C890);
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    sub_1C4EFD538();
    v56[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v496 = sub_1C445E5E8(v274, v275);
    v276 = sub_1C44145B4(v496);
    v277 = sub_1C43FC3C0(v276);
    sub_1C4471874(v277, v278);
    sub_1C4406F18();
    v495 = v279;
    v280 = sub_1C4422A94();
    sub_1C4485614(v280, v281);
    v282 = sub_1C443FC80();
    v283(v282);
    sub_1C4409CC8();
    v284 = sub_1C440C50C();
    sub_1C4471874(v284, v285);
    sub_1C4EFD4C8();
    v286 = sub_1C4416764();
    sub_1C442BB84(v286);
    sub_1C4471874(v31, v287);
    v288 = sub_1C4422A94();
    sub_1C4485614(v288, v289);
    v290 = sub_1C447F0C4(v8[5]);
    (v501)(v290);
    sub_1C4409CC8();
    v51 = v31;
    v291 = sub_1C440C50C();
    sub_1C4471874(v291, v292);
    sub_1C4EFCF48();
LABEL_90:
    v293 = v496;
    v56[8].n128_u64[1] = v8;
    v56[9].n128_u64[0] = v293;
    v294 = sub_1C4422F90(&v56[7]);
    sub_1C4418444(v294);
    sub_1C4471874(v51, v295);
    v296 = sub_1C43FD7E0();
    sub_1C4485614(v296, v297);
    (v501)(&v31[v8[5]], v45, v500);
    v165 = v8[7];
    goto LABEL_36;
  }

  if (qword_1EDDFED38 != -1)
  {
    v272 = swift_once();
  }

  sub_1C440AB64(v272, qword_1EDDFD0F0);
  v299 = v52 && v298 == v51;
  if (v299 || (v300 = sub_1C44250D8(), (v300 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v301;
    sub_1C4485404(v43, v302);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = sub_1C4404370();
    sub_1C4419768(v56, xmmword_1C4F0CE60);
    v496 = v303;
    sub_1C445FD38();
    sub_1C442F1E4();
    sub_1C4EFD4C8();
    sub_1C4418020();
    sub_1C442CAC0();
    v306 = sub_1C445E5E8(v304, v305);
    v106 = sub_1C443F614(v306);
    v307 = sub_1C442DF64(v106);
    sub_1C4471874(v307, v308);
    sub_1C4406F18();
    v494 = v309;
    sub_1C4401DD8();
    v310 = sub_1C4414B0C(v8[5]);
    v311(v310);
    sub_1C4404344();
    sub_1C4EFCF48();
    goto LABEL_18;
  }

  if (qword_1EDDFD178 != -1)
  {
    v300 = swift_once();
  }

  sub_1C440AB64(v300, &qword_1EDDFD180);
  if (v52 && v312 == v51)
  {
    goto LABEL_123;
  }

  v314 = sub_1C44250D8();
  if (v314)
  {
    goto LABEL_123;
  }

  if (qword_1EDDFD0A8 != -1)
  {
    v314 = swift_once();
  }

  sub_1C440AB64(v314, qword_1EDDFD0B0);
  if (v52 && v315 == v51)
  {
    goto LABEL_123;
  }

  v317 = sub_1C44250D8();
  if (v317)
  {
    goto LABEL_123;
  }

  if (qword_1EDDFD218 != -1)
  {
    v317 = swift_once();
  }

  sub_1C440AB64(v317, &qword_1EDDFD220);
  if (v52 && v318 == v51)
  {
    goto LABEL_123;
  }

  v320 = sub_1C44250D8();
  if (v320)
  {
    goto LABEL_123;
  }

  if (qword_1EDDFD150 != -1)
  {
    v320 = swift_once();
  }

  sub_1C440AB64(v320, qword_1EDDFD158);
  v334 = v52 && v333 == v51;
  if (v334 || (v335 = sub_1C44250D8(), (v335 & 1) != 0))
  {
    sub_1C441D224();
    sub_1C4485404(v43, v336);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = swift_allocObject();
    sub_1C4419768(v56, xmmword_1C4F0C890);
    sub_1C4471874(v498, v489);
    sub_1C442F1E4();
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v56[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v496 = sub_1C445E5E8(v337, v338);
    v339 = sub_1C44145B4(v496);
    v340 = sub_1C43FC3C0(v339);
    sub_1C4471874(v340, v341);
    sub_1C4406F18();
    v495 = v342;
    v343 = sub_1C4422A94();
    sub_1C4485614(v343, v344);
    v345 = sub_1C443FC80();
    v346(v345);
    sub_1C4409CC8();
    v347 = sub_1C440C50C();
    sub_1C4471874(v347, v348);
    sub_1C4EFD4C8();
    v349 = sub_1C4416764();
    sub_1C442BB84(v349);
    sub_1C4471874(v31, v350);
    v351 = sub_1C4422A94();
    sub_1C4485614(v351, v352);
    v353 = sub_1C447F0C4(v8[5]);
    (v501)(v353);
    sub_1C4409CC8();
    v51 = v31;
    v354 = sub_1C440C50C();
    sub_1C4471874(v354, v355);
    sub_1C4EFCF28();
    goto LABEL_90;
  }

  if (qword_1EDDFD2F0 != -1)
  {
    v335 = swift_once();
  }

  sub_1C440AB64(v335, qword_1EDDFD2F8);
  v357 = v52 && v356 == v51;
  if (v357 || (v358 = sub_1C44250D8(), (v358 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v359;
    sub_1C4485404(v43, v360);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = sub_1C4404370();
    sub_1C4419768(v56, xmmword_1C4F0CE60);
    v496 = v361;
    sub_1C445FD38();
    sub_1C442F1E4();
    sub_1C4EFD538();
    sub_1C4418020();
    sub_1C442CAC0();
    v364 = sub_1C445E5E8(v362, v363);
    v106 = sub_1C443F614(v364);
    v365 = sub_1C442DF64(v106);
    sub_1C4471874(v365, v366);
    sub_1C4406F18();
    v494 = v367;
    sub_1C4401DD8();
    v368 = sub_1C4414B0C(v8[5]);
    v369(v368);
    sub_1C4404344();
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    goto LABEL_18;
  }

  if (qword_1EDDFD240 != -1)
  {
    v358 = swift_once();
  }

  sub_1C440AB64(v358, &qword_1EDDFD248);
  v371 = v52 && v370 == v51;
  if (v371 || (v372 = sub_1C44250D8(), (v372 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v373;
    sub_1C4485404(v43, v374);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = sub_1C4404370();
    sub_1C4419768(v56, xmmword_1C4F0CE60);
    v496 = v375;
    sub_1C445FD38();
    sub_1C442F1E4();
    sub_1C4EFCED8();
    sub_1C4418020();
    sub_1C442CAC0();
    v378 = sub_1C445E5E8(v376, v377);
    v106 = sub_1C443F614(v378);
    v379 = sub_1C442DF64(v106);
    sub_1C4471874(v379, v380);
    sub_1C4406F18();
    v494 = v381;
    sub_1C4401DD8();
    v110 = sub_1C4414B0C(v8[5]);
    goto LABEL_17;
  }

  if (qword_1EDDFD318 != -1)
  {
    v372 = swift_once();
  }

  sub_1C440AB64(v372, qword_1EDDFD320);
  v383 = v52 && v382 == v51;
  if (v383 || (v384 = sub_1C44250D8(), (v384 & 1) != 0))
  {
    sub_1C4432340();
    sub_1C4485404(v43, v385);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v322 = swift_allocObject();
    sub_1C4419768(v322, xmmword_1C4F0D130);
    v324 = v386;
    v325 = v498;
    v326 = v489;
    sub_1C4471874(v498, v489);
    v327 = v490;
    sub_1C4EFD1E8();
    goto LABEL_124;
  }

  if (qword_1EDDFD340 != -1)
  {
    v384 = swift_once();
  }

  sub_1C440AB64(v384, qword_1EDDFD348);
  v388 = v52 && v387 == v51;
  if (v388 || (v389 = sub_1C44250D8(), (v389 & 1) != 0))
  {
    sub_1C440041C();
    v495 = v390;
    sub_1C4485404(v43, v391);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = sub_1C4404370();
    sub_1C4419768(v56, xmmword_1C4F0CE60);
    v496 = v392;
    sub_1C445FD38();
    sub_1C442F1E4();
    sub_1C4EFD4C8();
    sub_1C4418020();
    sub_1C442CAC0();
    v395 = sub_1C445E5E8(v393, v394);
    v106 = sub_1C443F614(v395);
    v396 = sub_1C442DF64(v106);
    sub_1C4471874(v396, v397);
    sub_1C4406F18();
    v494 = v398;
    sub_1C4401DD8();
    v399 = sub_1C4414B0C(v8[5]);
    v400(v399);
    sub_1C4404344();
    sub_1C4EFD538();
    goto LABEL_18;
  }

  if (qword_1EDDFD2C8 != -1)
  {
    v389 = swift_once();
  }

  sub_1C440AB64(v389, qword_1EDDFD2D0);
  v402 = v52 && v401 == v51;
  if (v402 || (v403 = sub_1C44250D8(), (v403 & 1) != 0))
  {
LABEL_123:
    sub_1C4432340();
    sub_1C4485404(v43, v321);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v322 = swift_allocObject();
    sub_1C4419768(v322, xmmword_1C4F0D130);
    v324 = v323;
    v325 = v498;
    v326 = v489;
    sub_1C4471874(v498, v489);
    v327 = v490;
    sub_1C4EFD4C8();
LABEL_124:
    v322[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v322[4].n128_u64[0] = sub_1C445E5E8(v328, v329);
    v330 = sub_1C4422F90(&v322[2]);
    v331 = sub_1C442DF64(v330);
    sub_1C4471874(v331, v332);
    sub_1C4406F18();
    sub_1C4485614(v326, v330);
    (*(v501 + 32))(v330 + v8[5], v327, v500);
    sub_1C4422AEC();
    v95 = v325;
    v56 = v322;
    v96 = v324;
    goto LABEL_19;
  }

  if (qword_1EDDFD288 != -1)
  {
    v403 = swift_once();
  }

  sub_1C440AB64(v403, &qword_1EDDFD290);
  if (v52 && v404 == v51)
  {
    goto LABEL_201;
  }

  v406 = sub_1C44250D8();
  if (v406)
  {
    goto LABEL_201;
  }

  if (qword_1EDDFD1F0 != -1)
  {
    v406 = swift_once();
  }

  sub_1C440AB64(v406, &qword_1EDDFD1F8);
  v408 = v52 && v407 == v51;
  if (v408 || (sub_1C44250D8() & 1) != 0)
  {
    goto LABEL_201;
  }

  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  v409 = sub_1C442B738(v37, &qword_1EDDFD1D0);
  if (*v409 == v50 && v409[1] == v51)
  {
    goto LABEL_201;
  }

  v411 = *v409;
  v412 = sub_1C44250D8();
  if (v412)
  {
    goto LABEL_201;
  }

  if (qword_1EDDFD1A0 != -1)
  {
    v412 = swift_once();
  }

  sub_1C440AB64(v412, &qword_1EDDFD1A8);
  v414 = v52 && v413 == v51;
  if (v414 || (sub_1C44250D8() & 1) != 0 || (sub_1C44250D8() & 1) != 0)
  {
LABEL_201:
    sub_1C4432340();
    v495 = v415;
    sub_1C4485404(v43, v415);
    sub_1C456902C(&qword_1EC0B8CE8, &unk_1C4F0E120);
    v56 = swift_allocObject();
    sub_1C4419768(v56, xmmword_1C4F0F830);
    v496 = v416;
    v417 = v498;
    v418 = v489;
    sub_1C4471874(v498, v489);
    v419 = v490;
    sub_1C4EFCEF8();
    v56[3].n128_u64[1] = v8;
    sub_1C442CAC0();
    v422 = sub_1C445E5E8(v420, v421);
    v56[4].n128_u64[0] = v422;
    v493 = v422;
    v423 = sub_1C4422F90(&v56[2]);
    sub_1C442BB84(v423);
    v424 = v497;
    sub_1C4471874(v497, v425);
    sub_1C4406F18();
    v488 = v426;
    v427 = sub_1C4422A94();
    sub_1C4485614(v427, v428);
    v429 = v8[5];
    v430 = *(v501 + 32);
    v501 += 32;
    v494 = v430;
    (v430)(v51 + v429, v419, v500);
    sub_1C4409CC8();
    v432 = v431;
    sub_1C4471874(v417, v418);
    sub_1C4EFD428();
    v56[6].n128_u64[0] = v8;
    v56[6].n128_u64[1] = v422;
    v433 = sub_1C4422F90(&v56[4].n128_i64[1]);
    sub_1C442BB84(v433);
    sub_1C4471874(v424, v434);
    v435 = sub_1C4422A94();
    sub_1C4485614(v435, v436);
    v437 = sub_1C440BD24();
    v494(v437);
    *(v51 + v8[7]) = v432;
    sub_1C4471874(v417, v418);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v438 = v493;
    v56[8].n128_u64[1] = v8;
    v56[9].n128_u64[0] = v438;
    v439 = sub_1C4422F90(&v56[7]);
    sub_1C442BB84(v439);
    sub_1C4471874(v497, v440);
    v441 = sub_1C4422A94();
    sub_1C4485614(v441, v442);
    v443 = sub_1C440BD24();
    v444 = v494;
    v494(v443);
    v445 = v499;
    *(v51 + v8[7]) = v499;
    sub_1C4471874(v498, v418);
    sub_1C4EFD4C8();
    v56[11].n128_u64[0] = v8;
    v56[11].n128_u64[1] = v438;
    v446 = sub_1C4422F90(&v56[9].n128_i64[1]);
    sub_1C442BB84(v446);
    v447 = v497;
    v448 = v495;
    sub_1C4471874(v497, v449);
    v450 = sub_1C4422A94();
    sub_1C4485614(v450, v451);
    v452 = sub_1C440BD24();
    v444(v452);
    v453 = v444;
    *(v51 + v8[7]) = v445;
    v454 = v498;
    sub_1C4471874(v498, v418);
    sub_1C4EFD218();
    v455 = v493;
    v56[13].n128_u64[1] = v8;
    v56[14].n128_u64[0] = v455;
    v456 = sub_1C4422F90(&v56[12]);
    sub_1C442BB84(v456);
    sub_1C4471874(v447, v457);
    v458 = sub_1C4422A94();
    sub_1C4485614(v458, v459);
    v460 = sub_1C440BD24();
    v453(v460);
    sub_1C4409CC8();
    v461 = v454;
    v462 = v496;
    sub_1C4471874(v461, v418);
    sub_1C4EFCEE8();
    v463 = v493;
    v56[16].n128_u64[0] = v8;
    v56[16].n128_u64[1] = v463;
    v464 = sub_1C4422F90(&v56[14].n128_i64[1]);
    v465 = sub_1C43FC3C0(v464);
    sub_1C4471874(v465, v466);
    v467 = sub_1C4422A94();
    sub_1C4485614(v467, v468);
    v469 = sub_1C440BD24();
    v494(v469);
    v470 = v499;
    *(v51 + v8[7]) = v499;
    v51 = v448;
    v471 = v498;
    sub_1C4471874(v498, v418);
    sub_1C4EFD4D8();
    v472 = v493;
    v56[18].n128_u64[1] = v8;
    v56[19].n128_u64[0] = v472;
    v473 = sub_1C4422F90(&v56[17]);
    sub_1C4418444(v473);
    sub_1C4471874(v448, v474);
    v475 = sub_1C43FD7E0();
    sub_1C4485614(v475, v476);
    (v494)(v448 + v8[5], v419, v500);
    *(v448 + v8[7]) = v470;
    v95 = v471;
    v96 = v462;
    goto LABEL_19;
  }

  LOBYTE(v502) = v499;
  v477 = sub_1C4813710(v497, v498, &v502);
  if (v477)
  {
    v56 = v477;
    v478 = sub_1C44022F0();
    sub_1C4485404(v478, v479);
    sub_1C440041C();
    sub_1C4485404(v43, v480);
    v51 = v497;
    goto LABEL_20;
  }

  v502 = 0;
  v503 = 0xE000000000000000;
  sub_1C4F02248();

  v502 = 0xD000000000000014;
  v503 = 0x80000001C4F9C2E0;
  MEMORY[0x1C6940010](*v497, v497[1]);
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F9C300);
  sub_1C4F024A8();
  __break(1u);
}

uint64_t sub_1C4485354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44853AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4485404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C448545C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44854B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C448550C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4485564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44855BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4485614(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C448566C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C44856C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C448571C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FCE50(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4485774(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44857CC(uint64_t a1)
{
  v2 = type metadata accessor for PhaseStores();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4485828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4485884()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1072);
  *v2 = *v0;
  *(v1 + 1080) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4485988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore35AssetRegistryRemoteBackendInProcess_remoteOptions;
  v7 = sub_1C4EFF948();
  sub_1C43FBCE0(v7);
  (*(v8 + 32))(v3 + v6, a2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore35AssetRegistryRemoteBackendInProcess_jsonDecoder) = a3;
  return v3;
}

uint64_t sub_1C4485A60()
{

  return sub_1C4F01198();
}

uint64_t sub_1C4485A8C()
{

  return sub_1C44DDE2C();
}

uint64_t *sub_1C4485AA8@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 176) = v2;
  *(v5 - 208) = v1;
  *(v5 - 200) = a1;
  *(v5 - 104) = v4;
  *(v5 - 96) = v3;

  return sub_1C4422F90((v5 - 128));
}

uint64_t sub_1C4485AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1C441D828(v10, v11, va);
}

uint64_t sub_1C4485B1C()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_1C4485B3C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D610(v4 + a2, v3 + v2, a1);
}

uint64_t sub_1C4485B54@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = result;
  v4 = *(v3 + 44);
  return result;
}

uint64_t sub_1C4485B6C()
{

  return sub_1C4F010B8();
}

uint64_t sub_1C4485BA4()
{
  v3 = *(v1 - 144);
  v4 = *(v1 - 112);

  return sub_1C4471988(v3, v0);
}

void sub_1C4485C10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_1C4485C48()
{
  v2 = *(v0 + 16);

  return swift_arrayDestroy();
}

uint64_t sub_1C4485C68(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_bridgeObjectRetain_n();
}

void sub_1C4485C98()
{

  JUMPOUT(0x1C6940F90);
}

uint64_t sub_1C4485CC8()
{
  *(v1 + *(v2 + 44)) = v4;
  *(v1 + *(v2 + 48)) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4485D10()
{

  return swift_slowAlloc();
}

uint64_t sub_1C4485D40()
{

  return sub_1C4689020(v0);
}

uint64_t sub_1C4485D60()
{
  v2 = *(v0 - 872);
  v3 = *(v0 - 880);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4485D80()
{
  v5 = v1 + *(v0 + 24);
  v6 = *(v3 - 112);

  return sub_1C4471988(v2, v5);
}

uint64_t sub_1C4485DA0()
{

  return swift_arrayInitWithTakeFrontToBack();
}

uint64_t sub_1C4485DE8()
{
  v2 = *(v0 - 360);

  return sub_1C4F00968();
}

void sub_1C4485E14()
{
  v2 = *(v0 - 72);
  v3 = *(v0 - 112);

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C4485E34()
{
  v3 = v1 + *(v0 + 28);

  return sub_1C4EFEC38();
}

uint64_t sub_1C4485E70()
{

  return sub_1C44DDD64(v0, v1, type metadata accessor for WalletTransactionOrderStructs.DateRelationshipType);
}

uint64_t sub_1C4485E9C()
{

  return sub_1C4F02458();
}

uint64_t sub_1C4485EBC()
{
  v2 = **(v1 - 216);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

void sub_1C4485ED0()
{

  sub_1C45D689C();
}

uint64_t sub_1C4485EF4()
{
  v2 = *(v0 + 20);

  return sub_1C4EFEEF8();
}

void sub_1C4485F24()
{
  v2 = *(v0 - 488);
}

uint64_t sub_1C4485F3C(uint64_t a1, unint64_t a2)
{

  return sub_1C441D828(a1, a2, (v2 - 128));
}

uint64_t sub_1C4485F54()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  v4 = *(v0 + 16);
}

uint64_t sub_1C4485F78(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C4485FA0()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_1C4485FD8()
{
  v2 = **(v0 - 232);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C4485FF0()
{

  return sub_1C447E970(v0, v1);
}

uint64_t sub_1C4486008()
{
  v1 = **(v0 + 344);
  result = *(v0 + 144);
  v3 = *(v0 + 256);
  return result;
}

uint64_t sub_1C448602C(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1C441D828(a1, a2, va);
}

uint64_t sub_1C4486050()
{
  result = v1;
  v3 = v0[20];
  v5 = *v0;
  v4 = v0[1];
  return result;
}

uint64_t sub_1C4486064()
{
  v3 = *(v0 - 256);
  v4 = *(v1 - 288);
  v5 = *(v1 - 136);

  return sub_1C4F02658();
}

uint64_t type metadata accessor for PeopleMatcher()
{
  result = qword_1EDDF7F78;
  if (!qword_1EDDF7F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4486118()
{
  if (qword_1EDDF0810 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE2D338;
  *(v0 + 16) = qword_1EDE2D338;

  return MEMORY[0x1EEE6DFA0](sub_1C44861B0, v1, 0);
}

uint64_t sub_1C44861B0()
{
  v1 = *(v0 + 16);
  v2 = sub_1C447FFF4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1C4486210()
{
  v1 = v0;
  v2 = type metadata accessor for NicknameEntry(0);
  v3 = sub_1C43FCDF8(v2);
  v60 = v4;
  v61 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4F00348();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBCC4();
  v12 = type metadata accessor for NicknameData(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v57 = v15 - v14;
  v16 = sub_1C4EF98F8();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v52 - v25;
  sub_1C44867F4();
  v27 = sub_1C4F01E88();
  v28 = sub_1C4486838(0x656D616E6B63696ELL, 0xE900000000000073, 7627108, 0xE300000000000000, v27);

  if (v28)
  {
    sub_1C4EF98C8();

    (*(v19 + 32))(v26, v24, v16);
    v29 = sub_1C4EF9938();
    v31 = v30;
    v55 = v16;
    v56 = v1;
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    v32 = v29;
    sub_1C44344B8(v29, v30);
    sub_1C4F00338();
    sub_1C44868CC();
    v33 = v57;
    v53 = v32;
    v54 = v31;
    sub_1C4F00418();
    v34 = 0;
    v35 = *v33;
    v62 = *(*v33 + 16);
    v36 = MEMORY[0x1E69E7CC8];
    v58 = v19;
    v59 = v26;
    while (1)
    {
      if (v62 == v34)
      {
        type metadata accessor for Nicknames.GuardedData();
        sub_1C43FBDBC();
        v49 = swift_allocObject();
        *(v49 + 16) = v36;
        sub_1C456902C(&qword_1EC0C1BF8, &qword_1C4F46810);
        v50 = swift_allocObject();
        *(v50 + 24) = 0;
        *(v50 + 16) = v49;
        sub_1C4434000(v53, v54);
        sub_1C4486BD0(v57, type metadata accessor for NicknameData);
        (*(v19 + 8))(v26, v55);
        result = v56;
        *(v56 + 16) = v50;
        return result;
      }

      if (v34 >= *(v35 + 16))
      {
        break;
      }

      v37 = v35;
      sub_1C4480248(v35 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v34, v9);
      v38 = v61;
      v39 = (v9 + *(v61 + 20));
      v40 = v39[1];
      if (v40)
      {
        v41 = *v39;
      }

      else
      {
        v41 = 0;
      }

      if (v40)
      {
        v42 = v39[1];
      }

      else
      {
        v42 = 0xE000000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v43 = sub_1C4663244(v41, v42, v36);

      v44 = MEMORY[0x1E69E7CD0];
      if (v43)
      {
        v44 = v43;
      }

      v63 = v44;
      v45 = v9;
      v46 = (v9 + *(v38 + 24));
      if (v46[1])
      {
        v47 = *v46;
        v48 = v46[1];
      }

      else
      {
        v47 = 0;
        v48 = 0xE000000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(v64, v47, v48);

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      *&v64[0] = v36;
      sub_1C4486BA8();

      v36 = *&v64[0];
      v9 = v45;
      sub_1C4486BD0(v45, type metadata accessor for NicknameEntry);
      ++v34;
      v19 = v58;
      v26 = v59;
      v35 = v37;
    }

    __break(1u);
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

unint64_t sub_1C44867F4()
{
  result = qword_1EDDFE8E8;
  if (!qword_1EDDFE8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFE8E8);
  }

  return result;
}

id sub_1C4486838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C4F01108();

  v7 = sub_1C4F01108();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1C44868CC()
{
  result = qword_1EDDF8AA0;
  if (!qword_1EDDF8AA0)
  {
    type metadata accessor for NicknameData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8AA0);
  }

  return result;
}

uint64_t sub_1C4486924@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for NicknameData(0) + 20);
  return sub_1C4F00318();
}

uint64_t sub_1C4486968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4486AC8()
{
  sub_1C44158A0();
  sub_1C446060C();
  v4 = sub_1C440DFB8(v2, v3);
  v6 = sub_1C445FAA8(v4, v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C4423AC0();
  sub_1C4408720();
  v9 = sub_1C4F02458();
  if (v9)
  {
    sub_1C4451290();
    sub_1C4410A40();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C4440968(v9, v10, v11, v12, *v0);
    sub_1C4410198();
  }

  else
  {
    v16 = sub_1C441E240();
    v17(v16);
    sub_1C4410198();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4486BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C4486C30(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C44996E4(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C448AD78(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      v17 = sub_1C4F02B68();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_1C4F02938() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_1C44802AC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1C4486D98()
{
  *(*(v0 + 16) + *(*(v0 + 72) + 36)) = *(v0 + 88);
  v1 = sub_1C4EFEF48();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1C4EFEF38();
  switch(*(v0 + 104))
  {
    case 2:
      v4 = *(v0 + 72);
      v5 = *(v0 + 16);

      *(v5 + *(v4 + 40)) = 0;
LABEL_7:

LABEL_9:

      v20 = *(v0 + 24);
      v19 = *(v0 + 32);
      sub_1C44077C8();
      sub_1C447EA28(v21, v22);
      sub_1C441A1D8();
      sub_1C447EA28(v20, v23);
      v24 = 0;
      break;
    default:
      v6 = sub_1C4F02938();

      if (v6)
      {
        v7 = 0;
      }

      else
      {
        v8 = *(v0 + 64);
        sub_1C4414E10();
        sub_1C4EFFFF8();
        sub_1C4EFFED8();
        sub_1C4425364();
        sub_1C4487240(v9, v10);
        sub_1C43FFE24();
        v11 = sub_1C4EFEF18();
        v12 = *(v0 + 64);
        v13 = *(v0 + 40);
        v7 = v11;
        v14 = *(*(v0 + 48) + 8);
        v15 = sub_1C43FFE24();
        v16(v15);
      }

      v17 = *(v0 + 104);
      *(*(v0 + 16) + *(*(v0 + 72) + 40)) = v7;
      switch(v17)
      {
        case 2:
          goto LABEL_7;
        default:
          v18 = sub_1C4F02938();

          if (v18)
          {
            goto LABEL_9;
          }

          v30 = *(v0 + 48);
          v29 = *(v0 + 56);
          v32 = *(v0 + 32);
          v31 = *(v0 + 40);
          v33 = *(v0 + 24);
          sub_1C4414E10();
          sub_1C4EFFFF8();
          sub_1C4EFFED8();
          sub_1C4425364();
          sub_1C4487240(v34, v35);
          v24 = sub_1C4EFEF18();

          sub_1C44077C8();
          sub_1C447EA28(v32, v36);
          sub_1C441A1D8();
          sub_1C447EA28(v33, v37);
          (*(v30 + 8))(v29, v31);
          break;
      }

      break;
  }

  v25 = *(v0 + 64);
  v26 = *(v0 + 56);
  *(*(v0 + 16) + *(*(v0 + 72) + 44)) = v24;

  sub_1C43FBDA0();

  return v27();
}

uint64_t sub_1C4487240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4487288()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 1608);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 1616) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C4487380()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v1 = v0[202];
  v2 = v0[200];
  sub_1C44F0CD8();
  v3 = v0[194];
  v4 = v0[159];
  v5 = v0[119];
  v6 = v0[101];
  v33 = v0[100];
  v34 = v7;
  v8 = v0[84];
  v9 = v0[68];
  v10 = v0[67];
  sub_1C440D610();
  sub_1C4471988(v11, v4);
  sub_1C442BD10();
  sub_1C4471988(v10, v3);
  v2[67] = v6;
  sub_1C44174EC();
  v2[68] = sub_1C4471C58(v12, v13);
  v14 = sub_1C4422F90(v2 + 64);
  sub_1C444B1FC(v14);
  sub_1C43FE710(v15);
  sub_1C4471D00();
  v16 = sub_1C4462804();
  sub_1C445FE04(v16);
  if (v6)
  {
  }

  v17 = v0[200];
  sub_1C446BCB0();
  v18 = v0[194];
  v19 = v0[159];
  v20 = v0[119];
  v21 = v0[101];
  v22 = v0[100];
  sub_1C4408D30();
  sub_1C447E970(v23, v24);
  sub_1C4410FD4();
  sub_1C447E970(v19, v25);
  v26 = sub_1C4EFF1C8();
  sub_1C4404528(v26);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v27 = sub_1C43FD258();
  sub_1C447E970(v27, v28);
  *(v32 + *(v33 + 24)) = v34;
  sub_1C4419C7C();
  sub_1C442CE50(v29);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C44878E0()
{
  v28 = v0;
  v1 = *(v0 + 218);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v24 = *(v0 + 184);
  v25 = *(v0 + 168);
  v26 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v21 = *(v0 + 152);
  v22 = *(v0 + 128);
  v7 = *(v0 + 104);
  v23 = *(v0 + 112);
  v8 = *(v0 + 96);
  sub_1C44068F0();
  sub_1C4471750(v9, v5, v10);
  sub_1C4419288();
  sub_1C4471750(v8, v4, v11);
  Fuser.init(source:stores:pipelineType:)();

  sub_1C44857CC(v8);
  sub_1C440962C((v0 + 16));
  v27 = v1;
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = sub_1C4418280(v0 + 56, v13);
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = sub_1C43FBE7C();
  (*(v15 + 16))(v17, v14, v13);
  v18 = sub_1C4487AD8(v3, v21, v17, v22, v6, &v27, v23, v13, v12);
  sub_1C440962C((v0 + 56));

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_1C4487AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v17 = (a7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  v17[3] = a8;
  v17[4] = a9;
  v18 = sub_1C4422F90(v17);
  (*(*(v9 - 8) + 32))(v18, a3, v9);
  LOBYTE(v9) = *a6;
  sub_1C441FDB8();
  sub_1C4472188(a2, v19, v20);
  sub_1C441FDB8();
  sub_1C4472188(a1, v21, v22);
  sub_1C441FDB8();
  sub_1C4472188(a4, v23, v24);
  sub_1C441FDB8();
  sub_1C4472188(a5, v25, v26);
  *(a7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = v9;
  return a7;
}

uint64_t sub_1C4487C18()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1112);
  *v2 = *v0;
  *(v1 + 1120) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t type metadata accessor for PhotosPersonPhase()
{
  result = qword_1EDDE6380;
  if (!qword_1EDDE6380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4487D4C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v3 + 32) = sub_1C43FBE7C();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  *(v3 + 40) = sub_1C43FBE7C();
  v11 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  *(v3 + 48) = sub_1C43FBE7C();
  v14 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  *(v3 + 56) = sub_1C43FBE7C();
  v17 = type metadata accessor for PHPersonSourceIngestor();
  *(v3 + 64) = v17;
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v20 = type metadata accessor for Source();
  *(v3 + 88) = v20;
  sub_1C43FBD18(v20);
  v22 = *(v21 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v23 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 153) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4487F50, 0, 0);
}

uint64_t type metadata accessor for PHPersonSourceIngestor()
{
  result = qword_1EDDE2978;
  if (!qword_1EDDE2978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4487F50()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C44717B8(v3, v4, v5);
  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 153);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  v32 = *(v0 + 56);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 88), qword_1EDDFD0B0);
  *(v0 + 136) = v13;
  sub_1C44717B8(v13, v8, type metadata accessor for Source);
  sub_1C44717B8(v12, v7, type metadata accessor for PhaseStores);
  sub_1C44717B8(v13, v10 + *(v9 + 20), type metadata accessor for Source);
  sub_1C44717B8(v7, v10, type metadata accessor for PhaseStores);
  *(v10 + *(v9 + 24)) = v6;
  v14 = sub_1C4EF9E48();
  sub_1C440BAA8(v11, 1, 1, v14);
  sub_1C4EFF1A8();
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 16);
  sub_1C44857CC(*(v0 + 120));
  v22 = sub_1C4EFF1C8();
  sub_1C440BAA8(v19, 0, 1, v22);
  sub_1C4482F3C(v19, v18 + *(v20 + 28));
  v23 = sub_1C440787C();
  sub_1C44881BC(v23, v17, v24);
  sub_1C44068F0();
  sub_1C44717B8(v13, v16, v25);
  sub_1C4419288();
  sub_1C44717B8(v21, v15, v26);
  *(v0 + 152) = 1;
  v27 = swift_task_alloc();
  *(v0 + 144) = v27;
  *v27 = v0;
  v27[1] = sub_1C448922C;
  v28 = *(v0 + 112);
  v29 = *(v0 + 96);
  v30 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C44881BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4488224()
{

  return sub_1C4EF9938();
}

uint64_t sub_1C4488264(uint64_t result)
{
  *(v2 - 224) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t sub_1C4488280()
{
  v2 = *(v0 - 72);

  return sub_1C4EFBB98();
}

uint64_t sub_1C44882A4@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  v5 = *v4;
  v6 = v4[1];
  *(v2 - 72) = 7;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44882D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 144);
  v5 = *(v1 - 136);

  return sub_1C4F026C8();
}

void *sub_1C44882FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t sub_1C4488314()
{

  return swift_task_alloc();
}

void sub_1C448832C()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 1024;
  *(v1 + 24) = 0;
}

uint64_t sub_1C4488340()
{

  return sub_1C442E860(v0, v1 + 16);
}

uint64_t sub_1C4488358()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 368);
  v4 = *(v2 + v3);
  *(v2 + v3) = *(v0 - 112);
}

uint64_t sub_1C44883A4()
{
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[17];

  return MEMORY[0x1EEE6DC08]();
}

void sub_1C44883E4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C448840C()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  return v0[5];
}

uint64_t sub_1C4488420()
{
  v2 = *(v0 - 1120);
  v3 = *(v0 - 1128);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4488458(float a1)
{
  *v1 = a1;
  v4 = *v2;
  v5 = v2[1];

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4488484()
{

  return swift_arrayDestroy();
}

void sub_1C44884A4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44884BC()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;
  *(v2 - 104) = 0;
  return v2 - 104;
}

uint64_t sub_1C44884D0()
{
  v2 = *(v0 - 328);
}

uint64_t sub_1C4488504()
{

  return swift_beginAccess();
}

uint64_t sub_1C448856C()
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4488590()
{
  v2 = *(v0 - 688);
  v3 = *(v0 - 696);

  return sub_1C44239FC(v2);
}

__n128 sub_1C44885D0()
{
  v1 = *(v0 - 224);
  *(v0 - 400) = *(v0 - 200);
  result = *(v0 - 216);
  *(v0 - 368) = result;
  return result;
}

uint64_t sub_1C4488620@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + v1);
  *(v2 + v1) = a1;
  return result;
}

uint64_t sub_1C448862C()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

void sub_1C4488658()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[5];
}

uint64_t sub_1C448867C()
{
  result = sub_1C440BAA8(v0 + v2, 1, 1, v3);
  v5 = *(v1 + 24);
  return result;
}

uint64_t sub_1C44886A8()
{
  *(v0 + *(v1 + 28)) = v2;

  return sub_1C4EF9E48();
}

void sub_1C44886E4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_1C448870C(void *a1@<X8>)
{
  *a1 = *(v3 - 144);
  a1[1] = v1;
  v4 = *(v2 + 44);
}

uint64_t sub_1C4488728()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

void sub_1C448873C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1C448875C()
{
  v4 = v2 + *(v1 + 24);

  return sub_1C4471988(v0, v4);
}

uint64_t sub_1C4488780()
{

  return sub_1C4EFB768();
}

uint64_t sub_1C4488834()
{
  v3 = *(v1 - 128);

  return sub_1C447E970(v0, v3);
}

uint64_t sub_1C448885C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

void sub_1C4488888()
{
  v4 = (v2 + *(v0 + 32));
  *v4 = v1;
  v4[1] = v3;
  v5 = v2 + *(v0 + 40);
}

void sub_1C44888AC()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 424);
}

uint64_t sub_1C44888DC()
{
  v2 = *(v0 - 88);

  return sub_1C4F02BC8();
}

void sub_1C4488924()
{

  sub_1C459E0F8();
}

uint64_t sub_1C448895C()
{

  return sub_1C4EFF1A8();
}

uint64_t sub_1C44889B4()
{
  v2 = *(*(v0 + 104) + 64);

  return sub_1C4428DA0(v2);
}

uint64_t sub_1C44889D0()
{
  v2 = *(v0 + 256);

  return sub_1C4424B10(v2);
}

uint64_t sub_1C44889F0@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 352);
  v4 = *(v1 - 368);
  return result;
}

uint64_t sub_1C4488A10()
{

  return swift_slowAlloc();
}

uint64_t sub_1C4488A44()
{
  result = v0 + *(v1 - 120);
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_1C4488A68()
{

  return swift_dynamicCast();
}

uint64_t sub_1C4488A8C@<X0>(uint64_t a1@<X8>)
{
  *v2 = *(a1 - 256);
  v4 = *v1;
  v5 = v1[1];

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4488AB8()
{
  v2 = v0[19];
  v3 = v0[2];
  v4 = v0[14];

  return sub_1C4F027E8();
}

uint64_t sub_1C4488AE0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 256);
  return result;
}

uint64_t sub_1C4488AFC()
{
}

uint64_t *sub_1C4488B14(uint64_t a1)
{
  *(v1 + 144) = a1;

  return sub_1C4422F90((v1 + 112));
}

uint64_t sub_1C4488B58()
{
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[44];
}

uint64_t sub_1C4488B88()
{
  v4 = *v1;
  v5 = v1[1];
  *(v2 - 144) = v1;
  *(v2 - 104) = *(v2 - 136);
  *(v2 - 96) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4488BD4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 2160);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 2168) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C4488CCC()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v1 = v0[271];
  v2 = v0[269];
  sub_1C44F0CD8();
  v3 = v0[178];
  v4 = v0[143];
  v5 = v0[110];
  v6 = v0[101];
  v33 = v0[93];
  v34 = v7;
  v8 = v0[77];
  v9 = v0[68];
  v10 = v0[67];
  sub_1C440D610();
  sub_1C4471988(v11, v4);
  sub_1C442BD10();
  sub_1C4471988(v10, v3);
  v2[22] = v6;
  sub_1C44174EC();
  v2[23] = sub_1C4471C58(v12, v13);
  v14 = sub_1C4422F90(v2 + 19);
  sub_1C444B1FC(v14);
  sub_1C43FE710(v15);
  sub_1C4471D00();
  v16 = sub_1C4462804();
  sub_1C445FE04(v16);
  if (v6)
  {
  }

  v17 = v0[269];
  sub_1C446BCB0();
  v18 = v0[178];
  v19 = v0[143];
  v20 = v0[110];
  v21 = v0[101];
  v22 = v0[93];
  sub_1C4408D30();
  sub_1C447E970(v23, v24);
  sub_1C4410FD4();
  sub_1C447E970(v19, v25);
  v26 = sub_1C4EFF1C8();
  sub_1C4404528(v26);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v27 = sub_1C43FD258();
  sub_1C447E970(v27, v28);
  *(v32 + *(v33 + 24)) = v34;
  sub_1C4419C7C();
  sub_1C442CE50(v29);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C448922C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4489328, 0, 0);
}

uint64_t sub_1C4489328()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[10];
  v30 = v0[15];
  v31 = v0[9];
  v7 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v29 = v0[5];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  sub_1C44068F0();
  sub_1C44717B8(v11, v4, v12);
  sub_1C4419288();
  sub_1C44717B8(v10, v3, v13);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v10);
  v14 = (v9 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v9 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v7;
  v14[4] = sub_1C4489550();
  sub_1C4422F90(v14);
  v15 = sub_1C440787C();
  sub_1C44881BC(v15, v16, v17);
  sub_1C4400564();
  sub_1C44881BC(v5, v18, v19);
  sub_1C4400564();
  sub_1C44881BC(v2, v20, v21);
  sub_1C4400564();
  sub_1C44881BC(v29, v22, v23);
  sub_1C4400564();
  sub_1C44881BC(v8, v24, v25);
  *(v9 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v26 = v0[1];
  v27 = v0[3];

  return v26(v27);
}

unint64_t sub_1C4489550()
{
  result = qword_1EDDE2998;
  if (!qword_1EDDE2998)
  {
    type metadata accessor for PHPersonSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2998);
  }

  return result;
}

uint64_t sub_1C44895A8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1144);
  *v2 = *v0;
  *(v1 + 1152) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}