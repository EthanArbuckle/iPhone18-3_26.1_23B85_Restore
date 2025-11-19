uint64_t sub_1CF47F390(uint64_t a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 456) - 1 >= 4)
  {
    v8 = *(a1 + 8);
    if (v8 == 255 || *(a1 + 248) == 0)
    {
      if (v8 == 255)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_13;
      }

      v10 = result;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v12 = v11;
      result = (*(v3 + 8))(v7, v10);
      v13 = v12 * 1000000000.0;
      if (COERCE__INT64(fabs(v12 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          v14 = v13;
LABEL_13:
          *(a1 + 496) = v14;
          return result;
        }

LABEL_17:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_1CF47F504(char a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v10 = v9 * 1000000000.0;
  if (COERCE__INT64(fabs(v9 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1CF47F63C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1CF7D5474(sub_1CF2503E0, 0, a1, a2);
  if (!v3)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v8 = sub_1CF9E6888();
    [v7 setDateFormat_];

    if ([v6 next])
    {
      v15 = v7;
      v16 = v6;
      do
      {
        v9 = objc_autoreleasePoolPush();
        v10 = v6;
        sub_1CF25069C(v10, v17);
        sub_1CF24FAE4(a3, v7);
        v11 = v19;
        if (v19)
        {
          v12 = v18;

          sub_1CF250D40(v17);
          v13 = a3[3];
          v20 = a3[4];
          __swift_project_boxed_opaque_existential_1(a3, v13);
          sub_1CF9E7948();

          MEMORY[0x1D3868CC0](v12, v11);

          v14 = v13;
          v7 = v15;
          v6 = v16;
          sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA3C770, v14, v20);
        }

        else
        {
          sub_1CF250D40(v17);
        }

        objc_autoreleasePoolPop(v9);
      }

      while (([v10 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF47F85C()
{
  v1 = *v0;
  v2 = v0[5];
  v4 = vextq_s8(*(v1 + 2632), *(v1 + 2632), 8uLL);
  v5 = vextq_s8(*(v1 + 2648), *(v1 + 2648), 8uLL);
  type metadata accessor for SQLSnapshot();
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1CF47F8E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = a3;
  v12 = a4;
  v5 = *(a1 + 248);
  if (v5)
  {
    v13 = *(a1 + 248);
    v6 = *(a2 + 24);
    v7 = *(*v6 + 368);
    v8 = v5;
    v9 = v7(23, &v13, 0, 0, &v11, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v4)
    {
      if (v9 & 1) != 0 || (v7(6, &v13, 0, 0, &v11, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = v7(1, &v13, 0, 0, &v11, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t sub_1CF47FA34()
{
  v1 = v0[4];
  v3 = *(*v0 + 2632);
  v4 = *(*v0 + 2648);
  type metadata accessor for SQLSnapshot();
  return swift_dynamicCastClassUnconditional();
}

id sub_1CF47FC0C()
{
  v1 = *(v0 + 16);
  v2 = qword_1EDEBBCF0;
  v3 = *(v1 + qword_1EDEBBCF0);
  if (*(v0 + 24) == 1)
  {
    *(v1 + qword_1EDEBBCF0) = 0;
  }

  v4 = *(v1 + qword_1EDEBBDB0);
  [v4 forceBatchStart];
  result = [v4 flush];
  *(v1 + v2) = v3;
  return result;
}

void sub_1CF47FC9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CF3B23F0();
}

uint64_t objectdestroy_116Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1CF47FCE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CF3B2544();
}

void sub_1CF47FDFC(void *a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1CEFD0994(a1, a2, BYTE1(a2) & 1);
  }
}

uint64_t sub_1CF47FEB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CF0262EC;

  return sub_1CF478610(a1, v4, v5, v6, v7, v1 + 6);
}

uint64_t sub_1CF47FF88(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v4 = *(v1 + ((*(v3 + 64) + *(v3 + 80) + ((*(v3 + 80) + 24) & ~*(v3 + 80))) & ~*(v3 + 80)) + *(v3 + 64));
  return sub_1CF3D63B8(a1, *(v1 + 16));
}

void sub_1CF4800CC(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  memcpy(__dst, v3, sizeof(__dst));
  sub_1CF3D6824(__dst, v4, a1);
}

void sub_1CF480154(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_1CF3C5E64(a1, v1 + v4, v7, v8, v9, v11);
}

uint64_t sub_1CF480240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF480278(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, void (*a6)(uint64_t, unint64_t, uint64_t))
{
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6 && a5 != 7)
      {
        return result;
      }
    }

    else if (a5 != 4 && a5 != 5)
    {
      return result;
    }
  }

  else if (a5 > 1u)
  {
    if (a5 == 2)
    {
LABEL_18:
      a6(result, a2, (a2 >> 8) & 1);
    }

    if (a5 != 3)
    {
      return result;
    }
  }

  else if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

    goto LABEL_18;
  }

  return (a6)(result, a2, (a2 >> 8) & 1);
}

id sub_1CF48034C(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1CF480358(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, void (*a6)(uint64_t, unint64_t, uint64_t))
{
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6 && a5 != 7)
      {
        return result;
      }
    }

    else if (a5 != 4 && a5 != 5)
    {
      return result;
    }
  }

  else if (a5 > 1u)
  {
    if (a5 == 2)
    {
LABEL_18:
      a6(result, a2, (a2 >> 8) & 1);
    }

    if (a5 != 3)
    {
      return result;
    }
  }

  else if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

    goto LABEL_18;
  }

  return (a6)(result, a2, (a2 >> 8) & 1);
}

void sub_1CF480444(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_1CF399970(*a1, *(a1 + 8));
}

uint64_t sub_1CF480474(uint64_t a1)
{
  v1 = *(a1 + 480);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1CF48048C(unint64_t result, uint64_t a2, void *a3)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a3;
  }

  return result;
}

uint64_t sub_1CF480498(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1EEE66BE0]();
  }

  return result;
}

unint64_t sub_1CF4804A4(unint64_t result, uint64_t a2, void *a3)
{
  if (result >> 7 != 0xFFFFFFFF)
  {
    return sub_1CF48048C(result, a2, a3);
  }

  return result;
}

void sub_1CF4804C0(void *a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1CF1E53F8(a1, a2, BYTE1(a2) & 1);
  }
}

unint64_t sub_1CF4804D8()
{
  result = qword_1EDEA3460;
  if (!qword_1EDEA3460)
  {
    sub_1CEFD57E0(255, &qword_1EDEAB520, 0x1E6967388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3460);
  }

  return result;
}

uint64_t sub_1CF480540(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
    return MEMORY[0x1EEE66BE0]();
  }

  if (!(a4 >> 6))
  {
  }

  return result;
}

id sub_1CF480560(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
    return a3;
  }

  if (!(a4 >> 6))
  {
  }

  return result;
}

double sub_1CF480600(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_1CF480620(uint64_t a1, unint64_t a2)
{
  if (a1 < 0xFFFFFFFF00000000 || (a2 & 0xF000000000000007) != 0)
  {
    return sub_1CF07638C(a1, a2);
  }

  return a1;
}

id sub_1CF480664@<X0>(void *a1@<X8>)
{
  result = *(v1 + 264);
  if (result)
  {
    *a1 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF480678(void *a1, void *a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11, unsigned __int8 a12)
{
  if (a12 <= 5u)
  {
    if (a12 <= 1u)
    {
      if (a12)
      {

        sub_1CF480620(a5, a6);
        a1 = a7;
      }

      else
      {

        sub_1CF1D56D0(a2, a3, a4, a5, a6);
        a1 = a11;
      }
    }

    else
    {
      if (a12 == 2)
      {
        v23 = a3;

LABEL_21:
        a1 = v23;
LABEL_22:

LABEL_24:

        return;
      }

      if (a12 != 3)
      {
        if (a12 != 4)
        {
          return;
        }

        v23 = a1;

        goto LABEL_21;
      }

      a1 = a3;
    }

LABEL_26:

    goto LABEL_24;
  }

  if (a12 > 7u)
  {
    if (a12 != 8)
    {
      if (a12 == 9)
      {
        goto LABEL_22;
      }

      if (a12 != 10)
      {
        return;
      }

      a1 = a2;
    }

    goto LABEL_26;
  }

  if (a12 == 6)
  {
    goto LABEL_22;
  }

  if (a12 == 7)
  {
    sub_1CEFE4714(a1, a2);

    sub_1CEFE4714(a3, a4);
  }
}

id sub_1CF48089C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void sub_1CF480940(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  if (v2 == 255)
  {
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 224);
    *(a1 + 8) = v2;
  }
}

id sub_1CF480960(id result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1CEFD0988(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

void sub_1CF480998(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, unsigned __int8 a14)
{
  if (a14 > 0xAu)
  {
    if (a14 == 11)
    {

      sub_1CF03D7A8(a1, a2, a3);
    }

    else if (a14 == 13)
    {

      sub_1CF480A8C(a1, a2, a3, a4);
    }
  }

  else if (a14 == 8)
  {
  }

  else if (a14 == 9)
  {
  }
}

uint64_t sub_1CF480A8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 11)
  {
    return sub_1CEFE48D8(a3, a4);
  }

  return result;
}

void sub_1CF480AA8(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, unsigned __int8 a10)
{
  if (a10 > 0xAu)
  {
    if (a10 == 11)
    {

      sub_1CF03D7A8(a1, a2, a3);
    }

    else if (a10 == 13)
    {

      sub_1CF480A8C(a1, a2, a3, a4);
    }
  }

  else if (a10 == 8)
  {
    sub_1CEFE4714(a1, a2);

    sub_1CEFE4714(a4, a5);
  }

  else if (a10 == 9)
  {
  }
}

uint64_t sub_1CF480BF0(unsigned __int8 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *a1;
  memcpy(v6, v2, sizeof(v6));
  memcpy(__dst, v3, sizeof(__dst));
  return sub_1CF47E540(v4, v6, __dst) & 1;
}

uint64_t sub_1CF480C5C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  memcpy(__dst, v3, sizeof(__dst));
  return sub_1CF38DC10(a1, v4, __dst, v5, v6);
}

uint64_t sub_1CF480D74(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *))
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  return a2(a1, v8);
}

void sub_1CF480E3C(void *a1, uint64_t a2)
{
  if ((~a2 & 0xFF00) != 0)
  {
    sub_1CF1E53F8(a1, a2, BYTE1(a2) & 1);
  }
}

void sub_1CF480E54(void *a1, uint64_t a2)
{
  if ((~a2 & 0xFF00) != 0)
  {
    sub_1CEFD0994(a1, a2, BYTE1(a2) & 1);
  }
}

id sub_1CF480E6C(id result, uint64_t a2)
{
  if ((~a2 & 0xFF00) != 0)
  {
    return sub_1CF48034C(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

id sub_1CF480E9C(id result, uint64_t a2)
{
  if ((~a2 & 0xFF00) != 0)
  {
    return sub_1CEFD0988(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_1CF480EC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF39E858(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1CF480F78(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1CF480F84(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1CF0BA6EC(a1, a2 & 1);
  }
}

uint64_t sub_1CF481010(uint64_t result)
{
  if (result)
  {
    return sub_1CF7FC438();
  }

  return result;
}

unint64_t sub_1CF4810BC()
{
  result = qword_1EDEA5B70;
  if (!qword_1EDEA5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5B70);
  }

  return result;
}

uint64_t sub_1CF481118(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF40BD4C(a1, v1 + v4, v5);
}

uint64_t sub_1CF4811C0(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF40C648(a1, a2 & 1, v2[2], v2[3], v2[4], v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF4812B0(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1CF40BB34(a1, a2, v6, v7, v8);
}

void sub_1CF481340(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

char *sub_1CF48134C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF40CAC4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), (v0 + v2), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_825Tm()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = sub_1CF9E6068();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v4);

  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF48160C()
{
  v1 = *(type metadata accessor for Signpost(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF7618A4(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 17), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF4816E4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CF40C108(a1, v4);
}

uint64_t sub_1CF481788(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  return v3(a1, &v6);
}

uint64_t objectdestroy_840Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1CF48183C(void *a1, int a2, int a3, id a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

void sub_1CF481874(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1CF4818C0()
{
  v1 = v0[2];
  v3 = *(*v0 + 2632);
  v4 = *(*v0 + 2648);
  type metadata accessor for SQLReconciliationTable();
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1CF481944(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
  v11 = type metadata accessor for ItemMetadata();
  *(v10 + *(v11 + 48)) = 1;
  if (*(v10 + *(v11 + 44)) != 1)
  {
LABEL_6:
    v20 = *a1;
    v21 = *(a1 + 8);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v23 = v22;
    result = (*(v6 + 8))(v9, v5);
    v24 = v23 * 1000000000.0;
    if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        v25 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD958, &qword_1CF9FAC70);
        v26 = swift_allocObject();
        *(v26 + 152) = v21;
        *(v26 + 16) = 0u;
        *(v26 + 32) = 0u;
        *(v26 + 48) = 1;
        *(v26 + 56) = 0u;
        *(v26 + 72) = 0u;
        *(v26 + 88) = 0;
        *(v26 + 96) = xmmword_1CF9FEC30;
        *(v26 + 112) = 0;
        *(v26 + 120) = 0x2000000000000000;
        *(v26 + 128) = v25;
        *(v26 + 136) = 1;
        *(v26 + 144) = v20;
        (*(*a2 + 144))();
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27[1] = v2;
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v15 = v14;
  result = (*(v6 + 8))(v9, v5);
  v17 = v15 * 1000000000.0;
  if (COERCE__INT64(fabs(v15 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 < 9.22337204e18)
  {
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0020, &unk_1CF9FAC90);
    v19 = swift_allocObject();
    *(v19 + 152) = v13;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 1;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 88) = 0;
    *(v19 + 96) = xmmword_1CF9FEC30;
    *(v19 + 112) = 0;
    *(v19 + 120) = 0x2000000000000000;
    *(v19 + 128) = v18;
    *(v19 + 136) = 0x10000000000;
    *(v19 + 144) = v12;
    (*(*a2 + 144))();

    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1CF481CA0(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v13 = a3;
  v14 = a4;
  v5 = *(a1 + 8);
  if (v5 != 255)
  {
    v11 = *a1;
    v12 = v5;
    v7 = *(a2 + 24);
    (*(*v7 + 424))(&v11, &v13, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    if (!v4)
    {
      v8 = a1[31];
      if (v8)
      {
        v15 = a1[31];
        v9 = *(*v7 + 432);
        v10 = v8;
        v9(&v15, &v13, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      }
    }
  }
}

uint64_t objectdestroy_404Tm()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 88);

    v2 = *(v0 + 120);

    v3 = *(v0 + 128);

    v4 = *(v0 + 144);
  }

  sub_1CF03D7A8(*(v0 + 160), *(v0 + 168), *(v0 + 176));
  v5 = *(v0 + 208);
  if (v5 >> 60 != 15 && (v5 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 200), v5);
  }

  if (*(v0 + 312) != 1)
  {
    sub_1CEFE4714(*(v0 + 296), *(v0 + 304));
    v7 = *(v0 + 312);

    sub_1CEFE4714(*(v0 + 320), *(v0 + 328));
    v8 = *(v0 + 336);

    v9 = *(v0 + 352);
  }

  sub_1CF03D7A8(*(v0 + 368), *(v0 + 376), *(v0 + 384));
  v10 = *(v0 + 416);
  if (v10 >> 60 != 15 && (v10 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 408), v10);
  }

  v11 = *(v0 + 480);

  return swift_deallocObject();
}

uint64_t objectdestroy_1154Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v2 = *(v1 + 64);
  v3 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {
    v5 = v3[8];

    v6 = v3[12];

    v7 = v3[13];

    v8 = v3[15];

    v9 = v3[17];

    v10 = v3 + v4[12];
    v11 = type metadata accessor for ItemMetadata();
    v12 = v11[7];
    v13 = sub_1CF9E5CF8();
    v14 = *(v13 - 8);
    v15 = *(v14 + 8);
    v15(&v10[v12], v13);
    v15(&v10[v11[8]], v13);
    v16 = *&v10[v11[14] + 8];

    v17 = v11[30];
    if (!(*(v14 + 48))(&v10[v17], 1, v13))
    {
      v15(&v10[v17], v13);
    }

    v18 = *&v10[v11[31]];

    v19 = *&v10[v11[33]];

    v20 = &v10[v11[34]];
    v21 = v20[1];
    if (v21 >> 60 != 15)
    {
      sub_1CEFE4714(*v20, v21);
    }

    v22 = *&v10[v11[38] + 8];

    v23 = v3 + v4[13];
    v24 = *(v23 + 2);
    if (v24 != 1)
    {

      v25 = *(v23 + 6);

      v26 = *(v23 + 8);

      v27 = *(v23 + 11);

      v28 = *(v23 + 15);

      v29 = *(v23 + 17);

      v30 = *(v23 + 19);

      v31 = *(v23 + 21);

      v32 = *(v23 + 23);

      if (*(v23 + 24))
      {

        v33 = *(v23 + 25);
      }

      v34 = *(v23 + 28);

      v35 = *(v23 + 30);
    }

    sub_1CF07638C(*(v3 + v4[17]), *(v3 + v4[17] + 8));
  }

  return swift_deallocObject();
}

void *sub_1CF4821D4(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CF48221C(id *a1, uint64_t a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  v10 = type metadata accessor for ItemMetadata();
  v9[*(v10 + 48)] = 1;
  if (v9[*(v10 + 44)] != 1)
  {
LABEL_6:
    v18 = *a1;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v20 = v19;
    result = (*(v5 + 8))(v8, v4);
    v21 = v20 * 1000000000.0;
    if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -9.22337204e18)
    {
      if (v21 < 9.22337204e18)
      {
        v22 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03E0, &qword_1CF9FB270);
        v23 = swift_allocObject();
        *(v23 + 16) = 0u;
        *(v23 + 32) = 0u;
        *(v23 + 48) = 1;
        *(v23 + 56) = 0u;
        *(v23 + 72) = 0u;
        *(v23 + 88) = 0;
        *(v23 + 96) = xmmword_1CF9FEC30;
        *(v23 + 112) = 0;
        *(v23 + 120) = 0x2000000000000000;
        *(v23 + 128) = v22;
        *(v23 + 136) = 1;
        *(v23 + 144) = v18;
        (*(*a2 + 144))();
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = *a1;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  v15 = v13 * 1000000000.0;
  if (COERCE__INT64(fabs(v13 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 < 9.22337204e18)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE78, &unk_1CF9FB290);
    v17 = swift_allocObject();
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 1;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0;
    *(v17 + 96) = xmmword_1CF9FEC30;
    *(v17 + 112) = 0;
    *(v17 + 120) = 0x2000000000000000;
    *(v17 + 128) = v16;
    *(v17 + 136) = 0x10000000000;
    *(v17 + 144) = v11;
    (*(*a2 + 144))();

    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1CF482574(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v14 = a3;
  v15 = a4;
  v5 = *a1;
  if (*a1)
  {
    v13 = *a1;
    v7 = *(a2 + 24);
    v8 = *(*v7 + 424);
    v9 = v5;
    v8(&v13, &v14, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    if (!v4)
    {
      v10 = *(a1 + 216);
      if (v10 != 255)
      {
        v11 = *(a1 + 208);
        v12 = v10;
        (*(*v7 + 432))(&v11, &v14, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      }
    }
  }
}

uint64_t objectdestroy_678Tm()
{
  if (*(v0 + 64) != 1)
  {
    sub_1CEFE4714(*(v0 + 48), *(v0 + 56));
    v1 = *(v0 + 64);

    sub_1CEFE4714(*(v0 + 72), *(v0 + 80));
    v2 = *(v0 + 88);

    v3 = *(v0 + 104);
  }

  sub_1CF03D7A8(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  v4 = *(v0 + 168);
  if (v4 >> 60 != 15 && (v4 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 160), v4);
  }

  if (*(v0 + 328))
  {
    v6 = *(v0 + 296);

    v7 = *(v0 + 328);

    v8 = *(v0 + 336);

    v9 = *(v0 + 352);
  }

  sub_1CF03D7A8(*(v0 + 368), *(v0 + 376), *(v0 + 384));
  v10 = *(v0 + 416);
  if (v10 >> 60 != 15 && (v10 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 408), v10);
  }

  v11 = *(v0 + 480);

  return swift_deallocObject();
}

unint64_t sub_1CF482794()
{
  result = sub_1CF959F8C(*(v0 + 464));
  if (!v2)
  {
    return 1819047278;
  }

  return result;
}

uint64_t objectdestroy_1230Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90) - 8);
  v2 = *(v1 + 64);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {

    sub_1CEFE4714(*(v3 + 16), *(v3 + 24));
    v5 = *(v3 + 32);

    sub_1CEFE4714(*(v3 + 40), *(v3 + 48));
    v6 = *(v3 + 56);

    v7 = *(v3 + 72);

    v8 = *(v3 + 88);

    v9 = v3 + v4[12];
    v10 = type metadata accessor for ItemMetadata();
    v11 = v10[7];
    v12 = sub_1CF9E5CF8();
    v13 = *(v12 - 8);
    v14 = *(v13 + 8);
    v14(v9 + v11, v12);
    v14(v9 + v10[8], v12);
    v15 = *(v9 + v10[14] + 8);

    v16 = v10[30];
    if (!(*(v13 + 48))(v9 + v16, 1, v12))
    {
      v14(v9 + v16, v12);
    }

    v17 = *(v9 + v10[31]);

    v18 = *(v9 + v10[33]);

    v19 = (v9 + v10[34]);
    v20 = v19[1];
    if (v20 >> 60 != 15)
    {
      sub_1CEFE4714(*v19, v20);
    }

    v21 = *(v9 + v10[38] + 8);

    v22 = v3 + v4[13];
    v23 = *(v22 + 16);
    if (v23 != 1)
    {

      v24 = *(v22 + 48);

      v25 = *(v22 + 64);

      v26 = *(v22 + 88);

      v27 = *(v22 + 120);

      v28 = *(v22 + 136);

      v29 = *(v22 + 152);

      v30 = *(v22 + 168);

      v31 = *(v22 + 184);

      if (*(v22 + 192))
      {

        v32 = *(v22 + 200);
      }

      v33 = *(v22 + 224);

      v34 = *(v22 + 240);
    }

    sub_1CF07638C(*(v3 + v4[17]), *(v3 + v4[17] + 8));
  }

  return swift_deallocObject();
}

void sub_1CF482B90(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(v1[2] + 16);
  sub_1CF7EB934(*v2, *(v2 + 8), *v3, *(v3 + 8), a1);
}

void sub_1CF482C50(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(v1[2] + 16);
  sub_1CF7EB934(*(v2 + 16), *(v2 + 24), *v3, *(v3 + 8), a1);
}

uint64_t sub_1CF482CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF482D2C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  return sub_1CF3ED554(a1, *(v1 + 16), *(v1 + 24));
}

unint64_t sub_1CF482D74(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF2503FC(a1);
}

void sub_1CF482D9C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF5AD9F8(v3, v1, v2);
}

uint64_t sub_1CF482E50(void *a1, uint64_t a2, void *a3, int a4, int a5, void *a6, uint64_t a7)
{
  v59 = a5;
  v63 = a4;
  v61 = sub_1CF9E6118();
  v60 = *(v61 - 1);
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v73 = a1;
  v74 = a2;
  v13 = a6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  swift_dynamicCastClassUnconditional();
  sub_1CF39D24C(a1, a2, a3);
  v65 = a6;
  v66 = a3;
  v62 = a7;
  v14 = *(a7 + 64);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF483A3C;
  *(v15 + 24) = &v64;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF485970;
  *(v16 + 24) = v15;
  v71 = sub_1CF1C0B54;
  v72 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1CEFFD02C;
  v70 = &block_descriptor_1367;
  v17 = _Block_copy(&aBlock);

  dispatch_async_and_wait(v14, v17);
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46440, v19, v20);
  v21 = a3[3];
  v22 = a3[4];
  v23 = __swift_project_boxed_opaque_existential_1(a3, v21);
  MEMORY[0x1EEE9AC00](v23);
  *&v58[-16] = a6;
  *&v58[-8] = &v73;
  v24 = sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483A44, &v58[-32], v21, MEMORY[0x1E69E7CA8] + 8, v22);
  v61 = v58;
  MEMORY[0x1EEE9AC00](v24);
  *&v58[-16] = a6;
  *&v58[-8] = a3;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1CF483A6C;
  *(v25 + 24) = &v58[-32];
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1CF485970;
  *(v26 + 24) = v25;
  v71 = sub_1CF1C0B54;
  v72 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1CEFFD02C;
  v70 = &block_descriptor_1378;
  v27 = _Block_copy(&aBlock);

  dispatch_async_and_wait(v14, v27);
  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v29 = a6[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  v30 = v63;
  sub_1CF38F0E0(a1, a2, a3, v63 & 1);
  v31 = a3[3];
  v32 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v31);
  sub_1CF4FB2BC(0, 0xE000000000000000, v31, v32);
  v33 = a6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  sub_1CF3EED98(0, a1, a2, a3, sub_1CF483A34, v62);
  v34 = a6[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  sub_1CF3DE82C(a1, a2, a3, v30 & 1, sub_1CF483EA4, sub_1CF483EC0);
  v35 = *(**(v34 + 16) + 936);

  v35(a3);

  v36 = v59;
  if (v59)
  {
    v37 = a3[3];
    v38 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v37);
    sub_1CF4FB2BC(0x662065657274202BLL, 0xEA00000000003A73, v37, v38);
    v39 = a3[3];
    v40 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v39);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483AAC, a6, v39, MEMORY[0x1E69E7CA8] + 8, v40);
  }

  v41 = (a6 + qword_1EDEBBC20);
  os_unfair_lock_lock((a6 + qword_1EDEBBC20));
  sub_1CF3DEB6C(&v41[2], a3);
  os_unfair_lock_unlock(v41);
  v42 = a3[3];
  v43 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v42);
  sub_1CF4FB2BC(0, 0xE000000000000000, v42, v43);
  swift_dynamicCastClassUnconditional();
  sub_1CF3EED98(1, a1, a2, a3, sub_1CF483A34, v62);
  v44 = a6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_dynamicCastClassUnconditional();
  sub_1CF3DE82C(a1, a2, a3, v63 & 1, sub_1CF485AB4, sub_1CF483D4C);
  if (v36)
  {
    v45 = a3[3];
    v46 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v45);
    sub_1CF4FB2BC(0x662065657274202BLL, 0xEA00000000003A70, v45, v46);
    v47 = a3[3];
    v48 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v47);
    v49 = MEMORY[0x1E69E7CA8];
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483A90, a6, v47, MEMORY[0x1E69E7CA8] + 8, v48);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CA8];
  }

  v50 = (a6 + qword_1EDEBBC28);
  os_unfair_lock_lock((a6 + qword_1EDEBBC28));
  sub_1CF3DF49C(&v50[2], a3);
  os_unfair_lock_unlock(v50);
  v51 = a3[3];
  v52 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v51);
  sub_1CF4FB2BC(0, 0xE000000000000000, v51, v52);
  v53 = a3[3];
  v54 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v53);
  sub_1CF4FB2BC(0xD000000000000027, 0x80000001CFA46460, v53, v54);
  v55 = a3[3];
  v56 = a3[4];
  v57 = __swift_project_boxed_opaque_existential_1(a3, v55);
  MEMORY[0x1EEE9AC00](v57);
  *&v58[-16] = a6;
  *&v58[-8] = &v73;
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF483A74, &v58[-32], v55, v49 + 8, v56);
}

