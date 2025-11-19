uint64_t sub_228729760(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2287C9B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228726AE8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_228727D90();
      goto LABEL_12;
    }

    sub_228728930(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28]);
  v15 = sub_2287CB1B0();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_22872AD74(&qword_280DE3428, MEMORY[0x277D11E28]);
      v23 = sub_2287CB200();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2287CBD20();
  __break(1u);
  return result;
}

void sub_228729A04(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228726E38(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_228727FB8();
      goto LABEL_12;
    }

    sub_228728C40(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_2287CBD80();
  sub_2287C9C90();
  v11 = sub_2287CBDB0();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_2287C9C80();

      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = a1;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2287CBD20();
  __break(1u);
}

void sub_228729B74(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2287268CC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_228727C3C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_228728728(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_2287CB7E0();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_228703004(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_2287CB7F0();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2287CBD20();
  __break(1u);
}

void sub_228729D1C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2287270B4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_228728134();
      a2 = v7;
      goto LABEL_12;
    }

    sub_228728E90(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2287CBD80();
  MEMORY[0x22AABF460](a1);
  v10 = sub_2287CBDB0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for HKDisplayCategoryIdentifier(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2287CBD20();
  __break(1u);
}

void *sub_228729E78(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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

void *sub_228729F74(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_22872A0CC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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

void *sub_22872A220(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22872A394(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL _s18HealthPlatformCore20ModelTrainingCommandV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_2287C97C0();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  sub_22872C944();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  if (*a1)
  {
    v18 = 0x657461645F746573;
  }

  else
  {
    v18 = 7364980;
  }

  if (*a1)
  {
    v19 = 0xE800000000000000;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  if (*a2)
  {
    v20 = 0x657461645F746573;
  }

  else
  {
    v20 = 7364980;
  }

  if (*a2)
  {
    v21 = 0xE800000000000000;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  if (v18 == v20 && v19 == v21)
  {
  }

  else
  {
    v22 = sub_2287CBD00();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 16);
  v24 = *(a2 + 2);
  if (v23)
  {
    if (!v24 || (*(a1 + 8) != *(a2 + 1) || v23 != v24) && (sub_2287CBD00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(type metadata accessor for ModelTrainingCommand(0) + 24);
  v26 = *(v13 + 48);
  v27 = MEMORY[0x277CC9578];
  sub_22872ADBC(a1 + v25, v16, &qword_280DE3A98, MEMORY[0x277CC9578]);
  sub_22872ADBC(&a2[v25], &v16[v26], &qword_280DE3A98, v27);
  v28 = v34;
  v29 = *(v34 + 48);
  if (v29(v16, 1, v4) == 1)
  {
    if (v29(&v16[v26], 1, v4) == 1)
    {
      sub_22872AF38(v16, &qword_280DE3A98, MEMORY[0x277CC9578]);
      return 1;
    }

    goto LABEL_29;
  }

  sub_22872ADBC(v16, v11, &qword_280DE3A98, MEMORY[0x277CC9578]);
  if (v29(&v16[v26], 1, v4) == 1)
  {
    (*(v28 + 8))(v11, v4);
LABEL_29:
    sub_22872AABC(v16, sub_22872C944);
    return 0;
  }

  (*(v28 + 32))(v7, &v16[v26], v4);
  sub_22872AD74(&qword_27D850CF8, MEMORY[0x277CC9578]);
  v31 = sub_2287CB200();
  v32 = *(v28 + 8);
  v32(v7, v4);
  v32(v11, v4);
  sub_22872AF38(v16, &qword_280DE3A98, MEMORY[0x277CC9578]);
  return (v31 & 1) != 0;
}

uint64_t sub_22872A948(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22872C4EC();
  result = MEMORY[0x22AABEB60](v2, MEMORY[0x277D121B8], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_228723F40(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22872A9BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AABEB60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2287240C8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22872AA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22872AABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22872AB1C()
{
  result = qword_27D850BB0;
  if (!qword_27D850BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BB0);
  }

  return result;
}

unint64_t sub_22872AB70()
{
  result = qword_27D850BC0;
  if (!qword_27D850BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BC0);
  }

  return result;
}

unint64_t sub_22872ABC4()
{
  result = qword_27D850BD0;
  if (!qword_27D850BD0)
  {
    sub_22872C8E0(255, &qword_27D850BC8, type metadata accessor for ModelTrainingCommand, MEMORY[0x277D83940]);
    sub_22872AD74(&qword_27D850BD8, type metadata accessor for ModelTrainingCommand);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BD0);
  }

  return result;
}

unint64_t sub_22872AC9C()
{
  result = qword_27D850BE8;
  if (!qword_27D850BE8)
  {
    sub_22872C8E0(255, &qword_27D850BE0, type metadata accessor for ModelTrainingElement, MEMORY[0x277D83940]);
    sub_22872AD74(&qword_27D850BF0, type metadata accessor for ModelTrainingElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BE8);
  }

  return result;
}

uint64_t sub_22872AD74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22872ADBC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22872C8E0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22872AE3C()
{
  result = qword_27D850C00;
  if (!qword_27D850C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C00);
  }

  return result;
}

unint64_t sub_22872AE90()
{
  result = qword_27D850C08;
  if (!qword_27D850C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C08);
  }

  return result;
}

unint64_t sub_22872AEE4()
{
  result = qword_27D850C18;
  if (!qword_27D850C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C18);
  }

  return result;
}

uint64_t sub_22872AF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22872C8E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22872AFA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22872C8E0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22872B028(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22872C9D8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22872B0A4()
{
  result = qword_27D850C48;
  if (!qword_27D850C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C48);
  }

  return result;
}

void sub_22872B130()
{
  sub_22872C9D8(319, &qword_280DE3650, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22872C8E0(319, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22872B260()
{
  sub_22872B4B0(319, &qword_27D850C70, &qword_27D850C20, MEMORY[0x277D83B88]);
  if (v0 <= 0x3F)
  {
    sub_2287C9B20();
    if (v1 <= 0x3F)
    {
      sub_22872C9D8(319, &qword_27D850C78, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22872C8E0(319, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22872C8E0(319, &qword_280DE33C8, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2287C97C0();
            if (v5 <= 0x3F)
            {
              sub_22872B4B0(319, &qword_27D850C80, &qword_280DE3A00, MEMORY[0x277D837D0]);
              if (v6 <= 0x3F)
              {
                sub_22872C8E0(319, &qword_280DE33E0, MEMORY[0x277D11FA8], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_22872C8E0(319, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
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

void sub_22872B4B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_22872C9D8(255, a3, a4, MEMORY[0x277D83940]);
    v5 = sub_2287CB820();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ModelTrainingElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelTrainingElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelTrainingCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelTrainingCommand.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ModelTrainingEvent.EventKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelTrainingEvent.EventKind(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22872B92C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22872B974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_22872B9D8()
{
  result = qword_27D850C88;
  if (!qword_27D850C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C88);
  }

  return result;
}

unint64_t sub_22872BA30()
{
  result = qword_27D850C90;
  if (!qword_27D850C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C90);
  }

  return result;
}

unint64_t sub_22872BA88()
{
  result = qword_27D850C98;
  if (!qword_27D850C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C98);
  }

  return result;
}

unint64_t sub_22872BAE0()
{
  result = qword_27D850CA0;
  if (!qword_27D850CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CA0);
  }

  return result;
}

unint64_t sub_22872BB38()
{
  result = qword_27D850CA8;
  if (!qword_27D850CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CA8);
  }

  return result;
}

unint64_t sub_22872BB90()
{
  result = qword_27D850CB0;
  if (!qword_27D850CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CB0);
  }

  return result;
}

unint64_t sub_22872BBE8()
{
  result = qword_27D850CB8;
  if (!qword_27D850CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CB8);
  }

  return result;
}

unint64_t sub_22872BC40()
{
  result = qword_27D850CC0;
  if (!qword_27D850CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CC0);
  }

  return result;
}

unint64_t sub_22872BC98()
{
  result = qword_27D850CC8;
  if (!qword_27D850CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CC8);
  }

  return result;
}

uint64_t sub_22872BCEC(uint64_t a1)
{
  v2 = sub_2287C9B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28]);
  result = MEMORY[0x22AABEB60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2287244B0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22872BEB8(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2287CB920())
  {
    v12 = sub_228703004(0, a2, a3);
    v13 = sub_22872C220(a4, a2, a3);
    result = MEMORY[0x22AABEB60](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AABF120](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_2287CB920();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22872C010(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22872C350();
  result = MEMORY[0x22AABEB60](v2, MEMORY[0x277D11E90], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_228724790(&v8, v6);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_22872C0C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2287CBD00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_2287CBD00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2287CBD00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22872C1D4()
{
  v0 = sub_2287CBC10();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22872C220(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_228703004(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22872C270()
{
  result = qword_27D850CE0;
  if (!qword_27D850CE0)
  {
    sub_22872C2D8();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D850CE0);
  }

  return result;
}

void sub_22872C2D8()
{
  if (!qword_280DE0020)
  {
    sub_228703004(255, &qword_280DE39C0, 0x277CCABB0);
    v0 = sub_2287CB190();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0020);
    }
  }
}

unint64_t sub_22872C350()
{
  result = qword_280DE11F0;
  if (!qword_280DE11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE11F0);
  }

  return result;
}

void sub_22872C3A4()
{
  if (!qword_280DE18F0)
  {
    sub_2287C9B20();
    sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28]);
    v0 = sub_2287CBA00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18F0);
    }
  }
}

unint64_t sub_22872C438()
{
  result = qword_27D850CE8;
  if (!qword_27D850CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CE8);
  }

  return result;
}

void sub_22872C48C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_22872C7C4(255, a3);
    v4 = sub_2287CBCD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22872C4EC()
{
  result = qword_280DE1190;
  if (!qword_280DE1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1190);
  }

  return result;
}

void sub_22872C540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_22872C5A8()
{
  if (!qword_280DE1820)
  {
    sub_22872C6F4(255, &qword_280DE19C0, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v0 = sub_2287CBCD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1820);
    }
  }
}

void sub_22872C62C()
{
  if (!qword_280DE18D8)
  {
    type metadata accessor for HKDisplayCategoryIdentifier(255);
    sub_22872AD74(&qword_280DE1950, type metadata accessor for HKDisplayCategoryIdentifier);
    v0 = sub_2287CBA00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18D8);
    }
  }
}

void sub_22872C6F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_22872C748()
{
  if (!qword_280DE1A38)
  {
    sub_228703004(255, &qword_280DE39B8, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE1A38);
    }
  }
}

uint64_t sub_22872C7C4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22872C854(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_228703004(255, a3, a4);
    sub_22872C220(a5, a3, a4);
    v9 = sub_2287CBA00();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22872C8E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22872C944()
{
  if (!qword_27D850CF0)
  {
    sub_22872C8E0(255, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D850CF0);
    }
  }
}

void sub_22872C9D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_22872CA40(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2287CBB60();

    if (v4)
    {
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_228756BD4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_22872CB04@<X0>(uint64_t *a1@<X8>)
{
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0]);
  *a1 = sub_2287CB120();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  result = sub_2287CB120();
  a1[1] = result;
  return result;
}

uint64_t sub_22872CC30()
{
  sub_228739D88();
}

uint64_t sub_22872CC58(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id sub_22872CCF8()
{
  v0 = sub_228739DBC();

  return v0;
}

void sub_22872CD24(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_22872CDDC()
{
  sub_228739DF0();
}

uint64_t sub_22872CE04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.__allocating_init(sourceProfilePublisher:country:interactiveSharableModelPublisher:isLaunchGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_228739ED0(a2, v11 + qword_280DE6258);
  *(v11 + qword_280DE6260) = a3;
  *(v11 + qword_280DE6268) = a4;
  return v11;
}

uint64_t GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.init(sourceProfilePublisher:country:interactiveSharableModelPublisher:isLaunchGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  sub_228739ED0(a2, v4 + qword_280DE6258);
  *(v4 + qword_280DE6260) = a3;
  *(v4 + qword_280DE6268) = a4;
  return v4;
}

uint64_t GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.deinit()
{
  v1 = *(v0 + 16);

  sub_22873A0FC(v0 + qword_280DE6258, sub_228739E24);
  v2 = *(v0 + qword_280DE6260);

  return v0;
}

uint64_t GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.__deallocating_deinit()
{
  GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = sub_2287CACC0();
  v16 = type metadata accessor for DispatchQueueOrchestrationScheduler();
  swift_allocObject();
  v17 = DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(a4 & 1, v15, 3);
  sub_2287010E4(a1, v25);
  sub_2287010E4(a5, v24);
  v23[4] = &protocol witness table for DispatchQueueOrchestrationScheduler;
  v23[3] = v16;
  v22[4] = &protocol witness table for DispatchQueueOrchestrationScheduler;
  v23[0] = v17;
  v22[3] = v16;
  v22[0] = v17;
  v18 = *(v8 + 328);

  v19 = v18(v25, a2, a3, a4 & 1, v24, a6, a7, v23, v22);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v19;
}

uint64_t GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  GeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(a1, a2, a3, a4 & 1, a5, a6, a7, a8, a9);
  return v17;
}

void *GeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v76 = a8;
  v87 = a7;
  v80 = a6;
  v88 = a5;
  LODWORD(v70) = a4;
  v69 = a3;
  v68 = a2;
  v89 = a1;
  v74 = a9;
  v86 = *v9;
  v11 = sub_2287CB6A0();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v82 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v86 + 80);
  v15 = *(v86 + 88);
  type metadata accessor for GeneratorPipelineManager.GenerationState();
  v16 = sub_2287CAD40();
  v17 = sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
  v62 = v17;
  WitnessTable = swift_getWitnessTable();
  v79 = WitnessTable;
  v78 = sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78);
  *&v91 = v16;
  *(&v91 + 1) = v17;
  v65 = v16;
  v92 = WitnessTable;
  v93 = v78;
  v81 = sub_2287CAC20();
  v83 = *(v81 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v60 - v20;
  v73 = sub_2287C9DF0();
  v71 = *(v73 - 8);
  v21 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v67 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2287C9E70();
  v72 = *(v75 - 8);
  v23 = *(v72 + 64);
  MEMORY[0x28223BE20](v75);
  v66 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2287CB6B0();
  v25 = *(v61 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v61);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2287CB670();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v31 = sub_2287CB0E0();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v64 = v14;
  v63 = v15;
  sub_22872CB04(&v91);
  v90 = v91;
  v9[2] = sub_2287CAD50();
  v9[4] = 0;
  [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v33 = sub_2287CA440();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v9[18] = sub_2287CA430();
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_2287CBA20();
  *&v91 = type metadata accessor for GeneratorPipelineManager();
  swift_getMetatypeMetadata();
  v36 = sub_2287CB250();
  v38 = v37;

  *&v91 = v36;
  *(&v91 + 1) = v38;
  MEMORY[0x22AABE980](0xD000000000000013, 0x80000002287D0720);
  sub_2287CB0A0();
  *&v91 = MEMORY[0x277D84F90];
  sub_22873DE20(&qword_280DE39D8, MEMORY[0x277D85230]);
  sub_22873DC58(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22871EFD0();
  sub_2287CB880();
  (*(v25 + 104))(v28, *MEMORY[0x277D85260], v61);
  v9[20] = sub_2287CB6D0();
  sub_2287010E4(v89, (v9 + 8));
  v39 = v68;
  v9[6] = v68;
  v9[3] = v69;
  *(v9 + 40) = v70 & 1;
  sub_2287010E4(v88, (v9 + 13));
  v9[31] = v87;
  v40 = v76;
  sub_2287010E4(v76, (v9 + 21));
  v41 = v74;
  sub_2287010E4(v74, (v9 + 26));
  sub_22873DC58(0, &qword_280DE1810, sub_228739F64, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCFE0;
  v43 = v39;

  *(inited + 32) = [v43 profileIdentifier];
  *(inited + 40) = v43;
  v70 = v43;
  v44 = sub_228739FF4(inited);
  swift_setDeallocating();
  sub_22873A0FC(inited + 32, sub_228739F64);
  *&v91 = v44;
  sub_22873A15C();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v10[7] = sub_2287CA690();
  v10[19] = v80;
  v48 = v41[3];
  v49 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v48);
  (*(v71 + 104))(v67, *MEMORY[0x277D11F10], v73);

  v50 = v66;
  sub_2287C9E30();
  v51 = (*(v49 + 8))(v50, v48, v49);
  (*(v72 + 8))(v50, v75);
  *&v91 = v10[2];

  v52 = v82;
  sub_2287CB690();
  *&v90 = v51;
  v53 = v77;
  sub_2287CB020();
  (*(v84 + 8))(v52, v85);

  v54 = swift_allocObject();
  v55 = v63;
  v54[2] = v64;
  v54[3] = v55;
  v54[4] = v86;
  v56 = v81;
  swift_getWitnessTable();
  v57 = sub_2287CB050();

  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v89);
  (*(v83 + 8))(v53, v56);
  v58 = v10[4];
  v10[4] = v57;

  __swift_destroy_boxed_opaque_existential_0(v41);
  return v10;
}

uint64_t sub_22872DCD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v7 = sub_2287CAA50();
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v82 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = &v76 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v76 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  v17 = *a1;
  v18 = a1[1];
  sub_2287CA9D0();

  v19 = sub_2287CAA40();
  v20 = sub_2287CB610();

  v21 = os_log_type_enabled(v19, v20);
  v80 = a2;
  v81 = a4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v77 = v7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v87 = v24;
    *v23 = 136446466;
    v85 = a2;
    swift_getMetatypeMetadata();
    v25 = sub_2287CB250();
    v27 = sub_2287031D8(v25, v26, &v87);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v85 = v17;
    v86 = v18;
    v28 = type metadata accessor for GeneratorPipelineManager.GenerationState();
    v29 = sub_22872E420(v28);
    v31 = sub_2287031D8(v29, v30, &v87);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_2286FF000, v19, v20, "[%{public}s]: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v24, -1, -1);
    v32 = v23;
    v7 = v77;
    MEMORY[0x22AABFD90](v32, -1, -1);
  }

  v33 = *(v84 + 8);
  (v33)(v16, v7);
  v34 = v79;
  sub_2287CA9D0();

  v35 = sub_2287CAA40();
  v36 = sub_2287CB5D0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v87 = v38;
    *v37 = 136446466;
    v85 = v80;
    swift_getMetatypeMetadata();
    v39 = sub_2287CB250();
    v41 = v33;
    v42 = v7;
    v43 = sub_2287031D8(v39, v40, &v87);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2082;
    v85 = v17;
    v86 = v18;
    v44 = type metadata accessor for GeneratorPipelineManager.GenerationState();
    v45 = sub_22872E694(v44);
    v47 = sub_2287031D8(v45, v46, &v87);

    *(v37 + 14) = v47;
    v7 = v42;
    v33 = v41;
    _os_log_impl(&dword_2286FF000, v35, v36, "[%{public}s]: %{public}s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v38, -1, -1);
    MEMORY[0x22AABFD90](v37, -1, -1);

    v48 = v79;
  }

  else
  {

    v48 = v34;
  }

  (v33)(v48, v7);
  v49 = v78;
  sub_2287CA9D0();

  v50 = sub_2287CAA40();
  v51 = sub_2287CB610();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v79 = v33;
    v54 = v53;
    v87 = v53;
    *v52 = 136446466;
    v85 = v80;
    swift_getMetatypeMetadata();
    v55 = sub_2287CB250();
    v57 = sub_2287031D8(v55, v56, &v87);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2082;
    v85 = v17;
    v86 = v18;
    v58 = type metadata accessor for GeneratorPipelineManager.GenerationState();
    v59 = sub_22872E8AC(v58);
    v61 = sub_2287031D8(v59, v60, &v87);

    *(v52 + 14) = v61;
    _os_log_impl(&dword_2286FF000, v50, v51, "[%{public}s]: %{public}s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v54, -1, -1);
    MEMORY[0x22AABFD90](v52, -1, -1);

    v33 = v79;
    (v79)(v49, v7);
  }

  else
  {

    (v33)(v49, v7);
  }

  v62 = v82;
  sub_2287CA9D0();

  v63 = sub_2287CAA40();
  v64 = sub_2287CB5D0();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v87 = v66;
    *v65 = 136446466;
    v85 = v80;
    swift_getMetatypeMetadata();
    v67 = sub_2287CB250();
    v69 = sub_2287031D8(v67, v68, &v87);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    v85 = v17;
    v86 = v18;
    v70 = type metadata accessor for GeneratorPipelineManager.GenerationState();
    v71 = sub_22872EB64(v70);
    v73 = sub_2287031D8(v71, v72, &v87);

    *(v65 + 14) = v73;
    _os_log_impl(&dword_2286FF000, v63, v64, "[%{public}s]: %{public}s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v66, -1, -1);
    MEMORY[0x22AABFD90](v65, -1, -1);

    v74 = v82;
  }

  else
  {

    v74 = v62;
  }

  return (v33)(v74, v7);
}

uint64_t sub_22872E420(uint64_t a1)
{
  v19 = *v1;
  v2 = *(a1 + 24);
  v16 = *(a1 + 16);
  v17 = v2;
  v14[2] = v16;
  v14[3] = v2;
  v14[4] = sub_22873E000;
  v14[5] = &v15;
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0]);
  v3 = sub_2287CB190();

  WitnessTable = swift_getWitnessTable();
  v6 = sub_228747B00(sub_22873E030, v14, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v19 = v6;
  sub_22873E054(0, &qword_280DE3A00);
  sub_22873D5C4(&qword_280DE39F8, &qword_280DE3A00);
  v7 = sub_2287CB1D0();
  v9 = v8;

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2287CBA20();
  v18 = sub_2287CB170();
  v10 = sub_2287CBCC0();
  v12 = v11;

  v19 = v10;
  v20 = v12;
  MEMORY[0x22AABE980](0xD000000000000018, 0x80000002287D0A30);
  MEMORY[0x22AABE980](v7, v9);

  return v19;
}

unint64_t sub_22872E694(uint64_t a1)
{
  v15 = *v1;
  v2 = *(a1 + 24);
  v13 = *(a1 + 16);
  v14 = v2;
  v11[2] = v13;
  v11[3] = v2;
  v11[4] = sub_22873E0F4;
  v11[5] = &v12;
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0]);
  v3 = sub_2287CB190();

  WitnessTable = swift_getWitnessTable();
  v6 = sub_228747B00(sub_22873E43C, v11, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v15 = v6;
  sub_22873E054(0, &qword_280DE3A00);
  sub_22873D5C4(&qword_280DE39F8, &qword_280DE3A00);
  v7 = sub_2287CB1D0();
  v9 = v8;

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2287CBA20();

  v15 = 0xD00000000000001ELL;
  v16 = 0x80000002287D0A50;
  MEMORY[0x22AABE980](v7, v9);

  return v15;
}

uint64_t sub_22872E8AC(uint64_t a1)
{
  v19 = *(v1 + 8);
  v2 = *(a1 + 24);
  v16 = *(a1 + 16);
  v17 = v2;
  v14[2] = v16;
  v14[3] = v2;
  v14[4] = sub_22873E124;
  v14[5] = &v15;
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0]);
  v3 = sub_2287CB190();

  WitnessTable = swift_getWitnessTable();
  v6 = sub_228747B00(sub_22873E154, v14, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v19 = v6;
  sub_22873E054(0, &qword_280DE3A00);
  sub_22873D5C4(&qword_280DE39F8, &qword_280DE3A00);
  v7 = sub_2287CB1D0();
  v9 = v8;

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2287CBA20();
  v18 = sub_2287CB170();
  v10 = sub_2287CBCC0();
  v12 = v11;

  v19 = v10;
  v20 = v12;
  MEMORY[0x22AABE980](0xD000000000000019, 0x80000002287D0A70);
  MEMORY[0x22AABE980](v7, v9);

  return v19;
}

unint64_t sub_22872EB64(uint64_t a1)
{
  v15 = *(v1 + 8);
  v2 = *(a1 + 24);
  v13 = *(a1 + 16);
  v14 = v2;
  v11[2] = v13;
  v11[3] = v2;
  v11[4] = sub_22873E178;
  v11[5] = &v12;
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0]);
  v3 = sub_2287CB190();

  WitnessTable = swift_getWitnessTable();
  v6 = sub_228747B00(sub_22873E454, v11, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v15 = v6;
  sub_22873E054(0, &qword_280DE3A00);
  sub_22873D5C4(&qword_280DE39F8, &qword_280DE3A00);
  v7 = sub_2287CB1D0();
  v9 = v8;

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2287CBA20();

  v15 = 0xD00000000000001FLL;
  v16 = 0x80000002287D0A90;
  MEMORY[0x22AABE980](v7, v9);

  return v15;
}

