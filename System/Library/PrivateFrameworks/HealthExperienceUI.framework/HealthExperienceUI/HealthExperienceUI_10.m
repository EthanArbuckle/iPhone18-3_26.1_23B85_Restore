uint64_t sub_1BA0227B0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1BA4A7D08();

    if (v5)
    {
      v6 = sub_1BA022938();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_1BA4A27B8();
  v9 = sub_1BA4A7788();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_1BA4A7798();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BA0E5134();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1BA023218(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1BA022938()
{
  v1 = v0;

  v2 = sub_1BA4A7CC8();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1BA0E33D0(v3, v2);
  v13 = v4;

  v5 = sub_1BA4A7788();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1BA4A27B8();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_1BA4A7798();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1BA023218(v7);
  result = sub_1BA4A7798();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA022A90(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BA4A7C58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1BA4A8488();

        sub_1BA4A68C8();
        v10 = sub_1BA4A84D8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1BA022C54(unint64_t a1)
{
  v21 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_1BA4A7C58();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = (v11 + 1) & v10;
      v13 = *(v3 + 72);
      v22 = v7;
      while (1)
      {
        v14 = v13 * v9;
        sub_1BA025290(*(v6 + 48) + v13 * v9, v5);
        sub_1BA4A8488();
        if (*(v5 + 8))
        {
          v23 = v13 * v9;
          sub_1BA4A84A8();
          v14 = v23;
          sub_1BA4A68C8();
        }

        else
        {
          sub_1BA4A84A8();
        }

        v15 = sub_1BA4A84D8();
        sub_1BA0252F4(v5);
        v16 = v15 & v10;
        if (a1 >= v12)
        {
          break;
        }

        if (v16 < v12)
        {
          goto LABEL_14;
        }

LABEL_15:
        v17 = v13 * a1;
        if ((v13 * a1) < v14 || *(v6 + 48) + v13 * a1 >= *(v6 + 48) + v14 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v9;
          if (v17 == v14)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v9;
LABEL_6:
        v9 = (v9 + 1) & v10;
        v7 = v22;
        if (((*(v22 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v16 < v12)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v16)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v6 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v20;
    ++*(v6 + 36);
  }
}

void sub_1BA022F1C(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_1BA4A7C58();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_1B9F51E1C(v40, v41);
        v24 = sub_1BA4A6698();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

unint64_t sub_1BA023218(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BA4A7C58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1BA4A7788();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1BA0233B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1BA023510(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;

        goto LABEL_23;
      }

      v11 += 2;
      v20 = v18;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1BA023688(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = a4 + 7;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[7];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[6];
      v25 = *(v31 + 72);
      sub_1BA025290(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_1BA025350(v10, v13);
      sub_1BA025350(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1BA0238B0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1BA023A08(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      sub_1B9FDC70C(*(a4 + 48) + 40 * v18, &v26);
      sub_1B9F0AD9C(*(a4 + 56) + 32 * v18, &v28 + 8);
      v19 = v30;
      v35 = v30;
      v20 = v29;
      v33 = v28;
      v34 = v29;
      v21 = v26;
      v22 = v27;
      v31 = v26;
      v32 = v27;
      *(v11 + 32) = v28;
      *(v11 + 48) = v20;
      *(v11 + 64) = v19;
      *v11 = v21;
      *(v11 + 16) = v22;
      if (v14 == v10)
      {
        goto LABEL_23;
      }

      v11 += 72;
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
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1BA023BD4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1BA023E7C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1BA024000(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_1BA4A7C88();
  sub_1B9F0ADF8(0, &qword_1EDC6E920);
  sub_1B9F15C34(&qword_1EDC5E578, &qword_1EDC6E920);
  result = sub_1BA4A6DA8();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1BA4A7CF8())
      {
        goto LABEL_30;
      }

      sub_1B9F0ADF8(0, &qword_1EDC6E920);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_1BA024240()
{
  v1 = qword_1EDC84AD8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA024284(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B9F51E1C(&qword_1EBBEA668, type metadata accessor for SummarySharingSelectableDataTypeItem);
  result = MEMORY[0x1BFAF17D0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1BA025290(v12, v5);
      sub_1BA0E1D8C(v8, v5);
      sub_1BA0252F4(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1BA0243EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BA0251E0();
  result = MEMORY[0x1BFAF17D0](v2, &type metadata for SummarySharingSelectionSuggestedCategory, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1BA0E1FA4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1BA024460(uint64_t a1)
{
  v2 = sub_1BA4A3A28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B9F51E1C(&qword_1EBBEA610, MEMORY[0x1E69A3910]);
  result = MEMORY[0x1BFAF17D0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1BA0E2238(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BA0245FC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    v4 = sub_1B9F0ADF8(0, &qword_1EDC6E920);
    v5 = sub_1B9F15C34(&qword_1EDC5E578, &qword_1EDC6E920);
    result = MEMORY[0x1BFAF17D0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFAF2860](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1BA0E2518(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1BA4A7CC8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BA024754(uint64_t a1)
{
  v2 = sub_1BA4A1E88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B9F51E1C(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
  result = MEMORY[0x1BFAF17D0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1BA0E27A8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BA0248F0(uint64_t a1)
{
  v2 = sub_1BA4A15D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B9F51E1C(&qword_1EDC6E278, MEMORY[0x1E6968FB0]);
  result = MEMORY[0x1BFAF17D0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1BA0E2D18(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BA024A8C(uint64_t a1)
{
  v2 = sub_1BA4A3B48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B9F51E1C(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18]);
  result = MEMORY[0x1BFAF17D0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1BA0E2FF8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BA024C28(uint64_t a1)
{
  v3 = qword_1EDC84AD8;
  swift_beginAccess();
  v4 = [*(v1 + v3) fetchRequest];
  [v4 setPredicate_];

  sub_1B9F30A48();
  return sub_1B9F13370();
}

uint64_t sub_1BA024CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  nullsub_1(a3, *(v3 + 16));
}

uint64_t sub_1BA024CDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

unint64_t sub_1BA024D28()
{
  result = qword_1EDC5E2A0;
  if (!qword_1EDC5E2A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC5E2A0);
  }

  return result;
}

unint64_t sub_1BA0251E0()
{
  result = qword_1EBBEA5F8;
  if (!qword_1EBBEA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA5F8);
  }

  return result;
}

void sub_1BA025234(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1BA0254C4(255, a3);
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA025290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0252F4(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA025350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA0253B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA025410()
{
  if (!qword_1EBBEA630)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0);
    sub_1B9F25C90(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEA630);
    }
  }
}

void sub_1BA0254C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

id sub_1BA025528()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController____lazy_storage___previewSummariesLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController____lazy_storage___previewSummariesLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController____lazy_storage___previewSummariesLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAdjustsFontForContentSizeCategory_];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
    v6 = [objc_opt_self() configurationWithFont_];

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v7 = sub_1BA4A1318();
    v9 = v8;
    v10 = sub_1BA4A6758();
    v11 = [objc_opt_self() systemImageNamed_];

    if (v11)
    {
      v12 = [v11 imageWithConfiguration_];
    }

    else
    {
      v12 = 0;
    }

    v13 = [objc_opt_self() systemWhiteColor];
    v14 = sub_1BA0BA314(v7, v9, v13, v12, 0);

    [v4 setAttributedText_];
    v15 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void sub_1BA0259AC()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PreviewSharedProfileOverviewViewController();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_hasConfiguredGradientView;
  if ((v0[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_hasConfiguredGradientView] & 1) == 0)
  {
    sub_1BA179754();
    v0[v1] = 1;
  }

  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  [v2 contentOffset];
  v5 = v4;

  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;

  v11 = [v0 view];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v5 > 0.0)
  {
    v13 = -v5;
  }

  else
  {
    v13 = -0.0;
  }

  [v11 bounds];
  v15 = v14;

  [v6 setFrame_];
}

void sub_1BA025B64()
{
  v1 = [v0 navigationItem];
  v2 = sub_1BA025528();
  [v1 setTitleView_];

  v3 = [v0 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    v6 = [objc_opt_self() systemWhiteColor];
    [v5 setTintColor_];
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemBlueColor];
  [v9 setBackgroundColor_];

  sub_1BA026230();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v12 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v13 = v12;
  v14 = [v8 systemWhiteColor];
  *(inited + 64) = sub_1B9F0F360();
  *(inited + 40) = v14;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1BA026288(inited + 32);
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v15 = sub_1BA4A6618();

  [v9 setTitleTextAttributes_];

  v16 = [v0 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 navigationBar];

    [v18 setStandardAppearance_];
  }

  v19 = [v0 navigationController];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 navigationBar];

    [v21 setScrollEdgeAppearance_];
  }

  v22 = [v0 navigationItem];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v0 action:sel_closeButtonTapped_];
  [v22 setLeftBarButtonItem_];

  v24 = [v0 navigationItem];
  v25 = sub_1B9F11914();
  [v24 setRightBarButtonItem_];
}

void sub_1BA025FA8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController____lazy_storage___previewSummariesLabel);
}

id sub_1BA026008()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewSharedProfileOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BA0260CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA02614C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1BA026230()
{
  if (!qword_1EDC5DBB0)
  {
    sub_1B9FE9628();
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DBB0);
    }
  }
}

uint64_t sub_1BA026288(uint64_t a1)
{
  sub_1B9FE9628();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA0262E4()
{
  result = qword_1EDC5E3D0;
  if (!qword_1EDC5E3D0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E3D0);
  }

  return result;
}

void sub_1BA02633C()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_providedPresentation) = 9;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_hasConfiguredGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController____lazy_storage___previewSummariesLabel) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void __swiftcall CameraScannerOverlayMode.createView()(UIView *__return_ptr retstr)
{
  if (*(v1 + 8))
  {
    v2 = [objc_opt_self() effectWithStyle_];
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    v4 = *v1;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [objc_opt_self() blackColor];
    v7 = [v6 colorWithAlphaComponent_];

    [v5 setBackgroundColor_];
  }
}

uint64_t getEnumTagSinglePayload for CameraScannerOverlayMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraScannerOverlayMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BA02657C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA026598(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1BA026640(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA026C60();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA0266B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA026708(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA026C60();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA026774(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0267D8;
}

void sub_1BA0267D8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA026C60();
  }
}

id sub_1BA02680C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___pinImage;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___pinImage);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [objc_opt_self() configurationWithScale_];
    v5 = sub_1BA4A6758();
    v3 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_1B9F49114(v6);
  }

  sub_1BA028194(v2);
  return v3;
}

id sub_1BA0268EC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___unpinImage;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___unpinImage);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [objc_opt_self() configurationWithScale_];
    v5 = sub_1BA4A6758();
    v3 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_1B9F49114(v6);
  }

  sub_1BA028194(v2);
  return v3;
}

id AddToFavoritesTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id AddToFavoritesTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___pinImage] = 1;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___unpinImage] = 1;
  if (a3)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AddToFavoritesTableViewCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, 1, v5);

  return v6;
}

void sub_1BA026C60()
{
  v1 = v0;
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FEB468(v32);
  v6 = v33;
  v7 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v8 = (*(v7 + 48))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v32);
  if (v8)
  {
    v9 = sub_1BA02680C();
  }

  else
  {
    v9 = sub_1BA0268EC();
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v1 setAccessoryView_];

  v12 = [v1 accessoryView];
  if (v12)
  {
    v13 = v12;
    sub_1B9FEB468(v32);
    v14 = v33;
    v15 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v16 = (*(v15 + 48))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v17 = objc_opt_self();
    v18 = &selRef_tertiaryLabelColor;
    if ((v16 & 1) == 0)
    {
      v18 = &selRef_systemYellowColor;
    }

    v19 = [v17 *v18];
    [v13 setTintColor_];
  }

  sub_1BA4A43A8();
  v20 = [objc_opt_self() sharedBehavior];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 features];

    if (v22)
    {
      v23 = [v22 isPinnedInBrowse];

      if (v23)
      {
        sub_1B9FEB468(v32);
        v24 = v33;
        v25 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v26 = (*(v25 + 48))(v24, v25);
        __swift_destroy_boxed_opaque_existential_1(v32);
        if (v26)
        {
          if (qword_1EDC5E100 == -1)
          {
            goto LABEL_20;
          }
        }

        else if (qword_1EDC5E100 == -1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1B9FEB468(v32);
        v27 = v33;
        v28 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v29 = (*(v28 + 48))(v27, v28);
        __swift_destroy_boxed_opaque_existential_1(v32);
        if (v29)
        {
          if (qword_1EDC5E100 == -1)
          {
            goto LABEL_20;
          }
        }

        else if (qword_1EDC5E100 == -1)
        {
LABEL_20:
          sub_1BA4A1318();
          sub_1BA4A43B8();
          v33 = v2;
          v34 = MEMORY[0x1E69DC110];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
          (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
          MEMORY[0x1BFAF1B80](v32);

          (*(v3 + 8))(v5, v2);
          return;
        }
      }

      swift_once();
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id AddToFavoritesTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToFavoritesTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0272AC()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FEB274(v39);
  v5 = v40;
  v6 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v7 = (*(v6 + 48))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1BA4A3DD8();
  v8 = v0;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = v1;
    v12 = v11;
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v12 = 136446979;
    *(v12 + 4) = sub_1B9F0B82C(0xD00000000000001BLL, 0x80000001BA4E4740, v38);
    *(v12 + 12) = 2080;
    sub_1B9FEB274(v39);
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v13 = sub_1BA4A2D58();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v16 = sub_1B9F0B82C(v13, v15, v38);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    sub_1B9FEB274(v39);
    v18 = v40;
    v17 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v19 = (*(v17 + 24))(v18, v17);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v22 = sub_1B9F0B82C(v19, v21, v38);

    *(v12 + 24) = v22;
    *(v12 + 32) = 2081;
    if (v7)
    {
      v23 = 0x65736C6166;
    }

    else
    {
      v23 = 1702195828;
    }

    if (v7)
    {
      v24 = 0xE500000000000000;
    }

    else
    {
      v24 = 0xE400000000000000;
    }

    v25 = sub_1B9F0B82C(v23, v24, v38);

    *(v12 + 34) = v25;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s] User tapped on %s, in domain %s, changing isFavorite to: %{private}s", v12, 0x2Au);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    (*(v2 + 8))(v4, v34);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_1B9FEB274(v39);
  v27 = v40;
  v28 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v28 + 32))(v38, v27, v28);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_1B9FEB274(v35);
  v29 = v36;
  v30 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v30 + 16))(v29, v30);
  if (v7)
  {
    sub_1BA4A2378();
  }

  else
  {
    sub_1BA4A2348();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1BA02775C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FEB280(v39);
  v5 = v40;
  v6 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v7 = (*(v6 + 48))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1BA4A3DD8();
  v8 = v0;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = v1;
    v12 = v11;
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v12 = 136446979;
    *(v12 + 4) = sub_1B9F0B82C(0xD00000000000001FLL, 0x80000001BA4E4720, v38);
    *(v12 + 12) = 2080;
    sub_1B9FEB280(v39);
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v13 = sub_1BA4A2D58();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v16 = sub_1B9F0B82C(v13, v15, v38);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    sub_1B9FEB280(v39);
    v18 = v40;
    v17 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v19 = (*(v17 + 24))(v18, v17);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v22 = sub_1B9F0B82C(v19, v21, v38);

    *(v12 + 24) = v22;
    *(v12 + 32) = 2081;
    if (v7)
    {
      v23 = 0x65736C6166;
    }

    else
    {
      v23 = 1702195828;
    }

    if (v7)
    {
      v24 = 0xE500000000000000;
    }

    else
    {
      v24 = 0xE400000000000000;
    }

    v25 = sub_1B9F0B82C(v23, v24, v38);

    *(v12 + 34) = v25;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s] User tapped on %s, in domain %s, changing isFavorite to: %{private}s", v12, 0x2Au);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    (*(v2 + 8))(v4, v34);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_1B9FEB280(v39);
  v27 = v40;
  v28 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v28 + 32))(v38, v27, v28);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_1B9FEB280(v35);
  v29 = v36;
  v30 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v30 + 16))(v29, v30);
  if (v7)
  {
    sub_1BA4A2378();
  }

  else
  {
    sub_1BA4A2348();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t _s18HealthExperienceUI27AddToFavoritesTableViewCellC17indexPathSelectedyy10Foundation05IndexK0VF_0()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FEB468(v39);
  v5 = v40;
  v6 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v7 = (*(v6 + 48))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1BA4A3DD8();
  v8 = v0;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = v1;
    v12 = v11;
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v12 = 136446979;
    *(v12 + 4) = sub_1B9F0B82C(0xD00000000000001BLL, 0x80000001BA4B7E50, v38);
    *(v12 + 12) = 2080;
    sub_1B9FEB468(v39);
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v13 = sub_1BA4A2D58();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v16 = sub_1B9F0B82C(v13, v15, v38);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    sub_1B9FEB468(v39);
    v18 = v40;
    v17 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v19 = (*(v17 + 24))(v18, v17);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v22 = sub_1B9F0B82C(v19, v21, v38);

    *(v12 + 24) = v22;
    *(v12 + 32) = 2081;
    if (v7)
    {
      v23 = 0x65736C6166;
    }

    else
    {
      v23 = 1702195828;
    }

    if (v7)
    {
      v24 = 0xE500000000000000;
    }

    else
    {
      v24 = 0xE400000000000000;
    }

    v25 = sub_1B9F0B82C(v23, v24, v38);

    *(v12 + 34) = v25;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s] User tapped on %s, in domain %s, changing isFavorite to: %{private}s", v12, 0x2Au);
    v26 = v33;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    (*(v2 + 8))(v4, v34);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_1B9FEB468(v39);
  v27 = v40;
  v28 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v28 + 32))(v38, v27, v28);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_1B9FEB468(v35);
  v29 = v36;
  v30 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v30 + 16))(v29, v30);
  if (v7)
  {
    sub_1BA4A2378();
  }

  else
  {
    sub_1BA4A2348();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

id sub_1BA028194(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

HealthExperienceUI::SummarySegment_optional __swiftcall SummarySegment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = HealthExperienceUI_SummarySegment_healthRecords;
  }

  else
  {
    v1.value = HealthExperienceUI_SummarySegment_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1BA0281D0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t SectionContext.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionContext(0) + 20);
  v4 = sub_1BA4A1998();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionContext.indexPath.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionContext(0) + 20);
  v4 = sub_1BA4A1998();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionContext.init(numberOfItems:indexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SectionContext(0) + 20);
  v6 = sub_1BA4A1998();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static SectionContext.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for SectionContext(0);

  return sub_1BA4A1908();
}

