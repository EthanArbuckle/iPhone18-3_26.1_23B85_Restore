uint64_t sub_1B21489CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A3498, &qword_1B226C228);
  result = sub_1B2252C70();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_33:
    v37 = v6;

    *v2 = v37;
    return result;
  }

  v38 = v1;
  v39 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  v40 = result;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      v36 = v6;
      sub_1B2148CEC(0, (v35 + 63) >> 6, v8);
      v6 = v36;
    }

    else
    {
      *v8 = -1 << v35;
    }

    v2 = v38;
    *(v3 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v41 = (v11 - 1) & v11;
LABEL_14:
    v17 = (*(v3 + 48) + ((v14 | (v7 << 6)) << 6));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v23 = v17[4];
    v22 = v17[5];
    v42 = v17[6];
    v43 = v17[7];
    v24 = *(v6 + 40);
    sub_1B2253420();
    sub_1B2252370();
    sub_1B2252370();
    sub_1B2253440();
    if (v22)
    {
      sub_1B2252370();
    }

    sub_1B2253440();
    if (v43)
    {
      sub_1B2252370();
    }

    result = sub_1B2253470();
    v6 = v40;
    v25 = -1 << *(v40 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    v29 = v43;
LABEL_27:
    *(v13 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v34 = (*(v40 + 48) + (v28 << 6));
    *v34 = v18;
    v34[1] = v19;
    v11 = v41;
    v34[2] = v20;
    v34[3] = v21;
    v34[4] = v23;
    v34[5] = v22;
    v34[6] = v42;
    v34[7] = v29;
    ++*(v40 + 16);
    v3 = v39;
    if (!v41)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v25) >> 6;
  v29 = v43;
  while (++v27 != v31 || (v30 & 1) == 0)
  {
    v32 = v27 == v31;
    if (v27 == v31)
    {
      v27 = 0;
    }

    v30 |= v32;
    v33 = *(v13 + 8 * v27);
    if (v33 != -1)
    {
      v28 = __clz(__rbit64(~v33)) + (v27 << 6);
      goto LABEL_27;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B2148CEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B225E500;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B2148D50()
{
  sub_1B2122548();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1B211D630(v5, v3);
  v7 = sub_1B213E424();
  sub_1B211744C(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_1B21619D8(&qword_1EB7A1CE8, &qword_1B225A750);
  if (sub_1B21165F8())
  {
    v14 = *v0;
    sub_1B213E424();
    sub_1B21150FC();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v0;
  if (v13)
  {
    v18 = (*(v17 + 56) + 40 * v12);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = v18[4];
    v24 = *(v6 + 16);
    *v18 = *v6;
    *(v18 + 1) = v24;
    v18[4] = *(v6 + 32);

    sub_1B2115ED4();
  }

  else
  {
    sub_1B2144974(v12, v4, v2, v6, v17);
    sub_1B2115ED4();

    return sub_1B213E100(v27, v28);
  }
}

uint64_t sub_1B2148E94(uint64_t a1, uint64_t a2)
{
  sub_1B2146A54(&v45, a1, 0);
  if (v2)
  {
    return a2;
  }

  if (!v47)
  {
    sub_1B2122784(v46, v44);
    sub_1B21619D8(&qword_1EB7A21F8, &qword_1B225B6D0);
    swift_allocObject();

    v9 = sub_1B214786C(v6, 0, 0, v44);
    v48 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    if (*(v9 + 24) == 1)
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v31 = v9[2];

      sub_1B2149358(v31, v9, &v48);
      *(v9 + 24) = 1;

      v10 = v48;
    }

    a2 = v10;
    goto LABEL_5;
  }

  v32 = v47;
  type metadata accessor for Row();
  v5 = v45;
  v44[0] = 0uLL;

  v8 = static Row.fetchAll(_:arguments:adapter:)(v5, v44, v46);
  v32(a1, v8);
  v11 = sub_1B2116B08(v8);
  if (!v11)
  {

    sub_1B2112F4C(v32);
    a2 = MEMORY[0x1E69E7CC0];
LABEL_5:
    sub_1B2142D18(&v45);
    return a2;
  }

  v12 = v11;
  *&v44[0] = MEMORY[0x1E69E7CC0];
  sub_1B2149BB0();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    a2 = *&v44[0];
    v33 = v12 - 1;
    v34 = v8 & 0xC000000000000001;
    for (i = v8; ; v8 = i)
    {
      v42 = a2;
      if (v34)
      {
        MEMORY[0x1B27427E0](v13, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v13 + 32);
      }

      v15 = sub_1B212F0BC(6580579, 0xE300000000000000);
      v16 = sub_1B212D190(1701667182, 0xE400000000000000);
      v18 = v17;
      v19 = sub_1B212D190(1701869940, 0xE400000000000000);
      v38 = v20;
      v39 = v19;
      v40 = v18;
      v21 = sub_1B21322A0(0x6C6C756E746F6ELL, 0xE700000000000000);
      v22 = v15;
      v41 = v13;
      v23 = sub_1B21496F4();
      v37 = v24;
      v25 = sub_1B212F0BC(27504, 0xE200000000000000);
      v36 = sub_1B2149894();
      v27 = v26;

      a2 = v42;
      *&v44[0] = v42;
      v28 = *(v42 + 16);
      if (v28 >= *(v42 + 24) >> 1)
      {
        sub_1B2149BB0();
        a2 = *&v44[0];
      }

      *(a2 + 16) = v28 + 1;
      v29 = a2 + 88 * v28;
      *(v29 + 32) = v22;
      *(v29 + 40) = v36;
      *(v29 + 48) = v27 & 1;
      v30 = *(&v48 + 3);
      *(v29 + 49) = v48;
      *(v29 + 52) = v30;
      *(v29 + 56) = v16;
      *(v29 + 64) = v40;
      *(v29 + 72) = v39;
      *(v29 + 80) = v38;
      *(v29 + 88) = v21 & 1;
      *(v29 + 92) = *&v43[3];
      *(v29 + 89) = *v43;
      *(v29 + 96) = v23;
      *(v29 + 104) = v37;
      *(v29 + 112) = v25;
      if (v33 == v41)
      {
        break;
      }

      v13 = v41 + 1;
    }

    sub_1B2112F4C(v32);

    goto LABEL_5;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B2149358(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  type metadata accessor for SchedulingWatchdog();
  v6 = *(a1 + 80);
  v7 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v7))
  {

    v35 = *(a1 + 16);
    if (!sqlite3_stmt_busy(v35))
    {
      swift_unownedRetainStrong();
      Database.statementWillExecute(_:)(a1);
      if (v3)
      {
LABEL_15:
      }
    }

    v33 = a1;
    while (1)
    {
      v8 = sqlite3_step(v35);
      if (v8 != 100)
      {
        break;
      }

      v9 = *(a2 + 32);

      v40 = sub_1B212F0BC(6580579, 0xE300000000000000);
      if (v4)
      {
        swift_unexpectedError();
        __break(1u);
        goto LABEL_18;
      }

      v10 = sub_1B212D190(1701667182, 0xE400000000000000);
      v38 = v11;
      v39 = v10;
      v12 = sub_1B212D190(1701869940, 0xE400000000000000);
      v37 = v13;
      v14 = v12;
      v15 = sub_1B21322A0(0x6C6C756E746F6ELL, 0xE700000000000000);
      v16 = sub_1B21496F4();
      v18 = v17;
      v19 = sub_1B212F0BC(27504, 0xE200000000000000);
      v20 = v15 & 1;
      v21 = sub_1B2149894();
      v23 = v22;

      v52 = v23 & 1;
      __src[0] = v40;
      __src[1] = v21;
      LOBYTE(__src[2]) = v23 & 1;
      __src[3] = v39;
      __src[4] = v38;
      __src[5] = v14;
      __src[6] = v37;
      v53 = v20;
      LOBYTE(__src[7]) = v20;
      __src[8] = v16;
      __src[9] = v18;
      __src[10] = v19;
      v24 = *a3;
      sub_1B21499AC(__src, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v24 + 16);
        sub_1B21150D0();
        sub_1B21499E4();
        v24 = v29;
        *a3 = v29;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1B211156C(v26);
        sub_1B21499E4();
        v24 = v30;
        *a3 = v30;
      }

      *(v24 + 16) = v27 + 1;
      memcpy((v24 + 88 * v27 + 32), __src, 0x58uLL);
      v41[0] = v40;
      v41[1] = v21;
      v42 = v23 & 1;
      v43 = v39;
      v44 = v38;
      v45 = v14;
      v46 = v37;
      v47 = v53;
      v48 = v16;
      v49 = v18;
      v50 = v19;
      sub_1B2149A98(v41);
      a1 = v33;
      v4 = 0;
    }

    v31 = v8;
    if (v8 == 101)
    {
      swift_unownedRetainStrong();
      Database.statementDidExecute(_:)(a1);
    }

    else
    {
      swift_unownedRetainStrong();
      Database.statementDidFail(_:withResultCode:)(a1, v31);
    }

    goto LABEL_15;
  }

LABEL_18:

  sub_1B2112EA0();
  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B21496F4()
{
  v1 = v0;
  sub_1B211D964();
  v2 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v3 = sub_1B2115EE8();
  result = v4(v3);
  if (v6)
  {
    return 0;
  }

  v7 = result;
  v8 = v0[8];
  if (!v8)
  {
    return sub_1B21B9EDC(result);
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (sqlite3_column_type(v1[8], result) == 5)
  {
    return 0;
  }

  result = sqlite3_column_text(v8, v7);
  if (result)
  {
    return sub_1B2252400();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t *sub_1B2149808()
{
  result = sub_1B2127E38(v0 - 232);
  v2 = *result;
  return result;
}

uint64_t sub_1B2149824()
{
  v3 = *v0;
  *(v1 - 128) = *(v0 - 1);
  *(v1 - 120) = v3;
}

uint64_t sub_1B2149844()
{
}

sqlite3_int64 sub_1B2149894()
{
  v1 = v0;
  sub_1B211D964();
  v2 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v3 = sub_1B2115EE8();
  v5 = v4(v3);
  v6 = v5;
  if (v7)
  {
    return v6;
  }

  v8 = v0[8];
  if (!v8)
  {
    sub_1B21B9F7C();
    return v9;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_type(v1[8], v5) == 5)
    {
      return 0;
    }

    else
    {
      return sqlite3_column_int64(v8, v6);
    }
  }

  __break(1u);
  sub_1B213CE18();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B21499E4()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0EE8, &unk_1B2254600);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2149AC8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B212CD20();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1B2149AC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

void sub_1B2149AF0()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0EE8, &unk_1B2254600);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2149AC8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2149BB0()
{
  v1 = *v0;
  sub_1B2149AF0();
  *v0 = v2;
}

uint64_t sub_1B2149BD0(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2149C54(v6);
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_1B2149C6C(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1B2149C6C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1B2252FC0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1B2252610();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

char *sub_1B2149D70(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (*v10 >= *(v10 - 11))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1B2149E50()
{
  sub_1B211AD88();
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1B211D630(v11, v9);
  v13 = sub_1B211E590();
  sub_1B211744C(v13, v14);
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v18 = v15;
  v19 = v16;
  sub_1B21619D8(v5, v3);
  if (sub_1B2121FA4())
  {
    v20 = *v0;
    sub_1B211E590();
    sub_1B21150FC();
    if (!v22)
    {
      goto LABEL_14;
    }

    v18 = v21;
  }

  v23 = *v6;
  if (v19)
  {
    v24 = *(v23 + 56);
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = v12;
    sub_1B21119F0();
  }

  else
  {
    v29(v18, v10, v8, v12, v23);
    sub_1B21119F0();
  }
}

char *sub_1B2149F90(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[10] >= *(v10 - 1))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1B214A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B211E590();
  sub_1B211744C(v13, v14);
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v18 = v15;
  v19 = v16;
  sub_1B21619D8(&qword_1EB7A1D38, &qword_1B225A798);
  if (sub_1B2252E70())
  {
    v20 = *v6;
    sub_1B211E590();
    sub_1B2118020();
    if (!v22)
    {
      goto LABEL_14;
    }

    v18 = v21;
  }

  v23 = *v6;
  if (v19)
  {
    v24 = *(v23 + 56) + 24 * v18;
    v25 = *v24;
    v26 = *(v24 + 8);
    *v24 = a1;
    *(v24 + 8) = a2;
    v27 = *(v24 + 16);
    *(v24 + 16) = a3;
    sub_1B2111588();

    return sub_1B21AC4E4(v28, v29, v30);
  }

  else
  {
    sub_1B214A1B4(v18, a4, a5, a1, a2, a3, v23);
    sub_1B2111588();
  }
}

uint64_t sub_1B214A1B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B21157C0(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * result;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

uint64_t static Int64.fromDatabaseValue(_:)(uint64_t *a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 != 1 || (*&result >= -9.22337204e18 ? (v4 = *&result < 9.22337204e18) : (v4 = 0), !v4))
    {
      *&result = COERCE_DOUBLE(sub_1B2111FA8());
      return result;
    }

    if ((~result & 0x7FF0000000000000) != 0)
    {
      if (*&result > -9.22337204e18)
      {
        *&result = COERCE_DOUBLE(sub_1B2122188(*&result));
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B214A274(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
  result = sub_1B2252C90();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = *(result + 40);
  v8 = ~(-1 << *(result + 32));
  while (v5 < *(a1 + 16))
  {
    v9 = *(a1 + 32 + 8 * v5++);
    for (result = sub_1B2253410(); ; result = v10 + 1)
    {
      v10 = result & v8;
      v11 = (result & v8) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v8);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v10) == v9)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + 8 * v10) = v9;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B214A3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *v4;
  if (v9)
  {
    sub_1B2252220();

    v10 = sub_1B21120EC();
    v14 = sub_1B214A5A8(v10, v11, v12, v13, v9);
    if (v14 != 1)
    {
      v17 = v14;
      v18 = v15;
      if (v15)
      {

        v20 = sub_1B21CACB8(v19, v18, sub_1B21CAE7C, sub_1B21CAE7C);

        a3 = v20;
      }

      else
      {
      }

      if (sub_1B214A608(v17, a3))
      {

        sub_1B21120EC();
        v21 = sub_1B21C7A3C();
        sub_1B21CC30C(v21);
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1B214A630();
      }
    }

    *a4 = v9;
  }

  else
  {

    return sub_1B21C9744(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B214A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 1;
  }

  v6 = sub_1B2133834();
  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v8 = (*(a5 + 56) + 16 * v6);
  v10 = *v8;
  v9 = v8[1];

  return v10;
}

uint64_t sub_1B214A630()
{
  sub_1B211AD88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v31 = v10;
  v12 = v11;
  v13 = *v0;
  v14 = sub_1B2133834();
  sub_1B211744C(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  sub_1B21619D8(&qword_1EB7A1D10, &unk_1B225BB40);
  if (sub_1B2113040())
  {
    v21 = *v1;
    sub_1B2133834();
    sub_1B2118020();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  v24 = *v1;
  if (v20)
  {
    v25 = (*(v24 + 56) + 16 * v19);
    v26 = *v25;
    v27 = v25[1];
    *v25 = v12;
    v25[1] = v31;

    sub_1B21119F0();
  }

  else
  {
    sub_1B21CBF7C(v19, v9, v7, v5, v3, v12, v31, v24);

    sub_1B21119F0();
  }
}

unint64_t sub_1B214A77C(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v9 = (v4 + 32 + 16 * a2);
          v5 = *v9;
          v6 = v9[1];
          v17 = *(v4 + 32 + 16 * result);
          sub_1B213E100(*(v4 + 32 + 16 * result), *(&v17 + 1));
          sub_1B213E100(v5, v6);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        sub_1B21956CC(v4);
        v4 = v16;
LABEL_6:
        v10 = (v4 + 32 + 16 * v7);
        v11 = *v10;
        v12 = v10[1];
        *v10 = v5;
        v10[1] = v6;
        result = sub_1B213EA54(v11, v12);
        if (*(v4 + 16) <= v2)
        {
          __break(1u);
        }

        else
        {
          v13 = (v4 + 32 + 16 * v2);
          v14 = *v13;
          v15 = v13[1];
          *v13 = v17;
          result = sub_1B213EA54(v14, v15);
          *v3 = v4;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

__n128 sub_1B214A874(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B214A888()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B2253420();
  sub_1B214A8D0(v4, v1, v2);
  return sub_1B2253470();
}

uint64_t sub_1B214A8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x1B2742F10](v3);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x1B2742F10](v3);
  }

  MEMORY[0x1B2742F10](2);

  return sub_1B2252370();
}

uint64_t sub_1B214A9B4(uint64_t a1, __int128 *a2)
{
  *(v2 + 64) = 0;
  *(v2 + 16) = a1;
  sub_1B21217FC(a2, v2 + 24);
  return v2;
}

uint64_t sub_1B214AA08@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  a1[3] = type metadata accessor for ColumnEncoder();
  a1[4] = swift_getWitnessTable();
  *a1 = v1;
}

uint64_t sub_1B214AACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[4] = a3;
  sub_1B2116040();
  LOBYTE(v21[0]) = v3;
  sub_1B2114704(v3, v4, v5, v6, v7, v8, v9, v10, v20[0]);

  sub_1B2115014(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4], v21[0]);

  sub_1B2113208(v20);
  return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B214AB3C()
{
  v1 = *(v0 + 16);

  sub_1B2113208((v0 + 24));
  return v0;
}

uint64_t sub_1B214AB64()
{
  v0 = sub_1B214AB3C();

  return MEMORY[0x1EEE6BDC0](v0, 65, 7);
}

void sub_1B214AB94()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B214ABF8();
    *v1 = v4;
  }
}

void sub_1B214ABF8()
{
  sub_1B2114660();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v8 == v9)
  {
LABEL_7:
    sub_1B2111EF8(v7);
    if (v4)
    {
      sub_1B2113B10(v10, v11, v12, v13, v14, v15);
      v16 = sub_1B211A23C();
      sub_1B2111554(v16);
      sub_1B211F5F8();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1B2117B84();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v8)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B214ACA8()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2114214();
    sub_1B214ABF8();
    *v0 = v4;
  }
}

void *ColumnExpression.sqlExpression.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  __src[0] = (*(a1 + 16))();
  __src[1] = v3;
  sub_1B2134F5C(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

void *sub_1B214AD60(uint64_t __src)
{
  *__srca = __src;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__srca);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __srca[0]);
}

BOOL sub_1B214AD9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD000000000000033, 0x80000001B226E520);
  v9 = sub_1B214AEF4(a1, a2, a3, a4);
  MEMORY[0x1B2741EB0](v9);

  ppStmt[0] = 0;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = sub_1B2252350();

  LODWORD(v10) = sqlite3_prepare_v2(v10, (v11 + 32), -1, ppStmt, 0);

  sqlite3_finalize(ppStmt[0]);
  v12 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

uint64_t sub_1B214AEF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B213E100(a1, a2);
  v6 = sub_1B2113B50();
  MEMORY[0x1B2741EB0](v6);

  MEMORY[0x1B2741EB0](46, 0xE100000000000000);
  MEMORY[0x1B2741EB0](a3, a4);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  return 0;
}

uint64_t sub_1B214AFE0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B214B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a8;
  v28 = a2;
  v33 = a3;
  v12 = sub_1B2252B00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - v16;
  v18 = *(a6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v12);
  if (sub_1B2122A98(v17, 1, a6) == 1)
  {
    (*(v13 + 8))(v17, v12);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v29[3] = a5;
    v29[4] = v27;
    v22 = sub_1B212FF14(v29);
    (*(*(a5 - 8) + 16))(v22, v28, a5);
    sub_1B21443FC(&v30, v29);
    sub_1B212AC5C(&v30, &qword_1EB7A0E30, &unk_1B2259360);
    v23 = v29;
  }

  else
  {
    (*(v18 + 32))(v21, v17, a6);
    *(&v31 + 1) = a5;
    v32 = v27;
    v24 = sub_1B212FF14(&v30);
    (*(*(a5 - 8) + 16))(v24, v28, a5);
    sub_1B2144B88(v21, &v30, a6, a9);
    (*(v18 + 8))(v21, a6);
    v23 = &v30;
  }

  return sub_1B2113208(v23);
}

