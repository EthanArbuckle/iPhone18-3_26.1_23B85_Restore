uint64_t sub_1D7B9422C(uint64_t a1, char a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v7 = *v4;
  sub_1D7B99A60(0, a3, a4);
  v36 = a2;
  result = sub_1D7D316AC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1D7B944D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7A51A98(0, &qword_1EC9E5D38);
  v33 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B94798(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7A51A98(0, &qword_1EE0BAF20);
  v37 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

char *sub_1D7B94A5C(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7D313BC() + 1) & ~v5;
    do
    {
      sub_1D7D31A8C();

      sub_1D7D303FC();
      v9 = sub_1D7D31ABC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 104 * v3);
        v15 = (v14 + 104 * v6);
        if (v3 != v6 || result >= v15 + 104)
        {
          result = memmove(result, v15, 0x68uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D7B94C10(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7D313BC() + 1) & ~v5;
    while (1)
    {
      sub_1D7D31A8C();

      sub_1D7D303FC();
      v9 = sub_1D7D31ABC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ArticleViewerPage(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D7B94DFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7D313BC() + 1) & ~v5;
    do
    {
      sub_1D7D31A8C();

      sub_1D7D303FC();
      v11 = sub_1D7D31ABC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D7B94FB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7D313BC() + 1) & ~v5;
    while (1)
    {
      sub_1D7D31A8C();

      sub_1D7D303FC();
      v9 = sub_1D7D31ABC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      if (v3 < v6 || *(a2 + 56) + 224 * v3 >= *(a2 + 56) + 224 * v6 + 224)
      {
        sub_1D7B98EA4();
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        sub_1D7B98EA4();
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v14 = *(a2 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v16;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D7B951A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7D313BC() + 1) & ~v5;
    do
    {
      sub_1D7D31A8C();

      sub_1D7D303FC();
      v10 = sub_1D7D31ABC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D7B95354(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7D313BC() + 1) & ~v5;
    do
    {
      sub_1D7D31A8C();

      sub_1D7D303FC();
      v9 = sub_1D7D31ABC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D7B95504(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7D313BC() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + v6);
      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v10);
      result = sub_1D7D31ABC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D7B95698(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D7A18FFC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D7B969A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D7B90E30(v16, a4 & 1);
    v11 = sub_1D7A18FFC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D7D31A2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 104 * v11;

    return sub_1D7B99B14(a1, v22);
  }

  else
  {
    sub_1D7B966E0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D7B957E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D7A18FFC(a2, a3);
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
      sub_1D7B910F8(v16, a4 & 1);
      v11 = sub_1D7A18FFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D7D31A2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D7B96B4C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1D7B9595C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D7A18FFC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ArticleViewerPage(0);
      return sub_1D7B99210(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ArticleViewerPage);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D7B96E54();
    goto LABEL_7;
  }

  sub_1D7B916D4(v15, a4 & 1);
  v22 = sub_1D7A18FFC(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D7D31A2C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D7B96750(v12, a2, a3, a1, v18);
}

uint64_t sub_1D7B95AC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D7A18FFC(a2, a3);
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
      sub_1D7B91D50(v16, a4 & 1, &qword_1EC9E2D38, &qword_1EE0BECC0);
      v11 = sub_1D7A18FFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1D7D31A2C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1D7B972B0(&qword_1EC9E2D38, &qword_1EE0BECC0);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_1D7B95C74(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D7A18FFC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D7B970D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D7B91A5C(v16, a4 & 1);
    v11 = sub_1D7A18FFC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D7D31A2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D799D69C(a1, v22);
  }

  else
  {
    sub_1D7B967FC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D7B95E44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D7A18FFC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D7B97588();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D7B9229C(v16, a4 & 1);
    v11 = sub_1D7A18FFC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1D7D31A2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    return sub_1D7B99210(a1, v21[7] + 224 * v11, sub_1D7B98EA4);
  }

  sub_1D7B9686C(v11, a2, a3, a1, v21);
}

_OWORD *sub_1D7B95F94(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D7A18FFC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D7B97E3C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D7B93140(v16, a4 & 1);
    v11 = sub_1D7A18FFC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D7D31A2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D7A51B58(a1, v22);
  }

  else
  {
    sub_1D7B968F0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D7B96104(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1D7A18FFC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1D7B9422C(v20, a4 & 1, a5, a6);
      v15 = sub_1D7A18FFC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1D7D31A2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1D7B98868(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

unint64_t sub_1D7B962A4(unsigned __int8 a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1D7A5B954(a1);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a2 & 1) == 0)
  {
    v23 = result;
    sub_1D7B982F8();
    result = v23;
    goto LABEL_8;
  }

  sub_1D7B93958(v20, a2 & 1);
  result = sub_1D7A5B954(a1);
  if ((v21 & 1) == (v24 & 1))
  {
LABEL_8:
    v25 = *v7;
    if (v21)
    {
      v26 = (v25[7] + 32 * result);
      *v26 = a3;
      v26[1] = a4;
      v26[2] = a5;
      v26[3] = a6;
      return result;
    }

    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + result) = a1;
    v27 = (v25[7] + 32 * result);
    *v27 = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

unint64_t sub_1D7B963F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D7A5B954(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D7B93BF4(v16, a4 & 1);
      result = sub_1D7A5B954(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D7D31A2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D7B98460();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7B96550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D7A18FFC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D7B944D0(v18, a5 & 1);
      v13 = sub_1D7A18FFC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D7D31A2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D7B989D4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return swift_unknownObjectRelease();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1D7B966E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D79D7CBC(a4, a5[7] + 104 * a1);
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

uint64_t sub_1D7B96750(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ArticleViewerPage(0);
  result = sub_1D7B99184(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ArticleViewerPage);
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

uint64_t sub_1D7B967FC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D799D69C(a4, a5[7] + 40 * a1);
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

uint64_t sub_1D7B9686C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D7B99184(a4, a5[7] + 224 * a1, sub_1D7B98EA4);
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

_OWORD *sub_1D7B968F0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D7A51B58(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1D7B9695C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_1D7B969A0()
{
  v1 = v0;
  sub_1D7A51A98(0, &qword_1EC9E5D10);
  v2 = *v0;
  v3 = sub_1D7D3169C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 104 * v16;
      sub_1D79D7DA4(*(v2 + 56) + 104 * v16, v24);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      sub_1D79D7CBC(v24, *(v4 + 56) + v21);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1D7B96B4C()
{
  v1 = v0;
  sub_1D7B999C8();
  v2 = *v0;
  v3 = sub_1D7D3169C();
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

void *sub_1D7B96CB0()
{
  v1 = v0;
  sub_1D7A51A98(0, &qword_1EE0BEBD0);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1D79F5B54(&v32, &v31);
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

void *sub_1D7B96E54()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleViewerPage(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B99A60(0, &qword_1EE0BEBF8, type metadata accessor for ArticleViewerPage);
  v5 = *v0;
  v6 = sub_1D7D3169C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1D7B98D34(*(v5 + 56) + v27, v31, type metadata accessor for ArticleViewerPage);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1D7B99184(v26, *(v28 + 56) + v27, type metadata accessor for ArticleViewerPage);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D7B970D8()
{
  v1 = v0;
  sub_1D7A514F0();
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v22 = 40 * v17;
        sub_1D799CC84(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D799D69C(v25, *(v4 + 56) + v22);
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

id sub_1D7B972B0(unint64_t *a1, unint64_t *a2)
{
  v3 = v2;
  sub_1D7B99B70(0, a1, a2);
  v4 = *v2;
  v5 = sub_1D7D3169C();
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

void *sub_1D7B9741C()
{
  v1 = v0;
  sub_1D7A51A98(0, &qword_1EE0BAF18);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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

void *sub_1D7B97588()
{
  v1 = v0;
  sub_1D7B99A60(0, &qword_1EE0BEC00, sub_1D7B98EA4);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v22 = 224 * v17;
        sub_1D7B98D34(*(v2 + 56) + 224 * v17, v25, sub_1D7B98EA4);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D7B99184(v25, *(v4 + 56) + v22, sub_1D7B98EA4);
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

void *sub_1D7B97768()
{
  v1 = v0;
  sub_1D7B99A60(0, &qword_1EC9E5D20, sub_1D79F5D34);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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

        result = swift_unknownObjectRetain();
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

id sub_1D7B978E8()
{
  v1 = v0;
  sub_1D7B99BD8();
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v19;
        v18 = v19;
        result = *(&v19 + 1);
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

void *sub_1D7B97A58()
{
  v1 = v0;
  v2 = _s15ArticleProviderOMa();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B99A60(0, &qword_1EE0BEBE8, _s15ArticleProviderOMa);
  v5 = *v0;
  v6 = sub_1D7D3169C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1D7B98D34(*(v5 + 56) + v27, v31, _s15ArticleProviderOMa);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1D7B99184(v26, *(v28 + 56) + v27, _s15ArticleProviderOMa);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D7B97CC0()
{
  v1 = v0;
  sub_1D7A51A98(0, &qword_1EC9E2D48);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1D7B97E3C()
{
  v1 = v0;
  sub_1D7A51A98(0, &qword_1EE0BEB98);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        sub_1D79FBED0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D7A51B58(v25, (*(v4 + 56) + v22));
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

void *sub_1D7B97FE8()
{
  v1 = v0;
  sub_1D7B99D20(0, &qword_1EE0BAF30, sub_1D7A51CBC);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1D7B98174()
{
  v1 = v0;
  sub_1D7B99CBC();
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;

        result = swift_unknownObjectRetain();
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

void *sub_1D7B982F8()
{
  v1 = v0;
  sub_1D7B99D20(0, &qword_1EE0BAF28, type metadata accessor for CGRect);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1D7B98460()
{
  v1 = v0;
  sub_1D7B99D90();
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
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

char *sub_1D7B985B8()
{
  v1 = v0;
  v36 = sub_1D7D2E24C();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B99A60(0, &qword_1EE0BEBC8, MEMORY[0x1E69B5A00]);
  v4 = *v0;
  v5 = sub_1D7D3169C();
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

void *sub_1D7B98868(unint64_t *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  sub_1D7B99A60(0, a1, a2);
  v4 = *v2;
  v5 = sub_1D7D3169C();
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

void *sub_1D7B989D4()
{
  v1 = v0;
  sub_1D7A51A98(0, &qword_1EC9E5D38);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        swift_unknownObjectRetain();
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

void *sub_1D7B98B64()
{
  v1 = v0;
  sub_1D7A51A98(0, &qword_1EE0BAF20);
  v2 = *v0;
  v3 = sub_1D7D3169C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_1D7B98D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B98D9C(uint64_t a1, uint64_t a2)
{
  sub_1D799C5B4(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B98E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D7B98EA4()
{
  if (!qword_1EE0CA920)
  {
    sub_1D798C468(255, qword_1EE0C9190);
    v0 = type metadata accessor for FeatureState();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CA920);
    }
  }
}

uint64_t sub_1D7B98F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D799C5B4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7B98F98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7B99AC4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7B99008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7B99068()
{
  if (!qword_1EE0C9188)
  {
    sub_1D798C468(255, qword_1EE0C9190);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C9188);
    }
  }
}

uint64_t sub_1D7B99184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B99210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D7B99278()
{
  if (!qword_1EC9E5D08)
  {
    sub_1D798C468(255, &qword_1EE0C0E18);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5D08);
    }
  }
}

uint64_t type metadata accessor for ArticleViewerFeatureManager()
{
  result = qword_1EE0C5488;
  if (!qword_1EE0C5488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7B994B4()
{
  sub_1D799C5B4(319, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7B995C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7B99638(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 184;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1D7B99774(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 184;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF48)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF48)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF48)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 184);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 168) = 0u;
      *(v19 + 152) = 0u;
      *(v19 + 136) = 0u;
      *(v19 + 120) = 0u;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 48) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

void sub_1D7B9995C()
{
  if (!qword_1EE0C4A38)
  {
    sub_1D798C468(255, &qword_1EE0C4A40);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C4A38);
    }
  }
}

void sub_1D7B999C8()
{
  if (!qword_1EE0BEBC0)
  {
    sub_1D799C5B4(255, &unk_1EE0BF3D0, type metadata accessor for AdComponentIntegrator.Item, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEBC0);
    }
  }
}

void sub_1D7B99A60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D316CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7B99AC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7B99B70(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D7992EFC(255, a3);
    v4 = sub_1D7D316CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7B99BD8()
{
  if (!qword_1EC9E5D28)
  {
    type metadata accessor for NUArticleMessage(255);
    sub_1D7B99C74(&qword_1EC9E5D30, type metadata accessor for NUArticleMessage);
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5D28);
    }
  }
}

uint64_t sub_1D7B99C74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7B99CBC()
{
  if (!qword_1EE0BAF38)
  {
    sub_1D7A51D28();
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BAF38);
    }
  }
}

void sub_1D7B99D20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D7A51D28();
    v4 = sub_1D7D316CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7B99D90()
{
  if (!qword_1EE0BAF40)
  {
    sub_1D798C468(255, &unk_1EE0BBD80);
    sub_1D7A51D28();
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BAF40);
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7B9A10C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7B9A1C0()
{
  sub_1D7D294BC();
  sub_1D7AE6C50();
  v0 = sub_1D7D30E1C();
  sub_1D7D2BA4C();
  sub_1D7D293BC();

  v1 = sub_1D7D2934C();
  sub_1D7D293EC();
}

uint64_t sub_1D7B9A2F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 88);
  v4 = *(v3 + 40);
  v5 = *(*a2 + 80);
  v6 = swift_unknownObjectRetain();
  v4(v6, v2, v5, v3);
  swift_unknownObjectRelease();
  sub_1D7B9A7E0();
  sub_1D7B9A85C();
  v7 = sub_1D7D2A6BC();

  return v7;
}

uint64_t sub_1D7B9A408(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 88);
  v3 = *(v2 + 48);
  v4 = *(*a2 + 80);
  v5 = swift_unknownObjectRetain();
  v3(v5, &unk_1F529AC70, v4, v2);
  swift_unknownObjectRelease();
  sub_1D7B9A7E0();
  sub_1D7B9A85C();
  sub_1D7D2A6BC();
}

uint64_t sub_1D7B9A548(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(*(v1 + *(*v1 + 120)) + 16);
    v5 = off_1F529F198;
    type metadata accessor for ReportConcernEventHandler();
    swift_unknownObjectRetain();
    v5(v1, &off_1F52A83D0, a1, v4);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_1D7B9A630()
{
  v1 = *v0;
  sub_1D79C92AC((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D7B9A6D4()
{
  sub_1D7B9A630();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B9A750()
{
  v0 = off_1F52B1158[0];
  type metadata accessor for ReportConcernDataManager();
  return v0();
}

void sub_1D7B9A7E0()
{
  if (!qword_1EC9E5DD0)
  {
    sub_1D7A26D5C();
    sub_1D7A26E88();
    v0 = sub_1D7D2A6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5DD0);
    }
  }
}

unint64_t sub_1D7B9A85C()
{
  result = qword_1EC9E5DD8;
  if (!qword_1EC9E5DD8)
  {
    sub_1D7B9A7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5DD8);
  }

  return result;
}

uint64_t sub_1D7B9AEF0(void *a1)
{
  v2 = v1;
  if ([a1 isAIGenerated])
  {
    v4 = *(v1 + 80);
    v5 = __swift_project_boxed_opaque_existential_1((v1 + 56), v4);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5, v5);
    v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1D7D2F9BC();
    (*(v6 + 8))(v9, v4);
    if (v10)
    {
      v11 = [*(v2 + 96) possiblyUnfetchedAppConfiguration];
      if ([v11 respondsToSelector_])
      {
        v12 = [v11 aiAttributionArticleString];
        swift_unknownObjectRelease();
        if (!v12)
        {
          goto LABEL_14;
        }

        v13 = sub_1D7D3034C();
        v15 = v14;

        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        swift_unknownObjectRelease();
        v16 = 0;
        v15 = 0xE000000000000000;
      }

      if ((v15 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(v15) & 0xF;
      }

      if (v16)
      {
        __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
        type metadata accessor for AIHeaderViewController();
        result = sub_1D7D28D1C();
        if (result)
        {
          v18 = result;

          v19 = [a1 sourceName];
          if (v19)
          {
            v20 = v19;
            v21 = sub_1D7D3034C();
            v23 = v22;
          }

          else
          {
            v21 = 0;
            v23 = 0;
          }

          v27 = (v18 + OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_channelName);
          *v27 = v21;
          v27[1] = v23;

          sub_1D7B9B270();
          result = swift_allocObject();
          *(result + 16) = xmmword_1D7D3B4D0;
          *(result + 32) = v18;
          v26 = &off_1F529C470;
          goto LABEL_20;
        }

LABEL_23:
        __break(1u);
        return result;
      }
    }
  }

LABEL_14:
  if (![a1 isSponsored])
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7B9B270();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7D3B4D0;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for SponsoredHeaderViewController();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v25 = result;
  result = v24;
  *(v24 + 32) = v25;
  v26 = &off_1F52A4390;
LABEL_20:
  *(result + 40) = v26;
  return result;
}

uint64_t sub_1D7B9B204()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7B9B270()
{
  if (!qword_1EE0BAE70)
  {
    sub_1D7B08E0C();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BAE70);
    }
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D7B9B2F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7B9B344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D7B9B3A8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1D7B9B3F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7B9B43C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7B9B4A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v14[0] = a4;
  v15 = a5;
  sub_1D7B9D614(0, &qword_1EC9E5E18, sub_1D7B9D5C0, &_s4RuleV20ScoringConfigurationV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B9D5C0();
  sub_1D7D31B1C();
  v17 = 0;
  v12 = v14[1];
  sub_1D7D3183C();
  if (!v12)
  {
    v16 = 1;
    sub_1D7D3183C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7B9B64C()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0x6168706C61;
  }
}

uint64_t sub_1D7B9B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D7D755B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

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

uint64_t sub_1D7B9B768(uint64_t a1)
{
  v2 = sub_1D7B9D5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7B9B7A4(uint64_t a1)
{
  v2 = sub_1D7B9D5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7B9B7E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7B9C524(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1D7B9B858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (v2 & 1 | ((v3 & 1) == 0))
    {
      return v3 & v4;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if ((v3 | v2))
    {
      return (v3 ^ 1) & v4;
    }
  }

  return (*(a1 + 16) == *(a2 + 16)) & ~v4;
}

uint64_t sub_1D7B9B8D0()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7B9BA10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7B9C71C();
  *a1 = result;
  return result;
}

void sub_1D7B9BA40(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00644972656469;
  v4 = 0x766F725061746164;
  v5 = 0xEE006874676E654CLL;
  v6 = 0x656C7469546E696DLL;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001D7D67410;
  }

  v7 = 0xED0000736E6F6974;
  v8 = 0xD000000000000014;
  if (v2 == 3)
  {
    v8 = 0x704F7265746C6966;
  }

  else
  {
    v7 = 0x80000001D7D673E0;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7942726564726FLL;
  if (v2 != 1)
  {
    v9 = 0x74756F656D6974;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1D7B9BB48()
{
  v1 = *v0;
  v2 = 0x766F725061746164;
  v3 = 0x656C7469546E696DLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0x704F7265746C6966;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7942726564726FLL;
  if (v1 != 1)
  {
    v5 = 0x74756F656D6974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7B9BC4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7B9C71C();
  *a1 = result;
  return result;
}

uint64_t sub_1D7B9BC80(uint64_t a1)
{
  v2 = sub_1D7B9CEE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7B9BCBC(uint64_t a1)
{
  v2 = sub_1D7B9CEE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7B9BCF8(void *a1)
{
  v3 = v1;
  sub_1D7B9D614(0, &qword_1EE0BEAC8, sub_1D7B9CEE4, &_s4RuleV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B9CEE4();
  sub_1D7D31B1C();
  if (*(*v3 + 16) == 1)
  {
    LOBYTE(v14[0]) = 0;

    sub_1D7D3188C();
    if (v2)
    {
      (*(v7 + 8))(v10, v6);
    }

    goto LABEL_7;
  }

  *&v14[0] = *v3;
  v15 = 0;
  sub_1D79AAE8C(0, qword_1EE0BF240, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D7B9D0E4(&qword_1EE0BB0D0);
  sub_1D7D318BC();
  if (!v2)
  {
LABEL_7:
    v12 = *(v3 + 8);
    if (v12 > 2u || *(v3 + 8))
    {
      v13 = sub_1D7D3197C();

      if ((v13 & 1) == 0)
      {
        LOBYTE(v14[0]) = v12;
        v15 = 1;
        sub_1D7B9D168();
        sub_1D7D318BC();
      }
    }

    else
    {
    }

    LOBYTE(v14[0]) = 2;
    sub_1D7D3184C();
    *&v14[0] = *(v3 + 32);
    v15 = 3;
    sub_1D79AAE8C(0, &unk_1EE0BF370, &_s12FilterOptionON, MEMORY[0x1E69E62F8]);
    sub_1D7B9D1BC(&qword_1EE0BF368, sub_1D7B9D24C);
    sub_1D7D3186C();
    v14[0] = *(v3 + 40);
    *(v14 + 10) = *(v3 + 50);
    v15 = 4;
    sub_1D7B9D2A0();
    sub_1D7D3186C();
    LOBYTE(v14[0]) = 5;
    sub_1D7D3184C();
    LOBYTE(v14[0]) = 6;
    sub_1D7D3184C();
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_1D7B9C1B8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7B9C768(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1D7B9C230(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1D7B9C434(v11, v13) & 1;
}

uint64_t sub_1D7B9C29C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D31B0C();
  if (*v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_1D7B9D034();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_1D7B9D088();
    sub_1D7A25844();
  }

  sub_1D7D319BC();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

__n128 sub_1D7B9C3BC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7B9CC50(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1D7B9C434(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = (*(a1 + 16) == *(a2 + 16)) & ~v4;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = (v5 | v6) == 0;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v7 = sub_1D7A59288(*(a1 + 32), v6);
  }

  v9 = *(a2 + 65);
  if ((*(a1 + 65) & 1) == 0)
  {
    if (*(a2 + 65))
    {
LABEL_10:
      v9 = 0;
      goto LABEL_18;
    }

    if (*(a1 + 48))
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if ((*(a2 + 48) & 1) != 0 || *(a1 + 40) != *(a2 + 40))
      {
        goto LABEL_18;
      }
    }

    v9 = (*(a1 + 56) == *(a2 + 56)) & ~*(a2 + 64);
    if (*(a1 + 64))
    {
      v9 = *(a2 + 64);
    }
  }

LABEL_18:
  if (v4)
  {
    v10 = v7 & v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D7B9C524(void *a1)
{
  sub_1D7B9D614(0, &qword_1EC9E5E08, sub_1D7B9D5C0, &_s4RuleV20ScoringConfigurationV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D7B9D5C0();
  sub_1D7D31AFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15[31] = 0;
    v9 = sub_1D7D3175C();
    v11 = v10;
    v15[30] = 1;
    sub_1D7D3175C();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15[24] = v11 & 1;
    v15[8] = v14 & 1;
  }

  return v9;
}

uint64_t sub_1D7B9C71C()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D7B9C768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1D7B9D614(0, &qword_1EE0BEB58, sub_1D7B9CEE4, &_s4RuleV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B9CEE4();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v10 = v30;
  sub_1D79AAE8C(0, qword_1EE0BF240, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v38 = 0;
  sub_1D7B9D0E4(&qword_1EE0BF238);
  sub_1D7D3178C();
  v12 = v31;
  v13 = v6;
  v14 = v10;
  if (!v31)
  {
    sub_1D79AAE8C(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7D3B4D0;
    LOBYTE(v31) = 0;
    *(v12 + 32) = sub_1D7D317AC();
    *(v12 + 40) = v15;
  }

  v38 = 1;
  sub_1D7B9CF38();
  sub_1D7D3173C();
  v16 = v31;
  if (v31 == 6)
  {
    v16 = 0;
  }

  v28 = v16;
  v38 = 2;
  sub_1D7D3173C();
  v30 = v31;
  v37 = BYTE8(v31);
  sub_1D79AAE8C(0, &unk_1EE0BF370, &_s12FilterOptionON, MEMORY[0x1E69E62F8]);
  v38 = 3;
  sub_1D7B9D1BC(&qword_1EE0BF360, sub_1D7B9CF8C);
  sub_1D7D3173C();
  v27 = v31;
  v38 = 4;
  sub_1D7B9CFE0();
  sub_1D7D3173C();
  v26 = v31;
  v25 = v32;
  v24 = v33;
  v39 = v34;
  v38 = 5;
  sub_1D7D3173C();
  v23 = v31;
  v36 = BYTE8(v31);
  v38 = 6;
  sub_1D7D3173C();
  (*(v13 + 8))(v9, v5);
  v17 = v31;
  v18 = BYTE8(v31);
  v35 = BYTE8(v31);
  v19 = v37;
  v20 = v39;
  v21 = v36;
  result = __swift_destroy_boxed_opaque_existential_1(v29);
  *v14 = v12;
  *(v14 + 8) = v28;
  *(v14 + 16) = v30;
  *(v14 + 24) = v19;
  *(v14 + 32) = v27;
  *(v14 + 40) = v26;
  *(v14 + 56) = v25;
  *(v14 + 64) = v24;
  *(v14 + 65) = v20;
  *(v14 + 72) = v23;
  *(v14 + 80) = v21;
  *(v14 + 88) = v17;
  *(v14 + 96) = v18;
  return result;
}

uint64_t sub_1D7B9CC50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1D7B9D614(0, &qword_1EE0BEB58, sub_1D7B9CEE4, &_s4RuleV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B9CEE4();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v25;
  v12 = *(sub_1D7D317EC() + 16);

  if (v12)
  {
    sub_1D799CC84(a1, v22);
    sub_1D7B9C768(v22, v23);
    v20 = v23[1];
    v21 = v23[0];
    v18 = v23[3];
    v19 = v23[2];
    v16 = v23[5];
    v17 = v23[4];
    LOBYTE(v12) = v24;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v13 = v20;
  *v11 = v21;
  *(v11 + 16) = v13;
  v14 = v18;
  *(v11 + 32) = v19;
  *(v11 + 48) = v14;
  v15 = v16;
  *(v11 + 64) = v17;
  *(v11 + 80) = v15;
  *(v11 + 96) = v12;
  return result;
}

unint64_t sub_1D7B9CEE4()
{
  result = qword_1EE0C5CD0;
  if (!qword_1EE0C5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CD0);
  }

  return result;
}

unint64_t sub_1D7B9CF38()
{
  result = qword_1EE0C5D10;
  if (!qword_1EE0C5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D10);
  }

  return result;
}

unint64_t sub_1D7B9CF8C()
{
  result = qword_1EE0C5D38;
  if (!qword_1EE0C5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D38);
  }

  return result;
}

unint64_t sub_1D7B9CFE0()
{
  result = qword_1EE0C5CB0;
  if (!qword_1EE0C5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CB0);
  }

  return result;
}

unint64_t sub_1D7B9D034()
{
  result = qword_1EE0C5CA8;
  if (!qword_1EE0C5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CA8);
  }

  return result;
}

void sub_1D7B9D088()
{
  if (!qword_1EE0BF4C0)
  {
    v0 = sub_1D7D302AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF4C0);
    }
  }
}

uint64_t sub_1D7B9D0E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D79AAE8C(255, qword_1EE0BF240, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7B9D168()
{
  result = qword_1EE0C5D20;
  if (!qword_1EE0C5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D20);
  }

  return result;
}

uint64_t sub_1D7B9D1BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D79AAE8C(255, &unk_1EE0BF370, &_s12FilterOptionON, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7B9D24C()
{
  result = qword_1EE0C5D48;
  if (!qword_1EE0C5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D48);
  }

  return result;
}

unint64_t sub_1D7B9D2A0()
{
  result = qword_1EE0C5CB8;
  if (!qword_1EE0C5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CB8);
  }

  return result;
}

uint64_t _s4RuleV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4RuleV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D7B9D458(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7B9D478(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1D7B9D4BC()
{
  result = qword_1EC9E5E00;
  if (!qword_1EC9E5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5E00);
  }

  return result;
}

unint64_t sub_1D7B9D514()
{
  result = qword_1EE0C5CC0;
  if (!qword_1EE0C5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CC0);
  }

  return result;
}

unint64_t sub_1D7B9D56C()
{
  result = qword_1EE0C5CC8;
  if (!qword_1EE0C5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CC8);
  }

  return result;
}

unint64_t sub_1D7B9D5C0()
{
  result = qword_1EC9E5E10;
  if (!qword_1EC9E5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5E10);
  }

  return result;
}

void sub_1D7B9D614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D7B9D690()
{
  result = qword_1EC9E5E20;
  if (!qword_1EC9E5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5E20);
  }

  return result;
}

unint64_t sub_1D7B9D6E8()
{
  result = qword_1EC9E5E28;
  if (!qword_1EC9E5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5E28);
  }

  return result;
}

unint64_t sub_1D7B9D740()
{
  result = qword_1EC9E5E30;
  if (!qword_1EC9E5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5E30);
  }

  return result;
}

void sub_1D7B9D794(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D7D3039C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    [v7 mediaDuration];
    v10 = v9;
    v11 = v8;
    v12 = [v7 mediaType] - 1;
    if (v12 <= 4 && (v13 = [v7 mediaId]) != 0)
    {
      v14 = v13;
      v15 = sub_1D7D3034C();
      v53 = v16;
      v54 = v15;

      [v7 mediaTimePlayed];
      v18 = v17;
      v19 = [v7 componentIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D7D3034C();
        v51 = v22;
        v52 = v21;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      v25 = 8 * v12;
      v26 = [v7 componentType];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1D7D3034C();
        v49 = v29;
        v50 = v28;
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      v30 = 0x502040103uLL >> v25;
      v31 = [v7 componentRole];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1D7D3034C();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v36 = [v7 metaData];

      if (v36)
      {
        v47 = v33;
        v48 = v30;
        sub_1D7D3028C();

        v37 = objc_opt_self();
        v38 = sub_1D7D3027C();

        v55[0] = 0;
        v36 = [v37 dataWithJSONObject:v38 options:0 error:v55];

        v39 = v55[0];
        if (v36)
        {
          v40 = sub_1D7D2827C();
          v42 = v41;

          sub_1D7D3038C();
          v43 = sub_1D7D3036C();
          v36 = v44;

          sub_1D79EA2E4(v40, v42);
        }

        else
        {
          v45 = v39;
          v46 = sub_1D7D2815C();

          swift_willThrow();
          v43 = 0;
        }

        v33 = v47;
        LOBYTE(v30) = v48;
      }

      else
      {

        v43 = 0;
      }

      LOBYTE(v55[0]) = 0;
      *a2 = v30;
      *(a2 + 8) = v54;
      *(a2 + 16) = v53;
      *(a2 + 24) = v10;
      *(a2 + 32) = 0;
      *(a2 + 40) = v18;
      *(a2 + 48) = v52;
      *(a2 + 56) = v51;
      *(a2 + 64) = v50;
      *(a2 + 72) = v49;
      *(a2 + 80) = v33;
      *(a2 + 88) = v35;
      *(a2 + 96) = v43;
      *(a2 + 104) = v36;
      type metadata accessor for AnalyticsEvent();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_1D7B9DBE8();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D7B9DBE8();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }
}

unint64_t sub_1D7B9DBE8()
{
  result = qword_1EC9E5E38;
  if (!qword_1EC9E5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5E38);
  }

  return result;
}

unint64_t sub_1D7B9DC50()
{
  result = qword_1EC9E5E40;
  if (!qword_1EC9E5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5E40);
  }

  return result;
}

uint64_t BarButtonOrder.init(for:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = sub_1D7D3034C();
  v8 = v7;

  v9 = v6 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v8;
  if (!v9 && (sub_1D7D3197C() & 1) == 0 || a2 >= 540.0)
  {

LABEL_10:
    sub_1D7AF3EC8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2A94C();
    *(v10 + 32) = sub_1D7D2A91C();
    *(v10 + 40) = v18;
    v19 = off_1EE0C7FF8;
    *(v10 + 48) = qword_1EE0C7FF0;
    *(v10 + 56) = v19;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7D42910;
    v20 = off_1EE0C7F68;
    *(v13 + 32) = qword_1EE0C7F60;
    *(v13 + 40) = v20;
    v21 = off_1EE0C7ED8;
    *(v13 + 48) = qword_1EE0C7ED0;
    *(v13 + 56) = v21;
    v22 = off_1EE0C7F38;
    *(v13 + 64) = qword_1EE0C7F30;
    *(v13 + 72) = v22;
    v23 = off_1EE0C8058;
    *(v13 + 80) = qword_1EE0C8050;
    *(v13 + 88) = v23;

    goto LABEL_11;
  }

  sub_1D7AF3EC8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D2A94C();
  *(v10 + 32) = sub_1D7D2A91C();
  *(v10 + 40) = v11;
  v12 = off_1EE0C7F38;
  *(v10 + 48) = qword_1EE0C7F30;
  *(v10 + 56) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7D3C680;
  v14 = off_1EE0C7F68;
  *(v13 + 32) = qword_1EE0C7F60;
  *(v13 + 40) = v14;
  v15 = off_1EE0C7ED8;
  *(v13 + 48) = qword_1EE0C7ED0;
  *(v13 + 56) = v15;
  v16 = off_1EE0C8058;
  *(v13 + 64) = qword_1EE0C8050;
  *(v13 + 72) = v16;

LABEL_11:
  *a1 = v10;
  a1[1] = v13;
  return result;
}

uint64_t BarButtonOrder.location(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v5 + 40);
    while (1)
    {
      v10 = *(v9 - 1) == a1 && *v9 == a2;
      if (v10 || (sub_1D7D3197C() & 1) != 0)
      {
        return 0;
      }

      ++v8;
      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = *(v6 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = (v6 + 40);
      v14 = 1;
      while (1)
      {
        v15 = *(v13 - 1) == a1 && *v13 == a2;
        if (v15 || (sub_1D7D3197C() & 1) != 0)
        {
          break;
        }

        ++v12;
        v13 += 2;
        if (v11 == v12)
        {
          return 2;
        }
      }
    }

    else
    {
      return 2;
    }
  }

  return v14;
}

NewsArticles::BarButtonOrder __swiftcall BarButtonOrder.init(leftIdentifiers:rightIdentifiers:)(Swift::OpaquePointer leftIdentifiers, Swift::OpaquePointer rightIdentifiers)
{
  v2->_rawValue = leftIdentifiers._rawValue;
  v2[1]._rawValue = rightIdentifiers._rawValue;
  result.rightIdentifiers = rightIdentifiers;
  result.leftIdentifiers = leftIdentifiers;
  return result;
}

NewsArticles::BarButtonOrder __swiftcall BarButtonOrder.init(for:)(UITraitCollection a1)
{
  v3 = v1;
  v4 = [(objc_class *)a1.super.isa userInterfaceIdiom];
  v5 = MEMORY[0x1E69E7CC0];
  if (v4 + 1 > 7)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v26 = v3;
  if (((1 << (v4 + 1)) & 0xC5) != 0)
  {
    sub_1D7AF3EC8();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D7D42910;
    sub_1D7D2A94C();
    *(v5 + 32) = sub_1D7D2A91C();
    *(v5 + 40) = v6;
    v7 = off_1EE0C7FF8;
    *(v5 + 48) = qword_1EE0C7FF0;
    *(v5 + 56) = v7;
    v8 = off_1EE0C7F08;
    *(v5 + 64) = qword_1EE0C7F00;
    *(v5 + 72) = v8;
    v9 = off_1EE0C7EA8;
    *(v5 + 80) = qword_1EE0C7EA0;
    *(v5 + 88) = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7D42910;
    v11 = off_1EE0C7F68;
    *(v10 + 32) = qword_1EE0C7F60;
    *(v10 + 40) = v11;
    v12 = off_1EE0C7F38;
    *(v10 + 48) = qword_1EE0C7F30;
    *(v10 + 56) = v12;
    v13 = off_1EE0C7ED8;
    *(v10 + 64) = qword_1EE0C7ED0;
    *(v10 + 72) = v13;
    v14 = off_1EE0C8058;
    *(v10 + 80) = qword_1EE0C8050;
    *(v10 + 88) = v14;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      goto LABEL_5;
    }

    sub_1D7AF3EC8();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D7D3C680;
    sub_1D7D2A94C();
    *(v5 + 32) = sub_1D7D2A91C();
    *(v5 + 40) = v17;
    v18 = off_1EE0C7F08;
    *(v5 + 48) = qword_1EE0C7F00;
    *(v5 + 56) = v18;
    v19 = off_1EE0C7EA8;
    *(v5 + 64) = qword_1EE0C7EA0;
    *(v5 + 72) = v19;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7D481C0;
    v20 = off_1EE0C7F68;
    *(v10 + 32) = qword_1EE0C7F60;
    *(v10 + 40) = v20;
    v21 = off_1EE0C7ED8;
    *(v10 + 48) = qword_1EE0C7ED0;
    *(v10 + 56) = v21;
    v22 = off_1EE0C7F38;
    *(v10 + 64) = qword_1EE0C7F30;
    *(v10 + 72) = v22;
    v23 = off_1EE0C8058;
    *(v10 + 80) = qword_1EE0C8050;
    *(v10 + 88) = v23;
    v24 = off_1EE0C7FF8;
    *(v10 + 96) = qword_1EE0C7FF0;
    *(v10 + 104) = v24;
  }

  v3 = v26;
LABEL_5:

  *v3 = v5;
  v3[1] = v10;
  result.rightIdentifiers._rawValue = v16;
  result.leftIdentifiers._rawValue = v15;
  return result;
}

id ArticleAudioPrewarmer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArticleAudioPrewarmer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s12NewsArticles21ArticleAudioPrewarmerC27bundleSubscriptionDidChange_014previousBundleG0ySo08FCBundleG0C_AGtF_0(uint64_t a1)
{
  if (objc_getAssociatedObject(a1, (a1 + 1)))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_1D79F0014(&v11);
    goto LABEL_9;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v3 = v8;
  v4 = [v8 integerValue];
  if (v4 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(a1, ~v4))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_1D79F0014(&v11);
    goto LABEL_17;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v7 = -105;
    goto LABEL_18;
  }

  v5 = v8;
  v6 = [v5 integerValue];

  v7 = v6 - 105;
LABEL_18:
  *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_isBundleSubscribed) = ((v7 ^ v4) & 1) == 0;
}

NewsArticles::AudioTrackOverlayPosition_optional __swiftcall AudioTrackOverlayPosition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AudioTrackOverlayPosition.description.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      v3 = 0x2820656C6464694DLL;
    }

    else
    {
      v3 = 0x2820646E45;
    }
  }

  else
  {
    v3 = 0x6E696E6E69676542;
  }

  v1 = sub_1D7D3190C();
  MEMORY[0x1DA70DE90](v1);

  MEMORY[0x1DA70DE90](41, 0xE100000000000000);
  return v3;
}

unint64_t sub_1D7B9E838()
{
  result = qword_1EC9E5E70;
  if (!qword_1EC9E5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5E70);
  }

  return result;
}

uint64_t type metadata accessor for MoreToReadEndOfArticleFeedGroup()
{
  result = qword_1EE0C3AF0;
  if (!qword_1EE0C3AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreToReadEndOfArticleFeedGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MoreToReadEndOfArticleFeedGroup.formatGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MoreToReadEndOfArticleFeedGroup() + 20);
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MoreToReadEndOfArticleFeedGroup.tag.getter()
{
  type metadata accessor for MoreToReadEndOfArticleFeedGroup();

  return swift_unknownObjectRetain();
}

uint64_t MoreToReadEndOfArticleFeedGroup.nativeAdInsertionLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MoreToReadEndOfArticleFeedGroup() + 28);
  v4 = sub_1D7D2EA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static MoreToReadEndOfArticleFeedGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C();
  }
}

uint64_t sub_1D7B9EB48(uint64_t a1)
{
  v2 = sub_1D7B9ECA8(&unk_1EC9E5E90);

  return MEMORY[0x1EEE21E00](a1, v2);
}

uint64_t sub_1D7B9ECA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoreToReadEndOfArticleFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7B9ED60(uint64_t (*a1)(uint64_t a1), void (*a2)(char *), uint64_t a3)
{
  v76 = a3;
  v77 = a2;
  v83 = sub_1D7D2CADC();
  v4 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v5);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799A5AC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v79 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7999AF4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v78 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for InterstitialAdModel();
  MEMORY[0x1EEE9AC00](v81, v13);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v89 = &v70 - v18;
  v19 = type metadata accessor for InterstitialAdvertisementPage(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v88 = (&v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A53A4C();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v73 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B9F7A0();
  v75 = v25;
  v74 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v72 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ArticleViewerPage(0);
  v92 = *(v28 - 8);
  v93 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v94 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v70 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v70 - v37;
  sub_1D7A2B8F8();
  v40 = v39;
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0C9558 != -1)
  {
LABEL_28:
    swift_once();
  }

  v45 = qword_1EE0C9560;
  sub_1D7D30C6C();
  v46 = MEMORY[0x1E69E7CC0];
  v86 = v45;
  sub_1D7D29AAC();
  v47 = *(v41 + 16);
  v41 += 16;
  v47(v44, a1, v40);
  sub_1D799C0EC(&qword_1EE0BB338, sub_1D7A2B8F8);
  a1 = v44;
  v48 = sub_1D7D3053C();
  v91 = *(v48 + 16);
  if (v91)
  {
    v85 = v15;
    v49 = 0;
    v71 = (v4 + 32);
    v82 = (v4 + 8);
    v84 = xmmword_1D7D3B4D0;
    v40 = v81;
    v90 = v48;
    while (1)
    {
      if (v49 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v41 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v4 = *(v92 + 72);
      a1 = type metadata accessor for ArticleViewerPage;
      sub_1D7A53BB4(v48 + v41 + v4 * v49, v38, type metadata accessor for ArticleViewerPage);
      sub_1D7A53BB4(v38, v34, type metadata accessor for ArticleViewerPage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        goto LABEL_10;
      }

      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
LABEL_10:
          v51 = type metadata accessor for ArticleViewerPage;
        }

        else
        {
          sub_1D799A6BC();
          sub_1D79DA510(*&v34[*(v57 + 48)], *&v34[*(v57 + 48) + 8], *&v34[*(v57 + 48) + 16]);
          v51 = type metadata accessor for ArticleViewerArticlePage;
        }

        sub_1D7B9F89C(v34, v51);
LABEL_16:
        sub_1D7B9F834(v38, v94, type metadata accessor for ArticleViewerPage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95[0] = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a1 = v95;
          sub_1D7A5BF6C(0, *(v46 + 16) + 1, 1);
          v46 = v95[0];
        }

        v44 = *(v46 + 16);
        v59 = *(v46 + 24);
        v15 = (v44 + 1);
        if (v44 >= v59 >> 1)
        {
          a1 = v95;
          sub_1D7A5BF6C(v59 > 1, v44 + 1, 1);
          v46 = v95[0];
        }

        *(v46 + 16) = v15;
        sub_1D7B9F834(v94, v46 + v41 + v44 * v4, type metadata accessor for ArticleViewerPage);
        goto LABEL_5;
      }

      v52 = v88;
      sub_1D7B9F834(v34, v88, type metadata accessor for InterstitialAdvertisementPage);
      sub_1D79F3AB0();
      v44 = swift_allocObject();
      *(v44 + 16) = v84;
      sub_1D7A53BB4(v52, v89, type metadata accessor for InterstitialAdModel);
      v53 = swift_getEnumCaseMultiPayload();
      if (!v53)
      {
        break;
      }

      if (v53 == 1)
      {
        v54 = v79;
        sub_1D7B9F834(v89, v79, sub_1D799A5AC);
        v55 = v54[1];
        v87 = *v54;

        v56 = sub_1D799A5AC;
LABEL_22:
        sub_1D7B9F89C(v54, v56);
        goto LABEL_24;
      }

      v60 = v80;
      v61 = v83;
      (*v71)(v80, v89, v83);
      v87 = sub_1D7D2CACC();
      v55 = v62;
      v63 = v61;
      v40 = v81;
      (*v82)(v60, v63);
LABEL_24:
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1D79D6AE0();
      *(v44 + 32) = v87;
      *(v44 + 40) = v55;
      sub_1D7D30C6C();
      sub_1D7D29AAC();

      v15 = v88;
      a1 = v85;
      sub_1D7A53BB4(v88, v85, type metadata accessor for InterstitialAdModel);
      sub_1D7B9F89C(v15, type metadata accessor for InterstitialAdvertisementPage);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        (*v82)(a1, v83);
        goto LABEL_16;
      }

      sub_1D7B9F89C(a1, type metadata accessor for InterstitialAdModel);
      sub_1D7B9F89C(v38, type metadata accessor for ArticleViewerPage);
LABEL_5:
      ++v49;
      v48 = v90;
      if (v91 == v49)
      {
        goto LABEL_26;
      }
    }

    v54 = v78;
    sub_1D7B9F834(v89, v78, sub_1D7999AF4);
    v55 = v54[1];
    v87 = *v54;

    v56 = sub_1D7999AF4;
    goto LABEL_22;
  }

LABEL_26:

  v64 = sub_1D799C0EC(&qword_1EE0C9920, type metadata accessor for ArticleViewerPage);
  v65 = sub_1D799C0EC(&unk_1EE0C9940, type metadata accessor for ArticleViewerPage);
  MEMORY[0x1DA706A80](v46, v93, v64, v65);
  sub_1D799C0EC(&qword_1EE0C9930, type metadata accessor for ArticleViewerPage);
  v66 = v72;
  sub_1D7D29FBC();
  v67 = v74;
  v68 = v75;
  (*(v74 + 104))(v66, *MEMORY[0x1E69D8228], v75);
  v77(v66);
  return (*(v67 + 8))(v66, v68);
}

void sub_1D7B9F7A0()
{
  if (!qword_1EE0BB258)
  {
    type metadata accessor for ArticleViewerPage(255);
    sub_1D799C0EC(&qword_1EE0C9930, type metadata accessor for ArticleViewerPage);
    v0 = sub_1D7D2B78C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB258);
    }
  }
}

uint64_t sub_1D7B9F834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B9F89C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArticleViewerBarButtonItem.init(_:tipPlacement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D7B9F94C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v4, 0);
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1D7A5BDC8((v8 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 11;
      --v4;
    }

    while (v4);
  }

  sub_1D7BA04A8(0, qword_1EE0BF240, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D7BA04F8();
  sub_1D7D302FC();

  v11 = sub_1D7D28A1C();

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for PDFReplicaViewController();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;

  v13 = sub_1D7D28CFC();

  if (v13)
  {

    sub_1D7BA0450();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B9FB68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BA04A8(0, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

uint64_t sub_1D7B9FC38(__int128 *a1, void *a2)
{
  v5 = a1[7];
  v37 = a1[6];
  v38 = v5;
  v39 = a1[8];
  v40 = *(a1 + 18);
  v6 = a1[3];
  v33 = a1[2];
  v34 = v6;
  v7 = a1[5];
  v35 = a1[4];
  v36 = v7;
  v8 = a1[1];
  v31 = *a1;
  v32 = v8;
  v9 = sub_1D7D28A1C();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for ReplicaAdvertisementStyler();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v26 = result;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for ReplicaAdvertisementLoadingIndicatorProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_1D798F168(0, &qword_1EC9E5EA0);
  v12 = swift_allocObject();
  v13 = a1[7];
  *(v12 + 112) = a1[6];
  *(v12 + 128) = v13;
  *(v12 + 144) = a1[8];
  v14 = *(a1 + 18);
  v15 = a1[3];
  *(v12 + 48) = a1[2];
  *(v12 + 64) = v15;
  v16 = a1[5];
  *(v12 + 80) = a1[4];
  *(v12 + 96) = v16;
  v17 = a1[1];
  *(v12 + 16) = *a1;
  *(v12 + 32) = v17;
  *(v12 + 160) = v14;
  *(v12 + 168) = a2;
  *(v12 + 176) = v9;
  sub_1D7BA03E0(&v31, &v28);
  v18 = a2;

  sub_1D7D28D0C();

  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1D799D69C(&v28, v30);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for PDFReplicaViewController();
  sub_1D799CC84(v30, v27);
  v19 = swift_allocObject();
  v20 = v38;
  *(v19 + 112) = v37;
  *(v19 + 128) = v20;
  *(v19 + 144) = v39;
  v21 = v40;
  v22 = v34;
  *(v19 + 48) = v33;
  *(v19 + 64) = v22;
  v23 = v36;
  *(v19 + 80) = v35;
  *(v19 + 96) = v23;
  v24 = v32;
  *(v19 + 16) = v31;
  *(v19 + 32) = v24;
  *(v19 + 160) = v21;
  *(v19 + 168) = v9;
  *(v19 + 176) = v26;
  *(v19 + 184) = v11;
  sub_1D799D69C(v27, v19 + 192);
  sub_1D7BA03E0(&v31, &v28);

  v25 = sub_1D7D28CFC();

  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);

    sub_1D7BA0450();
    return v25;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7B9FF60(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79EB250();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

uint64_t sub_1D7BA006C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BA04A8(0, &qword_1EC9E1A60, &type metadata for PDFReplicaPage, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  v12 = *(a2 + 48);
  v28 = *(a2 + 32);
  v11 = v28;
  v29 = v12;
  v30 = *(a2 + 64);
  v13 = v30;
  v31 = *(a2 + 80);
  v14 = v31;
  v16 = *(a2 + 16);
  v27[0] = *a2;
  v15 = v27[0];
  v27[1] = v16;
  *(v10 + 16) = xmmword_1D7D3B4D0;
  *(v10 + 32) = v15;
  *(v10 + 80) = v12;
  *(v10 + 96) = v13;
  *(v10 + 48) = v16;
  *(v10 + 64) = v11;
  *(v10 + 112) = v14;
  v26 = v10;
  sub_1D7BA04A8(0, &qword_1EC9E1A58, &type metadata for PDFReplicaPage, MEMORY[0x1E69E62F8]);
  sub_1D79ECF40(v27, v23);
  sub_1D7D28BFC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = type metadata accessor for ReplicaAdvertisementStyler();
  v25 = &off_1F52A94D0;
  v23[0] = a4;
  sub_1D798F168(0, &qword_1EC9E21F0);

  sub_1D7D28BFC();
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = type metadata accessor for ReplicaAdvertisementLoadingIndicatorProvider();
  v25 = &off_1F52A4328;
  v23[0] = a5;
  sub_1D798F168(0, qword_1EE0C7D18);

  sub_1D7D28BFC();
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = a6[3];
  v18 = a6[4];
  v19 = __swift_project_boxed_opaque_existential_1(a6, v17);
  v24 = v17;
  v25 = *(v18 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
  sub_1D798F168(0, &qword_1EC9E2218);
  sub_1D7D28BFC();
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

unint64_t sub_1D7BA0450()
{
  result = qword_1EC9E75F0;
  if (!qword_1EC9E75F0)
  {
    type metadata accessor for PDFReplicaViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E75F0);
  }

  return result;
}

void sub_1D7BA04A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7BA04F8()
{
  result = qword_1EC9E5EA8;
  if (!qword_1EC9E5EA8)
  {
    sub_1D7BA04A8(255, qword_1EE0BF240, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5EA8);
  }

  return result;
}

__n128 ANFReplicaAdvertisement.init(pdfPage:article:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  v5 = a2[2];
  *(a3 + 136) = a2[3];
  *(a3 + 120) = v5;
  v7 = *a2;
  result = a2[1];
  *(a3 + 104) = result;
  *(a3 + 80) = *(a1 + 80);
  *(a3 + 88) = v7;
  return result;
}

uint64_t ANFReplicaAdvertisement.pdfPage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D79ECF40(v9, v8);
}

uint64_t ANFReplicaAdvertisement.article.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v7[0] = *(v1 + 88);
  v7[1] = v2;
  v4 = *(v1 + 136);
  v8 = *(v1 + 120);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D79F5B54(v7, &v6);
}

uint64_t ANFReplicaAdvertisement.identifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_1D7BA0694()
{
  v1 = *(v0 + 88);

  return v1;
}

BOOL _s12NewsArticles23ANFReplicaAdvertisementV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v44 = a1[2];
  v45 = v2;
  v46 = a1[4];
  v47 = *(a1 + 10);
  v3 = a1[1];
  v42 = *a1;
  v43 = v3;
  v4 = *(a1 + 136);
  v48[2] = *(a1 + 120);
  v48[3] = v4;
  v5 = *(a1 + 104);
  v48[0] = *(a1 + 88);
  v48[1] = v5;
  v6 = a2[3];
  v51 = a2[2];
  v52 = v6;
  v53 = a2[4];
  v54 = *(a2 + 10);
  v7 = a2[1];
  v49 = *a2;
  v50 = v7;
  v8 = *(a2 + 88);
  v9 = *(a2 + 136);
  v55[2] = *(a2 + 120);
  v55[3] = v9;
  v10 = *(a2 + 104);
  v55[0] = v8;
  v55[1] = v10;
  v11 = *(a1 + 104);
  v36 = *(a1 + 88);
  v37 = v11;
  v12 = *(a1 + 136);
  v38 = *(a1 + 120);
  v39 = v12;
  v13 = *(a2 + 104);
  v30 = *(a2 + 88);
  v31 = v13;
  v14 = *(a2 + 136);
  v32 = *(a2 + 120);
  v33 = v14;
  v15 = _s12NewsArticles7ArticleV2eeoiySbAC_ACtFZ_0(&v36, &v30);
  v56[0] = v30;
  v56[1] = v31;
  v56[2] = v32;
  v56[3] = v33;
  sub_1D79F5B54(v48, &v24);
  sub_1D79F5B54(v55, &v24);
  sub_1D7A0AD5C(v56);
  v57[0] = v36;
  v57[1] = v37;
  v57[2] = v38;
  v57[3] = v39;
  sub_1D7A0AD5C(v57);
  if (v15)
  {
    v26 = v44;
    v27 = v45;
    v28 = v46;
    v29 = v47;
    v24 = v42;
    v25 = v43;
    v20 = v51;
    v21 = v52;
    v22 = v53;
    v23 = v54;
    v18 = v49;
    v19 = v50;
    sub_1D79ECF40(&v42, &v36);
    sub_1D79ECF40(&v49, &v36);
    v16 = _s12NewsArticles14PDFReplicaPageV2eeoiySbAC_ACtFZ_0(&v24, &v18);
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v30 = v18;
    v31 = v19;
    sub_1D7A2BEAC(&v30);
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v36 = v24;
    v37 = v25;
    sub_1D7A2BEAC(&v36);
  }

  else
  {
    return 0;
  }

  return v16;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D7BA08E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7BA092C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1D7BA09A0(uint64_t a1)
{
  v2 = v1;
  sub_1D7998DF0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  if ((sub_1D7D2F97C() & 1) == 0)
  {
    return 0;
  }

  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 bundleIdentifier];

  if (!v17)
  {
    return 0;
  }

  v58 = v15;
  v59 = a1;
  v18 = sub_1D7D3034C();
  v20 = v19;

  if (v18 == 0x6C7070612E6D6F63 && v20 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v21 = sub_1D7D3197C();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  ArticleViewerPage.article.getter(v71);
  v72 = v71[0];
  v73 = v71[1];
  v74 = v71[2];
  v75 = v71[3];
  if (!*(&v71[0] + 1))
  {
    return 0;
  }

  v22 = v73;
  swift_unknownObjectRetain();
  sub_1D79DA7DC(&v72, &qword_1EE0C0600);
  ArticleViewerPage.article.getter(&v63);
  v67 = v63;
  v68 = v64;
  v69 = v65;
  v70 = v66;
  if (!*(&v63 + 1) || (v23 = v68, swift_unknownObjectRetain(), sub_1D79DA7DC(&v67, &qword_1EE0C0600), v24 = [v23 sourceChannel], swift_unknownObjectRelease(), !v24))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v56 = *(v2 + 64);
  v57 = v22;
  v25 = [v56 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v26 = [v24 asSection];
    if (!v26 || (v27 = [v26 parentID], swift_unknownObjectRelease(), !v27))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_17;
    }
  }

  else
  {
    v27 = [v24 identifier];
  }

  v28 = sub_1D7D3034C();
  v30 = v29;

  v31 = [v25 purchasedTagIDs];
  v32 = sub_1D7D309AC();

  LOBYTE(v28) = sub_1D7D053C8(v28, v30, v32);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v28)
  {
    goto LABEL_42;
  }

LABEL_17:
  v33 = [objc_msgSend(v56 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v33, v33 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (!*(&v62 + 1))
  {
    sub_1D79DA7DC(&v63, &qword_1EE0BE7A0);
    goto LABEL_25;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v34 = 0;
    v36 = 0;
    goto LABEL_26;
  }

  v34 = v60;
  v35 = [v60 integerValue];
  if (v35 == -1)
  {

    goto LABEL_37;
  }

  v36 = v35;
LABEL_26:
  if (objc_getAssociatedObject(v33, ~v36))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (*(&v62 + 1))
  {
    sub_1D79A4870();
    if (swift_dynamicCast())
    {
      v37 = v34;
      v38 = v60;
      v39 = [v38 integerValue];

      if (((v39 ^ v36) & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  else
  {
    sub_1D79DA7DC(&v63, &qword_1EE0BE7A0);
  }

  if ((v36 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v40 = [objc_msgSend(v56 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v41 = [v24 identifier];
  if (!v41)
  {
    sub_1D7D3034C();
    v41 = sub_1D7D3031C();
  }

  v42 = [v40 containsTagID_];

  if ((v42 & 1) == 0)
  {
LABEL_40:
    if ([v57 isPaid])
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return 0;
    }
  }

LABEL_42:
  sub_1D79F93E8(v59, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v44 = type metadata accessor for ArticleViewerPage;
    v45 = v11;
LABEL_48:
    sub_1D7BA12EC(v45, v44);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*&v11[*(v46 + 48)], *&v11[*(v46 + 48) + 8], *&v11[*(v46 + 48) + 16]);
  }

  v47 = v58;
  sub_1D7A74E98(v11, v58);
  v48 = *(v47 + 16);
  v49 = [v48 routeURL];
  if (v49)
  {
    v50 = v49;
    sub_1D7D281EC();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v51 = sub_1D7D2824C();
    (*(*(v51 - 8) + 56))(v7, 0, 1, v51);
    sub_1D7BA12EC(v7, sub_1D7998DF0);
    v44 = type metadata accessor for ArticleViewerArticlePage;
    v45 = v47;
    goto LABEL_48;
  }

  v53 = sub_1D7D2824C();
  (*(*(v53 - 8) + 56))(v7, 1, 1, v53);
  sub_1D7BA12EC(v7, sub_1D7998DF0);
  if (([v48 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D7BA12EC(v47, type metadata accessor for ArticleViewerArticlePage);
    return 1;
  }

  [v48 role];
  v54 = sub_1D7D30B8C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D7BA12EC(v47, type metadata accessor for ArticleViewerArticlePage);
  return (v54 & 1) != 0;
}

uint64_t sub_1D7BA1258()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7BA12EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7BA134C(uint64_t a1, char a2)
{
  v5 = *v2;
  v23 = a1;
  v24 = v5;
  v6 = type metadata accessor for AsyncArticle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = &selRef_ignoreCacheCachePolicy;
  if ((a2 & 1) == 0)
  {
    v12 = &selRef_defaultCachePolicy;
  }

  v13 = [v11 *v12];
  v14 = sub_1D7D2927C();
  sub_1D7BA2AB0(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v15 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1D7BA2B14(v10, v17 + v15);
  *(v17 + v16) = v13;
  sub_1D798C3BC(0, &qword_1EE0CBA60);
  v18 = v13;
  sub_1D7D294AC();

  sub_1D7BA2AB0(v23, v10);
  v19 = swift_allocObject();
  sub_1D7BA2B14(v10, v19 + v15);
  v20 = sub_1D7D2934C();
  v21 = sub_1D7D293AC();

  return v21;
}

uint64_t sub_1D7BA15A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  sub_1D7BA2AB0(a2, v9);
  v11 = v9[1];
  *a3 = *v9;
  a3[1] = v11;
  a3[2] = v10;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  v13 = v9[4];
  v12 = v9[5];
  swift_unknownObjectRetain();

  result = sub_1D7BA2DC8(v9);
  a3[6] = v13;
  a3[7] = v12;
  return result;
}

uint64_t sub_1D7BA1670(uint64_t a1, char a2)
{
  v22 = *v2;
  v5 = type metadata accessor for AsyncArticle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = &selRef_ignoreCacheCachePolicy;
  if ((a2 & 1) == 0)
  {
    v11 = &selRef_defaultCachePolicy;
  }

  v12 = [v10 *v11];
  v13 = sub_1D7D2927C();
  sub_1D7BA2AB0(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v14 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_1D7BA2B14(v9, v16 + v14);
  *(v16 + v15) = v12;
  sub_1D798C3BC(0, &qword_1EE0CBA60);
  v23 = v12;
  sub_1D7D294AC();

  sub_1D7BA2AB0(a1, v9);
  v17 = swift_allocObject();
  sub_1D7BA2B14(v9, v17 + v14);
  v18 = sub_1D7D2934C();
  sub_1D7BA2C0C();
  sub_1D7D293BC();

  v19 = sub_1D7D2934C();
  sub_1D7BA2E24(0, &qword_1EE0BF320, MEMORY[0x1E69E62F8]);
  v20 = sub_1D7D2939C();

  return v20;
}

uint64_t sub_1D7BA19AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  sub_1D7BA2AB0(a3, v9);
  v12 = *v9;
  v11 = v9[1];
  v14 = v9[4];
  v13 = v9[5];
  swift_unknownObjectRetain();

  sub_1D7BA2DC8(v9);
  v17[0] = v12;
  v17[1] = v11;
  v17[2] = v10;
  memset(&v17[3], 0, 24);
  v17[6] = v14;
  v17[7] = v13;
  sub_1D7BA2E24(0, &unk_1EE0C02A0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D7D2940C();
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_1D7C7820C();
  v15 = sub_1D7D2948C();

  return v15;
}

char *sub_1D7BA1B1C(__int128 *a1, unint64_t a2)
{
  v2 = a1[1];
  v34 = *a1;
  v35 = v2;
  v3 = a1[3];
  v36 = a1[2];
  v37 = v3;
  if (a2 >> 62)
  {
    v27 = a2;
    v28 = sub_1D7D3167C();
    a2 = v27;
    v4 = v28;
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_12:
    sub_1D7BA2E24(0, &unk_1EE0BE990, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    v22 = v34;
    v23 = v35;
    v21[1] = xmmword_1D7D3B4D0;
    v21[2] = v22;
    v24 = v36;
    v25 = v37;
    v21[3] = v23;
    v21[4] = v24;
    v21[5] = v25;
    v33 = v21;
    sub_1D79F5B54(&v34, v32);
    sub_1D79E26EC(v5);
    v32[0] = v33;
    sub_1D7BA2E24(0, &qword_1EE0BF320, MEMORY[0x1E69E62F8]);
    sub_1D7BA2C8C();
    sub_1D7BA2D00();
    v26 = sub_1D7D3050C();

    v32[0] = v26;
    sub_1D7BA2D54();
    swift_allocObject();
    return sub_1D7D2940C();
  }

  v29 = a2;
  v32[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D7A5BE4C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v32[0];
    v8 = v29;
    v30 = v29 & 0xC000000000000001;
    v31 = v4;
    do
    {
      if (v30)
      {
        v9 = MEMORY[0x1DA70EF00](v7, v8);
      }

      else
      {
        v9 = *(v8 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      v10 = [v9 identifier];
      v11 = sub_1D7D3034C();
      v13 = v12;

      v14 = [swift_unknownObjectRetain() identifier];
      v15 = sub_1D7D3034C();
      v17 = v16;
      swift_unknownObjectRelease();

      v32[0] = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D7A5BE4C((v18 > 1), v19 + 1, 1);
        v8 = v29;
        v5 = v32[0];
      }

      ++v7;
      *(v5 + 16) = v19 + 1;
      v20 = (v5 + (v19 << 6));
      v20[4] = v11;
      v20[5] = v13;
      v20[6] = v9;
      v20[7] = 0;
      v20[8] = 0;
      v20[9] = 0;
      v20[10] = v15;
      v20[11] = v17;
    }

    while (v31 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7BA1DE8(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    v4 = objc_opt_self();
    v5 = &selRef_ignoreCacheCachePolicy;
    if ((a2 & 1) == 0)
    {
      v5 = &selRef_defaultCachePolicy;
    }

    v6 = [v4 *v5];
    v7 = sub_1D7D2927C();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = v6;
    sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);

    v9 = v6;
    sub_1D7D294AC();

    *(swift_allocObject() + 16) = a1;

    v10 = sub_1D7D2934C();
    sub_1D7BA2E24(0, &qword_1EE0BF320, MEMORY[0x1E69E62F8]);
    sub_1D7D293AC();

    v11 = sub_1D7D2934C();
    v12 = sub_1D7D293AC();

    return v12;
  }

  else
  {
    sub_1D7BA2D54();
    swift_allocObject();
    return sub_1D7D2940C();
  }
}

uint64_t sub_1D7BA202C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AsyncArticle();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799CC84(a1 + 56, v27);
  v12 = v28;
  v13 = v29;
  v14 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v15 = *(a2 + 16);
  if (v15)
  {
    v26[0] = v14;
    v26[1] = v13;
    v26[2] = v12;
    v26[3] = a3;
    v26[4] = v3;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v15, 0);
    v16 = v30;
    v17 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v18 = *(v8 + 72);
    do
    {
      sub_1D7BA2AB0(v17, v11);
      v20 = *(v11 + 2);
      v19 = *(v11 + 3);

      sub_1D7BA2DC8(v11);
      v30 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D7A5BDC8((v21 > 1), v22 + 1, 1);
        v16 = v30;
      }

      *(v16 + 16) = v22 + 1;
      v23 = v16 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  v24 = sub_1D7D2F61C();

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v24;
}

uint64_t sub_1D7BA2224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v42 = a3;
  v6 = type metadata accessor for AsyncArticle();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v43 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v11);
  v48 = &v41 - v12;
  v49 = *a1;
  sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
  sub_1D7BA3110();
  v13 = sub_1D7D3054C();
  v14 = *(a2 + 16);
  if (v14)
  {
    v41 = v3;
    v15 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v47 = *(v7 + 72);
    v46 = MEMORY[0x1E69E7CC0];
    v45 = xmmword_1D7D3B4E0;
    do
    {
      v23 = v48;
      sub_1D7BA2AB0(v15, v48);
      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      if (*(v13 + 16) && (v16 = v13, v26 = sub_1D7A18FFC(v25, v24), (v27 & 1) != 0))
      {
        v28 = *(*(v13 + 56) + 8 * v26);
        v29 = v43;
        sub_1D7BA2B14(v48, v43);
        v30 = *v29;
        v31 = v29[1];
        v33 = v29[4];
        v32 = v29[5];
        swift_unknownObjectRetain();

        sub_1D7BA2DC8(v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v33;
        if (isUniquelyReferenced_nonNull_native)
        {
          v35 = v46;
        }

        else
        {
          v35 = sub_1D79E3A50(0, *(v46 + 2) + 1, 1, v46);
        }

        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1D79E3A50((v36 > 1), v37 + 1, 1, v35);
        }

        *(v35 + 2) = v37 + 1;
        v46 = v35;
        v38 = &v35[64 * v37];
        *(v38 + 4) = v30;
        *(v38 + 5) = v31;
        *(v38 + 6) = v28;
        *(v38 + 7) = 0;
        *(v38 + 8) = 0;
        *(v38 + 9) = 0;
        *(v38 + 10) = v44;
        *(v38 + 11) = v32;
      }

      else
      {
        v16 = v13;
        if (qword_1EE0CA2C8 != -1)
        {
          swift_once();
        }

        sub_1D7D30C4C();
        sub_1D79F3AB0();
        v17 = swift_allocObject();
        *(v17 + 16) = v45;
        v18 = MEMORY[0x1E69E6158];
        *(v17 + 56) = MEMORY[0x1E69E6158];
        v19 = sub_1D79D6AE0();
        *(v17 + 32) = v25;
        *(v17 + 40) = v24;
        v20 = v48;
        v21 = *(v48 + 32);
        v22 = *(v48 + 40);
        *(v17 + 96) = v18;
        *(v17 + 104) = v19;
        *(v17 + 64) = v19;
        *(v17 + 72) = v21;
        *(v17 + 80) = v22;

        sub_1D7D29AAC();

        sub_1D7BA2DC8(v20);
      }

      v13 = v16;
      v15 += v47;
      --v14;
    }

    while (v14);

    v40 = v46;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  *v42 = v40;
  return result;
}

uint64_t sub_1D7BA25A0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7BA2E24(0, &qword_1EE0BF320, MEMORY[0x1E69E62F8]);
  sub_1D7BA2C8C();
  sub_1D7BA2D00();
  result = sub_1D7D3050C();
  *a1 = result;
  return result;
}

uint64_t sub_1D7BA262C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for AsyncArticle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = objc_opt_self();
  v14 = &selRef_ignoreCacheCachePolicy;
  if ((a4 & 1) == 0)
  {
    v14 = &selRef_defaultCachePolicy;
  }

  v15 = [v13 *v14];
  v22 = v4;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = v15;
  sub_1D7D294BC();
  sub_1D7BA2AB0(a1, &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  sub_1D7BA2B14(&v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  v18 = sub_1D7D2934C();
  v19 = sub_1D7D293AC();

  return v19;
}

uint64_t sub_1D7BA27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 96), *(a1 + 120));
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v17 = v8;
  v10 = *v7;
  sub_1D7B80F8C(0, &qword_1EE0BF200, &qword_1EE0BF070);
  sub_1D7D294BC();
  v11 = sub_1D7D2934C();
  sub_1D7D2943C();

  v12 = sub_1D7D2934C();
  sub_1D798C3BC(0, &qword_1EE0BF070);
  sub_1D7D293AC();

  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v17;
  v13[4] = v9;
  v13[5] = a3;
  v13[6] = a4;

  v14 = sub_1D7D2934C();
  v15 = sub_1D7D2939C();

  return v15;
}

uint64_t sub_1D7BA29BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  sub_1D7BA2AB0(a2, v9);
  v11 = v9[1];
  *a3 = *v9;
  a3[1] = v11;
  a3[2] = v10;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  v13 = v9[4];
  v12 = v9[5];
  swift_unknownObjectRetain();

  result = sub_1D7BA2DC8(v9);
  a3[6] = v13;
  a3[7] = v12;
  return result;
}

uint64_t sub_1D7BA2AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncArticle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BA2B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncArticle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7BA2C0C()
{
  if (!qword_1EE0C05F8)
  {
    sub_1D7B80F8C(255, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C05F8);
    }
  }
}

unint64_t sub_1D7BA2C8C()
{
  result = qword_1EE0BF318;
  if (!qword_1EE0BF318)
  {
    sub_1D7BA2E24(255, &qword_1EE0BF320, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF318);
  }

  return result;
}

unint64_t sub_1D7BA2D00()
{
  result = qword_1EE0C0610;
  if (!qword_1EE0C0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C0610);
  }

  return result;
}

void sub_1D7BA2D54()
{
  if (!qword_1EE0C0278)
  {
    sub_1D7BA2E24(255, &qword_1EE0BF320, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0278);
    }
  }
}

uint64_t sub_1D7BA2DC8(uint64_t a1)
{
  v2 = type metadata accessor for AsyncArticle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7BA2E24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Article);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for AsyncArticle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_1D7D2824C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v2 | 7);
}

unint64_t sub_1D7BA3110()
{
  result = qword_1EE0BF1C0;
  if (!qword_1EE0BF1C0)
  {
    sub_1D7B80F8C(255, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF1C0);
  }

  return result;
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = (type metadata accessor for AsyncArticle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_1D7D2824C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id BridgedArticleViewerPageItemActionHandler.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id BridgedArticleViewerPageItemActionHandler.init(delegate:)()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

void BridgedArticleViewerPageItemActionHandler.handle(action:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleViewerPageItemAction();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7BA37E0(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = *v12;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        goto LABEL_18;
      }

      [Strong presentWithViewController_];

LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4)
    {
      (*(v5 + 32))(v8, v12, v4);
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        v19 = sub_1D7D281BC();
        [v18 openURL_];
        swift_unknownObjectRelease();
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1D7BA3844(v12);
        goto LABEL_18;
      }

      v14 = swift_unknownObjectWeakLoadStrong();
      if (!v14)
      {

        goto LABEL_18;
      }

      v15 = v14;
      v16 = sub_1D7D3031C();

      [v15 navigateToArticleID_];

      goto LABEL_14;
    }

    sub_1D7BA38A0();

    v21 = sub_1D7D2F09C();
    (*(*(v21 - 8) + 8))(v12, v21);
  }

LABEL_18:
  *a2 = 0;
}

uint64_t sub_1D7BA37E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPageItemAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BA3844(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPageItemAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7BA38A0()
{
  if (!qword_1EC9E5EB8)
  {
    sub_1D7D2F09C();
    sub_1D7BA3914();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E5EB8);
    }
  }
}

void sub_1D7BA3914()
{
  if (!qword_1EC9E5EC0)
  {
    sub_1D7AA16D0();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5EC0);
    }
  }
}

id BridgedArticleViewerPageItemActionHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedArticleViewerPageItemActionHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7BA3A9C(void *a1, double a2, double a3)
{
  v7 = sub_1D7D2836C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 advertising];
  if (v13)
  {

    sub_1D7D2835C();
    v14 = sub_1D7D2834C();
    (*(v8 + 8))(v12, v7);
  }

  else
  {
    v15 = *(v3 + 24);
    v20 = *(v3 + 16);
    v21 = v15;
    v18 = 0;
    v19 = 0xE000000000000000;

    MEMORY[0x1DA70DE90](45, 0xE100000000000000);
    *v17 = a2;
    *&v17[1] = a3;
    type metadata accessor for CGSize(0);
    sub_1D7D315DC();
    MEMORY[0x1DA70DE90](v18, v19);

    v18 = 0;
    v19 = 0xE000000000000000;
    MEMORY[0x1DA70DE90](45, 0xE100000000000000);
    sub_1D7D2CABC();
    sub_1D7D315DC();
    MEMORY[0x1DA70DE90](v18, v19);

    return v20;
  }

  return v14;
}

uint64_t sub_1D7BA3CA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D7D3039C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = [v7 analytics];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 JSONRepresentation];

      if (v11)
      {
        sub_1D7D3028C();

        v12 = objc_opt_self();
        v13 = sub_1D7D3027C();

        v26[0] = 0;
        v11 = [v12 dataWithJSONObject:v13 options:0 error:v26];

        v14 = v26[0];
        if (v11)
        {
          v15 = sub_1D7D2827C();
          v17 = v16;

          sub_1D7D3038C();
          v18 = sub_1D7D3036C();
          v11 = v19;
          sub_1D79EA2E4(v15, v17);
        }

        else
        {
          v22 = v14;
          v23 = sub_1D7D2815C();

          swift_willThrow();
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v11 = 0;
    }

    v24 = [v7 destinationURL];
    sub_1D7D281EC();

    v25 = (a2 + *(type metadata accessor for AnalyticsLinkData() + 20));
    *v25 = v18;
    v25[1] = v11;
    type metadata accessor for AnalyticsEvent();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D7BA3F94();
    swift_allocError();
    *v20 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_1D7BA3F94()
{
  result = qword_1EC9E5EC8;
  if (!qword_1EC9E5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5EC8);
  }

  return result;
}

unint64_t sub_1D7BA3FFC()
{
  result = qword_1EC9E5ED0;
  if (!qword_1EC9E5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5ED0);
  }

  return result;
}

uint64_t type metadata accessor for ReportConcernDetailLayoutModel()
{
  result = qword_1EC9E5EE0;
  if (!qword_1EC9E5EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7BA409C()
{
  sub_1D7A2AED8();
  if (v0 <= 0x3F)
  {
    sub_1D7BA4110();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7BA4110()
{
  if (!qword_1EC9E5EF0)
  {
    sub_1D7D2B15C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E5EF0);
    }
  }
}

double sub_1D7BA417C()
{
  v1 = v0;
  v2 = sub_1D7D2B15C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2F3FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReportConcernDetailLayoutModel();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BA4434(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7BA4110();
    (*(v3 + 32))(v6, &v15[*(v16 + 48)], v2);
    sub_1D7D2B13C();
    Height = v17;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1D7A2AED8();
    v20 = *(v19 + 48);
    (*(v8 + 32))(v11, &v15[*(v19 + 64)], v7);
    sub_1D7D2F3EC();
    Height = CGRectGetHeight(v24);
    (*(v8 + 8))(v11, v7);
    v21 = sub_1D7D2F44C();
    (*(*(v21 - 8) + 8))(&v15[v20], v21);
  }

  return Height;
}

uint64_t sub_1D7BA4434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcernDetailLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7BA4498()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  if (v1 <= 2)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
  }

  else
  {
    type metadata accessor for UIUserInterfaceSizeClass(0);
    sub_1D7D319FC();
    __break(1u);
  }
}

void sub_1D7BA45B8()
{
  v1 = sub_1D7D27BDC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for RecipeCardPlacementContext(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v36 - v16;
  v18 = *&v0[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
  if (v18)
  {
    v19 = v18;
    v20 = 0.0;
    if (sub_1D7BA73C4(v19))
    {
      sub_1D7AED7A4(&v0[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_placement], v17);
      (*(v2 + 32))(v9, &v17[*(v10 + 20)], v1);
      v21 = (*(v2 + 88))(v9, v1);
      if (v21 == *MEMORY[0x1E6997290])
      {
        v20 = 40.0;
      }

      else
      {
        v20 = 20.0;
        if (v21 != *MEMORY[0x1E6997298])
        {
          goto LABEL_20;
        }
      }
    }

    v22 = 1.0;
    if ((sub_1D7BA73C4(v19) & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1D7AED7A4(&v0[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_placement], v13);
    (*(v2 + 32))(v5, &v13[*(v10 + 20)], v1);
    v23 = (*(v2 + 88))(v5, v1);
    if (v23 == *MEMORY[0x1E6997290])
    {
      v22 = 40.0;
      goto LABEL_10;
    }

    v22 = 20.0;
    if (v23 == *MEMORY[0x1E6997298])
    {
LABEL_10:
      [v19 frame];
      v25 = v24;
      [v19 frame];
      v27 = v26;
      v28 = [v0 view];
      if (v28)
      {
        v29 = v28;
        [v28 addSubview_];

        v30 = [v0 view];
        if (v30)
        {
          v31 = v30;
          [v30 frame];
          [v31 setFrame_];

          [v0 setPreferredContentSize_];
          v32 = [v0 view];
          if (v32)
          {
            v33 = v32;
            [v32 setNeedsLayout];

            v34 = [v0 view];
            if (v34)
            {
              v35 = v34;
              [v34 layoutIfNeeded];

              return;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_20:
    sub_1D7D3196C();
    __break(1u);
  }
}

void sub_1D7BA4994(uint64_t a1)
{
  v74 = a1;
  sub_1D7BA7580(0, &qword_1EC9E8370, sub_1D7BA75D4);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v64 - v3;
  v5 = sub_1D7D2CBAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v72 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - v11;
  v13 = type metadata accessor for RecipeBannerAd();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v70 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v64 - v22;
  v24 = sub_1D7D2CB9C();
  v71 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v64 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v65 = v4;
  sub_1D7BA77A0();
  v66 = v32;
  sub_1D7D2CC3C();
  sub_1D7D2D56C();
  v33 = sub_1D7D2D57C();
  v34 = *(v33 - 8);
  v68 = *(v34 + 8);
  v69 = v33;
  v67 = v34 + 8;
  v68(v23);
  v35 = *(v6 + 88);
  if (v35(v12, v5) == *MEMORY[0x1E69B3E98])
  {
    v64 = v35;
    (*(v6 + 96))(v12, v5);
    v36 = v71;
    (*(v71 + 32))(v31, v12, v24);
    (*(v36 + 104))(v27, *MEMORY[0x1E69B3EA8], v24);
    sub_1D798C778(&qword_1EC9E5F80, MEMORY[0x1E69B3EB8]);
    v37 = sub_1D7D3030C();
    v38 = *(v36 + 8);
    v38(v27, v24);
    if (v37)
    {
      v39 = Strong;
      v40 = &Strong[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
      v41 = *&Strong[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
      if (v41)
      {
        [v41 removeFromSuperview];
        v42 = *v40;
      }

      else
      {
        v42 = 0;
      }

      *v40 = 0;
      *(v40 + 1) = 0;

      sub_1D7BA45B8();
      [v39 setPreferredContentSize_];

      v38(v31, v24);
      return;
    }

    v43 = v6;
    v38(v31, v24);
    v35 = v64;
  }

  else
  {
    v43 = v6;
    (*(v6 + 8))(v12, v5);
  }

  sub_1D7D2CC3C();
  v44 = v72;
  sub_1D7D2D56C();
  (v68)(v19, v69);
  if (v35(v44, v5) == *MEMORY[0x1E69B3ED8])
  {
    (*(v43 + 96))(v44, v5);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v45 = Strong;
    sub_1D7D2CA5C();
    v46 = v70;
    sub_1D7D2CC3C();
    v47 = sub_1D7D2CF5C();
    v49 = v48;

    sub_1D7BA7740(v46, type metadata accessor for RecipeBannerAd);
    if (v47)
    {
      v50 = v47;
      sub_1D7BA5154(v50);
      v52 = v51;

      if (v52)
      {
        sub_1D7BA7690();
        v53 = swift_allocError();
        *v54 = 1;
        sub_1D7BA75D4();
        v56 = v65;
        (*(*(v55 - 8) + 56))(v65, 1, 1, v55);
        sub_1D7D2CC3C();
        sub_1D7D2D53C();
        (v68)(v46, v69);
        sub_1D7D2D4BC();

        sub_1D7BA76E4(v56, &qword_1EC9E8370, sub_1D7BA75D4);

        v57 = &v45[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
        v58 = *&v45[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
        if (v58)
        {
          [v58 removeFromSuperview];
          v59 = *v57;
        }

        else
        {
          v59 = 0;
        }

        *v57 = 0;
        *(v57 + 1) = 0;

        sub_1D7BA45B8();
        v63 = v45;
        [v63 setPreferredContentSize_];
      }

      else
      {
        v60 = &v45[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
        v61 = *&v45[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
        v62 = v50;
        if (v61)
        {
          [v61 removeFromSuperview];
          v61 = *v60;
        }

        *v60 = v47;
        *(v60 + 1) = v49;
        v50 = v50;

        sub_1D7BA45B8();
      }
    }

    else
    {
    }
  }

  else
  {

    (*(v43 + 8))(v44, v5);
  }
}

void sub_1D7BA5154(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 window];

  if (v5)
  {
LABEL_5:
    [a1 bounds];
    [a1 convertRect:v5 toCoordinateSpace:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v5 bounds];
    v21.origin.x = v16;
    v21.origin.y = v17;
    v21.size.width = v18;
    v21.size.height = v19;
    v20.origin.x = v9;
    v20.origin.y = v11;
    v20.size.width = v13;
    v20.size.height = v15;
    CGRectIntersectsRect(v20, v21);

    return;
  }

  v6 = sub_1D7D30D3C();
  v7 = [v6 view];

  if (!v7)
  {
    goto LABEL_8;
  }

  v5 = [v7 window];

  if (v5)
  {
    goto LABEL_5;
  }
}

id sub_1D7BA5320()
{
  ObjectType = swift_getObjectType();
  sub_1D7BA7580(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v14 - v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewDidLoad, v4);
  result = [v0 view];
  if (result)
  {
    v8 = result;
    [result setAlpha_];

    v9 = sub_1D7D3087C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_1D7D3084C();
    v10 = v0;
    v11 = sub_1D7D3083C();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    sub_1D7AF94C0(0, 0, v6, &unk_1D7D530B8, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BA54B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D7BA7580(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  v4[3] = swift_task_alloc();
  v4[4] = sub_1D7D3084C();
  v4[5] = sub_1D7D3083C();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1D7BA55A8;

  return sub_1D7BA5824();
}

uint64_t sub_1D7BA55A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;

  v5 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7BA56EC, v5, v4);
}

uint64_t sub_1D7BA56EC()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[2];
  v3 = v0[3];

  v5 = sub_1D7D3087C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v2;
  v7 = v4;
  v8 = sub_1D7D3083C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v7;
  sub_1D7AF94C0(0, 0, v3, &unk_1D7D530D0, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D7BA5824()
{
  v1[21] = v0;
  sub_1D7BA7580(0, &qword_1EC9E8370, sub_1D7BA75D4);
  v1[22] = swift_task_alloc();
  type metadata accessor for RecipeBannerAd();
  v1[23] = swift_task_alloc();
  v2 = sub_1D7D2D17C();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = sub_1D7D2836C();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  sub_1D7D3084C();
  v1[30] = sub_1D7D3083C();
  v5 = sub_1D7D307DC();
  v1[31] = v5;
  v1[32] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D7BA59E8, v5, v4);
}

uint64_t sub_1D7BA59E8()
{
  v1 = (*(v0 + 168) + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeID);
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_1D7BA5AA4;

  return sub_1D7C2583C(v2, v3);
}

uint64_t sub_1D7BA5AA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_1D7BA62C0;
  }

  else
  {
    v7 = sub_1D7BA5BE8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D7BA5BE8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v21 = v0[23];
  v22 = v0[34];
  v4 = v0[21];
  sub_1D7D2835C();
  sub_1D7D2834C();
  (*(v1 + 8))(v2, v3);
  sub_1D799CC84(v4 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdFactory, (v0 + 11));
  v5 = *(v4 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdJournal);
  v0[36] = v5;
  v20 = *(v4 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_requestManager);
  v6 = v0[14];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 11), v6);
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  v0[37] = v8;
  (*(v7 + 16))();
  v9 = *v8;
  v10 = type metadata accessor for RecipeBannerAdFactory();
  v0[19] = v10;
  v0[20] = &off_1F52B1E90;
  v0[16] = v9;
  type metadata accessor for RecipeBannerAdRequester();
  inited = swift_initStackObject();
  v0[38] = inited;
  v12 = v0[19];
  v13 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 16), v12);
  v14 = *(v12 - 8);
  v15 = swift_task_alloc();
  (*(v14 + 16))(v15, v13, v12);
  v16 = *v15;
  inited[5] = v10;
  inited[6] = &off_1F52B1E90;
  inited[7] = v5;
  inited[2] = v16;
  inited[8] = v20;

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 11));
  v17 = v4 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdSize;
  v0[39] = *(v4 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdSize);
  v0[40] = *(v17 + 8);
  sub_1D7D2D15C();
  sub_1D7CC306C(v22, v21);
  v18 = swift_task_alloc();
  v0[41] = v18;
  *v18 = v0;
  v18[1] = sub_1D7BA5ED8;

  return sub_1D7BA6878();
}

uint64_t sub_1D7BA5ED8(char a1)
{
  v2 = *v1;
  *(*v1 + 336) = a1;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D7BA6000, v4, v3);
}

uint64_t sub_1D7BA6000()
{
  v1 = *(v0 + 336);

  if (v1)
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 272);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    sub_1D7D2CA5C();
    v8 = sub_1D7D2CF5C();
    v10 = v9;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);

    sub_1D7BA7740(v7, type metadata accessor for RecipeBannerAd);
    (*(v4 + 8))(v5, v6);
  }

  else
  {
    v11 = *(v0 + 304);
    v12 = *(v0 + 272);
    v13 = *(v0 + 200);
    v22 = *(v0 + 208);
    v14 = *(v0 + 184);
    v21 = *(v0 + 192);
    v15 = *(v0 + 176);
    sub_1D7BA7690();
    v16 = swift_allocError();
    *v17 = 0;
    sub_1D7BA75D4();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1D7D2D53C();
    sub_1D7D2D4BC();

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v11 + 16);

    sub_1D7BA76E4(v15, &qword_1EC9E8370, sub_1D7BA75D4);
    sub_1D7BA7740(v14, type metadata accessor for RecipeBannerAd);
    (*(v13 + 8))(v22, v21);

    v8 = 0;
    v10 = 0;
  }

  v19 = *(v0 + 8);

  return v19(v8, v10);
}

uint64_t sub_1D7BA62C0()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2(0, 0);
}

uint64_t sub_1D7BA6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D7D3084C();
  v6[5] = sub_1D7D3083C();
  v8 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7BA6400, v8, v7);
}

id sub_1D7BA6400()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = sub_1D7BA65F0();
    result = [v2 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = v0[4];

    v8 = 0.0;
    if (v4)
    {
      v8 = 1.0;
    }

    [v6 setAlpha_];

    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = [v3 layer];
    [v9 setCreatesCompositingGroup_];

    [v7 setPreferredContentSize_];
    v10 = OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView;
    v11 = *&v7[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
    v12 = v3;
    if (v11)
    {
      [v11 removeFromSuperview];
      v11 = *&v7[v10];
    }

    *&v7[v10] = *(v0 + 1);
    v17 = v3;

    sub_1D7BA45B8();
  }

  else
  {
    v13 = v0[4];

    v14 = v13 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView;
    v15 = *(v13 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *v14;
    }

    else
    {
      v16 = 0;
    }

    v18 = v0[3];
    v19 = v0[4];
    *v14 = 0;
    *(v14 + 8) = v18;

    sub_1D7BA45B8();
    [v19 setPreferredContentSize_];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D7BA65F0()
{
  swift_getObjectType();
  sub_1D7D2CD7C();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v0 = sub_1D7D2CDEC();
    __swift_destroy_boxed_opaque_existential_1(v2);
    if (v0 == 200)
    {
      return 1;
    }
  }

  else
  {
    sub_1D7BA76E4(v2, &qword_1EC9E5F60, sub_1D7A80344);
  }

  return 0;
}

void sub_1D7BA66F0()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
  if (v1)
  {
    v2 = v1;
    [v2 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v24.origin.x = v14;
      v24.origin.y = v16;
      v24.size.width = v18;
      v24.size.height = v20;
      Width = CGRectGetWidth(v24);
      [v2 frame];
      v22 = CGRectGetWidth(v25);
      MEMORY[0x1DA70EA30]((Width - v22) * 0.5, v4, v6, v8, v10);
      [v2 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7BA6878()
{
  v1[2] = v0;
  v2 = sub_1D7D27BDC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for RecipeCardPlacementContext(0);
  v1[7] = swift_task_alloc();
  sub_1D7D3084C();
  v1[8] = sub_1D7D3083C();
  v4 = sub_1D7D307DC();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D7BA699C, v4, v3);
}

uint64_t sub_1D7BA699C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeTheme + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeTheme + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeTheme), v2);
  v4 = v1 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeID;
  v5 = *(v1 + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeID);
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1D7BA6A7C;

  return MEMORY[0x1EEDF8440](v5, v6, v2, v3);
}

uint64_t sub_1D7BA6A7C(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D7BA6BA4, v4, v3);
}

uint64_t sub_1D7BA6BA4()
{

  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v31 = *(v0 + 48);
      v30 = *(v0 + 56);
      v33 = *(v0 + 32);
      v32 = *(v0 + 40);
      v34 = *(v0 + 24);
      sub_1D7AED7A4(*(v0 + 16) + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_placement, v30);
      v35 = *(v31 + 20);
      (*(v33 + 104))(v32, *MEMORY[0x1E6997290], v34);
      LOBYTE(v31) = sub_1D7D27BCC();
      v36 = *(v33 + 8);
      v36(v32, v34);
      v36(v30 + v35, v34);
      v29 = v31 ^ 1;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = (*(v0 + 16) + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_placement);
  sub_1D7AED7A4(v8, v4);
  v41 = v3;
  v9 = *(v3 + 20);
  v39 = *MEMORY[0x1E6997290];
  v40 = *(v6 + 104);
  v40(v5);
  v10 = sub_1D7D27BCC();
  v11 = *(v6 + 8);
  v11(v5, v7);
  v11(v4 + v9, v7);
  if ((v10 & 1) == 0 || (*v8 & 1) == 0)
  {
    v12 = *(v0 + 56);
    v13 = *(v0 + 40);
    v14 = *(v0 + 24);
    sub_1D7AED7A4(v8, v12);
    v15 = *(v41 + 20);
    (v40)(v13, v39, v14);
    v16 = sub_1D7D27BCC();
    v11(v13, v14);
    v11(v12 + v15, v14);
    if ((v16 & 1) == 0 || v8[*(*(v0 + 48) + 24)] == 1)
    {
      v17 = *(v0 + 56);
      v18 = *(v0 + 40);
      v19 = *(v0 + 24);
      sub_1D7AED7A4(v8, v17);
      v20 = *(v41 + 20);
      (v40)(v18, v39, v19);
      v21 = sub_1D7D27BCC();
      v11(v18, v19);
      v11(v17 + v20, v19);
      v22 = v8;
      if ((v21 & 1) == 0 || v8[*(*(v0 + 48) + 24)] != 1)
      {
        v23 = *(v0 + 56);
        v24 = *(v0 + 40);
        v25 = *(v0 + 24);
        v26 = v22;
        sub_1D7AED7A4(v22, v23);
        v27 = *(v41 + 20);
        (v40)(v24, *MEMORY[0x1E6997298], v25);
        v28 = sub_1D7D27BCC();
        v11(v24, v25);
        v11(v23 + v27, v25);
        if ((v28 & 1) == 0 || v26[*(*(v0 + 48) + 24)] != 1 || !*(v0 + 96) || *v26 == 1)
        {
          v29 = 1;
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      v29 = *(v0 + 96);
      goto LABEL_17;
    }
  }

LABEL_16:
  v29 = 0;
LABEL_17:

  v37 = *(v0 + 8);

  return v37(v29 & 1);
}

uint64_t sub_1D7BA70B4()
{
  result = type metadata accessor for RecipeCardPlacementContext(319);
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

uint64_t sub_1D7BA71CC()
{
  result = sub_1D7D27BDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7BA7248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E2D8;

  return sub_1D7BA54B0(a1, v4, v5, v6);
}

uint64_t sub_1D7BA72FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D7A4E814;

  return sub_1D7BA6364(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D7BA73C4(uint64_t a1)
{
  v2 = sub_1D7D2CE3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v12[0] = a1;
  sub_1D7D2CD8C();
  sub_1D7D28EDC();

  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x1E69B4068];
  (*(v3 + 8))(v6, v2);
  if (v7 == v8)
  {
    v11 = a1;
    sub_1D7D2CD7C();
    if (v13)
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v9 = sub_1D7D2CDEC();
      __swift_destroy_boxed_opaque_existential_1(v12);
      if (v9 == 200)
      {
        return 1;
      }
    }

    else
    {
      sub_1D7BA76E4(v12, &qword_1EC9E5F60, sub_1D7A80344);
    }
  }

  return 0;
}

void sub_1D7BA7580(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7BA75D4()
{
  if (!qword_1EC9E5F68)
  {
    sub_1D7D2D04C();
    sub_1D7D2D17C();
    sub_1D798C778(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
    v0 = sub_1D7D2D5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5F68);
    }
  }
}

unint64_t sub_1D7BA7690()
{
  result = qword_1EC9E5F70;
  if (!qword_1EC9E5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5F70);
  }

  return result;
}

uint64_t sub_1D7BA76E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7BA7580(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7BA7740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7BA77A0()
{
  if (!qword_1EC9E5F78)
  {
    type metadata accessor for RecipeBannerAd();
    sub_1D7D2D04C();
    sub_1D7D2D17C();
    sub_1D798C778(qword_1EE0CF618, type metadata accessor for RecipeBannerAd);
    sub_1D798C778(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
    v0 = sub_1D7D2CC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5F78);
    }
  }
}

unint64_t sub_1D7BA78C0()
{
  result = qword_1EC9E5F88;
  if (!qword_1EC9E5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5F88);
  }

  return result;
}

uint64_t AssetFetchServiceType.fetchAsset(resourceIdentifier:cancelHandler:)()
{
  sub_1D7BA88CC(0, &qword_1EE0BB3D0, sub_1D79F5D34, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

void sub_1D7BA79A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1D7B873B4();

  sub_1D7D294BC();
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = sub_1D79EA4C8;
  v13[5] = v12;
  v13[6] = a3;
  v13[7] = a4;

  v14 = sub_1D7D2934C();
  sub_1D7D293AC();

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  v16 = sub_1D7D2934C();
  sub_1D7D293DC();
}