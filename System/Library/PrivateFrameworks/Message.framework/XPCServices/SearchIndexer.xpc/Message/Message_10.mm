void sub_1000B13C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = _swiftEmptyArrayStorage;
      if (v6 != a3)
      {
LABEL_7:
        memcpy(v10 + 4, (a2 + 4 * a3), 4 * v7);
        return;
      }
    }

    else
    {
      sub_10000C9C0(a5, a6);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 29;
      }

      v10[2] = v7;
      v10[3] = 2 * (v12 >> 2);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000B1490(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000B1560(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005CEF00, &qword_1004D1DD0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 24 * a3), 24 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1000B1644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = sub_100135428(*(a3 + 16), 0);
  v8 = sub_100139428(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v7;
}

void *sub_1000B1710(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
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

    v8 = sub_1000B3C78(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000B17A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005CF690, &qword_1004D2888);
  result = sub_1004A6A74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v33 = *(v17 + v16);
    v21 = *(v9 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v20 | (v20 << 32));
    result = sub_1004A6F14();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 16 * v25;
    *v30 = v19;
    *(v30 + 8) = v20;
    *(*(v9 + 56) + v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B19E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005CF698, qword_1004D2890);
  result = sub_1004A6A74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v40 = v4;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(v4 + 48) + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = (v17 + 72 * v16);
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v46 = *(v21 + 32);
      v44 = v23;
      v45 = v24;
      v42 = *v21;
      v43 = v22;
      v25 = *(v9 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v20 | (v20 << 32));
      result = sub_1004A6F14();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        break;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = *(v9 + 48) + 16 * v29;
      *v34 = v19;
      *(v34 + 8) = v20;
      v35 = *(v9 + 56) + 72 * v29;
      *v35 = v42;
      v36 = v43;
      v37 = v44;
      v38 = v45;
      *(v35 + 64) = v46;
      *(v35 + 32) = v37;
      *(v35 + 48) = v38;
      *(v35 + 16) = v36;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_100063BD4(&v42, v41);
        return v9;
      }

      result = sub_100063BD4(&v42, v41);
      v4 = v40;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v30 = 0;
    v31 = (63 - v26) >> 6;
    while (++v28 != v31 || (v30 & 1) == 0)
    {
      v32 = v28 == v31;
      if (v28 == v31)
      {
        v28 = 0;
      }

      v30 |= v32;
      v33 = *(v12 + 8 * v28);
      if (v33 != -1)
      {
        v29 = __clz(__rbit64(~v33)) + (v28 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1000B1C78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005CF3F8, &qword_1004D26D0);
  result = sub_1004A6A74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v33 = *v18;
    v32 = *(v18 + 8);
    v30 = *(v18 + 17);
    v31 = *(v18 + 16);
    v19 = *(v9 + 40);
    sub_1004A6E94();
    sub_1004A6EE4(v17);
    result = sub_1004A6F14();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 4 * v23) = v17;
    v28 = *(v9 + 56) + 24 * v23;
    *v28 = v33;
    *(v28 + 8) = v32;
    *(v28 + 16) = v31;
    *(v28 + 17) = v30;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B1ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005CF520, &unk_1004D2790);
  result = sub_1004A6A74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v19 = *(v18 + 8);
    v32 = *(v18 + 16);
    v33 = *v18;
    v20 = *(v9 + 40);
    sub_1004A6E94();
    sub_1004A6EE4(v17);
    result = sub_1004A6F14();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 4 * v24) = v17;
    v29 = *(v9 + 56) + 24 * v24;
    *v29 = v33;
    *(v29 + 8) = v19;
    *(v29 + 16) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B2124(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v90 = v8 + 2;
    v91 = v8[2];
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v8[2 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1000B2CEC((*a3 + 24 * *v92), (*a3 + 24 * *v94), *a3 + 24 * v95, v99);
        if (v5)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_114;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_115;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_116;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v97 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 18;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 18);
            v24 = v29 + v18;
            v25 = *(v22 - 10);
            v26 = *(v22 - 2);
            v27 = *(v22 - 1);
            v28 = *v22;
            result = *v24;
            *(v22 - 18) = *(v24 - 16);
            *(v22 - 2) = result;
            *(v24 - 16) = v23;
            *(v24 - 8) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
            *(v24 + 2) = v28;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v43 = v8[2];
    v42 = v8[3];
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_100085288((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v44;
    v45 = v8 + 4;
    v46 = &v8[2 * v43 + 4];
    *v46 = v9;
    v46[1] = v7;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_127;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = v8[4];
          v49 = v8[5];
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = &v8[2 * v44];
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_106;
          }

          v70 = &v45[2 * v47];
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v74 = &v8[2 * v44];
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_108;
        }

        v77 = &v45[2 * v47];
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v85 = &v45[2 * v47 - 2];
        v86 = *v85;
        v87 = &v45[2 * v47];
        v88 = v87[1];
        sub_1000B2CEC((*a3 + 24 * *v85), (*a3 + 24 * *v87), *a3 + 24 * v88, v99);
        if (v5)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_99;
        }

        if (v47 > v8[2])
        {
          goto LABEL_100;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = v8[2];
        if (v47 >= v89)
        {
          goto LABEL_101;
        }

        v44 = v89 - 1;
        result = memmove(&v45[2 * v47], v87 + 2, 16 * (v89 - 1 - v47));
        v8[2] = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = &v45[2 * v44];
      v53 = *(v52 - 8);
      v54 = *(v52 - 7);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 6);
      v56 = *(v52 - 5);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = &v8[2 * v44];
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_107;
      }

      if (v63 >= v55)
      {
        v81 = &v45[2 * v47];
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v97;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    result = *(v34 + 42);
    *v35 = *v34;
    v40 = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    *(v34 + 18) = result;
    v34 -= 24;
    *(v35 + 16) = v40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1000B2710(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v89 = v8 + 2;
    v90 = v8[2];
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v8[2 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1000B2CEC((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v98);
        if (v5)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v96 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 17;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 17);
            v24 = (v29 + v18);
            v25 = *(v22 - 9);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = *v24;
            *(v22 - 17) = *(v24 - 1);
            *(v22 - 1) = v28;
            *(v24 - 4) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v42 = v8[2];
    v41 = v8[3];
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_100085288((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v43;
    v44 = v8 + 4;
    v45 = &v8[2 * v42 + 4];
    *v45 = v9;
    v45[1] = v7;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = v8[4];
          v48 = v8[5];
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v8[2 * v43];
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[2 * v46];
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v8[2 * v43];
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v44[2 * v46 - 2];
        v85 = *v84;
        v86 = &v44[2 * v46];
        v87 = v86[1];
        sub_1000B2CEC((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v98);
        if (v5)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > v8[2])
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = v8[2];
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove(&v44[2 * v46], v86 + 2, 16 * (v88 - 1 - v46));
        v8[2] = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[2 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v8[2 * v43];
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[2 * v46];
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v96;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    *v35 = *v34;
    result = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    v34 -= 24;
    *(v35 + 16) = result;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1000B2CEC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

uint64_t sub_1000B2F2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16) | (*(result + 18) << 16);
  if ((*(result + 16) & 0xFF00) == 0x200)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 8);
    *a2 = *result;
    *(a2 + 8) = v3;
    *(a2 + 16) = v2 & 1;
    *(a2 + 17) = BYTE1(v2) & 1;
    *(a2 + 18) = BYTE2(v2);
  }

  return result;
}

uint64_t sub_1000B2F70(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v73 = a1 + 32;
  v7 = v6 == 0;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v7)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v34 = (v73 + 192 * v5);
    v35 = v34[9];
    v36 = v34[7];
    v69 = v34[8];
    v70 = v35;
    v37 = v34[9];
    v71[0] = v34[10];
    *(v71 + 9) = *(v34 + 169);
    v38 = v34[5];
    v39 = v34[3];
    v65 = v34[4];
    v66 = v38;
    v40 = v34[5];
    v41 = v34[7];
    v67 = v34[6];
    v68 = v41;
    v42 = v34[1];
    v61 = *v34;
    v62 = v42;
    v43 = v34[3];
    v45 = *v34;
    v44 = v34[1];
    v63 = v34[2];
    v64 = v43;
    *&v72[128] = v69;
    *&v72[144] = v37;
    *&v72[160] = v34[10];
    *&v72[169] = *(v34 + 169);
    *&v72[64] = v65;
    *&v72[80] = v40;
    *&v72[96] = v67;
    *&v72[112] = v36;
    *v72 = v45;
    *&v72[16] = v44;
    *&v72[32] = v63;
    *&v72[48] = v39;
    v14 = __OFADD__(v5++, 1);
    if (!v14)
    {
      UInt32.init(_:)(v72);
      sub_10000E268(&v61, &v49, &qword_1005CEF20, &qword_1004D1DF0);
      while (1)
      {
        v69 = *&v72[128];
        v70 = *&v72[144];
        v71[0] = *&v72[160];
        *(v71 + 9) = *&v72[169];
        v65 = *&v72[64];
        v66 = *&v72[80];
        v67 = *&v72[96];
        v68 = *&v72[112];
        v61 = *v72;
        v62 = *&v72[16];
        v63 = *&v72[32];
        v64 = *&v72[48];
        result = sub_1000B3948(&v61);
        if (result == 1)
        {
          return result;
        }

        v8 = *v72;
        v57 = *&v72[136];
        v58 = *&v72[152];
        v59 = *&v72[168];
        v60 = v72[184];
        v53 = *&v72[72];
        v54 = *&v72[88];
        v55 = *&v72[104];
        v56 = *&v72[120];
        v49 = *&v72[8];
        v50 = *&v72[24];
        v51 = *&v72[40];
        v52 = *&v72[56];
        v9 = *a3;
        v10 = sub_100067004(*v72);
        v12 = *(v9 + 16);
        v13 = (v11 & 1) == 0;
        v14 = __OFADD__(v12, v13);
        v15 = v12 + v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_21;
        }

        v16 = v11;
        if (*(v9 + 24) < v15)
        {
          break;
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v29 = v10;
        sub_10013A934();
        v10 = v29;
        if (v16)
        {
LABEL_9:
          v19 = *(*a3 + 56) + 184 * v10;
          v20 = *(v19 + 48);
          v22 = *v19;
          v21 = *(v19 + 16);
          v47[2] = *(v19 + 32);
          v47[3] = v20;
          v47[0] = v22;
          v47[1] = v21;
          v23 = *(v19 + 112);
          v25 = *(v19 + 64);
          v24 = *(v19 + 80);
          v47[6] = *(v19 + 96);
          v47[7] = v23;
          v47[4] = v25;
          v47[5] = v24;
          v27 = *(v19 + 144);
          v26 = *(v19 + 160);
          v28 = *(v19 + 128);
          v48 = *(v19 + 176);
          v47[9] = v27;
          v47[10] = v26;
          v47[8] = v28;
          *(v19 + 128) = v57;
          *(v19 + 144) = v58;
          *(v19 + 160) = v59;
          *(v19 + 176) = v60;
          *(v19 + 64) = v53;
          *(v19 + 80) = v54;
          *(v19 + 96) = v55;
          *(v19 + 112) = v56;
          *v19 = v49;
          *(v19 + 16) = v50;
          *(v19 + 32) = v51;
          *(v19 + 48) = v52;
          sub_10003E730(v47);
          goto LABEL_13;
        }

LABEL_11:
        v30 = *a3;
        *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        *(v30[6] + 4 * v10) = v8;
        v31 = v30[7] + 184 * v10;
        *(v31 + 112) = v56;
        *(v31 + 96) = v55;
        *(v31 + 80) = v54;
        *(v31 + 64) = v53;
        *(v31 + 176) = v60;
        *(v31 + 160) = v59;
        *(v31 + 144) = v58;
        *(v31 + 128) = v57;
        *v31 = v49;
        *(v31 + 16) = v50;
        *(v31 + 32) = v51;
        *(v31 + 48) = v52;
        v32 = v30[2];
        v14 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v14)
        {
          goto LABEL_23;
        }

        v30[2] = v33;
LABEL_13:
        a2 = 1;
        v7 = v5 >= v6;
        if (v5 != v6)
        {
          goto LABEL_14;
        }

LABEL_17:
        sub_1000B395C(&v61);
        *&v72[128] = v69;
        *&v72[144] = v70;
        *&v72[160] = v71[0];
        *&v72[169] = *(v71 + 9);
        *&v72[64] = v65;
        *&v72[80] = v66;
        *&v72[96] = v67;
        *&v72[112] = v68;
        *v72 = v61;
        *&v72[16] = v62;
        v5 = v6;
        *&v72[32] = v63;
        *&v72[48] = v64;
      }

      sub_1000C3B80(v15, a2 & 1);
      v17 = *a3;
      v10 = sub_100067004(v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_24;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000B3374()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  sub_1000197E0(v0 + 9);
  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[17];

  v7 = v0[18];

  return _swift_deallocObject(v0, 152, 7);
}

Swift::Int sub_1000B33E4(Swift::Int result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v23 = result;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(result + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a2 + 56;
  v12 = a3 + 56;
LABEL_5:
  while (v9)
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

LABEL_7:
    v13 = *(*(v23 + 48) + (__clz(__rbit64(v9)) | (v5 << 6)));
    v14 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v13);
    result = sub_1004A6F14();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v9 &= v9 - 1;
    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a3 + 16))
    {
      v19 = *(a3 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v13);
      result = sub_1004A6F14();
      v20 = -1 << *(a3 + 32);
      v21 = result & ~v20;
      if ((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (*(*(a3 + 48) + v21) != v13)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }
  }

  do
  {
    v18 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v10)
    {
      return 1;
    }

    v9 = *(v6 + 8 * v18);
    ++v5;
  }

  while (!v9);
  v5 = v18;
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1000B35D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B364C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1000B3664(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0x1FuLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_1000B3720()
{
  result = qword_1005CF330;
  if (!qword_1005CF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF330);
  }

  return result;
}

uint64_t *sub_1000B3774(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1000B37D8(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0x1FuLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1000B3894()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000B38F4()
{
  result = qword_1005CF348;
  if (!qword_1005CF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF348);
  }

  return result;
}

uint64_t sub_1000B3948(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

double sub_1000B395C(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -2;
  return result;
}

uint64_t sub_1000B3A5C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  sub_1000197E0(v0 + 10);
  v4 = v0[18];

  v5 = v0[19];

  return _swift_deallocObject(v0, 160, 7);
}

void sub_1000B3ABC(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 39))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if (!*(v1 + 36))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 35))
  {
    v6 = 0;
  }

  sub_1000AEE38(*(v1 + 16), *(v1 + 24), ((v6 | (*(v1 + 33) << 8) | (*(v1 + 34) << 16) | v5 | v4 | v3) + v2) | *(v1 + 32), a1);
}

uint64_t sub_1000B3B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 47))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 46))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 45))
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if (!*(v1 + 44))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 43))
  {
    v6 = 0;
  }

  return sub_1000ABD5C(*(v1 + 16), *(v1 + 24), *(v1 + 32), ((v6 | (*(v1 + 41) << 8) | (*(v1 + 42) << 16) | v5 | v4 | v3) + v2) | *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1000B3BDC(uint64_t (*a1)(void, void, void, void, unint64_t))
{
  v2 = 0x100000000000000;
  if (!*(v1 + 55))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 54))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 53))
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if (!*(v1 + 52))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 51))
  {
    v6 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), ((v6 | (*(v1 + 49) << 8) | (*(v1 + 50) << 16) | v5 | v4 | v3) + v2) | *(v1 + 48));
}