uint64_t sub_1B214B35C()
{
  sub_1B2112904();
  v17 = v1;
  v18[0] = v0;
  v16 = v2;
  sub_1B212FF14(v15);
  sub_1B211562C();
  v4 = *(v3 + 16);
  sub_1B211194C();
  v6 = v5();
  sub_1B2115014(v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v16, v17, v18[0]);
  sub_1B2113208(v15);
  return sub_1B212AC5C(v18, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B214B3E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = MEMORY[0x1E69E6370];
  v14 = &protocol witness table for Bool;
  v12[0] = a1;
  v11[3] = a5;
  v11[4] = a7;
  v9 = sub_1B212FF14(v11);
  (*(*(a5 - 8) + 16))(v9, a2, a5);
  sub_1B21443FC(v12, v11);
  sub_1B2113208(v11);
  return sub_1B212AC5C(v12, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B214B4AC(int (*a1)(void))
{
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B2117B40(v1))
  {
    sub_1B2122734();
    swift_beginAccess();
    return a1(*(v1 + 16));
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

void *QueryInterfaceRequest.deleteAll(_:)()
{
  memcpy(__dst, v0, 0xA2uLL);
  sub_1B2136148(__dst, __src);
  sub_1B21366E4(__dst, __src);
  sub_1B2137278();
  v3 = v2;
  memcpy(v8, __src, 0xA8uLL);
  v8[168] = 0;
  v9 = v3;
  sub_1B214B670();
  v4.value.values._rawValue = sub_1B2142BCC(v8);
  if (!v1)
  {
    *__src = 0;
    *&__src[8] = 0;
    v4.value.values._rawValue = __src;
    Statement.execute(arguments:)(v4);

    if (!v5)
    {
      v4.value.values._rawValue = Database.changesCount.getter();
    }
  }

  return v4.value.values._rawValue;
}

void sub_1B214B670()
{
  sub_1B2111640();
  v3 = sub_1B214BBD0(v2);
  if (v1)
  {
    goto LABEL_8;
  }

  if (!v3)
  {
    memcpy(__dst, v0, sizeof(__dst));
    if (!*(__dst[10] + 16))
    {
      v4 = sub_1B2138500();
      type metadata accessor for StatementArgumentsSink();
      sub_1B2111758();

      v5 = sub_1B2114D98(0);
      type metadata accessor for SQLGenerationContext();
      v6 = sub_1B211AD64();

      v8 = sub_1B2117164(v7, v5, v4);
      sub_1B21225BC();
      sub_1B21397D0(v9);
      if (v6)
      {

LABEL_8:
        sub_1B21223F4();
        sub_1B2112FDC();
        return;
      }

      v62 = v10;
      v63 = v11;
      v12 = sub_1B213ACD0(v8, __dst[0], __dst[1], __dst[2]);
      strcpy(__src, "DELETE FROM ");
      BYTE13(__src[0]) = 0;
      HIWORD(__src[0]) = -5120;
      MEMORY[0x1B2741EB0](v12);

      MEMORY[0x1B2741EB0](*&__src[0], *(&__src[0] + 1));

      if (__dst[6])
      {
        v13 = sub_1B21223F4();
        v14(v13);
        memcpy(v59, __src, 0xA3uLL);
        v15 = sub_1B2115828();
        MEMORY[0x1B2741EB0](v15, 0xE700000000000000);
        memcpy(v58, v59, 0xA3uLL);
        v16 = sub_1B21181C0();
        MEMORY[0x1B2741EB0](v16);

        sub_1B21356F8(v59);
      }

      if ((__dst[18] & 0x100) == 0)
      {
        v17 = __dst[16];
        v18 = __dst[17];
        v19 = __dst[18];
        sub_1B213D4F4();
        sub_1B2117EEC(v20, v21, v22, v23, v24, v25, v26, v27, v47, v48, v49, v51, v52, v54, v56, v58[0], v58[1], v58[2], v58[3], v58[4]);
        v29 = v28;

        if (*(v29 + 16))
        {
          v53 = v18;
          sub_1B211551C();
          sub_1B2113134();
          v30 = *(v29 + 16);
          if (v30)
          {
            v61 = MEMORY[0x1E69E7CC0];
            sub_1B2111CD4();
            sub_1B2116B10();
            v31 = 0;
            v32 = v61;
            v55 = v30 - 1;
            v57 = v29;
            v33 = 32;
            v50 = v19;
            while (1)
            {
              v65 = v31;
              if (v31 >= *(v29 + 16))
              {
                break;
              }

              memcpy(__src, (v29 + v33), 0xA3uLL);
              memcpy(v59, (v29 + v33), 0xA3uLL);
              sub_1B214D958(__src, v58);
              v34 = sub_1B214DCE8(v8);
              v36 = v35;
              sub_1B214DC54(__src);
              v61 = v32;
              v38 = *(v32 + 16);
              v37 = *(v32 + 24);
              v39 = v32;
              if (v38 >= v37 >> 1)
              {
                sub_1B211156C(v37);
                sub_1B2114574();
                sub_1B2116B10();
                v39 = v61;
              }

              *(v39 + 16) = v38 + 1;
              v40 = v39 + 16 * v38;
              *(v40 + 32) = v34;
              *(v40 + 40) = v36;
              v32 = v39;
              if (v55 == v65)
              {

                v19 = v50;
                goto LABEL_23;
              }

              v33 += 168;
              v31 = v65 + 1;
              v29 = v57;
            }

            __break(1u);
            goto LABEL_27;
          }

          v32 = MEMORY[0x1E69E7CC0];
LABEL_23:
          *&__src[0] = v32;
          v41 = sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B21179D8(qword_1ED85E790);
          sub_1B21164C8();
          sub_1B2252250();
          sub_1B21159FC();

          MEMORY[0x1B2741EB0](&qword_1B2254340, v41);

          v18 = v53;
        }

        else
        {
        }

        sub_1B2154370(v17, v18, v19 & 1);
        sub_1B21149C8();
        *&__src[0] = v42;
        *(&__src[0] + 1) = v43;
        MEMORY[0x1B2741EB0]();

        MEMORY[0x1B2741EB0](*&__src[0], *(&__src[0] + 1));
      }

      sub_1B2111CD4();
      sub_1B212641C(v44, v45, v46);

      sub_1B211B048(__src);
      v59[0] = __src[0];
      Statement.arguments.setter(v59);

      goto LABEL_8;
    }

LABEL_7:
    sub_1B21225BC();
    sub_1B224F63C();
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    goto LABEL_7;
  }

LABEL_27:
  sub_1B2118614();
  __break(1u);
}

uint64_t sub_1B214BBD0(uint64_t a1)
{
  v3 = v1[12];
  if (!v3)
  {
    return 0;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[13];
  result = v3(__dst);
  if (v2)
  {
    return result;
  }

  v10 = __dst[0];
  v11 = *(__dst[0] + 16);
  if (!v11)
  {

    return 0;
  }

  v12._countAndFlagsBits = v5;
  v12._object = v6;
  result = Database.tableExists(_:)(v12);
  if (v13)
  {
  }

  if (result)
  {
    v18 = v5;
    v14 = 0;
    v22 = MEMORY[0x1E69E7CD0];
    v15 = 32;
    while (v11 != v14)
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      memcpy(__dst, (v10 + v15), 0xA3uLL);
      memcpy(v20, (v10 + v15), 0xA3uLL);
      sub_1B2127DC0(__dst, v19);
      sub_1B213F348(a1, v7, 1);
      if (!v16)
      {

        sub_1B21356F8(__dst);
        goto LABEL_19;
      }

      sub_1B2139304();
      sub_1B21356F8(__dst);

      v15 += 168;
      ++v14;
    }

    v17 = sub_1B213FF40(v18, v6, v22);

    if (v17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
LABEL_19:

    return 2;
  }
}

void sub_1B214BDE0()
{
  sub_1B2122150();
  sub_1B211D530();
  sub_1B2117330();
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = sub_1B2116B08(v3);

  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4 == v5)
    {
LABEL_10:

      sub_1B2114274();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B27427E0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      sub_1B2117C0C(v3 + 8 * v5);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v7 = sub_1B217605C(v2, v0, 0, 1);

    v5 = v6 + 1;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t SelectionRequest.select(_:)()
{
  sub_1B2123510();
  sub_1B2112174();
  sub_1B2115660();
  v1 = swift_allocObject();
  sub_1B211AE34(v1);
  v2 = *(v0 + 8);

  v3 = sub_1B211623C();
  v2(v3);
  sub_1B2115ED4();
}

uint64_t sub_1B214BF4C()
{
  v1 = *(v0 + 16);

  sub_1B2115660();

  return swift_deallocObject();
}

uint64_t sub_1B214BF9C(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A10F0, &qword_1B225D320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B214C008(char *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0xA2uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v12 = *__src;
  v13 = *(__src + 2);
  memcpy(__srca, __src + 40, sizeof(__srca));
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B214D338;
  *(v7 + 24) = v6;

  sub_1B2136148(__dst, v14);

  memcpy(v14, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v14, InterfaceRequest);
  *__src = v12;
  *(__src + 2) = v13;
  *(__src + 3) = sub_1B2139E34;
  *(__src + 4) = v7;
  return memcpy(__src + 40, __srca, 0x7AuLL);
}

uint64_t sub_1B214C180()
{
  v1 = *(v0 + 24);

  sub_1B2111904();

  return swift_deallocObject();
}

void *SQLSubqueryable.contains(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(a3 + 16))(v10, a2, a3);
  sub_1B214C43C(v10);
  memcpy(__dst, v10, sizeof(__dst));
  v6 = a1[3];
  v7 = a1[4];
  sub_1B21139A0(a1, v6);
  (*(v7 + 8))(__src, v6, v7);
  v8 = swift_allocObject();
  memcpy(v8 + 16, __src, 0xA3uLL);
  memcpy(v8 + 184, __dst, 0xA2uLL);
  v8[346] = 0;
  v13[0] = v8;
  sub_1B214C468(v13);
  return memcpy(a4, v13, 0xA3uLL);
}

uint64_t sub_1B214C2D8()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));
  sub_1B214DF8C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344));

  return swift_deallocObject();
}

uint64_t QueryInterfaceRequest.sqlSubquery.getter@<X0>(void *a1@<X8>)
{
  sub_1B2114F78();
  memcpy(v2, v3, v4);
  sub_1B2114F78();
  memcpy(v5, v6, v7);
  sub_1B214C410(__src);
  memcpy(a1, __src, 0xA2uLL);
  return sub_1B2136148(v10, &v9);
}

uint64_t sub_1B214C410(uint64_t result)
{
  v1 = *(result + 160);
  v2 = *(result + 104) & 1;
  *(result + 64) &= 1uLL;
  *(result + 104) = v2;
  *(result + 160) = v1 & 0x1FF | 0x8000;
  return result;
}

uint64_t sub_1B214C43C(uint64_t result)
{
  v1 = *(result + 104) & 1;
  v2 = *(result + 160) & 0x81FF | 0x2000;
  *(result + 64) &= 1uLL;
  *(result + 104) = v1;
  *(result + 160) = v2;
  return result;
}

uint64_t sub_1B214C468(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x580000u) >> 16;
  return result;
}

uint64_t sub_1B214C4AC()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1B2115660();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = *(v3 + 8);

  v9(v1, v8, v5, v3);
  sub_1B2111588();
}

uint64_t OrderedRequest.order(_:)()
{
  return sub_1B214C4AC();
}

{
  return sub_1B214C4AC();
}

void *sub_1B214C584(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_1B214C6B4(sub_1B214D66C, v6, __srca);

  memcpy(v11, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v11, InterfaceRequest);
  return memcpy(__src, __srca, 0xA2uLL);
}

void *sub_1B214C6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 48);
  v15 = *(v4 + 56);
  v16 = *(v4 + 64);
  v9 = *(v4 + 16);
  v18 = *v4;
  v19 = v9;
  v20 = *(v4 + 32);
  v21 = v8;
  memcpy(__dst, (v4 + 65), sizeof(__dst));
  sub_1B21619D8(&qword_1EB7A0EB0, &unk_1B225BB30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  sub_1B2111904();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v10 + 32) = sub_1B214D4F8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  sub_1B2136148(v4, &v14);

  sub_1B214C808(&v15);
  v12 = v19;
  *a3 = v18;
  *(a3 + 16) = v12;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  *(a3 + 56) = v10;
  *(a3 + 64) = 0;
  return memcpy((a3 + 65), __dst, 0x61uLL);
}

uint64_t sub_1B214C7D0()
{
  v1 = *(v0 + 24);

  sub_1B2111904();

  return swift_deallocObject();
}

void *FetchRequest<>.fetchCursor(_:)()
{
  sub_1B211543C();
  sub_1B21130B8();
  v0 = sub_1B2115A3C();
  return static FetchableRecord.fetchCursor<A>(_:_:)(v0, v1, v2, v3, v4, v5);
}

void *static FetchableRecord.fetchCursor<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 32))(v21, a1, 0, a4, a6);
  if (v6)
  {
    return a2;
  }

  if (!v21[6])
  {
    v16 = sub_1B2117FCC(result, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21[0]);
    static FetchableRecord.fetchCursor(_:arguments:adapter:)(v16, v17, v18);
    sub_1B212D124();
    sub_1B2142D18(v21);
    return a2;
  }

  __break(1u);
  return result;
}

void sub_1B214C924()
{
  v1 = *v0;
  sub_1B2114DE0();
  *v0 = v2;
}

uint64_t sub_1B214C970(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_1B214C980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B2114F78();
  memcpy(v4, v5, v6);
  sub_1B2114F78();
  memcpy(v7, v8, v9);
  v10 = sub_1B214CB20(v23);
  v11 = sub_1B214CB10(v23);
  if (v10)
  {
    memcpy(a2, v22, 0xA2uLL);
    return sub_1B214CB2C(v22, __src);
  }

  else
  {
    v12 = *v11;
    v13 = *(*v11 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v21 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v14 = v21;
      v15 = (v12 + 32);
      do
      {
        memcpy(__dst, v15, 0xA3uLL);
        memcpy(v18, v15, sizeof(v18));
        sub_1B2127DC0(__dst, __src);
        sub_1B213BBD8(a1);
        sub_1B21356F8(__dst);
        v21 = v14;
        v16 = *(v14 + 16);
        if (v16 >= *(v14 + 24) >> 1)
        {
          sub_1B213CA68();
          v14 = v21;
        }

        *(v14 + 16) = v16 + 1;
        memcpy((v14 + 168 * v16 + 32), __src, 0xA3uLL);
        v15 += 168;
        --v13;
      }

      while (v13);
    }

    __src[0] = v14;
    sub_1B21513E8(__src);
    return memcpy(a2, __src, 0xA2uLL);
  }
}

void sub_1B214CB88()
{

  sub_1B2116B10();
}

void *sub_1B214CBA8(void *a1)
{

  return memcpy(a1, (v1 + 16), 0xB8uLL);
}

uint64_t sub_1B214CBC0(uint64_t a1, uint64_t a2)
{

  return sub_1B21117B4(v2, a2, 1, v3);
}

void sub_1B214CBDC()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B214CBF8()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_1B214CC10()
{

  return sub_1B2252E70();
}

void *sub_1B214CC30(void *a1)
{

  return memcpy(a1, &STACK[0x4B8], 0xA3uLL);
}

uint64_t sub_1B214CC54()
{
}

void sub_1B214CC70(uint64_t a1)
{
  v2 = v1;
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  sub_1B2114F78();
  memcpy(v6, v7, v8);
  v9 = sub_1B214CB20(v39);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = sub_1B214CB10(v39);
      memcpy(__dst, v10, 0xA2uLL);
      memcpy(v36, __src, 0xA2uLL);
      v11 = sub_1B214CB10(v36);
      sub_1B214CFE0(v11, v34);
      v12 = sub_1B214D03C(a1);
      if (!v1)
      {
        __dst[0] = 40;
        __dst[1] = 0xE100000000000000;
        MEMORY[0x1B2741EB0](v12);

        MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      }
    }

    else
    {
      v26 = sub_1B214CB10(v39);
      v27 = *v26;
      v28 = v26[1];
      __dst[0] = 34;
      __dst[1] = 0xE100000000000000;
      sub_1B21A33A0(__src, v36);
      MEMORY[0x1B2741EB0](v27, v28);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    }

    sub_1B214D4C8(__src);
  }

  else
  {
    v13 = sub_1B214CB10(v39);
    v14 = *v13;
    v15 = *(*v13 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      memcpy(v37, __src, 0xA2uLL);
      v17 = *sub_1B214CB10(v37);
      v40 = v16;

      sub_1B2116B10();
      v18 = 0;
      v16 = v40;
      v19 = (v14 + 32);
      v32 = v15 - 1;
      while (v18 < *(v14 + 16))
      {
        memcpy(v36, v19, 0xA3uLL);
        memcpy(__dst, v19, 0xA3uLL);
        sub_1B2127DC0(v36, v34);
        v20 = sub_1B2127E58(a1, 0);
        if (v2)
        {
          sub_1B214D4C8(__src);
          sub_1B21356F8(v36);

          return;
        }

        v22 = v20;
        v23 = v21;
        sub_1B21356F8(v36);
        v40 = v16;
        v24 = *(v16 + 16);
        if (v24 >= *(v16 + 24) >> 1)
        {
          sub_1B2116B10();
          v16 = v40;
        }

        *(v16 + 16) = v24 + 1;
        v25 = v16 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        if (v32 == v18)
        {
          sub_1B214D4C8(__src);
          goto LABEL_17;
        }

        v19 += 168;
        ++v18;
        v2 = 0;
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      v36[0] = v16;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v29 = sub_1B2252250();
      v31 = v30;

      v36[0] = 40;
      v36[1] = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v29, v31);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    }
  }
}

uint64_t sub_1B214D03C(uint64_t a1)
{
  sub_1B2114F78();
  memcpy(v2, v3, v4);
  sub_1B2114F78();
  memcpy(v5, v6, v7);
  if (sub_1B214D180(v47) == 1)
  {
    v8 = sub_1B21197F4(v47);
    memcpy(__dst, v8, 0xA2uLL);
    sub_1B211589C(v42);
    v9 = sub_1B21197F4(v42);
    sub_1B214D18C(v46, &v22);
    sub_1B2136148(v9, &v22);
    sub_1B21366E4(__dst, &v22);
    sub_1B2137278();
    sub_1B2115268(v10, v11, v12, v13, v14, v15, v16, v17, v22.n128_i64[0], v22.n128_i64[1], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], v42[12], v42[13], v42[14], v42[15], v42[16], v42[17], v42[18], v42[19], v42[20], v43[0]);
    v43[168] = 0;
    v44 = __dst;
    sub_1B21376C4();
    v19 = v18;
    sub_1B2142BCC(v43);
  }

  else
  {
    v42[0] = *sub_1B21197F4(v47);
    sub_1B211589C(&v22);
    v20 = *sub_1B21197F4(&v22);

    v19 = sub_1B2119120(a1);
  }

  sub_1B214D498(v46);
  return v19;
}

uint64_t sub_1B214D1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B213A1C8();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B214D38C(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B213A1C8();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 184 * v11 + 32), __src, 0xB8uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B214D38C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_1B2111808(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1B214D3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  sub_1B2134F5C(v5);
  memcpy(__dst, v5, 0xA3uLL);
  sub_1B214D464(__dst);
  memcpy(a3, __dst, 0xB8uLL);
}