void sub_1CF48391C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_1CF3DCD30(v8, v3, v4, v5, sub_1CF483A2C, v2, v6, v7);
}

void sub_1CF4839A4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_1CF3DCD30(v8, v3, v4, v5, sub_1CF3DFD14, 0, v6, v7);
}

uint64_t objectdestroy_1390Tm()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF483B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFSItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_142Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF483C30(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1CF2F6594(result, a2 & 1);
  }

  return result;
}

id sub_1CF483C48(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1CF0BA8A4(a1);
  }

  return a1;
}

uint64_t objectdestroy_1411Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1CF484034(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  return sub_1CF3EE760(v3, *v4, *(v4 + 8), a1);
}

void sub_1CF48408C(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(v1[2] + 32);
  sub_1CF3A1840(*v2, *(v2 + 8), a1, v3);
}

void sub_1CF484120(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 8);
  sub_1CF39CA40(a1, *(v1 + 16), *v2);
}

unint64_t sub_1CF48414C()
{
  result = qword_1EDEA33D0;
  if (!qword_1EDEA33D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0698, &qword_1CFA05AA8);
    sub_1CEFCCCEC(&unk_1EDEA3888, &qword_1EC4C06A0, &qword_1CFA05AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA33D0);
  }

  return result;
}

unint64_t sub_1CF4841FC()
{
  result = qword_1EDEA33C8;
  if (!qword_1EDEA33C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C06B0, &qword_1CFA05AC0);
    sub_1CEFCCCEC(&qword_1EDEA3880, &qword_1EC4C06B8, &qword_1CFA05AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA33C8);
  }

  return result;
}

void sub_1CF4842D8(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 8);
  sub_1CF39C5F4(a1, *(v1 + 16), *v2);
}

void sub_1CF484340(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v4 = a2;

        a1 = v4;
        a2 = a3;
      }

      else if (a4 != 2)
      {
        return;
      }

      v6 = a2;

      a1 = v6;
    }
  }

  else if (a4 - 3 >= 4)
  {
    return;
  }
}

uint64_t sub_1CF4844AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF4844D4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1CF4845B8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v7 = v2[4];
  v6 = v2[5];
  v8 = v2[7];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1CF3D6E74(a1, v2[8], v2 + ((*(v9 + 80) + 72) & ~*(v9 + 80)), v7, v8, a2);
}

uint64_t sub_1CF484664(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v7 = *(v1 + 16);
  v8 = *(v1 + 40);
  v5 = *(*(type metadata accessor for ItemReconciliation() - 8) + 80);
  return sub_1CF3D6774(a1, *(v1 + 64));
}

uint64_t sub_1CF484704(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  v8 = v2[7];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1CF3D6E74(a1, v2[8], v2 + ((*(v9 + 80) + 72) & ~*(v9 + 80)), v6, v8, a2);
}

uint64_t objectdestroy_1487Tm()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_1490Tm()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF4849E8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 56);
  type metadata accessor for SnapshotItem();
  v7 = *(sub_1CF9E75D8() - 8);
  v8 = *(v1 + ((*(v7 + 64) + *(v7 + 80) + ((*(v7 + 80) + 72) & ~*(v7 + 80))) & ~*(v7 + 80)) + *(v7 + 64));
  return sub_1CF3D6468(a1, *(v1 + 64));
}

uint64_t sub_1CF484AB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  return sub_1CF3D6648(*(v1 + 64), *(v1 + 72), *(v1 + 80), a1);
}

uint64_t sub_1CF484B78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3D6964(*(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1CF484B9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v5[3];
  v9 = v5[4];
  v10 = __swift_project_boxed_opaque_existential_1(v5, v8);
  return a2(v7, a1, v10, v8, v9);
}

uint64_t objectdestroy_179Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1CF484C8C(uint64_t a1)
{
  v3 = *(sub_1CF9E5CF8() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF3CC400(a1, v5, v6, v7, v8, v1 + v4, v9);
}

void sub_1CF484D34(int a1)
{
  v3 = *(sub_1CF9E5CF8() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_1CF3CC6F8(a1, v1 + v4, v7, v8, v10, v11);
}

unint64_t sub_1CF484DEC()
{
  result = qword_1EDEA3358;
  if (!qword_1EDEA3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3358);
  }

  return result;
}

unint64_t sub_1CF484E40()
{
  result = qword_1EDEA3940;
  if (!qword_1EDEA3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3940);
  }

  return result;
}

uint64_t sub_1CF484EAC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Signpost(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

uint64_t sub_1CF484F60()
{
  v1 = *(type metadata accessor for Signpost(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v3 + 55) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + 71) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v8;
  v11 = v8[1];
  return sub_1CF3C9514(v0 + v2, *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8));
}

uint64_t objectdestroy_828Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF4850E0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

__n128 sub_1CF485144(uint64_t a1)
{
  v3 = *(v1 + 16);
  v12 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(type metadata accessor for Signpost(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9 + 8);
  sub_1CF3C6140(a1, v1 + v6, *(v1 + v7), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9));
  return result;
}

uint64_t sub_1CF485224()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_1CF3C6404();
}

uint64_t sub_1CF485264()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  return sub_1CF3D6F20(v1);
}

uint64_t sub_1CF4852AC(void *a1)
{
  v3 = *(*(*(v1 + 32) + 40) + 16);

  sub_1CF9364FC(a1);
}

uint64_t sub_1CF4852F8(void *a1)
{
  v3 = *(*(*(v1 + 32) + 32) + 16);

  sub_1CF9364FC(a1);
}

uint64_t sub_1CF485344(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  return sub_1CF3DF810(a1, *(v1 + 64));
}

uint64_t sub_1CF48536C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  return sub_1CF3DEECC(a1, *(v1 + 64));
}

uint64_t sub_1CF4853EC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1CF3DE6FC(a1, v2[4], a2);
}

uint64_t sub_1CF485428(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF3CDBD8(a1, v1[4], v1[5], v1[6]);
}

uint64_t objectdestroy_1585Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF4854A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v1(v4);
  return sub_1CEFCCC44(v4, &qword_1EC4C0700, &qword_1CFA05B10);
}

uint64_t sub_1CF485500(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1CF3CBA2C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56) | (*(v1 + 57) << 8), *(v1 + 64), *(v1 + 72));
}

id sub_1CF485540(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1CF48554C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

void sub_1CF48559C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*(a10 + 80))(a1, 0, 0, a7, a10))
  {
    (a3)(0);
  }

  else
  {
    v12 = (*(a10 + 16))(a7, a10);
    a3();
  }
}

uint64_t sub_1CF485670(void *a1)
{
  result = sub_1CF9E5A58();
  if (v3 <= 0x3F)
  {
    v4 = a1[2];
    v5 = a1[4];
    result = type metadata accessor for FileTreeWriter();
    if (v6 <= 0x3F)
    {
      v7 = a1[3];
      v8 = a1[5];
      result = type metadata accessor for FileTreeWriter();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CF485B78()
{
  result = qword_1EC4C07B0;
  if (!qword_1EC4C07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C07B0);
  }

  return result;
}

uint64_t sub_1CF485C00()
{
  sub_1CF9E69C8();
}

uint64_t sub_1CF485D98()
{
  sub_1CF9E69C8();
}

uint64_t sub_1CF485EF0()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF485FF8(uint64_t a1, char a2)
{
  sub_1CF9E81D8();
  v3 = qword_1CFA06038[a2];
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF486054()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4861E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF487044();
  *a2 = result;
  return result;
}

void sub_1CF486218(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6574617473;
  v5 = 0xD000000000000011;
  v6 = 0x80000001CFA2C070;
  if (v2 != 6)
  {
    v5 = 0xD00000000000001ALL;
    v6 = 0x80000001CFA2C090;
  }

  v7 = 0xEA0000000000726FLL;
  v8 = 0x7272655F7473616CLL;
  if (v2 != 4)
  {
    v8 = 0x797469726F697270;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEF657461645F7972;
  v10 = 0x7465725F7478656ELL;
  if (v2 != 2)
  {
    v10 = 0x7272655F7473616CLL;
    v9 = 0xEF657461645F726FLL;
  }

  if (*v1)
  {
    v4 = 0x6F635F7972746572;
    v3 = 0xEB00000000746E75;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1CF486340()
{
  v1 = *v0;
  v2 = 0x6574617473;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0xD00000000000001ALL;
  }

  v4 = 0x7272655F7473616CLL;
  if (v1 != 4)
  {
    v4 = 0x797469726F697270;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7465725F7478656ELL;
  if (v1 != 2)
  {
    v5 = 0x7272655F7473616CLL;
  }

  if (*v0)
  {
    v2 = 0x6F635F7972746572;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF486464(unsigned __int8 a1, id a2)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v4 = v2[48];
        goto LABEL_17;
      }

      if (*(v2 + 8))
      {
        v15 = *(v2 + 7);
        v16 = a2;
        v17 = sub_1CF9E6888();
        a2 = v16;
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = [a2 bindObjectParameter_];
      swift_unknownObjectRelease();
LABEL_26:
      v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v7;
    }

    if (a1 != 4)
    {
      v4 = *(v2 + 1);
      v12 = MEMORY[0x1E69E6810];
      goto LABEL_18;
    }

    v5 = *(v2 + 5);
    if (v5)
    {
      v6 = *(v2 + 5);
      swift_getErrorValue();
      v7 = v23;
      v8 = v5;
      v9 = sub_1CF4C2330(v24, v25);
      if (v3)
      {
      }

      else
      {
        v21 = v9;
        v22 = v10;
        v7 = sub_1CF04E5D8(v9, v10);

        sub_1CEFE4714(v21, v22);
      }

      return v7;
    }

    v11 = [a2 bindObjectParameter_];
LABEL_23:
    v19 = v11;
    goto LABEL_26;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = *(v2 + 3);
    }

    else
    {
      v4 = *(v2 + 4);
    }

    goto LABEL_17;
  }

  if (a1)
  {
    v11 = [a2 bindLongParameter_];
    goto LABEL_23;
  }

  v4 = *v2;
LABEL_17:
  v12 = MEMORY[0x1E69E6530];
LABEL_18:
  v26[3] = v12;
  v26[0] = v4;
  v7 = sub_1CEFF8EA0(v26);
  v14 = v13;
  sub_1CF0248E0(v26);
  if (v14)
  {
    return v7;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF4866C0(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      *(a4 + 24) = &type metadata for NSecTimestamp;
      v16 = [a1 longAtIndex_];
    }

    else
    {
      if (!a2)
      {
        *(a4 + 24) = &type metadata for JobThrottlingState;
        v7 = [a1 longAtIndex_];
        if (v7 <= 2)
        {
          *a4 = v7;
          return;
        }

        goto LABEL_15;
      }

      v16 = [a1 longAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E6530];
    }

    goto LABEL_18;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      *(a4 + 24) = &type metadata for JobSchedulingPriority;
      v16 = [a1 unsignedLongAtIndex_];
LABEL_18:
      *a4 = v16;
      return;
    }

    if (([a1 isNullAtIndex_] & 1) == 0)
    {
      v9 = [a1 dataAtIndex_];
      v10 = sub_1CF9E5B88();
      v12 = v11;

      sub_1CF4C2898(v10, v12);
      v14 = v13;
      sub_1CEFE4714(v10, v12);
      if (v4)
      {
        return;
      }

      if (v14)
      {
        swift_getErrorValue();
        *(a4 + 24) = v24;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
        (*(*(v24 - 8) + 16))(boxed_opaque_existential_0);

        return;
      }
    }

    goto LABEL_20;
  }

  if (a2 == 6)
  {
    *(a4 + 24) = &type metadata for JobThrottlingDomainWideError;
    v17 = sub_1CF94C0BC([a1 longAtIndex_]);
    if (v17 == 13)
    {
LABEL_15:
      sub_1CF1DA5D8();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
      __swift_deallocate_boxed_opaque_existential_0(a4);
      return;
    }

    *a4 = v17;
  }

  else
  {
    if ([a1 isNullAtIndex_])
    {
LABEL_20:
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return;
    }

    v20 = [a1 stringAtIndex_];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    *(a4 + 24) = MEMORY[0x1E69E6158];
    *a4 = v21;
    *(a4 + 8) = v23;
  }
}

void sub_1CF486960(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  LOBYTE(v21) = 0;
  sub_1CF0230AC(a1, &type metadata for JobThrottlingState);
  sub_1CF0230B4(&v21, &type metadata for JobThrottlingState, a1, &type metadata for JobThrottlingState, a2);
  if (!v3)
  {
    v7 = v28[2];
    LOBYTE(v21) = 5;
    sub_1CF0230AC(a1, &type metadata for JobSchedulingPriority);
    sub_1CF0230B4(&v21, &type metadata for JobSchedulingPriority, a1, &type metadata for JobSchedulingPriority, a2);
    v8 = v26;
    LOBYTE(v21) = 1;
    v9 = MEMORY[0x1E69E6530];
    sub_1CF0230AC(a1, MEMORY[0x1E69E6530]);
    sub_1CF0230B4(&v21, v9, a1, v9, a2);
    v10 = v25;
    LOBYTE(v21) = 2;
    sub_1CF0230AC(a1, &type metadata for NSecTimestamp);
    sub_1CF0230B4(&v21, &type metadata for NSecTimestamp, a1, &type metadata for NSecTimestamp, a2);
    v11 = v24;
    LOBYTE(v21) = 3;
    sub_1CF0230B4(&v21, &type metadata for NSecTimestamp, a1, &type metadata for NSecTimestamp, a2);
    v19 = v23;
    v20 = v11;
    LOBYTE(v21) = 4;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    sub_1CF0230AC(a1, v12);
    sub_1CF0230B4(&v21, v12, a1, v12, a2);
    v18 = v22;
    LOBYTE(v21) = 6;
    sub_1CF0230AC(a1, &type metadata for JobThrottlingDomainWideError);
    sub_1CF0230B4(&v21, &type metadata for JobThrottlingDomainWideError, a1, &type metadata for JobThrottlingDomainWideError, a2);
    v27 = v28[1];
    v28[0] = 7;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    sub_1CF0230AC(a1, v13);
    sub_1CF0230B4(v28, v13, a1, v13, a2);
    v14 = v21;
    v15 = v27;
    if (v27 > 0xB)
    {
      v17 = v19;
      v16 = v20;
    }

    else
    {
      v17 = v19;
      v16 = v20;
      if (((1 << v27) & 0x860) != 0)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    *a3 = v7;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    *(a3 + 40) = v18;
    *(a3 + 48) = v15;
    *(a3 + 56) = v14;
  }
}

__n128 sub_1CF486CC4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1CF486960(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

unint64_t sub_1CF486D18(uint64_t a1)
{
  *(a1 + 8) = sub_1CF486D48();
  result = sub_1CF24EF90();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF486D48()
{
  result = qword_1EC4C07C0;
  if (!qword_1EC4C07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C07C0);
  }

  return result;
}

unint64_t sub_1CF486DA0()
{
  result = qword_1EDEAA330;
  if (!qword_1EDEAA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA330);
  }

  return result;
}

unint64_t sub_1CF486DF4(uint64_t a1)
{
  result = sub_1CF486E1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF486E1C()
{
  result = qword_1EC4C07C8;
  if (!qword_1EC4C07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C07C8);
  }

  return result;
}

uint64_t _s9SQLFieldsOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9SQLFieldsOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF486FF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BF760, &qword_1CF9FCBB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF487044()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CF487090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v46 = a2;
  v47 = a3;
  v41 = a5;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v7 + 56))(v17, 1, 1, v6);
  v50 = 0x2070756B6F6F6CLL;
  v51 = 0xE700000000000000;
  v45 = a1;
  v52 = a1;
  v22 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v22);

  v42 = v51;
  v43 = v50;
  sub_1CEFE74D8(v17, v14);
  v23 = *(v7 + 48);
  if (v23(v14, 1, v6) == 1)
  {
    v24 = v21;
    sub_1CF9E6048();
    v25 = v10;
    if (v23(v14, 1, v6) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v25 = v10;
    (*(v7 + 32))(v10, v14, v6);
  }

  v26 = v44;
  (*(v7 + 16))(v44, v25, v6);
  *(v26 + *(v18 + 20)) = v21;
  v27 = v26 + *(v18 + 24);
  *v27 = "SQLDB: Lookup item by fileID";
  *(v27 + 8) = 28;
  *(v27 + 16) = 2;
  v28 = v21;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CF9FA450;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1CEFD51C4();
  v30 = v42;
  *(v29 + 32) = v43;
  *(v29 + 40) = v30;
  sub_1CF9E6028();

  (*(v7 + 8))(v25, v6);
  v31 = sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = v48;
  v34 = (*(v49 + 24))(sub_1CF4C0448, v32);
  if (!v33)
  {
    v35 = v34;
    if ([v34 next])
    {
      v36 = sub_1CF1CBB20();
      v37 = v41;
      sub_1CF2408F8(v36, v35, 0, v41);

      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      (*(*(v39 - 8) + 56))(v37, 0, 1, v39);
    }

    else
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      (*(*(v38 - 8) + 56))(v41, 1, 1, v38);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v26, type metadata accessor for Signpost);
}

