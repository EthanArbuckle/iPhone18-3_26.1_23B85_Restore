uint64_t sub_1ABD8EC80(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1[1]);
}

uint64_t sub_1ABD8ECB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD8ECE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD8ED3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  return sub_1ABD84298(a1, a2);
}

uint64_t sub_1ABD8ED64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return sub_1ABD84498(a1, a2);
}

uint64_t sub_1ABD8EDE4()
{
  sub_1ABA8A2B8();
  v1 = v0[6];
  v2 = v0[8];
  v6 = v0[7];
  return sub_1ABD84EDC(v3, v0[9], v4);
}

uint64_t sub_1ABD8EE14()
{
  sub_1ABA8A2B8();
  v1 = *(v0 + 48);
  return sub_1ABD850A8(v2, *(v0 + 56), v3);
}

uint64_t sub_1ABD8EE34()
{
  sub_1ABA8A2B8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return sub_1ABD854F4(v3);
}

uint64_t sub_1ABD8EE9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1ABF24CA4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1ABF24B24();
}

unint64_t sub_1ABD8EF5C()
{
  result = qword_1EB4D92D0;
  if (!qword_1EB4D92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92D0);
  }

  return result;
}

unint64_t sub_1ABD8EFB0()
{
  result = qword_1EB4D92D8;
  if (!qword_1EB4D92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92D8);
  }

  return result;
}

unint64_t sub_1ABD8F004()
{
  result = qword_1EB4D92E8;
  if (!qword_1EB4D92E8)
  {
    sub_1ABAE2850(&qword_1EB4D92E0, &qword_1ABF5FD58);
    sub_1ABAA68CC();
    sub_1ABD8F9F8(&qword_1EB4D92F0, &qword_1EB4D92F8, &unk_1ABF5FD60, sub_1ABD8F0BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D92E8);
  }

  return result;
}

unint64_t sub_1ABD8F0BC()
{
  result = qword_1EB4D9300;
  if (!qword_1EB4D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9300);
  }

  return result;
}

unint64_t sub_1ABD8F110()
{
  result = qword_1EB4D9308;
  if (!qword_1EB4D9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9308);
  }

  return result;
}

uint64_t sub_1ABD8F1B0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1ABB32D34(v4, __dst) & 1;
}

void sub_1ABD8F210()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v0 + 64;
  v4 = *(v0 + 64);
  v6 = *(v0 + 32);
  sub_1ABA7D32C();
  v9 = v8 & v7;
  v28 = (v10 + 63) >> 6;

  v34 = 0;
  v11 = 0;
  v30 = v1;
  v31 = v3;
  v29 = v5;
  if (!v9)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v32 = v11;
    v33 = v9;
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = (*(v1 + 48) + 40 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[3];
    v18 = *(*(v1 + 56) + 8 * v13);

    if (!v15)
    {
LABEL_31:

      MEMORY[0x1AC5AA8A0](v34);
      sub_1ABA7BC1C();
      return;
    }

    memcpy(v37, v3, 0x48uLL);
    sub_1ABF23D34();

    MEMORY[0x1AC5AA8A0](*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v19 - 1;
      v21 = 32;
      while (1)
      {
        memcpy(__dst, (v18 + v21), sizeof(__dst));
        v22 = __dst[2];
        v23 = BYTE2(__dst[6]);
        sub_1ABAE42A8(__dst, v35);
        sub_1ABF23D34();
        switch(v23)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v22);
            break;
          case 2:
            v24 = 2;
            goto LABEL_13;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            sub_1ABAB67E0();
            goto LABEL_15;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            break;
          default:
            v24 = 0;
LABEL_13:
            MEMORY[0x1AC5AA8A0](v24);
LABEL_15:
            sub_1ABF23D34();
            break;
        }

        v25 = __dst[12];
        v26 = BYTE2(__dst[16]);
        sub_1ABF23D34();
        switch(v26)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v25);
            goto LABEL_25;
          case 2:
            v27 = 2;
            goto LABEL_21;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            sub_1ABAB67E0();
            goto LABEL_23;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            goto LABEL_25;
          default:
            v27 = 0;
LABEL_21:
            MEMORY[0x1AC5AA8A0](v27);
LABEL_23:
            sub_1ABF23D34();
LABEL_25:
            sub_1ABD8F210(v37, __dst[17]);
            sub_1ABAE4304(__dst);
            if (!v20)
            {

              v1 = v30;
              v3 = v31;
              v5 = v29;
              goto LABEL_29;
            }

            --v20;
            v21 += 144;
            break;
        }
      }
    }

LABEL_29:
    v9 = (v33 - 1) & v33;
    v34 ^= sub_1ABF25294();
    v11 = v32;
  }

  while (v9);
LABEL_2:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v28)
    {
      goto LABEL_31;
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1ABD8F534(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  sub_1ABA7D32C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  if (v8)
  {
    while (1)
    {
      v14 = v13;
LABEL_6:
      v15 = __clz(__rbit64(v8)) | (v14 << 6);
      v16 = *(a2 + 48) + 24 * v15;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(*(a2 + 56) + 8 * v15);

      if (!v17)
      {
        break;
      }

      v8 &= v8 - 1;
      memcpy(__dst, a1, sizeof(__dst));
      sub_1ABF23D34();
      sub_1ABBB5B70();

      sub_1ABD8F68C(__dst, v20);

      result = sub_1ABF25294();
      v12 ^= result;
      v13 = v14;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x1AC5AA8A0](v12);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_9;
      }

      v8 = *(v4 + 8 * v14);
      ++v13;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD8F68C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1ABF25294();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v16)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + 40 * (v11 | (v10 << 6)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[3];
    sub_1ABF25234();

    sub_1ABF23D34();
    v16 = sub_1ABF25294();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1AC5AA8A0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABD8F82C()
{
  result = qword_1EB4D2070;
  if (!qword_1EB4D2070)
  {
    sub_1ABAE2850(&qword_1EB4D2068, &qword_1ABF41380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2070);
  }

  return result;
}

unint64_t sub_1ABD8F8A8()
{
  result = qword_1EB4D9330;
  if (!qword_1EB4D9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9330);
  }

  return result;
}

unint64_t sub_1ABD8F8FC()
{
  result = qword_1EB4D9340;
  if (!qword_1EB4D9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9340);
  }

  return result;
}

unint64_t sub_1ABD8F950()
{
  result = qword_1EB4D9348;
  if (!qword_1EB4D9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9348);
  }

  return result;
}

unint64_t sub_1ABD8F9A4()
{
  result = qword_1EB4D9358;
  if (!qword_1EB4D9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9358);
  }

  return result;
}

uint64_t sub_1ABD8F9F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABD8FA74()
{
  result = qword_1EB4D9370;
  if (!qword_1EB4D9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9370);
  }

  return result;
}

unint64_t sub_1ABD8FAC8()
{
  result = qword_1EB4D9380;
  if (!qword_1EB4D9380)
  {
    sub_1ABAE2850(&qword_1EB4D9360, &qword_1ABF5FDB8);
    sub_1ABD8FB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9380);
  }

  return result;
}

unint64_t sub_1ABD8FB4C()
{
  result = qword_1EB4D9388;
  if (!qword_1EB4D9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9388);
  }

  return result;
}

unint64_t sub_1ABD8FBA0()
{
  result = qword_1EB4D9398;
  if (!qword_1EB4D9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9398);
  }

  return result;
}

unint64_t sub_1ABD8FBF8()
{
  result = qword_1EB4D93A8;
  if (!qword_1EB4D93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D93A8);
  }

  return result;
}

uint64_t sub_1ABD8FC58(uint64_t a1)
{
  result = sub_1ABAB47C4(&qword_1EB4D93C0, &qword_1EB4D9288, &qword_1ABF5FD38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABD8FCAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD8FD30()
{
  result = qword_1EB4D93C8[0];
  if (!qword_1EB4D93C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D93C8);
  }

  return result;
}

unint64_t sub_1ABD8FD88()
{
  result = qword_1EB4CF6F0;
  if (!qword_1EB4CF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6F0);
  }

  return result;
}

uint64_t sub_1ABD8FDE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1ABD8FE24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisResult.Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_1ABD8FF70(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1ABD90330();
    if (v3 <= 0x3F)
    {
      type metadata accessor for InitializationResourcesManager();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1ABD90010(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABD90154(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1ABD90330()
{
  if (!qword_1EB4CF838)
  {
    v0 = sub_1ABF241F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CF838);
    }
  }
}

uint64_t sub_1ABD90380(uint64_t a1)
{
  if ((*(a1 + 34) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 34) & 7;
  }
}

uint64_t sub_1ABD9039C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1ABD903DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD90444(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    LOBYTE(a2) = 4;
    *(result + 32) = 0;
  }

  *(result + 34) = a2;
  return result;
}

uint64_t sub_1ABD90478(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1ABD904B8(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD90540(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1ABD90580(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_1ABD90610(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisFact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisAnswer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnosisResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD90984()
{
  result = qword_1EB4D9450;
  if (!qword_1EB4D9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9450);
  }

  return result;
}

unint64_t sub_1ABD909DC()
{
  result = qword_1EB4D9458;
  if (!qword_1EB4D9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9458);
  }

  return result;
}

unint64_t sub_1ABD90A34()
{
  result = qword_1EB4D9460;
  if (!qword_1EB4D9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9460);
  }

  return result;
}

unint64_t sub_1ABD90A8C()
{
  result = qword_1EB4D9468;
  if (!qword_1EB4D9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9468);
  }

  return result;
}

unint64_t sub_1ABD90AE4()
{
  result = qword_1EB4D9470;
  if (!qword_1EB4D9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9470);
  }

  return result;
}

unint64_t sub_1ABD90B3C()
{
  result = qword_1EB4D9478;
  if (!qword_1EB4D9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9478);
  }

  return result;
}

unint64_t sub_1ABD90B94()
{
  result = qword_1EB4D9480;
  if (!qword_1EB4D9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9480);
  }

  return result;
}

unint64_t sub_1ABD90BEC()
{
  result = qword_1EB4D9488;
  if (!qword_1EB4D9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9488);
  }

  return result;
}

unint64_t sub_1ABD90C44()
{
  result = qword_1EB4D9490;
  if (!qword_1EB4D9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9490);
  }

  return result;
}

unint64_t sub_1ABD90C9C()
{
  result = qword_1EB4D9498;
  if (!qword_1EB4D9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9498);
  }

  return result;
}

unint64_t sub_1ABD90CF4()
{
  result = qword_1EB4D94A0;
  if (!qword_1EB4D94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94A0);
  }

  return result;
}

unint64_t sub_1ABD90D4C()
{
  result = qword_1EB4D94A8;
  if (!qword_1EB4D94A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94A8);
  }

  return result;
}

unint64_t sub_1ABD90DA4()
{
  result = qword_1EB4D94B0;
  if (!qword_1EB4D94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94B0);
  }

  return result;
}

unint64_t sub_1ABD90DFC()
{
  result = qword_1EB4D94B8;
  if (!qword_1EB4D94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94B8);
  }

  return result;
}

unint64_t sub_1ABD90E54()
{
  result = qword_1EB4D94C0;
  if (!qword_1EB4D94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94C0);
  }

  return result;
}

unint64_t sub_1ABD90EAC()
{
  result = qword_1EB4D94C8;
  if (!qword_1EB4D94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94C8);
  }

  return result;
}

unint64_t sub_1ABD90F04()
{
  result = qword_1EB4D94D0;
  if (!qword_1EB4D94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94D0);
  }

  return result;
}

unint64_t sub_1ABD90F5C()
{
  result = qword_1EB4D94D8;
  if (!qword_1EB4D94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94D8);
  }

  return result;
}

unint64_t sub_1ABD90FB0()
{
  result = qword_1EB4D94E0;
  if (!qword_1EB4D94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D94E0);
  }

  return result;
}

uint64_t sub_1ABD91004@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1];
  v5 = a2[2];
  return sub_1ABD85314(*a1, a1[1], *a2, *a3, a4);
}

uint64_t sub_1ABD91054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  return sub_1ABD7F604(v8, a2, a3, *a4, *a5, *a6, a6[1], a6[2]);
}

uint64_t sub_1ABD910F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  return sub_1ABD84BA8(a1, a2);
}

uint64_t sub_1ABD9111C()
{
  sub_1ABA8A2B8();
  v1 = *(v0 + 48);
  return sub_1ABD83EB4(v2, *(v0 + 56), v3, v4, v5);
}

uint64_t sub_1ABD9116C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for CustomKnosisResultContext() - 8) + 80);
  v4 = sub_1ABA8C9A0();
  return sub_1ABD830B4(v4);
}

uint64_t sub_1ABD911E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(*(type metadata accessor for CustomKnosisResultContext() - 8) + 80);
  v6 = sub_1ABA8C9A0();
  return sub_1ABD82DD0(v6);
}

uint64_t sub_1ABD91270()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = type metadata accessor for CustomKnosisResultContext();
  sub_1ABA8A54C(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);
  sub_1ABA8AD50();
  v11 = *(v10 + 8);
  v12 = sub_1ABA7D0EC();
  v13(v12);
  v14 = *(v0 + v7 + *(v1 + 44));

  v15 = *(v0 + v7 + *(v1 + 48));

  return MEMORY[0x1EEE6BDD0](v0, v7 + v9, v6 | 7);
}

uint64_t sub_1ABD91354(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  sub_1ABAB67E0();
  v9 = *(type metadata accessor for CustomKnosisResultContext() - 8);
  return a3(a1, a2, v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8);
}

unint64_t sub_1ABD91400()
{
  result = qword_1EB4D9508;
  if (!qword_1EB4D9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9508);
  }

  return result;
}

uint64_t sub_1ABD91518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return sub_1ABAE42A8(&a40, &a18);
}

uint64_t sub_1ABD91540(uint64_t a1)
{
  *(a1 + 72) = 0xED00003A53544341;
}

void KnosisServer.executeKGQ(request:)()
{
  sub_1ABA7E2A8();
  v109 = v0;
  v3 = v2;
  v119 = v4;
  v110 = type metadata accessor for Renderer(0);
  v5 = sub_1ABA7BBB0(v110);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C21C();
  v111 = v8;
  sub_1ABA8409C();
  Context = type metadata accessor for QueryContext();
  v9 = sub_1ABA7BBB0(Context);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  v121 = v12;
  sub_1ABA8409C();
  v13 = sub_1ABF23744();
  v14 = sub_1ABA7BB64(v13);
  v117 = v15;
  v118 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  v115 = v18 - v19;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v20);
  v116 = v107 - v21;
  sub_1ABA8409C();
  v22 = sub_1ABF237F4();
  v23 = sub_1ABA7BB64(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BC58();
  sub_1ABAA29E0();
  v28 = sub_1ABF23774();
  v29 = sub_1ABA7BB64(v28);
  v113 = v30;
  v114 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v35 = v34 - v33;
  v112 = type metadata accessor for LogSignpost();
  v36 = sub_1ABA7BBB0(v112);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7BC58();
  v41 = v40 - v39;
  v42 = v3[1];
  v129 = *v3;
  v130 = v42;
  v131[0] = v3[2];
  *(v131 + 10) = *(v3 + 42);
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v43 = sub_1ABA7AA24(v22, qword_1ED86E460);
  sub_1ABD974A0(&v129, &v126);
  v107[1] = v43;
  v44 = sub_1ABF237D4();
  v45 = sub_1ABF24654();
  sub_1ABB2F6BC(&v129);
  v46 = os_log_type_enabled(v44, v45);
  v120 = v41;
  if (v46)
  {
    sub_1ABA8C938();
    v47 = swift_slowAlloc();
    sub_1ABAA4194();
    v48 = swift_slowAlloc();
    v107[0] = v25;
    v49 = v48;
    v124[0] = v48;
    *v47 = 136315138;
    v125[0] = v129;
    v125[1] = v130;
    v125[2] = v131[0];
    *(&v125[2] + 10) = *(v131 + 10);
    sub_1ABD974A0(&v129, &v126);
    v50 = KnosisKGQRequest.description.getter();
    v52 = v51;
    v126 = v125[0];
    v127 = v125[1];
    v128[0] = v125[2];
    *(v128 + 10) = *(&v125[2] + 10);
    sub_1ABB2F6BC(&v126);
    v53 = sub_1ABADD6D8(v50, v52, v124);

    *(v47 + 4) = v53;
    _os_log_impl(&dword_1ABA78000, v44, v45, "executeKGQ called with request %s", v47, 0xCu);
    sub_1ABA84B54(v49);
    v25 = v107[0];
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    v41 = v120;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v54 = sub_1ABA7AA24(v22, qword_1ED871EF8);
  (*(v25 + 16))(v1, v54, v22);
  sub_1ABF23754();
  sub_1ABF23764();
  v55 = v116;
  sub_1ABF23714();
  v56 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v57 = swift_slowAlloc();
    sub_1ABA96C68(v57);
    sub_1ABF23724();
    sub_1ABA82EDC();
    _os_signpost_emit_with_name_impl(v58, v59, v60, v61, v62, v63, v45, 2u);
    v64 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v64);
  }

  v66 = v117;
  v65 = v118;
  (*(v117 + 16))(v115, v55, v118);
  v67 = sub_1ABF237B4();
  sub_1ABA90758(v67);
  swift_allocObject();
  sub_1ABA960A4();
  v68 = sub_1ABF237A4();
  (*(v66 + 8))(v55, v65);
  *v41 = "Knosis.executeKGQ";
  *(v41 + 8) = 17;
  *(v41 + 16) = 2;
  *(v41 + 24) = v68;
  (*(v113 + 32))(v41 + *(v112 + 24), v35, v114);
  v69 = *&v131[1];
  if ((*&v131[1] & 0x8000000000000000) != 0)
  {
    v104 = v119;
    *v119 = 0;
    v104[1] = 0;
    *(v104 + 11) = 0u;
    *(v104 + 13) = 0u;
    *(v104 + 15) = 0u;
    v104[2] = 0;
    v104[3] = 0xE000000000000000;
    v105 = MEMORY[0x1E69E7CC0];
    v104[17] = 0;
    v104[4] = v105;
    *(v104 + 40) = 2;
    v104[6] = 0xD00000000000001FLL;
    v104[7] = 0x80000001ABF8F130;
    sub_1ABA9A5B8();
    v104[8] = 0;
    v104[9] = 0;
    *(v104 + 80) = 0;
    v104[19] = 0;
    v104[20] = 0;
    v104[18] = 0;
  }

  else
  {
    v70 = v129;
    v71 = v130;
    v126 = 0uLL;
    DWORD2(v127) = 0;
    *&v127 = 0;
    v72 = *(&v131[0] + 1);
    v73 = BYTE8(v131[1]);
    v74 = BYTE9(v131[1]);
    type metadata accessor for QueryTree();
    sub_1ABAB5B14();

    v75 = sub_1ABE73548(v70, *(&v70 + 1), v71, *(&v71 + 1), 0, &v126, v72, v69, v73, v74);
    sub_1ABE8B0C8(&unk_1F208F068);
    if (qword_1ED86D438 != -1)
    {
      sub_1ABAA542C();
      swift_once();
    }

    sub_1ABAA4648(v76);
    v126 = 0uLL;
    LOBYTE(v127) = 2;
    *(&v127 + 1) = v77;
    v78 = v121;
    v79 = v109;
    v80 = sub_1ABD9421C(v121, v75, v72, &v126);
    v82 = v81;
    sub_1ABB3F860(v126, *(&v126 + 1), v127);

    sub_1ABAA5984();
    v83 = v111;
    sub_1ABD97558(v78, v111, v84);
    v85 = *(v79 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
    v86 = v110;
    *(v83 + v110[5]) = MEMORY[0x1E69E7CD0];
    *(v83 + v86[6]) = v80;
    *(v83 + v86[7]) = v82;
    *(v83 + v86[8]) = 4;
    *(v83 + v86[9]) = v85;
    *(v83 + v86[10]) = MEMORY[0x1E69E7CC0];
    sub_1ABE434CC(v125);
    if (*(v78 + *(Context + 52)) == 1)
    {
      v87 = (v121 + *(Context + 48));
      v89 = *v87;
      v88 = v87[1];
      v90 = v87[2];

      v91 = sub_1ABA826A8();
      sub_1ABAFEE5C(v91, v92);
      *&v125[9] = v89;
      *(&v125[9] + 1) = v88;
      *&v125[10] = v90;
    }

    sub_1ABA96A6C(&v126);
    sub_1ABD974FC(&v126, v124);
    v93 = sub_1ABF237D4();
    v94 = sub_1ABF24654();
    sub_1ABB2F710(&v126);
    v95 = os_log_type_enabled(v93, v94);
    v41 = v120;
    if (v95)
    {
      sub_1ABA8C938();
      v96 = swift_slowAlloc();
      sub_1ABAA4194();
      v97 = swift_slowAlloc();
      v124[0] = v97;
      *v96 = 136315138;
      sub_1ABD922F8();
      v100 = sub_1ABADD6D8(v98, v99, v124);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_1ABA78000, v93, v94, "Rendered result: %s", v96, 0xCu);
      sub_1ABA84B54(v97);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v101 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v101);
    }

    sub_1ABA9A5A0();
    sub_1ABD97940(v83, v102);
    sub_1ABAA6158();
    sub_1ABD97940(v121, v103);
    sub_1ABA7F2A0();
    sub_1ABA96A6C(v123);
    memcpy(v119, v125, 0xA8uLL);
    sub_1ABA96A6C(v124);
    sub_1ABD974FC(v123, &v122);
    sub_1ABB2F710(v124);
  }

  sub_1ABD96FB0();
  sub_1ABA7DC50();
  sub_1ABD97940(v41, v106);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD91E50(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v8 = a2;
  v4 = *(result + 16);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return v8;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v2 + i + 16);
    v9[0] = *(v2 + i);
    v9[1] = v6;
    v10 = *(v2 + i + 32);
    ++v3;
    sub_1ABAFF1DC(v9, &v7);
    sub_1ABB181BC(&v7, v9);
  }

  __break(1u);
  return result;
}