uint64_t sub_1BA028474(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1BA4A1908();
  }

  else
  {
    return 0;
  }
}

uint64_t BasicFeedItemViewControllerContext.userData.getter()
{
  v1 = *v0;
  sub_1B9F6AD84(*v0, *(v0 + 8));
  return v1;
}

uint64_t BasicFeedItemViewControllerContext.userData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F6AC8C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t BasicFeedItemViewControllerContext.actionHandlerUserData.getter()
{
  v1 = *(v0 + 16);
  sub_1B9F6AD84(v1, *(v0 + 24));
  return v1;
}

uint64_t BasicFeedItemViewControllerContext.actionHandlerUserData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F6AC8C(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t BasicFeedItemViewControllerContext.uniqueIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t BasicFeedItemViewControllerContext.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t BasicFeedItemViewControllerContext.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BasicFeedItemViewControllerContext(0) + 40);
  v4 = sub_1BA4A1C68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BasicFeedItemViewControllerContext.contentKind.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BasicFeedItemViewControllerContext(0) + 40);
  v4 = sub_1BA4A1C68();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BasicFeedItemViewControllerContext.relevantDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BasicFeedItemViewControllerContext(0) + 44);

  return sub_1BA02882C(v3, a1);
}

uint64_t sub_1BA02882C(uint64_t a1, uint64_t a2)
{
  sub_1B9F6AC38(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BasicFeedItemViewControllerContext.relevantDateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BasicFeedItemViewControllerContext(0) + 44);

  return sub_1B9F6ACA0(a1, v3);
}

uint64_t BasicFeedItemViewControllerContext.baseAutomationIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BasicFeedItemViewControllerContext(0) + 48));

  return v1;
}

uint64_t BasicFeedItemViewControllerContext.baseAutomationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BasicFeedItemViewControllerContext(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void BasicFeedItemViewControllerContext.init(healthStore:pinnedContentManager:feedItem:for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a2;
  sub_1B9F6AC38(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  HIDWORD(v44) = *a4;
  *a5 = xmmword_1BA4B7EA0;
  *(a5 + 16) = xmmword_1BA4B7EA0;
  v12 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  v13 = v12[11];
  v14 = sub_1BA4A22F8();
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = (a5 + v12[13]);
  *v15 = 0;
  v15[1] = 0;
  v16 = [a3 userData];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BA4A1608();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*a5, *(a5 + 8));
  *a5 = v18;
  *(a5 + 8) = v20;
  v21 = [a3 actionHandlerUserData];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BA4A1608();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*(a5 + 16), *(a5 + 24));
  *(a5 + 16) = v23;
  *(a5 + 24) = v25;
  *(a5 + 32) = a1;
  v26 = v45;
  sub_1B9F0A534(v45, a5 + 48);
  v27 = [a3 uniqueIdentifier];
  v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v30 = v29;

  *(a5 + 88) = v28;
  *(a5 + 96) = v30;
  sub_1BA4A26B8();
  sub_1BA4A2788();
  sub_1B9F6ACA0(v11, a5 + v13);
  *(a5 + 40) = BYTE4(v44);
  v31 = [a3 baseAutomationIdentifier];
  if (v31)
  {
    v32 = v31;
    v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = (a5 + v12[12]);
  *v36 = v33;
  v36[1] = v35;
  if (FeedItem.pluginInfo.getter())
  {
    v37 = sub_1BA4A3AD8();

    v38 = [a3 actionHandlerClassName];
    if (v38)
    {
      v39 = v38;
      v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v42 = v41;

      __swift_destroy_boxed_opaque_existential_1(v26);
      v43 = swift_allocObject();
      *(v43 + 2) = v37;
      *(v43 + 3) = v40;
      *(v43 + 4) = v42;
      *v15 = sub_1BA028D88;
      v15[1] = v43;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }
}

uint64_t sub_1BA028D28(void *a1)
{
  v2 = sub_1BA4A6758();
  v3 = [a1 classNamed_];

  if (v3)
  {
    return swift_getObjCClassMetadata();
  }

  else
  {
    return 0;
  }
}

uint64_t BasicFeedItemViewControllerContext.init(healthStore:pinnedContentManager:pluginFeedItem:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a2;
  sub_1B9F6AC38(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v32 = *a4;
  *a5 = xmmword_1BA4B7EA0;
  *(a5 + 16) = xmmword_1BA4B7EA0;
  v12 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  v13 = v12[11];
  v14 = sub_1BA4A22F8();
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = (a5 + v12[12]);
  v16 = (a5 + v12[13]);
  *v16 = 0;
  v16[1] = 0;
  v17 = sub_1BA4A1F28();
  v19 = v18;
  sub_1B9F6AC8C(*a5, *(a5 + 8));
  *a5 = v17;
  *(a5 + 8) = v19;
  v20 = sub_1BA4A1E68();
  v22 = v21;
  sub_1B9F6AC8C(*(a5 + 16), *(a5 + 24));
  *(a5 + 16) = v20;
  *(a5 + 24) = v22;
  *(a5 + 32) = a1;
  v23 = v31;
  sub_1B9F0A534(v31, a5 + 48);
  *(a5 + 88) = sub_1BA4A1E38();
  *(a5 + 96) = v24;
  sub_1BA4A1DC8();
  sub_1BA4A1E58();
  sub_1B9F6ACA0(v11, a5 + v13);
  *(a5 + 40) = v32;
  *v15 = sub_1BA4A1EC8();
  v15[1] = v25;
  v26 = sub_1BA4A1EA8();
  v28 = v27;
  v29 = sub_1BA4A1F38();
  (*(*(v29 - 8) + 8))(a3, v29);
  result = __swift_destroy_boxed_opaque_existential_1(v23);
  if (v28)
  {
    result = swift_allocObject();
    *(result + 16) = v26;
    *(result + 24) = v28;
    *v16 = sub_1BA028FF8;
    v16[1] = result;
  }

  return result;
}

uint64_t sub_1BA028FB4()
{
  v0 = sub_1BA4A6758();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    return swift_getObjCClassMetadata();
  }

  else
  {
    return 0;
  }
}

uint64_t BasicFeedItemViewControllerContext.makeActionHandler(actionContext:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for BasicFeedItemViewControllerContext(0) + 52));
  if (!*v3)
  {
    return 0;
  }

  result = (*v3)();
  if (result)
  {
    type metadata accessor for AnyPlatformFeedItemViewActionHandler();
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v5 = result;
      sub_1BA02909C(a1, v6);
      return (*(v5 + 88))(v6);
    }
  }

  return result;
}

unint64_t sub_1BA0290FC()
{
  result = qword_1EBBEA6F8;
  if (!qword_1EBBEA6F8)
  {
    sub_1B9F6AB84(255, &qword_1EBBEA700, &type metadata for SummarySegment, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA6F8);
  }

  return result;
}

unint64_t sub_1BA02917C()
{
  result = qword_1EBBEA708;
  if (!qword_1EBBEA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA708);
  }

  return result;
}

uint64_t sub_1BA0291D0()
{
  v1 = *(v0 + 16);
  sub_1B9F6AD84(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1BA029210()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_1BA029240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1BA4A1C68();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BA0292C4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t sub_1BA0292FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 52));
  if (!*v3)
  {
    return 0;
  }

  result = (*v3)();
  if (result)
  {
    type metadata accessor for AnyPlatformFeedItemViewActionHandler();
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v6 = result;
      sub_1BA02909C(a1, v7);
      return (*(v6 + 88))(v7);
    }
  }

  return result;
}

void *SuggestedAction.fetchRequest.getter()
{
  sub_1BA4A27B8();
  v0 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F2EAC0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5460;
  v2 = sub_1BA4A2798();
  v4 = v3;
  v5 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1B9F1BE20();
  *(v1 + 64) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v7 = sub_1BA4A2A08();
  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;
  v9 = sub_1BA4A6EE8();
  [v0 setPredicate_];

  sub_1B9F109F8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5470;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithKey:v12 ascending:1];

  *(v10 + 32) = v13;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v14 = sub_1BA4A6AE8();

  [v0 setSortDescriptors_];

  [v0 setFetchLimit_];
  return v0;
}

uint64_t sub_1BA0296C4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA029730(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

char *sub_1BA0297D0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___dataSource);
  }

  else
  {
    v4 = v0;
    v5 = SuggestedAction.fetchRequest.getter();
    UIViewController.resolvedHealthExperienceStore.getter(v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v6 = sub_1BA4A1B68();
    v7 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v5 managedObjectContext:v6 sectionNameKeyPath:0 cacheName:0];

    __swift_destroy_boxed_opaque_existential_1(v13);
    v8 = objc_allocWithZone(type metadata accessor for FeedItemSuggestedActionDataSource());
    v9 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v7);
    v10 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA0298D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___layout;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___layout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___layout);
  }

  else
  {
    v4 = sub_1BA029938();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA029938()
{
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D458;
  v14[5] = *&qword_1EDC6D468;
  v14[6] = xmmword_1EDC6D478;
  v14[7] = xmmword_1EDC6D488;
  v14[0] = xmmword_1EDC6D418;
  v14[1] = *&qword_1EDC6D428;
  v14[2] = xmmword_1EDC6D438;
  v14[3] = xmmword_1EDC6D448;
  v13 = qword_1EDC6D428;
  v12 = xmmword_1EDC6D418;
  v0 = unk_1EDC6D430;
  v2 = xmmword_1EDC6D438;
  v1 = xmmword_1EDC6D448;
  v11 = qword_1EDC6D470;
  v9 = *(&xmmword_1EDC6D448 + 8);
  v10 = *(&xmmword_1EDC6D458 + 8);
  v8 = *(&xmmword_1EDC6D488 + 1);
  v7 = *(&xmmword_1EDC6D478 + 8);
  sub_1B9F1D9A4(v14, &v18);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  v15 = v12;
  *&v16[40] = v9;
  memset(&v16[8], 0, 32);
  *&v16[56] = v10;
  *v16 = v13;
  *&v16[72] = v11;
  *v17 = 0x4034000000000000;
  *&v17[24] = v8;
  *&v17[8] = v7;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  *&v19[48] = *&v16[48];
  *&v19[64] = *&v16[64];
  *v20 = *v17;
  *&v20[16] = *&v17[16];
  v18 = v15;
  *v19 = *v16;
  *&v19[16] = *&v16[16];
  *&v19[32] = *&v16[32];
  sub_1B9F1D9A4(&v15, &v6);
  v3 = sub_1B9F293A8(&v18);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC808]) initWithSection_];

  v18 = v12;
  memset(&v19[8], 0, 32);
  *&v19[40] = v9;
  *&v19[56] = v10;
  *v19 = v13;
  *&v19[72] = v11;
  *v20 = 0x4034000000000000;
  *&v20[24] = v8;
  *&v20[8] = v7;
  sub_1B9F1DA58(&v18);
  return v4;
}