uint64_t sub_1CF487650(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  if (a4)
  {
    v5 = a4;
    while (1)
    {
      v7 = v5 & -v5;
      v9 = v7;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      v8 = v5 == v7;
      v5 ^= v7;
      if (v8)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_1CF4876D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x28284C4C554E4649, 0xEF205443454C4553);
  v6 = v5[95];
  v7 = v5[96];
  v8 = v5[97];
  v9 = v5[98];
  v10 = sub_1CF06DA94(0, 0xE000000000000000);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4E6C0);
  MEMORY[0x1D3868CC0](*(v2 + qword_1EDEBBD78), *(v2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4E6E0);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0x20202020200A2C29, 0xEA00000000002020);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF4878A0(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28 = a3;
  v29 = a1;
  v10 = sub_1CF4AC9EC(a1, a4, a5);
  v27 = 0;
  v11 = a2[3];
  v26 = a2[4];
  v25 = __swift_project_boxed_opaque_existential_1(a2, v11);
  sub_1CF9E7948();

  v31 = 0x687370616E73202BLL;
  v32 = 0xEB0000000020746FLL;
  *(v5 + 32);
  v12 = sub_1CF9E6958();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  v30 = v10;
  sub_1CF056E98();
  v15 = sub_1CF9E7718();
  MEMORY[0x1D3868CC0](v15, v16);

  MEMORY[0x1D3868CC0](0x73656972746E6520, 0xEA00000000003A29);
  sub_1CF4FB2BC(0x687370616E73202BLL, 0xEB0000000020746FLL, v11, v26);

  v17 = a2[3];
  v18 = a2[4];
  v19 = __swift_project_boxed_opaque_existential_1(a2, v17);
  MEMORY[0x1EEE9AC00](v19);
  v21[2] = a4;
  v21[3] = a5;
  v22 = v28 & 1;
  v23 = v6;
  v24 = v29;
  return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4C040C, v21, v17, MEMORY[0x1E69E7CA8] + 8, v18);
}

uint64_t sub_1CF487B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CF487BA4(uint64_t a1)
{
  v2 = sub_1CF4C0460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF487BE0(uint64_t a1)
{
  v2 = sub_1CF4C0460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF487C1C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1CF487C6C(a1);
  return v2;
}

uint64_t sub_1CF487C6C(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C07D8, &qword_1CFA06178);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-1] - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4C0460();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for PaginatedContinuation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_1CF9E7D78();
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1CF487E40(void *a1)
{
  v3 = v1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v16 = *(v18 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v17[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C07F8, &qword_1CFA06188);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4C0460();
  sub_1CF9E82A8();
  v14 = *(v3 + 16);
  sub_1CF9E7EE8();
  if (v2)
  {
    return (*(v9 + 8))(v12, v8);
  }

  sub_1CF9E7E28();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1CF1D6D18();
  sub_1CF9E82A8();
  (*(v16 + 8))(v7, v18);
  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1CF488120()
{
  v3 = *(*v0 + 16);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 979789423;
}

uint64_t sub_1CF488190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v33 = a5;
  v30 = a1;
  v31 = a3;
  v8 = *(*v5 + 776);
  v29[1] = *(*v5 + 760);
  v9 = type metadata accessor for SnapshotItem();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v29 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v29 - v22;
  (*(v11 + 16))(v14, a2, v10, v21);
  if ((*(v15 + 48))(v14, 1, v9) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v15 + 32))(v23, v14, v9);
  if ((*(v33 + 8))(v32) == 2)
  {
    v25 = *(v6 + qword_1EDEAE5C0);
    type metadata accessor for SnapshotItemObject();
    (*(v15 + 16))(v19, v23, v9);
    v26 = sub_1CF0761B4(v19);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemIDObject();
    v27 = v25;
    v28 = sub_1CF067AFC(v30);
    [v27 setObject:v26 forKey:v28];
  }

  return (*(v15 + 8))(v23, v9);
}

void sub_1CF4884D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  if ((*(a4 + 8))(a3, a4) == 2)
  {
    v7 = *(v4 + qword_1EDEAE5C0);
    v8 = *(v6 + 776);
    v9 = *(v6 + 760);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemIDObject();
    v10 = v7;
    v11 = sub_1CF067AFC(a1);
    [v10 removeObjectForKey_];
  }
}

uint64_t sub_1CF488624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *v4;
  if ((*(a3 + 8))(a2, a3) == 2)
  {
    v8 = *(v4 + qword_1EDEAE5C0);
    v9 = *(v7 + 776);
    v10 = *(v7 + 760);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemIDObject();
    v11 = v8;
    v12 = sub_1CF067AFC(a1);
    v13 = [v11 objectForKey_];

    if (v13)
    {
      v14 = *(*v13 + 96);
      v15 = type metadata accessor for SnapshotItem();
      v24 = *(v15 - 8);
      (*(v24 + 16))(a4, &v13[v14], v15);

      v16 = *(v24 + 56);
      v17 = a4;
      v18 = 0;
      v19 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = *(v7 + 760);
    v21 = *(v7 + 776);
  }

  v22 = type metadata accessor for SnapshotItem();
  v16 = *(*(v22 - 8) + 56);
  v19 = v22;
  v17 = a4;
  v18 = 1;
LABEL_6:

  return v16(v17, v18, 1, v19);
}

id sub_1CF488864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(a2, a3);
  if (result == 2)
  {
    v5 = *(v3 + qword_1EDEAE5C0);

    return [v5 removeAllObjects];
  }

  return result;
}

void sub_1CF4888E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v60 = a2;
  v61 = a5;
  v65 = a1;
  v9 = *v5;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v51 - v19;
  v20 = type metadata accessor for Signpost(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v59 = v5;
  if (v5[4])
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
  }

  else
  {
    v54 = a3;
    v55 = a4;
    v56 = v6;
    v57 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v51 = qword_1EDEBBE40;
    v28 = v62;
    (*(v11 + 56))(v62, 1, 1, v10);
    v63 = 0;
    v64 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
    v29 = *(v9 + 776);
    v30 = *(v9 + 760);
    swift_getAssociatedTypeWitness();
    v31 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1CF9E7FE8();
    v52 = v64;
    v53 = v63;
    sub_1CEFE74D8(v28, v17);
    v32 = *(v11 + 48);
    if (v32(v17, 1, v10) == 1)
    {
      v33 = v51;
      v34 = v51;
      v35 = v58;
      sub_1CF9E6048();
      v36 = v32(v17, 1, v10);
      v37 = v33;
      if (v36 != 1)
      {
        sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v35 = v58;
      (*(v11 + 32))(v58, v17, v10);
      v37 = v51;
    }

    v38 = v57;
    (*(v11 + 16))(v57, v35, v10);
    *(v38 + *(v20 + 20)) = v37;
    v39 = v38 + *(v20 + 24);
    *v39 = "SQLDB: Lookup FS recursive properties";
    *(v39 + 8) = 37;
    *(v39 + 16) = 2;
    v37;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v40 = v35;
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1CF9FA450;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1CEFD51C4();
    v42 = v52;
    *(v41 + 32) = v53;
    *(v41 + 40) = v42;
    sub_1CF9E6028();

    (*(v11 + 8))(v40, v10);
    v43 = sub_1CEFCCC44(v62, &unk_1EC4BED20, &unk_1CFA00700);
    v44 = MEMORY[0x1EEE9AC00](v43);
    v45 = v56;
    v46 = (*(v55 + 24))(sub_1CF4C0AD8, v44);
    if (v45)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v38, type metadata accessor for Signpost);
      return;
    }

    v47 = v46;
    v48 = [v46 next];
    if (v48)
    {
      v23 = [v47 unsignedLongAtIndex_];
      v24 = [v47 unsignedLongAtIndex_];
      v25 = [v47 unsignedLongAtIndex_];
      v26 = [v47 unsignedLongAtIndex_];
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }

    v27 = v48 ^ 1;

    sub_1CF9E7458();
    v49 = v57;
    sub_1CF9E6038();
    sub_1CF4C0A48(v49, type metadata accessor for Signpost);
  }

  v50 = v61;
  *v61 = v23;
  v50[1] = v24;
  v50[2] = v25;
  v50[3] = v26;
  *(v50 + 32) = v27;
}

uint64_t sub_1CF488F38(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46520);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  return 0;
}

uint64_t sub_1CF4890B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v59 = a1;
  v8 = *v4;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v45 - v18;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v4;
  if (*(v4 + 32) != 1)
  {
    return 0;
  }

  v49 = a3;
  v50 = a4;
  v51 = v5;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v46 = qword_1EDEBBE40;
  v22 = v56;
  (*(v10 + 56))(v56, 1, 1, v9);
  v57 = 0;
  v58 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v23 = *(v8 + 776);
  v24 = *(v8 + 760);
  swift_getAssociatedTypeWitness();
  v25 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v47 = v58;
  v48 = v57;
  sub_1CEFE74D8(v22, v16);
  v26 = *(v10 + 48);
  v27 = v26(v16, 1, v9);
  v28 = v53;
  if (v27 == 1)
  {
    v29 = v46;
    v30 = v46;
    v31 = v52;
    sub_1CF9E6048();
    v32 = v26(v16, 1, v9);
    v33 = v29;
    if (v32 != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v52;
    (*(v10 + 32))(v52, v16, v9);
    v33 = v46;
  }

  (*(v10 + 16))(v28, v31, v9);
  *(v28 + *(v19 + 20)) = v33;
  v35 = v28 + *(v19 + 24);
  *v35 = "SQLDB: Lookup FP recursive properties";
  *(v35 + 8) = 37;
  *(v35 + 16) = 2;
  v36 = v33;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA450;
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1CEFD51C4();
  v38 = v47;
  *(v37 + 32) = v48;
  *(v37 + 40) = v38;
  sub_1CF9E6028();

  (*(v10 + 8))(v31, v9);
  v39 = sub_1CEFCCC44(v56, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v41 = v51;
  v42 = (*(v50 + 24))(sub_1CF4C0ACC, v40);
  if (v41)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF4C0A48(v28, type metadata accessor for Signpost);
  }

  else
  {
    v43 = v42;
    if ([v42 next])
    {
      v44 = [v43 unsignedLongAtIndex_];
      [v43 unsignedLongAtIndex_];
    }

    else
    {
      v44 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v28, type metadata accessor for Signpost);
    return v44;
  }
}

uint64_t sub_1CF4896C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA465E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  return 0;
}

unint64_t sub_1CF489844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a1;
  v9 = *v4;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v45 - v19;
  v20 = type metadata accessor for Signpost(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v51 = v4;
  if (*(v4 + 32) != 1)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLSnapshot.swift", 130, 2, 163);
  }

  v48 = v22;
  v49 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  v53 = a3;
  v54 = a4;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  v25 = v55;
  (*(v11 + 56))(v55, 1, 1, v10);
  v56 = 0;
  v57 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v26 = *(v9 + 776);
  v27 = *(v9 + 760);
  swift_getAssociatedTypeWitness();
  v28 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v46 = v57;
  v47 = v56;
  sub_1CEFE74D8(v25, v17);
  v29 = *(v11 + 48);
  if (v29(v17, 1, v10) == 1)
  {
    v30 = v24;
    v31 = v50;
    sub_1CF9E6048();
    v32 = v29(v17, 1, v10);
    v33 = v49;
    if (v32 != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v50;
    (*(v11 + 32))(v50, v17, v10);
    v33 = v49;
  }

  (*(v11 + 16))(v33, v31, v10);
  v34 = v48;
  *(v33 + *(v48 + 20)) = v24;
  v35 = v33 + *(v34 + 24);
  *v35 = "SQLDB: Lookup Inherited Content Policy";
  *(v35 + 8) = 38;
  *(v35 + 16) = 2;
  v36 = v24;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA450;
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1CEFD51C4();
  v38 = v46;
  *(v37 + 32) = v47;
  *(v37 + 40) = v38;
  sub_1CF9E6028();

  (*(v11 + 8))(v31, v10);
  v39 = sub_1CEFCCC44(v55, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = &v45;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v42 = (*(v54 + 24))(sub_1CF4C0AC0, v41);
  if (!v5)
  {
    v43 = v42;
    if (![v42 next])
    {
LABEL_12:

      v40 = 0;
      goto LABEL_13;
    }

    v40 = [v43 unsignedLongAtIndex_];

    if ((v40 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

LABEL_13:
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v33, type metadata accessor for Signpost);
  return v40;
}

uint64_t sub_1CF489E34(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA4D870);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  return 0;
}

uint64_t *sub_1CF489FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a1;
  v9 = *v4;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v45 - v19;
  v20 = type metadata accessor for Signpost(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v51 = v4;
  if (*(v4 + 32) != 1)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLSnapshot.swift", 130, 2, 185);
  }

  v48 = v22;
  v49 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  v53 = a3;
  v54 = a4;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  v25 = v55;
  (*(v11 + 56))(v55, 1, 1, v10);
  v56 = 0;
  v57 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v26 = *(v9 + 776);
  v27 = *(v9 + 760);
  swift_getAssociatedTypeWitness();
  v28 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v46 = v57;
  v47 = v56;
  sub_1CEFE74D8(v25, v17);
  v29 = *(v11 + 48);
  if (v29(v17, 1, v10) == 1)
  {
    v30 = v24;
    v31 = v50;
    sub_1CF9E6048();
    v32 = v29(v17, 1, v10);
    v33 = v49;
    if (v32 != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v50;
    (*(v11 + 32))(v50, v17, v10);
    v33 = v49;
  }

  (*(v11 + 16))(v33, v31, v10);
  v34 = v48;
  *(v33 + *(v48 + 20)) = v24;
  v35 = v33 + *(v34 + 24);
  *v35 = "SQLDB: Lookup Effective Content Policy";
  *(v35 + 8) = 38;
  *(v35 + 16) = 2;
  v36 = v24;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA450;
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1CEFD51C4();
  v38 = v46;
  *(v37 + 32) = v47;
  *(v37 + 40) = v38;
  sub_1CF9E6028();

  (*(v11 + 8))(v31, v10);
  v39 = sub_1CEFCCC44(v55, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = &v45;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v42 = (*(v54 + 24))(sub_1CF4C0AB4, v41);
  if (v5)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v33, type metadata accessor for Signpost);
  }

  else
  {
    v43 = v42;
    if ([v42 next])
    {
      v40 = [v43 longAtIndex_];
    }

    else
    {
      v40 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v33, type metadata accessor for Signpost);
  }

  return v40;
}

uint64_t sub_1CF48A59C(uint64_t a1, void *a2)
{
  v4 = *a2;
  sub_1CF9E7948();

  v5 = v4[95];
  v6 = v4[96];
  v7 = v4[97];
  v8 = v4[98];
  v9 = sub_1CF06DA94(0, 0xE000000000000000);
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 32);
  v12 = swift_checkMetadataState();
  v13 = v11(a1, v12, v10);
  MEMORY[0x1D3868CC0](v13);

  return 0x205443454C4553;
}