void sub_1ABD91F24(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v18 = a2;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  sub_1ABA7D32C();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v3;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];

      sub_1ABB1840C(v17, v15, v16);
    }

    while (v9);
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(v5 + 8 * v12);
    ++v3;
    if (v9)
    {
      v3 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1ABD9202C(uint64_t a1, uint64_t a2, void (*a3)(char *, void))
{
  v5 = 0;
  v17 = a2;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = *(a1 + 32);
  sub_1ABA7D32C();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  if ((v10 & v9) != 0)
  {
    do
    {
      v14 = v5;
LABEL_7:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      a3(&v16, *(*(a1 + 48) + (v15 | (v14 << 6))));
    }

    while (v11);
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return;
    }

    v11 = *(v7 + 8 * v14);
    ++v5;
    if (v11)
    {
      v5 = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1ABD92104()
{
  sub_1ABA7E2A8();
  v1 = sub_1ABF23C54();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1ABA7BC58();
  v3 = sub_1ABAB1194();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  memcpy(v23, v0, 0x69uLL);
  v15 = sub_1ABF21854();
  sub_1ABA90758(v15);
  swift_allocObject();
  sub_1ABF21844();
  sub_1ABF21804();
  v16 = sub_1ABF21824();
  sub_1ABA8C2D0();
  sub_1ABB4D7BC();
  v17 = *(v6 + 8);
  v17(v11, v3);
  v17(v14, v3);
  v16(&v22, 0);
  sub_1ABD97670();
  sub_1ABF21834();
  sub_1ABA96DA4();
  sub_1ABA805B4();
  sub_1ABF23C24();
  if (v18)
  {
    v19 = sub_1ABA8C2D0();
  }

  else
  {
    v19 = sub_1ABA805B4();
  }

  sub_1ABA96210(v19, v20);

  sub_1ABA95918();
  sub_1ABA7BC1C();
}

void sub_1ABD922F8()
{
  sub_1ABA7E2A8();
  v1 = sub_1ABF23C54();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1ABA7BC58();
  v3 = sub_1ABAB1194();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  memcpy(v23, v0, sizeof(v23));
  v15 = sub_1ABF21854();
  sub_1ABA90758(v15);
  swift_allocObject();
  sub_1ABF21844();
  sub_1ABF21804();
  v16 = sub_1ABF21824();
  sub_1ABA8C2D0();
  sub_1ABB4D7BC();
  v17 = *(v6 + 8);
  v17(v11, v3);
  v17(v14, v3);
  v16(&v22, 0);
  sub_1ABD97A30();
  sub_1ABF21834();
  sub_1ABA96DA4();
  sub_1ABA805B4();
  sub_1ABF23C24();
  if (v18)
  {
    v19 = sub_1ABA8C2D0();
  }

  else
  {
    v19 = sub_1ABA805B4();
  }

  sub_1ABA96210(v19, v20);

  sub_1ABA95918();
  sub_1ABA7BC1C();
}

void sub_1ABD924EC()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABF23C54();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1ABA7BC58();
  v8 = sub_1ABAB1194();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7AC18();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27[-1] - v18;
  v27[4] = v5;
  v27[5] = v3;
  v27[6] = v1;
  v20 = sub_1ABF21854();
  sub_1ABA90758(v20);
  swift_allocObject();
  sub_1ABF21844();
  sub_1ABF21804();
  v21 = sub_1ABF21824();
  sub_1ABB4D7BC();
  v22 = *(v11 + 8);
  v22(v16, v8);
  v22(v19, v8);
  v21(v27, 0);
  sub_1ABD8E088();
  sub_1ABF21834();
  sub_1ABA96DA4();
  sub_1ABA805B4();
  sub_1ABF23C24();
  if (v23)
  {
    v24 = sub_1ABA8C2D0();
  }

  else
  {
    v24 = sub_1ABA805B4();
  }

  sub_1ABA96210(v24, v25);

  sub_1ABA95918();
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD9275C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v54 = a4;
  v53 = a2;
  v7 = sub_1ABF21CF4();
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  v50 = v13 - v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v48 - v16;
  sub_1ABA8409C();
  v49 = type metadata accessor for KnosisConfig();
  v17 = sub_1ABA7BBB0(v49);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7AC18();
  v51 = v20 - v21;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v25 = sub_1ABF237F4();
  sub_1ABA7AA24(v25, qword_1ED86E460);
  v26 = sub_1ABF237D4();
  sub_1ABF24654();
  v27 = sub_1ABA90A40();
  if (os_log_type_enabled(v27, v28))
  {
    sub_1ABA8179C();
    v29 = swift_slowAlloc();
    v48 = a1;
    *v29 = 0;
    _os_log_impl(&dword_1ABA78000, v26, v4, "Initializing Knosis with SubgraphView", v29, 2u);
    a1 = v48;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v30 = v53;
  v56[3] = sub_1ABAD219C(v53, a3);
  v56[4] = sub_1ABD97998(v54, v30, a3);
  sub_1ABA978EC();
  v31 = swift_allocObject();
  v56[0] = v31;
  v32 = *(a1 + 16);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(a1 + 32);
  sub_1ABAD219C(&qword_1EB4D9550, &qword_1ABF60F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = 6;
  *(inited + 64) = &type metadata for TriplesIndexHandler;
  *(inited + 72) = &off_1F20843E8;
  sub_1ABA978EC();
  v34 = swift_allocObject();
  *(inited + 40) = v34;
  sub_1ABD976C4(v56, v34 + 16);
  sub_1ABAD219C(&qword_1EB4D8190, qword_1ABF60F30);
  sub_1ABD26F30();
  v57 = sub_1ABF239C4();
  v55[3] = &type metadata for ContextIndexHandler;
  v55[4] = &off_1F2084CE0;
  sub_1ABD25924(v55, 5);
  v35 = v57;
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  result = sub_1ABA95398(0xD000000000000010, 0x80000001ABF8EF40);
  if (v37)
  {
    sub_1ABF21C44();

    v38 = *(v10 + 32);
    v39 = sub_1ABA826A8();
    v38(v39);
    result = sub_1ABA95398(0x614D746E65746E69, 0xE900000000000070);
    if (v40)
    {
      v41 = v50;
      sub_1ABF21C44();

      v42 = v49;
      (v38)(&v24[*(v49 + 20)], v41, v7);
      *&v24[*(v42 + 24)] = 20;
      sub_1ABA97CAC();
      v43 = v51;
      sub_1ABD97558(v24, v51, v44);
      v55[0] = v35;
      v45 = objc_allocWithZone(type metadata accessor for KnosisServer());
      v46 = KnosisServer.init(config:indexHandler:)(v43, v55);
      sub_1ABA80EB4();
      sub_1ABD97940(v24, v47);
      sub_1ABD9783C(v56);
      return v46;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t KnosisServer.__allocating_init(config:indexHandler:)(uint64_t a1, uint64_t *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_1ABA960A4();
  return KnosisServer.init(config:indexHandler:)(v5, a2);
}

uint64_t KnosisServer.init(config:indexHandler:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1ABF21CF4();
  v7 = sub_1ABA7BB64(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C21C();
  v168 = v12;
  sub_1ABA8409C();
  v177 = type metadata accessor for KnosisConfig();
  v13 = sub_1ABA7BBB0(v177);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C21C();
  v186 = v16;
  sub_1ABA8409C();
  v17 = sub_1ABF23744();
  v18 = sub_1ABA7BB64(v17);
  v184 = v19;
  v185 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7AC18();
  v182 = (v22 - v23);
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v167 - v25;
  sub_1ABA8409C();
  v26 = sub_1ABF237F4();
  v27 = sub_1ABA7BB64(v26);
  v174 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7C21C();
  v173 = v31;
  sub_1ABA8409C();
  v32 = sub_1ABF23774();
  v33 = sub_1ABA7BB64(v32);
  v180 = v34;
  v181 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7C21C();
  v176 = v37;
  sub_1ABA8409C();
  v175 = type metadata accessor for LogSignpost();
  v38 = sub_1ABA7BBB0(v175);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7C21C();
  v178 = v41;
  v42 = *a2;
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  sub_1ABA7AA24(v26, qword_1ED86E460);

  v43 = sub_1ABF237D4();
  v44 = sub_1ABF24654();

  v45 = os_log_type_enabled(v43, v44);
  v179 = a1;
  v169 = v9;
  v170 = v6;
  v172 = v42;
  if (v45)
  {
    sub_1ABA8C938();
    v46 = swift_slowAlloc();
    sub_1ABAA4194();
    v47 = swift_slowAlloc();
    v171 = v3;
    v48 = v47;
    *&v194 = v47;
    *v46 = 136315138;

    sub_1ABAD219C(&qword_1EB4D8190, qword_1ABF60F30);
    sub_1ABD26F30();
    sub_1ABF239E4();

    v49 = sub_1ABA826A8();
    v6 = sub_1ABADD6D8(v49, v50, v51);

    *(v46 + 4) = v6;
    _os_log_impl(&dword_1ABA78000, v43, v44, "Initializing Knosis with indexHandlers: %s", v46, 0xCu);
    sub_1ABA84B54(v48);
    v3 = v171;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v52 = v177;
  v53 = v183;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v54 = sub_1ABA7AA24(v26, qword_1ED871EF8);
  (*(v174 + 16))(v173, v54, v26);
  v55 = v176;
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v56 = sub_1ABF23764();
  v57 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v58 = swift_slowAlloc();
    sub_1ABA96C68(v58);
    v59 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v56, v57, v59, "Knosis.init", "", v6, 2u);
    v60 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v60);
  }

  v62 = v184;
  v61 = v185;
  (*(v184 + 16))(v182, v53, v185);
  v63 = sub_1ABF237B4();
  sub_1ABA90758(v63);
  swift_allocObject();
  sub_1ABAA1808();
  v64 = sub_1ABF237A4();
  (*(v62 + 8))(v53, v61);
  v65 = v178;
  *v178 = "Knosis.init";
  *(v65 + 8) = 11;
  *(v65 + 16) = 2;
  *(v65 + 24) = v64;
  (*(v180 + 32))(v65 + *(v175 + 24), v55, v181);
  v66 = v179;
  *&v3[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit] = *&v179[*(v52 + 24)];
  sub_1ABA97CAC();
  v67 = v186;
  sub_1ABD97558(v66, v186, v68);
  v69 = v200;
  v70 = sub_1ABE1A26C(v67);
  v73 = v69;
  if (v69)
  {

    sub_1ABD96FB0();
    sub_1ABA80EB4();
    sub_1ABD97940(v66, v74);
    sub_1ABA7DC50();
    sub_1ABD97940(v65, v75);
    goto LABEL_39;
  }

  v171 = v3;
  v76 = &v3[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_operators];
  *v76 = v70;
  v76[1] = v71;
  v76[2] = v72;
  v78 = v71 + 64;
  v77 = *(v71 + 64);
  v79 = *(v71 + 32);
  sub_1ABA7D32C();
  v82 = v81 & v80;
  v84 = (v83 + 63) >> 6;
  v180 = v85;

  v86 = 0;
  v200 = MEMORY[0x1E69E7CC0];
  v181 = v78;
  v182 = v76;
  if (!v82)
  {
    goto LABEL_13;
  }

  do
  {
    v87 = v86;
LABEL_17:
    v88 = __clz(__rbit64(v82));
    v82 &= v82 - 1;
    v89 = v88 | (v87 << 6);
    v90 = (*(v180 + 48) + 16 * v89);
    v92 = *v90;
    v91 = v90[1];
    sub_1ABA93E64(*(v180 + 56) + 40 * v89, v189);
    *&v190 = v92;
    *(&v190 + 1) = v91;
    sub_1ABA946C0(v189, &v191);

LABEL_18:
    v194 = v190;
    v195 = v191;
    v196 = v192;
    v197 = v193;
    v55 = *(&v190 + 1);
    if (!*(&v190 + 1))
    {
      v186 = v73;

      v105 = v76;
      v106 = *v76;
      v107 = v76[1];
      v108 = v105[2];

      v109 = sub_1ABA826A8();
      v110 = sub_1ABE1AAD0(v109);

      if (qword_1ED86D348 != -1)
      {
        swift_once();
      }

      v111 = qword_1ED87C3F0;

      sub_1ABE1D0A4(v200, v110, v111, &v194);
      v112 = v194;
      v113 = v195;
      v114 = v196;
      v115 = &v171[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser];
      *v115 = v194;
      *(v115 + 1) = v113;
      *(v115 + 2) = v114;
      v116 = *v182;
      v117 = v182[1];
      v118 = v182[2];
      v194 = v112;
      v195 = v113;
      v196 = v114;
      v200 = v116;

      v184 = v117;

      v185 = v112;

      v181 = *(&v112 + 1);

      v183 = v118;
      v119 = v186;
      sub_1ABEBFBC8(&v194, v120, v121, v122, v123, v124, v125, v126, v167, v168);
      v186 = v119;
      if (v119)
      {

        v127 = 0;
        v129 = v178;
        v128 = v179;
        v130 = v182;
        v131 = v171;
        goto LABEL_36;
      }

      v132 = OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_indexHandler;
      v133 = v171;
      *&v171[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_indexHandler] = v172;
      v134 = v168;
      (*(v169 + 16))(v168, &v179[*(v177 + 20)], v170);
      v135 = *v182;
      v136 = v182[1];
      v137 = v182[2];
      v138 = *&v133[v132];
      v139 = *(v115 + 1);
      v200 = *v115;
      v140 = *(v115 + 3);
      v184 = *(v115 + 2);
      v185 = v139;
      v141 = *(v115 + 4);
      v142 = *(v115 + 5);
      v175 = v141;
      v143 = sub_1ABF217F4();
      sub_1ABA90758(v143);
      swift_allocObject();
      v180 = v135;

      v177 = v136;
      v144 = v137;

      v176 = v138;

      v183 = v140;

      v181 = v142;

      sub_1ABF217E4();
      sub_1ABAA1808();
      v78 = v186;
      v145 = sub_1ABF21D34();
      if (!v78)
      {
        v86 = v181;
        v84 = v183;
        v174 = v144;
        v82 = v146;
        v73 = v145;
        sub_1ABD975DC();
        sub_1ABF217D4();
        goto LABEL_44;
      }

      v186 = v78;
      (*(v169 + 8))(v134, v170);

      v127 = 1;
      goto LABEL_35;
    }

    v93 = v194;
    sub_1ABA946C0(&v195, &v190);
    v95 = *(&v191 + 1);
    v94 = v192;
    sub_1ABA93E20(&v190, *(&v191 + 1));
    (*(*(v94 + 8) + 8))(v198, v93, v55, v95);
    v186 = v73;
    if (v73)
    {

      sub_1ABA84B54(&v190);
      v127 = 0;
LABEL_35:
      v131 = v171;
      v129 = v178;
      v128 = v179;
      v130 = v182;
      goto LABEL_36;
    }

    v96 = v198[1];
    v97 = v198[2];
    v184 = v198[0];
    v185 = v198[3];
    v98 = v198[4];
    LODWORD(v183) = v199;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = *(v200 + 16);
      sub_1ABADA79C();
      v200 = v103;
    }

    v99 = *(v200 + 16);
    v55 = v99 + 1;
    if (v99 >= *(v200 + 24) >> 1)
    {
      sub_1ABADA79C();
      v200 = v104;
    }

    sub_1ABB5137C(v198);
    v100 = v200;
    *(v200 + 16) = v55;
    v101 = v100 + 48 * v99;
    *(v101 + 32) = v184;
    *(v101 + 40) = v96;
    *(v101 + 48) = v97;
    *(v101 + 56) = v183;
    *(v101 + 64) = v185;
    *(v101 + 72) = v98;
    sub_1ABA84B54(&v190);
    v73 = v186;
    v78 = v181;
    v76 = v182;
  }

  while (v82);
LABEL_13:
  while (1)
  {
    v87 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v87 >= v84)
    {
      v82 = 0;
      v193 = 0;
      v191 = 0u;
      v192 = 0u;
      v190 = 0u;
      goto LABEL_18;
    }

    v82 = *(v78 + 8 * v87);
    ++v86;
    if (v82)
    {
      v86 = v87;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_44:
  v172 = v73;
  v173 = v82;
  v157 = v194;
  *&v190 = v176;
  *&v194 = v200;
  *(&v194 + 1) = v185;
  *&v195 = v184;
  *(&v195 + 1) = v84;
  *&v196 = v175;
  *(&v196 + 1) = v86;
  sub_1ABD1E8EC(v157, v180, v177, &v190, &v194, v188);
  v130 = v182;
  if (v78)
  {
    v186 = v78;
    v158 = sub_1ABAA2390();
    v159(v158);
    sub_1ABA96210(v172, v173);

    v127 = 1;
    v131 = v171;
    v129 = v178;
    v128 = v179;
LABEL_36:
    sub_1ABD96FB0();
    sub_1ABA80EB4();
    sub_1ABD97940(v128, v147);
    sub_1ABA7DC50();
    sub_1ABD97940(v129, v148);
    v66 = *v130;
    v149 = v130[1];
    v150 = v130[2];

    if (v55)
    {
      if (!v127)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v66 = *&v131[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser];
    v153 = *&v131[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser + 8];
    v154 = *&v131[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser + 16];
    v155 = *&v131[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser + 24];
    v156 = *&v131[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser + 40];

    if (v127)
    {
LABEL_38:
      v151 = *&v131[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_indexHandler];
    }

LABEL_39:
    type metadata accessor for KnosisServer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v160 = sub_1ABAA2390();
    v161(v160);
    sub_1ABA96210(v172, v173);

    v162 = v171;
    memcpy(&v171[OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_intentHandler], v188, 0x48uLL);
    v163 = v178;
    sub_1ABD96FB0();
    sub_1ABA7DC50();
    sub_1ABD97940(v163, v164);
    v165 = type metadata accessor for KnosisServer();
    v187.receiver = v162;
    v187.super_class = v165;
    v66 = objc_msgSendSuper2(&v187, sel_init);
    sub_1ABA80EB4();
    sub_1ABD97940(v179, v166);
  }

  return v66;
}

uint64_t static KnosisServer.withEntitySubgraphView()()
{
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v0 = sub_1ABF237F4();
  sub_1ABA7AA24(v0, qword_1ED86E460);
  v1 = sub_1ABF237D4();
  v2 = sub_1ABF24654();
  if (os_log_type_enabled(v1, v2))
  {
    sub_1ABA8179C();
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1ABA78000, v1, v2, "Initializing Knosis with EntitySubgraphView", v3, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v4 = type metadata accessor for ViewService();
  v5 = static ViewService.clientService.getter(v4);
  sub_1ABD97210(v8);
  v7 = sub_1ABD9275C(v8, &qword_1EB4D9558, &qword_1ABF60F88, qword_1EB4CEF38);

  return v7;
}

id KnosisServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KnosisServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KnosisServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall KnosisServer.executeKGQ(request:)(GDKnosisResult *__return_ptr retstr, GDKnosisRequest *request)
{
  sub_1ABAA1D10();
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED86E460);
  v4 = sub_1ABF237D4();
  sub_1ABF24654();
  v5 = sub_1ABA90A40();
  if (os_log_type_enabled(v5, v6))
  {
    sub_1ABA8179C();
    v7 = swift_slowAlloc();
    sub_1ABA96C68(v7);
    sub_1ABA995B4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    v13 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v13);
  }

  static KnosisKGQRequest.initWithGDKnosisRequest(_:)(v2, __dst);
  KnosisServer.executeKGQ(request:)();
  sub_1ABAA39B4(v14, v15, v16, v17, v18, v19, v20, v21, v23, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v25);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__src, __dst, sizeof(__src));
  KnosisResult.toGDKnosisResult()(v22);
  sub_1ABB2F710(__dst);
}

void __swiftcall KnosisServer.executeKGQWithGraphObjectContext(request:)(GDKnosisResultContext *__return_ptr retstr, GDKnosisRequest *request)
{
  sub_1ABAA1D10();
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED86E460);
  v4 = sub_1ABF237D4();
  sub_1ABF24654();
  v5 = sub_1ABA90A40();
  if (os_log_type_enabled(v5, v6))
  {
    sub_1ABA8179C();
    v7 = swift_slowAlloc();
    sub_1ABA96C68(v7);
    sub_1ABA995B4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    v13 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v13);
  }

  static KnosisKGQRequest.initWithGDKnosisRequest(_:)(v2, __dst);
  KnosisServer.executeKGQ(request:)();
  sub_1ABAA39B4(v14, v15, v16, v17, v18, v19, v20, v21, v24, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v26);
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for GDKnosisResultContext(0);
  v22 = __dst[4];

  ObjectSynthesisDictionaryMapping.init()(__src);
  type metadata accessor for InitializationResourcesManager();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1ABF239C4();
  sub_1ABB2F710(__dst);
  __src[1] = v22;
  __src[2] = v23;
  sub_1ABC6CB84(__src);
}

uint64_t sub_1ABD9421C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v74 = a1;
  Context = type metadata accessor for QueryContext();
  v10 = *(*(Context - 1) + 64);
  MEMORY[0x1EEE9AC00](Context);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v13 = *(a4 + 8);
  v15 = *(a4 + 16);
  v16 = *(a4 + 24);
  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v77 = v12;
  v17 = sub_1ABF237F4();
  v18 = sub_1ABA7AA24(v17, qword_1ED86E460);

  sub_1ABB3F4DC(v14, v13, v15);

  v73 = v18;
  v19 = sub_1ABF237D4();
  v20 = sub_1ABF24654();

  sub_1ABB3F860(v14, v13, v15);

  v21 = os_log_type_enabled(v19, v20);
  v75 = v13;
  v76 = v15;
  v70 = a3;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v84 = v72;
    *v22 = 136315650;
    v71 = v20;
    v23 = sub_1ABE735BC();
    v25 = sub_1ABADD6D8(v23, v24, &v84);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2048;
    *(v22 + 14) = a3;
    *(v22 + 22) = 2080;
    v78 = v14;
    v79 = v75;
    LOBYTE(v80) = v76;
    v81 = v16;
    sub_1ABB3F4DC(v14, v75, v76);

    v26 = KnosisAccessConfig.description.getter();
    v28 = v27;
    sub_1ABB3F860(v78, v79, v80);

    v29 = sub_1ABADD6D8(v26, v28, &v84);

    *(v22 + 24) = v29;
    _os_log_impl(&dword_1ABA78000, v19, v71, "Executing KGQ with queryTree:%s, requestLimit:%ld, accessConfig:%s", v22, 0x20u);
    v30 = v72;
    swift_arrayDestroy();
    MEMORY[0x1AC5AB8B0](v30, -1, -1);
    MEMORY[0x1AC5AB8B0](v22, -1, -1);
  }

  v31 = v16;
  v32 = *(v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_indexHandler);
  v33 = *(a2 + 105);
  v71 = *(a2 + 104);
  LODWORD(v72) = v33;
  v34 = Context[7];
  v35 = v75;
  v36 = v76;
  sub_1ABB3F4DC(v14, v75, v76);

  v37 = v77;
  sub_1ABF21EA4();
  v37[1] = 0;
  v37[2] = 0;
  v38 = v37 + Context[8];
  *(v38 + 10) = 0;
  *(v38 + 3) = 0u;
  *(v38 + 4) = 0u;
  *(v38 + 1) = 0u;
  *(v38 + 2) = 0u;
  *v38 = 0u;
  *(v38 + 88) = xmmword_1ABF34940;
  v38[104] = 0;
  v39 = MEMORY[0x1E69E7CC0];
  *(v37 + Context[10]) = MEMORY[0x1E69E7CC0];
  v40 = (v37 + Context[12]);
  *v40 = 0;
  v40[1] = v39;
  v40[2] = v39;
  v41 = Context[13];
  v42 = Context[14];
  *v37 = a2;
  *(v37 + Context[9]) = v32;
  *(v37 + v41) = v71;
  v43 = v37 + Context[11];
  *v43 = v14;
  *(v43 + 1) = v35;
  v43[16] = v36;
  *(v43 + 3) = v31;
  *(v37 + v42) = v72;
  v44 = v5;
  v45 = (v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser);
  v46 = *(v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser);
  v47 = *(v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser + 8);
  v48 = *(v5 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_parser + 16);
  v49 = v45[3];
  v50 = v45[4];
  v51 = v45[5];
  v78 = v46;
  v79 = v47;
  v80 = v48;
  v81 = v49;
  v82 = v50;
  v83 = v51;
  v52 = *(a2 + 32);
  v53 = *(a2 + 40);

  v54 = sub_1ABE1CB7C(v52, v53);

  v55 = v44;
  v84 = v54;
  v56 = v70;
  if ((v70 & 0x8000000000000000) != 0)
  {
    v58 = v77;
  }

  else
  {
    v57 = *(v54 + 48);
    v58 = v77;
    if ((v57 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    if (v57 > v70)
    {
      v56 = *(v54 + 48);
    }
  }

  *(v54 + 48) = v56;
LABEL_12:
  v59 = *(a2 + 48);
  *(a2 + 48) = v54;

  v60 = sub_1ABE18470(v58, &v84, *(v55 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_operators), *(v55 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_operators + 8), *(v55 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_operators + 16));

  v62 = sub_1ABF237D4();
  v63 = sub_1ABF24654();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v78 = v65;
    *v64 = 136315138;

    v66 = sub_1ABE4938C();
    v68 = v67;

    v69 = sub_1ABADD6D8(v66, v68, &v78);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_1ABA78000, v62, v63, "ExecuteKGQ resultGraph:%s", v64, 0xCu);
    sub_1ABA84B54(v65);
    MEMORY[0x1AC5AB8B0](v65, -1, -1);
    MEMORY[0x1AC5AB8B0](v64, -1, -1);
  }

  sub_1ABD97A84(v58, v74);
  return v60;
}

void KnosisServer.executeKGQForXpc(request:accessConfig:)()
{
  sub_1ABA7E2A8();
  v109 = v0;
  v3 = v2;
  v118 = v4;
  v111 = type metadata accessor for Renderer(0);
  v5 = sub_1ABA7BBB0(v111);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C21C();
  v113 = v8;
  sub_1ABA8409C();
  Context = type metadata accessor for QueryContext();
  v9 = sub_1ABA7BBB0(Context);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  v112 = v12;
  sub_1ABA8409C();
  v117 = sub_1ABF23744();
  v13 = sub_1ABA7BB64(v117);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  v116 = v18 - v19;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - v21;
  v23 = sub_1ABF237F4();
  v24 = sub_1ABA7BB64(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  v31 = v30 - v29;
  v115 = sub_1ABF23774();
  v32 = sub_1ABA7BB64(v115);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7BC58();
  sub_1ABAA29E0();
  v114 = type metadata accessor for LogSignpost();
  v37 = sub_1ABA7BBB0(v114);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7C21C();
  v119 = v40;
  v41 = *v3;
  v107 = v3[1];
  v108 = v41;
  v106 = *(v3 + 16);
  v105 = v3[3];
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v42 = sub_1ABA7AA24(v23, qword_1ED871EF8);
  (*(v26 + 16))(v31, v42, v23);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v43 = sub_1ABF23764();
  v44 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v43, v44, v46, "Knosis.executeKGQForXpc", "", v45, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v47 = v117;
  (*(v15 + 16))(v116, v22, v117);
  v48 = sub_1ABF237B4();
  sub_1ABA90758(v48);
  swift_allocObject();
  v49 = sub_1ABF237A4();
  (*(v15 + 8))(v22, v47);
  v50 = v119;
  *v119 = "Knosis.executeKGQForXpc";
  *(v50 + 8) = 23;
  *(v50 + 16) = 2;
  *(v50 + 24) = v49;
  (*(v34 + 32))(v50 + *(v114 + 24), v1, v115);
  static KnosisKGQRequest.initWithGDKnosisRequest(_:)(v118, &v134);
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v51 = sub_1ABA7AA24(v23, qword_1ED86E460);
  sub_1ABD974A0(&v134, &v137);
  v52 = sub_1ABF237D4();
  v53 = sub_1ABF24654();
  sub_1ABB2F6BC(&v134);
  if (os_log_type_enabled(v52, v53))
  {
    sub_1ABA8C938();
    v54 = swift_slowAlloc();
    sub_1ABAA4194();
    v55 = swift_slowAlloc();
    v122[0] = v55;
    *v54 = 136315138;
    v123 = v134;
    v124 = v135;
    v125[0] = v136[0];
    *(v125 + 10) = *(v136 + 10);
    sub_1ABD974A0(&v134, &v137);
    v56 = KnosisKGQRequest.description.getter();
    v58 = v57;
    v137 = v123;
    v138 = v124;
    v139[0] = v125[0];
    *(v139 + 10) = *(v125 + 10);
    sub_1ABB2F6BC(&v137);
    v59 = sub_1ABADD6D8(v56, v58, v122);

    *(v54 + 4) = v59;
    sub_1ABA82EDC();
    _os_log_impl(v60, v61, v62, v63, v54, 0xCu);
    sub_1ABA84B54(v55);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    v64 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v64);
  }

  v65 = *&v136[1];
  if ((*&v136[1] & 0x8000000000000000) != 0)
  {
    sub_1ABB2F6BC(&v134);
    sub_1ABA9A5B8();
    v123 = 0uLL;
    *&v124 = 0;
    *(&v124 + 1) = 0xE000000000000000;
    *&v125[0] = MEMORY[0x1E69E7CC0];
    BYTE8(v125[0]) = 2;
    *&v125[1] = 0xD00000000000001ELL;
    *(&v125[1] + 1) = 0x80000001ABF8F1B0;
    v127 = 0;
    v126 = 0;
    v128 = 0;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    KnosisResult.toGDKnosisResult()(0xD00000000000001ELL);
    sub_1ABA96A6C(&v137);
    sub_1ABB2F710(&v137);
  }

  else
  {
    v66 = *(v109 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
    v67 = *(&v136[0] + 1);
    if (v66 >= *(&v136[0] + 1))
    {
      v68 = *(&v136[0] + 1);
    }

    else
    {
      v68 = *(v109 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
    }

    if (v68 < 0)
    {
      v68 = *(v109 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
    }

    v117 = v68;
    v118 = v51;
    v69 = *(&v134 + 1);
    v115 = v135;
    v116 = v134;
    v70 = *(&v135 + 1);
    v137 = 0uLL;
    DWORD2(v138) = 0;
    *&v138 = 0;
    v71 = BYTE8(v136[1]);
    v72 = BYTE9(v136[1]);
    type metadata accessor for QueryTree();
    sub_1ABAB5B14();

    v73 = sub_1ABE73548(v116, v69, v115, v70, 0, &v137, v117, v65, v71, v72);
    sub_1ABB2F6BC(&v134);
    *&v137 = v108;
    *(&v137 + 1) = v107;
    LOBYTE(v138) = v106;
    *(&v138 + 1) = v105;
    v74 = v112;
    v75 = sub_1ABD9421C(v112, v73, v67, &v137);
    v77 = v76;
    sub_1ABAA5984();
    v78 = v113;
    sub_1ABD97558(v74, v113, v79);
    v80 = v111;
    *(v78 + v111[5]) = MEMORY[0x1E69E7CD0];
    *(v78 + v80[6]) = v75;
    *(v78 + v80[7]) = v77;
    *(v78 + v80[8]) = 4;
    *(v78 + v80[9]) = v66;
    v81 = v74;
    *(v78 + v80[10]) = MEMORY[0x1E69E7CC0];
    sub_1ABE434CC(&v123);
    if (*(v74 + *(Context + 52)) == 1)
    {
      v82 = (v74 + *(Context + 48));
      v84 = *v82;
      v83 = v82[1];
      v85 = v82[2];
      v86 = *(&v132 + 1);
      v87 = v133;

      sub_1ABAFEE5C(v86, v87);
      *(&v132 + 1) = v84;
      *&v133 = v83;
      *(&v133 + 1) = v85;
    }

    sub_1ABA96A6C(&v137);
    sub_1ABD974FC(&v137, v122);
    v88 = sub_1ABF237D4();
    v89 = sub_1ABF24654();
    sub_1ABB2F710(&v137);
    if (os_log_type_enabled(v88, v89))
    {
      sub_1ABA8C938();
      v90 = swift_slowAlloc();
      sub_1ABAA4194();
      v91 = swift_slowAlloc();
      v122[0] = v91;
      *v90 = 136315138;
      sub_1ABD922F8();
      v94 = sub_1ABADD6D8(v92, v93, v122);

      *(v90 + 4) = v94;
      sub_1ABA82EDC();
      _os_log_impl(v95, v96, v97, v98, v90, 0xCu);
      sub_1ABA84B54(v91);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v99 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v99);
    }

    sub_1ABA7F2A0();
    sub_1ABA96A6C(v120);
    sub_1ABA96A6C(v122);
    sub_1ABD974FC(v120, v121);
    KnosisResult.toGDKnosisResult()(v100);

    memcpy(v121, v122, sizeof(v121));
    sub_1ABB2F710(v121);
    sub_1ABA9A5A0();
    sub_1ABD97940(v78, v101);
    sub_1ABAA6158();
    sub_1ABD97940(v81, v102);
    sub_1ABA96A6C(v122);
    sub_1ABB2F710(v122);
    v50 = v119;
  }

  sub_1ABD96FB0();
  sub_1ABA7DC50();
  sub_1ABD97940(v50, v103);
  sub_1ABA7BC1C();
}

void __swiftcall KnosisServer.executeIntents(request:)(GDKnosisResult *__return_ptr retstr, GDKnosisRequest *request)
{
  sub_1ABAA1D10();
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED86E460);
  v4 = sub_1ABF237D4();
  sub_1ABF24654();
  v5 = sub_1ABA90A40();
  if (os_log_type_enabled(v5, v6))
  {
    sub_1ABA8179C();
    v7 = swift_slowAlloc();
    sub_1ABA96C68(v7);
    sub_1ABA995B4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    v13 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v13);
  }

  static KnosisIntentRequest.initWithGDKnosisRequest(_:)(v2, __dst);
  __dst[21] = __dst[0];
  __dst[22] = __dst[1];
  __dst[23] = __dst[2];
  v16 = *&__dst[3];
  v17 = __dst[5];
  v18 = __dst[6];
  KnosisServer.executeIntents(request:)();

  memcpy(__dst, __src, 0xA8uLL);
  KnosisResult.toGDKnosisResult()(v14);
  sub_1ABB2F710(__src);
}

void KnosisServer.executeIntents(request:)()
{
  sub_1ABA7E2A8();
  v37 = v0;
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 40);
  v39 = *(v1 + 32);
  v38 = *(v1 + 48);
  if (qword_1ED86E458 != -1)
  {
LABEL_17:
    sub_1ABA7D0C4();
    swift_once();
  }

  v7 = sub_1ABF237F4();
  sub_1ABA7AA24(v7, qword_1ED86E460);

  v8 = sub_1ABF237D4();
  v9 = sub_1ABF24654();

  if (os_log_type_enabled(v8, v9))
  {
    sub_1ABA8C938();
    v10 = swift_slowAlloc();
    sub_1ABAA4194();
    v36 = swift_slowAlloc();
    __dst[0] = v36;
    *v10 = 136315138;
    *v47 = v3;
    *&v47[8] = v2;
    *&v47[16] = v5;
    *&v47[24] = v4;
    *&v47[32] = v39;
    *&v47[40] = v6;
    v47[48] = v38;

    v11 = KnosisIntentRequest.description.getter();
    v13 = v12;
    v6 = *&v47[24];

    v4 = sub_1ABADD6D8(v11, v13, __dst);

    *(v10 + 4) = v4;
    _os_log_impl(&dword_1ABA78000, v8, v9, "executeIntents called with request %s", v10, 0xCu);
    sub_1ABA84B54(v36);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  memset(&v47[88], 0, 80);
  v14 = v3;
  *v47 = v3;
  *&v47[8] = v2;
  *&v47[16] = 0;
  *&v47[24] = 0xE000000000000000;
  *&v47[32] = MEMORY[0x1E69E7CC0];
  v47[40] = 2;
  *&v47[48] = 0xD000000000000012;
  *&v47[56] = 0x80000001ABF8F1D0;

  sub_1ABA9A5B8();
  v3 = 0;
  memset(&v47[64], 0, 17);
  v15 = *(v5 + 16);
  v16 = (v5 + 56);
  while (v15 != v3)
  {
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v17 = *v16;
    v19 = *(v16 - 2);
    v18 = *(v16 - 1);
    *&v42 = *(v16 - 3);
    *(&v42 + 1) = v19;
    *&v43 = v18;
    DWORD2(v43) = v17;
    type metadata accessor for QueryTree();
    v6 = sub_1ABAB5B14();

    v20 = sub_1ABE73548(v14, v2, 0, 0xE000000000000000, 0, &v42, v39, 0, v38, 0);
    sub_1ABE8B0C8(&unk_1F208F068);
    if (qword_1ED86D438 != -1)
    {
      sub_1ABAA542C();
      swift_once();
    }

    sub_1ABAA4648(v21);
    __src[0] = 0;
    __src[1] = 0;
    LOBYTE(__src[2]) = 2;
    __src[3] = v22;
    sub_1ABD95B48(v20, __src, &v42);

    sub_1ABB3F860(__src[0], __src[1], __src[2]);

    v4 = v44;
    sub_1ABA7ADD8(__dst);
    *v47 = v42;
    *&v47[16] = v43;
    *&v47[32] = v4;
    memcpy(&v47[40], v45, 0x80uLL);

    sub_1ABB2F710(__dst);
    v23 = *(v4 + 16);

    if (v23)
    {
      sub_1ABA7ADD8(__src);
      sub_1ABA7ADD8(&v42);
      sub_1ABD974FC(__src, v40);
      sub_1ABB2F710(&v42);
      memcpy(v37, __src, 0xA8uLL);
      goto LABEL_15;
    }

    v16 += 8;
    ++v3;
  }

  v24 = sub_1ABF237D4();
  v25 = sub_1ABF24654();
  if (os_log_type_enabled(v24, v25))
  {
    sub_1ABA8C938();
    v26 = swift_slowAlloc();
    sub_1ABAA4194();
    v27 = swift_slowAlloc();
    v40[0] = v27;
    *v26 = 136315138;
    sub_1ABA7F2A0();
    sub_1ABA7ADD8(&v42);
    sub_1ABA7ADD8(__src);
    sub_1ABD974FC(&v42, __dst);
    v28 = KnosisResult.description.getter();
    v30 = v29;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1ABB2F710(__dst);
    sub_1ABADD6D8(v28, v30, v40);
    sub_1ABAA1808();

    *(v26 + 4) = v28;
    sub_1ABA82EDC();
    _os_log_impl(v31, v32, v33, v34, v26, 0xCu);
    sub_1ABA84B54(v27);
    v35 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v35);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA7F2A0();
  sub_1ABA7ADD8(&v42);
  memcpy(v37, v47, 0xA8uLL);
  sub_1ABA7ADD8(__dst);
  sub_1ABD974FC(&v42, __src);
  sub_1ABB2F710(__dst);
LABEL_15:
  sub_1ABA7BC1C();
}

void __swiftcall KnosisServer.executeIntentsWithGraphObjectContext(request:)(GDKnosisResultContext *__return_ptr retstr, GDKnosisRequest *request)
{
  sub_1ABAA1D10();
  if (qword_1ED86E458 != -1)
  {
    sub_1ABA7D0C4();
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED86E460);
  v4 = sub_1ABF237D4();
  sub_1ABF24654();
  v5 = sub_1ABA90A40();
  if (os_log_type_enabled(v5, v6))
  {
    sub_1ABA8179C();
    v7 = swift_slowAlloc();
    sub_1ABA96C68(v7);
    sub_1ABA995B4();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    v13 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v13);
  }

  static KnosisIntentRequest.initWithGDKnosisRequest(_:)(v2, v16);
  KnosisServer.executeIntents(request:)();

  type metadata accessor for GDKnosisResultContext(0);
  v14 = v18;

  ObjectSynthesisDictionaryMapping.init()(v16);
  type metadata accessor for InitializationResourcesManager();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1ABF239C4();
  sub_1ABB2F710(v17);
  v16[1] = v14;
  v16[2] = v15;
  sub_1ABC6CB84(v16);
}