id sub_22872EDC0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 56);
    v3 = MEMORY[0x28223BE20](a1);
    sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);

    v4 = v3;
    sub_2287CA650();

    return v7;
  }

  else
  {
    swift_beginAccess();
    v6 = *(v1 + 48);

    return v6;
  }
}

void sub_22872EECC(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = sub_22872CA40(a2, *a1);
  if (v7)
  {
    v8 = v7;
LABEL_10:
    *a3 = v8;
    return;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  [v8 setProfileIdentifier_];
  [v8 resume];
  if ((v6 & 0xC000000000000001) == 0)
  {
    v11 = v8;
    v12 = *a1;
    goto LABEL_9;
  }

  if (v6 >= 0)
  {
    v6 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v9 = v8;
  v10 = sub_2287CB920();
  if (!__OFADD__(v10, 1))
  {
    *a1 = sub_2287AA438(v6, v10 + 1);
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    sub_22876D51C(v8, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v14;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_22872EFD4(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v51 = *v1;
  sub_22873A300();
  v4 = v3;
  v5 = *(v51 + 88);
  v6 = *(v51 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  v41[1] = sub_22870D3A8(255, &qword_280DE35A0);
  v7 = sub_2287CACD0();
  v52 = v4;
  v48 = sub_22873DE20(&qword_280DE01F0, sub_22873A300);
  v8 = sub_2287CAB50();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = v41 - v10;
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v50 = v7;
  v54[0] = v7;
  v54[1] = v8;
  v44 = WitnessTable;
  v54[2] = WitnessTable;
  v54[3] = v12;
  v42 = v12;
  v13 = sub_2287CAB00();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = v41 - v15;
  sub_22873DD44(0, &qword_280DE0708, sub_22873A390, sub_22873A408);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = v41 - v20;
  sub_22873E304(0, &qword_280DE1BB0, sub_22873A390, sub_22873A408, MEMORY[0x277CBCC50]);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = v41 - v26;
  v28 = *(v53 + 16);
  v29 = *(v2 + 40);
  if (sub_2287CA420())
  {
    v54[0] = v28;
    sub_22873A390();
    sub_22873A408();
    sub_2287CAFA0();
    sub_22873A4D0();
    v28 = sub_2287CAF40();
    (*(v24 + 8))(v27, v23);
  }

  else
  {
  }

  v54[0] = sub_22873014C(v28);
  sub_22873A390();
  sub_22873A408();
  sub_2287CB040();

  sub_22873A43C();
  v30 = sub_2287CAF40();
  (*(v18 + 8))(v21, v17);
  v31 = v2[24];
  v32 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v31);
  v54[0] = v30;
  v54[0] = (*(v32 + 24))(v54, v52, v48, v31, v32);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v35 = v51;
  v34[3] = v53;
  v34[4] = v35;

  v36 = v47;
  sub_2287CAF70();

  v37 = v43;
  MEMORY[0x22AABE600](v8, v42, v44);
  (*(v49 + 8))(v36, v8);
  v38 = v46;
  swift_getWitnessTable();
  v39 = sub_2287CAF40();

  (*(v45 + 8))(v37, v38);
  return v39;
}

uint64_t sub_22872F6B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a2;
  v8 = *(*a3 + 88);
  v9 = *a3;
  v73 = a3;
  v10 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22870D3A8(255, &qword_280DE35A0);
  v11 = sub_2287CACD0();
  swift_getWitnessTable();
  v75 = v11;
  v12 = sub_2287CAAA0();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12);
  v76 = &v68 - v14;
  v15 = sub_2287CADD0();
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v15);
  v70 = &v68 - v17;
  v18 = sub_2287CAA50();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - v23;
  v25 = *a1;
  sub_2287CA9D0();

  v26 = sub_2287CAA40();
  v27 = sub_2287CB610();

  v28 = os_log_type_enabled(v26, v27);
  v69 = a4;
  v81 = v19;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v74 = v18;
    v31 = v30;
    v84[0] = v30;
    *v29 = 136446466;
    v83[1] = a4;
    swift_getMetatypeMetadata();
    v32 = sub_2287CB250();
    v68 = a5;
    v34 = sub_2287031D8(v32, v33, v84);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = MEMORY[0x22AABEA80](v25, MEMORY[0x277D11E90]);
    v37 = sub_2287031D8(v35, v36, v84);

    *(v29 + 14) = v37;
    a5 = v68;
    _os_log_impl(&dword_2286FF000, v26, v27, "%{public}s: Switching to a new pipeline with sourceProfiles: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v38 = v31;
    v18 = v74;
    MEMORY[0x22AABFD90](v38, -1, -1);
    v39 = v29;
    v19 = v81;
    MEMORY[0x22AABFD90](v39, -1, -1);
  }

  v40 = *(v19 + 8);
  v40(v24, v18);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v83[0] = v25;
    v82 = MEMORY[0x277D84F98];
    sub_22873E054(0, &qword_280DE1A28);
    sub_22873A1D0(0, &qword_280DE1A40, MEMORY[0x277D834F8]);
    sub_22873D5C4(&qword_280DE1A20, &qword_280DE1A28);
    sub_2287CB310();
    (*(*v42 + 360))(v25, v84[0]);

    v43 = sub_22873054C(v73, v25);
    v44 = sub_228733498(v43);
    v45 = v79;
    sub_2287CA9D0();

    v46 = sub_2287CAA40();
    v47 = sub_2287CB610();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v73 = v40;
      v49 = v48;
      v50 = swift_slowAlloc();
      v80 = v43;
      v51 = v50;
      v83[0] = v50;
      *v49 = 136446466;
      v84[0] = v69;
      swift_getMetatypeMetadata();
      v52 = sub_2287CB250();
      v53 = a5;
      v55 = sub_2287031D8(v52, v54, v83);
      v74 = v18;
      v56 = v55;

      *(v49 + 4) = v56;
      *(v49 + 12) = 2082;
      v57 = MEMORY[0x22AABEA80](v25, MEMORY[0x277D11E90]);
      v59 = sub_2287031D8(v57, v58, v83);

      *(v49 + 14) = v59;
      a5 = v53;
      _os_log_impl(&dword_2286FF000, v46, v47, "%{public}s: Created new generation stream for sourceProfiles: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v51, -1, -1);
      MEMORY[0x22AABFD90](v49, -1, -1);

      v73(v79, v74);
    }

    else
    {

      v40(v45, v18);
    }

    v84[0] = v44;
    v64 = v75;
    WitnessTable = swift_getWitnessTable();
    v66 = v76;
    sub_228730028(v64, WitnessTable);
    v67 = v78;
    swift_getWitnessTable();
    v62 = sub_2287CAF40();

    result = (*(v77 + 8))(v66, v67);
  }

  else
  {
    v60 = v70;
    sub_2287CADC0();
    v61 = v72;
    swift_getWitnessTable();
    v62 = sub_2287CAF40();
    result = (*(v71 + 8))(v60, v61);
  }

  *a5 = v62;
  return result;
}

void sub_22872FF50(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_2287C9C30();
  if (v4)
  {
    v5 = v4;
    if (sub_2287C9C80())
    {

      return;
    }

    v6 = sub_22872EDC0(v3);
    v7 = *a1;
    if ((*a1 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v8 = *a1;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v9 = sub_2287CB920();
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      *a1 = sub_2287AA438(v8, v9 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    sub_22876D51C(v6, v5, isUniquelyReferenced_nonNull_native);

    *a1 = v11;
  }
}

uint64_t sub_228730028(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8 = *(a2 + 8);
  sub_2287CAF60();
}

uint64_t sub_22873014C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_22873E304(0, &qword_280DE1B90, sub_22873A390, sub_22873A408, MEMORY[0x277CBCC88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v14 - v9;
  v14[1] = a1;
  v11 = swift_allocObject();
  v11[2] = *(v3 + 80);
  v11[3] = *(v3 + 88);
  v11[4] = v4;
  sub_22873A390();
  sub_22873A408();
  sub_2287CAFB0();

  sub_22873E390();
  v12 = sub_2287CAF40();
  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t sub_228730334(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*(*a1 + 16) != 1)
  {
    return 1;
  }

  if (v9 != &unk_283BC0078)
  {
    v10 = *(v9 + 32);
    v11 = qword_283BC0098;
    v12 = v10;
    LOBYTE(v10) = sub_2287C9C80();

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

  sub_2287CA9D0();
  v13 = sub_2287CAA40();
  v14 = sub_2287CB600();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    v21[1] = a2;
    *v15 = 136446210;
    swift_getMetatypeMetadata();
    v17 = sub_2287CB250();
    v19 = sub_2287031D8(v17, v18, v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2286FF000, v13, v14, "%{public}s: Received agnostic only source profiles, skipping pipeline for this set of profiles", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AABFD90](v16, -1, -1);
    MEMORY[0x22AABFD90](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_22873054C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = *v3;
  v5 = v46;
  v47 = a1;
  sub_22873D500();
  v43 = v6;
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873D608();
  v11 = v10;
  v37 = v10;
  v48 = *(v10 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 88);
  v35 = *(v5 + 80);
  v36 = v15;
  v16 = v35;
  swift_getAssociatedTypeWitness();
  v44 = type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22870D3A8(255, &qword_280DE35A0);
  v17 = sub_2287CACD0();
  v40 = v17;
  WitnessTable = swift_getWitnessTable();
  v39 = WitnessTable;
  v42 = MEMORY[0x277CBCCE0];
  v38 = sub_22873DE20(&qword_280DE04D8, sub_22873D608);
  v49 = v17;
  v50 = v11;
  v51 = WitnessTable;
  v52 = v38;
  v19 = sub_2287CABC0();
  v41 = *(v19 - 8);
  v20 = *(v41 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v35 - v21;
  v49 = a2;
  sub_22873E054(0, &qword_280DE1A28);
  sub_22873D5C4(&qword_280DE1A20, &qword_280DE1A28);
  sub_2287CB2F0();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v16;
  v24[3] = v15;
  v24[4] = v23;
  sub_2287CACC0();
  sub_22873DA58(0, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
  sub_22873D78C();
  sub_22873D7C0();
  v25 = v14;
  v26 = v43;
  sub_2287CB060();

  (*(v45 + 8))(v9, v26);
  v27 = swift_allocObject();
  v28 = v46;
  v29 = v47;
  v27[2] = v3;
  v27[3] = v29;
  v27[4] = v28;
  v30 = swift_allocObject();
  v31 = v36;
  v30[2] = v35;
  v30[3] = v31;
  v30[4] = sub_22873D91C;
  v30[5] = v27;

  sub_2287CACC0();
  v32 = v37;
  sub_2287CAFE0();

  (*(v48 + 8))(v25, v32);
  swift_getWitnessTable();
  v33 = sub_2287CAF40();
  (*(v41 + 8))(v22, v19);
  return v33;
}

uint64_t sub_228730A90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  sub_22873D9AC();
  v47 = v3;
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DB6C();
  v7 = v6;
  v51 = *(v6 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DD44(0, &qword_280DE06E8, sub_22873DB6C, sub_22873DDEC);
  v55 = v10;
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v50 = &v42 - v12;
  sub_22873DE68();
  v14 = v13;
  v48 = *(v13 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DA58(0, &qword_280DE0098, sub_22873D6F4, MEMORY[0x277CBCE88]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v42 - v22;
  v24 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v46 = sub_22872EDC0(v24);
    v27 = v26[31];

    v45 = v17;
    sub_2287CA4D0();

    v28 = v26[24];
    v29 = v26[25];
    __swift_project_boxed_opaque_existential_1(v26 + 21, v28);
    v30 = *(v29 + 24);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v14;
    v57 = v30(v17, v14, OpaqueTypeConformance2, v28, v29);
    *(swift_allocObject() + 16) = v24;
    sub_22873DA58(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873D6F4();
    v43 = v7;
    sub_22873DAE4();
    v32 = v51;
    v42 = v24;
    v33 = v49;
    sub_2287CAF70();

    *(swift_allocObject() + 16) = v24;
    sub_22873DC58(0, &qword_280DE00D8, sub_22873D6F4, MEMORY[0x277CBCE78]);
    sub_22873DE20(&qword_280DE0648, sub_22873D9AC);
    sub_22873DCBC();
    v34 = v42;
    v35 = v52;
    v36 = v47;
    sub_2287CAF90();

    (*(v54 + 8))(v33, v36);
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_22873DDEC();
    v37 = v50;
    v38 = v43;
    sub_2287CB040();
    (*(v32 + 8))(v35, v38);
    sub_22873DF60();
    v39 = v55;
    v40 = sub_2287CAF40();

    (*(v53 + 8))(v37, v39);
    result = (*(v48 + 8))(v45, v44);
  }

  else
  {
    sub_22873D6F4();
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_22873DEC8();
    v40 = sub_2287CAF40();
    result = (*(v20 + 8))(v23, v19);
  }

  *v56 = v40;
  return result;
}

id sub_228731160@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = sub_2287C9C80();
  v6 = 0;
  if ((v5 & 1) == 0)
  {

    v6 = v4;
  }

  *a3 = a2;
  a3[1] = v6;

  return a2;
}

uint64_t sub_2287311C8(void **a1, void *a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = *a1;
  v13 = sub_2287C9C30();
  if (v13 && (v14 = v13, v15 = [v13 type], v14, v15 == 2))
  {
    sub_2287CA9D0();
    v16 = a2;
    v17 = sub_2287CAA40();
    v18 = sub_2287CB610();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v16;
      v21 = v5;
      v22 = v20;
      v47[0] = v20;
      *v19 = 136446210;
      v23 = sub_2287C9C50();
      v25 = sub_2287031D8(v23, v24, v47);
      v44 = v4;
      v26 = v25;

      *(v19 + 4) = v26;
      _os_log_impl(&dword_2286FF000, v17, v18, "Returning nil transaction builder for summary sharing profile %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AABFD90](v22, -1, -1);
      MEMORY[0x22AABFD90](v19, -1, -1);

      (*(v21 + 8))(v11, v44);
      v16 = v45;
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    sub_2287CA9D0();
    v16 = a2;
    v27 = v12;
    v28 = sub_2287CAA40();
    v29 = sub_2287CB5F0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = v5;
      v31 = v30;
      v32 = swift_slowAlloc();
      v47[0] = v32;
      *v31 = 136446466;
      v33 = sub_2287C9C50();
      v44 = v4;
      v35 = sub_2287031D8(v33, v34, v47);
      v45 = v16;
      v36 = v35;

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      v46 = v12;
      v37 = v12;
      sub_22870D3A8(0, &qword_280DE35A0);
      v38 = sub_2287CB250();
      v40 = sub_2287031D8(v38, v39, v47);

      *(v31 + 14) = v40;
      v16 = v45;
      _os_log_impl(&dword_2286FF000, v28, v29, "Failed to get transaction builder for %{public}s: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v32, -1, -1);
      MEMORY[0x22AABFD90](v31, -1, -1);

      (*(v43 + 8))(v9, v44);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  v47[0] = a2;
  v47[1] = 0;
  sub_22873D6F4();
  v41 = v16;
  return sub_2287CADB0();
}

uint64_t sub_2287315B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v26 = a2;
  v27 = a4;
  v25 = a1;
  v6 = *(*a3 + 88);
  v7 = *(*a3 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  v8 = sub_2287CB450();
  WitnessTable = swift_getWitnessTable();
  v38 = v8;
  v39 = MEMORY[0x277D84A98];
  v40 = WitnessTable;
  v41 = MEMORY[0x277D84AC0];
  v10 = sub_2287CAC10();
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v24 = sub_22870D3A8(255, &qword_280DE35A0);
  v38 = v8;
  v39 = v24;
  v40 = WitnessTable;
  v41 = MEMORY[0x277D84950];
  v15 = sub_2287CAC10();
  v28 = *(v15 - 8);
  v16 = *(v28 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  swift_beginAccess();
  v37 = a3[3];
  v19 = swift_allocObject();
  swift_weakInit();
  v32 = v19;
  v33 = v25;
  v34 = v27;
  v35 = v26;
  v36 = v29;
  type metadata accessor for GeneratorPipelineProviderWrapper();
  sub_2287CB450();

  swift_getWitnessTable();
  v20 = sub_2287CB330();

  sub_228732FC8(v20);
  v37 = v20;
  sub_2287CB2F0();

  v21 = v30;
  sub_2287CABF0();
  (*(v31 + 8))(v14, v21);
  swift_getWitnessTable();
  v22 = sub_2287CAF40();
  (*(v28 + 8))(v18, v15);
  return v22;
}

uint64_t sub_228731950@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v11 = *a3;
  v12 = sub_2287C9ED0();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v29[1] = v6;
    v30 = a6;
    v16 = qword_280DE6258;
    v17 = *(a3 + qword_280DE6268);
    v18 = *(v11 + 80);
    v19 = type metadata accessor for GeneratorPipelineProviderWrapper();
    sub_228732444(a2, a3 + v16, v17, a1 + *(v19 + 28), v31, *(a3 + qword_280DE6260), v15);
    v20 = *(v11 + 88);
    v35 = (*(v20 + 24))(v15, v18, v20);
    MEMORY[0x28223BE20](v35);
    v29[-6] = v18;
    v29[-5] = v20;
    v29[-4] = a1;
    v29[-3] = v15;
    v29[-2] = v32;
    swift_getAssociatedTypeWitness();
    v21 = sub_2287CB450();
    v22 = type metadata accessor for GeneratorPipelineManagerWrapper();
    WitnessTable = swift_getWitnessTable();
    v25 = sub_228747B00(sub_22873D984, &v29[-8], v21, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);

    *v30 = v25;
    return (*(v33 + 8))(v15, v34);
  }

  else
  {
    v28 = *(v11 + 80);
    v27 = *(v11 + 88);
    swift_getAssociatedTypeWitness();
    type metadata accessor for GeneratorPipelineManagerWrapper();
    result = sub_2287CB3F0();
    *a6 = result;
  }

  return result;
}

uint64_t sub_228731C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a4;
  v95 = a3;
  v98 = a1;
  v99 = a2;
  v93 = a7;
  v81 = sub_2287C9E70();
  v79 = *(v81 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287C9ED0();
  v94 = *(v11 - 8);
  v12 = *(v94 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - v15;
  v77 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v90 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - v22;
  v78 = a5;
  v24 = type metadata accessor for GeneratorPipelineProviderWrapper();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v73 - v27;
  v89 = sub_2287CAA50();
  v87 = *(v89 - 8);
  v29 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v32 = *(v25 + 16);
  v96 = v24;
  v32(v28, v99, v24);
  v83 = v18;
  v33 = *(v18 + 16);
  v82 = v23;
  v92 = AssociatedTypeWitness;
  v85 = v33;
  v86 = v18 + 16;
  v33(v23, v98, AssociatedTypeWitness);
  v34 = v94;
  v36 = v94 + 16;
  v35 = *(v94 + 16);
  v88 = v16;
  v37 = v95;
  v97 = v11;
  v38 = v35;
  (v35)(v16);
  v84 = v31;
  v39 = sub_2287CAA40();
  v40 = sub_2287CB610();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v73 = v36;
    v42 = v41;
    v75 = swift_slowAlloc();
    v101 = v75;
    *v42 = 136446978;
    *&v100[0] = v80;
    swift_getMetatypeMetadata();
    v43 = sub_2287CB250();
    v74 = v39;
    v45 = sub_2287031D8(v43, v44, &v101);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2082;
    v46 = v96;
    v47 = &v28[*(v96 + 28)];
    v80 = v38;
    v48 = *(v47 + 4);
    __swift_project_boxed_opaque_existential_1(v47, *(v47 + 3));
    v49 = sub_2287C9A70();
    v51 = v50;
    (*(v25 + 8))(v28, v46);
    v52 = sub_2287031D8(v49, v51, &v101);

    *(v42 + 14) = v52;
    *(v42 + 22) = 2082;
    LODWORD(v78) = v40;
    v53 = v92;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v55 = v76;
    v56 = v82;
    (*(AssociatedConformanceWitness + 32))(v53, AssociatedConformanceWitness);
    v57 = sub_2287C9E50();
    (*(v79 + 8))(v55, v81);
    v58 = sub_2287C9C50();
    v60 = v59;

    (*(v83 + 8))(v56, v53);
    v61 = sub_2287031D8(v58, v60, &v101);
    v37 = v95;

    *(v42 + 24) = v61;
    *(v42 + 32) = 2082;
    v62 = v91;
    v63 = v88;
    v64 = v97;
    v80(v91, v88, v97);
    v65 = sub_2287CB250();
    v67 = v66;
    (*(v94 + 8))(v63, v64);
    v68 = sub_2287031D8(v65, v67, &v101);
    v38 = v80;

    *(v42 + 34) = v68;
    v69 = v74;
    _os_log_impl(&dword_2286FF000, v74, v78, "[%{public}s]: delegate returned pipeline <%{public}s> for profile %{public}s and context %{public}s.", v42, 0x2Au);
    v70 = v75;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v70, -1, -1);
    MEMORY[0x22AABFD90](v42, -1, -1);

    (*(v87 + 8))(v84, v89);
  }

  else
  {

    (*(v34 + 8))(v88, v97);
    v53 = v92;
    (*(v83 + 8))(v82, v92);
    (*(v87 + 8))(v84, v89);
    (*(v25 + 8))(v28, v96);
    v62 = v91;
  }

  v71 = v90;
  v85(v90, v98, v53);
  sub_2287010E4(v99 + *(v96 + 28), v100);
  v38(v62, v37, v97);
  return GeneratorPipelineManagerWrapper.init(wrapped:pluginInfo:context:)(v71, v100, v62, v53, v93);
}

uint64_t sub_228732444@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v75 = a6;
  v72 = a5;
  v71 = a4;
  v84 = a3;
  v82 = a2;
  v80 = a1;
  v83 = a7;
  sub_228739E24();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2287CA340();
  v78 = *(v79 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2287C9590();
  v86 = *(v15 - 8);
  v87 = v15;
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v15);
  v85 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873CD8C();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22872EDC0(a1);
  *&v89 = sub_2287CB5B0();
  v24 = MEMORY[0x277CBCD88];
  sub_22873D054(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
  v25 = MEMORY[0x277D83D88];
  sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_22873CE6C();
  sub_2287CAF70();
  sub_22873DE20(&qword_280DE05D0, sub_22873CD8C);
  v26 = sub_2287CAF40();

  (*(v20 + 8))(v23, v19);
  *&v89 = v26;
  sub_22873D054(0, &qword_280DE0148, &qword_280DDFEB0, v25, v24);
  sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v24);
  v27 = sub_2287CAF40();

  *&v89 = v27;
  v28 = sub_2287CAEF0();

  *&v89 = v28;
  v29 = MEMORY[0x277CBCB28];
  sub_22873E304(0, &qword_280DE0798, sub_22873CEFC, sub_22873D0F8, MEMORY[0x277CBCB28]);
  sub_22873D12C();
  v30 = sub_2287CAF40();

  v31 = v71;
  sub_2287010E4(v71, &v89);
  v32 = swift_allocObject();
  v33 = v72;
  v32[2] = v72;
  sub_228706AD4(&v89, (v32 + 3));
  v34 = v70;
  v32[8] = v70;
  v32[9] = v30;
  v35 = v34;
  v76 = v30;
  sub_22873741C(v34, v31, v30, v33, v75);
  v37 = v36;
  sub_2287010E4(v31, &v89);
  swift_beginAccess();
  v38 = *(v8 + 48);
  v75 = type metadata accessor for HealthStoreSharableModelContext();
  v39 = swift_allocObject();

  v40 = v38;
  v41 = v32;
  v74 = v32;

  v42 = v37;
  v73 = v37;

  v43 = v35;
  v39[2] = sub_2287CB590();
  sub_2287010E4(&v89, (v39 + 4));
  v39[3] = v43;
  v44 = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];

  __swift_destroy_boxed_opaque_existential_0(&v89);
  v39[9] = v44;
  v39[10] = sub_22873D1C8;
  v39[11] = v41;
  v39[12] = sub_22873AA9C;
  v39[13] = v42;
  v45 = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v72 = sub_22873DE20(qword_280DE3170, type metadata accessor for HealthExperienceStoreFeedItemContext);
  v46 = v44;
  v47 = sub_2287C9D70();

  *&v89 = v47;
  sub_22873DA58(0, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
  sub_22873D1D8();
  v48 = sub_2287CAEF0();

  *&v89 = v48;
  sub_22873E304(0, &qword_280DE07A8, sub_22873D260, sub_22873D3C8, v29);
  sub_22873D3FC();
  v70 = sub_2287CAF40();

  v49 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 64), *(v8 + 88));
  v50 = sub_2287C99F0();
  sub_2287010E4(v31, &v89);
  LOBYTE(v44) = *(v8 + 40);
  v51 = *(v8 + 144);
  swift_beginAccess();
  v71 = *(v8 + 152);
  sub_2287010E4(v8 + 208, v88);
  v52 = v43;

  v53 = v85;
  sub_2287C9520();
  v69 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v54 = *(v45 + 48);
  v55 = *(v45 + 52);
  v56 = swift_allocObject();
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms) = &unk_283BC0100;
  *(v56 + 56) = v44;
  (*(v86 + 16))(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange, v53, v87);
  __swift_project_boxed_opaque_existential_1(&v89, v90);
  v57 = v50;
  sub_2287C9A70();
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_2287CB550();

  v58 = v77;
  sub_2287CA320();
  (*(v78 + 32))(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage, v58, v79);
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) = v57;
  sub_2287010E4(&v89, v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  *(v56 + 16) = v52;
  *(v56 + 24) = v51;
  sub_2287010E4(v88, v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v59 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v60 = v52;
  v61 = v57;

  *(v56 + 48) = [v59 initWithHealthStore_];
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher) = v70;
  __swift_project_boxed_opaque_existential_1(&v89, v90);

  sub_2287C9A70();
  v62 = sub_2287C9A30();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = sub_2287C9A20();

  (*(v86 + 8))(v85, v87);
  __swift_destroy_boxed_opaque_existential_0(v88);
  v66 = MEMORY[0x277D11D38];
  *(v56 + 32) = v65;
  *(v56 + 40) = v66;
  __swift_destroy_boxed_opaque_existential_0(&v89);
  sub_22873E20C(v82, v81, sub_228739E24);
  v90 = v45;
  v91 = v72;
  *&v89 = v56;
  v88[3] = v75;
  v88[4] = sub_22873DE20(qword_280DE3298, type metadata accessor for HealthStoreSharableModelContext);
  v88[0] = v39;
  v67 = v80;

  sub_2287C9EA0();
  sub_2287C9EC0();
}

uint64_t sub_228732FC8(uint64_t a1)
{
  v2 = *v1;
  v15 = a1;
  v13 = *(v2 + 80);
  v3 = v13;
  v14 = *(v2 + 88);
  v4 = v14;
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  v5 = sub_2287CB450();
  sub_2287C9810();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_228747B00(sub_22873CD44, &v12, v5, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  sub_2287CB450();
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0]);
  swift_getWitnessTable();
  v9 = sub_2287CB160();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v9;
  sub_228738988(sub_22873CD64, v10);
}

uint64_t sub_2287331D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2287C9810();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for GeneratorPipelineManagerWrapper();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v4 - 8) + 16))(a2, a1 + *(v5 + 36), v4);
  return (*(*(v5 - 8) + 16))(a2 + v6, a1, v5);
}

double sub_2287332DC@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0]);
  sub_2287CB190();

  sub_2287CB180();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_228733404@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for GeneratorPipelineManagerWrapper();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_228733498(uint64_t a1)
{
  v2 = v1;
  v24 = *v2;
  v23 = *(v24 + 88);
  v22 = *(v24 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22870D3A8(255, &qword_280DE35A0);
  v4 = sub_2287CACD0();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  v5 = sub_2287CACD0();
  WitnessTable = swift_getWitnessTable();
  v25 = v4;
  v26 = v5;
  v27 = WitnessTable;
  v28 = swift_getWitnessTable();
  v6 = sub_2287CABC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v25 = a1;
  v11 = v2[24];
  v12 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v11);
  (*(v12 + 8))(v11, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v23;
  v14[2] = v22;
  v14[3] = v15;
  v16 = v24;
  v14[4] = v13;
  v14[5] = v16;
  sub_2287CAFE0();

  swift_getWitnessTable();
  v17 = sub_2287CAF40();
  (*(v7 + 8))(v10, v6);
  return v17;
}

uint64_t sub_228733828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v82 = a2;
  v93 = a5;
  v8 = sub_2287C9E70();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = *(v88 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v83 = &v76 - v13;
  v14 = type metadata accessor for GeneratorPipelineManagerWrapper();
  v90 = *(v14 - 8);
  v15 = *(v90 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v96 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v76 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v94 = &v76 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v76 - v22;
  v24 = sub_2287CAA50();
  v91 = *(v24 - 8);
  v92 = v24;
  v25 = *(v91 + 64);
  MEMORY[0x28223BE20](v24);
  v97 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a4;
  v85 = a3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for GeneratorPipelineManagerWrapper();
  v28 = sub_22870D3A8(255, &qword_280DE35A0);
  v29 = sub_2287CADD0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v76 - v32;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v80 = Strong;
    v79 = v28;
    v81 = v27;
    sub_2287CA9D0();
    v35 = v90;
    v36 = *(v90 + 16);
    v36(v23, a1, v14);
    v36(v94, a1, v14);
    v36(v95, a1, v14);
    v36(v96, a1, v14);
    v37 = sub_2287CAA40();
    v38 = sub_2287CB610();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v78 = a1;
      v40 = v39;
      v77 = swift_slowAlloc();
      v99 = v77;
      *v40 = 136447234;
      v98 = v82;
      swift_getMetatypeMetadata();
      v41 = sub_2287CB250();
      LODWORD(v82) = v38;
      v43 = sub_2287031D8(v41, v42, &v99);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      v44 = &v23[*(v14 + 28)];
      v45 = *(v44 + 4);
      __swift_project_boxed_opaque_existential_1(v44, *(v44 + 3));
      v46 = sub_2287C9A70();
      v48 = v47;
      v49 = *(v35 + 8);
      v49(v23, v14);
      v50 = sub_2287031D8(v46, v48, &v99);

      *(v40 + 14) = v50;
      *(v40 + 22) = 2082;
      v51 = v94;
      (*(v84 + 16))(v83, v94, AssociatedTypeWitness);
      v52 = sub_2287CB250();
      v54 = v53;
      v49(v51, v14);
      v55 = sub_2287031D8(v52, v54, &v99);

      *(v40 + 24) = v55;
      *(v40 + 32) = 2082;
      MEMORY[0x28223BE20](v56);
      v57 = v87;
      *(&v76 - 2) = v85;
      *(&v76 - 1) = v57;
      KeyPath = swift_getKeyPath();
      v59 = v86;
      v60 = v95;
      GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

      v61 = sub_2287C9E50();
      (*(v88 + 8))(v59, v89);
      v62 = sub_2287C9C50();
      v64 = v63;

      v49(v60, v14);
      v65 = sub_2287031D8(v62, v64, &v99);

      *(v40 + 34) = v65;
      *(v40 + 42) = 2082;
      v66 = v96;
      v67 = &v96[*(v14 + 32)];
      sub_2287C9E80();
      sub_22870D3A8(0, &qword_280DE3418);
      v68 = sub_2287CB250();
      v70 = v69;
      v49(v66, v14);
      v71 = sub_2287031D8(v68, v70, &v99);

      *(v40 + 44) = v71;
      _os_log_impl(&dword_2286FF000, v37, v82, "[%{public}s][%{public}s]: dispatching GeneratorPipeline <%{public}s> for profile %{public}s and context %{public}s to queue for execution", v40, 0x34u);
      v72 = v77;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v72, -1, -1);
      a1 = v78;
      MEMORY[0x22AABFD90](v40, -1, -1);

      (*(v91 + 8))(v97, v92);
    }

    else
    {

      v75 = *(v35 + 8);
      v75(v96, v14);
      v75(v95, v14);
      v75(v94, v14);
      (*(v91 + 8))(v97, v92);
      v75(v23, v14);
    }

    v98 = sub_228734270(a1);
    sub_2287CACD0();
    swift_getWitnessTable();
    v73 = sub_2287CAF40();
  }

  else
  {
    sub_2287CADC0();
    swift_getWitnessTable();
    v73 = sub_2287CAF40();
    result = (*(v30 + 8))(v33, v29);
  }

  *v93 = v73;
  return result;
}