id FeedItemSuggestedActionViewController.init(_:pinnedContentManager:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_dataSourceAdaptor] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___dataSource] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___layout] = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedAction;
  v6 = sub_1BA4A2A28();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  sub_1B9F0A534(a2, &v2[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_pinnedContentManager]);
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v11.receiver = v2;
  v11.super_class = type metadata accessor for FeedItemSuggestedActionViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCollectionViewLayout_, v8);

  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t type metadata accessor for FeedItemSuggestedActionViewController()
{
  result = qword_1EBBEA728;
  if (!qword_1EBBEA728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FeedItemSuggestedActionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void FeedItemSuggestedActionViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_dataSourceAdaptor) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___layout) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA02A054()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (!v4)
    {
LABEL_6:
      v8.receiver = v1;
      v8.super_class = type metadata accessor for FeedItemSuggestedActionViewController();
      objc_msgSendSuper2(&v8, sel_viewWillLayoutSubviews);
      return;
    }

    v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_dataSourceAdaptor];
    if (v5)
    {
      v6 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
      swift_beginAccess();
      if ((*(v5 + v6) & 1) == 0)
      {
        v7 = *(*v5 + 272);

        v7(0);
      }

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BA02A1AC()
{
  v1 = v0;
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  sub_1B9F23D88();
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E38(v4, v5);

  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E38(v6, v7);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  sub_1B9F43994();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F3A13C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = sub_1BA0298D8();
  [v10 setCollectionViewLayout:v11 animated:0];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  [result setPreservesSuperviewLayoutMargins_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = result;
  [result setAlwaysBounceVertical_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = result;
  v15 = [objc_opt_self() systemGroupedBackgroundColor];
  [v14 setBackgroundColor_];

  result = [v1 collectionView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = type metadata accessor for DiffableCollectionViewAdaptor(0);
  v18 = sub_1BA0297D0();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_dataSourceAdaptor] = sub_1BA164FC8(v16, v18, 1, v17);
}

id FeedItemSuggestedActionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id FeedItemSuggestedActionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FeedItemSuggestedActionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItemSuggestedActionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA02A6A0(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA02A704()
{
  result = sub_1BA4A2A28();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA02A8B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A4428();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v11, &v33);
  if (v35)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    type metadata accessor for EmptyIconSourcesItem();
    if (swift_dynamicCast())
    {
      v12 = v32;
      v33 = 0;
      v34 = 0xE000000000000000;
      v13 = v1;
      sub_1BA4A7DF8();

      v33 = 0xD000000000000013;
      v34 = 0x80000001BA4E4AF0;
      v14 = *(v12 + 32);
      v15 = *(v12 + 40);

      MEMORY[0x1BFAF1350](v14, v15);

      v16 = sub_1BA4A6758();

      [v13 setAccessibilityIdentifier_];

      v18 = *(v12 + 32);
      v17 = *(v12 + 40);
      v19 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

      v20 = [v19 init];
      MEMORY[0x1BFAF2040]();

      sub_1BA4A43B8();
      sub_1BA4A43D8();
      v21 = sub_1BA4A42D8();
      sub_1BA4A4268();
      v21(&v33, 0);
      sub_1BA4A4348();
      v35 = v7;
      v36 = MEMORY[0x1E69DC110];
      v22 = __swift_allocate_boxed_opaque_existential_1(&v33);
      (*(v8 + 16))(v22, v10, v7);
      MEMORY[0x1BFAF1EF0](&v33);
      (*(v8 + 8))(v10, v7);

      sub_1BA02B078(v18, v17);

      swift_bridgeObjectRelease_n();
      [v13 setUserInteractionEnabled_];
    }
  }

  else
  {
    sub_1B9F43A50(&v33, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  }

  sub_1BA4A3E48();
  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136446210;
    v33 = ObjectType;
    swift_getMetatypeMetadata();
    v28 = sub_1BA4A6808();
    v30 = sub_1B9F0B82C(v28, v29, &v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1B9F07000, v24, v25, "[%{public}s] item is not an EmptyIconSourcesItem", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BA02AD4C()
{
  sub_1B9F6621C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  v6 = sub_1BA31D5B4();
  MEMORY[0x1BFAF1F00](v6);
  v7 = sub_1BA4A4168();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7))
  {
    sub_1B9F66128(v5, v2);
    MEMORY[0x1BFAF1F10](v2);
    return sub_1BA02BB80(v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  }

  else
  {
    v9 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v5);
  }
}

uint64_t sub_1BA02AEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A4428();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAF2040](v6);

  sub_1BA4A43B8();
  sub_1BA4A43D8();
  v9 = sub_1BA4A42D8();
  sub_1BA4A4268();
  v9(v15, 0);
  sub_1BA4A4348();
  v15[3] = v4;
  v15[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
  MEMORY[0x1BFAF1EF0](v15);
  (*(v5 + 8))(v8, v4);
  if (a2)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  sub_1BA02B078(v11, v12);
}

uint64_t sub_1BA02B078(uint64_t a1, uint64_t a2)
{
  sub_1B9F6621C(0, &qword_1EBBEA748, MEMORY[0x1E69DC118]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = sub_1BA4A4428();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBBE8278 != -1)
  {
    swift_once();
  }

  v11 = qword_1EBC093A8 == a1 && unk_1EBC093B0 == a2;
  if (v11 || (result = sub_1BA4A8338(), (result & 1) != 0))
  {
    MEMORY[0x1BFAF1EE0](v18);
    if (v19)
    {
      sub_1B9F0D950(0, &unk_1EDC5F8B0);
      v13 = swift_dynamicCast();
      (*(v8 + 56))(v6, v13 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v10, v6, v7);
        v14 = [objc_opt_self() secondaryLabelColor];
        v15 = sub_1BA4A4238();
        sub_1BA4A41F8();
        v15(v18, 0);
        v19 = v7;
        v20 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
        (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
        MEMORY[0x1BFAF1EF0](v18);
        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      sub_1B9F43A50(v18, &qword_1EBBEA750, &unk_1EDC5F8B0);
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    return sub_1BA02BB80(v6, &qword_1EBBEA748, MEMORY[0x1E69DC118]);
  }

  return result;
}

id sub_1BA02B49C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyIconSourcesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA02B4D0()
{
  type metadata accessor for EmptyIconSourcesCell();
  sub_1BA02B52C();
  return sub_1BA4A6808();
}

unint64_t sub_1BA02B52C()
{
  result = qword_1EBBE9E20;
  if (!qword_1EBBE9E20)
  {
    type metadata accessor for EmptyIconSourcesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E20);
  }

  return result;
}

uint64_t sub_1BA02B570()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v4 = (*(*v0 + 112))();
    v5 = v2;
    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    MEMORY[0x1BFAF1350](v0[4], v0[5]);
    v1 = v4;
    v0[2] = v4;
    v0[3] = v5;
  }

  return v1;
}

uint64_t sub_1BA02B624(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t (*sub_1BA02B634(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = sub_1BA02B570();
  a1[1] = v3;
  return sub_1BA02B67C;
}

uint64_t sub_1BA02B67C(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
}

uint64_t EmptyIconSourcesItem.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *EmptyIconSourcesItem.icon.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t EmptyIconSourcesItem.__allocating_init(name:isSelectable:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  *(v6 + 40) = a2;
  *(v6 + 48) = v7;
  *(v6 + 32) = a1;
  *(v6 + 56) = a3;
  return v6;
}

uint64_t EmptyIconSourcesItem.init(name:isSelectable:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  *(v3 + 40) = a2;
  *(v3 + 48) = v7;
  *(v3 + 32) = a1;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t EmptyIconSourcesItem.deinit()
{

  return v0;
}

uint64_t EmptyIconSourcesItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA02B834()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1BA02B868(uint64_t a1)
{
  result = sub_1BA02B904(&qword_1EBBEA738);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA02B904(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyIconSourcesItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA02B9AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA02BACC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC093A8 = result;
  unk_1EBC093B0 = v1;
  return result;
}

uint64_t sub_1BA02BB80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F6621C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1BA02BC68()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageTileViewController_messageView];
    [result addSubview_];

    result = [v0 view];
    if (result)
    {
      v4 = result;
      [result hk:v3 alignConstraintsWithView:?];

      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v6 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
      swift_beginAccess();
      v7 = *v6;
      *v6 = sub_1BA02C594;
      v6[1] = v5;
      v8 = v0;
      return sub_1B9F0E310(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BA02BD7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v39 = a7;
  with.value._countAndFlagsBits = a8;
  v12 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13 = *(v9 + OBJC_IVAR____TtC18HealthExperienceUI25MessageTileViewController_messageView);
  v14 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  if (v12)
  {
    v15 = sub_1BA4A6758();
    [v14 setText_];

    v16 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
    v17 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
    v18 = sub_1BA4A6758();
    [v17 setText_];

    [*&v13[v16] setHidden_];
    v19 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
    v20 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = a5;
    v22[4] = a6;
    v22[5] = 0;
    v14 = swift_allocObject();
    v14[2] = sub_1B9F7B15C;
    v14[3] = v22;
    v44 = sub_1B9F7B0D4;
    v45 = v14;
    with.value._object = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1B9F7B0FC;
    v43 = &block_descriptor_8;
    v23 = _Block_copy(&with.value._object);

    v24 = v20;

    [v21 performWithoutAnimation_];
    _Block_release(v23);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  [v14 setText_];
  v25 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  v26 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v27 = sub_1BA4A6758();
  [v26 setText_];

  [*&v13[v25] setHidden_];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  v28 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v29 = objc_opt_self();
  v30 = swift_allocObject();
  v30[2] = v28;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1BA02C5F4;
  *(v31 + 24) = v30;
  v44 = sub_1BA02C5EC;
  v45 = v31;
  with.value._object = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1B9F7B0FC;
  v43 = &block_descriptor_14;
  v32 = _Block_copy(&with.value._object);
  v33 = v28;

  [v29 performWithoutAnimation_];
  _Block_release(v32);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return;
  }

LABEL_7:
  v34 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v34 = a5 & 0xFFFFFFFFFFFFLL;
  }

  [*&v13[v19] setHidden_];
  [v13 setBackgroundColor_];
  [v13 updateConstraints];
  v35 = sub_1BA42FCF0();
  [v35 setHidden_];

  v36 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
  if (v36)
  {
    [v36 setConstant_];
  }

  v37 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
  if (v37)
  {
    [v37 setConstant_];
  }

  v38.value._object = a9;
  v38.value._countAndFlagsBits = with.value._countAndFlagsBits;
  MessageWithActionTileView.updateAutomationIdentifiers(with:)(v38);
}

id MessageTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MessageTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC18HealthExperienceUI25MessageTileViewController_messageView;
  type metadata accessor for MessageWithActionTileView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v6] = v7;
  if (a2)
  {
    v8 = sub_1BA4A6758();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for MessageTileViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id MessageTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MessageTileViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25MessageTileViewController_messageView;
  type metadata accessor for MessageWithActionTileView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MessageTileViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MessageTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static SharingInviteFlowRouter.presentSharingInviteFlow(for:rootViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = a3;
  v125 = a1;
  v3 = *a2;
  v4 = *(a2 + 32);
  v126 = sub_1BA4A15D8();
  v129 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v106 - v8;
  sub_1B9F3E26C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v121 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F3D8(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v113 = v11;
  v111 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v106 - v12;
  sub_1BA02DF24(0);
  v114 = v13;
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E124();
  v117 = v15;
  v116 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8();
  v120 = v17;
  v119 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v118 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C();
  v124 = v19;
  v123 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A3EA8();
  v22 = *(v21 - 8);
  v130 = v21;
  v131 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v106 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v106 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v107 = &v106 - v31;
  v32 = sub_1BA4A3678();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v37 = UIViewController.resolvedHealthStore.getter();
  if (!v37)
  {
    sub_1BA4A3E28();
    v53 = v129[2];
    v54 = v126;
    v53(v128, v125, v126);
    v55 = sub_1BA4A3E88();
    v56 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v135[0] = v125;
      *v57 = 136315394;
      v58 = sub_1BA4A85D8();
      v60 = sub_1B9F0B82C(v58, v59, v135);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2082;
      v61 = v6;
      v62 = v128;
      v53(v61, v128, v54);
      v63 = sub_1BA4A6858();
      v65 = v64;
      (v129[1])(v62, v54);
      v66 = sub_1B9F0B82C(v63, v65, v135);

      *(v57 + 14) = v66;
      _os_log_impl(&dword_1B9F07000, v55, v56, "[%s] Could not resolve a health store for %{public}s", v57, 0x16u);
      v67 = v125;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v67, -1, -1);
      MEMORY[0x1BFAF43A0](v57, -1, -1);
    }

    else
    {

      (v129[1])(v128, v54);
    }

    (*(v131 + 8))(v24, v130);
    return 0;
  }

  v129 = v37;
  v135[0] = v3;
  (*(v33 + 104))(v35, *MEMORY[0x1E69A2C38], v32);
  (*(v4 + 8))(v35, ObjectType, v4);
  (*(v33 + 8))(v35, v32);
  v135[0] = v3;
  v38 = (*(v4 + 24))(ObjectType, v4);
  type metadata accessor for SharingOverviewViewController();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {

    sub_1BA4A3E28();
    v68 = v3;
    v69 = sub_1BA4A3E88();
    v70 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v135[0] = v72;
      *v71 = 136315394;
      v73 = sub_1BA4A85D8();
      v75 = sub_1B9F0B82C(v73, v74, v135);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2082;
      *&v132[0] = v68;
      swift_getWitnessTable();
      v76 = sub_1BA4A82D8();
      v78 = sub_1B9F0B82C(v76, v77, v135);

      *(v71 + 14) = v78;
      _os_log_impl(&dword_1B9F07000, v69, v70, "[%s] View controller is not SharingOverviewViewController: %{public}s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v72, -1, -1);
      MEMORY[0x1BFAF43A0](v71, -1, -1);
    }

    else
    {
    }

    (*(v131 + 8))(v27, v130);
    return 0;
  }

  v40 = v39;
  v41 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA02F4BC(v40 + v41, v135, sub_1BA02E3B8);
  v42 = v135[3];
  sub_1BA02EE68(v135, sub_1BA02E3B8);
  if (!v42)
  {
    [v40 viewDidLoad];
  }

  v43 = sub_1BA0030EC();
  if (v44)
  {
    v45 = v108;
    sub_1BA4A3E28();
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v135[0] = v49;
      *v48 = 136315138;
      v50 = sub_1BA4A85D8();
      v52 = sub_1B9F0B82C(v50, v51, v135);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] Could not get number of outgoing relationships", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);
    }

    else
    {
    }

    (*(v131 + 8))(v45, v130);
    return 0;
  }

  v79 = v43;
  UIViewController.resolvedHealthExperienceStore.getter(v135);
  v80 = v107;
  sub_1BA4A3DD8();
  v81 = sub_1BA4A3E88();
  v82 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v132[0] = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, v132);
    _os_log_impl(&dword_1B9F07000, v81, v82, "[%s]: Checking criteria for Sharing onboaring", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x1BFAF43A0](v84, -1, -1);
    MEMORY[0x1BFAF43A0](v83, -1, -1);
  }

  (*(v131 + 8))(v80, v130);
  *&v132[0] = sub_1BA02E454(sub_1BA02E350, &OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver, sub_1BA02DC84);
  v134 = v79;
  v85 = v109;
  sub_1BA4A4E78();
  sub_1BA4A4D08();
  sub_1BA02DF60(0);
  sub_1BA02E060();
  sub_1BA02E0DC(&qword_1EBBEA0F8, sub_1BA02DF60);
  v86 = v110;
  v87 = v113;
  sub_1BA4A5168();
  (*(v111 + 8))(v85, v87);
  sub_1BA02E0DC(&qword_1EBBEA7B0, sub_1BA02DF24);
  v88 = v114;
  v89 = sub_1BA4A4F98();
  (*(v112 + 8))(v86, v88);
  v134 = v89;
  v90 = v129;
  v133 = sub_1BA2B1C48(v129);
  v91 = v115;
  sub_1BA4A4AB8();
  sub_1BA02E0DC(&qword_1EBBEA798, sub_1BA02E124);
  v92 = v118;
  v93 = v117;
  sub_1BA4A5038();
  (*(v116 + 8))(v91, v93);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v94 = sub_1BA4A7308();
  *&v132[0] = v94;
  v95 = sub_1BA4A72A8();
  v96 = v121;
  (*(*(v95 - 8) + 56))(v121, 1, 1, v95);
  sub_1BA02E0DC(&qword_1EBBEA7A8, sub_1BA02E1C8);
  sub_1B9F3DC80();
  v97 = v122;
  v98 = v120;
  sub_1BA4A50A8();
  sub_1BA02EE68(v96, sub_1B9F3E26C);

  (*(v119 + 8))(v92, v98);
  v99 = swift_allocObject();
  *(v99 + 16) = v40;
  *(v99 + 24) = v40;
  sub_1B9F0A534(v135, v132);
  v100 = swift_allocObject();
  *(v100 + 16) = v40;
  *(v100 + 24) = v40;
  *(v100 + 32) = v90;
  sub_1B9F25598(v132, v100 + 40);
  *(v100 + 80) = 256;
  v101 = swift_allocObject();
  *(v101 + 16) = sub_1BA02EED0;
  *(v101 + 24) = v100;
  sub_1BA02E0DC(&qword_1EBBEA7B8, sub_1BA02E25C);
  v102 = v38;
  v103 = v90;
  v104 = v124;
  sub_1BA4A4F88();

  (*(v123 + 8))(v97, v104);
  __swift_destroy_boxed_opaque_existential_1(v135);
  return 1;
}