uint64_t *sub_1CF48A780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v49 = a2;
  v50 = a3;
  v55 = a1;
  v5 = *v4;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBBE40;
  (*(v7 + 56))(v16, 1, 1, v6);
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v20 = *(v5 + 776);
  v21 = *(v5 + 760);
  swift_getAssociatedTypeWitness();
  v22 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v44 = v54;
  v45 = v53;
  v47 = v16;
  sub_1CEFE74D8(v16, v13);
  v23 = *(v7 + 48);
  if (v23(v13, 1, v6) == 1)
  {
    v24 = v43;
    v25 = v43;
    v26 = v48;
    sub_1CF9E6048();
    v27 = v23(v13, 1, v6);
    v28 = v46;
    v29 = v24;
    if (v27 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v26 = v48;
    (*(v7 + 32))(v48, v13, v6);
    v28 = v46;
    v29 = v43;
  }

  (*(v7 + 16))(v28, v26, v6);
  *(v28 + *(v17 + 20)) = v29;
  v30 = v28 + *(v17 + 24);
  *v30 = "SQLDB: Lookup snapshot version";
  *(v30 + 8) = 30;
  *(v30 + 16) = 2;
  v31 = v29;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v44;
  *(v33 + 32) = v45;
  *(v33 + 40) = v34;
  sub_1CF9E6028();

  (*(v7 + 8))(v32, v6);
  v35 = sub_1CEFCCC44(v47, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = &v42;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v38 = v51;
  v39 = (*(v52 + 24))(sub_1CF4C0AA8, v37);
  if (v38)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v28, type metadata accessor for Signpost);
  }

  else
  {
    v40 = v39;
    if ([v39 next])
    {
      v36 = [v40 unsignedLongAtIndex_];
    }

    else
    {
      v36 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v28, type metadata accessor for Signpost);
  }

  return v36;
}

unint64_t sub_1CF48AD4C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  return 0xD00000000000001FLL;
}

uint64_t sub_1CF48AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v48 = a2;
  v49 = a3;
  v54 = a1;
  v5 = *v4;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v45 = type metadata accessor for Signpost(0);
  v17 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v7 + 56))(v16, 1, 1, v6);
  v52 = 0;
  v53 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v20 = *(v5 + 776);
  v21 = *(v5 + 760);
  swift_getAssociatedTypeWitness();
  v22 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v43 = v53;
  v44 = v52;
  v46 = v16;
  sub_1CEFE74D8(v16, v13);
  v23 = *(v7 + 48);
  if (v23(v13, 1, v6) == 1)
  {
    v24 = v42;
    v25 = v42;
    v26 = v47;
    sub_1CF9E6048();
    v27 = v23(v13, 1, v6);
    v28 = v24;
    if (v27 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v26 = v47;
    (*(v7 + 32))(v47, v13, v6);
    v28 = v42;
  }

  (*(v7 + 16))(v19, v26, v6);
  v29 = v45;
  *&v19[*(v45 + 20)] = v28;
  v30 = &v19[*(v29 + 24)];
  *v30 = "SQLDB: [Recursive] Lookup is in pinned folder ";
  *(v30 + 1) = 46;
  v30[16] = 2;
  v31 = v28;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA450;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1CEFD51C4();
  v33 = v43;
  *(v32 + 32) = v44;
  *(v32 + 40) = v33;
  sub_1CF9E6028();

  (*(v7 + 8))(v26, v6);
  v34 = sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v48;
  v37 = v50;
  v38 = (*(v51 + 24))(sub_1CF4C0BF8, v35);
  if (!v37)
  {
    v39 = v38;
    v36 = [v38 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v19, type metadata accessor for Signpost);
  return v36 & 1;
}

uint64_t sub_1CF48B458(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007CLL, 0x80000001CFA4E550);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x5F746E657261702ELL, 0xEC000000202C6469);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA4E5D0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA4E5F0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000009FLL, 0x80000001CFA4E620);
  return 0;
}

uint64_t sub_1CF48B6F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a3;
  v70 = a4;
  v71 = a5;
  LODWORD(v67) = a2;
  v74 = a1;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v58 - v14;
  v61 = type metadata accessor for Signpost(0);
  v15 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ItemMetadata();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v6 + 760);
  v58 = *(v6 + 776);
  v59 = v21;
  v22 = type metadata accessor for SnapshotItem();
  v23 = sub_1CF9E75D8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v58 - v26;
  v28 = *(v22 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  if (v67)
  {
    v67 = v5;
    sub_1CF488624(v74, v70, v71, v27);
    if ((*(v28 + 48))(v27, 1, v22) == 1)
    {
      (*(v24 + 8))(v27, v23);
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDEBBE40;
      v34 = v63;
      v35 = v64;
      v36 = v66;
      (*(v63 + 56))(v66, 1, 1, v64);
      v72 = 0;
      v73 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
      swift_getAssociatedTypeWitness();
      v37 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1CF9E7FE8();
      v58 = v73;
      v59 = v72;
      v38 = v36;
      v39 = v60;
      sub_1CEFE74D8(v38, v60);
      v40 = *(v34 + 48);
      v41 = v40(v39, 1, v35);
      v42 = v65;
      if (v41 == 1)
      {
        v43 = v33;
        v44 = v62;
        sub_1CF9E6048();
        if (v40(v39, 1, v35) != 1)
        {
          sub_1CEFCCC44(v39, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v44 = v62;
        (*(v34 + 32))(v62, v39, v35);
      }

      (*(v34 + 16))(v42, v44, v35);
      v47 = v61;
      *(v42 + *(v61 + 20)) = v33;
      v48 = v42 + *(v47 + 24);
      *v48 = "SQLDB: Lookup is in pinned folder";
      *(v48 + 8) = 33;
      *(v48 + 16) = 2;
      v49 = v33;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1CF9FA450;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1CEFD51C4();
      v51 = v58;
      *(v50 + 32) = v59;
      *(v50 + 40) = v51;
      sub_1CF9E6028();

      (*(v34 + 8))(v44, v35);
      v52 = sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
      v53 = MEMORY[0x1EEE9AC00](v52);
      v54 = v68;
      v5 = v69;
      v55 = (*(v71 + 24))(sub_1CF4C09D4, v53);
      if (v54)
      {
        sub_1CF9E7458();
        sub_1CF9E6038();
        sub_1CF4C0A48(v42, type metadata accessor for Signpost);
      }

      else
      {
        v57 = v55;
        if ([v55 next])
        {
          v5 = [v57 BOOLAtIndex_];

          sub_1CF9E7458();
        }

        else
        {

          sub_1CF9E7458();
          v5 = 2;
        }

        sub_1CF9E6038();
        sub_1CF4C0A48(v42, type metadata accessor for Signpost);
      }
    }

    else
    {
      (*(v28 + 32))(v32, v27, v22);
      sub_1CF4C09E0(&v32[*(v22 + 48)], v20, type metadata accessor for ItemMetadata);
      (*(v28 + 8))(v32, v22);
      v5 = v20[*(v17 + 48)];
      sub_1CF4C0A48(v20, type metadata accessor for ItemMetadata);
    }
  }

  else
  {
    v45 = v68;
    v46 = sub_1CF48AEC8(v74, v69, v70, v71);
    if (!v45)
    {
      return v46 & 1;
    }
  }

  return v5;
}

uint64_t sub_1CF48BF0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4D640);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  return 0;
}

uint64_t sub_1CF48C08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v54 = a2;
  v55 = a3;
  v60 = a1;
  v47 = a5;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v46 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v51 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDEBBE40;
  (*(v8 + 56))(v17, 1, 1, v7);
  v58 = 0;
  v59 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v21 = *(v6 + 776);
  v22 = *(v6 + 760);
  swift_getAssociatedTypeWitness();
  v46[0] = v22;
  v46[1] = v21;
  v23 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v49 = v59;
  v50 = v58;
  v52 = v17;
  sub_1CEFE74D8(v17, v14);
  v24 = *(v8 + 48);
  if (v24(v14, 1, v7) == 1)
  {
    v25 = v48;
    v26 = v48;
    v27 = v53;
    sub_1CF9E6048();
    v28 = v24(v14, 1, v7);
    v29 = v51;
    v30 = v25;
    if (v28 != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v53;
    (*(v8 + 32))(v53, v14, v7);
    v29 = v51;
    v30 = v48;
  }

  (*(v8 + 16))(v29, v27, v7);
  *(v29 + *(v18 + 20)) = v30;
  v31 = v29 + *(v18 + 24);
  *v31 = "SQLDB: Lookup item by ID";
  *(v31 + 8) = 24;
  *(v31 + 16) = 2;
  v32 = v30;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v49;
  *(v33 + 32) = v50;
  *(v33 + 40) = v34;
  sub_1CF9E6028();

  (*(v8 + 8))(v27, v7);
  v35 = sub_1CEFCCC44(v52, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = v56;
  v38 = (*(v57 + 24))(sub_1CF4C0BD0, v36);
  if (!v37)
  {
    v39 = v38;
    v40 = [v38 next];
    v41 = type metadata accessor for SnapshotItem();
    if (v40)
    {
      WitnessTable = swift_getWitnessTable();
      v43 = v47;
      sub_1CF01E03C(v39, 0, v41, WitnessTable, v47);
      v44 = 0;
    }

    else
    {
      v44 = 1;
      v43 = v47;
    }

    (*(*(v41 - 8) + 56))(v43, v44, 1, v41);
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v29, type metadata accessor for Signpost);
}

uint64_t sub_1CF48C684@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v31 = a5;
  v11 = *(*v6 + 760);
  v12 = *(*v6 + 776);
  v13 = type metadata accessor for SnapshotItem();
  v14 = sub_1CF9E75D8();
  v28 = *(v14 - 8);
  v15 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  if ((a2 & 1) == 0)
  {
    v25 = v30;
    result = sub_1CF48C08C(a1, a3, a4, v31, v17);
    if (v25)
    {
      return result;
    }

    v22 = v28;
    return (*(v22 + 32))(v29, v17, v14);
  }

  sub_1CF488624(a1, a4, v31, &v27 - v19);
  v21 = *(v13 - 8);
  if ((*(v21 + 48))(v20, 1, v13) == 1)
  {
    v22 = v28;
    (*(v28 + 8))(v20, v14);
    v23 = v30;
    result = sub_1CF48C08C(a1, a3, a4, v31, v17);
    if (v23)
    {
      return result;
    }

    sub_1CF488190(a1, v17, a3, a4, v31);
    return (*(v22 + 32))(v29, v17, v14);
  }

  v26 = v29;
  (*(v21 + 32))(v29, v20, v13);
  return (*(v21 + 56))(v26, 0, 1, v13);
}

uint64_t sub_1CF48C914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v82 = a2;
  v84 = a1;
  v69 = a6;
  v7 = *(*v6 + 760);
  v8 = *(*v6 + 776);
  v9 = type metadata accessor for SnapshotItem();
  v10 = sub_1CF9E75D8();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v64 - v12;
  v71 = v9;
  v70 = *(v9 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v64 - v15;
  v16 = sub_1CF9E6068();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = type metadata accessor for Signpost(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v83 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDEBBE40;
  (*(v17 + 56))(v26, 1, 1, v16);
  v85 = 0;
  v86 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  swift_getAssociatedTypeWitness();
  v30 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x3A73726576626420, 0xE800000000000000);
  v87 = v82;
  v31 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v31);

  v72 = v86;
  v73 = v85;
  v75 = v26;
  sub_1CEFE74D8(v26, v23);
  v32 = *(v17 + 48);
  if (v32(v23, 1, v16) == 1)
  {
    v33 = v74;
    v34 = v74;
    v35 = v76;
    sub_1CF9E6048();
    if (v32(v23, 1, v16) != 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v35 = v76;
    (*(v17 + 32))(v76, v23, v16);
    v33 = v74;
  }

  v36 = v83;
  (*(v17 + 16))(v83, v35, v16);
  *&v36[*(v27 + 20)] = v33;
  v37 = &v36[*(v27 + 24)];
  *v37 = "SQLDB: Lookup item by ID";
  *(v37 + 1) = 24;
  v37[16] = 2;
  v38 = v33;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CF9FA450;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1CEFD51C4();
  v40 = v72;
  *(v39 + 32) = v73;
  *(v39 + 40) = v40;
  v63 = v39;
  LOBYTE(v62) = 2;
  v61 = 2;
  v76 = v38;
  sub_1CF9E6028();

  (*(v17 + 8))(v35, v16);
  v41 = sub_1CEFCCC44(v75, &unk_1EC4BED20, &unk_1CFA00700);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = v79;
  v43 = v80;
  *(&v64 - 6) = v79;
  *(&v64 - 5) = v43;
  v61 = v81;
  v62 = v84;
  v63 = v82;
  v45 = v77;
  v46 = v78;
  v47 = (*(v43 + 24))(sub_1CF4C09A4, v42);
  if (!v45)
  {
    v48 = v47;
    if ([v47 next])
    {
      v49 = v71;
      WitnessTable = swift_getWitnessTable();
      v51 = v68;
      sub_1CF01E03C(v48, 0, v49, WitnessTable, v68);
      v52 = v70;
      v53 = v51;
      v54 = v65;
      (*(v70 + 16))(v65, v53, v49);
      v55 = v52;
      v56 = v46;
      v57 = *(v55 + 56);
      v82 = v55 + 56;
      v57(v54, 0, 1, v49);
      sub_1CF488190(v84, v54, v56, v44, v43);

      (*(v66 + 8))(v54, v67);
      v58 = v69;
      (*(v70 + 32))(v69, v68, v49);
      v57(v58, 0, 1, v49);
    }

    else
    {
      (*(v70 + 56))(v69, 1, 1, v71);
    }
  }

  sub_1CF9E7458();
  v59 = v83;
  sub_1CF9E6038();
  return sub_1CF4C0A48(v59, type metadata accessor for Signpost);
}

uint64_t sub_1CF48D120(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v8 = *(v7 + 776);
  v9 = *(v7 + 760);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 32);
  v12 = swift_checkMetadataState();
  v13 = v11(a1, v12, v10);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4D5F0);
  v14 = [a1 bindUnsignedLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  return 0;
}

uint64_t sub_1CF48D33C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a5;
  v7 = v6;
  v79 = a3;
  v80 = a4;
  v85 = a1;
  v78 = v7;
  v9 = *v7;
  v83 = a6;
  v84 = v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v77 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v70 - v19;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v88 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a2;
  v25 = a2[1];
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v73 = qword_1EDEBBE40;
  (*(v11 + 56))(v20, 1, 1, v10);
  v86 = 0;
  v87 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2070756B6F6F6CLL, 0xE700000000000000);
  v75 = v25;
  v76 = v24;
  v26 = sub_1CF9E6888();
  v27 = [v26 fp_obfuscatedFilename];

  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;

  MEMORY[0x1D3868CC0](v28, v30);

  MEMORY[0x1D3868CC0](544106784, 0xE400000000000000);
  v31 = *(v84 + 776);
  v32 = *(v84 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(swift_getAssociatedConformanceWitness() + 16);
  v70[1] = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v71 = v87;
  v72 = v86;
  v74 = v20;
  sub_1CEFE74D8(v20, v17);
  v35 = *(v11 + 48);
  v36 = v35(v17, 1, v10);
  v70[2] = v31;
  if (v36 == 1)
  {
    v37 = v73;
    v38 = v73;
    v39 = v77;
    sub_1CF9E6048();
    v40 = v35(v17, 1, v10);
    v41 = v39;
    v42 = v37;
    if (v40 != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v41 = v77;
    (*(v11 + 32))(v77, v17, v10);
    v42 = v73;
  }

  v43 = v88;
  (*(v11 + 16))(v88, v41, v10);
  *&v43[*(v21 + 20)] = v42;
  v44 = &v43[*(v21 + 24)];
  *v44 = "SQLDB: Lookup item by parent ID and name";
  *(v44 + 1) = 40;
  v44[16] = 2;
  v45 = v42;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1CF9FA450;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1CEFD51C4();
  v47 = v71;
  *(v46 + 32) = v72;
  *(v46 + 40) = v47;
  v68 = v46;
  LOBYTE(v67) = 2;
  v66 = 2;
  v77 = v45;
  sub_1CF9E6028();

  (*(v11 + 8))(v41, v10);
  v48 = sub_1CEFCCC44(v74, &unk_1EC4BED20, &unk_1CFA00700);
  v49 = v78;
  v50 = (*(*v78[2] + 112))(v48);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v52 = v83;
  v70[-8] = v82;
  v70[-7] = v52;
  v53 = v85;
  v70[-6] = v49;
  v70[-5] = v53;
  v66 = v76;
  v67 = v75;
  LOBYTE(v68) = v54 & 1;
  v69 = v79;
  v55 = v81;
  v56 = (*(v52 + 24))(sub_1CF4C0900, v51);
  if (v55)
  {
    sub_1CF9E7458();
    v57 = v88;
    sub_1CF9E6038();
    sub_1CF4C0A48(v57, type metadata accessor for Signpost);
  }

  else
  {
    v58 = v56;
    v46 = sub_1CF9E6DA8();
    v86 = v46;
    v59 = [v58 next];
    v60 = v84;
    if (v59)
    {
      do
      {
        v61 = objc_autoreleasePoolPush();
        v62 = *(v60 + 768);
        v63 = *(v60 + 784);
        sub_1CF4BDB18(&v86, v58);
        objc_autoreleasePoolPop(v61);
      }

      while (([v58 next] & 1) != 0);
      v46 = v86;
    }

    sub_1CF9E7458();
    v64 = v88;
    sub_1CF9E6038();
    sub_1CF4C0A48(v64, type metadata accessor for Signpost);
  }

  return v46;
}

uint64_t sub_1CF48DA3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a8;
  v36 = a7;
  v33 = a6;
  v32 = a4;
  v34 = *a2;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1CF9E7948();
  v41 = 0;
  v42 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  v12 = v34[97];
  v13 = v34[95];
  swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 32);
  v16 = swift_checkMetadataState();
  v17 = v15(a1, v16, v14);
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4D5B0);
  if (a5)
  {

    v18 = MEMORY[0x1E69E6158];
    v19 = v32;
  }

  else
  {

    v19 = 0;
    v18 = 0;
    v39 = 0;
  }

  v37 = v19;
  v38 = a5;
  v40 = v18;
  v20 = sub_1CEFF8EA0(&v37);
  v22 = v21;
  sub_1CEFCCC44(&v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v22)
  {
    MEMORY[0x1D3868CC0](v20, v22);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    if (v33)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0x204554414C4C4F43;
    }

    if (v33)
    {
      v24 = 0xE000000000000000;
    }

    else
    {
      v24 = 0xEE00455341434F4ELL;
    }

    MEMORY[0x1D3868CC0](v23, v24);

    v25 = MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4D5D0);
    MEMORY[0x1EEE9AC00](v25);
    v26 = v34[96];
    v31[2] = v13;
    v31[3] = v26;
    v31[4] = v35;
    v31[5] = v12;
    v31[6] = v34[98];
    v31[7] = a9;
    v31[8] = a1;
    sub_1CF9E75D8();
    sub_1CF06E1CC(sub_1CF4C0938, v31, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v27, &v37);
    if (v38)
    {
      v28 = v37;
    }

    else
    {
      v28 = 0;
    }

    if (v38)
    {
      v29 = v38;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    MEMORY[0x1D3868CC0](v28, v29);

    return v41;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF48DE0C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = *(v4 + 32);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, v4);
  MEMORY[0x1D3868CC0](v7);

  *a2 = 0x2120646920444E41;
  a2[1] = v9;
  return result;
}