uint64_t sub_2287341C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 32);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

uint64_t sub_228734270(uint64_t a1)
{
  v90 = a1;
  v2 = *v1;
  v3 = sub_2287C9E70();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v1;
  v91 = *(v2 + 88);
  v89 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v85 = type metadata accessor for GeneratorPipelineManagerWrapper();
  v6 = sub_22870D3A8(255, &qword_280DE35A0);
  v7 = sub_2287CACD0();
  v81 = v7;
  v65 = type metadata accessor for GeneratorPipelineManagerWrapper();
  v67 = v6;
  v8 = sub_2287CACD0();
  v78 = v8;
  WitnessTable = swift_getWitnessTable();
  v80 = WitnessTable;
  v77 = swift_getWitnessTable();
  v99 = v7;
  v100 = v8;
  v101 = WitnessTable;
  v102 = v77;
  v10 = sub_2287CABC0();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v79 = &v62 - v13;
  v14 = type metadata accessor for GeneratorPipelineManagerWrapper();
  v74 = *(v14 - 8);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v14);
  v72 = &v62 - v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = sub_2287CACD0();
  swift_getWitnessTable();
  v17 = sub_2287CAAA0();
  v71 = *(v17 - 8);
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - v19;
  v64 = swift_getWitnessTable();
  v21 = sub_2287CAB50();
  v66 = v21;
  v73 = *(v21 - 8);
  v22 = *(v73 + 64);
  MEMORY[0x28223BE20](v21);
  v63 = &v62 - v23;
  v68 = swift_getWitnessTable();
  v99 = v21;
  v100 = v6;
  v101 = v68;
  v102 = MEMORY[0x277D84950];
  v69 = sub_2287CABE0();
  v70 = *(v69 - 8);
  v24 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v62 = &v62 - v25;
  v26 = v88;
  v28 = v88[24];
  v27 = v88[25];
  __swift_project_boxed_opaque_existential_1(v88 + 21, v28);
  v76 = (*(v27 + 16))(v28, v27);
  v29 = v89;
  v30 = v91;
  v96 = v89;
  v97 = v91;
  KeyPath = swift_getKeyPath();
  v32 = v90;
  GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

  v98 = v99;
  v94 = v29;
  v95 = v30;
  v33 = swift_getKeyPath();
  v34 = swift_getWitnessTable();
  sub_228734D98(v32, v26, v33, v16, v34, v20);

  v35 = v74;
  v36 = v72;
  (*(v74 + 16))(v72, v32, v14);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  v39 = v89;
  v40 = v91;
  *(v38 + 16) = v89;
  *(v38 + 24) = v40;
  (*(v35 + 32))(v38 + v37, v36, v14);
  v41 = v63;
  sub_2287CAF70();

  (*(v71 + 8))(v20, v17);
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  *(v42 + 24) = v40;
  v43 = v39;
  v44 = v40;
  v45 = v62;
  v46 = v66;
  sub_2287CB010();

  (*(v73 + 8))(v41, v46);
  v47 = v69;
  swift_getWitnessTable();
  v48 = sub_2287CAF40();
  v75 = v48;
  (*(v70 + 8))(v45, v47);
  v49 = v88[24];
  v50 = v88[25];
  __swift_project_boxed_opaque_existential_1(v88 + 21, v49);
  v99 = v48;
  v92 = v43;
  v93 = v44;
  v51 = v43;
  v52 = swift_getKeyPath();
  v53 = v84;
  GeneratorPipelineManagerWrapper.subscript.getter(v52);

  v54 = (*(v50 + 40))(&v99, v53, v78, v77, v49, v50);
  (*(v86 + 8))(v53, v87);
  v99 = v54;
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  v57 = v91;
  v56[2] = v51;
  v56[3] = v57;
  v56[4] = v55;
  v58 = v79;
  sub_2287CAFE0();

  v59 = v82;
  swift_getWitnessTable();
  v60 = sub_2287CAF40();

  (*(v83 + 8))(v58, v59);
  return v60;
}