uint64_t sub_1ABD95B48@<X0>(void *a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  v113 = a3;
  v111 = type metadata accessor for Renderer(0);
  v5 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for IntentExecResult();
  v7 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for QueryContext();
  v9 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context);
  v133 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1ABF23744();
  v122 = *(v124 - 8);
  v11 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v120 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v107 - v14;
  v15 = sub_1ABF237F4();
  v115 = *(v15 - 8);
  v16 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1ABF23774();
  v118 = *(v18 - 8);
  v119 = v18;
  v19 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for LogSignpost();
  v21 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a2;
  v25 = a2[1];
  LODWORD(v26) = *(a2 + 16);
  v27 = a2[3];
  if (qword_1ED86E458 != -1)
  {
LABEL_29:
    swift_once();
  }

  v116 = v15;
  v28 = sub_1ABA7AA24(v15, qword_1ED86E460);

  sub_1ABB3F4DC(v24, v25, v26);

  v110 = v28;
  v29 = sub_1ABF237D4();
  v30 = sub_1ABF24654();

  sub_1ABB3F860(v24, v25, v26);

  v31 = os_log_type_enabled(v29, v30);
  v125 = v23;
  v126 = a1;
  v130 = v25;
  v131 = v24;
  LODWORD(v129) = v26;
  v128 = v27;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    __src[0] = v108;
    *v32 = 136315394;
    v33 = sub_1ABE735BC();
    v35 = sub_1ABADD6D8(v33, v34, __src);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    __dst[0] = v24;
    __dst[1] = v25;
    LOBYTE(__dst[2]) = v26;
    __dst[3] = v27;
    sub_1ABB3F4DC(v24, v25, v26);

    v36 = KnosisAccessConfig.description.getter();
    v38 = v37;
    sub_1ABB3F860(__dst[0], __dst[1], __dst[2]);

    v39 = sub_1ABADD6D8(v36, v38, __src);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_1ABA78000, v29, v30, "Executing KGQ with queryTree:%s, accessConfig:%s", v32, 0x16u);
    v40 = v108;
    swift_arrayDestroy();
    MEMORY[0x1AC5AB8B0](v40, -1, -1);
    v41 = v32;
    v23 = v125;
    MEMORY[0x1AC5AB8B0](v41, -1, -1);
  }

  v42 = v124;
  v44 = v121;
  v43 = v122;
  v45 = v127;
  v47 = v114;
  v46 = v115;
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v48 = v116;
  v49 = sub_1ABA7AA24(v116, qword_1ED871EF8);
  (*(v46 + 16))(v47, v49, v48);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v50 = sub_1ABF23764();
  v51 = sub_1ABF24714();
  v52 = sub_1ABF247D4();
  v53 = v130;
  if (v52)
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v50, v51, v55, "Knosis.executeIntent", "", v54, 2u);
    v56 = v54;
    v45 = v127;
    MEMORY[0x1AC5AB8B0](v56, -1, -1);
  }

  (*(v43 + 16))(v120, v44, v42);
  v57 = sub_1ABF237B4();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  v60 = sub_1ABF237A4();
  v61 = *(v43 + 8);
  v15 = v43 + 8;
  v61(v44, v42);
  *v23 = "Knosis.executeIntent";
  *(v23 + 1) = 20;
  v23[16] = 2;
  *(v23 + 3) = v60;
  (*(v118 + 32))(&v23[*(v117 + 24)], v45, v119);
  memcpy(__dst, (v134 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_intentHandler), 0x48uLL);
  memcpy(__src, (v134 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_intentHandler), sizeof(__src));
  v137[0] = v131;
  v137[1] = v53;
  v138 = v129;
  v139 = v128;
  sub_1ABD97890(__dst, v136);
  v62 = v123;
  sub_1ABD1F6E4(v126, v137, v123);
  v124 = 0;
  memcpy(v136, __src, sizeof(v136));
  sub_1ABD978EC(v136);
  v63 = v109;
  v24 = *(v62 + *(v109 + 20));
  sub_1ABD97558(v62, v133, type metadata accessor for QueryContext);
  v64 = *(v63 + 28);
  v65 = v62 + *(v63 + 24);
  v66 = *v65;
  v67 = *(v65 + 8);
  v127 = v24;
  v128 = v66;
  v68 = *(v65 + 16);
  LODWORD(v120) = *(v65 + 24);
  v26 = *(v65 + 40);
  v122 = *(v65 + 32);
  v69 = *(v65 + 48);
  LODWORD(v119) = *(v62 + v64);
  swift_retain_n();
  v130 = v67;

  v129 = v68;

  v121 = v26;

  swift_bridgeObjectRetain_n();
  sub_1ABD97940(v62, type metadata accessor for IntentExecResult);
  v131 = 0;
  v27 = 0;
  a1 = *(v69 + 16);
  v23 = (v69 + 40);
  v70 = MEMORY[0x1E69E7CC0];
  v25 = &unk_1F2093C40;