void *sub_1B214D464(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xF981FFLL | 0x2000000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

uint64_t sub_1B214D510(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B214D708();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B214D38C(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B214D708();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 168 * v11 + 32), __src, 0xA3uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *sub_1B214D688@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, void *(*a4)(uint64_t *__return_ptr)@<X3>, void *a5@<X8>)
{
  result = sub_1B2139E68(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B214D6B4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1B214D708()
{
  v1 = *v0;
  sub_1B213C9B8();
  *v0 = v2;
}

uint64_t sub_1B214D754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  sub_1B2134F5C(v5);
  memcpy(__dst, v5, 0xA3uLL);
  sub_1B214D7CC(__dst);
  memcpy(a3, __dst, 0xA3uLL);
}

uint64_t sub_1B214D7CC(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t *sub_1B214D80C@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B214D708();
    v6 = v13;
    v8 = (v4 + 32);
    do
    {
      memcpy(__dst, v8, 0xA3uLL);
      memcpy(v10, v8, sizeof(v10));
      sub_1B214D958(__dst, __src);
      sub_1B214D9C8(a2, __src);
      sub_1B214DC54(__dst);
      v13 = v6;
      v9 = *(v6 + 16);
      if (v9 >= *(v6 + 24) >> 1)
      {
        sub_1B214D708();
        v6 = v13;
      }

      *(v6 + 16) = v9 + 1;
      result = memcpy((v6 + 168 * v9 + 32), __src, 0xA3uLL);
      v8 += 168;
      --v5;
    }

    while (v5);
  }

  *a3 = v6;
  return result;
}

void *sub_1B214D9C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1B2111ADC();
  memcpy(v4, v5, v6);
  sub_1B2111ADC();
  memcpy(v7, v8, v9);
  switch(sub_1B214DC10(v210))
  {
    case 1u:
      v122 = sub_1B213D4C8(v210);
      sub_1B2116868(v122, v123, v124, v125, v126, v127, v128, v129, v155, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B2112E28();
      memcpy(v130, v131, v132);
      v133 = sub_1B213D4C8(&v166);
      v134 = sub_1B2127DC0(v133, &v187);
      sub_1B21153C8(v134, v135, v136, v137, v138, v139, v140, v141, v164, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
      v142 = sub_1B214DC24(v209);
      sub_1B2115A08(v142, v143, v144, v145, v146, v147, v148, v149, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B21C7F70(__src);
      break;
    case 2u:
      v66 = sub_1B213D4C8(v210);
      sub_1B2116868(v66, v67, v68, v69, v70, v71, v72, v73, v155, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B2112E28();
      memcpy(v74, v75, v76);
      v77 = sub_1B213D4C8(&v166);
      v78 = sub_1B2127DC0(v77, &v187);
      sub_1B21153C8(v78, v79, v80, v81, v82, v83, v84, v85, v160, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
      v86 = sub_1B214DC24(v209);
      sub_1B2115A08(v86, v87, v88, v89, v90, v91, v92, v93, v161, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B21C7FB4(__src);
      break;
    case 3u:
      v94 = sub_1B213D4C8(v210);
      sub_1B2116868(v94, v95, v96, v97, v98, v99, v100, v101, v155, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B2112E28();
      memcpy(v102, v103, v104);
      v105 = sub_1B213D4C8(&v166);
      v106 = sub_1B2127DC0(v105, &v187);
      sub_1B21153C8(v106, v107, v108, v109, v110, v111, v112, v113, v162, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
      v114 = sub_1B214DC24(v209);
      sub_1B2115A08(v114, v115, v116, v117, v118, v119, v120, v121, v163, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B21C7E84(__src);
      break;
    case 4u:
      v38 = sub_1B213D4C8(v210);
      sub_1B2116868(v38, v39, v40, v41, v42, v43, v44, v45, v155, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B2112E28();
      memcpy(v46, v47, v48);
      v49 = sub_1B213D4C8(&v166);
      v50 = sub_1B2127DC0(v49, &v187);
      sub_1B21153C8(v50, v51, v52, v53, v54, v55, v56, v57, v158, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
      v58 = sub_1B214DC24(v209);
      sub_1B2115A08(v58, v59, v60, v61, v62, v63, v64, v65, v159, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B21C7F2C(__src);
      break;
    case 5u:
      *__src = *sub_1B213D4C8(v210);
      sub_1B2112E28();
      memcpy(v150, v151, v152);
      v153 = *sub_1B213D4C8(&v187);

      sub_1B2153E58(a1, &v166);
      sub_1B214DC24(v209);
      *__src = v166;
      sub_1B221BBD0(__src);
      break;
    default:
      v10 = sub_1B213D4C8(v210);
      sub_1B2116868(v10, v11, v12, v13, v14, v15, v16, v17, v155, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B2112E28();
      memcpy(v18, v19, v20);
      v21 = sub_1B213D4C8(&v166);
      v22 = sub_1B2127DC0(v21, &v187);
      sub_1B21153C8(v22, v23, v24, v25, v26, v27, v28, v29, v156, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
      v30 = sub_1B214DC24(v209);
      sub_1B2115A08(v30, v31, v32, v33, v34, v35, v36, v37, v157, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, __src[0]);
      sub_1B214D7CC(__src);
      break;
  }

  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t sub_1B214DCD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_1B214DCE8(uint64_t a1)
{
  sub_1B2111ADC();
  memcpy(v4, v5, v6);
  sub_1B2111ADC();
  memcpy(v7, v8, v9);
  switch(sub_1B214DC10(v105))
  {
    case 1u:
      v63 = sub_1B213D4C8(v105);
      sub_1B21163DC(v63, v64, v65, v66, v67, v68, v69, v70, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102[0]);
      sub_1B2112E28();
      memcpy(v71, v72, v73);
      v74 = sub_1B213D4C8(v103);
      sub_1B2127DC0(v74, &v81);
      sub_1B21178AC();
      if (v2)
      {
        goto LABEL_14;
      }

      sub_1B2118558();
      v38 = 1129529632;
      v37 = 0xE400000000000000;
      goto LABEL_11;
    case 2u:
      v39 = sub_1B213D4C8(v105);
      sub_1B21163DC(v39, v40, v41, v42, v43, v44, v45, v46, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102[0]);
      sub_1B2112E28();
      memcpy(v47, v48, v49);
      v50 = sub_1B213D4C8(v103);
      sub_1B2127DC0(v50, &v81);
      sub_1B21178AC();
      if (v2)
      {
        goto LABEL_14;
      }

      sub_1B2118558();
      v38 = 0x4353454420;
      v37 = 0xE500000000000000;
      goto LABEL_11;
    case 3u:
      v51 = sub_1B213D4C8(v105);
      sub_1B21163DC(v51, v52, v53, v54, v55, v56, v57, v58, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102[0]);
      sub_1B2112E28();
      memcpy(v59, v60, v61);
      v62 = sub_1B213D4C8(v103);
      sub_1B2127DC0(v62, &v81);
      sub_1B21178AC();
      if (v2)
      {
        goto LABEL_14;
      }

      sub_1B2118558();
      v38 = 0x4C554E2043534120;
      v37 = 0xEF5453414C20534CLL;
      goto LABEL_11;
    case 4u:
      v23 = sub_1B213D4C8(v105);
      sub_1B21163DC(v23, v24, v25, v26, v27, v28, v29, v30, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102[0]);
      sub_1B2112E28();
      memcpy(v31, v32, v33);
      v34 = sub_1B213D4C8(v103);
      sub_1B2127DC0(v34, &v81);
      v35 = sub_1B21178AC();
      if (v2)
      {
        goto LABEL_14;
      }

      v102[0] = v35;
      v102[1] = v36;

      v37 = 0x80000001B2270290;
      v38 = 0xD000000000000011;
LABEL_11:
      MEMORY[0x1B2741EB0](v38, v37);

      sub_1B214DC24(v104);
      v1 = v102[0];
      break;
    case 5u:
      v102[0] = *sub_1B213D4C8(v105);
      sub_1B2112E28();
      memcpy(v75, v76, v77);
      v78 = *sub_1B213D4C8(v103);

      v1 = v102;
      v22 = sub_1B2119120(a1);
      goto LABEL_13;
    default:
      v10 = sub_1B213D4C8(v105);
      sub_1B21163DC(v10, v11, v12, v13, v14, v15, v16, v17, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102[0]);
      sub_1B2112E28();
      memcpy(v18, v19, v20);
      v21 = sub_1B213D4C8(v103);
      sub_1B2127DC0(v21, &v81);
      v22 = sub_1B21178AC();
LABEL_13:
      if (v2)
      {
LABEL_14:
        sub_1B214DC24(v104);
      }

      else
      {
        v1 = v22;
        sub_1B214DC24(v104);
      }

      break;
  }

  return v1;
}

uint64_t sub_1B214DF8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int16 a21)
{
  switch((a21 >> 13) & 3)
  {
    case 1uLL:

      result = sub_1B214E054(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21 & 0x9FFF);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1B214E054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21)
{
  if (a21 < 0)
  {

    sub_1B2112F4C(a6);

    sub_1B2112F4C(a15);

    return sub_1B2112F4C(a17);
  }

  else
  {
  }
}

uint64_t == infix(_:_:)(void *a1, char a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (a2)
  {
    sub_1B21139A0(a1, a1[3]);
    sub_1B2115328();
    v4(v3);
    sub_1B2113BD0();
    v6 = 0;
  }

  else
  {
    sub_1B21139A0(a1, a1[3]);
    sub_1B2115328();
    v7(v3);
    sub_1B2113BD0();
    v6 = 1;
  }

  sub_1B214E21C(v6, v5);
  sub_1B213CBB8(v17, v8, v9, v10, v11, v12, v13, v14, v16);
  return sub_1B21356F8(v17);
}

void *sub_1B214E21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2111ADC();
  memcpy(v5, v6, v7);
  sub_1B2111ADC();
  memcpy(v8, v9, v10);
  switch(sub_1B2127E1C(v90))
  {
    case 2u:
      v11 = sub_1B2127E38(v90);
      v12 = *v11;
      if (*(v11 + 16))
      {
        if (*(v11 + 16) != 4 || *v11 != 0)
        {
          goto LABEL_16;
        }

        v88[1] = 0;
        v88[0] = 0;
        LOBYTE(v88[2]) = 4;
      }

      else
      {
        if (v12 > 1)
        {
          goto LABEL_16;
        }

        if (a1)
        {
          v72 = v12 ^ 1;
        }

        else
        {
          v72 = v12 == 1;
        }

        v88[0] = v72;
        v88[1] = 0;
        LOBYTE(v88[2]) = 0;
      }

      v81 = sub_1B2127D7C(v88);
      return sub_1B211A2B4(v81, v88);
    case 6u:
      v25 = sub_1B2113984();
      if (v21)
      {
        goto LABEL_29;
      }

      if (v26 == 1)
      {
        goto LABEL_28;
      }

      v27 = *(*v25 + 515);
      sub_1B211D694();
      memcpy(v28, v29, v30);
      sub_1B21D09A0();
      memcpy(v31, v32, v33);
      sub_1B2142348();
      memcpy(v34, v35, v36);
      sub_1B21262D8();
      return sub_1B21CF574(v37 & ~v27, a2);
    case 8u:
      v13 = sub_1B2127E38(v90);
      v14 = *v13;
      v16 = *(*v13 + 16);
      v15 = *(*v13 + 24);
      v18 = *(*v13 + 32);
      v17 = *(*v13 + 40);
      memcpy(__dst, (*v13 + 48), 0xA3uLL);
      memcpy(v87, (v14 + 216), 0xA3uLL);
      memcpy(v88, (v14 + 384), 0xA3uLL);
      if (!a1)
      {
        sub_1B213532C(v83);
        *v84 = xmmword_1B2259350;
        goto LABEL_37;
      }

      if (a1 == 1)
      {
        sub_1B213532C(v83);
        *v84 = 0uLL;
LABEL_37:
        v84[16] = 0;
        sub_1B2127D7C(v84);
        v71 = memcpy(v82, v84, sizeof(v82));
        sub_1B21352D4(v71, v83);
        memcpy(__src, v82, 0xA3uLL);
        v60 = __src;
        return sub_1B21356F8(v60);
      }

      v73 = swift_allocObject();
      v73[2] = v18;
      v73[3] = v17;
      v73[4] = v16;
      v73[5] = v15;
      memcpy(v73 + 6, __dst, 0xA3uLL);
      sub_1B212B4CC(v73 + 27);
      sub_1B2126034(v73 + 48);
      __src[0] = v73;
      v74 = sub_1B21D0530(__src);
      sub_1B211A2B4(v74, __src);

      sub_1B2127DC0(__dst, v84);
      sub_1B2127DC0(v87, v84);
      return sub_1B2122B00(v88, v84, &qword_1EB7A1CD0, &unk_1B225D310);
    case 0xAu:
      v48 = sub_1B2113984();
      if (v21)
      {
        goto LABEL_29;
      }

      if (v49 == 1)
      {
        goto LABEL_28;
      }

      v50 = (v48[162] & 1) == 0;
      memmove(v88, v48, 0xA2uLL);
      BYTE2(v88[20]) = v50;
      v40 = sub_1B21D04EC(v88);
      goto LABEL_46;
    case 0xBu:
      sub_1B2149808();
      sub_1B211D694();
      memcpy(v51, v52, v53);
      sub_1B2114090();
      memcpy(v54, v55, v56);
      if (!a1)
      {
        sub_1B213532C(__src);
        __dst[0] = xmmword_1B2259350;
        goto LABEL_43;
      }

      if (a1 == 1)
      {
        sub_1B213532C(__src);
        __dst[0] = 0uLL;
LABEL_43:
        LOBYTE(__dst[1]) = 0;
        sub_1B2127D7C(__dst);
        v75 = memcpy(v84, __dst, sizeof(v84));
        sub_1B21352D4(v75, __src);
        memcpy(v87, v84, 0xA3uLL);
        v60 = v87;
        return sub_1B21356F8(v60);
      }

      v76 = *(v2 + 346);
      sub_1B21D0994();
      v77 = swift_allocObject();
      v78 = sub_1B211E4F4(v77);
      sub_1B2126034(v78);
      memcpy((v2 + 184), v83, 0xA2uLL);
      *(v2 + 346) = (v76 & 1) == 0;
      *v87 = v2;
      v79 = sub_1B214C468(v87);
      sub_1B211A2B4(v79, v87);
      sub_1B2127DC0(v88, __dst);
      return sub_1B214CB2C(v83, __dst);
    case 0xDu:
      v19 = sub_1B2113984();
      if (v21)
      {
        goto LABEL_29;
      }

      if (v20 == 1)
      {
        goto LABEL_28;
      }

      v22 = *v19;
      v23 = 0x2030001u >> (8 * *(*v19 + 16));
      memcpy(v88, (*v19 + 24), 0xA3uLL);
      memcpy(v87, (v22 + 192), 0xA3uLL);
      return sub_1B21353B0(v23, v88, a2);
    case 0xFu:
      sub_1B2127E38(v90);
      goto LABEL_16;
    case 0x10u:
      sub_1B2149808();
      sub_1B211D694();
      memcpy(v41, v42, v43);
      v44 = *(v2 + 184);
      v45 = *(v2 + 192);
      sub_1B214E21C(v87, a1);
      *&__dst[0] = v44;
      *(&__dst[0] + 1) = v45;
      sub_1B21CF728(__dst, a2);
      v46 = sub_1B21262D8();
      goto LABEL_31;
    case 0x12u:
      sub_1B2149808();
      sub_1B211D694();
      v40 = memcpy(v61, v62, v63);
      if (a1)
      {
        v64 = *(v2 + 179);
        v65 = swift_allocObject();
        v66 = sub_1B211E4F4(v65);
        sub_1B2126034(v66);
        *(v2 + 179) = (v64 & 1) == 0;
        *v87 = v2;
        v67 = sub_1B21D04A8(v87);
        sub_1B211A2B4(v67, v87);
        v68 = v88;
        v69 = __dst;
        return sub_1B2127DC0(v68, v69);
      }

      v70 = &v89;
      goto LABEL_47;
    case 0x14u:
      v57 = sub_1B2113984();
      if (v21)
      {
        goto LABEL_29;
      }

      if (v58 == 1)
      {
        goto LABEL_28;
      }

      v80 = *(v57 + 8);
      v88[0] = *v57;
      LOBYTE(v88[1]) = (v80 & 1) == 0;
      v40 = sub_1B21D041C(v88);
      goto LABEL_46;
    default:
LABEL_16:
      if (!a1)
      {
LABEL_29:
        sub_1B213532C(__dst);
        *v87 = xmmword_1B2259350;
        goto LABEL_30;
      }

      if (a1 == 1)
      {
LABEL_28:
        sub_1B213532C(__dst);
        *&v87[8] = 0;
        *v87 = 0;
LABEL_30:
        v87[16] = 0;
        sub_1B2127D7C(v87);
        v59 = sub_1B212B4CC(__src);
        sub_1B21352D4(v59, __dst);
        v46 = v88;
        v47 = __src;
LABEL_31:
        memcpy(v46, v47, 0xA3uLL);
        v60 = v88;
        return sub_1B21356F8(v60);
      }

      v38 = swift_allocObject();
      v39 = sub_1B211E4F4(v38);
      sub_1B213532C(v39);
      v88[0] = v2;
      v40 = sub_1B21D03D8(v88);
LABEL_46:
      v70 = v88;
LABEL_47:
      sub_1B211A2B4(v40, v70);
      v68 = sub_1B212D864();
      return sub_1B2127DC0(v68, v69);
  }
}

__int128 *FetchRequest<>.fetchAll(_:)()
{
  sub_1B211543C();
  sub_1B21130B8();
  v0 = sub_1B2115A3C();
  return static FetchableRecord.fetchAll<A>(_:_:)(v0, v1, v2, v3, v4, v5);
}

__int128 *static FetchableRecord.fetchAll<A>(_:_:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 32))(&v31, a1, 0, a4, a6);
  if (!v6)
  {
    if (v33)
    {
      v34 = v33;
      type metadata accessor for Row();
      v17 = v31;
      v30 = 0uLL;

      v18 = static Row.fetchAll(_:arguments:adapter:)(v17, &v30, v32);
      v19 = a1;
      v20 = v18;
      v21 = v34(v19);
      v29[0] = v20;
      v29[1] = v29;
      *&v30 = v20;
      MEMORY[0x1EEE9AC00](v21);
      v28[2] = a3;
      v28[3] = a4;
      v28[4] = a5;
      v28[5] = a6;
      v28[6] = a3;
      v22 = sub_1B21619D8(&qword_1EB7A11A8, &qword_1B22549B8);
      sub_1B211AE9C();
      v25 = sub_1B211AB74(v23, v24, &qword_1B22549B8);
      a2 = &v30;
      sub_1B221B368(sub_1B2225FE8, v28, v22, a3, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
      sub_1B212D124();
      v27 = sub_1B2112F9C();
      sub_1B2112F4C(v27);
      sub_1B2142D18(&v31);
    }

    else
    {
      v30 = 0uLL;
      static FetchableRecord.fetchAll(_:arguments:adapter:)(v31, &v30, v32, a3, a5, v13, v14, v15);
      sub_1B212D124();
      sub_1B2142D18(&v31);
    }
  }

  return a2;
}

uint64_t sub_1B214EAFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v7[0] = swift_allocObject();
  a3(a1, a2);
  ! prefix(_:)(v7);
  return sub_1B2113208(v7);
}

uint64_t sub_1B214EB88()
{
  v1 = v0[10].n128_u64[0];
  v2 = v0[10].n128_u64[1];
  sub_1B211668C(v0[1].n128_i64[0], v0[1].n128_u64[1], v0[2].n128_i64[0], v0[2].n128_u64[1], v0[3].n128_i64[0], v0[3].n128_i64[1], v0[4].n128_i64[0], v0[4].n128_i64[1], v0[11].n128_u16[0] | (v0[11].n128_u8[2] << 16), v0[5], v0[6], v0[7], v0[8], v0[9]);
  sub_1B2117AD0();

  return swift_deallocObject();
}

uint64_t != infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B214EAFC(a1, a2, == infix(_:_:));
}

{
  return sub_1B214EAFC(a1, a2, == infix(_:_:));
}

{
  return sub_1B214EAFC(a1, a2, == infix(_:_:));
}

uint64_t ! prefix(_:)(void *a1)
{
  v1 = a1[3];
  sub_1B21139A0(a1, v1);
  sub_1B2115328();
  v2(v1);
  sub_1B2113BD0();
  sub_1B214E21C(2, v3);
  sub_1B213CBB8(v13, v4, v5, v6, v7, v8, v9, v10, v12);
  return sub_1B21356F8(v13);
}

void *sub_1B214EC70(void *a1)
{

  return memcpy(a1, (v1 + 2088), 0xA3uLL);
}

_BYTE *storeEnumTagSinglePayload for Database.ConflictResolution(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1B214ED70);
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

void *ColumnExpression.set(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a2;
  v17 = a3;
  sub_1B212FF14(&v15);
  sub_1B2111808(a2);
  (*(v7 + 16))();
  sub_1B211E17C(a1, v12, &qword_1EB7A10F0, &qword_1B225D320);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    sub_1B21139A0(v12, v13);
    (*(v9 + 8))(__dst, v8, v9);
    sub_1B2113208(v12);
  }

  else
  {
    sub_1B2122400(v12, &qword_1EB7A10F0, &qword_1B225D320);
    v11[0] = 0;
    v11[1] = 0;
    LOBYTE(v11[2]) = 4;
    sub_1B2127D7C(v11);
    memcpy(__dst, v11, 0xA3uLL);
  }

  sub_1B21217FC(&v15, a4);
  return memcpy((a4 + 40), __dst, 0xA3uLL);
}

void *sub_1B214EECC(char a1)
{
  *__src = a1 & 1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __src[0]);
}

uint64_t QueryInterfaceRequest.updateAll(_:onConflict:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1B2114F78();
  memcpy(v8, v9, v10);
  if (v7 == 5)
  {
    sub_1B2114F78();
    memcpy(v11, v12, v13);
    sub_1B214F08C(a4, &v27);
    LOBYTE(v7) = v27;
  }

  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808(a4);
  (*(v14 + 16))(v22, __src, a4);
  sub_1B21366E4(__dst, v22);
  sub_1B2137278();
  v16 = v15;
  memcpy(v23, v22, 0xA8uLL);
  v23[168] = 0;
  v24 = v16;
  v22[0] = v7;
  sub_1B214F0F8();
  v18 = v17;
  sub_1B2142BCC(v23);
  if (!v4)
  {
    if (v18)
    {
      *v22 = 0;
      *&v22[8] = 0;
      v19.value.values._rawValue = v22;
      Statement.execute(arguments:)(v19);
      if (!v21)
      {
        a1 = Database.changesCount.getter();
      }
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void *sub_1B214F08C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1B212FED0(*(a1 + 16));
  if (result)
  {
    result = (*(v4 + 24))(&v6);
    v5 = BYTE1(v6);
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

void sub_1B214F0F8()
{
  sub_1B2111640();
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = sub_1B214BBD0(v4);
  if (v1)
  {
    goto LABEL_8;
  }

  if (v8)
  {
    if (v8 != 1)
    {
LABEL_42:
      sub_1B2118614();
      __break(1u);
      JUMPOUT(0x1B214FA98);
    }

LABEL_7:
    LOBYTE(v94) = v7;
    sub_1B224FEF8(v5, &v94, v3);
    goto LABEL_8;
  }

  memcpy(__dst, v0, sizeof(__dst));
  if (*(__dst[10] + 16))
  {
    goto LABEL_7;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_8;
  }

  v81 = *(v3 + 16);
  v9 = sub_1B2138500();
  type metadata accessor for StatementArgumentsSink();
  sub_1B2111758();

  v10 = sub_1B2114D98(0);
  type metadata accessor for SQLGenerationContext();
  sub_1B211AD64();

  v12 = sub_1B2117164(v11, v10, v9);
  sub_1B21397D0(v12);
  v83 = v12;
  v100 = v13;
  v101 = v14;
  MEMORY[0x1B2741EB0](0x20455441445055, 0xE700000000000000);
  switch(v7)
  {
    case 1:
      goto LABEL_18;
    default:
      v15 = 0x54524F4241;
      v16 = sub_1B22531F0();

      if ((v16 & 1) == 0)
      {
        v94 = 2118223;
        v95 = 0xE300000000000000;
        v17 = 0xE500000000000000;
        switch(v7)
        {
          case 0:
            v17 = 0xE800000000000000;
            v15 = 0x4B4341424C4C4F52;
            break;
          case 1:
            break;
          case 2:
            v17 = 0xE400000000000000;
            v15 = 1279869254;
            break;
          case 3:
            v17 = 0xE600000000000000;
            v15 = 0x45524F4E4749;
            break;
          case 4:
            v17 = 0xE700000000000000;
            v15 = 0x4543414C504552;
            break;
          default:
            JUMPOUT(0);
        }

        MEMORY[0x1B2741EB0](v15, v17);

        MEMORY[0x1B2741EB0](32, 0xE100000000000000);
        MEMORY[0x1B2741EB0](v94, v95);
LABEL_18:
      }

      v18 = v12;
      v19 = sub_1B213ACD0(v12, __dst[0], __dst[1], __dst[2]);
      MEMORY[0x1B2741EB0](v19);

      MEMORY[0x1B2741EB0](0x2054455320, 0xE500000000000000);
      v99 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v103 = v99;
      v20 = v3 + 32;
      for (i = v81 - 1; ; --i)
      {
        sub_1B214FAC0(v20, &v94);
        v22 = v96;
        v23 = v97;
        sub_1B21139A0(&v94, v96);
        (*(*(*(v23 + 8) + 8) + 8))(__src, v22);
        v24 = sub_1B2127E58(v18, 0);
        v26 = v25;
        memcpy(v91, __src, 0xA3uLL);
        sub_1B21356F8(v91);
        v90[0] = v24;
        v90[1] = v26;

        MEMORY[0x1B2741EB0](2112800, 0xE300000000000000);

        v27 = v90[0];
        v28 = v90[1];
        memcpy(v92, v98, 0xA3uLL);
        memcpy(v90, v98, 0xA3uLL);
        sub_1B2127DC0(v92, v89);
        v29 = sub_1B2127E58(v18, 0);
        v31 = v30;
        memcpy(v89, v90, 0xA3uLL);
        sub_1B21356F8(v89);
        *&v87[0] = v27;
        *(&v87[0] + 1) = v28;

        MEMORY[0x1B2741EB0](v29, v31);

        v32 = v28;
        sub_1B214FAF8(&v94);
        v33 = v103;
        v99 = v103;
        v35 = *(v103 + 16);
        v34 = *(v103 + 24);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          sub_1B211156C(v34);
          sub_1B2114574();
          sub_1B2116B10();
          v33 = v99;
        }

        *(v33 + 16) = v36;
        v37 = v33 + 16 * v35;
        *(v37 + 32) = v27;
        *(v37 + 40) = v32;
        if (!i)
        {
          break;
        }

        v103 = v33;
        v20 += 208;
        v18 = v83;
      }

      *&v87[0] = v33;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B21179D8(qword_1ED85E790);
      sub_1B21164C8();
      sub_1B2252250();
      sub_1B21159FC();

      MEMORY[0x1B2741EB0](&qword_1B2254340, v36);

      if (__dst[6])
      {
        v38 = sub_1B21223F4();
        v39(v38);
        memcpy(v86, v87, 0xA3uLL);
        v40 = sub_1B2115828();
        MEMORY[0x1B2741EB0](v40, 0xE700000000000000);
        memcpy(v85, v86, 0xA3uLL);
        v41 = sub_1B21181C0();
        MEMORY[0x1B2741EB0](v41);

        sub_1B21356F8(v86);
      }

      if ((__dst[18] & 0x100) != 0)
      {
        goto LABEL_40;
      }

      v79 = __dst[16];
      v42 = __dst[17];
      v43 = __dst[18];
      sub_1B213D4F4();
      sub_1B2117EEC(v44, v45, v46, v47, v48, v49, v50, v51, v71, v72, v73, v75, v77, v78, v79, v81, v83, v85[0], v85[1], v85[2]);
      v53 = v52;

      if (!*(v53 + 16))
      {

        v65 = v80;
        goto LABEL_39;
      }

      v74 = v43;
      v76 = v42;
      sub_1B211551C();
      sub_1B2113134();
      v54 = *(v53 + 16);
      if (!v54)
      {

        v56 = MEMORY[0x1E69E7CC0];
        goto LABEL_38;
      }

      v88 = MEMORY[0x1E69E7CC0];
      sub_1B2111CD4();
      sub_1B2116B10();
      v55 = 0;
      v56 = v88;
      v82 = v54 - 1;
      v57 = 32;
      v104 = v53;
      break;
  }

  while (1)
  {
    if (v55 >= *(v53 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v58 = v55;
    memcpy(v87, (v53 + v57), 0xA3uLL);
    v59 = v57;
    memcpy(v86, (v53 + v57), 0xA3uLL);
    sub_1B214D958(v87, v85);
    v60 = sub_1B214DCE8(v84);
    v54 = v61;
    sub_1B214DC54(v87);
    v88 = v56;
    v62 = *(v56 + 16);
    v63 = *(v56 + 24);
    v53 = v62 + 1;
    if (v62 >= v63 >> 1)
    {
      sub_1B211156C(v63);
      sub_1B2114574();
      sub_1B2116B10();
      v56 = v88;
    }

    *(v56 + 16) = v53;
    v64 = v56 + 16 * v62;
    *(v64 + 32) = v60;
    *(v64 + 40) = v54;
    if (v82 == v58)
    {
      break;
    }

    v57 = v59 + 168;
    v55 = v58 + 1;
    v53 = v104;
  }

LABEL_38:
  *&v87[0] = v56;
  sub_1B21164C8();
  sub_1B2252250();
  sub_1B21159FC();

  MEMORY[0x1B2741EB0](v54, v53);

  v65 = v80;
  v42 = v76;
  v43 = v74;
LABEL_39:
  sub_1B2154370(v65, v42, v43 & 1);
  sub_1B21149C8();
  *&v87[0] = v66;
  *(&v87[0] + 1) = v67;
  MEMORY[0x1B2741EB0]();

  MEMORY[0x1B2741EB0](*&v87[0], *(&v87[0] + 1));

LABEL_40:
  sub_1B2111CD4();
  sub_1B212641C(v68, v69, v70);

  sub_1B211B048(v87);
  v86[0] = v87[0];
  Statement.arguments.setter(v86);

LABEL_8:
  sub_1B21223F4();
  sub_1B2112FDC();
}

void sub_1B214FB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  swift_beginAccess();
  v10 = *(v4 + 32);
  v11 = *(v10 + 16);

  v12 = 0;
  for (i = 56; ; i += 32)
  {
    if (v11 == v12)
    {

      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B22546B0;
      *(inited + 32) = a3;
      *(inited + 40) = a4;

      v18 = sub_1B213285C(inited);
      sub_1B2116618();

      sub_1B214AB94();
      v19 = *(*(v6 + 32) + 16);
      sub_1B214ACA8();
      v20 = *(v6 + 32);
      *(v20 + 16) = v19 + 1;
      v21 = v20 + 32 * v19;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = v18;
      *(v21 + 56) = 2;
      *(v6 + 32) = v20;
      swift_endAccess();
      return;
    }

    if (v12 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = v10 + i;
    if (*(v10 + i) != 2)
    {
      goto LABEL_11;
    }

    v15 = *(v14 - 8);
    if (*(v14 - 24) == a1 && *(v14 - 16) == a2)
    {
      break;
    }

    v5 = sub_1B22531F0();

    if (v5)
    {
      goto LABEL_14;
    }

LABEL_11:
    ++v12;
  }

  v22 = *(v14 - 8);

LABEL_14:

  sub_1B2139304();

  v5 = v15;
  sub_1B2116618();
  v10 = *(v6 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 32) = v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_15;
  }

LABEL_19:
  sub_1B21956FC(v10);
  v10 = v29;
  *(v6 + 32) = v29;
LABEL_15:
  if (v12 >= *(v10 + 16))
  {
    __break(1u);
  }

  else
  {
    v24 = (v10 + i);
    v25 = *(v10 + i - 24);
    v26 = *(v10 + i - 16);
    v27 = *(v10 + i - 8);
    *(v24 - 3) = a1;
    *(v24 - 2) = a2;
    *(v24 - 1) = v5;
    v28 = *(v10 + i);
    *v24 = 2;
    *(v6 + 32) = v10;
    swift_endAccess();
    sub_1B21505F8(v25, v26, v27, v28);
  }
}

uint64_t sub_1B214FDA8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[3] = MEMORY[0x1E69E63B0];
  v12[4] = &protocol witness table for Double;
  *v12 = a2;
  v11[3] = a5;
  v11[4] = a7;
  v9 = sub_1B212FF14(v11);
  (*(*(a5 - 8) + 16))(v9, a1, a5);
  sub_1B21443FC(v12, v11);
  sub_1B2113208(v11);
  return sub_1B212AC5C(v12, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B214FE94(uint64_t a1)
{
  v2 = v1[2];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1B215006C(*v1, v1[1]);
}

void sub_1B214FEBC()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B21114CC())
  {
    MEMORY[0x1EEE9AC00]();
    sub_1B215023C(v3, v1);

    sub_1B2112FDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B214FF78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[3] = MEMORY[0x1E69E6158];
  v6[4] = &protocol witness table for String;
  v6[0] = a1;
  v6[1] = a2;
  sub_1B211EE68(v2 + 24, v5);

  sub_1B21443FC(v6, v5);

  sub_1B2113208(v5);
  return sub_1B212AC5C(v6, &qword_1EB7A0E30, &unk_1B2259360);
}

void sub_1B2150044()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1B214FEBC();
}

uint64_t sub_1B215006C(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) == 0 && *(a1 + 72) > iCol)
  {
    v3 = *(a1 + 64);
    if (!v3)
    {
      return sub_1B212614C();
    }

    if (iCol >> 31)
    {
      __break(1u);
    }

    else
    {
      if (sqlite3_column_type(*(a1 + 64), iCol) == 5)
      {
        v12 = iCol;
        LOBYTE(v13) = 1;

        RowDecodingContext.init(row:key:)(v4, &v12, v16);
        sub_1B21A2FC0();
        swift_allocError();
        v6 = v5;
        v12 = v16[0];
        v13 = v16[1];
        v14 = v16[2];
        v15 = v16[3];
        sub_1B21320F0(v3, iCol, &v10);
        v8 = v10;
        v9 = v11;
        sub_1B2183238(MEMORY[0x1E69E6158], &v12, &v8, v6);
        sub_1B2113A44(v8, *(&v8 + 1), v9);
        sub_1B218450C(v16);
        return swift_willThrow();
      }

      if (sqlite3_column_text(v3, iCol))
      {
        return sub_1B2252400();
      }
    }

    __break(1u);
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B215023C(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 16);
  sub_1B2112E08();
  v7 = *(a1 + 16);
  sub_1B21159D0();

  sub_1B2150300(v8);
  v9 = swift_endAccess();
  a2(v9);
  v10 = *(v3 + 16);
  *(v3 + 16) = v6;
}

uint64_t sub_1B2150300(unint64_t a1)
{
  v3 = sub_1B2116B08(a1);
  v4 = sub_1B2116B08(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B21503AC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B215044C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B21503AC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1B2252C20();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1B2252D10();
  *v1 = result;
  return result;
}

uint64_t sub_1B215044C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B2252C20();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B2116B08(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Database();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B211AB74(&qword_1EB7A1110, &qword_1EB7A1108, &qword_1B2254940);
        for (i = 0; i != v7; ++i)
        {
          sub_1B21619D8(&qword_1EB7A1108, &qword_1B2254940);
          v9 = sub_1B21C2528(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21505F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B2150658()
{
  result = qword_1ED85DE50;
  if (!qword_1ED85DE50)
  {
    sub_1B2161A20(&qword_1EB7A10C0, &unk_1B2257E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DE50);
  }

  return result;
}

uint64_t sub_1B21506CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B2114114();
  if (v2)
  {
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      sub_1B2113A20(v9, v10, *v3);
      swift_getAtKeyPath();
      sub_1B2113A44(v9, v10, v4);
      v5 = v11;
      v6 = *(v13 + 16);
      if (v6 >= *(v13 + 24) >> 1)
      {
        sub_1B2114114();
        v5 = v11;
      }

      v3 += 24;
      *(v13 + 16) = v6 + 1;
      v7 = v13 + 24 * v6;
      *(v7 + 32) = v5;
      *(v7 + 48) = v12;
      --v2;
    }

    while (v2);
  }

  return v13;
}

uint64_t sub_1B2150804(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = MEMORY[0x1E69E6448];
  v14 = &protocol witness table for Float;
  *v12 = a2;
  v11[3] = a5;
  v11[4] = a7;
  v9 = sub_1B212FF14(v11);
  (*(*(a5 - 8) + 16))(v9, a1, a5);
  sub_1B21443FC(v12, v11);
  sub_1B2113208(v11);
  return sub_1B212AC5C(v12, &qword_1EB7A0E30, &unk_1B2259360);
}

double sub_1B21508C8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v6 = *(a1 + a2 - 24);
  v5 = *(v4 - 16);
  v7 = *(v4 - 8);
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8(&v12, AssociatedTypeWitness, v7);
  v10 = v13;
  result = *&v12;
  *a3 = v12;
  *(a3 + 16) = v10;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for DatabaseBackupProgress(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

float sub_1B21509A0()
{
  v3 = *(v0 + 16);
  v4 = sub_1B212EBC0();
  if (!v1)
  {
    sub_1B2150A38(v4);
    v2 = v6;
  }

  return v2;
}

BOOL sub_1B2150B7C(_BOOL8 iCol, int a2, sqlite3_stmt *a3)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_type(a3, iCol) == 5;
  }

  __break(1u);
  return iCol;
}

uint64_t Sequence<>.contains(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  KeyPath = swift_getKeyPath();
  v8 = sub_1B2150D28(sub_1B2151328, &v13, v14, &type metadata for SQLExpression, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v7);

  __src[0] = v8;
  sub_1B21513E8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v9 = a1[4];
  sub_1B211592C(a1, a1[3]);
  v10 = sub_1B2116AC4();
  v11(v10);
  sub_1B2151410(v21, a5);
  memcpy(v24, v21, 0xA3uLL);
  sub_1B21356F8(v24);
  memcpy(v25, __dst, 0xA2uLL);
  return sub_1B2151630(v25);
}

__n128 sub_1B2150D14(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B2150D28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a8;
  v9 = v8;
  v89 = a2;
  v90 = a4;
  v88 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v83 = v15;
  v17 = *(v16 + 64);
  sub_1B21117FC();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v76 = a5;
  v77 = &v71 - v20;
  v74 = *(a5 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B2112FA8();
  v86 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v71 - v25;
  sub_1B2252B00();
  sub_1B21115E0();
  v72 = v27;
  v73 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1B2112FA8();
  v32 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v71 - v35;
  v37 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1B2112FA8();
  v85 = v38 - v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1B21115E0();
  v82 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1B2111844();
  v81 = v46 - v45;
  v80 = a6;
  sub_1B211E52C();
  v91 = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v78 = v47;
  v49 = *(v48 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v71 - v51;
  v53 = sub_1B22524C0();
  v92 = sub_1B2252DD0();
  v87 = sub_1B2252DE0();
  sub_1B2252D80();
  (*(v82 + 16))(v81, v79, a3);
  v90 = v52;
  v82 = a3;
  result = sub_1B22524B0();
  if (v53 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v53)
  {
    v55 = (v83 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1B2252B50();
      result = sub_1B2122A98(v36, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v88(v36, v84);
      if (v9)
      {
        v69 = sub_1B212D094();
        v70(v69);

        (*(v74 + 32))(v75, v84, v76);
        return (*v55)(v36, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v55)(v36, AssociatedTypeWitness);
      sub_1B2252DC0();
      if (!--v53)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v56 = (v83 + 32);
  v57 = (v83 + 8);
  v58 = v77;
  while (1)
  {
    sub_1B2252B50();
    if (sub_1B2122A98(v32, 1, AssociatedTypeWitness) == 1)
    {
      v62 = sub_1B212D094();
      v63(v62);
      (*(v72 + 8))(v32, v73);
      return v92;
    }

    (*v56)(v58, v32, AssociatedTypeWitness);
    v88(v58, v86);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v59 = *v57;
    v60 = sub_1B21140C4();
    v61(v60);
    sub_1B2252DC0();
  }

  v64 = *v57;
  v65 = sub_1B21140C4();
  v66(v65);
  v67 = sub_1B212D094();
  v68(v67);

  return (*(v74 + 32))(v75, v86, v76);
}

void *sub_1B2151354@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = a1 + a2;
  v6 = *(a1 + a2 - 24);
  v5 = *(v4 - 16);
  v7 = *(v4 - 8);
  v8 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8(__src, AssociatedTypeWitness, v7);
  return memcpy(a3, __src, 0xA3uLL);
}

uint64_t sub_1B21513E8(uint64_t result)
{
  v1 = *(result + 104) & 1;
  v2 = *(result + 160) & 0x81FF;
  *(result + 64) &= 1uLL;
  *(result + 104) = v1;
  *(result + 160) = v2;
  return result;
}

void *sub_1B2151410@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  sub_1B2114F78();
  memcpy(v6, v7, v8);
  v9 = sub_1B214CB20(v19);
  v10 = sub_1B214CB10(v19);
  if (!v9)
  {
    v11 = *v10;
    v12 = *(*v10 + 16);
    if (!v12)
    {
      memset(v16, 0, 17);
      sub_1B2127D7C(v16);
      return memcpy(a2, v16, 0xA3uLL);
    }

    if (v12 == 1)
    {
      memcpy(v16, __dst, 0xA3uLL);
      memcpy(v15, (v11 + 32), 0xA3uLL);
      return sub_1B21353B0(0, v16, a2);
    }
  }

  v14 = swift_allocObject();
  memcpy(v14 + 16, __dst, 0xA3uLL);
  memcpy(v14 + 184, __srca, 0xA2uLL);
  v14[346] = 0;
  v16[0] = v14;
  sub_1B214C468(v16);
  memcpy(a2, v16, 0xA3uLL);
  sub_1B2127DC0(__dst, v15);
  return sub_1B214CB2C(__srca, v15);
}

uint64_t sub_1B2151560()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));
  sub_1B214DF8C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344));

  return swift_deallocObject();
}

unint64_t sub_1B215175C()
{
  result = qword_1ED85E790[0];
  if (!qword_1ED85E790[0])
  {
    sub_1B2161A20(&qword_1EB7A0DA0, &qword_1B2254340);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85E790);
  }

  return result;
}

uint64_t Table.filter(_:)()
{
  sub_1B211D530();
  sub_1B211566C();
  Table.all()(v0, v1);
  sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest();
  v2 = sub_1B21115BC();
  v5 = FilteredRequest.filter(_:)(v2, v3, v4);
  sub_1B2116508(v5, v6, v7, v8, v9, v10, v11, v12, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
  sub_1B211283C();
  v14 = *(v13 + 8);
  v23 = sub_1B2118220(v15, v16, v17, v18, v19, v20, v21, v22, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
  return v24(v23);
}

void *Table.all()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = *v2;
  v8 = v2[1];
  sub_1B21518F0(__src);
  v5 = *(a1 + 16);
  return sub_1B2135E6C(__src, a2);
}

double sub_1B21518F0@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v7 = v6;
  v9 = v8;
  sub_1B21359AC();
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_1B2151AA4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = v7;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 161) = 1;
  return result;
}

uint64_t FetchRequest<>.fetchAll(_:)()
{
  sub_1B213CB2C();
  v0 = sub_1B2144154();
  return static Row.fetchAll<A>(_:_:)(v0, v1, v2, v3);
}

{
  sub_1B21150E0();
  sub_1B212CDC0();
  swift_getAssociatedTypeWitness();
  v0 = sub_1B21129A8();
  return static DatabaseValueConvertible<>.fetchAll<A>(_:_:)(v0, v1, v2, v3, v4, v5, v6);
}

{
  sub_1B211543C();
  sub_1B21130B8();
  v0 = sub_1B2115A3C();
  return static DatabaseValueConvertible.fetchAll<A>(_:_:)(v0, v1, v2, v3, v4, v5);
}

uint64_t static Row.fetchAll<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2135390(a1, a2, a3, a4);
  v6 = v5();
  if (!v4)
  {
    v14 = sub_1B2154354(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22[0]);
    static Row.fetchAll(_:arguments:adapter:)(v14, v15, v16);
    if (v23)
    {

      v18 = sub_1B2122C80();
      v23(v18);
      v19 = sub_1B2122C8C();
      sub_1B2112F4C(v19);
    }

    sub_1B2142D18(v22);
  }

  return sub_1B21223F4();
}

void *sub_1B2151AA4@<X0>(void *a1@<X8>)
{
  result = sub_1B2151AD4();
  *a1 = result;
  return result;
}

void (*sub_1B2151B44())()
{
  sub_1B211D530();
  v2 = sub_1B2170FB8(0x68uLL);
  *v1 = v2;
  v3 = *v0;
  Row.subscript.getter();
  *(v2 + 5) = v4;
  *v2 = v4;
  *(v2 + 1) = v5;
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  *(v2 + 10) = v5;
  *(v2 + 11) = v6;
  *(v2 + 12) = v7;
  v8 = *(v2 + 32);
  *(v2 + 33) = v8;
  *(v2 + 6) = v5;
  *(v2 + 7) = v6;
  *(v2 + 8) = v7;
  *(v2 + 72) = v8;

  sub_1B2113A20(v6, v7, v8);
  return sub_1B2151D58;
}

void Row.subscript.getter()
{
  sub_1B224B638();
  if ((*v1 & 0x8000000000000000) != 0 || *v1 >= v0[9])
  {
    sub_1B2111608();
    sub_1B2112EEC();
    sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v2 = v0[6];
    sub_1B21139A0(v0 + 2, v0[5]);
    sub_1B224B38C();
    v4 = *(v3 + 32);
    sub_1B2127108();
    v5();
    v6 = v0[6];
    sub_1B21139A0(v0 + 2, v0[5]);
    v7 = *(v6 + 48);
    sub_1B224B2A8();
    v8();
    sub_1B224B5E0();
  }
}

{
  sub_1B2111F14();
  v7 = sub_1B224B318();
  sub_1B211280C(v7);
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  if ((v3 & 0x8000000000000000) != 0 || *(v1 + 72) <= v3)
  {
    goto LABEL_11;
  }

  v5 = *(v1 + 64);
  if (v5)
  {
    if (!(v3 >> 31))
    {
      v23[1] = v12;
      v23[2] = v2;
      MEMORY[0x1EEE9AC00](v11);
      sub_1B2127274();
      v15 = sqlite3_column_type(v5, v3);
      if (v15 == 5)
      {
LABEL_13:
        MEMORY[0x1EEE9AC00](v15);
        sub_1B21156F0();
        *(v20 - 16) = sub_1B21B6634;
        *(v20 - 8) = v2;
        sub_1B224B2F0(v5, v21, sub_1B21B663C, v22);
        goto LABEL_14;
      }

      v16 = *(v0 + 8);
      sub_1B224B50C();
      v17();
      if (sub_1B2122A98(v14, 1, v6) != 1)
      {
        sub_1B2111808(v6);
        (*(v18 + 32))(v4, v14, v6);
LABEL_9:
        sub_1B2111588();
        return;
      }

LABEL_12:
      sub_1B21265E0();
      v15 = v19(v14, v7);
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    sub_1B2116728();
    v23[0] = 825;
    sub_1B2112EEC();
    sub_1B2252EC0();
    __break(1u);
    goto LABEL_12;
  }

  sub_1B224B1DC();
  Row.fastDecode<A>(_:atUncheckedIndex:)();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_14:
  sub_1B212CF48();
  swift_unexpectedError();
  __break(1u);
}

{
  sub_1B2111F14();
  v6 = sub_1B224B318();
  sub_1B211280C(v6);
  v8 = *(v7 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  v13 = v35 - v12;
  if ((v3 & 0x8000000000000000) != 0 || *(v1 + 72) <= v3)
  {
    goto LABEL_15;
  }

  v4 = *(v1 + 64);
  if (!v4)
  {
    sub_1B224B1DC();
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    if (!v2)
    {
LABEL_13:
      sub_1B2111588();
      return;
    }

LABEL_17:
    sub_1B212CF48();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if (v3 >> 31)
  {
    __break(1u);
LABEL_15:
    sub_1B2116728();
    v35[0] = 803;
    sub_1B2112EEC();
    sub_1B2252EC0();
    __break(1u);
LABEL_16:
    sub_1B21265E0();
    v31 = v30(v13, v6);
    MEMORY[0x1EEE9AC00](v31);
    sub_1B21156F0();
    *(v32 - 16) = sub_1B21B6634;
    *(v32 - 8) = v2;
    sub_1B224B2F0(v4, v33, sub_1B21B663C, v34);
    goto LABEL_17;
  }

  v35[1] = v11;
  v35[2] = v2;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2127274();
  if (sqlite3_column_type(v4, v3) != 5)
  {
    v19 = *(v0 + 8);
    sub_1B224B50C();
    v20();
    v21 = sub_1B224B520();
    if (sub_1B2122A98(v21, v22, v5) != 1)
    {
      sub_1B2111808(v5);
      v24 = *(v23 + 32);
      v25 = sub_1B211F390();
      v26(v25);
      v27 = sub_1B224B2D0();
      sub_1B21117B4(v27, v28, v29, v5);
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  sub_1B224B2C0();
  sub_1B2111588();

  sub_1B21117B4(v14, v15, v16, v17);
}

{
  sub_1B2111F14();
  v2 = v1;
  v38[2] = v3;
  v5 = v4;
  v6 = sub_1B2252B00();
  sub_1B211280C(v6);
  v38[1] = v7;
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v14 = v13[11];
  sub_1B2138D84();
  v16 = v15();
  if ((v17 & 1) == 0)
  {
    v18 = v16;
    v19 = v0[8];
    if (!v19)
    {
      sub_1B224B450();
      if (!v2)
      {
LABEL_13:
        sub_1B2111588();
        return;
      }

LABEL_17:
      sub_1B212CF48();
      swift_unexpectedError();
      __break(1u);
      return;
    }

    if (v16 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v16 <= 0x7FFFFFFF)
    {
      MEMORY[0x1EEE9AC00](v16);
      v13 = &v38[-4];
      v38[-2] = v0;
      v38[-1] = v18;
      if (sqlite3_column_type(v19, v18) == 5)
      {
        goto LABEL_6;
      }

      (*(v2 + 8))(v19, v18, v5, v2);
      v25 = sub_1B224B520();
      if (sub_1B2122A98(v25, v26, v5) != 1)
      {
        sub_1B2111808(v5);
        v28 = *(v27 + 32);
        v29 = sub_1B211F390();
        v30(v29);
        v31 = sub_1B224B2D0();
        sub_1B21117B4(v31, v32, v33, v5);
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    sub_1B21265E0();
    v35 = v34(v12, v6);
    MEMORY[0x1EEE9AC00](v35);
    sub_1B21156F0();
    *(v36 - 16) = sub_1B222EEE8;
    *(v36 - 8) = v13;
    sub_1B224B398(v19, v18, sub_1B222EEEC, v37);
    goto LABEL_17;
  }

LABEL_6:
  sub_1B224B2C0();
  sub_1B2111588();

  sub_1B21117B4(v20, v21, v22, v23);
}

{
  sub_1B2241384();
}

{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  v43[2] = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1B2252B00();
  sub_1B211280C(v12);
  v43[1] = v13;
  v15 = *(v14 + 64);
  sub_1B21117FC();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v43 - v18;
  (*(v2 + 16))(v7, v2, v17);
  v20 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  v21 = *(v20 + 88);
  v22 = sub_1B2117C38();
  v24 = v23(v22);
  if ((v25 & 1) == 0)
  {
    v26 = v24;
    v27 = v0[8];
    if (!v27)
    {

      sub_1B224B450();
      if (!v4)
      {
LABEL_13:
        sub_1B2111588();
        return;
      }

LABEL_17:
      sub_1B212CF48();
      swift_unexpectedError();
      __break(1u);
      return;
    }

    if (v24 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v24 <= 0x7FFFFFFF)
    {
      MEMORY[0x1EEE9AC00](v24);
      v43[0] = &v43[-4];
      v43[-2] = v0;
      v43[-1] = v26;
      if (sqlite3_column_type(v27, v26) == 5)
      {
        goto LABEL_6;
      }

      (*(v4 + 8))(v27, v26, v9, v4);
      if (sub_1B2122A98(v19, 1, v9) != 1)
      {

        sub_1B2111808(v9);
        (*(v33 + 32))(v11, v19, v9);
        v34 = sub_1B224B2D0();
        sub_1B21117B4(v34, v35, v36, v9);
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    sub_1B21265E0();
    v37 = sub_1B2117214();
    v39 = v38(v37);
    MEMORY[0x1EEE9AC00](v39);
    sub_1B21156F0();
    v40 = v43[0];
    *(v41 - 16) = sub_1B222EEE8;
    *(v41 - 8) = v40;
    sub_1B224B398(v27, v26, sub_1B222EEEC, v42);

    goto LABEL_17;
  }

LABEL_6:

  sub_1B224B2C0();
  sub_1B2111588();

  sub_1B21117B4(v28, v29, v30, v31);
}

{
  sub_1B2241384();
}

{
  sub_1B224B638();
  sub_1B2151D4C(v0);
  v3(v1, v2);
  Row.decode<A>(_:forKey:)();

  sub_1B224B5E0();
}

{
  sub_1B22422E0();
}

unint64_t sub_1B2151D00(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    v3 = a3 + 16 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    return v4;
  }

  __break(1u);
  return result;
}

void sub_1B2151D58()
{
  sub_1B2123510();
  v1 = *v0;
  v3 = *(*v0 + 88);
  v2 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 33);

  sub_1B2113A44(v6, v7, v8);

  sub_1B2113A44(v3, v2, v9);
  sub_1B2115ED4();

  free(v10);
}

void sub_1B2151DE0(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 < 0 || *(v2 + 72) <= a2)
  {
    __break(1u);
  }

  else
  {
    sub_1B211815C(a1);
  }
}

uint64_t Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 23) = 0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = 5;
  v2 = type metadata accessor for Configuration();
  v3 = a1 + v2[16];
  result = sub_1B2252110();
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 1;
  *(a1 + v2[20]) = 0;
  v5 = (a1 + v2[21]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[22]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[23]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t Configuration.prepareDatabase(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1B2151EF0();
  v7 = *(*(v3 + 32) + 16);
  result = sub_1B2151FD8(v7);
  v9 = *(v3 + 32);
  *(v9 + 16) = v7 + 1;
  v10 = v9 + 16 * v7;
  *(v10 + 32) = sub_1B2124ADC;
  *(v10 + 40) = v6;
  *(v3 + 32) = v9;
  return result;
}

uint64_t sub_1B2151FA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B2151FF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1B2152008(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t Configuration.busyMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B2151FF0(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t *DatabaseQueue.init(path:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = type metadata accessor for Configuration();
  v8 = sub_1B2111894(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111844();
  sub_1B212392C(a3, v12 - v11);
  type metadata accessor for SerializedDatabase();
  swift_allocObject();
  sub_1B21166D4();
  sub_1B2123A30();
  if (v4)
  {
    sub_1B2133D70(a3);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[2] = v13;
    sub_1B21521EC();
    sub_1B2133D70(a3);
  }

  return v3;
}

uint64_t Database.sqliteConnection.getter()
{
  sub_1B2117330();
  swift_beginAccess();
  return *(v0 + 16);
}

void sub_1B21521EC()
{
  v1 = type metadata accessor for Configuration();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DatabaseQueue.configuration.getter(v4);
  v5 = v4[25];
  sub_1B2133D70(v4);
  if (v5 == 1)
  {
    v6 = [objc_opt_self() defaultCenter];
    if (qword_1EB7A0D88 != -1)
    {
      swift_once();
    }

    [v6 addObserver:v0 selector:sel_suspend_ name:qword_1EB7A3338 object:0];
    if (qword_1EB7A0D90 != -1)
    {
      swift_once();
    }

    [v6 addObserver:v0 selector:sel_resume_ name:qword_1EB7A3340 object:0];
  }
}

uint64_t DatabaseQueue.__deallocating_deinit()
{
  DatabaseQueue.deinit();
  v0 = sub_1B2114EE8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DatabaseQueue.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 16);

  return v0;
}

void Configuration.targetQueue.setter()
{
  v2 = *(sub_1B2116170() + 68);

  *(v1 + v2) = v0;
}

uint64_t sub_1B21524F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7[5] = a1;
  v7[2] = a4;
  v7[3] = a2;
  v7[4] = a3;
  return sub_1B212B00C(1, a5, v7, a4, a6);
}

void sub_1B215256C(void (*a1)(uint64_t *__return_ptr))
{
  sub_1B2152610();
  if (!v1)
  {
    a1(&v3);
    sub_1B215476C();
  }
}

void sub_1B2152610()
{
  if ((*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth;
    v3 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth);
    if (!v3)
    {
      sub_1B2122088();
      sub_1B2111BFC();
      v8.value.values._rawValue = sub_1B212DAFC(v6, v7);
      if (v1)
      {
        return;
      }

      sub_1B211F1E0(v8, v9, v10, v11, v12, v13, v14, v15);

      v3 = *(v0 + v2);
    }

    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(v0 + v2) = v5;
    }
  }
}

void sub_1B2152704()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1B21526B8();
}

uint64_t StatementArguments.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  KeyPath = swift_getKeyPath();
  v9 = sub_1B2150D28(sub_1B2151328, &v13, v14, &type metadata for DatabaseValue, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v8);

  sub_1B2111808(a2);
  result = (*(v10 + 8))(a1, a2);
  v12 = MEMORY[0x1E69E7CC8];
  *a5 = v9;
  a5[1] = v12;
  return result;
}

__n128 sub_1B215288C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B21528A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B21528F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B2152954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *))
{
  v10 = *a3;
  v11 = a3[1];
  v24[3] = &type metadata for SQL;
  v24[4] = a6;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = v10;
  __src[3] = v11;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);

  v21 = sub_1B2144118(v13, v14, v15, v16, v17, v18, v19, v20, v23, v12);
  a7(v21);
  return sub_1B2113208(v24);
}

void TableRequest<>.filter<A>(key:)()
{
  sub_1B2111F14();
  v38[2] = v0;
  v38[3] = v1;
  v38[1] = v2;
  v4 = v3;
  v6 = v5;
  v39 = v7;
  v8 = sub_1B2252B00();
  sub_1B21115E0();
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v38 - v14;
  sub_1B21115E0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B2111844();
  v23 = v22 - v21;
  v24 = *(v10 + 16);
  sub_1B211E52C();
  v25();
  if (sub_1B2122A98(v15, 1, v6) == 1)
  {
    (*(v10 + 8))(v15, v8);
    v26 = *(v4 + 8);
    v27 = sub_1B2117694();
    v28(v27, 0, v39, v4);
  }

  else
  {
    v29 = *(v17 + 32);
    v30 = sub_1B21140C4();
    v31(v30);
    v32 = sub_1B2152D64(v6, v6);
    v33 = *(v32 + 52);
    v34 = *(v17 + 72);
    v35 = (*(v17 + 80) + *(v32 + 48)) & ~*(v17 + 80);
    swift_allocObject();
    v36 = sub_1B22525B0();
    (*(v17 + 16))(v37, v23, v6);
    sub_1B2152E00();
    v40 = v36;
    sub_1B22526A0();
    sub_1B2111B28();
    swift_getWitnessTable();
    TableRequest<>.filter<A>(keys:)();

    (*(v17 + 8))(v23, v6);
  }

  sub_1B2111588();
}

uint64_t sub_1B2152D64(uint64_t a1, uint64_t a2)
{
  if (sub_1B2152DD0(a2))
  {

    return sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  }

  else
  {

    return sub_1B2252FE0();
  }
}

uint64_t sub_1B2152DD0(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void TableRequest<>.filter<A>(keys:)()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v44 = v16;
  v45 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1B212FED0(AssociatedTypeWitness);
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v43 = v1;
    v23 = swift_getAssociatedTypeWitness();
    if (v23 == sub_1B2251E90())
    {
      v25 = (*(v22 + 32))(v46, v21, v22);
      v26 = v46[0];
      v42 = v46[1];
      v41 = v47;
      MEMORY[0x1EEE9AC00](v25);
      v32[0] = v15;
      v32[1] = v13;
      v33 = v11;
      v34 = v9;
      v35 = v7;
      v36 = v5;
      v37 = v3;
      v38 = v26;
      v39 = v27;
      v40 = v28;
      v46[0] = sub_1B22524D0();
      sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
      sub_1B21183E4(&qword_1ED85DE50);
      sub_1B2114434();
      sub_1B2153154();
      sub_1B2187B6C(v26, v42, v41);
    }

    else
    {
      if (v23 != sub_1B2251EE0())
      {
        goto LABEL_4;
      }

      v29 = (*(v22 + 40))(v46, v21, v22);
      MEMORY[0x1EEE9AC00](v29);
      v33 = v15;
      v34 = v13;
      v35 = v11;
      v36 = v9;
      v37 = v7;
      v38 = v5;
      v39 = v3;
      v40 = v30;
      v46[0] = sub_1B2150D28(sub_1B21EDA3C, v32, v13, &type metadata for DatabaseValue, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v31);
      sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
      sub_1B21183E4(&qword_1ED85DE50);
      sub_1B2114434();
      sub_1B2153154();
    }

    sub_1B2111588();
    return;
  }

LABEL_4:
  sub_1B211E52C();
  sub_1B2111588();

  sub_1B2153154();
}

void sub_1B2153154()
{
  sub_1B2111F14();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B21115E0();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  (*(v17 + 16))(v16 - v15);
  sub_1B211E52C();
  swift_getAssociatedTypeWitness();
  v18 = sub_1B22526C0();
  sub_1B22526A0();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {

    v19 = *(v7 + 8);
    v20 = sub_1B2117694();
    v21(v20, 0, v11, v7);
  }

  else
  {
    v22 = (*(v5 + 8))(v11, v5);
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v11;
    v25[3] = v9;
    v25[4] = v7;
    v25[5] = v5;
    v25[6] = v26;
    v25[7] = v3;
    v25[8] = v27;
    v25[9] = v22;
    v25[10] = v24;
    v25[11] = v18;
    (*(v7 + 8))(sub_1B215442C, v25, v11, v7);
  }

  sub_1B2111588();
}

uint64_t sub_1B215336C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t QueryInterfaceRequest.databaseTableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FetchRequest<>.fetchOne(_:)()
{
  sub_1B213CB2C();
  v0 = sub_1B2144154();
  return static Row.fetchOne<A>(_:_:)(v0, v1, v2, v3);
}

{
  sub_1B21150E0();
  sub_1B212CDC0();
  swift_getAssociatedTypeWitness();
  sub_1B21129A8();
  return static DatabaseValueConvertible<>.fetchOne<A>(_:_:)();
}

{
  sub_1B2114774();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return static DatabaseValueConvertible<>.fetchOne<A>(_:_:)();
}

{
  sub_1B211543C();
  sub_1B21130B8();
  v0 = sub_1B2115A3C();
  return static DatabaseValueConvertible.fetchOne<A>(_:_:)(v0, v1, v2, v3, v4, v5);
}

{
  sub_1B21150E0();
  swift_getAssociatedTypeWitness();
  sub_1B2113BDC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return static DatabaseValueConvertible.fetchOne<A>(_:_:)(v4, v0, AssociatedTypeWitness, v3, v1, v2);
}

uint64_t static Row.fetchOne<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2135390(a1, a2, a3, a4);
  v6 = v5();
  if (!v4)
  {
    v14 = sub_1B2154354(v6, v7, v8, v9, v10, v11, v12, v13, v25, v26, v27[0]);
    v17 = static Row.fetchOne(_:arguments:adapter:)(v14, v15, v16);
    v19 = v17;
    if (v17)
    {
      v20 = v28;
      if (v28)
      {
        sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1B2257570;
        *(v21 + 32) = v19;
        v22 = sub_1B2122C8C();
        sub_1B2112328(v22);

        v23 = sub_1B211F390();
        v20(v23);

        v24 = sub_1B2122C8C();
        sub_1B2112F4C(v24);
      }
    }

    sub_1B2142D18(v27);
  }

  return sub_1B21223F4();
}

uint64_t sub_1B215354C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B2153588()
{
  result = qword_1ED85D810;
  if (!qword_1ED85D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D810);
  }

  return result;
}

unint64_t sub_1B21535E0()
{
  result = qword_1ED85DA18;
  if (!qword_1ED85DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DA18);
  }

  return result;
}

uint64_t sub_1B2153644(uint64_t a1)
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

uint64_t sub_1B2153750()
{
  sub_1B2153588();
  v0 = sub_1B2252190();
  sub_1B21619D8(&qword_1EB7A2338, &unk_1B225D9A0);
  swift_allocObject();
  result = sub_1B21537C8(v0);
  qword_1ED85DA28 = result;
  return result;
}

uint64_t sub_1B21537D0(uint64_t a1)
{
  v21 = sub_1B2252A10();
  v3 = sub_1B211280C(v21);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  v10 = v9 - v8;
  v11 = sub_1B2252120();
  v12 = sub_1B2111894(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v15 = sub_1B22529C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B2111844();
  *(v1 + 16) = a1;
  sub_1B2111770();
  sub_1B21619D8(&qword_1EB7A3158, &qword_1B2269C10);
  v18 = *(v16 + 72);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_1B22546B0;
  sub_1B22529B0();
  sub_1B21202AC(&qword_1ED85E780, MEMORY[0x1E69E8030]);
  sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
  sub_1B21E8598(&qword_1ED85E788, &qword_1EB7A21A0, &unk_1B225E830);
  sub_1B2252BC0();
  sub_1B2252100();
  (*(v5 + 104))(v10, *MEMORY[0x1E69E8090], v21);
  *(v1 + 24) = sub_1B2252A70();
  return v1;
}

uint64_t sub_1B2153B18()
{
  sub_1B211AD88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30 = v10;
  v12 = v11;
  v13 = *v0;
  v14 = sub_1B2145D20();
  sub_1B211744C(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  sub_1B21619D8(&qword_1EB7A1D08, &qword_1B225A770);
  if (sub_1B2113040())
  {
    v21 = *v1;
    sub_1B2145D20();
    sub_1B2118020();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  v24 = *v1;
  if (v20)
  {
    v25 = (*(v24 + 56) + 16 * v19);
    v26 = v25[1];
    *v25 = v12;
    v25[1] = v30;
    sub_1B21119F0();
  }

  else
  {
    sub_1B2153C5C(v19, v9, v7, v5, v3, v12, v30, v24);

    sub_1B21119F0();
  }
}

uint64_t sub_1B2153C5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B21157C0(a1, a8 + 8 * (a1 >> 6));
  v10 = v9[6] + 32 * result;
  *v10 = v11;
  *(v10 + 8) = v12;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  v15 = (v9[7] + 16 * result);
  *v15 = v16;
  v15[1] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

uint64_t Configuration.qos.setter()
{
  v2 = *(sub_1B2116170() + 64);
  v3 = sub_1B2252120();
  sub_1B21118A0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t sub_1B2153D1C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

void *SQLSpecificExpressible.sqlSelection.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B2124228(a1, *(a2 + 8));
  v4();
  sub_1B214D464(__src);
  return memcpy(a3, __src, 0xB8uLL);
}

uint64_t sub_1B2153DC4()
{
  sub_1B21144C0();
  v1();
  memcpy(v0, __src, 0xA3uLL);
}

uint64_t sub_1B2153E14(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x280000u) >> 16;
  return result;
}

void *sub_1B2153E58@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = result;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B21542F0();
    v6 = v47;
    v8 = (v4 + 32);
    do
    {
      memcpy(__dst, v8, sizeof(__dst));
      memmove(v46, v8, 0xB8uLL);
      switch(sub_1B211AF10(v46))
      {
        case 1u:
          sub_1B2119818(v46);
          sub_1B2116850(v43);
          v28 = sub_1B2119818(v43);
          sub_1B214CFE0(v28, v44);
          v17 = __dst;
          goto LABEL_17;
        case 2u:
          v15 = sub_1B2119818(v46);
          memcpy(v44, v15, 0xA3uLL);
          sub_1B2116850(v42);
          v16 = sub_1B2119818(v42);
          sub_1B2127DC0(v16, v43);
          sub_1B213BBD8(v7);
          sub_1B211AC90(__dst);
          memcpy(v43, __src, 0xA3uLL);
          sub_1B2127AE0(v43);
          goto LABEL_7;
        case 3u:
          sub_1B2119818(v46);
          sub_1B21118C4();
          memcpy(v18, v19, v20);
          switch(sub_1B213A580(v43))
          {
            case 1u:
              v36 = sub_1B213AA9C(v43);
              memcpy(v42, v36, 0xA3uLL);
              sub_1B2116850(__src);
              v37 = sub_1B2119818(__src);
              sub_1B213A774(v37, v44);
              v38 = sub_1B21159EC();
              sub_1B213BBD8(v38);
              sub_1B211AC90(__dst);
              memcpy(v44, v40, 0xA3uLL);
              sub_1B214D464(v44);
              goto LABEL_15;
            case 2u:
              v29 = sub_1B213AA9C(v43);
              v30 = v29[21];
              v31 = v29[22];
              memcpy(v42, v29, 0xA3uLL);
              sub_1B2116850(__src);
              v32 = sub_1B2119818(__src);
              sub_1B211AF1C(__dst, v44);
              sub_1B213A774(v32, v44);
              v33 = sub_1B21159EC();
              sub_1B213BBD8(v33);
              sub_1B21356F8(v29);
              sub_1B211AC90(__dst);
              memcpy(v44, v40, 0xA8uLL);
              v44[21] = v30;
              v44[22] = v31;
              sub_1B2155A5C(v44);
              goto LABEL_15;
            case 3u:
              v42[0] = *sub_1B213AA9C(v43);
              sub_1B2116850(__src);
              v34 = sub_1B2119818(__src);
              sub_1B213A774(v34, v44);
              v35 = sub_1B21159EC();
              sub_1B2153E58(v35);
              sub_1B211AC90(__dst);
              v44[0] = v40[0];
              sub_1B216ED24(v44);
              goto LABEL_15;
            case 4u:
              v44[0] = v7;
              sub_1B213A59C(v44);

              sub_1B211AC90(__dst);
LABEL_15:
              memcpy(v42, v44, sizeof(v42));
              break;
            default:
              sub_1B213AA9C(v43);
              sub_1B21118C4();
              memcpy(v21, v22, v23);
              v24 = *sub_1B213AA9C(v44);
              sub_1B21118C4();
              memcpy(v25, v26, v27);

              break;
          }

          memcpy(__src, v42, sizeof(__src));
          sub_1B216ED58(__src);
          v17 = __src;
          goto LABEL_17;
        case 4u:
          v13 = sub_1B2119818(v46);
          memcpy(v44, v13, 0xA3uLL);
          sub_1B2116850(v42);
          v14 = sub_1B2119818(v42);
          sub_1B214D958(v14, v43);
          sub_1B214D9C8(__src, v7);
          sub_1B211AC90(__dst);
          memcpy(v43, __src, 0xA3uLL);
          sub_1B216ED8C(v43);
LABEL_7:
          v17 = v43;
LABEL_17:
          memcpy(v44, v17, sizeof(v44));
          break;
        default:
          sub_1B2119818(v46);
          sub_1B2116850(v43);
          v9 = sub_1B2119818(v43);
          v10 = v9[1];
          v11 = v9[2];
          v12 = v9[3];
          sub_1B2116850(v44);

          break;
      }

      v47 = v6;
      v39 = *(v6 + 16);
      if (v39 >= *(v6 + 24) >> 1)
      {
        sub_1B21542F0();
        v6 = v47;
      }

      *(v6 + 16) = v39 + 1;
      result = memcpy((v6 + 184 * v39 + 32), v44, 0xB8uLL);
      v8 += 184;
      --v5;
    }

    while (v5);
  }

  *a2 = v6;
  return result;
}

void sub_1B21542F0()
{
  v1 = *v0;
  sub_1B213A118();
  *v0 = v2;
}

uint64_t sub_1B215433C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_1B2122B00(&STACK[0x2B8], &a31, a3, a4);
}

uint64_t sub_1B2154370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B2252FD0();
  }

  sub_1B2115FBC();
  v5 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](0x2054455346464F20, 0xE800000000000000);
  sub_1B2115FBC();
  v4 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v4);

  return v5;
}