uint64_t sub_228734CEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t sub_228734D98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v44 = a5;
  v45 = a4;
  v43 = a3;
  v7 = *a2;
  v40 = a1;
  v41 = v7;
  v8 = *(*(*a3 + *MEMORY[0x277D84308] + 8) + 24);
  v9 = *(v8 - 8);
  v38 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v33 - v10;
  v12 = swift_allocObject();
  swift_weakInit();
  v39 = *(v9 + 16);
  v34 = v11;
  v39(v11, a1, v8);
  v13 = v9;
  v14 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v16 = v41;
  v15[2] = v45;
  v17 = v8;
  v18 = *(v8 + 16);
  v15[3] = v18;
  v19 = v18;
  v37 = *(v16 + 80);
  v15[4] = v37;
  v15[5] = v44;
  v41 = *(v16 + 88);
  v15[6] = v41;
  v15[7] = v12;
  v15[8] = v43;
  v20 = *(v13 + 32);
  v35 = v13 + 32;
  v36 = v20;
  v21 = v17;
  v33 = v17;
  (v20)(v15 + v14, v11);
  v22 = swift_allocObject();
  swift_weakInit();
  v39(v11, v40, v21);
  v23 = swift_allocObject();
  v25 = v44;
  v24 = v45;
  *(v23 + 2) = v45;
  *(v23 + 3) = v19;
  v26 = v19;
  v27 = v36;
  v28 = v37;
  *(v23 + 4) = v37;
  *(v23 + 5) = v25;
  v29 = v41;
  *(v23 + 6) = v41;
  *(v23 + 7) = v22;
  *(v23 + 8) = v43;
  v27(&v23[v14], v34, v33);
  v30 = swift_allocObject();
  v30[2] = v24;
  v30[3] = v26;
  v30[4] = v28;
  v30[5] = v25;
  v30[6] = v29;
  v30[7] = sub_22873CA3C;
  v30[8] = v23;
  v31 = *(v25 + 8);
  swift_retain_n();

  sub_2287CAF60();
}

uint64_t sub_228735108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2287C9ED0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v18 - v13;
  (*(v15 + 16))(&v18 - v13, a1, AssociatedTypeWitness);
  v16 = type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_2287010E4(a2 + *(v16 + 28), v19);
  (*(v7 + 16))(v10, a2 + *(v16 + 32), v6);
  return GeneratorPipelineManagerWrapper.init(wrapped:pluginInfo:context:)(v14, v19, v10, AssociatedTypeWitness, a3);
}

uint64_t sub_22873531C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v68 = sub_2287C9E70();
  v72 = *(v68 - 8);
  v2 = *(v72 + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2287C9B60();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v56 - v10;
  v12 = sub_2287CA970();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_22870D3A8(255, &qword_280DE35A0);
  v16 = sub_2287CADD0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = _HKLogPersistedSignposts();

    v63 = v15;
    sub_2287CA940();
    v24 = type metadata accessor for GeneratorPipelineManagerWrapper();
    v25 = v73;
    v26 = (v73 + *(v24 + 28));
    v27 = v26[3];
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v28 = sub_228747F20(v27);
    v61 = v29;
    v62 = v28;
    v60 = v30;
    v75 = 0x6F746172656E6547;
    v76 = 0xEB00000000203A72;
    v56 = *(v65 + 16);
    v56(v11, v25, AssociatedTypeWitness);
    v31 = sub_2287CB250();
    MEMORY[0x22AABE980](v31);

    v65 = v75;
    v59 = v76;
    v57 = sub_2287CB610();
    v32 = *MEMORY[0x277D11E60];
    v33 = v66;
    v34 = *(v66 + 104);
    v58 = v22;
    v35 = v67;
    v34(v7, v32, v67);
    v36 = sub_2287C9B50();
    (*(v33 + 8))(v7, v35);
    sub_22870558C();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2287CDC90;
    v38 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v39 = sub_2287C9A70();
    v41 = v40;
    v42 = MEMORY[0x277D837D0];
    *(v37 + 56) = MEMORY[0x277D837D0];
    v43 = sub_2287043F8();
    *(v37 + 64) = v43;
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    v56(v11, v25, AssociatedTypeWitness);
    v44 = sub_2287CB250();
    *(v37 + 96) = v42;
    *(v37 + 104) = v43;
    *(v37 + 72) = v44;
    *(v37 + 80) = v45;
    v46 = v71;
    (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness);
    v47 = sub_2287C9E50();
    (*(v72 + 8))(v46, v68);
    v48 = sub_2287C9C50();
    v50 = v49;

    *(v37 + 136) = v42;
    *(v37 + 144) = v43;
    *(v37 + 112) = v48;
    *(v37 + 120) = v50;
    sub_2287CA920();

    v52 = MEMORY[0x22AABF5F0](v51);
    v53 = v63;
    sub_228735A40(v25, v58, v62, v61, v60, v63, v65, v59, v74);
    objc_autoreleasePoolPop(v52);

    return (*(v69 + 8))(v53, v70);
  }

  else
  {
    sub_2287CADC0();
    swift_getWitnessTable();
    v55 = sub_2287CAF40();
    result = (*(v17 + 8))(v20, v16);
    *v74 = v55;
  }

  return result;
}

uint64_t sub_228735A40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v101 = a8;
  v105 = a7;
  v100 = a6;
  v104 = a5;
  v103 = a4;
  v102 = a3;
  v110 = a1;
  v109 = a9;
  v10 = *a2;
  v11 = sub_2287C9E70();
  v107 = *(v11 - 8);
  v108 = v11;
  v12 = *(v107 + 64);
  MEMORY[0x28223BE20](v11);
  v106 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DC58(0, qword_280DE07D8, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v99 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v74 - v18;
  v112 = a2;
  v19 = *(v10 + 80);
  v20 = *(v10 + 88);
  swift_getAssociatedTypeWitness();
  v21 = v20;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for GeneratorPipelineManagerWrapper();
  v95 = *(v22 - 8);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v22);
  v94 = &v74 - v23;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v24 = sub_2287CACD0();
  v98 = MEMORY[0x277CBCD90];
  swift_getWitnessTable();
  v84 = sub_2287CAAA0();
  v91 = *(v84 - 8);
  v25 = *(v91 + 64);
  MEMORY[0x28223BE20](v84);
  v27 = &v74 - v26;
  v111 = type metadata accessor for GeneratorPipelineManagerWrapper();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_2287CAB50();
  v82 = v28;
  v90 = *(v28 - 8);
  v29 = *(v90 + 64);
  MEMORY[0x28223BE20](v28);
  v79 = &v74 - v30;
  v31 = sub_22870D3A8(255, &qword_280DE35A0);
  v83 = v31;
  v81 = swift_getWitnessTable();
  v119[0] = v28;
  v119[1] = v31;
  v119[2] = v81;
  v119[3] = MEMORY[0x277D84950];
  v80 = sub_2287CABE0();
  v89 = *(v80 - 8);
  v32 = *(v89 + 64);
  v33 = MEMORY[0x28223BE20](v80);
  v88 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v77 = &v74 - v35;
  v87 = swift_getWitnessTable();
  v92 = sub_2287CAAD0();
  v93 = *(v92 - 8);
  v36 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  v86 = &v74 - v37;
  v117 = v19;
  v118 = v21;
  KeyPath = swift_getKeyPath();
  v39 = v22;
  v40 = v110;
  GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

  v119[6] = v119[0];
  v115 = v19;
  v116 = v21;
  v41 = v19;
  v42 = v21;
  v43 = swift_getKeyPath();
  v44 = swift_getWitnessTable();
  sub_228734D98(v40, v112, v43, v24, v44, v27);

  v45 = v95;
  v46 = *(v95 + 16);
  v47 = v94;
  v78 = v39;
  v46(v94, v40, v39);
  v48 = v45;
  v49 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v50 = swift_allocObject();
  v76 = v41;
  *(v50 + 16) = v41;
  *(v50 + 24) = v42;
  v75 = v42;
  (*(v48 + 32))(v50 + v49, v47, v39);
  v51 = v79;
  v52 = v84;
  sub_2287CAF70();

  (*(v91 + 8))(v27, v52);
  v53 = swift_allocObject();
  *(v53 + 16) = v41;
  *(v53 + 24) = v42;
  v54 = v77;
  v55 = v82;
  sub_2287CB010();

  (*(v90 + 8))(v51, v55);
  v56 = _HKLogPersistedSignposts();
  v57 = sub_2287CA970();
  v58 = *(v57 - 8);
  v59 = v97;
  (*(v58 + 16))(v97, v100, v57);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = v89;
  v61 = v80;
  (*(v89 + 16))(v88, v54, v80);
  sub_22873C718(v59, v99);

  v62 = v86;
  sub_2287CAAE0();
  sub_22873C7AC(v59);
  (*(v60 + 8))(v54, v61);
  v63 = v92;
  swift_getWitnessTable();
  v64 = sub_2287CAF40();
  (*(v93 + 8))(v62, v63);
  v65 = v112[24];
  v66 = v112[25];
  __swift_project_boxed_opaque_existential_1(v112 + 21, v65);
  v119[0] = v64;
  v113 = v76;
  v114 = v75;
  v67 = swift_getKeyPath();
  v68 = v106;
  GeneratorPipelineManagerWrapper.subscript.getter(v67);

  v69 = *(v66 + 48);
  v70 = sub_2287CACD0();
  v71 = swift_getWitnessTable();
  v72 = v69(v119, v68, v70, v71, v65, v66);
  (*(v107 + 8))(v68, v108);

  *v109 = v72;
  return result;
}

uint64_t sub_2287365D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 32);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t sub_2287366C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2287C9ED0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v18 - v13;
  (*(v15 + 16))(&v18 - v13, a1, AssociatedTypeWitness);
  v16 = type metadata accessor for GeneratorPipelineManagerWrapper();
  sub_2287010E4(a2 + *(v16 + 28), v19);
  (*(v7 + 16))(v10, a2 + *(v16 + 32), v6);
  return GeneratorPipelineManagerWrapper.init(wrapped:pluginInfo:context:)(v14, v19, v10, AssociatedTypeWitness, a3);
}

uint64_t sub_228736924@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v9 = sub_2287CBCE0();
  if (v9)
  {
    v10 = v9;
    result = (*(v5 + 8))(v8, AssociatedTypeWitness);
  }

  else
  {
    v10 = swift_allocError();
    result = (*(v5 + 32))(v12, v8, AssociatedTypeWitness);
  }

  *a2 = v10;
  return result;
}

uint64_t sub_228736B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 40);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

uint64_t sub_228736C2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v58 = a4;
  v60 = a1;
  sub_22873DC58(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v54 - v11;
  sub_22873DA58(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  sub_22873C170();
  v59 = v19;
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C240(0, &qword_280DE0420, sub_22873C170, sub_22873C31C, MEMORY[0x277CBCCD8]);
  v55 = *(v23 - 8);
  v56 = v23;
  v24 = *(v55 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - v25;
  sub_22873C350();
  v62 = *(v27 - 8);
  v63 = v27;
  v28 = *(v62 + 64);
  MEMORY[0x28223BE20](v27);
  v61 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v64 = a2;
    sub_2287CA570();
    swift_retain_n();
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CAD80();
    (*(v9 + 8))(v12, v8);
    v30 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    sub_2287C9A70();
    sub_2287CA540();
    sub_2287CA550();
    sub_22873C4AC();
    v31 = sub_2287CAE70();

    (*(v15 + 8))(v18, v14);
    v64 = v31;
    sub_22873AC94();
    v33 = v32;
    v34 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94);
    v35 = v61;
    sub_2287CAE10();

    v64 = v33;
    v65 = v34;
    swift_getOpaqueTypeConformance2();
    v36 = v63;
    v37 = sub_2287CAF40();
  }

  else
  {
    v38 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v39 = sub_2287C9A70();
    v41 = v40;
    v42 = sub_2287CA540();
    v43 = sub_2287CA550();
    v64 = v54;
    v44 = MEMORY[0x277CBCD88];
    sub_22873D054(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v44);
    sub_2287CAFA0();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = v39;
    v46[4] = v41;
    v46[5] = v42;
    v46[6] = v43;
    sub_2287CACC0();
    sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_22873AC94();
    v48 = v47;
    sub_22873C31C();
    v49 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94);
    v50 = v59;
    sub_2287CAFE0();

    (*(v57 + 8))(v22, v50);
    sub_22873C404();
    v51 = v56;
    v52 = sub_2287CAF40();
    (*(v55 + 8))(v26, v51);
    v64 = v52;
    v35 = v61;
    sub_2287CAE10();

    v64 = v48;
    v65 = v49;
    swift_getOpaqueTypeConformance2();
    v36 = v63;
    v37 = sub_2287CAF40();
  }

  (*(v62 + 8))(v35, v36);
  return v37;
}

uint64_t (*sub_22873741C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v6 = v5;
  v12 = *v6;
  v13 = swift_allocObject();
  swift_weakInit();
  sub_2287010E4(a2, v17);
  v14 = swift_allocObject();
  v14[2] = *(v12 + 80);
  v14[3] = *(v12 + 88);
  v14[4] = v13;
  v14[5] = a1;
  sub_228706AD4(v17, (v14 + 6));
  v14[11] = a3;
  v14[12] = a4;
  v14[13] = a5;
  v15 = a1;

  return sub_22873AA9C;
}

uint64_t sub_22873753C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v60 = a6;
  v65 = a1;
  v66 = a5;
  v64 = a4;
  sub_22873AAD4(0, &qword_280DE0078, MEMORY[0x277CBCE88]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  sub_22873AB44();
  v16 = v15;
  v57 = *(v15 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C240(0, &qword_280DE06A8, sub_22873AB44, sub_22873ADA4, MEMORY[0x277CBCBA8]);
  v21 = v20;
  v56 = *(v20 - 8);
  v22 = *(v56 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  sub_22873ADD8();
  v26 = v25;
  v59 = *(v25 - 8);
  v27 = *(v59 + 64);
  MEMORY[0x28223BE20](v25);
  v58 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v54 = v26;
  v63 = Strong;
  v30 = sub_2287CB590();
  v31 = sub_2287C9C30();

  if (!v31)
  {

LABEL_8:
    sub_22870CB48(0);
    sub_2287CADC0();
    sub_22873BF04(&qword_280DE0080, &qword_280DE0078, MEMORY[0x277CBCE88]);
    v35 = sub_2287CAF40();
LABEL_9:
    (*(v11 + 8))(v14, v10);
    return v35;
  }

  v55 = v31;
  v32 = [v31 type];
  if (v32 != 1)
  {
    if (v32 == 2)
    {
      v37 = v64[4];
      __swift_project_boxed_opaque_existential_1(v64, v64[3]);
      v38 = sub_2287C9A70();
      v64 = v39;
      v40 = sub_2287CA540();
      v41 = sub_2287CA550();
      v67 = v66;
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      v43[2] = v42;
      v43[3] = v38;
      v43[4] = v64;
      v43[5] = v40;
      v43[6] = v41;
      v44 = MEMORY[0x277CBCD88];
      sub_22873D054(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
      sub_22873AC94();
      sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v44);
      sub_2287CAF70();

      v45 = sub_22873ADA4();
      v46 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94);
      MEMORY[0x22AABE600](v16, v45, v46);
      (*(v57 + 8))(v19, v16);
      sub_22873AF2C();
      v47 = sub_2287CAF40();
      (*(v56 + 8))(v24, v21);
      v67 = v47;
      v48 = sub_2287CAE40();

      v67 = v48;
      sub_22873DA58(0, &qword_280DE01C0, sub_22870CB48, MEMORY[0x277CBCD88]);
      v50 = v49;
      v51 = sub_22873AE8C();
      v52 = v58;
      sub_2287CAE10();

      v67 = v50;
      v68 = v51;
      swift_getOpaqueTypeConformance2();
      v53 = v54;
      v35 = sub_2287CAF40();

      (*(v59 + 8))(v52, v53);
      return v35;
    }

    if (v32 != 3)
    {
      sub_22870CB48(0);
      sub_2287CADC0();
      sub_22873BF04(&qword_280DE0080, &qword_280DE0078, MEMORY[0x277CBCE88]);
      v35 = sub_2287CAF40();

      goto LABEL_9;
    }
  }

  v33 = sub_2287CA540();
  v34 = sub_2287CA550();
  v35 = sub_22873B0EC(a3, v64, v33, v34, v66, v60, v61);

  return v35;
}

uint64_t sub_228737CC8(void *a1, void *a2, void *a3)
{
  v6 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  v7 = sub_2287C9A70();
  v9 = v8;
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v7 == sub_2287C9A70() && v9 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2287CBD00();
  }

  sub_22873DC58(0, &qword_280DE2608, sub_22870CB48, type metadata accessor for GeneratorPipelineManagerWrapper);
  v15 = a1 + *(v14 + 32);
  v16 = sub_2287C9EB0();
  v17 = sub_2287C9C30();

  v18 = [a3 profileIdentifier];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      v20 = sub_2287CB7F0();
    }

    else
    {
      v20 = 0;
    }

    v19 = v17;
  }

  else
  {
    if (!v18)
    {
      v20 = 1;
      return v13 & v20 & 1;
    }

    v20 = 0;
  }

  return v13 & v20 & 1;
}

uint64_t GeneratorPipelineManager.GenerationState.outstandingPipelines.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GeneratorPipelineManager.GenerationState.outstandingGenerators.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_228737F1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = (a1 + *(type metadata accessor for GeneratorPipelineManagerWrapper() + 28));
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2287C9A70();
  sub_22873E0A0();
  v6 = sub_2287CB840();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 16 + 16 * v7);
    v10 = *v8;
    v9 = v8[1];
  }

  else
  {
    v9 = 0xE400000000000000;
    v10 = 1701736302;
  }

  MEMORY[0x22AABE980](v10, v9);

  *a2 = 0x3D6E6967756C70;
  a2[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_228738064@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, a1 + *(TupleTypeMetadata2 + 48));
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_228738128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v23 - v7;
  v8 = sub_2287C9E70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for GeneratorPipelineManagerWrapper() + 28));
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v31 = sub_2287C9A70();
  v32 = v15;
  MEMORY[0x22AABE980](2128928, 0xE300000000000000);
  v29 = v24;
  v30 = v25;
  KeyPath = swift_getKeyPath();
  GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

  v17 = sub_2287C9E50();
  (*(v9 + 8))(v12, v8);
  v18 = sub_2287C9C50();
  MEMORY[0x22AABE980](v18);

  MEMORY[0x22AABE980](2128928, 0xE300000000000000);
  (*(v27 + 16))(v26, a1, AssociatedTypeWitness);
  v19 = sub_2287CB250();
  MEMORY[0x22AABE980](v19);

  v21 = v32;
  v22 = v28;
  *v28 = v31;
  v22[1] = v21;
  return result;
}

