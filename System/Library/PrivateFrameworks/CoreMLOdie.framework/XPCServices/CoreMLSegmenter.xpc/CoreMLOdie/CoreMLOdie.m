int main(int argc, const char **argv, const char **envp)
{
  v3 = *(*(sub_1002AEA80() - 8) + 64);
  __chkstk_darwin();
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (!v5)
  {
    qword_1002E3778 = 0;
    unk_1002E3780 = 0;
    __break(1u);
  }

  v6 = sub_1002AEAD0();
  v8 = v7;

  qword_1002E3778 = v6;
  unk_1002E3780 = v8;
  if (!v8)
  {
    __break(1u);
  }

  sub_1002AEA70();
  v9 = sub_1002AEAB0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  qword_1002E3788 = sub_1002AEAA0();
  dispatch_main();
}

uint64_t sub_100001120(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001140(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_10000117C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000011C8()
{
  sub_10000131C();
  result = sub_1002AEAC0();
  if (v2 >> 60 != 15)
  {
    sub_100001370(v1, v2);
    sub_100002318();
  }

  __break(1u);
  return result;
}

unint64_t sub_10000131C()
{
  result = qword_1002E01D0;
  if (!qword_1002E01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E01D0);
  }

  return result;
}

uint64_t sub_100001370(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100001384(a1, a2);
  }

  return a1;
}

uint64_t sub_100001384(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000013D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000013EC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000013EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100001440()
{
  result = qword_1002E01D8;
  if (!qword_1002E01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E01D8);
  }

  return result;
}

Swift::Int sub_1000014A4()
{
  sub_1002AEBA0();
  sub_1002AEBB0(0);
  return sub_1002AEBC0();
}

Swift::Int sub_100001510()
{
  sub_1002AEBA0();
  sub_1002AEBB0(0);
  return sub_1002AEBC0();
}

void sub_100001560(const void *a1, int a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v6 = sub_1002AEAE0();
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  cmlCreateSegmentAllOpsToDelegate(a2, a1, v6);
}

uint64_t sub_1000015C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12[0] = a1;
      v12[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if ((a5 & 0x1000000000000000) != 0)
      {
        v9 = a3;
        v10 = sub_1002AEAE0();
        LODWORD(a3) = v9;
        v6 = v10;
      }

      else
      {
        v6 = HIBYTE(a5) & 0xF;
        if ((a5 & 0x2000000000000000) == 0)
        {
          v6 = a4 & 0xFFFFFFFFFFFFLL;
        }
      }

      v7 = v12;
LABEL_12:
      cmlCreateSegmentAllOpsToDelegate(a3, v7, v6);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if ((a5 & 0x1000000000000000) != 0)
      {
        v13 = a3;
        v11 = sub_1002AEAE0();
        LODWORD(a3) = v13;
        v6 = v11;
        v7 = (v5 + 32);
      }

      else
      {
        v6 = HIBYTE(a5) & 0xF;
        if ((a5 & 0x2000000000000000) == 0)
        {
          v6 = a4 & 0xFFFFFFFFFFFFLL;
        }

        v7 = (v5 + 32);
      }

      goto LABEL_12;
    }
  }

  sub_1002AEAF0();
}