void sub_1CF48DF18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a3;
  v72 = a4;
  v70 = a2;
  v68 = a1;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v105 = &v63 - v17;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v69 = v5;
  if (*(v5 + 32) == 1)
  {
    v63 = v20;
    v65 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v6;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDEBBE40;
    v23 = v105;
    (*(v9 + 56))(v105, 1, 1, v8);
    sub_1CEFE74D8(v23, v15);
    v24 = *(v9 + 48);
    v25 = v24(v15, 1, v8);
    v26 = v67;
    v64 = v22;
    if (v25 == 1)
    {
      v27 = v22;
      sub_1CF9E6048();
      v28 = v8;
      if (v24(v15, 1, v8) != 1)
      {
        sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v9 + 32))(v67, v15, v8);
      v28 = v8;
    }

    v36 = v65;
    (*(v9 + 16))(v65, v26, v28);
    v37 = v63;
    v38 = v64;
    *(v36 + *(v63 + 20)) = v64;
    v39 = v36 + *(v37 + 24);
    *v39 = "SQLDB: Lookup item non syncable attributes";
    *(v39 + 8) = 42;
    *(v39 + 16) = 2;
    v40 = v38;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v9 + 8))(v26, v28);
    v41 = sub_1CEFCCC44(v105, &unk_1EC4BED20, &unk_1CFA00700);
    v42 = MEMORY[0x1EEE9AC00](v41);
    v43 = v72;
    *(&v63 - 4) = v71;
    *(&v63 - 3) = v43;
    v44 = v68;
    *(&v63 - 2) = v69;
    *(&v63 - 1) = v44;
    v45 = v66;
    v46 = (*(v43 + 24))(sub_1CF4C08D8, v42);
    if (!v45)
    {
      v47 = v46;
      if ([v46 next])
      {
        v48 = sub_1CEFF12E8();
        sub_1CEFF14E0(v47, v48, 0, &v89);

        v85 = v101;
        v86 = v102;
        v87 = v103;
        v88 = v104;
        v81 = v97;
        v82 = v98;
        v83 = v99;
        v84 = v100;
        v77 = v93;
        v78 = v94;
        v79 = v95;
        v80 = v96;
        v73 = v89;
        v74 = v90;
        v75 = v91;
        v76 = v92;
        nullsub_1(&v73);
        v55 = v86;
        *(a5 + 192) = v85;
        *(a5 + 208) = v55;
        *(a5 + 224) = v87;
        *(a5 + 240) = v88;
        v56 = v82;
        *(a5 + 128) = v81;
        *(a5 + 144) = v56;
        v57 = v84;
        *(a5 + 160) = v83;
        *(a5 + 176) = v57;
        v58 = v78;
        *(a5 + 64) = v77;
        *(a5 + 80) = v58;
        v59 = v80;
        *(a5 + 96) = v79;
        *(a5 + 112) = v59;
        v60 = v74;
        *a5 = v73;
        *(a5 + 16) = v60;
        v61 = v75;
        v62 = v76;
      }

      else
      {

        sub_1CEFE528C(&v89);
        v49 = v102;
        *(a5 + 192) = v101;
        *(a5 + 208) = v49;
        *(a5 + 224) = v103;
        *(a5 + 240) = v104;
        v50 = v98;
        *(a5 + 128) = v97;
        *(a5 + 144) = v50;
        v51 = v100;
        *(a5 + 160) = v99;
        *(a5 + 176) = v51;
        v52 = v94;
        *(a5 + 64) = v93;
        *(a5 + 80) = v52;
        v53 = v96;
        *(a5 + 96) = v95;
        *(a5 + 112) = v53;
        v54 = v90;
        *a5 = v89;
        *(a5 + 16) = v54;
        v61 = v91;
        v62 = v92;
      }

      *(a5 + 32) = v61;
      *(a5 + 48) = v62;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v36, type metadata accessor for Signpost);
  }

  else
  {
    sub_1CEFE528C(&v89);
    v29 = v102;
    *(a5 + 192) = v101;
    *(a5 + 208) = v29;
    *(a5 + 224) = v103;
    *(a5 + 240) = v104;
    v30 = v98;
    *(a5 + 128) = v97;
    *(a5 + 144) = v30;
    v31 = v100;
    *(a5 + 160) = v99;
    *(a5 + 176) = v31;
    v32 = v94;
    *(a5 + 64) = v93;
    *(a5 + 80) = v32;
    v33 = v96;
    *(a5 + 96) = v95;
    *(a5 + 112) = v33;
    v34 = v90;
    *a5 = v89;
    *(a5 + 16) = v34;
    v35 = v92;
    *(a5 + 32) = v91;
    *(a5 + 48) = v35;
  }
}

uint64_t sub_1CF48E4DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *a2;
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + *a6), *(a2 + *a6 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v10 = *(v9 + 776);
  v11 = *(v9 + 760);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 32);
  v14 = swift_checkMetadataState();
  v15 = v13(a1, v14, v12);
  MEMORY[0x1D3868CC0](v15);

  return 0x205443454C4553;
}

uint64_t sub_1CF48E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a3;
  v82 = a4;
  v80 = a2;
  v88 = a1;
  v5 = *(*v4 + 776);
  v6 = *(*v4 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v8 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v78 = &v72 - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v83 = v4;
  v84 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[32] != 1)
  {
    return 0;
  }

  v77 = AssociatedTypeWitness;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v11 + 56))(v20, 1, 1, v10);
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x692070756B6F6F6CLL, 0xEE002044496D6574);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 16);
  sub_1CF9E7FE8();
  v73 = v87;
  v74 = v86;
  v75 = v20;
  sub_1CEFE74D8(v20, v17);
  v27 = *(v11 + 48);
  v28 = v27(v17, 1, v10);
  v72 = AssociatedConformanceWitness;
  if (v28 == 1)
  {
    v29 = v24;
    v30 = v24;
    v31 = v79;
    sub_1CF9E6048();
    if (v27(v17, 1, v10) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v29 = v24;
    v31 = v79;
    (*(v11 + 32))(v79, v17, v10);
  }

  v33 = v84;
  (*(v11 + 16))(v84, v31, v10);
  *&v33[*(v21 + 20)] = v29;
  v34 = &v33[*(v21 + 24)];
  *v34 = "SQLDB: Build Hierarichal User Info";
  *(v34 + 1) = 34;
  v34[16] = 2;
  v35 = v29;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1CEFD51C4();
  v37 = v73;
  *(v36 + 32) = v74;
  *(v36 + 40) = v37;
  sub_1CF9E6028();

  (*(v11 + 8))(v31, v10);
  v38 = sub_1CEFCCC44(v75, &unk_1EC4BED20, &unk_1CFA00700);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v40 = v85;
  v41 = (*(v82 + 24))(sub_1CF4C0DAC, v39);
  if (v40)
  {
    sub_1CF9E7458();
    v42 = v84;
    sub_1CF9E6038();
    return sub_1CF4C0A48(v42, type metadata accessor for Signpost);
  }

  v43 = v41;
  if ([v41 next])
  {
    if (([v43 isNullAtIndex_] & 1) == 0)
    {
      sub_1CEFE7794(0);
      v48 = objc_allocWithZone(MEMORY[0x1E69674A8]);
      v49 = sub_1CF9E6D28();
      v50 = sub_1CF9E6D28();
      v46 = [v48 initWithKeys:v49 values:v50];

      goto LABEL_17;
    }

    if ([v43 isNullAtIndex_])
    {
      v85 = v35;
      v44 = 0;
      v79 = 0;
      v45 = v78;
    }

    else
    {
      v51 = sub_1CEFE7794(1);
      v45 = v78;
      v44 = v51;
      v79 = v52;
      v85 = v35;
    }

    v53 = v72;
    v54 = *(*(v72 + 8) + 16);
    v55 = v43;
    v54();
    v56 = *(*(v53 + 40) + 8);
    if (sub_1CF9E6868())
    {
      if (v44)
      {
        v57 = objc_allocWithZone(MEMORY[0x1E69674A8]);
        v58 = sub_1CF9E6D28();
        v59 = sub_1CF9E6D28();
        v60 = [v57 initWithKeys:v58 values:v59];
      }

      else
      {
        v60 = 0;
      }

      v46 = [objc_opt_self() mergeWithUserInfo:v60 intoParentUserInfo:0];

      (*(v76 + 8))(v45, v77);
      goto LABEL_17;
    }

    v61 = sub_1CF48E688(v45, v80, v81, v82);
    v62 = v55;
    v63 = v61;
    v64 = v85;
    if (v61)
    {
      if (v44)
      {
        v65 = objc_allocWithZone(MEMORY[0x1E69674A8]);
        v66 = v63;
        v67 = sub_1CF9E6D28();
        v85 = v64;
        v68 = v67;
        v69 = sub_1CF9E6D28();
        v70 = [v65 initWithKeys:v68 values:v69];

        v62 = v55;
        v45 = v78;
      }

      else
      {
        v71 = v61;
        v70 = 0;
      }

      v46 = [objc_opt_self() mergeWithUserInfo:v70 intoParentUserInfo:v63];

      (*(v76 + 8))(v45, v77);
      goto LABEL_17;
    }

    (*(v76 + 8))(v45, v77);

    sub_1CF24CCFC(v44);
  }

  else
  {
  }

  v46 = 0;
LABEL_17:
  sub_1CF9E7458();
  v47 = v84;
  sub_1CF9E6038();
  sub_1CF4C0A48(v47, type metadata accessor for Signpost);
  return v46;
}

uint64_t sub_1CF48F0A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v83 = a3;
  v84 = a4;
  v82 = a2;
  v89 = a1;
  v5 = *(*v4 + 776);
  v6 = *(*v4 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  v8 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v73 - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v4;
  if (v4[32] != 1)
  {
    return 0;
  }

  v78 = AssociatedTypeWitness;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v11 + 56))(v20, 1, 1, v10);
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x692070756B6F6F6CLL, 0xEE002044496D6574);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(AssociatedConformanceWitness + 16);
  sub_1CF9E7FE8();
  v75 = v88;
  v76 = v87;
  sub_1CEFE74D8(v20, v17);
  v26 = *(v11 + 48);
  if (v26(v17, 1, v10) == 1)
  {
    v27 = v24;
    v28 = v80;
    sub_1CF9E6048();
    v29 = v28;
    if (v26(v17, 1, v10) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v29 = v80;
    (*(v11 + 32))(v80, v17, v10);
  }

  v31 = v85;
  (*(v11 + 16))(v85, v29, v10);
  *&v31[*(v21 + 20)] = v24;
  v32 = &v31[*(v21 + 24)];
  *v32 = "SQLDB: Build and Cache Hierarichal User Info";
  *(v32 + 1) = 44;
  v32[16] = 2;
  v33 = v24;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CF9FA450;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1CEFD51C4();
  v35 = v75;
  *(v34 + 32) = v76;
  *(v34 + 40) = v35;
  v71 = v34;
  LOBYTE(v70) = 2;
  v69 = 2;
  sub_1CF9E6028();

  (*(v11 + 8))(v29, v10);
  v36 = sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v69 = v83;
  v70 = v84;
  v71 = v81;
  v72 = v89;
  v38 = v86;
  v39 = (*(v84[1] + 24))(sub_1CF4C08A8, v37);
  if (v38)
  {
    sub_1CF9E7458();
    v40 = v85;
    sub_1CF9E6038();
    return sub_1CF4C0A48(v40, type metadata accessor for Signpost);
  }

  v41 = v39;
  if ([v39 next])
  {
    if (([v41 isNullAtIndex_] & 1) == 0)
    {
      sub_1CEFE7794(0);
      v46 = objc_allocWithZone(MEMORY[0x1E69674A8]);
      v47 = sub_1CF9E6D28();
      v48 = sub_1CF9E6D28();
      v44 = [v46 initWithKeys:v47 values:v48];

      goto LABEL_17;
    }

    if ([v41 isNullAtIndex_])
    {
      v86 = 0;
      v80 = 0;
      v42 = v79;
      v43 = AssociatedConformanceWitness;
    }

    else
    {
      v49 = sub_1CEFE7794(1);
      v42 = v79;
      v43 = AssociatedConformanceWitness;
      v80 = v50;
      v86 = v49;
    }

    v51 = *(*(v43 + 8) + 16);
    v52 = v41;
    v51();
    v53 = *(*(v43 + 40) + 8);
    v54 = v89;
    if (sub_1CF9E6868())
    {
      if (v86)
      {
        v55 = objc_allocWithZone(MEMORY[0x1E69674A8]);
        v56 = sub_1CF9E6D28();
        v57 = sub_1CF9E6D28();
        v58 = [v55 initWithKeys:v56 values:v57];
      }

      else
      {
        v58 = 0;
      }

      v44 = [objc_opt_self() mergeWithUserInfo:v58 intoParentUserInfo:0];

      (*(v77 + 8))(v42, v78);
      goto LABEL_17;
    }

    v59 = sub_1CF48F0A4(v42, v82, v83, v84);
    v60 = v59;
    if (v59)
    {
      v76 = v33;
      if (v86)
      {
        v61 = objc_allocWithZone(MEMORY[0x1E69674A8]);
        v62 = sub_1CF9E6D28();
        v63 = sub_1CF9E6D28();
        v64 = [v61 initWithKeys:v62 values:v63];

        v54 = v89;
      }

      else
      {
        v64 = 0;
      }

      v65 = [objc_opt_self() mergeWithUserInfo:v64 intoParentUserInfo:v60];

      v67 = MEMORY[0x1EEE9AC00](v66);
      v68 = v84;
      *(&v73 - 6) = v83;
      *(&v73 - 5) = v68;
      v69 = v81;
      v70 = v65;
      v71 = v54;
      (v68[4])(sub_1CF4C08C8, v67);
      v44 = v65;
      (*(v77 + 8))(v79, v78);

      goto LABEL_17;
    }

    (*(v77 + 8))(v42, v78);

    sub_1CF24CCFC(v86);
  }

  else
  {
  }

  v44 = 0;
LABEL_17:
  sub_1CF9E7458();
  v45 = v85;
  sub_1CF9E6038();
  sub_1CF4C0A48(v45, type metadata accessor for Signpost);
  return v44;
}

uint64_t sub_1CF48FB50(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004ELL, 0x80000001CFA4D4E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D530);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  return 0;
}

uint64_t sub_1CF48FD28(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4D4B0);
  v7 = [a3 keys];
  v8 = sub_1CF9E6D48();

  v9 = [a3 values];
  v10 = sub_1CF9E6D48();

  v11 = sub_1CF075B2C(v8, v10);
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v14 = *(v6 + 776);
  v15 = *(v6 + 760);
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 32);
  v18 = swift_checkMetadataState();
  v19 = v17(a1, v18, v16);
  MEMORY[0x1D3868CC0](v19);

  return 0;
}

uint64_t sub_1CF48FF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a2;
  v76 = a3;
  v77 = a4;
  v80 = a1;
  v72 = a5;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v60 - v14;
  v66 = type metadata accessor for Signpost(0);
  v15 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v71 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 760);
  v18 = *(v6 + 776);
  v19 = type metadata accessor for SnapshotItem();
  v20 = sub_1CF9E75D8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v25 = *(v19 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v60 - v28;
  v70 = v5;
  sub_1CF488624(v80, v76, v77, v24);
  if ((*(v25 + 48))(v24, 1, v19) == 1)
  {
    (*(v21 + 8))(v24, v20);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v30 = qword_1EDEBBE40;
    v32 = v68;
    v31 = v69;
    v33 = v73;
    (*(v68 + 56))(v73, 1, 1, v69);
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4D440);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v62 = AssociatedTypeWitness;
    v35 = *(AssociatedConformanceWitness + 16);
    sub_1CF9E7FE8();
    v63 = v79;
    v64 = v78;
    v36 = v65;
    sub_1CEFE74D8(v33, v65);
    v37 = *(v32 + 48);
    v38 = v37(v36, 1, v31);
    v39 = v71;
    v40 = v67;
    if (v38 == 1)
    {
      v41 = v30;
      sub_1CF9E6048();
      if (v37(v36, 1, v31) != 1)
      {
        sub_1CEFCCC44(v36, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v32 + 32))(v67, v36, v31);
    }

    (*(v32 + 16))(v39, v40, v31);
    v48 = v66;
    *(v39 + *(v66 + 20)) = v30;
    v49 = v39 + *(v48 + 24);
    *v49 = "SQLDB: Lookup parent ID";
    *(v49 + 8) = 23;
    *(v49 + 16) = 2;
    v50 = v30;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1CF9FA450;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1CEFD51C4();
    v52 = v63;
    *(v51 + 32) = v64;
    *(v51 + 40) = v52;
    sub_1CF9E6028();

    (*(v32 + 8))(v40, v31);
    v53 = sub_1CEFCCC44(v73, &unk_1EC4BED20, &unk_1CFA00700);
    v54 = MEMORY[0x1EEE9AC00](v53);
    v55 = v74;
    v56 = (*(v77 + 24))(sub_1CF4C089C, v54);
    if (!v55)
    {
      v57 = v56;
      if ([v56 next])
      {
        v58 = v62;
        v59 = v72;
        (*(*(AssociatedConformanceWitness + 8) + 16))(v57, 0, v62);
        (*(*(v58 - 8) + 56))(v59, 0, 1, v58);
      }

      else
      {
        (*(*(v62 - 8) + 56))(v72, 1, 1);
      }
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF4C0A48(v39, type metadata accessor for Signpost);
  }

  else
  {
    (*(v25 + 32))(v29, v24, v19);
    v42 = *(v19 + 36);
    v43 = swift_getAssociatedTypeWitness();
    v44 = *(v43 - 8);
    v45 = &v29[v42];
    v46 = v72;
    (*(v44 + 16))(v72, v45, v43);
    (*(v25 + 8))(v29, v19);
    return (*(v44 + 56))(v46, 0, 1, v43);
  }
}

unint64_t sub_1CF490848(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  return 0xD000000000000018;
}

uint64_t sub_1CF4909C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = sub_1CF9E6068();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v51 - v17;
  v54 = type metadata accessor for Signpost(0);
  v18 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v9 + 760);
  v51 = *(v9 + 776);
  v52 = v20;
  v21 = type metadata accessor for SnapshotItem();
  v22 = sub_1CF9E75D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v51 - v25;
  v64 = a1;
  v59 = a2;
  v61 = a3;
  v62 = a4;
  v56 = v4;
  sub_1CF488624(a1, a3, a4, &v51 - v25);
  v27 = 1;
  LODWORD(v21) = (*(*(v21 - 8) + 48))(v26, 1, v21);
  (*(v23 + 8))(v26, v22);
  if (v21 == 1)
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDEBBE40;
    v30 = v57;
    v29 = v58;
    v31 = v63;
    (*(v57 + 56))(v63, 1, 1, v58);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x736E6961746E6F63, 0xEE00206D65746920);
    swift_getAssociatedTypeWitness();
    v32 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1CF9E7FE8();
    v51 = v66;
    v52 = v65;
    v33 = v31;
    v34 = v53;
    sub_1CEFE74D8(v33, v53);
    v35 = *(v30 + 48);
    v36 = v35(v34, 1, v29);
    v37 = v60;
    if (v36 == 1)
    {
      v38 = v28;
      v39 = v55;
      sub_1CF9E6048();
      if (v35(v34, 1, v29) != 1)
      {
        sub_1CEFCCC44(v34, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v39 = v55;
      (*(v30 + 32))(v55, v34, v29);
    }

    (*(v30 + 16))(v37, v39, v29);
    v40 = v54;
    *(v37 + *(v54 + 20)) = v28;
    v41 = v37 + *(v40 + 24);
    *v41 = "SQLDB: Check item with ID";
    *(v41 + 8) = 25;
    *(v41 + 16) = 2;
    v42 = v28;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1CF9FA450;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1CEFD51C4();
    v44 = v51;
    *(v43 + 32) = v52;
    *(v43 + 40) = v44;
    sub_1CF9E6028();

    (*(v30 + 8))(v39, v29);
    v45 = sub_1CEFCCC44(v63, &unk_1EC4BED20, &unk_1CFA00700);
    v46 = MEMORY[0x1EEE9AC00](v45);
    v27 = v59;
    v47 = v67;
    v48 = (*(v62 + 24))(sub_1CF4C0890, v46);
    if (!v47)
    {
      v49 = v48;
      v27 = [v48 next];
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v37, type metadata accessor for Signpost);
  }

  return v27 & 1;
}

unint64_t sub_1CF491094(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0xD000000000000011;
}