uint64_t sub_2287383A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = (a1 + *(type metadata accessor for GeneratorPipelineManagerWrapper() + 28));
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2287C9A70();
  sub_22873E0A0();
  v6 = sub_2287CB840();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 16 + 16 * v7);
    v10 = *v8;
    v9 = v8[1];
  }

  else
  {
    v9 = 0xE400000000000000;
    v10 = 1701736302;
  }

  MEMORY[0x22AABE980](v10, v9);

  *a2 = 0x3D6E6967756C70;
  a2[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_228738540@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, a1 + *(TupleTypeMetadata2 + 48));
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_22873864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v9 = MEMORY[0x22AABF5F0]();
  a5(&v11, a2, a3, a4);
  objc_autoreleasePoolPop(v9);
  return v11;
}

uint64_t sub_2287386C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a3;
  v28 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v23 - v8;
  v24 = sub_2287C9E70();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for GeneratorPipelineManagerWrapper() + 28));
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v31 = sub_2287C9A70();
  v32 = v15;
  MEMORY[0x22AABE980](2128928, 0xE300000000000000);
  v29 = a2;
  v30 = v25;
  KeyPath = swift_getKeyPath();
  GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

  v17 = sub_2287C9E50();
  (*(v9 + 8))(v12, v24);
  v18 = sub_2287C9C50();
  MEMORY[0x22AABE980](v18);

  MEMORY[0x22AABE980](2128928, 0xE300000000000000);
  (*(v27 + 16))(v26, a1, AssociatedTypeWitness);
  v19 = sub_2287CB250();
  MEMORY[0x22AABE980](v19);

  v21 = v32;
  v22 = v28;
  *v28 = v31;
  v22[1] = v21;
  return result;
}

uint64_t sub_228738988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_2287CB080();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CB0E0();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v3[20];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = *(v6 + 80);
  v17[3] = *(v6 + 88);
  v17[4] = v16;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = sub_22873A9EC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  sub_2287CB0A0();
  v22 = MEMORY[0x277D84F90];
  sub_22873DE20(&qword_280DE3A28, MEMORY[0x277D85198]);
  sub_22873DC58(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22873AA14();
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v15, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_228738CC4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _OWORD *), uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x22AABF5F0]();
    sub_228738D54(a2, a3, v6);
    objc_autoreleasePoolPop(v7);
  }

  return result;
}

uint64_t sub_228738D54(void (*a1)(uint64_t *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  sub_2287CAD30();
  v6[0] = v6[1];
  a1(&v7, v6);

  sub_2287CAD20();
}

uint64_t GeneratorPipelineManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v5 = *(v0 + 144);

  v6 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v7 = *(v0 + 248);

  return v0;
}

uint64_t GeneratorPipelineManager.__deallocating_deinit()
{
  GeneratorPipelineManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_228738EAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a3;
  v11 = *(*(*a3 + *MEMORY[0x277D84308] + 8) + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v22 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v12 + 16))(v15, a4, v11);
    v17 = *(v12 + 80);
    v22 = a6;
    v18 = (v17 + 64) & ~v17;
    v19 = swift_allocObject();
    *(v19 + 2) = a5;
    *(v19 + 3) = *(v11 + 16);
    v20 = *(v10 + *MEMORY[0x277D84308]);
    v21 = v22;
    *(v19 + 4) = *(v20 + 16);
    *(v19 + 5) = v21;
    *(v19 + 6) = *(v20 + 24);
    *(v19 + 7) = a3;
    (*(v12 + 32))(&v19[v18], v15, v11);

    sub_228738988(sub_22873CC70, v19);
  }

  return result;
}

uint64_t sub_2287390A0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v8 = *(v7 + 24);
  v9 = sub_2287CB820();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v22[-v12];
  v14 = *(*(*(v7 + 16) - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v16 = *a1;
  v15 = a1[1];
  *a4 = v16;
  a4[1] = v15;
  (*(v17 + 16))(&v22[-v18], a3 + *(v8 + 36));
  v19 = *(v8 - 8);
  (*(v19 + 16))(v13, a3, v8);
  (*(v19 + 56))(v13, 0, 1, v8);

  v20 = swift_modifyAtWritableKeyPath();
  sub_2287CB1A0();
  return v20(v22, 0);
}

uint64_t sub_2287392BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(*(*a2 + *MEMORY[0x277D84308] + 8) + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v21 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v11 + 16))(v14, a3, v10);
    v16 = *(v11 + 80);
    v21 = a5;
    v17 = (v16 + 64) & ~v16;
    v18 = swift_allocObject();
    *(v18 + 2) = a4;
    *(v18 + 3) = *(v10 + 16);
    v19 = *(v9 + *MEMORY[0x277D84308]);
    v20 = v21;
    *(v18 + 4) = *(v19 + 16);
    *(v18 + 5) = v20;
    *(v18 + 6) = *(v19 + 24);
    *(v18 + 7) = a2;
    (*(v11 + 32))(&v18[v17], v14, v10);

    sub_228738988(sub_22873CAE8, v18);
  }

  return result;
}

uint64_t sub_2287394B0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v8 = *(v7 + 24);
  v9 = sub_2287CB820();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v21[-v12];
  v14 = *(*(*(v7 + 16) - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v16 = *a1;
  v15 = a1[1];
  *a4 = v16;
  a4[1] = v15;
  (*(v17 + 16))(&v21[-v18], a3 + *(v8 + 36));
  (*(*(v8 - 8) + 56))(v13, 1, 1, v8);

  v19 = swift_modifyAtWritableKeyPath();
  sub_2287CB1A0();
  return v19(v21, 0);
}

uint64_t sub_22873969C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v8 = sub_2287CAA40();
  v9 = sub_2287CB610();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = a2;
    v17 = v11;
    *v10 = 136446210;
    swift_getMetatypeMetadata();
    v12 = sub_2287CB250();
    v14 = sub_2287031D8(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2286FF000, v8, v9, "[%{public}s]: subscription to begin generation received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AABFD90](v11, -1, -1);
    MEMORY[0x22AABFD90](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22873984C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_2287CAC90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_2287CAA50();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v18 = *(v7 + 16);
  v18(v12, a1, v6);
  v19 = sub_2287CAA40();
  v36 = sub_2287CB610();
  if (os_log_type_enabled(v19, v36))
  {
    v20 = swift_slowAlloc();
    v35 = v14;
    v21 = v20;
    v34 = swift_slowAlloc();
    v38 = a2;
    v39 = v34;
    *v21 = 136446466;
    swift_getMetatypeMetadata();
    v22 = sub_2287CB250();
    v24 = sub_2287031D8(v22, v23, &v39);
    v33 = v13;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v18(v37, v12, v6);
    v26 = sub_2287CB250();
    v28 = v27;
    (*(v7 + 8))(v12, v6);
    v29 = sub_2287031D8(v26, v28, &v39);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2286FF000, v19, v36, "[%{public}s]: Sending completion event <%{public}s> for generation sent", v21, 0x16u);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v30, -1, -1);
    MEMORY[0x22AABFD90](v21, -1, -1);

    return (*(v35 + 8))(v17, v33);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_228739BD8(uint64_t a1)
{
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v7 = sub_2287CAA40();
  v8 = sub_2287CB610();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136446210;
    swift_getMetatypeMetadata();
    v11 = sub_2287CB250();
    v13 = sub_2287031D8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2286FF000, v7, v8, "[%{public}s]: cancellation received for generation", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AABFD90](v10, -1, -1);
    MEMORY[0x22AABFD90](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_228739E24()
{
  if (!qword_280DDFE08)
  {
    sub_2287CA370();
    sub_2287CA2B0();
    sub_22873DE20(&qword_280DE11A8, MEMORY[0x277D12068]);
    v0 = sub_2287CBE10();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFE08);
    }
  }
}

uint64_t sub_228739ED0(uint64_t a1, uint64_t a2)
{
  sub_228739E24();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_228739F64()
{
  if (!qword_280DE1968)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE1968);
    }
  }
}

unint64_t sub_228739FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22873A1D0(0, &qword_280DE18A8, MEMORY[0x277D84460]);
    v3 = sub_2287CBBF0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_228756BD4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22873A0FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22873A15C()
{
  if (!qword_280DE3360)
  {
    sub_22873A1D0(255, &qword_280DE1A40, MEMORY[0x277D834F8]);
    v0 = sub_2287CA680();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3360);
    }
  }
}

void sub_22873A1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    v7 = sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    v8 = sub_22873A2A8(&qword_280DE1970, &qword_280DE3870, 0x277CCD7C8);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22873A2A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_228703004(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22873A300()
{
  if (!qword_280DE01E8)
  {
    sub_22873E054(255, &qword_280DE1A28);
    sub_22870D3A8(255, &qword_280DE35A0);
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE01E8);
    }
  }
}

void sub_22873A390()
{
  if (!qword_280DE1AE0)
  {
    sub_22873E054(255, &qword_280DE1A28);
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1AE0);
    }
  }
}

unint64_t sub_22873A43C()
{
  result = qword_280DE0710;
  if (!qword_280DE0710)
  {
    sub_22873DD44(255, &qword_280DE0708, sub_22873A390, sub_22873A408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0710);
  }

  return result;
}

unint64_t sub_22873A4D0()
{
  result = qword_280DE1BB8;
  if (!qword_280DE1BB8)
  {
    sub_22873E304(255, &qword_280DE1BB0, sub_22873A390, sub_22873A408, MEMORY[0x277CBCC50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1BB8);
  }

  return result;
}

uint64_t sub_22873A56C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_22873A8B8()
{
  sub_228739E24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_22873A9B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22873A9EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_228738CC4(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22873AA14()
{
  result = qword_280DE3A08;
  if (!qword_280DE3A08)
  {
    sub_22873DC58(255, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3A08);
  }

  return result;
}

void sub_22873AAD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_22870CB48(255);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22873AB44()
{
  if (!qword_280DE05B8)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22873D054(255, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    sub_22873AC94();
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v0);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE05B8);
    }
  }
}

void sub_22873AC2C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_228703004(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22873AC94()
{
  if (!qword_280DE1A90)
  {
    sub_22873AC2C(255, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_22870D3A8(255, &qword_280DE35A0);
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1A90);
    }
  }
}

uint64_t sub_22873AD40(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_22873D054(255, a2, &qword_280DDFEB0, MEMORY[0x277D83D88], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22873ADD8()
{
  if (!qword_280DE0038)
  {
    sub_22873DA58(255, &qword_280DE01C0, sub_22870CB48, MEMORY[0x277CBCD88]);
    sub_22873AE8C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE0038);
    }
  }
}

unint64_t sub_22873AE8C()
{
  result = qword_280DE01C8;
  if (!qword_280DE01C8)
  {
    sub_22873DA58(255, &qword_280DE01C0, sub_22870CB48, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE01C8);
  }

  return result;
}

unint64_t sub_22873AF2C()
{
  result = qword_280DE06B0;
  if (!qword_280DE06B0)
  {
    sub_22873C240(255, &qword_280DE06A8, sub_22873AB44, sub_22873ADA4, MEMORY[0x277CBCBA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE06B0);
  }

  return result;
}

unint64_t sub_22873AFC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22873E1A8();
    v3 = sub_2287CBBF0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22873E20C(v4, v13, sub_22873E274);
      result = sub_228756AB4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22873E2D8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22873B0EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v101 = a7;
  v84 = a5;
  v103 = a3;
  v104 = a4;
  v102 = a2;
  v100 = a1;
  sub_22873BE44();
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v8);
  v95 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873E304(0, &qword_280DE0500, sub_22873BF48, sub_22873BFE0, MEMORY[0x277CBCC88]);
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  MEMORY[0x28223BE20](v11);
  v89 = v83 - v13;
  sub_22873C014();
  v93 = *(v14 - 8);
  v94 = v14;
  v15 = *(v93 + 64);
  MEMORY[0x28223BE20](v14);
  v90 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C170();
  v88 = v17;
  v87 = *(v17 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C240(0, &qword_280DE0420, sub_22873C170, sub_22873C31C, MEMORY[0x277CBCCD8]);
  v86 = v21;
  v85 = *(v21 - 8);
  v22 = *(v85 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v83 - v23;
  sub_22873DC58(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = v83 - v29;
  sub_22873DA58(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v36 = v83 - v35;
  sub_22873C350();
  v98 = *(v37 - 8);
  v99 = v37;
  v38 = *(v98 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a6)
  {
    v66 = v102[4];
    __swift_project_boxed_opaque_existential_1(v102, v102[3]);
    v67 = sub_2287C9A70();
    v69 = v68;
    *&v105[0] = v84;
    v70 = MEMORY[0x277CBCD88];
    sub_22873D054(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    v84 = MEMORY[0x277CBCD90];
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v70);
    sub_2287CAFA0();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v72 = swift_allocObject();
    v72[2] = v71;
    v72[3] = v67;
    v73 = v103;
    v72[4] = v69;
    v72[5] = v73;
    v72[6] = v104;

    sub_2287CACC0();
    sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_22873AC94();
    v75 = v74;
    sub_22873C31C();
    v76 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94);
    v77 = v88;
    sub_2287CAFE0();

    (*(v87 + 8))(v20, v77);
    sub_22873C404();
    v78 = v86;
    v79 = sub_2287CAF40();
    (*(v85 + 8))(v24, v78);
    *&v105[0] = v79;
    sub_2287CAE10();

    *&v105[0] = v75;
    *(&v105[0] + 1) = v76;
    swift_getOpaqueTypeConformance2();
    v80 = v99;
    v81 = sub_2287CAE40();
    (*(v98 + 8))(v40, v80);
    *&v105[0] = v81;
    v82 = MEMORY[0x277CBCD88];
    sub_22873AAD4(0, &qword_280DE1AA0, MEMORY[0x277CBCD88]);
    sub_22873BF04(&qword_280DE1AA8, &qword_280DE1AA0, v82);
    v50 = sub_2287CAF40();

    v41 = v102;
    v51 = v101;
    if (!v101)
    {
      return v50;
    }

    goto LABEL_3;
  }

  v83[1] = a6;
  *&v105[0] = a6;
  sub_2287CA570();
  swift_retain_n();
  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CAD80();
  (*(v27 + 8))(v30, v26);
  v41 = v102;
  v42 = v102[4];
  __swift_project_boxed_opaque_existential_1(v102, v102[3]);
  sub_2287C9A70();
  sub_22873C4AC();
  v43 = sub_2287CAE70();

  (*(v33 + 8))(v36, v32);
  *&v105[0] = v43;
  sub_22873AC94();
  v45 = v44;
  v46 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94);
  sub_2287CAE10();

  *&v105[0] = v45;
  *(&v105[0] + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v99;
  v48 = sub_2287CAE40();
  (*(v98 + 8))(v40, v47);
  *&v105[0] = v48;
  v49 = MEMORY[0x277CBCD88];
  sub_22873AAD4(0, &qword_280DE1AA0, MEMORY[0x277CBCD88]);
  sub_22873BF04(&qword_280DE1AA8, &qword_280DE1AA0, v49);
  v50 = sub_2287CAF40();

  v51 = v101;
  if (v101)
  {
LABEL_3:
    v106 = v51;
    sub_2287010E4(v41, v105);
    v52 = swift_allocObject();
    sub_228706AD4(v105, v52 + 16);
    v53 = v100;
    *(v52 + 56) = v100;
    sub_22873BF48();
    sub_22873BFE0();

    v54 = v53;
    v55 = v89;
    sub_2287CAFB0();

    sub_22870CB48(0);
    sub_22873C0D4();
    v56 = v90;
    v57 = v92;
    sub_2287CAF70();
    (*(v91 + 8))(v55, v57);
    sub_22873DE20(&qword_280DE05A0, sub_22873C014);
    v58 = v94;
    v59 = sub_2287CAE30();
    (*(v93 + 8))(v56, v58);
    *&v105[0] = v59;
    v60 = MEMORY[0x277CBCD88];
    sub_22873AAD4(0, &qword_280DE1AA0, MEMORY[0x277CBCD88]);
    sub_22873BF04(&qword_280DE1AA8, &qword_280DE1AA0, v60);
    v61 = sub_2287CAF40();

    *&v105[0] = v61;
    v106 = v50;
    v62 = v95;
    sub_2287CAF00();
    sub_22873DE20(&qword_280DE0678, sub_22873BE44);
    v63 = v97;
    v64 = sub_2287CAF40();

    (*(v96 + 8))(v62, v63);
    return v64;
  }

  return v50;
}

void sub_22873BE44()
{
  if (!qword_280DE0670)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22873AAD4(255, &qword_280DE1AA0, MEMORY[0x277CBCD88]);
    sub_22873BF04(&qword_280DE1AA8, &qword_280DE1AA0, v0);
    v1 = sub_2287CAB30();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0670);
    }
  }
}

uint64_t sub_22873BF04(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_22873AAD4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22873BF48()
{
  if (!qword_280DE1AF0)
  {
    sub_22873DC58(255, &qword_280DE2608, sub_22870CB48, type metadata accessor for GeneratorPipelineManagerWrapper);
    v0 = sub_2287CACD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1AF0);
    }
  }
}

void sub_22873C014()
{
  if (!qword_280DE0598)
  {
    sub_22873E304(255, &qword_280DE0500, sub_22873BF48, sub_22873BFE0, MEMORY[0x277CBCC88]);
    sub_22870CB48(255);
    sub_22873C0D4();
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0598);
    }
  }
}

unint64_t sub_22873C0D4()
{
  result = qword_280DE0508;
  if (!qword_280DE0508)
  {
    sub_22873E304(255, &qword_280DE0500, sub_22873BF48, sub_22873BFE0, MEMORY[0x277CBCC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0508);
  }

  return result;
}

void sub_22873C170()
{
  if (!qword_280DE0510)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22873D054(255, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v0);
    v1 = sub_2287CAB70();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0510);
    }
  }
}

void sub_22873C240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_22873AC94();
    v13[0] = v10;
    v13[1] = a3(255);
    v13[2] = sub_22873DE20(&qword_280DE1A98, sub_22873AC94);
    v13[3] = a4();
    v11 = a5(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_22873C350()
{
  if (!qword_280DE0030)
  {
    sub_22873AC94();
    sub_22873DE20(&qword_280DE1A98, sub_22873AC94);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE0030);
    }
  }
}

unint64_t sub_22873C404()
{
  result = qword_280DE0428;
  if (!qword_280DE0428)
  {
    sub_22873C240(255, &qword_280DE0420, sub_22873C170, sub_22873C31C, MEMORY[0x277CBCCD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0428);
  }

  return result;
}

unint64_t sub_22873C4AC()
{
  result = qword_280DDFE40;
  if (!qword_280DDFE40)
  {
    sub_22873DA58(255, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFE40);
  }

  return result;
}

uint64_t sub_22873C534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_228735108(a1, v8, a2);
}

uint64_t sub_22873C5EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_22873531C(a1, a2);
}

uint64_t sub_22873C5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_2287366C8(a1, v8, a2);
}

uint64_t sub_22873C6FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_228736924(a1, a2);
}