uint64_t *sub_10000171C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v11, 0, 14);
      v6 = *(a3 + 16);
      v5 = 0;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v4)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      v5 = BYTE6(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = *(a3 + 16);
LABEL_9:
      v9 = cmlDeserializeMlirModule(v6, v11, v5);

      return v9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v9 = sub_100001B90(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

  return v9;
}

void sub_100001880(uint64_t *a1, int a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1000013EC(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1002AF9C0;
      sub_1000013EC(0, 0xC000000000000000);
      sub_100001AE8(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_1000013EC(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  v9 = *a1;

  sub_1000013EC(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1002AF9C0;
  sub_1000013EC(0, 0xC000000000000000);
  sub_1002AEA30();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  v13 = sub_1002AE9E0();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_1002AEA10();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_16;
  }

  v19 = sub_1002AEA00();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  memset((v14 + v16), a2, v20);
  *a1 = __b;
  a1[1] = v10 | 0x8000000000000000;
}

void sub_100001AE8(int *a1, int a2)
{
  sub_1002AEA40();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_1002AE9E0();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_1002AEA10();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_1002AEA00();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t *sub_100001B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1002AE9E0();
  v8 = result;
  if (result)
  {
    result = sub_1002AEA10();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1002AEA00();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  return cmlDeserializeMlirModule(*(a4 + 16), v8, v11);
}

uint64_t sub_100001D54(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1002AEA20();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1002AE9F0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1002AEA50();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100001DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1002AE9E0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1002AEA10();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1002AEA00();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = cmlSerializeMlirModule(*(a4 + 16), v8 + v9, v13);
  if (result < 1)
  {
    v14 = result;
    sub_100002690();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    return v14;
  }

  return result;
}

uint64_t sub_100001EC4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      swift_retain_n();
      sub_1000013EC(v7, v6);
      *&v30 = v7;
      WORD4(v30) = v6;
      BYTE10(v30) = BYTE2(v6);
      BYTE11(v30) = BYTE3(v6);
      BYTE12(v30) = BYTE4(v6);
      BYTE13(v30) = BYTE5(v6);
      BYTE14(v30) = BYTE6(v6);
      v9 = cmlSerializeMlirModule(*(a2 + 16), &v30, BYTE6(v6));
      if (v9 <= 0)
      {
        sub_100002690();
        swift_allocError();
        *v21 = 1;
        swift_willThrow();
        v22 = v30;
        v23 = DWORD2(v30) | ((WORD6(v30) | (BYTE14(v30) << 16)) << 32);

        *a1 = v22;
        a1[1] = v23;
      }

      else
      {
        v10 = v30;
        v11 = DWORD2(v30) | ((WORD6(v30) | (BYTE14(v30) << 16)) << 32);
        v12 = v9;

        result = v12;
        *a1 = v10;
        a1[1] = v11;
      }

      return result;
    }

    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    swift_retain_n();
    sub_100001384(v7, v6);
    sub_1000013EC(v7, v6);
    *a1 = xmmword_1002AF9C0;
    sub_1000013EC(0, 0xC000000000000000);
    v19 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v19 < v7)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (sub_1002AE9E0() && __OFSUB__(v7, sub_1002AEA10()))
      {
LABEL_25:
        __break(1u);
      }

      v25 = sub_1002AEA20();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_1002AE9D0();

      v18 = v28;
      v3 = v2;
    }

    if (v19 >= v7)
    {

      v29 = sub_100001DF4(v7, v7 >> 32, v18, a2);

      *a1 = v7;
      a1[1] = v18 | 0x4000000000000000;
      if (!v3)
      {
        return v29;
      }

      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v8 == 2)
  {
    swift_retain_n();
    sub_100001384(v7, v6);
    sub_1000013EC(v7, v6);
    *&v30 = v7;
    *(&v30 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1002AF9C0;
    sub_1000013EC(0, 0xC000000000000000);
    sub_1002AEA30();
    v14 = *(&v30 + 1);
    v15 = *(v30 + 16);
    v16 = *(v30 + 24);

    v17 = sub_100001DF4(v15, v16, *(&v30 + 1), a2);
    if (v3)
    {
    }

    else
    {
      v24 = v17;

      result = v24;
    }

    *a1 = v30;
    a1[1] = v14 | 0x8000000000000000;
  }

  else
  {
    *(&v30 + 7) = 0;
    *&v30 = 0;
    result = cmlSerializeMlirModule(*(a2 + 16), &v30, 0);
    if (result < 1)
    {
      sub_100002690();
      swift_allocError();
      *v20 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10000263C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002690()
{
  result = qword_1002E0280;
  if (!qword_1002E0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0280);
  }

  return result;
}

unint64_t sub_1000026F0()
{
  result = qword_1002E0288;
  if (!qword_1002E0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreMLSegmenter.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CoreMLSegmenter.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100002854()
{
  result = qword_1002E0290;
  if (!qword_1002E0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0290);
  }

  return result;
}

uint64_t sub_1000028A8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000028C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000028EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000028F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100002940(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

Swift::Int sub_1000029A8()
{
  v1 = *v0;
  sub_1002AEBA0();
  sub_1002AEBB0(v1);
  return sub_1002AEBC0();
}

Swift::Int sub_100002A1C()
{
  v1 = *v0;
  sub_1002AEBA0();
  sub_1002AEBB0(v1);
  return sub_1002AEBC0();
}

unint64_t sub_100002A60()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x7942656C75646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_100002AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7942656C75646F6DLL && a2 == 0xEE0065646F636574;
  if (v6 || (sub_1002AEB50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002B15B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1002AEB50();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100002BB0(uint64_t a1)
{
  v2 = sub_100003150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002BEC(uint64_t a1)
{
  v2 = sub_100003150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002C28(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v9 = sub_10000263C(&qword_1002E02B8, &qword_1002AFBE0);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9, v12);
  v14 = v17 - v13;
  v15 = a1[4];
  sub_10000310C(a1, a1[3]);
  sub_100003150();
  sub_1002AEBE0();
  v18 = a2;
  v19 = a3;
  v20 = 0;
  sub_100001370(a2, a3);
  sub_100001440();
  sub_1002AEB20();
  sub_1000013D8(v18, v19);
  if (!v5)
  {
    LOBYTE(v18) = 1;
    sub_1002AEB30();
  }

  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_100002DC4(uint64_t a1, uint64_t a2)
{
  result = sub_1000013D8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100002DFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100002ED0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100002E4C(uint64_t a1)
{
  *(a1 + 8) = sub_10000131C();
  result = sub_100002E7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100002E7C()
{
  result = qword_1002E0298;
  if (!qword_1002E0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0298);
  }

  return result;
}

uint64_t sub_100002ED0(uint64_t *a1)
{
  v3 = sub_10000263C(&qword_1002E02A0, &qword_1002AFBD8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v12 - v6;
  v8 = a1[4];
  sub_10000310C(a1, a1[3]);
  sub_100003150();
  sub_1002AEBD0();
  if (v1)
  {
    v10 = 0;
    sub_1000031A4(a1);
    sub_1000013D8(0, 0xF000000000000000);
  }

  else
  {
    v13 = 0;
    sub_1000031F0();
    sub_1002AEB00();
    v10 = v12[0];
    v11 = v12[1];
    sub_1000013D8(0, 0xF000000000000000);
    LOBYTE(v12[0]) = 1;
    sub_1002AEB10();
    (*(v4 + 8))(v7, v3);
    sub_100001370(v10, v11);

    sub_1000031A4(a1);
    sub_1000013D8(v10, v11);
  }

  return v10;
}

void *sub_10000310C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100003150()
{
  result = qword_1002E02A8;
  if (!qword_1002E02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E02A8);
  }

  return result;
}

uint64_t sub_1000031A4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000031F0()
{
  result = qword_1002E02B0;
  if (!qword_1002E02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E02B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreMLSegmenterInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreMLSegmenterInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000033B8()
{
  result = qword_1002E02C0;
  if (!qword_1002E02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E02C0);
  }

  return result;
}

unint64_t sub_100003410()
{
  result = qword_1002E02C8;
  if (!qword_1002E02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E02C8);
  }

  return result;
}

unint64_t sub_100003468()
{
  result = qword_1002E02D0[0];
  if (!qword_1002E02D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002E02D0);
  }

  return result;
}

uint64_t sub_1000034C0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100003560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a2);
  v8 = &v17 - v7;
  v10 = v2 + *(v9 + 96);
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = *(v9 + 88);
  (*(v5 + 16))(&v17 - v7, v3 + v13, v4);

  v12(v8);

  v14 = *(v5 + 8);
  v14(v8, v4);
  v14((v3 + v13), v4);
  v15 = *(v10 + 8);

  return v3;
}

uint64_t sub_1000036C0(uint64_t a1, uint64_t a2)
{
  sub_100003560(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_100003730()
{
  mlirModuleDestroy(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for MLIRErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLIRErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003920()
{
  result = qword_1002E0400;
  if (!qword_1002E0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0400);
  }

  return result;
}

uint64_t *cmlDeserializeMlirModule(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3 >= 1)
  {
    return mlirModuleCreateParse(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t cmlSerializeMlirModule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = -1;
  if (a1)
  {
    if (a2)
    {
      Operation = mlirModuleGetOperation(a1);
      v8[0] = a2;
      v8[1] = a3;
      v8[2] = 0;
      v9 = 0;
      mlirOperationWriteBytecode(Operation, sub_100003A1C, v8);
    }
  }

  return result;
}

void *sub_100003A1C(void *__src, size_t __n, uint64_t a3)
{
  if ((*(a3 + 24) & 1) == 0)
  {
    v3 = *(a3 + 16);
    if (v3 + __n <= *(a3 + 8))
    {
      __src = memcpy((*a3 + v3), __src, __n);
      *(a3 + 16) += __n;
    }

    else
    {
      *(a3 + 24) = 1;
    }
  }

  return __src;
}

uint64_t cmlPopulateDialectRegistry(uint64_t a1)
{
  v3[0] = off_1002D18A0;
  v4 = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, "coreml", 6uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  v3[0] = off_1002D18E8;
  v4 = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id, "coremlax", 8uLL, v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void cmlCreateSegmentAllOpsToDelegate(int a1, const void *a2, size_t __len)
{
  if (__len < 0x7FFFFFFFFFFFFFF8)
  {
    if (__len < 0x17)
    {
      v5 = __len;
      if (__len)
      {
        memmove(&__dst, a2, __len);
      }

      *(&__dst + __len) = 0;
      sub_1000055A0(&__dst);
    }

    operator new();
  }

  sub_100003FC0();
}

void *sub_100003FD0(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100003FC0();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

_BYTE *sub_10000408C(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_100003FC0();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

void **sub_10000415C(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    sub_100003FC0();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

uint64_t sub_10000428C(uint64_t a1, uint64_t (**a2)(), uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v10[0] = a3;
  v10[1] = a4;
  v13 = a2;
  v14 = 0;
  v7 = sub_1000047C8(a1, v10, &v13, a5);
  *(v7 + 232) = 0;
  *v7 = &off_1002D19F0;
  *(v7 + 224) = off_1002D1A70;
  v13 = (v7 + 224);
  sub_100004988((a2 + 20), &v13);
  v11[0] = off_1002D1B18;
  v11[1] = a1;
  v15 = &v13;
  v12 = v11;
  v13 = off_1002D1B18;
  v14 = a1;
  sub_100004D6C(&v13, a1 + 192);
  if (v15 != &v13)
  {
    if (v15)
    {
      (*(*v15 + 5))();
    }

    v8 = v12;
    if (v12 != v11)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v8 + 32))(v8);
    return a1;
  }

  (*(*v15 + 4))(v15);
  v8 = v12;
  if (v12 == v11)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  return a1;
}

void sub_100004478(uint64_t a1)
{
  sub_100005088(a1);

  operator delete();
}

void *sub_1000044B4(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:

  return sub_100005224(this, a1 + 184, (a1 + 120));
}

void **sub_100004574(char *a1, uint64_t a2)
{
  result = (a1 + 120);
  if (result == (a2 - 104))
  {
    goto LABEL_5;
  }

  v5 = *(a2 - 81);
  if (a1[143] < 0)
  {
    if (v5 >= 0)
    {
      v7 = (a2 - 104);
    }

    else
    {
      v7 = *(a2 - 104);
    }

    if (v5 >= 0)
    {
      v8 = *(a2 - 81);
    }

    else
    {
      v8 = *(a2 - 96);
    }

    result = sub_10000415C(result, v7, v8);
    a1[232] = *(a2 + 8);
  }

  else
  {
    if ((*(a2 - 81) & 0x80) == 0)
    {
      v6 = *(a2 - 104);
      result[2] = *(a2 - 88);
      *result = v6;
LABEL_5:
      a1[232] = *(a2 + 8);
      return result;
    }

    result = sub_10000408C(result, *(a2 - 104), *(a2 - 96));
    a1[232] = *(a2 + 8);
  }

  return result;
}

void sub_100004620(uint64_t a1)
{
  sub_100005088(a1 - 224);

  operator delete();
}

void *sub_10000465C(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 208);
  v5 = *(a1 - 200);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:

  return sub_100005224(this, a1 - 40, (a1 - 104));
}

void **sub_100004724(void **result, uint64_t a2)
{
  v3 = result;
  if (result == a2)
  {
    goto LABEL_5;
  }

  result -= 13;
  v4 = *(a2 - 81);
  if (*(v3 - 81) < 0)
  {
    if (v4 >= 0)
    {
      v6 = (a2 - 104);
    }

    else
    {
      v6 = *(a2 - 104);
    }

    if (v4 >= 0)
    {
      v7 = *(a2 - 81);
    }

    else
    {
      v7 = *(a2 - 96);
    }

    result = sub_10000415C(result, v6, v7);
    *(v3 + 8) = *(a2 + 8);
  }

  else
  {
    if ((*(a2 - 81) & 0x80) == 0)
    {
      v5 = *(a2 - 104);
      *(v3 - 11) = *(a2 - 88);
      *result = v5;
LABEL_5:
      *(v3 + 8) = *(a2 + 8);
      return result;
    }

    result = sub_10000408C(result, *(a2 - 104), *(a2 - 96));
    *(v3 + 8) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_1000047C8(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  *a1 = &off_1002D4220;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v13 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v13;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 144) = off_1002D4288;
  *(a1 + 152) = 0;
  *a1 = &off_1002D43D0;
  *(a1 + 184) = off_1002D4338;
  *(a1 + 192) = off_1002D1AD0;
  *(a1 + 216) = a1 + 192;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  sub_100004C3C(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void sub_100004988(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_100003FC0();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_100003FC0();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_100004AA4(uint64_t a1)
{
  sub_100005088(a1);

  operator delete();
}

void sub_100004AE4(uint64_t a1)
{
  sub_100005088(a1 - 224);

  operator delete();
}

BOOL sub_100004B20(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1 || *(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  v9 = (a2 + 8);
  if (v2 < 0)
  {
    v6 = v7;
  }

  v10 = *v9;
  if (v5 >= 0)
  {
    v11 = (a2 + 8);
  }

  else
  {
    v11 = *v9;
  }

  return memcmp(v6, v11, v3) == 0;
}

const void **sub_100004C3C(const void **result, uint64_t a2)
{
  v3 = *result;
  if (!*result)
  {
    v8 = result[1];
    if (!v8)
    {
      return result;
    }

    v9 = *(v8 + 2);
    if (!v9)
    {
      return result;
    }

    v10 = *v8;
    v11 = &(*v8)[v9];
    while (1)
    {
      v12 = *v10;
      if (*(a2 + 108) != 1)
      {
        goto LABEL_15;
      }

      v13 = *(a2 + 88);
      v14 = *(a2 + 100);
      if (v14)
      {
        v15 = 8 * v14;
        v16 = *(a2 + 88);
        while (*v16 != v12)
        {
          ++v16;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_16;
      }

LABEL_22:
      if (v14 < *(a2 + 96))
      {
        *(a2 + 100) = v14 + 1;
        *(v13 + 8 * v14) = v12;
      }

      else
      {
LABEL_15:
        result = llvm::SmallPtrSetImplBase::insert_imp_big((a2 + 88), v12);
      }

LABEL_16:
      if (++v10 == v11)
      {
        return result;
      }
    }
  }

  if (*(a2 + 108) != 1)
  {
LABEL_9:

    return llvm::SmallPtrSetImplBase::insert_imp_big((a2 + 88), v3);
  }

  v4 = *(a2 + 88);
  v5 = *(a2 + 100);
  if (!v5)
  {
LABEL_7:
    if (v5 < *(a2 + 96))
    {
      *(a2 + 100) = v5 + 1;
      *(v4 + 8 * v5) = v3;
      return result;
    }

    goto LABEL_9;
  }

  v6 = 8 * v5;
  v7 = *(a2 + 88);
  while (*v7 != v3)
  {
    ++v7;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_100004D6C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t sub_10000504C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002D1B18;
  a2[1] = v2;
  return result;
}

uint64_t sub_100005088(uint64_t a1)
{
  *a1 = &off_1002D43D0;
  v2 = a1 + 192;
  v3 = *(a1 + 216);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 144) = &off_1002D1AB0;
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 144) = &off_1002D1AB0;
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 143) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  operator delete(*(a1 + 152));
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
LABEL_6:
    *a1 = &off_1002D4220;
    if (*(a1 + 108))
    {
      goto LABEL_7;
    }

LABEL_13:
    free(*(a1 + 88));
    v4 = *(a1 + 64);
    if (v4 == (a1 + 80))
    {
      return a1;
    }

    goto LABEL_8;
  }

LABEL_12:
  operator delete(*(a1 + 120));
  *a1 = &off_1002D4220;
  if ((*(a1 + 108) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v4 = *(a1 + 64);
  if (v4 != (a1 + 80))
  {
LABEL_8:
    free(v4);
  }

  return a1;
}

void *sub_100005224(llvm::raw_ostream *this, uint64_t a2, void **a3)
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  if (v4 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (!v5)
  {
    goto LABEL_25;
  }

  v8 = memchr(v6, 32, v5);
  v9 = memchr(v6, 123, v5);
  if (v9)
  {
    v10 = v9 - v6;
  }

  else
  {
    v10 = -1;
  }

  v11 = memchr(v6, 39, v5);
  if (v11)
  {
    v12 = v11 - v6;
  }

  else
  {
    v12 = -1;
  }

  v13 = memchr(v6, 34, v5);
  v14 = v13 - v6;
  if (!v13)
  {
    v14 = -1;
  }

  if (v12 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (v14 >= v15)
  {
    v14 = v15;
  }

  if (v8 && v8 - v6 < v14)
  {
    v16 = *(this + 4);
    if (*(this + 3) == v16)
    {
      llvm::raw_ostream::write(this, "{", 1uLL);
    }

    else
    {
      *v16 = 123;
      ++*(this + 4);
    }

    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = a3[1];
    }

    result = llvm::raw_ostream::write(this, v22, v23);
    v24 = *(this + 4);
    if (*(this + 3) != v24)
    {
      *v24 = 125;
      ++*(this + 4);
      return result;
    }

    v18 = "}";
    v17 = this;
    v19 = 1;
  }

  else
  {
LABEL_25:
    v17 = this;
    v18 = v6;
    v19 = v5;
  }

  return llvm::raw_ostream::write(v17, v18, v19);
}

uint64_t sub_1000053C4(uint64_t a1)
{
  *a1 = off_1002D8170;
  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  if (*(a1 + 284))
  {
    v3 = *(a1 + 280);
    if (v3)
    {
      v4 = 0;
      v5 = 8 * v3;
      do
      {
        v6 = *(*(a1 + 272) + v4);
        if (v6 != -8 && v6 != 0)
        {
          llvm::deallocate_buffer(v6, (*v6 + 17), 8uLL);
        }

        v4 += 8;
      }

      while (v5 != v4);
    }
  }

  free(*(a1 + 272));
  v8 = *(a1 + 224);
  if (v8 != (a1 + 240))
  {
    free(v8);
  }

  v9 = *(a1 + 176);
  if (v9 != (a1 + 192))
  {
    free(v9);
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    *(a1 + 128) = v10;
    operator delete(v10);
  }

  if (*(a1 + 112) == 1 && (*(a1 + 76) & 1) == 0)
  {
    free(*(a1 + 56));
  }

  return a1;
}

void sub_1000054D4(mlir::RewriterBase *a1)
{
  mlir::RewriterBase::~RewriterBase(a1);

  operator delete();
}

uint64_t *sub_10000550C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      if (*(result + 33) != 1)
      {
        LOBYTE(v3) = 2;
        v7 = result;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = v7;
      *(a3 + 8) = v8;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

void sub_1000055A0(uint64_t a1)
{
  *__p = *a1;
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_1000055F8();
}

uint64_t sub_100005830(void *a1)
{
  *a1 = off_1002D1C30;
  sub_100005088((a1 + 42));

  return sub_1000053C4(a1);
}

void sub_100005888(void *a1)
{
  *a1 = off_1002D1C30;
  sub_100005088((a1 + 42));
  sub_1000053C4(a1);

  operator delete();
}

uint64_t sub_100005904(uint64_t a1, uint64_t a2)
{
  v3[0] = off_1002D18A0;
  v4 = v3;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, "coreml", 6uLL, v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void sub_100005A14(uint64_t a1)
{
  v2 = *(a1 + 40) & 0xFFFFFFFFFFFFFFF8;
  v8[1] = mlir::Attribute::getContext((v2 + 24));
  memset(&v8[2], 0, 24);
  v8[0] = &off_1002D1B60;
  v7 = 0;
  if (v2)
  {
    v3 = sub_100005CD8(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 479);
  if (v4 >= 0)
  {
    v5 = a1 + 456;
  }

  else
  {
    v5 = *(a1 + 456);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 479);
  }

  else
  {
    v6 = *(a1 + 464);
  }

  if ((mlir::ODIE::Compiler::Transforms::segmentFunctionOpInterfaceForDelegate(v2, v3, sub_100005F84, &v7, v5, v6, v8) & 1) == 0)
  {
    *(a1 + 40) |= 4uLL;
  }

  mlir::RewriterBase::~RewriterBase(v8);
}

BOOL sub_100005AE4(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  Value = mlir::StringAttr::getValue(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(Value, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t sub_100005CD8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      sub_100298AE0();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    v5 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    sub_100298A8C();
    v3 = v21;
    a1 = v22;
    v4 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    v5 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    sub_100298A8C();
    v4 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    v18 = v23;
  }

  v19 = v4[7];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_100005EBC()
{
  {
    sub_100298B20();
  }

  return llvm::getTypeName<mlir::FunctionOpInterface>(void)::Name;
}

const char *sub_100005F04()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FunctionOpInterface]";
  v6 = 87;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL sub_100005F84(uint64_t a1, uint64_t a2)
{
  v6 = *(*(a2 + 48) + 8);
  Value = mlir::StringAttr::getValue(&v6);
  result = 1;
  if (v3 >= 0xA && *Value == 0x6C2E6C6D65726F63 && *(Value + 8) == 28524)
  {
    return 0;
  }

  return result;
}

const char *llvm::itanium_demangle::parse_discriminator(const char *this, const char *a2, const char *a3)
{
  if (this != a2)
  {
    v3 = *this;
    if (v3 == 95)
    {
      if (this + 1 != a2)
      {
        v4 = this[1];
        if ((v4 & 0x8000000000000000) == 0)
        {
          if ((_DefaultRuneLocale.__runetype[v4] & 0x400) != 0)
          {
            this += 2;
          }

          else if (v4 == 95)
          {
            v5 = (this + 2);
            if (this + 2 != a2)
            {
              while (1)
              {
                v6 = *v5;
                if (v6 < 0 || (_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
                {
                  break;
                }

                if (++v5 == a2)
                {
                  return this;
                }
              }

              if (v6 == 95)
              {
                return v5 + 1;
              }
            }
          }
        }
      }
    }

    else if ((v3 & 0x80) == 0 && (_DefaultRuneLocale.__runetype[v3] & 0x400) != 0)
    {
      v7 = this + 1;
      while (v7 != a2)
      {
        v8 = *v7;
        if ((v8 & 0x8000000000000000) == 0)
        {
          ++v7;
          if ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
          {
            continue;
          }
        }

        return this;
      }

      return a2;
    }
  }

  return this;
}

uint64_t llvm::itaniumDemangle()
{
  v0 = __chkstk_darwin();
  if (!v1)
  {
    return 0;
  }

  v15[0] = v0;
  v15[1] = v0 + v1;
  v16 = v19;
  v17 = v19;
  v18 = v20;
  memset(v19, 0, sizeof(v19));
  v20[0] = v21;
  v20[1] = v21;
  memset(v21, 0, sizeof(v21));
  v20[2] = v22;
  v22[0] = v23;
  v22[1] = v23;
  v22[2] = v24;
  memset(v23, 0, sizeof(v23));
  v24[0] = v25;
  v24[1] = v25;
  v24[2] = v26;
  memset(v25, 0, sizeof(v25));
  v26[0] = v27;
  v26[1] = v27;
  v26[2] = &v28;
  memset(v27, 0, sizeof(v27));
  v28 = 1;
  v29 = 0;
  v30 = -1;
  v32 = 0;
  v31 = 0;
  v33[0] = 0u;
  v34 = v33;
  sub_1000063D4(v15, v2);
  v4 = v3;
  if (v3)
  {
    v12 = 0;
    v11 = 0u;
    v13 = -1;
    v14 = 1;
    (*(*v3 + 32))(v3, &v11);
    if ((*(v4 + 9) & 0xC0) != 0x40)
    {
      (*(*v4 + 40))(v4, &v11);
    }

    v6 = *(&v11 + 1);
    v5 = v11;
    if (*(&v11 + 1) + 1 > v12)
    {
      if (2 * v12 <= *(&v11 + 1) + 993)
      {
        v7 = *(&v11 + 1) + 993;
      }

      else
      {
        v7 = 2 * v12;
      }

      v12 = v7;
      v5 = malloc_type_realloc(v11, v7, 0x100004077774924uLL);
      *&v11 = v5;
      if (!v5)
      {
        abort();
      }

      v6 = *(&v11 + 1);
    }

    v5[v6] = 0;
    v4 = v11;
  }

  v8 = v34;
  if (v34)
  {
    do
    {
      while (1)
      {
        v9 = *v8;
        v34 = *v8;
        if (v8 == v33)
        {
          break;
        }

        free(v8);
        v8 = v34;
        if (!v34)
        {
          goto LABEL_17;
        }
      }

      v8 = v9;
    }

    while (v9);
  }

LABEL_17:
  v33[0] = 0uLL;
  v34 = v33;
  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  if (v16 != v19)
  {
    free(v16);
  }

  return v4;
}

void sub_1000063D4(uint64_t a1, size_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) - *a1;
  if (v4 < 2)
  {
    goto LABEL_15;
  }

  if (*v3 == 23135)
  {
    *a1 = v3 + 2;
    v7 = sub_10000697C(a1, a2);
    if (!v7)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v4 == 2)
  {
LABEL_15:
    sub_1000074E8(a1, a2);
    v5 = *(a1 + 8) == *a1;
    return;
  }

  v5 = *v3 == 24415 && v3[2] == 90;
  if (v5)
  {
    *a1 = v3 + 3;
    v7 = sub_10000697C(a1, a2);
    if (!v7)
    {
      return;
    }

LABEL_20:
    v9 = *a1;
    v8 = *(a1 + 8);
    v10 = v8 - *a1;
    if (v8 != *a1 && *v9 == 46)
    {
      v11 = *(a1 + 4904);
      v12 = v11[1];
      if ((v12 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v13 = v7;
        v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v14)
        {
          std::terminate();
        }

        v11 = v14;
        v12 = 0;
        *v14 = *(a1 + 4904);
        v14[1] = 0;
        *(a1 + 4904) = v14;
        v7 = v13;
      }

      v11[1] = v12 + 48;
      v15 = v11 + v12;
      v15[24] = 1;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002D3AD0;
      *(v15 + 4) = v7;
      *(v15 + 5) = v9;
      *(v15 + 6) = v10;
      *a1 = *(a1 + 8);
    }

    return;
  }

  if (v4 < 4)
  {
    goto LABEL_15;
  }

  if (*v3 == 1516199775)
  {
    v16 = 4;
  }

  else
  {
    if (v4 == 4)
    {
      goto LABEL_15;
    }

    if (*v3 != 1600085855 || v3[4] != 90)
    {
      goto LABEL_15;
    }

    v16 = 5;
  }

  *a1 = &v3[v16];
  v27 = sub_10000697C(a1, a2);
  if (v27)
  {
    v18 = *a1;
    v17 = *(a1 + 8);
    if (&v17[-*a1] >= 0xD && *v18 == 0x695F6B636F6C625FLL && *(v18 + 5) == 0x656B6F766E695F6BLL)
    {
      v20 = v18 + 13;
      *a1 = v18 + 13;
      if (v18 + 13 == v17 || *v20 != 95)
      {
        v21 = 0;
      }

      else
      {
        v20 = v18 + 14;
        *a1 = v18 + 14;
        v21 = 1;
      }

      if (v17 == v20 || (v22 = *v20, v22 < 0) || (_DefaultRuneLocale.__runetype[v22] & 0x400) == 0)
      {
        if (v21)
        {
          return;
        }
      }

      else
      {
        v23 = v20;
        while (1)
        {
          v24 = *v23;
          if (v24 < 0 || (_DefaultRuneLocale.__runetype[v24] & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v23;
          if (v23 == v17)
          {
            v25 = v17;
            goto LABEL_55;
          }
        }

        v25 = v23;
LABEL_55:
        v26 = v25 == v20;
        v20 = v23;
        if (v21 & v26)
        {
          return;
        }
      }

      if (v17 != v20)
      {
        if (*v20 != 46)
        {
          return;
        }

        *a1 = v17;
      }

      sub_100007414(a1, "invocation function for block in ", &v27);
    }
  }
}

void *sub_100006714(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 + a3 <= (*(a1 + 9) << 26 >> 26))
  {
    ++*(a2 + 32);
    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = v9 + 1;
    v11 = *(a2 + 16);
    if (v9 + 1 > v11)
    {
      v12 = v9 + 993;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = 2 * v11;
      }

      *(a2 + 16) = v13;
      v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
      *a2 = v8;
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(a2 + 8);
      v10 = v9 + 1;
    }

    *(a2 + 8) = v10;
    *(v8 + v9) = 40;
    (*(*a1 + 32))(a1, a2);
    if ((*(a1 + 9) & 0xC0) != 0x40)
    {
      (*(*a1 + 40))(a1, a2);
    }

    --*(a2 + 32);
    result = *a2;
    v14 = *(a2 + 8);
    v15 = v14 + 1;
    v16 = *(a2 + 16);
    if (v14 + 1 <= v16)
    {
      goto LABEL_20;
    }

    v17 = v14 + 993;
    if (2 * v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 2 * v16;
    }

    *(a2 + 16) = v18;
    result = malloc_type_realloc(result, v18, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v14 = *(a2 + 8);
      v15 = v14 + 1;
LABEL_20:
      *(a2 + 8) = v15;
      *(result + v14) = 41;
      return result;
    }

LABEL_22:
    abort();
  }

  result = (*(*a1 + 32))(a1, a2);
  if ((*(a1 + 9) & 0xC0) != 0x40)
  {
    v7 = *(*a1 + 40);

    return v7(a1, a2);
  }

  return result;
}

uint64_t sub_100006900(const void **a1, const void *a2, size_t a3)
{
  v3 = *a1;
  if (a3 > a1[1] - *a1)
  {
    return 0;
  }

  if (memcmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v3[a3];
  return 1;
}

char *sub_10000697C(char **a1, char a2)
{
  sub_100009304(v113, a1);
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (v6 != *a1)
  {
    v8 = *v5;
    if (v8 != 71)
    {
      if (v8 == 84)
      {
        if (v7 >= 2)
        {
          v9 = v5[1];
          if (v9 <= 0x52)
          {
            if (v5[1] > 0x47u)
            {
              if (v9 == 72)
              {
                *a1 = v5 + 2;
                v109 = sub_1000094F0(a1, 0);
                if (v109)
                {
                  v10 = sub_10000AE40(a1, &v109);
                  goto LABEL_154;
                }

                goto LABEL_155;
              }

              if (v9 == 73)
              {
                *a1 = v5 + 2;
                sub_1000074E8(a1, v4);
                v109 = v66;
                if (v66)
                {
                  v10 = sub_10000A928(a1, &v109);
                  goto LABEL_154;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v9 == 65)
              {
                *a1 = v5 + 2;
                sub_100009C7C(a1);
                v109 = v70;
                if (v70)
                {
                  v10 = sub_10000A6D0(a1, &v109);
                  goto LABEL_154;
                }

                goto LABEL_155;
              }

              if (v9 == 67)
              {
                *a1 = v5 + 2;
                sub_1000074E8(a1, v4);
                v109 = v42;
                if (v42)
                {
                  sub_100007380(a1, 1);
                  if (v43)
                  {
                    v44 = *a1;
                    if (*a1 != a1[1] && *v44 == 95)
                    {
                      *a1 = v44 + 1;
                      sub_1000074E8(a1, v43);
                      v106.n128_u64[0] = v45;
                      if (v45)
                      {
                        v10 = sub_10000AD78(a1, &v106, &v109);
                        goto LABEL_154;
                      }
                    }
                  }
                }

                goto LABEL_155;
              }
            }
          }

          else if (v5[1] <= 0x55u)
          {
            if (v9 == 83)
            {
              *a1 = v5 + 2;
              sub_1000074E8(a1, v4);
              v109 = v72;
              if (v72)
              {
                v10 = sub_10000A9F0(a1, &v109);
                goto LABEL_154;
              }

              goto LABEL_155;
            }

            if (v9 == 84)
            {
              *a1 = v5 + 2;
              sub_1000074E8(a1, v4);
              v109 = v67;
              if (v67)
              {
                v10 = sub_10000A860(a1, &v109);
                goto LABEL_154;
              }

              goto LABEL_155;
            }
          }

          else
          {
            switch(v9)
            {
              case 'V':
                *a1 = v5 + 2;
                sub_1000074E8(a1, v4);
                v109 = v71;
                if (v71)
                {
                  v10 = sub_10000A798(a1, &v109);
                  goto LABEL_154;
                }

                goto LABEL_155;
              case 'W':
                *a1 = v5 + 2;
                v109 = sub_1000094F0(a1, 0);
                if (v109)
                {
                  v10 = sub_100007414(a1, "thread-local wrapper routine for ", &v109);
                  goto LABEL_154;
                }

                goto LABEL_155;
              case 'c':
                *a1 = v5 + 2;
                if ((sub_10000AAB8(a1) & 1) == 0 && (sub_10000AAB8(a1) & 1) == 0)
                {
                  v109 = sub_10000697C(a1, 1);
                  if (v109)
                  {
                    v10 = sub_10000ACB0(a1, &v109);
LABEL_154:
                    v13 = v10;
                    goto LABEL_156;
                  }
                }

                goto LABEL_155;
            }
          }
        }

        v68 = (v5 + 1);
        *a1 = v68;
        if (v6 == v68)
        {
          v69 = 0;
          if (sub_10000AAB8(a1))
          {
            goto LABEL_155;
          }
        }

        else
        {
          v69 = *v68 == 118;
          if (sub_10000AAB8(a1))
          {
            goto LABEL_155;
          }
        }

        v109 = sub_10000697C(a1, 1);
        if (v109)
        {
          if (v69)
          {
            v10 = sub_10000AF08(a1, &v109);
          }

          else
          {
            v10 = sub_10000AFD0(a1, &v109);
          }

          goto LABEL_154;
        }

LABEL_155:
        v13 = 0;
        goto LABEL_156;
      }

      goto LABEL_14;
    }

    if (v7 < 2)
    {
      goto LABEL_155;
    }

    v27 = v5[1];
    if (v27 == 73)
    {
      *a1 = v5 + 2;
      v109 = 0;
      v13 = 0;
      if (sub_10000B15C(a1, &v109))
      {
        goto LABEL_156;
      }

      v62 = v109;
      if (!v109)
      {
        goto LABEL_156;
      }

      v63 = a1[613];
      v64 = *(v63 + 1);
      if ((v64 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v63 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v63)
        {
          goto LABEL_158;
        }

        v64 = 0;
        *v63 = a1[613];
        *(v63 + 1) = 0;
        a1[613] = v63;
      }

      *(v63 + 1) = v64 + 48;
      v65 = &v63[v64];
      v13 = (v65 + 16);
      v65[24] = 21;
      *(v65 + 25) = *(v65 + 25) & 0xF000 | 0x540;
      *(v65 + 2) = off_1002D1CA0;
      *(v65 + 4) = "initializer for module ";
      *(v65 + 5) = 23;
      *(v65 + 6) = v62;
      goto LABEL_156;
    }

    if (v27 != 82)
    {
      if (v27 != 86)
      {
        goto LABEL_155;
      }

      *a1 = v5 + 2;
      v28 = sub_1000094F0(a1, 0);
      if (!v28)
      {
        goto LABEL_155;
      }

      v29 = a1[613];
      v30 = *(v29 + 1);
      if ((v30 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_32;
      }

      v31 = v28;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v32)
      {
        v29 = v32;
        v30 = 0;
        *v32 = a1[613];
        *(v32 + 1) = 0;
        a1[613] = v32;
        v28 = v31;
LABEL_32:
        *(v29 + 1) = v30 + 48;
        v33 = &v29[v30];
        v13 = (v33 + 16);
        v33[24] = 21;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = off_1002D1CA0;
        *(v33 + 4) = "guard variable for ";
        *(v33 + 5) = 19;
        *(v33 + 6) = v28;
        goto LABEL_156;
      }

LABEL_158:
      std::terminate();
    }

    *a1 = v5 + 2;
    v109 = sub_1000094F0(a1, 0);
    if (!v109)
    {
      goto LABEL_155;
    }

    v56 = *a1;
    v57 = a1[1];
    if (v57 == *a1 || *v56 < 48 || (v58 = *v56, v58 >= 0x3A) && v58 - 65 > 0x19)
    {
      v59 = 1;
      if (v56 == v57)
      {
        goto LABEL_83;
      }
    }

    else
    {
      do
      {
        if (*v56 < 48)
        {
          break;
        }

        v60 = *v56;
        v61 = v60 >= 0x3A && v60 - 65 > 0x19;
        if (v61)
        {
          break;
        }

        *a1 = ++v56;
      }

      while (v56 != v57);
      v59 = 0;
      if (v56 == v57)
      {
        goto LABEL_83;
      }
    }

    if (*v56 == 95)
    {
      *a1 = v56 + 1;
      goto LABEL_84;
    }

LABEL_83:
    if (!v59)
    {
      goto LABEL_155;
    }

LABEL_84:
    v10 = sub_10000B094(a1, &v109);
    goto LABEL_154;
  }

LABEL_14:
  v11 = a1[90];
  v12 = a1[91];
  LOWORD(v109) = 0;
  HIDWORD(v109) = 0;
  v110[0] = 0;
  v111 = (v12 - v11) >> 3;
  v112 = 0;
  v13 = sub_1000094F0(a1, &v109);
  v108 = v13;
  if (v13)
  {
    v14 = v111;
    v15 = a1[90];
    v16 = (a1[91] - v15) >> 3;
    if (v16 <= v111)
    {
      v19 = &v15[8 * v111];
    }

    else
    {
      v17 = a1[83];
      if (v17 == a1[84])
      {
        goto LABEL_155;
      }

      v18 = *v17;
      if (!*v17)
      {
        goto LABEL_155;
      }

      v19 = &v15[8 * v111];
      v20 = *v19;
      v21 = *(*v19 + 16);
      v23 = v18;
      v22 = *v18;
      v24 = (v23[1] - v22) >> 3;
      if (v21 >= v24)
      {
        goto LABEL_155;
      }

      v25 = (v15 + 8);
      while (1)
      {
        *(v20 + 24) = *(v22 + 8 * v21);
        if (v16 - 1 == v14)
        {
          break;
        }

        v26 = v14 + 1;
        v20 = *&v25[8 * v14];
        v21 = *(v20 + 16);
        ++v14;
        if (v21 >= v24)
        {
          if (v26 >= v16)
          {
            goto LABEL_35;
          }

          goto LABEL_155;
        }
      }
    }

    a1[91] = v19;
LABEL_35:
    v35 = *a1;
    v34 = a1[1];
    if (v34 != *a1)
    {
      v36 = *v35 - 46;
      v61 = v36 > 0x31;
      v37 = (1 << v36) & 0x2000000800001;
      if (v61 || v37 == 0)
      {
        if (a2)
        {
          v107 = 0;
          if (sub_100006900(a1, "Ua9enable_ifI", 0xDuLL))
          {
            v40 = (a1[3] - a1[2]) >> 3;
            while (1)
            {
              v49 = *a1;
              if (*a1 != a1[1] && *v49 == 69)
              {
                break;
              }

              sub_100009C7C(a1);
              if (!v48)
              {
                goto LABEL_155;
              }

              v47 = a1[3];
              if (v47 == a1[4])
              {
                v50 = v48;
                v51 = a1[2];
                v52 = v47 - v51;
                if (v51 == (a1 + 5))
                {
                  v46 = malloc_type_malloc(2 * (v47 - v51), 0x2004093837F09uLL);
                  if (!v46)
                  {
LABEL_157:
                    abort();
                  }

                  v53 = a1[2];
                  v54 = a1[3];
                  if (v54 != v53)
                  {
                    v55 = v46;
                    memmove(v46, v53, v54 - v53);
                    v46 = v55;
                  }

                  a1[2] = v46;
                }

                else
                {
                  v46 = malloc_type_realloc(v51, 2 * (v47 - v51), 0x2004093837F09uLL);
                  a1[2] = v46;
                  if (!v46)
                  {
                    goto LABEL_157;
                  }
                }

                v47 = &v46[v52];
                a1[4] = &v46[8 * (v52 >> 2)];
                v48 = v50;
              }

              *v47 = v48;
              a1[3] = (v47 + 8);
            }

            *a1 = v49 + 1;
            v106.n128_u64[0] = sub_10000A1F8(a1, v40);
            v106.n128_u64[1] = v73;
            sub_10000A140(a1, &v106);
            v107 = v74;
          }

          v105 = 0;
          if ((v109 & 1) == 0 && BYTE1(v109) == 1)
          {
            sub_1000074E8(a1, v39);
            v105 = v75;
            if (!v75)
            {
              goto LABEL_155;
            }
          }

          v106 = 0uLL;
          v77 = *a1;
          v76 = a1[1];
          if (*a1 == v76 || *v77 != 118)
          {
            v80 = a1[2];
            v79 = a1[3];
            sub_1000074E8(a1, v39);
            v104 = v81;
            if (!v81)
            {
              goto LABEL_155;
            }

            v83 = v79 - v80;
            v84 = (v79 - v80) >> 3;
            v85 = 0x2004093837F09;
            v86 = (a1 + 5);
            while (1)
            {
              v87 = a1[3];
              if (v112 == 1 && v83 == v87 - a1[2])
              {
                v81 = sub_10000A304(a1, &v104);
                v87 = a1[3];
              }

              if (v87 == a1[4])
              {
                v89 = v81;
                v90 = a1[2];
                v91 = v87 - v90;
                if (v90 == v86)
                {
                  v92 = malloc_type_malloc(2 * (v87 - v90), v85);
                  if (!v92)
                  {
                    goto LABEL_157;
                  }

                  v82 = a1[2];
                  v93 = a1[3];
                  if (v93 != v82)
                  {
                    v94 = v86;
                    v95 = v84;
                    v96 = v85;
                    v97 = v92;
                    memmove(v92, v82, v93 - v82);
                    v92 = v97;
                    v85 = v96;
                    v84 = v95;
                    v86 = v94;
                  }

                  a1[2] = v92;
                }

                else
                {
                  v92 = malloc_type_realloc(v90, 2 * (v87 - v90), v85);
                  a1[2] = v92;
                  if (!v92)
                  {
                    goto LABEL_157;
                  }
                }

                v87 = &v92[v91];
                a1[4] = &v92[8 * (v91 >> 2)];
                v81 = v89;
              }

              *v87 = v81;
              a1[3] = (v87 + 8);
              if (a1[1] == *a1)
              {
                break;
              }

              v98 = **a1 - 46;
              v61 = v98 > 0x31;
              v99 = (1 << v98) & 0x2000800800001;
              if (!v61 && v99 != 0)
              {
                break;
              }

              sub_1000074E8(a1, v82);
              v104 = v81;
              if (!v81)
              {
                goto LABEL_155;
              }
            }

            v106.n128_u64[0] = sub_10000A1F8(a1, v84);
            v106.n128_u64[1] = v39;
            v78 = *a1;
            v76 = a1[1];
          }

          else
          {
            v78 = v77 + 1;
            *a1 = v78;
          }

          v104 = 0;
          if (v78 == v76 || *v78 != 81 || (*a1 = v78 + 1, v101 = *(a1 + 778), *(a1 + 778) = 1, sub_10000D7B4(a1, v39), *(a1 + 778) = v101, (v104 = v102) != 0))
          {
            sub_10000A3BC(a1, &v105, &v108, &v106, &v107, &v104, &v109 + 1, v110);
            goto LABEL_154;
          }

          goto LABEL_155;
        }

        do
        {
          if (v35 == v34)
          {
            break;
          }

          *a1 = (v35 + 1);
        }

        while (*v35++);
      }
    }
  }

LABEL_156:
  sub_10000A4C8(v113);
  return v13;
}

char *sub_100007380(char **a1, int a2)
{
  result = *a1;
  v4 = a1[1];
  v5 = result;
  if (a2)
  {
    if (result == v4)
    {
      return 0;
    }

    v5 = result;
    if (*result == 110)
    {
      v5 = result + 1;
      *a1 = result + 1;
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0 || (_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
  {
    return 0;
  }

  do
  {
    v7 = *v5;
    if (v7 < 0)
    {
      break;
    }

    if ((_DefaultRuneLocale.__runetype[v7] & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
  }

  while (v5 != v4);
  return result;
}

uint64_t sub_100007414(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = v6 + v7 + 16;
  v10 = strlen(__s);
  v11 = *a3;
  v8[24] = 21;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D1CA0;
  *(v8 + 4) = __s;
  *(v8 + 5) = v10;
  *(v8 + 6) = v11;
  return v9;
}

void sub_1000074E8(char **a1, size_t a2)
{
  v2 = a1;
  v124 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 == *a1)
  {
LABEL_144:
    v52 = sub_10001ED58(a1);
    goto LABEL_145;
  }

  v6 = *v3;
  v7 = 0;
  switch(*v3)
  {
    case 'A':
      *a1 = v3 + 1;
      v126 = 0;
      if (v4 == v3 + 1)
      {
        if ((_DefaultRuneLocale.__runetype[0] & 0x400) == 0)
        {
LABEL_183:
          sub_10000D7B4(a1, a2);
          if (!v52)
          {
            goto LABEL_145;
          }

          v100 = *v2;
          if (*v2 != *(v2 + 8) && *v100 == 95)
          {
            *v2 = v100 + 1;
            v126 = v52;
            goto LABEL_191;
          }

          goto LABEL_193;
        }

LABEL_187:
        v125.n128_u64[0] = sub_100007380(a1, 0);
        v125.n128_u64[1] = v101;
        sub_10000B994(v2, &v125);
        v126 = v102;
        v103 = *v2;
        if (*v2 != *(v2 + 8) && *v103 == 95)
        {
          v9 = v103 + 1;
          goto LABEL_190;
        }

LABEL_193:
        v52 = 0;
        goto LABEL_145;
      }

      v8 = v3[1];
      if (v8 < 0)
      {
        goto LABEL_183;
      }

      if ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
      {
        goto LABEL_187;
      }

      if (v8 != 95)
      {
        goto LABEL_183;
      }

      v9 = v3 + 2;
LABEL_190:
      *v2 = v9;
LABEL_191:
      v52 = sub_1000074E8(v2);
      v125.n128_u64[0] = v52;
      if (v52)
      {
        v52 = sub_100020D00(v2, &v125, &v126);
      }

LABEL_145:
      v124 = v52;
      if (v52)
      {
LABEL_146:
        v84 = *(v2 + 304);
        if (v84 == *(v2 + 312))
        {
LABEL_147:
          v85 = *(v2 + 296);
          v86 = v84 - v85;
          if (v85 == (v2 + 320))
          {
            v87 = malloc_type_malloc(2 * v86, 0x2004093837F09uLL);
            if (!v87)
            {
              goto LABEL_350;
            }

            v88 = *(v2 + 296);
            v89 = *(v2 + 304);
            if (v89 != v88)
            {
              v90 = v87;
              memmove(v87, v88, v89 - v88);
              v87 = v90;
            }

            *(v2 + 296) = v87;
          }

          else
          {
            v87 = malloc_type_realloc(v85, 2 * (v84 - v85), 0x2004093837F09uLL);
            *(v2 + 296) = v87;
            if (!v87)
            {
LABEL_350:
              abort();
            }
          }

          v84 = &v87[v86];
          *(v2 + 312) = &v87[8 * (v86 >> 2)];
          v52 = v124;
        }

LABEL_155:
        *v84 = v52;
        *(v2 + 304) = v84 + 1;
      }

      return;
    case 'C':
      *a1 = v3 + 1;
      v125.n128_u64[0] = sub_1000074E8(a1);
      if (!v125.n128_u64[0])
      {
        return;
      }

      v52 = sub_10001F0AC(v2, &v125);
      goto LABEL_160;
    case 'D':
      if (v5 < 2)
      {
        return;
      }

      break;
    case 'F':
      goto LABEL_198;
    case 'G':
      *a1 = v3 + 1;
      v125.n128_u64[0] = sub_1000074E8(a1);
      if (!v125.n128_u64[0])
      {
        return;
      }

      v52 = sub_10001F174(v2, &v125);
      goto LABEL_160;
    case 'K':
    case 'V':
      goto LABEL_60;
    case 'M':
      *a1 = v3 + 1;
      v52 = sub_1000074E8(a1);
      v125.n128_u64[0] = v52;
      if (v52)
      {
        v52 = sub_1000074E8(v2);
        v126 = v52;
        if (v52)
        {
          v52 = sub_100021744(v2, &v125, &v126);
        }
      }

      goto LABEL_145;
    case 'O':
      *a1 = v3 + 1;
      v125.n128_u64[0] = sub_1000074E8(a1);
      if (!v125.n128_u64[0])
      {
        return;
      }

      LODWORD(v126) = 1;
      goto LABEL_159;
    case 'P':
      *a1 = v3 + 1;
      v125.n128_u64[0] = sub_1000074E8(a1);
      if (!v125.n128_u64[0])
      {
        return;
      }

      v52 = sub_10001EF0C(v2, &v125);
      goto LABEL_160;
    case 'R':
      *a1 = v3 + 1;
      v125.n128_u64[0] = sub_1000074E8(a1);
      if (!v125.n128_u64[0])
      {
        return;
      }

      LODWORD(v126) = 0;
LABEL_159:
      v52 = sub_10001EFD0(v2, &v125, &v126);
      goto LABEL_160;
    case 'S':
      if (v5 >= 2 && v3[1] == 116)
      {
        goto LABEL_144;
      }

      LOBYTE(v126) = 0;
      v52 = sub_10000BCE4(a1, 0, &v126);
      v124 = v52;
      if (!v52)
      {
        return;
      }

      if (*(v2 + 8) == *v2)
      {
        v99 = v126;
      }

      else
      {
        v99 = v126;
        if (**v2 == 73)
        {
          if (v126)
          {
            if ((*(v2 + 776) & 1) == 0)
            {
              return;
            }
          }

          else
          {
            sub_10000A080((v2 + 296), &v124);
          }

          sub_10000BE9C(v2, 0);
          v125.n128_u64[0] = v107;
          if (v107)
          {
LABEL_204:
            v52 = sub_10000C484(v2, &v124, &v125);
            goto LABEL_160;
          }

          return;
        }
      }

      if ((v99 & 1) == 0)
      {
        goto LABEL_146;
      }

      return;
    case 'T':
      if (v5 >= 2)
      {
        v68 = v3[1] - 101;
        v51 = v68 > 0x10;
        v69 = (1 << v68) & 0x14001;
        if (!v51 && v69 != 0)
        {
          goto LABEL_144;
        }
      }

      v52 = sub_10000C54C(a1, a2);
      v124 = v52;
      if (!v52)
      {
        return;
      }

      if (*(v2 + 776) != 1 || *(v2 + 8) == *v2 || **v2 != 73)
      {
        goto LABEL_146;
      }

      sub_10000A080((v2 + 296), &v124);
      sub_10000BE9C(v2, 0);
      v125.n128_u64[0] = v71;
      if (!v71)
      {
        return;
      }

      goto LABEL_204;
    case 'U':
      goto LABEL_74;
    case 'a':
      *a1 = v3 + 1;
      v30 = a1[613];
      v31 = *(v30 + 1);
      if ((v31 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_35;
      }

      v30 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v30)
      {
        goto LABEL_349;
      }

      v31 = 0;
      *v30 = *(v2 + 4904);
      *(v30 + 1) = 0;
      *(v2 + 4904) = v30;
LABEL_35:
      *(v30 + 1) = v31 + 32;
      v32 = &v30[v31];
      v32[24] = 8;
      *(v32 + 25) = *(v32 + 25) & 0xF000 | 0x540;
      *(v32 + 2) = off_1002D1D60;
      v33 = "signed char";
      goto LABEL_48;
    case 'b':
      *a1 = v3 + 1;
      v94 = a1[613];
      v95 = *(v94 + 1);
      if ((v95 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_169;
      }

      v94 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v94)
      {
        goto LABEL_349;
      }

      v95 = 0;
      *v94 = *(v2 + 4904);
      *(v94 + 1) = 0;
      *(v2 + 4904) = v94;
LABEL_169:
      *(v94 + 1) = v95 + 32;
      v15 = &v94[v95];
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002D1D60;
      v16 = "BOOL";
      goto LABEL_170;
    case 'c':
      *a1 = v3 + 1;
      v34 = a1[613];
      v35 = *(v34 + 1);
      if ((v35 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_39;
      }

      v34 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v34)
      {
        goto LABEL_349;
      }

      v35 = 0;
      *v34 = *(v2 + 4904);
      *(v34 + 1) = 0;
      *(v2 + 4904) = v34;
LABEL_39:
      *(v34 + 1) = v35 + 32;
      v15 = &v34[v35];
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002D1D60;
      v16 = "char";
      goto LABEL_170;
    case 'd':
      *a1 = v3 + 1;
      v96 = a1[613];
      v97 = *(v96 + 1);
      if ((v97 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_174;
      }

      v96 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v96)
      {
        goto LABEL_349;
      }

      v97 = 0;
      *v96 = *(v2 + 4904);
      *(v96 + 1) = 0;
      *(v2 + 4904) = v96;
LABEL_174:
      *(v96 + 1) = v97 + 32;
      v98 = &v96[v97];
      v98[24] = 8;
      *(v98 + 25) = *(v98 + 25) & 0xF000 | 0x540;
      *(v98 + 2) = off_1002D1D60;
      *(v98 + 4) = "double";
      *(v98 + 5) = 6;
      return;
    case 'e':
      *a1 = v3 + 1;
      v39 = a1[613];
      v40 = *(v39 + 1);
      if ((v40 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_47;
      }

      v39 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v39)
      {
        goto LABEL_349;
      }

      v40 = 0;
      *v39 = *(v2 + 4904);
      *(v39 + 1) = 0;
      *(v2 + 4904) = v39;
LABEL_47:
      *(v39 + 1) = v40 + 32;
      v32 = &v39[v40];
      v32[24] = 8;
      *(v32 + 25) = *(v32 + 25) & 0xF000 | 0x540;
      *(v32 + 2) = off_1002D1D60;
      v33 = "long double";
LABEL_48:
      *(v32 + 4) = v33;
      *(v32 + 5) = 11;
      return;
    case 'f':
      *a1 = v3 + 1;
      v77 = a1[613];
      v78 = *(v77 + 1);
      if ((v78 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_132;
      }

      v77 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v77)
      {
        goto LABEL_349;
      }

      v78 = 0;
      *v77 = *(v2 + 4904);
      *(v77 + 1) = 0;
      *(v2 + 4904) = v77;
LABEL_132:
      *(v77 + 1) = v78 + 32;
      v58 = &v77[v78];
      v58[24] = 8;
      *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
      *(v58 + 2) = off_1002D1D60;
      v59 = "float";
      goto LABEL_133;
    case 'g':
      *a1 = v3 + 1;
      v27 = a1[613];
      v28 = *(v27 + 1);
      if ((v28 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_31;
      }

      v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v27)
      {
        goto LABEL_349;
      }

      v28 = 0;
      *v27 = *(v2 + 4904);
      *(v27 + 1) = 0;
      *(v2 + 4904) = v27;
LABEL_31:
      *(v27 + 1) = v28 + 32;
      v29 = &v27[v28];
      v29[24] = 8;
      *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
      *(v29 + 2) = off_1002D1D60;
      *(v29 + 4) = "__float128";
      *(v29 + 5) = 10;
      return;
    case 'h':
      *a1 = v3 + 1;
      v41 = a1[613];
      v42 = *(v41 + 1);
      if ((v42 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_52;
      }

      v41 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v41)
      {
        goto LABEL_349;
      }

      v42 = 0;
      *v41 = *(v2 + 4904);
      *(v41 + 1) = 0;
      *(v2 + 4904) = v41;
LABEL_52:
      *(v41 + 1) = v42 + 32;
      v43 = &v41[v42];
      v43[24] = 8;
      *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
      *(v43 + 2) = off_1002D1D60;
      v44 = "unsigned char";
      goto LABEL_57;
    case 'i':
      *a1 = v3 + 1;
      v75 = a1[613];
      v76 = *(v75 + 1);
      if ((v76 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_122;
      }

      v75 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v75)
      {
        goto LABEL_349;
      }

      v76 = 0;
      *v75 = *(v2 + 4904);
      *(v75 + 1) = 0;
      *(v2 + 4904) = v75;
LABEL_122:
      *(v75 + 1) = v76 + 32;
      v19 = &v75[v76];
      v19[24] = 8;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
      *(v19 + 2) = off_1002D1D60;
      v20 = "int";
      goto LABEL_123;
    case 'j':
      *a1 = v3 + 1;
      v53 = a1[613];
      v54 = *(v53 + 1);
      if ((v54 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_78;
      }

      v53 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v53)
      {
        goto LABEL_349;
      }

      v54 = 0;
      *v53 = *(v2 + 4904);
      *(v53 + 1) = 0;
      *(v2 + 4904) = v53;
LABEL_78:
      *(v53 + 1) = v54 + 32;
      v55 = &v53[v54];
      v55[24] = 8;
      *(v55 + 25) = *(v55 + 25) & 0xF000 | 0x540;
      *(v55 + 2) = off_1002D1D60;
      *(v55 + 4) = "unsigned int";
      *(v55 + 5) = 12;
      return;
    case 'l':
      *a1 = v3 + 1;
      v79 = a1[613];
      v80 = *(v79 + 1);
      if ((v80 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_137;
      }

      v79 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v79)
      {
        goto LABEL_349;
      }

      v80 = 0;
      *v79 = *(v2 + 4904);
      *(v79 + 1) = 0;
      *(v2 + 4904) = v79;
LABEL_137:
      *(v79 + 1) = v80 + 32;
      v15 = &v79[v80];
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002D1D60;
      v16 = "long";
      goto LABEL_170;
    case 'm':
      *a1 = v3 + 1;
      v45 = a1[613];
      v46 = *(v45 + 1);
      if ((v46 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_56;
      }

      v45 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v45)
      {
        goto LABEL_349;
      }

      v46 = 0;
      *v45 = *(v2 + 4904);
      *(v45 + 1) = 0;
      *(v2 + 4904) = v45;
LABEL_56:
      *(v45 + 1) = v46 + 32;
      v43 = &v45[v46];
      v43[24] = 8;
      *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
      *(v43 + 2) = off_1002D1D60;
      v44 = "unsigned long";
LABEL_57:
      *(v43 + 4) = v44;
      *(v43 + 5) = 13;
      return;
    case 'n':
      *a1 = v3 + 1;
      v24 = a1[613];
      v25 = *(v24 + 1);
      if ((v25 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_27;
      }

      v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v24)
      {
        goto LABEL_349;
      }

      v25 = 0;
      *v24 = *(v2 + 4904);
      *(v24 + 1) = 0;
      *(v2 + 4904) = v24;
LABEL_27:
      *(v24 + 1) = v25 + 32;
      v26 = &v24[v25];
      v26[24] = 8;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      *(v26 + 2) = off_1002D1D60;
      *(v26 + 4) = "__int128";
      *(v26 + 5) = 8;
      return;
    case 'o':
      *a1 = v3 + 1;
      v21 = a1[613];
      v22 = *(v21 + 1);
      if ((v22 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_23;
      }

      v21 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v21)
      {
        goto LABEL_349;
      }

      v22 = 0;
      *v21 = *(v2 + 4904);
      *(v21 + 1) = 0;
      *(v2 + 4904) = v21;
LABEL_23:
      *(v21 + 1) = v22 + 32;
      v23 = &v21[v22];
      v23[24] = 8;
      *(v23 + 25) = *(v23 + 25) & 0xF000 | 0x540;
      *(v23 + 2) = off_1002D1D60;
      *(v23 + 4) = "unsigned __int128";
      *(v23 + 5) = 17;
      return;
    case 'r':
      if (v5 < 2)
      {
        v47 = 1;
        v48 = 1;
      }

      else
      {
        v6 = v3[1];
        v7 = 1;
LABEL_60:
        if (v6 == 86)
        {
          v47 = v7 + 1;
        }

        else
        {
          v47 = v7;
        }

        v48 = v47;
        if (v5 > v47)
        {
          if (v3[v47] == 75)
          {
            v48 = v47 + 1;
          }

          else
          {
            v48 = v47;
          }

          v47 = v48;
        }
      }

      if (v5 > v48 && ((v49 = v3[v48], v49 == 70) || ((v50 = v47 + 1, v49 == 68) ? (v51 = v5 > v50) : (v51 = 0), v51 && ((v104 = v3[v50] - 79, v51 = v104 > 0x29, v105 = (1 << v104) & 0x30100000001, !v51) ? (v106 = v105 == 0) : (v106 = 1), !v106))))
      {
LABEL_198:
        sub_10001DB5C(a1, a2);
      }

      else
      {
LABEL_74:
        sub_10001E1DC(a1);
      }

      goto LABEL_145;
    case 's':
      *a1 = v3 + 1;
      v56 = a1[613];
      v57 = *(v56 + 1);
      if ((v57 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_88;
      }

      v56 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v56)
      {
        goto LABEL_349;
      }

      v57 = 0;
      *v56 = *(v2 + 4904);
      *(v56 + 1) = 0;
      *(v2 + 4904) = v56;
LABEL_88:
      *(v56 + 1) = v57 + 32;
      v58 = &v56[v57];
      v58[24] = 8;
      *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
      *(v58 + 2) = off_1002D1D60;
      v59 = "short";
LABEL_133:
      *(v58 + 4) = v59;
      *(v58 + 5) = 5;
      return;
    case 't':
      *a1 = v3 + 1;
      v81 = a1[613];
      v82 = *(v81 + 1);
      if ((v82 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_141;
      }

      v81 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v81)
      {
        goto LABEL_349;
      }

      v82 = 0;
      *v81 = *(v2 + 4904);
      *(v81 + 1) = 0;
      *(v2 + 4904) = v81;
LABEL_141:
      *(v81 + 1) = v82 + 32;
      v83 = &v81[v82];
      v83[24] = 8;
      *(v83 + 25) = *(v83 + 25) & 0xF000 | 0x540;
      *(v83 + 2) = off_1002D1D60;
      *(v83 + 4) = "unsigned short";
      *(v83 + 5) = 14;
      return;
    case 'u':
      *a1 = v3 + 1;
      if (v4 == v3 + 1 || v3[1] - 58 < 0xFFFFFFF6)
      {
        return;
      }

      v60 = 0;
      v61 = 0;
      do
      {
        v62 = v61;
        v63 = v60;
        v64 = &v3[v60 + 2];
        *a1 = v64;
        v65 = v3[v60 + 1];
        v61 = v65 + 10 * v61 - 48;
        if (v64 == v4)
        {
          break;
        }

        ++v60;
      }

      while (*v64 - 48 <= 9);
      if (v5 - v63 - 2 < v61)
      {
        return;
      }

      v66 = &v3[10 * v62 - 46 + v63 + v65];
      *a1 = v66;
      v125.n128_u64[0] = v64;
      v125.n128_u64[1] = v61;
      if (!v61)
      {
        return;
      }

      if (v66 == v4 || *v66 != 73)
      {
        sub_10000B994(a1, &v125);
      }

      else
      {
        *a1 = &v3[10 * v62 - 45 + v63 + v65];
        v126 = sub_1000074E8(a1);
        if (!v126)
        {
          return;
        }

        v67 = *v2;
        if (*v2 == *(v2 + 8) || *v67 != 69)
        {
          return;
        }

        *v2 = v67 + 1;
        sub_10001E698(v2, &v125, &v126);
      }

LABEL_160:
      v124 = v52;
      v84 = *(v2 + 304);
      if (v84 != *(v2 + 312))
      {
        goto LABEL_155;
      }

      goto LABEL_147;
    case 'v':
      *a1 = v3 + 1;
      v13 = a1[613];
      v14 = *(v13 + 1);
      if ((v14 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_15;
      }

      v13 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v13)
      {
        goto LABEL_349;
      }

      v14 = 0;
      *v13 = *(v2 + 4904);
      *(v13 + 1) = 0;
      *(v2 + 4904) = v13;
LABEL_15:
      *(v13 + 1) = v14 + 32;
      v15 = &v13[v14];
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = off_1002D1D60;
      v16 = "void";
LABEL_170:
      *(v15 + 4) = v16;
      *(v15 + 5) = 4;
      return;
    case 'w':
      *a1 = v3 + 1;
      v36 = a1[613];
      v37 = *(v36 + 1);
      if ((v37 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_43;
      }

      v36 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v36)
      {
        goto LABEL_349;
      }

      v37 = 0;
      *v36 = *(v2 + 4904);
      *(v36 + 1) = 0;
      *(v2 + 4904) = v36;
LABEL_43:
      *(v36 + 1) = v37 + 32;
      v38 = &v36[v37];
      v38[24] = 8;
      *(v38 + 25) = *(v38 + 25) & 0xF000 | 0x540;
      *(v38 + 2) = off_1002D1D60;
      *(v38 + 4) = "wchar_t";
      *(v38 + 5) = 7;
      return;
    case 'x':
      *a1 = v3 + 1;
      v91 = a1[613];
      v92 = *(v91 + 1);
      if ((v92 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_165;
      }

      v91 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v91)
      {
        goto LABEL_349;
      }

      v92 = 0;
      *v91 = *(v2 + 4904);
      *(v91 + 1) = 0;
      *(v2 + 4904) = v91;
LABEL_165:
      *(v91 + 1) = v92 + 32;
      v93 = &v91[v92];
      v93[24] = 8;
      *(v93 + 25) = *(v93 + 25) & 0xF000 | 0x540;
      *(v93 + 2) = off_1002D1D60;
      *(v93 + 4) = "long long";
      *(v93 + 5) = 9;
      return;
    case 'y':
      *a1 = v3 + 1;
      v10 = a1[613];
      v11 = *(v10 + 1);
      if ((v11 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_11;
      }

      v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v10)
      {
        goto LABEL_349;
      }

      v11 = 0;
      *v10 = *(v2 + 4904);
      *(v10 + 1) = 0;
      *(v2 + 4904) = v10;
LABEL_11:
      *(v10 + 1) = v11 + 32;
      v12 = &v10[v11];
      v12[24] = 8;
      *(v12 + 25) = *(v12 + 25) & 0xF000 | 0x540;
      *(v12 + 2) = off_1002D1D60;
      *(v12 + 4) = "unsigned long long";
      *(v12 + 5) = 18;
      return;
    case 'z':
      *a1 = v3 + 1;
      v17 = a1[613];
      v18 = *(v17 + 1);
      if ((v18 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_19;
      }

      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
LABEL_349:
        std::terminate();
      }

      v18 = 0;
      *v17 = *(v2 + 4904);
      *(v17 + 1) = 0;
      *(v2 + 4904) = v17;
LABEL_19:
      *(v17 + 1) = v18 + 32;
      v19 = &v17[v18];
      v19[24] = 8;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
      *(v19 + 2) = off_1002D1D60;
      v20 = "...";
LABEL_123:
      *(v19 + 4) = v20;
      *(v19 + 5) = 3;
      return;
    default:
      goto LABEL_144;
  }

  v72 = v3[1];
  switch(v3[1])
  {
    case 'A':
      if (v5 == 2)
      {
        goto LABEL_257;
      }

      v114 = v3[2];
      *a1 = v3 + 3;
      if (v114 <= 108)
      {
        if (v114 == 105)
        {
          v110 = "_Accum";
          goto LABEL_312;
        }

        if (v114 == 106)
        {
          v110 = "unsigned _Accum";
          goto LABEL_242;
        }

        if (v114 != 108)
        {
          return;
        }

        v110 = "long _Accum";
        goto LABEL_283;
      }

      if (v114 == 109)
      {
        v110 = "unsigned long _Accum";
        goto LABEL_316;
      }

      if (v114 == 116)
      {
        v110 = "unsigned short _Accum";
        goto LABEL_321;
      }

      if (v114 != 115)
      {
        return;
      }

      v110 = "short _Accum";
      goto LABEL_294;
    case 'B':
    case 'U':
      LOBYTE(v126) = v72 == 66;
      v73 = v3 + 2;
      *a1 = v73;
      if (v4 == v73)
      {
        v74 = 0;
      }

      else
      {
        v74 = *v73;
        if (v74 < 0)
        {
          goto LABEL_268;
        }
      }

      if ((_DefaultRuneLocale.__runetype[v74] & 0x400) != 0)
      {
        v125.n128_u64[0] = sub_100007380(a1, 0);
        v125.n128_u64[1] = v116;
        sub_10000B994(v2, &v125);
        v125.n128_u64[0] = v117;
        goto LABEL_271;
      }

LABEL_268:
      sub_10000D7B4(a1, a2);
      v125.n128_u64[0] = v115;
      if (!v115)
      {
        return;
      }

LABEL_271:
      v118 = *v2;
      if (*v2 != *(v2 + 8) && *v118 == 95)
      {
        *v2 = v118 + 1;
        sub_10001E81C(v2, &v125, &v126);
      }

      return;
    case 'F':
      *a1 = v3 + 2;
      if (sub_100006900(a1, "16b", 3uLL))
      {
        v110 = "std::bfloat16_t";
        goto LABEL_242;
      }

      v125.n128_u64[0] = sub_100007380(v2, 0);
      v125.n128_u64[1] = v119;
      sub_10000B994(v2, &v125);
      v125.n128_u64[0] = v120;
      v121 = *v2;
      if (*v2 != *(v2 + 8) && *v121 == 95)
      {
        *v2 = v121 + 1;
        sub_10001E764(v2, &v125);
      }

      return;
    case 'K':
    case 'k':
      v108 = " decltype(auto)";
      if (v72 == 107)
      {
        v108 = " auto";
      }

      v109 = 15;
      if (v72 == 107)
      {
        v109 = 5;
      }

      v125.n128_u64[0] = v108;
      v125.n128_u64[1] = v109;
      *a1 = v3 + 2;
      v126 = sub_1000094F0(a1, 0);
      if (v126)
      {
        sub_10001E8E8(v2, &v126, &v125);
      }

      return;
    case 'O':
    case 'o':
    case 'w':
    case 'x':
      goto LABEL_198;
    case 'R':
      if (v5 == 2)
      {
LABEL_257:
        *a1 = v3 + 3;
        return;
      }

      v122 = v3[2];
      *a1 = v3 + 3;
      if (v122 > 108)
      {
        switch(v122)
        {
          case 'm':
            v110 = "unsigned long _Fract";
            goto LABEL_316;
          case 't':
            v110 = "unsigned short _Fract";
LABEL_321:

            break;
          case 's':
            v110 = "short _Fract";
LABEL_294:

            break;
          default:
            return;
        }

        goto LABEL_233;
      }

      if (v122 == 105)
      {
        v110 = "_Fract";
LABEL_312:

        goto LABEL_233;
      }

      if (v122 == 106)
      {
        v110 = "unsigned _Fract";
LABEL_242:
        a1 = v2;

        goto LABEL_233;
      }

      if (v122 != 108)
      {
        return;
      }

      v110 = "long _Fract";
      goto LABEL_283;
    case 'S':
      *a1 = v3 + 2;
      v111 = v4 - (v3 + 2);
      if (v4 == v3 + 2 || v111 < 2 || v3[2] != 68)
      {
        return;
      }

      v112 = v3[3];
      if (v112 == 82)
      {
        if (v111 > 2)
        {
          v123 = v3[4];
          *a1 = v3 + 5;
          if (v123 <= 108)
          {
            if (v123 != 105)
            {
              if (v123 != 106)
              {
                if (v123 != 108)
                {
                  return;
                }

                v110 = "_Sat long _Fract";
                goto LABEL_303;
              }

              v110 = "_Sat unsigned _Fract";
              goto LABEL_316;
            }

            v110 = "_Sat _Fract";
LABEL_283:

LABEL_233:
            sub_10000B8CC(a1, v110);
            return;
          }

          if (v123 != 109)
          {
            if (v123 != 116)
            {
              if (v123 != 115)
              {
                return;
              }

              v110 = "_Sat short _Fract";
              goto LABEL_332;
            }

            v110 = "_Sat unsigned short _Fract";
LABEL_346:

            goto LABEL_233;
          }

          v110 = "_Sat unsigned long _Fract";
LABEL_339:

          goto LABEL_233;
        }
      }

      else
      {
        if (v112 != 65)
        {
          return;
        }

        if (v111 > 2)
        {
          v113 = v3[4];
          *a1 = v3 + 5;
          if (v113 <= 108)
          {
            if (v113 != 105)
            {
              if (v113 != 106)
              {
                if (v113 != 108)
                {
                  return;
                }

                v110 = "_Sat long _Accum";
LABEL_303:

                goto LABEL_233;
              }

              v110 = "_Sat unsigned _Accum";
LABEL_316:

              goto LABEL_233;
            }

            v110 = "_Sat _Accum";
            goto LABEL_283;
          }

          if (v113 != 109)
          {
            if (v113 != 116)
            {
              if (v113 != 115)
              {
                return;
              }

              v110 = "_Sat short _Accum";
LABEL_332:

              goto LABEL_233;
            }

            v110 = "_Sat unsigned short _Accum";
            goto LABEL_346;
          }

          v110 = "_Sat unsigned long _Accum";
          goto LABEL_339;
        }
      }

      *a1 = v3 + 5;
      return;
    case 'T':
    case 't':
      v52 = sub_10000C9B0(a1);
      goto LABEL_145;
    case 'a':
      *a1 = v3 + 2;
      v110 = "auto";
      goto LABEL_246;
    case 'c':
      *a1 = v3 + 2;
      v110 = "decltype(auto)";
      goto LABEL_250;
    case 'd':
      *a1 = v3 + 2;
      v110 = "decimal64";
      goto LABEL_259;
    case 'e':
      *a1 = v3 + 2;
      v110 = "decimal128";

      goto LABEL_233;
    case 'f':
      *a1 = v3 + 2;
      v110 = "decimal32";
LABEL_259:

      goto LABEL_233;
    case 'h':
      *a1 = v3 + 2;
      v110 = "half";
LABEL_246:

      goto LABEL_233;
    case 'i':
      *a1 = v3 + 2;
      v110 = "char32_t";
      goto LABEL_263;
    case 'n':
      *a1 = v3 + 2;
      v110 = "std::nullptr_t";
LABEL_250:

      goto LABEL_233;
    case 'p':
      *a1 = v3 + 2;
      v125.n128_u64[0] = sub_1000074E8(a1);
      if (!v125.n128_u64[0])
      {
        return;
      }

      v52 = sub_100011874(v2, &v125);
      goto LABEL_160;
    case 's':
      *a1 = v3 + 2;
      v110 = "char16_t";
LABEL_263:

      goto LABEL_233;
    case 'u':
      *a1 = v3 + 2;
      v110 = "char8_t";

      goto LABEL_233;
    case 'v':
      sub_10001E9B4(a1, a2);
      goto LABEL_145;
    default:
      return;
  }
}

void *sub_100009304(void *result, void *a2)
{
  v2 = a2;
  *(result + 2) = 0u;
  v3 = result + 4;
  *result = a2;
  result[1] = result + 4;
  *(result + 11) = 0u;
  v4 = (result + 11);
  result[8] = result + 11;
  v5 = (result + 8);
  result[2] = result + 4;
  result[3] = result + 8;
  *(result + 3) = 0u;
  v6 = result + 19;
  result[9] = result + 11;
  result[10] = result + 19;
  *(result + 13) = 0u;
  *(result + 15) = 0u;
  *(result + 17) = 0u;
  v7 = a2[83];
  v8 = v2 + 86;
  if (v7 == (v2 + 86))
  {
    v14 = v2[84];
    if (v14 == v7)
    {
      v9 = (result + 11);
      v16 = v7;
    }

    else
    {
      v15 = result;
      memmove(result + 4, v7, v14 - v7);
      result = v15;
      v16 = v2[84];
      v7 = v2[83];
      v9 = *v5;
    }

    result[2] = v3 + v16 - v7;
    v2[84] = v7;
    v10 = v2[72];
    v11 = v2 + 75;
    if (v10 != v2 + 75)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v9 == v4)
    {
      v4 = v9;
      v22 = v2[73];
      v19 = v22 - v10;
      if (v22 != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = result;
      free(v9);
      result = v17;
      v17[8] = v4;
      v17[9] = v4;
      v17[10] = v6;
      v10 = v2[72];
      v18 = v2[73];
      v19 = v18 - v10;
      if (v18 != v10)
      {
LABEL_12:
        v20 = result;
        memmove(v4, v10, v19);
        result = v20;
        v4 = *v5;
        v21 = v2[73];
        v10 = v2[72];
LABEL_15:
        result[9] = &v4[v21 - v10];
        v2[73] = v10;
        v2 = *result;
        v7 = *(*result + 664);
        v11 = *(*result + 576);
        goto LABEL_16;
      }
    }

    v21 = v10;
    goto LABEL_15;
  }

  result[1] = v7;
  *(result + 1) = *(v2 + 42);
  v2[83] = v8;
  v2[84] = v8;
  v2[85] = v2 + 90;
  v7 = (v2 + 86);
  v9 = (result + 11);
  v10 = v2[72];
  v11 = v2 + 75;
  if (v10 == v2 + 75)
  {
    goto LABEL_10;
  }

LABEL_3:
  *v5 = v10;
  if (v9 == v4)
  {
    *(result + 9) = *(v2 + 73);
    v2[72] = v11;
    v2[73] = v11;
    v2[74] = v2 + 83;
  }

  else
  {
    v2[72] = v9;
    v12 = result[9];
    result[9] = v2[73];
    v2[73] = v12;
    v13 = result[10];
    result[10] = v2[74];
    v2[74] = v13;
    v11 = v2[72];
    v2[73] = v11;
  }

LABEL_16:
  v2[84] = v7;
  v2[73] = v11;
  return result;
}

char *sub_1000094F0(uint64_t a1, size_t a2)
{
  v2 = a2;
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
LABEL_9:
    LOBYTE(v57[0]) = 0;
    v10 = sub_10000BCE4(a1, a2, v57);
    if (!v10)
    {
      return v10;
    }

    if (*(a1 + 8) == *a1 || **a1 != 73)
    {
      if (v57[0])
      {
        return 0;
      }

      return v10;
    }

    if ((v57[0] & 1) == 0)
    {
      v11 = *(a1 + 304);
      if (v11 == *(a1 + 312))
      {
        v12 = *(a1 + 296);
        v13 = v11 - v12;
        if (v12 == (a1 + 320))
        {
          v14 = malloc_type_malloc(2 * v13, 0x2004093837F09uLL);
          if (!v14)
          {
            goto LABEL_127;
          }

          v46 = *(a1 + 296);
          v47 = *(a1 + 304);
          if (v47 != v46)
          {
            v48 = v14;
            memmove(v14, v46, v47 - v46);
            v14 = v48;
          }

          *(a1 + 296) = v14;
        }

        else
        {
          v14 = malloc_type_realloc(v12, 2 * (v11 - v12), 0x2004093837F09uLL);
          *(a1 + 296) = v14;
          if (!v14)
          {
LABEL_127:
            abort();
          }
        }

        v11 = &v14[v13];
        *(a1 + 312) = &v14[8 * (v13 >> 2)];
      }

      *v11 = v10;
      *(a1 + 304) = v11 + 8;
    }

    sub_10000BE9C(a1, v2 != 0);
    if (!v49)
    {
      return 0;
    }

    if (v2)
    {
      v2[1] = 1;
    }

    v50 = *(a1 + 4904);
    v51 = v50[1];
    if ((v51 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v52 = v49;
      v53 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v53)
      {
LABEL_128:
        std::terminate();
      }

      v50 = v53;
      v51 = 0;
      *v53 = *(a1 + 4904);
      v53[1] = 0;
      *(a1 + 4904) = v53;
      v49 = v52;
    }

    v50[1] = v51 + 32;
    v54 = v50 + v51;
    v54[24] = 45;
    *(v54 + 25) = *(v54 + 25) & 0xF000 | 0x540;
    *(v54 + 2) = off_1002D3890;
    *(v54 + 4) = v10;
    *(v54 + 5) = v49;
    return v54 + 16;
  }

  v6 = *v5;
  if (v6 == 90)
  {
    *a1 = v5 + 1;
    v58[0] = sub_10000697C(a1, 1);
    if (!v58[0])
    {
      return 0;
    }

    v17 = *a1;
    v16 = *(a1 + 8);
    if (*a1 == v16 || *v17 != 69)
    {
      return 0;
    }

    *a1 = v17 + 1;
    if (v17 + 1 != v16 && v17[1] == 115)
    {
      *a1 = v17 + 2;
      *a1 = llvm::itanium_demangle::parse_discriminator(v17 + 2, v16, v15);
      v57[0] = sub_10000B8CC(a1, "string literal");
      return sub_10001C540(a1, v58, v57);
    }

    sub_100009304(v57, a1);
    v43 = *a1;
    if (*a1 == *(a1 + 8) || *v43 != 100)
    {
      v56 = sub_1000094F0(a1, v2);
      if (!v56)
      {
LABEL_110:
        v10 = 0;
        goto LABEL_111;
      }

      *a1 = llvm::itanium_demangle::parse_discriminator(*a1, *(a1 + 8), v45);
    }

    else
    {
      *a1 = v43 + 1;
      sub_100007380(a1, 1);
      v44 = *a1;
      if (*a1 == *(a1 + 8))
      {
        goto LABEL_110;
      }

      if (*v44 != 95)
      {
        goto LABEL_110;
      }

      *a1 = v44 + 1;
      v56 = sub_1000094F0(a1, v2);
      if (!v56)
      {
        goto LABEL_110;
      }
    }

    v10 = sub_10001C540(a1, v58, &v56);
LABEL_111:
    sub_10000A4C8(v57);
    return v10;
  }

  if (v6 != 78)
  {
    goto LABEL_9;
  }

  v7 = (v5 + 1);
  *a1 = v5 + 1;
  if (v5 + 1 == v4)
  {
    goto LABEL_25;
  }

  v8 = *v7;
  if (v8 == 72)
  {
    v7 = (v5 + 2);
    *a1 = v5 + 2;
    if (a2)
    {
      v19 = 1;
      v20 = 24;
LABEL_45:
      *(a2 + v20) = v19;
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (v8 != 114)
  {
LABEL_25:
    v9 = 0;
    if (v7 == v4)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (*v7 == 86)
    {
      *a1 = ++v7;
      v9 |= 2u;
    }

    goto LABEL_28;
  }

  v7 = (v5 + 2);
  *a1 = v5 + 2;
  v9 = 4;
  if (v7 != v4)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v7 != v4 && *v7 == 75)
  {
    *a1 = ++v7;
    v9 |= 1u;
  }

  if (a2)
  {
    *(a2 + 4) = v9;
  }

  if (v7 == v4)
  {
    goto LABEL_38;
  }

  v18 = *v7;
  if (v18 == 82)
  {
    *a1 = ++v7;
    if (a2)
    {
      v19 = 1;
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  if (v18 != 79)
  {
LABEL_38:
    if (a2)
    {
      v19 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    *a1 = ++v7;
    if (a2)
    {
      v19 = 2;
LABEL_44:
      v20 = 8;
      goto LABEL_45;
    }
  }

LABEL_46:
  v10 = 0;
  v21 = (a1 + 320);
  while (v7 == v4 || *v7 != 69)
  {
    if (v2)
    {
      v2[1] = 0;
    }

    v22 = 0;
    v23 = v4 - v7;
    if (!v23)
    {
      goto LABEL_83;
    }

    v24 = *v7;
    if (v24 > 0x52)
    {
      if (v24 != 83)
      {
        if (v24 != 84)
        {
          goto LABEL_83;
        }

        if (v10)
        {
          return 0;
        }

        v30 = sub_10000C54C(a1, a2);
        goto LABEL_84;
      }

      if (v23 >= 2 && v7[1] == 116)
      {
        *a1 = v7 + 2;
        v31 = *(a1 + 4904);
        v32 = v31[1];
        if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v31)
          {
            goto LABEL_128;
          }

          v32 = 0;
          *v31 = *(a1 + 4904);
          v31[1] = 0;
          *(a1 + 4904) = v31;
        }

        v31[1] = v32 + 32;
        v33 = v31 + v32;
        v22 = (v33 + 16);
        v33[24] = 8;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = off_1002D1D60;
        *(v33 + 4) = "std";
        *(v33 + 5) = 3;
      }

      else
      {
        v34 = sub_10000CAFC(a1);
        if (!v34)
        {
          return 0;
        }

        v22 = v34;
        if (v34[8] == 27)
        {
          goto LABEL_83;
        }
      }

      if (v10)
      {
        return 0;
      }

      v7 = *a1;
      v4 = *(a1 + 8);
      v10 = v22;
    }

    else
    {
      if (v24 != 68)
      {
        if (v24 == 73)
        {
          if (!v10)
          {
            return v10;
          }

          sub_10000BE9C(a1, v2 != 0);
          if (!v25 || v10[8] == 45)
          {
            return 0;
          }

          v26 = v25;
          if (v2)
          {
            v2[1] = 1;
          }

          v27 = *(a1 + 4904);
          v28 = v27[1];
          if ((v28 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v27)
            {
              goto LABEL_128;
            }

            v28 = 0;
            *v27 = *(a1 + 4904);
            v27[1] = 0;
            *(a1 + 4904) = v27;
          }

          v27[1] = v28 + 32;
          v29 = v27 + v28;
          v29[24] = 45;
          *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
          *(v29 + 2) = off_1002D3890;
          *(v29 + 4) = v10;
          *(v29 + 5) = v26;
          v10 = v29 + 16;
          goto LABEL_85;
        }

        goto LABEL_83;
      }

      if (v23 < 2 || (v7[1] | 0x20) != 0x74)
      {
        v22 = 0;
LABEL_83:
        v30 = sub_10000CE68(a1, v2, v10, v22);
        goto LABEL_84;
      }

      if (v10)
      {
        return 0;
      }

      v30 = sub_10000C9B0(a1);
LABEL_84:
      v10 = v30;
      if (!v30)
      {
        return v10;
      }

LABEL_85:
      v35 = *(a1 + 304);
      if (v35 == *(a1 + 312))
      {
        v37 = *(a1 + 296);
        v38 = v35 - v37;
        if (v37 == v21)
        {
          v39 = malloc_type_malloc(2 * (v35 - v37), 0x2004093837F09uLL);
          if (!v39)
          {
            goto LABEL_127;
          }

          a2 = *(a1 + 296);
          v40 = *(a1 + 304);
          if (v40 != a2)
          {
            v41 = v39;
            memmove(v39, a2, v40 - a2);
            v39 = v41;
          }

          *(a1 + 296) = v39;
        }

        else
        {
          v39 = malloc_type_realloc(v37, 2 * (v35 - v37), 0x2004093837F09uLL);
          *(a1 + 296) = v39;
          if (!v39)
          {
            goto LABEL_127;
          }
        }

        *(a1 + 312) = &v39[8 * (v38 >> 2)];
        *&v39[v38] = v10;
        *(a1 + 304) = &v39[v38 + 8];
        v7 = *a1;
        v36 = *(a1 + 8);
        v4 = *a1;
        if (*a1 != v36)
        {
LABEL_96:
          v4 = v36;
          if (*v7 == 77)
          {
            *a1 = ++v7;
            v4 = v36;
          }
        }
      }

      else
      {
        *v35 = v10;
        *(a1 + 304) = v35 + 8;
        v7 = *a1;
        v36 = *(a1 + 8);
        v4 = *a1;
        if (*a1 != v36)
        {
          goto LABEL_96;
        }
      }
    }
  }

  *a1 = v7 + 1;
  if (v10)
  {
    v42 = *(a1 + 304);
    if (*(a1 + 296) != v42)
    {
      *(a1 + 304) = v42 - 8;
      return v10;
    }

    return 0;
  }

  return v10;
}

void sub_100009C7C(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v3[-*a1];
  if (v3 == *a1)
  {
    v5 = 2147483611;
LABEL_12:
    if (v5 != 5)
    {
      if (v5 == 7)
      {
        *a1 = v2 + 1;
        if (sub_10000D7B4(a1))
        {
          v7 = *a1;
          if (*a1 != a1[1] && *v7 == 69)
          {
            goto LABEL_17;
          }
        }

        return;
      }

LABEL_54:

      sub_1000074E8(a1);
      return;
    }

    if (v3 == v2 || *v2 != 84)
    {
      goto LABEL_54;
    }

    v20 = v4 < 2 ? 0 : v2[1];
    v28 = memchr("yptnk", v20, 5uLL);
    if (!v28 || v28 - "yptnk" == -1)
    {
      goto LABEL_54;
    }

    v29 = sub_100015A84(a1, 0);
    if (!v29)
    {
      return;
    }

    v21 = v29;
    v30 = sub_100009C7C(a1);
    if (!v30)
    {
      return;
    }

    v23 = v30;
    v31 = a1[613];
    v32 = v31[1];
    if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v31)
      {
        goto LABEL_58;
      }

      v32 = 0;
      *v31 = a1[613];
      v31[1] = 0;
      a1[613] = v31;
    }

    v31[1] = v32 + 32;
    v26 = v31 + v32;
    v26[24] = 34;
    *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
    v27 = off_1002D3950;
    goto LABEL_44;
  }

  HIDWORD(v6) = *v2 - 74;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 1;
  if (v5 > 4)
  {
    goto LABEL_12;
  }

  if (!v5)
  {
    v8 = v2 + 1;
    *a1 = v8;
    v9 = (a1[3] - a1[2]) >> 3;
    v10 = a1 + 5;
    while (v8 == v3 || *v8 != 69)
    {
      v13 = sub_100009C7C(a1);
      if (!v13)
      {
        return;
      }

      v12 = a1[3];
      if (v12 == a1[4])
      {
        v14 = v13;
        v15 = a1[2];
        v16 = v12 - v15;
        if (v15 == v10)
        {
          v11 = malloc_type_malloc(2 * (v12 - v15), 0x2004093837F09uLL);
          if (!v11)
          {
LABEL_57:
            abort();
          }

          v17 = a1[2];
          v18 = a1[3];
          if (v18 != v17)
          {
            v19 = v11;
            memmove(v11, v17, v18 - v17);
            v11 = v19;
          }

          a1[2] = v11;
        }

        else
        {
          v11 = malloc_type_realloc(v15, 2 * (v12 - v15), 0x2004093837F09uLL);
          a1[2] = v11;
          if (!v11)
          {
            goto LABEL_57;
          }
        }

        v12 = &v11[v16];
        a1[4] = &v11[8 * (v16 >> 2)];
        v13 = v14;
      }

      *v12 = v13;
      a1[3] = v12 + 1;
      v8 = *a1;
      v3 = a1[1];
    }

    *a1 = v8 + 1;
    v21 = sub_10000A1F8(a1, v9);
    v23 = v22;
    v24 = a1[613];
    v25 = v24[1];
    if ((v25 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_43;
    }

    v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v24)
    {
      v25 = 0;
      *v24 = a1[613];
      v24[1] = 0;
      a1[613] = v24;
LABEL_43:
      v24[1] = v25 + 32;
      v26 = v24 + v25;
      v26[24] = 41;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      v27 = off_1002D38F0;
LABEL_44:
      *(v26 + 2) = v27;
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
      return;
    }

LABEL_58:
    std::terminate();
  }

  if (v5 != 1)
  {
    goto LABEL_54;
  }

  if (v4 >= 2 && v2[1] == 90)
  {
    *a1 = v2 + 2;
    if (!sub_10000697C(a1, 1))
    {
      return;
    }

    v7 = *a1;
    if (*a1 == a1[1] || *v7 != 69)
    {
      return;
    }

LABEL_17:
    *a1 = v7 + 1;
    return;
  }

  sub_10000F3D4(a1);
}

const void **sub_10000A080(const void **result, void *size)
{
  v2 = result;
  v3 = result[1];
  if (v3 == result[2])
  {
    v4 = size;
    v5 = *result;
    v6 = v3 - *v2;
    if (*v2 == v2 + 3)
    {
      result = malloc_type_malloc(2 * v6, 0x2004093837F09uLL);
      if (!result)
      {
        goto LABEL_11;
      }

      v7 = v2[1];
      if (v7 != *v2)
      {
        v8 = result;
        memmove(result, *v2, v7 - *v2);
        result = v8;
      }

      *v2 = result;
    }

    else
    {
      result = malloc_type_realloc(v5, 2 * v6, 0x2004093837F09uLL);
      *v2 = result;
      if (!result)
      {
LABEL_11:
        abort();
      }
    }

    v3 = result + v6;
    v2[2] = &result[v6 >> 2];
    size = v4;
  }

  *v3 = *size;
  v2[1] = v3 + 8;
  return result;
}

__n128 sub_10000A140(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 10;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D39B0;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

char *sub_10000A1F8(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = (a1[2] + 8 * a2);
  v6 = (v4 - v5 + 15) & 0xFFFFFFF0;
  v7 = a1[613];
  v8 = v7[1];
  if (v6 + v8 >= 0xFF0)
  {
    if (v6 >= 0xFF1)
    {
      v9 = malloc_type_malloc(v6 + 16, 0x1020040EDED9539uLL);
      if (v9)
      {
        v10 = a1[613];
        *v9 = *v10;
        v9[1] = 0;
        *v10 = v9;
        v11 = (v9 + 2);
        if (v4 == v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

LABEL_11:
      std::terminate();
    }

    v7 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = 0;
    *v7 = a1[613];
    v7[1] = 0;
    a1[613] = v7;
  }

  v7[1] = v8 + v6;
  v11 = v7 + v8 + 16;
  if (v4 != v5)
  {
LABEL_9:
    memmove(v11, v5, v4 - v5);
  }

LABEL_10:
  a1[3] = a1[2] + 8 * a2;
  return v11;
}

char *sub_10000A304(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 87;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D3A10;
  *(v6 + 4) = v8;
  return result;
}

__n128 sub_10000A3BC(uint64_t a1, uint64_t *a2, uint64_t *a3, __n128 *a4, uint64_t *a5, uint64_t *a6, int *a7, char *a8)
{
  v16 = *(a1 + 4904);
  v17 = v16[1];
  if ((v17 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v16)
    {
      std::terminate();
    }

    v17 = 0;
    *v16 = *(a1 + 4904);
    v16[1] = 0;
    *(a1 + 4904) = v16;
  }

  v16[1] = v17 + 80;
  v18 = v16 + v17;
  v19 = *a2;
  v20 = *a3;
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v24 = *a8;
  v18[24] = 19;
  v25 = *(v18 + 25) & 0xF000 | 0x100;
  *(v18 + 2) = off_1002D3A70;
  *(v18 + 4) = v19;
  *(v18 + 5) = v20;
  result = *a4;
  *(v18 + 25) = v25;
  *(v18 + 3) = result;
  *(v18 + 8) = v21;
  *(v18 + 9) = v22;
  *(v18 + 20) = v23;
  v18[84] = v24;
  return result;
}

void *sub_10000A4C8(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1 + 4;
  v5 = *(*a1 + 664);
  v6 = (v3 + 688);
  if (v2 != v4)
  {
    *(v3 + 664) = v2;
    if (v5 == v6)
    {
      *(v3 + 672) = *(a1 + 1);
      a1[1] = v4;
      a1[2] = v4;
      a1[3] = a1 + 8;
      v9 = a1[8];
      v10 = (a1 + 11);
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == (a1 + 11))
      {
        goto LABEL_10;
      }
    }

    else
    {
      a1[1] = v5;
      v7 = *(v3 + 672);
      *(v3 + 672) = a1[2];
      a1[2] = v7;
      v8 = *(v3 + 680);
      *(v3 + 680) = a1[3];
      a1[2] = a1[1];
      a1[3] = v8;
      v9 = a1[8];
      v10 = (a1 + 11);
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == (a1 + 11))
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    *(v3 + 576) = v9;
    if (v11 == v12)
    {
      *(v3 + 584) = *(a1 + 9);
      a1[8] = v10;
      a1[9] = v10;
      a1[10] = a1 + 19;
      goto LABEL_23;
    }

    a1[8] = v11;
    v17 = *(v3 + 584);
    *(v3 + 584) = a1[9];
    a1[9] = v17;
    v18 = *(v3 + 592);
    *(v3 + 592) = a1[10];
    v9 = a1[8];
    a1[9] = v9;
    a1[10] = v18;
    if (v9 != v10)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v5 != v6)
  {
    free(v5);
    *(v3 + 664) = v6;
    *(v3 + 672) = v6;
    *(v3 + 680) = v3 + 720;
    v2 = a1[1];
    v5 = (v3 + 688);
  }

  v13 = a1[2];
  if (v13 == v2)
  {
    v14 = v2;
  }

  else
  {
    memmove(v5, v2, v13 - v2);
    v5 = *(v3 + 664);
    v2 = a1[1];
    v14 = a1[2];
  }

  *(v3 + 672) = &v5[v14 - v2];
  a1[2] = v2;
  v3 = *a1;
  v9 = a1[8];
  v10 = (a1 + 11);
  v11 = *(*a1 + 576);
  v12 = *a1 + 600;
  if (v9 != (a1 + 11))
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v11 != v12)
  {
    free(v11);
    *(v3 + 576) = v12;
    *(v3 + 584) = v12;
    *(v3 + 592) = v3 + 664;
    v9 = a1[8];
    v11 = v12;
  }

  v15 = a1[9];
  if (v15 == v9)
  {
    v16 = v9;
  }

  else
  {
    memmove(v11, v9, v15 - v9);
    v11 = *(v3 + 576);
    v9 = a1[8];
    v16 = a1[9];
  }

  *(v3 + 584) = &v11[v16 - v9];
  a1[9] = v9;
  if (v9 != v10)
  {
LABEL_22:
    free(v9);
  }

LABEL_23:
  v19 = a1[1];
  if (v19 != v4)
  {
    free(v19);
  }

  return a1;
}

char *sub_10000A6D0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "template parameter object for ";
  *(v6 + 5) = 30;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000A798(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "vtable for ";
  *(v6 + 5) = 11;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000A860(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "VTT for ";
  *(v6 + 5) = 8;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000A928(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "typeinfo for ";
  *(v6 + 5) = 13;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000A9F0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "typeinfo name for ";
  *(v6 + 5) = 18;
  *(v6 + 6) = v8;
  return result;
}

uint64_t sub_10000AAB8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *v1;
    if (v3 == 118)
    {
      v9 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v10 = v1 + 1;
      if (*v9 == 110)
      {
        v10 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v10)
      {
        return 1;
      }

      v11 = *v10;
      if (v11 < 0 || (_DefaultRuneLocale.__runetype[v11] & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v12 = *v10;
        if (v12 < 0 || (_DefaultRuneLocale.__runetype[v12] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v10;
        if (v10 == v2)
        {
          v13 = v2;
          goto LABEL_30;
        }
      }

      v13 = v10;
LABEL_30:
      if (v13 == v9)
      {
        return 1;
      }

      if (v10 == v2)
      {
        return 1;
      }

      if (*v10 != 95)
      {
        return 1;
      }

      v15 = v10 + 1;
      *a1 = v10 + 1;
      if (v10 + 1 == v2)
      {
        return 1;
      }

      v5 = v10 + 1;
      if (*v15 == 110)
      {
        v5 = v10 + 2;
        *a1 = v10 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v16 = *v5;
      if (v16 < 0 || (_DefaultRuneLocale.__runetype[v16] & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v17 = *v5;
        if (v17 < 0 || (_DefaultRuneLocale.__runetype[v17] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v18 = v2;
          goto LABEL_45;
        }
      }

      v18 = v5;
LABEL_45:
      if (v18 == v15)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 104)
      {
        return 1;
      }

      v4 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v5 = v1 + 1;
      if (*v4 == 110)
      {
        v5 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v6 = *v5;
      if (v6 < 0 || (_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v7 = *v5;
        if (v7 < 0 || (_DefaultRuneLocale.__runetype[v7] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v8 = v2;
          goto LABEL_25;
        }
      }

      v8 = v5;
LABEL_25:
      if (v8 == v4)
      {
        return 1;
      }
    }

    if (v5 != v2 && *v5 == 95)
    {
      *a1 = v5 + 1;
      return 0;
    }
  }

  return 1;
}

char *sub_10000ACB0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "covariant return thunk to ";
  *(v6 + 5) = 26;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000AD78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 22;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D1D00;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *sub_10000AE40(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "thread-local initialization routine for ";
  *(v6 + 5) = 40;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000AF08(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "virtual thunk to ";
  *(v6 + 5) = 17;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000AFD0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "non-virtual thunk to ";
  *(v6 + 5) = 21;
  *(v6 + 6) = v8;
  return result;
}

char *sub_10000B094(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1CA0;
  *(v6 + 4) = "reference temporary for ";
  *(v6 + 5) = 24;
  *(v6 + 6) = v8;
  return result;
}

uint64_t sub_10000B15C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v6 = (a1 + 320);
    while (*v2 == 87)
    {
      *a1 = v2 + 1;
      if (v2 + 1 == v3 || v2[1] != 80)
      {
        v12 = 0;
        v13 = sub_10000B6E8(a1);
        if (!v13)
        {
          return 1;
        }
      }

      else
      {
        *a1 = v2 + 2;
        v12 = 1;
        v13 = sub_10000B6E8(a1);
        if (!v13)
        {
          return 1;
        }
      }

      v14 = v13;
      v15 = *(a1 + 4904);
      v7 = v15[1];
      if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v15)
        {
          std::terminate();
        }

        v7 = 0;
        *v15 = *(a1 + 4904);
        v15[1] = 0;
        *(a1 + 4904) = v15;
      }

      v15[1] = v7 + 48;
      v8 = v15 + v7;
      v9 = v8 + 16;
      v10 = *a2;
      v8[24] = 27;
      *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
      *(v8 + 2) = off_1002D1DC0;
      *(v8 + 4) = v10;
      *(v8 + 5) = v14;
      v8[48] = v12;
      *a2 = (v8 + 16);
      v11 = *(a1 + 304);
      if (v11 == *(a1 + 312))
      {
        v16 = *(a1 + 296);
        v17 = v11 - v16;
        if (v16 == v6)
        {
          v18 = malloc_type_malloc(2 * (v11 - v16), 0x2004093837F09uLL);
          if (!v18)
          {
LABEL_25:
            abort();
          }

          v19 = *(a1 + 296);
          v20 = *(a1 + 304);
          if (v20 != v19)
          {
            v21 = v18;
            memmove(v18, v19, v20 - v19);
            v18 = v21;
          }

          *(a1 + 296) = v18;
        }

        else
        {
          v18 = malloc_type_realloc(v16, 2 * (v11 - v16), 0x2004093837F09uLL);
          *(a1 + 296) = v18;
          if (!v18)
          {
            goto LABEL_25;
          }
        }

        *(a1 + 312) = &v18[8 * (v17 >> 2)];
        *&v18[v17] = v9;
        *(a1 + 304) = &v18[v17 + 8];
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }

      else
      {
        *v11 = v9;
        *(a1 + 304) = v11 + 8;
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10000B384(void *a1, char **a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = a1[4];
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t sub_10000B4DC(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 24) > v6)
  {
    v7 = (v5 + 1016);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = a2[1];
  }

  qmemcpy(&v5[v4], "construction vtable for ", 24);
  a2[1] += 24;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 4) > v13)
  {
    v14 = (v12 + 996);
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (v11)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_19:
    abort();
  }

LABEL_15:
  *&v12[v11] = 762210605;
  a2[1] += 4;
  v17 = *(a1 + 24);
  result = (*(*v17 + 32))(v17, a2);
  if ((*(v17 + 9) & 0xC0) != 0x40)
  {
    v19 = *(*v17 + 40);

    return v19(v17, a2);
  }

  return result;
}

char *sub_10000B6E8(unsigned __int8 **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 == *a1 || *v2 - 58 < 0xFFFFFFF6)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v2 + 1);
  v5 = v2 + 1;
  do
  {
    v6 = v3;
    v7 = v5;
    v8 = v4;
    *a1 = v5;
    v9 = *(v5 - 1);
    v3 = v9 + 10 * v3 - 48;
    if (v5 == v1)
    {
      break;
    }

    ++v5;
    ++v4;
  }

  while (*v7 - 48 <= 9);
  if (v3 - 1 >= v1 - v8)
  {
    return 0;
  }

  *a1 = &v7[10 * v6 - 48 + v9];
  if (v3 >= 0xA)
  {
    v10 = *v7;
    v11 = *(v7 + 4);
    if (v10 == 0x5F4C41424F4C475FLL && v11 == 20063)
    {
      v13 = a1[613];
      v14 = *(v13 + 1);
      if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v19)
        {
          goto LABEL_21;
        }

        v13 = v19;
        v14 = 0;
        *v19 = a1[613];
        *(v19 + 1) = 0;
        a1[613] = v19;
      }

      v8 = "(anonymous namespace)";
      v3 = 21;
      goto LABEL_20;
    }
  }

  v13 = a1[613];
  v14 = *(v13 + 1);
  if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v16)
    {
      v13 = v16;
      v14 = 0;
      *v16 = a1[613];
      *(v16 + 1) = 0;
      a1[613] = v16;
      goto LABEL_20;
    }

LABEL_21:
    std::terminate();
  }

LABEL_20:
  *(v13 + 1) = v14 + 32;
  v20 = &v13[v14];
  result = (v20 + 16);
  v20[24] = 8;
  *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
  *(v20 + 2) = off_1002D1D60;
  *(v20 + 4) = v8;
  *(v20 + 5) = v3;
  return result;
}

uint64_t sub_10000B8CC(uint64_t a1, char *__s)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v7 = v4 + v5 + 16;
  v8 = strlen(__s);
  v6[24] = 8;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1D60;
  *(v6 + 4) = __s;
  *(v6 + 5) = v8;
  return v7;
}

__n128 sub_10000B994(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 8;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D1D60;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

void *sub_10000BA4C(void *result, char **a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = result[2];
    v5 = *a2;
    v6 = a2[1];
    v7 = &v6[v2];
    v8 = a2[2];
    if (&v6[v2] > v8)
    {
      if (2 * v8 <= (v7 + 992))
      {
        v9 = (v7 + 992);
      }

      else
      {
        v9 = 2 * v8;
      }

      a2[2] = v9;
      v5 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        abort();
      }

      v6 = a2[1];
    }

    result = memcpy(&v6[v5], v4, v2);
    a2[1] += v2;
  }

  return result;
}

uint64_t sub_10000BB0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(*(a1 + 16), a2);
    if ((*(v4 + 9) & 0xC0) != 0x40)
    {
      (*(*v4 + 40))(v4, a2);
    }

    if (*(a1 + 16))
    {
      if (*(a1 + 32))
      {
        v5 = 58;
      }

      else
      {
        v5 = 46;
      }

      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = v7 + 1;
      v9 = *(a2 + 16);
      if (v7 + 1 <= v9)
      {
        goto LABEL_17;
      }

LABEL_12:
      v10 = v7 + 993;
      if (2 * v9 <= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 2 * v9;
      }

      *(a2 + 16) = v11;
      v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = *(a2 + 8);
      v8 = v7 + 1;
      goto LABEL_17;
    }
  }

  if (*(a1 + 32) != 1)
  {
    goto LABEL_18;
  }

  v5 = 58;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v7 + 1;
  v9 = *(a2 + 16);
  if (v7 + 1 > v9)
  {
    goto LABEL_12;
  }

LABEL_17:
  *(a2 + 8) = v8;
  *(v6 + v7) = v5;
LABEL_18:
  v12 = *(a1 + 24);
  result = (*(*v12 + 32))(v12, a2);
  if ((*(v12 + 9) & 0xC0) != 0x40)
  {
    v14 = *(*v12 + 40);

    return v14(v12, a2);
  }

  return result;
}

char *sub_10000BCE4(void *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4 - *a1 >= 2 && *v3 == 29779)
  {
    *a1 = v3 + 1;
    v12 = a1[613];
    v13 = v12[1];
    if ((v13 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v14 = a3;
      v15 = a1;
      v16 = a2;
      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
        std::terminate();
      }

      v12 = v17;
      v13 = 0;
      a1 = v15;
      *v12 = v15[613];
      v12[1] = 0;
      v15[613] = v12;
      a2 = v16;
      a3 = v14;
    }

    v12[1] = v13 + 32;
    v18 = v12 + v13;
    v5 = (v18 + 16);
    v18[24] = 8;
    *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
    *(v18 + 2) = off_1002D1D60;
    *(v18 + 4) = "std";
    *(v18 + 5) = 3;
    v3 = *a1;
    if (a1[1] == *a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  if (*v3 != 83)
  {
LABEL_14:
    v10 = 0;
    v11 = v5;

    return sub_10000CE68(a1, a2, v11, v10);
  }

  v6 = a3;
  v7 = a2;
  v8 = a1;
  result = sub_10000CAFC(a1);
  if (result)
  {
    v10 = result;
    if (result[8] == 27)
    {
      a2 = v7;
      a1 = v8;
      v11 = v5;

      return sub_10000CE68(a1, a2, v11, v10);
    }

    result = 0;
    if (v6 && !v5)
    {
      *v6 = 1;
      return v10;
    }
  }

  return result;
}

void sub_10000BE9C(uint64_t a1, int a2)
{
  v2 = *a1;
  if (*a1 == *(a1 + 8) || *v2 != 73)
  {
    return;
  }

  v4 = v2 + 1;
  *a1 = v4;
  if (a2)
  {
    v5 = *(a1 + 664);
    *(a1 + 672) = v5;
    if (v5 == *(a1 + 680))
    {
      if (v5 == (a1 + 688))
      {
        v5 = malloc_type_malloc(0, 0x2004093837F09uLL);
        if (!v5)
        {
          goto LABEL_87;
        }

        v20 = *(a1 + 664);
        v21 = *(a1 + 672);
        if (v21 != v20)
        {
          v22 = v5;
          memmove(v5, v20, v21 - v20);
          v5 = v22;
        }

        *(a1 + 664) = v5;
      }

      else
      {
        v5 = malloc_type_realloc(v5, 0, 0x2004093837F09uLL);
        *(a1 + 664) = v5;
        if (!v5)
        {
LABEL_87:
          abort();
        }
      }

      *(a1 + 680) = v5;
    }

    v23 = (a1 + 576);
    *v5 = a1 + 576;
    *(a1 + 672) = v5 + 1;
    *(a1 + 584) = *(a1 + 576);
    v61 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v9 = a1 + 4904;
    v4 = *a1;
    v24 = *(a1 + 8);
    while (1)
    {
      if (v4 != v24 && *v4 == 69)
      {
        v19 = 0;
        v7 = v61;
        goto LABEL_82;
      }

      sub_100009C7C(a1);
      if (!v25)
      {
        return;
      }

      v26 = v25;
      v27 = *(a1 + 24);
      if (v27 == *(a1 + 32))
      {
        v42 = *(a1 + 16);
        v43 = v27 - v42;
        if (v42 == (a1 + 40))
        {
          v44 = malloc_type_malloc(2 * (v27 - v42), 0x2004093837F09uLL);
          if (!v44)
          {
            goto LABEL_87;
          }

          v45 = *(a1 + 16);
          v46 = *(a1 + 24);
          if (v46 != v45)
          {
            v47 = v44;
            memmove(v44, v45, v46 - v45);
            v44 = v47;
          }

          *(a1 + 16) = v44;
        }

        else
        {
          v44 = malloc_type_realloc(v42, 2 * (v27 - v42), 0x2004093837F09uLL);
          *(a1 + 16) = v44;
          if (!v44)
          {
            goto LABEL_87;
          }
        }

        *(a1 + 32) = &v44[8 * (v43 >> 2)];
        *&v44[v43] = v26;
        *(a1 + 24) = &v44[v43 + 8];
        v28 = *(v26 + 8);
        if (v28 == 34)
        {
          goto LABEL_67;
        }

LABEL_38:
        if (v28 == 41)
        {
          v30 = *(v26 + 16);
          v29 = *(v26 + 24);
          v31 = *v9;
          v32 = *(*v9 + 8);
          if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v31)
            {
              goto LABEL_88;
            }

            v32 = 0;
            *v31 = *v9;
            v31[1] = 0;
            *v9 = v31;
          }

          v31[1] = v32 + 32;
          v33 = v31 + v32;
          v26 = v31 + v32 + 16;
          v33[24] = 40;
          v34 = *(v31 + v32 + 25) & 0xF000;
          *(v33 + 2) = off_1002D37D0;
          *(v33 + 4) = v30;
          *(v33 + 5) = v29;
          v35 = v34 | 0xA80;
          *(v33 + 25) = v34 | 0xA80;
          v36 = 8 * v29;
          if (v29)
          {
            v37 = 8 * v29;
            v38 = v30;
            while ((*(*v38 + 9) & 0x300) == 0x100)
            {
              v38 += 8;
              v37 -= 8;
              if (!v37)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
LABEL_46:
            v35 = v34 | 0x980;
            *(v26 + 9) = v34 | 0x980;
          }

          if (v29)
          {
            v39 = 8 * v29;
            v40 = v30;
            while ((*(*v40 + 9) & 0xC00) == 0x400)
            {
              v40 += 8;
              v39 -= 8;
              if (!v39)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
LABEL_51:
            v35 = v35 & 0xF3FF | 0x400;
            *(v26 + 9) = v35;
          }

          if (v29)
          {
            while ((*(*v30 + 9) & 0xC0) == 0x40)
            {
              v30 += 8;
              v36 -= 8;
              if (!v36)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
LABEL_55:
            *(v26 + 9) = v35 & 0xFF3F | 0x40;
          }
        }

        v41 = *(a1 + 584);
        if (v41 != *(a1 + 592))
        {
          goto LABEL_57;
        }

LABEL_68:
        v48 = v41 - *v23;
        if (*v23 == (a1 + 600))
        {
          v49 = malloc_type_malloc(2 * v48, 0x2004093837F09uLL);
          if (!v49)
          {
            goto LABEL_87;
          }

          v50 = *(a1 + 576);
          v51 = *(a1 + 584);
          if (v51 != v50)
          {
            v52 = v49;
            memmove(v49, v50, v51 - v50);
            v49 = v52;
          }

          *v23 = v49;
        }

        else
        {
          v49 = malloc_type_realloc(*v23, 2 * v48, 0x2004093837F09uLL);
          *v23 = v49;
          if (!v49)
          {
            goto LABEL_87;
          }
        }

        *(a1 + 592) = &v49[8 * (v48 >> 2)];
        *&v49[v48] = v26;
        *(a1 + 584) = &v49[v48 + 8];
        v4 = *a1;
        v24 = *(a1 + 8);
        if (*a1 != v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
        *v27 = v25;
        *(a1 + 24) = v27 + 8;
        v28 = *(v25 + 8);
        if (v28 != 34)
        {
          goto LABEL_38;
        }

LABEL_67:
        v26 = *(v26 + 24);
        v41 = *(a1 + 584);
        if (v41 == *(a1 + 592))
        {
          goto LABEL_68;
        }

LABEL_57:
        *v41 = v26;
        *(a1 + 584) = v41 + 1;
        v4 = *a1;
        v24 = *(a1 + 8);
        if (*a1 != v24)
        {
LABEL_32:
          if (*v4 == 81)
          {
            v7 = v61;
            goto LABEL_79;
          }
        }
      }
    }
  }

  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v8 = (a1 + 40);
  v9 = a1 + 4904;
  do
  {
    do
    {
      while (1)
      {
        if (v4 != v6 && *v4 == 69)
        {
          v19 = 0;
          goto LABEL_82;
        }

        sub_100009C7C(a1);
        if (!v10)
        {
          return;
        }

        v11 = *(a1 + 24);
        if (v11 == *(a1 + 32))
        {
          break;
        }

        *v11 = v10;
        *(a1 + 24) = v11 + 8;
        v4 = *a1;
        v6 = *(a1 + 8);
        if (*a1 != v6)
        {
          goto LABEL_9;
        }
      }

      v12 = v10;
      v13 = *(a1 + 16);
      v14 = v11 - v13;
      if (v13 == v8)
      {
        v15 = malloc_type_malloc(2 * (v11 - v13), 0x2004093837F09uLL);
        if (!v15)
        {
          goto LABEL_87;
        }

        v16 = *(a1 + 16);
        v17 = *(a1 + 24);
        if (v17 != v16)
        {
          v18 = v15;
          memmove(v15, v16, v17 - v16);
          v15 = v18;
        }

        *(a1 + 16) = v15;
      }

      else
      {
        v15 = malloc_type_realloc(v13, 2 * (v11 - v13), 0x2004093837F09uLL);
        *(a1 + 16) = v15;
        if (!v15)
        {
          goto LABEL_87;
        }
      }

      *(a1 + 32) = &v15[8 * (v14 >> 2)];
      *&v15[v14] = v12;
      *(a1 + 24) = &v15[v14 + 8];
      v4 = *a1;
      v6 = *(a1 + 8);
    }

    while (*a1 == v6);
LABEL_9:
    ;
  }

  while (*v4 != 81);
LABEL_79:
  *a1 = v4 + 1;
  v53 = *(a1 + 778);
  *(a1 + 778) = 1;
  v54 = sub_10000D7B4(a1);
  *(a1 + 778) = v53;
  if (!v54)
  {
    return;
  }

  v4 = *a1;
  if (*a1 == *(a1 + 8))
  {
    return;
  }

  v19 = v54;
  if (*v4 != 69)
  {
    return;
  }

LABEL_82:
  *a1 = v4 + 1;
  v55 = sub_10000A1F8(a1, v7);
  v57 = v56;
  v58 = *(a1 + 4904);
  v59 = v58[1];
  if ((v59 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v58 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v58)
    {
LABEL_88:
      std::terminate();
    }

    v59 = 0;
    *v58 = *v9;
    v58[1] = 0;
    *v9 = v58;
  }

  v58[1] = v59 + 48;
  v60 = v58 + v59;
  v60[24] = 43;
  *(v60 + 25) = *(v60 + 25) & 0xF000 | 0x540;
  *(v60 + 2) = off_1002D3830;
  *(v60 + 4) = v55;
  *(v60 + 5) = v57;
  *(v60 + 6) = v19;
}

char *sub_10000C484(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 45;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D3890;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *sub_10000C54C(uint64_t a1, size_t size)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2 || *v3 != 84)
  {
    return 0;
  }

  v4 = v3 + 1;
  *a1 = v3 + 1;
  if (v3 + 1 == v2 || *v4 != 76)
  {
    v6 = 0;
    if (v4 == v2)
    {
      return 0;
    }
  }

  else
  {
    *a1 = v3 + 2;
    if (v2 == v3 + 2)
    {
      return 0;
    }

    if (v3[2] - 58 < 0xFFFFFFF6)
    {
      return 0;
    }

    v29 = 0;
    v30 = v3 + 4;
    do
    {
      v4 = v30;
      v31 = v30 - 1;
      *a1 = v30 - 1;
      v29 = *(v30 - 2) + 10 * v29 - 48;
      if (v30 - 1 == v2)
      {
        break;
      }

      v32 = *(v30++ - 1) - 48;
      v33 = *(v4 - 1) - 57 < 0;
    }

    while (v32 <= 9);
    if (v31 == v2)
    {
      return 0;
    }

    if (*(v4 - 1) != 95)
    {
      return 0;
    }

    v6 = v29 + 1;
    *a1 = v4;
    if (v4 == v2)
    {
      return 0;
    }
  }

  v7 = *v4;
  if (v7 != 95)
  {
    if ((v7 - 58) >= 0xFFFFFFF6)
    {
      v14 = 0;
      v15 = v4 + 1;
      do
      {
        *a1 = v15;
        if (v15 == v2)
        {
          return 0;
        }

        v14 = *(v15 - 1) + 10 * v14 - 48;
        v17 = *v15++;
        v16 = v17;
      }

      while ((v17 - 48) <= 9);
      if (v16 == 95)
      {
        v8 = v14 + 1;
        v4 = v15 - 1;
        *a1 = v15;
        if (*(a1 + 778) == 1)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    return 0;
  }

  v8 = 0;
  *a1 = v4 + 1;
  if (*(a1 + 778) == 1)
  {
LABEL_11:
    v9 = *(a1 + 4904);
    v10 = v9[1];
    if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_14:
      v9[1] = v10 + 32;
      v13 = v9 + v10;
      v13[24] = 8;
      *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
      *(v13 + 2) = off_1002D1D60;
      *(v13 + 4) = v3;
      *(v13 + 5) = v4 - v3;
      return v13 + 16;
    }

    v11 = a1;
    v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v12)
    {
      v9 = v12;
      v10 = 0;
      *v12 = *(v11 + 4904);
      v12[1] = 0;
      *(v11 + 4904) = v12;
      goto LABEL_14;
    }

LABEL_52:
    std::terminate();
  }

LABEL_21:
  if (*(a1 + 777) != 1 || v6)
  {
    v34 = *(a1 + 664);
    v35 = (*(a1 + 672) - v34) >> 3;
    if (v6 < v35 && (v36 = *(v34 + 8 * v6)) != 0 && (v38 = v36, v37 = *v36, v8 < (v38[1] - v37) >> 3))
    {
      return *(v37 + 8 * v8);
    }

    else
    {
      if (v6 > v35 || *(a1 + 784) != v6)
      {
        return 0;
      }

      if (v6 == v35)
      {
        v43 = 0;
        v39 = a1;
        sub_10000A080((a1 + 664), &v43);
        a1 = v39;
      }

      return sub_10000B8CC(a1, "auto");
    }
  }

  else
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v20 = a1;
      v21 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v21)
      {
        goto LABEL_52;
      }

      v18 = v21;
      v19 = 0;
      a1 = v20;
      *v18 = *(v20 + 4904);
      v18[1] = 0;
      *(v20 + 4904) = v18;
    }

    v18[1] = v19 + 48;
    v22 = v18 + v19;
    v23 = v22 + 16;
    v22[24] = 44;
    *(v22 + 25) = *(v22 + 25) & 0xF000 | 0xA80;
    *(v22 + 2) = off_1002D1E20;
    *(v22 + 4) = v8;
    *(v22 + 5) = 0;
    v22[48] = 0;
    v24 = *(a1 + 728);
    if (v24 == *(a1 + 736))
    {
      v25 = *(a1 + 720);
      v26 = &v24[-v25];
      v27 = a1;
      if (v25 == a1 + 744)
      {
        v40 = malloc_type_malloc(2 * v26, 0x2004093837F09uLL);
        if (!v40)
        {
          goto LABEL_53;
        }

        v28 = v40;
        a1 = v27;
        v41 = *(v27 + 720);
        v42 = *(v27 + 728);
        if (v42 != v41)
        {
          memmove(v28, v41, v42 - v41);
          a1 = v27;
        }

        *(a1 + 720) = v28;
      }

      else
      {
        v28 = malloc_type_realloc(*(a1 + 720), 2 * &v24[-v25], 0x2004093837F09uLL);
        a1 = v27;
        *(v27 + 720) = v28;
        if (!v28)
        {
LABEL_53:
          abort();
        }
      }

      v24 = &v28[v26];
      *(a1 + 736) = &v28[8 * (v26 >> 2)];
    }

    *v24 = v23;
    *(a1 + 728) = v24 + 8;
    return v23;
  }
}

uint64_t sub_10000C9B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 0;
  }

  if (*v1 != 68)
  {
    return 0;
  }

  *a1 = v1 + 1;
  if (v1 + 1 == v2 || (v1[1] | 0x20) != 0x74)
  {
    return 0;
  }

  *a1 = v1 + 2;
  result = sub_10000D7B4(a1);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (*a1 == *(a1 + 8) || *v5 != 69)
  {
    return 0;
  }

  *a1 = v5 + 1;
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = result;
    v9 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v9)
    {
      std::terminate();
    }

    v6 = v9;
    v7 = 0;
    *v9 = *(a1 + 4904);
    v9[1] = 0;
    *(a1 + 4904) = v9;
    result = v8;
  }

  v6[1] = v7 + 64;
  v10 = v6 + v7;
  v10[24] = 60;
  *(v10 + 25) = *(v10 + 25) & 0xF000 | 0x540;
  *(v10 + 2) = off_1002D2690;
  *(v10 + 4) = "decltype";
  *(v10 + 5) = 8;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  *(v10 + 6) = result;
  return (v10 + 16);
}

char *sub_10000CAFC(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  if (*v2 != 83)
  {
    return 0;
  }

  v3 = v2 + 1;
  *a1 = v2 + 1;
  if (v1 == v2 + 1)
  {
    return 0;
  }

  v4 = *v3;
  if (*v3 < 97)
  {
    if (v4 == 95)
    {
      *a1 = v2 + 2;
      v7 = a1[37];
      if (v7 != a1[38])
      {
        return *v7;
      }
    }

    else if (v4 >= 48)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v4 > 0x7A)
  {
LABEL_16:
    if (v4 < 0x3A || v4 - 65 <= 0x19)
    {
      v9 = 0;
      while (*v3 >= 48)
      {
        if (*v3 < 0x3Au)
        {
          v10 = -48;
        }

        else
        {
          if (*v3 - 65 > 0x19)
          {
            break;
          }

          v10 = -55;
        }

        v9 = *v3++ + 36 * v9 + v10;
        *a1 = v3;
        if (v3 == v1)
        {
          break;
        }
      }

      if (v3 != v1 && *v3 == 95)
      {
        *a1 = v3 + 1;
        v11 = a1[37];
        if (v9 + 1 < ((a1[38] - v11) >> 3))
        {
          return *(v11 + 8 * (v9 + 1));
        }
      }
    }

    return 0;
  }

  if (*v3 > 0x68u)
  {
    switch(v4)
    {
      case 'i':
        v5 = 3;
        break;
      case 'o':
        v5 = 4;
        break;
      case 's':
        v5 = 2;
        break;
      default:
        return 0;
    }
  }

  else
  {
    switch(v4)
    {
      case 'a':
        v5 = 0;
        break;
      case 'b':
        v5 = 1;
        break;
      case 'd':
        v5 = 5;
        break;
      default:
        return 0;
    }
  }

  *a1 = v2 + 2;
  v12 = a1[613];
  v13 = *(v12 + 1);
  if ((v13 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = a1;
    v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v15)
    {
      std::terminate();
    }

    v12 = v15;
    v13 = 0;
    a1 = v14;
    *v12 = v14[613];
    *(v12 + 1) = 0;
    v14[613] = v12;
  }

  v16 = v13 + 16;
  *(v12 + 1) = v16;
  v17 = &v12[v16];
  v17[8] = 48;
  *(v17 + 9) = *&v12[v16 + 9] & 0xF000 | 0x540;
  *(v17 + 3) = v5;
  *v17 = off_1002D3470;
  v18 = a1;
  v19 = sub_10001B2BC(a1, &v12[v16]);
  if (v19 == v17)
  {
    return v17;
  }

  v20 = v19;
  v21 = v18;
  v22 = v18[38];
  if (v22 == v18[39])
  {
    v23 = v18[37];
    v24 = v22 - v23;
    if (v23 == (v18 + 40))
    {
      v25 = malloc_type_malloc(2 * (v22 - v23), 0x2004093837F09uLL);
      if (!v25)
      {
        goto LABEL_56;
      }

      v21 = v18;
      v26 = v18[37];
      v27 = v18[38];
      if (v27 != v26)
      {
        v28 = v25;
        memmove(v25, v26, v27 - v26);
        v25 = v28;
        v21 = v18;
      }

      v21[37] = v25;
    }

    else
    {
      v25 = malloc_type_realloc(v23, 2 * (v22 - v23), 0x2004093837F09uLL);
      v21 = v18;
      v18[37] = v25;
      if (!v25)
      {
LABEL_56:
        abort();
      }
    }

    v22 = &v25[v24];
    v21[39] = &v25[8 * (v24 >> 2)];
  }

  *v22 = v20;
  v21[38] = v22 + 8;
  return v20;
}

char *sub_10000CE68(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v54 = a4;
  v55 = a3;
  if (sub_10000B15C(a1, &v54))
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v8 == v9)
  {
    v10 = 1;
    goto LABEL_31;
  }

  if (*v8 == 70)
  {
    v10 = 0;
    *a1 = ++v8;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_8:
    v10 = 1;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  if (*v8 == 76)
  {
    *a1 = ++v8;
  }

LABEL_11:
  if (v9 != v8 && *v8 >= 49)
  {
    v11 = *v8;
    if (v11 <= 0x39)
    {
      v12 = sub_10000B6E8(a1);
      goto LABEL_32;
    }

    if (v11 == 85)
    {
      sub_10001431C(a1, a2);
      goto LABEL_32;
    }
  }

  if ((v9 - v8) >= 2 && *v8 == 17220)
  {
    *a1 = v8 + 2;
    v35 = *(a1 + 16);
    v34 = *(a1 + 24);
    result = sub_10000B6E8(a1);
    if (!result)
    {
      return result;
    }

    v36 = result;
    v37 = (v34 - v35) >> 3;
    while (1)
    {
      v38 = *(a1 + 24);
      if (v38 == *(a1 + 32))
      {
        v39 = *(a1 + 16);
        v40 = v38 - v39;
        if (v39 == (a1 + 40))
        {
          v41 = malloc_type_malloc(2 * (v38 - v39), 0x2004093837F09uLL);
          if (!v41)
          {
LABEL_91:
            abort();
          }

          v42 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v43 != v42)
          {
            v44 = v41;
            memmove(v41, v42, v43 - v42);
            v41 = v44;
          }

          *(a1 + 16) = v41;
        }

        else
        {
          v41 = malloc_type_realloc(v39, 2 * (v38 - v39), 0x2004093837F09uLL);
          *(a1 + 16) = v41;
          if (!v41)
          {
            goto LABEL_91;
          }
        }

        v38 = &v41[v40];
        *(a1 + 32) = &v41[8 * (v40 >> 2)];
      }

      *v38 = v36;
      *(a1 + 24) = v38 + 8;
      v45 = *a1;
      if (*a1 != *(a1 + 8) && *v45 == 69)
      {
        break;
      }

      v36 = sub_10000B6E8(a1);
      result = 0;
      if (!v36)
      {
        return result;
      }
    }

    *a1 = v45 + 1;
    v46 = sub_10000A1F8(a1, v37);
    v48 = v47;
    v49 = *(a1 + 4904);
    v50 = v49[1];
    if ((v50 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v49 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v49)
      {
        goto LABEL_92;
      }

      v50 = 0;
      *v49 = *(a1 + 4904);
      v49[1] = 0;
      *(a1 + 4904) = v49;
    }

    v49[1] = v50 + 32;
    v51 = v49 + v50;
    v16 = v51 + 16;
    v51[24] = 53;
    *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
    *(v51 + 2) = off_1002D3590;
    *(v51 + 4) = v46;
    *(v51 + 5) = v48;
    goto LABEL_33;
  }

  if (v9 == v8 || *v8 - 67 > 1)
  {
LABEL_31:
    v12 = sub_10001A9D8(a1, a2);
    goto LABEL_32;
  }

  result = 0;
  if (!v4 || v54)
  {
    return result;
  }

  if (v4[8] == 48)
  {
    v57 = v4;
    v4 = sub_10001BD1C(a1, &v57);
    v55 = v4;
    v8 = *a1;
    v9 = *(a1 + 8);
  }

  if (v8 == v9)
  {
    return 0;
  }

  v13 = *v8;
  if (v13 == 67)
  {
    v14 = v8 + 1;
    *a1 = v8 + 1;
    if (v8 + 1 == v9 || *v14 != 73)
    {
      v15 = 0;
    }

    else
    {
      v14 = v8 + 2;
      *a1 = v8 + 2;
      v15 = 1;
    }

    if (v9 == v14)
    {
      return 0;
    }

    v53 = *v14;
    if ((v53 - 49) > 4)
    {
      return 0;
    }

    LODWORD(v57) = v53 - 48;
    *a1 = v14 + 1;
    if (a2)
    {
      *a2 = 1;
    }

    if (v15 && !sub_1000094F0(a1, a2))
    {
      v16 = 0;
      goto LABEL_33;
    }

    v56 = 0;
  }

  else
  {
    result = 0;
    if ((v9 - v8) < 2)
    {
      return result;
    }

    if (v13 != 68)
    {
      return result;
    }

    result = 0;
    v52 = v8[1];
    if (v52 > 0x35 || ((1 << v52) & 0x37000000000000) == 0)
    {
      return result;
    }

    LODWORD(v57) = v52 - 48;
    *a1 = v8 + 2;
    if (a2)
    {
      *a2 = 1;
    }

    v56 = 1;
  }

  v12 = sub_10001BDD4(a1, &v55, &v56, &v57);
LABEL_32:
  v16 = v12;
LABEL_33:
  if (v16 && (v17 = v54) != 0)
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v18 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v18)
      {
        goto LABEL_92;
      }

      v19 = 0;
      *v18 = *(a1 + 4904);
      v18[1] = 0;
      *(a1 + 4904) = v18;
    }

    v18[1] = v19 + 32;
    v20 = v18 + v19;
    v20[24] = 28;
    *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
    *(v20 + 2) = off_1002D3650;
    *(v20 + 4) = v17;
    *(v20 + 5) = v16;
    v16 = v20 + 16;
  }

  else if (!v16)
  {
    return 0;
  }

  result = sub_10001B2BC(a1, v16);
  if (result)
  {
    v21 = v10;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v29 = *(a1 + 4904);
    v30 = v29[1];
    if ((v30 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v31 = result;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v32)
      {
        goto LABEL_92;
      }

      v29 = v32;
      v30 = 0;
      *v32 = *(a1 + 4904);
      v32[1] = 0;
      *(a1 + 4904) = v32;
      result = v31;
    }

    v29[1] = v30 + 32;
    v33 = v29 + v30;
    v27 = v33 + 16;
    v33[24] = 25;
    *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
    v28 = off_1002D36B0;
    goto LABEL_54;
  }

  if (result && v4)
  {
    v22 = *(a1 + 4904);
    v23 = v22[1];
    if ((v23 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_49:
      v22[1] = v23 + 32;
      v26 = v22 + v23;
      v27 = v26 + 16;
      v26[24] = 24;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      v28 = off_1002D3710;
LABEL_54:
      *(v27 + 2) = v4;
      *(v27 + 3) = result;
      result = v27;
      *v27 = v28;
      return result;
    }

    v24 = result;
    v25 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v25)
    {
      v22 = v25;
      v23 = 0;
      *v25 = *(a1 + 4904);
      v25[1] = 0;
      *(a1 + 4904) = v25;
      result = v24;
      goto LABEL_49;
    }

LABEL_92:
    std::terminate();
  }

  return result;
}

uint64_t sub_10000D484(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = *(v3 + 9);
  if ((v4 & 0xC0) == 0x80)
  {
    result = (**v3)(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 < 0x40;
  }

  return result;
}

uint64_t sub_10000D52C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = v3[10] & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 8))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t sub_10000D5D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = (*(v3 + 9) >> 10) & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 16))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t sub_10000D67C(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 24))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t sub_10000D6DC(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 32))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t sub_10000D73C(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 40))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

void sub_10000D7B4(uint64_t a1, size_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  if (v4 < 2)
  {
    return;
  }

  v6 = *v2;
  v7 = v6 != 29543;
  if (v6 == 29543)
  {
    *a1 = ++v2;
    v4 = v3 - v2;
    v8 = 1;
    v171 = 1;
    if ((v3 - v2) < 2)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    v171 = 0;
  }

  v9 = 0;
  v10 = v2 + 1;
  v11 = *v2;
  v12 = 62;
  do
  {
    v13 = (v9 + v12) >> 1;
    v14 = &unk_1002D1E70 + 16 * v13;
    if (*v14 < v11)
    {
      v9 = v13 + 1;
    }

    else if (*v14 == v11)
    {
      if (v14[1] >= *v10)
      {
        v12 = (v9 + v12) >> 1;
      }

      else
      {
        v9 = v13 + 1;
      }
    }

    else
    {
      v12 = (v9 + v12) >> 1;
    }
  }

  while (v12 != v9);
  v15 = &unk_1002D1E70 + 16 * v9;
  if (*v15 == v11 && v15[1] == *v10)
  {
    v16 = v2 + 1;
    *a1 = v2 + 1;
    v17 = v15[2];
    v18 = *(v15 + 1);
    v19 = strlen(v18);
    v20 = v19;
    if (v17 > 0xA)
    {
      v21 = *(v15 + 1);
    }

    else
    {
      v21 = (v18 + 8);
      if (v19 == 8)
      {
        v20 = 0;
      }

      else
      {
        v22 = *v21;
        if (v22 == 32)
        {
          v20 = v19 - 9;
        }

        else
        {
          v20 = v19 - 8;
        }

        if (v22 == 32)
        {
          v21 = (v18 + 9);
        }
      }
    }

    v170.n128_u64[0] = v21;
    v170.n128_u64[1] = v20;
    switch(v17)
    {
      case 1u:
        if (v16 == v3 || *v16 != 95)
        {
          v174.n128_u64[0] = sub_10000D7B4(a1);
          if (v174.n128_u64[0])
          {
            LODWORD(v169) = v15[3] >> 1;
            sub_10000EC9C(a1, &v174, &v170, &v169);
          }
        }

        else
        {
          *a1 = v2 + 3;
          v55 = v15[3] >> 1;
          v174.n128_u64[0] = v21;
          v174.n128_u64[1] = v20;
          LODWORD(v172) = v55;
          *&v169 = sub_10000D7B4(a1);
          if (v169)
          {
            sub_1000127C0(a1, &v174, &v169, &v172);
          }
        }

        return;
      case 2u:
        v56 = v15[3] >> 1;
        v174.n128_u64[0] = v21;
        v174.n128_u64[1] = v20;
        v173 = v56;
        *&v169 = sub_10000D7B4(a1);
        if (v169)
        {
          v172 = sub_10000D7B4(a1);
          if (v172)
          {
            sub_1000123E8(a1, &v169, &v174, &v172, &v173);
          }
        }

        return;
      case 3u:
        v174.n128_u64[0] = sub_10000D7B4(a1);
        if (v174.n128_u64[0])
        {
          *&v169 = sub_10000D7B4(a1);
          if (v169)
          {
            LODWORD(v172) = v15[3] >> 1;
            sub_10000ED74(a1, &v174, &v169, &v172);
          }
        }

        return;
      case 4u:
        v174.n128_u64[0] = sub_10000D7B4(a1);
        if (v174.n128_u64[0])
        {
          *&v169 = sub_10000D7B4(a1);
          if (v169)
          {
            LODWORD(v172) = v15[3] >> 1;
            sub_10000EE48(a1, &v174, &v170, &v169, &v172);
          }
        }

        return;
      case 5u:
        v63 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v64 = (a1 + 40);
        while (2)
        {
          if (v16 != v3 && *v16 == 95)
          {
            *a1 = v16 + 1;
            v174.n128_u64[0] = sub_10000A1F8(a1, v63);
            v174.n128_u64[1] = v113;
            v172 = sub_1000074E8(a1);
            if (!v172)
            {
              return;
            }

            v114 = sub_100006900(a1, "pi", 2uLL);
            v116 = *(a1 + 16);
            v115 = *(a1 + 24);
            if (v114)
            {
              while (1)
              {
                v117 = *a1;
                if (*a1 != *(a1 + 8) && *v117 == 69)
                {
                  break;
                }

                v122 = sub_10000D7B4(a1);
                if (!v122)
                {
                  return;
                }

                v121 = *(a1 + 24);
                if (v121 == *(a1 + 32))
                {
                  v123 = v122;
                  v124 = *(a1 + 16);
                  v125 = v121 - v124;
                  if (v124 == v64)
                  {
                    v120 = malloc_type_malloc(2 * (v121 - v124), 0x2004093837F09uLL);
                    if (!v120)
                    {
                      goto LABEL_299;
                    }

                    v126 = *(a1 + 16);
                    v127 = *(a1 + 24);
                    if (v127 != v126)
                    {
                      v128 = v120;
                      memmove(v120, v126, v127 - v126);
                      v120 = v128;
                    }

                    *(a1 + 16) = v120;
                  }

                  else
                  {
                    v120 = malloc_type_realloc(v124, 2 * (v121 - v124), 0x2004093837F09uLL);
                    *(a1 + 16) = v120;
                    if (!v120)
                    {
                      goto LABEL_299;
                    }
                  }

                  v121 = &v120[v125];
                  *(a1 + 32) = &v120[8 * (v125 >> 2)];
                  v122 = v123;
                }

                *v121 = v122;
                *(a1 + 24) = v121 + 1;
              }
            }

            else
            {
              v117 = *a1;
              if (*a1 == *(a1 + 8) || *v117 != 69)
              {
                return;
              }
            }

            *a1 = v117 + 1;
            *&v169 = sub_10000A1F8(a1, (v115 - v116) >> 3);
            *(&v169 + 1) = v118;
            v119 = v15[3];
            v168 = v119 & 1;
            v173 = v119 >> 1;
            sub_10000EF34(a1, &v174, &v172, &v169, &v171, &v168, &v173);
            return;
          }

          v67 = sub_10000D7B4(a1);
          if (!v67)
          {
            return;
          }

          v66 = *(a1 + 24);
          if (v66 != *(a1 + 32))
          {
            goto LABEL_124;
          }

          v68 = v67;
          v69 = *(a1 + 16);
          v70 = v66 - v69;
          if (v69 == v64)
          {
            v65 = malloc_type_malloc(2 * (v66 - v69), 0x2004093837F09uLL);
            if (v65)
            {
              v71 = *(a1 + 16);
              v72 = *(a1 + 24);
              if (v72 != v71)
              {
                v73 = v65;
                memmove(v65, v71, v72 - v71);
                v65 = v73;
              }

              *(a1 + 16) = v65;
              goto LABEL_123;
            }
          }

          else
          {
            v65 = malloc_type_realloc(v69, 2 * (v66 - v69), 0x2004093837F09uLL);
            *(a1 + 16) = v65;
            if (v65)
            {
LABEL_123:
              v66 = &v65[v70];
              *(a1 + 32) = &v65[8 * (v70 >> 2)];
              v67 = v68;
LABEL_124:
              *v66 = v67;
              *(a1 + 24) = v66 + 1;
              v16 = *a1;
              v3 = *(a1 + 8);
              continue;
            }
          }

          goto LABEL_299;
        }

      case 6u:
        v57 = sub_10000D7B4(a1);
        if (!v57)
        {
          return;
        }

        v58 = v57;
        v59 = v15[3];
        v60 = *(a1 + 4904);
        v61 = v60[1];
        if ((v61 - 4048) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_117;
        }

        v60 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v60)
        {
          goto LABEL_300;
        }

        v61 = 0;
        *v60 = *(a1 + 4904);
        v60[1] = 0;
        *(a1 + 4904) = v60;
LABEL_117:
        v60[1] = v61 + 32;
        v62 = v60 + v61;
        v62[24] = 65;
        *(v62 + 25) = *(v62 + 25) & 0xF000 | (v59 >> 1) | 0x540;
        *(v62 + 2) = off_1002D24B0;
        *(v62 + 4) = v58;
        v62[40] = v8;
        v62[41] = v59 & 1;
        return;
      case 7u:
        *&v169 = sub_10000D7B4(a1);
        if (!v169)
        {
          return;
        }

        v74 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        while (2)
        {
          v78 = *a1;
          if (*a1 == *(a1 + 8) || *v78 != 69)
          {
            v77 = sub_10000D7B4(a1);
            if (!v77)
            {
              return;
            }

            v76 = *(a1 + 24);
            if (v76 != *(a1 + 32))
            {
LABEL_142:
              *v76 = v77;
              *(a1 + 24) = v76 + 1;
              continue;
            }

            v79 = v77;
            v80 = *(a1 + 16);
            v81 = v76 - v80;
            if (v80 == (a1 + 40))
            {
              v75 = malloc_type_malloc(2 * (v76 - v80), 0x2004093837F09uLL);
              if (v75)
              {
                v82 = *(a1 + 16);
                v83 = *(a1 + 24);
                if (v83 != v82)
                {
                  v84 = v75;
                  memmove(v75, v82, v83 - v82);
                  v75 = v84;
                }

                *(a1 + 16) = v75;
                goto LABEL_141;
              }
            }

            else
            {
              v75 = malloc_type_realloc(v80, 2 * (v76 - v80), 0x2004093837F09uLL);
              *(a1 + 16) = v75;
              if (v75)
              {
LABEL_141:
                v76 = &v75[v81];
                *(a1 + 32) = &v75[8 * (v81 >> 2)];
                v77 = v79;
                goto LABEL_142;
              }
            }

LABEL_299:
            abort();
          }

          break;
        }

        *a1 = v78 + 1;
        v174.n128_u64[0] = sub_10000A1F8(a1, v74);
        v174.n128_u64[1] = v130;
        v131 = v15[3];
        LOBYTE(v173) = v131 & 1;
        LODWORD(v172) = v131 >> 1;
        v132 = &v169;
        goto LABEL_231;
      case 8u:
        v49 = *(a1 + 776);
        *(a1 + 776) = 0;
        v50 = sub_1000074E8(a1);
        *&v169 = v50;
        *(a1 + 776) = v49;
        if (!v50)
        {
          return;
        }

        v51 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v52 = *a1;
        v53 = *(a1 + 8);
        if (*a1 == v53)
        {
          goto LABEL_242;
        }

        v54 = *v52;
        if (v54 == 95)
        {
          v52 = (v52 + 1);
          *a1 = v52;
          while (v52 == v53 || *v52 != 69)
          {
            v87 = sub_10000D7B4(a1);
            if (!v87)
            {
              return;
            }

            v86 = *(a1 + 24);
            if (v86 == *(a1 + 32))
            {
              v88 = v87;
              v89 = *(a1 + 16);
              v90 = v86 - v89;
              if (v89 == (a1 + 40))
              {
                v85 = malloc_type_malloc(2 * (v86 - v89), 0x2004093837F09uLL);
                if (!v85)
                {
                  goto LABEL_299;
                }

                v91 = *(a1 + 16);
                v92 = *(a1 + 24);
                if (v92 != v91)
                {
                  v93 = v85;
                  memmove(v85, v91, v92 - v91);
                  v85 = v93;
                }

                *(a1 + 16) = v85;
              }

              else
              {
                v85 = malloc_type_realloc(v89, 2 * (v86 - v89), 0x2004093837F09uLL);
                *(a1 + 16) = v85;
                if (!v85)
                {
                  goto LABEL_299;
                }
              }

              v86 = &v85[v90];
              *(a1 + 32) = &v85[8 * (v90 >> 2)];
              v87 = v88;
            }

            *v86 = v87;
            *(a1 + 24) = v86 + 1;
            v52 = *a1;
            v53 = *(a1 + 8);
          }
        }

        else if (v54 != 69)
        {
LABEL_242:
          v136 = sub_10000D7B4(a1);
          if (!v136)
          {
            return;
          }

          v137 = *(a1 + 24);
          if (v137 == *(a1 + 32))
          {
            v138 = v136;
            v139 = *(a1 + 16);
            v140 = v137 - v139;
            if (v139 == (a1 + 40))
            {
              v141 = malloc_type_malloc(2 * (v137 - v139), 0x2004093837F09uLL);
              if (!v141)
              {
                goto LABEL_299;
              }

              v150 = *(a1 + 16);
              v151 = *(a1 + 24);
              if (v151 != v150)
              {
                v152 = v141;
                memmove(v141, v150, v151 - v150);
                v141 = v152;
              }

              *(a1 + 16) = v141;
            }

            else
            {
              v141 = malloc_type_realloc(v139, 2 * (v137 - v139), 0x2004093837F09uLL);
              *(a1 + 16) = v141;
              if (!v141)
              {
                goto LABEL_299;
              }
            }

            v137 = &v141[v140];
            *(a1 + 32) = &v141[8 * (v140 >> 2)];
            v136 = v138;
          }

          *v137 = v136;
          *(a1 + 24) = v137 + 1;
          v174.n128_u64[0] = sub_10000A1F8(a1, v51);
          v174.n128_u64[1] = v135;
LABEL_269:
          if (v135 != 1)
          {
            return;
          }

LABEL_270:
          LODWORD(v172) = v15[3] >> 1;
          sub_10000F12C(a1, &v169, &v174, &v172);
          return;
        }

        *a1 = v52 + 1;
        v174.n128_u64[0] = sub_10000A1F8(a1, v51);
        v174.n128_u64[1] = v135;
        if (v54 == 95)
        {
          goto LABEL_270;
        }

        goto LABEL_269;
      case 9u:
        v174.n128_u64[0] = sub_10000D7B4(a1);
        if (v174.n128_u64[0])
        {
          *&v169 = sub_10000D7B4(a1);
          if (v169)
          {
            v172 = sub_10000D7B4(a1);
            if (v172)
            {
              v173 = v15[3] >> 1;
              sub_10000F204(a1, &v174, &v169, &v172, &v173);
            }
          }
        }

        return;
      case 0xAu:
        return;
      case 0xBu:
        v174.n128_u64[0] = sub_1000074E8(a1);
        if (v174.n128_u64[0])
        {
          *&v169 = sub_10000D7B4(a1);
          if (v169)
          {
            LODWORD(v172) = v15[3] >> 1;
            sub_10000F2EC(a1, &v170, &v174, &v169, &v172);
          }
        }

        return;
      case 0xCu:
        v47 = v15[3];
        if (v47)
        {
          v48 = sub_1000074E8(a1);
        }

        else
        {
          v48 = sub_10000D7B4(a1);
        }

        v95 = v48;
        if (!v48)
        {
          return;
        }

        v96 = *(a1 + 4904);
        v97 = v96[1];
        if ((v97 - 4016) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_178;
        }

        v96 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v96)
        {
          goto LABEL_300;
        }

        v97 = 0;
        *v96 = *(a1 + 4904);
        v96[1] = 0;
        *(a1 + 4904) = v96;
LABEL_178:
        v96[1] = v97 + 64;
        v98 = v96 + v97;
        v98[24] = 60;
        *(v98 + 25) = *(v98 + 25) & 0xF000 | (v47 >> 1) | 0x540;
        *(v98 + 2) = off_1002D2690;
        *(v98 + 4) = v21;
        *(v98 + 5) = v20;
        *(v98 + 7) = 0;
        *(v98 + 8) = 0;
        *(v98 + 6) = v95;
        return;
      default:
        v37 = v15[3];
        v38 = sub_10000D7B4(a1);
        if (!v38)
        {
          return;
        }

        v39 = v38;
        v40 = *(a1 + 4904);
        v41 = v40[1];
        if ((v41 - 4032) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_72;
        }

        v40 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v40)
        {
          goto LABEL_300;
        }

        v41 = 0;
        *v40 = *(a1 + 4904);
        v40[1] = 0;
        *(a1 + 4904) = v40;
LABEL_72:
        v40[1] = v41 + 48;
        v42 = v40 + v41;
        v42[24] = 66;
        *(v42 + 25) = *(v42 + 25) & 0xF000 | (v37 >> 1) | 0x540;
        *(v42 + 2) = off_1002D22D0;
        *(v42 + 4) = v21;
        *(v42 + 5) = v20;
        *(v42 + 6) = v39;
        return;
    }
  }

  switch(v11)
  {
    case 'f':
      v23 = *v10;
      if (v23 != 112)
      {
        if (v23 != 76)
        {
          goto LABEL_78;
        }

        if (v4 == 2)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(v2 + 2);
          if (v24 < 0)
          {
            goto LABEL_78;
          }
        }

        if ((_DefaultRuneLocale.__runetype[v24] & 0x400) == 0)
        {
LABEL_78:
          if (v2 != v3)
          {
            *a1 = v10;
            if (v3 != v10)
            {
              v43 = *v10;
              if (v43 > 107)
              {
                if (v43 == 108)
                {
                  v45 = 0;
                  v44 = 1;
                }

                else
                {
                  if (v43 != 114)
                  {
                    return;
                  }

                  v44 = 0;
                  v45 = 0;
                }
              }

              else if (v43 == 76)
              {
                v44 = 1;
                v45 = 1;
              }

              else
              {
                if (v43 != 82)
                {
                  return;
                }

                v44 = 0;
                v45 = 1;
              }

              *a1 = v2 + 1;
              if ((v3 - (v2 + 1)) >= 2)
              {
                v102 = 0;
                v103 = *(v2 + 2);
                v104 = 62;
                do
                {
                  v105 = (v102 + v104) >> 1;
                  v106 = &unk_1002D1E70 + 16 * v105;
                  if (*v106 < v103)
                  {
                    v102 = v105 + 1;
                  }

                  else if (*v106 == v103)
                  {
                    if (v106[1] >= *(v2 + 3))
                    {
                      v104 = (v102 + v104) >> 1;
                    }

                    else
                    {
                      v102 = v105 + 1;
                    }
                  }

                  else
                  {
                    v104 = (v102 + v104) >> 1;
                  }
                }

                while (v104 != v102);
                v107 = &unk_1002D1E70 + 16 * v102;
                if (*v107 == v103 && v107[1] == *(v2 + 3))
                {
                  *a1 = v2 + 2;
                  v108 = v107[2];
                  if (v108 == 2 || v108 == 4 && *(*(v107 + 1) + strlen(*(v107 + 1)) - 1) == 42)
                  {
                    v109 = sub_10000D7B4(a1);
                    if (v109)
                    {
                      v110 = v109;
                      if (v45)
                      {
                        v111 = sub_10000D7B4(a1);
                        if (!v111)
                        {
                          return;
                        }

                        if (v44)
                        {
                          v112 = v110;
                        }

                        else
                        {
                          v112 = v111;
                        }

                        if (v44)
                        {
                          v110 = v111;
                        }
                      }

                      else
                      {
                        v112 = 0;
                      }

                      v144 = *(v107 + 1);
                      v145 = strlen(v144);
                      v146 = v144 + 8;
                      if (v145 == 8)
                      {
                        v149 = 0;
                      }

                      else
                      {
                        v147 = *v146;
                        v148 = v144 + 9;
                        if (v147 == 32)
                        {
                          v149 = v145 - 9;
                        }

                        else
                        {
                          v149 = v145 - 8;
                        }

                        if (v147 == 32)
                        {
                          v146 = v148;
                        }
                      }

                      v161 = *(a1 + 4904);
                      v162 = v161[1];
                      if ((v162 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
                      {
                        v161 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                        if (!v161)
                        {
LABEL_300:
                          std::terminate();
                        }

                        v162 = 0;
                        *v161 = *(a1 + 4904);
                        v161[1] = 0;
                        *(a1 + 4904) = v161;
                      }

                      v161[1] = v162 + 64;
                      v163 = v161 + v162;
                      v163[24] = 71;
                      *(v163 + 25) = *(v163 + 25) & 0xF000 | 0x540;
                      *(v163 + 2) = off_1002D2D50;
                      *(v163 + 4) = v110;
                      *(v163 + 5) = v112;
                      *(v163 + 6) = v146;
                      *(v163 + 7) = v149;
                      v163[64] = v44;
                    }
                  }
                }
              }
            }
          }

          return;
        }
      }

      sub_1000103E0(a1);
      return;
    case 'T':

      sub_10000C54C(a1, a2);
      return;
    case 'L':

      sub_10000F3D4(a1);
      return;
  }

  if (*v2 == 27753)
  {
    v25 = v2 + 1;
    *a1 = v2 + 1;
    v26 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v27 = (a1 + 40);
    while (v25 == v3 || *v25 != 69)
    {
      v30 = sub_10001086C(a1);
      if (!v30)
      {
        return;
      }

      v29 = *(a1 + 24);
      if (v29 == *(a1 + 32))
      {
        v31 = v30;
        v32 = *(a1 + 16);
        v33 = v29 - v32;
        if (v32 == v27)
        {
          v28 = malloc_type_malloc(2 * (v29 - v32), 0x2004093837F09uLL);
          if (!v28)
          {
            goto LABEL_299;
          }

          v34 = *(a1 + 16);
          v35 = *(a1 + 24);
          if (v35 != v34)
          {
            v36 = v28;
            memmove(v28, v34, v35 - v34);
            v28 = v36;
          }

          *(a1 + 16) = v28;
        }

        else
        {
          v28 = malloc_type_realloc(v32, 2 * (v29 - v32), 0x2004093837F09uLL);
          *(a1 + 16) = v28;
          if (!v28)
          {
            goto LABEL_299;
          }
        }

        v29 = &v28[v33];
        *(a1 + 32) = &v28[8 * (v33 >> 2)];
        v30 = v31;
      }

      *v29 = v30;
      *(a1 + 24) = v29 + 8;
      v25 = *a1;
      v3 = *(a1 + 8);
    }

    *a1 = v25 + 1;
    v174.n128_u64[0] = sub_10000A1F8(a1, v26);
    v174.n128_u64[1] = v46;
    sub_100010B4C(a1, &v174);
    return;
  }

  if ((v3 - v2) >= 2)
  {
    if (*v2 == 25453)
    {
      *a1 = v2 + 1;

      sub_100010C08(a1);
      return;
    }

    if (*v2 == 30830)
    {
      *a1 = v2 + 1;
      v174.n128_u64[0] = sub_10000D7B4(a1);
      if (v174.n128_u64[0])
      {
        v170.n128_u32[0] = 2;
        sub_100010DD8(a1, &v174, &v170);
      }

      return;
    }
  }

  if (v3 != v2 && (v3 - v2) >= 2 && v11 == 114 && (*v10 | 0x20) == 0x71)
  {

    sub_100010EB8(a1);
    return;
  }

  if (sub_100006900(a1, "so", 2uLL))
  {

    sub_100011450(a1);
    return;
  }

  if (sub_100006900(a1, "sp", 2uLL))
  {
    v174.n128_u64[0] = sub_10000D7B4(a1);
    if (v174.n128_u64[0])
    {
      sub_100011874(a1, &v174);
    }

    return;
  }

  if (sub_100006900(a1, "sZ", 2uLL))
  {
    if (*(a1 + 8) != *a1 && **a1 == 84)
    {
      v174.n128_u64[0] = sub_10000C54C(a1, v94);
      if (v174.n128_u64[0])
      {
        sub_10001192C(a1, &v174);
      }

      return;
    }

    sub_1000103E0(a1);
    v174.n128_u64[0] = v129;
    if (!v129)
    {
      return;
    }

LABEL_252:
    sub_1000119E4(a1, &v174);
    return;
  }

  if (!sub_100006900(a1, "sP", 2uLL))
  {
    if (sub_100006900(a1, "tl", 2uLL))
    {
      v170.n128_u64[0] = sub_1000074E8(a1);
      if (v170.n128_u64[0])
      {
        v133 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v134 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_236;
        }

LABEL_235:
        if (*v134 == 69)
        {
          *a1 = v134 + 1;
          v174.n128_u64[0] = sub_10000A1F8(a1, v133);
          v174.n128_u64[1] = v160;
          sub_100011B64(a1, &v170, &v174);
        }

        else
        {
LABEL_236:
          while (1)
          {
            v174.n128_u64[0] = sub_10001086C(a1);
            if (!v174.n128_u64[0])
            {
              break;
            }

            sub_10000A080((a1 + 16), &v174);
            v134 = *a1;
            if (*a1 != *(a1 + 8))
            {
              goto LABEL_235;
            }
          }
        }
      }

      return;
    }

    if (sub_100006900(a1, "tr", 2uLL))
    {

      sub_10000B8CC(a1, "throw");
      return;
    }

    if (sub_100006900(a1, "tw", 2uLL))
    {
      v174.n128_u64[0] = sub_10000D7B4(a1);
      if (v174.n128_u64[0])
      {
        sub_100011C30(a1, &v174);
      }

      return;
    }

    v153 = *a1;
    if (*a1 == *(a1 + 8) || *v153 != 117)
    {

      sub_100011CE8(a1, !v7);
      return;
    }

    *a1 = v153 + 1;
    v154 = sub_10000B6E8(a1);
    v170.n128_u64[0] = v154;
    if (!v154)
    {
      return;
    }

    *&v169 = 0;
    v155 = (*(*v154 + 56))(v154);
    if (v156 == 8 && *v155 == 0x666F646975755F5FLL)
    {
      v165 = *a1;
      if (*a1 != *(a1 + 8))
      {
        v166 = *v165;
        if (v166 == 122)
        {
          *a1 = v165 + 1;
          v167 = sub_10000D7B4(a1);
          goto LABEL_297;
        }

        if (v166 == 116)
        {
          *a1 = v165 + 1;
          v167 = sub_1000074E8(a1);
LABEL_297:
          *&v169 = v167;
          if (!v167)
          {
            return;
          }

          v157 = *(a1 + 24) - *(a1 + 16);
          sub_10000A080((a1 + 16), &v169);
          goto LABEL_291;
        }
      }
    }

    v157 = *(a1 + 24) - *(a1 + 16);
    v158 = *a1;
    if (*a1 == *(a1 + 8))
    {
      goto LABEL_278;
    }

LABEL_277:
    if (*v158 != 69)
    {
LABEL_278:
      while (1)
      {
        sub_100009C7C(a1);
        v174.n128_u64[0] = v159;
        if (!v159)
        {
          return;
        }

        sub_10000A080((a1 + 16), &v174);
        v158 = *a1;
        if (*a1 != *(a1 + 8))
        {
          goto LABEL_277;
        }
      }
    }

    *a1 = v158 + 1;
LABEL_291:
    v174.n128_u64[0] = sub_10000A1F8(a1, v157 >> 3);
    v174.n128_u64[1] = v164;
    LOBYTE(v173) = 0;
    LODWORD(v172) = 1;
    v132 = &v170;
LABEL_231:
    sub_10000F040(a1, v132, &v174, &v173, &v172);
    return;
  }

  v99 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v100 = *a1;
  if (*a1 == *(a1 + 8))
  {
    goto LABEL_182;
  }

LABEL_181:
  if (*v100 == 69)
  {
    *a1 = v100 + 1;
    v174.n128_u64[0] = sub_10000A1F8(a1, v99);
    v174.n128_u64[1] = v142;
    sub_100011AB0(a1, &v174);
    v174.n128_u64[0] = v143;
    goto LABEL_252;
  }

LABEL_182:
  while (1)
  {
    sub_100009C7C(a1);
    v174.n128_u64[0] = v101;
    if (!v101)
    {
      break;
    }

    sub_10000A080((a1 + 16), &v174);
    v100 = *a1;
    if (*a1 != *(a1 + 8))
    {
      goto LABEL_181;
    }
  }
}