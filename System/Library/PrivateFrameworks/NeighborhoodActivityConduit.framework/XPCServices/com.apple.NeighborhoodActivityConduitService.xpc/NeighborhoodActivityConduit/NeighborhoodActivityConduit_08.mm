uint64_t sub_1000CA308(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000B2D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000CAF6C();
      goto LABEL_7;
    }

    sub_10001E98C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_10000B2D0(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1000E2CC8();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1000E0DE8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000CACB0(v12, a2, a3, a1, v18);
}

uint64_t sub_1000CA4B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10000B348(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1000CB370();
      goto LABEL_7;
    }

    sub_10001EFA4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10000B348(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1000CAD60(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1000E2CC8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1000CA67C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000B2D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10001F350(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000B2D0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1000E2CC8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000CB5F0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1000CA7F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, void))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_10000B2D0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      a7(v22, a4 & 1);
      v26 = *v11;
      v17 = sub_10000B2D0(a2, a3);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        sub_1000E2CC8();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v25 = v17;
      sub_1000CB760(a5, a6);
      v17 = v25;
    }
  }

  v28 = *v11;
  if (v23)
  {
    v29 = v28[7];
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return _objc_release_x1();
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v31 = (v28[6] + 16 * v17);
  *v31 = a2;
  v31[1] = a3;
  *(v28[7] + 8 * v17) = a1;
  v32 = v28[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v33;
}

uint64_t sub_1000CA994(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10000B348(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1000CB8BC();
      goto LABEL_7;
    }

    sub_10001F8A8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10000B348(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1000CAD60(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1000E2CC8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_1000CAB60(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000B2D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000CBB3C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10001FC54(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000B2D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1000E2CC8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000E9DC(v23);

    return sub_10000C154(a1, v23);
  }

  else
  {
    sub_1000CAE18(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1000CACB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1000E0DE8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1000CAD60(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000E0D68();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1000CAE18(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000C154(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000CAE84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000E0D68();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  result = sub_10000CAF4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_1000CAF6C()
{
  v1 = v0;
  v36 = sub_1000E0DE8();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&qword_10011DFC0, &qword_1000F3500);
  v4 = *v0;
  v5 = sub_1000E2B78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

void *sub_1000CB1EC()
{
  v1 = v0;
  sub_10000ADE4(&qword_10011EBB8, &unk_1000F3440);
  v2 = *v0;
  v3 = sub_1000E2B78();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

char *sub_1000CB370()
{
  v1 = v0;
  v34 = sub_1000E0D68();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&qword_10011DFD0, &qword_1000F34D0);
  v4 = *v0;
  v5 = sub_1000E2B78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_1000CB5F0()
{
  v1 = v0;
  sub_10000ADE4(&unk_10011DF30, &unk_1000F04A0);
  v2 = *v0;
  v3 = sub_1000E2B78();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

id sub_1000CB760(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000ADE4(a1, a2);
  v4 = *v2;
  v5 = sub_1000E2B78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1000CB8BC()
{
  v1 = v0;
  v34 = sub_1000E0D68();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&unk_10011EB90, &qword_1000F0500);
  v4 = *v0;
  v5 = sub_1000E2B78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_1000CBB3C()
{
  v1 = v0;
  sub_10000ADE4(&qword_10011DF70, &qword_1000F04D0);
  v2 = *v0;
  v3 = sub_1000E2B78();
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
        sub_1000153C0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000C154(v25, (*(v4 + 56) + v22));
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

char *sub_1000CBCE0()
{
  v1 = v0;
  v2 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - v4;
  v36 = sub_1000E0D68();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&unk_10011DF90, &qword_1000F04E8);
  v7 = *v0;
  v8 = sub_1000E2B78();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_10000CB64(*(v7 + 56) + v28, v37, &qword_10011EBB0, &qword_1000F04F0);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_10000CAF4(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1000CBFFC(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1000E10C8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&unk_10011F920, &unk_1000F23A0);
  result = sub_1000E2B78();
  v8 = result;
  v9 = 0;
  v39 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v37 = v4;
  v33[1] = v4 + 32;
  v34 = result + 64;
  v35 = result;
  if (v15)
  {
    while (1)
    {
      v44 = v2;
      v17 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v43 = v33;
      v41 = 16 * v20;
      v21 = *(v39 + 56);
      v22 = (*(v39 + 48) + 16 * v20);
      v23 = v22[1];
      v42 = *v22;
      v24 = *(v21 + 8 * v20);
      __chkstk_darwin(result);
      v33[-2] = v24;
      sub_1000041BC(&qword_100120130, 255, &type metadata accessor for NCProtoContactInfo);

      v25 = v24;
      v26 = v36;
      v27 = v38;
      v28 = v44;
      sub_1000E0E38();
      v2 = v28;

      v8 = v35;
      *(v34 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v29 = (v8[6] + v41);
      *v29 = v42;
      v29[1] = v23;
      result = (*(v37 + 32))(v8[7] + *(v37 + 72) * v20, v26, v27);
      v30 = v8[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v8[2] = v32;
      v15 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v44 = v2;
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CC2F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000D2270(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000CC3E4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000D237C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000ADE4(&unk_100120208, &qword_1000F3660);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000CC4E8(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1000E2968();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_1000E2B68();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_1000CC870(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = ((*(v3 + 0x18) >> 1) - v14);
  result = sub_10002AB20(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_10000A840();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_1000E29A8())
    {
      goto LABEL_11;
    }

    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= v39 + 1)
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1000E2488();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1000E29A8())
      {
        sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1000CC870(uint64_t a1)
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
    sub_1000E2B68();
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
  result = sub_1000E2AA8();
  *v1 = result;
  return result;
}

uint64_t sub_1000CC924(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_10000ADE4(a5, a6);
  result = sub_1000E2A58();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1000E2808(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1000CCB10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1000CC924(a1, a2, v20, a3, &qword_1001200B0, &qword_1000F32D0);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1000CCC90(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1000CCB10(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1000CCD20(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000E2C68() & 1;
  }
}

uint64_t sub_1000CCD94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000C8474(a1, v4, v5, v7);
}

uint64_t sub_1000CCE54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000C89D0(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_1000CCF18()
{
  v1 = *(v0 + 16);

  return sub_1000E1D38();
}

id sub_1000CCF60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

void *sub_1000CCFAC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E2128();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v63 = &v63 - v11;
  v73[3] = type metadata accessor for CallPublisher();
  v73[4] = &off_100116E48;
  v73[0] = a2;
  swift_defaultActor_initialize();
  v12 = sub_10000ADE4(&unk_100120230, &qword_1000F2470);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(a3 + 112) = sub_1000E1FD8();
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  v15 = [objc_opt_self() sharedManager];
  type metadata accessor for HandleCapabilitiesLookupActor();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 112) = v15;
  *(a3 + 184) = v16;
  LOBYTE(aBlock) = 0;
  v17 = sub_10000ADE4(&qword_10011EA88, &qword_1000F3450);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(a3 + 192) = sub_1000E2008();
  v20 = objc_opt_self();
  *(a3 + 200) = [v20 sharedInstance];
  *(a3 + 208) = [objc_opt_self() strongToWeakObjectsMapTable];
  v21 = [v20 sharedInstance];
  v22 = [v21 conversationManager];

  *(a3 + 216) = v22;
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  *(a3 + 224) = qword_1001230E8;
  v23 = objc_allocWithZone(FTDeviceSupport);

  *(a3 + 232) = [v23 init];
  *(a3 + 240) = [objc_allocWithZone(RPRemoteDisplayDiscovery) init];
  *(a3 + 296) = 0u;
  *(a3 + 312) = 0u;
  v24 = sub_10000BC1C(&_swiftEmptyArrayStorage);
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 328) = v24;
  *(a3 + 248) = a1;
  sub_10002B4BC(v73, a3 + 256);
  v25 = type metadata accessor for ContinuitySessionServer();
  v72.receiver = a3;
  v72.super_class = v25;
  v26 = a1;
  v27 = objc_msgSendSuper2(&v72, "init");
  v28 = v27[30];
  v29 = swift_allocObject();
  swift_weakInit();
  v70 = sub_1000CEED8;
  v71 = v29;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v68 = sub_100067144;
  v69 = &unk_1001165F8;
  v30 = _Block_copy(&aBlock);
  v31 = v27;
  v32 = v28;

  [v32 setDiscoverySessionStateChangedHandler:v30];
  _Block_release(v30);

  v33 = v27[30];
  v70 = sub_1000B9DC4;
  v71 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v68 = sub_100067380;
  v69 = &unk_100116620;
  v34 = _Block_copy(&aBlock);
  v35 = v33;
  [v35 activateWithCompletion:v34];
  _Block_release(v34);

  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  v38 = TUCallHistoryControllerRecentCallsDidChangeNotification;
  v39 = swift_allocObject();
  swift_weakInit();
  v70 = sub_1000CEEE0;
  v71 = v39;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v68 = sub_100002014;
  v69 = &unk_100116648;
  v40 = _Block_copy(&aBlock);

  v41 = [v37 addObserverForName:v38 object:0 queue:0 usingBlock:v40];
  _Block_release(v40);

  v42 = v31[37];
  v31[37] = v41;
  swift_unknownObjectRelease();
  v43 = [v36 defaultCenter];
  v44 = CNFavoritesChangedNotification;
  v45 = swift_allocObject();
  swift_weakInit();
  v70 = sub_1000CEF18;
  v71 = v45;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v68 = sub_100002014;
  v69 = &unk_100116670;
  v46 = _Block_copy(&aBlock);

  v47 = [v43 addObserverForName:v44 object:0 queue:0 usingBlock:v46];
  _Block_release(v46);

  v48 = v31[38];
  v31[38] = v47;
  swift_unknownObjectRelease();
  v49 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v73, &aBlock);
  v50 = swift_allocObject();
  sub_1000079B4(&aBlock, v50 + 16);
  *(v50 + 56) = v49;
  sub_10000ADE4(&unk_100120240, &qword_1000F10E8);
  v51 = swift_allocObject();
  v52 = sub_1000E2538();
  v53 = v63;
  (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = &unk_1000F3460;
  v54[5] = v50;
  *(v51 + 16) = sub_1000223DC(0, 0, v53, &unk_1000F3470, v54);
  v55 = v31[40];
  v31[40] = v51;

  v56 = v31[27];
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  v58 = v64;
  v57 = v65;
  v59 = v66;
  (*(v65 + 104))(v64, enum case for DispatchQoS.QoSClass.userInteractive(_:), v66);
  v60 = v56;
  v61 = sub_1000E2758();
  (*(v57 + 8))(v58, v59);
  [v60 addDelegate:v31 queue:v61];

  [v31[27] registerWithCompletionHandler:0];
  sub_10000E9DC(v73);
  return v31;
}

uint64_t sub_1000CD800()
{
  result = sub_10005A5B8();
  if (!v0)
  {
    result = TUIsIDSAvailableForFaceTime();
    if (!result)
    {
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v2 = sub_1000E1F08();
      sub_1000049D0(v2, qword_100120060);
      v3 = sub_1000E1EE8();
      v4 = sub_1000E2698();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Rejecting start laguna session because iOS device is not signed into FaceTime.", v5, 2u);
      }

      TUMakeNeighborhoodConduitError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000CD914()
{
  v1 = *(sub_10000ADE4(&unk_10011ED00, &unk_1000F1160) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 96);
  v5 = v0 + ((*(v1 + 80) + 104) & ~*(v1 + 80));

  return sub_1000C7560(v2, v3, v0 + 32, v4, v5);
}

uint64_t sub_1000CD990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000C6584(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000CDA50()
{
  v1 = *(v0 + 16);

  return sub_1000E1BA8();
}

uint64_t sub_1000CDADC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000C38E4();
}

uint64_t sub_1000CDB30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
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
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_10000B2D0(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_1000CB760(&unk_100120100, &qword_1000F3330);
      }
    }

    else
    {
      v31 = v50;
      sub_10001F5F8(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_10000B2D0(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10000A840();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1000E2CC8();
  __break(1u);
  return result;
}

uint64_t sub_1000CDDF0()
{
  v1 = *(sub_10000ADE4(&qword_10011FC38, &qword_1000F3350) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1000C1A64(v2, v3, v4, v5);
}

uint64_t sub_1000CDE64(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000E2C68() & 1;
  }
}

uint64_t sub_1000CDEBC(uint64_t a1)
{
  v4 = *(sub_1000E1978() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000C0F70(a1, v6, v7, v8, v1 + v5);
}

id sub_1000CDFD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;
  v4 = sub_1000E1368();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  v6 = __chkstk_darwin(v4);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v65 - v9;
  v11 = __chkstk_darwin(v8);
  v81 = &v65 - v12;
  __chkstk_darwin(v11);
  v15 = &v65 - v14;
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = 0;
    v76 = (v79 + 88);
    v75 = enum case for NCProtoContactImageType.avatar(_:);
    v74 = enum case for NCProtoContactImageType.poster(_:);
    v18 = (v79 + 8);
    v67 = _swiftEmptyArrayStorage;
    *&v13 = 136315138;
    v69 = v13;
    v77 = v16;
    v78 = v15;
    v68 = a3;
    v80 = v79 + 16;
LABEL_3:
    v19 = v17;
    while (v19 < v16)
    {
      v26 = v18;
      v27 = *(v79 + 16);
      v27(v15, a3 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v19, v4);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_50;
      }

      v82 = v19 + 1;
      v28 = v81;
      v27(v81, v15, v4);
      v29 = (*v76)(v28, v4);
      if (v29 == v75)
      {
        v33 = 1;
        (*v18)(v15, v4);
        goto LABEL_16;
      }

      v30 = *v18;
      if (v29 == v74)
      {
        v33 = 2;
        v30(v15, v4);
LABEL_16:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1000D24B0(0, *(v67 + 2) + 1, 1, v67);
        }

        v16 = v77;
        v35 = *(v67 + 2);
        v34 = *(v67 + 3);
        v36 = v35 + 1;
        v17 = v82;
        if (v35 >= v34 >> 1)
        {
          v38 = sub_1000D24B0((v34 > 1), v35 + 1, 1, v67);
          v17 = v82;
          v67 = v38;
        }

        v37 = v67;
        *(v67 + 2) = v36;
        *&v37[8 * v35 + 32] = v33;
        v15 = v78;
        if (v17 == v16)
        {
LABEL_23:
          v39 = 32;
          v41 = v65;
          v40 = v66;
          v42 = v67;
          while (v36)
          {
            v43 = *&v67[v39];
            v39 += 8;
            --v36;
            if (v43 == 2)
            {
              v44 = sub_100021588(v65, v66, 2, 0);
              if (v44)
              {
LABEL_48:
                v64 = v44;

                return v64;
              }

              break;
            }
          }

          v45 = *(v42 + 2);
          v46 = 32;
          while (v45)
          {
            v47 = *&v42[v46];
            v46 += 8;
            --v45;
            if (v47 == 1)
            {
              v44 = sub_100021588(v41, v40, 1, 0);
              if (v44)
              {
                goto LABEL_48;
              }

              break;
            }
          }

          if (qword_10011DC40 != -1)
          {
            swift_once();
          }

          v48 = sub_1000E1F08();
          sub_1000049D0(v48, qword_100120060);

          v49 = sub_1000E1EE8();
          v50 = sub_1000E2678();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v83[0] = v52;
            *v51 = v69;
            *(v51 + 4) = sub_100029C70(v41, v40, v83);
            _os_log_impl(&_mh_execute_header, v49, v50, "[GetContactImage] Could not find contact image for %s with a supported image type.", v51, 0xCu);
            sub_10000E9DC(v52);

            goto LABEL_43;
          }

          goto LABEL_44;
        }

        goto LABEL_3;
      }

      v30(v81, v4);
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v73 = sub_1000E1F08();
      sub_1000049D0(v73, qword_100120060);
      v27(v10, v15, v4);
      v31 = sub_1000E1EE8();
      v32 = sub_1000E2678();
      if (os_log_type_enabled(v31, v32))
      {
        v20 = swift_slowAlloc();
        v71 = v20;
        v72 = swift_slowAlloc();
        v83[0] = v72;
        *v20 = v69;
        v27(v70, v10, v4);
        v21 = sub_1000E2358();
        v23 = v22;
        v30(v10, v4);
        v24 = sub_100029C70(v21, v23, v83);

        v25 = v71;
        *(v71 + 1) = v24;
        v18 = v26;
        _os_log_impl(&_mh_execute_header, v31, v32, "[GetContactImage] Requested image with unknown image type %s.", v25, 0xCu);
        sub_10000E9DC(v72);

        a3 = v68;
      }

      else
      {

        v30(v10, v4);
      }

      v15 = v78;
      v30(v78, v4);
      ++v19;
      v16 = v77;
      if (v82 == v77)
      {
        v36 = *(v67 + 2);
        if (v36)
        {
          goto LABEL_23;
        }

        if (qword_10011DC40 != -1)
        {
          swift_once();
        }

        sub_1000049D0(v73, qword_100120060);
        v49 = sub_1000E1EE8();
        v62 = sub_1000E2678();
        if (os_log_type_enabled(v49, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v49, v62, "[GetContactImage] Did not receive any known image types for request.", v63, 2u);
LABEL_43:
        }

LABEL_44:

        return 0;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (qword_10011DC40 != -1)
  {
LABEL_51:
    swift_once();
  }

  v53 = sub_1000E1F08();
  sub_1000049D0(v53, qword_100120060);
  v54 = v66;

  v55 = sub_1000E1EE8();
  v56 = sub_1000E2698();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v65;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v83[0] = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_100029C70(v58, v54, v83);
    _os_log_impl(&_mh_execute_header, v55, v56, "[GetContactImage] No supported image types provided for image request. Retrieving avatar image for %s.", v59, 0xCu);
    sub_10000E9DC(v60);
  }

  return sub_100021588(v58, v54, 1, 0);
}

uint64_t sub_1000CE86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_1000BEBD8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000CE92C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_1000BE68C();
}

uint64_t sub_1000CE950(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  return sub_1000BC84C(a1, v1[2], v1[3], v1[4], v1[5], v1[6]);
}

uint64_t sub_1000CE9D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_1000C958C();
}

uint64_t sub_1000CEA84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_1000C969C();
}

uint64_t sub_1000CEB38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_1000C958C();
}

uint64_t sub_1000CEBEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_1000C958C();
}

uint64_t sub_1000CECA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_1000C958C();
}

uint64_t sub_1000CED54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002D64;

  return sub_1000C958C();
}

void sub_1000CEE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a2)
  {
  }
}

uint64_t sub_1000CEF50(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D64;

  return sub_1000BA698(a1, v1 + 16, v4);
}

uint64_t sub_1000CEFFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000252C4(a1, v4, v5, v7);
}

uint64_t sub_1000CF0D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000BA458(a1, v4, v5, v6);
}

uint64_t sub_1000CF184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000C52C0(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1000CF248()
{
  v1 = *(v0 + 16);

  return sub_1000E1838();
}

uint64_t sub_1000CF280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000B9F74(a1, v4, v5, v6);
}

uint64_t sub_1000CF334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000C4188(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000CF3F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000C4990();
}

uint64_t sub_1000CF414(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002E7C;

  return sub_1000B9C60(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_1000CF5B8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000ADE4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 25) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000CF6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_10000ADE4(a4, a5) - 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  v13 = v6 + ((*(v10 + 80) + 25) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11, v12, v13);
}

void sub_1000CF7E0(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_10002A1A4(0, v2 & ~(v2 >> 63), 0);
    v37 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = sub_1000E2908();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1000E28D8();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_1000D48C0(v39, v40, v41, v1, &unk_10011F930, TUHandle_ptr);
        v13 = v12;
        v14 = [v12 value];
        v15 = sub_1000E2338();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_10002A1A4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_10000ADE4(&qword_10011FC28, &qword_1000F28B0);
          v7 = sub_1000E2618();
          sub_1000E29D8();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_10000A848(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_10000A848(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_10000A848(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1000CFB58(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v43 = &_swiftEmptyArrayStorage;
    sub_10002A1A4(0, v2 & ~(v2 >> 63), 0);
    v38 = &_swiftEmptyArrayStorage;
    if (v36)
    {
      v3 = sub_1000E2908();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1000E28D8();
      v4 = *(v1 + 36);
    }

    v40 = v3;
    v41 = v4;
    v42 = v36 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v40;
        v10 = v42;
        v37 = v41;
        v11 = v1;
        sub_1000D48C0(v40, v41, v42, v1, &qword_10011F890, TUConversationMember_ptr);
        v13 = v12;
        v14 = [v13 handle];
        v15 = [v14 value];
        v16 = sub_1000E2338();
        v18 = v17;

        v19 = v38;
        v43 = v38;
        v21 = v38[2];
        v20 = v38[3];
        if (v21 >= v20 >> 1)
        {
          sub_10002A1A4((v20 > 1), v21 + 1, 1);
          v19 = v43;
        }

        v19[2] = v21 + 1;
        v22 = &v19[2 * v21];
        v22[4] = v16;
        v22[5] = v18;
        v38 = v19;
        if (v36)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v35;
          sub_10000ADE4(&qword_10011F940, &unk_1000F3600);
          v7 = sub_1000E2618();
          sub_1000E29D8();
          v7(v39, 0);
          if (v6 == v35)
          {
LABEL_32:
            sub_10000A848(v40, v41, v42);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v23 = 1 << *(v11 + 32);
          if (v9 >= v23)
          {
            goto LABEL_36;
          }

          v24 = v9 >> 6;
          v25 = *(v34 + 8 * (v9 >> 6));
          if (((v25 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v37)
          {
            goto LABEL_38;
          }

          v26 = v25 & (-2 << (v9 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v35;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v33 + 8 * v24);
            v2 = v35;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_10000A848(v9, v37, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_31;
              }
            }

            sub_10000A848(v9, v37, 0);
          }

LABEL_31:
          v32 = *(v11 + 36);
          v40 = v23;
          v41 = v32;
          v42 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1000CFEF8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
    sub_1000E2628();
    v1 = v24;
    v23 = v25;
    v2 = v26;
    v3 = v27;
    v4 = v28;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v23 = a1 + 56;
    v2 = ~v5;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v4 = v7 & *(a1 + 56);

    v3 = 0;
  }

  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1000E29A8() || (sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr), swift_dynamicCast(), v13 = v29, v11 = v3, v12 = v4, !v29))
      {
LABEL_31:
        sub_1000AE20C();
        return;
      }

      goto LABEL_18;
    }

    v9 = v3;
    v10 = v4;
    v11 = v3;
    if (!v4)
    {
      break;
    }

LABEL_14:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
      goto LABEL_31;
    }

LABEL_18:
    v14 = sub_1000AE1FC();

    v15 = *(v14 + 16);
    v16 = *(v8 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v17 <= *(v8 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_27;
      }

LABEL_8:

      v3 = v11;
      v4 = v12;
      if (v15)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v8 = sub_1000D2030(isUniquelyReferenced_nonNull_native, v19, 1, v8);
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }

LABEL_27:
      if ((*(v8 + 3) >> 1) - *(v8 + 2) < v15)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      v3 = v11;
      v4 = v12;
      if (v15)
      {
        v20 = *(v8 + 2);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_36;
        }

        *(v8 + 2) = v22;
        v3 = v11;
        v4 = v12;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v2 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v10 = *(v23 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1000D01E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000CAAC(0, &qword_10011F078, IRCandidate_ptr);
  sub_10001B174(&unk_10011F080, &qword_10011F078, IRCandidate_ptr);
  v3 = 0;
  v10[1] = sub_1000E2608();
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_1000D2C14(v10, *(*(a1 + 56) + ((v8 << 9) | (8 * v9))), &qword_10011F078, IRCandidate_ptr, &qword_100120308, &qword_1000F3690);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000D0350(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1000D03FC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
    sub_10001B174(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr);
    sub_1000E2628();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v26 = v17;
        v18 = a1(&v26);

        if (v4)
        {
          break;
        }

        v5 = v20;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1000E29A8())
        {
          break;
        }

        sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
      }

      while (v26);
    }

LABEL_20:
    sub_1000AE20C();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000D0660(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1000E2A98();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1000E2B68();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t NCProtoContinuityCall.description.getter()
{
  v0 = sub_1000E1198();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1000E2A88(88);
  v10._countAndFlagsBits = 0xD000000000000022;
  v10._object = 0x80000001000EC590;
  sub_1000E23A8(v10);
  v11._countAndFlagsBits = sub_1000E10D8();
  sub_1000E23A8(v11);

  v12._object = 0x80000001000EC5C0;
  v12._countAndFlagsBits = 0xD000000000000018;
  sub_1000E23A8(v12);
  v13._countAndFlagsBits = sub_1000E1158();
  sub_1000E23A8(v13);

  v14._countAndFlagsBits = 0x79616C7073696420;
  v14._object = 0xED00003D656D614ELL;
  sub_1000E23A8(v14);
  v15._countAndFlagsBits = sub_1000E10F8();
  sub_1000E23A8(v15);

  v16._countAndFlagsBits = 0x3D73757461747320;
  v16._object = 0xE800000000000000;
  sub_1000E23A8(v16);
  sub_1000E11A8();
  v5 = sub_1000E1188();
  (*(v1 + 8))(v4, v0);
  v7[1] = v5;
  v17._countAndFlagsBits = sub_1000E2C18();
  sub_1000E23A8(v17);

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  sub_1000E23A8(v18);
  return v8;
}

uint64_t sub_1000D0994(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v48 = a5;
  v40 = a4;
  v43 = a3;
  v51 = sub_1000E11C8();
  v50 = *(v51 - 8);
  v6 = *(v50 + 64);
  (__chkstk_darwin)();
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000E0ED8();
  v8 = *(*(v45 - 8) + 64);
  (__chkstk_darwin)();
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E0D68();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  v12 = (__chkstk_darwin)();
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v42 = &v40 - v15;
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v18 = sub_1000E1198();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a2 callUUID];
  sub_1000E2338();

  sub_1000E10E8();
  v24 = [a2 status];
  if (v24 > 6)
  {
    v25 = &enum case for NCProtoContinuityCall.Status.unknown(_:);
  }

  else
  {
    v25 = *(&off_1001168B8 + v24);
  }

  (*(v19 + 104))(v22, *v25, v18);
  sub_1000E11B8();
  [a2 isUplinkMuted];
  sub_1000E11D8();
  [a2 isSendingVideo];
  sub_1000E1138();
  if (v43)
  {
    v26 = v43;
    v27 = [v26 displayName];
    sub_1000E2338();

    sub_1000E1108();
    v28 = [v26 UUID];
    sub_1000E0D38();

    sub_1000E0D08();
    v30 = v46;
    v29 = v47;
    (*(v46 + 8))(v17, v47);
    sub_1000E1168();
  }

  else
  {
    v32 = [a2 displayName];
    sub_1000E2338();

    v31 = sub_1000E1108();
    v30 = v46;
    v29 = v47;
  }

  __chkstk_darwin(v31);
  *(&v40 - 2) = a2;
  sub_1000D4D90(&qword_100120288, &type metadata accessor for NCProtoCallInfo);
  sub_1000E0E38();
  sub_1000E1178();
  v33 = [a2 callGroupUUID];
  if (v33)
  {
    v34 = v41;
    v35 = v33;
    sub_1000E0D38();

    v36 = v42;
    (*(v30 + 32))(v42, v34, v29);
    sub_1000E0D08();
    sub_1000E1148();
    (*(v30 + 8))(v36, v29);
  }

  if (v48 >> 60 != 15)
  {
    sub_1000123E0(v40, v48);
    sub_1000E11F8();
  }

  v37 = [a2 service] - 1;
  if (v37 > 2)
  {
    v38 = &enum case for NCProtoContinuityCall.Service.unknownService(_:);
  }

  else
  {
    v38 = *(&off_1001168F0 + v37);
  }

  (*(v50 + 104))(v49, *v38, v51);
  sub_1000E11E8();
  [a2 wantsHoldMusic];
  sub_1000E1128();
  [a2 isScreening];
  return sub_1000E1118();
}

uint64_t sub_1000D0F80(int a1, id a2)
{
  v3 = [a2 localizedShortName];
  sub_1000E2338();

  sub_1000E1228();
  v4 = [a2 localizedName];
  sub_1000E2338();

  return sub_1000E1218();
}

uint64_t sub_1000D102C(uint64_t a1, void *a2)
{
  v3 = *(*(sub_1000E1238() - 8) + 64);
  __chkstk_darwin();
  v4 = [a2 callUUID];
  sub_1000E2338();

  sub_1000E0E88();
  v5 = [a2 localizedLabel];
  if (v5)
  {
    v6 = v5;
    sub_1000E2338();

    sub_1000E0EA8();
  }

  v7 = [a2 displayName];
  sub_1000E2338();

  sub_1000E0E58();
  sub_1000D13B0();
  sub_1000E0EC8();
  sub_1000D1590();
  sub_1000E0E78();
  sub_1000D1874();
  sub_1000E0EB8();
  v8 = [a2 provider];
  v9 = [v8 prioritizedSenderIdentities];

  v10 = [v9 count];
  if (v10 >= 2 && [a2 localSenderIdentity])
  {
    v11 = __chkstk_darwin();
    *(&v18 - 2) = v11;
    v12 = v11;
    sub_1000D4D90(&qword_100120290, &type metadata accessor for NCProtoSenderIdentity);
    sub_1000E0E38();
    sub_1000E0E98();
  }

  v13 = [a2 remoteParticipantHandles];
  sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
  v14 = sub_1000E25E8();

  sub_1000CF7E0(v14);
  v16 = v15;

  sub_1000D4CDC(v16);

  sub_1000E0E48();

  return sub_1000E0E68();
}

uint64_t sub_1000D13B0()
{
  v1 = sub_1000E0C38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_10000ADE4(&qword_1001202A8, &unk_1000F35F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = [v0 imageURL];
  if (v9)
  {
    v10 = v9;
    sub_1000E0C28();

    (*(v2 + 32))(v8, v5, v1);
    (*(v2 + 56))(v8, 0, 1, v1);
    sub_1000D5158(v8);
    result = [v0 localizedLabel];
    if (!result)
    {
      return result;
    }

    v12 = [v0 callDirectoryName];
    if (!v12)
    {
      return 1;
    }
  }

  else
  {
    (*(v2 + 56))(v8, 1, 1, v1);
    sub_1000D5158(v8);
  }

  return 0;
}

uint64_t sub_1000D1590()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if (v2)
  {
    return [v0 isEmergency];
  }

  v4 = [v0 provider];
  v5 = [v4 isSuperboxProvider];

  if (!v5)
  {
    return 0;
  }

  result = [v0 handle];
  if (result)
  {
    v6 = result;
    v7 = [v0 provider];
    v8 = [v7 emergencyHandles];

    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    v9 = sub_1000E2468();

    v20 = v6;
    __chkstk_darwin();
    v19[2] = &v20;
    LOBYTE(v7) = sub_1000D0660(sub_1000D50F0, v19, v9);

    if (v7)
    {
LABEL_19:

      return 1;
    }

    else
    {
      v10 = [v0 provider];
      v11 = [v10 emergencyLabeledHandles];

      sub_10000CAAC(0, &qword_1001202A0, TULabeledHandle_ptr);
      v12 = sub_1000E2468();

      if (v12 >> 62)
      {
LABEL_23:
        v13 = sub_1000E2B68();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = 0;
      while (v13 != v14)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_1000E2A98();
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v17 = [v15 handle];
        v18 = [v17 isEqualToHandle:v6];

        ++v14;
        if (v18)
        {

          goto LABEL_19;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1000D1874()
{
  v1 = [v0 remoteParticipantHandles];
  sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
  v2 = sub_1000E25E8();

  sub_1000CFEF8(v2);
  v4 = v3;

  v5 = sub_1000D4CDC(v4);

  v6 = sub_1000206F8(v5, 0, 0, 0);

  if (v6)
  {
    sub_10000ADE4(&qword_10011DEC8, &unk_1000F35E0);
    v7 = sub_1000E2B78();
    v8 = 0;
    v9 = v6 + 64;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 64);
    v13 = (v10 + 63) >> 6;
    v31 = v7 + 64;
    v32 = v7;
    if (v12)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v12));
        v33 = (v12 - 1) & v12;
LABEL_11:
        v17 = v14 | (v8 << 6);
        v18 = v6;
        v19 = (*(v6 + 48) + 16 * v17);
        v34 = v19[1];
        v35 = *v19;
        v20 = *(*(v6 + 56) + 8 * v17);

        v21 = v20;
        v22 = [v21 identifier];
        v23 = sub_1000E2338();
        v25 = v24;

        *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v26 = (v32[6] + 16 * v17);
        *v26 = v35;
        v26[1] = v34;
        v27 = (v32[7] + 16 * v17);
        *v27 = v23;
        v27[1] = v25;
        v28 = v32[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          break;
        }

        v32[2] = v30;
        v6 = v18;
        v12 = v33;
        if (!v33)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
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

          return;
        }

        v16 = *(v9 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v33 = (v16 - 1) & v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    sub_10000C854(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000D1B24(uint64_t a1, void *a2)
{
  v39 = sub_1000E1CC8();
  v38 = *(v39 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v39);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E15C8();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000E13C8();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v33);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000E0D68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a2 UUID];
  sub_1000E0D38();

  sub_1000E0D08();
  (*(v13 + 8))(v16, v12);
  sub_1000E1458();
  v18 = [a2 displayName];
  sub_1000E2338();

  sub_1000E1468();
  v19 = [a2 state];
  if (v19 > 4)
  {
    v20 = &enum case for NCProtoConversationState.unknownState(_:);
  }

  else
  {
    v20 = *(&off_100116908 + v19);
  }

  (*(v8 + 104))(v11, *v20, v33);
  sub_1000E14B8();
  v21 = [a2 resolvedAudioVideoMode];
  v22 = &enum case for NCProtoConversationAVMode.audio(_:);
  v23 = &enum case for NCProtoConversationAVMode.none(_:);
  if (v21)
  {
    v23 = &enum case for NCProtoConversationAVMode.video(_:);
  }

  if (v21 != 1)
  {
    v22 = v23;
  }

  (*(v35 + 104))(v34, *v22, v36);
  sub_1000E14C8();
  v24 = [a2 letMeInRequestState];
  if (v24 > 3)
  {
    v25 = &enum case for NCProtoConversationLetMeInRequestState.unknownLmiState(_:);
  }

  else
  {
    v25 = *(&off_100116930 + v24);
  }

  (*(v38 + 104))(v37, *v25, v39);
  sub_1000E1498();
  v26 = [a2 mergedRemoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10001B174(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  v27 = sub_1000E25E8();

  if ((v27 & 0xC000000000000001) == 0)
  {
    goto LABEL_14;
  }

  if (sub_1000E2968() < 0)
  {
    __break(1u);
LABEL_14:
    v28 = *(v27 + 16);
  }

  sub_1000E1488();
  sub_100020B10(v27);
  sub_1000E14A8();
  sub_1000CFB58(v27);
  v30 = v29;

  sub_1000D4CDC(v30);

  sub_1000E0E48();

  return sub_1000E1478();
}

char *sub_1000D2030(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D213C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000ADE4(&qword_1001202C8, &qword_1000F3630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D2270(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000ADE4(&qword_10011ED80, &qword_1000F11C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000D237C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000ADE4(&qword_10011FF18, &qword_1000F2E68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000ADE4(&unk_100120208, &qword_1000F3660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D24B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000ADE4(&qword_1001202E0, &unk_1000F3650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1000D25DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000ADE4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000D27B8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1000E2D48();
  sub_100012A20(a2, a3, a4);
  sub_1000E2398();

  v10 = sub_1000E2D68();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_28:
    v22 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v4;
    sub_100015488(a2, a3, a4);
    sub_1000D38A0(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v30;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v13 = ~v11;
  v14 = *(v8 + 48);
  while (1)
  {
    v15 = (v14 + 24 * v12);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v15 + 16);
    if (!v18)
    {
      if (a4)
      {
        goto LABEL_4;
      }

      if (v16 == a2 && v17 == a3)
      {
        a4 = 0;
        goto LABEL_29;
      }

      goto LABEL_3;
    }

    if (v18 != 1)
    {
      break;
    }

    if (a4 != 1)
    {
      goto LABEL_4;
    }

    if (v16 == a2 && v17 == a3)
    {
      a4 = 1;
      goto LABEL_29;
    }

LABEL_3:
    if (sub_1000E2C68())
    {
      goto LABEL_29;
    }

LABEL_4:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (a4 != 2)
  {
    goto LABEL_4;
  }

  if (v16 != a2 || v17 != a3)
  {
    goto LABEL_3;
  }

  a4 = 2;
LABEL_29:
  sub_1000154A0(a2, a3, a4);
  v25 = *(v8 + 48) + 24 * v12;
  v26 = *v25;
  v27 = *(v25 + 8);
  *a1 = *v25;
  *(a1 + 8) = v27;
  v28 = *(v25 + 16);
  *(a1 + 16) = v28;
  sub_100015488(v26, v27, v28);
  return 0;
}

uint64_t sub_1000D29EC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000E2D48();
  sub_1000E2398();
  v9 = sub_1000E2D68();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000E2C68() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000D3C20(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000D2C14(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1000E2978();

    if (v17)
    {

      sub_10000CAAC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_1000E2968();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_1000D2EAC(v15, result + 1, a5, a6, a3, a4);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_1000D35FC(v29 + 1, a5, a6);
        }

        v30 = v16;
        sub_1000D381C(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    sub_10000CAAC(0, a3, a4);
    v19 = sub_1000E2808(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1000E2818();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v27 = a2;
      sub_1000D3A90(v27, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v38;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_1000D2EAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_10000ADE4(a3, a4);
    v10 = sub_1000E2A48();
    v23 = v10;
    sub_1000E2918();
    if (sub_1000E29A8())
    {
      sub_10000CAAC(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1000D35FC(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_1000E2808(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_1000E29A8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_1000D30F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000ADE4(&qword_1001202F8, &qword_1000F3678);
  result = sub_1000E2A38();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1000E2D48();
      sub_100012A20(v20, v21, v22);
      sub_1000E2398();

      result = sub_1000E2D68();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000D3388(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000ADE4(&qword_100120298, &unk_1000F35D0);
  result = sub_1000E2A38();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1000E2D48();
      sub_1000E2398();
      result = sub_1000E2D68();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000D35FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10000ADE4(a2, a3);
  result = sub_1000E2A38();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = sub_1000E2808(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1000D381C(uint64_t a1, uint64_t a2)
{
  sub_1000E2808(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_1000E28F8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1000D38A0(Swift::Int result, void *a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a5)
  {
    sub_1000D30F4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1000D3DA0();
      goto LABEL_23;
    }

    sub_1000D41E0(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1000E2D48();
  sub_100012A20(v10, a2, a3);
  sub_1000E2398();

  result = sub_1000E2D68();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      result = *v19;
      v20 = *(v19 + 8);
      v21 = *(v19 + 16);
      if (v21)
      {
        if (v21 == 1)
        {
          if (a3 != 1)
          {
            goto LABEL_11;
          }
        }

        else if (a3 != 2)
        {
          goto LABEL_11;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v22 = result == v10 && v20 == a2;
      if (v22 || (result = sub_1000E2C68(), (result & 1) != 0))
      {
        result = sub_1000E2CB8();
        __break(1u);
        break;
      }

LABEL_11:
      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_23:
  v23 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v24 = *(v23 + 48) + 24 * a4;
  *v24 = v10;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

void sub_1000D3A90(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1000D35FC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000D40A0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1000D468C(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_1000E2808(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_10000CAAC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1000E2818();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1000E2CB8();
  __break(1u);
}

Swift::Int sub_1000D3C20(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000D3388(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000D3F1C();
      goto LABEL_16;
    }

    sub_1000D4454(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000E2D48();
  sub_1000E2398();
  result = sub_1000E2D68();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000E2C68();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000E2CB8();
  __break(1u);
  return result;
}

void *sub_1000D3DA0()
{
  v1 = v0;
  sub_10000ADE4(&qword_1001202F8, &qword_1000F3678);
  v2 = *v0;
  v3 = sub_1000E2A28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_100015488(v19, v20, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000D3F1C()
{
  v1 = v0;
  sub_10000ADE4(&qword_100120298, &unk_1000F35D0);
  v2 = *v0;
  v3 = sub_1000E2A28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1000D40A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000ADE4(a1, a2);
  v4 = *v2;
  v5 = sub_1000E2A28();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1000D41E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000ADE4(&qword_1001202F8, &qword_1000F3678);
  result = sub_1000E2A38();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1000E2D48();
      sub_100015488(v20, v21, v22);
      sub_100012A20(v20, v21, v22);
      sub_1000E2398();

      result = sub_1000E2D68();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000D4454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000ADE4(&qword_100120298, &unk_1000F35D0);
  result = sub_1000E2A38();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1000E2D48();

      sub_1000E2398();
      result = sub_1000E2D68();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000D468C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10000ADE4(a2, a3);
  result = sub_1000E2A38();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1000E2808(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

void sub_1000D48C0(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000E2988();
      sub_10000CAAC(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000CAAC(0, a5, a6);
    if (sub_1000E2948() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1000E2958();
    swift_dynamicCast();
    v6 = v18;
    v11 = sub_1000E2808(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = sub_1000E2818();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_1000D4B50(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
    sub_10001B174(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
    result = sub_1000E2608();
    v11 = result;
    if (v2)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = TUConversationMember_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_1000E2A98();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1000D2C14(&v10, v8, &qword_10011F890, TUConversationMember_ptr, &qword_100120300, &unk_1000F3680);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_1000E2B68();
  }

  v6 = result;
  v5 = sub_1000E2B68();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000D4CDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000E2608();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000D29EC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000D4D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D4DD8(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_10000CAAC(0, &qword_10011EB88, CNContact_ptr);
    sub_10001B174(&qword_10011ED60, &qword_10011EB88, CNContact_ptr);
    result = sub_1000E2608();
    v11 = result;
    if (v2)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = CNContact_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_1000E2A98();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1000D2C14(&v10, v8, &qword_10011EB88, CNContact_ptr, &qword_1001202B0, &unk_1000F3610);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_1000E2B68();
  }

  v6 = result;
  v5 = sub_1000E2B68();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000D4F64(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
    result = sub_1000E2608();
    v11 = result;
    if (v2)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = TUHandle_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_1000E2A98();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1000D2C14(&v10, v8, &unk_10011F930, TUHandle_ptr, &qword_100120228, &unk_1000F3430);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_1000E2B68();
  }

  v6 = result;
  v5 = sub_1000E2B68();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000D50F0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  return sub_1000E2818() & 1;
}

uint64_t sub_1000D5158(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_1001202A8, &unk_1000F35F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D51C0()
{
  type metadata accessor for Defaults();
  result = swift_allocObject();
  *(result + 40) = &type metadata for ConversationServerBag;
  *(result + 48) = &off_100116DE8;
  qword_100123120 = result;
  return result;
}

uint64_t sub_1000D5200()
{
  sub_10000E9DC((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1000D525C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1000E2328();

  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_1000D5500(v6);
    v3 = sub_1000E2328();

    v4 = [v0 BOOLForKey:v3];
  }

  else
  {

    memset(v6, 0, sizeof(v6));
    sub_1000D5500(v6);
    return 2;
  }

  return v4;
}

uint64_t sub_1000D5500(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011ECF0, &qword_1000F08A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000D5568()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1000E2328();

  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_1000D5500(v6);
    v3 = sub_1000E2328();

    v4 = [v0 integerForKey:v3];
  }

  else
  {

    memset(v6, 0, sizeof(v6));
    sub_1000D5500(v6);
    return 0;
  }

  return v4;
}

uint64_t sub_1000D5814(uint64_t a1)
{
  v13[3] = &type metadata for Int;
  v13[0] = a1;
  v1 = [objc_opt_self() standardUserDefaults];
  sub_1000B26A8(v13, v11);
  v2 = v12;
  if (v12)
  {
    v3 = sub_1000036AC(v11, v12);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin(v3);
    v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_1000E2C48();
    (*(v4 + 8))(v7, v2);
    sub_10000E9DC(v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1000E2328();
  [v1 setValue:v8 forKey:v9];

  swift_unknownObjectRelease();
  return sub_1000D5500(v13);
}

char *os_log_type_t.errorWithState.unsafeMutableAddressor()
{
  if (qword_10011DCA0 != -1)
  {
    swift_once();
  }

  return &static os_log_type_t.errorWithState;
}

uint64_t sub_1000D5A08()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_100123128);
  sub_1000049D0(v0, qword_100123128);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5A88()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_100123140);
  sub_1000049D0(v0, qword_100123140);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5B60(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000E1F08();
  sub_10002B948(v3, a2);
  sub_1000049D0(v3, a2);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5BD8()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_100123188);
  sub_1000049D0(v0, qword_100123188);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5C58()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_1001231A0);
  sub_1000049D0(v0, qword_1001231A0);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5CD8()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_1001231B8);
  sub_1000049D0(v0, qword_1001231B8);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5D58()
{
  v0 = sub_1000E1F08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E1E88();
  sub_10002B948(v5, qword_100120440);
  sub_1000049D0(v5, qword_100120440);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v6 = sub_1000049D0(v0, qword_100123128);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1000E1E68();
}

uint64_t sub_1000D5E94()
{
  result = sub_1000E2678();
  static os_log_type_t.errorWithState = result | 0x80;
  return result;
}

uint64_t static os_log_type_t.errorWithState.getter()
{
  if (qword_10011DCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static os_log_type_t.errorWithState;
}

uint64_t static os_log_type_t.errorWithState.setter(char a1)
{
  if (qword_10011DCA0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static os_log_type_t.errorWithState = a1;
  return result;
}

uint64_t (*static os_log_type_t.errorWithState.modify())()
{
  if (qword_10011DCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

char *sub_1000D602C(char *__src, char *__dst, uint64_t a3)
{
  if (__dst)
  {
    return strncpy(__dst, __src, a3 - __dst);
  }

  __break(1u);
  return __src;
}

uint64_t sub_1000D605C(char a1)
{
  v2 = sub_1000E1E58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  if (qword_10011DC98 != -1)
  {
    swift_once();
  }

  v10 = sub_1000E1E88();
  sub_1000049D0(v10, qword_100120440);
  v11 = off_1001169A0[a1];
  sub_1000E1E48();
  v12 = sub_1000E1E78();
  v13 = sub_1000E27C8();
  if (sub_1000E2868())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1000E1E38();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v15, v11, "", v14, 2u);
  }

  (*(v3 + 16))(v7, v9, v2);
  v16 = sub_1000E1EC8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1000E1EB8();
  (*(v3 + 8))(v9, v2);
  return v19;
}

uint64_t sub_1000D6278(char a1)
{
  v2 = sub_1000E1E98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E1E58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC98 != -1)
  {
    swift_once();
  }

  v12 = sub_1000E1E88();
  sub_1000049D0(v12, qword_100120440);
  v20 = off_1001169A0[a1];
  v13 = sub_1000E1E78();
  sub_1000E1EA8();
  v14 = sub_1000E27B8();
  if (sub_1000E2868())
  {

    sub_1000E1ED8();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1000E1E38();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, v20, v15, v16, 2u);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t NeighborhoodActivityPublisherService.firstValue<A, B>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1000E0D68();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D65E4, 0, 0);
}

uint64_t sub_1000D65E4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);
  v12 = *(v0 + 32);
  sub_1000E0D58();
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  v7 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_1000D6718;
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v10, &unk_1000F3700, v5, sub_1000AB3EC, v6, 0, 0, v9);
}

uint64_t sub_1000D6718()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1000D683C;
  }

  else
  {
    v6 = *(v2 + 88);
    v5 = *(v2 + 96);

    v4 = sub_100024FB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D683C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];
  v7 = v0[14];

  return v6();
}

uint64_t sub_1000D68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1000D6904, 0, 0);
}

uint64_t sub_1000D6904()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1000D6A10;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000D8C54, v3, v7);
}

uint64_t sub_1000D6A10()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D6B4C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000D6B4C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1000D6BB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002E7C;

  return sub_1000D68D8(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_1000D6C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v39 = a4;
  v36 = a6;
  v33 = a5;
  v34 = a1;
  v42 = sub_1000E2118();
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v42);
  v40 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000E2148();
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v43);
  v37 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v13 = sub_1000E24E8();
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = sub_1000E0D68();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a2 + 16);
  (*(v19 + 16))(v21, a3, v18);
  (*(v14 + 16))(v17, v34, v13);
  v22 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v23 = (v20 + v22 + *(v14 + 80)) & ~*(v14 + 80);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 2) = v33;
  *(v24 + 3) = v25;
  *(v24 + 4) = v38;
  *(v24 + 5) = a2;
  (*(v19 + 32))(&v24[v22], v21, v18);
  (*(v14 + 32))(&v24[v23], v17, v32);
  *&v24[(v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = v39;
  aBlock[4] = sub_1000D8C64;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100116A38;
  v26 = _Block_copy(aBlock);

  v27 = v37;
  sub_1000E2138();
  v45 = _swiftEmptyArrayStorage;
  sub_1000D91F4(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v28 = v40;
  v29 = v42;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v26);
  (*(v44 + 8))(v28, v29);
  (*(v41 + 8))(v27, v43);
}

uint64_t sub_1000D7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v97 = a7;
  v100 = a6;
  v76 = a3;
  v101 = a2;
  v96 = a1;
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v98 = a5;
  v83 = sub_1000E24E8();
  v103 = *(v83 - 8);
  v99 = v103[8];
  v11 = __chkstk_darwin(v83);
  v87 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = v75 - v13;
  v94 = sub_1000E0D68();
  v102 = *(v94 - 8);
  v92 = *(v102 + 64);
  v14 = __chkstk_darwin(v94);
  v86 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = v75 - v16;
  v17 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v75 - v19;
  v21 = sub_1000E1F68();
  v22 = sub_1000D8BA4();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1000D91F4(&qword_10011FB70, sub_1000D8BA4);
  v105 = v21;
  v106 = v22;
  v107 = WitnessTable;
  v108 = v24;
  v80 = sub_1000E1F38();
  v81 = *(v80 - 8);
  v25 = *(v81 + 64);
  __chkstk_darwin(v80);
  v78 = v75 - v26;
  v79 = swift_getWitnessTable();
  v84 = sub_1000E1F18();
  v85 = *(v84 - 8);
  v27 = *(v85 + 64);
  __chkstk_darwin(v84);
  v95 = v75 - v28;
  v104 = *(a1 + 16);
  v29 = v104;
  v105 = a4;
  v30 = sub_1000E26D8();
  (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
  v31 = v29;
  sub_1000E2088();
  sub_1000D8DA0(v20);

  v32 = v102;
  v33 = *(v102 + 16);
  v77 = v102 + 16;
  v34 = v93;
  v35 = v94;
  v33(v93, v101, v94);
  v36 = v33;
  v37 = v103;
  v38 = v103[2];
  v75[1] = v103 + 2;
  v88 = v38;
  v39 = v82;
  v40 = a3;
  v41 = v83;
  v38(v82, v40, v83);
  v42 = *(v32 + 80);
  v43 = *(v37 + 80);
  v44 = (v42 + 48) & ~v42;
  v90 = v44;
  v45 = (v92 + v44 + v43) & ~v43;
  v92 = v42 | v43;
  v46 = v45;
  v75[0] = v45;
  v47 = swift_allocObject();
  v48 = v100;
  *(v47 + 2) = v98;
  *(v47 + 3) = v48;
  v49 = v96;
  *(v47 + 4) = v97;
  *(v47 + 5) = v49;
  v50 = *(v32 + 32);
  v102 = v32 + 32;
  v91 = v50;
  v50(&v47[v44], v34, v35);
  v51 = v103[4];
  v103 += 4;
  v89 = v51;
  v52 = &v47[v46];
  v53 = v39;
  v54 = v41;
  v51(v52, v39, v41);

  v55 = v80;
  v56 = v78;
  sub_1000E2048();

  (*(v81 + 8))(v56, v55);
  v57 = v101;
  v36(v34, v101, v35);
  v58 = v76;
  v88(v53, v76, v41);
  v59 = v75[0];
  v60 = swift_allocObject();
  v61 = v100;
  *(v60 + 2) = v98;
  *(v60 + 3) = v61;
  v62 = v96;
  *(v60 + 4) = v97;
  *(v60 + 5) = v62;
  v91(&v60[v90], v93, v35);
  v89(&v60[v59], v53, v41);
  v63 = v86;
  v36(v86, v57, v35);
  v64 = v87;
  v88(v87, v58, v54);
  v65 = swift_allocObject();
  v66 = v100;
  *(v65 + 2) = v98;
  *(v65 + 3) = v66;
  v67 = v96;
  *(v65 + 4) = v97;
  *(v65 + 5) = v67;
  v91(&v65[v90], v63, v94);
  v89(&v65[v59], v64, v54);
  v68 = v67;
  swift_retain_n();
  v69 = v84;
  swift_getWitnessTable();
  v70 = v95;
  v71 = sub_1000E2068();

  (*(v85 + 8))(v70, v69);
  swift_beginAccess();
  v72 = *(v68 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = *(v68 + 24);
  *(v68 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v71, v101, isUniquelyReferenced_nonNull_native);
  *(v68 + 24) = v104;
  return swift_endAccess();
}

uint64_t sub_1000D7A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 24);
  v7 = sub_10000B348(a3);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = v7;
  v10 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 24);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CB370();
  }

  v13 = *(v12 + 48);
  v14 = sub_1000E0D68();
  (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
  v15 = *(*(v12 + 56) + 8 * v9);
  sub_1000C9AE0(v9, v12);
  *(a2 + 24) = v12;
  swift_endAccess();
  sub_1000E1F88();
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v16 = sub_1000E24E8();
  sub_1000D7B6C(a1, v16);
}

uint64_t sub_1000D7B6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_1000E2D78();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_1000E24C8();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_1000E24D8();
  }
}

uint64_t sub_1000D7DA8(uint64_t a1, uint64_t a2)
{
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v4 = sub_1000E2D78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v11 - v7);
  sub_1000E24F8();
  sub_1000D91F4(&qword_10011FB88, &type metadata accessor for CancellationError);
  v9 = swift_allocError();
  sub_1000E2298();
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  sub_1000D7A18(v8, a1, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000D7F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v41 = a1;
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v10 = sub_1000E2D78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = (&v38 - v17);
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v38 - v24;
  v42 = a7;
  v26 = sub_1000E1F48();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v38 - v28;
  (*(v30 + 16))(&v38 - v28, v41);
  if ((*(v19 + 48))(v29, 1, a6) == 1)
  {
    *v15 = TUMakeNeighborhoodConduitError();
    swift_storeEnumTagMultiPayload();
    sub_1000D7A18(v15, v43, v44);
    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    v39 = v11;
    v40 = v10;
    v41 = a5;
    v32 = *(v19 + 32);
    v32(v25, v29, a6);
    (*(v19 + 16))(v23, v25, a6);
    v33 = sub_1000E2C38();
    if (v33)
    {
      v34 = v33;
      (*(v19 + 8))(v23, a6);
    }

    else
    {
      v34 = swift_allocError();
      v32(v35, v23, a6);
    }

    v36 = v44;
    v37 = v40;
    *v18 = v34;
    swift_storeEnumTagMultiPayload();
    sub_1000D7A18(v18, v43, v36);
    (*(v39 + 8))(v18, v37);
    return (*(v19 + 8))(v25, a6);
  }
}

uint64_t sub_1000D832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v9 = sub_1000E2D78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  (*(*(a5 - 8) + 16))(&v15 - v12, a1, a5);
  swift_storeEnumTagMultiPayload();
  sub_1000D7A18(v13, a2, a3);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000D849C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E2118();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E2148();
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000E0D68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v19[1] = *(a1 + 16);
  (*(v13 + 16))(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(v13 + 32))(v16 + v15, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_1000D8BF0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001169E8;
  v17 = _Block_copy(aBlock);

  sub_1000E2138();
  v23 = _swiftEmptyArrayStorage;
  sub_1000D91F4(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v17);
  (*(v22 + 8))(v7, v4);
  (*(v20 + 8))(v11, v21);
}

uint64_t sub_1000D8820(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (*(v5 + 16))
  {

    v6 = sub_10000B348(a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      sub_1000E1F88();
    }

    else
    {
    }
  }

  return result;
}

uint64_t NeighborhoodActivityPublisherService.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t NeighborhoodActivityPublisherService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000D8940()
{
  v12 = sub_1000E2708();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E26B8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1000E2148();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000D8BA4();
  v11[0] = "nduitService.server";
  v11[1] = v9;
  sub_1000E2138();
  v13 = &_swiftEmptyArrayStorage;
  sub_1000D91F4(&qword_10011DCD8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000ADE4(&qword_10011DCE0, &qword_1000F0190);
  sub_100011FD8(&qword_10011DCE8, &qword_10011DCE0, &qword_1000F0190);
  sub_1000E28C8();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v0 + 16) = sub_1000E2748();
  *(v0 + 24) = sub_10000B980(&_swiftEmptyArrayStorage);
  return v0;
}

unint64_t sub_1000D8BA4()
{
  result = qword_10011DCD0;
  if (!qword_10011DCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011DCD0);
  }

  return result;
}

uint64_t sub_1000D8BF0()
{
  v1 = *(sub_1000E0D68() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000D8820(v2, v3);
}

uint64_t sub_1000D8C64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v7 = *(sub_1000E24E8() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0[5];
  v10 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000D7150(v9, v0 + v5, v0 + v8, v10, v1, v2, v3);
}

uint64_t sub_1000D8DA0(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D8E08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v7 = *(*(sub_1000E24E8() - 8) + 80);
  v8 = v0[5];

  return sub_1000D7DA8(v8, v0 + v5);
}

uint64_t sub_1000D8F30()
{
  v1 = *(v0 + 16);
  v2 = sub_1000E0D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = v5 + *(v3 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v7 = sub_1000E24E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v2);
  (*(v8 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0, v10 + v11, v12 | 7);
}

uint64_t sub_1000D90C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *, char *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(sub_1000E0D68() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v10 = *(sub_1000E24E8() - 8);
  v11 = *(v2 + 5);
  v12 = &v2[(v9 + *(v10 + 80)) & ~*(v10 + 80)];

  return a2(a1, v11, &v2[v8], v12, v4, v5, v6);
}

uint64_t sub_1000D91F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D9258()
{
  v1 = [*v0 activeDevices];
  sub_1000DA3C4();
  v2 = sub_1000E2468();

  return v2;
}

void sub_1000D92D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10002ED24;
    v10[3] = a5;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [v8 *a6];
  _Block_release(v9);
}

uint64_t sub_1000D93B8()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1000D94CC;
  v2 = swift_continuation_init();
  v0[17] = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100014FC4;
  v0[13] = &unk_100116D30;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000D94CC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000D95F8(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000E2328();
  if (isa)
  {
    isa = sub_1000E22A8().super.isa;
  }

  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000D96FC;
  v12[3] = &unk_100116CE0;
  v10 = _Block_copy(v12);

  [v5 registerRequestID:v9 options:isa handler:v10];
  _Block_release(v10);
}

uint64_t sub_1000D96FC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_1000E22B8();
  if (a3)
  {
    a3 = sub_1000E22B8();
  }

  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_1000DA3BC, v10);
}

void sub_1000D9808(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = sub_1000E22A8().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = sub_1000E22A8().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_1000E0BD8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

uint64_t sub_1000D9914(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000E2328();
  if (isa)
  {
    isa = sub_1000E22A8().super.isa;
  }

  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000D9A18;
  v12[3] = &unk_100116CB8;
  v10 = _Block_copy(v12);

  [v5 registerEventID:v9 options:isa handler:v10];
  _Block_release(v10);
}

uint64_t sub_1000D9A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1000E22B8();
  if (a3)
  {
    a3 = sub_1000E22B8();
  }

  v5(v6, a3);
}

uint64_t sub_1000D9AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8)
{
  v12 = sub_1000E2328();
  v13.super.isa = sub_1000E22A8().super.isa;
  v14 = sub_1000E2328();
  if (isa)
  {
    isa = sub_1000E22A8().super.isa;
  }

  v17[4] = a7;
  v17[5] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000D9C5C;
  v17[3] = &unk_100116C90;
  v15 = _Block_copy(v17);

  [v8 sendRequestID:v12 request:v13.super.isa destinationID:v14 options:isa responseHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1000D9C5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_1000E22B8();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_1000E22B8();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1000D9D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, objc_class *a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100002E7C;

  return sub_1000DA090(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000D9E2C()
{
  v1 = [*v0 peerDeviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000E2338();

  return v3;
}

void sub_1000D9E94(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100067144;
    v5[3] = &unk_100116C40;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setDiscoverySessionStateChangedHandler:v4];
  _Block_release(v4);
}

uint64_t sub_1000D9F64()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1000DA448;
  v2 = swift_continuation_init();
  v0[17] = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100014FC4;
  v0[13] = &unk_100116C18;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000DA078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa)
{
  v9 = v7;
  v10 = sub_1000E2328();
  v9[18].super.isa = v10;
  v11.super.isa = sub_1000E22A8().super.isa;
  v9[19].super.isa = v11.super.isa;
  v12 = sub_1000E2328();
  v9[20].super.isa = v12;
  if (isa)
  {
    isa = sub_1000E22A8().super.isa;
  }

  v9[21].super.isa = isa;
  v9[2].super.isa = v9;
  v9[3].super.isa = sub_1000DA244;
  v13 = swift_continuation_init();
  v9[17].super.isa = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  v9[10].super.isa = _NSConcreteStackBlock;
  v9[11].super.isa = 1107296256;
  v9[12].super.isa = sub_100014FC4;
  v9[13].super.isa = &unk_100116C68;
  v9[14].super.isa = v13;
  [v6 sendEventID:v10 event:v11.super.isa destinationID:v12 options:isa completion:&v9[10]];

  return _swift_continuation_await(&v9[2]);
}

uint64_t sub_1000DA244()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    v7 = *(v1 + 48);
    swift_willThrow();
  }

  v8 = *(v2 + 8);

  return v8();
}

unint64_t sub_1000DA3C4()
{
  result = qword_10011F5E0;
  if (!qword_10011F5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011F5E0);
  }

  return result;
}

void sub_1000DA488(uint64_t a1, unint64_t a2, double a3)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000E2328();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      sub_1000E28B8();
      swift_unknownObjectRelease();
      sub_10000C154(v25, v26);
    }

    else
    {
      memset(v26, 0, sizeof(v26));
    }

    sub_10000ADE4(&unk_10011ECF0, &qword_1000F08A0);
    if (swift_dynamicCast())
    {
      v10 = *&v25[0];
      sub_1000DAB7C();

      v11 = sub_1000E2878();
      v12 = sub_1000E2698();

      if (!os_log_type_enabled(v11, v12))
      {
LABEL_13:

        return;
      }

      v13 = swift_slowAlloc();
      *&v26[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(a1, a2, v26);
      *(v13 + 12) = 2080;
      *&v25[0] = v10;
      v14 = sub_1000E2368();
      v16 = sub_100029C70(v14, v15, v26);

      *(v13 + 14) = v16;
      v17 = "Got %s from server bag with a value of: %s";
    }

    else
    {
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v18 = sub_1000E1F08();
      sub_1000049D0(v18, qword_100123128);

      v11 = sub_1000E1EE8();
      v12 = sub_1000E2698();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_13;
      }

      v13 = swift_slowAlloc();
      *&v25[0] = swift_slowAlloc();
      *v13 = 136315394;
      *&v26[0] = a1;
      *(&v26[0] + 1) = a2;

      v19 = sub_1000E2368();
      v21 = sub_100029C70(v19, v20, v25);

      *(v13 + 4) = v21;
      *(v13 + 12) = 2080;
      *v26 = a3;
      v22 = sub_1000E2368();
      v24 = sub_100029C70(v22, v23, v25);

      *(v13 + 14) = v24;
      v17 = "Server bag does not have a value for %s, so returning the default one of %s seconds.";
    }

    _os_log_impl(&_mh_execute_header, v11, v12, v17, v13, 0x16u);
    swift_arrayDestroy();

    goto LABEL_13;
  }

  __break(1u);
}

id sub_1000DA7E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = sub_1000E2328();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      sub_1000E28B8();
      swift_unknownObjectRelease();
      sub_10000C154(v24, v25);
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    sub_10000ADE4(&unk_10011ECF0, &qword_1000F08A0);
    if (swift_dynamicCast())
    {
      a3 = *&v24[0];
      sub_1000DAB7C();

      v10 = sub_1000E2878();
      v11 = sub_1000E2698();

      if (!os_log_type_enabled(v10, v11))
      {
LABEL_13:

        return a3;
      }

      v12 = swift_slowAlloc();
      *&v25[0] = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_100029C70(a1, a2, v25);
      *(v12 + 12) = 2080;
      *&v24[0] = a3;
      v13 = sub_1000E2368();
      v15 = sub_100029C70(v13, v14, v25);

      *(v12 + 14) = v15;
      v16 = "Got %s from server bag with a value of: %s";
    }

    else
    {
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v17 = sub_1000E1F08();
      sub_1000049D0(v17, qword_100123128);

      v10 = sub_1000E1EE8();
      v11 = sub_1000E2698();

      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_13;
      }

      v12 = swift_slowAlloc();
      *&v24[0] = swift_slowAlloc();
      *v12 = 136315394;
      *&v25[0] = a1;
      *(&v25[0] + 1) = a2;

      v18 = sub_1000E2368();
      v20 = sub_100029C70(v18, v19, v24);

      *(v12 + 4) = v20;
      *(v12 + 12) = 2080;
      *&v25[0] = a3;
      v21 = sub_1000E2368();
      v23 = sub_100029C70(v21, v22, v24);

      *(v12 + 14) = v23;
      v16 = "Server bag does not have a value for %s, so returning the default one of %s seconds.";
    }

    _os_log_impl(&_mh_execute_header, v10, v11, v16, v12, 0x16u);
    swift_arrayDestroy();

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_1000DAB40()
{
  result = sub_1000DA7E4(0xD00000000000001ELL, 0x80000001000EC8E0, 5);
  qword_100120528 = result;
  return result;
}

unint64_t sub_1000DAB7C()
{
  result = qword_100120530;
  if (!qword_100120530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120530);
  }

  return result;
}

void *sub_1000DABD8()
{
  v1 = [*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager) activityAuthorizedBundleIdentifiers];
  sub_1000DC210();
  v2 = sub_1000E22B8();

  sub_10000ADE4(&qword_10011DF68, &qword_1000F04C8);
  result = sub_1000E2B78();
  v4 = result;
  v5 = 0;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v23 = (result + 8);
  v24 = v2;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(v24 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v24 + 56) + 8 * v14);

      result = [v18 BOOLValue];
      *&v23[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      v19 = (v4[6] + 16 * v14);
      *v19 = v16;
      v19[1] = v17;
      *(v4[7] + v14) = result;
      v20 = v4[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v4[2] = v22;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        return v4;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;

  return _swift_task_switch(sub_1000DAE48, v7, 0);
}

uint64_t sub_1000DAE48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  sub_1000A8BE4(0, v3, v3, v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DAEE4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for HandoffInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  sub_1000DC13C(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1000033C8(v14, &qword_10011F8B8, &qword_1000F22D8);
  }

  sub_1000DC1AC(v14, v21);
  v23 = [*&a2[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager] activityAuthorizedBundleIdentifiers];
  sub_1000DC210();
  v24 = sub_1000E22B8();

  if (*(v24 + 16) && (v25 = sub_10000B2D0(v37, a4), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);

    v28 = [v27 BOOLValue];
  }

  else
  {

    v28 = 0;
  }

  v29 = sub_1000E2538();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_1000DC25C(v21, v19);
  v30 = qword_10011DC30;

  v31 = a2;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = qword_1001230F0;
  v33 = sub_1000DC458(&qword_100120020, type metadata accessor for ConduitActor);
  v34 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v33;
  *(v35 + 32) = v37;
  *(v35 + 40) = a4;
  *(v35 + 48) = v28;
  *(v35 + 56) = v31;
  sub_1000DC1AC(v19, v35 + v34);

  sub_1000223DC(0, 0, v10, &unk_1000F38E8, v35);

  return sub_1000DC3DC(v21);
}

uint64_t sub_1000DB2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 104) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = sub_1000E17E8();
  *(v8 + 48) = v9;
  v10 = *(v9 - 8);
  *(v8 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  *(v8 + 72) = qword_1001230F0;

  return _swift_task_switch(sub_1000DB3BC, v12, 0);
}

uint64_t sub_1000DB3BC()
{
  v24 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2668();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100029C70(v7, v6, &v23);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending updated policy for %s: %{BOOL}d", v8, 0x12u);
    sub_10000E9DC(v9);
  }

  v10 = *(v0 + 64);
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 24);
  v14 = *(v0 + 104);
  v15 = *(v0 + 16);
  v16 = *(*(v0 + 32) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  v17 = swift_task_alloc();
  *(v17 + 16) = v15;
  *(v17 + 24) = v13;
  *(v17 + 32) = v14;
  sub_1000DC458(&qword_10011EDA0, &type metadata accessor for NCProtoPolicyInfoUpdatedEvent);
  sub_1000E0E38();

  v18 = *(v12 + 8);
  v19 = *(v12 + 16);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_1001230E0;
  v20 = swift_task_alloc();
  *(v0 + 88) = v20;
  *v20 = v0;
  v20[1] = sub_1000DB688;
  v21 = *(v0 + 64);

  return sub_100028064(6, v21, v18, v19, 0);
}

uint64_t sub_1000DB688()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1000DB830;
  }

  else
  {
    v4 = sub_1000DB7B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DB7B0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DB830()
{
  v1 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return _swift_task_switch(sub_1000DB8A8, v1, 0);
}

uint64_t sub_1000DB8A8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1000DB90C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_10000ADE4(&qword_100120538, &qword_1000F38F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;

  sub_10000C9B0(inited);
  swift_setDeallocating();
  sub_1000033C8(inited + 32, &qword_100120540, &qword_1000F38F8);
  return sub_1000E17D8();
}

uint64_t sub_1000DB9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1000E17E8();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;
  v6[8] = qword_1001230F0;

  return _swift_task_switch(sub_1000DBAD8, v10, 0);
}

uint64_t sub_1000DBAD8()
{
  v26 = v0;
  v1 = v0[2];
  v2 = sub_1000DABD8();
  if (v2[2])
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v3 = sub_1000E1F08();
    sub_1000049D0(v3, qword_100123128);

    v4 = sub_1000E1EE8();
    v5 = sub_1000E2668();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136315138;
      v8 = sub_1000E22C8();
      v10 = sub_100029C70(v8, v9, &v25);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Sending policy infos: %s", v6, 0xCu);
      sub_10000E9DC(v7);
    }

    v11 = v0[7];
    v13 = v0[4];
    v12 = v0[5];
    v14 = *(v0[2] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
    *(swift_task_alloc() + 16) = v2;
    sub_1000DC458(&qword_10011EDA0, &type metadata accessor for NCProtoPolicyInfoUpdatedEvent);
    sub_1000E0E38();

    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v0[9] = qword_1001230E0;
    v15 = swift_task_alloc();
    v0[10] = v15;
    *v15 = v0;
    v15[1] = sub_1000DBEBC;
    v16 = v0[7];
    v17 = v0[3];

    return sub_100028064(6, v16, v17, v13, 0);
  }

  else
  {

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v19 = sub_1000E1F08();
    sub_1000049D0(v19, qword_100123128);
    v20 = sub_1000E1EE8();
    v21 = sub_1000E2658();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No policy info to send, skipping", v22, 2u);
    }

    v23 = v0[7];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1000DBEBC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1000DC060;
  }

  else
  {
    v4 = sub_1000DBFE4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000DBFE4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[7];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000DC060()
{
  v1 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_1000DC0D8, v1, 0);
}

uint64_t sub_1000DC0D8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1000DC13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DC210()
{
  result = qword_10011DF80;
  if (!qword_10011DF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011DF80);
  }

  return result;
}

uint64_t sub_1000DC25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC2C0(uint64_t a1)
{
  v4 = *(type metadata accessor for HandoffInfo(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002E7C;

  return sub_1000DB2BC(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1000DC3DC(uint64_t a1)
{
  v2 = type metadata accessor for HandoffInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DC458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DC4A0()
{
  v1 = *(v0 + 16);

  return sub_1000E17D8();
}

uint64_t sub_1000DC4D8()
{
  type metadata accessor for CallPublisher();
  swift_allocObject();
  result = sub_1000DC514();
  qword_1001231D8 = result;
  return result;
}

uint64_t sub_1000DC514()
{
  v1 = v0;
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - v4;
  swift_defaultActor_initialize();
  v14[1] = &_swiftEmptyArrayStorage;
  v6 = sub_10000ADE4(&qword_100120628, &qword_1000F39F0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 112) = sub_1000E2008();
  v9 = [objc_opt_self() sharedInstance];
  *(v0 + 120) = v9;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  v10 = [v9 callServicesClientCapabilities];
  [v10 setWantsToScreenCalls:1];

  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_100022960(0, 0, v5, &unk_1000F3A00, v12);

  return v1;
}

uint64_t sub_1000DC6E8()
{
  v1 = *(v0 + 16);
  sub_1000DC748();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DC748()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = TUCallCenterCallStatusChangedNotification;
  v4 = swift_allocObject();
  swift_weakInit();
  v37 = sub_100002108;
  v38 = v4;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100002014;
  v36 = &unk_100116EB0;
  v5 = _Block_copy(&v33);

  v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  v7 = v0[16];
  v0[16] = v6;
  swift_unknownObjectRelease();
  v8 = [v1 defaultCenter];
  v9 = TUCallCenterVideoCallStatusChangedNotification;
  v10 = swift_allocObject();
  swift_weakInit();
  v37 = sub_1000DD020;
  v38 = v10;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100002014;
  v36 = &unk_100116ED8;
  v11 = _Block_copy(&v33);

  v12 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);

  v13 = v0[17];
  v0[17] = v12;
  swift_unknownObjectRelease();
  v14 = [v1 defaultCenter];
  v15 = TUCallIsUplinkMutedChangedNotification;
  v16 = swift_allocObject();
  swift_weakInit();
  v37 = sub_1000DD058;
  v38 = v16;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100002014;
  v36 = &unk_100116F00;
  v17 = _Block_copy(&v33);

  v18 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v17];
  _Block_release(v17);

  v19 = v0[18];
  v0[18] = v18;
  swift_unknownObjectRelease();
  v20 = [v1 defaultCenter];
  v21 = TUCallIsSendingVideoChangedNotification;
  v22 = swift_allocObject();
  swift_weakInit();
  v37 = sub_1000DD090;
  v38 = v22;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100002014;
  v36 = &unk_100116F28;
  v23 = _Block_copy(&v33);

  v24 = [v20 addObserverForName:v21 object:0 queue:0 usingBlock:v23];
  _Block_release(v23);

  v25 = v0[19];
  v0[19] = v24;
  swift_unknownObjectRelease();
  v26 = [v1 defaultCenter];
  v27 = TUCallCenterIsScreeningChangedNotification;
  v28 = swift_allocObject();
  swift_weakInit();
  v37 = sub_1000DD0C8;
  v38 = v28;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100002014;
  v36 = &unk_100116F50;
  v29 = _Block_copy(&v33);

  v30 = [v26 addObserverForName:v27 object:0 queue:0 usingBlock:v29];
  _Block_release(v29);

  v31 = v0[20];
  v0[20] = v30;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000DCC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1000DCC40, 0, 0);
}

uint64_t sub_1000DCC40()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000DCD04, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1000DCD04()
{
  v1 = *(v0 + 56);
  sub_100002368();

  return _swift_task_switch(sub_1000DCD74, 0, 0);
}

uint64_t sub_1000DCD9C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  swift_unknownObjectRelease();
  v3 = *(v0 + 136);
  swift_unknownObjectRelease();
  v4 = *(v0 + 144);
  swift_unknownObjectRelease();
  v5 = *(v0 + 152);
  swift_unknownObjectRelease();
  v6 = *(v0 + 160);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000DCDF4()
{
  sub_1000DCD9C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000DCE20()
{
  if (qword_10011DCB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000DCE7C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(*v1 + 112);
  a1[3] = sub_10000ADE4(&qword_100120638, &qword_1000F3A60);
  a1[4] = sub_100002C64(&qword_100120640, &qword_100120638, &qword_1000F3A60);
  sub_100006FD8(a1);
  sub_10000ADE4(&qword_100120628, &qword_1000F39F0);
  sub_100002C64(&qword_100120648, &qword_100120628, &qword_1000F39F0);
  return sub_1000E20E8();
}

uint64_t sub_1000DCF6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000DC6C8(a1, v4, v5, v6);
}

uint64_t sub_1000DD100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000029E4(a1, v4, v5, v6);
}

uint64_t sub_1000DD1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000029E4(a1, v4, v5, v6);
}

uint64_t sub_1000DD268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_1000DCC20(a1, v4, v5, v6);
}

void sub_1000DD35C()
{
  sub_1000DD3D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HandoffInfo(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000DD3D0()
{
  if (!qword_1001206D0)
  {
    type metadata accessor for HandoffInfo(255);
    sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
    v0 = sub_1000E2568();
    if (!v1)
    {
      atomic_store(v0, &qword_1001206D0);
    }
  }
}

void sub_1000DD494()
{
  sub_1000E0D68();
  if (v0 <= 0x3F)
  {
    sub_1000DD570();
    if (v1 <= 0x3F)
    {
      sub_10000CAAC(319, &qword_10011F890, TUConversationMember_ptr);
      if (v2 <= 0x3F)
      {
        sub_1000DD5D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000DD570()
{
  if (!qword_100120768)
  {
    sub_10000AE90(&qword_100120770, &qword_1000F3A98);
    v0 = sub_1000E0F08();
    if (!v1)
    {
      atomic_store(v0, &qword_100120768);
    }
  }
}

void sub_1000DD5D4()
{
  if (!qword_100120778)
  {
    sub_10000CAAC(255, &unk_10011F930, TUHandle_ptr);
    sub_1000DD648();
    v0 = sub_1000E2638();
    if (!v1)
    {
      atomic_store(v0, &qword_100120778);
    }
  }
}

unint64_t sub_1000DD648()
{
  result = qword_10011EA60;
  if (!qword_10011EA60)
  {
    sub_10000CAAC(255, &unk_10011F930, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA60);
  }

  return result;
}

uint64_t sub_1000DD6C0()
{
  v1[3] = v0;
  v2 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = *(*(type metadata accessor for HandoffInfo(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = type metadata accessor for HandoffState(0);
  v1[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD7B8, 0, 0);
}

uint64_t sub_1000DD7B8()
{
  v1 = v0[6];
  sub_10001C538(v0[3], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[4];
    v5 = v0[5];
    sub_1000DC1AC(v3, v5);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    v8 = sub_1000E2538();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = qword_10011DC18;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = v0[4];
    v11 = qword_1001230E0;
    v12 = sub_1000DE028(&qword_1001201E0, type metadata accessor for ConduitDeviceActor);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v7;
    v13[5] = v6;

    v14 = sub_100022C50(0, 0, v10, &unk_1000F3BA8, v13);
    v0[8] = v14;
    v15 = async function pointer to Task<>.value.getter[1];
    v16 = swift_task_alloc();
    v0[9] = v16;
    v17 = sub_10000ADE4(&qword_10011EE08, &qword_1000F1260);
    *v16 = v0;
    v16[1] = sub_1000DDA3C;

    return Task<>.value.getter(v0 + 2, v14, v17);
  }

  else
  {
    sub_1000DDFC8(v3, type metadata accessor for HandoffState);
    v18 = v0[7];
    v19 = v0[4];
    v20 = v0[5];

    v21 = v0[1];

    return v21(0);
  }
}

uint64_t sub_1000DDA3C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1000DDB54, 0, 0);
}

uint64_t sub_1000DDB54()
{
  v1 = v0[2];
  sub_1000DDFC8(v0[5], type metadata accessor for HandoffInfo);
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1000DDBF4()
{
  if (*v0)
  {
    result = 0x616E7567616C2ELL;
  }

  else
  {
    result = 0x65736E617078652ELL;
  }

  *v0;
  return result;
}

unint64_t sub_1000DDC34()
{
  result = qword_1001207C0;
  if (!qword_1001207C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001207C0);
  }

  return result;
}

uint64_t sub_1000DDC88()
{
  v1 = v0;
  sub_1000E2A88(64);
  v6._object = 0x80000001000ECA90;
  v6._countAndFlagsBits = 0xD000000000000012;
  sub_1000E23A8(v6);
  if (*v0)
  {
    v2._countAndFlagsBits = 0x616E7567616C2ELL;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736E617078652ELL;
  }

  if (*v0)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v2._object = v3;
  sub_1000E23A8(v2);

  v7._object = 0x80000001000ECAB0;
  v7._countAndFlagsBits = 0xD000000000000012;
  sub_1000E23A8(v7);
  v4 = *(type metadata accessor for HandoffInfo(0) + 24);
  sub_1000E0D68();
  sub_1000DE028(&unk_100120190, &type metadata accessor for UUID);
  v8._countAndFlagsBits = sub_1000E2C18();
  sub_1000E23A8(v8);

  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x80000001000ECAD0;
  sub_1000E23A8(v9);
  sub_1000E23A8(*(v1 + 8));
  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  sub_1000E23A8(v10);
  return 0;
}

unint64_t sub_1000DDE18()
{
  v1 = v0;
  v2 = 0xD000000000000014;
  v3 = type metadata accessor for HandoffInfo(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandoffState(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C538(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000DC1AC(v10, v6);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1000E2A88(23);

    v12 = 0xD000000000000014;
    v13 = 0x80000001000ECA50;
    v14._countAndFlagsBits = sub_1000DDC88();
    sub_1000E23A8(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    sub_1000E23A8(v15);
    v2 = v12;
    sub_1000DDFC8(v6, type metadata accessor for HandoffInfo);
  }

  else
  {
    sub_1000DDFC8(v10, type metadata accessor for HandoffState);
  }

  return v2;
}

uint64_t sub_1000DDFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DE028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DE070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_1000DE10C, v6, 0);
}

uint64_t sub_1000DE10C()
{
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  if (sub_1000449DC(*(v0 + 24), *(v0 + 32), 0))
  {
    v1 = sub_100012CD8();
  }

  else
  {
    v1 = 0;
  }

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DE1D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002E7C;

  return sub_1000DE070(a1, v4, v5, v7, v6);
}

id sub_1000DE294()
{
  v1 = sub_1000E1668();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E16B8();
  v6 = [v0 identifier];
  sub_1000E2338();

  sub_1000E1678();
  v7 = [v0 localizedDisplayName];
  sub_1000E2338();

  sub_1000E1688();
  v8 = [v0 label];
  if (v8)
  {
    v9 = v8;
    sub_1000E2338();
  }

  sub_1000E16A8();
  result = [v0 type];
  if (result == 1)
  {
    v11 = &enum case for NCProtoContactHandleAnonym.AnonymType.phoneNumber(_:);
  }

  else
  {
    if (result != 2)
    {
      return result;
    }

    v11 = &enum case for NCProtoContactHandleAnonym.AnonymType.emailAddress(_:);
  }

  (*(v2 + 104))(v5, *v11, v1);
  return sub_1000E1698();
}

id sub_1000DE464(void *a1, void *a2)
{
  v4 = [a1 contactProperty];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 contact];
    [v6 mutableCopy];
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_1000DE92C();
    swift_dynamicCast();
    sub_10000ADE4(&qword_100120150, &qword_1000F3338);
    isa = sub_1000E2458().super.isa;
    [v15 setPhoneNumbers:isa];

    v8 = sub_1000E2458().super.isa;
    [v15 setEmailAddresses:v8];

    v9 = [v5 contact];
    v10 = [v9 identifier];

    if (!v10)
    {
      sub_1000E2338();
      v10 = sub_1000E2328();
    }

    v11 = [a1 actionType];
    v12 = [a1 bundleIdentifier];
    if (!v12)
    {
      sub_1000E2338();
      v12 = sub_1000E2328();
    }

    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContact:v15 contactIdentifier:v10 anonym:a2 actionType:v11 bundleIdentifier:v12];
  }

  else
  {

    return 0;
  }

  return v13;
}

uint64_t sub_1000DE6AC(uint64_t a1, void *a2)
{
  v3 = sub_1000E16C8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000E10C8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v12 = [a2 contact];
  sub_1000DE8D4();
  sub_1000E0E38();

  sub_1000E1578();
  v7 = [a2 contactIdentifier];
  sub_1000E2338();

  sub_1000E1598();
  v8 = [a2 anonym];
  sub_1000DE294();

  sub_1000E15A8();
  v9 = [a2 actionType];
  sub_1000E2338();

  sub_1000E1568();
  v10 = [a2 bundleIdentifier];
  sub_1000E2338();

  return sub_1000E1588();
}

unint64_t sub_1000DE8D4()
{
  result = qword_100120130;
  if (!qword_100120130)
  {
    sub_1000E10C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120130);
  }

  return result;
}

unint64_t sub_1000DE92C()
{
  result = qword_100120158;
  if (!qword_100120158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120158);
  }

  return result;
}

void sub_1000DE978(uint64_t a1)
{
  v48 = sub_1000E0D68();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1000E2968();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (!v6)
  {
    return;
  }

  v56 = _swiftEmptyArrayStorage;
  sub_10002A1A4(0, v6 & ~(v6 >> 63), 0);
  v7 = v56;
  if (v49)
  {
    v8 = sub_1000E2908();
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v8 = sub_1000E28D8();
    v9 = *(a1 + 36);
  }

  v53 = v8;
  v54 = v9;
  v55 = v49 != 0;
  if (v6 < 0)
  {
    goto LABEL_54;
  }

  v40 = v1;
  v11 = 0;
  v45 = (v3 + 8);
  v46 = a1;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v12 = a1;
  }

  v42 = a1 + 56;
  v43 = v12;
  v41 = a1 + 64;
  v44 = v6;
  while (v11 < v6)
  {
    if (__OFADD__(v11++, 1))
    {
      goto LABEL_50;
    }

    v15 = v53;
    v16 = v55;
    v50 = v54;
    sub_1000D4B28(v53, v54, v55, a1);
    v18 = v17;
    v51 = 91;
    v52 = 0xE100000000000000;
    v19 = [v17 UUID];
    v20 = v47;
    sub_1000E0D38();

    sub_1000E0A60(&unk_100120190, &type metadata accessor for UUID);
    v21 = v48;
    v57._countAndFlagsBits = sub_1000E2C18();
    sub_1000E23A8(v57);

    (*v45)(v20, v21);
    v58._countAndFlagsBits = 8250;
    v58._object = 0xE200000000000000;
    sub_1000E23A8(v58);
    v22 = [v18 state];
    if (v22 <= 1)
    {
      if (!v22)
      {
        v23._countAndFlagsBits = 0x676E697469615728;
        goto LABEL_27;
      }

      if (v22 != 1)
      {
        goto LABEL_26;
      }

      v23._countAndFlagsBits = 0x6972617065725028;
      v24 = 0xEB0000000029676ELL;
    }

    else
    {
      if (v22 == 2)
      {
        v23._countAndFlagsBits = 0x676E696E696F4A28;
        goto LABEL_27;
      }

      if (v22 != 3)
      {
        if (v22 == 4)
        {
          v23._countAndFlagsBits = 0x676E697661654C28;
        }

        else
        {
LABEL_26:
          v23._countAndFlagsBits = 0x6E776F6E6B6E5528;
        }

LABEL_27:
        v24 = 0xE900000000000029;
        goto LABEL_28;
      }

      v24 = 0xE800000000000000;
      v23._countAndFlagsBits = 0x2964656E696F4A28;
    }

LABEL_28:
    v23._object = v24;
    sub_1000E23A8(v23);

    v59._countAndFlagsBits = 93;
    v59._object = 0xE100000000000000;
    sub_1000E23A8(v59);

    v26 = v51;
    v25 = v52;
    v56 = v7;
    v28 = v7[2];
    v27 = v7[3];
    if (v28 >= v27 >> 1)
    {
      sub_10002A1A4((v27 > 1), v28 + 1, 1);
      v7 = v56;
    }

    v7[2] = v28 + 1;
    v29 = &v7[2 * v28];
    v29[4] = v26;
    v29[5] = v25;
    if (v49)
    {
      a1 = v46;
      if (!v16)
      {
        goto LABEL_55;
      }

      if (sub_1000E2928())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v6 = v44;
      sub_10000ADE4(&unk_1001200C0, &unk_1000F3C00);
      v13 = sub_1000E2618();
      sub_1000E29D8();
      v13(&v51, 0);
      if (v11 == v6)
      {
LABEL_47:
        sub_10000A848(v53, v54, v55);
        return;
      }
    }

    else
    {
      a1 = v46;
      if (v16)
      {
        goto LABEL_56;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v30 = 1 << *(v46 + 32);
      if (v15 >= v30)
      {
        goto LABEL_51;
      }

      v31 = v15 >> 6;
      v32 = *(v42 + 8 * (v15 >> 6));
      if (((v32 >> v15) & 1) == 0)
      {
        goto LABEL_52;
      }

      if (*(v46 + 36) != v50)
      {
        goto LABEL_53;
      }

      v33 = v32 & (-2 << (v15 & 0x3F));
      if (v33)
      {
        v30 = __clz(__rbit64(v33)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v6 = v44;
      }

      else
      {
        v34 = v31 << 6;
        v35 = v31 + 1;
        v36 = (v41 + 8 * v31);
        v6 = v44;
        while (v35 < (v30 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_10000A848(v15, v50, 0);
            v30 = __clz(__rbit64(v37)) + v34;
            goto LABEL_46;
          }
        }

        sub_10000A848(v15, v50, 0);
      }

LABEL_46:
      v39 = *(a1 + 36);
      v53 = v30;
      v54 = v39;
      v55 = 0;
      if (v11 == v6)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1000DEED4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
    sub_1000E09F8();
    sub_1000E2628();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_1000E29A8())
        {
          sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_10000A840();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_1000DF118(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000E2A98();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1000DF22C()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_1001207D0);
  sub_1000049D0(v0, qword_1001207D0);
  return sub_1000E1EF8();
}

id sub_1000DF2AC()
{
  result = [objc_allocWithZone(type metadata accessor for ConversationPublishers()) init];
  qword_1001231E0 = result;
  return result;
}

char *sub_1000DF2DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000E2128();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationJoinedSubject;
  v9 = sub_10000ADE4(&unk_100120840, &qword_1000F2430);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v0[v8] = sub_1000E1FD8();
  v12 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationLeftSubject;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *&v0[v12] = sub_1000E1FD8();
  if (_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
  {
    sub_1000E0090(_swiftEmptyArrayStorage, &qword_1001200B0, &qword_1000F32D0, qword_10011F0D0, TUConversation_ptr);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v16 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_activeConversationsSubject;
  v36 = v15;
  v17 = sub_10000ADE4(&qword_10011FAE0, &qword_1000F2720);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v0[v16] = sub_1000E2008();
  v20 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject;
  v36 = 0;
  v21 = sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *&v0[v20] = sub_1000E2008();
  v24 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationManager;
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 conversationManager];

  *&v1[v24] = v26;
  v35.receiver = v1;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, "init");
  v28 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationManager;
  v29 = *&v27[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationManager];
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v7, enum case for DispatchQoS.QoSClass.userInteractive(_:), v3);
  v30 = v27;
  v31 = v29;
  v32 = sub_1000E2758();
  (*(v4 + 8))(v7, v3);
  [v31 addDelegate:v30 queue:v32];

  [*&v27[v28] registerWithCompletionHandler:0];
  return v30;
}

void sub_1000DF6C0(void *a1)
{
  v2 = [a1 activeConversations];
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_1000E09F8();
  v3 = sub_1000E25E8();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_1000E2628();
    v5 = v35[1];
    v4 = v35[2];
    v6 = v35[3];
    v7 = v35[4];
    v8 = v35[5];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = (v3 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(v3 + 56));

    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_1000E29A8())
  {
    swift_dynamicCast();
    v1 = v35[0];
    v13 = v7;
    v14 = v8;
    if (v35[0])
    {
      while (1)
      {
        if ([v1 state] == 3)
        {
          LOBYTE(v12) = 0;
          goto LABEL_21;
        }

        v7 = v13;
        v8 = v14;
        if (v5 < 0)
        {
          goto LABEL_8;
        }

LABEL_11:
        v15 = v7;
        v16 = v8;
        v13 = v7;
        if (!v8)
        {
          break;
        }

LABEL_15:
        v14 = (v16 - 1) & v16;
        v1 = *(*(v5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v16)))));
        if (!v1)
        {
          goto LABEL_20;
        }
      }

      while (1)
      {
        v13 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
          goto LABEL_19;
        }

        v16 = v4[v13];
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
LABEL_19:
    v1 = 0;
  }

LABEL_20:
  LOBYTE(v12) = 1;
LABEL_21:
  sub_10000A840();
  if (qword_10011DCC0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v17 = sub_1000E1F08();
  sub_1000049D0(v17, qword_1001207D0);
  v18 = v1;

  v19 = sub_1000E1EE8();
  v20 = sub_1000E2698();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v21 = 136315394;
    sub_1000DE978(v3);
    v22 = v12;
    v23 = sub_1000E2478();
    v25 = v24;

    v26 = sub_100029C70(v23, v25, v35);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    if (v22)
    {
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      v29 = v18;
      v28 = sub_1000E2368();
      v27 = v30;
    }

    v31 = sub_100029C70(v28, v27, v35);

    *(v21 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "Conversations changed with active conversations: %s, joinedConversation: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v32 = *(v34 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_activeConversationsSubject);
  v35[0] = v3;
  sub_1000E1FE8();

  v33 = *(v34 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  v35[0] = v1;
  sub_1000E1FE8();
}

unint64_t sub_1000DFC4C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1000E2B68();
    if (result)
    {
LABEL_3:
      sub_10000ADE4(&qword_100120870, &unk_1000F3C10);
      result = sub_1000E2A58();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1000E2B68();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = sub_1000E2A98();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_1000E1F98();
    sub_1000E0A60(&qword_100120878, &type metadata accessor for AnyCancellable);
    result = sub_1000E22D8();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1000E0A60(&qword_100120880, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_1000E2318();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_1000DFEE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_100120298, &unk_1000F35D0);
    v3 = sub_1000E2A58();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1000E2D48();

      sub_1000E2398();
      result = sub_1000E2D68();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1000E2C68();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_1000E0090(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_1000E2B68();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_10000ADE4(a2, a3);
      v7 = sub_1000E2A58();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1000E2B68();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = sub_1000E2A98();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_1000E2808(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_10000CAAC(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = sub_1000E2818();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = sub_1000E2808(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_10000CAAC(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = sub_1000E2818();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1000E03C4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000E0D68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 state];
  v12 = [a2 state];
  if (qword_10011DCC0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E1F08();
  sub_1000049D0(v13, qword_1001207D0);
  v14 = a1;
  v15 = sub_1000E1EE8();
  v16 = sub_1000E2698();

  if (!os_log_type_enabled(v15, v16))
  {

    if (v11 != 3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v39 = v3;
  v17 = 0x676E697469615728;
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v40 = v19;
  *v18 = 136315650;
  v36 = v6;
  v37 = v19;
  v38 = v16;
  v20 = v7;
  if (v12 <= 1)
  {
    v21 = 0x676E697469615728;
    v22 = 0xE900000000000029;
    if (!v12)
    {
      goto LABEL_18;
    }

    if (v12 == 1)
    {
      v21 = 0x6972617065725028;
      v22 = 0xEB0000000029676ELL;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v12 == 2)
  {
    v21 = 0x676E696E696F4A28;
    goto LABEL_17;
  }

  if (v12 == 3)
  {
    v22 = 0xE800000000000000;
    v21 = 0x2964656E696F4A28;
    goto LABEL_18;
  }

  if (v12 != 4)
  {
LABEL_16:
    v21 = 0x6E776F6E6B6E5528;
    goto LABEL_17;
  }

  v21 = 0x676E697661654C28;
LABEL_17:
  v22 = 0xE900000000000029;
LABEL_18:
  v23 = sub_100029C70(v21, v22, &v40);

  *(v18 + 4) = v23;
  *(v18 + 12) = 2080;
  if (v11 <= 1)
  {
    v24 = v20;
    v26 = v36;
    v25 = 0xE900000000000029;
    if (!v11)
    {
      goto LABEL_29;
    }

    if (v11 == 1)
    {
      v17 = 0x6972617065725028;
      v25 = 0xEB0000000029676ELL;
      goto LABEL_29;
    }
  }

  else
  {
    v24 = v20;
    v25 = 0xE900000000000029;
    if (v11 == 2)
    {
      v17 = 0x676E696E696F4A28;
      v26 = v36;
      goto LABEL_29;
    }

    v26 = v36;
    if (v11 == 3)
    {
      v25 = 0xE800000000000000;
      v17 = 0x2964656E696F4A28;
      goto LABEL_29;
    }

    if (v11 == 4)
    {
      v17 = 0x676E697661654C28;
      goto LABEL_29;
    }
  }

  v17 = 0x6E776F6E6B6E5528;
LABEL_29:
  v27 = sub_100029C70(v17, v25, &v40);

  *(v18 + 14) = v27;
  *(v18 + 22) = 2080;
  v28 = [v14 UUID];
  sub_1000E0D38();

  sub_1000E0A60(&unk_100120190, &type metadata accessor for UUID);
  v29 = sub_1000E2C18();
  v31 = v30;
  (*(v24 + 8))(v10, v26);
  v32 = sub_100029C70(v29, v31, &v40);

  *(v18 + 24) = v32;
  _os_log_impl(&_mh_execute_header, v15, v38, "Conversation state changed from %s to %s for %s", v18, 0x20u);
  swift_arrayDestroy();

  v3 = v39;
  if (v11 != 3)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (v12 != 3)
  {
    v33 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationJoinedSubject;
LABEL_36:
    v34 = *(v3 + v33);
    v40 = v14;
    sub_1000E1FC8();
    return;
  }

LABEL_32:
  if ((v12 == 3 || v12 == 2) && (v11 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v33 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationLeftSubject;
    goto LABEL_36;
  }
}

uint64_t sub_1000E08A4(void *a1)
{
  v2 = v1;
  if (qword_10011DCC0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E1F08();
  sub_1000049D0(v4, qword_1001207D0);
  v5 = a1;
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removed active conversation %@.", v8, 0xCu);
    sub_1000222AC(v9);
  }

  v11 = *(v2 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationLeftSubject);
  return sub_1000E1FC8();
}

unint64_t sub_1000E09F8()
{
  result = qword_10011FA90;
  if (!qword_10011FA90)
  {
    sub_10000CAAC(255, qword_10011F0D0, TUConversation_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FA90);
  }

  return result;
}

uint64_t sub_1000E0A60(unint64_t *a1, void (*a2)(uint64_t))
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