uint64_t sub_22873C718(uint64_t a1, uint64_t a2)
{
  sub_22873DC58(0, qword_280DE07D8, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22873C7AC(uint64_t a1)
{
  sub_22873DC58(0, qword_280DE07D8, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22873C838(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[5];
  v6 = *(type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1 + ((*(v6 + 80) + 72) & ~*(v6 + 80));

  return sub_228738EAC(a1, v7, v8, v9, v4, v5);
}

uint64_t objectdestroy_75Tm()
{
  v1 = *(v0 + 3);
  v2 = (type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 7);

  v7 = *(v0 + 8);

  (*(*(v1 - 8) + 8))(&v0[v4], v1);
  __swift_destroy_boxed_opaque_existential_0(&v0[v4 + v2[9]]);
  v8 = v2[10];
  v9 = sub_2287C9ED0();
  (*(*(v9 - 8) + 8))(&v0[v4 + v8], v9);
  v10 = v2[11];
  v11 = sub_2287C9810();
  (*(*(v11 - 8) + 8))(&v0[v4 + v10], v11);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22873CA3C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = *(type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0 + ((*(v4 + 80) + 72) & ~*(v4 + 80));

  return sub_2287392BC(v5, v6, v7, v2, v3);
}

uint64_t sub_22873CAC0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

uint64_t objectdestroy_85Tm()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 56);

  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v7 = v2[10];
  v8 = sub_2287C9ED0();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = v2[11];
  v10 = sub_2287C9810();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22873CC88(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[5];
  v7 = *(type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v8 = v2[7];
  v9 = v2 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return a2(a1, v8, v9, v5, v6);
}

uint64_t sub_22873CD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2287331D4(a1, a2);
}

double sub_22873CD64@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_2287332DC(a1, a2);
}

uint64_t sub_22873CD70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_228733404(a1, a2);
}

void sub_22873CD8C()
{
  if (!qword_280DE05C8)
  {
    sub_22873D054(255, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
    sub_22873AC2C(255, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
    sub_22873CE6C();
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE05C8);
    }
  }
}

unint64_t sub_22873CE6C()
{
  result = qword_280DE0180;
  if (!qword_280DE0180)
  {
    sub_22873D054(255, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0180);
  }

  return result;
}

void sub_22873CEFC()
{
  if (!qword_280DE02D0)
  {
    v0 = MEMORY[0x277D83D88];
    v1 = MEMORY[0x277CBCD88];
    sub_22873D054(255, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    v2 = MEMORY[0x277D10CC0];
    sub_22873D054(255, &qword_280DE1158, &qword_280DDFEB0, v0, MEMORY[0x277D10CC0]);
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v1);
    sub_22873AD40(&qword_280DE1160, &qword_280DE1158, v2);
    v3 = sub_2287CAC50();
    if (!v4)
    {
      atomic_store(v3, &qword_280DE02D0);
    }
  }
}

void sub_22873D054(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22873AC2C(255, a3, &qword_280DE1958, 0x277CCD940, a4);
    v9 = v8;
    v10 = sub_22870D3A8(255, &qword_280DE35A0);
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_22873D12C()
{
  result = qword_280DE07A0;
  if (!qword_280DE07A0)
  {
    sub_22873E304(255, &qword_280DE0798, sub_22873CEFC, sub_22873D0F8, MEMORY[0x277CBCB28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE07A0);
  }

  return result;
}

unint64_t sub_22873D1D8()
{
  result = qword_280DE0290;
  if (!qword_280DE0290)
  {
    sub_22873DA58(255, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0290);
  }

  return result;
}

void sub_22873D260()
{
  if (!qword_280DE02E0)
  {
    v0 = MEMORY[0x277D11FC0];
    sub_22873DA58(255, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
    sub_22873DA58(255, &qword_280DE1168, v0, MEMORY[0x277D10CC0]);
    sub_22873D1D8();
    sub_22873D340();
    v1 = sub_2287CAC50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE02E0);
    }
  }
}

unint64_t sub_22873D340()
{
  result = qword_280DE1170;
  if (!qword_280DE1170)
  {
    sub_22873DA58(255, &qword_280DE1168, MEMORY[0x277D11FC0], MEMORY[0x277D10CC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1170);
  }

  return result;
}

unint64_t sub_22873D3FC()
{
  result = qword_280DE07B0;
  if (!qword_280DE07B0)
  {
    sub_22873E304(255, &qword_280DE07A8, sub_22873D260, sub_22873D3C8, MEMORY[0x277CBCB28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE07B0);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22873D500()
{
  if (!qword_280DE1B80)
  {
    sub_22873E054(255, &qword_280DE1A28);
    sub_22873D5C4(&qword_280DE1A20, &qword_280DE1A28);
    v0 = sub_2287CAC10();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1B80);
    }
  }
}

uint64_t sub_22873D5C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22873E054(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22873D608()
{
  if (!qword_280DE04D0)
  {
    sub_22873DA58(255, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
    sub_22873DD44(255, &qword_280DE06D8, sub_22873D500, sub_22873D78C);
    sub_22873D7C0();
    sub_22873D848();
    v0 = sub_2287CABC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE04D0);
    }
  }
}

void sub_22873D6F4()
{
  if (!qword_280DE11E0)
  {
    sub_22873DC58(255, &qword_280DE1198, MEMORY[0x277D121A8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE11E0);
    }
  }
}

unint64_t sub_22873D7C0()
{
  result = qword_280DE02A0;
  if (!qword_280DE02A0)
  {
    sub_22873DA58(255, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE02A0);
  }

  return result;
}

unint64_t sub_22873D848()
{
  result = qword_280DE06E0;
  if (!qword_280DE06E0)
  {
    sub_22873DD44(255, &qword_280DE06D8, sub_22873D500, sub_22873D78C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE06E0);
  }

  return result;
}

uint64_t sub_22873D8D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_228730A90(a1, a2);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22873D928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22873D9AC()
{
  if (!qword_280DE0640)
  {
    sub_22873DA58(255, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873D6F4();
    sub_22873DAE4();
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0640);
    }
  }
}

void sub_22873DA58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_22870D3A8(255, &qword_280DE35A0);
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22873DAE4()
{
  result = qword_280DE0270;
  if (!qword_280DE0270)
  {
    sub_22873DA58(255, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0270);
  }

  return result;
}

void sub_22873DB6C()
{
  if (!qword_280DE0558)
  {
    sub_22873D9AC();
    sub_22873DC58(255, &qword_280DE00D8, sub_22873D6F4, MEMORY[0x277CBCE78]);
    sub_22873DE20(&qword_280DE0648, sub_22873D9AC);
    sub_22873DCBC();
    v0 = sub_2287CAB60();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0558);
    }
  }
}

void sub_22873DC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22873DCBC()
{
  result = qword_280DE00E0;
  if (!qword_280DE00E0)
  {
    sub_22873DC58(255, &qword_280DE00D8, sub_22873D6F4, MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE00E0);
  }

  return result;
}

void sub_22873DD44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_22870D3A8(255, &qword_280DE35A0);
    a4();
    v6 = sub_2287CAAF0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22873DE20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22873DE68()
{
  if (!qword_280DE11A0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE11A0);
    }
  }
}

unint64_t sub_22873DEC8()
{
  result = qword_27D850D00;
  if (!qword_27D850D00)
  {
    sub_22873DA58(255, &qword_280DE0098, sub_22873D6F4, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850D00);
  }

  return result;
}

unint64_t sub_22873DF60()
{
  result = qword_280DE06F0;
  if (!qword_280DE06F0)
  {
    sub_22873DD44(255, &qword_280DE06E8, sub_22873DB6C, sub_22873DDEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE06F0);
  }

  return result;
}

uint64_t sub_22873E030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_228738064(a1, *(v2 + 32), a2);
}

void sub_22873E054(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2287CB450();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_22873E0A0()
{
  result = qword_280DE3A20;
  if (!qword_280DE3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3A20);
  }

  return result;
}

uint64_t sub_22873E154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_228738540(a1, *(v2 + 32), a2);
}

void sub_22873E1A8()
{
  if (!qword_280DE39B0)
  {
    v0 = sub_2287CBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE39B0);
    }
  }
}

uint64_t sub_22873E20C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22873E274()
{
  if (!qword_280DE18F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE18F8);
    }
  }
}

_OWORD *sub_22873E2D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_22873E304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_22873E384(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_228730334(a1, v1[4]);
}

unint64_t sub_22873E390()
{
  result = qword_280DE1B98;
  if (!qword_280DE1B98)
  {
    sub_22873E304(255, &qword_280DE1B90, sub_22873A390, sub_22873A408, MEMORY[0x277CBCC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1B98);
  }

  return result;
}

uint64_t Keyword.localizedIdentifier.getter()
{
  v1 = [v0 identifier];
  sub_2287CB220();

  sub_2287C9FD0();
  v2 = sub_22873E55C();

  if (v2)
  {
    return 0;
  }

  v3 = [v0 identifier];
  v4 = HKDisplayCategoryIdentifierFromString();

  if (v4 != -1)
  {
    return 0;
  }

  v6 = [v0 identifier];
  v7 = sub_2287CB220();

  return v7;
}

uint64_t sub_22873E55C()
{

  v0 = sub_2287CB2C0();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_2287CB2C0();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_2287CBD00();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_2287CB2C0();
      v3 = v5;
    }

    while (v5);
  }

  sub_2287CB2C0();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t Set<>.correspondingKeywords.getter()
{
  swift_getWitnessTable();
  sub_2287CB4D0();
  sub_22871B354();
  swift_getWitnessTable();
  sub_22873E7CC();
  v0 = sub_2287CB330();
  v1 = sub_22872A9BC(v0);

  return v1;
}

uint64_t sub_22873E798@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = _s14HealthPlatform7KeywordC0aB4CoreE11identifiers3forSaySSGSo12HKObjectTypeC_tFZ_0();
  *a2 = result;
  return result;
}

unint64_t sub_22873E7CC()
{
  result = qword_280DE19D8;
  if (!qword_280DE19D8)
  {
    sub_22871B354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE19D8);
  }

  return result;
}

uint64_t Keyword.uniqueIdentifier.getter()
{
  swift_getObjectType();
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_2287CBE60();
  v13[1] = v6;
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  v7 = [v0 identifier];
  v8 = sub_2287CB220();
  v10 = v9;

  MEMORY[0x22AABE980](v8, v10);

  MEMORY[0x22AABE980](95, 0xE100000000000000);
  sub_2287C9800();
  sub_22873EA30(&qword_280DE3468, MEMORY[0x277CC95F0]);
  v11 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v11);

  (*(v2 + 8))(v5, v1);
  return v13[0];
}

uint64_t sub_22873EA30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22873EAB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t ModelTrainingScenarioExecutor.__allocating_init(coordinator:store:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_228706AD4(a1, v4 + 16);
  sub_228706AD4(a2, v4 + 56);
  return v4;
}

uint64_t ModelTrainingScenarioExecutor.init(coordinator:store:)(__int128 *a1, __int128 *a2)
{
  sub_228706AD4(a1, v2 + 16);
  sub_228706AD4(a2, v2 + 56);
  return v2;
}

uint64_t sub_22873EBB0(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return RelevanceEngineCoordinator.saveModelToDisk(completion:)(a1, a2, v5, v6);
}

void sub_22873EC0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a2;
  v56 = a3;
  sub_228705C84();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v49 - v10;
  v11 = sub_2287C97C0();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ModelTrainingCommand(0);
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v50);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v51 = &v49 - v22;
  v23 = *a1;
  v54 = a1[1];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    while (1)
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      sub_22873FA14(v26 + *(v14 + 72) * v25, v18, type metadata accessor for ModelTrainingCommand);
      if (*v18 == 1)
      {
        break;
      }

      v27 = sub_2287CBD00();

      if (v27)
      {
        goto LABEL_9;
      }

      ++v25;
      sub_22873FAD4(v18, type metadata accessor for ModelTrainingCommand);
      if (v24 == v25)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    sub_22873FB34(v18, v21, type metadata accessor for ModelTrainingCommand);
    v28 = v51;
    sub_22873FB34(v21, v51, type metadata accessor for ModelTrainingCommand);
    v29 = v52;
    sub_22873FA14(v28 + *(v50 + 24), v52, sub_228705C84);
    v31 = v57;
    v30 = v58;
    if ((*(v57 + 48))(v29, 1, v58) == 1)
    {
      sub_22873FAD4(v28, type metadata accessor for ModelTrainingCommand);
      sub_22873FAD4(v29, sub_228705C84);
      goto LABEL_11;
    }

    v36 = v49;
    (*(v31 + 32))(v49, v29, v30);
    v37 = v4[5];
    v38 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v37);
    v39 = (*(v38 + 32))(v37, v38);
    v40 = v53;
    (*(v31 + 16))(v53, v36, v30);
    (*(v31 + 56))(v40, 0, 1, v30);
    sub_22879A3E0(v40);

    (*(v31 + 8))(v36, v30);
    sub_22873FAD4(v28, type metadata accessor for ModelTrainingCommand);
  }

  else
  {
LABEL_11:
    v32 = v4[5];
    v33 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v32);
    v34 = (*(v33 + 32))(v32, v33);
    v35 = v53;
    (*(v57 + 56))(v53, 1, 1, v58);
    sub_22879A3E0(v35);
  }

  v42 = v55;
  v41 = v56;
  v43 = v54;
  v44 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v45 = sub_2287C99F0();
  v46 = swift_allocObject();
  v46[2] = v23;
  v46[3] = v43;
  v46[4] = v45;
  v46[5] = v4;
  v46[6] = v42;
  v46[7] = v41;
  aBlock[4] = sub_22873F8EC;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_1;
  v47 = _Block_copy(aBlock);

  v48 = v45;

  [v48 performBlock_];
  _Block_release(v47);
}

uint64_t sub_22873F1E4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v61 = a4;
  v72 = a3;
  v75 = a2;
  v70 = type metadata accessor for ModelTrainingElement(0);
  v73 = *(v70 - 8);
  v7 = *(v73 + 8);
  v8 = MEMORY[0x28223BE20](v70);
  v69 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v68 = &v61 - v10;
  sub_22871511C();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v74 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ModelTrainingCommand(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v21 = *(v16 + 72);
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22873FA14(v20, v18, type metadata accessor for ModelTrainingCommand);
      if ((*v18 & 1) == 0)
      {
        break;
      }

      v23 = sub_2287CBD00();

      if (v23)
      {
        goto LABEL_9;
      }

      sub_22873FAD4(v18, type metadata accessor for ModelTrainingCommand);
LABEL_4:
      v20 += v21;
      if (!--v19)
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    v24 = *(v18 + 1);
    v25 = *(v18 + 2);

    sub_22873FAD4(v18, type metadata accessor for ModelTrainingCommand);
    if (v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_228722DF0(0, *(v22 + 2) + 1, 1, v22);
      }

      v27 = *(v22 + 2);
      v26 = *(v22 + 3);
      if (v27 >= v26 >> 1)
      {
        v22 = sub_228722DF0((v26 > 1), v27 + 1, 1, v22);
      }

      *(v22 + 2) = v27 + 1;
      v28 = &v22[16 * v27];
      *(v28 + 4) = v24;
      *(v28 + 5) = v25;
    }

    goto LABEL_4;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_16:
  v29 = sub_22872A9BC(v22);

  v30 = v75;
  v31 = *(v75 + 16);
  if (v31)
  {
    v71 = v29;
    v77 = MEMORY[0x277D84F90];
    sub_22871333C(0, v31, 0);
    v32 = sub_2287CA800();
    v33 = v77;
    v34 = v74;
    v35 = v30 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v64 = *(v73 + 9);
    v65 = v32;
    do
    {
      v74 = v31;
      v75 = v33;
      v73 = type metadata accessor for ModelTrainingElement;
      v36 = v68;
      sub_22873FA14(v35, v68, type metadata accessor for ModelTrainingElement);
      v37 = v69;
      sub_22873FA14(v36, v69, type metadata accessor for ModelTrainingElement);
      FeedItem.init(context:modelTrainingElement:)(v72, v37);
      v39 = v38;
      v40 = [v38 featureTags];
      sub_2287C9F20();
      sub_22873FA7C();
      v41 = sub_2287CB470();

      v42 = sub_228711490(v41);

      sub_228710F40();
      v76 = v42;
      sub_22870E18C(v43);
      v44 = [v39 uniqueIdentifier];
      v45 = [objc_allocWithZone(MEMORY[0x277D443E0]) init];
      v46 = objc_allocWithZone(MEMORY[0x277D443F8]);
      sub_228703004(0, &qword_280DE1960, 0x277D44488);
      v47 = sub_2287CB390();

      v48 = [v46 initWithIdentifier:v44 content:v45 action:0 relevanceProviders:v47];

      LOBYTE(v44) = sub_22878462C(*(v36 + *(v70 + 56)), *(v36 + *(v70 + 56) + 8), v71);
      v49 = [v39 objectID];
      v50 = [v49 URIRepresentation];

      v51 = v34 + *(v67 + 48);
      sub_2287C96F0();

      v52 = type metadata accessor for ModelTrainingEvent();
      v53 = &v51[v52[7]];
      sub_2287C97B0();

      v54 = v36;
      v33 = v75;
      sub_22873FAD4(v54, v73);
      v51[v52[5]] = 0;
      v51[v52[6]] = v44 & 1;
      *v34 = v48;
      v77 = v33;
      v56 = *(v33 + 16);
      v55 = *(v33 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_22871333C(v55 > 1, v56 + 1, 1);
        v33 = v77;
      }

      *(v33 + 16) = v56 + 1;
      sub_22873FB34(v34, v33 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v56, sub_22871511C);
      v35 += v64;
      v31 = (v74 - 1);
    }

    while (v74 != 1);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  [v72 rollback];
  v57 = v61[5];
  v58 = v61[6];
  __swift_project_boxed_opaque_existential_1(v61 + 2, v57);
  v59 = swift_allocObject();
  *(v59 + 16) = v62;
  *(v59 + 24) = v63;

  RelevanceEngineCoordinator.train(with:completion:)(v33, sub_22873FB9C, v59, v57, v58);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ModelTrainingScenarioExecutor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t ModelTrainingScenarioExecutor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_22873FA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22873FA7C()
{
  result = qword_280DE11D8;
  if (!qword_280DE11D8)
  {
    sub_2287C9F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE11D8);
  }

  return result;
}

uint64_t sub_22873FAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22873FB34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22873FB9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22873FBC4()
{
  v0 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  sub_2287CA000();
  if (v1)
  {
    v2 = objc_opt_self();
    if (qword_280DE3818 != -1)
    {
      swift_once();
    }

    v3 = qword_280DE63D8;
    v4 = sub_2287CB210();

    v5 = [objc_opt_self() featureValueWithString_];

    v6 = [v2 customRelevanceProviderForFeature:v3 withValue:v5];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x22AABEA50]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      sub_2287CB420();

      return v10;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v0;
}

void sub_22873FD34()
{
  v0 = sub_2287CB210();
  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63D8 = v1;
}

void sub_22873FDA8()
{
  if (qword_280DE3818 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63D8;
  sub_2287C9B40();
  v1 = v0;
  v2 = *(sub_2287C9B30() + 16);

  sub_228795C5C(v2);
  v4 = v3;

  qword_280DE63D0 = v4;
}

void sub_22873FE38()
{
  sub_22873FEB8();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE6250 = v1;
}

unint64_t sub_22873FEB8()
{
  result = qword_280DE0F90;
  if (!qword_280DE0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0F90);
  }

  return result;
}

uint64_t HealthExperienceStoreFeedItemContext.__allocating_init(storageContext:pluginInfo:healthStore:environment:pinnedContentManagerProvider:notificationManager:queueProvider:dateRange:displayNamePublisher:primaryHealthStore:)(void *a1, uint64_t *a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v58 = a7;
  v59 = a3;
  v62 = a6;
  v64 = a10;
  v60 = a9;
  v56 = sub_2287CA090();
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v52[1] = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287459AC(0, &qword_280DE00D0, MEMORY[0x277D11FC0], MEMORY[0x277CBCE78]);
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = *(v53 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v52 - v20;
  sub_228740F3C();
  v57 = v22;
  v55 = *(v22 - 8);
  v23 = *(v55 + 64);
  MEMORY[0x28223BE20](v22);
  v52[0] = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v10 + 48);
  v26 = *(v10 + 52);
  v27 = swift_allocObject();
  *(v27 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms) = &unk_283BC0130;
  *(v27 + 56) = a4 & 1;
  v28 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  v29 = sub_2287C9590();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v63 = a8;
  v61 = v29;
  v31(v27 + v28, a8);
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v33 = a1;
  sub_2287C9A70();
  sub_228740FBC();
  sub_2287CB550();

  v34 = v58;
  sub_2287CA320();
  *(v27 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) = v33;
  sub_2287010E4(a2, v27 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  v35 = v59;
  *(v27 + 16) = v59;
  *(v27 + 24) = a5;
  sub_2287010E4(v34, v27 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v36 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v37 = v33;
  v38 = v60;
  v39 = v37;

  v59 = v35;
  *(v27 + 48) = [v36 initWithHealthStore_];
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    sub_2287CA080();
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0);
    v56 = v39;
    v41 = v52[0];
    v42 = v54;
    sub_2287CAD80();
    (*(v53 + 8))(v21, v42);
    sub_228741194(&qword_27D850D10, sub_228740F3C);
    v43 = v57;
    v40 = sub_2287CAF40();
    v44 = v41;
    v39 = v56;
    (*(v55 + 8))(v44, v43);
  }

  *(v27 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher) = v40;
  v45 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  sub_2287C9A70();
  v46 = sub_2287C9A30();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_2287C9A20();

  (*(v30 + 8))(v63, v61);
  __swift_destroy_boxed_opaque_existential_0(v34);
  v50 = MEMORY[0x277D11D38];
  *(v27 + 32) = v49;
  *(v27 + 40) = v50;
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v27;
}