uint64_t sub_1000B3C78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v23 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 56) + 24 * v15);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 16);
    if (*(v16 + 17))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    result = a4(*(*(a3 + 48) + 4 * v15), v17, v18, v20 | v19);
    if (result)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1000B1C78(v23, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1000B1C78(v23, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B3DD8(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t, void))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000B3C78(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1000B1710(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1000B4008()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  sub_1000197E0(v0 + 10);
  v4 = v0[17];

  v5 = v0[19];

  v6 = v0[20];

  return _swift_deallocObject(v0, 168, 7);
}

unint64_t sub_1000B4088()
{
  result = qword_1005CF3F0;
  if (!qword_1005CF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF3F0);
  }

  return result;
}

uint64_t sub_1000B418C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  sub_1000197E0(v0 + 9);
  v4 = v0[14];

  v5 = v0[18];

  v6 = v0[19];

  v7 = v0[20];

  v8 = v0[21];

  v9 = v0[23];

  v10 = v0[24];

  v11 = v0[25];

  v12 = v0[26];

  v13 = v0[27];

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_1000B422C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  sub_1000197E0(v0 + 10);
  v4 = v0[20];

  v5 = v0[21];

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1000B4298(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000B4328()
{
  v1 = v0[2];

  v2 = v0[5];

  sub_1000197E0(v0 + 8);
  v3 = v0[13];

  v4 = v0[16];

  v5 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_1000B4388()
{
  v1 = v0[2];

  v2 = v0[5];

  sub_1000197E0(v0 + 8);
  v3 = v0[13];

  v4 = v0[17];

  v5 = v0[18];

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1000B4444()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  sub_1000197E0(v0 + 10);
  v4 = v0[17];

  v5 = v0[19];

  v6 = v0[20];

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_1000B44AC()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  sub_1000197E0(v0 + 10);
  v4 = v0[16];

  v5 = v0[18];

  v6 = v0[20];

  v7 = v0[21];

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1000B451C()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  sub_1000197E0(v0 + 10);
  v4 = v0[16];

  v5 = v0[19];

  v6 = v0[21];

  v7 = v0[22];

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_1000B458C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B45E0()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  sub_1000197E0(v0 + 10);
  v4 = v0[21];

  v5 = v0[22];

  return _swift_deallocObject(v0, 184, 7);
}

void sub_1000B4658()
{
  if (!qword_1005CF5B0)
  {
    sub_10000DEFC(&unk_1005CF5B8, &unk_1004D27C0);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CF5B0);
    }
  }
}

void sub_1000B46DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_1000B4658();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1000B4760(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B479C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B47E8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1000B4820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B4888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B4940()
{
  result = qword_1005CF6A0;
  if (!qword_1005CF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF6A0);
  }

  return result;
}

Swift::Int sub_1000B4998()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6ED4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1000B4A10()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6ED4(v1);
  return sub_1004A6F14();
}

uint64_t sub_1000B4A68(__int16 a1)
{
  v2 = sub_1004A6F44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CF6A8, &qword_1004D2958);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v16 - v9;
  v16[7] = a1;
  sub_10000C9C0(&qword_1005CF6B0, &qword_1004D2960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004D01D0;
  *(v11 + 32) = 0x696C696269736976;
  *(v11 + 40) = 0xEA00000000007974;
  *(v11 + 48) = a1 < 0;
  *(v11 + 72) = &_s11UserVisibleON;
  *(v11 + 80) = 0x797469726F697270;
  *(v11 + 88) = 0xE800000000000000;
  *(v11 + 120) = &_s12PriorityInfoV5OrderVN;
  *(v11 + 96) = a1 & 0x3FFF;
  v12 = enum case for Mirror.DisplayStyle.struct(_:);
  v13 = sub_1004A6F34();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  return sub_1004A6F54();
}

uint64_t sub_1000B4CD4()
{
  if (*v0 == 0x3FFF)
  {
    return 0x656E6F6E2ELL;
  }

  v2 = *v0;
  return sub_1004A6CE4();
}

uint64_t sub_1000B4D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001638E4(_swiftEmptyArrayStorage);
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 40;
LABEL_2:
  v8 = (v7 + 16 * v5);
  v9 = v5;
  while (v6 != v9)
  {
    v10 = v9;
    if (v9 >= v6)
    {
      goto LABEL_45;
    }

    v5 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_46;
    }

    v11 = *(v8 - 1);
    v12 = *v8;
    if (v4[2])
    {
      sub_100063C84(*(v8 - 1), *v8);
      v9 = v10 + 1;
      v8 += 2;
      if (v13)
      {
        continue;
      }
    }

    v14 = v10;
    if (v10 >= 0x3FFFu)
    {
      v14 = 0x3FFF;
    }

    v15 = v14 | 0x8000;
    if (v10 < 0x10000)
    {
      v16 = v15;
    }

    else
    {
      v16 = -16385;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_100063C84(v11, v12);
    v20 = v4[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_49;
    }

    v24 = v19;
    if (v4[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v27 = v18;
      sub_10013B0F4();
      v18 = v27;
      if (v24)
      {
LABEL_19:
        v26 = v18;

        *(v4[7] + 2 * v26) = v16;
        goto LABEL_2;
      }
    }

    else
    {
      sub_1000C4A0C(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100063C84(v11, v12);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_51;
      }

LABEL_18:
      if (v24)
      {
        goto LABEL_19;
      }
    }

    v4[(v18 >> 6) + 8] |= 1 << v18;
    v28 = (v4[6] + 16 * v18);
    *v28 = v11;
    v28[1] = v12;
    *(v4[7] + 2 * v18) = v16;
    v29 = v4[2];
    v22 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v22)
    {
      goto LABEL_50;
    }

    v4[2] = v30;
    goto LABEL_2;
  }

  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v36 = 0;
  while (v33)
  {
LABEL_33:
    v40 = (*(a1 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v33)))));
    v41 = *v40;
    v42 = v40[1];

    sub_1000B5158(v35);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v38 = sub_100063C84(v41, v42);
    v45 = v4[2];
    v46 = (v44 & 1) == 0;
    v22 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v22)
    {
      goto LABEL_47;
    }

    v48 = v44;
    if (v4[3] < v47)
    {
      sub_1000C4A0C(v47, v43);
      v38 = sub_100063C84(v41, v42);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_51;
      }

LABEL_38:
      if (v48)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    if (v43)
    {
      goto LABEL_38;
    }

    v53 = v38;
    sub_10013B0F4();
    v38 = v53;
    if (v48)
    {
LABEL_26:
      v37 = v38;

      v38 = v37;
      goto LABEL_27;
    }

LABEL_39:
    v4[(v38 >> 6) + 8] |= 1 << v38;
    v50 = (v4[6] + 16 * v38);
    *v50 = v41;
    v50[1] = v42;
    *(v4[7] + 2 * v38) = -16385;
    v51 = v4[2];
    v22 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v22)
    {
      goto LABEL_48;
    }

    v4[2] = v52;