uint64_t sub_1CF491230(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), void (**a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v59 = a5;
  v60 = v5;
  v62 = a3;
  v63 = a4;
  v56 = *v8;
  v57 = a1;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v58 = type metadata accessor for Signpost(0);
  v22 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v11 + 56))(v21, 1, 1, v10);
  v55 = v21;
  sub_1CEFE74D8(v21, v18);
  v25 = *(v11 + 48);
  if (v25(v18, 1, v10) == 1)
  {
    v26 = v24;
    sub_1CF9E6048();
    v27 = v25(v18, 1, v10);
    v28 = v14;
    if (v27 != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v28 = v14;
    (*(v11 + 32))(v14, v18, v10);
  }

  v29 = v61;
  (*(v11 + 16))(v61, v28, v10);
  v30 = v58;
  *(v29 + *(v58 + 20)) = v24;
  v31 = v29 + *(v30 + 24);
  *v31 = "SQLDB: Check hierarchy size";
  *(v31 + 8) = 27;
  *(v31 + 16) = 2;
  v32 = v24;
  v33 = v28;
  v34 = v32;
  sub_1CF9E7468();
  v58 = v34;
  sub_1CF9E6038();
  (*(v11 + 8))(v33, v10);
  sub_1CEFCCC44(v55, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v56 + 776);
  v36 = *(v56 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_1CF656CD8(AssociatedTypeWitness, AssociatedTypeWitness);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = *(AssociatedTypeWitness - 8);
  v42 = *(v41 + 72);
  v43 = *(v41 + 80);
  swift_allocObject();
  v44 = sub_1CF9E6D68();
  (*(v41 + 16))(v45, v57, AssociatedTypeWitness);
  v46 = sub_1CF045898(v44);
  if (sub_1CF9E6DF8())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v48 = sub_1CF981D64(v46, AssociatedTypeWitness, *(AssociatedConformanceWitness + 40));
  }

  else
  {

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v48 = MEMORY[0x1E69E7CD0];
  }

  v50 = v59;
  v49 = v60;
  v67 = v48;
  v66 = 1;
  v51 = *(AssociatedConformanceWitness + 40);
  while (1)
  {
    if (sub_1CF9E7028())
    {

      v52 = v66;
LABEL_18:
      LOBYTE(a2) = v52 < a2;
      goto LABEL_19;
    }

    v52 = v66;
    if (v66 >= a2)
    {

      goto LABEL_18;
    }

    v53 = objc_autoreleasePoolPush();
    sub_1CF491850(&v67, v49, v62, &v66, a2, v63, v50, &v64, &v65);
    if (v7)
    {
      break;
    }

    v7 = 0;
    objc_autoreleasePoolPop(v53);
    if ((v65 & 1) == 0)
    {

      LOBYTE(a2) = 0;
LABEL_19:
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v29, type metadata accessor for Signpost);
      return a2 & 1;
    }
  }

  objc_autoreleasePoolPop(v53);

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v29, type metadata accessor for Signpost);
  return a2 & 1;
}

uint64_t sub_1CF491850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void (**a6)(char *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v28 = a8;
  v29 = a9;
  v10 = v9;
  v33 = a7;
  v17 = *a2;
  v32 = *(*a2 + 776);
  v30 = *(v17 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v19 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v27 - v20;
  v22 = *(swift_getAssociatedConformanceWitness() + 40);
  v32 = AssociatedTypeWitness;
  sub_1CF9E7068();
  sub_1CF9E6FB8();
  v35 = 0;
  v36 = 0;
  while (1)
  {
    v23 = objc_autoreleasePoolPush();
    sub_1CF491A84(a2, v21, &v35, a3, a4, a5, a1, a6, &v37, v33, &v34);
    if (v10)
    {
      v25 = v34;
      objc_autoreleasePoolPop(v23);
      *v28 = v25;
      return (*(v31 + 8))(v21, v32);
    }

    v10 = 0;
    objc_autoreleasePoolPop(v23);
    if ((v37 & 1) == 0)
    {
      break;
    }

    if (v36)
    {
      v24 = 1;
      goto LABEL_8;
    }
  }

  v24 = 0;
LABEL_8:
  *v29 = v24;
  return (*(v31 + 8))(v21, v32);
}

uint64_t sub_1CF491A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, char *, uint64_t)@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(char *, uint64_t, uint64_t)@<X7>, _BYTE *a9@<X8>, uint64_t a10, void *a11)
{
  v85 = a8;
  v72 = a7;
  v74 = a6;
  v79 = a5;
  v81 = a2;
  v82 = a4;
  v69 = a9;
  v12 = *(*a1 + 776);
  v13 = *(*a1 + 760);
  v80 = a10;
  v78 = v12;
  v76 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  v15 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v71 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v68 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = sub_1CF9E75D8();
  v73 = *(v23 - 8);
  v24 = *(v73 + 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v68 - v28;
  v30 = a3;
  v31 = v86;
  result = sub_1CF4933C8(v81, *a3, *(a3 + 8), v82, v85, v80);
  if (v31)
  {
    *a11 = v31;
    return result;
  }

  v35 = result;
  v36 = v73;
  v80 = v29;
  v81 = v23;
  v86 = v26;
  v75 = TupleTypeMetadata2;
  *v30 = v33;
  *(v30 + 8) = v34 & 1;
  v70 = *(swift_getAssociatedConformanceWitness() + 40);
  result = sub_1CF9E6698();
  v37 = *v79 + result;
  if (__OFADD__(*v79, result))
  {
    goto LABEL_27;
  }

  *v79 = v37;
  if (v37 >= v74)
  {

    *v69 = 0;
    return result;
  }

  v68 = 0;
  v38 = 0;
  v74 = v35;
  v39 = v35 + 64;
  v40 = 1 << *(v35 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v35 + 64);
  v43 = (v40 + 63) >> 6;
  v44 = v75;
  v82 = (v77 + 16);
  v83 = AssociatedTypeWitness;
  v85 = (v77 + 32);
  v78 = (v36 + 32);
  v79 = (v75 - 8);
  v76 = (v77 + 8);
  v73 = v19;
  v45 = v86;
  if (!v42)
  {
LABEL_9:
    if (v43 <= v38 + 1)
    {
      v48 = v38 + 1;
    }

    else
    {
      v48 = v43;
    }

    v49 = v48 - 1;
    v47 = v84;
    while (1)
    {
      v46 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v46 >= v43)
      {
        v42 = 0;
        v60 = 1;
        v56 = v83;
        goto LABEL_17;
      }

      v42 = *(v39 + 8 * v46);
      ++v38;
      if (v42)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  while (1)
  {
    v46 = v38;
    v47 = v84;
LABEL_16:
    v50 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v51 = v50 | (v46 << 6);
    v52 = v74;
    v53 = v77;
    v54 = v47;
    v55 = v47;
    v56 = v83;
    (*(v77 + 16))(v55, *(v74 + 48) + *(v77 + 72) * v51, v83);
    LOBYTE(v51) = *(*(v52 + 56) + v51);
    v57 = *(v75 + 48);
    v58 = *(v53 + 32);
    v45 = v86;
    v59 = v54;
    v44 = v75;
    v58(v86, v59, v56);
    v60 = 0;
    v45[v57] = v51;
    v49 = v46;
    v19 = v73;
LABEL_17:
    v61 = *(v44 - 8);
    (*(v61 + 56))(v45, v60, 1, v44);
    v62 = v80;
    (*v78)(v80);
    if ((*(v61 + 48))(v62, 1, v44) == 1)
    {
      break;
    }

    v63 = *(v62 + *(v44 + 48));
    (*v85)(v19, v62, v56);
    if (v63 == 1)
    {
      (*v82)(v71, v19, v56);
      sub_1CF9E7068();
      v64 = v84;
      sub_1CF9E6FF8();
      v65 = *v76;
      v66 = v64;
      v67 = v83;
      (*v76)(v66, v83);
      result = v65(v19, v67);
    }

    else
    {
      result = (*v76)(v19, v56);
    }

    v38 = v49;
    v45 = v86;
    if (!v42)
    {
      goto LABEL_9;
    }
  }

  *v69 = 1;
  return result;
}

uint64_t sub_1CF4920A0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4E4D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4E500);
  return 0;
}

uint64_t sub_1CF492238(void *a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v49 = a4;
  v70 = a3;
  v57 = a2;
  v61 = a1;
  v7 = *v6;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v53 = type metadata accessor for Signpost(0);
  v19 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v62 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDEBBE40;
  (*(v9 + 56))(v18, 1, 1, v8);
  v64 = 0;
  v65 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6E6572646C696863, 0xEC00000020666F20);
  v21 = v7[97];
  v22 = v7[95];
  swift_getAssociatedTypeWitness();
  v48 = v21;
  v63 = v22;
  v23 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v24 = v64;
  v51 = v65;
  v54 = v18;
  sub_1CEFE74D8(v18, v15);
  v25 = *(v9 + 48);
  v26 = v25(v15, 1, v8);
  v52 = v24;
  if (v26 == 1)
  {
    v27 = v50;
    v28 = v50;
    v29 = v55;
    sub_1CF9E6048();
    v30 = v25(v15, 1, v8);
    v31 = v29;
    v32 = v53;
    v33 = v27;
    if (v30 != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v55;
    (*(v9 + 32))(v55, v15, v8);
    v32 = v53;
    v33 = v50;
  }

  v34 = v62;
  (*(v9 + 16))(v62, v31, v8);
  *&v34[*(v32 + 20)] = v33;
  v35 = &v34[*(v32 + 24)];
  *v35 = "SQLDB: Enumerate children IDs and Kind";
  *(v35 + 1) = 38;
  v35[16] = 2;
  v36 = v33;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA450;
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1CEFD51C4();
  v38 = v51;
  *(v37 + 32) = v52;
  *(v37 + 40) = v38;
  sub_1CF9E6028();

  (*(v9 + 8))(v31, v8);
  sub_1CEFCCC44(v54, &unk_1EC4BED20, &unk_1CFA00700);
  v66 = v59;
  v67 = v60;
  v68 = v56;
  v69 = v61;
  v39 = v58;
  v40 = (*(v60 + 24))(sub_1CF4C0BC4, &v64, v59, v60);
  if (v39)
  {
    sub_1CF9E7458();
  }

  else
  {
    v41 = v40;
    v61 = v36;
    if ([v40 next])
    {
      v42 = v49;
      do
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v7[96];
        v45 = v7[98];
        sub_1CF492838(v70, v42, v41);
        objc_autoreleasePoolPop(v43);
      }

      while (([v41 next] & 1) != 0);
    }

    sub_1CF9E7458();
  }

  v46 = v62;
  sub_1CF9E6038();
  return sub_1CF4C0A48(v46, type metadata accessor for Signpost);
}

uint64_t sub_1CF492838(void (*a1)(char *, char *), uint64_t a2, void *a3)
{
  v18 = a1;
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v6 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - v7;
  v9 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v10 = a3;
  result = v9();
  if (!v3)
  {
    v12 = v18;
    v13 = v17;
    v14 = [v10 longAtIndex_];
    if (v14 <= 4 && ((0x17u >> v14) & 1) != 0)
    {
      v20 = 0x300020100uLL >> (8 * v14);
      v12(v8, &v20);
      return (*(v13 + 8))(v8, AssociatedTypeWitness);
    }

    else
    {
      (*(v13 + 8))(v8, AssociatedTypeWitness);
      sub_1CF1DA5D8();
      swift_allocError();
      *v15 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1CF492A7C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D1E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA4D3A0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x20200A30203D2029, 0xED000020444E4120);
  if (a4)
  {
    v9 = 0xE100000000000000;
    v10 = 49;
  }

  else
  {
    v11 = [a1 bindLongParameter_];
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;

    MEMORY[0x1D3868CC0](v12, v14);

    v10 = 0x203E204449776F72;
    v9 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v10, v9);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  return 0;
}

uint64_t *sub_1CF492CB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = a8;
  v57 = a6;
  v58 = a7;
  v56 = a5;
  v53 = a3;
  v51 = a2;
  v50 = a1;
  v60 = *v8;
  v61 = a4;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v10 + 56))(v20, 1, 1, v9);
  sub_1CEFE74D8(v20, v17);
  v25 = *(v10 + 48);
  if (v25(v17, 1, v9) == 1)
  {
    v26 = v24;
    sub_1CF9E6048();
    if (v25(v17, 1, v9) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
  }

  v27 = v59;
  (*(v10 + 16))(v59, v13, v9);
  *&v27[*(v21 + 20)] = v24;
  v28 = &v27[*(v21 + 24)];
  v29 = v58;
  *v28 = v57;
  *(v28 + 1) = v29;
  v28[16] = 2;
  v30 = v24;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v13, v9);
  v31 = sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
  v32 = &v49;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v34 = v55;
  v35 = v56;
  *(&v49 - 6) = v61;
  *(&v49 - 5) = v35;
  v36 = v50;
  *(&v49 - 4) = v52;
  *(&v49 - 3) = v36;
  LOBYTE(v47) = v51 & 1;
  v48 = 100;
  v37 = (*(v35 + 24))(AssociatedTypeWitness, v33);
  if (v34)
  {
    sub_1CF9E7458();
    v38 = v59;
    sub_1CF9E6038();
    sub_1CF4C0A48(v38, type metadata accessor for Signpost);
  }

  else
  {
    v39 = v37;
    v55 = v30;
    v40 = v60[97];
    v41 = v60[95];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v32 = sub_1CF9E6DA8();
    v63 = v32;
    v62 = 0;
    if ([v39 next])
    {
      do
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v60[96];
        v44 = v60[98];
        v47 = v35;
        sub_1CF4B0BA8(&v62, v39);
        objc_autoreleasePoolPop(v42);
      }

      while (([v39 next] & 1) != 0);
      v32 = v63;
    }

    sub_1CF9E6DF8();

    sub_1CF9E7458();
    v45 = v59;
    sub_1CF9E6038();
    sub_1CF4C0A48(v45, type metadata accessor for Signpost);
  }

  return v32;
}

uint64_t sub_1CF493228(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D1E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA4D320);
  if (a4)
  {
    v8 = 0xE100000000000000;
    v9 = 49;
  }

  else
  {
    v10 = [a1 bindLongParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);

    v9 = 0x203E204449776F72;
    v8 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v9, v8);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

uint64_t *sub_1CF4933C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a5;
  v73 = a6;
  v74 = a1;
  v70 = a4;
  v68 = a3;
  v67 = a2;
  v7 = *v6;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v61 = qword_1EDEBBE40;
  (*(v9 + 56))(v18, 1, 1, v8);
  v77 = 0;
  v78 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6E6572646C696863, 0xEC00000020666F20);
  v22 = *(v7 + 776);
  v66 = v7;
  v23 = *(v7 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = v22;
  v76 = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 16);
  v60 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v62 = v78;
  v63 = v77;
  v64 = v18;
  sub_1CEFE74D8(v18, v15);
  v27 = *(v9 + 48);
  v28 = v27(v15, 1, v8);
  v59 = AssociatedConformanceWitness;
  if (v28 == 1)
  {
    v29 = v61;
    v30 = v61;
    v31 = v65;
    sub_1CF9E6048();
    v32 = v29;
    if (v27(v15, 1, v8) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v65;
    (*(v9 + 32))(v65, v15, v8);
    v32 = v61;
  }

  v33 = v75;
  (*(v9 + 16))(v75, v31, v8);
  *&v33[*(v19 + 20)] = v32;
  v34 = &v33[*(v19 + 24)];
  *v34 = "SQLDB: enumerateChildrenIDAndKind";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v35 = v32;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1CEFD51C4();
  v37 = v62;
  *(v36 + 32) = v63;
  *(v36 + 40) = v37;
  v57 = v36;
  v56 = 2;
  v55 = 2;
  sub_1CF9E6028();

  (*(v9 + 8))(v31, v8);
  v38 = sub_1CEFCCC44(v64, &unk_1EC4BED20, &unk_1CFA00700);
  v39 = &v58;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v41 = v73;
  *(&v58 - 8) = v72;
  *(&v58 - 7) = v41;
  v42 = v74;
  *(&v58 - 6) = v69;
  *(&v58 - 5) = v42;
  v55 = v67;
  v56 = v68 & 1;
  v57 = 200;
  v43 = v71;
  v44 = (*(v41 + 24))(sub_1CF4C082C, v40);
  v45 = v66;
  if (v43)
  {
    sub_1CF9E7458();
    v46 = v75;
    sub_1CF9E6038();
    sub_1CF4C0A48(v46, type metadata accessor for Signpost);
  }

  else
  {
    v47 = v44;
    v74 = v35;
    v48 = v60;
    swift_getTupleTypeMetadata2();
    v49 = sub_1CF9E6DA8();
    v39 = sub_1CF04F294(v49, v48, &type metadata for FileItemKind, *(v59 + 40));

    v77 = v39;
    v79 = 0;
    if ([v47 next])
    {
      do
      {
        v50 = objc_autoreleasePoolPush();
        v51 = *(v45 + 768);
        v52 = *(v45 + 784);
        v57 = v41;
        sub_1CF493D58(&v79, v47, &v77);
        objc_autoreleasePoolPop(v50);
      }

      while (([v47 next] & 1) != 0);
      v39 = v77;
    }

    sub_1CF9E6698();

    sub_1CF9E7458();
    v53 = v75;
    sub_1CF9E6038();
    sub_1CF4C0A48(v53, type metadata accessor for Signpost);
  }

  return v39;
}

uint64_t sub_1CF493AD0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA4D2A0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  v10 = *(v9 + 776);
  v11 = *(v9 + 760);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 32);
  v14 = swift_checkMetadataState();
  v15 = v13(a1, v14, v12);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4D2D0);
  if (a5)
  {
    v16 = 0xE100000000000000;
    v17 = 49;
  }

  else
  {
    v18 = [a1 bindLongParameter_];
    v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v21 = v20;

    MEMORY[0x1D3868CC0](v19, v21);

    v17 = 0x203E204449776F72;
    v16 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v17, v16);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v22 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v22);

  return 0;
}

uint64_t sub_1CF493D58(void *a1, void *a2, uint64_t a3)
{
  v19[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19[0] = *(AssociatedTypeWitness - 8);
  v7 = *(v19[0] + 64);
  *&v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness).n128_u64[0];
  v10 = v19 - v9;
  *a1 = [a2 longAtIndex_];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(*(AssociatedConformanceWitness + 8) + 16);
  v13 = a2;
  result = v12();
  if (!v3)
  {
    v15 = v19[0];
    v16 = [v13 longAtIndex_];
    if (v16 < 5 && ((0x17u >> v16) & 1) != 0)
    {
      v20 = 0x300020100uLL >> (8 * v16);
      v17 = *(AssociatedConformanceWitness + 40);
      sub_1CF9E6708();
      return sub_1CF9E6738();
    }

    else
    {
      (*(v15 + 8))(v10, AssociatedTypeWitness);
      sub_1CF1DA5D8();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1CF493F78(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v60 = a3;
  v61 = a5;
  v59 = a2;
  v58 = a1;
  v8 = *v5;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for Signpost(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v57 = v5;
  if (*(v5 + 32) == 1)
  {
    v62 = v8;
    v63 = a4;
    v55 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDEBBE40;
    (*(v10 + 56))(v19, 1, 1, v9);
    sub_1CEFE74D8(v19, v16);
    v24 = *(v10 + 48);
    v25 = v24(v16, 1, v9);
    v54 = v23;
    if (v25 == 1)
    {
      v26 = v23;
      v27 = v19;
      v28 = v56;
      sub_1CF9E6048();
      v29 = v28;
      v19 = v27;
      if (v24(v16, 1, v9) != 1)
      {
        sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v29 = v56;
      (*(v10 + 32))(v56, v16, v9);
    }

    v33 = v55;
    (*(v10 + 16))(v55, v29, v9);
    v34 = v54;
    *(v33 + *(v20 + 20)) = v54;
    v35 = v33 + *(v20 + 24);
    *v35 = "SQLDB: Enumerate non-locked directory that could be locked";
    *(v35 + 8) = 58;
    *(v35 + 16) = 2;
    v36 = v34;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v10 + 8))(v29, v9);
    v37 = sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    v38 = MEMORY[0x1EEE9AC00](v37);
    v39 = v61;
    *(&v53 - 6) = v63;
    *(&v53 - 5) = v39;
    v40 = v58;
    *(&v53 - 4) = v57;
    *(&v53 - 3) = v40;
    LOBYTE(v51) = v59 & 1;
    v52 = 100;
    v41 = (*(v39 + 24))(sub_1CF4C0814, v38);
    if (v6)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v33, type metadata accessor for Signpost);
    }

    else
    {
      v42 = v41;
      v60 = v36;
      v43 = v62[97];
      v44 = v62[95];
      swift_getAssociatedTypeWitness();
      v45 = sub_1CF9E6DA8();
      v65 = v45;
      v64 = 0;
      if ([v42 next])
      {
        v46 = v61;
        do
        {
          v47 = objc_autoreleasePoolPush();
          v48 = v62[96];
          v49 = v62[98];
          v51 = v46;
          sub_1CF4B0BA8(&v64, v42);
          objc_autoreleasePoolPop(v47);
        }

        while (([v42 next] & 1) != 0);
        v50 = v65;
      }

      else
      {
        v50 = v45;
      }

      sub_1CF9E6DF8();

      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v33, type metadata accessor for Signpost);
      return v50;
    }
  }

  else
  {
    v30 = v8[97];
    v31 = v8[95];
    swift_getAssociatedTypeWitness();
    return sub_1CF9E6DA8();
  }
}