void sub_228740458(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_2287404B0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2287404F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_228740554()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_22874058C(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2287405F0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

void sub_228740634(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  v5 = v2;
}

id sub_22874068C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_228740704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  swift_beginAccess();
  v5 = sub_2287C9590();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_228740790(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2287C9590();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_2287408A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  swift_beginAccess();
  v4 = sub_2287C9590();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

char *HealthExperienceStoreFeedItemContext.init(storageContext:pluginInfo:healthStore:environment:pinnedContentManagerProvider:notificationManager:queueProvider:dateRange:displayNamePublisher:primaryHealthStore:)(void *a1, uint64_t *a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v69 = a6;
  v64 = a1;
  v71 = a7;
  v72 = a10;
  v65 = a9;
  v66 = a3;
  v62 = sub_2287CA090();
  v16 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287459AC(0, &qword_280DE00D0, MEMORY[0x277D11FC0], MEMORY[0x277CBCE78]);
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  MEMORY[0x28223BE20](v18);
  v56 = &v55 - v20;
  sub_228740F3C();
  v63 = v21;
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x28223BE20](v21);
  v57 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287CA340();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms] = &unk_283BC0160;
  v10[56] = a4 & 1;
  v29 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  v30 = sub_2287C9590();
  v67 = *(v30 - 8);
  v68 = v30;
  v31 = *(v67 + 16);
  v70 = a8;
  v31(&v11[v29], a8);
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v33 = v64;
  sub_2287C9A70();
  sub_228740FBC();
  sub_2287CB550();

  sub_2287CA320();
  v34 = v24;
  v35 = a5;
  v36 = v65;
  (*(v25 + 32))(&v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage], v28, v34);
  *&v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext] = v33;
  sub_2287010E4(a2, &v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo]);
  v37 = v66;
  *(v11 + 2) = v66;
  *(v11 + 3) = v35;
  sub_2287010E4(v71, &v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider]);
  v38 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v39 = v33;

  v40 = v37;
  *(v11 + 6) = [v38 initWithHealthStore_];
  if (v36)
  {
    v41 = v36;
  }

  else
  {
    sub_2287CA080();
    v42 = v39;
    v43 = v56;
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0);
    v44 = v57;
    v45 = v60;
    sub_2287CAD80();
    v46 = v43;
    v39 = v42;
    (*(v59 + 8))(v46, v45);
    sub_228741194(&qword_27D850D10, sub_228740F3C);
    v47 = v63;
    v41 = sub_2287CAF40();
    (*(v61 + 8))(v44, v47);
  }

  *&v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher] = v41;
  v48 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  sub_2287C9A70();
  v49 = sub_2287C9A30();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = sub_2287C9A20();

  (*(v67 + 8))(v70, v68);
  __swift_destroy_boxed_opaque_existential_0(v71);
  v53 = MEMORY[0x277D11D38];
  *(v11 + 4) = v52;
  *(v11 + 5) = v53;
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v11;
}

void sub_228740F3C()
{
  if (!qword_280DDFE48)
  {
    sub_2287CA090();
    sub_22870D3A8(255, &qword_280DE35A0);
    v0 = sub_2287CBE00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFE48);
    }
  }
}

unint64_t sub_228740FBC()
{
  result = qword_280DE3898;
  if (!qword_280DE3898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE3898);
  }

  return result;
}

uint64_t sub_228741008(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider + 24);
  v4 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_22874106C@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for DispatchQueueGeneratorScheduler;
  a1[4] = sub_228741120();
  v3 = swift_allocObject();
  *a1 = v3;
  v3[5] = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v3[6] = sub_228741194(qword_280DE3170, type metadata accessor for HealthExperienceStoreFeedItemContext);
  v3[2] = v1;
}

unint64_t sub_228741120()
{
  result = qword_280DE0F60;
  if (!qword_280DE0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0F60);
  }

  return result;
}

uint64_t sub_228741194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2287411DC(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = *v2;
  v132 = sub_2287C95E0();
  v131 = *(v132 - 8);
  v5 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2287CA1F0();
  v136 = *(v138 - 8);
  v7 = v136[8];
  v8 = MEMORY[0x28223BE20](v138);
  v129 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v137 = &v129 - v10;
  v141 = type metadata accessor for ExecuteChangesResult(0);
  v11 = *(v141[-1].isa + 8);
  MEMORY[0x28223BE20](v141);
  v13 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CAA50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v140 = (&v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v133 = &v129 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v129 - v23;
  sub_2287CA9D0();
  v144 = a1;
  swift_bridgeObjectRetain_n();

  v25 = sub_2287CAA40();
  v26 = sub_2287CB610();

  v27 = os_log_type_enabled(v25, v26);
  v142 = v14;
  v145 = v2;
  v143 = v4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v139 = v13;
    v29 = v28;
    v30 = swift_slowAlloc();
    v151 = v30;
    *v29 = 136446722;
    *&aBlock = v4;
    swift_getMetatypeMetadata();
    v31 = sub_2287CB250();
    v33 = sub_2287031D8(v31, v32, &v151);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = &v2[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo];
    v35 = v15;
    v36 = *(v34 + 4);
    __swift_project_boxed_opaque_existential_1(v34, *(v34 + 3));
    v37 = sub_2287C9A70();
    v39 = sub_2287031D8(v37, v38, &v151);

    *(v29 + 14) = v39;
    *(v29 + 22) = 2050;
    v40 = v144;
    v41 = *(v144 + 2);

    *(v29 + 24) = v41;
    v15 = v35;

    _os_log_impl(&dword_2286FF000, v25, v26, "[%{public}s][%{public}s] Plugin is requesting to commit %{public}ld change(s).", v29, 0x20u);
    swift_arrayDestroy();
    v42 = v30;
    v14 = v142;
    MEMORY[0x22AABFD90](v42, -1, -1);
    v43 = v29;
    v13 = v139;
    MEMORY[0x22AABFD90](v43, -1, -1);

    v44 = v35;
  }

  else
  {

    v40 = v144;
    swift_bridgeObjectRelease_n();
    v44 = v15;
  }

  v45 = *(v44 + 8);
  v45(v24, v14);
  if (*(v40 + 2))
  {
    v134 = v15;
    v151 = 0;
    v46 = MEMORY[0x277D84F90];
    sub_2287CA160();
    isa_high = SHIDWORD(v141[2].isa);
    *&v13[isa_high] = v46;
    v48 = v145;
    v49 = *&v145[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext];
    v50 = swift_allocObject();
    v50[2] = v13;
    v50[3] = v48;
    v50[4] = v40;
    v50[5] = &v151;
    v50[6] = v143;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_228742BD8;
    *(v51 + 24) = v50;
    v149 = sub_22873FB9C;
    v150 = v51;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v148 = sub_228742C10;
    *(&v148 + 1) = &block_descriptor_2;
    v52 = _Block_copy(&aBlock);

    [v49 performBlockAndWait_];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      __break(1u);
    }

    else
    {
      v54 = v151;
      if (v151)
      {
        swift_willThrow();
        v55 = v54;
        sub_228745A10(v13, type metadata accessor for ExecuteChangesResult);
      }

      else
      {
        v144 = v45;
        v73 = *&v13[isa_high];

        sub_22874585C(v74);

        v75 = v133;
        sub_2287CA9D0();

        v76 = sub_2287CAA40();
        v77 = sub_2287CB5D0();

        v78 = os_log_type_enabled(v76, v77);
        v139 = v13;
        if (v78)
        {
          v79 = v75;
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v146 = v81;
          *v80 = 136446466;
          *&aBlock = v143;
          swift_getMetatypeMetadata();
          v82 = sub_2287CB250();
          v84 = sub_2287031D8(v82, v83, &v146);

          *(v80 + 4) = v84;
          *(v80 + 12) = 2082;
          v85 = &v48[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo];
          v86 = *&v48[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24];
          v87 = *&v48[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32];
          __swift_project_boxed_opaque_existential_1(v85, v86);
          v88 = sub_2287C9A70();
          v90 = sub_2287031D8(v88, v89, &v146);

          *(v80 + 14) = v90;
          _os_log_impl(&dword_2286FF000, v76, v77, "[%{public}s][%{public}s] Executed afterCommit block for updated feed items.", v80, 0x16u);
          swift_arrayDestroy();
          v91 = v81;
          v13 = v139;
          MEMORY[0x22AABFD90](v91, -1, -1);
          MEMORY[0x22AABFD90](v80, -1, -1);

          v92 = v79;
        }

        else
        {

          v92 = v75;
        }

        v144(v92, v142);
        v93 = v138;
        v94 = v137;
        v95 = v135;
        v96 = v136;
        v97 = v136[2];
        v97(v137, v13, v138);
        if (sub_2287CA1D0())
        {
          (v96[1])(v94, v93);
          v98 = v13;
        }

        else
        {
          sub_2287CA9E0();
          v99 = v129;
          v140 = v97;
          v97(v129, v94, v93);
          v100 = v145;

          v101 = v95;
          v102 = sub_2287CAA40();
          v103 = sub_2287CB5E0();

          v141 = v102;
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v146 = v105;
            *v104 = 136446722;
            *&aBlock = v143;
            swift_getMetatypeMetadata();
            v106 = sub_2287CB250();
            v108 = sub_2287031D8(v106, v107, &v146);

            *(v104 + 4) = v108;
            *(v104 + 12) = 2082;
            v109 = &v100[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo];
            v110 = *&v100[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24];
            v111 = *&v100[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32];
            __swift_project_boxed_opaque_existential_1(v109, v110);
            v112 = sub_2287C9A70();
            v114 = sub_2287031D8(v112, v113, &v146);

            *(v104 + 14) = v114;
            *(v104 + 22) = 2080;
            sub_228741194(&qword_280DE11B0, MEMORY[0x277D12000]);
            v115 = sub_2287CBCC0();
            v117 = v116;
            v145 = v136[1];
            (v145)(v99, v138);
            v118 = sub_2287031D8(v115, v117, &v146);

            *(v104 + 24) = v118;
            v119 = v141;
            _os_log_impl(&dword_2286FF000, v141, v103, "[%{public}s][%{public}s] Posting feedItemSubmissionOccurred notification for change domain: %s, privacy: .public)", v104, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AABFD90](v105, -1, -1);
            v120 = v104;
            v93 = v138;
            MEMORY[0x22AABFD90](v120, -1, -1);

            v121 = v135;
          }

          else
          {

            v145 = v136[1];
            (v145)(v99, v93);
            v121 = v101;
          }

          v144(v121, v142);
          sub_2287CB6F0();
          aBlock = 0u;
          v148 = 0u;
          v122 = v130;
          sub_2287C95B0();
          sub_2287459AC(0, &qword_280DE1800, sub_22873E274, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2287CCFE0;
          *&aBlock = sub_2287CA1B0();
          *(&aBlock + 1) = v124;
          sub_2287CB9B0();
          *(inited + 96) = v93;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
          v126 = v137;
          v140(boxed_opaque_existential_0, v137, v93);
          sub_22873AFC8(inited);
          swift_setDeallocating();
          sub_228745A10(inited + 32, sub_22873E274);
          sub_2287C95D0();
          v127 = [objc_opt_self() defaultCenter];
          v128 = sub_2287C95A0();
          [v127 postNotification_];

          (*(v131 + 8))(v122, v132);
          (v145)(v126, v93);
          v98 = v139;
        }

        sub_228745A10(v98, type metadata accessor for ExecuteChangesResult);
      }
    }
  }

  else
  {
    v56 = v45;
    v57 = v140;
    sub_2287CA9D0();
    v58 = v145;

    v59 = sub_2287CAA40();
    v60 = sub_2287CB5F0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v151 = v62;
      *v61 = 136446466;
      *&aBlock = v143;
      swift_getMetatypeMetadata();
      v63 = sub_2287CB250();
      v134 = v15;
      v65 = sub_2287031D8(v63, v64, &v151);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2082;
      v66 = &v58[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo];
      v67 = *&v58[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24];
      v68 = *&v58[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32];
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v69 = sub_2287C9A70();
      v71 = sub_2287031D8(v69, v70, &v151);

      *(v61 + 14) = v71;
      _os_log_impl(&dword_2286FF000, v59, v60, "[%{public}s][%{public}s] Empty commit was submitted; no work will be done", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v62, -1, -1);
      MEMORY[0x22AABFD90](v61, -1, -1);

      v72 = v140;
    }

    else
    {

      v72 = v57;
    }

    return v56(v72, v14);
  }

  return result;
}