LABEL_9:
  v71 = &v23[16 * v27];
  while (a1 != v27)
  {
    if (v27 >= *(v69 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    ++v27;
    v24 = (v71 + 2);
    v72 = *(v71 - 1);
    v15 = *v71;

    v26 = sub_1ABF24D84();

    v71 = v24;
    if (v26 <= 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = *(v70 + 16);
        sub_1ABADBAF4();
        v70 = v74;
      }

      v24 = *(v70 + 16);
      v15 = (v24 + 1);
      if (v24 >= *(v70 + 24) >> 1)
      {
        sub_1ABADBAF4();
        v70 = v75;
      }

      *(v70 + 16) = v15;
      v24[v70 + 32] = v26;
      goto LABEL_9;
    }
  }

  v76 = v133;
  v77 = v112;
  sub_1ABD97558(v133, v112, type metadata accessor for QueryContext);
  v78 = *(v134 + OBJC_IVAR____TtC20IntelligencePlatform12KnosisServer_defaultResultLimit);
  v79 = v111;
  *(v77 + *(v111 + 20)) = MEMORY[0x1E69E7CD0];
  *(v77 + v79[6]) = v127;
  v80 = v131;
  *(v77 + v79[7]) = v131;
  *(v77 + v79[8]) = v119;
  *(v77 + v79[9]) = v78;
  *(v77 + v79[10]) = v70;
  v81 = v80;
  sub_1ABE434CC(v135);
  if (*(v76 + *(Context + 52)) == 1)
  {
    v82 = v126[8];
    if (v82)
    {
      v83 = v126[7];
      v84 = v126[9];
    }

    else
    {
      v84 = sub_1ABE8B5B0(MEMORY[0x1E69E7CC0]);
      v83 = 0;
      v82 = 0xE000000000000000;
    }

    v85 = sub_1ABB4563C(v84);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    __src[0] = 0x203A746E65746E69;
    __src[1] = 0xE800000000000000;
    MEMORY[0x1AC5A9410](v83, v82);

    MEMORY[0x1AC5A9410](0x203A73677261202CLL, 0xE800000000000000);
    v86 = MEMORY[0x1AC5A9750](v85, &type metadata for IntentArg);
    v88 = v87;

    MEMORY[0x1AC5A9410](v86, v88);

    v90 = __src[0];
    v89 = __src[1];
    v91 = (v76 + *(Context + 48));
    v92 = v91[1];
    v93 = *(v92 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[1] = v92;
    if (!isUniquelyReferenced_nonNull_native || v93 >= *(v92 + 24) >> 1)
    {
      sub_1ABAAA4F4();
      v92 = v95;
      v91[1] = v95;
    }

    sub_1ABD97720(0, 0, 1, v90, v89);

    v91[1] = v92;
    sub_1ABD97940(v77, type metadata accessor for Renderer);
    v97 = *v91;
    v96 = v91[1];
    v98 = v91[2];

    sub_1ABD97940(v133, type metadata accessor for QueryContext);
    sub_1ABAFEE5C(v135[18], v135[19]);
    v135[18] = v97;
    v135[19] = v96;
    v135[20] = v98;
  }

  else
  {
    sub_1ABD97940(v77, type metadata accessor for Renderer);

    sub_1ABD97940(v76, type metadata accessor for QueryContext);
  }

  v99 = v113;
  v101 = v129;
  v100 = v130;
  v103 = v121;
  v102 = v122;
  v104 = v120;
  sub_1ABD8DED4(v135[11], v135[12]);
  v135[11] = v128;
  v135[12] = v100;
  v135[13] = v101;
  v135[14] = v104;
  v135[15] = v102;
  v135[16] = v103;
  v135[17] = v69;
  memcpy(v99, v135, 0xA8uLL);
  v105 = v125;
  sub_1ABD96FB0();
  return sub_1ABD97940(v105, type metadata accessor for LogSignpost);
}

void KnosisServer.executeIntentsXpc(request:accessConfig:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v39 = *(v2 + 8);
  v40 = *v2;
  v38 = *(v2 + 16);
  v37 = *(v2 + 24);
  v3 = [v0 query];
  v4 = sub_1ABF23C04();
  v6 = v5;

  memset(&v52[6], 0, 80);
  *v49 = v4;
  *&v49[8] = v6;
  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  v51 = MEMORY[0x1E69E7CC0];
  LOBYTE(v52[0]) = 2;
  v52[1] = 0xD000000000000012;
  v52[2] = 0x80000001ABF8F1D0;
  sub_1ABA9A5B8();
  memset(&v52[3], 0, 17);
  static KnosisIntentRequest.initWithGDKnosisRequest(_:)(v1, __dst);
  v7 = __dst[1];
  v8 = __dst[2];
  v9 = __dst[3];
  v42 = __dst[4];
  v43 = __dst[0];
  v10 = __dst[5];
  v41 = __dst[6];
  if (qword_1ED86E458 != -1)
  {
LABEL_15:
    sub_1ABA7D0C4();
    swift_once();
  }

  v11 = sub_1ABF237F4();
  sub_1ABA7AA24(v11, qword_1ED86E460);
  sub_1ABA960A4();

  v12 = sub_1ABF237D4();
  v13 = sub_1ABF24654();

  if (os_log_type_enabled(v12, v13))
  {
    sub_1ABA8C938();
    v14 = swift_slowAlloc();
    sub_1ABAA4194();
    v15 = swift_slowAlloc();
    v47[0] = v15;
    *v14 = 136315138;
    __dst[0] = v43;
    __dst[1] = v7;
    __dst[2] = v8;
    __dst[3] = v9;
    __dst[4] = v42;
    __dst[5] = v10;
    LOBYTE(__dst[6]) = v41;

    v16 = KnosisIntentRequest.description.getter();
    v9 = v17;
    v10 = __dst[3];

    sub_1ABADD6D8(v16, v9, v47);
    sub_1ABA960A4();

    *(v14 + 4) = v16;
    _os_log_impl(&dword_1ABA78000, v12, v13, "ExecuteIntentsXpc called with request %s", v14, 0xCu);
    sub_1ABA84B54(v15);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v18 = *(v8 + 16);

  v19 = 0;
  v20 = (v8 + 56);
  while (v18 != v19)
  {
    if (v19 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v21 = *v20;
    v23 = *(v20 - 2);
    v22 = *(v20 - 1);
    v47[0] = *(v20 - 3);
    v47[1] = v23;
    v47[2] = v22;
    LODWORD(v47[3]) = v21;
    type metadata accessor for QueryTree();
    v10 = sub_1ABAB5B14();

    v24 = sub_1ABE73548(v43, v7, 0, 0xE000000000000000, 0, v47, v42, 0, v41, 0);
    __src[0] = v40;
    __src[1] = v39;
    LOBYTE(__src[2]) = v38;
    __src[3] = v37;
    sub_1ABD95B48(v24, __src, v47);
    v25 = v47[4];
    sub_1ABAA2698(__dst);
    *v49 = *v47;
    v50 = *&v47[2];
    v51 = v25;
    memcpy(v52, &v47[5], sizeof(v52));

    sub_1ABB2F710(__dst);
    v9 = *(v25 + 16);

    if (v9)
    {

      swift_bridgeObjectRelease_n();
      sub_1ABAA2698(v45);
      sub_1ABAA2698(v44);
      sub_1ABD974FC(v45, v47);
      KnosisResult.toGDKnosisResult()(v36);

      memcpy(__src, v44, sizeof(__src));
      sub_1ABB2F710(__src);
      sub_1ABAA2698(v47);
      v35 = v47;
      goto LABEL_13;
    }

    ++v19;
    v20 += 8;
  }

  swift_bridgeObjectRelease_n();

  v26 = sub_1ABF237D4();
  v27 = sub_1ABF24654();
  if (os_log_type_enabled(v26, v27))
  {
    sub_1ABA8C938();
    v28 = swift_slowAlloc();
    sub_1ABAA4194();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v28 = 136315138;
    sub_1ABA7F2A0();
    sub_1ABAA2698(v47);
    sub_1ABAA2698(__src);
    sub_1ABD974FC(v47, __dst);
    v30 = KnosisResult.description.getter();
    v32 = v31;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1ABB2F710(__dst);
    sub_1ABADD6D8(v30, v32, v45);
    sub_1ABAA1808();

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1ABA78000, v26, v27, "Rendered result: %s", v28, 0xCu);
    sub_1ABA84B54(v29);
    v33 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v33);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA7F2A0();
  sub_1ABAA2698(__src);
  sub_1ABAA2698(v45);
  sub_1ABD974FC(__src, __dst);
  KnosisResult.toGDKnosisResult()(v34);
  memcpy(v47, v45, sizeof(v47));
  sub_1ABB2F710(v47);
  sub_1ABAA2698(__dst);
  v35 = __dst;
LABEL_13:
  sub_1ABB2F710(v35);
  sub_1ABA7BC1C();
}

void sub_1ABD96FB0()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = sub_1ABF23784();
  v4 = sub_1ABA7BB64(v3);
  v27 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v11 = sub_1ABF23744();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  sub_1ABAA29E0();
  v17 = type metadata accessor for LogSignpost();
  v18 = *v2;
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v21 = v2 + *(v17 + 24);
  v22 = sub_1ABF23764();
  sub_1ABF23794();
  v26 = sub_1ABF24704();
  if ((sub_1ABF247D4() & 1) == 0)
  {
LABEL_13:

    (*(v14 + 8))(v0, v11);
    sub_1ABA7BC1C();
    return;
  }

  if ((v19 & 1) == 0)
  {
    if (v18)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v27 + 88))(v10, v3) == *MEMORY[0x1E69E93E8])
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v27 + 8))(v10, v3);
        v23 = "";
      }

      sub_1ABA8179C();
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v22, v26, v25, v18, v23, v24, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {
      v18 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1ABD97210@<X0>(void *a1@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v6 = sub_1ABF23BD4();
  v13[0] = 0;
  v7 = [v5 requestAssertionForViewName:v6 error:v13];

  if (v7)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v8 = sub_1ABA7D3C4();
    result = v3(v8);
    if (v2)
    {
      result = swift_unknownObjectRelease();
    }

    else
    {
      *a1 = 0x735F797469746E65;
      a1[1] = 0xEF68706172676275;
      a1[2] = v7;
      a1[3] = result;
      a1[4] = v10;
    }
  }

  else
  {
    v11 = v13[0];
    sub_1ABF21BE4();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABD9735C@<X0>(void *a1@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v6 = sub_1ABF23BD4();
  v13[0] = 0;
  v7 = [v5 requestAssertionForViewName:v6 error:v13];

  if (v7)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v8 = sub_1ABA7D3C4();
    result = v3(v8);
    if (v2)
    {
      result = swift_unknownObjectRelease();
    }

    else
    {
      *a1 = 0xD000000000000010;
      a1[1] = 0x80000001ABF8F290;
      a1[2] = v7;
      a1[3] = result;
      a1[4] = v10;
    }
  }

  else
  {
    v11 = v13[0];
    sub_1ABF21BE4();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABD97558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1ABA7BBB0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1ABD975DC()
{
  result = qword_1ED86BA18;
  if (!qword_1ED86BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BA18);
  }

  return result;
}

unint64_t sub_1ABD97670()
{
  result = qword_1EB4D0170;
  if (!qword_1EB4D0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0170);
  }

  return result;
}

uint64_t sub_1ABD97720(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_1ABAC9278((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1ABD97940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABD97998(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABD979EC()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  sub_1ABA978EC();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

unint64_t sub_1ABD97A30()
{
  result = qword_1EB4D9568;
  if (!qword_1EB4D9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9568);
  }

  return result;
}

uint64_t sub_1ABD97A84(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for QueryContext();
  (*(*(Context - 8) + 32))(a2, a1, Context);
  return a2;
}

uint64_t KTSContextRepresentationProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1ABF24AB4();
  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v5 = (*(a2 + 40))(a1, a2);
  v6 = type metadata accessor for CustomGraphPerson(0);
  v7 = MEMORY[0x1AC5A9750](v5, v6);
  sub_1ABA8B73C();
  MEMORY[0x1AC5A9410](v7, v2);

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410](0xD000000000000010);
  v8 = *(a2 + 48);
  v9 = sub_1ABA8C2E0();
  v10(v9);
  v11 = MEMORY[0x1AC5A9750]();
  sub_1ABA8B73C();
  MEMORY[0x1AC5A9410](v11, v2);

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v12 = *(a2 + 56);
  v13 = sub_1ABA8C2E0();
  v15 = v14(v13);
  v16 = type metadata accessor for CustomGraphActivityEvent(0);
  MEMORY[0x1AC5A9750](v15, v16);
  sub_1ABAB5160();
  sub_1ABD9CD7C();

  MEMORY[0x1AC5A9410](0x656C706F65700A2CLL, 0xE90000000000003ALL);
  v17 = *(a2 + 64);
  v18 = sub_1ABA8C2E0();
  v19(v18);
  MEMORY[0x1AC5A9750]();
  sub_1ABAB5160();
  sub_1ABD9CD7C();

  MEMORY[0x1AC5A9410](0x736563616C700A2CLL, 0xE90000000000003ALL);
  v20 = *(a2 + 72);
  v21 = sub_1ABA8C2E0();
  v22(v21);
  MEMORY[0x1AC5A9750]();
  sub_1ABAB5160();
  sub_1ABD9CD7C();

  MEMORY[0x1AC5A9410](0x6976697463610A2CLL, 0xED00003A73656974);
  v23 = *(a2 + 80);
  v24 = sub_1ABA8C2E0();
  v25(v24);
  MEMORY[0x1AC5A9750]();
  sub_1ABAB5160();
  sub_1ABD9CD7C();

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v26 = *(a2 + 88);
  v27 = sub_1ABA8C2E0();
  v28(v27);
  v29 = MEMORY[0x1AC5A9750]();
  sub_1ABA8B73C();
  MEMORY[0x1AC5A9410](v29, v2);

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v30 = *(a2 + 96);
  v31 = sub_1ABA8C2E0();
  v32(v31);
  v33 = MEMORY[0x1AC5A9750]();
  sub_1ABA8B73C();
  MEMORY[0x1AC5A9410](v33, v2);

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v34 = *(a2 + 104);
  v35 = sub_1ABA8C2E0();
  v36(v35);
  MEMORY[0x1AC5A9750]();
  sub_1ABA8BD30();
  MEMORY[0x1AC5A9410](0, a1);

  sub_1ABA83AA4();
  return 0;
}

uint64_t sub_1ABD9809C()
{
  sub_1ABA8BB34();
  sub_1ABAB6654();
  v3 = v3 && v0 == v2;
  if (v3 || (sub_1ABA8A940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1ABAB67EC();
    v6 = v3 && v0 == v5;
    if (v6 || (sub_1ABA8A940() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0xD000000000000012 && 0x80000001ABF8F4A0 == v0)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABA8A940();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD98174(char a1)
{
  if (!a1)
  {
    return sub_1ABAA13D0();
  }

  if (a1 == 1)
  {
    return 0x65746E6F4373746BLL;
  }

  return 0xD000000000000012;
}

uint64_t sub_1ABD981F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABD9809C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD98218(uint64_t a1)
{
  v2 = sub_1ABD9BF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD98254(uint64_t a1)
{
  v2 = sub_1ABD9BF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KTSContextRepresentation.__allocating_init(originContext:ktsContext:destinationContext:graphLifeEventContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABA9803C();
  v8 = swift_allocObject();
  KTSContextRepresentation.init(originContext:ktsContext:destinationContext:graphLifeEventContext:)(a1, a2, a3, a4);
  return v8;
}

uint64_t KTSContextRepresentation.__allocating_init(from:)(uint64_t a1)
{
  sub_1ABA9803C();
  v2 = swift_allocObject();
  KTSContextRepresentation.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void KTSContextRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v14 = v13;
  v23 = sub_1ABAD219C(&qword_1EB4D9578, &unk_1ABF60FA8);
  sub_1ABA7BB64(v23);
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABAA29F0();
  v18 = v14[4];
  sub_1ABA93E20(v14, v14[3]);
  sub_1ABD9BF44();
  sub_1ABAA0AE8();
  if (v11)
  {
    sub_1ABA925A4(v12, &qword_1EB4D9570, &qword_1ABF60F98);
    type metadata accessor for KTSContextRepresentation();
    sub_1ABA8B934();
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1730, &qword_1ABF338C0);
    sub_1ABA7ADF0();
    sub_1ABD9BFBC(v19, v20);
    sub_1ABAA35F4();
    v10[2] = a10;
    sub_1ABA93738(1);
    sub_1ABF24E64();
    v10[3] = a10;
    sub_1ABA93738(2);
    sub_1ABF24E64();
    v21 = sub_1ABA80ECC();
    v22(v21);
    v10[4] = a10;
  }

  sub_1ABA84B54(v14);
  sub_1ABA7BC90();
}

uint64_t sub_1ABD985BC()
{
  sub_1ABAA04AC();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF8F3D0);
  v2 = v0[2];
  v3 = type metadata accessor for CustomGraphActivityEvent(0);

  MEMORY[0x1AC5A9750](v4, v3);
  sub_1ABA94BE8();
  sub_1ABA95564();

  sub_1ABAABD10();
  v5 = v0[3];

  MEMORY[0x1AC5A9750](v6, v3);
  sub_1ABA94BE8();
  sub_1ABA95564();

  sub_1ABA8C7D8();
  v7 = v0[4];

  MEMORY[0x1AC5A9750](v8, v3);
  sub_1ABA8BD30();
  MEMORY[0x1AC5A9410](v3, v1);

  sub_1ABA83AA4();
  return v10;
}

uint64_t KTSContextRepresentation.__deallocating_deinit()
{
  KTSContextRepresentation.deinit();
  sub_1ABA9803C();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD98884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = KTSContextRepresentation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD988D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  sub_1ABD9BDF4(v1 + 40, &v11);
  v5 = v12;
  sub_1ABA925A4(&v11, &qword_1EB4D9570, &qword_1ABF60F98);
  if (!v5)
  {
    v7 = type metadata accessor for ViewService();
    v8 = static ViewService.clientService.getter(v7);
    v9 = sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
    swift_allocObject();
    result = CustomLifeEventContext.init<>(viewService:)(v8);
    if (v2)
    {
      return result;
    }

    v10 = result;
    v12 = v9;
    v13 = sub_1ABC79C44();
    *&v11 = v10;
    swift_beginAccess();
    sub_1ABD9BE64(&v11, v3 + 40);
    swift_endAccess();
  }

  result = sub_1ABD9BDF4(v3 + 40, &v11);
  if (v12)
  {
    return sub_1ABA946C0(&v11, a1);
  }

  __break(1u);
  return result;
}

void sub_1ABD98A30()
{
  sub_1ABA7BCA8();
  sub_1ABAA05D8(v2);
  v3 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for CustomGraphActivityEvent(0);
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA94BCC();
  v15 = *(v1 + 24);
  v44 = *(v15 + 16);
  if (!v44)
  {
LABEL_18:
    sub_1ABA7BC90();
    return;
  }

  v16 = *(v9 + 40);
  v17 = *(v12 + 80);
  sub_1ABA7AB74();
  v19 = v15 + v18;

  v20 = 0;
  v47 = v0;
  v48 = v9;
  v42 = v16;
  v43 = v12;
  v46 = v15;
  v41 = v19;
  while (2)
  {
    if (v20 < *(v15 + 16))
    {
      v21 = v20;
      sub_1ABC47DD4(v19 + *(v12 + 72) * v20, v0);
      v22 = 0;
      v45 = v21 + 1;
      v23 = *(v0 + v16);
      v24 = *(v23 + 16);
      v49 = v23;
      v50 = v24;
      for (i = (v23 + 64); ; i += 40)
      {
        sub_1ABAA07AC();
        if (v26)
        {
          break;
        }

        sub_1ABA978F8();
        if (v27)
        {
          __break(1u);
          goto LABEL_20;
        }

        v28 = v8;
        v30 = *(i - 2);
        v29 = *(i - 1);
        v31 = *i;

        sub_1ABAB5D54();
        v32();
        if (v12)
        {

LABEL_17:
          sub_1ABC71AB4(v47);
          goto LABEL_18;
        }

        v51 = v22;
        v52 = 0;
        v34 = v55;
        v33 = v56;
        v35 = sub_1ABA93E20(v54, v55);
        if (v31)
        {

          sub_1ABA84B54(v54);
          v8 = v28;
          v36 = sub_1ABAB11B0();
          sub_1ABA7B9B4(v36, v37, 1, v48);
        }

        else
        {
          v38 = v35;
          v53 = v29;
          v39 = sub_1ABAD219C(&qword_1EB4D66C8, &qword_1ABF50BA0);
          v8 = v28;
          v12 = v52;
          TypedEntityIdentifier.graphObject<A>(from:)(v38, v39, v34, v33);

          if (v12)
          {

            sub_1ABA84B54(v54);
            goto LABEL_17;
          }

          sub_1ABA84B54(v54);
          sub_1ABA7E1E0(v28, 1, v48);
        }

        sub_1ABA925A4(v8, &qword_1EB4D6200, &unk_1ABF6CC00);
        v22 = v51 + 1;
      }

      v0 = v47;
      sub_1ABC71AB4(v47);
      sub_1ABD7E7F8(MEMORY[0x1E69E7CC0]);
      v20 = v45;
      v16 = v42;
      v12 = v43;
      v15 = v46;
      v19 = v41;
      if (v45 != v44)
      {
        continue;
      }

      goto LABEL_18;
    }

    break;
  }

LABEL_20:
  __break(1u);
}

void sub_1ABD98D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABAA05D8(v13);
  v14 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7AB80(v14);
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1ABA81A3C();
  v60 = type metadata accessor for CustomGraphPerson(v18);
  v19 = sub_1ABA7BB64(v60);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v22);
  v31 = sub_1ABA96A84(v23, v24, v25, v26, v27, v28, v29, v30, v52);
  v32 = sub_1ABA7BB64(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA94BCC();
  v37 = *(v10 + 16);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v55 = v40;
  if (!v40)
  {
LABEL_21:
    sub_1ABD9CDA4(v39);
    sub_1ABA7BC90();
    return;
  }

  v41 = *(v38 + 32);
  v42 = *(v34 + 80);
  sub_1ABA7AB74();
  v44 = v37 + v43;

  sub_1ABA902C0();
  while (2)
  {
    sub_1ABA97CC4();
    if (!v45)
    {
      sub_1ABA90D88();
      sub_1ABAA6170();
      v59 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (v44 += v12 << 6; ; v44 += 64)
      {
        sub_1ABAA07AC();
        if (v46)
        {
          break;
        }

        sub_1ABA978F8();
        if (v45)
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_1ABAA3D70();

        sub_1ABAB5D54();
        v47();
        if (v37)
        {
          sub_1ABA8CD50();

          sub_1ABC71AB4(v58);

          goto LABEL_21;
        }

        sub_1ABAB5358();
        if (v11)
        {

          sub_1ABAA2D74();
        }

        else
        {
          v48 = sub_1ABAD219C(&qword_1EB4D6F88, &qword_1ABF50FB0);
          sub_1ABAA4FA4(v48);

          sub_1ABA84B54(v62);
          v49 = sub_1ABAB11B0();
          if (sub_1ABA7E1E0(v49, v50, v60) != 1)
          {
            sub_1ABD9BEDC(v11, v54, type metadata accessor for CustomGraphPerson);
            sub_1ABAA092C();
            v12 = v61;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = *(v59 + 16);
              sub_1ABA7BEF0();
              sub_1ABADBB08();
            }

            sub_1ABAA1D1C();
            if (v45)
            {
              sub_1ABA96DC0();
              sub_1ABADBB08();
            }

            sub_1ABA7C52C();
            goto LABEL_5;
          }
        }

        sub_1ABA925A4(v11, &qword_1EB4D2920, &qword_1ABF6CB70);
        v12 = v61 + 1;
      }

      sub_1ABC71AB4(v58);
      sub_1ABD7E724(v59);
      v37 = v57;
      v44 = v53;
      if (v56 != v55)
      {
        continue;
      }

      v39 = a10;
      goto LABEL_21;
    }

    break;
  }

LABEL_23:
  __break(1u);
}

void sub_1ABD99120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v16 = sub_1ABA9703C(v15);
  v17 = sub_1ABA7BB64(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  sub_1ABA964A4();
  v20 = *(v10 + 16);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v35 = v23;
  if (!v23)
  {
LABEL_23:
    sub_1ABA82B1C(v22);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA4A94(v21);
  v37 = v20;
  v38 = v11;
  while (2)
  {
    sub_1ABA97CC4();
    if (!v24)
    {
      sub_1ABAA23A0();
      sub_1ABA995C4();
      v39 = MEMORY[0x1E69E7CC0];
      v34 = v25;
LABEL_5:
      v26 = v25 + (v12 << 6);
      while (v40 != v12)
      {
        sub_1ABD9CDB4();
        if (v24)
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_1ABA828C0();

        sub_1ABA973AC();
        v27();
        if (v20)
        {
          sub_1ABD9CDC4();

          sub_1ABC71AB4(v38);

          goto LABEL_23;
        }

        v28 = sub_1ABAA1814();
        if (v14)
        {

          sub_1ABA82EE8();
        }

        else
        {
          v43 = v13;
          v13 = v28;
          v29 = sub_1ABAD219C(&qword_1EB4D6640, &qword_1ABF60FA0);
          sub_1ABAA31FC(v29);

          sub_1ABA84B54(v42);
        }

        sub_1ABA8C5E4();
        v12 = v41;
        if (sub_1ABC7830C(&v43) != 1)
        {
          memcpy(v42, v44, sizeof(v42));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = *(v39 + 16);
            sub_1ABA7BEF0();
            sub_1ABADBBE0();
            v39 = v32;
          }

          sub_1ABAA599C(v39);
          if (v24)
          {
            sub_1ABA96DC0();
            sub_1ABADBBE0();
            v39 = v33;
          }

          sub_1ABA88730();
          sub_1ABAA39E4();
          v25 = v34;
          goto LABEL_5;
        }

        memcpy(v42, v44, sizeof(v42));
        sub_1ABA925A4(v42, &qword_1EB4D6348, &qword_1ABF50318);
        v26 += 64;
        v12 = v41 + 1;
      }

      sub_1ABC71AB4(v38);
      sub_1ABD7E750(v39);
      v20 = v37;
      if (v36 != v35)
      {
        continue;
      }

      v22 = a10;
      goto LABEL_23;
    }

    break;
  }

LABEL_25:
  __break(1u);
}

void sub_1ABD99418()
{
  sub_1ABA7BCA8();
  v37 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1ABA81A3C();
  v36 = type metadata accessor for CustomGraphActivityEvent(v8);
  v9 = sub_1ABA7BB64(v36);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABAA26B0(v13, v14, v15, v16, v17, v18, v19, v20, v32);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA9610C();
  v22 = *(v0 + 16);
  if (!*(v22 + 16))
  {
LABEL_18:
    sub_1ABAB6974();
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA41A0();
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v22;
  while (*(v22 + 16))
  {
    sub_1ABAA0F64();
    sub_1ABA8CB88();
    v23 = v1;
    if (v1)
    {
    }

    v1 = 0;
    v37(v38);
    sub_1ABAB5540();
    if (v23)
    {
      sub_1ABC71AB4(v2);
      sub_1ABA975E0();
    }

    else
    {
      v24 = sub_1ABAD219C(&qword_1EB4D66C8, &qword_1ABF50BA0);
      sub_1ABAA5440(v24);
      sub_1ABC71AB4(v2);
      sub_1ABA84B54(v38);
      v25 = sub_1ABAB11B0();
      v22 = v35;
      if (sub_1ABA7E1E0(v25, v26, v36) != 1)
      {
        sub_1ABD9BEDC(0, v33, type metadata accessor for CustomGraphActivityEvent);
        sub_1ABAA0C04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v34 + 16);
          sub_1ABA7BEF0();
          sub_1ABADBCB0();
          v34 = v30;
        }

        sub_1ABAA599C(v34);
        if (v28)
        {
          sub_1ABA96DC0();
          sub_1ABADBCB0();
          v34 = v31;
        }

        sub_1ABA8EB34();
        goto LABEL_10;
      }
    }

    sub_1ABA925A4(v23, &qword_1EB4D6200, &unk_1ABF6CC00);
LABEL_10:
    sub_1ABAB2B9C();
    if (v27)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1ABD9971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABAA05D8(v13);
  v14 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7AB80(v14);
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1ABA81A3C();
  v60 = type metadata accessor for CustomGraphPerson(v18);
  v19 = sub_1ABA7BB64(v60);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v22);
  v31 = sub_1ABA96A84(v23, v24, v25, v26, v27, v28, v29, v30, v52);
  v32 = sub_1ABA7BB64(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA94BCC();
  v37 = *(v10 + 24);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v55 = v40;
  if (!v40)
  {
LABEL_21:
    sub_1ABD9CDA4(v39);
    sub_1ABA7BC90();
    return;
  }

  v41 = *(v38 + 32);
  v42 = *(v34 + 80);
  sub_1ABA7AB74();
  v44 = v37 + v43;

  sub_1ABA902C0();
  while (2)
  {
    sub_1ABA97CC4();
    if (!v45)
    {
      sub_1ABA90D88();
      sub_1ABAA6170();
      v59 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (v44 += v12 << 6; ; v44 += 64)
      {
        sub_1ABAA07AC();
        if (v46)
        {
          break;
        }

        sub_1ABA978F8();
        if (v45)
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_1ABAA3D70();

        sub_1ABAB5D54();
        v47();
        if (v37)
        {
          sub_1ABA8CD50();

          sub_1ABC71AB4(v58);

          goto LABEL_21;
        }

        sub_1ABAB5358();
        if (v11)
        {

          sub_1ABAA2D74();
        }

        else
        {
          v48 = sub_1ABAD219C(&qword_1EB4D6F88, &qword_1ABF50FB0);
          sub_1ABAA4FA4(v48);

          sub_1ABA84B54(v62);
          v49 = sub_1ABAB11B0();
          if (sub_1ABA7E1E0(v49, v50, v60) != 1)
          {
            sub_1ABD9BEDC(v11, v54, type metadata accessor for CustomGraphPerson);
            sub_1ABAA092C();
            v12 = v61;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = *(v59 + 16);
              sub_1ABA7BEF0();
              sub_1ABADBB08();
            }

            sub_1ABAA1D1C();
            if (v45)
            {
              sub_1ABA96DC0();
              sub_1ABADBB08();
            }

            sub_1ABA7C52C();
            goto LABEL_5;
          }
        }

        sub_1ABA925A4(v11, &qword_1EB4D2920, &qword_1ABF6CB70);
        v12 = v61 + 1;
      }

      sub_1ABC71AB4(v58);
      sub_1ABD7E724(v59);
      v37 = v57;
      v44 = v53;
      if (v56 != v55)
      {
        continue;
      }

      v39 = a10;
      goto LABEL_21;
    }

    break;
  }

LABEL_23:
  __break(1u);
}

void sub_1ABD99AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v16 = sub_1ABA9703C(v15);
  v17 = sub_1ABA7BB64(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  sub_1ABA964A4();
  v20 = *(v10 + 24);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v35 = v23;
  if (!v23)
  {
LABEL_23:
    sub_1ABA82B1C(v22);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA4A94(v21);
  v37 = v20;
  v38 = v11;
  while (2)
  {
    sub_1ABA97CC4();
    if (!v24)
    {
      sub_1ABAA23A0();
      sub_1ABA995C4();
      v39 = MEMORY[0x1E69E7CC0];
      v34 = v25;
LABEL_5:
      v26 = v25 + (v12 << 6);
      while (v40 != v12)
      {
        sub_1ABD9CDB4();
        if (v24)
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_1ABA828C0();

        sub_1ABA973AC();
        v27();
        if (v20)
        {
          sub_1ABD9CDC4();

          sub_1ABC71AB4(v38);

          goto LABEL_23;
        }

        v28 = sub_1ABAA1814();
        if (v14)
        {

          sub_1ABA82EE8();
        }

        else
        {
          v43 = v13;
          v13 = v28;
          v29 = sub_1ABAD219C(&qword_1EB4D6640, &qword_1ABF60FA0);
          sub_1ABAA31FC(v29);

          sub_1ABA84B54(v42);
        }

        sub_1ABA8C5E4();
        v12 = v41;
        if (sub_1ABC7830C(&v43) != 1)
        {
          memcpy(v42, v44, sizeof(v42));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = *(v39 + 16);
            sub_1ABA7BEF0();
            sub_1ABADBBE0();
            v39 = v32;
          }

          sub_1ABAA599C(v39);
          if (v24)
          {
            sub_1ABA96DC0();
            sub_1ABADBBE0();
            v39 = v33;
          }

          sub_1ABA88730();
          sub_1ABAA39E4();
          v25 = v34;
          goto LABEL_5;
        }

        memcpy(v42, v44, sizeof(v42));
        sub_1ABA925A4(v42, &qword_1EB4D6348, &qword_1ABF50318);
        v26 += 64;
        v12 = v41 + 1;
      }

      sub_1ABC71AB4(v38);
      sub_1ABD7E750(v39);
      v20 = v37;
      if (v36 != v35)
      {
        continue;
      }

      v22 = a10;
      goto LABEL_23;
    }

    break;
  }

LABEL_25:
  __break(1u);
}

void sub_1ABD99DEC()
{
  sub_1ABA7BCA8();
  v37 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1ABA81A3C();
  v36 = type metadata accessor for CustomGraphActivityEvent(v8);
  v9 = sub_1ABA7BB64(v36);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABAA26B0(v13, v14, v15, v16, v17, v18, v19, v20, v32);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA9610C();
  v22 = *(v0 + 24);
  if (!*(v22 + 16))
  {
LABEL_18:
    sub_1ABAB6974();
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA41A0();
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v22;
  while (*(v22 + 16))
  {
    sub_1ABAA0F64();
    sub_1ABA8CB88();
    v23 = v1;
    if (v1)
    {
    }

    v1 = 0;
    v37(v38);
    sub_1ABAB5540();
    if (v23)
    {
      sub_1ABC71AB4(v2);
      sub_1ABA975E0();
    }

    else
    {
      v24 = sub_1ABAD219C(&qword_1EB4D66C8, &qword_1ABF50BA0);
      sub_1ABAA5440(v24);
      sub_1ABC71AB4(v2);
      sub_1ABA84B54(v38);
      v25 = sub_1ABAB11B0();
      v22 = v35;
      if (sub_1ABA7E1E0(v25, v26, v36) != 1)
      {
        sub_1ABD9BEDC(0, v33, type metadata accessor for CustomGraphActivityEvent);
        sub_1ABAA0C04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v34 + 16);
          sub_1ABA7BEF0();
          sub_1ABADBCB0();
          v34 = v30;
        }

        sub_1ABAA599C(v34);
        if (v28)
        {
          sub_1ABA96DC0();
          sub_1ABADBCB0();
          v34 = v31;
        }

        sub_1ABA8EB34();
        goto LABEL_10;
      }
    }

    sub_1ABA925A4(v23, &qword_1EB4D6200, &unk_1ABF6CC00);
LABEL_10:
    sub_1ABAB2B9C();
    if (v27)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1ABD9A0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABAA05D8(v13);
  v14 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7AB80(v14);
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1ABA81A3C();
  v60 = type metadata accessor for CustomGraphPerson(v18);
  v19 = sub_1ABA7BB64(v60);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v22);
  v31 = sub_1ABA96A84(v23, v24, v25, v26, v27, v28, v29, v30, v52);
  v32 = sub_1ABA7BB64(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA94BCC();
  v37 = *(v10 + 32);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v55 = v40;
  if (!v40)
  {
LABEL_21:
    sub_1ABD9CDA4(v39);
    sub_1ABA7BC90();
    return;
  }

  v41 = *(v38 + 32);
  v42 = *(v34 + 80);
  sub_1ABA7AB74();
  v44 = v37 + v43;

  sub_1ABA902C0();
  while (2)
  {
    sub_1ABA97CC4();
    if (!v45)
    {
      sub_1ABA90D88();
      sub_1ABAA6170();
      v59 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (v44 += v12 << 6; ; v44 += 64)
      {
        sub_1ABAA07AC();
        if (v46)
        {
          break;
        }

        sub_1ABA978F8();
        if (v45)
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_1ABAA3D70();

        sub_1ABAB5D54();
        v47();
        if (v37)
        {
          sub_1ABA8CD50();

          sub_1ABC71AB4(v58);

          goto LABEL_21;
        }

        sub_1ABAB5358();
        if (v11)
        {

          sub_1ABAA2D74();
        }

        else
        {
          v48 = sub_1ABAD219C(&qword_1EB4D6F88, &qword_1ABF50FB0);
          sub_1ABAA4FA4(v48);

          sub_1ABA84B54(v62);
          v49 = sub_1ABAB11B0();
          if (sub_1ABA7E1E0(v49, v50, v60) != 1)
          {
            sub_1ABD9BEDC(v11, v54, type metadata accessor for CustomGraphPerson);
            sub_1ABAA092C();
            v12 = v61;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = *(v59 + 16);
              sub_1ABA7BEF0();
              sub_1ABADBB08();
            }

            sub_1ABAA1D1C();
            if (v45)
            {
              sub_1ABA96DC0();
              sub_1ABADBB08();
            }

            sub_1ABA7C52C();
            goto LABEL_5;
          }
        }

        sub_1ABA925A4(v11, &qword_1EB4D2920, &qword_1ABF6CB70);
        v12 = v61 + 1;
      }

      sub_1ABC71AB4(v58);
      sub_1ABD7E724(v59);
      v37 = v57;
      v44 = v53;
      if (v56 != v55)
      {
        continue;
      }

      v39 = a10;
      goto LABEL_21;
    }

    break;
  }

LABEL_23:
  __break(1u);
}

void sub_1ABD9A4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v16 = sub_1ABA9703C(v15);
  v17 = sub_1ABA7BB64(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  sub_1ABA964A4();
  v20 = *(v10 + 32);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v35 = v23;
  if (!v23)
  {
LABEL_23:
    sub_1ABA82B1C(v22);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA4A94(v21);
  v37 = v20;
  v38 = v11;
  while (2)
  {
    sub_1ABA97CC4();
    if (!v24)
    {
      sub_1ABAA23A0();
      sub_1ABA995C4();
      v39 = MEMORY[0x1E69E7CC0];
      v34 = v25;
LABEL_5:
      v26 = v25 + (v12 << 6);
      while (v40 != v12)
      {
        sub_1ABD9CDB4();
        if (v24)
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_1ABA828C0();

        sub_1ABA973AC();
        v27();
        if (v20)
        {
          sub_1ABD9CDC4();

          sub_1ABC71AB4(v38);

          goto LABEL_23;
        }

        v28 = sub_1ABAA1814();
        if (v14)
        {

          sub_1ABA82EE8();
        }

        else
        {
          v43 = v13;
          v13 = v28;
          v29 = sub_1ABAD219C(&qword_1EB4D6640, &qword_1ABF60FA0);
          sub_1ABAA31FC(v29);

          sub_1ABA84B54(v42);
        }

        sub_1ABA8C5E4();
        v12 = v41;
        if (sub_1ABC7830C(&v43) != 1)
        {
          memcpy(v42, v44, sizeof(v42));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = *(v39 + 16);
            sub_1ABA7BEF0();
            sub_1ABADBBE0();
            v39 = v32;
          }

          sub_1ABAA599C(v39);
          if (v24)
          {
            sub_1ABA96DC0();
            sub_1ABADBBE0();
            v39 = v33;
          }

          sub_1ABA88730();
          sub_1ABAA39E4();
          v25 = v34;
          goto LABEL_5;
        }

        memcpy(v42, v44, sizeof(v42));
        sub_1ABA925A4(v42, &qword_1EB4D6348, &qword_1ABF50318);
        v26 += 64;
        v12 = v41 + 1;
      }

      sub_1ABC71AB4(v38);
      sub_1ABD7E750(v39);
      v20 = v37;
      if (v36 != v35)
      {
        continue;
      }

      v22 = a10;
      goto LABEL_23;
    }

    break;
  }

LABEL_25:
  __break(1u);
}

void sub_1ABD9A7C0()
{
  sub_1ABA7BCA8();
  v37 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1ABA81A3C();
  v36 = type metadata accessor for CustomGraphActivityEvent(v8);
  v9 = sub_1ABA7BB64(v36);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABAA26B0(v13, v14, v15, v16, v17, v18, v19, v20, v32);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA9610C();
  v22 = *(v0 + 32);
  if (!*(v22 + 16))
  {
LABEL_18:
    sub_1ABAB6974();
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA41A0();
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v22;
  while (*(v22 + 16))
  {
    sub_1ABAA0F64();
    sub_1ABA8CB88();
    v23 = v1;
    if (v1)
    {
    }

    v1 = 0;
    v37(v38);
    sub_1ABAB5540();
    if (v23)
    {
      sub_1ABC71AB4(v2);
      sub_1ABA975E0();
    }

    else
    {
      v24 = sub_1ABAD219C(&qword_1EB4D66C8, &qword_1ABF50BA0);
      sub_1ABAA5440(v24);
      sub_1ABC71AB4(v2);
      sub_1ABA84B54(v38);
      v25 = sub_1ABAB11B0();
      v22 = v35;
      if (sub_1ABA7E1E0(v25, v26, v36) != 1)
      {
        sub_1ABD9BEDC(0, v33, type metadata accessor for CustomGraphActivityEvent);
        sub_1ABAA0C04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v34 + 16);
          sub_1ABA7BEF0();
          sub_1ABADBCB0();
          v34 = v30;
        }

        sub_1ABAA599C(v34);
        if (v28)
        {
          sub_1ABA96DC0();
          sub_1ABADBCB0();
          v34 = v31;
        }

        sub_1ABA8EB34();
        goto LABEL_10;
      }
    }

    sub_1ABA925A4(v23, &qword_1EB4D6200, &unk_1ABF6CC00);
LABEL_10:
    sub_1ABAB2B9C();
    if (v27)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1ABD9AAA8()
{
  sub_1ABA8BB34();
  sub_1ABAB6654();
  v3 = v3 && v0 == v2;
  if (v3 || (sub_1ABA8A940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1ABAB67EC();
    v6 = v3 && v0 == v5;
    if (v6 || (sub_1ABA8A940() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0xD000000000000013 && 0x80000001ABF8F530 == v0)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABA8A940();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD9AB7C(char a1)
{
  if (!a1)
  {
    return sub_1ABAA13D0();
  }

  if (a1 == 1)
  {
    return 0x65746E6F4373746BLL;
  }

  return 0xD000000000000013;
}

uint64_t sub_1ABD9ABF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABD9AC48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABD9AAA8();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD9AC70(uint64_t a1)
{
  v2 = sub_1ABD9C05C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD9ACAC(uint64_t a1)
{
  v2 = sub_1ABD9C05C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *_s20IntelligencePlatform24KTSContextRepresentationC13originContext03ktsF0011destinationF0014graphLifeEventF0ACSayAA019CustomGraphActivityK0VG_A2jA0ljkF0CyAA0m6ObjectF0CyAA12SubgraphViewCAA0O26SynthesisDictionaryMappingVGGSgtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA29F0();
  if (v8)
  {
    v9 = v8;
    v11[3] = sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
    v11[4] = sub_1ABC79C44();
    v11[0] = v9;
    swift_beginAccess();
    sub_1ABD9BE64(v11, v4);
    swift_endAccess();
  }

  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t KTSContextAggregateRepresentation.__allocating_init(from:)(uint64_t a1)
{
  sub_1ABA9803C();
  v2 = swift_allocObject();
  KTSContextAggregateRepresentation.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void KTSContextAggregateRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v14 = v13;
  v23 = sub_1ABAD219C(&qword_1EB4D95B0, &qword_1ABF60FC0);
  sub_1ABA7BB64(v23);
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABAA29F0();
  v18 = v14[4];
  sub_1ABA93E20(v14, v14[3]);
  sub_1ABD9C05C();
  sub_1ABAA0AE8();
  if (v11)
  {
    sub_1ABA925A4(v12, &qword_1EB4D9570, &qword_1ABF60F98);
    type metadata accessor for KTSContextAggregateRepresentation();
    sub_1ABA8B934();
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1730, &qword_1ABF338C0);
    sub_1ABA7ADF0();
    sub_1ABD9BFBC(v19, v20);
    sub_1ABAA35F4();
    v10[2] = a10;
    sub_1ABA93738(1);
    sub_1ABF24E64();
    v10[3] = a10;
    sub_1ABA93738(2);
    sub_1ABF24E64();
    v21 = sub_1ABA80ECC();
    v22(v21);
    v10[4] = a10;
  }

  sub_1ABA84B54(v14);
  sub_1ABA7BC90();
}

void sub_1ABD9B054()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v19 = v1;
  v4 = v0;
  v6 = v5;
  v9 = sub_1ABAD219C(v7, v8);
  sub_1ABA7BB64(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  v17 = v6[4];
  sub_1ABA93E20(v6, v6[3]);
  v3();
  sub_1ABF252E4();
  v21 = v4[2];
  v20 = 0;
  sub_1ABAD219C(&qword_1EB4D1730, &qword_1ABF338C0);
  sub_1ABD9BFBC(&qword_1EB4D95A0, &qword_1EB4D95A8);
  sub_1ABA8428C();
  v18 = v19;
  sub_1ABF24F84();
  if (!v18)
  {
    v22 = v4[3];
    v20 = 1;
    sub_1ABA8428C();
    sub_1ABF24F84();
    v23 = v4[4];
    v20 = 2;
    sub_1ABA8428C();
    sub_1ABF24F84();
  }

  (*(v11 + 8))(v16, v9);
  sub_1ABA7BC90();
}

uint64_t sub_1ABD9B218()
{
  sub_1ABAA04AC();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000002CLL, 0x80000001ABF8F420);
  v2 = v0[2];
  v3 = type metadata accessor for CustomGraphActivityEvent(0);

  MEMORY[0x1AC5A9750](v4, v3);
  sub_1ABA94BE8();
  sub_1ABA95564();

  sub_1ABAABD10();
  v5 = v0[3];

  MEMORY[0x1AC5A9750](v6, v3);
  sub_1ABA94BE8();
  sub_1ABA95564();

  sub_1ABA8C7D8();
  v7 = v0[4];

  MEMORY[0x1AC5A9750](v8, v3);
  sub_1ABA8BD30();
  MEMORY[0x1AC5A9410](v3, v1);

  sub_1ABA83AA4();
  return v10;
}

void *_s20IntelligencePlatform24KTSContextRepresentationCfd_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1ABA925A4((v0 + 5), &qword_1EB4D9570, &qword_1ABF60F98);
  return v0;
}

uint64_t sub_1ABD9B4F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = KTSContextAggregateRepresentation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1ABD9B548(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v140 = a2;
  v141 = v2;
  v4 = a1 + 32;
  sub_1ABA93E64(a1 + 32, v154);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  v145 = v3;
  do
  {
    v7 = sub_1ABA93E64(v6, v153);
    v15 = sub_1ABD9CD98(v7, v8, v9, v10, v11, v12, v13, v14, v138, v140, v141, v142, v145, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA93E64(v15, v16);
    sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
    type metadata accessor for KTSContextRepresentation();
    sub_1ABA8E384();
    v147 = v17;
    v18 = swift_dynamicCast();
    if (v18)
    {
      v26 = v157[2];

      sub_1ABA84B54(v153);
    }

    else
    {
      v27 = sub_1ABD9CD98(v18, v19, v20, v21, v22, v23, v24, v25, v138, v140, v141, v142, v145, v147, v148, v149, v150, v151, v152, v153[0]);
      sub_1ABA946C0(v27, v28);
      type metadata accessor for KTSContextAggregateRepresentation();
      sub_1ABA8E384();
      if (!swift_dynamicCast())
      {
        goto LABEL_12;
      }

      v26 = v157[2];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = *(v5 + 16);
      sub_1ABA7BEF0();
      sub_1ABADBE60();
      v5 = v32;
    }

    v30 = *(v5 + 16);
    v29 = *(v5 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1ABA7DC80(v29);
      sub_1ABADBE60();
      v5 = v33;
    }

    *(v5 + 16) = v30 + 1;
    *(v5 + 8 * v30 + 32) = v26;
LABEL_12:
    v6 += 40;
    --v3;
  }

  while (v3);
  v34 = 0;
  v143 = *(v5 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  while (v143 != v34)
  {
    if (v34 >= *(v5 + 16))
    {
      __break(1u);
LABEL_88:
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
      return;
    }

    v36 = v5 + 8 * v34;
    v37 = *(v36 + 32);
    v38 = *(v37 + 16);
    v39 = *(v35 + 16);
    if (__OFADD__(v39, v38))
    {
      goto LABEL_88;
    }

    v40 = *(v36 + 32);

    if (!swift_isUniquelyReferenced_nonNull_native() || v39 + v38 > *(v35 + 24) >> 1)
    {
      sub_1ABADBCB0();
      v35 = v41;
    }

    if (*(v37 + 16))
    {
      v42 = v35;
      v43 = (*(v35 + 24) >> 1) - *(v35 + 16);
      v44 = *(type metadata accessor for CustomGraphActivityEvent(0) - 8);
      if (v43 < v38)
      {
        goto LABEL_96;
      }

      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v46 = *(v44 + 72);
      swift_arrayInitWithCopy();

      v35 = v42;
      if (v38)
      {
        v47 = *(v42 + 16);
        v48 = __OFADD__(v47, v38);
        v49 = v47 + v38;
        if (v48)
        {
          goto LABEL_99;
        }

        *(v42 + 16) = v49;
      }
    }

    else
    {

      if (v38)
      {
        goto LABEL_89;
      }
    }

    ++v34;
  }

  v50 = MEMORY[0x1E69E7CC0];
  v51 = v4;
  v52 = v145;
  while (2)
  {
    v53 = sub_1ABA93E64(v51, v153);
    v61 = sub_1ABD9CD98(v53, v54, v55, v56, v57, v58, v59, v60, v138, v140, v141, v143, v145, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA93E64(v61, v62);
    sub_1ABA8E384();
    v63 = swift_dynamicCast();
    if (v63)
    {
      v71 = v157[3];

      sub_1ABA84B54(v153);
      goto LABEL_32;
    }

    v72 = sub_1ABD9CD98(v63, v64, v65, v66, v67, v68, v69, v70, v138, v140, v141, v143, v145, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA946C0(v72, v73);
    type metadata accessor for KTSContextAggregateRepresentation();
    sub_1ABA8E384();
    if (swift_dynamicCast())
    {
      v71 = v157[3];

LABEL_32:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = *(v50 + 16);
        sub_1ABA7BEF0();
        sub_1ABADBE60();
        v50 = v77;
      }

      v75 = *(v50 + 16);
      v74 = *(v50 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1ABA7DC80(v74);
        sub_1ABADBE60();
        v50 = v78;
      }

      *(v50 + 16) = v75 + 1;
      *(v50 + 8 * v75 + 32) = v71;
    }

    v51 += 40;
    if (--v52)
    {
      continue;
    }

    break;
  }

  v79 = 0;
  v144 = *(v50 + 16);
  v80 = MEMORY[0x1E69E7CC0];
  v139 = v35;
  while (v144 != v79)
  {
    if (v79 >= *(v50 + 16))
    {
      goto LABEL_90;
    }

    v81 = v50 + 8 * v79;
    v82 = *(v81 + 32);
    v83 = *(v82 + 16);
    v84 = *(v80 + 16);
    if (__OFADD__(v84, v83))
    {
      goto LABEL_91;
    }

    v85 = *(v81 + 32);

    if (!swift_isUniquelyReferenced_nonNull_native() || v84 + v83 > *(v80 + 24) >> 1)
    {
      sub_1ABADBCB0();
      v80 = v86;
    }

    if (*(v82 + 16))
    {
      v87 = (*(v80 + 24) >> 1) - *(v80 + 16);
      v88 = *(type metadata accessor for CustomGraphActivityEvent(0) - 8);
      if (v87 < v83)
      {
        goto LABEL_97;
      }

      v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v90 = *(v88 + 72);
      swift_arrayInitWithCopy();

      if (v83)
      {
        v91 = *(v80 + 16);
        v48 = __OFADD__(v91, v83);
        v92 = v91 + v83;
        if (v48)
        {
          goto LABEL_100;
        }

        *(v80 + 16) = v92;
      }
    }

    else
    {

      if (v83)
      {
        goto LABEL_92;
      }
    }

    ++v79;
  }

  v93 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v94 = sub_1ABA93E64(v4, v153);
    v102 = sub_1ABD9CD98(v94, v95, v96, v97, v98, v99, v100, v101, v139, v140, v141, v144, v145, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA93E64(v102, v103);
    sub_1ABA8E384();
    v104 = swift_dynamicCast();
    if (v104)
    {
      v112 = v157[4];

      sub_1ABA84B54(v153);
      goto LABEL_57;
    }

    v113 = sub_1ABD9CD98(v104, v105, v106, v107, v108, v109, v110, v111, v139, v140, v141, v144, v146, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA946C0(v113, v114);
    type metadata accessor for KTSContextAggregateRepresentation();
    sub_1ABA8E384();
    if (swift_dynamicCast())
    {
      v112 = v157[4];

LABEL_57:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = *(v93 + 16);
        sub_1ABA7BEF0();
        sub_1ABADBE60();
        v93 = v118;
      }

      v116 = *(v93 + 16);
      v115 = *(v93 + 24);
      if (v116 >= v115 >> 1)
      {
        sub_1ABA7DC80(v115);
        sub_1ABADBE60();
        v93 = v119;
      }

      *(v93 + 16) = v116 + 1;
      *(v93 + 8 * v116 + 32) = v112;
    }

    v4 += 40;
    v145 = v146 - 1;
    if (v145)
    {
      continue;
    }

    break;
  }

  v120 = 0;
  v121 = *(v93 + 16);
  v122 = MEMORY[0x1E69E7CC0];
  while (v121 != v120)
  {
    if (v120 >= *(v93 + 16))
    {
      goto LABEL_93;
    }

    v123 = v93 + 8 * v120;
    v124 = *(v123 + 32);
    v125 = *(v124 + 16);
    v126 = *(v122 + 16);
    if (__OFADD__(v126, v125))
    {
      goto LABEL_94;
    }

    v127 = *(v123 + 32);

    if (!swift_isUniquelyReferenced_nonNull_native() || v126 + v125 > *(v122 + 24) >> 1)
    {
      sub_1ABADBCB0();
      v122 = v128;
    }

    if (*(v124 + 16))
    {
      v129 = (*(v122 + 24) >> 1) - *(v122 + 16);
      v130 = *(type metadata accessor for CustomGraphActivityEvent(0) - 8);
      if (v129 < v125)
      {
        goto LABEL_98;
      }

      v131 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v132 = *(v130 + 72);
      swift_arrayInitWithCopy();

      if (v125)
      {
        v133 = *(v122 + 16);
        v48 = __OFADD__(v133, v125);
        v134 = v133 + v125;
        if (v48)
        {
          goto LABEL_101;
        }

        *(v122 + 16) = v134;
      }
    }

    else
    {

      if (v125)
      {
        goto LABEL_95;
      }
    }

    ++v120;
  }

  if (v140)
  {
    v135 = v140;
    goto LABEL_79;
  }

  v136 = v155;
  v137 = v156;
  sub_1ABA93E20(v154, v155);
  (*(v137 + 24))(v153, v136, v137);
  if (v141)
  {

    sub_1ABA84B54(v154);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D9618, &qword_1ABF613B0);
    sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
    if (swift_dynamicCast())
    {
      v135 = v148;

LABEL_79:
      type metadata accessor for KTSContextAggregateRepresentation();
      swift_allocObject();
      swift_retain_n();
      KTSContextRepresentation.init(originContext:ktsContext:destinationContext:graphLifeEventContext:)(v139, v80, v122, v135);
    }

    else
    {
    }

    sub_1ABA84B54(v154);
  }
}

double static KTSContextAggregateRepresentation.emptyRepresentation.getter()
{
  type metadata accessor for KTSContextAggregateRepresentation();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v2;
  *(v0 + 32) = v2;
  return result;
}

uint64_t sub_1ABD9BDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9570, &qword_1ABF60F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD9BE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9570, &qword_1ABF60F98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD9BEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1ABD9BF44()
{
  result = qword_1EB4D9580;
  if (!qword_1EB4D9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9580);
  }

  return result;
}

uint64_t sub_1ABD9BFBC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1730, &qword_1ABF338C0);
    sub_1ABD9C1DC(a2, 255, type metadata accessor for CustomGraphActivityEvent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABD9C05C()
{
  result = qword_1EB4D95B8;
  if (!qword_1EB4D95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D95B8);
  }

  return result;
}

uint64_t sub_1ABD9C0D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABD9C1DC(&qword_1EB4D95C8, a2, type metadata accessor for KTSContextRepresentation);
  result = sub_1ABD9C1DC(&qword_1EB4D95D0, v3, type metadata accessor for KTSContextRepresentation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD9C158(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABD9C1DC(&qword_1EB4D95D8, a2, type metadata accessor for KTSContextAggregateRepresentation);
  result = sub_1ABD9C1DC(&qword_1EB4D95E0, v3, type metadata accessor for KTSContextAggregateRepresentation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD9C1DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *sub_1ABD9CA40(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD9CB20()
{
  result = qword_1EB4D95E8;
  if (!qword_1EB4D95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D95E8);
  }

  return result;
}

unint64_t sub_1ABD9CB78()
{
  result = qword_1EB4D95F0;
  if (!qword_1EB4D95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D95F0);
  }

  return result;
}

unint64_t sub_1ABD9CBD0()
{
  result = qword_1EB4D95F8;
  if (!qword_1EB4D95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D95F8);
  }

  return result;
}

unint64_t sub_1ABD9CC28()
{
  result = qword_1EB4D9600;
  if (!qword_1EB4D9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9600);
  }

  return result;
}

unint64_t sub_1ABD9CC80()
{
  result = qword_1EB4D9608;
  if (!qword_1EB4D9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9608);
  }

  return result;
}

unint64_t sub_1ABD9CCD8()
{
  result = qword_1EB4D9610;
  if (!qword_1EB4D9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9610);
  }

  return result;
}

void sub_1ABD9CD7C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABD9CDC4()
{
  v2 = *(v0 - 72);
}

uint64_t sub_1ABD9CDDC(uint64_t a1, double a2, double a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  result = sub_1ABAAB7C8(a1);
  v12 = result;
  v13 = 0;
  v26 = a1 & 0xC000000000000001;
  v25 = a1;
  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  v15 = (v7 + 16);
  v16 = (v7 + 8);
  while (v12 != v13)
  {
    if (v26)
    {
      result = MEMORY[0x1AC5AA170](v13, v25);
      v17 = result;
    }

    else
    {
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_11;
      }

      v17 = *(v25 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v18 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    swift_beginAccess();
    v19 = *(v17 + v18);
    v20 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
    swift_beginAccess();
    (*v15)(v10, v17 + v20, v6);
    sub_1ABF218C4();
    v22 = v21;
    (*v16)(v10, v6);

    v23 = a2 * a3;
    a3 = a3 + v22;
    a2 = v23 / a3 + v19 * v22 / a3;
    ++v13;
  }

  return result;
}

char *sub_1ABD9CFEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1ABF24CA4())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v3;
    }

    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1ABADE01C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v12;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC5AA170](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
      swift_beginAccess();
      v9 = *(v7 + v8);

      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1ABADE01C((v10 > 1), v11 + 1, 1);
      }

      *(v12 + 16) = v11 + 1;
      *(v12 + 8 * v11 + 32) = v9;
      ++v5;
      if (v6 == i)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

void sub_1ABD9D174()
{
  sub_1ABA7BCA8();
  v32 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1ABF24CA4())
  {
    if (!i)
    {
LABEL_15:
      sub_1ABA80BE4();
      sub_1ABA7BC90();
      return;
    }

    v33 = MEMORY[0x1E69E7CC0];
    sub_1ABDBFBD8();
    sub_1ABADE514();
    if (i < 0)
    {
      break;
    }

    v28 = v12;
    v29 = v5;
    v14 = 0;
    v30 = v4;
    v31 = v4 & 0xC000000000000001;
    v24 = v2;
    v25 = v4 & 0xFFFFFFFFFFFFFF8;
    v26 = v7 + 32;
    v27 = (v7 + 16);
    while (1)
    {
      v12 = i;
      v15 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v31)
      {
        v16 = sub_1ABA82DAC();
        v17 = MEMORY[0x1AC5AA170](v16);
      }

      else
      {
        if (v14 >= *(v25 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(v4 + 8 * v14 + 32);
      }

      v18 = *v32;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v5 = v28;
      v19 = v29;
      (*v27)(v28, v17 + v18, v29);

      v20 = *(v33 + 16);
      v2 = v20 + 1;
      if (v20 >= *(v33 + 24) >> 1)
      {
        sub_1ABADE514();
      }

      *(v33 + 16) = v2;
      v21 = *(v7 + 80);
      sub_1ABA7AB74();
      (*(v7 + 32))(v33 + v22 + *(v7 + 72) * v20, v5, v19);
      ++v14;
      v23 = v15 == v12;
      i = v12;
      v4 = v30;
      if (v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
}

void sub_1ABD9D3B4(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1ABF24CA4())
  {
    if (!i)
    {
LABEL_14:
      sub_1ABA80BE4();
      return;
    }

    v12 = MEMORY[0x1E69E7CC0];
    sub_1ABDBFBD8();
    sub_1ABADE07C();
    if (i < 0)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1ABA7BC4C();
        v2 = MEMORY[0x1AC5AA170](v7);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        sub_1ABA8B954(a1 + 8 * v5);
      }

      v8 = *a2;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v9 = *(v2 + v8);

      v10 = *(v12 + 16);
      v2 = v10 + 1;
      if (v10 >= *(v12 + 24) >> 1)
      {
        sub_1ABAA0DB0();
        sub_1ABADE07C();
      }

      *(v12 + 16) = v2;
      *(v12 + 8 * v10 + 32) = v9;
      ++v5;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
}

uint64_t sub_1ABD9D520(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1ABF24CA4())
  {
    if (!i)
    {
      return sub_1ABA80BE4();
    }

    v17 = MEMORY[0x1E69E7CC0];
    v6 = sub_1ABDBFBD8();
    result = (a2)(v6);
    if (i < 0)
    {
      break;
    }

    v15 = a2;
    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_1ABA8A354();
        v11 = MEMORY[0x1AC5AA170](v10);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a1 + 8 * j + 32);
      }

      v12 = *a3;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v13 = *(v11 + v12);

      a2 = *(v17 + 16);
      v14 = *(v17 + 24);
      if (a2 >= v14 >> 1)
      {
        v15(v14 > 1, a2 + 1, 1);
      }

      *(v17 + 16) = a2 + 1;
      *(v17 + 8 * a2 + 32) = v13;
      if (v9 == i)
      {
        return sub_1ABA80BE4();
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD9D6B0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v12 = MEMORY[0x1E69E7CC0];
  sub_1ABADE3D4();
  v4 = v12;
  for (i = (a1 + 32); ; ++i)
  {
    v10 = *i;

    sub_1ABDB383C(&v10, &v11);
    if (v2)
    {
      break;
    }

    v2 = 0;

    v7 = v11;
    v12 = v4;
    v8 = *(v4 + 16);
    if (v8 >= *(v4 + 24) >> 1)
    {
      sub_1ABADE3D4();
      v4 = v12;
    }

    *(v4 + 16) = v8 + 1;
    *(v4 + 8 * v8 + 32) = v7;
    if (!--v3)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD9D7C4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = sub_1ABAAB7C8(a1);
  v5 = result;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {
      return v7;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = sub_1ABA7BC4C();
      result = MEMORY[0x1AC5AA170](v16);
      v8 = result;
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = *a2;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v10 = *(v8 + v9);
    v11 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v12 = *(v8 + v11);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v17 = *(v7 + 16);
      v18 = sub_1ABA83F84();
      result = a3(v18);
      v7 = result;
    }

    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    if (v14 >= v13 >> 1)
    {
      result = (a3)(v13 > 1, v14 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v14 + 1;
    v15 = v7 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
    ++v6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1ABD9D950(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CodableLocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = sub_1ABAAB7C8(a1);
  v13 = 0;
  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  v40 = a1 & 0xC000000000000001;
  v35 = MEMORY[0x1E69E7CC0];
  while (v12 != v13)
  {
    if (v40)
    {
      v14 = MEMORY[0x1AC5AA170](v13, a1);
    }

    else
    {
      if (v13 >= *(v39 + 16))
      {
        goto LABEL_22;
      }

      v14 = *(a1 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v38 = v13 + 1;
    v15 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
    swift_beginAccess();
    v16 = *(v14 + v15);
    if (v16)
    {
      v34 = v8;
      v17 = *(v16 + 16);
      if (v17)
      {
        v30 = v12;
        v32 = a1;
        v33 = v2;
        v41 = MEMORY[0x1E69E7CC0];

        sub_1ABF24BC4();
        v18 = sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
        v19 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v31 = v5;
        v36 = *(v5 + 72);
        v37 = v18;
        v20 = v34;
        do
        {
          sub_1ABAFEEF4(v19, v11);
          sub_1ABAFEEF4(v11, v20);
          CLLocation.init(model:)(v20);
          sub_1ABAFEF58(v11);
          sub_1ABF24B94();
          v21 = *(v41 + 16);
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v19 += v36;
          --v17;
        }

        while (v17);

        v22 = v41;
        a1 = v32;
        v2 = v33;
        v12 = v30;
        v5 = v31;
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v34;
      v24 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = *(v35 + 16);
        sub_1ABADBE84();
        v35 = v28;
      }

      v25 = *(v35 + 16);
      if (v25 >= *(v35 + 24) >> 1)
      {
        sub_1ABADBE84();
        v35 = v29;
      }

      v26 = v35;
      *(v35 + 16) = v25 + 1;
      *(v26 + 8 * v25 + 32) = v22;
      v13 = v38;
      v12 = v24;
    }

    else
    {

      ++v13;
    }
  }
}

uint64_t sub_1ABD9DC70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), double a7)
{
  v69 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64(v69);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v63 = v17;
  v68 = a4;
  v67 = sub_1ABAD219C(a3, a4);
  v18 = sub_1ABA7BBB0(v67);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7C068();
  v60 = v21;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA88E50();
  v61 = v23;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA9E360();
  v25 = *(a1 + 64);
  v26 = *(a1 + 32);
  sub_1ABA7D32C();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;
  v66 = v13;
  v64 = (v13 + 8);

  v32 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  while (v29)
  {
LABEL_8:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = v35 | (v32 << 6);
    v37 = *(*(a1 + 48) + v36);
    v38 = *(v66 + 72);
    v39 = *(v66 + 16);
    v39(&v7[*(v67 + 48)], *(a1 + 56) + v38 * v36, v69);
    *v7 = v37;
    if (*(a2 + 16) && (v40 = a5(v37), (v41 & 1) != 0) && (v39(v63, *(a2 + 56) + v40 * v38, v69), sub_1ABF218C4(), v43 = v42, v44 = *v64, v45 = sub_1ABAA030C(), (v44)(v45), v43 != 0.0))
    {
      sub_1ABBD88DC(v7, v61, a3, v68);
      v58 = *v61;
      v57 = *(v67 + 48);
      sub_1ABAB0FB8();
      sub_1ABBD88DC(v46, v47, v48, v68);
      v56 = *(v67 + 48);
      sub_1ABF218C4();
      v50 = v49;
      v44(v60 + v56, v69);
      v44(&v61[v57], v69);
      sub_1ABAB480C(v7, a3, v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = *(v62 + 16);
        v55 = sub_1ABA83F84();
        v62 = a6(v55);
      }

      v52 = *(v62 + 16);
      v51 = *(v62 + 24);
      if (v52 >= v51 >> 1)
      {
        v62 = (a6)(v51 > 1, v52 + 1, 1, v62);
      }

      *(v62 + 16) = v52 + 1;
      v53 = v62 + 16 * v52;
      *(v53 + 32) = v58;
      *(v53 + 40) = v50 * a7 / v43;
    }

    else
    {
      sub_1ABAB480C(v7, a3, v68);
    }
  }

  result = a2;
  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      return v62;
    }

    v29 = *(a1 + 64 + 8 * v34);
    ++v32;
    if (v29)
    {
      v32 = v34;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD9E04C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *, uint64_t))
{
  v12 = a1;
  v7 = *(a2 + 16);
  v8 = (a2 + 40);
  if (v7)
  {
    while (1)
    {
      v9 = *v8;
      v11[0] = *(v8 - 1);
      v11[1] = v9;

      a4(&v12, v11, a3);
      if (v4)
      {
        break;
      }

      v8 += 2;
      if (!--v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:

    return v12;
  }
}

uint64_t sub_1ABD9E114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1ABD9E158(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v11);
  if (v4)
  {
  }

  return sub_1ABA80BE4();
}

void sub_1ABD9E1DC(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D3748, &unk_1ABF3D7B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D3740, &qword_1ABF3D7A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D3740, &qword_1ABF3D7A8);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D3748, &unk_1ABF3D7B0);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D3748, &unk_1ABF3D7B0);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D13B8, &qword_1ABF33540);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9E524(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D3758, &unk_1ABF3D7C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D3750, &unk_1ABF61910);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D3750, &unk_1ABF61910);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D3758, &unk_1ABF3D7C0);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D3758, &unk_1ABF3D7C0);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D13D8, &qword_1ABF33560);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9E86C(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D99E8, &qword_1ABF61888);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D9A10, &unk_1ABF61930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D9A10, &unk_1ABF61930);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D99E8, &qword_1ABF61888);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D99E8, &qword_1ABF61888);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D13F8, &qword_1ABF33580);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9EBB4(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D99E0, &unk_1ABF61878);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D9A20, &unk_1ABF61950);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D9A20, &unk_1ABF61950);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D99E0, &unk_1ABF61878);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D99E0, &unk_1ABF61878);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D13E8, &qword_1ABF33570);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9EEFC(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D3760, &qword_1ABF3D7D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D3760, &qword_1ABF3D7D0);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D1408, &qword_1ABF33590);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9F244(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D37B0, &qword_1ABF3D818);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D37A8, &qword_1ABF3D810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D37A8, &qword_1ABF3D810);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D37B0, &qword_1ABF3D818);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D37B0, &qword_1ABF3D818);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D1458, &qword_1ABF335E0);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9F58C(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D37F0, &unk_1ABF61890);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D37E8, &qword_1ABF3D850);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D37E8, &qword_1ABF3D850);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D37F0, &unk_1ABF61890);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D37F0, &unk_1ABF61890);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D1468, &qword_1ABF335F0);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9F8D4(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D37C0, &unk_1ABF61990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D37B8, &unk_1ABF3D820);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D37B8, &unk_1ABF3D820);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D37C0, &unk_1ABF61990);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D37C0, &unk_1ABF61990);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D1438, &qword_1ABF335C0);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9FC1C(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D37E0, &unk_1ABF61830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D37D8, &unk_1ABF3D840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D37D8, &unk_1ABF3D840);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D37E0, &unk_1ABF61830);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D37E0, &unk_1ABF61830);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9FF64(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D3730, &qword_1ABF3D7A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D3728, &qword_1ABF618E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v15;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v45 = v5;
  v47 = v20;
  if (v22)
  {
    v46 = &v44 - v15;
    v23 = v10;
    v24 = v21;
LABEL_7:
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = *(v19 + 56);
    v27 = *(*(v19 + 48) + v25);
    v28 = v19;
    v29 = (v22 - 1) & v22;
    (*(v7 + 16))(v23, v26 + *(v7 + 72) * v25, v6, v16);
    v30 = *(v2 + 48);
    v31 = v46;
    *v46 = v27;
    v32 = v29;
    v19 = v28;
    v33 = v23;
    v17 = v31;
    (*(v7 + 32))(&v31[v30], v33, v6);
    v34 = 0;
LABEL_8:
    v35 = 1;
    sub_1ABA7B9B4(v17, v34, 1, v2);
    *v1 = v19;
    v1[1] = v18;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v21;
    v1[4] = v32;
    v37 = v1[5];
    v38 = v1[6];
    sub_1ABBD898C(v17, v36, &qword_1EB4D3728, &qword_1ABF618E0);
    v39 = sub_1ABA7E1E0(v36, 1, v2);
    v40 = v49;
    if (v39 != 1)
    {
      v41 = v36;
      v42 = v45;
      sub_1ABBD898C(v41, v45, &qword_1EB4D3730, &qword_1ABF3D7A0);
      v37(v42);
      sub_1ABAB480C(v42, &qword_1EB4D3730, &qword_1ABF3D7A0);
      v35 = 0;
    }

    v43 = sub_1ABAD219C(&qword_1EB4D13C8, &qword_1ABF33550);
    sub_1ABA7B9B4(v40, v35, 1, v43);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = 0;
        v34 = 1;
        goto LABEL_8;
      }

      v22 = *(v18 + 8 * v24);
      ++v21;
      if (v22)
      {
        v46 = &v44 - v15;
        v23 = v10;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABDA02AC(uint64_t a1@<X8>)
{
  v43 = sub_1ABAD219C(&qword_1EB4D3790, &unk_1ABF61850);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v39 - v4;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D3788, &unk_1ABF3D7F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v15;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v44 = v20;
  if (v22)
  {
    v41 = v13;
    v42 = a1;
    v23 = v5;
    v24 = v21;
LABEL_7:
    v40 = (v22 - 1) & v22;
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = (*(v18 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    (*(v6 + 16))(v9, *(v18 + 56) + *(v6 + 72) * v25, v23, v16);
    v29 = v43;
    v30 = *(v43 + 48);
    *v17 = v27;
    *(v17 + 1) = v28;
    v31 = v9;
    v32 = v29;
    (*(v6 + 32))(&v17[v30], v31, v23);
    sub_1ABA7B9B4(v17, 0, 1, v32);

    v33 = v40;
    v13 = v41;
    a1 = v42;
LABEL_8:
    *v1 = v18;
    v1[1] = v19;
    v1[2] = v44;
    v1[3] = v21;
    v1[4] = v33;
    v34 = v1[5];
    v35 = v1[6];
    sub_1ABBD898C(v17, v13, &qword_1EB4D3788, &unk_1ABF3D7F0);
    v36 = 1;
    if (sub_1ABA7E1E0(v13, 1, v32) != 1)
    {
      v37 = v39;
      sub_1ABBD898C(v13, v39, &qword_1EB4D3790, &unk_1ABF61850);
      v34(v37);
      sub_1ABAB480C(v37, &qword_1EB4D3790, &unk_1ABF61850);
      v36 = 0;
    }

    v38 = sub_1ABAD219C(&qword_1EB4D1D60, &qword_1ABF34628);
    sub_1ABA7B9B4(a1, v36, 1, v38);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = v43;
        sub_1ABA7B9B4(&v39 - v15, 1, 1, v43);
        v33 = 0;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v24);
      ++v21;
      if (v22)
      {
        v41 = v13;
        v42 = a1;
        v23 = v5;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABDA060C(uint64_t a1@<X8>)
{
  v43 = sub_1ABAD219C(&qword_1EB4D3780, &unk_1ABF61800);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v39 - v4;
  v5 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D3778, &unk_1ABF3D7E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v15;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v44 = v20;
  if (v22)
  {
    v41 = v13;
    v42 = a1;
    v23 = v5;
    v24 = v21;
LABEL_7:
    v40 = (v22 - 1) & v22;
    v25 = __clz(__rbit64(v22)) | (v24 << 6);
    v26 = (*(v18 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    (*(v6 + 16))(v9, *(v18 + 56) + *(v6 + 72) * v25, v23, v16);
    v29 = v43;
    v30 = *(v43 + 48);
    *v17 = v27;
    *(v17 + 1) = v28;
    v31 = v9;
    v32 = v29;
    (*(v6 + 32))(&v17[v30], v31, v23);
    sub_1ABA7B9B4(v17, 0, 1, v32);

    v33 = v40;
    v13 = v41;
    a1 = v42;
LABEL_8:
    *v1 = v18;
    v1[1] = v19;
    v1[2] = v44;
    v1[3] = v21;
    v1[4] = v33;
    v34 = v1[5];
    v35 = v1[6];
    sub_1ABBD898C(v17, v13, &qword_1EB4D3778, &unk_1ABF3D7E0);
    v36 = 1;
    if (sub_1ABA7E1E0(v13, 1, v32) != 1)
    {
      v37 = v39;
      sub_1ABBD898C(v13, v39, &qword_1EB4D3780, &unk_1ABF61800);
      v34(v37);
      sub_1ABAB480C(v37, &qword_1EB4D3780, &unk_1ABF61800);
      v36 = 0;
    }

    v38 = sub_1ABAD219C(&qword_1EB4D1D58, &qword_1ABF34620);
    sub_1ABA7B9B4(a1, v36, 1, v38);
  }

  else
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= ((v20 + 64) >> 6))
      {
        v32 = v43;
        sub_1ABA7B9B4(&v39 - v15, 1, 1, v43);
        v33 = 0;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v24);
      ++v21;
      if (v22)
      {
        v41 = v13;
        v42 = a1;
        v23 = v5;
        v21 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

double sub_1ABDA096C()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1ABDA099C(double a1)
{
  sub_1ABAA0948();
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

double sub_1ABDA0A28()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1ABDA0A58(double a1)
{
  sub_1ABAA0948();
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1ABDA0B68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA0BA0(v4);
}

uint64_t sub_1ABDA0BF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = sub_1ABAD219C(a5, a6);
  sub_1ABA7BB64(v9);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v16 = *(v15 + 16);
  v17 = sub_1ABA7BE8C();
  v18(v17);
  v19 = *a2;
  return a7(v14);
}

uint64_t sub_1ABDA0E44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA0E7C(v4);
}

uint64_t sub_1ABDA0ED4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA0F0C(v4);
}

uint64_t sub_1ABDA0F64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA0F9C(v4);
}

uint64_t sub_1ABDA0FF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA102C(v4);
}

uint64_t sub_1ABDA1084(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA10BC(v4);
}

uint64_t sub_1ABDA1114(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA114C(v4);
}

double sub_1ABDA1228()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1ABDA1264(double a1)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA9F7E4();
  sub_1ABAA0948();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABDA1398@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v9 = sub_1ABAD219C(a2, a3);
  sub_1ABA7BBB0(v9);
  return (*(v10 + 16))(a4, v4 + v8);
}

uint64_t sub_1ABDA1440(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  v9 = sub_1ABAD219C(a3, a4);
  sub_1ABA7BBB0(v9);
  (*(v10 + 40))(v4 + v8, a1);
  return swift_endAccess();
}

uint64_t sub_1ABDA1524()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1ABDA1560(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  result = sub_1ABA8C600();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABDA15EC()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1ABDA1628(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  result = sub_1ABA8C600();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABDA16B4()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1ABDA16F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  result = sub_1ABA8C600();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABDA177C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA17B4(v4);
}

uint64_t sub_1ABDA180C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1844(v4);
}

uint64_t sub_1ABDA189C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA18D4(v4);
}

uint64_t sub_1ABDA192C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1964(v4);
}

uint64_t sub_1ABDA19BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA19F4(v4);
}

uint64_t sub_1ABDA1A4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1A84(v4);
}

uint64_t sub_1ABDA1ADC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1B14(v4);
}

uint64_t sub_1ABDA1B6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1BA4(v4);
}

uint64_t sub_1ABDA1BFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1C34(v4);
}

uint64_t sub_1ABDA1C8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1D00(v4);
}

uint64_t sub_1ABDA1CC4(uint64_t *a1)
{
  v2 = *a1;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1ABDA1D0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1ABA8C600();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1ABDA1D9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1DD4(v4);
}

uint64_t sub_1ABDA1E2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1E64(v4);
}

uint64_t sub_1ABDA1EBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABDA1EF4(v4);
}

uint64_t sub_1ABDA1F4C()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}