uint64_t sub_1B215445C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = Database.primaryKey(_:)();
  if (!v7)
  {
    v14 = v26;
    v13 = v27;
    v15 = v28;
    v25 = v27;
    if (v28)
    {
      if (v28 == 1)
      {
        v16 = v26;
      }

      else
      {
        v16 = &unk_1F2969A08;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v17 = swift_allocObject();
      v13 = v27;
      v16 = v17;
      *(v17 + 16) = xmmword_1B22546B0;
      *(v17 + 32) = v14;
      *(v17 + 40) = v25;
    }

    v18 = v16[2];
    sub_1B21414CC(v14, v13, v15);

    if (v18 == 1)
    {
      v31 = a3;
      if (v15)
      {
        if (v15 == 1)
        {
          v19 = v14;
        }

        else
        {
          v19 = &unk_1F2969A38;
        }
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
        v19 = swift_allocObject();
        *(v19 + 1) = xmmword_1B22546B0;
        *(v19 + 4) = v14;
        *(v19 + 5) = v25;
      }

      if (*(v19 + 2))
      {
        v21 = *(v19 + 4);
        v20 = *(v19 + 5);

        v29 = &type metadata for Column;
        v30 = &protocol witness table for Column;
        v26 = v21;
        v27 = v20;
        a4[3] = &type metadata for SQLExpression;
        a4[4] = &protocol witness table for SQLExpression;
        v22 = swift_allocObject();
        *a4 = v22;
        swift_getAssociatedTypeWitness();
        v23 = sub_1B22526A0();
        WitnessTable = swift_getWitnessTable();
        Sequence<>.contains(_:)(&v26, v23, WitnessTable, *(a7 + 8), (v22 + 16));
        return sub_1B2113208(&v26);
      }

      __break(1u);
    }

    sub_1B2252CD0();
    MEMORY[0x1B2741EB0](0xD000000000000044, 0x80000001B226F470);
    MEMORY[0x1B2741EB0](a1, a2);
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2154704()
{
  v1 = sub_1B2117D64();
  sub_1B213B9FC(v2, v3, v4, v5, v6, v7, v8, v9, v1.n128_i64[0], v1.n128_i64[1], v10, v11, v12, v13, v14, v15, *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

void sub_1B215476C()
{
  if ((*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth);
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth) = v4;
      if (!v4)
      {
        v5 = sub_1B2122088();
        v7.value.values._rawValue = sub_1B212DAFC(v5, v6);
        if (!v1)
        {
          sub_1B211F1E0(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }
    }
  }
}

void static DatabaseValueConvertible.fetchOne(_:arguments:adapter:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v26 = v9;
  v10 = sub_1B2252B00();
  v11 = sub_1B2252B00();
  sub_1B211280C(v11);
  v25 = v12;
  v14 = *(v13 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v15);
  v29 = &v24 - v16;
  v18 = *v6;
  v17 = v6[1];
  sub_1B2113BDC();
  v19 = type metadata accessor for NullableDatabaseValueCursor();
  v28[0] = v18;
  v28[1] = v17;
  sub_1B2122784(v4, v27);

  sub_1B211CF8C(v18);
  sub_1B211D084(v8, v28, v27);
  if (!v0)
  {
    v21 = v25;
    v20 = v26;
    WitnessTable = swift_getWitnessTable();
    DatabaseCursor.next()(v19, WitnessTable, v29);

    if (sub_1B2122A98(v29, 1, v10) == 1)
    {
      sub_1B21117B4(v20, 1, 1, v2);
      if (sub_1B2122A98(v29, 1, v10) != 1)
      {
        (*(v21 + 8))(v29, v11);
      }
    }

    else
    {
      sub_1B2111808(v10);
      (*(v23 + 32))(v20, v29, v10);
    }
  }

  sub_1B2112FDC();
}

uint64_t sub_1B2154AB4()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if ((sub_1B2117B40(v1) & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1B21118B8();
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration;
    v5 = type metadata accessor for Configuration();
    v30 = v4;
    v6 = v4 + *(v5 + 88);
    if (*v6)
    {
      v7 = *(v6 + 8);
      (*v6)(v3);
    }

    v8 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B21140E4(v8, v9);

    type metadata accessor for Statement();
    v10 = sub_1B223C24C();
    v11 = sub_1B211499C(v10, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B2120024(v11, v12);
    v13 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B21140E4(v13, v14);

    v15 = sub_1B223C24C();
    v16 = sub_1B211499C(v15, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B2120024(v16, v17);
    result = sqlite3_close(v3);
    if (result)
    {
      v18 = result;
      sub_1B21115FC();
      swift_beginAccess();
      v19 = off_1EB7A3328;
      if (off_1EB7A3328 && v18 == 5)
      {

        stmt = sqlite3_next_stmt(v3, 0);
        if (stmt)
        {
          while (1)
          {
            v31 = 5;
            sub_1B2252CD0();

            if (!sqlite3_sql(stmt))
            {
              break;
            }

            v21 = sub_1B22523F0();
            MEMORY[0x1B2741EB0](v21);

            v19(&v31, 0xD000000000000017, 0x80000001B2270F70);

            stmt = sqlite3_next_stmt(v3, stmt);
            if (!stmt)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_20;
        }

LABEL_11:
        sub_1B2112F4C(v19);
        v18 = 5;
      }

      v22 = Database.lastErrorMessage.getter();
      v24 = v23;
      sub_1B21AC298();
      sub_1B21152FC();
      v26 = v25;
      if (!v24)
      {
        if (!sqlite3_errstr(v18))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          sub_1B2112A88();
          result = sub_1B2252EC0();
          __break(1u);
          return result;
        }

        v22 = sub_1B22523F0();
        v24 = v27;
      }

      *v26 = v18;
      *(v26 + 8) = v22;
      *(v26 + 16) = v24;
      *(v26 + 24) = 0u;
      *(v26 + 40) = 0u;
      *(v26 + 56) = 0;
      return swift_willThrow();
    }

    *(v0 + 16) = 0;
    v28 = v30 + *(v5 + 92);
    if (*v28)
    {
      v29 = *(v28 + 8);
      return (*v28)();
    }
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B2251A00();
  v7 = sub_1B211280C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  v10 = sub_1B22519D0();
  v11 = sub_1B211280C(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v14 = sub_1B22519C0();
  v15 = sub_1B211280C(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B2111844();
  v18 = sub_1B22522F0();
  v19 = sub_1B211280C(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B2111844();
  v23 = *a1;
  v22 = *(a1 + 8);
  v24 = *(a1 + 16);
  sub_1B21552B8();
  sub_1B2113B74();
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = MEMORY[0x1E69E7CC0];
  sub_1B2113A20(v23, v22, v24);
  sub_1B22527E0();

  return sub_1B21117B4(a3, 0, 1, a2);
}

unint64_t sub_1B21552B8()
{
  result = qword_1ED85D4A0;
  if (!qword_1ED85D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4A0);
  }

  return result;
}

uint64_t sub_1B215530C()
{
  sub_1B2155660();
  swift_allocError();
  return swift_willThrow();
}

void sub_1B2155354()
{
  sub_1B2111640();
  v33 = v0;
  v2 = v1;
  v4 = v3;
  v32[0] = v5;
  v32[1] = v6;
  v8 = v7;
  v10 = v9;
  v39 = v11;
  v12 = sub_1B2252B00();
  sub_1B211280C(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v32 - v18;
  sub_1B21320F0(v10, v8, v37);
  v20 = v37[0];
  v21 = v37[1];
  v22 = v38;
  (*(v2 + 32))(v37, v4, v2);
  if (sub_1B2122A98(v19, 1, v4) == 1)
  {
    v23 = v39;
    (*(v14 + 8))(v19, v12);
    if (v22 != 4 || v21 | v20)
    {
      sub_1B211DA70();
      v28(v26, v27);
      v34 = v20;
      v35 = v21;
      v36 = v22;
      sub_1B21A2FC0();
      swift_allocError();
      sub_1B211D7D8();
      sub_1B2183238(v4, v29, v30, v31);
      sub_1B2111C54();
      swift_willThrow();
      sub_1B2113A44(v20, v21, v22);
      goto LABEL_8;
    }

    sub_1B2113A44(0, 0, 4);
    v24 = 1;
  }

  else
  {
    sub_1B2113A44(v20, v21, v22);
    sub_1B2111808(v4);
    v23 = v39;
    (*(v25 + 32))(v39, v19, v4);
    v24 = 0;
  }

  sub_1B21117B4(v23, v24, 1, v4);
LABEL_8:
  sub_1B2112FDC();
}

uint64_t sub_1B2155578(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t, unsigned int *))
{
  v4 = *(*v3 + 80);
  v5 = *(*v3 + 88);
  return a3(a1, v3[7], a2, v3);
}

unint64_t sub_1B2155660()
{
  result = qword_1ED85D808;
  if (!qword_1ED85D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D808);
  }

  return result;
}

uint64_t DatabaseValueCursor.__deallocating_deinit()
{
  DatabaseValueCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t AggregatingRequest.group(_:)()
{
  sub_1B2123510();
  sub_1B2112174();
  sub_1B2115660();
  v1 = swift_allocObject();
  sub_1B211AE34(v1);
  v2 = *(v0 + 8);

  v3 = sub_1B211623C();
  v2(v3);
  sub_1B2115ED4();
}

void *_s12GRDBInternal3SQLV13stringLiteralACSS_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1B2112554(MEMORY[0x1E69E7CC0], __src);
  v8 = __src[0];
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B22546B0;
  *&__src[0] = a1;
  *(&__src[0] + 1) = a2;
  __src[1] = v8;
  sub_1B2114CC4(__src);
  result = memcpy((v6 + 32), __src, 0xB8uLL);
  *a3 = v6;
  return result;
}

double sub_1B2155860(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0xA2uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = __dst[14];
  memcpy(__srca, __src, sizeof(__srca));
  v8 = *(__src + 9);
  v14 = *(__src + 8);
  v15 = v8;
  v16 = *(__src + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B21564D4;
  *(v9 + 24) = v6;

  sub_1B2136148(__dst, v18);
  sub_1B2112F4C(v7);
  memcpy(v18, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v18, InterfaceRequest);
  memcpy(__src, __srca, 0x70uLL);
  *(__src + 14) = sub_1B214D6B4;
  *(__src + 15) = v9;
  result = *&v14;
  v12 = v15;
  *(__src + 8) = v14;
  *(__src + 9) = v12;
  *(__src + 80) = v16;
  return result;
}

uint64_t SQLSpecificExpressible.forKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  sub_1B2124228(a1, *(a3 + 8));
  v8(v7);
  __src[21] = a1;
  __src[22] = a2;
  sub_1B2155A5C(__src);
  memcpy(a4, __src, 0xB8uLL);
}

void *sub_1B2155A5C(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xF981FFLL | 0x4000000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

uint64_t SelectionRequest.annotated(with:)()
{
  sub_1B2123510();
  sub_1B2112174();
  sub_1B2115660();
  v1 = swift_allocObject();
  sub_1B211AE34(v1);
  v2 = *(v0 + 16);

  v3 = sub_1B211623C();
  v2(v3);
  sub_1B2115ED4();
}

void *sub_1B2155B38(char *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0xA2uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v13 = *__src;
  v14 = *(__src + 2);
  memcpy(__srca, __src + 40, sizeof(__srca));
  v7 = swift_allocObject();
  *(v7 + 16) = *&__dst[3];
  *(v7 + 32) = sub_1B215636C;
  *(v7 + 40) = v6;
  memcpy(v15, __src, 0xA2uLL);

  sub_1B2136148(__dst, &v10);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v15, InterfaceRequest);
  *__src = v13;
  *(__src + 2) = v14;
  *(__src + 3) = sub_1B2155E14;
  *(__src + 4) = v7;
  return memcpy(__src + 40, __srca, 0x7AuLL);
}

uint64_t SQLInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  sub_1B2122B00(a1, &v16, &qword_1EB7A10F0, &qword_1B225D320);
  if (v17)
  {
    sub_1B21217FC(&v16, v18);
    sub_1B21139A0(v18, v18[3]);
    sub_1B21146C8();
    v2 = sub_1B2115FBC();
    v3(v2);
    sub_1B2127AE0(v15);
    sub_1B2127D18();
    sub_1B212CF64();
    sub_1B21172D8(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15[0]);
    *v1 = v1;
    return sub_1B2113208(v18);
  }

  else
  {
    v13 = sub_1B212AC5C(&v16, &qword_1EB7A10F0, &qword_1B225D320);
    return sub_1B2114580(v13);
  }
}

{
  sub_1B2122B00(a1, &v16, &qword_1EB7A10E8, &qword_1B2254928);
  if (v17)
  {
    sub_1B21217FC(&v16, v18);
    sub_1B21139A0(v18, v18[3]);
    sub_1B21146C8();
    v2 = sub_1B2115FBC();
    v3(v2);
    sub_1B216ED58(v15);
    sub_1B2127D18();
    sub_1B212CF64();
    sub_1B21172D8(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15[0]);
    *v1 = v1;
    return sub_1B2113208(v18);
  }

  else
  {
    v13 = sub_1B212AC5C(&v16, &qword_1EB7A10E8, &qword_1B2254928);
    return sub_1B2114580(v13);
  }
}

void *sub_1B2155DA8(double a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 1;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __src[0]);
}

char *sub_1B2155DEC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[184 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

void sub_1B2155E14(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  sub_1B2155E34(a1, *(v2 + 16), *(v2 + 32), a2);
}

void sub_1B2155E34(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  a2(&v10);
  if (!v4)
  {
    v8 = v10;
    v9 = a3(a1);
    sub_1B2156384(v9);
    *a4 = v8;
  }
}

uint64_t DatabasePool.init(path:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = *v3;
  v8 = sub_1B2252120();
  v9 = sub_1B2111894(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v41 = v13 - v12;
  v14 = type metadata accessor for Configuration();
  sub_1B2111808(v14);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B2111844();
  v20 = v19 - v18;
  v3[3] = 0;
  sub_1B21619D8(&qword_1EB7A3128, &qword_1B2269B70);
  sub_1B2111904();
  swift_allocObject();
  v3[4] = sub_1B2153D1C(0);
  v21 = *(a3 + 96);
  if (v21 >= 1)
  {
    sub_1B212392C(a3, v20);
    type metadata accessor for SerializedDatabase();
    sub_1B2113B74();
    swift_allocObject();

    v22 = a1;
    sub_1B2123A30();
    if (v43)
    {

      v24 = v3[3];

      v25 = v3[4];

      swift_deallocPartialClassInstance();
LABEL_11:
      sub_1B2133D70(a3);
      return v4;
    }

    v40 = 0;
    v3[2] = v23;
    v26 = swift_allocBox();
    v28 = v27;
    sub_1B21579F4(a3, v27);
    *(v28 + 41) = 0;
    v29 = a3;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    v31 = v41;
    sub_1B2157A64(v41);
    sub_1B2113B74();
    v32 = swift_allocObject();
    v32[2] = v30;
    v32[3] = v22;
    v32[4] = a2;
    v32[5] = v26;
    sub_1B21619D8(&qword_1EB7A3130, &qword_1B2269B78);
    swift_allocObject();

    v42 = v30;
    a3 = v29;

    v43 = v26;

    v33 = sub_1B2157B7C(v21, v31, sub_1B2124044, v32);
    v34 = v4[3];
    v4[3] = v33;

    if (*(v29 + 1))
    {
    }

    else
    {
      v36 = v4[2];
      MEMORY[0x1EEE9AC00](v35);
      *(&v39 - 2) = v22;
      *(&v39 - 1) = a2;

      v37 = v40;
      sub_1B2113C20(sub_1B21584B8, (&v39 - 4));
      if (v37)
      {

LABEL_10:

        goto LABEL_11;
      }
    }

    sub_1B21587AC();

    goto LABEL_10;
  }

  sub_1B2116728();
  sub_1B2112A88();
  sub_1B21144F4();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B21562D8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t SQLSelection.sqlSelection.getter()
{
  sub_1B21118C4();
  memcpy(v0, v1, v2);
  sub_1B21118C4();
  memcpy(v3, v4, v5);
  return sub_1B213A774(v8, v7);
}

void sub_1B2156384(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B2156418(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B2156464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1368, qword_1B2256F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21564F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  if (!v2)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v3 = v17;
      v7 = v5 + 32;
      for (i = v6 - 1; ; --i)
      {
        sub_1B214D38C(v7, v13);
        v9 = v14;
        v10 = v15;
        sub_1B21139A0(v13, v14);
        (*(v10 + 8))(__src, v9, v10);
        sub_1B2113208(v13);
        v17 = v3;
        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_1B213CA68();
          v3 = v17;
        }

        *(v3 + 16) = v11 + 1;
        memcpy((v3 + 168 * v11 + 32), __src, 0xA3uLL);
        if (!i)
        {
          break;
        }

        v7 += 40;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t *sub_1B215664C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B213CA68();
    v6 = v13;
    v8 = (v4 + 32);
    do
    {
      memcpy(__dst, v8, 0xA3uLL);
      memcpy(v10, v8, sizeof(v10));
      sub_1B2127DC0(__dst, __src);
      sub_1B213BBD8(a2, __src);
      sub_1B21356F8(__dst);
      v13 = v6;
      v9 = *(v6 + 16);
      if (v9 >= *(v6 + 24) >> 1)
      {
        sub_1B213CA68();
        v6 = v13;
      }

      *(v6 + 16) = v9 + 1;
      result = memcpy((v6 + 168 * v9 + 32), __src, 0xA3uLL);
      v8 += 168;
      --v5;
    }

    while (v5);
  }

  *a3 = v6;
  return result;
}

uint64_t Statement.description.getter()
{
  type metadata accessor for SchedulingWatchdog();
  v1 = *(v0 + 80);
  v2 = swift_unownedRetainStrong();
  v3 = sub_1B2117B40(v2);

  if (v3)
  {
    return Statement.sql.getter();
  }

  else
  {
    return 0x6E656D6574617453;
  }
}

uint64_t Statement.sql.getter()
{
  type metadata accessor for SchedulingWatchdog();
  v1 = *(v0 + 80);
  v2 = swift_unownedRetainStrong();
  if ((sub_1B2117B40(v2) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!sqlite3_sql(*(v0 + 16)))
  {
    __break(1u);
LABEL_7:
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  sub_1B22523F0();
  if (qword_1ED85D650 != -1)
  {
    swift_once();
  }

  v3 = sub_1B2251B80();
  sub_1B2156958(v3, qword_1ED8618E8);
  sub_1B2156990();
  v4 = sub_1B2252B80();

  return v4;
}

uint64_t sub_1B2156958(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B2156990()
{
  result = qword_1ED85DBC0;
  if (!qword_1ED85DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DBC0);
  }

  return result;
}

uint64_t StatementArguments.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v18 = v0[1];
    v19 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v4 = v19;
    v5 = (v2 + 48);
    while (2)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      v9 = 0xE400000000000000;
      v10 = 1280070990;
      switch(v8)
      {
        case 1:
          v11 = sub_1B22527C0();
          goto LABEL_8;
        case 2:

          v11 = sub_1B2252330();
          goto LABEL_8;
        case 3:
          sub_1B2126638(v7, v6);
          v13 = sub_1B2251DA0();
          MEMORY[0x1B2741EB0](v13);

          MEMORY[0x1B2741EB0](41, 0xE100000000000000);
          sub_1B2113A44(v7, v6, 3);
          v10 = 0x2861746144;
          v9 = 0xE500000000000000;
          goto LABEL_9;
        case 4:
          goto LABEL_9;
        default:
          v11 = sub_1B2252FD0();
LABEL_8:
          v10 = v11;
          v9 = v12;
LABEL_9:
          v14 = *(v19 + 16);
          if (v14 >= *(v19 + 24) >> 1)
          {
            sub_1B2116B10();
          }

          *(v19 + 16) = v14 + 1;
          v15 = v19 + 16 * v14;
          *(v15 + 32) = v10;
          *(v15 + 40) = v9;
          if (--v3)
          {
            continue;
          }

          v1 = v18;
          break;
      }

      break;
    }
  }

  sub_1B2156D18(v1);
  sub_1B2156C88(v4);
  v16 = sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B211A328();
  sub_1B2252250();
  sub_1B21140B8();

  MEMORY[0x1B2741EB0](&qword_1B2254340, v16);

  MEMORY[0x1B2741EB0](93, 0xE100000000000000);

  return 91;
}

void sub_1B2156C88(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B2157100(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B2156D18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v2 = v44;
    v6 = sub_1B2131DCC(v3);
    v7 = 0;
    v8 = v3 + 64;
    v34 = v4;
    v35 = v1;
    v33 = v3 + 72;
    v36 = v3 + 64;
    v37 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v4)
      {
        goto LABEL_29;
      }

      v40 = v4;
      v41 = v2;
      v38 = v5;
      v39 = v7 + 1;
      v10 = (*(v3 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v3 + 56) + 24 * v6;
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      swift_bridgeObjectRetain_n();
      sub_1B2113A20(v15, v14, v16);
      sub_1B2113A20(v15, v14, v16);

      sub_1B2113A44(v15, v14, v16);

      v42 = sub_1B2252330();
      v43 = v17;
      MEMORY[0x1B2741EB0](8250, 0xE200000000000000);
      v18 = 0xE400000000000000;
      v19 = 1280070990;
      switch(v16)
      {
        case 1:
          v19 = sub_1B22527C0();
          goto LABEL_12;
        case 2:

          v19 = sub_1B2252330();
          goto LABEL_12;
        case 3:
          sub_1B2126638(v15, v14);
          v21 = sub_1B2251DA0();
          MEMORY[0x1B2741EB0](v21);

          MEMORY[0x1B2741EB0](41, 0xE100000000000000);
          sub_1B2113A44(v15, v14, 3);
          v19 = 0x2861746144;
          v18 = 0xE500000000000000;
          goto LABEL_13;
        case 4:
          goto LABEL_13;
        default:
          v19 = sub_1B2252FD0();
LABEL_12:
          v18 = v20;
LABEL_13:
          MEMORY[0x1B2741EB0](v19, v18);

          sub_1B2113A44(v15, v14, v16);
          v2 = v41;
          v22 = *(v41 + 16);
          if (v22 >= *(v41 + 24) >> 1)
          {
            sub_1B2116B10();
            v2 = v41;
          }

          *(v2 + 16) = v22 + 1;
          v23 = v2 + 16 * v22;
          *(v23 + 32) = v42;
          *(v23 + 40) = v43;
          v3 = v37;
          v24 = 1 << *(v37 + 32);
          if (v6 >= v24)
          {
            goto LABEL_30;
          }

          v8 = v36;
          v25 = *(v36 + 8 * v9);
          if ((v25 & (1 << v6)) == 0)
          {
            goto LABEL_31;
          }

          if (*(v37 + 36) != v40)
          {
            goto LABEL_32;
          }

          v26 = v25 & (-2 << (v6 & 0x3F));
          if (v26)
          {
            v24 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_25;
          }

          v27 = v9 << 6;
          v28 = v9 + 1;
          v29 = (v33 + 8 * v9);
          break;
      }

      while (v28 < (v24 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_1B21268C8(v6, v40, v38 & 1);
          v24 = __clz(__rbit64(v30)) + v27;
          goto LABEL_25;
        }
      }

      sub_1B21268C8(v6, v40, v38 & 1);
LABEL_25:
      v5 = 0;
      v6 = v24;
      v4 = v34;
      v7 = v39;
      if (v39 == v35)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    JUMPOUT(0x1B21570ECLL);
  }

  return v2;
}

uint64_t static Row.fetchCursor<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B211E230(a1, a2, a3, a4);
  result = v5();
  if (v4)
  {
    return sub_1B2122C74();
  }

  if (!v19[6])
  {
    v14 = sub_1B224B280(result, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19[0]);
    static Row.fetchCursor(_:arguments:adapter:)(v14, v15, v16);
    sub_1B2142D18(v19);
    return sub_1B2122C74();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2157184()
{
  *(v1 - 176) = *(v0 + 80);

  return Row.PrefetchedRowsView.keys.getter();
}

uint64_t sub_1B21571A4()
{
  v1 = sub_1B2252A10();
  v2 = sub_1B211280C(v1);
  v32 = v3;
  v33 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B2111844();
  v8 = v7 - v6;
  v9 = sub_1B22529C0();
  v10 = sub_1B21118A0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = sub_1B2252120();
  v14 = sub_1B211280C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v21 = v20 - v19;
  v22 = type metadata accessor for Configuration();
  v23 = *(v22 + 72);
  v24 = *(v0 + v23);
  if (v24)
  {
    v25 = *(v0 + v23);
  }

  else
  {
    v26 = v22;
    v27 = *(v0 + *(v22 + 68));
    if (!v27)
    {
      sub_1B2111770();
      (*(v16 + 16))(v21, v0 + *(v26 + 64), v13);
      sub_1B2126274();

      sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
      sub_1B2124EF0();
      sub_1B2115144();
      sub_1B2252BC0();
      (*(v32 + 104))(v8, *MEMORY[0x1E69E8090], v33);
      sub_1B2115798();
      return sub_1B2252A70();
    }

    v25 = v27;
    v24 = 0;
  }

  sub_1B2111770();
  v28 = v24;

  v29 = v25;
  sub_1B2252100();
  sub_1B2126274();
  sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
  sub_1B2124EF0();
  sub_1B2115144();
  sub_1B2252BC0();
  (*(v32 + 104))(v8, *MEMORY[0x1E69E8090], v33);
  sub_1B2115798();
  v30 = sub_1B2252A70();

  return v30;
}

void *sub_1B21574A4()
{
  sub_1B2112FB8();
  sub_1B21115FC();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = sub_1B2111F60();
  sqlite3_commit_hook(v2, v3, v4);
  sub_1B2112FB8();
  sub_1B21115FC();
  swift_beginAccess();
  v5 = *(v0 + 16);

  v6 = sub_1B2111F60();
  return sqlite3_rollback_hook(v6, v7, v8);
}

const char *Database.lastErrorMessage.getter()
{
  sub_1B2117330();
  swift_beginAccess();
  result = sqlite3_errmsg(*(v0 + 16));
  if (result)
  {
    return sub_1B22523F0();
  }

  __break(1u);
  return result;
}

uint64_t static DatabaseValueConvertible<>.fetchOne(_:sql:arguments:adapter:)()
{
  sub_1B211A288();
  sub_1B2122C98();
  v4 = *v2;
  v3 = v2[1];
  sub_1B2122784(v5, v8);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B22546B0;
  __src[0] = v1;
  __src[1] = v0;
  __src[2] = v4;
  __src[3] = v3;
  sub_1B2114CC4(__src);
  memcpy((v6 + 32), __src, 0xB8uLL);
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v11 = v6;

  sub_1B2142B5C(v8, v9);
  v12 = 2;
  sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  sub_1B21576B0();
  sub_1B212DE98();
  static DatabaseValueConvertible<>.fetchOne<A>(_:_:)();
  return sub_1B2122400(v9, &qword_1EB7A1C18, &qword_1B2259C90);
}

unint64_t sub_1B21576B0()
{
  result = qword_1ED85DE58;
  if (!qword_1ED85DE58)
  {
    sub_1B2161A20(&qword_1EB7A1C18, &qword_1B2259C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85DE58);
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fetchOne<A>(_:_:)()
{
  sub_1B21229B4();
  result = v1();
  if (!v0)
  {
    sub_1B2112014(result, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12[0]);
    static DatabaseValueConvertible<>.fetchOne(_:arguments:adapter:)();
    return sub_1B2142D18(v12);
  }

  return result;
}

uint64_t SQLRequest.makePreparedRequest(_:forSingleResult:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v5 = sub_1B2114D98(0);
  v6 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v8 = sub_1B2117164(v7, v5, v6);
  *&v19[0] = *(v3 + 40);

  v9 = sub_1B2119120(v8);
  if (v2)
  {
  }

  v11 = v9;
  v12 = v10;

  v13 = *(v3 + 48);
  if (v13 == 2)
  {
    v14 = sub_1B212641C(v11, v12, 0);
  }

  else if (v13)
  {
    v14 = sub_1B212DAFC(v11, v12);
  }

  else
  {
    v14 = Database.cachedStatement(sql:)(v11, v12);
  }

  v16 = v14;

  sub_1B211B048(v19);
  v20 = v19[0];
  v17.values._rawValue = &v20;
  Statement.setArguments(_:)(v17);
  if (v18)
  {
  }

  sub_1B2122784(v3, v19);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0u;
  *a1 = v16;
  result = sub_1B2142B5C(v19, a1 + 8);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

double sub_1B21579F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B212392C(a1, a2);
  *(a2 + 1) = 1;
  *(a2 + 40) = 0;
  if (*(a2 + 88) == 255)
  {
    sub_1B2157A50(*(a2 + 72), *(a2 + 80), 255);
    result = 10.0;
    *(a2 + 72) = xmmword_1B2269B60;
    *(a2 + 88) = 0;
  }

  return result;
}

uint64_t sub_1B2157A50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B2151FF0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B2157A64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B2252120();
  v4 = sub_1B211280C(v3);
  v15 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v10 = v9 - v8;
  v11 = type metadata accessor for Configuration();
  if (*(v1 + *(v11 + 68)))
  {
    sub_1B2252A20();
    return (*(v15 + 32))(a1, v10, v3);
  }

  else
  {
    v13 = *(v15 + 16);
    v14 = v1 + *(v11 + 64);

    return v13(a1, v14, v3);
  }
}

uint64_t sub_1B2157B7C(intptr_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v44 = sub_1B2252A10();
  v42 = *(v44 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B22529C0();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = sub_1B2252120();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B21619D8(&qword_1EB7A3150, &qword_1B2269C08);
  swift_allocObject();
  v4[4] = sub_1B21537D0(MEMORY[0x1E69E7CC0]);
  if (a1 < 1)
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v4[2] = v39;
    v4[3] = a4;

    v4[5] = dispatch_semaphore_create(a1);
    v4[6] = dispatch_group_create();
    v18 = sub_1B2111770();
    v34 = "Pool size must be at least 1";
    v35 = v13;
    v39 = a4;
    v40 = v14;
    v19 = *(v14 + 16);
    v36 = v14 + 16;
    v37 = v18;
    v38 = v19;
    v45 = v17;
    v19(v17, a2, v13);
    sub_1B21619D8(&qword_1EB7A3158, &qword_1B2269C10);
    v20 = *(v11 + 72);
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B22546B0;
    sub_1B22529B0();
    v46 = v22;
    v32[2] = sub_1B21202AC(&qword_1ED85E780, MEMORY[0x1E69E8030]);
    v32[1] = sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
    v32[3] = sub_1B21E8598(&qword_1ED85E788, &qword_1EB7A21A0, &unk_1B225E830);
    sub_1B2252BC0();
    v32[0] = a2;
    v23 = *MEMORY[0x1E69E8090];
    v24 = v43;
    v33 = v5;
    v42 = *(v42 + 104);
    v25 = v44;
    (v42)(v43, v23, v44);
    v26 = v45;
    v5[7] = sub_1B2252A70();
    v27 = v26;
    v28 = v32[0];
    v29 = v35;
    v38(v27, v32[0], v35);
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B2252BC0();
    (v42)(v24, v23, v25);
    v30 = sub_1B2252A70();

    (*(v40 + 8))(v28, v29);
    result = v33;
    *(v33 + 64) = v30;
  }

  return result;
}

_OWORD *sub_1B215833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2122784(a6, v15);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = v12;

  sub_1B2142B5C(v15, v16);
  v19 = 2;
  v13 = v16;
  sub_1B2146A54(v15, a1, 1);
  if (!v6)
  {
    v13 = sub_1B21584D4();
    sub_1B2142D18(v15);
  }

  sub_1B2122400(v16, &qword_1EB7A1C18, &qword_1B2259C90);
  return v13;
}

uint64_t sub_1B21584D4()
{
  sub_1B2117340();
  sub_1B2117F74(&qword_1EB7A1370, &unk_1B2257580, v1, v8);
  sub_1B21619D8(&qword_1EB7A1388, &qword_1B2257E20);
  sub_1B2111904();
  swift_allocObject();
  sub_1B21118E8();

  result = sub_1B2112894(v2, v3);
  if (!v0)
  {
    sub_1B212216C();
    v5 = sub_1B2158588();
    v7 = v6;

    if (v7 == 1)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t sub_1B2158588()
{
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1B2131988();
  v3 = sub_1B2122D50();
  result = sub_1B21585FC(v3);
  if (!v1 && v4 == 1)
  {
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B21585FC(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v7 = sub_1B211497C();
    Database.statementWillExecute(_:)(v7);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v8 = sub_1B2115468();
    sub_1B21586E0(v8, v9);
    if (!v2)
    {

      return v10;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5);
  sub_1B211DA88();

  if (!v1)
  {
    return 0;
  }

  return result;
}

const unsigned __int8 *sub_1B2158728@<X0>(sqlite3_stmt *a1@<X0>, const unsigned __int8 **a2@<X8>)
{
  result = sub_1B21586FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

const unsigned __int8 *sub_1B2158754(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  if (sqlite3_column_type(a1, v3) == 5)
  {
    return 0;
  }

  result = sqlite3_column_text(a1, v3);
  if (result)
  {
    return sub_1B2252400();
  }

  __break(1u);
  return result;
}

void sub_1B21587AC()
{
  v1 = type metadata accessor for Configuration();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DatabasePool.configuration.getter(v4);
  v5 = v4[25];
  sub_1B2133D70(v4);
  if (v5 == 1)
  {
    v6 = [objc_opt_self() defaultCenter];
    if (qword_1EB7A0D88 != -1)
    {
      swift_once();
    }

    [v6 addObserver:v0 selector:sel_suspend_ name:qword_1EB7A3338 object:0];
    if (qword_1EB7A0D90 != -1)
    {
      swift_once();
    }

    [v6 addObserver:v0 selector:sel_resume_ name:qword_1EB7A3340 object:0];
  }
}

uint64_t sub_1B2158948(uint64_t a1)
{
  v2 = a1;
  v3 = (v1 + 8);
  v4 = *(v1 + 8);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    *&v26 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v6 = v26;
    v7 = (v4 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      *&v26 = v6;
      v10 = *(v6 + 16);
      v11 = *(v6 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1B2116B10();
        v6 = v26;
      }

      *(v6 + 16) = v10 + 1;
      v12 = v6 + 16 * v10;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v7 += 5;
      --v5;
    }

    while (v5);
  }

  v25 = *v2;
  v26 = v25;
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v25;

  v13 = sub_1B2158BF0(sub_1B2158ED4, &v21, v6);

  if (v13)
  {
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_1B2252CD0();

    *&v25 = 0xD00000000000001ELL;
    *(&v25 + 1) = 0x80000001B226FCB0;
    v24 = v26;
    v20 = sub_1B2252330();
    MEMORY[0x1B2741EB0](v20);

    v23 = 0;
    v22 = 320;
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    sub_1B2158CA0(&v26);
    sub_1B2158CF4();
    v14 = *(*v3 + 16);
    sub_1B2158E08();
    v15 = *(v2 + 32);
    v16 = *v3;
    *(v16 + 16) = v14 + 1;
    v17 = v16 + 40 * v14;
    v18 = *(v2 + 16);
    *(v17 + 32) = *v2;
    *(v17 + 48) = v18;
    *(v17 + 64) = v15;
    *v3 = v16;
    sub_1B2158E58(&v26, &v25);
  }

  return result;
}

uint64_t DatabaseMigrator.registerMigration(_:foreignKeyChecks:migrate:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  if (*(v5 + 1))
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v10[0] = a1;
  v10[1] = a2;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v11 = v8;
  v12 = a4;
  v13 = a5;
  return sub_1B2158948(v10);
}

BOOL sub_1B2158BF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1B2158CF4()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B2158D58();
    *v1 = v4;
  }
}

void sub_1B2158D58()
{
  sub_1B2114660();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2111EF8(v6);
    if (v3)
    {
      sub_1B2113B10(v9, v10, v11, v12, v13, v14);
      v15 = sub_1B21169D8();
      v16 = j__malloc_size(v15);
      sub_1B2117B94(v16);
      if (v2)
      {
LABEL_9:
        v17 = sub_1B2117B84();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v7)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2158E08()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B21220F0();
    sub_1B2158D58();
    *v0 = v4;
  }
}

uint64_t sub_1B2158F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B22531F0() & 1;
  }
}

char *sub_1B2158F60(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

uint64_t DatabaseMigrator.migrate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = v2[1];
    v7 = *v2;
    v8 = (v3 + 40 * v4);
    v10 = *(v8 - 1);
    v9 = *v8;
    v11 = v8[3];
    ObjectType = swift_getObjectType();
    v20 = &v18;
    MEMORY[0x1EEE9AC00](ObjectType);
    v14[16] = v7;
    v14[17] = v6;
    v15 = v3;
    v16 = v10;
    v17 = v9;
    v12 = *(a2 + 32);

    v12(sub_1B2159AA0, v14, MEMORY[0x1E69E7CA8] + 8, ObjectType, a2);
  }

  return result;
}

uint64_t DatabasePool.barrierWriteWithoutTransaction<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(v3 + 24))
  {
    MEMORY[0x1EEE9AC00](result);
    v9[2] = v6;
    v9[3] = v3;
    v9[4] = v7;
    v9[5] = v8;

    sub_1B2159160(sub_1B2159384, v9, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2159160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v5 = v4;
  v20 = a2;
  v8 = sub_1B22520F0();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 56);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v15 = *(v9 + 72);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B22546B0;
  sub_1B22520E0();
  v26 = v17;
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  v22 = a3;
  v23 = v5;
  v24 = a1;
  v25 = v20;
  sub_1B2252A40();
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_1B215932C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v0[3] + 48);
  v4 = sub_1B22529A0();
  return v1(v4);
}

void sub_1B2159384()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[3] + 16);
  sub_1B2111304();
}

uint64_t sub_1B21599A8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v11 = a2 & 0x100;
  if (a2)
  {
    v13[0] = 0;
    v15 = 0;

    result = sub_1B2236ABC(&v15, a1, v11 | 1u, a3, a1, v13);
    if (v5)
    {
      return result;
    }

    if (v13[0])
    {
      sub_1B2236D30();
    }
  }

  v13[0] = v9 & 1;
  v13[1] = HIBYTE(v11);
  v14 = a3;
  return sub_1B21593B0(a1, a4, a5);
}

uint64_t sub_1B2159A74()
{
  sub_1B21162A4();
  if (v4)
  {
    v3 = 0;
  }

  return sub_1B21599A8(v1, v3 | v2, v0[3], v0[4], v0[5]);
}

uint64_t sub_1B2159AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2122784(a6, v14);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  sub_1B2114CC4(__src);
  memcpy((v11 + 32), __src, 0xB8uLL);
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v11;

  sub_1B2142B5C(v14, v15);
  v18 = 2;
  v12 = sub_1B2159F80(a1, v15);
  sub_1B212AC5C(v15, &qword_1EB7A1C18, &qword_1B2259C90);
  return v12;
}

uint64_t DatabaseMigrator.appliedIdentifiers(_:)(uint64_t a1)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v3 = sub_1B2159AB8(a1, 0xD000000000000026, 0x80000001B226FB00, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v9);
  v4 = v1;
  if (v1)
  {
    sub_1B212AC5C(v9, &qword_1EB7A1370, &unk_1B2257580);

    v5._countAndFlagsBits = 0x67696D5F62647267;
    v5._object = 0xEF736E6F69746172;
    v6 = Database.tableExists(_:)(v5);
    if (v7)
    {
    }

    else if (!v6)
    {

      return MEMORY[0x1E69E7CD0];
    }

    swift_willThrow();
  }

  else
  {
    v2 = v3;
    sub_1B212AC5C(v9, &qword_1EB7A1370, &unk_1B2257580);
  }

  return v2;
}

void DatabaseMigrator.appliedMigrations(_:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = DatabaseMigrator.appliedIdentifiers(_:)(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = *(v3 + 16);
    if (v6)
    {
      v33 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v7 = v33;
      v8 = (v3 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        v12 = *(v33 + 16);
        v11 = *(v33 + 24);
        v13 = v12 + 1;

        if (v12 >= v11 >> 1)
        {
          sub_1B2112D3C();
          sub_1B2116B10();
        }

        *(v33 + 16) = v13;
        v14 = v33 + 16 * v12;
        *(v14 + 32) = v9;
        *(v14 + 40) = v10;
        v8 += 5;
        --v6;
      }

      while (v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      v13 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v31 = v13;
    while (1)
    {
LABEL_10:
      if (v15 == v13)
      {

        return;
      }

      v17 = v15;
      if (v15 >= *(v7 + 16))
      {
        break;
      }

      ++v15;
      if (*(v5 + 16))
      {
        v18 = (v7 + 32 + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v5 + 40);
        sub_1B2253420();

        sub_1B2252370();
        v22 = sub_1B2253470();
        v23 = ~(-1 << *(v5 + 32));
        do
        {
          v24 = v22 & v23;
          if (((*(v5 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
          {

            v13 = v31;
            goto LABEL_10;
          }

          v25 = (*(v5 + 48) + 16 * v24);
          if (*v25 == v20 && v25[1] == v19)
          {
            break;
          }

          v27 = sub_1B22531F0();
          v22 = v24 + 1;
        }

        while ((v27 & 1) == 0);
        v32 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v16 + 16);
          sub_1B2116B10();
        }

        v29 = *(v16 + 16);
        if (v29 >= *(v16 + 24) >> 1)
        {
          sub_1B2116B10();
        }

        *(v16 + 16) = v29 + 1;
        v30 = v16 + 16 * v29;
        *(v30 + 32) = v20;
        *(v30 + 40) = v19;
        v13 = v31;
        v15 = v32;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B2159F80(uint64_t a1, uint64_t a2)
{
  sub_1B2146A54(&v9);
  if (!v2)
  {
    sub_1B2122784(&v10, v8);
    sub_1B21619D8(qword_1EB7A2350, &unk_1B22604F0);
    swift_allocObject();

    v6 = sub_1B215A0E0(v4, 0, 0, v8);
    v11 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(v6 + 24) == 1)
    {

      a2 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v7 = *(v6 + 16);

      sub_1B215A300(v7);
      *(v6 + 24) = 1;

      a2 = v11;
    }

    sub_1B2142D18(&v9);
  }

  return a2;
}

uint64_t sub_1B215A0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *v4;
  *(v4 + 24) = 0;
  v4[2] = a1;
  v12 = v11;
  sub_1B2122784(a4, &v19);
  if (!v20)
  {

    sub_1B212AC5C(&v19, &qword_1EB7A1370, &unk_1B2257580);
    *(v6 + 7) = 0;
    goto LABEL_8;
  }

  v25 = v12;
  sub_1B2134D5C(&v19, v22);
  v13 = v23;
  v14 = v24;
  sub_1B21139A0(v22, v23);
  v20 = type metadata accessor for Statement();
  v21 = &protocol witness table for Statement;
  *&v19 = a1;
  swift_retain_n();
  v15 = sub_1B21B2B3C(0, &v19, v13, v14);
  if (v5)
  {
    sub_1B211A378(a2);

    sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(&v19);
    sub_1B2113208(v22);
    v16 = v6[2];

    swift_deallocPartialClassInstance();
    return v6;
  }

  v17 = v15;
  result = sub_1B2113208(&v19);
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v17 <= 0x7FFFFFFF)
  {
    *(v6 + 7) = v17;
    sub_1B2113208(v22);
LABEL_8:
    v22[0] = a2;
    v22[1] = a3;
    sub_1B2119E50(v22);
    sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(a2);
    if (v5)
    {
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B215A300(uint64_t a1)
{
  type metadata accessor for SchedulingWatchdog();
  v3 = *(a1 + 80);
  v4 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v4))
  {

    v5 = *(a1 + 16);
    if (!sqlite3_stmt_busy(v5))
    {
      swift_unownedRetainStrong();
      v6 = sub_1B212D130();
      Database.statementWillExecute(_:)(v6);
      if (v1)
      {
LABEL_10:
      }
    }

    while (1)
    {
      v7 = sqlite3_step(v5);
      if (v7 != 100)
      {
        break;
      }

      sub_1B215A47C(v5);

      sub_1B2139304();
    }

    v8 = v7;
    if (v7 == 101)
    {
      swift_unownedRetainStrong();
      v9 = sub_1B212D130();
      Database.statementDidExecute(_:)(v9);
    }

    else
    {
      swift_unownedRetainStrong();
      Database.statementDidFail(_:withResultCode:)(a1, v8);
    }

    goto LABEL_10;
  }

  sub_1B2112EA0();
  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B215A47C(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  v4 = v3;
  if (sqlite3_column_type(a1, v3) == 5)
  {
    goto LABEL_7;
  }

  if (!sqlite3_column_text(a1, v4))
  {
    __break(1u);
LABEL_7:
    v6 = *(v1 + 16);
    v7 = v6[2];
    v8 = Statement.columnNames.getter();
    sub_1B2113624(v7, v8, v9, v10, v11, v12, v13, v14, v27, v28, v29, v30, v31, v32, SDWORD2(v32), SHIDWORD(v32), v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1));
    v16 = v15;
    v18 = v17;
    type metadata accessor for Row();
    v19 = swift_allocObject();
    v20 = sub_1B211EF2C(v16, v18, v19);
    v21 = Statement.sql.getter();
    v22 = v6[13];
    v23 = v6[14];
    *&v38 = v20;
    *(&v38 + 1) = v4;
    *&v39 = 0;
    BYTE8(v39) = 1;
    *&v40 = v21;
    *(&v40 + 1) = v24;
    *&v41 = v22;
    *(&v41 + 1) = v23;
    sub_1B21A2FC0();
    swift_allocError();
    v26 = v25;
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v37 = v41;

    sub_1B21320F0(a1, v4, &v32);
    v29 = v32;
    LOBYTE(v30) = v33;
    sub_1B2183238(MEMORY[0x1E69E6158], &v34, &v29, v26);
    sub_1B2113A44(v29, *(&v29 + 1), v30);
    sub_1B218450C(&v38);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  return sub_1B2252400();
}

char *sub_1B215A618(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

uint64_t sub_1B215A638(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    v4 = (v1 + 16 * v2);
    v5 = *v4;
    v6 = v4[1];
  }

  return sub_1B2112FD0();
}

uint64_t sub_1B215A67C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(v3 + 8);
  v7 = *(v6 + 16);
  v45 = v6;
  v8 = (v6 + 64);
  v46 = -v7;
  v47 = a3;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = -1;
  v44 = result;
  while (v46 + v10 != -1)
  {
    if (++v10 >= *(v45 + 16))
    {
      goto LABEL_36;
    }

    v12 = *(v8 - 4);
    v11 = *(v8 - 3);
    LODWORD(v48) = *(v8 - 16);
    v13 = *(v8 - 1);
    v14 = *v8;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = *(v9 + 16);
      sub_1B215AA98();
      v9 = v21;
    }

    v15 = *(v9 + 16);
    v16 = v9;
    if (v15 >= *(v9 + 24) >> 1)
    {
      sub_1B215AA98();
      v16 = v22;
    }

    *(v16 + 16) = v15 + 1;
    v9 = v16;
    v17 = v16 + 40 * v15;
    *(v17 + 32) = v12;
    *(v17 + 40) = v11;
    *(v17 + 48) = v48;
    *(v17 + 56) = v13;
    *(v17 + 64) = v14;
    v5 = v44;
    if (v12 == v44 && v11 == a2)
    {

      break;
    }

    v8 += 5;
    v19 = sub_1B22531F0();

    if (v19)
    {
      break;
    }
  }

  sub_1B215AAC8(v9, &v53);
  v23 = v54;
  if (!v54)
  {
    goto LABEL_21;
  }

  v24 = v53;
  v55[0] = v53;
  v55[1] = v54;

  if (v24 == v5 && v23 == a2)
  {
    goto LABEL_22;
  }

  v26 = sub_1B22531F0();
  result = sub_1B2158CA0(v55);
  if ((v26 & 1) == 0)
  {
LABEL_21:
    sub_1B2252CD0();

    v51 = 0xD000000000000015;
    v52 = 0x80000001B226FC90;
    v49 = v5;
    v50 = a2;

    v27 = sub_1B2252330();
    MEMORY[0x1B2741EB0](v27);

    v43 = 0;
    v42 = 337;
    sub_1B2252EC0();
    __break(1u);
LABEL_22:
    result = sub_1B2158CA0(v55);
  }

  v28 = 0;
  v48 = *(v9 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  v46 = v9;
LABEL_24:
  for (i = 40 * v28; ; i += 40)
  {
    if (v48 == v28)
    {

      return v45;
    }

    if (v28 >= *(v9 + 16))
    {
      break;
    }

    v30 = v9 + i;
    v31 = *(v9 + i + 32);
    v32 = *(v9 + i + 40);
    v33 = *(v9 + i + 48);
    v35 = *(v30 + 56);
    v34 = *(v30 + 64);
    v51 = v31;
    v52 = v32;
    MEMORY[0x1EEE9AC00](result);
    v42 = &v51;

    if (!sub_1B2158BF0(sub_1B2158ED4, &v41, v47))
    {
      v36 = v45;
      result = swift_isUniquelyReferenced_nonNull_native();
      v49 = v36;
      if ((result & 1) == 0)
      {
        result = sub_1B216F010(0, *(v45 + 16) + 1, 1);
        v45 = v49;
      }

      v38 = *(v45 + 16);
      v37 = *(v45 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_1B216F010(v37 > 1, v38 + 1, 1);
        v45 = v49;
      }

      ++v28;
      v39 = v45;
      *(v45 + 16) = v38 + 1;
      v40 = v39 + 40 * v38;
      *(v40 + 32) = v31;
      *(v40 + 40) = v32;
      *(v40 + 48) = v33;
      *(v40 + 56) = v35;
      *(v40 + 64) = v34;
      v9 = v46;
      goto LABEL_24;
    }

    ++v28;
    v9 = v46;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1B215AAC8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result + 40 * v3;
    v6 = *(v4 - 8);
    v5 = *v4;
    v7 = *(v4 + 8);
    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v9;
  a2[4] = v8;
  return result;
}

uint64_t DatabaseMigrator.hasBeenSuperseded(_:)(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = DatabaseMigrator.appliedIdentifiers(_:)(a1);
  if (!v2)
  {
    v6 = *(v4 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v8 = v5;
      v28[0] = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v7 = v28[0];
      v9 = (v4 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v28[0] = v7;
        v13 = *(v7 + 16);
        v12 = *(v7 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1B2112D3C();
          sub_1B2116B10();
          v7 = v28[0];
        }

        *(v7 + 16) = v13 + 1;
        v14 = v7 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        v9 += 5;
        --v6;
      }

      while (v6);
      v5 = v8;
    }

    v15 = v5 + 56;
    v16 = 1 << *(v5 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v5 + 56);
    v19 = (v16 + 63) >> 6;
    v29 = v5;

    v21 = 0;
    while (v18)
    {
      v22 = v21;
LABEL_17:
      v23 = (*(v29 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v18)))));
      v24 = v23[1];
      v18 &= v18 - 1;
      v28[0] = *v23;
      v28[1] = v24;
      MEMORY[0x1EEE9AC00](v20);
      v27[2] = v28;

      v25 = sub_1B2158BF0(sub_1B2158EB4, v27, v7);

      if (!v25)
      {
        v3 = 1;
        goto LABEL_20;
      }
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        JUMPOUT(0x1B215AD64);
      }

      if (v22 >= v19)
      {
        break;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v21 = v22;
        goto LABEL_17;
      }
    }

    v3 = 0;
LABEL_20:
  }

  return v3 & 1;
}

uint64_t sub_1B215AD8C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1B215AE08()
{
  v1 = *(v0 + 24);

  sub_1B2112820();

  return swift_deallocObject();
}

uint64_t sub_1B215AE38()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1B215AE78()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[10];

  v3 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1B215AF34()
{
  v1 = *(v0 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v2 = *(sub_1B2253480() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215B04C()
{
  v1 = v0[9];

  v2 = v0[11];

  v3 = v0[12];
  swift_unknownObjectRelease();
  v4 = v0[14];

  return swift_deallocObject();
}

uint64_t sub_1B215B09C()
{
  v1 = v0[9];

  v2 = v0[11];

  v3 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1B215B0E4()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1B215B11C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

BOOL sub_1B215B16C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B2167600();
  *a2 = result;
  return result;
}

__n128 sub_1B215B1D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215B220()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215B350()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B215B414()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B215B4D4()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[9];

  if (v0[10])
  {
    v4 = v0[11];
  }

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  v9 = v0[17];

  if (v0[19])
  {
    v10 = v0[20];
  }

  if (v0[21])
  {
    v11 = v0[22];
  }

  return swift_deallocObject();
}

uint64_t sub_1B215B574()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];

  if (v0[11])
  {
    v4 = v0[12];
  }

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[16];

  v8 = v0[17];

  v9 = v0[18];

  if (v0[20])
  {
    v10 = v0[21];
  }

  if (v0[22])
  {
    v11 = v0[23];
  }

  return swift_deallocObject();
}

uint64_t sub_1B215B614()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B215B64C()
{
  sub_1B2114F84();
  sub_1B214DF8C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344));

  return swift_deallocObject();
}

uint64_t sub_1B215B6FC()
{
  sub_1B2113208((v0 + 16));
  sub_1B2113208((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1B215B7A8()
{
  v1 = v0[2];

  sub_1B2113208(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1B215B808@<X0>(uint64_t a1@<X8>)
{
  result = static UInt.fromDatabaseValue(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

sqlite3_int64 sub_1B215B838@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  *a3 = result & ~(result >> 63);
  *(a3 + 8) = result < 0;
  return result;
}

uint64_t sub_1B215B8C4()
{
  swift_getAssociatedTypeWitness();
  sub_1B2144060();

  return sub_1B2252600();
}

uint64_t sub_1B215B994()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1B215BA18()
{
  v1 = *(v0 + 40);

  sub_1B2117A4C();

  return swift_deallocObject();
}

uint64_t sub_1B215BA48()
{
  v1 = *(v0 + 32);

  sub_1B2114ED8();

  return swift_deallocObject();
}

uint64_t sub_1B215BAA4()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  sub_1B2117A4C();

  return swift_deallocObject();
}

uint64_t sub_1B215BB80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1B2117C44();

  return swift_deallocObject();
}

uint64_t sub_1B215BBBC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1B2117C44();

  return swift_deallocObject();
}

__n128 sub_1B215BC98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B215BCE0()
{
  v1 = *(v0 + 16);

  sub_1B2115660();

  return swift_deallocObject();
}

uint64_t sub_1B215BDC8()
{
  swift_weakDestroy();
  sub_1B2115660();

  return swift_deallocObject();
}

uint64_t sub_1B215BDFC()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B215BE38()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1B215BEDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215BF20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = FTS5TableDefinition.content.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B215BF78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = FTS5TableDefinition.contentRowID.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B215C0A8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B215C0E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215C118()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215C150()
{
  v1 = v0[2];
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[8];

  if (v0[9])
  {

    v6 = v0[10];
  }

  (*(v2 + 8))(v0 + ((v3 + 89) & ~v3), v1);

  return swift_deallocObject();
}

__n128 sub_1B215C228(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B22531F0();
  }
}

uint64_t sub_1B215C31C()
{
  if (v0[4])
  {
    v1 = v0[5];
  }

  if (v0[6])
  {
    v2 = v0[7];
  }

  sub_1B2118030();

  return swift_deallocObject();
}