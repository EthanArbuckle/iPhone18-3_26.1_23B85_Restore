uint64_t sub_241D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_715F8, &unk_5D260);
  result = sub_59C20();
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
      sub_59ED0();
      sub_59920();
      result = sub_59F10();
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

Swift::Int sub_24434(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_241D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_245B4();
      goto LABEL_16;
    }

    sub_24710(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_59ED0();
  sub_59920();
  result = sub_59F10();
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

      result = sub_59E80();
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
  result = sub_59E90();
  __break(1u);
  return result;
}

void *sub_245B4()
{
  v1 = v0;
  sub_187C(&qword_715F8, &unk_5D260);
  v2 = *v0;
  v3 = sub_59C10();
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

uint64_t sub_24710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_715F8, &unk_5D260);
  result = sub_59C20();
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
      sub_59ED0();

      sub_59920();
      result = sub_59F10();
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

unint64_t *sub_24948(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_2781C(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t sub_249E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FontGlyphVariant();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_187C(&qword_71668, &qword_5D2C0);
  result = sub_59C40();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v34 + 72);
    sub_1BBBC(v20 + v21 * (v17 | (v15 << 6)), v11);
    v22 = *(v12 + 40);
    sub_28050(&qword_71640, type metadata accessor for FontGlyphVariant);
    result = sub_59870();
    v23 = -1 << *(v12 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_291DC(v11, *(v12 + 48) + v26 * v21);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v33;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
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

void sub_24CB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_187C(&qword_71618, &qword_5D278);
      v7 = *(type metadata accessor for FontGlyphVariant() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for FontGlyphVariant() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_24E54(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_27668(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24F50(v5);
  *a1 = v2;
  return result;
}

void *sub_24EC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_187C(&qword_71638, &qword_5D2A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

Swift::Int sub_24F50(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_59E50(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_187C(&qword_71630, &unk_5D298);
        v5 = sub_59A40();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_251AC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25058(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25058(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = (*a4 + 24 * a3 - 24);
    v5 = result - a3;
LABEL_5:
    v19 = v4;
    v20 = a3;
    v6 = (v21 + 24 * a3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v18 = v5;
    while (1)
    {
      v10 = *v4;
      v11 = v4[1];
      v12 = v4[2];
      sub_B848(v8, v7);

      sub_B848(v10, v11);

      v13 = sub_8C58(v8, v7, v10, v11);
      sub_E9AC(v10, v11);

      sub_E9AC(v8, v7);

      if ((v13 & 1) == 0)
      {
LABEL_4:
        a3 = v20 + 1;
        v4 = v19 + 3;
        v5 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v7 = v4[4];
      v14 = v4[5];
      v15 = v4[2];
      v8 = v4[3];
      *(v4 + 3) = *v4;
      v4[5] = v15;
      *v4 = v8;
      v4[1] = v7;
      v4[2] = v14;
      v4 -= 3;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v110 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_89:
    v5 = v10;
    v10 = *v110;
    if (!*v110)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_5A8C(v5);
      v5 = result;
    }

    v100 = *(v5 + 16);
    if (v100 >= 2)
    {
      while (1)
      {
        v101 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v100 - 1);
        v102 = *(v5 + 16 * v100);
        v103 = *(v5 + 16 * (v100 - 1) + 40);
        sub_25924((v101 + 24 * v102), (v101 + 24 * *(v5 + 16 * (v100 - 1) + 32)), v101 + 24 * v103, v10);
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_5A8C(v5);
        }

        if (v100 - 2 >= *(v5 + 16))
        {
          goto LABEL_115;
        }

        v104 = (v5 + 16 * v100);
        *v104 = v102;
        v104[1] = v103;
        result = sub_14E94(v7);
        v100 = *(v5 + 16);
        v7 = a3;
        if (v100 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v111 = v11;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v106 = v10;
      v108 = v6;
      v13 = (*v7 + 24 * v12);
      v5 = *v13;
      v14 = v13[1];
      v15 = v13[2];
      v116 = 24 * v11;
      v16 = (*v7 + 24 * v11);
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];
      sub_B848(*v13, v14);

      sub_B848(v18, v17);

      v120 = sub_8C58(v5, v14, v18, v17);
      sub_E9AC(v18, v17);

      sub_E9AC(v5, v14);

      v20 = v11 + 2;
      v21 = v16 + 8;
      v118 = v8;
      while (v8 != v20)
      {
        v22 = *(v21 - 1);
        v23 = *(v21 - 5);
        v5 = *(v21 - 4);
        v24 = *(v21 - 2);
        sub_B848(v24, v22);

        sub_B848(v23, v5);

        v25 = sub_8C58(v24, v22, v23, v5) & 1;
        sub_E9AC(v23, v5);

        sub_E9AC(v24, v22);

        ++v20;
        v21 += 3;
        v26 = (v120 & 1) == v25;
        v8 = v118;
        if (!v26)
        {
          v8 = v20 - 1;
          break;
        }
      }

      v10 = v106;
      v6 = v108;
      v11 = v111;
      v7 = a3;
      v27 = v116;
      if (v120)
      {
        if (v8 < v111)
        {
          goto LABEL_118;
        }

        if (v111 < v8)
        {
          v28 = 0;
          v29 = 24 * v8;
          v30 = v111;
          do
          {
            if (v30 != v8 + v28 - 1)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v31 = (v36 + v27);
              v32 = v36 + v29;
              v33 = *(v31 + 2);
              v34 = *v31;
              v35 = *(v32 - 8);
              *v31 = *(v32 - 24);
              *(v31 + 2) = v35;
              *(v32 - 24) = v34;
              *(v32 - 8) = v33;
            }

            ++v30;
            --v28;
            v29 -= 24;
            v27 += 24;
          }

          while (v30 < v8 + v28);
        }
      }
    }

    v37 = v7[1];
    if (v8 < v37)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v37)
        {
          v38 = v7[1];
        }

        else
        {
          v38 = v11 + a4;
        }

        if (v38 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v38)
        {
          break;
        }
      }
    }

    v39 = v8;
    if (v8 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_5AA0(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v41 = v10[2];
    v40 = v10[3];
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_5AA0((v40 > 1), v41 + 1, 1, v10);
      v10 = result;
    }

    v10[2] = v42;
    v43 = &v10[2 * v41];
    v43[4] = v111;
    v43[5] = v39;
    v44 = *v110;
    if (!*v110)
    {
      goto LABEL_126;
    }

    v113 = v39;
    if (v41)
    {
      while (1)
      {
        v5 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = v10[4];
          v46 = v10[5];
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_48:
          if (v48)
          {
            goto LABEL_105;
          }

          v61 = &v10[2 * v42];
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_108;
          }

          v67 = &v10[2 * v5 + 4];
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_112;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v5 = v42 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v71 = &v10[2 * v42];
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_62:
        if (v66)
        {
          goto LABEL_107;
        }

        v74 = &v10[2 * v5];
        v76 = v74[4];
        v75 = v74[5];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_69:
        v82 = v5 - 1;
        if (v5 - 1 >= v42)
        {
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v83 = v10[2 * v82 + 4];
        v84 = v10[2 * v5 + 5];
        sub_25924((*v7 + 24 * v83), (*v7 + 24 * v10[2 * v5 + 4]), *v7 + 24 * v84, v44);
        if (v6)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_5A8C(v10);
        }

        if (v82 >= v10[2])
        {
          goto LABEL_102;
        }

        v85 = &v10[2 * v82];
        v85[4] = v83;
        v85[5] = v84;
        result = sub_14E94(v5);
        v42 = v10[2];
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v10[2 * v42 + 4];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_103;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_104;
      }

      v56 = &v10[2 * v42];
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_106;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_109;
      }

      if (v60 >= v52)
      {
        v78 = &v10[2 * v5 + 4];
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v5 = v42 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v113;
    if (v113 >= v8)
    {
      goto LABEL_89;
    }
  }

  v107 = v10;
  v109 = v6;
  v121 = *v7;
  v86 = *v7 + 24 * v8 - 24;
  v87 = v11 - v8;
  v114 = v38;
LABEL_80:
  v117 = v86;
  v119 = v8;
  v88 = (v121 + 24 * v8);
  v89 = *v88;
  v5 = v88[1];
  v90 = v88[2];
  v115 = v87;
  v91 = v87;
  v92 = v86;
  while (1)
  {
    v93 = *v92;
    v94 = v92[1];
    v95 = v92[2];
    sub_B848(v89, v5);

    sub_B848(v93, v94);

    v96 = sub_8C58(v89, v5, v93, v94);
    sub_E9AC(v93, v94);

    sub_E9AC(v89, v5);

    if ((v96 & 1) == 0)
    {
LABEL_79:
      v8 = v119 + 1;
      v86 = v117 + 24;
      v39 = v114;
      v87 = v115 - 1;
      if (v119 + 1 != v114)
      {
        goto LABEL_80;
      }

      v10 = v107;
      v6 = v109;
      v7 = a3;
      if (v114 < v111)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v121)
    {
      break;
    }

    v5 = v92[4];
    v97 = v92[5];
    v98 = v92[2];
    v89 = v92[3];
    *(v92 + 3) = *v92;
    v92[5] = v98;
    *v92 = v89;
    v92[1] = v5;
    v92[2] = v97;
    v92 -= 3;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_25924(uint64_t *__src, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v4 = a2;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 24;
  v48 = a3;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 24;
  if (v7 >= v9)
  {
    if (a4 != a2 || &a2[3 * v9] <= a4)
    {
      v25 = a4;
      memmove(a4, a2, 24 * v9);
      a4 = v25;
    }

    v11 = &a4[3 * v9];
    v10 = a4;
    if (v8 < 24 || v4 <= v5)
    {
      v24 = v4;
    }

    else
    {
      v41 = a4;
      v47 = v5;
LABEL_22:
      v26 = 0;
      v27 = v11;
      v38 = v4 - 3;
      v39 = v11;
      v40 = v4;
      do
      {
        v11 = &v27[v26];
        v28 = (v48 + v26);
        v29 = &v27[v26 - 24];
        v42 = (v48 + v26 - 24);
        v43 = *v29;
        v30 = *&v27[v26 - 16];
        v31 = *(v4 - 3);
        v32 = *(v4 - 2);
        v33 = *(v4 - 1);
        sub_B848(*v29, v30);

        sub_B848(v31, v32);

        v44 = sub_8C58(v43, v30, v31, v32);
        sub_E9AC(v31, v32);

        sub_E9AC(v43, v30);

        if (v44)
        {
          v24 = v38;
          if (v28 != v40)
          {
            v35 = *v38;
            *(v48 + v26 - 8) = v38[2];
            *v42 = v35;
          }

          if (v11 <= v41 || (v48 = v48 + v26 - 24, v4 = v38, v38 <= v47))
          {
            v11 = &v39[v26];
            goto LABEL_34;
          }

          goto LABEL_22;
        }

        if (v28 != v11)
        {
          v34 = *v29;
          *(v48 + v26 - 8) = v29[2];
          *v42 = v34;
        }

        v26 -= 24;
        v27 = v39;
        v4 = v40;
        v11 = &v39[v26];
      }

      while (&v39[v26] > v41);
      v24 = v40;
LABEL_34:
      v10 = v41;
    }
  }

  else
  {
    v10 = a4;
    if (a4 != __src || &__src[3 * v7] <= a4)
    {
      memmove(a4, __src, 24 * v7);
    }

    v11 = &v10[3 * v7];
    if (v6 >= 24 && v4 < v48)
    {
      v45 = &v10[3 * v7];
      while (1)
      {
        v46 = v5;
        v12 = *v4;
        v13 = v4[1];
        v14 = v4[2];
        v15 = v4;
        v17 = *v10;
        v16 = v10[1];
        v18 = v10[2];
        sub_B848(v12, v13);

        sub_B848(v17, v16);

        v19 = sub_8C58(v12, v13, v17, v16);
        sub_E9AC(v17, v16);

        sub_E9AC(v12, v13);

        if ((v19 & 1) == 0)
        {
          break;
        }

        v20 = v15;
        v4 = v15 + 3;
        v21 = v46;
        if (v46 != v15)
        {
          goto LABEL_12;
        }

LABEL_13:
        v5 = v21 + 3;
        v11 = v45;
        if (v10 >= v45 || v4 >= v48)
        {
          goto LABEL_15;
        }
      }

      v20 = v10;
      v21 = v46;
      v22 = v46 == v10;
      v10 += 3;
      v4 = v15;
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_12:
      v23 = *v20;
      v21[2] = v20[2];
      *v21 = v23;
      goto LABEL_13;
    }

LABEL_15:
    v24 = v5;
  }

  v36 = (v11 - v10) / 24;
  if (v24 != v10 || v24 >= &v10[3 * v36])
  {
    memmove(v24, v10, 24 * v36);
  }

  return 1;
}

size_t sub_25CDC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_187C(&qword_71618, &qword_5D278);
  v10 = *(type metadata accessor for FontGlyphVariant() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FontGlyphVariant() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25EB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71608, &qword_5F030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25FC0(char *a1, int64_t a2, char a3)
{
  result = sub_26000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25FE0(char *a1, int64_t a2, char a3)
{
  result = sub_26254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26000(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71628, &qword_5D290);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_2610C(void *result, int64_t a2, char a3, void *a4)
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
    sub_187C(&qword_71638, &qword_5D2A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_71630, &unk_5D298);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26254(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70DB0, &qword_5BFD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2637C(void *a1)
{
  v69 = type metadata accessor for FontGlyphVariant();
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v69);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_187C(&qword_71620, &unk_5D280);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v66 = &v54 - v13;
  result = __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = a1[2];
  v18 = *v2;
  v19 = *(*v2 + 16);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v18[3] >> 1, v23 < v20))
  {
    if (v19 <= v20)
    {
      v24 = v19 + v17;
    }

    else
    {
      v24 = v19;
    }

    v18 = sub_25CDC(isUniquelyReferenced_nonNull_native, v24, 1, v18);
    v23 = v18[3] >> 1;
  }

  v25 = v18[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v26 = v23 - v25;
  result = sub_272B8(&v70, v18 + v20 + v19 * v25, v23 - v25, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = v18[2];
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v18[2] = v30;
  }

  if (result != v26)
  {
    result = sub_61FC();
LABEL_14:
    *v2 = v18;
    return result;
  }

LABEL_17:
  v65 = v18[2];
  v27 = v71;
  v57 = v71;
  v58 = v70;
  v30 = v73;
  v55 = v72;
  v31 = v74;
  if (v74)
  {
    v32 = v73;
LABEL_27:
    v64 = (v31 - 1) & v31;
    sub_1BBBC(*(v58 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v16);
    v36 = v69;
    v60 = *(v1 + 56);
    v60(v16, 0, 1, v69);
    v35 = v32;
    while (1)
    {
      v37 = v66;
      sub_6610(v16, v66, &qword_71620, &unk_5D280);
      v38 = *(v1 + 48);
      v1 += 48;
      v63 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v56 = (v55 + 64) >> 6;
      v59 = v4 + 56;
      v39 = v65;
      while (1)
      {
        sub_6678(v37, &qword_71620, &unk_5D280);
        v42 = v18[3];
        v43 = v42 >> 1;
        v65 = v39;
        if ((v42 >> 1) < v39 + 1)
        {
          v18 = sub_25CDC(v42 > 1, v39 + 1, 1, v18);
          v43 = v18[3] >> 1;
        }

        v44 = v68;
        sub_6610(v16, v68, &qword_71620, &unk_5D280);
        if (v63(v44, 1, v69) != 1)
        {
          break;
        }

        v45 = v35;
        v46 = v68;
LABEL_37:
        sub_6678(v46, &qword_71620, &unk_5D280);
        v40 = v65;
        v35 = v45;
LABEL_32:
        v18[2] = v40;
        v37 = v66;
        sub_6610(v16, v66, &qword_71620, &unk_5D280);
        v41 = v63(v37, 1, v69);
        v39 = v65;
        if (v41 == 1)
        {
          goto LABEL_29;
        }
      }

      v61 = v18 + v20;
      v47 = v65;
      if (v65 <= v43)
      {
        v47 = v43;
      }

      v62 = v47;
      v46 = v68;
      while (1)
      {
        v50 = v67;
        sub_291DC(v46, v67);
        if (v65 == v62)
        {
          sub_1BC20(v50);
          v40 = v62;
          v65 = v62;
          goto LABEL_32;
        }

        v4 = v65;
        sub_6678(v16, &qword_71620, &unk_5D280);
        sub_291DC(v50, &v61[v4 * v19]);
        v51 = v64;
        if (!v64)
        {
          break;
        }

        v52 = v35;
LABEL_53:
        v64 = (v51 - 1) & v51;
        sub_1BBBC(*(v58 + 48) + (__clz(__rbit64(v51)) | (v52 << 6)) * v19, v16);
        v48 = 0;
        v45 = v52;
LABEL_42:
        v65 = v4 + 1;
        v49 = v69;
        v60(v16, v48, 1, v69);
        v46 = v68;
        sub_6610(v16, v68, &qword_71620, &unk_5D280);
        v35 = v45;
        if (v63(v46, 1, v49) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v56 <= (v35 + 1))
      {
        v53 = v35 + 1;
      }

      else
      {
        v53 = v56;
      }

      v45 = v53 - 1;
      while (1)
      {
        v52 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v52 >= v56)
        {
          v64 = 0;
          v48 = 1;
          goto LABEL_42;
        }

        v51 = *(v57 + 8 * v52);
        ++v35;
        if (v51)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v36 = v69;
      v60 = *(v1 + 56);
      v60(v16, 1, 1, v69);
      v64 = 0;
    }

LABEL_29:
    sub_6678(v16, &qword_71620, &unk_5D280);
    sub_61FC();
    result = sub_6678(v37, &qword_71620, &unk_5D280);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (v55 + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = (v55 + 64) >> 6;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_55;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_187C(&qword_71100, &unk_5DC10);
  v41 = a2;
  result = sub_59D50();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v42 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 24 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(*(v5 + 56) + 8 * v22);
      if ((v41 & 1) == 0)
      {
        sub_B4D0(v24, v25, v26);
      }

      v43 = v26;
      v28 = v24;
      v29 = v27;
      v30 = *(v8 + 40);
      sub_D600();
      result = sub_59870();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v43;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 24 * v16;
      *v18 = v28;
      *(v18 + 8) = v25;
      *(v18 + 16) = v17;
      *(*(v8 + 56) + 8 * v16) = v29;
      ++*(v8 + 16);
      v5 = v40;
      v13 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26CC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_187C(&qword_71610, &qword_5D270);
  v38 = a2;
  result = sub_59D50();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_59ED0();
      sub_59920();
      result = sub_59F10();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_26F70()
{
  v1 = v0;
  sub_187C(&qword_71100, &unk_5DC10);
  v2 = *v0;
  v3 = sub_59D40();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_B4D0(v19, v20, v21);
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

uint64_t sub_270EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_59BA0() + 1) & ~v5;
    sub_D600();
    do
    {
      v9 = 24 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 24 * v6;
      v25 = *v11;
      v26 = *(v11 + 16);
      result = sub_59870();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + v9);
          if (24 * v3 < v9 || v16 >= v17 + 24 || v3 != v6)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_272B8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for FontGlyphVariant();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = &v30 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      sub_1BBBC(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_291DC(v12, v15);
      sub_291DC(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_274E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v22 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v19 = *(*(a4 + 48) + 16 * v17);
      v9 &= v9 - 1;
      *v11 = v19;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {
        sub_B848(v19, *(&v19 + 1));

        goto LABEL_23;
      }

      v11 += 24;
      sub_B848(v19, *(&v19 + 1));

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
      v21 = v12 + 1;
    }

    else
    {
      v21 = v13;
    }

    v12 = v21 - 1;
    v10 = result;
LABEL_23:
    v7 = v22;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2767C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  sub_B4D0(v3, v2, v4);
}

unint64_t sub_276CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_71670, &qword_5D2C8);
    v3 = sub_59D60();
    v4 = a1 + 32;

    while (1)
    {
      sub_6610(v4, &v11, &qword_713A8, &qword_5C9F8);
      v5 = v11;
      result = sub_23EEC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_292DC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_2781C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v37 = a4;
  v33 = a1;
  v5 = type metadata accessor for FontGlyphVariant();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  result = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v10 = 0;
  v38 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_1BBBC(*(v38 + 48) + *(v35 + 72) * v21, v9);
    v22 = *&v9[*(v36 + 20)];
    v23 = sub_52384();
    v25 = v24;
    if (v23 == sub_52384() && v25 == v26)
    {

      result = sub_1BC20(v9);
LABEL_18:
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_21:
        v30 = v38;

        return sub_249E0(v33, v32, v34, v30);
      }
    }

    else
    {
      v28 = sub_59E80();

      result = sub_1BC20(v9);
      if (v28)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_21;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27A60(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FontGlyphVariant();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;
  v13 = a2;
  v40 = v13;
  if (v10 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v34 = v11;
    v35 = v3;
    v33 = &v33;
    __chkstk_darwin(v13);
    v36 = &v33 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v37 = 0;
    v14 = 0;
    v15 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v3 = v9;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v41 = (v18 - 1) & v18;
LABEL_12:
      v9 = a1;
      v11 = v20 | (v14 << 6);
      sub_1BBBC(*(a1 + 48) + *(v38 + 72) * v11, v3);
      v23 = *(v3 + *(v39 + 20));
      v12 = sub_52384();
      v25 = v24;
      if (v12 == sub_52384() && v25 == v26)
      {

        sub_1BC20(v3);
        a1 = v9;
        v18 = v41;
LABEL_19:
        *&v36[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_22:
          v29 = sub_249E0(v36, v34, v37, a1);

          return v29;
        }
      }

      else
      {
        v12 = sub_59E80();

        sub_1BC20(v3);
        a1 = v9;
        v18 = v41;
        if (v12)
        {
          goto LABEL_19;
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_22;
      }

      v22 = *(v15 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();
  v32 = v40;
  v29 = sub_24948(v31, v11, a1, v32);

  return v29;
}

unint64_t sub_27DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_70D90, &qword_5AF90);
    v3 = sub_59D60();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_B848(v5, v6);

      result = sub_A4D8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_27EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_71610, &qword_5D270);
    v3 = sub_59D60();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_500C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_27FFC()
{
  result = qword_713C0;
  if (!qword_713C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_713C0);
  }

  return result;
}

uint64_t sub_28050(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_28098(uint64_t *a1)
{
  v3 = sub_187C(&qword_71648, &unk_5D2B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  sub_7770(a1, a1[3]);
  sub_27FFC();
  sub_59F20();
  if (!v1)
  {
    LOBYTE(v15) = 0;
    sub_1D860();
    sub_59DD0();
    v10 = v14[0];
    v9 = v14[1];
    sub_1D91C(0, &qword_712D0, NSKeyedUnarchiver_ptr);
    sub_59AE0();
    if (v14[3])
    {
      sub_1D91C(0, &qword_712E8, UIFont_ptr);
      if (swift_dynamicCast())
      {
        v8 = v15;
LABEL_10:
        type metadata accessor for _NSRange(0);
        LOBYTE(v15) = 1;
        sub_28050(&qword_71650, type metadata accessor for _NSRange);
        sub_59DD0();
        v12 = v10;
        v13 = v9;
        sub_187C(&qword_713D0, &qword_5CA08);
        LOBYTE(v15) = 2;
        sub_29240(&qword_71658, &qword_71660);
        sub_59DD0();
        (*(v4 + 8))(v7, v3);
        sub_1D80C(v12, v13);
        sub_EA60(a1);
        return v8;
      }
    }

    else
    {
      sub_6678(v14, &qword_712D8, qword_5C750);
    }

    v8 = *sub_52218();
    goto LABEL_10;
  }

  sub_EA60(a1);
  return v8;
}

uint64_t sub_28458(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
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
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v16 = v11;
LABEL_14:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = *(a1 + 48) + 24 * v18;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(*(a1 + 56) + 8 * v18);
    v55[0] = v20;
    v55[1] = v21;
    v56 = v22;
    v57 = v23;
    sub_B4D0(v20, v21, v22);

    a2(&v51, v55);
    sub_EAAC(v20, v21, v22);

    v25 = v51;
    v24 = v52;
    v26 = v53;
    v27 = v54;
    v28 = *v58;
    v30 = sub_143B0(v51, v52, v53);
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((v50 & 1) == 0)
      {
        sub_26F70();
      }
    }

    else
    {
      v35 = v58;
      sub_269DC(v33, v50 & 1);
      v36 = *v35;
      v37 = sub_143B0(v25, v24, v26);
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v30 = v37;
    }

    v9 &= v9 - 1;
    v39 = *v58;
    if (v34)
    {
      v12 = *(v39[7] + 8 * v30);

      v13 = sub_22684(v27, v12);
      sub_EAAC(v25, v24, v26);
      v14 = v39[7];
      v15 = *(v14 + 8 * v30);
      *(v14 + 8 * v30) = v13;
    }

    else
    {
      v39[(v30 >> 6) + 8] |= 1 << v30;
      v40 = v39[6] + 24 * v30;
      *v40 = v25;
      *(v40 + 8) = v24;
      *(v40 + 16) = v26;
      *(v39[7] + 8 * v30) = v27;
      v41 = v39[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v39[2] = v43;
    }

    a4 = 1;
    v11 = v16;
    v10 = v46;
    v6 = v47;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_61FC();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_59EA0();
  __break(1u);
  return result;
}

void *sub_2873C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v4 = *i;
    v28 = *(i - 2);
    v29 = *(i - 1);
    v5 = *(i - 3);

    v6 = sub_52384();
    v8 = v7;
    v10 = sub_500C(v6, v7);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (_swiftEmptyDictionarySingleton[3] < v13)
    {
      sub_26CC8(v13, 1);
      v15 = sub_500C(v6, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = _swiftEmptyDictionarySingleton[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_25EB4(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_25EB4((v20 > 1), v21 + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      *(v18 + 2) = v21 + 1;
      v3 = &v18[32 * v21];
      *(v3 + 4) = v5;
      *(v3 + 5) = v28;
      *(v3 + 6) = v29;
      *(v3 + 7) = v4;
    }

    else
    {
      sub_187C(&qword_71608, &qword_5F030);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_5AB00;
      *(v22 + 32) = v5;
      *(v22 + 40) = v28;
      *(v22 + 48) = v29;
      *(v22 + 56) = v4;
      _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
      v23 = (_swiftEmptyDictionarySingleton[6] + 16 * v10);
      *v23 = v6;
      v23[1] = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v22;
      v24 = _swiftEmptyDictionarySingleton[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      _swiftEmptyDictionarySingleton[2] = v26;
    }

    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_59EA0();
  __break(1u);
  return result;
}

unint64_t sub_289A4()
{
  result = qword_71470;
  if (!qword_71470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71470);
  }

  return result;
}

unint64_t sub_289FC()
{
  result = qword_71478;
  if (!qword_71478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71478);
  }

  return result;
}

unint64_t sub_28A54()
{
  result = qword_71480;
  if (!qword_71480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71480);
  }

  return result;
}

__n128 sub_28AA8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_28AB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_28AFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for RangeDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RangeDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for TypographyPanelViewModel()
{
  result = qword_75440;
  if (!qword_75440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_28CF0()
{
  sub_28FD0(319, &qword_711C8, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1C228(319, &qword_714B0, &qword_713F0, &qword_5CA68);
    if (v4 <= 0x3F)
    {
      v15 = *(v3 - 8) + 64;
      sub_1C228(319, &qword_714B8, &qword_71408, &qword_5CAC8);
      if (v6 <= 0x3F)
      {
        v16 = *(v5 - 8) + 64;
        sub_1C228(319, &qword_714C0, &qword_71420, &qword_5CB28);
        if (v8 <= 0x3F)
        {
          v17 = *(v7 - 8) + 64;
          sub_1C228(319, &qword_714C8, &qword_71038, &qword_5C350);
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            sub_1C228(319, &qword_714D0, &qword_71448, &qword_5CBE8);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              sub_1C228(319, &unk_714D8, &qword_70F68, &qword_5C2E8);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_28FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29188()
{
  result = qword_71600;
  if (!qword_71600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71600);
  }

  return result;
}

uint64_t sub_291DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontGlyphVariant();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29240(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1F64(&qword_713D0, &qword_5CA08);
    sub_28050(a2, type metadata accessor for FontGlyphVariant);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_292DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2932C()
{
  result = qword_71678;
  if (!qword_71678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71678);
  }

  return result;
}

uint64_t (*sub_293A0(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_2932C();
  sub_58E90();
  *(a1 + 16) = *(a1 + 17);
  return sub_29408;
}

uint64_t sub_29414()
{
  v0 = sub_187C(&qword_71078, &qword_5C378);
  sub_F9D4(v0, qword_77BD8);
  v1 = sub_F15C(v0, qword_77BD8);
  v2 = type metadata accessor for FeaturePreviewConfiguration(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_294B4()
{
  if (qword_758D0 != -1)
  {
    swift_once();
  }

  v0 = sub_187C(&qword_71078, &qword_5C378);

  return sub_F15C(v0, qword_77BD8);
}

uint64_t sub_29524@<X0>(uint64_t a1@<X8>)
{
  if (qword_758D0 != -1)
  {
    swift_once();
  }

  v2 = sub_187C(&qword_71078, &qword_5C378);
  v3 = sub_F15C(v2, qword_77BD8);

  return sub_295A8(v3, a1);
}

uint64_t sub_295A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_187C(&qword_71078, &qword_5C378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2961C()
{
  sub_29664();

  return sub_58E90();
}

unint64_t sub_29664()
{
  result = qword_71680;
  if (!qword_71680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71680);
  }

  return result;
}

uint64_t sub_296B8(uint64_t a1)
{
  v2 = sub_187C(&qword_71078, &qword_5C378);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_295A8(a1, &v6 - v4);
  sub_29664();
  sub_58EA0();
  return sub_29760(a1);
}

uint64_t sub_29760(uint64_t a1)
{
  v2 = sub_187C(&qword_71078, &qword_5C378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_297C8(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_187C(&qword_71078, &qword_5C378) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_29664();
  sub_58E90();
  return sub_298E0;
}

void sub_298E0(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_295A8((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_295A8(v3[2], v3[1]);
    sub_58EA0();
    sub_29760(v7);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_58EA0();
  }

  sub_29760(v4);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t sub_299E8(void (*a1)(void))
{
  a1();
  sub_58E90();
  return v2;
}

unint64_t sub_29A30()
{
  result = qword_71688;
  if (!qword_71688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71688);
  }

  return result;
}

uint64_t (*sub_29AEC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_29A30();
  sub_58E90();
  *(a1 + 16) = *(a1 + 17);
  return sub_29B54;
}

uint64_t sub_29B60(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_58EA0();
}

uint64_t sub_29B90()
{
  swift_getKeyPath();
  sub_59370();
}

uint64_t sub_29C04@<X0>(_BYTE *a1@<X8>)
{
  sub_2932C();
  result = sub_58E90();
  *a1 = v3;
  return result;
}

uint64_t sub_29C54(char *a1)
{
  v2 = *a1;
  sub_2932C();
  return sub_58EA0();
}

uint64_t sub_29CA0(char a1)
{
  v2 = sub_58CF0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2BA2C(a1);
  v7 = *(v2 + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = sub_58FA0();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = v6;
  v5[1] = v6;
  sub_29DC4();
  sub_594D0();
  return sub_29E1C(v5);
}

unint64_t sub_29DC4()
{
  result = qword_71690;
  if (!qword_71690)
  {
    sub_58CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71690);
  }

  return result;
}

uint64_t sub_29E1C(uint64_t a1)
{
  v2 = sub_58CF0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E78()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];

  return sub_59510();
}

uint64_t sub_29EBC()
{
  result = sub_59560();
  qword_77BF0 = result;
  return result;
}

uint64_t *sub_29EDC()
{
  if (qword_758D8 != -1)
  {
    swift_once();
  }

  return &qword_77BF0;
}

uint64_t sub_29F50()
{
  v0 = [objc_opt_self() systemBackgroundColor];
  result = sub_59580();
  qword_77BF8 = result;
  return result;
}

uint64_t *sub_29F90()
{
  if (qword_758E0 != -1)
  {
    swift_once();
  }

  return &qword_77BF8;
}

uint64_t sub_2A004()
{
  result = sub_59540();
  qword_77C00 = result;
  return result;
}

uint64_t *sub_2A024()
{
  if (qword_758E8 != -1)
  {
    swift_once();
  }

  return &qword_77C00;
}

uint64_t *sub_2A0AC()
{
  if (qword_758F0 != -1)
  {
    swift_once();
  }

  return &qword_77C08;
}

uint64_t sub_2A134(uint64_t a1, uint64_t *a2)
{
  sub_59570();
  v3 = sub_59550();

  *a2 = v3;
  return result;
}

uint64_t *sub_2A188()
{
  if (qword_758F8 != -1)
  {
    swift_once();
  }

  return &qword_77C10;
}

uint64_t sub_2A1FC(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_2A30C(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  sub_1F64(a2, a3);
  sub_58CB0();
  sub_6ED0(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_2A3B0(uint64_t a1, unint64_t a2)
{

  v5 = sub_59980();
  if (v5)
  {
    v6 = v5;
    v7 = sub_52E4(v5, 0);

    v8 = sub_2B0B0(&v20, (v7 + 16), v6, a1, a2);

    if (v8 != v6)
    {
LABEL_21:
      __break(1u);
      return result;
    }
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  result = sub_59930();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = result;
  if (result)
  {
    v11 = sub_59A40();
    *(v11 + 2) = v10;
    bzero(v11 + 16, 2 * v10);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11 + 16;
  CTFontGetGlyphsForCharacters(v2, v7 + 16, v11 + 16, v10);

  v13 = *(v11 + 2);
  if (v13)
  {
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v18 = *v12++;
      v17 = v18;
      if (v18)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_5BA4(0, v14[2] + 1, 1);
          v14 = v20;
        }

        v16 = v14[2];
        v15 = v14[3];
        if (v16 >= v15 >> 1)
        {
          sub_5BA4((v15 > 1), v16 + 1, 1);
          v14 = v20;
        }

        v14[2] = v16 + 1;
        *(v14 + v16 + 16) = v17;
      }

      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  return v14;
}

void *sub_2A580(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    type metadata accessor for CGSize(0);

    v3 = sub_59A40();
    *(v3 + 16) = v2;
    bzero((v3 + 32), 16 * v2);
  }

  else
  {
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_2AFB4(0, *(v1 + 2), 0, v1);
  }

  v4 = (v1 + 32);

  CTFontTransformGlyphs();

  for (i = *(v1 + 2); i; --i)
  {
    v9 = *v4++;
    v8 = v9;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_5BA4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_5BA4((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      *(&_swiftEmptyArrayStorage[4] + v7) = v8;
    }
  }

  return _swiftEmptyArrayStorage;
}

CFIndex sub_2A70C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  sub_187C(&qword_716A8, &unk_5D470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5D460;
  *(inited + 32) = sub_51A64(a1, a2, a3 & 1);
  *(inited + 40) = v11;
  sub_51894(a1, a2, a3 & 1, (inited + 48));
  *(inited + 80) = sub_51A90(a1, a2, a3 & 1);
  *(inited + 88) = v12;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = a4;
  sub_2B398(inited);
  swift_setDeallocating();
  sub_187C(&qword_716B0, &unk_5DA00);
  swift_arrayDestroy();
  v13.super.isa = sub_59860().super.isa;

  v14 = CTFontCopyGlyphCoverageForFeature();
  GlyphCount = CTFontGetGlyphCount(v5);
  result = sub_53B74();
  v17 = *(result + 16);
  if (!v17)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_13:

    return v19;
  }

  v18 = (result + 32);
  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v21 = *v18++;
    v20 = v21;
    if (v21 >= GlyphCount)
    {
      goto LABEL_4;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >> 16)
    {
      goto LABEL_15;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2AFB4(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v23 = *(v19 + 2);
    v22 = *(v19 + 3);
    if (v23 >= v22 >> 1)
    {
      result = sub_2AFB4((v22 > 1), v23 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v23 + 1;
    *&v19[2 * v23 + 32] = v20;
LABEL_4:
    if (!--v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2A934()
{
  v0 = CTFontCopyStringForGlyph();
  v1 = sub_598E0();

  return v1;
}

uint64_t sub_2A980()
{
  v0 = CTFontCopyStringForGlyph();
  v1 = sub_598E0();
  v3 = v2;

  if (sub_59930() == 1)
  {
    v4 = sub_2AA10(v1, v3);

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2AA10(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_599B0();
  }

  else
  {
    return 0;
  }
}

void sub_2AA58(uint64_t a1)
{
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v1, kCTFontOrientationDefault, (a1 + 32), 0, *(a1 + 16));
  x = BoundingRectsForGlyphs.origin.x;
  y = BoundingRectsForGlyphs.origin.y;
  width = BoundingRectsForGlyphs.size.width;
  height = BoundingRectsForGlyphs.size.height;
  CGRectGetWidth(BoundingRectsForGlyphs);
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CGRectGetHeight(v7);
  sub_52330();
}

char *sub_2AAF4(unsigned __int16 a1)
{
  if (a1 && CTFontGetGlyphCount(v1) > a1)
  {
    v2 = CTFontCopyVariantsOfGlyph();
    v3 = [v2 allKeys];
    v4 = sub_59A10();

    v5 = sub_2ABE0(v4);

    if (v5)
    {
      v7 = v5;

      sub_51AC(&v7);

      return v7;
    }
  }

  return 0;
}

void *sub_2ABE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_5BA4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_F978(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_5BA4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      *(v3 + v6 + 16) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2ACEC()
{
  v1 = sub_598B0();
  sub_187C(&qword_716B8, &qword_5D480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = v0;
  v3 = NSFontAttributeName;
  v0;
  sub_2B4A8(inited);
  swift_setDeallocating();
  sub_2B5A0(inited + 32);
  type metadata accessor for Key(0);
  type metadata accessor for CTFont(0);
  sub_2B668(&qword_713B0, type metadata accessor for Key);
  isa = sub_59860().super.isa;

  v5 = CTLineCreateWithString();

  v6 = CTLineGetGlyphRuns(v5);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTRun(0);
    sub_59A00();

    v6 = v5;
  }

  else
  {
  }

  return 0;
}

char *sub_2AFB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70CC0, &unk_5AEB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_2B0B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = sub_59C60();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = sub_59CB0();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = sub_59F40();
    v22 = sub_59F40();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

unint64_t sub_2B398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_716E0, &qword_5D568);
    v3 = sub_59D60();
    v4 = a1 + 32;

    while (1)
    {
      sub_2B818(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_500C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_292DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2B4A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_716D8, &qword_5D560);
    v3 = sub_59D60();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23EEC(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_2B5A0(uint64_t a1)
{
  v2 = sub_187C(&qword_716C0, qword_5D488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2B61C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2B668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B818(uint64_t a1, uint64_t a2)
{
  v4 = sub_187C(&qword_716B0, &unk_5DA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2B888()
{
  type metadata accessor for TypographyPanelViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_75F18 = result;
  return result;
}

uint64_t sub_2B8E0(Swift::String a1, uint64_t a2, uint64_t a3)
{
  if (qword_75F10 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    object = a1._object;
    v7 = a3;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
    a3 = v7;
    a1._object = object;
  }

  v3.super.isa = qword_75F18;
  v8._countAndFlagsBits = a3;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  return sub_58930(a1, v9, v3, v10, v8);
}

Swift::Int sub_2BA70(char a1)
{
  sub_59ED0();
  if (a1)
  {
    v2 = 0x4051800000000000;
  }

  else
  {
    v2 = 0x4059000000000000;
  }

  sub_59F00(v2);
  return sub_59F10();
}

Swift::Int sub_2BB08(uint64_t a1, char a2)
{
  sub_59ED0();
  sub_59F00(qword_5D7F8[a2]);
  return sub_59F10();
}

Swift::Int sub_2BB58(uint64_t a1, char a2)
{
  sub_59ED0();
  if (a2)
  {
    v3 = 0x4051800000000000;
  }

  else
  {
    v3 = 0x4059000000000000;
  }

  sub_59F00(v3);
  return sub_59F10();
}

uint64_t sub_2BBAC@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2BE5C(*a1);
  *a2 = result;
  return result;
}

double sub_2BBD8@<D0>(double *a1@<X8>)
{
  result = dbl_5D818[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_2BC38(double a1)
{
  if (a1 == 70.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 100.0)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

double sub_2BC64(char a1)
{
  result = 100.0;
  if (a1)
  {
    return 70.0;
  }

  return result;
}

BOOL sub_2BC84(_BYTE *a1, _BYTE *a2)
{
  v2 = 100.0;
  if (*a1)
  {
    v3 = 70.0;
  }

  else
  {
    v3 = 100.0;
  }

  if (*a2)
  {
    v2 = 70.0;
  }

  return v3 == v2;
}

void sub_2BCC4()
{
  if (*v0)
  {
    v1 = 0x4051800000000000;
  }

  else
  {
    v1 = 0x4059000000000000;
  }

  sub_59F00(v1);
}

double *sub_2BD0C@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 70.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 100.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_2BD40(double *a1@<X8>)
{
  v2 = 100.0;
  if (*v1)
  {
    v2 = 70.0;
  }

  *a1 = v2;
}

uint64_t sub_2BE5C(double a1)
{
  if (a1 == 12.0)
  {
    return 0;
  }

  if (a1 == 7.0)
  {
    return 1;
  }

  if (a1 == 3.0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if (a1 == 5.0)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2BEB0()
{
  result = qword_716E8;
  if (!qword_716E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_716E8);
  }

  return result;
}

unint64_t sub_2BF08()
{
  result = qword_716F0;
  if (!qword_716F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_716F0);
  }

  return result;
}

uint64_t sub_2BFEC()
{
  result = sub_598E0();
  qword_77C18 = result;
  unk_77C20 = v1;
  return result;
}

uint64_t *sub_2C01C()
{
  if (qword_76220 != -1)
  {
    swift_once();
  }

  return &qword_77C18;
}

uint64_t sub_2C06C()
{
  result = sub_598E0();
  qword_77C28 = result;
  unk_77C30 = v1;
  return result;
}

uint64_t *sub_2C09C()
{
  if (qword_76228 != -1)
  {
    swift_once();
  }

  return &qword_77C28;
}

uint64_t sub_2C0EC()
{
  result = sub_598E0();
  qword_77C38 = result;
  unk_77C40 = v1;
  return result;
}

uint64_t *sub_2C11C()
{
  if (qword_76230 != -1)
  {
    swift_once();
  }

  return &qword_77C38;
}

uint64_t sub_2C16C()
{
  result = sub_598E0();
  qword_77C48 = result;
  unk_77C50 = v1;
  return result;
}

uint64_t *sub_2C19C()
{
  if (qword_76238 != -1)
  {
    swift_once();
  }

  return &qword_77C48;
}

uint64_t sub_2C1EC()
{
  v0 = sub_588D0();
  sub_F9D4(v0, qword_76248);
  sub_F15C(v0, qword_76248);
  return sub_58880();
}

void *sub_2C240(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (v4)
  {
    v32 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(a1 + 48) + 24 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(*(a1 + 56) + 8 * v10);
    sub_B4D0(*v11, v13, v14);

    v17 = sub_30C24(v16, v12, v13, v14);
    sub_EAAC(v12, v13, v14);

    v18 = *(v17 + 16);
    v8 = v32;
    v19 = v32[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_25;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v20 > v32[3] >> 1)
    {
      if (v19 <= v20)
      {
        v21 = v19 + v18;
      }

      else
      {
        v21 = v19;
      }

      result = sub_2EE38(result, v21, 1, v32);
      v8 = result;
    }

    v4 &= v4 - 1;
    if (*(v17 + 16))
    {
      if ((v8[3] >> 1) - v8[2] < v18)
      {
        goto LABEL_27;
      }

      sub_187C(&qword_716F8, &qword_5D840);
      swift_arrayInitWithCopy();

      if (v18)
      {
        v22 = v8[2];
        v23 = __OFADD__(v22, v18);
        v24 = v22 + v18;
        if (v23)
        {
          goto LABEL_28;
        }

        v8[2] = v24;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      sub_187C(&qword_71700, &qword_5D848);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_5AB00;
      *(inited + 32) = kCTFontFeatureSettingsAttribute;
      *(inited + 40) = v8;
      v26 = kCTFontFeatureSettingsAttribute;
      sub_30FF0(inited);
      swift_setDeallocating();
      sub_6678(inited + 32, &qword_71708, &qword_5D850);
      type metadata accessor for CFString(0);
      sub_187C(&qword_71710, &qword_5D858);
      sub_31A6C(&qword_71718);
      isa = sub_59860().super.isa;

      v28 = CTFontDescriptorCreateWithAttributes(isa);

      CopyWithAttributes = CTFontCreateCopyWithAttributes(font, 0.0, 0, v28);
      return CopyWithAttributes;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v32 = v8;
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

CTFontRef sub_2C550()
{
  v1 = CTFontCopyFontDescriptor(v0);
  sub_187C(&qword_71720, &qword_5D860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5AB00;
  *(inited + 32) = kCTFontFeatureSettingsAttribute;
  *(inited + 40) = kCFNull;
  v3 = kCFNull;
  v4 = kCTFontFeatureSettingsAttribute;
  sub_310FC(inited);
  swift_setDeallocating();
  sub_6678(inited + 32, &qword_71728, &qword_5D868);
  type metadata accessor for CFString(0);
  sub_187C(&qword_71730, &unk_5D870);
  sub_31A6C(&qword_71718);
  isa = sub_59860().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v1, isa);

  Size = CTFontGetSize(v0);
  v8 = CTFontCreateWithFontDescriptor(CopyWithAttributes, Size, 0);

  return v8;
}

uint64_t sub_2C6B0()
{
  v1 = CTFontCopyFeatureSettings(v0);
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_187C(&qword_716F8, &qword_5D840);
      sub_59A00();
    }
  }

  return sub_2CF8C(&_swiftEmptySetSingleton);
}

uint64_t sub_2CF8C(uint64_t a1)
{
  result = sub_2D540();
  v77 = *(result + 16);
  if (v77)
  {
    v3 = 0;
    v73 = result + 32;
    v71 = _swiftEmptyArrayStorage;
    v4 = a1 + 56;
    v75 = result;
    while (1)
    {
      if (v3 >= *(result + 16))
      {
        goto LABEL_51;
      }

      v7 = v73 + 72 * v3;
      v85 = *v7;
      v9 = *(v7 + 32);
      v8 = *(v7 + 48);
      v10 = *(v7 + 64);
      v86 = *(v7 + 16);
      v89 = v10;
      v87 = v9;
      v88 = v8;
      v11 = v85;
      v12 = v86;
      v79 = v3 + 1;
      v83 = v85;
      v84 = v86;
      if (*(a1 + 16))
      {
        v13 = *(a1 + 40);
        sub_E9C0(&v85, &v81);
        sub_B4D0(v11, *(&v11 + 1), v12);
        sub_D600();
        v14 = sub_59870();
        v15 = -1 << *(a1 + 32);
        v16 = v14 & ~v15;
        if ((*(v4 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          sub_D5A8();
          do
          {
            v18 = *(a1 + 48) + 24 * v16;
            v19 = *(v18 + 16);
            v81 = *v18;
            v82 = v19;
            if (sub_598A0())
            {
              goto LABEL_5;
            }

            v16 = (v16 + 1) & v17;
          }

          while (((*(v4 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
        }
      }

      else
      {
        sub_E9C0(&v85, &v81);
        sub_B4D0(v11, *(&v11 + 1), v12);
      }

      v5 = sub_51B70();
      if (v6)
      {
LABEL_5:
        sub_EAAC(v11, *(&v11 + 1), v12);
        sub_B818(&v85);
        result = v75;
        v3 = v79;
        if (v79 == v77)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v20 = v5;
        sub_B818(&v85);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_2EF6C(0, v71[2] + 1, 1, v71);
        }

        v22 = v71[2];
        v21 = v71[3];
        if (v22 >= v21 >> 1)
        {
          v71 = sub_2EF6C((v21 > 1), v22 + 1, 1, v71);
        }

        v71[2] = v22 + 1;
        v23 = &v71[4 * v22];
        *(v23 + 2) = v11;
        *(v23 + 48) = v12;
        v23[7] = v20;
        v3 = v79;
        result = v75;
        if (v79 == v77)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v71 = _swiftEmptyArrayStorage;
LABEL_20:

  v24 = sub_31430(v71);

  sub_187C(&qword_71100, &unk_5DC10);
  result = sub_59D40();
  v25 = result;
  v26 = 0;
  v65 = v24 + 8;
  v68 = result;
  v69 = v24;
  v27 = 1 << *(v24 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v24[8];
  v30 = (v27 + 63) >> 6;
  v66 = v30;
  v67 = result + 64;
  if (v29)
  {
    while (1)
    {
      v31 = __clz(__rbit64(v29));
      v32 = (v29 - 1) & v29;
LABEL_30:
      v35 = v31 | (v26 << 6);
      v70 = v32;
      v78 = 24 * v35;
      v80 = v35;
      v36 = v69[6] + 24 * v35;
      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = *(v36 + 16);
      v40 = *(v69[7] + 8 * v35);
      v41 = *(v40 + 16);
      v74 = v38;
      v76 = *v36;
      v72 = v39;
      if (v41)
      {
        sub_B4D0(v37, v38, v39);
        *&v81 = _swiftEmptyArrayStorage;

        sub_2F1CC(0, v41, 0);
        v42 = v81;
        v43 = *(v81 + 16);
        v44 = (v40 + 56);
        do
        {
          v46 = *v44;
          v44 += 4;
          v45 = v46;
          *&v81 = v42;
          v47 = v42[3];
          if (v43 >= v47 >> 1)
          {
            sub_2F1CC((v47 > 1), v43 + 1, 1);
            v42 = v81;
          }

          v42[2] = v43 + 1;
          v42[v43++ + 4] = v45;
          --v41;
        }

        while (v41);
      }

      else
      {
        sub_B4D0(v37, v38, v39);

        v42 = _swiftEmptyArrayStorage;
        v48 = _swiftEmptyArrayStorage[2];
      }

      v49 = sub_59AA0();
      v50 = v49;
      v51 = v42[2];
      if (v51)
      {
        v52 = 0;
        v53 = v49 + 56;
        do
        {
          while (1)
          {
            v54 = v42[v52++ + 4];
            v55 = *(v50 + 40);
            v56 = sub_59EC0();
            v57 = -1 << *(v50 + 32);
            v58 = v56 & ~v57;
            if ((*(v53 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
            {
              break;
            }

LABEL_44:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v81 = v50;
            sub_13BC0(v54, v58, isUniquelyReferenced_nonNull_native);
            v50 = v81;
            if (v52 == v51)
            {
              goto LABEL_46;
            }

            v53 = v81 + 56;
          }

          v59 = ~v57;
          while (*(*(v50 + 48) + 8 * v58) != v54)
          {
            v58 = (v58 + 1) & v59;
            if (((*(v53 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
            {
              goto LABEL_44;
            }
          }
        }

        while (v52 != v51);
      }

LABEL_46:

      v25 = v68;
      *(v67 + ((v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v80;
      v61 = v68[6] + v78;
      *v61 = v76;
      *(v61 + 8) = v74;
      *(v61 + 16) = v72;
      *(v68[7] + 8 * v80) = v50;
      v62 = v68[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        break;
      }

      v68[2] = v64;
      v30 = v66;
      v29 = v70;
      if (!v70)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v33 = v26;
    while (1)
    {
      v26 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v26 >= v30)
      {

        return v25;
      }

      v34 = v65[v26];
      ++v33;
      if (v34)
      {
        v31 = __clz(__rbit64(v34));
        v32 = (v34 - 1) & v34;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2D540()
{
  v1 = CTFontCopyFeatures(v0);
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_319A4();
      sub_59A00();
    }
  }

  sub_187C(&qword_70E58, qword_5D880);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5AB00;
  sub_59C70(33);
  v6._object = 0x8000000000066DF0;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  sub_59950(v6);
  type metadata accessor for CTFont(0);
  sub_59D10();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_DBD4();
  sub_ED00(0x75746165466C6C61, 0xEB00000000736572, v4 & 1, v3);

  return _swiftEmptyArrayStorage;
}

uint64_t sub_2E554(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = a1 & 0xC000000000000001;
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
      v7 = &kCTFontFeatureSelectorIdentifierKey;
      if ((a2 & 1) == 0)
      {
        v7 = &kCTFontOpenTypeFeatureValue;
      }

      v28 = *v7;
      v27 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v5)
        {
          v8 = sub_59C80();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_43;
          }

          v8 = *(a1 + 8 * v4 + 32);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ([v8 __swift_objectForKeyedSubscript:kCTFontFeatureSelectorNameKey])
        {
          sub_59B60();
          swift_unknownObjectRelease();
        }

        else
        {
          v30 = 0u;
          v31 = 0u;
        }

        v32 = v30;
        v33 = v31;
        if (*(&v31 + 1))
        {
          if (swift_dynamicCast())
          {
            if ([v9 __swift_objectForKeyedSubscript:v28])
            {
              sub_59B60();
              swift_unknownObjectRelease();
            }

            else
            {
              v30 = 0u;
              v31 = 0u;
            }

            v32 = v30;
            v33 = v31;
            if (*(&v31 + 1))
            {
              if (swift_dynamicCast())
              {
                if ([v9 __swift_objectForKeyedSubscript:kCTFontFeatureSelectorDefaultKey])
                {
                  sub_59B60();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v30 = 0u;
                  v31 = 0u;
                }

                v32 = v30;
                v33 = v31;
                if (*(&v31 + 1))
                {
                  swift_dynamicCast();
                }

                else
                {
                  sub_6678(&v32, &qword_712D8, qword_5C750);
                }

                v32 = v29;
                if (qword_76240 != -1)
                {
                  swift_once();
                }

                v11 = sub_588D0();
                sub_F15C(v11, qword_76248);
                sub_66D8();
                sub_59B20();

                sub_7F3C();
                v26 = v12;
                v14 = v13;
                v16 = v15;
                v18 = v17;

                if (v16)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v27 = sub_2F0A0(0, *(v27 + 2) + 1, 1, v27);
                  }

                  v20 = *(v27 + 2);
                  v19 = *(v27 + 3);
                  if (v20 >= v19 >> 1)
                  {
                    v27 = sub_2F0A0((v19 > 1), v20 + 1, 1, v27);
                  }

                  *(v27 + 2) = v20 + 1;
                  v21 = &v27[32 * v20];
                  *(v21 + 4) = v26;
                  *(v21 + 5) = v14;
                  *(v21 + 6) = v16;
                  v21[56] = v18 & 1;
                  v21[57] = HIBYTE(v18) & 1;
                }

                v5 = a1 & 0xC000000000000001;
                v6 = a1 & 0xFFFFFFFFFFFFFF8;
                goto LABEL_8;
              }
            }

            else
            {

              sub_6678(&v32, &qword_712D8, qword_5C750);
            }

            v6 = a1 & 0xFFFFFFFFFFFFFF8;
          }
        }

        else
        {
          sub_6678(&v32, &qword_712D8, qword_5C750);
        }

LABEL_8:
        ++v4;
        if (v10 == v3)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v22 = a2;
      v23 = sub_59D30();
      a2 = v22;
      v3 = v23;
    }

    while (v23);
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_46:
  v24 = sub_31298(v27);

  return v24;
}

uint64_t sub_2E9E8(void *a1)
{
  if ([a1 __swift_objectForKeyedSubscript:kCTFontFeatureSampleTextKey])
  {
    sub_59B60();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      *&v7[0] = sub_598F0();
      *(&v7[0] + 1) = v1;
      sub_66D8();
      v2 = sub_59B50();

      if ((v2 & 1) == 0)
      {
        return v4;
      }
    }
  }

  else
  {
    sub_6678(v7, &qword_712D8, qword_5C750);
  }

  return 0;
}

uint64_t sub_2EB28()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_58A00();
}

uint64_t sub_2EB74()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_589F0();
}

Swift::Int sub_2EBCC()
{
  sub_59ED0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_589F0();
  return sub_59F10();
}

uint64_t sub_2EC34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_589E0();
}

unint64_t sub_2ECA0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_59ED0();
  type metadata accessor for CFString(0);
  sub_31A6C(&qword_71798);
  sub_589F0();
  v4 = sub_59F10();

  return sub_2ED40(a1, v4);
}

unint64_t sub_2ED40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_31A6C(&qword_71798);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_589E0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_2EE38(void *result, int64_t a2, char a3, void *a4)
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
    sub_187C(&qword_717A8, &unk_5D9F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_716F8, &qword_5D840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2EF6C(void *result, int64_t a2, char a3, void *a4)
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
    sub_187C(&qword_71778, &qword_5D9C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_71788, &qword_5D9D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2F0A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71760, &unk_5F000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2F1AC(void *a1, int64_t a2, char a3)
{
  result = sub_2F22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2F1CC(char *a1, int64_t a2, char a3)
{
  result = sub_2F360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2F1EC(char *a1, int64_t a2, char a3)
{
  result = sub_2F464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2F20C(char *a1, int64_t a2, char a3)
{
  result = sub_2F580(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2F22C(void *result, int64_t a2, char a3, void *a4)
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
    sub_187C(&qword_717A8, &unk_5D9F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_716F8, &qword_5D840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2F360(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_710F0, &qword_5D9C0);
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

char *sub_2F464(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71770, &unk_5D9B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2F580(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_71760, &unk_5F000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2F68C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_187C(a3, a4);
  v43 = a2;
  result = sub_59D50();
  v10 = result;
  if (*(v7 + 16))
  {
    v41 = v5;
    v42 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = *(v7 + 48) + 24 * v24;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(*(v7 + 56) + 8 * v24);
      if ((v43 & 1) == 0)
      {
        sub_B4D0(v26, v27, v28);
      }

      v45 = v28;
      v30 = v26;
      v31 = v29;
      v32 = *(v10 + 40);
      sub_D600();
      result = sub_59870();
      v33 = -1 << *(v10 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v19 = v45;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v18 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v19 = v45;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v20 = *(v10 + 48) + 24 * v18;
      *v20 = v30;
      *(v20 + 8) = v27;
      *(v20 + 16) = v19;
      *(*(v10 + 56) + 8 * v18) = v31;
      ++*(v10 + 16);
      v7 = v42;
      v15 = v44;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v5 = v41;
      goto LABEL_35;
    }

    v40 = 1 << *(v7 + 32);
    v5 = v41;
    if (v40 >= 64)
    {
      bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2F970(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a4 & 1;
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_D600();
  v11 = sub_59870();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v23 = a4;
    v14 = ~v12;
    sub_D5A8();
    while (1)
    {
      v15 = *(v9 + 48) + 24 * v13;
      v26 = *v15;
      v28 = *(v15 + 16);
      if (sub_598A0())
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_EAAC(a2, a3, v23 & 1);
    v19 = *(v9 + 48) + 24 * v13;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    *a1 = *v19;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    sub_B4D0(v20, v21, v22);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_B4D0(a2, a3, v8);
    sub_2FDA0(a2, a3, v8, v13, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v8;
    return 1;
  }
}

uint64_t sub_2FB1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_71768, &qword_5D9A8);
  result = sub_59C20();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
      v21 = *(v19 + 16);
      v33 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_D600();
      result = sub_59870();
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
      v15 = *(v6 + 48) + 24 * v14;
      v3 = v32;
      *v15 = v20;
      *(v15 + 8) = v33;
      *(v15 + 16) = v21;
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
      bzero(v8, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2FDA0(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2FB1C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_2FF5C();
      goto LABEL_12;
    }

    sub_300C4(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_D600();
  result = sub_59870();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    sub_D5A8();
    do
    {
      v15 = *(v11 + 48) + 24 * a4;
      v22 = *v15;
      v23 = *(v15 + 16);
      result = sub_598A0();
      if (result)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v16 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v17 = *(v16 + 48) + 24 * a4;
  *v17 = v8;
  *(v17 + 8) = a2;
  *(v17 + 16) = a3 & 1;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_59E90();
  __break(1u);
  return result;
}

void *sub_2FF5C()
{
  v1 = v0;
  sub_187C(&qword_71768, &qword_5D9A8);
  v2 = *v0;
  v3 = sub_59C10();
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
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_B4D0(v19, v20, v21);
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

uint64_t sub_300C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_187C(&qword_71768, &qword_5D9A8);
  result = sub_59C20();
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
      v33 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_B4D0(*v19, v21, v22);
      sub_D600();
      result = sub_59870();
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
      v11 = v33;
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
        v33 = (v18 - 1) & v18;
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

Swift::Int sub_30324(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_30C10(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_59E50(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if ((v12[40] & 1) == 0)
          {
            break;
          }

          v13 = *(v12 + 4);
          v14 = v12[41];
          v16 = *v12;
          v15 = *(v12 + 1);
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          v12[8] = 1;
          v12[9] = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_59A40();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_30478(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_30478(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v92;
    if (!*v92)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_5A8C(v8);
      v8 = result;
    }

    v84 = v8 + 2;
    v85 = v8[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_30A1C((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_117;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_118;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_119;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  result = 1;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = v9 + 2;
      v12 = 32 * v9;
      v13 = (*a3 + 32 * v9 + 88);
      while (v6 != v11)
      {
        v14 = *v13;
        v13 += 32;
        ++v11;
        if (v10 != v14)
        {
          v7 = v11 - 1;
          if (!v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (!v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v15 = 32 * v7 - 32;
        v16 = v7;
        v17 = v9;
        do
        {
          if (v17 != --v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v21 = (v20 + v12);
            v22 = (v20 + v15);
            v23 = *(v20 + v12);
            v24 = *(v20 + v12 + 16);
            v25 = *(v20 + v12 + 24);
            v26 = *(v20 + v12 + 25);
            if (v12 != v15 || v21 >= v22 + 2)
            {
              v18 = v22[1];
              *v21 = *v22;
              v21[1] = v18;
            }

            v19 = v20 + v15;
            *v19 = v23;
            *(v19 + 16) = v24;
            *(v19 + 24) = v25;
            *(v19 + 25) = v26;
          }

          ++v17;
          v15 -= 32;
          v12 += 32;
        }

        while (v17 < v16);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_5AA0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v38 = v8[2];
    v37 = v8[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_5AA0((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v39;
    v5 = (v8 + 4);
    v40 = &v8[2 * v38 + 4];
    *v40 = v9;
    v40[1] = v7;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_130;
    }

    if (v38)
    {
      while (1)
      {
        v41 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = v8[4];
          v43 = v8[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_60:
          if (v45)
          {
            goto LABEL_107;
          }

          v58 = &v8[2 * v39];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_109;
          }

          v64 = &v5[16 * v41];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_114;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v39 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v39 < 2)
        {
          goto LABEL_115;
        }

        v68 = &v8[2 * v39];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_75:
        if (v63)
        {
          goto LABEL_111;
        }

        v71 = &v5[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v41 - 1 >= v39)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v79 = &v5[16 * v41 - 16];
        v80 = *v79;
        v81 = &v5[16 * v41];
        v82 = *(v81 + 1);
        sub_30A1C((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_102;
        }

        if (v41 > v8[2])
        {
          goto LABEL_103;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = v8[2];
        if (v41 >= v83)
        {
          goto LABEL_104;
        }

        v39 = v83 - 1;
        result = memmove(&v5[16 * v41], v81 + 16, 16 * (v83 - 1 - v41));
        v8[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v5[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_105;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_106;
      }

      v53 = &v8[2 * v39];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_108;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_110;
      }

      if (v57 >= v49)
      {
        v75 = &v5[16 * v41];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_116;
        }

        if (v44 < v78)
        {
          v41 = v39 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    result = 1;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = *a3 + 32 * v7 - 32;
  v29 = v9 - v7;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    if (*(v31 + 56) != 1)
    {
LABEL_32:
      ++v7;
      v28 += 32;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v32 = *(v31 + 48);
    v33 = *(v31 + 57);
    v35 = *(v31 + 16);
    v34 = *(v31 + 32);
    *(v31 + 32) = *v31;
    *(v31 + 48) = v35;
    *v31 = v34;
    *(v31 + 16) = v32;
    *(v31 + 24) = 1;
    *(v31 + 25) = v33;
    v31 -= 32;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_30A1C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[24] == 1)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v20 = v5 + 32;
      if (*(v15 - 8) == 1)
      {
        v23 = v6 - 32;
        if (v20 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v23;
          *(v5 + 1) = v24;
        }

        if (v15 <= v4 || (v6 -= 32, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v15 - 32;
      if (v20 != v15)
      {
        v22 = *(v15 - 1);
        *v5 = *v21;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v15 -= 32;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v25 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v25])
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

unint64_t sub_30C24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v56 = _swiftEmptyArrayStorage;
  sub_2F1AC(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = v6 + 56;
  v8 = -1 << *(v6 + 32);
  v9 = sub_59B90();
  result = sub_187C(&qword_716E0, &qword_5D568);
  v44 = v6;
  v11 = 0;
  v41 = v6 + 64;
  v42 = v4;
  v43 = v6 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
  {
    v14 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_28;
    }

    v48 = v11;
    v49 = *(v6 + 36);
    v15 = *(*(v6 + 48) + 8 * v9);
    v53[0] = sub_51A64(a2, a3, a4 & 1);
    v53[1] = v16;
    sub_51894(a2, a3, a4 & 1, v54);
    v55[0] = sub_51A90(a2, a3, a4 & 1);
    v55[1] = v17;
    v55[5] = &type metadata for Int;
    v55[2] = v15;
    v18 = sub_59D60();

    sub_2B818(v53, &v50);
    v19 = v50;
    v20 = v51;
    result = sub_500C(v50, v51);
    if (v21)
    {
      goto LABEL_25;
    }

    *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v19;
    v22[1] = v20;
    result = sub_292DC(v52, (v18[7] + 32 * result));
    v23 = v18[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_26;
    }

    v18[2] = v25;
    sub_2B818(v55, &v50);
    v26 = v50;
    v27 = v51;
    result = sub_500C(v50, v51);
    if (v28)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v29 = (v18[6] + 16 * result);
    *v29 = v26;
    v29[1] = v27;
    result = sub_292DC(v52, (v18[7] + 32 * result));
    v30 = v18[2];
    v24 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v24)
    {
      goto LABEL_26;
    }

    v18[2] = v31;

    sub_187C(&qword_716B0, &unk_5DA00);
    result = swift_arrayDestroy();
    v56 = v5;
    v33 = v5[2];
    v32 = v5[3];
    if (v33 >= v32 >> 1)
    {
      result = sub_2F1AC((v32 > 1), v33 + 1, 1);
      v5 = v56;
    }

    v5[2] = v33 + 1;
    v5[v33 + 4] = v18;
    v7 = v43;
    v6 = v44;
    v12 = 1 << *(v44 + 32);
    if (v9 >= v12)
    {
      goto LABEL_29;
    }

    v34 = *(v43 + 8 * v14);
    if ((v34 & (1 << v9)) == 0)
    {
      goto LABEL_30;
    }

    if (v49 != *(v44 + 36))
    {
      goto LABEL_31;
    }

    v35 = v34 & (-2 << (v9 & 0x3F));
    if (v35)
    {
      v12 = __clz(__rbit64(v35)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v13 = v48;
    }

    else
    {
      v36 = v14 << 6;
      v37 = v14 + 1;
      v38 = (v41 + 8 * v14);
      while (v37 < (v12 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_31AC8(v9, v49, 0);
          v12 = __clz(__rbit64(v39)) + v36;
          goto LABEL_23;
        }
      }

      result = sub_31AC8(v9, v49, 0);
LABEL_23:
      v13 = v48;
    }

    v11 = v13 + 1;
    v9 = v12;
    if (v11 == v42)
    {
      return v5;
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
  return result;
}

unint64_t sub_30FF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_717A0, &qword_5D9E8);
    v3 = sub_59D60();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2ECA0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_310FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_71790, &qword_5D9E0);
    v3 = sub_59D60();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_2ECA0(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_311EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_D600();
  result = sub_59AA0();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      sub_B4D0(v7, v6, *v4);
      sub_2F970(v8, v7, v6, v5);
      sub_EAAC(v8[0], v8[1], v9);
      v4 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_31298(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 57;
  v4 = _swiftEmptyArrayStorage;
  v15 = result + 57;
  do
  {
    v16 = v4;
    for (i = (v3 + 32 * v2); ; i += 32)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_18;
      }

      v17 = v2 + 1;
      v6 = *(i - 9);
      v7 = *i;
      v8 = *(i - 1);
      v9 = *(i - 17);
      v10 = *(i - 25);

      if (sub_134D4(&v18, v10))
      {
        break;
      }

      ++v2;
      if (v17 == v1)
      {
        return v16;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = v16;
    v19 = v16;
    if ((result & 1) == 0)
    {
      result = sub_2F20C(0, v16[2] + 1, 1);
      v4 = v19;
    }

    v3 = v15;
    v11 = v7;
    v13 = v4[2];
    v12 = v4[3];
    if (v13 >= v12 >> 1)
    {
      result = sub_2F20C((v12 > 1), v13 + 1, 1);
      v11 = v7;
      v4 = v19;
    }

    v4[2] = v13 + 1;
    v14 = &v4[4 * v13];
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v6;
    *(v14 + 56) = v8;
    *(v14 + 57) = v11;
    v2 = v17;
  }

  while (v17 != v1);
  return v4;
}

void *sub_31430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v5 = *(i - 3);
    v4 = *(i - 2);
    v6 = *(i - 8);
    v7 = *i;
    sub_B4D0(v5, v4, v6);
    sub_B4D0(v5, v4, v6);
    v9 = sub_143B0(v5, v4, v6);
    v10 = _swiftEmptyDictionarySingleton[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_2F68C(v12, 1, &qword_71780, &qword_5D9D0);
      v14 = sub_143B0(v5, v4, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v9 = v14;
    }

    if (v13)
    {
      v30 = v1;
      sub_EAAC(v5, v4, v6);
      v16 = _swiftEmptyDictionarySingleton[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v16;
      *(v16 + 8 * v9) = v17;
      v31 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_2EF6C(0, v17[2] + 1, 1, v17);
        *(v16 + 8 * v9) = v17;
      }

      v20 = v17[2];
      v19 = v17[3];
      v21 = v20 + 1;
      v1 = v30;
      if (v20 >= v19 >> 1)
      {
        v22 = sub_2EF6C((v19 > 1), v20 + 1, 1, v17);
        v21 = v20 + 1;
        v17 = v22;
        *(v29 + 8 * v9) = v22;
      }

      v17[2] = v21;
      v3 = &v17[4 * v20];
      v3[4] = v5;
      v3[5] = v4;
      *(v3 + 48) = v6;
      v3[7] = v31;
    }

    else
    {
      sub_187C(&qword_71778, &qword_5D9C8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_5AB00;
      *(v23 + 32) = v5;
      *(v23 + 40) = v4;
      *(v23 + 48) = v6;
      *(v23 + 56) = v7;
      _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
      v24 = _swiftEmptyDictionarySingleton[6] + 24 * v9;
      *v24 = v5;
      *(v24 + 8) = v4;
      *(v24 + 16) = v6;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v23;
      v25 = _swiftEmptyDictionarySingleton[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      _swiftEmptyDictionarySingleton[2] = v27;
    }

    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_59EA0();
  __break(1u);
  return result;
}

uint64_t sub_316B0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
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
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v16 = v11;
LABEL_14:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = *(a1 + 48) + 24 * v18;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(*(a1 + 56) + 8 * v18);
    v55[0] = v20;
    v55[1] = v21;
    v56 = v22;
    v57 = v23;
    sub_B4D0(v20, v21, v22);

    a2(&v51, v55);
    sub_EAAC(v20, v21, v22);

    v25 = v51;
    v24 = v52;
    v26 = v53;
    v27 = v54;
    v28 = *v58;
    v30 = sub_143B0(v51, v52, v53);
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((v50 & 1) == 0)
      {
        sub_26F70();
      }
    }

    else
    {
      v35 = v58;
      sub_2F68C(v33, v50 & 1, &qword_71100, &unk_5DC10);
      v36 = *v35;
      v37 = sub_143B0(v25, v24, v26);
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v30 = v37;
    }

    v9 &= v9 - 1;
    v39 = *v58;
    if (v34)
    {
      v12 = *(v39[7] + 8 * v30);

      v13 = sub_22684(v27, v12);
      sub_EAAC(v25, v24, v26);
      v14 = v39[7];
      v15 = *(v14 + 8 * v30);
      *(v14 + 8 * v30) = v13;
    }

    else
    {
      v39[(v30 >> 6) + 8] |= 1 << v30;
      v40 = v39[6] + 24 * v30;
      *v40 = v25;
      *(v40 + 8) = v24;
      *(v40 + 16) = v26;
      *(v39[7] + 8 * v30) = v27;
      v41 = v39[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v39[2] = v43;
    }

    a4 = 1;
    v11 = v16;
    v10 = v46;
    v6 = v47;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_61FC();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_59EA0();
  __break(1u);
  return result;
}

unint64_t sub_319A4()
{
  result = qword_71738;
  if (!qword_71738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_71738);
  }

  return result;
}

uint64_t sub_31A6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_31AB0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_EAAC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_31AC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_31ADC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_31BD8(char a1)
{
  result = type metadata accessor for FeaturePreviewConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_31C08()
{
  v1 = (v0 + *(type metadata accessor for FeaturePreviewConfiguration(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_31C48(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FeaturePreviewConfiguration(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_31CE0(char a1)
{
  result = type metadata accessor for FeaturePreviewConfiguration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_31D58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v274) = a7;
  LODWORD(v269) = a6;
  v271 = a1;
  v260 = a8;
  v12 = sub_187C(&qword_717B8, &unk_5DA18);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v268 = (&v245 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v252 = &v245 - v17;
  v18 = __chkstk_darwin(v16);
  v275 = (&v245 - v19);
  __chkstk_darwin(v18);
  v21 = &v245 - v20;
  v22 = sub_588D0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v249 = &v245 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v272 = &v245 - v28;
  v29 = __chkstk_darwin(v27);
  v253 = (&v245 - v30);
  __chkstk_darwin(v29);
  v32 = &v245 - v31;
  v33 = type metadata accessor for FeaturePreviewConfiguration(0);
  v259 = *(v33 - 8);
  v34 = *(v259 + 64);
  v35 = __chkstk_darwin(v33);
  v37 = (&v245 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = v35;
  v38 = *(v35 + 48);
  v266 = v37;
  *(v37 + v38) = 2;
  v261 = a4;
  v39 = v22;
  sub_6610(a4, v21, &qword_717B8, &unk_5DA18);
  v40 = *(v23 + 48);
  v41 = (v40)(v21, 1, v22);
  v277 = v22;
  v270 = v32;
  v278 = a2;
  v273 = v23;
  if (v41 != 1)
  {
    (*(v23 + 32))(v32, v21, v22);
    v48 = a5;
    v50 = v274;
    LOBYTE(v47) = v269;
    goto LABEL_22;
  }

  v42 = *a2;
  v43 = *(a2 + 8);
  v44 = *(a2 + 16);
  sub_B4D0(*a2, v43, v44);
  v45 = sub_815C(v42, v43, v44);
  if (v46 - 1 >= 2)
  {
    LOBYTE(v47) = v269;
    if (v46 != 3)
    {
      if (v46 != 9)
      {
        sub_18728(v45, v46);
      }

      if (sub_7414(v42, v43, v44, 1953259886, 0xE400000000000000, 1))
      {
        v39 = v277;
        v32 = v270;
        v48 = a5;
        if (qword_76448 != -1)
        {
          swift_once();
        }

        v49 = qword_76450;
      }

      else
      {
        v39 = v277;
        v32 = v270;
        v48 = a5;
        if (qword_76468 != -1)
        {
          swift_once();
        }

        v49 = qword_76470;
      }

      v56 = sub_F15C(v39, v49);
      (*(v273 + 16))(v32, v56, v39);
      goto LABEL_20;
    }

    v52 = v45;
    if (qword_76428 != -1)
    {
      goto LABEL_195;
    }

    goto LABEL_14;
  }

  sub_18728(v45, v46);
  LOBYTE(v47) = v269;
  if (qword_76408 != -1)
  {
    goto LABEL_192;
  }

LABEL_12:
  v39 = v277;
  v51 = sub_F15C(v277, qword_76410);
  v32 = v270;
  (*(v273 + 16))(v270, v51, v39);
  while (1)
  {
    v48 = a5;
LABEL_20:
    v50 = v274;
    if ((v40)(v21, 1, v39) != 1)
    {
      sub_6678(v21, &qword_717B8, &unk_5DA18);
    }

LABEL_22:
    v57 = v278;
    if (v47)
    {
      if (*(v278 + 64))
      {
        v48 = 6;
        goto LABEL_34;
      }

      v59 = *v278;
      v58 = *(v278 + 8);
      v60 = *(v278 + 16);
      sub_B4D0(*v278, v58, v60);
      v61 = sub_815C(v59, v58, v60);
      if (v62 - 1 < 2)
      {
        v48 = 3;
LABEL_33:
        v57 = v278;
        goto LABEL_34;
      }

      if (v62 != 9)
      {
        sub_18728(v61, v62);
        v48 = 1;
        goto LABEL_33;
      }

      if (v60)
      {
        v48 = 1;
        goto LABEL_33;
      }

      v48 = 3;
      if (v59 <= 0x1A && ((1 << v59) & 0x6400042) != 0)
      {
        goto LABEL_33;
      }

      v57 = v278;
      if (v59 != 103)
      {
        v48 = 1;
      }
    }

LABEL_34:
    if (v50 == 2)
    {
      v50 = sub_33F54(v57);
    }

    if (!v48)
    {

      sub_B818(v57);
      sub_6678(v261, &qword_717B8, &unk_5DA18);
      (*(v273 + 8))(v32, v39);
      return (*(v259 + 56))(v260, 1, 1, v276);
    }

    v63 = v276;
    v64 = v266;
    v247 = v276[9];
    *(v266 + v247) = v50 & 1;
    *(v64 + v63[11]) = sub_340DC(v57);
    v65 = sub_2C550();
    v66 = sub_2BBF0();
    a5 = sub_522C4(*v66);

    v67 = *sub_2BC18();
    v68 = v67 / sub_52330();
    v69 = fmax(v68, 0.7);
    v70 = v68 >= 1.0 ? 1.0 : v69;
    v71 = sub_523CC();
    v72 = sub_522C4(v71 * v70);
    v281 = *(v57 + 48);
    v73 = *(v281 + 16);
    v248 = v281;
    v74 = (v281 + 32);
    v75 = v73 + 1;
    v262 = v281 + 32;
    v274 = v48;
    v250 = a5;
    do
    {
      if (!--v75)
      {
        goto LABEL_51;
      }

      v76 = v74 + 4;
      v77 = *v74;
      v74 += 4;
    }

    while (v77 != a3);
    if (*(v76 - 8) == 1 && ((v78 = *(v76 - 7), v79 = *(v76 - 3), v80 = *(v76 - 2), , !v78) ? (v81 = 1) : (v81 = 257), (v82 = sub_51F88(a3, v79, v80, v81), , v82 != 2) && (v82 & 1) != 0))
    {
      v21 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        __break(1u);
        goto LABEL_197;
      }

      LODWORD(v269) = 1;
    }

    else
    {
LABEL_51:
      LODWORD(v269) = 0;
      v21 = a3;
    }

    sub_187C(&qword_710E8, &unk_5C410);
    inited = swift_initStackObject();
    v267 = xmmword_5AB00;
    *(inited + 16) = xmmword_5AB00;
    v84 = *v278;
    v85 = *(v278 + 8);
    v86 = *(v278 + 16);
    *(inited + 32) = *v278;
    *(inited + 40) = v85;
    *(inited + 48) = v86;
    sub_187C(&qword_710F0, &qword_5D9C0);
    v87 = swift_initStackObject();
    *(v87 + 16) = v267;
    *(v87 + 32) = v21;
    v263 = v84;
    v264 = v85;
    v265 = v86;
    sub_B4D0(v84, v85, v86);
    v88 = sub_39170(v87);
    swift_setDeallocating();
    *(inited + 56) = v88;
    v89 = sub_17ED8(inited);
    swift_setDeallocating();
    sub_6678(inited + 32, &qword_710F8, &unk_5C420);
    v90 = sub_2C240(v89);

    if (v269)
    {
      v91 = v72;
    }

    else
    {
      v91 = v90;
    }

    if (v269)
    {
      v92 = v90;
    }

    else
    {
      v92 = v72;
    }

    *v64 = v92;
    v64[1] = v91;
    type metadata accessor for CTFont(0);
    LOBYTE(v47) = v93;
    sub_39D78(&qword_713E8, type metadata accessor for CTFont);
    v94 = v92;
    v95 = v91;
    v96 = v94;
    v97 = v95;
    LOBYTE(v94) = sub_589E0();

    v246 = v97;
    if (v94)
    {
      *(v64 + v247) = 0;
    }

    v98 = (v64 + v276[10]);
    v99 = v278;
    sub_E9C0(v278, &v279);
    v100 = sub_80C8(v99);
    v102 = v101;
    v21 = sub_8C54(v100, v101, 0, 3uLL);
    sub_E9AC(v100, v102);
    v269 = v72;
    if (v21)
    {
      sub_589B0();
      isa = sub_599F0().super.isa;

      v21 = CTFontCopySampleStringWithLanguages();

      v104 = sub_598E0();
      v106 = v105;

      v245 = v106;
    }

    else
    {
      v104 = 0;
      v106 = 0;
      v245 = 0;
    }

    *v98 = v104;
    v98[1] = v106;
    v40 = *(v278 + 64);
    if (v40)
    {
      v279 = *(v278 + 56);
      v280 = v40;
      v107 = qword_763E0;

      v108 = v277;
      if (v107 != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_66;
    }

    while (1)
    {
      v116 = v269;
      v117 = sub_589E0();
      v52 = v90;
      v90 = v273;
      v118 = v273 + 16;
      v119 = *(v273 + 16);
      v47 = v277;
      if ((v117 & 1) == 0)
      {
        v275 = v52;
        v148 = v268;
        v119(v268, v270, v277);
        (*(v90 + 56))(v148, 0, 1, v47);
        v272 = sub_2A70C(v263, v264, v265, a3);
        v149 = sub_34368(v272, v274, v96, v148);
        v21 = *(v149 + 16);
        if (v21)
        {
          a3 = 0;
          v150 = (v149 + 32);
          v151 = _swiftEmptyArrayStorage;
          do
          {
            v152 = *v150++;
            v153 = sub_2A980();
            if (v154)
            {
              v155 = v153;
              v156 = v154;

              v157 = sub_34A08(v155, v156);

              if (v157)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v151 = sub_377F8(0, *(v151 + 2) + 1, 1, v151);
                }

                v159 = *(v151 + 2);
                v158 = *(v151 + 3);
                if (v159 >= v158 >> 1)
                {
                  v151 = sub_377F8((v158 > 1), v159 + 1, 1, v151);
                }

                *(v151 + 2) = v159 + 1;
                v160 = &v151[16 * v159];
                *(v160 + 4) = v155;
                *(v160 + 5) = v156;
              }

              else
              {
              }
            }

            --v21;
          }

          while (v21);
        }

        else
        {
          a3 = 0;
          v151 = _swiftEmptyArrayStorage;
        }

        a5 = &v245;
        __chkstk_darwin(v169);
        v40 = v268;
        *(&v245 - 2) = v268;

        v170 = sub_34D98(sub_391E4, (&v245 - 4), v151);
        if (*(v170 + 16))
        {

          v151 = v170;
        }

        else
        {
        }

        v171 = v275;
        v279 = v151;
        sub_187C(&qword_717C0, &qword_5DA28);
        sub_39200();
        v172 = sub_599C0();
        v47 = v274;
        if ((v274 & 0x8000000000000000) != 0)
        {
          goto LABEL_191;
        }

        sub_39264(v274, v172, v173, v174);

        v175 = sub_59910();
        v177 = v176;

        if (v47 == 1 || sub_59930() < 2)
        {
          v180 = sub_34F10(v272, v269, v171, v40);
          sub_B818(v278);

          v179 = v277;
          v164 = v266;
          if ((v180 & 0x100000000) == 0)
          {

            sub_6678(v40, &qword_717B8, &unk_5DA18);
            *(v164 + 16) = 0;
            *(v164 + 24) = 0;
            v181 = sub_2A934();
            if (v182)
            {
              v279 = v181;
              v280 = v182;
              v183 = v249;
              sub_58890();
              sub_66D8();
              sub_59B20();

              sub_6678(v261, &qword_717B8, &unk_5DA18);
              v184 = *(v273 + 8);
              v184(v183, v179);
              v184(v270, v179);
            }

            else
            {

              sub_6678(v261, &qword_717B8, &unk_5DA18);
              (*(v273 + 8))(v270, v179);
            }

            v186 = 0;
            v177 = 0;
            v178 = 0;
LABEL_128:
            v187 = v276;
            v188 = v276[7];
            v189 = sub_187C(&qword_710B8, &unk_5C3F0);
            (*(*(v189 - 8) + 56))(v164 + v188, 1, 1, v189);
            v190 = v164 + v187[8];
            *v190 = v180;
            *(v190 + 4) = v186;
            if (v177)
            {

              v191 = HIBYTE(v177) & 0xF;
              if ((v177 & 0x2000000000000000) == 0)
              {
                v191 = v178;
              }

              if (v191)
              {
                goto LABEL_185;
              }
            }

            v192 = v180 == WORD1(v180) ? 1 : v186;
            if (v192 != 1)
            {
              goto LABEL_185;
            }

            goto LABEL_184;
          }

          v185 = HIBYTE(v177) & 0xF;
          v178 = v175 & 0xFFFFFFFFFFFFLL;
          if ((v177 & 0x2000000000000000) == 0)
          {
            v185 = v175 & 0xFFFFFFFFFFFFLL;
          }

          if (!v185)
          {

            sub_6678(v261, &qword_717B8, &unk_5DA18);
            (*(v273 + 8))(v270, v179);
            sub_6678(v40, &qword_717B8, &unk_5DA18);

            return (*(v259 + 56))(v260, 1, 1, v276);
          }
        }

        else
        {
          sub_B818(v278);

          v178 = v175 & 0xFFFFFFFFFFFFLL;
          v179 = v277;
          v164 = v266;
        }

        sub_6678(v40, &qword_717B8, &unk_5DA18);
        *(v164 + 16) = v175;
        *(v164 + 24) = v177;

        sub_6678(v261, &qword_717B8, &unk_5DA18);
        (*(v273 + 8))(v270, v179);
        LODWORD(v180) = 0;
        v186 = 1;
        goto LABEL_128;
      }

      v21 = v270;
      v119(v253, v270, v277);
      v256 = v118;
      v255 = v119;
      v119(v272, v21, v47);
      a3 = *(v248 + 16);
      a5 = v96;
      sub_E9C0(v278, &v279);
      sub_6610(&v281, &v279, &qword_71090, &qword_5C3B0);
      v254 = (v90 + 56);
      v257 = v52;
      v120 = v116;
      v121 = a3;
      v258 = v120;
      if (!a3)
      {
        break;
      }

      v122 = 0;
      a3 = 0;
      v96 = v274;
      v123 = v275;
      v251 = v121;
      while (1)
      {
        v268 = v122;
        v124 = (v262 + 32 * v122);
        v125 = *v124;
        v126 = v124[2];
        v255(v123, v272, v47);
        (*v254)(v123, 0, 1, v47);
        *&v267 = v126;

        v269 = sub_2A70C(v263, v264, v265, v125);
        v127 = sub_34368(v269, v96, a5, v123);
        v128 = *(v127 + 16);
        if (v128)
        {
          v129 = (v127 + 32);
          v47 = _swiftEmptyArrayStorage;
          do
          {
            v130 = *v129++;
            v131 = sub_2A980();
            if (v132)
            {
              v40 = v131;
              v133 = v132;

              v134 = sub_34A08(v40, v133);

              if (v134)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v47 = sub_377F8(0, *(v47 + 16) + 1, 1, v47);
                }

                v90 = *(v47 + 16);
                v135 = *(v47 + 24);
                if (v90 >= v135 >> 1)
                {
                  v47 = sub_377F8((v135 > 1), v90 + 1, 1, v47);
                }

                *(v47 + 16) = v90 + 1;
                v136 = v47 + 16 * v90;
                *(v136 + 32) = v40;
                *(v136 + 40) = v133;
              }

              else
              {
              }
            }

            --v128;
          }

          while (v128);
        }

        else
        {
          v47 = _swiftEmptyArrayStorage;
        }

        v21 = &v245;
        __chkstk_darwin(v137);
        *(&v245 - 2) = v275;

        v138 = sub_34D98(sub_39FD4, (&v245 - 4), v47);
        if (*(v138 + 16))
        {

          v47 = v138;
        }

        else
        {
        }

        v96 = v274;
        v279 = v47;
        sub_187C(&qword_717C0, &qword_5DA28);
        sub_39200();
        v108 = sub_599C0();
        if ((v96 & 0x8000000000000000) != 0)
        {
          break;
        }

        sub_39264(v96, v108, v139, v140);
        v40 = v141;

        v52 = sub_59910();
        v143 = v142;

        if (v96 != 1 && sub_59930() >= 2)
        {

          v123 = v275;
          goto LABEL_139;
        }

        v40 = v269;
        v144 = v258;
        v123 = v275;
        v145 = sub_34F10(v269, v258, v257, v275);

        if ((v145 & 0x100000000) == 0)
        {

          v52 = 0;
          v143 = 0;
LABEL_139:
          sub_6678(v123, &qword_717B8, &unk_5DA18);

          sub_393A4(v52, v143);
          v47 = v277;
          v21 = v270;
          v144 = v258;
          goto LABEL_140;
        }

        v146 = HIBYTE(v143) & 0xF;
        if ((v143 & 0x2000000000000000) == 0)
        {
          v146 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (v146)
        {
          sub_6678(v123, &qword_717B8, &unk_5DA18);

          v47 = v277;
          v21 = v270;
LABEL_140:
          v147 = v268;
          goto LABEL_141;
        }

        sub_6678(v123, &qword_717B8, &unk_5DA18);

        v122 = (v268 + 1);
        v47 = v277;
        if (v268 + 1 == v251)
        {
          v147 = v251;
          v21 = v270;
          goto LABEL_141;
        }
      }

      __break(1u);
LABEL_189:
      v242 = v108;
      swift_once();
      v108 = v242;
LABEL_66:
      sub_F15C(v108, qword_77C58);
      sub_66D8();
      a5 = sub_59B20();
      v110 = v109;

      if ((v274 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        swift_once();
        goto LABEL_12;
      }

      v112 = sub_39264(v274, a5, v110, v111);
      v114 = v113;
      v40 = v115;

      if ((v112 ^ v114) >= 0x4000)
      {
        sub_B818(v278);
        v161 = sub_59910();
        v163 = v162;

        sub_6678(v261, &qword_717B8, &unk_5DA18);
        (*(v273 + 8))(v270, v277);
        v164 = v266;
        v266[2] = v161;
        *(v164 + 24) = v163;
        v165 = v276;
        v166 = v276[7];
        v167 = sub_187C(&qword_710B8, &unk_5C3F0);
        (*(*(v167 - 8) + 56))(v164 + v166, 1, 1, v167);
        v168 = v164 + v165[8];
        *v168 = 0;
        *(v168 + 4) = 1;
        goto LABEL_185;
      }
    }

    v144 = v120;
    v147 = 0;
    v96 = v274;
LABEL_141:
    v193 = *(v248 + 16);
    if (v147 == v193)
    {
      break;
    }

    if (v147 >= v193)
    {
      __break(1u);
    }

    else
    {
      v198 = (v262 + 32 * v147);
      v199 = *v198;
      v200 = v198[2];
      v201 = v252;
      v255(v252, v253, v47);
      (*v254)(v201, 0, 1, v47);
      v275 = v200;

      v269 = sub_2A70C(v263, v264, v265, v199);
      v202 = sub_34368(v269, v96, a5, v201);
      v203 = *(v202 + 16);
      if (v203)
      {
        v204 = (v202 + 32);
        v47 = _swiftEmptyArrayStorage;
        do
        {
          v205 = *v204++;
          v206 = sub_2A980();
          if (v207)
          {
            v40 = v206;
            v208 = v207;

            v209 = sub_34A08(v40, v208);

            if (v209)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v47 = sub_377F8(0, *(v47 + 16) + 1, 1, v47);
              }

              v211 = *(v47 + 16);
              v210 = *(v47 + 24);
              if (v211 >= v210 >> 1)
              {
                v47 = sub_377F8((v210 > 1), v211 + 1, 1, v47);
              }

              *(v47 + 16) = v211 + 1;
              v212 = v47 + 16 * v211;
              *(v212 + 32) = v40;
              *(v212 + 40) = v208;
            }

            else
            {
            }
          }

          --v203;
        }

        while (v203);
      }

      else
      {
        v47 = _swiftEmptyArrayStorage;
      }

      __chkstk_darwin(v213);
      *(&v245 - 2) = v252;

      v214 = sub_34D98(sub_39FD4, (&v245 - 4), v47);
      if (*(v214 + 16))
      {

        v47 = v214;
      }

      else
      {
      }

      v21 = v278;
      v52 = v274;
      v279 = v47;
      sub_187C(&qword_717C0, &qword_5DA28);
      sub_39200();
      v215 = sub_599C0();
      if ((v52 & 0x8000000000000000) == 0)
      {
        sub_39264(v52, v215, v216, v217);

        v218 = sub_59910();
        v220 = v219;

        if (v52 != 1 && sub_59930() >= 2)
        {

          goto LABEL_169;
        }

        v221 = sub_34F10(v269, v258, v257, v252);

        if ((v221 & 0x100000000) == 0)
        {

          v218 = 0;
          v220 = 0;
          v222 = v221;
          goto LABEL_170;
        }

        v223 = HIBYTE(v220) & 0xF;
        if ((v220 & 0x2000000000000000) == 0)
        {
          v223 = v218 & 0xFFFFFFFFFFFFLL;
        }

        if (v223)
        {
LABEL_169:
          v222 = 0x100000000;
LABEL_170:
          sub_6678(v252, &qword_717B8, &unk_5DA18);
          sub_B818(v21);

          v224 = *(v273 + 8);
          v225 = v277;
          v224(v253, v277);

          sub_6678(&v281, &qword_71090, &qword_5C3B0);
          sub_B818(v21);
          v226 = v257;

          v227 = v258;
          v224(v272, v225);
          v228 = v266;
          v266[2] = v218;
          v228[3] = v220;
          if ((v222 & 0x100000000) != 0)
          {

            sub_6678(v261, &qword_717B8, &unk_5DA18);
            v229 = v270;
            v230 = v225;
          }

          else
          {

            v231 = sub_2A934();
            if (v232)
            {
              v279 = v231;
              v280 = v232;
              v233 = v226;
              v234 = v249;
              sub_58890();
              sub_66D8();
              sub_59B20();

              sub_6678(v261, &qword_717B8, &unk_5DA18);
              v235 = v277;
              v224(v234, v277);
              v224(v270, v235);

              goto LABEL_176;
            }

            sub_6678(v261, &qword_717B8, &unk_5DA18);
            v229 = v270;
            v230 = v277;
          }

          v224(v229, v230);
LABEL_176:
          v236 = v276;
          v237 = v276[7];
          v238 = sub_187C(&qword_710B8, &unk_5C3F0);
          v164 = v266;
          (*(*(v238 - 8) + 56))(v266 + v237, 1, 1, v238);
          v239 = v164 + v236[8];
          *v239 = v222;
          *(v239 + 4) = BYTE4(v222);
          if (v220)
          {
            sub_393A4(v218, v220);
            v240 = HIBYTE(v220) & 0xF;
            if ((v220 & 0x2000000000000000) == 0)
            {
              v240 = v218 & 0xFFFFFFFFFFFFLL;
            }

            if (v240)
            {
              goto LABEL_185;
            }
          }

          else
          {
            sub_393A4(v218, 0);
          }

          if ((v222 & 0x100000000) == 0 && v222 != WORD1(v222))
          {
LABEL_185:
            v241 = v260;
            sub_39694(v164, v260, type metadata accessor for FeaturePreviewConfiguration);
            (*(v259 + 56))(v241, 0, 1, v276);
            return sub_39300(v164);
          }

LABEL_184:
          *(v164 + v247) = 0;
          goto LABEL_185;
        }

LABEL_197:

        sub_6678(v252, &qword_717B8, &unk_5DA18);
        sub_B818(v21);

        v243 = *(v273 + 8);
        v244 = v277;
        v243(v253, v277);

        sub_B818(v21);

        result = (v243)(v272, v244);
        __break(1u);
        return result;
      }
    }

    __break(1u);
LABEL_195:
    swift_once();
LABEL_14:
    v39 = v277;
    v53 = sub_F15C(v277, qword_76430);
    v54 = v270;
    (*(v273 + 16))(v270, v53, v39);
    v55 = v52;
    v32 = v54;
    sub_18728(v55, 3uLL);
  }

  v194 = v278;
  sub_B818(v278);

  v195 = *(v273 + 8);
  v195(v253, v47);
  sub_6678(&v281, &qword_71090, &qword_5C3B0);
  sub_B818(v194);
  v196 = v257;

  v195(v272, v47);
  sub_6678(v261, &qword_717B8, &unk_5DA18);
  v195(v21, v47);

  return (*(v259 + 56))(v260, 1, 1, v276);
}