uint64_t sub_1BA02D6C8(char a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E4B90, &v12);
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s] iCloud sync eligibility check is overriden in UserDefaults. Returning: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BA02D874(char a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, &v12);
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s] iCloud sync eligibility check is overriden in UserDefaults. Returning: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BA02DA20(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F4BC(a1, v8, sub_1BA02F428);
  v9 = type metadata accessor for SummarySharingOnboardingError();
  LODWORD(a1) = (*(*(v9 - 8) + 48))(v8, 1, v9);
  result = sub_1BA02EE68(v8, sub_1BA02F428);
  if (a1 != 1)
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E4B90, &v16);
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Sync Observer is nil", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1BA02DC84(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F4BC(a1, v8, sub_1BA02F428);
  v9 = type metadata accessor for SummarySharingOnboardingError();
  LODWORD(a1) = (*(*(v9 - 8) + 48))(v8, 1, v9);
  result = sub_1BA02EE68(v8, sub_1BA02F428);
  if (a1 != 1)
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, &v16);
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Sync Observer is nil", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_1BA02DF80()
{
  if (!qword_1EBBEA770)
  {
    sub_1BA02F3D8(255, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
    type metadata accessor for SummarySharingOnboardingError();
    sub_1BA02E060();
    sub_1BA02E0DC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    v0 = sub_1BA4A4B38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA770);
    }
  }
}

unint64_t sub_1BA02E060()
{
  result = qword_1EBBEA778;
  if (!qword_1EBBEA778)
  {
    sub_1BA02F3D8(255, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA778);
  }

  return result;
}

uint64_t sub_1BA02E0DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA02E124()
{
  if (!qword_1EBBEA788)
  {
    sub_1BA02DF60(255);
    sub_1BA02E0DC(&qword_1EBBEA0F8, sub_1BA02DF60);
    v0 = sub_1BA4A4AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA788);
    }
  }
}

void sub_1BA02E1C8()
{
  if (!qword_1EBBEA790)
  {
    sub_1BA02E124();
    sub_1BA02E0DC(&qword_1EBBEA798, sub_1BA02E124);
    v0 = sub_1BA4A4BC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA790);
    }
  }
}

void sub_1BA02E25C()
{
  if (!qword_1EBBEA7A0)
  {
    sub_1BA02E1C8();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA02E0DC(&qword_1EBBEA7A8, sub_1BA02E1C8);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA7A0);
    }
  }
}

void sub_1BA02E3B8()
{
  if (!qword_1EDC6BAD0)
  {
    sub_1B9F0D950(255, qword_1EDC6BAE0);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6BAD0);
    }
  }
}

uint64_t sub_1BA02E454(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v51 = a3;
  v60 = a2;
  v62 = a1;
  v63 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v63);
  v44[1] = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02EF20(0);
  v49 = v4;
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v45 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02EF40();
  v50 = v6;
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02EFD4();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F068(0);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6370];
  sub_1BA02F3D8(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v44 - v16;
  sub_1BA02F280(0);
  v19 = v18;
  v58 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F344();
  v23 = v22;
  v59 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F3D8(0, &qword_1EDC6ADF0, v12, MEMORY[0x1E69A3C40]);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v44 - v29;
  if (qword_1EDC63A50 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v27, qword_1EDC63A58);
  (*(v28 + 16))(v30, v31, v27);
  sub_1BA4A1CA8();
  (*(v28 + 8))(v30, v27);
  if (v65 == 1)
  {
    v65 = 1;
    sub_1BA4A4E78();
    sub_1BA02E0DC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    sub_1BA4A4E48();
    (*(v15 + 8))(v17, v14);
    sub_1BA02E0DC(&qword_1EBBEA810, sub_1BA02F280);
    sub_1BA4A4FB8();
    (*(v58 + 8))(v21, v19);
    sub_1BA02E0DC(&qword_1EBBEA828, sub_1BA02F344);
    v32 = sub_1BA4A4F98();
    (*(v59 + 8))(v25, v23);
  }

  else
  {
    v33 = v61;
    v34 = *v60;
    swift_beginAccess();
    if (*(v33 + v34))
    {
      v64 = *(v33 + v34);
      sub_1B9F1146C();
      sub_1BA02E0DC(&qword_1EDC5F478, sub_1B9F1146C);

      v35 = v52;
      sub_1BA4A4FB8();
      sub_1BA4A4D08();
      sub_1BA02DF60(0);
      sub_1BA02E0DC(&qword_1EBBEA7F0, sub_1BA02EFD4);
      sub_1BA02E0DC(&qword_1EBBEA0F8, sub_1BA02DF60);
      v36 = v53;
      v37 = v55;
      sub_1BA4A5168();
      (*(v54 + 8))(v35, v37);
      sub_1BA02E0DC(&qword_1EBBEA820, sub_1BA02F068);
      v38 = v57;
      v32 = sub_1BA4A4F98();

      (*(v56 + 8))(v36, v38);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BA02E0DC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
      v39 = v45;
      sub_1BA4A4E38();
      sub_1BA02E0DC(&qword_1EBBEA7D0, sub_1BA02EF20);
      v40 = v49;
      v41 = v46;
      sub_1BA4A4FB8();
      (*(v47 + 8))(v39, v40);
      sub_1BA02E0DC(&qword_1EBBEA818, sub_1BA02EF40);
      v42 = v50;
      v32 = sub_1BA4A4F98();
      (*(v48 + 8))(v41, v42);
    }
  }

  return v32;
}

uint64_t sub_1BA02EE68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA02EF40()
{
  if (!qword_1EBBEA7C8)
  {
    sub_1BA02EF20(255);
    sub_1BA02E0DC(&qword_1EBBEA7D0, sub_1BA02EF20);
    v0 = sub_1BA4A4B08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA7C8);
    }
  }
}

void sub_1BA02EFD4()
{
  if (!qword_1EBBEA7D8)
  {
    sub_1B9F1146C();
    sub_1BA02E0DC(&qword_1EDC5F478, sub_1B9F1146C);
    v0 = sub_1BA4A4B08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA7D8);
    }
  }
}

void sub_1BA02F0A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA02DF60(255);
    a3(255);
    sub_1BA02E0DC(&qword_1EBBEA0F8, sub_1BA02DF60);
    sub_1BA02E0DC(a4, a5);
    v9 = sub_1BA4A4C28();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA02F194()
{
  if (!qword_1EBBEA7E8)
  {
    sub_1BA02EFD4();
    type metadata accessor for SummarySharingOnboardingError();
    sub_1BA02E0DC(&qword_1EBBEA7F0, sub_1BA02EFD4);
    sub_1BA02E0DC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    v0 = sub_1BA4A4B38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA7E8);
    }
  }
}

void sub_1BA02F2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SummarySharingOnboardingError();
    v7 = sub_1BA02E0DC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    v8 = a3(a1, MEMORY[0x1E69E6370], v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA02F344()
{
  if (!qword_1EBBEA808)
  {
    sub_1BA02F280(255);
    sub_1BA02E0DC(&qword_1EBBEA810, sub_1BA02F280);
    v0 = sub_1BA4A4B08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA808);
    }
  }
}

void sub_1BA02F3D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BA02F428()
{
  if (!qword_1EBBEA120)
  {
    type metadata accessor for SummarySharingOnboardingError();
    sub_1BA02E0DC(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    v0 = sub_1BA4A4CF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA120);
    }
  }
}

uint64_t sub_1BA02F4BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id HKChartSummaryTrendModel.makeModel(updatedFor:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (*(a1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue);
    }

    v4 = v3 == 2 || v3 == 1;
    if (v3 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v4 = 0;
    v5 = 4;
  }

  v6 = [v2 timeScopeTrends];
  sub_1BA02F6A8();
  sub_1BA4A6B08();

  v12 = sub_1BA03055C(v7, sub_1BA025524, sub_1B9FE31D8);
  sub_1BA02F6F4(&v12, v5);

  v8 = objc_allocWithZone(MEMORY[0x1E69A4140]);
  v9 = sub_1BA4A6AE8();

  v10 = [v8 initWithTimeScopeTrends:v9 selectTrendInitially:v4];

  return v10;
}

unint64_t sub_1BA02F6A8()
{
  result = qword_1EDC5E288;
  if (!qword_1EDC5E288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E288);
  }

  return result;
}

uint64_t sub_1BA02F6F4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1BA44454C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1BA02F778(v8, a2);
  return sub_1BA4A7EE8();
}

void sub_1BA02F778(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = sub_1BA4A82B8();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BA02F6A8();
        v8 = sub_1BA4A6B98();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_1BA02F9C0(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1BA02F888(0, v4, 1, a1, a2);
  }
}