LABEL_27:
    v33 &= v33 - 1;
    *(v4[7] + 2 * v38) &= ~0x8000u;
    v35 = sub_1000B4D88;
  }

  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v34)
    {

      sub_1000B5158(v35);
      return v4;
    }

    v33 = *(a1 + 56 + 8 * v39);
    ++v36;
    if (v33)
    {
      v36 = v39;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000B5158(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000B5190()
{
  result = qword_1005CF6B8;
  if (!qword_1005CF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CF6B8);
  }

  return result;
}

__n128 sub_1000B5204(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000B5228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B5270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000B52D4()
{
  result = _swiftEmptySetSingleton;
  if (v0[3])
  {
    v2 = *v0;
    v8 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 184;
      do
      {
        if (*(*v4 + 16))
        {
          v5 = *(v4 - 128);
          v6 = *(v4 - 136);

          sub_100088220(&v7, v6, v5);
        }

        v4 += 176;
        --v3;
      }

      while (v3);
      return v8;
    }
  }

  return result;
}

uint64_t sub_1000B537C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_1000920E8(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = v23;
  v7 = 0;
  v8 = *(a1 + 36);
  v24 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(a1 + 48) + 4 * result);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = result;
      sub_1000920E8((v13 > 1), v14 + 1, 1);
      v6 = v23;
      v8 = v24;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    *(&_swiftEmptyArrayStorage[4] + v14) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v15 = *(v3 + 8 * v10);
    if ((v15 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_100020944(result, v24, 0);
          v6 = v23;
          v8 = v24;
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v24, 0);
      v6 = v23;
      v8 = v24;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1000B55B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  if (*(v5 + 24) != 1)
  {
    goto LABEL_17;
  }

  v17 = *(*v5 + 16);
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = 0;
  while (1)
  {
    v19 = (*v5 + 32 + 176 * v18);
    if (v19[1] == a2)
    {
      v20 = *v19;
      v21 = *(*v19 + 16);
      if (v21 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v18 == v17)
    {
      goto LABEL_17;
    }
  }

  if (v21)
  {
    v22 = v20 == a1;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
LABEL_15:
    v25 = v19[12];
    if (v25)
    {
      v26 = v25 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v27 = _s13SelectedStateV7WrappedVMa(0);
      v28 = v26 + *(v27 + 20);
      if ((*(v28 + 20) & 1) == 0)
      {
        v38 = *(v28 + 16);
        v39 = v5[3];
        v69 = v5[2];
        v70[0] = v39;
        *(v70 + 12) = *(v5 + 60);
        v40 = v5[1];
        v67 = *v5;
        v68 = v40;
        __chkstk_darwin(v27);
        *(&v55 - 2) = a3;
        v41 = sub_1000B7718(a1, a2, sub_1000CBAF8);
        v42 = sub_10000C9C0(&qword_1005CF7A0, &qword_1004D2CB8);
        v61[3] = v42;
        v43 = sub_1000CBB00(&qword_1005CF7A8, &qword_1005CF7A0, &qword_1004D2CB8);
        v44 = _swiftEmptyArrayStorage;
        if (v41)
        {
          v44 = v41;
        }

        v61[4] = v43;
        v61[0] = v44;
        v45 = sub_10002587C(v61, v42);
        v46 = *(*(v42 - 8) + 64);
        v47 = __chkstk_darwin(v45);
        v49 = (&v55 - v48);
        (*(v50 + 16))(&v55 - v48, v47);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v51 = sub_1000B3774(v58);
        *v51 = *v49;
        v51[1] = 0;
        sub_100025928(v58, AssociatedTypeWitness);
        sub_1004A6414();
        v52 = v57;
        if (v57 >> 60 != 15)
        {
          v53 = v56;
          do
          {
            v54 = static MonotonicTime.now()();
            v62[0] = v53;
            v62[1] = v52;
            v63 = v38;
            v64 = a1;
            v65 = a2;
            v66 = v54;

            sub_1000CBB54(v53, v52);
            sub_1000391F0(v62);
            sub_100014D40(v53, v52);

            sub_1000CBB68(v53, v52);
            sub_100025928(v58, AssociatedTypeWitness);
            sub_1004A6414();
            v53 = v56;
            v52 = v57;
          }

          while (v57 >> 60 != 15);
        }

        sub_1000197E0(v58);
        sub_1000197E0(v61);
        return;
      }
    }

LABEL_17:
    sub_1000CBB98(a4, v16, type metadata accessor for MailboxTaskLogger);
    sub_1000CBB98(a4, v13, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v29 = sub_1004A4A54();
    v30 = sub_1004A6014();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v31 = 0x204100703;
      *(v31 + 8) = 256;
      v32 = &v13[*(v10 + 20)];
      *(v31 + 10) = *v32;
      *(v31 + 11) = 2082;
      v33 = &v16[*(v10 + 20)];
      *(v31 + 13) = sub_10015BA6C(*(v33 + 1), *(v33 + 2), v62);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      LOWORD(v32) = *(v32 + 12);
      sub_1000CBC00(v13, type metadata accessor for MailboxTaskLogger);
      *(v31 + 29) = v32;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v34 = *(v33 + 4);
      LODWORD(v32) = *(v33 + 10);

      sub_1000CBC00(v16, type metadata accessor for MailboxTaskLogger);
      *&v67 = v34;
      DWORD2(v67) = v32;
      v35 = sub_1004A5824();
      v37 = sub_10015BA6C(v35, v36, v62);

      *(v31 + 43) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Trying to add message-to-skip, but mailbox has no UID validity.", v31, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000CBC00(v13, type metadata accessor for MailboxTaskLogger);

      sub_1000CBC00(v16, type metadata accessor for MailboxTaskLogger);
    }

    return;
  }

  v23 = (v20 + 32);
  v24 = (a1 + 32);
  while (v21)
  {
    if (*v23 != *v24)
    {
      goto LABEL_4;
    }

    ++v23;
    ++v24;
    if (!--v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1000B5C3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v33 = _s13SelectedStateV7WrappedVMa(0);
  v4 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = v37(v36, 0))
  {
LABEL_10:
    while (1)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a1 + 48) + (v16 | (i << 6)));
      v19 = sub_10012CCA4(v36, v34);
      if (*(v18 + 96))
      {
        break;
      }

      result = v19(v36, 0);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v20 = v18;
    v37 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = *(v20 + 96);
      v22 = a1;
      v23 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v24 = v21 + v23;
      a1 = v22;
      v25 = v32;
      sub_1000CBB98(v24, v32, _s13SelectedStateV7WrappedVMa);
      v26 = _s13SelectedStateV8_StorageCMa(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      sub_1000CBC60(v25, v29 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
      v30 = *(v20 + 96);
      *(v20 + 96) = v29;
    }

    v13 = *(v20 + 96) + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v14 = v13 + *(v33 + 20) + 160;
    sub_10013FC9C(v17);
    swift_endAccess();
  }

LABEL_6:
  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v9 = *(v6 + 8 * v15);
    ++i;
    if (v9)
    {
      i = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B5EB4(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v58 = a2;
  v57 = result;
LABEL_4:
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(v3 + 48) + ((v10 << 10) | (16 * v12));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = a2[1];
    v17 = v16 + 32;
    v18 = *(v16 + 16);
    if (*a2)
    {
      result = sub_10015C0B4(v14, v15, v17, v18, (*a2 + 16));
      if ((v20 & 1) == 0)
      {
        v21 = result;
        v59 = v15;
        v67 = v14;
        v24 = a2;
        v23 = *a2;
        v22 = v24[1];
        v25 = *(v22 + 16);
        if (v23)
        {
          v26 = v19;
          swift_beginAccess();
          if ((*(v23 + 16) & 0x3FLL) == (*(v23 + 24) & 0x3FLL))
          {
            a2 = v58;
            if (v25)
            {
              goto LABEL_14;
            }
          }

          else
          {
            a2 = v58;
            if (v25 > sub_1004A4764())
            {
LABEL_14:

              v27 = *a2;
              result = swift_isUniquelyReferenced_native();
              v28 = *a2;
              if ((result & 1) == 0)
              {
                if (!v28)
                {
                  goto LABEL_60;
                }

                v29 = *a2;
                v30 = sub_1004A4774();

                *v58 = v30;
                v28 = v30;
                a2 = v58;
              }

              if (!v28)
              {
                goto LABEL_59;
              }

              result = sub_100189788(v26, (v28 + 16), v28 + 32, a2);
              v31 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                goto LABEL_57;
              }

              if (v31 < v21)
              {
                goto LABEL_58;
              }

              sub_100189B48(v21, v31, v22, (v28 + 16));
              sub_100189494(v21);
              goto LABEL_46;
            }
          }

          v14 = v67;
        }

        else
        {
          a2 = v58;
          v14 = v67;
          if (v25)
          {
LABEL_33:
            v67 = v14;

            sub_100189494(v21);
            goto LABEL_47;
          }
        }

        v67 = v14;

        sub_100189494(v21);
        v37 = *a2;
        if (*a2)
        {
          swift_beginAccess();
          v38 = *(v37 + 24) & 0x3FLL;
        }

        else
        {
          v38 = 0;
        }

        v39 = a2[1];
        if (v38 || *(v39 + 16) >= 0x10uLL)
        {
          v40 = sub_1004A4784();
          if (v38 <= v40)
          {
            v41 = v40;
          }

          else
          {
            v41 = v38;
          }

          v42 = sub_1001882D4(v39, v41, 0, v38);

          a2 = v58;
          *v58 = v42;
        }

        else
        {

          a2 = v58;
          *v58 = 0;
        }

LABEL_46:
        v3 = v57;
LABEL_47:

        v43 = a2[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100141AFC(v43);
          v43 = result;
        }

        v44 = *(v43 + 16);
        if (v21 >= v44)
        {
          goto LABEL_56;
        }

        v45 = v44 - 1;
        v46 = (v43 + 176 * v21);
        v47 = v46[2];
        v48 = v46[4];
        v61[1] = v46[3];
        v61[2] = v48;
        v61[0] = v47;
        v49 = v46[5];
        v50 = v46[6];
        v51 = v46[8];
        v61[5] = v46[7];
        v62 = v51;
        v61[3] = v49;
        v61[4] = v50;
        v52 = v46[9];
        v53 = v46[10];
        v54 = v46[12];
        v65 = v46[11];
        v66 = v54;
        v63 = v52;
        v64 = v53;
        memmove(v46 + 2, v46 + 13, 176 * (v45 - v21));
        *(v43 + 16) = v45;
        a2[2] = v43;
        v55 = v62;

        sub_10000E0E8(v61);
        if (v55)
        {

          v56 = v67;

          sub_100088220(&v60, v56, v59);
        }
      }
    }

    else if (v18)
    {
      v21 = 0;
      while (1)
      {
        v32 = (v17 + 16 * v21);
        if ((v32[2] | (v32[2] << 32)) == (v15 | (v15 << 32)))
        {
          v33 = *v32;
          v34 = *(*v32 + 16);
          if (v34 == *(v14 + 16))
          {
            if (!v34 || v33 == v14)
            {
LABEL_31:
              v59 = *(v13 + 8);
              goto LABEL_33;
            }

            v35 = (v33 + 32);
            v36 = (v14 + 32);
            while (*v35 == *v36)
            {
              ++v35;
              ++v36;
              if (!--v34)
              {
                goto LABEL_31;
              }
            }
          }
        }

        if (++v21 == v18)
        {
          goto LABEL_4;
        }
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1000B631C(uint64_t result, unsigned int a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(*v3 + 16);
    if (!v7)
    {
LABEL_18:
      *v3 = v5;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = v5 + 32 + 176 * v8;
      if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12 == *(result + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
      v13 = v11 == result;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      v4 = a3;
      sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if (result)
      {
LABEL_16:
        if (v8 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        v4(v16 + 176 * v8 + 72);
        result = sub_100020D58(v5, v6, v9, 1);
        v5 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (result + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v5);
    v16 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000B649C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 24) == 1)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = *(*v3 + 16);
    if (!v6)
    {
LABEL_19:
      *v3 = v4;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v7 = result;
    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = (v4 + 32 + 176 * v8);
      if (v10[1] == a3)
      {
        v11 = *v10;
        v12 = *(*v10 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v6)
      {
        goto LABEL_19;
      }
    }

    if (v12)
    {
      v13 = v11 == a2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v4;
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (a2 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v4);
    v16 = result;
LABEL_16:
    if (v8 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = v16 + 176 * v8;

      v18 = sub_1000CA1B0((v17 + 184), v7);

      v19 = *(*(v17 + 184) + 16);
      if (v19 >= v18)
      {
        sub_1001649C0(v18, v19);

        result = sub_100020D58(v4, v5, v9, 1);
        v4 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6658(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = (v7 + 32 + 176 * v10);
      if (v12[1] == a2)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(result + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == result;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = a3;
      v5 = a4;
      sub_100020D10(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10009C364(v6, v5);
        result = sub_100020D58(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (result + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000B67CC(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(*v3 + 16);
    if (!v7)
    {
LABEL_18:
      *v3 = v5;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = v5 + 32 + 176 * v8;
      if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a3 | (a3 << 32)))
      {
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
      v13 = v11 == a2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      v4 = result;
      sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if (result)
      {
LABEL_16:
        if (v8 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10009C45C(v4);
        result = sub_100020D58(v5, v6, v9, 1);
        v5 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (a2 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v5);
    v16 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000B693C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {

      return sub_1000FFEE8(v4, v5);
    }

    return 0;
  }

  if (*(a2 + 24))
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  if ((sub_10011442C(v4, v5) & 1) == 0 || (sub_1000FFCF4(v11, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1000FFDEC(v10, v8);
}

uint64_t sub_1000B69F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 12) = *(a1 + 60);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 12) = *(a2 + 60);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1000C9B9C(v7, v9) & 1;
}

uint64_t sub_1000B6A4C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = sub_100163C74(_swiftEmptyArrayStorage);
  if ((v2 & 1) == 0)
  {
    return v3;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = 0;
  v6 = v1 + 32;
  while (2)
  {
    v7 = (v6 + 176 * v5);
    for (i = v5; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v9 = *v7;
      v10 = v7[2];
      v49 = v7[1];
      v50 = v10;
      v48 = v9;
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[6];
      v53 = v7[5];
      v54 = v13;
      v51 = v11;
      v52 = v12;
      v14 = v7[7];
      v15 = v7[8];
      v16 = v7[10];
      v57 = v7[9];
      v58 = v16;
      v55 = v14;
      v56 = v15;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      v17 = *(v57 + 16);
      if (v17)
      {
        break;
      }

      v7 += 11;
      if (v5 == v4)
      {
        return v3;
      }
    }

    LOBYTE(v18) = *(v57 + 64);
    v19 = v17 - 1;
    if (v17 != 1)
    {
      if (v17 < 3)
      {
        v20 = 1;
        goto LABEL_23;
      }

      v20 = v19 | 1;
      v21 = (v57 + 144);
      v22 = v19 & 0xFFFFFFFFFFFFFFFELL;
      LOBYTE(v23) = *(v57 + 64);
      do
      {
        v24 = *(v21 - 40);
        v26 = *v21;
        v21 += 80;
        v25 = v26;
        if (v18 <= v24)
        {
          v18 = v24;
        }

        else
        {
          v18 = v18;
        }

        v23 = v23;
        if (v23 <= v25)
        {
          v23 = v25;
        }

        v22 -= 2;
      }

      while (v22);
      if (v18 <= v23)
      {
        LOBYTE(v18) = v23;
      }

      if (v19 != (v19 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_23:
        v27 = v17 - v20;
        v28 = (v57 + 40 * v20 + 64);
        do
        {
          v30 = *v28;
          v28 += 40;
          v29 = v30;
          if (v18 <= v30)
          {
            LOBYTE(v18) = v29;
          }

          --v27;
        }

        while (v27);
      }
    }

    v31 = v49;
    v32 = DWORD2(v49);
    sub_10000E08C(&v48, &v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v3;
    v34 = sub_100063B5C(v31, v32);
    v36 = v3[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_41;
    }

    v40 = v35;
    if (v3[3] < v39)
    {
      sub_1000C4CA8(v39, isUniquelyReferenced_nonNull_native, &qword_1005CF6C0, &qword_1004D2B18);
      v34 = sub_100063B5C(v31, v32);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_43;
      }

LABEL_32:
      v3 = v47;
      if (v40)
      {
        goto LABEL_33;
      }

LABEL_35:
      v3[(v34 >> 6) + 8] |= 1 << v34;
      v43 = v3[6] + 16 * v34;
      *v43 = v31;
      *(v43 + 8) = v32;
      *(v3[7] + v34) = v18;
      v44 = v3[2];
      v38 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (!v38)
      {
        v3[2] = v45;

        goto LABEL_37;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    v42 = v34;
    sub_10013B25C();
    v34 = v42;
    v3 = v47;
    if ((v40 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    *(v3[7] + v34) = v18;
LABEL_37:
    sub_10000E0E8(&v48);
    if (v5 != v4)
    {
      continue;
    }

    return v3;
  }
}

void *sub_1000B6D14(uint64_t a1)
{
  if ((v1[24] & 1) == 0)
  {

    return sub_100163DA8(_swiftEmptyArrayStorage);
  }

  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = 0;
  v5 = v2 + 32;
  v6 = &_swiftEmptyDictionarySingleton;
  v40 = v2 + 32;
  while (2)
  {
    v41 = v6;
    v7 = (v5 + 176 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v9 = *v7;
      v10 = v7[2];
      v45 = v7[1];
      v46 = v10;
      v44 = v9;
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[6];
      v49 = v7[5];
      v50 = v13;
      v47 = v11;
      v48 = v12;
      v14 = v7[7];
      v15 = v7[8];
      v16 = v7[10];
      v53 = v7[9];
      v54 = v16;
      v51 = v14;
      v52 = v15;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      v17 = DWORD2(v45);
      v19 = *(&v44 + 1);
      v18 = v45;
      v20 = v44;
      v21 = v49;
      v22 = *(&v48 + 1);
      sub_10000E08C(&v44, &v43);
      if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v22, v21, a1, 0))
      {
        break;
      }

      sub_10000E0E8(&v44);
      v7 += 11;
      if (v4 == v3)
      {
        return v41;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v41;
    v24 = sub_100063C84(v20, v19);
    v26 = v41[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = v25;
    if (v41[3] < v29)
    {
      sub_1000C2A74(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_100063C84(v20, v19);
      v5 = v40;
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_31;
      }

LABEL_15:
      v6 = v43;
      if (v30)
      {
        goto LABEL_16;
      }

LABEL_18:
      v6[(v24 >> 6) + 8] |= 1 << v24;
      v35 = (v6[6] + 16 * v24);
      *v35 = v20;
      v35[1] = v19;
      v36 = v6[7] + 16 * v24;
      *v36 = v18;
      *(v36 + 8) = v17;

      sub_10000E0E8(&v44);
      v37 = v6[2];
      v28 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (!v28)
      {
        v6[2] = v38;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    v5 = v40;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v34 = v24;
    sub_100139FEC();
    v24 = v34;
    v6 = v43;
    if ((v30 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v32 = v6[7] + 16 * v24;
    v33 = *v32;
    *v32 = v18;
    *(v32 + 8) = v17;

    sub_10000E0E8(&v44);
LABEL_20:
    if (v4 != v3)
    {
      continue;
    }

    return v6;
  }
}

void *sub_1000B6FCC()
{
  if ((v0[24] & 1) == 0)
  {

    return sub_100163EF4(_swiftEmptyArrayStorage);
  }

  v1 = *(*v0 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v3 = *v0 + 32;
  v4 = &_swiftEmptyDictionarySingleton;
  while (2)
  {
    v5 = (v3 + 176 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = *v5;
      v8 = v5[2];
      v44 = v5[1];
      v45 = v8;
      v43 = v7;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v48 = v5[5];
      v49 = v11;
      v46 = v9;
      v47 = v10;
      v12 = v5[7];
      v13 = v5[8];
      v14 = v5[10];
      v52 = v5[9];
      v53 = v14;
      v50 = v12;
      v51 = v13;
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      v15 = *(&v47 + 1);
      if (*(&v47 + 1) >= 3uLL)
      {
        break;
      }

      v5 += 11;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v40 = v3;
    v16 = v48;
    v41 = DWORD2(v44);
    v17 = *(&v43 + 1);
    v18 = v44;
    v19 = v43;
    sub_10000E08C(&v43, &v42);
    v20 = v16;
    sub_1000CA1A0(v15);
    v21 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v4;
    v23 = sub_100063C84(v19, v17);
    v25 = v4[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v29 = v24;
    if (v4[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = v23;
        sub_10013B3D0();
        v23 = v38;
      }
    }

    else
    {
      sub_1000C4F48(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_100063C84(v19, v17);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_31;
      }
    }

    v4 = v42;
    if ((v29 & 1) == 0)
    {
      v42[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v4[6] + 16 * v23);
      *v34 = v19;
      v34[1] = v17;
      v35 = v4[7] + 32 * v23;
      *v35 = v15;
      *(v35 + 8) = v20;
      *(v35 + 16) = v21;
      *(v35 + 24) = v41;

      sub_10000E0E8(&v43);
      v36 = v4[2];
      v27 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v27)
      {
        v4[2] = v37;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    v31 = v42[7] + 32 * v23;
    v32 = *v31;
    v33 = *(v31 + 16);
    *v31 = v15;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    *(v31 + 24) = v41;

    sub_10000E0E8(&v43);
LABEL_20:
    v3 = v40;
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

uint64_t sub_1000B7288(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) != 1)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (1)
  {
    v10 = (v5 + 32 + 176 * v7);
    if (v10[1] == a2)
    {
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 1;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_15:
    v4 = a3;
    sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v5;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_4;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v5);
  v17 = result;
LABEL_16:
  if (v7 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v4(v17 + 176 * v7 + 32);
    sub_100020D58(v5, v8, v9, 1);
    result = 0;
    *v3 = v17;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000B7400(uint64_t a1, unsigned int a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) != 1)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (1)
  {
    v10 = v5 + 32 + 176 * v7;
    if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v11 = *(v10 + 16);
      v12 = *(v11 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 1;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_15:
    v4 = a3;
    sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v5;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_4;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v5);
  v17 = result;
LABEL_16:
  if (v7 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v4(v17 + 176 * v7 + 32);
    sub_100020D58(v5, v8, v9, 1);
    result = 0;
    *v3 = v17;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000B7584(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a3 + 24) != 1)
  {
    return 0;
  }

  v6 = *a3;
  v7 = *(*a3 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v10 = a3 + 1;
  v9 = a3[1];
  v11 = a3[2];
  while (1)
  {
    v12 = v6 + 32 + 176 * v8;
    if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v13 = *(v12 + 16);
      v14 = *(v13 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      return 0;
    }
  }

  if (v14)
  {
    v15 = v13 == a1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_15:
    v5 = a4;
    v4 = a3;
    sub_100020D10(*a3, a3[1], a3[2], 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = (v13 + 32);
    v17 = (a1 + 32);
    while (v14)
    {
      if (*v16 != *v17)
      {
        goto LABEL_4;
      }

      ++v16;
      ++v17;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v6);
  v19 = result;
LABEL_16:
  if (v8 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    v20 = v19 + 176 * v8;
    v21 = *(v5 + 16);
    *(v20 + 64) = *v5;
    *(v20 + 80) = v21;
    *(v20 + 96) = *(v5 + 32);
    v22 = *(v20 + 32);
    v23 = *(v20 + 40);

    sub_100020D58(v6, v9, v11, 1);
    result = v22;
    *v4 = v19;
    *v10 = 0;
    v10[1] = 0;
    *(v4 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000B7718(uint64_t result, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  if ((v3[24] & 1) == 0)
  {
    return 0;
  }

  v4 = *(*v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v3 + 32 + 176 * v5;
    if (*(v6 + 8) == a2)
    {
      v7 = *v6;
      v8 = *(*v6 + 16);
      if (v8 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  if (v8)
  {
    v9 = v7 == result;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *v6;
    v13 = *(v6 + 32);
    v22[1] = *(v6 + 16);
    v22[2] = v13;
    v22[0] = v12;
    v14 = *(v6 + 48);
    v15 = *(v6 + 64);
    v16 = *(v6 + 96);
    v22[5] = *(v6 + 80);
    v22[6] = v16;
    v22[3] = v14;
    v22[4] = v15;
    v17 = *(v6 + 112);
    v18 = *(v6 + 128);
    v19 = *(v6 + 160);
    v22[9] = *(v6 + 144);
    v22[10] = v19;
    v22[7] = v17;
    v22[8] = v18;
    sub_10000E08C(v22, v21);
    a3(v21, v22);
    sub_10000E0E8(v22);
    return v21[0];
  }

  else
  {
    v10 = (v7 + 32);
    v11 = (result + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        goto LABEL_4;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B7840(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if ((a3[24] & 1) == 0)
  {
    return 0;
  }

  v3 = *(*a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 | (a2 << 32);
  while (1)
  {
    v6 = *a3 + 32 + 176 * v4;
    if ((*(v6 + 24) | (*(v6 + 24) << 32)) == v5)
    {
      v7 = *(v6 + 16);
      v8 = *(v7 + 16);
      if (v8 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v8)
  {
    v9 = v7 == result;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *(v6 + 172);
    v13 = *(v6 + 16);

    return v12;
  }

  else
  {
    v10 = (v7 + 32);
    v11 = (result + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        goto LABEL_4;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B7930(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if ((a3[24] & 1) == 0)
  {
    return 0;
  }

  v3 = *(*a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *a3 + 32 + 176 * v4;
    if ((*(v5 + 24) | (*(v5 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_15:
    if (*(v5 + 168) > 1u)
    {
      return 0;
    }

    else
    {
      return *(v5 + 160);
    }
  }

  else
  {
    v9 = (v6 + 32);
    v10 = (result + 32);
    while (v7)
    {
      if (*v9 != *v10)
      {
        goto LABEL_4;
      }

      ++v9;
      ++v10;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B7A20()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 168);
      do
      {
        v4 = *v3;
        v3 += 22;

        sub_1000809B8(v5);
        --v2;
      }

      while (v2);
    }

    v8 = v0[4];
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    if (v11)
    {
      while (1)
      {
        v14 = v13;
LABEL_17:
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = *(*(v8 + 56) + ((v14 << 9) | (8 * v15)));

        result = sub_1000809B8(v17);
        if (!v11)
        {
          goto LABEL_13;
        }
      }
    }

    while (1)
    {
LABEL_13:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_17;
      }
    }

    return sub_100155648(_swiftEmptySetSingleton, _swiftEmptySetSingleton);
  }

  else
  {

    return sub_1000CC16C(v6);
  }
}

uint64_t sub_1000B7BA4()
{
  v1 = *v0;
  if ((v0[3] & 1) == 0)
  {
    return *(v1 + 16) != 0;
  }

  if (*(v0[4] + 16))
  {
    return 1;
  }

  v3 = (v1 + 168);
  v4 = *(v1 + 16) + 1;
  do
  {
    result = --v4 != 0;
    if (!v4)
    {
      break;
    }

    v5 = *v3;
    v3 += 22;
  }

  while (!*(v5 + 16));
  return result;
}

uint64_t sub_1000B7BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = type metadata accessor for State.Logger();
  v6 = *(*(v65 - 8) + 64);
  v7 = __chkstk_darwin(v65);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v62 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v62 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v62 - v16;
  __chkstk_darwin(v15);
  v19 = &v62 - v18;
  sub_1000CBB98(a2, &v62 - v18, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();
  v22 = os_log_type_enabled(v20, v21);
  v63 = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 68158208;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = v19[*(v65 + 20)];
    sub_1000CBC00(v19, type metadata accessor for State.Logger);
    *(v23 + 10) = v24;
    *(v23 + 11) = 2048;
    *(v23 + 13) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx] Received %ld locally known mailboxes.", v23, 0x15u);
  }

  else
  {
    sub_1000CBC00(v19, type metadata accessor for State.Logger);
  }

  v25 = sub_1000B851C(a1, a2);
  v26 = sub_1000B8780(v25, a2);
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = sub_100163B3C(_swiftEmptyArrayStorage);
  v34 = *(v3 + 32);

  *(v3 + 32) = v33;
  v35 = v64;
  if (*(v26 + 16))
  {
    sub_1000CBB98(a2, v17, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v36 = sub_1004A4A54();
    v37 = sub_1004A6034();
    if (!os_log_type_enabled(v36, v37))
    {
      sub_1000CBC00(v17, type metadata accessor for State.Logger);

      if (!*(v28 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v38 = swift_slowAlloc();
    v62 = v32;
    v39 = v38;
    *v38 = 68158208;
    *(v38 + 4) = 2;
    *(v38 + 8) = 256;
    v40 = v14;
    v41 = v17[*(v65 + 20)];
    sub_1000CBC00(v17, type metadata accessor for State.Logger);
    *(v39 + 10) = v41;
    v14 = v40;
    v35 = v64;
    *(v39 + 11) = 2048;
    *(v39 + 13) = *(v26 + 16);

    _os_log_impl(&_mh_execute_header, v36, v37, "[%.*hhx] Added %ld locally known mailboxes.", v39, 0x15u);
    v32 = v62;
  }

  if (!*(v28 + 16))
  {
LABEL_12:
    if (!*(v30 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_10:
  sub_1000CBB98(a2, v14, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v42 = sub_1004A4A54();
  v43 = sub_1004A6034();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 68158208;
    *(v44 + 4) = 2;
    *(v44 + 8) = 256;
    v45 = v14;
    v46 = v35;
    v47 = v32;
    v48 = *(v45 + *(v65 + 20));
    sub_1000CBC00(v45, type metadata accessor for State.Logger);
    *(v44 + 10) = v48;
    v32 = v47;
    v35 = v46;
    *(v44 + 11) = 2048;
    *(v44 + 13) = *(v28 + 16);

    _os_log_impl(&_mh_execute_header, v42, v43, "[%.*hhx] Removed %ld locally known mailboxes.", v44, 0x15u);

    goto LABEL_12;
  }

  sub_1000CBC00(v14, type metadata accessor for State.Logger);

  if (!*(v30 + 16))
  {
    goto LABEL_17;
  }

LABEL_15:
  v49 = v63;
  sub_1000CBB98(a2, v63, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v50 = sub_1004A4A54();
  v51 = sub_1004A6034();
  if (!os_log_type_enabled(v50, v51))
  {
    sub_1000CBC00(v49, type metadata accessor for State.Logger);

    if (!*(v32 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v52 = swift_slowAlloc();
  *v52 = 68158208;
  *(v52 + 4) = 2;
  *(v52 + 8) = 256;
  v53 = *(v65 + 20);
  v64 = a2;
  v54 = v35;
  v55 = v32;
  v56 = *(v49 + v53);
  sub_1000CBC00(v49, type metadata accessor for State.Logger);
  *(v52 + 10) = v56;
  v32 = v55;
  v35 = v54;
  a2 = v64;
  *(v52 + 11) = 2048;
  *(v52 + 13) = *(v30 + 16);

  _os_log_impl(&_mh_execute_header, v50, v51, "[%.*hhx] Updated %ld locally known mailboxes.", v52, 0x15u);

LABEL_17:
  if (!*(v32 + 16))
  {
    goto LABEL_23;
  }

LABEL_20:
  sub_1000CBB98(a2, v35, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v57 = sub_1004A4A54();
  v58 = sub_1004A6034();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 68158208;
    *(v59 + 4) = 2;
    *(v59 + 8) = 256;
    v60 = *(v35 + *(v65 + 20));
    sub_1000CBC00(v35, type metadata accessor for State.Logger);
    *(v59 + 10) = v60;
    *(v59 + 11) = 2048;
    *(v59 + 13) = *(v30 + 16);

    _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx] Need to de-select %ld locally known mailboxes.", v59, 0x15u);
  }

  else
  {
    sub_1000CBC00(v35, type metadata accessor for State.Logger);
  }

LABEL_23:

  return v32;
}

uint64_t sub_1000B851C(uint64_t a1, uint64_t a2)
{
  v32 = _swiftEmptySetSingleton;
  v33 = _swiftEmptySetSingleton;
  v2 = *(a1 + 16);

  v24 = result;
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = _swiftEmptyArrayStorage;
    v22 = result + 32;
    do
    {
      v7 = (v5 + 96 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v2)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7[3];
        v28 = v7[2];
        v29 = v9;
        v30[0] = v7[4];
        *(v30 + 9) = *(v7 + 73);
        v10 = v7[1];
        v26 = *v7;
        v27 = v10;
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        v11 = v26;
        v12 = v27;
        v13 = DWORD2(v27);
        v14 = (sub_100011B00(v27, DWORD2(v27), v33) & 1) != 0 ? 0 : sub_10001284C(v11, *(&v11 + 1), v32) ^ 1;
        sub_100099FE4(&v26, v25);

        sub_100088220(v25, v12, v13);

        sub_1000883C4(v25, v11, *(&v11 + 1));

        if (v14)
        {
          break;
        }

        result = sub_10009A040(&v26);
        ++v8;
        v7 += 6;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v6;
      if ((result & 1) == 0)
      {
        result = sub_100092088(0, v6[2] + 1, 1);
        v6 = v31;
      }

      v5 = v22;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_100092088((v15 > 1), v16 + 1, 1);
        v6 = v31;
      }

      v6[2] = v16 + 1;
      v17 = &v6[12 * v16];
      v18 = v27;
      v17[2] = v26;
      v17[3] = v18;
      v19 = v28;
      v20 = v29;
      v21 = v30[0];
      *(v17 + 105) = *(v30 + 9);
      v17[5] = v20;
      v17[6] = v21;
      v17[4] = v19;
    }

    while (v4 != v2);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_19:

  if (v6[2] != v2)
  {
    sub_1000C1EA4(v24, v6, a2);
  }

  return v6;
}

uint64_t sub_1000B8780(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v149 = (v2 + 8);
  v6 = *(v2 + 16);
  v7 = _swiftEmptySetSingleton;
  if ((*(v2 + 24) & 1) == 0)
  {
    *__dst = _swiftEmptySetSingleton;
    v30 = *(a1 + 16);

    if (v30)
    {
      v31 = (v3 + 56);
      do
      {
        v32 = *v31;
        v33 = *(v31 - 1);

        sub_100088220(v189, v33, v32);

        v31 += 24;
        --v30;
      }

      while (v30);
      v7 = *__dst;
    }

    v34 = sub_1000CAB7C(v3, v4, v152);
    swift_bridgeObjectRelease_n();
    sub_100020D58(v4, v5, v6, 0);
    *v152 = v34;
    *v149 = 0;
    *(v2 + 16) = 0;
    *(v152 + 24) = 1;
    v35 = sub_10016407C(_swiftEmptyArrayStorage);
    sub_1000B97B0(v5, v35);

    sub_1000B9C38(v6, a2);

    return v7;
  }

  v201 = _swiftEmptySetSingleton;
  v202 = _swiftEmptySetSingleton;
  v203 = _swiftEmptySetSingleton;
  v204 = _swiftEmptySetSingleton;
  v8 = *(v4 + 16);
  v147 = v5;
  v148 = v6;
  v145 = v8;
  v146 = v4;
  if (v8)
  {
    *&v157 = _swiftEmptyArrayStorage;

    sub_1000920C8(0, v8, 0);
    v9 = v8;
    v10 = _swiftEmptyArrayStorage;
    v11 = (v4 + 32);
    do
    {
      v12 = v11[1];
      v179 = *v11;
      v180 = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[4];
      *&v183[9] = *(v11 + 73);
      v182 = v14;
      *v183 = v15;
      v181 = v13;
      v16 = v180;
      v17 = DWORD2(v180);
      v18 = *v11;
      *&__dst[20] = v11[1];
      *&__dst[4] = v18;
      v19 = v11[2];
      v20 = v11[3];
      v21 = v11[4];
      *&__dst[77] = *(v11 + 73);
      *&__dst[68] = v21;
      *&__dst[52] = v20;
      *&__dst[36] = v19;
      *v189 = *__dst;
      *&v189[16] = *&__dst[16];
      *&v192[13] = *&__dst[77];
      *v192 = *&__dst[64];
      v191 = *&__dst[48];
      v190 = *&__dst[32];
      sub_100099FE4(&v179, &v167);
      *&v157 = v10;
      v23 = v10[2];
      v22 = v10[3];

      if (v23 >= v22 >> 1)
      {
        sub_1000920C8((v22 > 1), v23 + 1, 1);
        v10 = v157;
      }

      v10[2] = v23 + 1;
      v24 = &v10[14 * v23];
      v24[4] = v16;
      *(v24 + 10) = v17;
      v25 = *v189;
      *(v24 + 60) = *&v189[16];
      *(v24 + 44) = v25;
      v26 = v190;
      v27 = v191;
      v28 = *v192;
      *(v24 + 121) = *&v192[13];
      *(v24 + 108) = v28;
      *(v24 + 92) = v27;
      *(v24 + 76) = v26;
      v11 += 11;
      --v9;
    }

    while (v9);
    v5 = v147;
    v4 = v146;
    v3 = a1;
    if (v10[2])
    {
      goto LABEL_14;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_14:
      sub_10000C9C0(&qword_1005CF6F8, &qword_1004D2B70);
      v36 = sub_1004A6A74();
      goto LABEL_17;
    }
  }

  v36 = &_swiftEmptyDictionarySingleton;
LABEL_17:
  *v189 = v36;
  sub_1000CAEA8(v10, 1, v189);

  v37 = *v189;
  if (v145)
  {
    v150 = *v189;
    *&v157 = _swiftEmptyArrayStorage;
    sub_1000920A8(0, v145, 0);
    v38 = _swiftEmptyArrayStorage;
    v39 = (v4 + 32);
    for (i = v145 - 1; ; --i)
    {
      v41 = *v39;
      v42 = v39[2];
      v180 = v39[1];
      v181 = v42;
      v179 = v41;
      v43 = v39[3];
      v44 = v39[4];
      v45 = v39[6];
      *&v183[16] = v39[5];
      v184 = v45;
      v182 = v43;
      *v183 = v44;
      v46 = v39[7];
      v47 = v39[8];
      v48 = v39[10];
      v187 = v39[9];
      v188 = v48;
      v185 = v46;
      v186 = v47;
      v49 = v180;
      v50 = DWORD2(v180);
      *&__dst[100] = v39[6];
      *&__dst[84] = v39[5];
      *&__dst[68] = v39[4];
      *&__dst[52] = v39[3];
      *&__dst[164] = v39[10];
      *&__dst[148] = v39[9];
      *&__dst[132] = v39[8];
      *&__dst[116] = v39[7];
      *&__dst[4] = *v39;
      *&__dst[20] = v39[1];
      *&__dst[36] = v39[2];
      v195 = *&__dst[128];
      v196 = *&__dst[144];
      v197 = *&__dst[160];
      v198 = *&__dst[176];
      *v192 = *&__dst[64];
      *&v192[16] = *&__dst[80];
      v193 = *&__dst[96];
      v194 = *&__dst[112];
      *v189 = *__dst;
      *&v189[16] = *&__dst[16];
      v190 = *&__dst[32];
      v191 = *&__dst[48];
      sub_10000E08C(&v179, &v167);
      *&v157 = v38;
      v52 = v38[2];
      v51 = v38[3];

      if (v52 >= v51 >> 1)
      {
        sub_1000920A8((v51 > 1), v52 + 1, 1);
        v38 = v157;
      }

      v38[2] = v52 + 1;
      v53 = &v38[24 * v52];
      v53[4] = v49;
      *(v53 + 10) = v50;
      v54 = *v189;
      v55 = *&v189[16];
      v56 = v190;
      *(v53 + 92) = v191;
      *(v53 + 76) = v56;
      *(v53 + 60) = v55;
      *(v53 + 44) = v54;
      v57 = *v192;
      v58 = *&v192[16];
      v59 = v193;
      *(v53 + 156) = v194;
      *(v53 + 140) = v59;
      *(v53 + 124) = v58;
      *(v53 + 108) = v57;
      v60 = v195;
      v61 = v196;
      v62 = v197;
      *(v53 + 55) = v198;
      *(v53 + 204) = v62;
      *(v53 + 188) = v61;
      *(v53 + 172) = v60;
      if (!i)
      {
        break;
      }

      v39 += 11;
    }

    sub_100020D58(v146, v147, v148, 1);
    v37 = v150;
    v3 = a1;
  }

  else
  {
    sub_100020D58(v4, v5, v6, 1);
  }

  *v189 = 0;
  *&v189[8] = _swiftEmptyArrayStorage;
  *&v189[16] = _swiftEmptyArrayStorage;

  sub_1000CB144(v63, sub_1000C9A9C, 0, v189);
  swift_bridgeObjectRelease_n();
  v199 = *v189;
  v200 = *&v189[8];
  v64 = *(v3 + 16);
  if (!v64)
  {
LABEL_70:

    sub_1000809D4(v139);

    sub_1000B5EB4(v140, &v199);

    v141 = v199;
    v142 = v200;

    v143 = sub_1000B1644(v141, v142, *(&v142 + 1));

    sub_100020D58(v146, v147, v148, 1);
    *v152 = v143;
    *v149 = 0;
    v149[1] = 0;
    *(v152 + 24) = 1;
    v7 = v201;

    return v7;
  }

  v65 = v3 + 69;
  while (1)
  {
    v154 = v64;
    v70 = *(v65 - 5);
    *(v209 + 9) = *(v65 + 36);
    v209[0] = *(v65 + 27);
    v71 = *(v65 + 11);
    v207 = v70;
    v208 = v71;
    v72 = *(v65 - 21);
    v205 = *(v65 - 37);
    v206 = v72;
    v73 = BYTE4(v70);
    *(v225 + 15) = *(v65 + 15);
    v225[0] = *v65;
    v67 = *(&v208 + 1);
    v74 = v209[0];
    v75 = v72;
    v66 = v70;
    v76 = DWORD2(v72);
    if (!v37[2] || (v77 = sub_100063B5C(v206, DWORD2(v206)), (v78 & 1) == 0))
    {
      sub_100099FE4(&v205, __dst);

      sub_100088220(__dst, v75, v76);

      v94 = *(v152 + 32);
      if (*(v94 + 16))
      {
        v95 = v37;
        v96 = sub_100063C84(v205, *(&v205 + 1));
        if (v97)
        {
          v98 = *(*(v94 + 56) + 8 * v96);

LABEL_42:

          v99 = Set<>.makeNonEmpty()(v98);

          v100 = *(v152 + 72);
          *(v152 + 72) = (v100 + 1) & 0xFFFFFF;
          v159 = v207;
          v160 = v208;
          *v161 = v209[0];
          *&v161[9] = *(v209 + 9);
          v157 = v205;
          v158 = v206;
          if (v73)
          {
            v66 = 0;
            v67 = 0;
            v68 = 1;
            v37 = v95;
          }

          else
          {
            v37 = v95;
            if (v74)
            {
              v66 = 0;
              v67 = 0;
              v68 = 1;
            }

            else
            {
              v68 = 0;
            }
          }

          v169 = v159;
          v170 = v160;
          v171 = *v161;
          v172 = *&v161[16];
          v167 = v157;
          v168 = v158;
          v181 = v159;
          v182 = v160;
          *v183 = *v161;
          *&v183[16] = *&v161[16];
          LOBYTE(v156[0]) = 1;
          LOBYTE(v155[0]) = v68;
          *&v173 = 0;
          DWORD2(v173) = 0;
          BYTE12(v173) = 1;
          *&v174 = v66;
          *(&v174 + 1) = v67;
          LOBYTE(v175) = v68;
          *(&v175 + 1) = v99;
          *&v176 = _swiftEmptyArrayStorage;
          *(&v176 + 1) = _swiftEmptyArrayStorage;
          *&v177 = 0;
          BYTE8(v177) = 2;
          HIDWORD(v177) = v100;
          v179 = v157;
          v180 = v158;
          *&v184 = 0;
          DWORD2(v184) = 0;
          BYTE12(v184) = 1;
          *&v185 = v66;
          *(&v185 + 1) = v67;
          LOBYTE(v186) = v68;
          *(&v186 + 1) = v99;
          *&v187 = _swiftEmptyArrayStorage;
          *(&v187 + 1) = _swiftEmptyArrayStorage;
          *&v188 = 0;
          BYTE8(v188) = 2;
          HIDWORD(v188) = v100;
          sub_100099FE4(&v205, __dst);
          sub_10000E08C(&v167, __dst);
          sub_10000E0E8(&v179);
          *&__dst[128] = v175;
          *&__dst[144] = v176;
          *&__dst[160] = v177;
          *&__dst[64] = v171;
          *&__dst[80] = v172;
          *&__dst[96] = v173;
          *&__dst[112] = v174;
          *__dst = v167;
          *&__dst[16] = v168;
          *&__dst[32] = v169;
          *&__dst[48] = v170;
          UInt32.init(_:)(__dst);
          v195 = *&__dst[128];
          v196 = *&__dst[144];
          v197 = *&__dst[160];
          *v192 = *&__dst[64];
          *&v192[16] = *&__dst[80];
          v194 = *&__dst[112];
          v193 = *&__dst[96];
          *v189 = *__dst;
          *&v189[16] = *&__dst[16];
          v191 = *&__dst[48];
          v190 = *&__dst[32];
          sub_10018682C(v189, v75, v76);
          sub_10009A040(&v205);
          goto LABEL_29;
        }
      }

      else
      {
        v95 = v37;
      }

      v98 = _swiftEmptySetSingleton;
      goto LABEL_42;
    }

    v79 = (v37[7] + 96 * v77);
    v80 = v79[1];
    v218 = *v79;
    v219 = v80;
    v82 = v79[3];
    v81 = v79[4];
    v83 = v79[2];
    *(v222 + 9) = *(v79 + 73);
    v221 = v82;
    v222[0] = v81;
    v220 = v83;
    sub_100099FE4(&v205, __dst);
    sub_100099FE4(&v218, __dst);
    if ((static MailboxOfInterest.__derived_struct_equals(_:_:)(&v218, &v205) & 1) == 0)
    {
      break;
    }

    sub_10009A040(&v218);
    v84 = sub_100063B5C(v75, v76);
    if (v85)
    {
      v86 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v179 = v37;
      v69 = v154;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

LABEL_68:
      sub_10013B574();
      v37 = v179;
LABEL_36:
      v88 = *(v37[6] + 16 * v86);

      v89 = (v37[7] + 96 * v86);
      v90 = v89[1];
      *__dst = *v89;
      *&__dst[16] = v90;
      v92 = v89[3];
      v91 = v89[4];
      v93 = v89[2];
      *&__dst[73] = *(v89 + 73);
      *&__dst[48] = v92;
      *&__dst[64] = v91;
      *&__dst[32] = v93;
      sub_10009A040(__dst);
      sub_10013D710(v86, v37);
      goto LABEL_69;
    }

    sub_10009A040(&v205);
LABEL_29:
    v69 = v154;
LABEL_30:
    v65 += 96;
    v64 = v69 - 1;
    if (!v64)
    {
      goto LABEL_70;
    }
  }

  v151 = v37;
  v223 = DWORD1(v209[1]);
  v224 = BYTE8(v209[1]);

  sub_100088220(__dst, v75, v76);

  v210[0] = v218;
  v210[1] = v219;
  *&__dst[16] = *(&v222[1] + 1);
  *__dst = *(v222 + 1);
  __dst[23] = v224;
  *&__dst[19] = v223;
  v211 = v66;
  v212 = v73;
  *&v213[15] = *(v225 + 15);
  *v213 = v225[0];
  v214 = v67;
  v215 = v74;
  v216 = *(v222 + 1);
  v217 = *&__dst[16];
  v101 = static MailboxOfInterest.__derived_struct_equals(_:_:)(&v205, v210);
  sub_10009A040(v210);
  if (v101)
  {

    v102 = sub_1000B9DA0(&v179, v75, v76);
    v104 = v103;
    memmove(__dst, v103, 0xB0uLL);
    if (sub_100021348(__dst) != 1)
    {
      v104[21] = v223;
      *(v104 + 88) = v224;
    }

    v102(&v179, 0);

    v37 = v151;
    v69 = v154;
    goto LABEL_66;
  }

  v105 = sub_1000B9DA0(&v157, v75, v76);
  v107 = v106;
  memmove(__dst, v106, 0xB0uLL);
  if (sub_100021348(__dst) != 1)
  {
    v108 = v107[1];
    v179 = *v107;
    v180 = v108;
    v109 = v107[2];
    v110 = v107[3];
    v111 = v107[4];
    *&v183[9] = *(v107 + 73);
    v182 = v110;
    *v183 = v111;
    v181 = v109;
    v112 = v209[0];
    v113 = v208;
    v114 = v207;
    *(v107 + 73) = *(v209 + 9);
    v107[3] = v113;
    v107[4] = v112;
    v107[2] = v114;
    v115 = v206;
    *v107 = v205;
    v107[1] = v115;
    sub_100099FE4(&v205, &v167);
    sub_10009A040(&v179);
  }

  v105(&v157, 0);

  v116 = *(&v200 + 1);
  v117 = *(v200 + 16);
  v37 = v151;
  v118 = v200 + 32;
  if (!v199)
  {
    v119 = sub_10015C014(v75, v76, v118, v117);
    if ((v121 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_55:
    sub_1000CB6B4(&v167);
    v186 = v175;
    v187 = v176;
    v188 = v177;
    *v183 = v171;
    *&v183[16] = v172;
    v184 = v173;
    v185 = v174;
    v179 = v167;
    v180 = v168;
    v181 = v169;
    v182 = v170;
LABEL_60:
    v175 = v186;
    v176 = v187;
    v177 = v188;
    v171 = *v183;
    v172 = *&v183[16];
    v173 = v184;
    v174 = v185;
    v167 = v179;
    v168 = v180;
    v169 = v181;
    v170 = v182;
    v69 = v154;
    if (sub_100021348(&v167) == 1)
    {
      v164 = v186;
      v165 = v187;
      v166 = v188;
      *v161 = *v183;
      *&v161[16] = *&v183[16];
      v162 = v184;
      v163 = v185;
      v157 = v179;
      v158 = v180;
      v159 = v181;
      v160 = v182;
      sub_100025F40(&v157, &qword_1005CF700, &qword_1004D2B78);
    }

    else
    {
      v131 = v184;
      v164 = v186;
      v165 = v187;
      v166 = v188;
      *v161 = *v183;
      *&v161[16] = *&v183[16];
      v162 = v184;
      v163 = v185;
      v157 = v179;
      v158 = v180;
      v159 = v181;
      v160 = v182;

      sub_100025F40(&v157, &qword_1005CF700, &qword_1004D2B78);
      if (v131)
      {

        v132 = sub_1000B9DA0(v155, v75, v76);
        v134 = v133;
        memmove(v156, v133, 0xB0uLL);
        if (sub_100021348(v156) != 1)
        {
          v135 = v134[12];
          v134[12] = 0;
        }

        v132(v155, 0);
        v37 = v151;

        sub_100088220(v155, v75, v76);
      }
    }

LABEL_66:
    v136 = sub_100063B5C(v75, v76);
    if (v137)
    {
      v86 = v136;
      v138 = swift_isUniquelyReferenced_nonNull_native();
      *&v179 = v37;
      if ((v138 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_36;
    }

LABEL_69:
    sub_10009A040(&v205);
    goto LABEL_30;
  }

  v119 = sub_10015C0B4(v75, v76, v118, v117, (v199 + 16));
  if (v120)
  {
    goto LABEL_55;
  }

LABEL_57:
  if ((v119 & 0x8000000000000000) == 0)
  {
    if (v119 >= *(v116 + 16))
    {
      goto LABEL_73;
    }

    v122 = (v116 + 176 * v119);
    v123 = v122[2];
    v124 = v122[4];
    v168 = v122[3];
    v169 = v124;
    v167 = v123;
    v125 = v122[5];
    v126 = v122[6];
    v127 = v122[8];
    v172 = v122[7];
    v173 = v127;
    v170 = v125;
    v171 = v126;
    v128 = v122[9];
    v129 = v122[10];
    v130 = v122[12];
    v176 = v122[11];
    v177 = v130;
    v174 = v128;
    v175 = v129;
    memmove(&v179, v122 + 2, 0xB0uLL);
    UInt32.init(_:)(&v179);
    sub_10000E08C(&v167, &v157);
    goto LABEL_60;
  }

  __break(1u);
LABEL_73:
  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000B97B0(unint64_t *a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005CF708, &qword_1004D2B80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v36 - v7);
  v52 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
  v49 = *(v52 - 8);
  v9 = *(v49 + 64);
  v10 = __chkstk_darwin(v52);
  v51 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v36 - v12;
  v13 = *v2;
  v14 = *(v2 + 8);
  v15 = *(v2 + 16);
  v16 = *(v2 + 24);
  if (v16)
  {
    v17 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    for (i = *(v13 + 2); i; i = *(v13 + 2))
    {
      v36 = v15;
      v37 = v16;
      v38 = v2;
      v20 = 0;
      v16 = 0;
      v21 = a1[2];
      v15 = (v49 + 48);
      v40 = a1 + 6;
      v41 = v13 + 32;
      v42 = v21;
      v43 = v13;
      v44 = v14;
      v45 = a2;
      while (v20 < i)
      {
        v23 = &v41[176 * v20];
        v2 = *(v23 + 2);
        v46 = v23;
        v47 = v20;
        v24 = *(v23 + 6);
        v25 = *(a2 + 16);
        v50 = v2;
        if (v25)
        {
          v26 = sub_100063B5C(v2, v24);
          if (v27)
          {
            v54 = 0;
            v53 = *(*(a2 + 56) + 8 * v26);
          }

          else
          {
            v53 = 0;
            v54 = 1;
          }

          v2 = v50;
        }

        else
        {
          v53 = 0;
          v54 = 1;
        }

        if (v21)
        {
          a1 = v40;
          v28 = v21;
          v22 = _swiftEmptyArrayStorage;
          do
          {
            v29 = *(a1 - 1);
            v30 = *a1;
            v55 = *(a1 - 4);
            v56 = v29;
            v57 = v30;
            sub_1000C9E18(v29, v30);
            sub_1000BB57C(&v55, v2, v24, v53, v54, v8);
            sub_1000C9EF0(v29, v30);
            if ((*v15)(v8, 1, v52) == 1)
            {
              sub_100025F40(v8, &qword_1005CF708, &qword_1004D2B80);
            }

            else
            {
              v31 = v48;
              sub_100025FDC(v8, v48, &qword_1005CEF88, &qword_1004D1E68);
              sub_100025FDC(v31, v51, &qword_1005CEF88, &qword_1004D1E68);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_100086834(0, v22[2] + 1, 1, v22);
              }

              v33 = v22[2];
              v32 = v22[3];
              v2 = v50;
              if (v33 >= v32 >> 1)
              {
                v22 = sub_100086834(v32 > 1, v33 + 1, 1, v22);
              }

              v22[2] = v33 + 1;
              sub_100025FDC(v51, v22 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v33, &qword_1005CEF88, &qword_1004D1E68);
            }

            a1 += 3;
            --v28;
          }

          while (v28);
        }

        else
        {
          v22 = _swiftEmptyArrayStorage;
        }

        sub_1000C9458(v22, v46 + 19);

        v20 = v47 + 1;
        v13 = v43;
        v14 = v44;
        i = *(v43 + 2);
        a2 = v45;
        v21 = v42;
        if (v47 + 1 == i)
        {
          result = sub_100020D58(v39, v44, v36, 1);
          v2 = v38;
          LOBYTE(v16) = v37;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_27:
      v13 = sub_100139804(v39);
    }

    result = sub_100020D58(v39, v14, v15, 1);
LABEL_29:
    a1 = 0;
    v15 = 0;
  }

  else
  {
    v34 = *v2;

    result = sub_100020D58(v13, v14, v15, 0);
  }

  *v2 = v13;
  *(v2 + 8) = a1;
  *(v2 + 16) = v15;
  *(v2 + 24) = v16;
  return result;
}

uint64_t sub_1000B9C38(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 24);
  if (v5)
  {
    v7 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_11;
    }

    for (i = *(v4 + 16); i; i = *(isUniquelyReferenced_nonNull_native + 16))
    {
      v10 = 0;
      v11 = (v4 + 176);
      while (v10 < i)
      {
        __chkstk_darwin(isUniquelyReferenced_nonNull_native);
        v19[2] = v12;
        v19[3] = v2;
        v19[4] = a2;
        v13 = sub_1000D7758(sub_1000CB6D4, v19, a1);
        v14 = *v11;
        *v11 = v13;
        v11 += 22;

        ++v10;
        i = *(v4 + 16);
        if (v10 == i)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_11:
      isUniquelyReferenced_nonNull_native = sub_100139804(v4);
      v4 = isUniquelyReferenced_nonNull_native;
    }

LABEL_7:
    result = sub_100020D58(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    v16 = 0;
    a1 = 0;
  }

  else
  {
    v16 = *(v2 + 8);
    v17 = *(v2 + 16);
    v18 = *v2;

    result = sub_100020D58(v4, v16, v17, 0);
  }

  *v2 = v4;
  *(v2 + 8) = v16;
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  return result;
}

void (*sub_1000B9DA0(uint64_t *a1, uint64_t a2, unsigned int a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x448uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 1064) = v3;
  *(v7 + 1088) = a3;
  *(v7 + 1056) = a2;
  sub_1000CB6B4(v7);
  v9 = *(v8 + 144);
  *(v8 + 304) = *(v8 + 128);
  *(v8 + 320) = v9;
  *(v8 + 336) = *(v8 + 160);
  v10 = *(v8 + 80);
  *(v8 + 240) = *(v8 + 64);
  *(v8 + 256) = v10;
  v11 = *(v8 + 112);
  *(v8 + 272) = *(v8 + 96);
  *(v8 + 288) = v11;
  v12 = *(v8 + 16);
  *(v8 + 176) = *v8;
  *(v8 + 192) = v12;
  v13 = *(v8 + 48);
  *(v8 + 208) = *(v8 + 32);
  *(v8 + 224) = v13;
  *(v8 + 1072) = sub_1000C9048(a2, a3, (v8 + 176));
  *(v8 + 1092) = v14;
  *(v8 + 1080) = v15;
  return sub_1000B9E78;
}

void sub_1000B9E78(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 880);
  v4 = *(*a1 + 1092);
  if (a2)
  {
    v5 = *(v2 + 288);
    v7 = *(v2 + 304);
    v6 = *(v2 + 320);
    *(v2 + 480) = v7;
    *(v2 + 496) = v6;
    v8 = *(v2 + 224);
    v10 = *(v2 + 240);
    v9 = *(v2 + 256);
    *(v2 + 416) = v10;
    *(v2 + 432) = v9;
    v11 = *(v2 + 256);
    v13 = *(v2 + 272);
    v12 = *(v2 + 288);
    *(v2 + 448) = v13;
    *(v2 + 464) = v12;
    v14 = *(v2 + 192);
    *(v2 + 352) = *(v2 + 176);
    *(v2 + 368) = v14;
    v15 = *(v2 + 224);
    v17 = *(v2 + 176);
    v16 = *(v2 + 192);
    *(v2 + 384) = *(v2 + 208);
    *(v2 + 400) = v15;
    v121 = *(v2 + 304);
    v122 = *(v2 + 320);
    v123 = *(v2 + 336);
    v18 = *(v2 + 208);
    v117 = *(v2 + 240);
    v118 = *(v2 + 256);
    v119 = *(v2 + 272);
    v120 = *(v2 + 288);
    v113 = *(v2 + 176);
    v114 = *(v2 + 192);
    v115 = v18;
    v116 = *(v2 + 224);
    *(v2 + 640) = v5;
    *(v2 + 656) = v7;
    v19 = *(v2 + 336);
    *(v2 + 672) = *(v2 + 320);
    *(v2 + 688) = v19;
    *(v2 + 576) = v8;
    *(v2 + 592) = v10;
    *(v2 + 608) = v11;
    *(v2 + 624) = v13;
    *(v2 + 512) = v19;
    *(v2 + 528) = v17;
    *(v2 + 544) = v16;
    *(v2 + 560) = v18;
    v20 = sub_100021348((v2 + 528));
    v21 = v20 == 1;
    if (v4)
    {
      if (v20 != 1)
      {
LABEL_4:
        v22 = *(v2 + 1080);
        v23 = *(v2 + 1064);
        v24 = *(v2 + 1088);
        v25 = *(v2 + 1056);
        sub_10000E268(v2 + 352, v2 + 704, &qword_1005CF700, &qword_1004D2B78);
        sub_100187EA0(v25, v24);
        v28 = *(v23 + 16);
        v26 = (v23 + 16);
        v27 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000919E8(0, *(v27 + 16) + 1, 1);
          v27 = *v26;
        }

        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_1000919E8((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v27 = *v26;
        }

        v128 = v117;
        v129 = v118;
        v126 = v115;
        v127 = v116;
        v133 = v122;
        v134 = v123;
        v131 = v120;
        v132 = v121;
        v130 = v119;
        v124 = v113;
        v125 = v114;
        *(v27 + 16) = v32;
        v33 = (v27 + 176 * v31);
        v34 = v124;
        v35 = v126;
        v33[3] = v125;
        v33[4] = v35;
        v33[2] = v34;
        v36 = v127;
        v37 = v128;
        v38 = v130;
        v33[7] = v129;
        v33[8] = v38;
        v33[5] = v36;
        v33[6] = v37;
        v39 = v131;
        v40 = v132;
        v41 = v134;
        v33[11] = v133;
        v33[12] = v41;
        v33[9] = v39;
        v33[10] = v40;
        *v26 = v27;
        goto LABEL_27;
      }

LABEL_11:
      sub_10000E268(v2 + 352, v2 + 704, &qword_1005CF700, &qword_1004D2B78);
      goto LABEL_27;
    }
  }

  else
  {
    v42 = *(v2 + 288);
    v44 = *(v2 + 304);
    v43 = *(v2 + 320);
    *(v2 + 480) = v44;
    *(v2 + 496) = v43;
    v45 = *(v2 + 224);
    v47 = *(v2 + 240);
    v46 = *(v2 + 256);
    *(v2 + 416) = v47;
    *(v2 + 432) = v46;
    v48 = *(v2 + 256);
    v50 = *(v2 + 272);
    v49 = *(v2 + 288);
    *(v2 + 448) = v50;
    *(v2 + 464) = v49;
    v51 = *(v2 + 192);
    *(v2 + 352) = *(v2 + 176);
    *(v2 + 368) = v51;
    v52 = *(v2 + 224);
    v54 = *(v2 + 176);
    v53 = *(v2 + 192);
    *(v2 + 384) = *(v2 + 208);
    *(v2 + 400) = v52;
    v121 = *(v2 + 304);
    v122 = *(v2 + 320);
    v123 = *(v2 + 336);
    v55 = *(v2 + 208);
    v117 = *(v2 + 240);
    v118 = *(v2 + 256);
    v119 = *(v2 + 272);
    v120 = *(v2 + 288);
    v113 = *(v2 + 176);
    v114 = *(v2 + 192);
    v115 = v55;
    v116 = *(v2 + 224);
    *(v2 + 640) = v42;
    *(v2 + 656) = v44;
    v56 = *(v2 + 336);
    *(v2 + 672) = *(v2 + 320);
    *(v2 + 688) = v56;
    *(v2 + 576) = v45;
    *(v2 + 592) = v47;
    *(v2 + 608) = v48;
    *(v2 + 624) = v50;
    *(v2 + 512) = v56;
    *(v2 + 528) = v54;
    *(v2 + 544) = v53;
    *(v2 + 560) = v55;
    v57 = sub_100021348((v2 + 528));
    v21 = v57 == 1;
    if (v4)
    {
      if (v57 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  if (v21)
  {
    v58 = *(v2 + 1072);
    v59 = *(v2 + 1064);
    v61 = *(v59 + 16);
    v60 = (v59 + 16);
    v62 = v2 + 352;
    if (v58 >= *(v61 + 16))
    {
      sub_10000E268(v62, v2 + 704, &qword_1005CF700, &qword_1004D2B78);
    }

    else
    {
      sub_10000E268(v62, v3, &qword_1005CF700, &qword_1004D2B78);
      sub_10018964C(v58, &v124);
      v63 = v133;
      *(v2 + 832) = v132;
      *(v2 + 848) = v63;
      *(v2 + 864) = v134;
      v64 = v129;
      *(v2 + 768) = v128;
      *(v2 + 784) = v64;
      v65 = v131;
      *(v2 + 800) = v130;
      *(v2 + 816) = v65;
      v66 = v125;
      *(v2 + 704) = v124;
      *(v2 + 720) = v66;
      v67 = v127;
      *(v2 + 736) = v126;
      *(v2 + 752) = v67;
      v68 = *v60;
      sub_10000E08C(v2 + 704, v3);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *v60 = v68;
      if ((v69 & 1) == 0)
      {
        sub_1000919E8(0, *(v68 + 16) + 1, 1);
        v68 = *v60;
      }

      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1000919E8((v70 > 1), v71 + 1, 1);
      }

      v72 = v133;
      v3[8] = v132;
      v3[9] = v72;
      v3[10] = v134;
      v73 = v129;
      v3[4] = v128;
      v3[5] = v73;
      v74 = v131;
      v3[6] = v130;
      v3[7] = v74;
      v75 = v125;
      *v3 = v124;
      v3[1] = v75;
      v76 = v127;
      v3[2] = v126;
      v3[3] = v76;
      sub_10000E0E8(v3);
      v77 = *v60;
      *(v77 + 16) = v71 + 1;
      v78 = (v77 + 176 * v71);
      v79 = *(v2 + 816);
      v80 = *(v2 + 832);
      v81 = *(v2 + 864);
      v78[11] = *(v2 + 848);
      v78[12] = v81;
      v78[9] = v79;
      v78[10] = v80;
      v82 = *(v2 + 752);
      v83 = *(v2 + 768);
      v84 = *(v2 + 800);
      v78[7] = *(v2 + 784);
      v78[8] = v84;
      v78[5] = v82;
      v78[6] = v83;
      v85 = *(v2 + 704);
      v86 = *(v2 + 736);
      v78[3] = *(v2 + 720);
      v78[4] = v86;
      v78[2] = v85;
      *v60 = v77;
    }

    v105 = *(v2 + 1064);
    sub_1001891EC(*(v2 + 1072), *(v2 + 1080));
  }

  else
  {
    v87 = *(v2 + 1064);
    v90 = *(v87 + 16);
    v88 = (v87 + 16);
    v89 = v90;
    sub_10000E268(v2 + 352, v2 + 704, &qword_1005CF700, &qword_1004D2B78);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    *v88 = v89;
    if ((v91 & 1) == 0)
    {
      sub_1000919E8(0, *(v89 + 16) + 1, 1);
      v89 = *v88;
    }

    v92 = *(v89 + 16);
    v93 = *(v89 + 24);
    v94 = v92 + 1;
    if (v92 >= v93 >> 1)
    {
      v111 = *(v89 + 16);
      v112 = v92 + 1;
      sub_1000919E8((v93 > 1), v92 + 1, 1);
      v94 = v112;
      v92 = v111;
      v89 = *v88;
    }

    v95 = *(v2 + 1072);
    v128 = v117;
    v129 = v118;
    v126 = v115;
    v127 = v116;
    v133 = v122;
    v134 = v123;
    v131 = v120;
    v132 = v121;
    v130 = v119;
    v124 = v113;
    v125 = v114;
    *(v89 + 16) = v94;
    v96 = (v89 + 176 * v92);
    v97 = v124;
    v98 = v126;
    v96[3] = v125;
    v96[4] = v98;
    v96[2] = v97;
    v99 = v127;
    v100 = v128;
    v101 = v130;
    v96[7] = v129;
    v96[8] = v101;
    v96[5] = v99;
    v96[6] = v100;
    v102 = v131;
    v103 = v132;
    v104 = v134;
    v96[11] = v133;
    v96[12] = v104;
    v96[9] = v102;
    v96[10] = v103;
    *v88 = v89;
    sub_1000C9130(v95, v92);
  }

LABEL_27:
  v106 = *(v2 + 320);
  *(v2 + 656) = *(v2 + 304);
  *(v2 + 672) = v106;
  *(v2 + 688) = *(v2 + 336);
  v107 = *(v2 + 256);
  *(v2 + 592) = *(v2 + 240);
  *(v2 + 608) = v107;
  v108 = *(v2 + 288);
  *(v2 + 624) = *(v2 + 272);
  *(v2 + 640) = v108;
  v109 = *(v2 + 192);
  *(v2 + 528) = *(v2 + 176);
  *(v2 + 544) = v109;
  v110 = *(v2 + 224);
  *(v2 + 560) = *(v2 + 208);
  *(v2 + 576) = v110;
  sub_100025F40(v2 + 528, &qword_1005CF700, &qword_1004D2B78);

  free(v2);
}

void sub_1000BA414(uint64_t a1, unsigned int a2, Swift::Int a3)
{
  v7 = _s13SelectedStateV7WrappedVMa(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 24) == 1)
  {
    v14 = (v3 + 8);
    v13 = *(v3 + 8);
    v15 = *(v3 + 16);
    v45 = *v3;
    v12 = v45;
    v16 = *(v45 + 2);
    if (!v16)
    {
LABEL_23:
      *v3 = v45;
      *v14 = 0;
      v14[1] = 0;
      *(v3 + 24) = 1;
      return;
    }

    v17 = 0;
    while (1)
    {
      v18 = &v45[176 * v17 + 32];
      if ((*(v18 + 24) | (*(v18 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v19 = *(v18 + 16);
        v20 = *(v19 + 16);
        if (v20 == *(a1 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v17 == v16)
      {
        goto LABEL_23;
      }
    }

    if (v20)
    {
      v21 = v19 == a1;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
LABEL_15:
      v40 = v9;
      v42 = v13;
      sub_100020D10(v45, v13, v15, 1);
      v24 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_16:
        if (v17 >= *(v24 + 2))
        {
          __break(1u);
          return;
        }

        v41 = v3;
        v25 = &v24[176 * v17];

        sub_1000809B8(v26);
        Set<>.formNonEmpty()();
        *(v25 + 34) = 0;
        v25[140] = 1;
        v45 = v24;
        v28 = sub_10012CCA4(v44, v17);
        if (*(v27 + 96))
        {
          v29 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v29 + 96);
            v31 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            sub_1000CBB98(v30 + v31, v11, _s13SelectedStateV7WrappedVMa);
            v32 = _s13SelectedStateV8_StorageCMa(0);
            v33 = *(v32 + 48);
            v34 = *(v32 + 52);
            v35 = swift_allocObject();
            sub_1000CBC60(v11, v35 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
            v36 = *(v29 + 96);
            *(v29 + 96) = v35;
          }

          v37 = *(v29 + 96) + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v38 = v37 + *(v40 + 20);
          sub_10013FC9C(a3);
          sub_100088568(&v43, a3);
          swift_endAccess();
          v28(v44, 0);
        }

        else
        {
          v28(v44, 0);
        }

        sub_100020D58(v12, v42, v15, 1);
        v3 = v41;
        goto LABEL_23;
      }
    }

    else
    {
      v22 = (v19 + 32);
      v23 = (a1 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_4;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    v24 = sub_100139804(v12);
    goto LABEL_16;
  }
}

void sub_1000BA740(char **a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v36 = type metadata accessor for State.Logger();
  v5 = *(*(v36 - 8) + 64);
  v6 = __chkstk_darwin(v36);
  __chkstk_darwin(v6);
  v9 = &v35 - v7;
  v10 = *a1;
  v45 = *(*a1 + 2);
  if (v45)
  {
    v35 = v8;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v40 = &v35 - v7;
    v41 = a1;
    v42 = a2;
    do
    {
      if (v14 >= *(v10 + 2))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v15 = *&v10[v11 + 48];
      v16 = *&v10[v11 + 56];
      if ((sub_100011B00(v15, v16, a2) & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100139804(v10);
        }

        if (v14 >= *(v10 + 2))
        {
          goto LABEL_30;
        }

        if (*(*&v10[v11 + 168] + 16))
        {
          *&v10[v11 + 168] = _swiftEmptySetSingleton;

          *a1 = v10;
          if (v13 > 4)
          {

            v28 = __OFADD__(v12++, 1);
            if (v28)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v14 >= *(v10 + 2))
            {
              goto LABEL_32;
            }

            v44 = *&v10[v11 + 204];
            sub_1000CBB98(v43, v9, type metadata accessor for State.Logger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();

            v17 = sub_1004A4A54();
            v18 = sub_1004A6034();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v39 = v13;
              v20 = v19;
              v21 = swift_slowAlloc();
              v37 = v17;
              v38 = v21;
              v48 = v21;
              *v20 = 0x204100603;
              *(v20 + 8) = 256;
              v22 = v9[*(v36 + 20)];
              sub_1000CBC00(v9, type metadata accessor for State.Logger);
              *(v20 + 10) = v22;
              *(v20 + 11) = 1040;
              *(v20 + 13) = 2;
              *(v20 + 17) = 512;
              *(v20 + 19) = v44;
              *(v20 + 21) = 2160;
              *(v20 + 23) = 0x786F626C69616DLL;
              *(v20 + 31) = 2085;
              v46 = v15;
              v47 = v16;
              v23 = sub_1004A5824();
              v25 = sub_10015BA6C(v23, v24, &v48);

              *(v20 + 33) = v25;
              v26 = v18;
              v27 = v37;
              _os_log_impl(&_mh_execute_header, v37, v26, "[%.*hhx] [{%.*hx}-%{sensitive,mask.mailbox}s] Did mark as sync complete.", v20, 0x29u);
              sub_1000197E0(v38);

              v13 = v39;
            }

            else
            {
              sub_1000CBC00(v9, type metadata accessor for State.Logger);
            }

            a1 = v41;
            a2 = v42;
            ++v13;
            v9 = v40;
            v28 = __OFADD__(v12++, 1);
            if (v28)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {

          *a1 = v10;
        }
      }

      ++v14;
      v11 += 176;
    }

    while (v45 != v14);
    v29 = v35;
    if (v13 >= v12)
    {
      return;
    }

    sub_1000CBB98(v43, v35, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v30 = sub_1004A4A54();
    v31 = sub_1004A6034();
    if (!os_log_type_enabled(v30, v31))
    {
      sub_1000CBC00(v29, type metadata accessor for State.Logger);
      goto LABEL_27;
    }

    v32 = v13;
    v33 = swift_slowAlloc();
    *v33 = 68158208;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    v34 = *(v29 + *(v36 + 20));
    sub_1000CBC00(v29, type metadata accessor for State.Logger);
    *(v33 + 10) = v34;
    *(v33 + 11) = 2048;
    if (!__OFSUB__(v12, v32))
    {
      *(v33 + 13) = v12 - v32;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%.*hhx] Did mark %ld more mailboxes as sync complete.", v33, 0x15u);

LABEL_27:

      return;
    }

LABEL_33:
    __break(1u);
  }
}

void *sub_1000BAC28(uint64_t a1, unsigned int a2)
{
  if ((v2[24] & 1) == 0)
  {
    return _swiftEmptySetSingleton;
  }

  v3 = *(*v2 + 16);
  if (!v3)
  {
    return _swiftEmptySetSingleton;
  }

  v5 = 0;
  v6 = a2 | (a2 << 32);
  v7 = (a1 + 32);
  result = _swiftEmptySetSingleton;
  while (1)
  {
    v9 = *v2 + 32 + 176 * v5;
    if ((*(v9 + 24) | (*(v9 + 24) << 32)) == v6)
    {
      v10 = *(v9 + 16);
      v11 = *(v10 + 16);
      if (v11 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v3)
    {
      return result;
    }
  }

  if (v11)
  {
    v12 = v10 == a1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_15:
    v15 = *(v9 + 136);
  }

  else
  {
    v13 = (v10 + 32);
    v14 = v7;
    while (v11)
    {
      if (*v13 != *v14)
      {
        goto LABEL_4;
      }

      ++v13;
      ++v14;
      if (!--v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000BAD00(uint64_t result, unsigned int a2)
{
  if ((v2[24] & 1) == 0)
  {
    return 0xFFFFLL;
  }

  v3 = *(*v2 + 16);
  if (!v3)
  {
    return 0xFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    v5 = *v2 + 32 + 176 * v4;
    if ((*(v5 + 24) | (*(v5 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0xFFFFLL;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return *(v5 + 172);
  }

  v9 = (v6 + 32);
  v10 = (result + 32);
  while (v7)
  {
    if (*v9 != *v10)
    {
      goto LABEL_4;
    }

    ++v9;
    ++v10;
    if (!--v7)
    {
      return *(v5 + 172);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BADB0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(v3 + 24) != 1)
  {
    return result;
  }

  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v16 = v4;
  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_16:
    *v3 = v4;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
    return result;
  }

  v8 = 0;
  while (1)
  {
    v9 = v4 + 32 + 176 * v8;
    if ((*(v9 + 24) | (*(v9 + 24) << 32)) == (a3 | (a3 << 32)))
    {
      v10 = *(v9 + 16);
      v11 = *(v10 + 16);
      if (v11 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      goto LABEL_16;
    }
  }

  if (v11)
  {
    v12 = v10 == a2;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_15:
    v15 = result;
    sub_100020D10(v4, v5, v6, 1);
    sub_1000B5C3C(v15, &v16, v8);
    result = sub_100020D58(v4, v5, v6, 1);
    v4 = v16;
    goto LABEL_16;
  }

  v13 = (v10 + 32);
  v14 = (a2 + 32);
  while (v11)
  {
    if (*v13 != *v14)
    {
      goto LABEL_4;
    }

    ++v13;
    ++v14;
    if (!--v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BAEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = a5;
  v9 = type metadata accessor for Task.Logger(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for MailboxTaskLogger(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000CBB98(a3, v13, type metadata accessor for Task.Logger);
  LODWORD(a3) = *(a1 + 172);
  v19 = sub_1004A4A74();
  (*(*(v19 - 8) + 16))(v18, v13, v19);
  v20 = &v13[*(v10 + 28)];
  v22 = *v20;
  v21 = v20[1];
  v23 = v20[2];

  sub_1000CBC00(v13, type metadata accessor for Task.Logger);
  v24 = &v18[*(v15 + 28)];
  *v24 = v22;
  *(v24 + 1) = v21;
  *(v24 + 2) = v23;
  *(v24 + 12) = a3;
  *(v24 + 4) = a4;
  *(v24 + 10) = v27;
  sub_10009C748(a2, v18);
  return sub_1000CBC00(v18, type metadata accessor for MailboxTaskLogger);
}

unint64_t sub_1000BB0C0(void *a1)
{
  v2 = sub_1000BB18C();
  if (v2[2] <= a1[2] >> 3)
  {

    sub_10015CA00(v2);

    v3 = a1;
    if (a1[2])
    {
      goto LABEL_3;
    }
  }

  else
  {

    v3 = sub_10015F1CC(v2, a1);

    if (v3[2])
    {
LABEL_3:
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      return v4 | 0xA000000000000000;
    }
  }

  return 0xF000000000000007;
}

void *sub_1000BB18C()
{
  v1 = _s19UserInitiatedSearchVMa(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v0[3])
  {
    v6 = *v0;
    result = _swiftEmptySetSingleton;
    v37 = _swiftEmptySetSingleton;
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = 0;
      v32 = v6 + 32;
      do
      {
        v10 = (v32 + 176 * v9);
        v11 = *v10;
        v12 = v10[2];
        v34[1] = v10[1];
        v34[2] = v12;
        v34[0] = v11;
        v13 = v10[3];
        v14 = v10[4];
        v15 = v10[6];
        v34[5] = v10[5];
        v34[6] = v15;
        v34[3] = v13;
        v34[4] = v14;
        v16 = v10[7];
        v17 = v10[8];
        v18 = v10[10];
        v35 = v10[9];
        v36 = v18;
        v34[7] = v16;
        v34[8] = v17;
        v19 = *(*(&v35 + 1) + 16);
        if (v19)
        {
          v20 = *(&v35 + 1) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
          sub_10000E08C(v34, v33);

          v21 = *(v2 + 72);
          do
          {
            sub_1000CBB98(v20, v5, _s19UserInitiatedSearchVMa);
            sub_100088660(v33, *v5);
            sub_1000CBC00(v5, _s19UserInitiatedSearchVMa);
            v20 += v21;
            --v19;
          }

          while (v19);
          sub_10000E0E8(v34);
        }

        ++v9;
      }

      while (v9 != v8);
      return v37;
    }
  }

  else
  {
    v22 = v0[1];
    v23 = *(v22 + 16);
    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      *&v34[0] = _swiftEmptyArrayStorage;
      sub_100092108(0, v23, 0);
      v24 = *&v34[0];
      v25 = (v22 + 32);
      v26 = *(*&v34[0] + 16);
      do
      {
        v28 = *v25;
        v25 += 6;
        v27 = v28;
        *&v34[0] = v24;
        v29 = v24[3];
        if (v26 >= v29 >> 1)
        {
          sub_100092108((v29 > 1), v26 + 1, 1);
          v24 = *&v34[0];
        }

        v24[2] = v26 + 1;
        *(v24 + v26++ + 8) = v27;
        --v23;
      }

      while (v23);
    }

    v30 = sub_1000CE74C(v24);

    return v30;
  }

  return result;
}

uint64_t sub_1000BB408(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = (v7 + 32 + 176 * v10);
      if (v12[1] == a3)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == a2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = result;
      v5 = a4;
      sub_100020D10(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10009BE74(v6, v5);
        result = sub_100020D58(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a2 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000BB57C@<X0>(int *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, _DWORD *a6@<X8>)
{
  v49 = a5;
  v48 = a4;
  v52 = a6;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v47 - v20;
  __chkstk_darwin(v19);
  v23 = &v47 - v22;
  v24 = *a1;
  v25 = *(a1 + 1);
  v26 = *(a1 + 2);
  v27 = *(v25 + 16);
  if ((v26 & 4) != 0)
  {
    if (v27)
    {
      v40 = v24;
      v41 = sub_100063B5C(a2, a3);
      if (v42)
      {
        sub_10000E268(*(v25 + 56) + *(v14 + 72) * v41, v21, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025FDC(v21, v23, &qword_1005CD1D0, &unk_1004CF2C0);
        v37 = v52;
        *v52 = v40;
        sub_10000E268(v23, v18, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100016D2C();
        sub_1004A7114();
        v36 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
        v43 = v37 + *(v36 + 48);
        sub_100025F40(v23, &qword_1005CD1D0, &unk_1004CF2C0);
        MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
        (*(v50 + 56))(v43 + *(MessagesVMa + 24), 1, 1, v51);
        sub_100025FDC(v18, v43, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025FDC(v12, v43 + *(MessagesVMa + 20), &unk_1005D91B0, &unk_1004CF400);
        _s19UserInitiatedSearchV5StateOMa(0);
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (v27)
    {
      v28 = v24;
      v29 = sub_100063B5C(a2, a3);
      if (v30)
      {
        v31 = *(v25 + 56) + 24 * v29;
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 16);
        if (v49 & 1) != 0 || (v33 != v48 ? (v35 = 1) : (v35 = *(v31 + 16)), v48 && (v35))
        {
          v36 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
          v37 = v52;
          v38 = v52 + *(v36 + 48);
          *v52 = v28;
          sub_1000C9E18(v25, v26);

          sub_1000C9E60(v26);
          v39 = sub_100127300(v26);

          sub_1000C9F38(v26);
          *v38 = v39;
          *(v38 + 1) = v32;
          *(v38 + 2) = v33;
          v38[24] = v34;
          _s19UserInitiatedSearchV5StateOMa(0);
LABEL_14:
          swift_storeEnumTagMultiPayload();
          return (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
        }
      }

      sub_1000C9E18(v25, v26);
    }

    else
    {

      sub_1000C9E60(v26);
    }

    sub_1000C9F38(v26);
  }

  v46 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
  return (*(*(v46 - 8) + 56))(v52, 1, 1, v46);
}

BOOL sub_1000BB9D8(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_10002587C(a2, a2[3]);
  return (sub_1004A5B94() & 1) == 0;
}

void *sub_1000BBA58()
{
  result = _swiftEmptySetSingleton;
  if (v0[3])
  {
    v2 = *v0;
    v23 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v2 + 32;
      do
      {
        v6 = (v5 + 176 * v4);
        v7 = *v6;
        v8 = v6[2];
        v20[1] = v6[1];
        v20[2] = v8;
        v20[0] = v7;
        v9 = v6[3];
        v10 = v6[4];
        v11 = v6[6];
        v20[5] = v6[5];
        v20[6] = v11;
        v20[3] = v9;
        v20[4] = v10;
        v12 = v6[7];
        v13 = v6[8];
        v14 = v6[10];
        v21 = v6[9];
        v22 = v14;
        v20[7] = v12;
        v20[8] = v13;
        v15 = v21;
        v16 = *(v21 + 16);
        sub_10000E08C(v20, v19);

        if (v16)
        {
          v17 = (v15 + 32);
          do
          {
            v18 = *v17;
            v17 += 10;
            sub_100089758(v19, v18);
            --v16;
          }

          while (v16);
        }

        ++v4;
        sub_10000E0E8(v20);
      }

      while (v4 != v3);
      return v23;
    }
  }

  return result;
}

void sub_1000BBB60(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v10 = type metadata accessor for State.Logger();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[4] | (a1[4] << 32)) == (*(a2 + 24) | (*(a2 + 24) << 32)))
  {
    v37 = *a1;
    v15 = *(a1 + 3);
    v14 = *(a1 + 4);
    v16 = *(a1 + 5);
    v38 = *(a1 + 1);
    v39 = v16;
    v17 = *(a1 + 48);
    if (sub_1000FFC98(v38, *(a2 + 16)))
    {
      v34 = v17;
      v36 = v5;
      v18 = a3[6];
      v19 = a3[7];
      v35 = a3[8];
      v21 = *a2;
      v20 = *(a2 + 8);
      sub_100014CEC(v15, v14);
      sub_100014CEC(v15, v14);

      LOBYTE(v20) = sub_10003882C(v15, v14, v21, v20, v18);

      sub_100014D40(v15, v14);
      if ((v20 & 1) == 0)
      {
        *a5 = v37;
        *(a5 + 8) = v15;
        v32 = v39;
        *(a5 + 16) = v14;
        *(a5 + 24) = v32;
        *(a5 + 32) = v34;

        return;
      }

      sub_1000CBB98(v40, v13, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      sub_100014CEC(v15, v14);

      v22 = sub_1004A4A54();
      v23 = sub_1004A6014();

      sub_100014D40(v15, v14);

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        LODWORD(v40) = v23;
        v26 = v25;
        v41 = v25;
        *v24 = 68158210;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v27 = v13[*(v10 + 20)];
        sub_1000CBC00(v13, type metadata accessor for State.Logger);
        *(v24 + 10) = v27;
        *(v24 + 11) = 2080;
        v28 = OpaquePersistedMessageIdentifier.description.getter(v15, v14);
        v30 = v29;
        sub_100014D40(v15, v14);
        v31 = sub_10015BA6C(v28, v30, &v41);

        *(v24 + 13) = v31;
        _os_log_impl(&_mh_execute_header, v22, v40, "[%.*hhx] Skipping download request for %s. Did previously not request any sections.", v24, 0x15u);
        sub_1000197E0(v26);
      }

      else
      {
        sub_1000CBC00(v13, type metadata accessor for State.Logger);
        sub_100014D40(v15, v14);
      }
    }
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0;
}

void sub_1000BBECC(char **a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for MailboxSyncState();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = *a1;
  v17 = *(*a1 + 2);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = &v16[176 * v18 + 32];
      if ((*(v19 + 24) | (*(v19 + 24) << 32)) == (a3 | (a3 << 32)))
      {
        v20 = *(v19 + 16);
        v21 = *(v20 + 16);
        if (v21 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v18 == v17)
      {
        return;
      }
    }

    if (v21)
    {
      v22 = v20 == a2;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
LABEL_14:
      v25 = *(v19 + 96);
      if (!v25)
      {
        return;
      }

      v26 = v25 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      v27 = v13;
      swift_beginAccess();
      v28 = _s13SelectedStateV7WrappedVMa(0);
      sub_1000CBB98(v26 + *(v28 + 20), v11, type metadata accessor for MailboxSyncState);
      v29 = sub_1000CBC60(v11, v15, type metadata accessor for MailboxSyncState);
      v30 = *&v15[*(v27 + 56)];
      __chkstk_darwin(v29);
      *(&v33 - 2) = a4;
      v32 = sub_1000D7954(sub_1000CBB7C, (&v33 - 4), v31);
      v11 = sub_1000CE67C(v32);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }
    }

    else
    {
      v23 = (v20 + 32);
      v24 = (a2 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_3;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v16 = sub_100139804(v16);
LABEL_16:
    if (v18 >= *(v16 + 2))
    {
      __break(1u);
    }

    else
    {
      sub_10009C45C(v11);

      sub_1000CBC00(v15, type metadata accessor for MailboxSyncState);
      *a1 = v16;
    }
  }
}

uint64_t sub_1000BC15C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  result = MessageIdentifierSet.contains(_:)(&v7, v5);
  if (result)
  {
    result = sub_100014CEC(v3, v4);
  }

  else
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000BC1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  v6 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v8 = &v40 - v7;
  sub_10000E268(a2, &v40 - v7, &unk_1005D91B0, &unk_1004CF400);
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = MessageIdentifierSet.startIndex.getter(v9);
  v12 = v11;
  if (v10 == MessageIdentifierSet.endIndex.getter(v9) && v12 == v13)
  {
    v43 = _swiftEmptyArrayStorage;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
    v41 = a3;
    do
    {
      do
      {
        while (1)
        {
          MessageIdentifierSet.subscript.getter(v12, v9, &v44);
          v16 = v44;
          v10 = MessageIdentifierSet.index(_:offsetBy:)(v10, v12, 1);
          v12 = v17;
          v18 = *(a1 + 96);
          if (!v18)
          {
            break;
          }

          v19 = v18 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v20 = v19 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
          result = type metadata accessor for MailboxSyncState();
          v22 = 0;
          v23 = *(v20 + *(result + 56));
          v24 = 1 << *(v23 + 32);
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v26 = v25 & *(v23 + 64);
          v27 = (v24 + 63) >> 6;
          do
          {
            if (!v26)
            {
              while (1)
              {
                v28 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v28 >= v27)
                {
                  goto LABEL_6;
                }

                v26 = *(v23 + 64 + 8 * v28);
                ++v22;
                if (v26)
                {
                  v22 = v28;
                  goto LABEL_19;
                }
              }

              __break(1u);
              return result;
            }

            v28 = v22;
LABEL_19:
            v29 = __clz(__rbit64(v26));
            v26 &= v26 - 1;
            v30 = v29 | (v28 << 6);
          }

          while (v16 != *(*(v23 + 56) + 24 * v30));
          v31 = (*(v23 + 48) + 16 * v30);
          v33 = *v31;
          v32 = v31[1];

          sub_100014CEC(v33, v32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_100086B4C(0, *(v43 + 2) + 1, 1, v43);
          }

          v35 = *(v43 + 2);
          v34 = *(v43 + 3);
          if (v35 >= v34 >> 1)
          {
            v43 = sub_100086B4C((v34 > 1), v35 + 1, 1, v43);
          }

          v36 = v43;
          *(v43 + 2) = v35 + 1;
          v37 = &v36[16 * v35];
          *(v37 + 4) = v33;
          *(v37 + 5) = v32;
          v38 = MessageIdentifierSet.endIndex.getter(v9);
          a3 = v41;
          if (v10 == v38)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        ;
      }

      while (v10 != MessageIdentifierSet.endIndex.getter(v9));
LABEL_7:
      ;
    }

    while (v12 != v15);
  }

  v39 = &v8[*(v42 + 36)];
  *v39 = v10;
  v39[1] = v12;
  result = sub_100025F40(v8, &qword_1005CDA38, &unk_1004D14C0);
  *a3 = v43;
  return result;
}

void *sub_1000BC508@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >> 62 == 1 && *((*result & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 1)
  {
    v2 = *((*result & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x14)
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = a2;

        sub_100092128(0, v4, 0);
        v6 = _swiftEmptyArrayStorage[2];
        v7 = 32;
        do
        {
          v8 = *(v3 + v7);
          v9 = _swiftEmptyArrayStorage[3];
          if (v6 >= v9 >> 1)
          {
            sub_100092128((v9 > 1), v6 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v6 + 1;
          *(&_swiftEmptyArrayStorage[4] + v6) = v8;
          v7 += 56;
          ++v6;
          --v4;
        }

        while (v4);

        a2 = v5;
      }
    }
  }

  *a2 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000BC63C(uint64_t a1, int a2, uint64_t a3, int a4, NSObject *a5, uint64_t a6)
{
  v7 = v6;
  v65 = a4;
  v13 = type metadata accessor for State.Logger();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v19 = &v56 - v17;
  v21 = *v7;
  v20 = *(v7 + 8);
  v22 = *(v7 + 16);
  v64 = *(v7 + 24);
  v66 = v21;
  if (v64)
  {
    v62 = v22;
    v63 = v20;
    if (a3)
    {
      v23 = v66;

      v24 = v65;
    }

    else
    {
      v61 = v16;
      v43 = v18;
      sub_1000CBB98(a6, v18, type metadata accessor for State.Logger);
      v23 = v66;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v44 = sub_1004A4A54();
      v59 = sub_1004A6034();
      v45 = os_log_type_enabled(v44, v59);
      v24 = v65;
      if (v45)
      {
        v46 = swift_slowAlloc();
        v58 = v44;
        v47 = v46;
        v57 = swift_slowAlloc();
        v67[0] = v57;
        *v47 = 68158466;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v48 = v7;
        v49 = *(v43 + *(v61 + 20));
        sub_1000CBC00(v43, type metadata accessor for State.Logger);
        *(v47 + 10) = v49;
        v7 = v48;
        *(v47 + 11) = 2082;
        v50 = sub_1004A6754();
        v52 = sub_10015BA6C(v50, v51, v67);
        v23 = v66;

        *(v47 + 13) = v52;
        *(v47 + 21) = 1024;
        *(v47 + 23) = a1;
        _os_log_impl(&_mh_execute_header, v58, v59, "[%.*hhx] Adding %{public}s sync #%u.", v47, 0x1Bu);
        sub_1000197E0(v57);
      }

      else
      {
        sub_1000CBC00(v43, type metadata accessor for State.Logger);
      }
    }

    v60 = v7;
    v42 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

    for (i = *(v23 + 16); i; i = *(v42 + 2))
    {
      v54 = 0;
      v23 = 0;
      v55 = (v42 + 32);
      while (v54 < i)
      {
        sub_1000BCC28(v55, a2, a3, v24 & 1, a5, a6, a1);
        ++v54;
        i = *(v42 + 2);
        v55 += 22;
        if (v54 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      v42 = sub_100139804(v23);
    }

LABEL_16:
    result = sub_100020D58(v66, v63, v62, 1);
    v27 = 0;
    v22 = 0;
    v7 = v60;
    v38 = v64;
  }

  else
  {
    v61 = v16;
    sub_1000CBB98(a6, &v56 - v17, type metadata accessor for State.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v25 = sub_1004A4A54();
    v26 = sub_1004A6034();

    v27 = v20;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v63 = v20;
      v29 = v28;
      v30 = swift_slowAlloc();
      v62 = v22;
      v31 = v30;
      v67[0] = v30;
      *v29 = 68158466;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v32 = v7;
      v33 = v19[*(v61 + 20)];
      sub_1000CBC00(v19, type metadata accessor for State.Logger);
      *(v29 + 10) = v33;
      v7 = v32;
      *(v29 + 11) = 2082;
      v34 = sub_1004A6754();
      v36 = sub_10015BA6C(v34, v35, v67);

      *(v29 + 13) = v36;
      *(v29 + 21) = 1024;
      *(v29 + 23) = a1;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%.*hhx] Adding %{public}s sync #%u (while local mailboxes are unknown).", v29, 0x1Bu);
      sub_1000197E0(v31);
      v22 = v62;

      v27 = v63;
    }

    else
    {
      sub_1000CBC00(v19, type metadata accessor for State.Logger);
    }

    v38 = v64;
    v37 = v65;

    v39 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v39;
    sub_10001D018(a2, a3, v37 & 1, a1, isUniquelyReferenced_nonNull_native);
    result = sub_100020D58(v39, v27, v22, 0);
    v42 = v67[0];
  }

  *v7 = v42;
  *(v7 + 8) = v27;
  *(v7 + 16) = v22;
  *(v7 + 24) = v38;
  return result;
}

uint64_t sub_1000BCC28(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, unsigned int a7)
{
  v68 = a5;
  v66 = a7;
  v59 = a6;
  v10 = sub_1004A4A74();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin(v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for State.Logger();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = _s12LocalMailboxV6LoggerVMa();
  v18 = *(*(v63 - 8) + 64);
  v19 = __chkstk_darwin(v63);
  v62 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v61 = v58 - v22;
  v23 = __chkstk_darwin(v21);
  v64 = v58 - v24;
  __chkstk_darwin(v23);
  v65 = v58 - v25;
  v67 = a1;
  v27 = *a1;
  v26 = a1[1];

  v28.hashValue = v26;
  v58[1] = a2;
  v29 = SyncRequest.includes(_:)(v28);

  if (v29)
  {
    if (!v68 || (result = sub_10001284C(v27, v26, v68), (result & 1) != 0))
    {
      if (a3)
      {
        sub_1000CBB98(v59, v17, type metadata accessor for State.Logger);
        v31 = v67[2];
        v32 = *(v67 + 6);
        v33 = *(v67 + 43);
        v34 = v60;
        (*(v60 + 16))(v13, v17, v10);
        v35 = v17[*(v14 + 20)];
        sub_1000CBC00(v17, type metadata accessor for State.Logger);
        v36 = v65;
        (*(v34 + 32))();
        v37 = v63;
        v38 = v36 + *(v63 + 20);
        *v38 = v35;
        *(v38 + 2) = v33;
        *(v38 + 8) = v31;
        *(v38 + 16) = v32;
        v39 = v64;
        sub_1000CBB98(v36, v64, _s12LocalMailboxV6LoggerVMa);
        v40 = v61;
        sub_1000CBB98(v36, v61, _s12LocalMailboxV6LoggerVMa);
        v41 = v62;
        sub_1000CBB98(v36, v62, _s12LocalMailboxV6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v42 = sub_1004A4A54();
        v43 = sub_1004A6034();

        if (os_log_type_enabled(v42, v43))
        {
          LODWORD(v60) = v43;
          v68 = v42;
          v44 = v37;
          v45 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v71 = v59;
          *v45 = 68159491;
          *(v45 + 4) = 2;
          *(v45 + 8) = 256;
          v46 = *(v40 + *(v37 + 20));
          sub_1000CBC00(v40, _s12LocalMailboxV6LoggerVMa);
          *(v45 + 10) = v46;
          *(v45 + 11) = 1040;
          *(v45 + 13) = 2;
          *(v45 + 17) = 512;
          v47 = *(v41 + *(v44 + 20) + 2);
          sub_1000CBC00(v41, _s12LocalMailboxV6LoggerVMa);
          *(v45 + 19) = v47;
          *(v45 + 21) = 2160;
          *(v45 + 23) = 0x786F626C69616DLL;
          *(v45 + 31) = 2085;
          v48 = v39 + *(v44 + 20);
          v49 = *(v48 + 8);
          v50 = *(v48 + 16);

          sub_1000CBC00(v39, _s12LocalMailboxV6LoggerVMa);
          v69 = v49;
          v70 = v50;
          v51 = sub_1004A5824();
          v53 = sub_10015BA6C(v51, v52, &v71);

          *(v45 + 33) = v53;
          *(v45 + 41) = 2082;
          v54 = sub_1004A6754();
          v56 = sub_10015BA6C(v54, v55, &v71);

          *(v45 + 43) = v56;
          *(v45 + 51) = 1024;
          *(v45 + 53) = v66;
          v57 = v68;
          _os_log_impl(&_mh_execute_header, v68, v60, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Adding %{public}s sync #%u.", v45, 0x39u);
          swift_arrayDestroy();
        }

        else
        {
          sub_1000CBC00(v41, _s12LocalMailboxV6LoggerVMa);
          sub_1000CBC00(v40, _s12LocalMailboxV6LoggerVMa);

          sub_1000CBC00(v39, _s12LocalMailboxV6LoggerVMa);
        }

        sub_1000CBC00(v36, _s12LocalMailboxV6LoggerVMa);
      }

      return sub_10009B464(v66);
    }
  }

  return result;
}

uint64_t sub_1000BD254(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v6 = (v1 + 8);
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (*(v1 + 24))
  {
    v8 = *v1;

    v9 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_10;
    }

    for (i = *(v4 + 16); i; i = *(v9 + 2))
    {
      v11 = 0;
      v12 = v9 + 168;
      while (v11 < i)
      {
        sub_10013FDA4(a1);
        ++v11;
        i = *(v9 + 2);
        v12 += 176;
        if (v11 == i)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      v9 = sub_100139804(v4);
    }

LABEL_7:
    result = sub_100020D58(v4, v5, v7, 1);
    *v2 = v9;
    *v6 = 0;
    v6[1] = 0;
    *(v2 + 24) = 1;
  }

  else
  {
    v16 = *v1;

    v14 = sub_10013CF00(a1);
    sub_1000C9FC8(v14, v15);
    result = sub_100020D58(v4, v5, v7, 0);
    *v1 = v16;
    *(v1 + 8) = v5;
    *(v1 + 16) = v7;
    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1000BD394(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v28 = result;
LABEL_4:
  while (v5)
  {
    v9 = v5;
LABEL_10:
    v5 = (v9 - 1) & v9;
    if (*(v1 + 24) == 1)
    {
      v11 = *v1;
      v12 = *(*v1 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = *(result + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v9))));
        v15 = *v14;
        v16 = *(v1 + 8);
        v29 = *(v1 + 16);
        v17 = *(v14 + 8) | (*(v14 + 8) << 32);
        while (1)
        {
          v18 = v11 + 32 + 176 * v13;
          if ((*(v18 + 24) | (*(v18 + 24) << 32)) == v17)
          {
            v19 = *(v18 + 16);
            v20 = *(v19 + 16);
            if (v20 == *(v15 + 16))
            {
              break;
            }
          }

LABEL_13:
          if (++v13 == v12)
          {
            goto LABEL_4;
          }
        }

        if (v20)
        {
          v21 = v19 == v15;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = (v19 + 32);
          v23 = (v15 + 32);
          while (v20)
          {
            if (*v22 != *v23)
            {
              goto LABEL_13;
            }

            ++v22;
            ++v23;
            if (!--v20)
            {
              goto LABEL_24;
            }
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

LABEL_24:

        v24 = v16;
        sub_100020D10(v11, v16, v29, 1);
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v11;
        if ((result & 1) == 0)
        {
          result = sub_100139804(v11);
          v25 = result;
        }

        if (v13 >= *(v25 + 16))
        {
          goto LABEL_33;
        }

        v26 = v25 + 176 * v13;
        v27 = *(v26 + 168);

        *(v26 + 168) = _swiftEmptySetSingleton;
        sub_100020D58(v11, v24, v29, 1);

        *(v1 + 8) = 0;
        *(v1 + 16) = 0;
        *v1 = v25;
        *(v1 + 24) = 1;
        result = v28;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v6)
    {
      break;
    }

    v9 = *(v2 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1000BD5C8(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = result;
    v4 = *result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v1 = sub_100139804(v1);
    }

    v5 = 0;
    v6 = 168;
    do
    {
      if (v5 >= *(v1 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v5;
      v7 = *&v1[v6];

      *&v1[v6] = _swiftEmptySetSingleton;
      v6 += 176;
    }

    while (v2 != v5);
    *v3 = v1;
  }

  return result;
}

void sub_1000BD660(char **a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = *(*a1 + 2);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = &v15[176 * v17 + 32];
      if (*(v18 + 1) == a3)
      {
        v19 = *v18;
        v20 = *(*v18 + 16);
        if (v20 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v17 == v16)
      {
        return;
      }
    }

    if (v20)
    {
      v21 = v19 == a2;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
LABEL_14:
      a3 = *(v18 + 12);
      if (!a3)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        v38 = *a1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v24 = v12;
      v25 = *(v18 + 12);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a3 + v26, v14, _s13SelectedStateV7WrappedVMa);
        v27 = _s13SelectedStateV8_StorageCMa(0);
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        v30 = swift_allocObject();
        sub_1000CBC60(v14, v30 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a3 = v30;
      }

      v31 = (a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      v32 = *(v24 + 20);
      v33 = type metadata accessor for MailboxSyncState();
      a5(&v31[v32 + *(v33 + 52)]);
      swift_endAccess();
      if (v17 < *(v15 + 2))
      {
        v34 = *(v18 + 12);
        if (!v34 || (v35 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v34 + v35) != *v31))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v22 = (v19 + 32);
      v23 = (a2 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_3;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v15 = sub_100139804(v15);
LABEL_21:
    if (v17 < *(v15 + 2))
    {
      v36 = &v15[176 * v17];
      v37 = *(v36 + 16);
      *(v36 + 16) = a3;

LABEL_28:
      *a1 = v15;
      return;
    }

    __break(1u);
LABEL_34:
    v15 = sub_100139804(v15);
LABEL_26:
    if (v17 >= *(v15 + 2))
    {
      __break(1u);
      return;
    }

    v39 = &v15[176 * v17];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v39 + 34) = 0;
    v39[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BD984(char **a1, uint64_t a2, unsigned int a3, char a4)
{
  v8 = _s13SelectedStateV7WrappedVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v14 = *(*a1 + 2);
  if (v14)
  {
    v15 = 0;
    v16 = a3 | (a3 << 32);
    while (1)
    {
      v17 = &v13[176 * v15 + 32];
      if ((*(v17 + 24) | (*(v17 + 24) << 32)) == v16)
      {
        v18 = *(v17 + 16);
        v19 = *(v18 + 16);
        if (v19 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v15 == v14)
      {
        return;
      }
    }

    if (v19)
    {
      v20 = v18 == a2;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_14:
      a2 = *(v17 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        v35 = *a1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v23 = v10;
      v24 = *(v17 + 96);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v25, v12, _s13SelectedStateV7WrappedVMa);
        v26 = _s13SelectedStateV8_StorageCMa(0);
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        v29 = swift_allocObject();
        sub_1000CBC60(v12, v29 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v29;
      }

      v30 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      sub_100016B08(v30 + *(v23 + 20));
      swift_endAccess();
      if (v15 < *(v13 + 2))
      {
        v31 = *(v17 + 96);
        if (!v31 || (v32 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v31 + v32) != *v30))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v21 = (v18 + 32);
      v22 = (a2 + 32);
      while (v19)
      {
        if (*v21 != *v22)
        {
          goto LABEL_3;
        }

        ++v21;
        ++v22;
        if (!--v19)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v13 = sub_100139804(v13);
LABEL_21:
    if (v15 < *(v13 + 2))
    {
      v33 = &v13[176 * v15];
      v34 = *(v33 + 16);
      *(v33 + 16) = a2;

LABEL_28:
      *a1 = v13;
      return;
    }

    __break(1u);
LABEL_34:
    v13 = sub_100139804(v13);
LABEL_26:
    if (v15 >= *(v13 + 2))
    {
      __break(1u);
      return;
    }

    v36 = &v13[176 * v15];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v36 + 34) = 0;
    v36[140] = 1;
    goto LABEL_28;
  }
}