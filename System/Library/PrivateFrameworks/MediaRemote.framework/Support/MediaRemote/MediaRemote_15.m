uint64_t sub_10024AB08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100018BE4(*(v6 + 48) + 40 * v9, v17);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_10001BF10(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10001BF10(a2);
    sub_100018BE4(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100018BE4(a2, v17);
    v16 = *v3;
    sub_10024AEB4(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_10024AC54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100523710, &qword_100451438);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v29 = *v19;
      v30 = *(v19 + 16);
      v31 = *(v19 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v29;
      *(v15 + 16) = v30;
      *(v15 + 32) = v31;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10024AEB4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10024AC54(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10024B02C();
      goto LABEL_12;
    }

    sub_10024B1A4(v7 + 1);
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100018BE4(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_10001BF10(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10024B02C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100523710, &qword_100451438);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100018BE4(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

uint64_t sub_10024B1A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100523710, &qword_100451438);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_100018BE4(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v28);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v28[0];
      v16 = v28[1];
      *(v14 + 32) = v29;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
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

char *sub_10024B3D0(char *a1, int64_t a2, char a3)
{
  result = sub_10024B470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10024B3F0(void *a1, int64_t a2, char a3)
{
  result = sub_10024B590(a1, a2, a3, *v3, &qword_100523728, &qword_100451458, &qword_100523720, &qword_100451450);
  *v3 = result;
  return result;
}

void *sub_10024B430(void *a1, int64_t a2, char a3)
{
  result = sub_10024B590(a1, a2, a3, *v3, &qword_100523678, &unk_100451240, &qword_100523708, &qword_100451430);
  *v3 = result;
  return result;
}

char *sub_10024B470(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100523718, &unk_100451440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10024B590(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1001BC5A8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

Swift::Int sub_10024B6D4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10024C214(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10024B7A8(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_10024B740()
{
  result = qword_100523690;
  if (!qword_100523690)
  {
    sub_100018D7C(255, &qword_100523688, MRIRNode_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523690);
  }

  return result;
}

Swift::Int sub_10024B7A8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10024B970(v7, v8, a1, v4);
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
    return sub_10024B8A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10024B8A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10024B970(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10024C200(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10024BF4C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10024A7E0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10024A7E0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10024BF4C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10024C200(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10024C174(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_10024BF4C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10024C174(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10024C200(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10024C228(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100018BE4(v4, v5);
      sub_10024AB08(v6, v5);
      sub_10001BF10(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10024C2B4()
{
  result = qword_100523698;
  if (!qword_100523698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523698);
  }

  return result;
}

uint64_t sub_10024C44C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 userInfo];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v12 = a1;
  *(&v12 + 1) = a2;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_10001BF64(v11), (v9 & 1) == 0))
  {

    sub_10001BF10(v11);
LABEL_9:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_10;
  }

  sub_100020E0C(*(v7 + 56) + 32 * v8, &v12);
  sub_10001BF10(v11);

  if (!*(&v13 + 1))
  {
LABEL_10:
    sub_100037768(&v12);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v11[0];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10024C598()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_10024C5E4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_10024C63C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024C6A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

void type metadata accessor for CFString()
{
  if (!qword_100523750)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100523750);
    }
  }
}

uint64_t sub_10024C7D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10024C81C()
{
  v0 = [objc_opt_self() server];
  v1 = [v0 nowPlayingServer];

  return v1;
}

void sub_10024C87C()
{
  v1 = [v0 localOriginClient];
  v4 = v1;
  v2 = [v4 activeNowPlayingClient];
  v3 = [v2 activePlayerClient];

  sub_100026A90(v1, v3);
}

uint64_t sub_10024C928(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x657469726F766166;
    case 1:
      return 0x6C61727475656ELL;
    case 2:
      return 0x726F707075736E75;
  }

  v7[6] = v1;
  v7[7] = v2;
  v4 = *(a1 + 16);
  strcpy(v7, ".optimistic(");
  sub_1002540AC(v4);
  v5._countAndFlagsBits = sub_10024C928(v4);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  sub_1002540BC(v4);
  return v7[0];
}

BOOL sub_10024CA24(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  sub_1002540AC(v4);
  LOBYTE(v3) = sub_10024CA24(v3, v4);
  sub_1002540BC(v4);
  return v3 & 1;
}

void sub_10024CAB4(Swift::UInt a1)
{
  if (a1 > 2)
  {
    v1 = *(a1 + 16);
    Hasher._combine(_:)(3uLL);
    sub_1002540AC(v1);
    sub_10024CAB4(v1);

    sub_1002540BC(v1);
  }

  else
  {

    Hasher._combine(_:)(a1);
  }
}

Swift::Int sub_10024CB30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        v3 = *(v1 + 16);
        Hasher._combine(_:)(3uLL);
        sub_1002540AC(v3);
        sub_10024CAB4(v3);
        sub_1002540BC(v3);
        return Hasher._finalize()();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10024CBD4()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 2;
LABEL_7:
    Hasher._combine(_:)(v2);
    return;
  }

  v3 = *(v1 + 16);
  Hasher._combine(_:)(3uLL);
  sub_1002540AC(v3);
  sub_10024CAB4(v3);

  sub_1002540BC(v3);
}

Swift::Int sub_10024CC64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        v3 = *(v1 + 16);
        Hasher._combine(_:)(3uLL);
        sub_1002540AC(v3);
        sub_10024CAB4(v3);
        sub_1002540BC(v3);
        return Hasher._finalize()();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10024CD18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *sub_10024CDB0(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = _swiftEmptyArrayStorage;
  result[4] = &_swiftEmptyDictionarySingleton;
  result[2] = a1;
  return result;
}

uint64_t sub_10024CDF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1002530B4(0, v5[2] + 1, 1, v5);
    *(v2 + 24) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1002530B4((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  v9[5] = a2;
  *(v2 + 24) = v5;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_10024CED0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = sub_100254270(v1 + 24, a1);
  result = swift_unknownObjectRelease();
  v5 = *(*(v1 + 24) + 16);
  if (v5 < v3)
  {
    __break(1u);
  }

  else
  {
    sub_1002544B0(v3, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10024CF68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (*(v5 + 16))
  {

    v6 = sub_10000698C(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      v9 = *(v8 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
      sub_1002540AC(v9);

      return v9;
    }
  }

  return 3;
}

uint64_t sub_10024D04C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v8 = *(v3 + 32);
  if (*(v8 + 16))
  {

    v9 = sub_10000698C(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      a3(v12);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10024D0F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  sub_10001D9AC(a1, v7, &qword_100523640, qword_100451520);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000038A4(v7, &qword_100523640, qword_100451520);
    v16 = sub_100037234();
    v17 = *v16;
    v18 = v16[1];
    swift_beginAccess();

    sub_10024D5F0(0, v17, v18);
    return swift_endAccess();
  }

  sub_100254570(v7, v15);
  result = sub_10025FA68(*(v15 + 6), *(v15 + 14) | (v15[60] << 32));
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = sub_100037234();
  v21 = *v20;
  v22 = v20[1];
  swift_beginAccess();
  if (!*(*(v2 + 32) + 16) || (, , sub_10000698C(v21, v22), v24 = v23, , result = , (v24 & 1) == 0))
  {
    v33 = *v20;
    v32 = v20[1];
    sub_1002548B8(v15, v13, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    swift_bridgeObjectRetain_n();
    v34 = *sub_100021264();
    v35 = type metadata accessor for MusicFavoritingController();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = swift_allocObject();
    v39 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
    v40 = type metadata accessor for MusicFavoriteStatusController.Status();
    (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
    *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = 2;
    *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController) = 0;
    *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver) = 0;
    *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v41 = v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
    *v41 = 0;
    *(v41 + 8) = 0;
    *(v41 + 18) = 0;
    *(v41 + 16) = 252;
    v42 = (v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
    *v42 = v33;
    v42[1] = v32;
    *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_targetQueue) = v34;
    sub_1002548B8(v13, v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v43 = v34;
    v44 = sub_100254620(v13);
    v45 = (v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v46 = *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v47 = *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
    v49 = *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
    v48 = v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16;
    *v45 = v44;
    v45[1] = v50;
    LODWORD(v45) = v49 | (*(v48 + 2) << 16);
    *v48 = v51;
    *(v48 + 2) = v52;
    sub_10025488C(v46, v47, v45);
    sub_1002505D0();

    sub_100254920(v13, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate + 8) = &off_1004C55E0;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v53 = *(v2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_100253490(v38, v33, v32, isUniquelyReferenced_nonNull_native);

    *(v2 + 32) = v56;
    swift_endAccess();
    return sub_100254920(v15, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  v25 = *(v2 + 32);
  if (!*(v25 + 16))
  {
    goto LABEL_13;
  }

  v26 = *v20;
  v27 = v20[1];

  v28 = sub_10000698C(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v31 = *(*(v25 + 56) + 8 * v28);

  sub_10024F9A4(v15);

  return sub_100254920(v15, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
}

uint64_t sub_10024D5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100253490(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10000698C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10025360C();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1001DEE44(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10024D6E8(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v101 - v5;
  v110 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v108 = *(v110 - 8);
  v7 = *(v108 + 64);
  v8 = __chkstk_darwin(v110);
  v106 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v101 - v10;
  v103 = type metadata accessor for HostedRoutingSourceSession(0);
  v12 = *(v103 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v103);
  v15 = (&v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v17 = sub_100037234();
  v19 = *v17;
  v18 = *(v17 + 1);
  *(inited + 32) = v19;
  *(inited + 40) = v18;

  v20 = sub_10021FAD4(inited);
  swift_setDeallocating();
  sub_1001E6204(inited + 32);
  v114 = v20;
  v21 = *(a1 + 16);
  v107 = v1;
  if (!v21)
  {
    goto LABEL_16;
  }

  v109 = v6;
  v22 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  swift_beginAccess();
  v23 = (v108 + 48);
  v24 = *(v12 + 72);
  v25 = v103;
  v102 = (v108 + 48);
  v26 = v24;
  v101 = v24;
  while (1)
  {
    sub_1002548B8(v22, v15, type metadata accessor for HostedRoutingSourceSession);
    v27 = v109;
    sub_10001D9AC(v15 + *(v25 + 28), v109, &qword_100523640, qword_100451520);
    if ((*v23)(v27, 1, v110) != 1)
    {
      break;
    }

    sub_100254920(v15, type metadata accessor for HostedRoutingSourceSession);
    sub_1000038A4(v27, &qword_100523640, qword_100451520);
LABEL_4:
    v22 += v26;
    if (!--v21)
    {
      v20 = v114;
      v1 = v107;
LABEL_16:
      swift_beginAccess();
      v69 = *(v1 + 32);
      v72 = *(v69 + 64);
      v71 = v69 + 64;
      v70 = v72;
      v73 = 1 << *(*(v1 + 32) + 32);
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v75 = v74 & v70;
      v76 = (v73 + 63) >> 6;
      v77 = v20 + 56;
      v110 = *(v1 + 32);

      v78 = 0;
      if (!v75)
      {
        goto LABEL_23;
      }

LABEL_27:
      while (1)
      {
        v82 = __clz(__rbit64(v75));
        v75 &= v75 - 1;
        v83 = (*(v110 + 48) + ((v78 << 10) | (16 * v82)));
        v85 = *v83;
        v84 = v83[1];
        if (!*(v20 + 16))
        {
          break;
        }

        v86 = *(v20 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v87 = Hasher._finalize()();
        v88 = -1 << *(v20 + 32);
        v89 = v87 & ~v88;
        if ((*(v77 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89))
        {
          v90 = ~v88;
          while (1)
          {
            v91 = (*(v20 + 48) + 16 * v89);
            v92 = *v91 == v85 && v91[1] == v84;
            if (v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v89 = (v89 + 1) & v90;
            if (((*(v77 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          if (!v75)
          {
LABEL_23:
            while (1)
            {
              v81 = v78 + 1;
              if (__OFADD__(v78, 1))
              {
                break;
              }

              if (v81 >= v76)
              {
              }

              v75 = *(v71 + 8 * v81);
              ++v78;
              if (v75)
              {
                v78 = v81;
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }
        }

        else
        {
LABEL_38:
          v93 = v107;
          swift_beginAccess();
          v94 = *(v93 + 32);
          v95 = sub_10000698C(v85, v84);
          LOBYTE(v94) = v96;

          if (v94)
          {
            v97 = v107;
            v98 = *(v107 + 32);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v100 = *(v97 + 32);
            v111 = v100;
            *(v97 + 32) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_10025360C();
              v100 = v111;
            }

            v79 = *(*(v100 + 48) + 16 * v95 + 8);

            v80 = *(*(v100 + 56) + 8 * v95);

            sub_1001DEE44(v95, v100);
            *(v97 + 32) = v100;
          }

          result = swift_endAccess();
          if (!v75)
          {
            goto LABEL_23;
          }
        }
      }

      goto LABEL_38;
    }
  }

  sub_100254570(v27, v11);
  v28 = v108 & 0xFFFFFF0000000000 | *(v11 + 14) | (v11[60] << 32);
  v29 = sub_10025FA68(*(v11 + 6), v28);
  v108 = v28;
  if (!v29)
  {
    sub_100254920(v15, type metadata accessor for HostedRoutingSourceSession);
    sub_100254920(v11, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    goto LABEL_4;
  }

  v30 = *v15;
  v31 = v15[1];

  sub_100008318(&v112, v30, v31);

  if (!*(*(v107 + 32) + 16) || (v32 = *(v107 + 32), , sub_10000698C(v30, v31), v34 = v33, result = , (v34 & 1) == 0))
  {
    v104 = type metadata accessor for HostedRoutingSession.NowPlayingInfo;
    sub_1002548B8(v11, v106, type metadata accessor for HostedRoutingSession.NowPlayingInfo);

    v40 = *sub_100021264();
    v41 = type metadata accessor for MusicFavoritingController();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    v44 = swift_allocObject();
    v45 = v30;
    v105 = v30;
    v46 = v44;
    v47 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
    v48 = type metadata accessor for MusicFavoriteStatusController.Status();
    (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
    *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = 2;
    *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController) = 0;
    *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver) = 0;
    *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v49 = v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 18) = 0;
    *(v49 + 16) = 252;
    v50 = (v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
    *v50 = v45;
    v50[1] = v31;
    v51 = v40;
    *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_targetQueue) = v40;
    v52 = v106;
    v53 = v104;
    sub_1002548B8(v106, v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo, v104);
    v54 = v51;

    v55 = v54;
    v56 = sub_100254620(v52);
    v57 = (v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v58 = *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v59 = *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
    v60 = (v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
    v61 = *v60;
    *v57 = v56;
    v57[1] = v62;
    LODWORD(v57) = v61 | (*(v60 + 2) << 16);
    *v60 = v63;
    *(v60 + 2) = v64;
    sub_10025488C(v58, v59, v57);
    sub_1002505D0();

    v65 = v107;
    sub_100254920(v52, v53);
    *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate + 8) = &off_1004C55E0;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();

    v66 = *(v65 + 32);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *(v65 + 32);
    *(v65 + 32) = 0x8000000000000000;
    sub_100253490(v46, v105, v31, v67);

    *(v65 + 32) = v113;
    swift_endAccess();
    v68 = *(v46 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
    sub_1002540AC(v68);
    sub_10024E09C(v46, v68);
    sub_1002540BC(v68);
    goto LABEL_14;
  }

  v36 = *(v107 + 32);
  if (!*(v36 + 16))
  {
    goto LABEL_45;
  }

  v37 = *(v107 + 32);

  result = sub_10000698C(v30, v31);
  if (v38)
  {
    v39 = *(*(v36 + 56) + 8 * result);

    sub_10024F9A4(v11);
LABEL_14:

    sub_100254920(v15, type metadata accessor for HostedRoutingSourceSession);
    sub_100254920(v11, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v25 = v103;
    v23 = v102;
    v26 = v101;
    goto LABEL_4;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_10024E09C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v13 = 0;
  v14 = v3[4];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v13;
LABEL_10:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = v20 | (v19 << 6);
    if (*(*(v14 + 56) + 8 * v21) == a1)
    {
      v22 = (*(v14 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];

      swift_beginAccess();
      v25 = *(v3[3] + 16);
      if (v25)
      {

        v41 = a2;
        v26 = (v40 + 40);
        v42 = v23;
        do
        {
          v27 = *(v26 - 1);
          v28 = *v26;
          ObjectType = swift_getObjectType();
          v30 = *(v28 + 8);
          swift_unknownObjectRetain();
          v30(v3, v41, v24, v42, ObjectType, v28);
          swift_unknownObjectRelease();
          v26 += 2;
          --v25;
        }

        while (v25);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v19);
    ++v13;
    if (v17)
    {
      v13 = v19;
      goto LABEL_10;
    }
  }

  v31 = sub_1001D911C();
  (*(v8 + 16))(v11, v31, v7);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136315138;
    v36 = _typeName(_:qualified:)();
    v38 = sub_10002C9C8(v36, v37, &v43);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "[%s] controllerDidUpdateStatus - update received for unmapped controller", v34, 0xCu);
    sub_100026A44(v35);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10024E404()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10024E44C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 32);

  for (i = 0; v4; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v4)) | (v9 << 6);
    v11 = (*(v1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v1 + 56) + 8 * v10);
    v4 &= v4 - 1;

    _StringGuts.grow(_:)(30);

    v15._countAndFlagsBits = v12;
    v15._object = v13;
    String.append(_:)(v15);

    v16._object = 0x800000010043D840;
    v16._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v16);
    v17._countAndFlagsBits = sub_10024F5D4();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 10;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x3A6E6F6973736573;
    v19._object = 0xE900000000000020;
    String.append(_:)(v19);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return 0xD000000000000020;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v4)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10024E664(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status;
  v11 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
  sub_1002540AC(v11);
  LOBYTE(a1) = sub_10024CA24(a1, v11);
  result = sub_1002540BC(v11);
  if ((a1 & 1) == 0)
  {
    v13 = sub_1001D911C();
    (*(v6 + 16))(v9, v13, v5);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = v15;
      v17 = v16;
      v33 = swift_slowAlloc();
      v34 = v33;
      *v17 = 136315650;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, &v34);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_10002C9C8(*(v2 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(v2 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), &v34);
      *(v17 + 22) = 2082;
      v21 = *(v2 + v10);
      sub_1002540AC(v21);
      v22 = sub_10024C928(v21);
      v24 = v23;
      sub_1002540BC(v21);
      v25 = sub_10002C9C8(v22, v24, &v34);

      *(v17 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v14, v32, "[%s]<%s> setStatus - value: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
    }

    (*(v6 + 8))(v9, v5);
    v26 = v2 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v27 = *(v26 + 1);
      ObjectType = swift_getObjectType();
      v29 = *(v2 + v10);
      v30 = *(v27 + 8);
      sub_1002540AC(v29);
      v30(v2, v29, ObjectType, v27);
      swift_unknownObjectRelease();
      return sub_1002540BC(v29);
    }
  }

  return result;
}

uint64_t sub_10024E984(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Logger();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  result = __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
  v15 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v16 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  v17 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16) | (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  v18 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16) & 0xFC;
  if ((~a3 & 0xFC) != 0)
  {
    if (v18 != 252)
    {
      result = sub_1002540CC(a1, a2, a3 & 0xFFFFFF, *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16) | (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16));
      if (result)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  else if (v18 == 252)
  {
    return result;
  }

  sub_100254E5C(a1, a2, a3);
  sub_100254E5C(v15, v16, v17);
  sub_10025488C(a1, a2, a3);
  sub_10025488C(v15, v16, v17);
LABEL_6:
  v19 = sub_1001D911C();
  v21 = v39;
  v20 = v40;
  (*(v39 + 16))(v13, v19, v40);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v24 = 136315650;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10002C9C8(v25, v26, &v41);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10002C9C8(*(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), &v41);
    *(v24 + 22) = 2082;
    v28 = *(v14 + 8);
    if ((~v28 & 0xFC) != 0)
    {
      v31 = v28 | (v14[18] << 16);
      v33 = *v14;
      v32 = *(v14 + 1);
      sub_100254DE0(*v14, v32, v31);
      v34 = sub_10024ECFC(v33, v32, v31 & 0xFFFFFF);
      v29 = v35;
      v36 = v33;
      v21 = v39;
      sub_10025488C(v36, v32, v31);
      v30 = v34;
      v20 = v40;
    }

    else
    {
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    v37 = sub_10002C9C8(v30, v29, &v41);

    *(v24 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s]<%s> setItem - value: %{public}s", v24, 0x20u);
    swift_arrayDestroy();
  }

  return (*(v21 + 8))(v13, v20);
}

uint64_t sub_10024EFF4()
{
  v1 = 0x636973756DLL;
  *v0;
  if (*v0)
  {
    v1 = 0x646956636973756DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x646564616F6C7075;
  }
}

void sub_10024F088(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4 & 0xFF00;
  if (a4 >> 6)
  {
    if (a4 >> 6 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    Hasher._combine(_:)(v6);
    String.hash(into:)();
    v7 = a4 & 0x3F;
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
    v7 = a4;
  }

  Hasher._combine(_:)(v7);
  if (v5 == 512)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = (a4 >> 8) & 1;
  }

  Hasher._combine(_:)(v8);
  if ((a4 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = HIWORD(a4) & 1;
  }

  Hasher._combine(_:)(v9);
}

Swift::Int sub_10024F168()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 18) << 16);
  Hasher.init(_seed:)();
  sub_10024F088(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_10024F1E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 18) << 16);
  Hasher.init(_seed:)();
  sub_10024F088(v5, v1, v2, v3);
  return Hasher._finalize()();
}

void *sub_10024F280()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D911C();
  (*(v4 + 16))(v7, v8, v3);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = qword_10052AF98 + 104;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, &v21);

    *(v12 + 4) = v15;
    v11 = &qword_10052AF98[13];
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), &v21);
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s]<%{public}s> deinit", v12, 0x16u);
    swift_arrayDestroy();
  }

  (*(v4 + 8))(v7, v3);
  sub_1000038A4(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus, &qword_100523A68, &qword_1004518A0);
  sub_1002540BC(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status));
  v16 = *(v1 + v11[462] + 8);

  v17 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController);

  v18 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver);

  sub_1001DFBCC(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate);
  sub_100254920(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_10025488C(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16) | (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16));
  return v1;
}

uint64_t sub_10024F57C()
{
  sub_10024F280();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10024F9A4(uint64_t a1)
{
  result = sub_10025FA68(*(a1 + 48), *(a1 + 56) | (*(a1 + 60) << 32));
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v4 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo;
  swift_beginAccess();
  sub_100254DF8(a1, v1 + v4);
  swift_endAccess();
  v5 = (v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v6 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v7 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  v8 = (v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  v9 = *v8;
  v10 = v9 | (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  sub_100254E5C(v6, v7, v10);
  v11 = sub_100254620(a1);
  v12 = *v5;
  v13 = v5[1];
  v14 = *v8 | (*(v8 + 2) << 16);
  *v5 = v11;
  v5[1] = v15;
  *v8 = v16;
  *(v8 + 2) = v17;
  sub_10024E984(v12, v13, v14);
  result = sub_10025488C(v12, v13, v14);
  v18 = *v5;
  v19 = v5[1];
  v20 = *v8 | (*(v8 + 2) << 16);
  v21 = *v8 & 0xFC;
  if ((~v9 & 0xFC) == 0)
  {
    if (v21 == 252)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v21 == 252)
  {
LABEL_6:
    sub_100254E5C(*v5, v5[1], *v8 | (*(v8 + 2) << 16));
    sub_10025488C(v6, v7, v10);
    sub_10025488C(v18, v19, v20);
    return sub_1002505D0();
  }

  v22 = sub_1002540CC(v6, v7, v10 & 0xFFFFFF, *v5, v5[1], *v8 | (*(v8 + 2) << 16));
  result = sub_10025488C(v6, v7, v10);
  if (!v22)
  {
    return sub_1002505D0();
  }

  return result;
}

uint64_t sub_10024FBB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v6 = v4;
  v7 = *v4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v13 - 8);
  v14 = *(v45 + 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v6 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
  v24 = *(v6 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  if ((~v24 & 0xFC) != 0)
  {
    v34 = v24 | (v23[18] << 16);
    v36 = *v23;
    v35 = *(v23 + 1);
    v41 = v20;
    sub_1001E0520();
    sub_100254DE0(v36, v35, v34);
    v40 = static OS_dispatch_queue.main.getter();
    v37 = swift_allocObject();
    *(v37 + 16) = v6;
    *(v37 + 24) = v36;
    *(v37 + 32) = v35;
    *(v37 + 42) = BYTE2(v34);
    *(v37 + 40) = v34;
    *(v37 + 48) = v7;
    aBlock[4] = v43;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = v44;
    v38 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000048E8(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v39 = v40;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);

    (*(v45 + 1))(v16, v13);
    return (*(v18 + 8))(v22, v41);
  }

  else
  {
    v45 = a4;
    v25 = sub_1001D911C();
    v26 = v8;
    (*(v9 + 16))(v12, v25, v8);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = _typeName(_:qualified:)();
      v32 = sub_10002C9C8(v30, v31, aBlock);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_10002C9C8(*(v6 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(v6 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, v45, v29, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v9 + 8))(v12, v26);
  }
}

uint64_t sub_1002500D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, const char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v33[2] = a8;
  v38 = a6;
  v39 = a7;
  v35 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v33 - v17;
  v19 = sub_1001D911C();
  v20 = *(v12 + 16);
  v33[4] = v19;
  v33[5] = v12 + 16;
  v33[3] = v20;
  v20(v18);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v34 = a4;
  v33[1] = a5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v36 = v16;
    v25 = v24;
    v26 = swift_slowAlloc();
    v37 = v12;
    v40[0] = v26;
    *v25 = 136315394;
    v27 = _typeName(_:qualified:)();
    v29 = sub_10002C9C8(v27, v28, v40);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_10002C9C8(*(a1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(a1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), v40);
    _os_log_impl(&_mh_execute_header, v21, v22, v38, v25, 0x16u);
    swift_arrayDestroy();
    v12 = v37;
  }

  result = (*(v12 + 8))(v18, v11);
  if (*(a1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController))
  {
    v31 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController);

    v39(v32);
  }

  return result;
}

uint64_t sub_1002505D0()
{
  v1 = v0;
  v28 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for MusicFavoriteStatusController.Status();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
  swift_beginAccess();
  sub_100254E70(v13, v1 + v15);
  swift_endAccess();
  v17 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v16 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  v18 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  v19 = v18 | (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  v20 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status;
  v21 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
  if ((~v18 & 0xFC) != 0)
  {
    if (v21 > 2)
    {
      sub_100254DE0(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), v18 | (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16));
    }

    else
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v1 + v20) = v22;
      sub_100254E5C(v17, v16, v19);
      sub_1002540AC(v21);

      sub_10024E664(v21);
      sub_1002540BC(v21);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = 2;
    sub_10024E664(v21);
    sub_1002540BC(v21);
  }

  sub_1001E0520();
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v17;
  *(v25 + 32) = v16;
  *(v25 + 42) = BYTE2(v19);
  *(v25 + 40) = v19;
  *(v25 + 48) = v28;
  aBlock[4] = sub_100254EE0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C5760;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000048E8(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v31 + 8))(v5, v2);
  return (*(v29 + 8))(v9, v30);
}

uint64_t sub_100250A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v208 = a5;
  v217 = a4;
  v214 = a3;
  v215 = a2;
  v199 = type metadata accessor for DispatchWorkItemFlags();
  v198 = *(v199 - 8);
  v5 = *(v198 + 64);
  __chkstk_darwin(v199);
  v195 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for DispatchQoS();
  v196 = *(v197 - 8);
  v7 = *(v196 + 64);
  __chkstk_darwin(v197);
  v194 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicFavoriteStatusController.Status();
  v192 = *(v9 - 8);
  v10 = *(v192 + 64);
  v11 = __chkstk_darwin(v9);
  v179 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v191 = &v175 - v14;
  v180 = v15;
  __chkstk_darwin(v13);
  v193 = &v175 - v16;
  v17 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v185 = &v175 - v19;
  v186 = sub_1001BC5A8(&qword_100523A78, &qword_1004518B0);
  v184 = *(v186 - 8);
  v20 = *(v184 + 64);
  __chkstk_darwin(v186);
  v183 = &v175 - v21;
  v189 = sub_1001BC5A8(&qword_100523A80, &unk_1004518B8);
  v188 = *(v189 - 8);
  v22 = *(v188 + 64);
  __chkstk_darwin(v189);
  v187 = &v175 - v23;
  v24 = type metadata accessor for Account();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v207 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for Logger();
  v212 = *(v216 - 8);
  v27 = *(v212 + 64);
  v28 = __chkstk_darwin(v216);
  v190 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v200 = &v175 - v31;
  __chkstk_darwin(v30);
  v211 = &v175 - v32;
  v205 = type metadata accessor for ContentRating();
  v204 = *(v205 - 1);
  v33 = *(v204 + 64);
  v34 = __chkstk_darwin(v205);
  v182 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v181 = &v175 - v37;
  __chkstk_darwin(v36);
  v39 = &v175 - v38;
  v203 = type metadata accessor for MusicFavoriteStatusController.Item.Kind();
  v202 = *(v203 - 8);
  v40 = *(v202 + 64);
  v41 = __chkstk_darwin(v203);
  v43 = &v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v175 - v45;
  __chkstk_darwin(v44);
  v48 = &v175 - v47;
  v49 = type metadata accessor for MusicFavoriteStatusController.Item.ID();
  v201 = *(v49 - 8);
  v50 = *(v201 + 64);
  v51 = __chkstk_darwin(v49);
  v53 = (&v175 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __chkstk_darwin(v51);
  v56 = (&v175 - v55);
  __chkstk_darwin(v54);
  v58 = (&v175 - v57);
  v210 = type metadata accessor for MusicFavoriteStatusController.Item();
  v209 = *(v210 - 8);
  v59 = *(v209 + 64);
  v60 = __chkstk_darwin(v210);
  v206 = &v175 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v213 = &v175 - v62;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v177 = v9;
    v64 = result;
    v65 = *(result + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver);
    v176 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver;
    *(v64 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver) = 0;

    v66 = *(v64 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController);
    v175 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController;
    *(v64 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController) = 0;

    v67 = v64 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo;
    swift_beginAccess();
    if (!*(v67 + 24))
    {
    }

    v178 = v64;
    if ((~v217 & 0xFC) == 0)
    {
    }

    v68 = *(v67 + 16);
    v69 = v217;
    if (v217 >> 6)
    {
      if (v217 >> 6 == 1)
      {
        v70 = v214;
        v71 = v215;
        sub_100254E5C(v215, v214, v217);
        sub_100254E5C(v71, v70, v69);

        *v56 = MusicItemID.init(stringLiteral:)();
        v56[1] = v72;
        (*(v201 + 104))(v56, enum case for MusicFavoriteStatusController.Item.ID.purchasedID(_:), v49);
        (*(v202 + 104))(v46, **(&off_1004C59A8 + (v69 & 0x3F)), v203);
        v73 = &enum case for ContentRating.clean(_:);
        if ((v69 & 0x100) != 0)
        {
          v73 = &enum case for ContentRating.explicit(_:);
        }

        (*(v204 + 104))(v181, *v73, v205);
        v74 = v213;
        v75 = v70;
        goto LABEL_18;
      }

      LODWORD(v181) = WORD1(v217);
      v71 = v215;
      v75 = v214;
      sub_100254E5C(v215, v214, v217);
      sub_100254E5C(v71, v75, v69);

      *v53 = MusicItemID.init(stringLiteral:)();
      v53[1] = v80;
      (*(v201 + 104))(v53, enum case for MusicFavoriteStatusController.Item.ID.libraryID(_:), v49);
      (*(v202 + 104))(v43, **(&off_1004C59A8 + (v69 & 0x3F)), v203);
      v81 = &enum case for ContentRating.clean(_:);
      if ((v69 & 0x100) != 0)
      {
        v81 = &enum case for ContentRating.explicit(_:);
      }

      (*(v204 + 104))(v182, *v81, v205);
      v74 = v213;
      v79 = &v213;
    }

    else
    {
      LODWORD(v182) = WORD1(v217);
      v76 = v215;
      v75 = v214;
      sub_100254E5C(v215, v214, v217);
      sub_100254E5C(v76, v75, v69);

      *v58 = MusicItemID.init(stringLiteral:)();
      v58[1] = v77;
      (*(v201 + 104))(v58, enum case for MusicFavoriteStatusController.Item.ID.catalogID(_:), v49);
      (*(v202 + 104))(v48, **(&off_1004C59A8 + v69), v203);
      v78 = &enum case for ContentRating.clean(_:);
      if ((v69 & 0x100) != 0)
      {
        v78 = &enum case for ContentRating.explicit(_:);
      }

      (*(v204 + 104))(v39, *v78, v205);
      v74 = v213;
      v71 = v76;
      v79 = &v214;
    }

    v82 = *(v79 - 64);
LABEL_18:
    MusicFavoriteStatusController.Item.init(id:kind:title:contentRating:isLibraryAddEligible:)();
    v83 = v211;
    v84 = sub_1001D911C();
    v85 = v212;
    v86 = *(v212 + 16);
    v203 = v84;
    v87 = v216;
    v205 = (v212 + 16);
    v204 = v86;
    v86(v83);
    sub_100254E5C(v71, v75, v69);
    v88 = v69;
    v89 = v178;

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    sub_10025488C(v71, v75, v88);
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      aBlock[0] = v202;
      *v92 = 136315650;
      v93 = _typeName(_:qualified:)();
      v95 = v75;
      v96 = sub_10002C9C8(v93, v94, aBlock);

      *(v92 + 4) = v96;
      *(v92 + 12) = 2082;
      v97 = *(v89 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
      v98 = *(v89 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8);

      v99 = sub_10002C9C8(v97, v98, aBlock);

      *(v92 + 14) = v99;
      *(v92 + 22) = 2082;
      sub_100254DE0(v71, v95, v88);
      v100 = sub_10024ECFC(v71, v95, v88 & 0xFFFFFF);
      v102 = v101;
      v103 = v95;
      v104 = v212;
      sub_10025488C(v71, v103, v88);
      v105 = sub_10002C9C8(v100, v102, aBlock);

      *(v92 + 24) = v105;
      v74 = v213;
      _os_log_impl(&_mh_execute_header, v90, v91, "[%s]<%{public}s> initializeMusicController - create controller for item: %{public}s", v92, 0x20u);
      swift_arrayDestroy();

      v106 = *(v104 + 8);
      v106(v211, v216);
    }

    else
    {

      v106 = *(v85 + 8);
      v106(v83, v87);
    }

    v107 = v88;
    (*(v209 + 16))(v206, v74, v210);
    static Account.active.getter();
    v108 = type metadata accessor for MusicFavoriteStatusController();
    v109 = *(v108 + 48);
    v110 = *(v108 + 52);
    swift_allocObject();
    v111 = MusicFavoriteStatusController.init(item:account:)();
    v211 = v106;
    v112 = v183;
    v207 = v111;
    dispatch thunk of MusicFavoriteStatusController.$status.getter();
    v113 = v178;
    v206 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_targetQueue;
    aBlock[0] = *(v178 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_targetQueue);
    v114 = aBlock[0];
    v115 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v116 = v185;
    (*(*(v115 - 8) + 56))(v185, 1, 1, v115);
    sub_1001E0520();
    sub_10000462C(&qword_100523A88, &qword_100523A78, &qword_1004518B0);
    sub_1000048E8(&qword_100524C70, sub_1001E0520);
    v117 = v114;
    v118 = v187;
    v119 = v186;
    Publisher.receive<A>(on:options:)();
    sub_1000038A4(v116, &unk_100524C50, &qword_10044F180);

    (*(v184 + 8))(v112, v119);
    v120 = swift_allocObject();
    swift_weakInit();
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    v123 = v214;
    v122 = v215;
    *(v121 + 24) = v215;
    *(v121 + 32) = v123;
    LODWORD(v201) = HIWORD(v107);
    *(v121 + 42) = BYTE2(v107);
    *(v121 + 40) = v107;
    *(v121 + 48) = v208;
    sub_100254DE0(v122, v123, v107);
    sub_10000462C(&qword_100523A90, &qword_100523A80, &unk_1004518B8);
    v124 = v189;
    v125 = Publisher<>.sink(receiveValue:)();

    (*(v188 + 8))(v118, v124);
    v126 = *(v113 + v176);
    *(v113 + v176) = v125;

    v127 = *(v113 + v175);
    *(v113 + v175) = v207;

    v128 = v193;
    dispatch thunk of MusicFavoriteStatusController.status.getter();
    v129 = v192;
    v130 = v191;
    v131 = v177;
    (*(v192 + 104))(v191, enum case for MusicFavoriteStatusController.Status.loading(_:), v177);
    sub_1000048E8(&qword_100523A98, &type metadata accessor for MusicFavoriteStatusController.Status);
    LOBYTE(v127) = dispatch thunk of static Equatable.== infix(_:_:)();
    v132 = *(v129 + 8);
    v132(v130, v131);
    if (v127)
    {

      sub_10025488C(v215, v123, v217);

      v132(v128, v131);
      return (*(v209 + 8))(v213, v210);
    }

    v202 = v132;
    (v204)(v190, v203, v216);
    v133 = v113;
    v134 = v179;
    v205 = *(v129 + 16);
    v205(v179, v128, v131);
    v135 = v215;
    v136 = v217;
    sub_100254E5C(v215, v123, v217);

    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();

    sub_10025488C(v135, v123, v136);
    v139 = os_log_type_enabled(v137, v138);
    v200 = (v129 + 8);
    if (v139)
    {
      v140 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      aBlock[0] = v204;
      *v140 = 136315906;
      v141 = _typeName(_:qualified:)();
      LODWORD(v208) = v138;
      v143 = sub_10002C9C8(v141, v142, aBlock);

      *(v140 + 4) = v143;
      *(v140 + 12) = 2082;
      v144 = *(v133 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
      v145 = *(v133 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8);

      v146 = sub_10002C9C8(v144, v145, aBlock);

      *(v140 + 14) = v146;
      *(v140 + 22) = 2082;
      sub_1000048E8(&qword_100523AA0, &type metadata accessor for MusicFavoriteStatusController.Status);
      v147 = dispatch thunk of CustomStringConvertible.description.getter();
      v149 = v148;
      (v202)(v134, v177);
      v150 = sub_10002C9C8(v147, v149, aBlock);

      *(v140 + 24) = v150;
      *(v140 + 32) = 2082;
      v151 = v214;
      v152 = v217;
      sub_100254DE0(v135, v214, v217);
      v153 = sub_10024ECFC(v135, v151, v152 & 0xFFFFFF);
      v155 = v154;
      sub_10025488C(v135, v151, v152);
      v156 = sub_10002C9C8(v153, v155, aBlock);
      v157 = v177;

      *(v140 + 34) = v156;
      _os_log_impl(&_mh_execute_header, v137, v208, "[%s]<%{public}s> initializeMusicController - initial controller status: %{public}s for item: %{public}s", v140, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v157 = v131;

      (v202)(v134, v131);
    }

    (v211)(v190, v216);
    v158 = v133;
    v159 = v191;
    v160 = v193;
    v161 = v205;
    v205(v191, v193, v157);
    v162 = sub_100253790(v159);
    v163 = *&v206[v158];
    v161(v159, v160, v157);
    v164 = v192;
    v165 = (*(v192 + 80) + 48) & ~*(v192 + 80);
    v166 = v157;
    v167 = (v180 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
    v168 = swift_allocObject();
    v169 = v214;
    *(v168 + 16) = v135;
    *(v168 + 24) = v169;
    *(v168 + 34) = v201;
    *(v168 + 32) = v217;
    *(v168 + 40) = v158;
    (*(v164 + 32))(v168 + v165, v159, v166);
    *(v168 + v167) = v162;
    aBlock[4] = sub_100255030;
    aBlock[5] = v168;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C5850;
    v170 = _Block_copy(aBlock);

    v171 = v163;
    sub_1002540AC(v162);
    v172 = v194;
    static DispatchQoS.unspecified.getter();
    v218 = _swiftEmptyArrayStorage;
    sub_1000048E8(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v173 = v195;
    v174 = v199;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v170);

    sub_1002540BC(v162);

    (*(v198 + 8))(v173, v174);
    (*(v196 + 8))(v172, v197);
    (v202)(v193, v177);
    (*(v209 + 8))(v213, v210);
  }

  return result;
}

uint64_t sub_10025278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v79 = &v63 - v13;
  v14 = type metadata accessor for MusicFavoriteStatusController.Status();
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = *(v77 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v63 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v73 = a6;
    v74 = v18;
    v75 = a1;
    v26 = *(result + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v27 = *(result + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
    v28 = *(result + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
    v29 = v28 | (*(result + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
    if ((~v28 & 0xFC) != 0)
    {
      v72 = result;
      if (sub_1002540CC(a3, a4, a5 & 0xFFFFFF, v26, v27, v29 & 0xFFFFFF))
      {
        v30 = sub_1001D911C();
        v70 = v21;
        v31 = *(v21 + 16);
        v32 = v24;
        v68 = v20;
        v31(v24, v30, v20);
        v33 = a3;
        v34 = v76;
        v35 = v77;
        v36 = v75;
        v37 = v78;
        v71 = *(v77 + 16);
        v67 = v77 + 16;
        v71(v76, v75, v78);
        sub_100254DE0(a3, a4, a5);
        v38 = v72;

        v69 = v32;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        sub_1002548A0(v33, a4, a5);
        v66 = v40;
        if (os_log_type_enabled(v39, v40))
        {
          v63 = a4;
          v41 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v80[0] = v65;
          *v41 = 136315906;
          v42 = _typeName(_:qualified:)();
          v64 = v39;
          v44 = sub_10002C9C8(v42, v43, v80);

          *(v41 + 4) = v44;
          *(v41 + 12) = 2082;
          v45 = *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
          v46 = *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8);

          v47 = sub_10002C9C8(v45, v46, v80);

          *(v41 + 14) = v47;
          *(v41 + 22) = 2082;
          sub_1000048E8(&qword_100523AA0, &type metadata accessor for MusicFavoriteStatusController.Status);
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v49;
          v51 = *(v35 + 8);
          v73 = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v51(v34, v37);
          v52 = sub_10002C9C8(v48, v50, v80);
          v36 = v75;

          *(v41 + 24) = v52;
          *(v41 + 32) = 2082;
          v53 = sub_10024ECFC(v33, v63, a5 & 0xFFFFFF);
          v55 = sub_10002C9C8(v53, v54, v80);

          *(v41 + 34) = v55;
          v56 = v64;
          _os_log_impl(&_mh_execute_header, v64, v66, "[%s]<%{public}s> controllerStatusObserver - updated status: %{public}s for item: %{public}s", v41, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          v51 = *(v35 + 8);
          v73 = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v51(v34, v37);
        }

        (*(v70 + 8))(v69, v68);
        v57 = v79;
        v58 = v71;
        v71(v79, v36, v37);
        (*(v35 + 56))(v57, 0, 1, v37);
        v59 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
        swift_beginAccess();
        sub_100254E70(v57, v38 + v59);
        swift_endAccess();
        v60 = v74;
        (*(v35 + 104))(v74, enum case for MusicFavoriteStatusController.Status.loading(_:), v37);
        sub_1000048E8(&qword_100523A98, &type metadata accessor for MusicFavoriteStatusController.Status);
        LOBYTE(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
        v51(v60, v37);
        if ((v59 & 1) == 0)
        {
          v58(v60, v36, v37);
          v61 = sub_100253790(v60);
          v62 = *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
          *(v38 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = v61;
          sub_1002540AC(v61);
          sub_10024E664(v62);
          sub_1002540BC(v62);
          sub_1002540BC(v61);
        }
      }
    }

    else
    {
      sub_100254DE0(a3, a4, a5);

      sub_10025488C(a3, a4, a5);
      return sub_10025488C(v26, v27, v29);
    }
  }

  return result;
}

unint64_t sub_100252E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  v16 = *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v17 = *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  LODWORD(v14) = *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  v18 = v14 | (*(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  if ((~v14 & 0xFC) != 0)
  {
    result = sub_1002540CC(a1, a2, a3 & 0xFFFFFF, *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), v18 & 0xFFFFFF);
    if (result)
    {
      v20 = type metadata accessor for MusicFavoriteStatusController.Status();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v15, a5, v20);
      (*(v21 + 56))(v15, 0, 1, v20);
      v22 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
      swift_beginAccess();
      sub_100254E70(v15, a4 + v22);
      swift_endAccess();
      v23 = *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
      *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = a6;
      sub_1002540AC(a6);
      sub_10024E664(v23);
      return sub_1002540BC(v23);
    }
  }

  else
  {
    sub_100254DE0(a1, a2, a3);
    sub_10025488C(a1, a2, a3);

    return sub_10025488C(v16, v17, v18);
  }

  return result;
}

void *sub_1002530B4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100523AB0, &qword_1004518D0);
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
    sub_1001BC5A8(&qword_100523AA8, &qword_1004518C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1002531E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100523A70, &qword_1004518A8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100253490(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
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
      sub_1002531E8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10025360C();
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

void *sub_10025360C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100523A70, &qword_1004518A8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

uint64_t sub_100253790(char *a1)
{
  v2 = type metadata accessor for Logger();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  v4 = __chkstk_darwin(v2);
  v72 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v67 - v6;
  v7 = type metadata accessor for MusicFavoriteStatus();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v67 - v13;
  __chkstk_darwin(v12);
  v16 = &v67 - v15;
  v17 = type metadata accessor for MusicFavoriteStatusController.Status();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v67 - v23;
  v25 = *(v18 + 16);
  v75 = a1;
  v26 = a1;
  v28 = v27;
  v25(&v67 - v23, v26, v27);
  v29 = (*(v18 + 88))(v24, v28);
  if (v29 == enum case for MusicFavoriteStatusController.Status.loaded(_:))
  {
    (*(v18 + 96))(v24, v28);
    (*(v8 + 32))(v16, v24, v7);
    v30 = *(v8 + 16);
    v30(v14, v16, v7);
    v31 = (*(v8 + 88))(v14, v7);
    if (v31 == enum case for MusicFavoriteStatus.neutral(_:))
    {
LABEL_3:
      (*(v18 + 8))(v75, v28);
      (*(v8 + 8))(v16, v7);
      return 1;
    }

    if (v31 == enum case for MusicFavoriteStatus.favorited(_:))
    {
      (*(v18 + 8))(v75, v28);
      (*(v8 + 8))(v16, v7);
      return 0;
    }

    if (v31 == enum case for MusicFavoriteStatus.disliked(_:))
    {
      goto LABEL_3;
    }

    v72 = v28;
    v36 = sub_1001D911C();
    v37 = v71;
    (*(v73 + 16))(v71, v36, v74);
    v38 = v70;
    v30(v70, v16, v7);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v68 = v40;
      v42 = v41;
      v69 = swift_slowAlloc();
      v76 = v69;
      *v42 = 136315394;
      *(v42 + 4) = sub_10002C9C8(0x657469726F766146, 0xEE00737574617453, &v76);
      *(v42 + 12) = 2082;
      v43 = v42;
      sub_1000048E8(&qword_100523AB8, &type metadata accessor for MusicFavoriteStatus);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v16;
      v45 = v7;
      v46 = v14;
      v48 = v47;
      v49 = *(v8 + 8);
      v49(v38, v45);
      v50 = sub_10002C9C8(v44, v48, &v76);
      v51 = v39;
      v52 = v50;
      v14 = v46;
      v7 = v45;

      *(v43 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v51, v68, "[%s] init - unknown favorite status: %{public}s", v43, 0x16u);
      swift_arrayDestroy();

      (*(v18 + 8))(v75, v72);
      (*(v73 + 8))(v71, v74);
      v53 = v67;
      v54 = v45;
    }

    else
    {

      (*(v18 + 8))(v75, v72);
      v49 = *(v8 + 8);
      v49(v38, v7);
      (*(v73 + 8))(v37, v74);
      v53 = v16;
      v54 = v7;
    }

    v49(v53, v54);
    v49(v14, v7);
  }

  else
  {
    if (v29 == enum case for MusicFavoriteStatusController.Status.loading(_:))
    {
      (*(v18 + 8))(v75, v28);
      return 1;
    }

    v33 = v28;
    v34 = v29 == enum case for MusicFavoriteStatusController.Status.favoritingUnsupported(_:) || v29 == enum case for MusicFavoriteStatusController.Status.failedToLoad(_:);
    v35 = v75;
    if (v34)
    {
      (*(v18 + 8))(v75, v33);
    }

    else
    {
      v55 = sub_1001D911C();
      v56 = v73;
      v57 = v74;
      (*(v73 + 16))(v72, v55, v74);
      v25(v22, v35, v33);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v61 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v76 = v71;
        *v61 = 136315394;
        *(v61 + 4) = sub_10002C9C8(0x657469726F766146, 0xEE00737574617453, &v76);
        *(v61 + 12) = 2082;
        sub_1000048E8(&qword_100523AA0, &type metadata accessor for MusicFavoriteStatusController.Status);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        LODWORD(v70) = v59;
        v65 = *(v18 + 8);
        v65(v22, v33);
        v66 = sub_10002C9C8(v62, v64, &v76);

        *(v61 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v58, v70, "[%s] init - unknown controller status: %{public}s", v61, 0x16u);
        swift_arrayDestroy();

        v65(v75, v33);
        (*(v73 + 8))(v72, v74);
      }

      else
      {

        v65 = *(v18 + 8);
        v65(v35, v33);
        v65(v22, v33);
        (*(v56 + 8))(v72, v57);
      }

      v65(v24, v33);
    }
  }

  return 2;
}

unint64_t sub_1002540AC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1002540BC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

BOOL sub_1002540CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) != 0x40)
      {
        return 0;
      }

      v6 = a3 & 0x3F;
      v7 = a6 & 0x3F;
      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((a6 & 0xC0) != 0x80)
      {
        return 0;
      }

      v6 = a3 & 0x3F;
      v7 = a6 & 0x3F;
      if (a1 != a4 || a2 != a5)
      {
LABEL_17:
        v8 = a3;
        v9 = a6;
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v10 & 1) == 0)
        {
          return result;
        }

        a6 = v9;
        a3 = v8;
        if (v6 != v7)
        {
          return result;
        }

        goto LABEL_22;
      }
    }

    if (v6 != v7)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if ((a6 & 0xC0) != 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    if ((a6 & 0x3F) != a3)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v12 = a3;
  v13 = a6;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v14)
  {
    a3 = v12;
    a6 = v13;
    if (v12 == (v13 & 0x3F))
    {
LABEL_22:
      if ((a3 & 0xFF00) == 0x200)
      {
        if (BYTE1(a6) != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (BYTE1(a6) == 2 || ((((a3 & 0x100) == 0) ^ (a6 >> 8)) & 1) == 0)
        {
          return result;
        }
      }

      if ((a3 & 0xFF0000) != 0x20000)
      {
        return BYTE2(a6) != 2 && ((((a3 & 0x10000) == 0) ^ HIWORD(a6)) & 1) != 0;
      }

      return BYTE2(a6) == 2;
    }
  }

  return result;
}

uint64_t sub_100254270(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      v11 = *(v3 + v10);
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v16 = *(v3 + v10);
          v15 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_10025377C(v3);
          }

          v12 = &v3[2 * v7];
          v13 = v12[4];
          *(v12 + 2) = v16;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          v14 = *(v3 + v10);
          *(v3 + v10) = v15;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002543E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_1001BC5A8(&qword_100523AA8, &qword_1004518C8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1002544B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1002530B4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1002543E0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_100254570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MusicFavoritingController()
{
  result = qword_10052C010;
  if (!qword_10052C010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254620(uint64_t a1)
{
  v2 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v30[-v8];
  v10 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v11 = (a1 + *(v10 + 44));
  v12 = *(v11 + 19);
  if (v12 == 2 || (v12 & 1) == 0)
  {
    v15 = *(v11 + 18);
    if (v15 == 2 || (v15 & 1) == 0)
    {
      v31 = 0;
      goto LABEL_12;
    }

    v14 = 2;
  }

  else
  {
    v13 = *(v11 + 18);
    if (v13 == 2 || (v13 & 1) == 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }
  }

  v31 = v14;
LABEL_12:
  v16 = *(v10 + 40);
  RoutingSession.NowPlayingInfo.TrackInfo.extendedInfo.getter();
  v17 = RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo.subscriptionIdentifier.getter();
  v19 = v18;
  v20 = *(v3 + 8);
  v20(v9, v2);
  if (v19)
  {
    RoutingSession.NowPlayingInfo.TrackInfo.extendedInfo.getter();
    v21 = RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo.storeIdentifier.getter();
    v23 = v22;
    v20(v7, v2);
    if (v23)
    {
      result = v11[1];
      if (result)
      {
        v25 = *v11;
        v26 = (*(v11 + 16) << 16) | (*(v11 + 17) << 8) | v31 | 0x80u;
        v27 = v11[1];

        return v25;
      }
    }

    else
    {
      v32 = v21;
      result = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = (*(v11 + 16) << 16) | (*(v11 + 17) << 8) | v31 | 0x40u;
    }
  }

  else
  {
    v32 = v17;
    result = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = (*(v11 + 16) << 16) | (*(v11 + 17) << 8) | v31;
  }

  return result;
}

uint64_t sub_10025488C(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xFC) != 0)
  {
    return sub_1002548A0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1002548A0(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xC0) != 0)
  {
  }

  return result;
}

uint64_t sub_1002548B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100254920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100254984()
{
  result = qword_100523760;
  if (!qword_100523760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523760);
  }

  return result;
}

uint64_t sub_1002549FC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100254A20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100254A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100254ACC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_100254B04()
{
  sub_100254C0C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100254C0C()
{
  if (!qword_1005238C0)
  {
    type metadata accessor for MusicFavoriteStatusController.Status();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005238C0);
    }
  }
}

__n128 sub_100254C70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_100254C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 19))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100254CD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 18) = 0;
      *(result + 16) = 4 * ((((-a2 >> 2) & 0xF) - 16 * a2) & 0x3F);
    }
  }

  return result;
}

uint64_t sub_100254D30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = *(result + 2);
  *result = v2 & 0xFF3F;
  *(result + 2) = (v2 & 0xFFFFFF3F | (v3 << 16)) >> 16;
  return result;
}

uint64_t sub_100254D50(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = a1 + 16;
  v4 = v3 & 0xFFFFFF03 | (*(result + 2) << 16);
  *result = v3 & 0xFF03 | ((a2 & 3) << 6);
  *(result + 2) = BYTE2(v4);
  return result;
}

unint64_t sub_100254D8C()
{
  result = qword_10052C120[0];
  if (!qword_10052C120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052C120);
  }

  return result;
}

uint64_t sub_100254DE0(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xC0) != 0)
  {
  }

  return result;
}

uint64_t sub_100254DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100254E5C(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xFC) != 0)
  {
    return sub_100254DE0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100254E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100254EFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32) | (*(v0 + 34) << 16);
  v4 = *(v0 + 40);
  v5 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v6 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  v7 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  v8 = v7 | (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  if ((~v7 & 0xFC) != 0)
  {
    result = sub_1002540CC(v1, v2, v3 & 0xFFFFFF, *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), v8 & 0xFFFFFF);
    if (result)
    {
      v11 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
      *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = 2;
      sub_10024E664(v11);

      return sub_1002540BC(v11);
    }
  }

  else
  {
    v9 = v1;
    sub_100254DE0(v1, v2, v3);
    sub_10025488C(v9, v2, v3);

    return sub_10025488C(v5, v6, v8);
  }

  return result;
}

unint64_t sub_100255030()
{
  v1 = *(type metadata accessor for MusicFavoriteStatusController.Status() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32) | (*(v0 + 34) << 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100252E60(v3, v4, v5, v6, v0 + v2, v7);
}

uint64_t sub_1002550F8()
{
  v1 = *(v0 + 16);

  sub_1002548A0(*(v0 + 24), *(v0 + 32), *(v0 + 40) | (*(v0 + 42) << 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for MusicFavoritingController.Item.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicFavoritingController.Item.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002552FC()
{
  result = qword_10052C2B0[0];
  if (!qword_10052C2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052C2B0);
  }

  return result;
}

uint64_t HostedItemType.description.getter(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      _StringGuts.grow(_:)(17);

      strcpy(v9, ".audioSession(");
      HIBYTE(v9[1]) = -18;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

LABEL_8:
      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
      return v9[0];
    }

    v5 = a2;
    _StringGuts.grow(_:)(16);

    strcpy(v9, ".appSpecific(");
    HIWORD(v9[1]) = -4864;
LABEL_7:
    v6._countAndFlagsBits = a1;
    v6._object = v5;
    String.append(_:)(v6);
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v5 = a2;
    _StringGuts.grow(_:)(30);

    v9[0] = 0xD00000000000001BLL;
    v9[1] = 0x800000010043DA10;
    goto LABEL_7;
  }

  return 0x7261646E6174732ELL;
}

uint64_t sub_100255618(uint64_t a1)
{
  v2 = sub_1002682CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100255654(uint64_t a1)
{
  v2 = sub_1002682CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002556AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10025573C(uint64_t a1)
{
  v2 = sub_100268320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100255778(uint64_t a1)
{
  v2 = sub_100268320();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002557BC()
{
  v1 = 0x647261646E617473;
  v2 = 0x6963657053707061;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x7365536F69647561;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10025584C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002680B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100255880(uint64_t a1)
{
  v2 = sub_100268224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002558BC(uint64_t a1)
{
  v2 = sub_100268224();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002558F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010043DDF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10025598C(uint64_t a1)
{
  v2 = sub_100268278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002559C8(uint64_t a1)
{
  v2 = sub_100268278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100255A04@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100255A34(uint64_t a1)
{
  v2 = sub_100268374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100255A70(uint64_t a1)
{
  v2 = sub_100268374();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HostedItemType.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a2;
  v41 = a4;
  v39 = a3;
  v5 = sub_1001BC5A8(&qword_100523AC0, &qword_100451988);
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v36 = &v30 - v7;
  v8 = sub_1001BC5A8(&qword_100523AC8, &qword_100451990);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v33 = &v30 - v10;
  v11 = sub_1001BC5A8(&qword_100523AD0, &qword_100451998);
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_1001BC5A8(&qword_100523AD8, &qword_1004519A0);
  v30 = *(v15 - 8);
  v16 = *(v30 + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  v19 = sub_1001BC5A8(&qword_100523AE0, &qword_1004519A8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v30 - v22;
  v24 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100268224();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v41 <= 1u)
  {
    if (!v41)
    {
      v43 = 1;
      sub_100268320();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v31 + 8))(v14, v25);
      return (*(v20 + 8))(v23, v19);
    }

    v44 = 2;
    sub_1002682CC();
    v26 = v33;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v35;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = v34;
LABEL_7:
    (*(v28 + 8))(v26, v27);
    return (*(v20 + 8))(v23, v19);
  }

  if (v41 == 2)
  {
    v45 = 3;
    sub_100268278();
    v26 = v36;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v38;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = v37;
    goto LABEL_7;
  }

  v42 = 0;
  sub_100268374();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v30 + 8))(v18, v15);
  return (*(v20 + 8))(v23, v19);
}

void HostedItemType.hash(into:)(uint64_t a1, Swift::UInt32 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    v5 = 3;
  }

  else
  {
    if (!a4)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(a2);
      return;
    }

    v5 = 2;
  }

  Hasher._combine(_:)(v5);

  String.hash(into:)();
}

Swift::Int HostedItemType.hashValue.getter(Swift::UInt32 a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }

    v5 = 3;
    goto LABEL_7;
  }

  if (a3)
  {
    v5 = 2;
LABEL_7:
    Hasher._combine(_:)(v5);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t HostedItemType.init(from:)(uint64_t *a1)
{
  result = sub_1002683C8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_1002560E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = 2;
LABEL_7:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100256198()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    v3 = 3;
  }

  else
  {
    if (!*(v0 + 16))
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v1);
      return;
    }

    v3 = 2;
  }

  Hasher._combine(_:)(v3);

  String.hash(into:)();
}

uint64_t sub_100256240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002683C8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL sub_1002562E4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      return 1;
    }

    if (v3 != 2)
    {
      return 0;
    }

LABEL_7:
    v4 = a3 >> 11;
    return v4 == 1 || v4 == 17 && a1 == 7 && !a2 && (a3 & 0xF97F) == 0x8800;
  }

  if (v3 == 3)
  {
    return 1;
  }

  if (v3 == 4)
  {
    goto LABEL_7;
  }

  return 0;
}

void sub_10025636C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = (a4 >> 8) & 6 | (a4 >> 7) & 1;
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

LABEL_15:
      Hasher._combine(_:)(v9);

      sub_1002570A4(a1, a2, a3, a4 & 0xFFFFF97F);
      return;
    }

    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 32);
    Hasher._combine(_:)(0);
    sub_1002570A4(a1, v10, v11, v14);

    String.hash(into:)();
  }

  else
  {
    if (v8 <= 4)
    {
      if (v8 == 3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      goto LABEL_15;
    }

    if (v8 == 5)
    {
      v9 = 5;
      goto LABEL_15;
    }

    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    v17 = *(a2 + 32);
    Hasher._combine(_:)(6uLL);
    if ((~v17 & 0x6FE) != 0)
    {
      Hasher._combine(_:)(1uLL);
      sub_10001DAE0(v15, v16, v17);
      sub_10025636C(a1, v15, v16, v17);

      sub_100248970(v15, v16, v17);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }
}

uint64_t sub_100256580(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((~a3 & 0x6FE) == 0)
  {
    return 0x6E61486C6C75702ELL;
  }

  _StringGuts.grow(_:)(30);

  v7._countAndFlagsBits = sub_10002BF18(a1, a2, a3);
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD00000000000001BLL;
}

Swift::Int sub_100256658()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if ((~v3 & 0x6FE) != 0)
  {
    Hasher._combine(_:)(1uLL);
    sub_10025636C(v5, v1, v2, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1002566D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if ((~v3 & 0x6FE) != 0)
  {
    v5 = *v1;
    v4 = *(v1 + 8);
    Hasher._combine(_:)(1uLL);

    sub_10025636C(a1, v5, v4, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100256768()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if ((~v3 & 0x6FE) != 0)
  {
    Hasher._combine(_:)(1uLL);
    sub_10025636C(v5, v1, v2, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1002567F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v3 & 0x6FE;
  if ((~v2 & 0x6FE) == 0)
  {
    return v4 == 1790;
  }

  if (v4 == 1790)
  {
    return 0;
  }

  return sub_1000184A4(*a1, *(a1 + 8), v2, *a2, *(a2 + 8), v3);
}

BOOL sub_10025683C()
{
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hasPrefix(_:)(v0);

  return v1;
}

uint64_t sub_100256898()
{
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hasPrefix(_:)(v0);

  if (v1)
  {
    return 1;
  }

  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String.hasPrefix(_:)(v3);

  return v4;
}

uint64_t sub_10025692C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = (v3 >> 8) & 6 | (v3 >> 7) & 1;
  if (v4 <= 2)
  {
    if (!v4)
    {
      v5 = *(v1 + 32);
      v7 = v1 + 16;
      v1 = *(v1 + 16);
      v2 = *(v7 + 8);
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v4 <= 4)
  {
LABEL_5:
    v5 = v3 & 0xF97F;
    goto LABEL_6;
  }

  if (v4 != 5)
  {
    return 0;
  }

  v5 = v3 & 0xF97F;
LABEL_6:
  sub_10001CFE8(v1, v2, v5);
  return v1;
}

uint64_t sub_1002569DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

Swift::Int sub_1002569EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_10025636C(v7, v3, v4, v5);
  return Hasher._finalize()();
}

void sub_100256A64(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 16);
  String.hash(into:)();

  sub_10025636C(a1, v5, v6, v7);
}

Swift::Int sub_100256ABC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_10025636C(v7, v3, v4, v5);
  return Hasher._finalize()();
}

uint64_t sub_100256B30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10002BF18(v1, v2, v3);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 40;
}

uint64_t sub_100256BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_1000184A4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100256C6C(char a1, uint64_t a2, unsigned __int16 a3)
{
  v3 = a3 >> 11;
  v4 = HIBYTE(a3) & 1;
  if (v3 != 1)
  {
    LOBYTE(v4) = 0;
  }

  if (v3 == 4)
  {
    LOBYTE(v4) = a1;
  }

  if (v3 == 5)
  {
    LOBYTE(v4) = a1;
  }

  return v4 & 1;
}

BOOL sub_100256C98(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v3 = a3 >> 11;
  if ((v3 - 2) < 2 || v3 == 15)
  {
    return 1;
  }

  return v3 == 17 && a1 == 10 && !a2 && a3 == 34816;
}

uint64_t sub_100256D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingItem.Action.Kind();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_100017F84(&qword_100524210, &type metadata accessor for RoutingItem.Action.Kind);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100256F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 20)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 1);
      v13 = *(v3 - 2);
      v9 = *v3;
      v10 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      sub_10001DAE0(v6, v5, v7);

      sub_10001DAE0(v13, v8, v9);
      v12 = sub_1000184A4(v6, v5, v7, v13, v8, v9);

      sub_100019550(v13, v8, v9);

      sub_100019550(v6, v5, v7);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 20;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1002570A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  while (2)
  {
    switch(a4 >> 11)
    {
      case 1:
        Hasher._combine(_:)(2uLL);
        if (a3)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(a4 & 1);
        v9 = (a4 >> 8) & 1;
        goto LABEL_51;
      case 2:
        Hasher._combine(_:)(3uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 3:
        Hasher._combine(_:)(4uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 4:
        v10 = 5;
        goto LABEL_32;
      case 5:
        v10 = 6;
LABEL_32:
        Hasher._combine(_:)(v10);
        LOBYTE(v9) = a2 & 1;
        goto LABEL_51;
      case 6:
        Hasher._combine(_:)(0xDuLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 7:
        Hasher._combine(_:)(0xEuLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 8:
        v28 = *(a2 + 16);
        Hasher._combine(_:)(0x10uLL);
        Hasher._combine(_:)(*(v28 + 16));
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = (v28 + 64);
          do
          {
            v31 = *(v30 - 4);
            v32 = *(v30 - 3);
            v33 = *(v30 - 2);
            v34 = *(v30 - 1);
            v35 = *v30;
            v30 += 20;

            sub_10001DAE0(v33, v34, v35);
            String.hash(into:)();
            sub_10001DAE0(v33, v34, v35);
            sub_10025636C(a1, v33, v34, v35);

            sub_100019550(v33, v34, v35);
            sub_100019550(v33, v34, v35);
            --v29;
          }

          while (v29);
        }

        return;
      case 9:
        v11 = *(a2 + 16);
        v12 = *(a2 + 24);
        Hasher._combine(_:)(0x11uLL);
        Hasher._combine(_:)(*(v11 + 16));
        v13 = *(v11 + 16);
        if (v13)
        {
          v14 = (v11 + 64);
          do
          {
            v15 = *(v14 - 4);
            v16 = *(v14 - 3);
            v17 = *(v14 - 2);
            v18 = *(v14 - 1);
            v19 = *v14;
            v14 += 20;

            sub_10001DAE0(v17, v18, v19);
            String.hash(into:)();
            sub_10001DAE0(v17, v18, v19);
            sub_10025636C(a1, v17, v18, v19);

            sub_100019550(v17, v18, v19);
            sub_100019550(v17, v18, v19);
            --v13;
          }

          while (v13);
        }

        goto LABEL_40;
      case 10:
        v20 = *(a2 + 16);
        v12 = *(a2 + 24);
        Hasher._combine(_:)(0x12uLL);
        Hasher._combine(_:)(*(v20 + 16));
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = (v20 + 64);
          do
          {
            v23 = *(v22 - 4);
            v24 = *(v22 - 3);
            v25 = *(v22 - 2);
            v26 = *(v22 - 1);
            v27 = *v22;
            v22 += 20;

            sub_10001DAE0(v25, v26, v27);
            String.hash(into:)();
            sub_10001DAE0(v25, v26, v27);
            sub_10025636C(a1, v25, v26, v27);

            sub_100019550(v25, v26, v27);
            sub_100019550(v25, v26, v27);
            --v21;
          }

          while (v21);
        }

LABEL_40:
        LOBYTE(v9) = v12;
        goto LABEL_51;
      case 11:
        Hasher._combine(_:)(0x15uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 12:
        Hasher._combine(_:)(0x16uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 13:
        Hasher._combine(_:)(0x17uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 14:
        Hasher._combine(_:)(0x18uLL);
        if (a3)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      case 15:
        Hasher._combine(_:)(0x19uLL);
        if (a3)
        {
LABEL_7:
          Hasher._combine(_:)(1u);
LABEL_8:

          String.hash(into:)();
        }

        else
        {
LABEL_12:
          LOBYTE(v9) = 0;
LABEL_51:
          Hasher._combine(_:)(v9);
        }

        return;
      case 16:
        v8 = *(a2 + 16);
        a3 = *(a2 + 24);
        a4 = *(a2 + 32);
        Hasher._combine(_:)(0x1BuLL);
        a2 = v8;
        continue;
      case 17:
        if (a3 | a2 || a4 != 34816)
        {
          if (a2 == 1 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(7uLL);
          }

          else if (a2 == 2 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(8uLL);
          }

          else if (a2 == 3 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(9uLL);
          }

          else if (a2 == 4 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0xAuLL);
          }

          else if (a2 == 5 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0xBuLL);
          }

          else if (a2 == 6 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0xCuLL);
          }

          else if (a2 == 7 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0xFuLL);
          }

          else if (a2 == 8 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0x13uLL);
          }

          else if (a2 == 9 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0x14uLL);
          }

          else if (a2 == 10 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0x1AuLL);
          }

          else
          {
            Hasher._combine(_:)(0x1CuLL);
          }
        }

        else
        {
          Hasher._combine(_:)(1uLL);
        }

        return;
      default:
        Hasher._combine(_:)(0);
        goto LABEL_8;
    }
  }
}

Swift::Int sub_10025761C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 8);
  Hasher.init(_seed:)();
  a3(v9, v5, v6, v7);
  return Hasher._finalize()();
}