uint64_t sub_1CF49457C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D1E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA4D200);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA4D220);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xEC00000020444E41);
  if (a4)
  {
    v10 = 0xE100000000000000;
    v11 = 49;
  }

  else
  {
    v12 = [a1 bindLongParameter_];
    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;

    MEMORY[0x1D3868CC0](v13, v15);

    v11 = 0x203E204449776F72;
    v10 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v11, v10);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  return 0;
}

uint64_t sub_1CF4947C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v53 = a1;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBBE40;
  (*(v8 + 56))(v17, 1, 1, v7);
  v54 = 0;
  v55 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6E6572646C696863, 0xEC00000020666F20);
  v21 = *(v6 + 776);
  v22 = *(v6 + 760);
  swift_getAssociatedTypeWitness();
  v23 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v44 = v55;
  v45 = v54;
  v46 = v17;
  sub_1CEFE74D8(v17, v14);
  v24 = *(v8 + 48);
  if (v24(v14, 1, v7) == 1)
  {
    v25 = v43;
    v26 = v43;
    v27 = v47;
    sub_1CF9E6048();
    if (v24(v14, 1, v7) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v47;
    (*(v8 + 32))(v47, v14, v7);
    v25 = v43;
  }

  v28 = v56;
  (*(v8 + 16))(v56, v27, v7);
  *&v28[*(v18 + 20)] = v25;
  v29 = &v28[*(v18 + 24)];
  *v29 = "SQLDB: Contains children";
  *(v29 + 1) = 24;
  v29[16] = 2;
  v30 = v25;
  v31 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v44;
  *(v33 + 32) = v45;
  *(v33 + 40) = v34;
  sub_1CF9E6028();

  (*(v8 + 8))(v32, v7);
  v35 = sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = MEMORY[0x1EEE9AC00](v35);
  if (v48)
  {
    v37 = sub_1CF4C0808;
  }

  else
  {
    v37 = sub_1CF4C07FC;
  }

  v38 = v51;
  v39 = (*(v52 + 24))(v37, v36);
  if (!v38)
  {
    v41 = v39;
    v31 = [v39 next];
  }

  sub_1CF9E7458();
  v40 = v56;
  sub_1CF9E6038();
  sub_1CF4C0A48(v40, type metadata accessor for Signpost);
  return v31 & 1;
}

uint64_t sub_1CF494D94(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  v6 = *(v4 + 776);
  v7 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 32);
  v10 = swift_checkMetadataState();
  v11 = v9(a1, v10, v8);
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4D110);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACA0);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0x4C200A30203D2029, 0xEE00312054494D49);
  return 0;
}

uint64_t sub_1CF49500C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA4D140);
  v5 = *(v4 + 776);
  v6 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4D170);
  return 0;
}

uint64_t sub_1CF4951A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a5;
  v61 = a3;
  v62 = a4;
  v59 = a2;
  v67 = a1;
  v52 = a6;
  v7 = *v6;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDEBBE40;
  (*(v9 + 56))(v18, 1, 1, v8);
  v65 = 0;
  v66 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6E6572646C696863, 0xEC00000020666F20);
  v22 = *(v7 + 776);
  v23 = *(v7 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = AssociatedTypeWitness;
  v25 = *(AssociatedConformanceWitness + 16);
  sub_1CF9E7FE8();
  v54 = v66;
  v55 = v65;
  v56 = v18;
  sub_1CEFE74D8(v18, v15);
  v26 = *(v9 + 48);
  if (v26(v15, 1, v8) == 1)
  {
    v27 = v53;
    v28 = v53;
    v29 = v58;
    sub_1CF9E6048();
    v30 = v26(v15, 1, v8);
    v31 = v57;
    if (v30 != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v29 = v58;
    (*(v9 + 32))(v58, v15, v8);
    v31 = v57;
    v27 = v53;
  }

  (*(v9 + 16))(v31, v29, v8);
  *(v31 + *(v19 + 20)) = v27;
  v32 = v31 + *(v19 + 24);
  *v32 = "SQLDB: Contains pending deletion children";
  *(v32 + 8) = 41;
  *(v32 + 16) = 2;
  v33 = v27;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CF9FA450;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1CEFD51C4();
  v35 = v54;
  *(v34 + 32) = v55;
  *(v34 + 40) = v35;
  v48 = v34;
  LOBYTE(v47) = 2;
  v46 = 2;
  sub_1CF9E6028();

  (*(v9 + 8))(v29, v8);
  v36 = sub_1CEFCCC44(v56, &unk_1EC4BED20, &unk_1CFA00700);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = v63;
  v38 = v64;
  *(&v49 - 6) = v62;
  *(&v49 - 5) = v38;
  LOBYTE(v46) = v59 & 1;
  v47 = v60;
  v48 = v67;
  v40 = (*(v38 + 24))(sub_1CF4C07EC, v37);
  if (!v39)
  {
    v41 = v40;
    if ([v40 next])
    {
      v42 = v52;
      v43 = v41;
      v44 = v51;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v43, 0, v51);
      (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
    }

    else
    {
      (*(*(v51 - 8) + 56))(v52, 1, 1);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v31, type metadata accessor for Signpost);
}

uint64_t sub_1CF4957BC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *a3;
  if (a2)
  {
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x2E747220444E41, 0xE700000000000000);
    if (*(a3 + 32))
    {
      v5 = 21318;
    }

    else
    {
      v5 = 20550;
    }

    MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
    v6 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v6);

    MEMORY[0x1D3868CC0](0x2E747220444E410ALL, 0xE800000000000000);
    MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA4D0C0);
    v46 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, 8, 0);
    v7 = v46;
    v9 = *(v46 + 16);
    v8 = *(v46 + 24);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      sub_1CF680C9C((v8 > 1), v9 + 1, 1);
      v7 = v46;
      v8 = *(v46 + 24);
      v10 = v8 >> 1;
    }

    *(v7 + 16) = v11;
    *(v7 + 8 * v9 + 32) = 0;
    if (v10 < (v9 + 2))
    {
      sub_1CF680C9C((v8 > 1), v9 + 2, 1);
      v7 = v46;
    }

    *(v7 + 16) = v9 + 2;
    *(v7 + 8 * v11 + 32) = 512;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      sub_1CF680C9C((v12 > 1), v13 + 1, 1);
    }

    v15 = v46;
    *(v46 + 16) = v14;
    *(v46 + 8 * v13 + 32) = 0x2000;
    v16 = *(v46 + 24);
    if ((v13 + 2) > (v16 >> 1))
    {
      sub_1CF680C9C((v16 > 1), v13 + 2, 1);
      v15 = v46;
    }

    *(v15 + 16) = v13 + 2;
    *(v15 + 8 * v14 + 32) = 8704;
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    v19 = v17 >> 1;
    v20 = v18 + 1;
    if (v17 >> 1 <= v18)
    {
      sub_1CF680C9C((v17 > 1), v18 + 1, 1);
      v15 = v46;
      v17 = *(v46 + 24);
      v19 = v17 >> 1;
    }

    *(v15 + 16) = v20;
    *(v15 + 8 * v18 + 32) = 256;
    v21 = v18 + 2;
    if (v19 < (v18 + 2))
    {
      sub_1CF680C9C((v17 > 1), v18 + 2, 1);
    }

    v22 = v46;
    *(v46 + 16) = v21;
    *(v46 + 8 * v20 + 32) = 768;
    v24 = *(v46 + 16);
    v23 = *(v46 + 24);
    v25 = v23 >> 1;
    v26 = v24 + 1;
    if (v23 >> 1 <= v24)
    {
      sub_1CF680C9C((v23 > 1), v24 + 1, 1);
      v22 = v46;
      v23 = *(v46 + 24);
      v25 = v23 >> 1;
    }

    *(v22 + 16) = v26;
    *(v22 + 8 * v24 + 32) = 8448;
    if (v25 < (v24 + 2))
    {
      sub_1CF680C9C((v23 > 1), v24 + 2, 1);
      v22 = v46;
    }

    *(v22 + 16) = v24 + 2;
    *(v22 + 8 * v26 + 32) = 8960;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v27 = sub_1CF9E6C18();
    v29 = v28;

    MEMORY[0x1D3868CC0](v27, v29);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a3 + qword_1EDEBBD78), *(a3 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  v30 = *(a3 + 32) == 0;
  if (*(a3 + 32))
  {
    v31 = 20550;
  }

  else
  {
    v31 = 21318;
  }

  if (v30)
  {
    v32 = 20550;
  }

  else
  {
    v32 = 21318;
  }

  MEMORY[0x1D3868CC0](v31, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  v33 = *(v4 + 776);
  v34 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v35 = *(swift_getAssociatedConformanceWitness() + 8);
  v36 = *(v35 + 32);
  v37 = swift_checkMetadataState();
  v38 = v36(a1, v37, v35);
  MEMORY[0x1D3868CC0](v38);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4D000);
  MEMORY[0x1D3868CC0](v32, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D030);
  MEMORY[0x1D3868CC0](0, 0xE000000000000000);

  MEMORY[0x1D3868CC0](0x2E747220444E4120, 0xE800000000000000);
  MEMORY[0x1D3868CC0](v31, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4D050);
  MEMORY[0x1D3868CC0](v32, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA39E10);
  v39 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v39);

  MEMORY[0x1D3868CC0](0x4E412030203D2120, 0xED00002E74722044);
  MEMORY[0x1D3868CC0](v31, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4D080);
  MEMORY[0x1D3868CC0](v32, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v40 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v40);

  MEMORY[0x1D3868CC0](0x2020200A29, 0xE500000000000000);
  if (a2)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    sub_1CF9E7948();

    MEMORY[0x1D3868CC0](v31, 0xE200000000000000);

    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4D0A0);
    v41 = 0x2E747220444E4120;
    v42 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v41, v42);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

void sub_1CF496090(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a1;
  v7 = *v4;
  v17[2] = a2;
  v17[3] = a3;
  v18 = v4;
  v8 = v7;
  v9 = (*(a3 + 24))(sub_1CF4C07E0, v17);
  if (!v5)
  {
    v10 = v9;
    v11 = [v9 next];
    v12 = *(v8 + 776);
    v13 = *(v8 + 760);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = AssociatedTypeWitness;
    if (v11)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(*(AssociatedConformanceWitness + 8) + 16))(v10, 0, v15);
      (*(*(v15 - 8) + 56))(a4, 0, 1, v15);
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_1CF496258(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  if (*(a2 + 32))
  {
    v6 = 21318;
  }

  else
  {
    v6 = 20550;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4CFA0);
  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4CCA0);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x312054494D494C0ALL, 0xE800000000000000);
  return 0;
}

uint64_t sub_1CF496500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v53 = a2;
  v54 = a3;
  v59 = a1;
  v46 = a5;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &AssociatedConformanceWitness - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &AssociatedConformanceWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &AssociatedConformanceWitness - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &AssociatedConformanceWitness - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDEBBE40;
  (*(v8 + 56))(v17, 1, 1, v7);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4CDD0);
  v21 = *(v6 + 776);
  v22 = *(v6 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = AssociatedTypeWitness;
  v24 = *(AssociatedConformanceWitness + 16);
  sub_1CF9E7FE8();
  v48 = v58;
  v49 = v57;
  v50 = v17;
  sub_1CEFE74D8(v17, v14);
  v25 = *(v8 + 48);
  if (v25(v14, 1, v7) == 1)
  {
    v26 = v47;
    v27 = v47;
    v28 = v52;
    sub_1CF9E6048();
    v29 = v25(v14, 1, v7);
    v30 = v51;
    if (v29 != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v28 = v52;
    (*(v8 + 32))(v52, v14, v7);
    v30 = v51;
    v26 = v47;
  }

  (*(v8 + 16))(v30, v28, v7);
  *(v30 + *(v18 + 20)) = v26;
  v31 = v30 + *(v18 + 24);
  *v31 = "SQLDB: Count materialized children";
  *(v31 + 8) = 34;
  *(v31 + 16) = 2;
  v32 = v26;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v48;
  *(v33 + 32) = v49;
  *(v33 + 40) = v34;
  sub_1CF9E6028();

  (*(v8 + 8))(v28, v7);
  v35 = sub_1CEFCCC44(v50, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = v55;
  v38 = (*(v56 + 24))(sub_1CF4C07D4, v36);
  if (!v37)
  {
    v39 = v38;
    if ([v38 next])
    {
      v40 = v46;
      v41 = v39;
      v42 = v45;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v41, 0, v45);
      (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
    }

    else
    {
      (*(*(v45 - 8) + 56))(v46, 1, 1);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v30, type metadata accessor for Signpost);
}

uint64_t sub_1CF496B14(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x44455845444E4920, 0xEC00000020594220);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA4CDF0);
  if (*(a2 + 32))
  {
    v7 = 20550;
  }

  else
  {
    v7 = 21318;
  }

  MEMORY[0x1D3868CC0](v7, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4CE40);
  v8 = *(v4 + 776);
  v9 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 32);
  v12 = swift_checkMetadataState();
  v13 = v11(a1, v12, v10);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000062, 0x80000001CFA4CE60);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4CED0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA4CF00);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4CF40);
  v17 = sub_1CF682948();
  v18 = *(v17 + 16);
  if (v18)
  {
    v31 = MEMORY[0x1E69E7CC0];
    v19 = v17;
    sub_1CF680C9C(0, v18, 0);
    v20 = v19;
    v21 = *(v31 + 16);
    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      v24 = *(v31 + 24);
      if (v21 >= v24 >> 1)
      {
        sub_1CF680C9C((v24 > 1), v21 + 1, 1);
        v20 = v19;
      }

      v25 = qword_1CFA062F0[v23];
      *(v31 + 16) = v21 + 1;
      *(v31 + 8 * v21 + 32) = v25;
      ++v22;
      ++v21;
      --v18;
    }

    while (v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v26 = sub_1CF9E6C18();
  v28 = v27;

  MEMORY[0x1D3868CC0](v26, v28);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4CF60);
  v29 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v29);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF49705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v48 = a2;
  v49 = a3;
  v54 = a1;
  v5 = *v4;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v45 = type metadata accessor for Signpost(0);
  v17 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v7 + 56))(v16, 1, 1, v6);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4CCF0);
  v20 = *(v5 + 776);
  v21 = *(v5 + 760);
  swift_getAssociatedTypeWitness();
  v22 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v43 = v53;
  v44 = v52;
  v46 = v16;
  sub_1CEFE74D8(v16, v13);
  v23 = *(v7 + 48);
  if (v23(v13, 1, v6) == 1)
  {
    v24 = v42;
    v25 = v42;
    v26 = v47;
    sub_1CF9E6048();
    v27 = v23(v13, 1, v6);
    v28 = v24;
    if (v27 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v26 = v47;
    (*(v7 + 32))(v47, v13, v6);
    v28 = v42;
  }

  (*(v7 + 16))(v19, v26, v6);
  v29 = v45;
  *&v19[*(v45 + 20)] = v28;
  v30 = &v19[*(v29 + 24)];
  *v30 = "SQLDB: Count pending rescan children";
  *(v30 + 1) = 36;
  v30[16] = 2;
  v31 = v28;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA450;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1CEFD51C4();
  v33 = v43;
  *(v32 + 32) = v44;
  *(v32 + 40) = v33;
  sub_1CF9E6028();

  (*(v7 + 8))(v26, v6);
  v34 = sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v48;
  v37 = v50;
  v38 = (*(v51 + 24))(sub_1CF4C07C8, v35);
  if (!v37)
  {
    v39 = v38;
    v36 = [v38 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v19, type metadata accessor for Signpost);
  return v36 & 1;
}

uint64_t sub_1CF497600(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000040, 0x80000001CFA4CD10);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA4CD60);
  v6 = *(v4 + 776);
  v7 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 32);
  v10 = swift_checkMetadataState();
  v11 = v9(a1, v10, v8);
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4CD80);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF497870@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v62 = a1;
  v50 = a6;
  v7 = *v6;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDEBBE40;
  (*(v9 + 56))(v18, 1, 1, v8);
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4CC20);
  v22 = *(v7 + 776);
  v23 = *(v7 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(AssociatedConformanceWitness + 16);
  v56 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v52 = v64;
  v53 = v63;
  v54 = v18;
  sub_1CEFE74D8(v18, v15);
  v26 = *(v9 + 48);
  if (v26(v15, 1, v8) == 1)
  {
    v27 = v51;
    v28 = v51;
    v29 = v55;
    sub_1CF9E6048();
    v30 = v26(v15, 1, v8);
    v31 = v29;
    v32 = v27;
    if (v30 != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v55;
    (*(v9 + 32))(v55, v15, v8);
    v32 = v51;
  }

  v33 = v65;
  (*(v9 + 16))(v65, v31, v8);
  *&v33[*(v19 + 20)] = v32;
  v34 = &v33[*(v19 + 24)];
  *v34 = "SQLDB: Count unbound children";
  *(v34 + 1) = 29;
  v34[16] = 2;
  v35 = v32;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1CEFD51C4();
  v37 = v52;
  *(v36 + 32) = v53;
  *(v36 + 40) = v37;
  sub_1CF9E6028();

  (*(v9 + 8))(v31, v8);
  v38 = sub_1CEFCCC44(v54, &unk_1EC4BED20, &unk_1CFA00700);
  v39 = MEMORY[0x1EEE9AC00](v38);
  if (v57)
  {
    v40 = sub_1CF4C07BC;
  }

  else
  {
    v40 = sub_1CF4C07B0;
  }

  v41 = v60;
  v42 = (*(v61 + 24))(v40, v39);
  v43 = v56;
  if (!v41)
  {
    v44 = v42;
    if ([v42 next])
    {
      v45 = v50;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v44, 0, v43);
      (*(*(v43 - 8) + 56))(v45, 0, 1, v43);
    }

    else
    {
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
    }
  }

  sub_1CF9E7458();
  v46 = v65;
  sub_1CF9E6038();
  return sub_1CF4C0A48(v46, type metadata accessor for Signpost);
}

uint64_t sub_1CF497EBC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  if (*(a2 + 32))
  {
    v6 = 21318;
  }

  else
  {
    v6 = 20550;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4CC40);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA4CC60);
  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4CC80);
  return 0;
}

uint64_t sub_1CF4981E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  if (*(a2 + 32))
  {
    v6 = 21318;
  }

  else
  {
    v6 = 20550;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0x74722B20444E4120, 0xE90000000000002ELL);
  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4CCA0);
  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4CC40);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF498498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v48 = a2;
  v49 = a3;
  v54 = a1;
  v5 = *v4;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v45 = type metadata accessor for Signpost(0);
  v17 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v7 + 56))(v16, 1, 1, v6);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA4CB60);
  v20 = *(v5 + 776);
  v21 = *(v5 + 760);
  swift_getAssociatedTypeWitness();
  v22 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v43 = v53;
  v44 = v52;
  v46 = v16;
  sub_1CEFE74D8(v16, v13);
  v23 = *(v7 + 48);
  if (v23(v13, 1, v6) == 1)
  {
    v24 = v42;
    v25 = v42;
    v26 = v47;
    sub_1CF9E6048();
    v27 = v23(v13, 1, v6);
    v28 = v24;
    if (v27 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v26 = v47;
    (*(v7 + 32))(v47, v13, v6);
    v28 = v42;
  }

  (*(v7 + 16))(v19, v26, v6);
  v29 = v45;
  *&v19[*(v45 + 20)] = v28;
  v30 = &v19[*(v29 + 24)];
  *v30 = "SQLDB: Count bound children";
  *(v30 + 1) = 27;
  v30[16] = 2;
  v31 = v28;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA450;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1CEFD51C4();
  v33 = v43;
  *(v32 + 32) = v44;
  *(v32 + 40) = v33;
  sub_1CF9E6028();

  (*(v7 + 8))(v26, v6);
  v34 = sub_1CEFCCC44(v46, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v48;
  v37 = v50;
  v38 = (*(v51 + 24))(sub_1CF4C07A4, v35);
  if (!v37)
  {
    v39 = v38;
    v36 = [v38 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v19, type metadata accessor for Signpost);
  return v36 & 1;
}

uint64_t sub_1CF498A3C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4CB80);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  if (*(a2 + 32))
  {
    v6 = 21318;
  }

  else
  {
    v6 = 20550;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEC0000002E74722BLL);
  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4CBC0);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4CBE0);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x494C200A30203D20, 0xED0000312054494DLL);
  return 0;
}