void sub_1BA02F888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, id a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_6:
    v20 = a3;
    v9 = *(v6 + 8 * a3);
    v18 = v8;
    v19 = v7;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      if ([v11 timeScope] == a5)
      {
      }

      else
      {
        if ([v12 timeScope] == a5)
        {

LABEL_5:
          a3 = v20 + 1;
          v7 = v19 + 8;
          v8 = v18 - 1;
          if (v20 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v13 = [v11 timeScope];
        v14 = [v12 timeScope];

        if (v13 >= v14)
        {
          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      v15 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v15;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1BA02F9C0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = v6;
  v10 = a5;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v7 = a3;
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    v5 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v93 = v5;
LABEL_117:
      v5 = *(v93 + 2);
      if (v5 >= 2)
      {
        while (*v7)
        {
          v94 = *&v93[16 * v5];
          v95 = v93;
          v96 = *&v93[16 * v5 + 24];
          sub_1BA030184((*v7 + 8 * v94), (*v7 + 8 * *&v93[16 * v5 + 16]), (*v7 + 8 * v96), v8, v10);
          if (v9)
          {
            goto LABEL_125;
          }

          if (v96 < v94)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_1BA442D80(v95);
          }

          if (v5 - 2 >= *(v95 + 2))
          {
            goto LABEL_141;
          }

          v97 = &v95[16 * v5];
          *v97 = v94;
          *(v97 + 1) = v96;
          sub_1BA442CF4(v5 - 1);
          v93 = v95;
          v5 = *(v95 + 2);
          if (v5 <= 1)
          {
            goto LABEL_125;
          }
        }

        goto LABEL_151;
      }

LABEL_125:

      return;
    }

LABEL_147:
    v93 = sub_1BA442D80(v5);
    goto LABEL_117;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = &off_1E7EEF000;
  while (1)
  {
    v15 = v12;
    v16 = v12 + 1;
    if (v16 >= v11)
    {
      v107 = v16;
      goto LABEL_39;
    }

    v102 = v13;
    v17 = *a3;
    v18 = *(*a3 + 8 * v15);
    v8 = *(*a3 + 8 * v16);
    v7 = v18;
    if ([v8 v14[485]] == v10)
    {

      v5 = 1;
    }

    else if ([v7 v14[485]] == v10)
    {

      v5 = 0;
    }

    else
    {
      v19 = [v8 v14[485]];
      v20 = [v7 v14[485]];

      v21 = v19 < v20;
      v14 = &off_1E7EEF000;
      v10 = a5;
      v5 = v21;
    }

    v107 = v15 + 2;
    if (v15 + 2 >= v11)
    {
      v13 = v102;
      if (!v5)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v22 = v15;
      v23 = v9;
      v99 = v22;
      v24 = (v17 + 8 * v22 + 16);
      do
      {
        v25 = *(v24 - 1);
        v8 = *v24;
        v7 = v25;
        if ([v8 v14[485]] == v10)
        {

          if ((v5 & 1) == 0)
          {
            v9 = v23;
            v13 = v102;
            v15 = v99;
            goto LABEL_39;
          }
        }

        else if ([v7 v14[485]] == v10)
        {

          if (v5)
          {
            v9 = v23;
            v13 = v102;
            v15 = v99;
            goto LABEL_32;
          }
        }

        else
        {
          v26 = [v8 v14[485]];
          v27 = [v7 timeScope];

          v21 = v26 < v27;
          v14 = &off_1E7EEF000;
          v10 = a5;
          v28 = !v21;
          if (v5 == v28)
          {
            goto LABEL_29;
          }
        }

        ++v24;
        ++v107;
      }

      while (v11 != v107);
      v107 = v11;
LABEL_29:
      v9 = v23;
      v13 = v102;
      v15 = v99;
      if (!v5)
      {
        goto LABEL_39;
      }
    }

LABEL_32:
    v29 = v107;
    if (v107 < v15)
    {
      goto LABEL_146;
    }

    if (v15 < v107)
    {
      v30 = 8 * v107 - 8;
      v31 = 8 * v15;
      v32 = v15;
      do
      {
        if (v32 != --v29)
        {
          v33 = *a3;
          if (!*a3)
          {
            goto LABEL_150;
          }

          v34 = *(v33 + v31);
          *(v33 + v31) = *(v33 + v30);
          *(v33 + v30) = v34;
        }

        ++v32;
        v30 -= 8;
        v31 += 8;
      }

      while (v32 < v29);
    }

LABEL_39:
    v35 = a3[1];
    if (v107 < v35)
    {
      if (__OFSUB__(v107, v15))
      {
        goto LABEL_143;
      }

      if (v107 - v15 < a4)
      {
        break;
      }
    }

LABEL_62:
    if (v107 < v15)
    {
      goto LABEL_142;
    }

    v49 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v13 = v49;
    }

    else
    {
      v13 = sub_1BA27F470(0, *(v49 + 2) + 1, 1, v49);
    }

    v5 = *(v13 + 2);
    v50 = *(v13 + 3);
    v10 = v5 + 1;
    if (v5 >= v50 >> 1)
    {
      v13 = sub_1BA27F470((v50 > 1), v5 + 1, 1, v13);
    }

    *(v13 + 2) = v10;
    v51 = &v13[16 * v5];
    *(v51 + 4) = v15;
    *(v51 + 5) = v107;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_152;
    }

    if (v5)
    {
      while (1)
      {
        v8 = v10 - 1;
        if (v10 >= 4)
        {
          break;
        }

        if (v10 == 3)
        {
          v52 = *(v13 + 4);
          v53 = *(v13 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_82:
          if (v55)
          {
            goto LABEL_131;
          }

          v68 = &v13[16 * v10];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_134;
          }

          v74 = &v13[16 * v8 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_138;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v8 = v10 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v78 = &v13[16 * v10];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_96:
        if (v73)
        {
          goto LABEL_133;
        }

        v81 = &v13[16 * v8];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_136;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_103:
        v5 = v8 - 1;
        if (v8 - 1 >= v10)
        {
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*a3)
        {
          goto LABEL_149;
        }

        v89 = v13;
        v90 = *&v13[16 * v5 + 32];
        v91 = *&v13[16 * v8 + 40];
        sub_1BA030184((*a3 + 8 * v90), (*a3 + 8 * *&v13[16 * v8 + 32]), (*a3 + 8 * v91), v7, a5);
        if (v9)
        {
          goto LABEL_125;
        }

        if (v91 < v90)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1BA442D80(v89);
        }

        if (v5 >= *(v89 + 2))
        {
          goto LABEL_128;
        }

        v92 = &v89[16 * v5];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        sub_1BA442CF4(v8);
        v13 = v89;
        v10 = *(v89 + 2);
        if (v10 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v13[16 * v10 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_129;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_130;
      }

      v63 = &v13[16 * v10];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_132;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_135;
      }

      if (v67 >= v59)
      {
        v85 = &v13[16 * v8 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_139;
        }

        if (v54 < v88)
        {
          v8 = v10 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v12 = v107;
    v11 = a3[1];
    v10 = a5;
    if (v107 >= v11)
    {
      goto LABEL_114;
    }
  }

  if (__OFADD__(v15, a4))
  {
    goto LABEL_144;
  }

  if (v15 + a4 >= v35)
  {
    v36 = a3[1];
  }

  else
  {
    v36 = v15 + a4;
  }

  if (v36 < v15)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v107 == v36)
  {
    goto LABEL_62;
  }

  v103 = v13;
  v98 = v9;
  v100 = v15;
  v5 = *a3;
  v37 = *a3 + 8 * v107 - 8;
  v38 = v15 - v107;
  v39 = v107;
  v105 = v36;
LABEL_51:
  v108 = v39;
  v40 = *(v5 + 8 * v39);
  v41 = v38;
  v42 = v37;
  while (1)
  {
    v43 = *v42;
    v8 = v40;
    v44 = v43;
    v14 = &off_1E7EEF000;
    v7 = v44;
    if ([v8 timeScope] == v10)
    {
    }

    else
    {
      if ([v7 timeScope] == v10)
      {

LABEL_50:
        v39 = v108 + 1;
        v37 += 8;
        --v38;
        if (v108 + 1 == v105)
        {
          v107 = v105;
          v9 = v98;
          v15 = v100;
          v13 = v103;
          goto LABEL_62;
        }

        goto LABEL_51;
      }

      v45 = [v8 timeScope];
      v46 = [v7 timeScope];

      v21 = v45 < v46;
      v14 = &off_1E7EEF000;
      v10 = a5;
      if (!v21)
      {
        goto LABEL_50;
      }
    }

    if (!v5)
    {
      break;
    }

    v47 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v47;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_1BA030184(void **__src, id *a2, id *a3, void **a4, id a5)
{
  __dst = a4;
  __srca = a2;
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
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      memmove(a4, a2, 8 * v12);
    }

    v21 = a5;
    if (v10 < 8 || __srca <= v6)
    {
      v13 = &__dst[v12];
    }

    else
    {
      v22 = 0x1FB3A8000uLL;
      v13 = &__dst[v12];
      v38 = v6;
      do
      {
        v23 = __srca - 1;
        v24 = v5 - 1;
        v25 = v13;
        while (1)
        {
          v26 = v24;
          v27 = *--v13;
          v28 = v22;
          v29 = v23;
          v30 = *v23;
          v31 = v27;
          v32 = v30;
          v22 = v28;
          v33 = v32;
          if ([v31 (v28 + 1784)] == v21)
          {
            break;
          }

          if ([v33 (v28 + 1784)] == v21)
          {
          }

          else
          {
            v34 = [v31 (v28 + 1784)];
            v35 = [v33 (v28 + 1784)];

            v36 = v34 < v35;
            v22 = v28;
            v21 = a5;
            if (v36)
            {
              goto LABEL_39;
            }
          }

          v23 = v29;
          if (v26 + 1 != v25)
          {
            *v26 = *v13;
          }

          v24 = v26 - 1;
          v25 = v13;
          if (v13 <= __dst)
          {
            goto LABEL_46;
          }
        }

LABEL_39:
        v5 = v26;
        if (v26 + 1 != __srca)
        {
          *v26 = *v29;
        }

        v13 = v25;
        if (v25 <= __dst)
        {
          break;
        }

        __srca = v29;
      }

      while (v29 > v38);
      __srca = v29;
    }
  }

  else
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v13 = &__dst[v9];
    if (v7 >= 8 && __srca < v5)
    {
      while (1)
      {
        v14 = *__dst;
        v15 = *__srca;
        v16 = v14;
        if ([v15 timeScope] == a5)
        {
          break;
        }

        if ([v16 timeScope] == a5)
        {
        }

        else
        {
          v19 = [v15 timeScope];
          v20 = [v16 timeScope];

          if (v19 < v20)
          {
            goto LABEL_13;
          }
        }

        v17 = __dst;
        v18 = v6 == __dst++;
        if (!v18)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v6;
        if (__dst >= v13 || __srca >= v5)
        {
          goto LABEL_44;
        }
      }

LABEL_13:
      v17 = __srca;
      v18 = v6 == __srca++;
      if (v18)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v6 = *v17;
      goto LABEL_15;
    }

LABEL_44:
    __srca = v6;
  }

LABEL_46:
  if (__srca != __dst || __srca >= (__dst + ((v13 - __dst + (v13 - __dst < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(__srca, __dst, 8 * (v13 - __dst));
  }

  return 1;
}

uint64_t sub_1BA03055C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1BA4A7CC8();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BA030630(uint64_t a1)
{
  v2 = sub_1B9F41748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA03066C(uint64_t a1)
{
  v2 = sub_1B9F41748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA0306A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

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

uint64_t sub_1BA030774(uint64_t a1)
{
  v2 = sub_1B9F4BB00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA0307B0(uint64_t a1)
{
  v2 = sub_1B9F4BB00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA0307EC(uint64_t a1)
{
  v2 = sub_1B9F39968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA030828(uint64_t a1)
{
  v2 = sub_1B9F39968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CellHeaderDetailText.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1B9F429B0(0, &qword_1EDC5DDA8, sub_1B9F39968, &type metadata for CellHeaderDetailText.TextCodingKeys, MEMORY[0x1E69E6F58]);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v26 - v4;
  sub_1B9F429B0(0, &qword_1EDC5DD98, sub_1B9F4BB00, &type metadata for CellHeaderDetailText.DateCodingKeys, v2);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - v6;
  v7 = sub_1BA4A1728();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CellHeaderDetailText(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F429B0(0, &qword_1EDC5DDA0, sub_1B9F41748, &type metadata for CellHeaderDetailText.CodingKeys, v2);
  v14 = v13;
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F41748();
  sub_1BA4A8548();
  sub_1BA034014(v35, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = 1;
    sub_1B9F39968();
    v17 = v29;
    sub_1BA4A81F8();
    v18 = v31;
    sub_1BA4A8248();

    (*(v30 + 8))(v17, v18);
  }

  else
  {
    sub_1B9F416DC();
    LODWORD(v35) = v12[*(v19 + 48)];
    v21 = v27;
    v20 = v28;
    (*(v27 + 32))(v9, v12, v28);
    v40 = 0;
    sub_1B9F4BB00();
    v22 = v32;
    sub_1BA4A81F8();
    v39 = 0;
    sub_1B9F42A64(&qword_1EDC6AE80, MEMORY[0x1E6969530]);
    v23 = v34;
    v24 = v37;
    sub_1BA4A8288();
    if (!v24)
    {
      v38 = 1;
      sub_1BA4A8258();
    }

    (*(v33 + 8))(v22, v23);
    (*(v21 + 8))(v9, v20);
  }

  return (*(v36 + 8))(v16, v14);
}

uint64_t sub_1BA030D94(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1BA030DF4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA030E40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BA030EE4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1BA030F44()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BA030F90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1BA031034(uint64_t a1, uint64_t *a2)
{
  sub_1B9F39780(0, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B9F42C80(a1, &v10 - v5, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  swift_beginAccess();
  sub_1BA034078(v6, v7 + v8, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  swift_endAccess();
  sub_1B9F4BEAC();
  return sub_1B9F4C1D4(v6, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
}

uint64_t sub_1BA031160(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  swift_beginAccess();
  sub_1BA034078(a1, v1 + v3, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  swift_endAccess();
  sub_1B9F4BEAC();
  return sub_1B9F4C1D4(a1, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
}

uint64_t (*sub_1BA031200(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA031264;
}

uint64_t sub_1BA031264(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1B9F4BEAC();
  }

  return result;
}

uint64_t sub_1BA031298(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69A3260];
  sub_1B9F39780(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1B9F42C80(a1, &v11 - v6, &qword_1EDC6E1D0, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  swift_beginAccess();
  sub_1B9F42BAC(v7, v8 + v9, &qword_1EDC6E1D0, v4);
  return swift_endAccess();
}

uint64_t sub_1BA0313B0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1B9F42C80(v4 + v8, a4, a2, a3);
}

uint64_t sub_1BA03141C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  swift_beginAccess();
  sub_1B9F42BAC(a1, v1 + v3, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  return swift_endAccess();
}

uint64_t sub_1BA0314F8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  *a1 = v3;
  return result;
}

uint64_t sub_1BA031578()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BA4A4F38();
}

uint64_t sub_1BA0315EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

uint64_t sub_1BA031664()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BA4A4F38();
}

void (*sub_1BA0316D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  *(v3 + 48) = sub_1BA4A4F18();
  return sub_1B9FD0D9C;
}

uint64_t sub_1BA031778()
{
  swift_beginAccess();
  sub_1B9F4A814(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1BA031808(uint64_t a1)
{
  sub_1B9F4A814(0, &qword_1EBBEA830, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_1B9F4A814(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  sub_1BA4A4F08();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1BA0319C4()
{
  swift_beginAccess();
  sub_1B9F4A814(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1BA031A50(uint64_t a1)
{
  sub_1B9F4A814(0, &qword_1EBBEA830, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1B9F4A814(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  sub_1BA4A4F08();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_1BA031BC0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  sub_1B9F4A814(0, &qword_1EBBEA830, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C060]);
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

  v10 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1B9F4A814(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1BA4A4EF8();
  swift_endAccess();
  return sub_1B9FD13F0;
}

uint64_t sub_1BA031D60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v1;
}

char *CellHeaderViewModel.__allocating_init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v31 = a6;
  v28 = a4;
  v29 = a5;
  v27 = a3;
  sub_1B9F4A864();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v30 = *a7;
  *(v15 + 5) = 0;
  *(v15 + 4) = 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v17 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v19 = sub_1BA4A2B98();
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F4A814(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v33 = 0;
  v34 = 0;
  sub_1BA4A4EE8();
  (*(v12 + 32))(&v15[v20], v14, v11);
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  *(v15 + 2) = a1;
  *(v15 + 3) = a2;
  swift_beginAccess();
  v21 = v28;
  *(v15 + 4) = v27;
  *(v15 + 5) = v21;

  swift_beginAccess();
  v22 = &v15[v16];
  v23 = v29;
  sub_1BA034078(v29, v22, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  swift_endAccess();
  swift_beginAccess();
  v24 = MEMORY[0x1E69A3260];
  v25 = v31;
  sub_1BA034078(v31, &v15[v18], &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  swift_endAccess();
  swift_beginAccess();
  v32 = v30;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F4C1D4(v25, &qword_1EDC6E1D0, v24);
  sub_1B9F4C1D4(v23, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  return v15;
}

char *CellHeaderViewModel.init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v31 = a6;
  v28 = a4;
  v29 = a5;
  v27 = a3;
  sub_1B9F4A864();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a7;
  *(v7 + 5) = 0;
  *(v7 + 4) = 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v17 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v17 - 8) + 56))(&v7[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v19 = sub_1BA4A2B98();
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F4A814(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v33 = 0;
  v34 = 0;
  sub_1BA4A4EE8();
  (*(v13 + 32))(&v7[v20], v15, v12);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  swift_beginAccess();
  v21 = v28;
  *(v7 + 4) = v27;
  *(v7 + 5) = v21;

  swift_beginAccess();
  v22 = &v7[v16];
  v23 = v29;
  sub_1BA034078(v29, v22, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  swift_endAccess();
  swift_beginAccess();
  v24 = MEMORY[0x1E69A3260];
  v25 = v31;
  sub_1BA034078(v31, &v7[v18], &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  swift_endAccess();
  swift_beginAccess();
  v32 = v30;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F4C1D4(v25, &qword_1EDC6E1D0, v24);
  sub_1B9F4C1D4(v23, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  return v7;
}

uint64_t sub_1BA032420()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B9F4BEAC();
  }

  return result;
}

uint64_t sub_1BA032478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA03483C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA0324A0(uint64_t a1)
{
  v2 = sub_1B9F4B08C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA0324DC(uint64_t a1)
{
  v2 = sub_1B9F4B08C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CellHeaderViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CellHeaderViewModel.init(from:)(a1);
  return v2;
}

uint64_t sub_1BA032568(void *a1)
{
  v2 = v1;
  sub_1B9F39780(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v33 - v5;
  v6 = sub_1BA4A2B98();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39780(0, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v33 - v9;
  v10 = type metadata accessor for CellHeaderDetailText(0);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F429B0(0, &qword_1EDC5DDC8, sub_1B9F4B08C, &type metadata for CellHeaderViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F4B08C();
  sub_1BA4A8548();
  swift_beginAccess();
  v44 = 0;

  v18 = v40;
  sub_1BA4A8248();
  if (v18)
  {
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v20 = v39;
    v40 = v12;

    swift_beginAccess();
    if (*(v2 + 40))
    {
      v43 = 1;

      sub_1BA4A8248();
    }

    v21 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
    swift_beginAccess();
    v22 = v20;
    sub_1B9F42C80(v2 + v21, v20, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    if ((*(v37 + 48))(v20, 1, v38) == 1)
    {
      v23 = v15;
      sub_1B9F4C1D4(v22, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
      v24 = v17;
    }

    else
    {
      v25 = v20;
      v26 = v40;
      sub_1B9F42B48(v25, v40);
      v42 = 2;
      sub_1B9F42A64(&qword_1EDC67CD0, type metadata accessor for CellHeaderDetailText);
      v24 = v17;
      sub_1BA4A8288();
      v27 = v26;
      v23 = v15;
      sub_1BA034A68(v27, type metadata accessor for CellHeaderDetailText);
    }

    v28 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
    swift_beginAccess();
    v29 = v36;
    sub_1B9F42C80(v2 + v28, v36, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    v31 = v34;
    v30 = v35;
    if ((*(v34 + 48))(v29, 1, v35) == 1)
    {
      sub_1B9F4C1D4(v29, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    }

    else
    {
      v32 = v33;
      (*(v31 + 32))(v33, v29, v30);
      LOBYTE(v45) = 3;
      sub_1B9F42A64(&qword_1EDC6AD70, MEMORY[0x1E69A3260]);
      sub_1BA4A8288();
      (*(v31 + 8))(v32, v30);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA4A4F28();

    v41 = 4;
    sub_1BA4A8278();
    return (*(v23 + 8))(v24, v14);
  }
}

id sub_1BA032C70(void *a1)
{
  sub_1B9F39780(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  sub_1B9F39780(0, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  result = [a1 titleText];
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = result;
  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v19 = v18;

  v20 = type metadata accessor for CellHeaderDetailText(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v49 = v21 + 56;
  v50 = v22;
  v22(v14, 1, 1, v20);
  v23 = sub_1BA4A2B98();
  v24 = *(v23 - 8);
  v46 = *(v24 + 56);
  v47 = v23;
  v45 = v24 + 56;
  v46(v7, 1, 1);
  v51[0] = 0;
  v25 = (*(v1 + 352))(v17, v19, 0, 0, v14, v7, v51);
  if ([a1 hasSystemImageName])
  {
    v26 = [a1 systemImageName];
    if (v26)
    {
      v27 = v26;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    swift_beginAccess();
    *(v25 + 32) = v28;
    *(v25 + 40) = v30;
  }

  if ([a1 hasDetailDate] && objc_msgSend(a1, sel_hasForceDayGranularity))
  {
    sub_1B9F416DC();
    v32 = *(v31 + 48);
    [a1 detailDate];
    v33 = HKDecodeDateForValue();
    sub_1BA4A16F8();

    v14[v32] = [a1 forceDayGranularity];
    swift_storeEnumTagMultiPayload();
    v50(v14, 0, 1, v20);
    v34 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
    swift_beginAccess();
    sub_1BA034078(v14, v25 + v34, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    swift_endAccess();
LABEL_13:
    sub_1B9F4BEAC();
    sub_1B9F4C1D4(v14, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    goto LABEL_14;
  }

  if (![a1 hasDetailText])
  {
LABEL_14:
    v40 = [a1 hasForegroundColor];
    v41 = v51[4];
    if (!v40)
    {
      goto LABEL_19;
    }

    result = [a1 foregroundColor];
    if (result)
    {
      v42 = v48;
      sub_1BA4A2BA8();
      if (v41)
      {

        return v25;
      }

      (v46)(v42, 0, 1, v47);
      v43 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
      swift_beginAccess();
      sub_1B9F42BAC(v42, v25 + v43, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
      swift_endAccess();
LABEL_19:
      if ([a1 hasDetailsVisibility])
      {
        v44 = [a1 detailsVisibility];
        swift_getKeyPath();
        swift_getKeyPath();
        v51[0] = v44;

        sub_1BA4A4F38();
      }

      return v25;
    }

    goto LABEL_23;
  }

  result = [a1 detailText];
  if (result)
  {
    v35 = result;
    v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v38 = v37;

    *v10 = v36;
    v10[1] = v38;
    swift_storeEnumTagMultiPayload();
    v50(v10, 0, 1, v20);
    v39 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
    swift_beginAccess();
    sub_1BA034078(v10, v25 + v39, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    swift_endAccess();
    v14 = v10;
    goto LABEL_13;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1BA03324C()
{
  v1 = v0;
  v2 = sub_1BA4A2B98();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39780(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_1BA4A1728();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39780(0, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for CellHeaderDetailText(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  result = [objc_allocWithZone(MEMORY[0x1E69A4178]) init];
  if (result)
  {
    v20 = result;
    swift_beginAccess();

    v21 = sub_1BA4A6758();

    [v20 setTitleText_];

    swift_beginAccess();
    if (*(v1 + 40))
    {

      v22 = sub_1BA4A6758();
    }

    else
    {
      v22 = 0;
    }

    [v20 setSystemImageName_];

    v23 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
    swift_beginAccess();
    sub_1B9F42C80(v1 + v23, v11, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1B9F4C1D4(v11, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    }

    else
    {
      sub_1B9F42B48(v11, v18);
      sub_1BA034014(v18, v15);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = sub_1BA4A6758();

        [v20 setDetailText_];
      }

      else
      {
        sub_1B9F416DC();
        v26 = v15[*(v25 + 48)];
        v27 = v37;
        v28 = v38;
        v29 = v39;
        (*(v38 + 32))(v37, v15, v39);
        v30 = sub_1BA4A16B8();
        v31 = MEMORY[0x1BFAF3470]();

        [v20 setDetailDate_];
        [v20 setForceDayGranularity_];
        (*(v28 + 8))(v27, v29);
      }

      sub_1BA034A68(v18, type metadata accessor for CellHeaderDetailText);
    }

    v32 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
    swift_beginAccess();
    sub_1B9F42C80(v1 + v32, v6, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    v34 = v41;
    v33 = v42;
    if ((*(v41 + 48))(v6, 1, v42))
    {
      sub_1B9F4C1D4(v6, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
      v35 = 0;
    }

    else
    {
      v36 = v40;
      (*(v34 + 16))(v40, v6, v33);
      sub_1B9F4C1D4(v6, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
      v35 = sub_1BA4A2B88();
      (*(v34 + 8))(v36, v33);
    }

    [v20 setForegroundColor_];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA4A4F28();

    [v20 setDetailsVisibility_];
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CellHeaderViewModel.deinit()
{

  sub_1B9F4C1D4(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  sub_1B9F4C1D4(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F4A814(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F4A864();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t CellHeaderViewModel.__deallocating_deinit()
{

  sub_1B9F4C1D4(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  sub_1B9F4C1D4(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F4A814(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F4A864();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

double sub_1BA033BC0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BA033C40()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BA4A4F38();
}

uint64_t _s18HealthExperienceUI20CellHeaderDetailTextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CellHeaderDetailText(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  sub_1BA034A04();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 56)];
  sub_1BA034014(a1, v16);
  sub_1BA034014(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BA034014(v16, v13);
    sub_1B9F416DC();
    v24 = *(v23 + 48);
    v25 = v13[v24];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v18[v24];
      (*(v5 + 32))(v7, v18, v4);
      v28 = sub_1BA4A16E8();
      v29 = *(v5 + 8);
      v29(v7, v4);
      v29(v13, v4);
      if (v28)
      {
        sub_1BA034A68(v16, type metadata accessor for CellHeaderDetailText);
        return v25 ^ v27 ^ 1u;
      }

LABEL_15:
      v26 = type metadata accessor for CellHeaderDetailText;
      goto LABEL_16;
    }

    (*(v5 + 8))(v13, v4);
LABEL_12:
    v26 = sub_1BA034A04;
LABEL_16:
    sub_1BA034A68(v16, v26);
    return 0;
  }

  sub_1BA034014(v16, v10);
  v20 = *v10;
  v19 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_12;
  }

  if (v20 != *v18 || v19 != *(v18 + 1))
  {
    v22 = sub_1BA4A8338();

    if (v22)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_18:
  sub_1BA034A68(v16, type metadata accessor for CellHeaderDetailText);
  return 1;
}

uint64_t sub_1BA034014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA034078(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F39780(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA0340E8()
{
  result = qword_1EBBEA838;
  if (!qword_1EBBEA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA838);
  }

  return result;
}

unint64_t sub_1BA034140()
{
  result = qword_1EBBEA840;
  if (!qword_1EBBEA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA840);
  }

  return result;
}

unint64_t sub_1BA034198()
{
  result = qword_1EDC65140;
  if (!qword_1EDC65140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65140);
  }

  return result;
}

unint64_t sub_1BA0341F0()
{
  result = qword_1EDC65138;
  if (!qword_1EDC65138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65138);
  }

  return result;
}

uint64_t keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unint64_t *a3@<X4>, void (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_1B9F42C80(v8 + v9, a5, a3, a4);
}

uint64_t getEnumTagSinglePayload for CellHeaderDetailsVisibility(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CellHeaderDetailsVisibility(uint64_t result, int a2, int a3)
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

unint64_t sub_1BA0346E0()
{
  result = qword_1EBBEA848;
  if (!qword_1EBBEA848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA848);
  }

  return result;
}

unint64_t sub_1BA034738()
{
  result = qword_1EBBEA850;
  if (!qword_1EBBEA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA850);
  }

  return result;
}

unint64_t sub_1BA034790()
{
  result = qword_1EBBEA858;
  if (!qword_1EBBEA858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA858);
  }

  return result;
}

unint64_t sub_1BA0347E8()
{
  result = qword_1EBBEA860;
  if (!qword_1EBBEA860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA860);
  }

  return result;
}

uint64_t sub_1BA03483C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1BA034A04()
{
  if (!qword_1EBBEA868)
  {
    type metadata accessor for CellHeaderDetailText(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEA868);
    }
  }
}

uint64_t sub_1BA034A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA034B48()
{
  v1 = sub_1BA4A2FF8();
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A2888();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v40 = v0;
  v10(v9, &v0[OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingInvitationSentViewController_profileBeingShared], v5, v7);
  v11 = *(v2 + 16);
  v11(v4, &v0[OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingInvitationSentViewController_profileReceivingSharedProfile], v1);
  v12 = type metadata accessor for ProfileSharingFlowView();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileBeingSharedView] = 0;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileReceivingSharedProfileView] = 0;
  v14 = &v13[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileBeingShared];
  v15 = MEMORY[0x1E69A30F0];
  v14[3] = v5;
  v14[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (v10)(boxed_opaque_existential_1, v9, v5);
  v17 = v38;
  v11(&v13[OBJC_IVAR____TtC18HealthExperienceUI22ProfileSharingFlowView_profileReceivingSharedProfile], v4, v38);
  v41.receiver = v13;
  v41.super_class = v12;
  v18 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA0B3580();
  sub_1BA0B3824();
  sub_1BA0B3AB0();
  (*(v39 + 8))(v4, v17);
  (*(v6 + 8))(v9, v5);
  v19 = v40;
  v20 = [v40 contentView];
  v21 = v18;
  [v20 addSubview_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = objc_opt_self();
  sub_1B9F109F8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B8B60;
  v24 = [v21 topAnchor];

  v25 = [v19 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v23 + 32) = v27;
  v28 = [v21 leadingAnchor];

  v29 = [v19 contentView];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v23 + 40) = v31;
  v32 = [v21 trailingAnchor];

  v33 = [v19 contentView];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v23 + 48) = v35;
  sub_1B9F740B0();
  v36 = sub_1BA4A6AE8();

  [v22 activateConstraints_];

  sub_1BA035014(v21);
}

void sub_1BA035014(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = [v1 contentView];
  v5 = v3;
  [v4 addSubview_];

  [v5 setNumberOfLines_];
  [v5 setTextAlignment_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  if (qword_1EBBE8240 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A6758();
  [v5 setText_];

  v7 = objc_opt_self();
  sub_1B9F109F8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B8B60;
  v9 = [v5 topAnchor];

  v10 = [a1 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:30.0];

  *(v8 + 32) = v11;
  v12 = [v5 leadingAnchor];

  v13 = [v1 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:25.0];
  *(v8 + 40) = v15;
  v16 = [v5 trailingAnchor];

  v17 = [v1 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-25.0];
  *(v8 + 48) = v19;
  sub_1B9F740B0();
  v20 = sub_1BA4A6AE8();

  [v7 activateConstraints_];
}

uint64_t sub_1BA035370()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingInvitationSentViewController_profileBeingShared;
  v2 = sub_1BA4A2888();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingInvitationSentViewController_profileReceivingSharedProfile;
  v4 = sub_1BA4A2FF8();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id sub_1BA035418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSharingInvitationSentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProfileSharingInvitationSentViewController()
{
  result = qword_1EBBEA870;
  if (!qword_1EBBEA870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA035550()
{
  result = sub_1BA4A2888();
  if (v1 <= 0x3F)
  {
    result = sub_1BA4A2FF8();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double UserDataDataSourceItemConsuming.userDataDataSourceItem.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  (*(*(a1 + 16) + 8))(v4);
  if (!v4[3])
  {
    sub_1B9F43B68(v4, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    goto LABEL_5;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  sub_1BA0356DC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1BA0356DC()
{
  result = qword_1EBBEA880;
  if (!qword_1EBBEA880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEA880);
  }

  return result;
}

uint64_t sub_1BA0357AC(uint64_t a1, uint64_t a2)
{
  sub_1BA038A40(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1BA0357E4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EDC84CE8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

uint64_t SingleUserDataDataSource.__allocating_init(context:fetchedResultsControllerPredicate:viewClass:layoutConstructor:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1BA038AA4(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E310(a5);
  return v12;
}

uint64_t SingleUserDataDataSource.init(context:fetchedResultsControllerPredicate:viewClass:layoutConstructor:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1BA038AA4(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E310(a5);
  return v7;
}

char *sub_1BA035958()
{
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5470;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = sub_1BA4A6758();
  v3 = [v1 initWithKey:v2 ascending:1 selector:sel_localizedStandardCompare_];

  *(v0 + 32) = v3;
  v4 = sub_1BA4A7558();

  sub_1B9F126E0();
  v6 = objc_allocWithZone(v5);
  return _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v4);
}

uint64_t sub_1BA035A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F0CE9C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  v9 = *(a5 + 8);
  *(v8 + 56) = a4;
  *(v8 + 64) = v9;
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  sub_1BA035B14(a1);
  return v8;
}

void sub_1BA035B14(uint64_t a1)
{
  sub_1B9F0A534(a1, &v13);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v2 = [v12 userData];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1BA4A1608();
      v6 = v5;

      (*(*(v1 + 616) + 8))(v4, v6);
      sub_1B9F2BB4C(v4, v6);

      return;
    }

    sub_1BA4A1B08();
    sub_1BA4A1AF8();
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v10 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v10);

    v9 = 0xD000000000000023;
    v8 = 0x80000001BA4E5070;
  }

  else
  {
    sub_1BA4A1B08();
    sub_1BA4A1AF8();
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v7 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v7);

    v8 = 0x80000001BA4E5050;
    v9 = 0xD00000000000001ALL;
  }

  MEMORY[0x1BFAF1350](v9, v8);
  sub_1BA4A7FB8();

  sub_1BA4A1AD8();
  __break(1u);
  sub_1BA4A1B08();
  sub_1BA4A1AF8();
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v11 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v11);

  MEMORY[0x1BFAF1350](0xD000000000000027, 0x80000001BA4E50A0);
  sub_1B9F0D9AC(0, &qword_1EDC6E310);
  sub_1BA4A7FB8();

  sub_1BA4A1AD8();
  __break(1u);
}

unint64_t sub_1BA035E14(uint64_t *a1)
{
  v2 = *(v1 + qword_1EDC84CF0);
  if (v2)
  {
    v4 = *a1;
    v3 = a1[1];

    v5 = v2(v4, v3);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      sub_1BA4A7DF8();

      v10 = sub_1BA4A85D8();
      MEMORY[0x1BFAF1350](v10);

      MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E4DA0);
      swift_unknownObjectRetain();
      v11 = sub_1BA4A6808();
      MEMORY[0x1BFAF1350](v11);

      v6 = 91;
      sub_1B9FF806C();
      swift_allocError();
      *v12 = 91;
      *(v12 + 8) = 0xE100000000000000;
      *(v12 + 16) = 1;
      swift_willThrow();
    }

    sub_1B9F0E310(v2);
  }

  else
  {
    sub_1BA4A7DF8();

    v7 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v7);

    MEMORY[0x1BFAF1350](0xD00000000000002CLL, 0x80000001BA4E4D70);

    type metadata accessor for SingleUserDataDataSource();
    v8 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v8);

    v6 = 0xE100000000000000;
    sub_1B9FF806C();
    swift_allocError();
    *v9 = 91;
    *(v9 + 8) = 0xE100000000000000;
    *(v9 + 16) = 1;
    swift_willThrow();
  }

  return v6;
}

void sub_1BA0360B8(void *a1)
{
  v2 = v1 + qword_1EDC84CE0;
  v3 = *(v1 + qword_1EDC84CE0);
  if (v3)
  {
    v5 = *(v2 + 8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    (*(*(v5 + 8) + 8))(v3);
    v7 = sub_1BA4A6758();

    [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];
  }
}

uint64_t sub_1BA03617C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 600);
  v5 = sub_1BA4A7AA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v14[1] = v4;
  v9 = *(v3 + 624);
  v15 = *(v3 + 608);
  v16 = v9;
  v10 = type metadata accessor for SingleUserDataDataSource();
  SnapshotDataSource.firstItem.getter(v10, &protocol witness table for MutableArrayDataSource, &v17);
  if (v18)
  {
    sub_1B9F1134C(&v17, v19);
    sub_1B9F0A534(v19, &v17);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v19);
      v11 = *(v4 - 8);
      v12 = *(v11 + 56);
      v12(v8, 0, 1, v4);
      (*(v11 + 32))(a1, v8, v4);
      return (v12)(a1, 0, 1, v4);
    }

    else
    {
      (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
      (*(v6 + 8))(v8, v5);
      *&v17 = 0;
      *(&v17 + 1) = 0xE000000000000000;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4E4E10);
      sub_1BA4A7FB8();
      MEMORY[0x1BFAF1350](0xD000000000000024, 0x80000001BA4E4E30);
      result = sub_1BA4A8018();
      __break(1u);
    }
  }

  else
  {
    sub_1B9F43B68(&v17, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1BA036500()
{
  sub_1BA4A7AA8();
  sub_1BA4A4DD8();
  swift_getWitnessTable();
  return sub_1BA4A4F98();
}

uint64_t sub_1BA03659C(void *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v54 = sub_1BA037658(a1, a2);
  v55 = v6;
  v49 = v8;
  v50 = v7;
  if (!v54)
  {
    *&v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_5;
  }

  v9 = v7;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  SnapshotDataSource.firstItem.getter(ObjectType, v9, &v62);
  swift_unknownObjectRelease();
  if (!*(&v63 + 1))
  {
LABEL_5:
    v52 = 0;
    goto LABEL_6;
  }

  v52 = 1;
LABEL_6:
  sub_1B9F43B68(&v62, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  v12 = v5[76];
  v13 = v5[77];
  v14 = v5[78];
  v15 = v5[79];
  *&v62 = v5[75];
  v11 = v62;
  *(&v62 + 1) = v12;
  *&v63 = v13;
  *(&v63 + 1) = v14;
  v51 = v14;
  *&v64 = v15;
  type metadata accessor for SingleUserDataDataSource();
  type metadata accessor for MappedDataSource();
  v16 = swift_allocObject();
  swift_weakInit();
  sub_1B9F0A534(a2, &v62);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v12;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  *(v17 + 48) = v15;
  *(v17 + 56) = v16;
  *(v17 + 64) = a1;
  sub_1B9F1134C(&v62, v17 + 72);
  *(v17 + 112) = v52;
  *(v17 + 120) = v5;
  *&v57 = sub_1BA038DE0;
  *(&v57 + 1) = v17;
  LOBYTE(v58) = 2;

  v18 = a1;
  sub_1BA3718D4(v3, &v57);

  SnapshotDataSource.withCellRegistration(_:)(sub_1BA03721C, 0);

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v11;
  v20[3] = v12;
  v20[4] = v13;
  v20[5] = v51;
  v20[6] = v15;
  v20[7] = v19;
  v20[8] = v5;
  v21 = type metadata accessor for CellRegistering();

  v22 = SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)(0, sub_1BA038E24, v20, v21, &protocol witness table for CellRegistering<A>);

  if (v54 && v55)
  {
    v23 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
    *&v62 = v23;
    sub_1BA038E58();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v24 = sub_1BA4A6808();
    v26 = v25;
    v27 = sub_1B9F1E1B4();
    v29 = v28;
    *&v62 = 0x6465646465626D45;
    *(&v62 + 1) = 0xE90000000000005FLL;

    MEMORY[0x1BFAF1350](v27, v29);

    v30 = v62;
    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    *(v31 + 24) = &protocol witness table for DataSourceWithLayout<A>;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1BA038EA0;
    *(v32 + 24) = v31;
    v57 = v30;
    *&v58 = v24;
    *(&v58 + 1) = v26;
    *&v59 = v22;
    *(&v59 + 1) = &protocol witness table for DataSourceWithLayout<A>;
    *&v60 = sub_1BA038EA8;
    *(&v60 + 1) = v32;
    v61 = 0;
    v33 = swift_allocObject();
    v33[2] = v54;
    v33[3] = v50;
    v33[4] = v55;
    v33[5] = v49;
    *&v62 = v23;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v34 = sub_1BA4A6808();
    v36 = v35;
    v37 = swift_getObjectType();
    v38 = *(v50 + 8);
    swift_unknownObjectRetain();
    v39 = v38(v37, v50);
    *&v62 = 0x6465646465626D45;
    *(&v62 + 1) = 0xE90000000000005FLL;
    MEMORY[0x1BFAF1350](v39);
    swift_unknownObjectRelease();

    *&v63 = v34;
    *(&v63 + 1) = v36;
    *&v64 = v54;
    *(&v64 + 1) = v50;
    *&v65 = sub_1BA038EE0;
    *(&v65 + 1) = v33;
    v66 = 1;
    type metadata accessor for CollapsibleMultiColumnDataSource(0);
    sub_1B9F1C048(0, &qword_1EDC5DC50);
    v40 = swift_allocObject();
    v41 = v59;
    v42 = v60;
    v43 = v57;
    *(v40 + 48) = v58;
    *(v40 + 64) = v41;
    *(v40 + 80) = v42;
    *(v40 + 16) = xmmword_1BA4B5460;
    *(v40 + 32) = v43;
    v44 = v62;
    *(v40 + 120) = v63;
    v45 = v65;
    *(v40 + 136) = v64;
    *(v40 + 152) = v45;
    *(v40 + 96) = v61;
    *(v40 + 168) = v66;
    *(v40 + 104) = v44;
    sub_1BA038EEC(&v57, v56);
    sub_1BA038EEC(&v62, v56);
    v46 = sub_1BA49E264(v40);

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    sub_1BA038F48(&v57);
    sub_1BA038F48(&v62);
  }

  else
  {
    type metadata accessor for MultiColumnDataSource(0);
    sub_1B9F1DEA0();
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1BA4B5480;
    *(v47 + 32) = v22;
    *(v47 + 40) = &protocol witness table for DataSourceWithLayout<A>;

    v46 = MultiColumnDataSource.__allocating_init(_:)(v47);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v46;
}

uint64_t sub_1BA036BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA038130(a1, &v63);

    if (*(&v64 + 1))
    {
      sub_1B9F1134C(&v63, v66);
      v14 = v67;
      v15 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(v15 + 16))(&v63, a4, a5, v14, v15);
      v16 = v67;
      v17 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(v17 + 8))(v62, a4, a5, v16, v17);
      v18 = v67;
      v19 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v20 = (*(v19 + 24))(a6 & 1, v18, v19);
      sub_1BA039238();
      inited = swift_initStackObject();
      v51 = xmmword_1BA4B5480;
      *(inited + 16) = xmmword_1BA4B5480;
      sub_1B9F68124(&v63, inited + 32);
      v22 = swift_initStackObject();
      *(v22 + 16) = v51;
      sub_1B9F68124(v62, v22 + 32);
      v61 = inited;
      sub_1B9FE21C4(v22);
      v23 = sub_1B9FE4FF4(v20);

      sub_1B9FE21C4(v23);
      v24 = *(v61 + 16);
      if (v24)
      {
        v50[1] = v61;
        v25 = v61 + 32;
        v26 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1B9F68124(v25, &v57);
          v52[0] = v57;
          v52[1] = v58;
          v53 = v59;
          if (*(&v58 + 1))
          {
            sub_1B9F1134C(v52, v54);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v60 = v26;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v26 = sub_1BA27EFB4(0, v26[2] + 1, 1, v26);
              v60 = v26;
            }

            v29 = v26[2];
            v28 = v26[3];
            if (v29 >= v28 >> 1)
            {
              v26 = sub_1BA27EFB4((v28 > 1), v29 + 1, 1, v26);
              v60 = v26;
            }

            v30 = v55;
            v31 = v56;
            v32 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
            v33 = MEMORY[0x1EEE9AC00](v32);
            v35 = v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v36 + 16))(v35, v33);
            sub_1B9F1C4F4(v29, v35, &v60, v30, v31);
            __swift_destroy_boxed_opaque_existential_1(v54);
          }

          else
          {
            sub_1B9F43B68(v52, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }

      else
      {

        v26 = MEMORY[0x1E69E7CC0];
      }

      sub_1B9F1C048(0, &qword_1EDC5DC90);
      v45 = swift_allocObject();
      *(v45 + 16) = v51;
      v46 = sub_1B9FE4F98(v26);

      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
      *(v45 + 32) = 0;
      *(v45 + 40) = 0;
      *(v45 + 48) = v46;

      v48 = Array<A>.identifierToIndexDict()(v47);

      *(v45 + 56) = v48;
      *(v45 + 64) = 0xD000000000000014;
      *(v45 + 72) = 0x80000001BA4E5030;
      v49 = MEMORY[0x1E69A3348];
      sub_1B9F43B68(v62, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      sub_1B9F43B68(&v63, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v49);
      __swift_destroy_boxed_opaque_existential_1(v66);
      return v45;
    }
  }

  else
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
  }

  sub_1B9F43B68(&v63, &unk_1EBBEA890, qword_1EDC63A78, &protocol descriptor for SummaryProfileHeaderProviding);
  sub_1BA4A3D88();
  v37 = sub_1BA4A3E88();
  v38 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v66[0] = v40;
    *v39 = 136315138;
    v41 = sub_1BA4A85D8();
    v43 = sub_1B9F0B82C(v41, v42, v66);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1B9F07000, v37, v38, "[%s] Could not find the header provider to create a profile header", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1BFAF43A0](v40, -1, -1);
    MEMORY[0x1BFAF43A0](v39, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  return MEMORY[0x1E69E7CC0];
}

void sub_1BA03721C()
{
  sub_1B9FF5B00();
  sub_1B9FF5128();
  sub_1B9FF5B34();
  sub_1B9FF5B68();
}

id sub_1BA03724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = sub_1BA4A3EA8();
  v14 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v32[0] = a5;
    v32[1] = a6;
    v32[2] = a7;
    v32[3] = a8;
    v32[4] = a9;
    v17 = type metadata accessor for SingleUserDataDataSource();
    v18 = SnapshotDataSource.contentsAsArray()(v17, &protocol witness table for MutableArrayDataSource);
    sub_1BA038130(v18, &v33);

    if (*(&v34 + 1))
    {
      sub_1B9F1134C(&v33, &v41);
      v19 = *(&v42 + 1);
      v20 = v43;
      __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v21 = (*(v20 + 32))(a2, v19, v20);

      __swift_destroy_boxed_opaque_existential_1(&v41);
      return v21;
    }

    sub_1B9F43B68(&v33, &unk_1EBBEA890, qword_1EDC63A78, &protocol descriptor for SummaryProfileHeaderProviding);
  }

  sub_1BA4A3D88();
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v41 = v26;
    *v25 = 136315138;
    v27 = sub_1BA4A85D8();
    v29 = sub_1B9F0B82C(v27, v28, &v41);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] Could not find the header provider to create a profile header", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  (*(v14 + 8))(v16, v31);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v45 = xmmword_1EDC6D3C8;
  v46 = unk_1EDC6D3D8;
  v47 = xmmword_1EDC6D3E8;
  v48 = unk_1EDC6D3F8;
  v41 = xmmword_1EDC6D388;
  v42 = xmmword_1EDC6D398;
  v43 = xmmword_1EDC6D3A8;
  v44 = xmmword_1EDC6D3B8;
  sub_1BA0117AC();
  v37 = xmmword_1EDC6D3C8;
  v38 = unk_1EDC6D3D8;
  v39 = xmmword_1EDC6D3E8;
  v40 = unk_1EDC6D3F8;
  v33 = xmmword_1EDC6D388;
  v34 = xmmword_1EDC6D398;
  v35 = xmmword_1EDC6D3A8;
  v36 = xmmword_1EDC6D3B8;
  sub_1B9F1D9A4(&v41, v32);
  return sub_1B9F293A8(&v33);
}

char *sub_1BA03759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CompoundSectionedDataSource();
  sub_1B9F1DEA0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  swift_unknownObjectRetain();
  v9 = CompoundSectionedDataSource.__allocating_init(_:)(inited);
  v10 = objc_allocWithZone(type metadata accessor for AlertStackCompoundCollectionViewController()) + OBJC_IVAR____TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController_showAllAlertsDataSource;
  *v10 = a3;
  v10[1] = a4;
  swift_unknownObjectRetain();
  return CompoundDataSourceCollectionViewController.init(dataSource:)(v9);
}

uint64_t sub_1BA037658(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A6F38();
  v7 = v6;
  v8 = sub_1BA4A1D78();
  v9 = sub_1BA4A1D68();

  if (v9)
  {

    sub_1B9F0A534(a2, &v47);
    v10 = [a1 profileIdentifier];
    v11 = type metadata accessor for NoticesDataSource();
    v12 = objc_allocWithZone(v11);
    __swift_project_boxed_opaque_existential_1(&v47, v49);
    v13 = sub_1BA4A1B68();
    v14 = sub_1BA4A7578();

    v15 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v14);
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_1B9F0A534(a2, &v47);
    v15;
    v16 = [a1 profileIdentifier];
    v17 = objc_allocWithZone(v11);
    __swift_project_boxed_opaque_existential_1(&v47, v49);
    v18 = sub_1BA4A1B68();
    v19 = sub_1BA4A7578();

    v20 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v19);
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    if (!v6)
    {
      return 0;
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v21 = sub_1BA4A1B68();
    v22 = sub_1BA4A6F38();
    v23 = type metadata accessor for SharedProfileNoticesDataSource();
    v24 = objc_allocWithZone(v23);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = sub_1BA26C5A4(v21, v22, MEMORY[0x1E69E7CC0]);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v26;
    v27 = sub_1BA4A1B68();
    v28 = sub_1BA4A6F38();
    v29 = objc_allocWithZone(v23);
    v20 = sub_1BA26C5A4(v27, v28, v25);
  }

  ObjectType = swift_getObjectType();
  v31 = off_1F3800AF8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v32 = v31();
  [v32 registerObserver_];

  v33 = SnapshotDataSource.numberOfSections.getter(ObjectType, &protocol witness table for FetchedResultsControllerDataSource<A>);
  swift_unknownObjectRelease();
  if (v33 >= 1 && sub_1BA03575C())
  {
    v35 = v34;
    v36 = swift_getObjectType();
    (*(v35 + 8))(v36, v35);
    swift_unknownObjectRelease();
  }

  if (qword_1EBBE83F0 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBBECB08;
  v37 = unk_1EBBECB10;
  v39 = qword_1EDC5E838;

  if (v39 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDC5E840;
  v40 = *algn_1EDC5E848;
  v42 = swift_allocObject();
  *(v42 + 16) = a1;
  *&v47 = v38;
  *(&v47 + 1) = v37;
  v48 = v41;
  v49 = v40;
  v50 = sub_1BA0392BC;
  v51 = v42;

  v43 = a1;
  v44 = SnapshotDataSource.asCardStack(config:showAllDataSource:)(&v47, v20, &protocol witness table for FetchedResultsControllerDataSource<A>, ObjectType, &protocol witness table for FetchedResultsControllerDataSource<A>);
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  v45 = v50;

  sub_1B9F0E310(v45);
  return v44;
}

uint64_t sub_1BA037AC8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1BA4A7AA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  sub_1BA037C58(a1, a2, a3, a4);
  (*(*v5 + 760))();
  sub_1BA4A4DA8();
  (*(v11 + 8))(v13, v10);
  result = sub_1BA03575C();
  if (result)
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BA037C58(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6F88();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = a1;
    v16 = v15;
    v34 = swift_slowAlloc();
    v35 = v9;
    aBlock[0] = v34;
    *v16 = 136315394;
    v17 = sub_1BA4A85D8();
    v19 = v10;
    v20 = a4;
    v21 = sub_1B9F0B82C(v17, v18, aBlock);

    *(v16 + 4) = v21;
    a4 = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1B9F0B82C(v33, a2, aBlock);
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] snapshotDidChange for %s", v16, 0x16u);
    v22 = v34;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v19 + 8))(v12, v35);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v23 = *(v5 + *(*v5 + 520));
  v24 = *(v5 + qword_1EDC64EB0);
  v25 = *(v5 + qword_1EDC64EB0 + 8);
  v26 = *(v5 + qword_1EDC64EB0 + 16);
  v27 = *(v5 + qword_1EDC84BB8);
  v28 = sub_1B9F17C00(v27, v23, v24, v25, v26);

  sub_1BA0E7F10(v28, 1);

  swift_beginAccess();
  v29 = v5[2];
  v30 = swift_allocObject();
  *(v30 + 16) = v5;
  *(v30 + 24) = a4 & 1;
  aBlock[4] = sub_1BA03922C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_9;
  v31 = _Block_copy(aBlock);
  v32 = v29;

  [v32 notifyObservers_];
  _Block_release(v31);
}

uint64_t sub_1BA037FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;
  sub_1BA4A45C8();

  sub_1BA037AC8(v11, v13, v10, a5);

  return (*(v8 + 8))(v10, v7);
}

void sub_1BA038130(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = *(*v2 + 600);
  v42 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v31 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v31 - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a1 + 32;
    v16 = (v11 + 56);
    v39 = (v10 + 8);
    v38 = (v11 + 32);
    v17 = qword_1EDC63A78;
    v18 = &protocol descriptor for SummaryProfileHeaderProviding;
    v32 = a1 + 32;
    v33 = v13;
    v36 = v6;
    v37 = (v11 + 56);
    while (1)
    {
      v19 = *(v15 + 48 * v14 + 16);
      v44 = *(v19 + 16);
      if (v44)
      {
        break;
      }

LABEL_4:
      if (++v14 == v13)
      {
        goto LABEL_14;
      }
    }

    v35 = v14;
    v20 = v19 + 32;

    v21 = 0;
    v43 = v19;
    while (v21 < *(v19 + 16))
    {
      sub_1B9F0A534(v20, v45);
      sub_1B9F0D9AC(0, &qword_1EDC6AD50);
      v22 = swift_dynamicCast();
      v23 = *v16;
      if (v22)
      {
        v23(v6, 0, 1, v4);
        v24 = *v38;
        v25 = v18;
        v26 = v17;
        v27 = v4;
        v28 = v40;
        (*v38)(v40, v6, v27);
        v29 = v28;
        v4 = v27;
        v17 = v26;
        v18 = v25;
        v24(v41, v29, v4);
        sub_1B9F0D9AC(0, v17);
        if (swift_dynamicCast())
        {

          sub_1B9F1134C(v45, v34);
          return;
        }

        v46 = 0;
        memset(v45, 0, sizeof(v45));
        sub_1B9F43B68(v45, &unk_1EBBEA890, v17, v25);
        v6 = v36;
        v16 = v37;
        v19 = v43;
      }

      else
      {
        v23(v6, 1, 1, v4);
        (*v39)(v6, v42);
      }

      ++v21;
      v20 += 40;
      if (v44 == v21)
      {

        v15 = v32;
        v13 = v33;
        v14 = v35;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v30 = v34;
    *(v34 + 32) = 0;
    *v30 = 0u;
    v30[1] = 0u;
  }
}

uint64_t sub_1BA038588()
{
  sub_1B9F0E310(*(v0 + qword_1EDC84CF0));

  sub_1B9FAB600(v0 + qword_1EDC84CE8);
}

uint64_t SingleUserDataDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  sub_1B9F0E310(*(v0 + qword_1EDC84CF0));

  sub_1B9FAB600(v0 + qword_1EDC84CE8);

  return v0;
}

uint64_t SingleUserDataDataSource.__deallocating_deinit()
{
  SingleUserDataDataSource.deinit();

  return swift_deallocClassInstance();
}

id sub_1BA0389C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA038A40(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EDC84CE8;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BA038AA4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v30 = a2;
  v10 = *v7;
  v11 = *v7;
  v12 = *(*v7 + 600);
  v13 = sub_1BA4A7AA8();
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  *(v7 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v7 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = (v7 + qword_1EDC84CE0);
  v18 = v28;
  *v17 = v27;
  v17[1] = v18;
  v19 = (v7 + qword_1EDC84CF0);
  *v19 = a5;
  v19[1] = a6;
  sub_1B9F0F1B8(a5);
  v20 = sub_1BA035958();
  sub_1BA4A4DD8();
  (*(*(v12 - 8) + 56))(v16, 1, 1, v12);
  *(v7 + qword_1EDC6A560) = sub_1BA4A4DE8();
  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  *(v21 + 24) = *(v10 + 608);
  *(v21 + 32) = *(v11 + 616);
  *(v21 + 48) = *(v10 + 632);
  *(v21 + 56) = v11;
  v22 = v20;
  v23 = sub_1B9F17A68(v22, sub_1BA0392C4, v21, 0);

  v24 = *(*v23 + 760);

  v24(v25);
  sub_1BA4A4DA8();

  (*(v32 + 8))(v16, v31);
  return v23;
}

unint64_t sub_1BA038E58()
{
  result = qword_1EDC60EB0;
  if (!qword_1EDC60EB0)
  {
    type metadata accessor for EmbeddedDataSourceCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC60EB0);
  }

  return result;
}

void sub_1BA039238()
{
  if (!qword_1EBBEA8A0)
  {
    sub_1B9F0CE9C(255, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA8A0);
    }
  }
}

uint64_t (*sub_1BA039314(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(*(v1 + v2) + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection);
  return sub_1BA039358;
}

uint64_t (*sub_1BA0393B8(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(*(v1 + v2) + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersOnViewWillAppear);
  return sub_1BA0393FC;
}

char *HostedSpecifierViewController.__allocating_init(dataSource:delegate:shouldHaveDoneButton:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  ObjectType = swift_getObjectType();

  return sub_1BA039D18(a1, a3, a4, a5, v11, ObjectType, a2);
}

char *HostedSpecifierViewController.init(dataSource:delegate:shouldHaveDoneButton:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();

  return sub_1BA039D18(a1, a3, a4, a5, v5, ObjectType, a2);
}

id HostedSpecifierViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA039664()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController;
  v2 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] navigationItem];
  [v2 setRightBarButtonItem_];

  v3 = [v0 title];
  if (!v3)
  {
    v4 = [*&v0[v1] title];
    [v0 setTitle_];
    v3 = v4;
  }

  v7 = [v0 navigationItem];
  v5 = [*&v0[v1] navigationItem];
  v6 = [v5 rightBarButtonItem];

  [v7 setRightBarButtonItem_];
}

void sub_1BA039794()
{
  v1 = [v0 title];
  if (!v1)
  {
    v2 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] title];
    [v0 setTitle_];
    v1 = v2;
  }

  v5 = [v0 navigationItem];
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] navigationItem];
  v4 = [v3 rightBarButtonItem];

  [v5 setRightBarButtonItem_];
}

id HostedSpecifierViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HostedSpecifierViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedSpecifierViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA0399B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController];
  sub_1B9FCE184();

  v4 = [v1 title];
  if (!v4)
  {
    v5 = [*&v1[v2] title];
    [v1 setTitle_];
    v4 = v5;
  }

  v8 = [v1 navigationItem];
  v6 = [*&v1[v2] navigationItem];
  v7 = [v6 rightBarButtonItem];

  [v8 setRightBarButtonItem_];
}

Swift::Void __swiftcall HostedSpecifierViewController.viewControllerDidLeaveAdaptiveModal()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 1)
  {
    v3 = OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController;
    v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] navigationItem];
    [v4 setRightBarButtonItem_];

    v5 = [v0 title];
    if (!v5)
    {
      v6 = [*&v0[v3] title];
      [v0 setTitle_];
      v5 = v6;
    }

    v9 = [v0 navigationItem];
    v7 = [*&v0[v3] navigationItem];
    v8 = [v7 rightBarButtonItem];

    [v9 setRightBarButtonItem_];
  }
}

char *sub_1BA039D18(void *a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_allocWithZone(type metadata accessor for SpecifierViewController());
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] = sub_1B9FCF12C(a1, a2, a3, a4, v14, a6, a7);
  v39.receiver = a5;
  v39.super_class = type metadata accessor for HostedSpecifierViewController();
  v15 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController;
  v17 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController];
  v18 = v15;
  v19 = v17;
  [v18 addChildViewController_];
  result = [v18 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = result;
  result = [v19 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  [v21 addSubview_];

  result = [v19 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = result;
  result = [v18 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = result;
  [result bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v23 setFrame_];
  result = [v19 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v33 = result;

  [v33 setAutoresizingMask_];
  [v19 didMoveToParentViewController_];
  v34 = [v18 title];
  if (!v34)
  {
    v35 = [*&v15[v16] title];
    [v18 setTitle_];
    v34 = v35;
  }

  v36 = [v18 navigationItem];
  v37 = [*&v15[v16] navigationItem];
  v38 = [v37 rightBarButtonItem];

  [v36 setRightBarButtonItem_];
  swift_unknownObjectRelease();
  return v18;
}

id sub_1BA03A208()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v17[0] = xmmword_1EDC6D388;
  v17[1] = xmmword_1EDC6D398;
  v17[2] = xmmword_1EDC6D3A8;
  v17[3] = xmmword_1EDC6D3B8;
  v17[4] = xmmword_1EDC6D3C8;
  v17[5] = unk_1EDC6D3D8;
  v17[6] = xmmword_1EDC6D3E8;
  v17[7] = unk_1EDC6D3F8;
  v0 = xmmword_1EDC6D388;
  v1 = xmmword_1EDC6D398;
  v3 = xmmword_1EDC6D3A8;
  v2 = xmmword_1EDC6D3B8;
  v11 = *(&xmmword_1EDC6D3B8 + 8);
  v12 = *(&xmmword_1EDC6D3C8 + 8);
  v13 = qword_1EDC6D3E0;
  sub_1B9F1D9A4(v17, v16);
  sub_1B9F1DA18(*(&v1 + 1), v3, *(&v3 + 1), v2);
  v4 = [objc_opt_self() estimatedDimension_];

  sub_1BA0117AC();
  *&v7 = v0;
  *(&v7 + 1) = v4;
  v8 = v1;
  v9 = 0u;
  v10 = 0u;
  v5 = *(MEMORY[0x1E69DC5C0] + 16);
  v14 = *MEMORY[0x1E69DC5C0];
  v15 = v5;
  return sub_1B9F293A8(&v7);
}

uint64_t sub_1BA03A388()
{
}

uint64_t sub_1BA03A3C8()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA03A498()
{
  sub_1BA03A3C8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfileCategoriesDataSource()
{
  result = qword_1EBBEA8B0;
  if (!qword_1EBBEA8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA03A58C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = [a2 profileIdentifier];
  type metadata accessor for ProfileAvatarDataSource();
  swift_allocObject();
  v9 = ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(v7, v8, sub_1BA03A208, 0, 1);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_profileInformationDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_profileInformationDataSource) = v9;
  v11 = v7;
  v12 = [a2 profileIdentifier];
  v13 = objc_allocWithZone(type metadata accessor for ProfileFetchedCategoriesDataSource());
  v14 = sub_1BA452F28(v11, v12);
  type metadata accessor for NoDataDataSource();
  swift_allocObject();
  v15 = NoDataDataSource.init()();
  sub_1BA03A758();
  swift_allocObject();
  v16 = v14;
  v17 = sub_1BA06413C(v16, v15);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_categoriesDataSource) = v17;
  sub_1B9F1DEA0();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5460;
  *(v18 + 32) = *(v4 + v10);
  *(v18 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v18 + 48) = v17;
  *(v18 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;

  v19 = CompoundSectionedDataSource.init(_:)(v18);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v19;
}

void sub_1BA03A758()
{
  if (!qword_1EBBEA8C0)
  {
    type metadata accessor for ProfileFetchedCategoriesDataSource();
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA8C0);
    }
  }
}

unint64_t sub_1BA03A7DC()
{
  result = qword_1EDC67F10;
  if (!qword_1EDC67F10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC67F10);
  }

  return result;
}

uint64_t sub_1BA03A85C()
{
  v2 = v0;
  v3 = sub_1BA4A64F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F38BF4();
  *v6 = sub_1BA4A7308();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1BA4A6528();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v1 = OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables;
    swift_beginAccess();
    v28[0] = v2;
    v8 = *(v2 + v1);
    if ((v8 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1BA4A7C88();
      sub_1BA4A4D58();
      sub_1B9F3E224(&qword_1EBBE9E88, MEMORY[0x1E695BF10]);
      sub_1BA4A6DA8();
      v10 = v28[7];
      v9 = v28[8];
      v12 = v28[9];
      v11 = v28[10];
      v13 = v28[11];
    }

    else
    {
      v14 = -1 << *(v8 + 32);
      v9 = v8 + 56;
      v12 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v8 + 56);
      swift_bridgeObjectRetain_n();
      v11 = 0;
      v10 = v8;
    }

    v28[1] = v12;
    v17 = (v12 + 64) >> 6;
    if (v10 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v11;
      v19 = v13;
      v20 = v11;
      if (!v13)
      {
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v20 >= v17)
          {
            goto LABEL_19;
          }

          v19 = *(v9 + 8 * v20);
          ++v18;
          if (v19)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

      if (!v22)
      {
        break;
      }

      while (1)
      {
        sub_1BA4A4D48();

        v11 = v20;
        v13 = v21;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v23 = sub_1BA4A7CF8();
        if (v23)
        {
          v28[2] = v23;
          sub_1BA4A4D58();
          swift_dynamicCast();
          v20 = v11;
          v21 = v13;
          if (v28[3])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    sub_1B9F52E48();

    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_24;
    }

    v24 = MEMORY[0x1E69E7CD0];
    v25 = v28[0];
  }

  else
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v27 = sub_1BA4A7CC8();
    v25 = v28[0];
    if (v27)
    {
      v24 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CD0];
    }
  }

  *(v25 + v1) = v24;
}

id PublisherImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id PublisherImageView.init(image:)(void *a1)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v3 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *&v1[OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PublisherImageView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithImage_, a1);

  return v4;
}

id PublisherImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id PublisherImageView.init(image:highlightedImage:)(void *a1, void *a2)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v5 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables] = v5;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for PublisherImageView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithImage_highlightedImage_, a1, a2);

  return v6;
}

id PublisherImageView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PublisherImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v9 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables] = v9;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for PublisherImageView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id PublisherImageView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PublisherImageView.init(coder:)(void *a1)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v3 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *&v1[OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PublisherImageView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id PublisherImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PublisherImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA03B160(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(v4 + 16);
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a1, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v11 = v8;
    swift_setAtReferenceWritableKeyPath();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t dispatch thunk of PublisherImageView.setImagePublisher<A>(_:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t *SnapshotDataSource.withSupplementaryItemProvider(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Supplementary();
  swift_allocObject();
  swift_unknownObjectRetain();

  v6 = sub_1B9F2E2FC(v3, a1, a2);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t Supplementary.identifier.getter()
{
  v0 = sub_1B9F25DF0();

  return v0;
}

uint64_t Supplementary.wrappedDataSource.getter()
{
  sub_1B9F264D0();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA03B4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t Supplementary.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t Supplementary.__deallocating_deinit()
{
  Supplementary.deinit();

  return swift_deallocClassInstance();
}

uint64_t Supplementary<>.registerCells(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

uint64_t Supplementary<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

void sub_1BA03B8FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD20]) init];
  [v0 setForPersonMassUse_];
  v1 = [v0 numberFormatter];
  if (v1)
  {
    v2 = v1;
    [v1 setRoundingMode_];

    qword_1EBC093D8 = v0;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA03B984()
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (*v0)
  {
    result = [objc_opt_self() sharedFormatter];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = [result usesImperialUnits];

    v4 = objc_opt_self();
    if (v3)
    {
      v5 = [v4 inchUnit];
    }

    else
    {
      v5 = [v4 meterUnitWithMetricPrefix_];
    }
  }

  else
  {
    v6[0] = 14;
    if (qword_1EBBE8288 != -1)
    {
      swift_once();
    }

    v5 = [objc_opt_self() unitFromMassFormatterUnit_];
  }

  return v5;
}

void sub_1BA03BAEC(id a1)
{
  if (*v1 == 1)
  {
    v3 = [objc_opt_self() sharedFormatter];
    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    v4 = v3;
    v5 = [objc_opt_self() meterUnitWithMetricPrefix_];
    [a1 doubleValueForUnit_];

    v6 = sub_1BA4A1A08();
    a1 = [v4 localizedStringFromHeightInCentimeters_];

    if (a1)
    {
LABEL_7:
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return;
    }

    __break(1u);
  }

  v7 = [objc_opt_self() sharedFormatter];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [a1 doubleValueForUnit_];

  v10 = sub_1BA4A1A08();
  a1 = [v8 stringFromWeightInKilograms_];

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}