Swift::Int sub_1002576A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 8);
  Hasher.init(_seed:)();
  a4(v10, v6, v7, v8);
  return Hasher._finalize()();
}

uint64_t sub_100257778(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_1001BC5A8(&qword_1005241D8, &qword_1004550D0);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for RoutingItem.Properties();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_100017F84(&qword_1005241E0, &type metadata accessor for RoutingItem.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v18 = v28;
  sub_100017F84(&qword_1005241E8, &type metadata accessor for RoutingItem.Properties);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  sub_10003AEF0(v8, v29, &qword_1005241D8, &qword_1004550D0);
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_100257A7C(char a1)
{
  switch(a1)
  {
    case 1:
      return 0x74756C6F7362612ELL;
    case 4:
      return 0x6574756D2ELL;
    case 2:
      return 0x766974616C65722ELL;
  }

  if (a1)
  {
    v3 = sub_10002AFD0(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    v6 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      v21 = sub_10002AFD0((v4 > 1), v5 + 1, 1, v3);
      v6 = v5 + 1;
      v3 = v21;
    }

    *(v3 + 2) = v6;
    v7 = &v3[16 * v5];
    *(v7 + 4) = 7561825;
    *(v7 + 5) = 0xE300000000000000;
    if ((a1 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v3 = _swiftEmptyArrayStorage;
  if ((a1 & 2) != 0)
  {
LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10002AFD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v22 = sub_10002AFD0((v8 > 1), v9 + 1, 1, v3);
      v10 = v9 + 1;
      v3 = v22;
    }

    *(v3 + 2) = v10;
    v11 = &v3[16 * v9];
    *(v11 + 4) = 7103858;
    *(v11 + 5) = 0xE300000000000000;
  }

LABEL_18:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10002AFD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v23 = sub_10002AFD0((v12 > 1), v13 + 1, 1, v3);
      v14 = v13 + 1;
      v3 = v23;
    }

    *(v3 + 2) = v14;
    v15 = &v3[16 * v13];
    *(v15 + 4) = 1702131053;
    *(v15 + 5) = 0xE400000000000000;
  }

  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 93;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  return 91;
}

Swift::Int sub_100257D38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100257DB0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_100257E38(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_100257E68@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_100257E94@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_100257F84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_100269804(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100257FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v4 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - v6;
  v37 = &v35 - v6;
  v8 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v35 - v10;
  v40 = 0x800000010043D9D0;
  v12 = static LocalizedStrings.RoutingItem.Title.moveAudio.getter();
  v38 = v13;
  v39 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 1790;
  v15 = enum case for RoutingItem.SelectionIndicator.none(_:);
  v16 = type metadata accessor for RoutingItem.SelectionIndicator();
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  v36 = v11;
  v18(v11, v15, v16);
  v19 = *(v17 + 56);
  v19(v11, 0, 1, v16);
  v20 = type metadata accessor for RoutingItem.Attributes();
  v21 = *(*(v20 - 8) + 56);
  v21(v7, 1, 1, v20);
  v22 = type metadata accessor for HostedRoutingItem(0);
  v23 = v22[8];
  v19(&a3[v23], 1, 1, v16);
  v24 = &a3[v22[13]];
  v25 = v22[15];
  v21(&a3[v25], 1, 1, v20);
  *a3 = 0xD000000000000010;
  v26 = v41;
  *(a3 + 1) = v40;
  *(a3 + 2) = v26;
  v27 = v38;
  v28 = v39;
  *(a3 + 3) = v42;
  *(a3 + 4) = v28;
  *(a3 + 5) = v27;
  v29 = &a3[v22[16]];
  *v29 = v14;
  *(v29 + 1) = 0;
  *(v29 + 8) = 1536;
  type metadata accessor for Symbols();

  v31 = sub_10001D08C(v30, 0, 0x600u);
  v33 = v32;

  *(a3 + 6) = v31;
  *(a3 + 7) = v33;
  a3[v22[9]] = 0;
  a3[v22[10]] = 0;
  sub_10001CECC(v36, &a3[v23], &unk_100524E90, &unk_1004519B0);
  a3[v22[11]] = 0;
  *&a3[v22[12]] = _swiftEmptyArrayStorage;
  a3[v22[17]] = 1;
  *v24 = 0;
  v24[4] = 1;
  a3[v22[14]] = 0;
  return sub_10001CECC(v37, &a3[v25], &qword_100523AE8, &unk_100457500);
}

uint64_t sub_100258314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int16 a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, int a17, int a18, char a19, __int16 a20, char a21, uint64_t a22)
{
  v27 = type metadata accessor for HostedRoutingItem(0);
  v28 = v27[8];
  v29 = type metadata accessor for RoutingItem.SelectionIndicator();
  (*(*(v29 - 8) + 56))(&a9[v28], 1, 1, v29);
  v30 = &a9[v27[13]];
  v31 = v27[15];
  v32 = type metadata accessor for RoutingItem.Attributes();
  (*(*(v32 - 8) + 56))(&a9[v31], 1, 1, v32);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v33 = &a9[v27[16]];
  *v33 = a7;
  *(v33 + 1) = a8;
  *(v33 + 8) = a10;
  type metadata accessor for Symbols();
  sub_10001DAE0(a7, a8, a10);
  v34 = sub_10001D08C(a7, a8, a10);
  v36 = v35;
  sub_100019550(a7, a8, a10);
  *(a9 + 6) = v34;
  *(a9 + 7) = v36;
  a9[v27[9]] = a11;
  a9[v27[10]] = a12;
  sub_10001CECC(a13, &a9[v28], &unk_100524E90, &unk_1004519B0);
  a9[v27[11]] = a14;
  *&a9[v27[12]] = a15;
  a9[v27[17]] = a16;
  *v30 = a18;
  v30[4] = a19 & 1;
  a9[v27[14]] = a21;
  return sub_10001CECC(a22, &a9[v31], &qword_100523AE8, &unk_100457500);
}

uint64_t sub_100258554()
{
  v1 = v0 + *(type metadata accessor for HostedRoutingItem(0) + 64);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = (v4 >> 8) & 6 | (v4 >> 7) & 1;
  if (v5 <= 2)
  {
    if (!v5)
    {
      v6 = *(v2 + 32);
      v8 = v2 + 16;
      v2 = *(v2 + 16);
      v3 = *(v8 + 8);
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5 <= 4)
  {
LABEL_5:
    v6 = v4 & 0xF97F;
    goto LABEL_6;
  }

  if (v5 != 5)
  {
    return 0;
  }

  v6 = v4 & 0xF97F;
LABEL_6:
  sub_10001CFE8(v2, v3, v6);
  return v2;
}

uint64_t sub_100258614()
{
  sub_10026983C();
  v0 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[7];

    v5 = static String._fromSubstring(_:)();

    return v5;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1002586E4()
{
  sub_10026983C();
  v0 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32 * v1);
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];

    v7 = static String._fromSubstring(_:)();

    return v7;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1002587B8()
{
  if (v0[3])
  {
    v8 = v0[2];
    v9 = v0[3];

    v1._countAndFlagsBits = 14906;
    v1._object = 0xE200000000000000;
    String.append(_:)(v1);
    v2 = *v0;
    v3 = v0[1];

    v4._countAndFlagsBits = v2;
    v4._object = v3;
    String.append(_:)(v4);

    return v8;
  }

  else
  {
    v5 = *v0;
    v6 = v0[1];
  }

  return v5;
}

uint64_t sub_100258968()
{
  if (*v0 == 0xD000000000000013 && 0x800000010043D9F0 == v0[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1002589A8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for HostedRoutingItem(0) + 64);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v7 >> 8) & 6 | (v7 >> 7) & 1;
  if ((v8 - 1) >= 5)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    v7 = *(v6 + 32);
    v6 = *(v6 + 16);
  }

  if ((v7 >> 11) - 8 <= 2)
  {
    v9 = *(v6 + 16);
    v10 = (v9 + 40);
    v11 = *(v9 + 16) + 1;
    while (--v11)
    {
      if (*(v10 - 1) != a1 || *v10 != a2)
      {
        v10 += 5;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      return 1;
    }
  }

LABEL_13:
  if (*v2 == a1 && v2[1] == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100258AB4(uint64_t a1)
{
  v3 = type metadata accessor for RoutingItem.Attributes();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v47 - v8;
  v9 = type metadata accessor for RoutingItem.Action.Kind();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RoutingItem.SelectionIndicator();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v47 - v19;
  v21 = *v1;
  v22 = v1[1];
  String.hash(into:)();
  if (v1[3])
  {
    v23 = v1[2];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v24 = v1[4];
  v25 = v1[5];
  String.hash(into:)();
  v26 = v1[6];
  v27 = v1[7];
  String.hash(into:)();
  v28 = type metadata accessor for HostedRoutingItem(0);
  sub_10001D9AC(v1 + v28[8], v20, &unk_100524E90, &unk_1004519B0);
  if ((*(v14 + 48))(v20, 1, v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v29 = v54;
    (*(v14 + 32))(v54, v20, v13);
    Hasher._combine(_:)(1u);
    sub_100017F84(&qword_100523AF8, &type metadata accessor for RoutingItem.SelectionIndicator);
    dispatch thunk of Hashable.hash(into:)();
    (*(v14 + 8))(v29, v13);
  }

  Hasher._combine(_:)(*(v1 + v28[9]));
  Hasher._combine(_:)(*(v1 + v28[10]));
  Hasher._combine(_:)(*(v1 + v28[11]));
  v53 = v28;
  v54 = v1;
  v30 = *(v1 + v28[12]);
  Hasher._combine(_:)(*(v30 + 16));
  v31 = *(v30 + 16);
  v32 = a1;
  if (v31)
  {
    v33 = *(v49 + 16);
    v34 = v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v35 = *(v49 + 72);
    v36 = (v49 + 8);
    do
    {
      v33(v12, v34, v9);
      sub_100017F84(&qword_100523B00, &type metadata accessor for RoutingItem.Action.Kind);
      dispatch thunk of Hashable.hash(into:)();
      (*v36)(v12, v9);
      v34 += v35;
      --v31;
    }

    while (v31);
  }

  v38 = v53;
  v37 = v54;
  v39 = &v54[v53[13]];
  if (v39[4])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v40 = *v39;
    Hasher._combine(_:)(1u);
    if ((v40 & 0x7FFFFFFF) != 0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v37 = v54;
    Hasher._combine(_:)(v41);
  }

  v43 = v51;
  v42 = v52;
  v44 = v50;
  Hasher._combine(_:)(v37[v38[14]]);
  sub_10001D9AC(&v37[v38[15]], v44, &qword_100523AE8, &unk_100457500);
  if ((*(v43 + 48))(v44, 1, v42) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = v48;
    (*(v43 + 32))(v48, v44, v42);
    Hasher._combine(_:)(1u);
    sub_100017F84(&qword_100523B08, &type metadata accessor for RoutingItem.Attributes);
    dispatch thunk of Hashable.hash(into:)();
    v46 = v45;
    v38 = v53;
    (*(v43 + 8))(v46, v42);
  }

  sub_10025636C(v32, *&v37[v38[16]], *&v37[v38[16] + 8], *&v37[v38[16] + 16]);
  Hasher._combine(_:)(v37[v38[17]]);
}

uint64_t sub_1002590E8(uint64_t a1)
{
  v2 = type metadata accessor for RoutingItem.Properties();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  RoutingItem.Properties.init(rawValue:)();
  v10 = type metadata accessor for HostedRoutingItem(0);
  if (*(a1 + *(v10 + 68)) == 1)
  {
    static RoutingItem.Properties.representsLocal.getter();
    sub_100257778(v9, v7);
    v11 = *(v3 + 8);
    v11(v7, v2);
    v11(v9, v2);
  }

  if (*(a1 + *(v10 + 40)) != 1)
  {
    return sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  }

  static RoutingItem.Properties.isPlaying.getter();
  sub_100257778(v9, v7);
  sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  v12 = *(v3 + 8);
  v12(v7, v2);
  return (v12)(v9, v2);
}

uint64_t sub_1002592C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for RoutingItem.Properties();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v80 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v79 = v77 - v8;
  v9 = type metadata accessor for HostedRoutingItem(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v78 = (v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RoutingControls();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v77[1] = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for RoutingItem.Action();
  v15 = *(v95 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v95);
  v88 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = v77 - v19;
  v20 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v77 - v22;
  v24 = type metadata accessor for RoutingItem.Action.Kind();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v87 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v101 = v77 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v77 - v31;
  __chkstk_darwin(v30);
  v35 = v77 - v33;
  v83 = v9;
  v36 = *(a1 + *(v9 + 48));
  v37 = *(v36 + 16);
  v82 = v23;
  if (v37)
  {
    v39 = *(v34 + 16);
    v38 = v34 + 16;
    v40 = (v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64)));
    v99 = *(v38 + 56);
    v98 = (v38 + 72);
    LODWORD(v97) = enum case for RoutingItem.Action.Kind.shareAudio(_:);
    v85 = enum case for RoutingItem.Action.Kind.remoteControl(_:);
    v96 = (v38 - 8);
    v84 = ".remoteControlGroupSession(";
    v90 = v15 + 32;
    v41 = &_swiftEmptyArrayStorage;
    v100 = a1;
    v93 = v38;
    v94 = v15;
    v42 = v39;
    v91 = v39;
    v92 = v77 - v33;
    v86 = v32;
    v39(v35, v40, v24);
    while (1)
    {
      v42(v32, v35, v24);
      v43 = (*v98)(v32, v24);
      if (v43 == v97)
      {
        break;
      }

      if (v43 == v85)
      {
        v89 = v41;
        static LocalizedStrings.RoutingItem.Action.remoteControl.getter();
        v42(v87, v35, v24);
        v49 = a1[3];
        if (v49)
        {
          v103 = a1[2];
          v104 = v49;

          v50._countAndFlagsBits = 14906;
          v50._object = 0xE200000000000000;
          String.append(_:)(v50);
          v51 = *a1;
          v52 = a1[1];

          v53._countAndFlagsBits = v51;
          v53._object = v52;
          String.append(_:)(v53);
        }

        else
        {
          v60 = *a1;
          v61 = a1[1];
        }

        RoutingItem.Action.init(title:symbolName:kind:itemIdentifier:)();
        v41 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100032F14(0, v41[2] + 1, 1, v41, &qword_1005241D0, &qword_1004550C8, &type metadata accessor for RoutingItem.Action);
        }

        a1 = v100;
        v62 = v94;
        v35 = v92;
        v64 = v41[2];
        v63 = v41[3];
        if (v64 >= v63 >> 1)
        {
          v41 = sub_100032F14(v63 > 1, v64 + 1, 1, v41, &qword_1005241D0, &qword_1004550C8, &type metadata accessor for RoutingItem.Action);
        }

        (*v96)(v35, v24);
        v41[2] = v64 + 1;
        (*(v62 + 32))(v41 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64, v88, v95);
        goto LABEL_4;
      }

      v54 = *v96;
      (*v96)(v35, v24);
      v54(v32, v24);
      a1 = v100;
LABEL_5:
      v40 += v99;
      if (!--v37)
      {
        goto LABEL_26;
      }

      v42(v35, v40, v24);
    }

    static LocalizedStrings.RoutingItem.Action.shareAudio.getter();
    v42(v101, v35, v24);
    v44 = a1[3];
    if (v44)
    {
      v103 = a1[2];
      v104 = v44;

      v45._countAndFlagsBits = 14906;
      v45._object = 0xE200000000000000;
      String.append(_:)(v45);
      v46 = *a1;
      v47 = a1[1];

      v48._countAndFlagsBits = v46;
      v48._object = v47;
      String.append(_:)(v48);
    }

    else
    {
      v55 = *a1;
      v56 = a1[1];
    }

    RoutingItem.Action.init(title:symbolName:kind:itemIdentifier:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100032F14(0, v41[2] + 1, 1, v41, &qword_1005241D0, &qword_1004550C8, &type metadata accessor for RoutingItem.Action);
    }

    a1 = v100;
    v57 = v94;
    v32 = v86;
    v35 = v92;
    v59 = v41[2];
    v58 = v41[3];
    if (v59 >= v58 >> 1)
    {
      v41 = sub_100032F14(v58 > 1, v59 + 1, 1, v41, &qword_1005241D0, &qword_1004550C8, &type metadata accessor for RoutingItem.Action);
    }

    (*v96)(v35, v24);
    v41[2] = v59 + 1;
    (*(v57 + 32))(v41 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v59, v102, v95);
LABEL_4:
    v42 = v91;
    goto LABEL_5;
  }

  v41 = &_swiftEmptyArrayStorage;
LABEL_26:
  v89 = v41;
  v65 = *a1;
  v66 = a1[1];
  v67 = a1[3];
  v101 = a1[2];
  v102 = v65;
  v68 = a1[4];
  v69 = a1[5];
  v70 = a1[7];
  v98 = a1[6];
  v99 = v68;
  v71 = v83;
  v72 = v82;
  sub_10001D9AC(a1 + *(v83 + 32), v82, &unk_100524E90, &unk_1004519B0);
  v73 = type metadata accessor for RoutingItem.SelectionIndicator();
  result = (*(*(v73 - 8) + 48))(v72, 1, v73);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v75 = (a1 + *(v71 + 52));
    v97 = *v75;
    LODWORD(v96) = *(v75 + 4);
    v76 = v78;
    sub_10003271C(a1, v78, type metadata accessor for HostedRoutingItem);

    sub_100259CC4(v76);
    sub_10001D9AC(a1 + *(v71 + 60), v79, &qword_100523AE8, &unk_100457500);
    sub_10003271C(a1, v76, type metadata accessor for HostedRoutingItem);
    sub_1002590E8(v76);
    LOBYTE(v103) = v96;
    RoutingItem.init(identifier:scopeIdentifier:title:symbolName:selectionIndicator:volume:controls:attributes:actions:properties:)();
    return sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  }

  return result;
}

uint64_t sub_100259CC4(uint64_t *a1)
{
  v2 = sub_1001BC5A8(&qword_100523B10, &qword_1004519D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v21 - v4;
  v6 = sub_1001BC5A8(&qword_100523B18, &unk_1004519E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v21 - v8;
  RoutingControls.init()();
  v10 = *(a1 + *(type metadata accessor for HostedRoutingItem(0) + 56));
  v11 = a1[3];
  if (v11)
  {
    v21[0] = a1[2];
    v21[1] = v11;

    v12._countAndFlagsBits = 14906;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13 = *a1;
    v14 = a1[1];

    v15._countAndFlagsBits = v13;
    v15._object = v14;
    String.append(_:)(v15);

    if ((v10 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v20 = *a1;
  v19 = a1[1];

  if (v10)
  {
LABEL_3:

    RoutingControls.AbsoluteVolumeControl.init(itemIdentifier:)();
    v16 = type metadata accessor for RoutingControls.AbsoluteVolumeControl();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    RoutingControls.absoluteVolume.setter();
  }

LABEL_4:
  if ((v10 & 2) != 0)
  {
    RoutingControls.RelativeVolumeControl.init(itemIdentifier:)();
    v18 = type metadata accessor for RoutingControls.RelativeVolumeControl();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    RoutingControls.relativeVolume.setter();
    return sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  }

  else
  {
    sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  }
}

uint64_t sub_100259F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

Swift::Int sub_100259F64()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100259FD4()
{
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10025A04C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_10025A134(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_10025A190(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v85 = a6;
  v84 = a5;
  v82 = a4;
  v99 = a3;
  v93 = a2;
  v94 = a1;
  v89 = a7;
  v83 = type metadata accessor for HostedRoutingSourceSession(0);
  v7 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for RoutingControls();
  v87 = *(v88 - 8);
  v10 = *(v87 + 64);
  __chkstk_darwin(v88);
  v97 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Date();
  v98 = *(v86 - 8);
  v12 = *(v98 + 64);
  __chkstk_darwin(v86);
  v96 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v95 = &v75 - v16;
  v17 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v91 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  v79 = *(v81 - 8);
  v20 = *(v79 + 64);
  __chkstk_darwin(v81);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType();
  v23 = *(v90 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v90);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  v77 = *(v78 - 8);
  v32 = *(v77 + 64);
  __chkstk_darwin(v78);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v80 = *(v76 - 8);
  v35 = *(v80 + 64);
  __chkstk_darwin(v76);
  v37 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018D7C(0, &qword_100523B28, MRDeviceInfo_ptr);
  v92 = sub_100018D1C();
  v38 = [v99 discoveredIsPlaying];
  v39 = &enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:);
  if (!v38)
  {
    v39 = &enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.paused(_:);
  }

  (*(v28 + 104))(v31, *v39, v27);
  (*(v23 + 104))(v26, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.live(_:), v90);
  RoutingSession.NowPlayingInfo.PlaybackInfo.init(playbackState:playbackType:)();
  v40 = v91;
  default argument 6 of RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
  v73 = v40;
  v71 = 0u;
  v72 = 0u;
  RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10044EC70;
  v42 = [objc_opt_self() mainBundle];
  v43 = [v42 bundleIdentifier];

  if (v43)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v41 + 32) = v44;
    *(v41 + 40) = v46;
    *(v37 + 1) = 0u;
    *(v37 + 2) = 0u;
    *v37 = 0u;
    v47 = v76;
    (*(v77 + 32))(&v37[*(v76 + 36)], v34, v78);
    v48 = (*(v79 + 32))(&v37[*(v47 + 40)], v22, v81);
    v49 = &v37[*(v47 + 44)];
    *v49 = 0;
    *(v49 + 1) = 0;
    *(v49 + 4) = 33686018;
    *(v37 + 8) = 0;
    *(v37 + 6) = v41;
    *(v37 + 14) = 0;
    v37[60] = 4;
    __chkstk_darwin(v48);
    *&v72 = v94;
    *(&v72 + 1) = v93;
    v73 = v37;
    v74 = v92;
    v50 = v82;
    v90 = sub_10025B178(sub_100269890, &v71, v82);
    v91 = v37;
    v51 = v95;
    sub_10003271C(v37, v95, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v52 = *(v80 + 56);
    v52(v51, 0, 1, v47);
    v53 = v96;
    static Date.distantPast.getter();
    v54 = v99;
    LODWORD(v81) = [v99 supportsVisualProxyGroupPlayer];
    v99 = v54;
    sub_1002698C0(v99, v50, v100);
    v55 = v97;
    RoutingControls.init()();
    v56 = v83;
    v57 = *(v83 + 28);
    v52(&v9[v57], 1, 1, v47);
    v58 = &v9[v56[9]];
    *v58 = 0;
    v58[1] = 0;
    v59 = &v9[v56[10]];
    v60 = &v9[v56[15]];
    *(v60 + 80) = 0;
    *(v60 + 48) = 0u;
    *(v60 + 64) = 0u;
    *(v60 + 16) = 0u;
    *(v60 + 32) = 0u;
    *v60 = 0u;
    v61 = v93;
    *v9 = v94;
    *(v9 + 1) = v61;
    v62 = v90;
    *(v9 + 4) = v90;
    v63 = v62;

    sub_10026A0EC(v51, &v9[v57]);
    v64 = v86;
    (*(v98 + 16))(&v9[v56[18]], v53, v86);
    v9[v56[11]] = 1;
    v9[v56[12]] = 1;
    v9[v56[13]] = 1;
    v9[v56[14]] = v81;
    v9[v56[16]] = 0;
    v9[v56[17]] = 0;
    *v59 = 0;
    v59[4] = 1;
    v65 = v87;
    v66 = v88;
    (*(v87 + 16))(&v9[v56[8]], v55, v88);
    sub_10001CECC(v100, v60, &qword_100523B20, &unk_1004519F0);
    v67 = v85;
    *(v9 + 2) = v84;
    *(v9 + 3) = v67;
    if (*(v63 + 16))
    {
      type metadata accessor for Symbols();
      v68 = sub_100030BB8(v63);
      v70 = v69;

      (*(v65 + 8))(v97, v66);
      (*(v98 + 8))(v96, v64);
      sub_1000038A4(v95, &qword_100523640, qword_100451520);
      *v58 = v68;
      v58[1] = v70;
    }

    else
    {

      (*(v65 + 8))(v97, v66);
      (*(v98 + 8))(v96, v64);
      sub_1000038A4(v95, &qword_100523640, qword_100451520);
    }

    sub_100032E08(v9, v89, type metadata accessor for HostedRoutingSourceSession);
    sub_10002181C(v91, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10025ABF8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v73 = a4;
  v74 = a5;
  v75 = a2;
  v9 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v63 - v11;
  v13 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v76 = &v63 - v15;
  v16 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v63 - v22;
  v24 = *a1;
  v25 = [*a1 uid];
  if (v25)
  {
    v26 = v25;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    v29 = [v24 name];
    if (v29)
    {
      v70 = v28;
      v71 = a3;
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v32;

      v33 = sub_100018E6C();
      v68 = v34;
      v69 = v33;
      v67 = v35;
      v36 = v73 + *(type metadata accessor for HostedRoutingSession.NowPlayingInfo(0) + 36);
      RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
      (*(v17 + 104))(v21, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v16);
      LODWORD(v73) = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
      v37 = *(v17 + 8);
      v37(v21, v16);
      v37(v23, v16);
      v38 = type metadata accessor for RoutingItem.SelectionIndicator();
      v39 = *(*(v38 - 8) + 56);
      v39(v76, 1, 1, v38);
      v65 = sub_10001CB30();
      LOBYTE(v37) = [v74 matchesUID:v26];

      v40 = 1;
      if ((v37 & 1) == 0)
      {
        v41 = sub_100018E6C();
        v40 = ((v42 >> 8) & 6 | (v42 >> 7) & 1) == 5;
        sub_100019550(v41, v43, v42);
      }

      LODWORD(v74) = v40;
      sub_10001C1E0(v12);
      v44 = type metadata accessor for RoutingItem.Attributes();
      v45 = *(*(v44 - 8) + 56);
      v64 = v12;
      v45(v12, 0, 1, v44);
      v46 = type metadata accessor for HostedRoutingItem(0);
      v47 = v46[8];
      v39(a6 + v47, 1, 1, v38);
      v48 = a6 + v46[13];
      v49 = v46[15];
      v45(a6 + v49, 1, 1, v44);
      v50 = v71;
      v52 = v69;
      v51 = v70;
      *a6 = v72;
      a6[1] = v51;
      a6[2] = v75;
      a6[3] = v50;
      v53 = v66;
      a6[4] = v31;
      a6[5] = v53;
      v54 = a6 + v46[16];
      v55 = v68;
      *v54 = v52;
      *(v54 + 1) = v55;
      v56 = v67;
      *(v54 + 8) = v67;
      type metadata accessor for Symbols();

      sub_10001DAE0(v52, v55, v56);
      v57 = sub_10001D08C(v52, v55, v56);
      v59 = v58;
      sub_100019550(v52, v55, v56);
      a6[6] = v57;
      a6[7] = v59;
      *(a6 + v46[9]) = 1;
      *(a6 + v46[10]) = v73 & 1;
      sub_10001CECC(v76, a6 + v47, &unk_100524E90, &unk_1004519B0);
      *(a6 + v46[11]) = v65;
      *(a6 + v46[12]) = _swiftEmptyArrayStorage;
      *(a6 + v46[17]) = v74;
      *v48 = 0;
      v48[4] = 1;
      *(a6 + v46[14]) = 0;
      sub_10001CECC(v64, a6 + v49, &qword_100523AE8, &unk_100457500);
      return (*(*(v46 - 1) + 56))(a6, 0, 1, v46);
    }
  }

  v61 = type metadata accessor for HostedRoutingItem(0);
  v62 = *(*(v61 - 8) + 56);

  return v62(a6, 1, 1, v61);
}

void *sub_10025B178(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v5 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for HostedRoutingItem(0);
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = __chkstk_darwin(v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = _swiftEmptyArrayStorage;
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_1000038A4(v8, &qword_100523C18, &qword_100451AF0);
      }

      else
      {
        v20 = v26;
        sub_100032E08(v8, v26, type metadata accessor for HostedRoutingItem);
        sub_100032E08(v20, v31, type metadata accessor for HostedRoutingItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100032F14(0, v16[2] + 1, 1, v16, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_100032F14(v21 > 1, v22 + 1, 1, v16, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
        }

        v16[2] = v22 + 1;
        sub_100032E08(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for HostedRoutingItem);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

double sub_10025B508@<D0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1002698C0(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_10025B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, char a10, char a11, char a12, int a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = type metadata accessor for HostedRoutingSourceSession(0);
  v25 = v24[7];
  v26 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v26 - 8) + 56))(&a9[v25], 1, 1, v26);
  v27 = &a9[v24[9]];
  *v27 = 0;
  v27[1] = 0;
  v40 = v27;
  v28 = &a9[v24[10]];
  v29 = &a9[v24[15]];
  *(v29 + 80) = 0;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *v29 = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 4) = a3;

  sub_10026A0EC(a4, &a9[v25]);
  v30 = v24[18];
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  (*(v32 + 16))(&a9[v30], a5, v31);
  a9[v24[11]] = a6;
  a9[v24[12]] = a7;
  a9[v24[13]] = a8;
  a9[v24[14]] = a10;
  a9[v24[16]] = a11;
  a9[v24[17]] = a12;
  *v28 = a14;
  v28[4] = a15 & 1;
  v33 = v24[8];
  v34 = type metadata accessor for RoutingControls();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&a9[v33], a16, v34);
  sub_10001CECC(a17, v29, &qword_100523B20, &unk_1004519F0);
  *(a9 + 2) = a18;
  *(a9 + 3) = a19;
  if (*(a3 + 16))
  {
    type metadata accessor for Symbols();
    v36 = sub_100030BB8(a3);
    v38 = v37;

    (*(v35 + 8))(a16, v34);
    (*(v32 + 8))(a5, v31);
    result = sub_1000038A4(a4, &qword_100523640, qword_100451520);
    *v40 = v36;
    v40[1] = v38;
  }

  else
  {

    (*(v35 + 8))(a16, v34);
    (*(v32 + 8))(a5, v31);
    return sub_1000038A4(a4, &qword_100523640, qword_100451520);
  }

  return result;
}

uint64_t sub_10025B89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v128 = a8;
  v127 = a7;
  v126 = a6;
  v139 = a5;
  v124 = a4;
  v132 = a2;
  v131 = a1;
  v129 = a9;
  v125 = type metadata accessor for HostedRoutingSourceSession(0);
  v11 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v138 = (&v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1001BC5A8(&qword_100523B30, &qword_100451A00);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v118 = &v112 - v15;
  v16 = sub_1001BC5A8(&qword_100523B38, &qword_100451A08);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v119 = &v112 - v18;
  v137 = type metadata accessor for RoutingControls();
  v134 = *(v137 - 8);
  v19 = v134[8];
  v20 = __chkstk_darwin(v137);
  v135 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v136 = &v112 - v22;
  v23 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v112 - v25;
  v140 = type metadata accessor for Date();
  v27 = *(v140 - 8);
  v28 = *(v27 + 8);
  v29 = __chkstk_darwin(v140);
  v133 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v112 - v32;
  __chkstk_darwin(v31);
  v35 = &v112 - v34;
  v36 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v142 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v42 = &v112 - v41;
  __chkstk_darwin(v40);
  v44 = &v112 - v43;
  sub_100018D7C(0, &qword_100523B28, MRDeviceInfo_ptr);
  v141 = sub_100018D1C();
  v45 = [a3 origin];
  v46 = [objc_opt_self() server];
  v47 = [v46 nowPlayingServer];

  v123 = v45;
  v48 = [v47 originClientForOrigin:v45];

  v49 = [v48 activeNowPlayingClient];
  v50 = [v49 activePlayerClient];

  v51 = v48;
  v130 = v50;
  v143 = v44;
  sub_100026A90(v48, v50);
  LODWORD(v120) = [a3 canModifyGroupMembership];
  if ([a3 isGroupLeaderGroupable])
  {
    v121 = 0;
  }

  else
  {
    v121 = [a3 isMyDiscoverableUndiscoverableGroupLeader];
  }

  v52 = v140;
  v122 = v51;
  if (v51)
  {
    v53 = [v51 lastPlayingDateSnapshot];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = *(v27 + 4);
    v54(v26, v33, v52);
    (*(v27 + 7))(v26, 0, 1, v52);
    v55 = v35;
    v54(v35, v26, v52);
    v56 = v136;
  }

  else
  {
    (*(v27 + 7))(v26, 1, 1, v140);
    v55 = v35;
    static Date.distantPast.getter();
    v57 = (*(v27 + 6))(v26, 1, v52);
    v56 = v136;
    if (v57 != 1)
    {
      sub_1000038A4(v26, &qword_1005228D8, &unk_100450060);
    }
  }

  v58 = v131;
  if (v130 && (v59 = [v130 supportedRemoteControlCommands]) != 0)
  {
    v60 = v59;
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = sub_100020418(v61);
    v52 = v140;
  }

  else
  {
    v62 = 0;
  }

  sub_10001D9AC(v143, v42, &qword_100523640, qword_100451520);
  v63 = a3;
  v64 = v132;

  sub_10025C7D0(v58, v64, v62, v63, v42, v56);
  v66 = v139;
  if (v139 - 2 < 2)
  {
    goto LABEL_22;
  }

  if (!v139)
  {

    v69 = v118;
    RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
    v70 = type metadata accessor for RoutingControls.UnfavoriteControl();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    v65 = RoutingControls.unfavorite.setter();
    goto LABEL_22;
  }

  if (v139 == 1)
  {

    v67 = v119;
    RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
    v68 = type metadata accessor for RoutingControls.FavoriteControl();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v65 = RoutingControls.favorite.setter();
    goto LABEL_22;
  }

  v71 = *(v139 + 16);
  if (!v71)
  {

    sub_10026A1A0(v66);
    v74 = v118;
    RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
    v75 = type metadata accessor for RoutingControls.UnfavoriteControl();
    (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
    RoutingControls.unfavorite.setter();
    goto LABEL_21;
  }

  if (v71 == 1)
  {

    sub_10026A1A0(v66);
    v72 = v119;
    RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
    v73 = type metadata accessor for RoutingControls.FavoriteControl();
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    RoutingControls.favorite.setter();
LABEL_21:
    v65 = sub_10026A190(v66);
    goto LABEL_22;
  }

  if (v71 != 2)
  {
    v145[0] = 0;
    v145[1] = 0xE000000000000000;
    sub_10026A1A0(v139);
    sub_1002540AC(v71);
    _StringGuts.grow(_:)(62);
    v107._countAndFlagsBits = 91;
    v107._object = 0xE100000000000000;
    String.append(_:)(v107);
    v108._object = 0x80000001004519F0;
    v108._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v108);
    v109._countAndFlagsBits = 0xD000000000000039;
    v109._object = 0x800000010043DA80;
    String.append(_:)(v109);
    v144 = v66;
    sub_10026A1B0();
    v110._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v110);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_22:
  v116 = v120 ^ 1;
  v118 = a10;
  __chkstk_darwin(v65);
  *(&v112 - 6) = v58;
  *(&v112 - 5) = v64;
  v76 = v143;
  *(&v112 - 4) = v143;
  *(&v112 - 3) = v77;
  v111 = v63;
  v78 = v124;
  v79 = sub_10025B178(sub_10026A15C, (&v112 - 8), v124);
  sub_10001D9AC(v76, v142, &qword_100523640, qword_100451520);
  v114 = *(v27 + 2);
  v80 = v133;
  v114(v133, v55, v52);
  v115 = [v63 supportsVisualProxyGroupPlayer];
  [v63 volume];
  v82 = v81;
  v120 = v55;
  v113 = v134[2];
  v119 = v27;
  v113(v135, v56, v137);
  v117 = v63;
  sub_1002698C0(v117, v78, v145);
  v83 = v80;
  v84 = v125;
  v85 = *(v125 + 28);
  v86 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v87 = v138;
  (*(*(v86 - 8) + 56))(v138 + v85, 1, 1, v86);
  v88 = (v87 + v84[9]);
  *v88 = 0;
  v88[1] = 0;
  v124 = v88;
  v89 = v87 + v84[10];
  v90 = v52;
  v91 = v87 + v84[15];
  *(v91 + 80) = 0;
  *(v91 + 48) = 0u;
  *(v91 + 64) = 0u;
  *(v91 + 16) = 0u;
  *(v91 + 32) = 0u;
  *v91 = 0u;
  v92 = v132;
  *v87 = v131;
  v87[1] = v92;
  v87[4] = v79;

  sub_10026A0EC(v142, v87 + v85);
  v114(v87 + v84[18], v83, v90);
  v93 = v137;
  v94 = v135;
  *(v87 + v84[11]) = v116;
  *(v87 + v84[12]) = 0;
  *(v87 + v84[13]) = v121;
  *(v87 + v84[14]) = v115;
  *(v87 + v84[16]) = v126 & 1;
  *(v87 + v84[17]) = v127 & 1;
  *v89 = v82;
  v89[4] = 0;
  v113(v87 + v84[8], v94, v93);
  sub_10001CECC(v145, v91, &qword_100523B20, &unk_1004519F0);
  v95 = v118;
  v87[2] = v128;
  v87[3] = v95;
  if (v79[2])
  {
    type metadata accessor for Symbols();
    v96 = sub_100030BB8(v79);
    v98 = v97;

    sub_10026A190(v139);

    v99 = v134[1];
    v99(v94, v93);
    v100 = *(v119 + 1);
    v101 = v140;
    v100(v133, v140);
    sub_1000038A4(v142, &qword_100523640, qword_100451520);
    v99(v136, v93);
    v100(v120, v101);
    v102 = v124;
    *v124 = v96;
    v102[1] = v98;
  }

  else
  {

    sub_10026A190(v139);

    v103 = v134[1];
    v103(v94, v93);
    v104 = *(v119 + 1);
    v105 = v140;
    v104(v133, v140);
    sub_1000038A4(v142, &qword_100523640, qword_100451520);
    v103(v136, v93);
    v104(v120, v105);
  }

  sub_100032E08(v138, v129, type metadata accessor for HostedRoutingSourceSession);
  return sub_1000038A4(v143, &qword_100523640, qword_100451520);
}

void sub_10025C7D0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for RoutingControls.TVRemoteControl.Context.DeviceType();
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  __chkstk_darwin(v12);
  v68 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v69 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001BC5A8(&qword_100523B58, &qword_100451A40);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v70 = &v65 - v20;
  v21 = sub_1001BC5A8(&qword_100523B10, &qword_1004519D8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v65 - v23;
  v25 = sub_1001BC5A8(&qword_100523B18, &unk_1004519E0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v65 - v27;
  v29 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v65 - v31;
  v33 = sub_1001BC5A8(&qword_100523B60, &qword_100451A48);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v65 - v35;
  if (a3)
  {
    sub_10001D9AC(a5, v32, &qword_100523640, qword_100451520);

    sub_100262A4C(a1, a2, a3, v32, a6);
  }

  else
  {
    RoutingControls.init()();

    default argument 2 of RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
    RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
    v37 = type metadata accessor for RoutingControls.PlayControl();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    RoutingControls.play.setter();
  }

  v38 = [a4 volumeCapabilities];
  if ((v38 & 2) != 0)
  {

    RoutingControls.AbsoluteVolumeControl.init(sessionIdentifier:)();
    v39 = type metadata accessor for RoutingControls.AbsoluteVolumeControl();
    (*(*(v39 - 8) + 56))(v28, 0, 1, v39);
    RoutingControls.absoluteVolume.setter();
  }

  if (v38)
  {

    RoutingControls.RelativeVolumeControl.init(sessionIdentifier:)();
    v40 = type metadata accessor for RoutingControls.RelativeVolumeControl();
    (*(*(v40 - 8) + 56))(v24, 0, 1, v40);
    RoutingControls.relativeVolume.setter();
  }

  if (![a4 isLocalEndpoint])
  {
    v49 = [a4 designatedGroupLeader];
    if (v49 && (v50 = v49, v51 = [v49 transportType], v50, v51 == 1))
    {
      sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
      v52 = sub_10024C81C();
      v53 = [a4 origin];
      v54 = [v52 originClientForOrigin:v53];

      if (!v54)
      {
        goto LABEL_27;
      }

      v55 = [v54 deviceInfo];

      if (!v55)
      {
        goto LABEL_27;
      }

      v56 = [v55 identifier];
      if (!v56)
      {
        sub_1000038A4(a5, &qword_100523640, qword_100451520);

        return;
      }

      v57 = v56;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if ([v55 deviceClass] != 4)
      {
        sub_1000038A4(a5, &qword_100523640, qword_100451520);

        return;
      }

      (*(v66 + 104))(v68, enum case for RoutingControls.TVRemoteControl.Context.DeviceType.appleTV(_:), v67);
      RoutingControls.TVRemoteControl.Context.init(identifier:deviceType:)();
      v58 = v70;
      RoutingControls.TVRemoteControl.init(sessionIdentifier:context:)();
      v59 = type metadata accessor for RoutingControls.TVRemoteControl();
      (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
      RoutingControls.TVRemote.setter();
    }

    else
    {
    }

    v60 = a5;
LABEL_48:
    sub_1000038A4(v60, &qword_100523640, qword_100451520);
    return;
  }

  v41 = [a4 outputDevices];
  if (!v41)
  {
LABEL_27:
    sub_1000038A4(a5, &qword_100523640, qword_100451520);

    return;
  }

  v42 = v41;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v43 >> 62))
  {
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_47:

    v60 = a5;
    goto LABEL_48;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_47;
  }

LABEL_12:
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
    v45 = v44;
    v46 = [v44 uid];
    if (!v46)
    {
      sub_1000038A4(a5, &qword_100523640, qword_100451520);

      return;
    }

    v47 = v46;
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (v43 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v48 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v48 != 1)
    {
      sub_1000038A4(a5, &qword_100523640, qword_100451520);

      return;
    }

    v61 = v45;
    if (([v45 deviceSubtype] == 13 || objc_msgSend(v45, "clusterType") == 2) && objc_msgSend(v45, "supportsRapport"))
    {
      v62 = &enum case for RoutingControls.TVRemoteControl.Context.DeviceType.appleTV(_:);
    }

    else
    {
      if (![v45 isAddedToHomeKit] || objc_msgSend(v45, "deviceSubtype") != 11 && objc_msgSend(v45, "deviceSubtype") != 17 && objc_msgSend(v45, "deviceSubtype") != 16)
      {

        goto LABEL_44;
      }

      v62 = &enum case for RoutingControls.TVRemoteControl.Context.DeviceType.television(_:);
    }

    (*(v66 + 104))(v68, *v62, v67);
    RoutingControls.TVRemoteControl.Context.init(identifier:deviceType:)();
    v63 = v70;
    RoutingControls.TVRemoteControl.init(sessionIdentifier:context:)();
    v64 = type metadata accessor for RoutingControls.TVRemoteControl();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    RoutingControls.TVRemote.setter();

LABEL_44:
    v60 = a5;
    goto LABEL_48;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v43 + 32);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_10025D1B4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v80 = a5;
  v81 = a6;
  v82 = a2;
  v83 = a3;
  v10 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v85 = &v71 - v12;
  v13 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v84 = &v71 - v15;
  v16 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v71 - v22;
  v24 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v71 - v26;
  v28 = *a1;
  v29 = [*a1 uid];
  if (v29)
  {
    v30 = v29;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    v33 = [v28 name];
    if (v33)
    {
      v78 = v32;
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v36;
      v74 = v35;

      v37 = sub_100018E6C();
      v76 = v38;
      v77 = v37;
      v75 = v39;
      sub_10001D9AC(a4, v27, &qword_100523640, qword_100451520);
      v40 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      if ((*(*(v40 - 8) + 48))(v27, 1, v40) == 1)
      {
        sub_1000038A4(v27, &qword_100523640, qword_100451520);
        v72 = 0;
      }

      else
      {
        v44 = &v27[*(v40 + 36)];
        RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
        (*(v17 + 104))(v21, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v16);
        v72 = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
        v45 = *(v17 + 8);
        v45(v21, v16);
        v45(v23, v16);
        sub_10002181C(v27, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      }

      v46 = type metadata accessor for RoutingItem.SelectionIndicator();
      v47 = *(*(v46 - 8) + 56);
      v47(v84, 1, 1, v46);
      v71 = sub_10001CB30();
      v48 = 1;
      if (([v80 matchesUID:v30] & 1) == 0)
      {
        v49 = sub_100018E6C();
        v48 = ((v50 >> 8) & 6 | (v50 >> 7) & 1) == 5;
        sub_100019550(v49, v51, v50);
      }

      LODWORD(v80) = v48;
      v52 = v81;
      [v81 volumeForOutputDeviceUID:v30];
      v54 = v53;
      LOBYTE(v52) = [v52 volumeControlCapabilitiesForOutputDeviceUID:v30];

      LODWORD(v81) = sub_10001805C(v52);
      v55 = v85;
      sub_10001C1E0(v85);
      v56 = type metadata accessor for RoutingItem.Attributes();
      v57 = *(*(v56 - 8) + 56);
      v57(v55, 0, 1, v56);
      v58 = type metadata accessor for HostedRoutingItem(0);
      v59 = v58[8];
      v47(a7 + v59, 1, 1, v46);
      v60 = a7 + v58[13];
      v61 = v58[15];
      v57(a7 + v61, 1, 1, v56);
      v62 = v78;
      *a7 = v79;
      a7[1] = v62;
      v63 = v83;
      a7[2] = v82;
      a7[3] = v63;
      v64 = v73;
      a7[4] = v74;
      a7[5] = v64;
      v65 = a7 + v58[16];
      v67 = v76;
      v66 = v77;
      *v65 = v77;
      *(v65 + 1) = v67;
      LODWORD(v55) = v75;
      *(v65 + 8) = v75;
      type metadata accessor for Symbols();

      sub_10001DAE0(v66, v67, v55);
      v68 = sub_10001D08C(v66, v67, v55);
      v70 = v69;
      sub_100019550(v66, v67, v55);
      a7[6] = v68;
      a7[7] = v70;
      *(a7 + v58[9]) = 1;
      *(a7 + v58[10]) = v72 & 1;
      sub_10001CECC(v84, a7 + v59, &unk_100524E90, &unk_1004519B0);
      *(a7 + v58[11]) = v71;
      *(a7 + v58[12]) = _swiftEmptyArrayStorage;
      *(a7 + v58[17]) = v80;
      *v60 = v54;
      v60[4] = 0;
      *(a7 + v58[14]) = v81;
      sub_10001CECC(v85, a7 + v61, &qword_100523AE8, &unk_100457500);
      return (*(*(v58 - 1) + 56))(a7, 0, 1, v58);
    }
  }

  v41 = type metadata accessor for HostedRoutingItem(0);
  v42 = *(*(v41 - 8) + 56);

  return v42(a7, 1, 1, v41);
}

unint64_t sub_10025D85C()
{
  _StringGuts.grow(_:)(32);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x3A736D657469202CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  type metadata accessor for HostedRoutingItem(0);
  v3._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000002ALL;
}

uint64_t sub_10025DF24()
{
  v1 = v0;
  v2 = 7104878;
  _StringGuts.grow(_:)(171);
  v3._countAndFlagsBits = 0x6979616C50776F4ELL;
  v3._object = 0xEE006F666E49676ELL;
  String.append(_:)(v3);
  v4._object = 0xED0000203A646920;
  v4._countAndFlagsBits = 0x202020202020200ALL;
  String.append(_:)(v4);
  if (*(v0 + 8))
  {
    v5 = *v0;
    v6 = *(v0 + 8);
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._object = 0x800000010043DBB0;
  v8._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_10025FBEC(*(v0 + 48), *(v0 + 56) | (*(v0 + 60) << 32));
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000010;
  v10._object = 0x800000010043DBD0;
  String.append(_:)(v10);
  if (*(v0 + 24))
  {
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000013;
  v14._object = 0x800000010043DBF0;
  String.append(_:)(v14);
  if (*(v0 + 40))
  {
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD000000000000017;
  v18._object = 0x800000010043DC10;
  String.append(_:)(v18);
  v19 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v20 = v19[9];
  type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  sub_100017F84(&qword_100523B68, &type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._object = 0x800000010043DC30;
  v22._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v22);
  v23 = v19[10];
  type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  sub_100017F84(&qword_100523B70, &type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo);
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x800000010043DC50;
  String.append(_:)(v25);
  v26._countAndFlagsBits = sub_100260060(*(v1 + v19[11]), *(v1 + v19[11] + 8), *(v1 + v19[11] + 16));
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0xD000000000000012;
  v27._object = 0x800000010043DC70;
  String.append(_:)(v27);
  if (*(v1 + 64))
  {
    v2 = dispatch thunk of ArtworkToken.description.getter();
    v29 = v28;
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  v30._countAndFlagsBits = v2;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  return 0;
}

uint64_t sub_10025E4CC(uint64_t a1)
{
  v2 = v1;
  v38[0] = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v4 = *(v38[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38[0]);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v38 - v10;
  v12 = type metadata accessor for HostedRoutingItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  String.hash(into:)();
  if (v1[3])
  {
    v19 = v1[2];
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v20 = v1[4];
  Hasher._combine(_:)(*(v20 + 16));
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v23 = *(v13 + 72);
    do
    {
      sub_10003271C(v22, v16, type metadata accessor for HostedRoutingItem);
      sub_100258AB4(a1);
      sub_10002181C(v16, type metadata accessor for HostedRoutingItem);
      v22 += v23;
      --v21;
    }

    while (v21);
  }

  v24 = type metadata accessor for HostedRoutingSourceSession(0);
  sub_10001D9AC(v1 + v24[7], v11, &qword_100523640, qword_100451520);
  if ((*(v4 + 48))(v11, 1, v38[0]) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100032E08(v11, v7, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    Hasher._combine(_:)(1u);
    sub_1002608A8(a1);
    sub_10002181C(v7, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  v25 = v24[8];
  type metadata accessor for RoutingControls();
  sub_100017F84(&qword_100523B78, &type metadata accessor for RoutingControls);
  dispatch thunk of Hashable.hash(into:)();
  v26 = (v2 + v24[9]);
  if (v26[1])
  {
    v27 = *v26;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v28 = v2 + v24[10];
  if (v28[4] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v29 = *v28;
    Hasher._combine(_:)(1u);
    if ((v29 & 0x7FFFFFFF) != 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    Hasher._combine(_:)(v30);
  }

  Hasher._combine(_:)(*(v2 + v24[11]));
  Hasher._combine(_:)(*(v2 + v24[12]));
  Hasher._combine(_:)(*(v2 + v24[13]));
  Hasher._combine(_:)(*(v2 + v24[14]));
  v31 = v2 + v24[15];
  v32 = *(v31 + 1);
  if (v32)
  {
    v33 = *v31;
    v34 = *(v31 + 4);
    v41 = *(v31 + 3);
    v42 = v34;
    v43 = *(v31 + 10);
    v35 = *(v31 + 1);
    v40 = *(v31 + 2);
    v39 = v35;
    v38[1] = v33;
    v38[2] = v32;
    Hasher._combine(_:)(1u);
    sub_100260EFC();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v24[16]));
  Hasher._combine(_:)(*(v2 + v24[17]));
  v36 = v24[18];
  type metadata accessor for Date();
  sub_100017F84(&qword_100523B80, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

void *sub_10025E9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_10025EA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v40);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for HostedRoutingSourceSession(0);
  v12 = *(*(v11 - 8) + 64);
  result = __chkstk_darwin(v11);
  v17 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 16);
  v39 = *(v18 + 16);
  if (!v39)
  {
    v34 = 1;
    return (*(v16 + 56))(a3, v34, 1, v14);
  }

  v37 = v14;
  v38 = a3;
  v19 = 0;
  v20 = v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v41 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v16;
  v35 = v20;
  v36 = v18;
  while (1)
  {
    if (v19 >= *(v18 + 16))
    {
      goto LABEL_32;
    }

    result = sub_10003271C(v20 + *(v16 + 72) * v19, v17, type metadata accessor for HostedRoutingSourceSession);
    v21 = *(v17 + 4);
    v43 = *(v21 + 16);
    if (v43)
    {
      break;
    }

LABEL_25:
    ++v19;
    v17 = v41;
    result = sub_10002181C(v41, type metadata accessor for HostedRoutingSourceSession);
    v16 = v42;
    v20 = v35;
    v18 = v36;
    if (v19 == v39)
    {
      v34 = 1;
      v14 = v37;
      a3 = v38;
      return (*(v16 + 56))(a3, v34, 1, v14);
    }
  }

  v22 = 0;
  v23 = v10 + *(v40 + 64);
  v44 = v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  while (v22 < *(v21 + 16))
  {
    v24 = v7;
    sub_10003271C(v44 + *(v7 + 72) * v22, v10, type metadata accessor for HostedRoutingItem);
    v25 = *v23;
    v26 = *(v23 + 8);
    v27 = (v26 >> 8) & 6 | (v26 >> 7) & 1;
    if ((v27 - 1) >= 5)
    {
      if (v27)
      {
        goto LABEL_19;
      }

      v26 = *(v25 + 32);
      v25 = *(v25 + 16);
    }

    if ((v26 >> 11) - 8 <= 2)
    {
      v28 = *(v25 + 16);
      v29 = (v28 + 40);
      v30 = *(v28 + 16) + 1;
      while (--v30)
      {
        if (*(v29 - 1) != a1 || *v29 != a2)
        {
          v29 += 5;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

LABEL_19:
    if (*v10 == a1 && v10[1] == a2)
    {
LABEL_27:
      sub_10002181C(v10, type metadata accessor for HostedRoutingItem);
LABEL_28:
      a3 = v38;
      sub_100032E08(v41, v38, type metadata accessor for HostedRoutingSourceSession);
      v34 = 0;
      v14 = v37;
      v16 = v42;
      return (*(v16 + 56))(a3, v34, 1, v14);
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = sub_10002181C(v10, type metadata accessor for HostedRoutingItem);
    if (v33)
    {
      goto LABEL_28;
    }

    v7 = v24;
    if (++v22 == v43)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10025EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v33);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for HostedRoutingSourceSession(0);
  v11 = *(v38 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v38);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    v32 = a3;
    v18 = 0;
    v41 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    while (v18 < *(v16 + 16))
    {
      sub_10003271C(v41 + *(v11 + 72) * v18, v15, type metadata accessor for HostedRoutingSourceSession);
      if (*v15 != 0x4C41434F4CLL || v15[1] != 0xE500000000000000)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          v20 = v15[4];
          v37 = *(v20 + 16);
          if (v37)
          {
            v21 = 0;
            v40 = v10 + *(v33 + 64);
            v39 = v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
            v35 = v17;
            v36 = v7;
            v34 = v20;
            do
            {
              if (v21 >= *(v20 + 16))
              {
                goto LABEL_38;
              }

              sub_10003271C(v39 + *(v7 + 72) * v21, v10, type metadata accessor for HostedRoutingItem);
              v22 = *v40;
              v23 = *(v40 + 8);
              v24 = (v23 >> 8) & 6 | (v23 >> 7) & 1;
              if ((v24 - 1) >= 5)
              {
                if (v24)
                {
                  goto LABEL_25;
                }

                v23 = *(v22 + 32);
                v22 = *(v22 + 16);
              }

              if ((v23 >> 11) - 8 <= 2)
              {
                v25 = *(v22 + 16);
                v26 = (v25 + 40);
                v27 = *(v25 + 16) + 1;
                while (--v27)
                {
                  if (*(v26 - 1) != a1 || *v26 != a2)
                  {
                    v26 += 5;
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_32;
                }
              }

LABEL_25:
              if (*v10 == a1 && v10[1] == a2)
              {
LABEL_32:
                sub_10002181C(v10, type metadata accessor for HostedRoutingItem);
LABEL_33:
                a3 = v32;
                sub_100032E08(v15, v32, type metadata accessor for HostedRoutingSourceSession);
                v31 = 0;
                return (*(v11 + 56))(a3, v31, 1, v38);
              }

              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
              result = sub_10002181C(v10, type metadata accessor for HostedRoutingItem);
              v7 = v36;
              if (v30)
              {
                goto LABEL_33;
              }

              ++v21;
              v20 = v34;
              v17 = v35;
            }

            while (v21 != v37);
          }
        }
      }

      ++v18;
      result = sub_10002181C(v15, type metadata accessor for HostedRoutingSourceSession);
      if (v18 == v17)
      {
        v31 = 1;
        a3 = v32;
        return (*(v11 + 56))(a3, v31, 1, v38);
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    v31 = 1;
    return (*(v11 + 56))(a3, v31, 1, v38);
  }

  return result;
}

uint64_t sub_10025F1A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HostedRoutingItem(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HostedRoutingSourceSession(0);
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 16);
  v27 = *(v15 + 16);
  if (v27)
  {
    v25 = v11;
    v26 = a1;
    v16 = 0;
    v17 = *(v12 + 80);
    v28 = v12;
    v29 = v15 + ((v17 + 32) & ~v17);
    while (v16 < *(v15 + 16))
    {
      sub_10003271C(v29 + *(v12 + 72) * v16, v14, type metadata accessor for HostedRoutingSourceSession);
      if (*v14 != 0x4C41434F4CLL || v14[1] != 0xE500000000000000)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          v19 = v14[4];
          v20 = *(v19 + 16);
          if (v20)
          {
            v21 = 0;
            while (v21 < *(v19 + 16))
            {
              sub_10003271C(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, type metadata accessor for HostedRoutingItem);
              v22 = *&v7[*(v3 + 64) + 16];
              if (((v22 >> 8) & 6 | (v22 >> 7) & 1) != 1)
              {
                sub_10002181C(v7, type metadata accessor for HostedRoutingItem);
                a1 = v26;
                sub_100032E08(v14, v26, type metadata accessor for HostedRoutingSourceSession);
                v23 = 0;
                v11 = v25;
                v12 = v28;
                return (*(v12 + 56))(a1, v23, 1, v11);
              }

              ++v21;
              result = sub_10002181C(v7, type metadata accessor for HostedRoutingItem);
              if (v20 == v21)
              {
                goto LABEL_3;
              }
            }

            __break(1u);
            break;
          }
        }
      }

LABEL_3:
      ++v16;
      result = sub_10002181C(v14, type metadata accessor for HostedRoutingSourceSession);
      v12 = v28;
      if (v16 == v27)
      {
        v23 = 1;
        v11 = v25;
        a1 = v26;
        return (*(v12 + 56))(a1, v23, 1, v11);
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 1;
    return (*(v12 + 56))(a1, v23, 1, v11);
  }

  return result;
}

uint64_t sub_10025F4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - v11;
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if ([a1 isAirPlayActive])
  {
    v15 = [a1 deviceUID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      (*(*v2 + 112))(v17, v19);

      sub_10001D9AC(v14, v12, &qword_100523B88, &unk_100451A50);
      v20 = type metadata accessor for HostedRoutingSourceSession(0);
      LODWORD(v19) = (*(*(v20 - 8) + 48))(v12, 1, v20);
      v21 = sub_1000038A4(v12, &qword_100523B88, &unk_100451A50);
      if (v19 == 1)
      {
        (*(*v2 + 120))(v21);
        sub_1000038A4(v14, &qword_100523B88, &unk_100451A50);
        sub_10003AEF0(v9, v14, &qword_100523B88, &unk_100451A50);
      }

      return sub_10003AEF0(v14, a2, &qword_100523B88, &unk_100451A50);
    }
  }

  else
  {
    v15 = 0;
  }

  v23 = type metadata accessor for HostedRoutingSourceSession(v15);
  v24 = *(*(v23 - 8) + 56);

  return v24(a2, 1, 1, v23);
}

uint64_t sub_10025F770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_10003271C(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v12, type metadata accessor for HostedRoutingSourceSession);
      v16 = *v12 == a1 && v12[1] == a2;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100032E08(v12, a3, type metadata accessor for HostedRoutingSourceSession);
        v17 = 0;
        return (*(v8 + 56))(a3, v17, 1, v7);
      }

      ++v15;
      result = sub_10002181C(v12, type metadata accessor for HostedRoutingSourceSession);
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v17 = 1;
    return (*(v8 + 56))(a3, v17, 1, v7);
  }

  return result;
}

uint64_t sub_10025F91C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  (*(*v1 + 136))(v1[3], v1[4]);
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return sub_100032E08(v6, a1, type metadata accessor for HostedRoutingSourceSession);
  }

  __break(1u);
  return result;
}

uint64_t sub_10025FA28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10025FA80(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = a1 + 16;
  v2 = v3;
  if (v3)
  {
    v4 = (result + 16 * v2);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10025FAC0(void *result)
{
  if (result[2])
  {
    v1 = result[4];
    v2 = result[5];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10025FAFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE4(a4) - 2 >= 3)
  {
    if (BYTE4(a4) == 1)
    {
      sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
      v9 = sub_10033D3B4();
    }

    else
    {
      sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
      v9 = sub_10033D380();
    }

    return v9 & 1;
  }

  else
  {
    v6 = *(a3 + 16);
    v4 = a3 + 16;
    v5 = v6;
    if (v6)
    {
      v7 = (v4 + 16 * v5);
      if (*v7 == result && v7[1] == a2)
      {
        return 1;
      }

      else
      {

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10025FBEC(uint64_t a1, uint64_t a2)
{
  if (BYTE4(a2) <= 1u)
  {
    if (BYTE4(a2))
    {
      _StringGuts.grow(_:)(16);

      v9 = 0x74736163646F702ELL;
      goto LABEL_11;
    }

    v2 = 0x636973756D2ELL;
    goto LABEL_9;
  }

  if (BYTE4(a2) != 2)
  {
    if (BYTE4(a2) == 3)
    {
      v2 = 0x736B6F6F622ELL;
    }

    else
    {
      v2 = 0x726568746F2ELL;
    }

LABEL_9:
    v3 = v2 & 0xFFFFFFFFFFFFLL | 0x28000000000000;
    goto LABEL_10;
  }

  v3 = 678851630;
LABEL_10:
  v9 = v3;
LABEL_11:
  v4._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 44;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

void sub_10025FD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (BYTE4(a3) <= 1u)
  {
    if (BYTE4(a3))
    {
      Hasher._combine(_:)(1uLL);
      v21 = *(a2 + 16);
      Hasher._combine(_:)(v21);
      if (v21)
      {
        v22 = (a2 + 40);
        do
        {
          v23 = *(v22 - 1);
          v24 = *v22;

          String.hash(into:)();

          v22 += 2;
          --v21;
        }

        while (v21);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v9 = *(a2 + 16);
      Hasher._combine(_:)(v9);
      if (v9)
      {
        v10 = (a2 + 40);
        do
        {
          v11 = *(v10 - 1);
          v12 = *v10;

          String.hash(into:)();

          v10 += 2;
          --v9;
        }

        while (v9);
      }
    }
  }

  else if (BYTE4(a3) == 2)
  {
    Hasher._combine(_:)(2uLL);
    v13 = *(a2 + 16);
    Hasher._combine(_:)(v13);
    if (v13)
    {
      v14 = (a2 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;

        String.hash(into:)();

        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }

  else if (BYTE4(a3) == 3)
  {
    Hasher._combine(_:)(3uLL);
    v5 = *(a2 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = (a2 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        String.hash(into:)();

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    Hasher._combine(_:)(4uLL);
    v17 = *(a2 + 16);
    Hasher._combine(_:)(v17);
    if (v17)
    {
      v18 = (a2 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        String.hash(into:)();

        v18 += 2;
        --v17;
      }

      while (v17);
    }
  }

  Hasher._combine(_:)(v3);
}