void sub_22874211C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5)
{
  v89 = a5;
  v90 = a4;
  v94[1] = *MEMORY[0x277D85DE8];
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  v91 = v8;
  v92 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v85[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v85[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v85[-v18];
  v20 = type metadata accessor for ExecuteChangesResult(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v85[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228742C50(a3, v23);
  sub_228746128(v23, a1);
  v24 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  if ([v24 hasChanges])
  {
    sub_2287CA9D0();
    swift_bridgeObjectRetain_n();

    v25 = sub_2287CAA40();
    v26 = sub_2287CB610();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v87 = v25;
      v28 = v27;
      v88 = swift_slowAlloc();
      v94[0] = v88;
      *v28 = 136446722;
      v93 = v89;
      swift_getMetatypeMetadata();
      v29 = sub_2287CB250();
      v86 = v26;
      v31 = sub_2287031D8(v29, v30, v94);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2082;
      v32 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32);
      __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
      v33 = sub_2287C9A70();
      v35 = sub_2287031D8(v33, v34, v94);

      *(v28 + 14) = v35;
      *(v28 + 22) = 2050;
      v36 = *(a3 + 16);

      *(v28 + 24) = v36;

      v37 = v87;
      _os_log_impl(&dword_2286FF000, v87, v86, "[%{public}s][%{public}s] Finished committing %{public}ld change(s). Attempting to save.", v28, 0x20u);
      v38 = v88;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v38, -1, -1);
      MEMORY[0x22AABFD90](v28, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v39 = v91;
    v40 = *(v92 + 8);
    v40(v19, v91);
    v93 = 0;
    if ([v24 save_])
    {
      v41 = v93;
      sub_2287CA9D0();
      swift_bridgeObjectRetain_n();

      v42 = sub_2287CAA40();
      v43 = sub_2287CB5E0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v94[0] = v45;
        *v44 = 136446722;
        v93 = v89;
        swift_getMetatypeMetadata();
        v46 = sub_2287CB250();
        v48 = sub_2287031D8(v46, v47, v94);
        v89 = v40;
        v49 = v48;

        *(v44 + 4) = v49;
        *(v44 + 12) = 2082;
        v50 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32);
        __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
        v51 = sub_2287C9A70();
        v53 = sub_2287031D8(v51, v52, v94);

        *(v44 + 14) = v53;
        *(v44 + 22) = 2050;
        v54 = *(a3 + 16);

        *(v44 + 24) = v54;

        _os_log_impl(&dword_2286FF000, v42, v43, "[%{public}s][%{public}s] Successfully saved %{public}ld changes.", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v45, -1, -1);
        MEMORY[0x22AABFD90](v44, -1, -1);

        (v89)(v17, v39);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v40(v17, v39);
      }
    }

    else
    {
      v55 = v93;
      v56 = sub_2287C9640();

      swift_willThrow();
      sub_2287CA9D0();
      swift_bridgeObjectRetain_n();

      v57 = v56;
      v58 = sub_2287CAA40();
      v59 = sub_2287CB5F0();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v94[0] = v88;
        *v60 = 136447234;
        v93 = v89;
        swift_getMetatypeMetadata();
        v61 = sub_2287CB250();
        v63 = sub_2287031D8(v61, v62, v94);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2082;
        v64 = (a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
        v89 = v40;
        v65 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24);
        v66 = v64[4];
        __swift_project_boxed_opaque_existential_1(v64, v64[3]);
        v67 = sub_2287C9A70();
        v69 = sub_2287031D8(v67, v68, v94);

        *(v60 + 14) = v69;
        *(v60 + 22) = 2050;
        v70 = *(a3 + 16);

        *(v60 + 24) = v70;

        *(v60 + 32) = 2080;
        v71 = v64[4];
        __swift_project_boxed_opaque_existential_1(v64, v64[3]);
        v72 = sub_2287C9A70();
        v74 = sub_2287031D8(v72, v73, v94);

        *(v60 + 34) = v74;
        *(v60 + 42) = 2082;
        v93 = v56;
        v75 = v56;
        sub_22870D3A8(0, &qword_280DE35A0);
        v76 = sub_2287CB270();
        v78 = sub_2287031D8(v76, v77, v94);

        *(v60 + 44) = v78;
        _os_log_impl(&dword_2286FF000, v58, v59, "[%{public}s][%{public}s] Error saving %{public}ld changes from plugin %s: %{public}s", v60, 0x34u);
        v79 = v88;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v79, -1, -1);
        MEMORY[0x22AABFD90](v60, -1, -1);

        (v89)(v13, v91);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v40(v13, v39);
      }

      v81 = sub_2287CA400();
      sub_228741194(&qword_27D850D18, MEMORY[0x277D12138]);
      v82 = swift_allocError();
      (*(*(v81 - 8) + 104))(v83, *MEMORY[0x277D12130], v81);

      v84 = *v90;
      *v90 = v82;
    }
  }

  v80 = *MEMORY[0x277D85DE8];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228742C50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v250 = *v3;
  v279 = sub_2287C9C00();
  v272 = *(v279 - 8);
  v6 = *(v272 + 64);
  MEMORY[0x28223BE20](v279);
  v245 = &v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_2287CA1F0();
  v8 = *(v248 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v248);
  v247 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ExecuteChangesResult(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v242 = &v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_2287CAA50();
  v14 = *(v253 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v253);
  v240 = &v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v246 = &v226 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v254 = &v226 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v239 = &v226 - v23;
  MEMORY[0x28223BE20](v22);
  v275 = &v226 - v24;
  v265 = sub_2287C9B20();
  v25 = *(v265 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v265);
  v264 = &v226 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v263 = &v226 - v29;
  v286 = sub_2287C9D50();
  v30 = *(v286 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v286);
  v273 = &v226 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v278 = &v226 - v35;
  MEMORY[0x28223BE20](v34);
  v284 = &v226 - v36;
  v37 = MEMORY[0x277D84F90];
  sub_2287CA160();
  v241 = v11;
  v274 = *(v11 + 20);
  *(a2 + v274) = v37;
  v255 = *(a1 + 16);
  if (!v255)
  {
    return;
  }

  v38 = 0;
  v276 = v3;
  v39 = (v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  v249 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext;
  v271 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage;
  v256 = a1 + 32;
  v251 = (v14 + 8);
  v229 = "data with uniqueIdentifiers: ";
  v244 = (v8 + 8);
  v238 = "loggingSensitiveTerms";
  v237 = " with uniqueIdentifiers: ";
  v236 = 0x80000002287CFCA0;
  v235 = "%K == %@ && %K IN %@";
  v261 = v272 + 16;
  v262 = (v272 + 8);
  v234 = "%@ == pluginPackage";
  v233 = 0x80000002287D0D30;
  v285 = v30 + 16;
  v283 = (v30 + 8);
  v232 = "%@ == pluginPackage && ";
  v259 = (v25 + 8);
  v270 = v30;
  v257 = (v30 + 32);
  *(&v40 + 1) = 4;
  v243 = xmmword_2287CCFF0;
  *&v40 = 136446722;
  v228 = v40;
  *(&v40 + 1) = 8;
  v231 = xmmword_2287CE0A0;
  *&v40 = 136446978;
  v226 = v40;
  *&v40 = 136446466;
  v230 = v40;
  v227 = xmmword_2287CCFE0;
  v41 = v280;
  v252 = a2;
  v42 = v275;
  v43 = v284;
  v282 = (v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  while (1)
  {
    v55 = v256 + 40 * v38;
    v57 = *v55;
    v56 = *(v55 + 8);
    v58 = *(v55 + 16);
    v59 = *(v55 + 24);
    v60 = *(v55 + 32);
    v61 = v60 >> 5;
    v281 = v57;
    v266 = v38;
    if (v60 >> 5 > 2)
    {
      break;
    }

    v258 = v60;
    v269 = v59;
    v268 = v58;
    v267 = v56;
    if (!v61)
    {
      v101 = *(v57 + 16);
      v102 = v270;
      if (v101)
      {
        v280 = v41;
        v287 = MEMORY[0x277D84F90];

        sub_2287042D4(0, v101, 0);
        v103 = v287;
        v104 = v57 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v277 = *(v102 + 72);
        v105 = *(v102 + 16);
        do
        {
          v106 = v278;
          v107 = v286;
          v105(v278, v104, v286);
          v108 = sub_2287C9D30();
          v110 = v109;
          (*v283)(v106, v107);
          v287 = v103;
          v112 = *(v103 + 16);
          v111 = *(v103 + 24);
          if (v112 >= v111 >> 1)
          {
            sub_2287042D4((v111 > 1), v112 + 1, 1);
            v103 = v287;
          }

          *(v103 + 16) = v112 + 1;
          v113 = v103 + 16 * v112;
          *(v113 + 32) = v108;
          *(v113 + 40) = v110;
          v104 += v277;
          --v101;
        }

        while (v101);
        v41 = v280;
        v57 = v281;
        v152 = v252;
        v42 = v275;
        v43 = v284;
      }

      else
      {

        v103 = MEMORY[0x277D84F90];
        v152 = v252;
      }

      sub_228744E6C(v103, 0xD00000000000002ALL, v232 | 0x8000000000000000);

      v260 = *(v57 + 16);
      if (v260)
      {
        v182 = 0;
        v183 = v270;
        while (v182 < *(v57 + 16))
        {
          v184 = ((*(v183 + 80) + 32) & ~*(v183 + 80));
          v185 = *(v183 + 72);
          v186 = *(v183 + 16);
          v186(v43, &v184[v57 + v185 * v182], v286);
          sub_2287CA330();
          if (v41)
          {
            sub_228745FAC(v57, v267, v268, v269, v258);
            (*v283)(v43, v286);
            goto LABEL_66;
          }

          v277 = v184;
          v280 = 0;
          v187 = v264;
          sub_2287C9D10();
          v188 = v152;
          v189 = sub_2287CA170();
          v190 = v263;
          sub_2287244B0(v263, v187);
          (*v259)(v190, v265);
          v189(&v287, 0);
          v191 = sub_2287C9D20();
          v192 = sub_2287CA190();
          sub_228724790(&v289, v191);

          v192(&v287, 0);
          v43 = v284;
          v193 = sub_2287C9D00();
          if (v193)
          {
            sub_228714BC0(v193);
            v186(v273, v43, v286);
            v194 = *(v188 + v274);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v194 = sub_228723168(0, *(v194 + 2) + 1, 1, v194);
            }

            v41 = v280;
            v196 = *(v194 + 2);
            v195 = *(v194 + 3);
            if (v196 >= v195 >> 1)
            {
              v194 = sub_228723168(v195 > 1, v196 + 1, 1, v194);
            }

            v197 = v286;
            (*v283)(v43, v286);
            *(v194 + 2) = v196 + 1;
            (*v257)(&v194[v277 + v196 * v185], v273, v197);
            v152 = v188;
            *(v188 + v274) = v194;
          }

          else
          {
            (*v283)(v43, v286);
            v152 = v188;
            v41 = v280;
          }

          ++v182;
          v42 = v275;
          v183 = v270;
          v57 = v281;
          if (v260 == v182)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_53:
      v131 = v57;
      v132 = v267;
      v133 = v268;
      v134 = v269;
      v135 = v258;
      goto LABEL_54;
    }

    if (v61 == 1)
    {
      sub_228745E98(v57, v267, v268, v269, v60);

      sub_228744E6C(v44, 0xD00000000000001ALL, v234 | 0x8000000000000000);
      v280 = sub_228740FBC();
      v287 = 0;
      v288 = 0xE000000000000000;
      sub_2287CBA20();

      v287 = 0xD000000000000017;
      v288 = v233;
      sub_2287CA800();
      v45 = sub_2287CA7C0();
      MEMORY[0x22AABE980](v45);

      MEMORY[0x22AABE980](0x4025204E4920, 0xE600000000000000);
      sub_22870558C();
      v46 = swift_allocObject();
      *(v46 + 16) = v243;
      v47 = v57;
      v48 = v282[4];
      __swift_project_boxed_opaque_existential_1(v282, v282[3]);
      v49 = sub_2287C9A70();
      v51 = v50;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = sub_2287043F8();
      *(v46 + 32) = v49;
      *(v46 + 40) = v51;
      v43 = v284;
      sub_22871B354();
      *(v46 + 96) = v52;
      *(v46 + 104) = sub_228741194(&qword_280DE38A0, sub_22871B354);
      *(v46 + 72) = v47;
      v42 = v275;
      v53 = sub_2287CB550();

      v54 = v247;
      sub_2287CA310();
      sub_2287CA1C0();

      sub_228745FAC(v47, v267, v268, v269, v258);
      (*v244)(v54, v248);
    }

    else
    {

      sub_2287CA9D0();
      v62 = v267;
      v63 = v268;
      v64 = v269;
      sub_228745E98(v57, v267, v268, v269, v60);

      v65 = v60;
      v66 = sub_2287CAA40();
      v67 = sub_2287CB610();

      sub_228745FAC(v57, v62, v63, v64, v65);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v289 = v69;
        *v68 = v228;
        v287 = v250;
        swift_getMetatypeMetadata();
        v70 = sub_2287CB250();
        v72 = sub_2287031D8(v70, v71, &v289);

        *(v68 + 4) = v72;
        *(v68 + 12) = 2082;
        v73 = v282[4];
        __swift_project_boxed_opaque_existential_1(v282, v282[3]);
        v43 = v284;
        v74 = sub_2287C9A70();
        v76 = sub_2287031D8(v74, v75, &v289);

        *(v68 + 14) = v76;
        *(v68 + 22) = 2080;
        v77 = v281;
        v78 = MEMORY[0x22AABEA80](v281, v279);
        v80 = sub_2287031D8(v78, v79, &v289);

        *(v68 + 24) = v80;
        _os_log_impl(&dword_2286FF000, v66, v67, "[%{public}s][%{public}s] updateOrCreate plugin data %s", v68, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v69, -1, -1);
        MEMORY[0x22AABFD90](v68, -1, -1);

        (*v251)(v254, v253);
        v81 = v245;
      }

      else
      {

        (*v251)(v254, v253);
        v81 = v245;
        v77 = v281;
      }

      v280 = *(v77 + 2);
      if (v280)
      {
        v277 = sub_2287C9A60();
        v165 = 0;
        v166 = *(v276 + v249);
        v167 = v272;
        v260 = v77 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
        while (v165 < *(v77 + 2))
        {
          (*(v167 + 16))(v81, &v260[*(v167 + 72) * v165], v279);
          sub_2287C9BE0();
          v168 = v282[4];
          __swift_project_boxed_opaque_existential_1(v282, v282[3]);
          sub_2287C9A70();
          v169 = sub_2287C9A50();

          v170 = sub_2287C9BF0();
          if (v171 >> 60 == 15)
          {
            v172 = 0;
          }

          else
          {
            v173 = v170;
            v174 = v171;
            v172 = sub_2287C9710();
            sub_2287460C0(v173, v174);
          }

          [v169 setData_];

          v175 = sub_2287C9BD0();
          sub_2287C9C60();
          if (v41)
          {

            sub_228745FAC(v281, v267, v268, v269, v258);
            (*v262)(v81, v279);
            goto LABEL_65;
          }

          ++v165;

          sub_2287CA6D0();
          sub_228741194(&qword_280DE17A0, MEMORY[0x277D121E8]);
          v176 = sub_2287CB460();

          [v169 setProfiles_];

          sub_2287CA6B0();
          v177 = v282[4];
          __swift_project_boxed_opaque_existential_1(v282, v282[3]);
          sub_2287C9A70();
          v178 = sub_2287CA6A0();

          [v169 setPlugin_];

          (*v262)(v81, v279);
          v77 = v281;
          v167 = v272;
          v43 = v284;
          if (v280 == v165)
          {
            goto LABEL_37;
          }
        }

LABEL_70:
        __break(1u);
        return;
      }

LABEL_37:
      sub_228745FAC(v77, v267, v268, v269, v258);
      v42 = v275;
    }

LABEL_4:
    v38 = v266 + 1;
    v39 = v282;
    if (v266 + 1 == v255)
    {
      return;
    }
  }

  if (v61 == 3)
  {
    v114 = v60;
    v258 = v60;
    v115 = v39;
    v267 = v56;
    v268 = v58;
    v269 = v59;
    sub_228745E98(v57, v56, v58, v59, v114);

    sub_228744E6C(v116, 0xD000000000000039, v238 | 0x8000000000000000);
    v277 = sub_228740FBC();
    sub_22870558C();
    v117 = swift_allocObject();
    *(v117 + 16) = v231;
    v280 = v41;
    v118 = MEMORY[0x277D837D0];
    *(v117 + 56) = MEMORY[0x277D837D0];
    v119 = sub_2287043F8();
    *(v117 + 64) = v119;
    strcpy((v117 + 32), "plugin.package");
    *(v117 + 47) = -18;
    v120 = v57;
    v121 = v115[4];
    __swift_project_boxed_opaque_existential_1(v115, v115[3]);
    v43 = v284;
    v122 = sub_2287C9A70();
    *(v117 + 96) = v118;
    *(v117 + 104) = v119;
    *(v117 + 72) = v122;
    *(v117 + 80) = v123;
    *(v117 + 136) = v118;
    *(v117 + 144) = v119;
    v41 = v280;
    v124 = v236;
    *(v117 + 112) = 0xD000000000000010;
    *(v117 + 120) = v124;
    sub_22871B354();
    *(v117 + 176) = v125;
    *(v117 + 184) = sub_228741194(&qword_280DE38A0, sub_22871B354);
    *(v117 + 152) = v120;

    v126 = sub_2287CB550();
    v127 = *(v276 + v249);
    sub_2287C9A60();
    sub_2287CB790();
    sub_228744E6C(v120, 0xD00000000000003DLL, v235 | 0x8000000000000000);
    v128 = v267;
    v129 = v268;
    v130 = v269;
    LOBYTE(v127) = v258;
    sub_228745FAC(v120, v267, v268, v269, v258);

    v131 = v120;
    v132 = v128;
    v133 = v129;
    v134 = v130;
    v135 = v127;
LABEL_54:
    sub_228745FAC(v131, v132, v133, v134, v135);
    goto LABEL_4;
  }

  if (v61 != 4)
  {
    v280 = v41;
    v136 = v58 | v56 | v57 | v59;
    v137 = v246;
    if (v136 || v60 != 160)
    {
      sub_2287CA9D0();

      v153 = sub_2287CAA40();
      v154 = sub_2287CB610();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v289 = v156;
        *v155 = v230;
        v287 = v250;
        swift_getMetatypeMetadata();
        v157 = sub_2287CB250();
        v159 = sub_2287031D8(v157, v158, &v289);

        *(v155 + 4) = v159;
        *(v155 + 12) = 2082;
        v160 = v282;
        v161 = v282[4];
        __swift_project_boxed_opaque_existential_1(v282, v282[3]);
        v162 = sub_2287C9A70();
        v164 = sub_2287031D8(v162, v163, &v289);

        *(v155 + 14) = v164;
        _os_log_impl(&dword_2286FF000, v153, v154, "[%{public}s][%{public}s] Attempting to delete all plugin data.", v155, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v156, -1, -1);
        MEMORY[0x22AABFD90](v155, -1, -1);

        v281 = *v251;
        v281(v137, v253);
      }

      else
      {

        v281 = *v251;
        v281(v137, v253);
        v160 = v282;
      }

      sub_228740FBC();
      sub_22870558C();
      v198 = swift_allocObject();
      *(v198 + 16) = v243;
      v199 = MEMORY[0x277D837D0];
      *(v198 + 56) = MEMORY[0x277D837D0];
      v200 = sub_2287043F8();
      *(v198 + 64) = v200;
      strcpy((v198 + 32), "plugin.package");
      *(v198 + 47) = -18;
      v201 = v160[4];
      __swift_project_boxed_opaque_existential_1(v160, v160[3]);
      v202 = sub_2287C9A70();
      *(v198 + 96) = v199;
      *(v198 + 104) = v200;
      *(v198 + 72) = v202;
      *(v198 + 80) = v203;
      v204 = sub_2287CB550();
      v205 = *(v276 + v249);
      sub_2287C9A60();
      sub_2287CB790();
      v206 = v240;
      sub_2287CA9D0();

      v207 = sub_2287CAA40();
      v208 = sub_2287CB610();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v289 = v210;
        *v209 = v230;
        v287 = v250;
        swift_getMetatypeMetadata();
        v211 = sub_2287CB250();
        v213 = sub_2287031D8(v211, v212, &v289);
        v277 = v204;
        v214 = v213;

        *(v209 + 4) = v214;
        *(v209 + 12) = 2082;
        v215 = v160[4];
        __swift_project_boxed_opaque_existential_1(v160, v160[3]);
        v216 = sub_2287C9A70();
        v218 = sub_2287031D8(v216, v217, &v289);

        *(v209 + 14) = v218;
        _os_log_impl(&dword_2286FF000, v207, v208, "[%{public}s][%{public}s] Successfully deleted all plugin data.", v209, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v210, -1, -1);
        MEMORY[0x22AABFD90](v209, -1, -1);
      }

      else
      {
      }

      v281(v206, v253);
      v41 = v280;
      v42 = v275;
      v43 = v284;
    }

    else
    {
      v138 = v239;
      sub_2287CA9D0();

      v139 = sub_2287CAA40();
      v140 = sub_2287CB610();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v289 = v142;
        *v141 = v230;
        v287 = v250;
        swift_getMetatypeMetadata();
        v143 = sub_2287CB250();
        v145 = sub_2287031D8(v143, v144, &v289);

        *(v141 + 4) = v145;
        *(v141 + 12) = 2082;
        v146 = v282;
        v147 = v282[4];
        __swift_project_boxed_opaque_existential_1(v282, v282[3]);
        v148 = sub_2287C9A70();
        v150 = sub_2287031D8(v148, v149, &v289);

        *(v141 + 14) = v150;
        _os_log_impl(&dword_2286FF000, v139, v140, "[%{public}s][%{public}s] deleteAllFeedItems from plugin", v141, 0x16u);
        swift_arrayDestroy();
        v151 = v142;
        v42 = v275;
        MEMORY[0x22AABFD90](v151, -1, -1);
        MEMORY[0x22AABFD90](v141, -1, -1);

        (*v251)(v138, v253);
      }

      else
      {

        (*v251)(v138, v253);
        v146 = v282;
      }

      sub_228740FBC();
      sub_22870558C();
      v219 = swift_allocObject();
      *(v219 + 16) = v227;
      v220 = v146[4];
      __swift_project_boxed_opaque_existential_1(v146, v146[3]);
      v221 = sub_2287C9A70();
      v223 = v222;
      *(v219 + 56) = MEMORY[0x277D837D0];
      *(v219 + 64) = sub_2287043F8();
      *(v219 + 32) = v221;
      *(v219 + 40) = v223;
      v224 = sub_2287CB550();
      v225 = v247;
      sub_2287CA310();
      sub_2287CA1C0();

      (*v244)(v225, v248);
      v41 = v280;
      v43 = v284;
    }

    goto LABEL_4;
  }

  v82 = v58;

  sub_228745F34(v56, v82, v59, v60 & 0x1F);
  v258 = v60;
  v267 = v56;
  v268 = v82;
  v269 = v59;
  sub_228798E90(v56, v82, v59, v60 & 0x1F);
  v83 = sub_2287CB3C0();

  if (!v41)
  {
    sub_2287CA9D0();
    swift_bridgeObjectRetain_n();

    v84 = v42;
    v85 = sub_2287CAA40();
    v86 = sub_2287CB610();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      v289 = v280;
      *v87 = v226;
      v287 = v250;
      swift_getMetatypeMetadata();
      v88 = sub_2287CB250();
      v90 = sub_2287031D8(v88, v89, &v289);
      LODWORD(v277) = v86;
      v91 = v90;

      *(v87 + 4) = v91;
      *(v87 + 12) = 2082;
      v92 = v282[4];
      __swift_project_boxed_opaque_existential_1(v282, v282[3]);
      v43 = v284;
      v93 = sub_2287C9A70();
      v95 = sub_2287031D8(v93, v94, &v289);

      *(v87 + 14) = v95;
      *(v87 + 22) = 2048;
      v96 = *(v57 + 16);

      *(v87 + 24) = v96;

      *(v87 + 32) = 2080;
      v97 = MEMORY[0x22AABEA80](v83, MEMORY[0x277D120A0]);
      v99 = sub_2287031D8(v97, v98, &v289);

      *(v87 + 34) = v99;
      _os_log_impl(&dword_2286FF000, v85, v277, "[%{public}s][%{public}s] computed changes for %ld desired: %s", v87, 0x2Au);
      v100 = v280;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v100, -1, -1);
      MEMORY[0x22AABFD90](v87, -1, -1);

      v42 = v275;
      (*v251)(v275, v253);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*v251)(v84, v253);
      v42 = v84;
    }

    v179 = v242;
    sub_228742C50(v83);

    sub_2287CA1C0();
    v180 = *(v179 + *(v241 + 20));

    sub_22870E2E4(v181);
    sub_228745FAC(v281, v267, v268, v269, v258);
    sub_228745A10(v179, type metadata accessor for ExecuteChangesResult);
    goto LABEL_4;
  }

  sub_228745FAC(v57, v267, v268, v269, v258);
LABEL_65:
  v152 = v252;
LABEL_66:
  sub_228745A10(v152, type metadata accessor for ExecuteChangesResult);
}

uint64_t sub_228744BC0(uint64_t a1)
{
  result = HKShowSensitiveLogItems();
  if (result)
  {

    return a1;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v35 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v3, 0);
    v4 = v35;
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v9 = *(v35 + 16);
      v8 = *(v35 + 24);
      v10 = v9 + 1;

      if (v9 >= v8 >> 1)
      {
        result = sub_2287042D4((v8 > 1), v9 + 1, 1);
      }

      *(v35 + 16) = v10;
      v11 = v35 + 16 * v9;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
  }

  if (!v10)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_25:

    return v32;
  }

  v12 = 0;
  v30 = v4 + 32;
  v31 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms;
  v32 = MEMORY[0x277D84F90];
  v28 = v10;
  v29 = v4;
  while (v12 < *(v4 + 16))
  {
    v16 = (v30 + 16 * v12);
    v18 = *v16;
    v17 = v16[1];
    v34 = v12 + 1;
    v19 = *(v33 + v31);
    v20 = *(v19 + 16);

    v21 = (v19 + 40);
    v22 = -v20;
    v23 = -1;
    while (v22 + v23 != -1)
    {
      if (++v23 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v24 = v21 + 2;
      v26 = *(v21 - 1);
      v25 = *v21;
      sub_2287CB260();
      sub_2287CB260();
      sub_22873E0A0();
      LOBYTE(v25) = sub_2287CB860();

      v21 = v24;
      if (v25)
      {

        goto LABEL_15;
      }
    }

    v27 = v32;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2287042D4(0, *(v32 + 16) + 1, 1);
      v27 = v32;
    }

    v14 = *(v27 + 16);
    v13 = *(v27 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_2287042D4((v13 > 1), v14 + 1, 1);
      v27 = v32;
    }

    *(v27 + 16) = v14 + 1;
    v32 = v27;
    v15 = v27 + 16 * v14;
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
LABEL_15:
    v4 = v29;
    v12 = v34;
    if (v34 == v28)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}