uint64_t sub_1CF498CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41[2] = a3;
  v42 = a4;
  v41[1] = a2;
  v53 = a1;
  v5 = *v4;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - v15;
  v46 = type metadata accessor for Signpost(0);
  v17 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBBE40;
  (*(v7 + 56))(v16, 1, 1, v6);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA4CB00);
  v20 = *(v5 + 776);
  v21 = *(v5 + 760);
  swift_getAssociatedTypeWitness();
  v22 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  v44 = v52;
  v45 = v51;
  v47 = v16;
  sub_1CEFE74D8(v16, v13);
  v23 = *(v7 + 48);
  if (v23(v13, 1, v6) == 1)
  {
    v24 = v43;
    v25 = v43;
    v26 = v48;
    sub_1CF9E6048();
    v27 = v23(v13, 1, v6);
    v28 = v24;
    if (v27 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v26 = v48;
    (*(v7 + 32))(v48, v13, v6);
    v28 = v43;
  }

  (*(v7 + 16))(v19, v26, v6);
  v29 = v46;
  *&v19[*(v46 + 20)] = v28;
  v30 = &v19[*(v29 + 24)];
  *v30 = "SQLDB: Count keep downloaded children";
  *(v30 + 1) = 37;
  v30[16] = 2;
  v31 = v28;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA450;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1CEFD51C4();
  v33 = v44;
  *(v32 + 32) = v45;
  *(v32 + 40) = v33;
  sub_1CF9E6028();

  (*(v7 + 8))(v26, v6);
  v34 = sub_1CEFCCC44(v47, &unk_1EC4BED20, &unk_1CFA00700);
  if (*(v49 + 32))
  {
    v35 = v41;
    v36 = MEMORY[0x1EEE9AC00](v34);
    v37 = v50;
    v38 = (*(v42 + 24))(sub_1CF4C0798, v36);
    if (!v37)
    {
      v39 = v38;
      LOBYTE(v35) = [v38 next];
    }
  }

  else
  {
    LOBYTE(v35) = 0;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v19, type metadata accessor for Signpost);
  return v35 & 1;
}

uint64_t sub_1CF4992B4(uint64_t a1, void *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x69205443454C4553, 0xEF204D4F52462064);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  v5 = v4[97];
  v6 = v4[95];
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4CB20);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0x202020202020200ALL, 0xED000020444E4120);
  v12 = v4[96];
  v13 = v4[98];
  v14 = sub_1CF4BF780(0, 0xE000000000000000);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x2020202020200A29, 0xEB0000000020524FLL);
  v15 = sub_1CF4BFA00(0, 0xE000000000000000, xmmword_1CFA02F50);
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0x4F2020202020200ALL, 0xEA00000000002052);
  v16 = sub_1CF4BF854(0, 0xE000000000000000);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0x4D494C20200A3B29, 0xEC00000031205449);
  return 0;
}

uint64_t sub_1CF4995D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v53 = a2;
  v54 = a3;
  v59 = a1;
  v46 = a5;
  v6 = *v5;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &AssociatedConformanceWitness - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &AssociatedConformanceWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &AssociatedConformanceWitness - v16;
  v18 = type metadata accessor for Signpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &AssociatedConformanceWitness - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDEBBE40;
  (*(v8 + 56))(v17, 1, 1, v7);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA4CA00);
  v21 = *(v6 + 776);
  v22 = *(v6 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = AssociatedTypeWitness;
  v24 = *(AssociatedConformanceWitness + 16);
  sub_1CF9E7FE8();
  v48 = v58;
  v49 = v57;
  v50 = v17;
  sub_1CEFE74D8(v17, v14);
  v25 = *(v8 + 48);
  if (v25(v14, 1, v7) == 1)
  {
    v26 = v47;
    v27 = v47;
    v28 = v52;
    sub_1CF9E6048();
    v29 = v25(v14, 1, v7);
    v30 = v51;
    if (v29 != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v28 = v52;
    (*(v8 + 32))(v52, v14, v7);
    v30 = v51;
    v26 = v47;
  }

  (*(v8 + 16))(v30, v28, v7);
  *(v30 + *(v18 + 20)) = v26;
  v31 = v30 + *(v18 + 24);
  *v31 = "SQLDB: contains children being reparented to trahs root";
  *(v31 + 8) = 55;
  *(v31 + 16) = 2;
  v32 = v26;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v48;
  *(v33 + 32) = v49;
  *(v33 + 40) = v34;
  sub_1CF9E6028();

  (*(v8 + 8))(v28, v7);
  v35 = sub_1CEFCCC44(v50, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = v55;
  v38 = (*(v56 + 24))(sub_1CF4C078C, v36);
  if (!v37)
  {
    v39 = v38;
    if ([v38 next])
    {
      v40 = v46;
      v41 = v39;
      v42 = v45;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v41, 0, v45);
      (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
    }

    else
    {
      (*(*(v45 - 8) + 56))(v46, 1, 1);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v30, type metadata accessor for Signpost);
}

uint64_t sub_1CF499BE4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4CA20);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA4CA40);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4CA80);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4CAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v13 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF499F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v37 = a2;
  v40 = a4;
  v35 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for Signpost(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v5 + 56))(v15, 1, 1, v4);
  v34 = v15;
  sub_1CEFE74D8(v15, v12);
  v21 = *(v5 + 48);
  if (v21(v12, 1, v4) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v12, 1, v4) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
  }

  (*(v5 + 16))(v19, v8, v4);
  *&v19[*(v16 + 20)] = v20;
  v23 = &v19[*(v16 + 24)];
  *v23 = "SQLDB: Has reseting parent";
  *(v23 + 1) = 26;
  v23[16] = 2;
  v24 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v5 + 8))(v8, v4);
  v25 = sub_1CEFCCC44(v34, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = v37;
  v28 = v40;
  *(&v34 - 6) = v38;
  *(&v34 - 5) = v28;
  v29 = v35;
  *(&v34 - 4) = v36;
  *(&v34 - 3) = v29;
  *(&v34 - 2) = 32776;
  v30 = v39;
  v31 = (*(v28 + 24))(sub_1CF4C0774, v26);
  if (!v30)
  {
    v32 = v31;
    v27 = [v31 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v19, type metadata accessor for Signpost);
  return v27 & 1;
}

uint64_t sub_1CF49A354(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA4C660);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA4C8B0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000078, 0x80000001CFA4C8D0);
  if (*(a2 + 32))
  {
    v13 = 20550;
  }

  else
  {
    v13 = 21318;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4C950);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA4C990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v16 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4C840);
  v17 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4C860);
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0x2930203D2120, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF49A82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v44 = a3;
  v45 = a4;
  v48 = a2;
  v42 = a1;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Signpost(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v6 + 56))(v16, 1, 1, v5);
  sub_1CEFE74D8(v16, v13);
  v21 = *(v6 + 48);
  if (v21(v13, 1, v5) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    v23 = v21(v13, 1, v5);
    v24 = v9;
    if (v23 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v24 = v9;
    (*(v6 + 32))(v9, v13, v5);
  }

  v25 = v41;
  (*(v6 + 16))(v41, v24, v5);
  *(v25 + *(v17 + 20)) = v20;
  v26 = v25 + *(v17 + 24);
  *v26 = "SQLDB: Has reuploading or reevaluating purgeability parent";
  *(v26 + 8) = 58;
  *(v26 + 16) = 2;
  v27 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v24, v5);
  v28 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = v46;
  v30 = v47;
  *(&v40 - 6) = v45;
  *(&v40 - 5) = v30;
  v32 = v42;
  *(&v40 - 4) = v43;
  *(&v40 - 3) = v32;
  v33 = v48;
  *(&v40 - 2) = v48;
  v34 = (*(v30 + 24))(sub_1CF4C075C, v29);
  if (!v31)
  {
    v35 = v34;
    v36 = 0;
    while ([v35 next])
    {
      v37 = [v35 unsignedLongAtIndex_];
      if ((v37 & ~v36) != 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v36 |= v38;
      if ((v33 & ~v36) == 0)
      {

        goto LABEL_16;
      }
    }

    v33 &= v36;
  }

LABEL_16:
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v25, type metadata accessor for Signpost);
  return v33;
}

uint64_t sub_1CF49ACC8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA4C660);
  v5 = *(a2 + qword_1EDEBBD78);
  v6 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  v7 = *(v4 + 776);
  v8 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v5, v6);
  MEMORY[0x1D3868CC0](0xD00000000000009ALL, 0x80000001CFA4C6B0);
  if (*(a2 + 32))
  {
    v13 = 20550;
  }

  else
  {
    v13 = 21318;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000006CLL, 0x80000001CFA4C750);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA4C7C0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4C810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v16 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4C840);
  v17 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4C860);
  v18 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0x2930203D2120, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF49B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 776);
  v10 = *(*v4 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v23 = *(v12 - 8);
  v13 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v24 = *(AssociatedTypeWitness - 8);
  v16 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  v20 = v25;
  sub_1CF48FF70(a1, a2, a3, a4, v15);
  if (!v20)
  {
    v21 = v23;
    v25 = a4;
    if ((*(v24 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      (*(v21 + 8))(v15, v12);
      LOBYTE(v4) = 0;
    }

    else
    {
      (*(v24 + 32))(v19, v15, AssociatedTypeWitness);
      LOBYTE(v4) = sub_1CF49B42C(v19, a2, a3, v25);
      (*(v24 + 8))(v19, AssociatedTypeWitness);
    }
  }

  return v4 & 1;
}

uint64_t sub_1CF49B42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v37 = a2;
  v40 = a4;
  v35 = a1;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for Signpost(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v5 + 56))(v15, 1, 1, v4);
  v34 = v15;
  sub_1CEFE74D8(v15, v12);
  v21 = *(v5 + 48);
  if (v21(v12, 1, v4) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v12, 1, v4) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
  }

  (*(v5 + 16))(v19, v8, v4);
  *&v19[*(v16 + 20)] = v20;
  v23 = &v19[*(v16 + 24)];
  *v23 = "SQLDB: Has ignored parent";
  *(v23 + 1) = 25;
  v23[16] = 2;
  v24 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v5 + 8))(v8, v4);
  v25 = sub_1CEFCCC44(v34, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = v37;
  v28 = v40;
  *(&v34 - 4) = v38;
  *(&v34 - 3) = v28;
  v29 = v35;
  *(&v34 - 2) = v36;
  *(&v34 - 1) = v29;
  v30 = v39;
  v31 = (*(v28 + 24))(sub_1CF4C0750, v26);
  if (!v30)
  {
    v32 = v31;
    v27 = [v31 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v19, type metadata accessor for Signpost);
  return v27 & 1;
}

uint64_t sub_1CF49B874(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000053, 0x80000001CFA4C3B0);
  if (*(a2 + 32))
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA4C410);
  v6 = *(a2 + qword_1EDEBBD78);
  v7 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA4C430);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA4C460);
  v8 = *(v4 + 776);
  v9 = *(v4 + 760);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 32);
  v12 = swift_checkMetadataState();
  v13 = v11(a1, v12, v10);
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA4C480);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA4C4E0);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA4C520);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA4C580);
  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACA0);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0xD000000000000069, 0x80000001CFA4C5B0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF49BC28(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t (*)(void *a1), __n128))
{
  v53 = a5;
  v54 = a6;
  v50 = a1;
  v51 = a4;
  v57 = a3;
  v48 = *v6;
  v49 = a2;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  (*(v8 + 56))(v18, 1, 1, v7);
  sub_1CEFE74D8(v18, v15);
  v23 = *(v8 + 48);
  if (v23(v15, 1, v7) == 1)
  {
    v24 = v22;
    sub_1CF9E6048();
    if (v23(v15, 1, v7) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
  }

  v25 = v56;
  (*(v8 + 16))(v56, v11, v7);
  *(v25 + *(v19 + 20)) = v22;
  v26 = v25 + *(v19 + 24);
  *v26 = "SQLDB: Scan directory";
  *(v26 + 8) = 21;
  *(v26 + 16) = 2;
  v27 = v22;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v8 + 8))(v11, v7);
  v28 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v29 = v55;
  if (v49)
  {
    type metadata accessor for PaginatedContinuation();
    v28 = swift_dynamicCastClass();
    v31 = v53;
    v30 = v54;
    if (!v28)
    {
      goto LABEL_20;
    }

    v32 = *(v28 + 16);
  }

  else
  {
    v31 = v53;
    v30 = v54;
  }

  v33 = MEMORY[0x1EEE9AC00](v28);
  *(&v47 - 8) = v31;
  *(&v47 - 7) = v30;
  *(&v47 - 6) = v29;
  *(&v47 - 40) = v34 & 1;
  *(&v47 - 4) = v50;
  *(&v47 - 3) = v35;
  v45 = 200;
  v36 = v52;
  v37 = v30[3](sub_1CF4C0BAC, v33);
  if (v36)
  {
    goto LABEL_18;
  }

  v38 = v37;
  v54 = v27;
  v39 = *(v48 + 760);
  v40 = *(v48 + 776);
  type metadata accessor for SnapshotItem();
  v11 = sub_1CF9E6DA8();
  v59 = v11;
  v58 = 0;
  if ([v38 next])
  {
    do
    {
      v41 = objc_autoreleasePoolPush();
      sub_1CF49C588(&v58, v38, v29, v57 & 1, &v59);
      objc_autoreleasePoolPop(v41);
    }

    while (([v38 next] & 1) != 0);
    v11 = v59;
  }

  v42 = sub_1CF9E6DF8();

  if (v42 != 200)
  {
    goto LABEL_18;
  }

  v43 = v58 + 1;
  if (!__OFADD__(v58, 1))
  {
    type metadata accessor for PaginatedContinuation();
    *(swift_allocObject() + 16) = v43;
LABEL_18:
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v25, type metadata accessor for Signpost);
    return v11;
  }

  __break(1u);
LABEL_20:
  v46 = 0;
  v45 = 1155;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF49C238(void *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (*(a2 + 32) == 1)
  {
    v11 = 0xE000000000000000;
    if (a3)
    {
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD88), *(a2 + qword_1EDEBBD88 + 8));
      MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA46800);
      v12 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v12 = 0xD000000000000079;
    }

    else
    {
      v12 = 0;
    }

    if (a3)
    {
      v11 = 0x80000001CFA46780;
    }

    else
    {
      v11 = 0xE000000000000000;
    }
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](v12, v11);

  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA46730);
  v13 = *(v10 + 776);
  v14 = *(v10 + 760);
  swift_getAssociatedTypeWitness();
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = *(v15 + 32);
  v17 = swift_checkMetadataState();
  v18 = v16(a1, v17, v15);
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA46750);
  v19 = [a1 bindLongParameter_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3B360);
  v23 = [a1 bindLongParameter_];
  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  MEMORY[0x1D3868CC0](v24, v26);

  return 0;
}

id sub_1CF49C588(void *a1, void *a2, _BYTE *a3, int a4, uint64_t a5)
{
  v58 = a5;
  LODWORD(v79) = a4;
  v9 = *(*a3 + 760);
  v10 = *(*a3 + 776);
  v11 = type metadata accessor for SnapshotItem();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v55 - v18;
  *a1 = [a2 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF01E03C(a2, 1, v11, WitnessTable, v19);
  if (!v5)
  {
    v55 = v15;
    v57 = v12;
    v22 = v19;
    if (a3[32] == 1)
    {
      if (v79)
      {
        v23 = *&a3[qword_1EDEBBD90];
        if (!__OFADD__(v23, 1))
        {
          v24 = sub_1CEFF12E8();
          sub_1CEFF14E0(a2, v24, v23 + 1, v77);
          v56 = 0;

          v71 = v77[12];
          v72 = v77[13];
          v73 = v77[14];
          v74 = v78;
          v67 = v77[8];
          v68 = v77[9];
          v69 = v77[10];
          v70 = v77[11];
          v63 = v77[4];
          v64 = v77[5];
          v65 = v77[6];
          v66 = v77[7];
          v59 = v77[0];
          v60 = v77[1];
          v61 = v77[2];
          v62 = v77[3];
          nullsub_1(&v59);
          v33 = &v22[v11[13]];
          v34 = *(v33 + 13);
          v75[12] = *(v33 + 12);
          v75[13] = v34;
          v75[14] = *(v33 + 14);
          v76 = *(v33 + 30);
          v35 = *(v33 + 9);
          v75[8] = *(v33 + 8);
          v75[9] = v35;
          v36 = *(v33 + 11);
          v75[10] = *(v33 + 10);
          v75[11] = v36;
          v37 = *(v33 + 5);
          v75[4] = *(v33 + 4);
          v75[5] = v37;
          v38 = *(v33 + 7);
          v75[6] = *(v33 + 6);
          v75[7] = v38;
          v39 = *(v33 + 1);
          v75[0] = *v33;
          v75[1] = v39;
          v40 = *(v33 + 3);
          v75[2] = *(v33 + 2);
          v75[3] = v40;
          result = sub_1CEFCCC44(v75, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          v41 = v72;
          *(v33 + 12) = v71;
          *(v33 + 13) = v41;
          *(v33 + 14) = v73;
          *(v33 + 30) = v74;
          v42 = v68;
          *(v33 + 8) = v67;
          *(v33 + 9) = v42;
          v43 = v70;
          *(v33 + 10) = v69;
          *(v33 + 11) = v43;
          v44 = v64;
          *(v33 + 4) = v63;
          *(v33 + 5) = v44;
          v45 = v66;
          *(v33 + 6) = v65;
          *(v33 + 7) = v45;
          v46 = v60;
          *v33 = v59;
          *(v33 + 1) = v46;
          v47 = v62;
          *(v33 + 2) = v61;
          *(v33 + 3) = v47;
          v48 = *&a3[qword_1EDEBBD80];
          v49 = __OFADD__(v23, v48);
          v50 = v23 + v48;
          if (!v49)
          {
            v51 = v50 + 1;
            v32 = v55;
            if (!__OFADD__(v50, 1))
            {
              result = [a2 unsignedLongAtIndex_];
              if (!__OFADD__(v51, 1))
              {
                v52 = result;
                v53 = [a2 unsignedLongAtIndex_];
                v54 = &v22[v11[15]];
                *v54 = v52;
                *(v54 + 1) = v53;
                v54[16] = 0;
                v31 = v57;
                goto LABEL_14;
              }

LABEL_27:
              __break(1u);
              return result;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_21;
      }

      v56 = 0;
    }

    else
    {
      v56 = 0;
      if (v79)
      {
        v25 = *&a3[qword_1EDEBBD90];
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        result = [a2 unsignedLongAtIndex_];
        v79 = result;
        if (__OFADD__(v26, 1))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        result = [a2 unsignedLongAtIndex_];
        if (__OFADD__(v26, 2))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v27 = result;
        result = [a2 unsignedLongAtIndex_];
        if (__OFADD__(v26, 3))
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v28 = result;
        v29 = [a2 unsignedLongAtIndex_];
        v30 = &v19[v11[14]];
        *v30 = v79;
        *(v30 + 1) = v27;
        *(v30 + 2) = v28;
        *(v30 + 3) = v29;
        v30[32] = 0;
      }
    }

    v31 = v57;
    v32 = v55;
LABEL_14:
    (*(v31 + 16))(v32, v22, v11);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return (*(v31 + 8))(v22, v11);
  }

  return result;
}