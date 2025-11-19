unint64_t sub_10001EE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  result = sub_10001EBD0(a1 & 0xFFFFFFFFFFLL, a3);
  v13 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v14 = 0;
    v21 = result + 32;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v24 + 16);
      if (v15)
      {
        v16 = *(v21 + 4 * v14);
        v17 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v18 = *(v22 + 72);
        do
        {
          sub_100021190(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_100020EDC(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v8, type metadata accessor for TaskHistory.Previous);
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      if (++v14 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

uint64_t sub_10001F060(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = a3 + 48;
    do
    {
      v8 = (v7 + 24 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= v3)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_24;
        }

        v10 = *v8;
        if (*v8)
        {
          break;
        }

        if ((a2 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_6:
        ++v9;
        v8 += 24;
        if (v6 == v3)
        {
          goto LABEL_17;
        }
      }

      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      if (*(v8 - 1) != v5)
      {
        goto LABEL_6;
      }

      v11 = *(v8 - 4);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091CC8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100091CC8((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v13];
      *(v14 + 8) = v11;
      v14[5] = v5;
      *(v14 + 48) = v10;
    }

    while (v6 != v3);
  }

LABEL_17:
  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100091AA8(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 4;
    do
    {
      v18 = _swiftEmptyArrayStorage[v17];
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_100091AA8((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      v17 += 3;
      ++v16;
      --v15;
    }

    while (v15);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10001F268(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  result = sub_10001F060(a1, a2 & 1, a4);
  v15 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v16 = 0;
    v23 = result + 32;
    while (v16 < *(v15 + 16))
    {
      v17 = *(v26 + 16);
      if (v17)
      {
        v18 = *(v23 + 4 * v16);
        v19 = v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v20 = *(v24 + 72);
        do
        {
          sub_100021190(v19, v13, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v21 = *(v10 + 2);
            result = sub_100020EDC(*v10);
            if (v21 == v18)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v10, type metadata accessor for TaskHistory.Previous);
          }

          v19 += v20;
          --v17;
        }

        while (v17);
      }

      if (++v16 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v22 = 0;
LABEL_13:

    return v22;
  }

  return result;
}

unint64_t sub_10001F4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v26 = a2;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  result = sub_1000201D4(a1, a3, a4);
  v15 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v16 = 0;
    v23 = result + 32;
    while (v16 < *(v15 + 16))
    {
      v17 = *(v26 + 16);
      if (v17)
      {
        v18 = *(v23 + 4 * v16);
        v19 = v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v20 = *(v24 + 72);
        do
        {
          sub_100021190(v19, v13, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v21 = *(v10 + 2);
            result = sub_100020EDC(*v10);
            if (v21 == v18)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v10, type metadata accessor for TaskHistory.Previous);
          }

          v19 += v20;
          --v17;
        }

        while (v17);
      }

      if (++v16 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v22 = 0;
LABEL_13:

    return v22;
  }

  return result;
}

uint64_t sub_10001F708(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = result;
  v4 = 0;
  if (result)
  {
    v5 = BYTE4(result) & 1;
  }

  else
  {
    v5 = 0;
  }

  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = BYTE4(result) & 1;
  }

  v7 = a2 + 40;
  do
  {
    v8 = (v7 + 12 * v4);
    v9 = v4;
    while (1)
    {
      if (v9 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }

      v10 = *(v8 - 1);
      v11 = *v8;
      if (v11 == 1)
      {
        break;
      }

      if ((v3 & 0x100000000) == 0 && v10 == v3)
      {
        v10 = v3;
        goto LABEL_22;
      }

LABEL_11:
      ++v9;
      v8 += 12;
      if (v4 == v2)
      {
        goto LABEL_27;
      }
    }

    if (v10)
    {
      if (v5)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = 0;
LABEL_22:
    v21 = *(v8 - 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    v22 = v7;
    if ((result & 1) == 0)
    {
      result = sub_100091F08(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      result = sub_100091F08((v12 > 1), v13 + 1, 1);
      v14 = v13 + 1;
    }

    _swiftEmptyArrayStorage[2] = v14;
    v15 = _swiftEmptyArrayStorage + 12 * v13;
    *(v15 + 8) = v21;
    *(v15 + 9) = v10;
    v15[40] = v11;
    v7 = v22;
  }

  while (v4 != v2);
LABEL_27:
  v16 = _swiftEmptyArrayStorage[2];
  if (v16)
  {
    sub_100091AA8(0, v16, 0);
    v17 = _swiftEmptyArrayStorage[2];
    v18 = 32;
    do
    {
      v19 = *(_swiftEmptyArrayStorage + v18);
      v20 = _swiftEmptyArrayStorage[3];
      if (v17 >= v20 >> 1)
      {
        sub_100091AA8((v20 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      *(&_swiftEmptyArrayStorage[4] + v17) = v19;
      v18 += 12;
      ++v17;
      --v16;
    }

    while (v16);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10001F940(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  result = sub_10001F708(a1 | ((HIDWORD(a1) & 1) << 32), a3);
  v13 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v14 = 0;
    v22 = result + 32;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v25 + 16);
      if (v15)
      {
        v16 = *(v22 + 4 * v14);
        v17 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v18 = *(v23 + 72);
        do
        {
          sub_100021190(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_100020EDC(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v8, type metadata accessor for TaskHistory.Previous);
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      if (++v14 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

unint64_t sub_10001FB84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t))
{
  v28 = a3;
  v9 = type metadata accessor for TaskHistory.Previous(0);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  result = sub_10001FF7C(a1, a2 & 1, a4, a5);
  v17 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v18 = 0;
    v25 = result + 32;
    while (v18 < *(v17 + 16))
    {
      v19 = *(v28 + 16);
      if (v19)
      {
        v20 = *(v25 + 4 * v18);
        v21 = v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v22 = *(v26 + 72);
        do
        {
          sub_100021190(v21, v15, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v15, v12, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v23 = *(v12 + 2);
            result = sub_100020EDC(*v12);
            if (v23 == v20)
            {
              v24 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v12, type metadata accessor for TaskHistory.Previous);
          }

          v21 += v22;
          --v19;
        }

        while (v19);
      }

      if (++v18 == v27)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v24 = 0;
LABEL_13:

    return v24;
  }

  return result;
}

void *sub_10001FE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t))
{
  v20[0] = a1;
  v20[1] = a2;
  v18[2] = v20;

  v8 = a5(a4, v18, a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = _swiftEmptyArrayStorage;
    v10 = v8;
    sub_100091AA8(0, v9, 0);
    v11 = v10;
    v12 = v19;
    v13 = v19[2];
    v14 = 32;
    do
    {
      v15 = *(v11 + v14);
      v19 = v12;
      v16 = v12[3];
      if (v13 >= v16 >> 1)
      {
        sub_100091AA8((v16 > 1), v13 + 1, 1);
        v11 = v10;
        v12 = v19;
      }

      v12[2] = v13 + 1;
      *(v12 + v13 + 8) = v15;
      v14 += 24;
      ++v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t sub_10001FF7C(uint64_t result, char a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    goto LABEL_17;
  }

  v7 = result;
  v8 = 0;
  v9 = a3 + 48;
  do
  {
    v10 = (v9 + 24 * v8);
    v11 = v8;
    while (1)
    {
      if (v11 >= v4)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_24;
      }

      v12 = *(v10 - 1);
      v13 = *v10;
      if (v13 != 1)
      {
        break;
      }

      if (a2)
      {
        goto LABEL_12;
      }

LABEL_5:
      ++v11;
      v10 += 24;
      if (v8 == v4)
      {
        goto LABEL_17;
      }
    }

    if ((a2 & 1) != 0 || v12 != v7)
    {
      goto LABEL_5;
    }

    v12 = v7;
LABEL_12:
    v22 = *(v10 - 4);
    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = v9;
    if ((result & 1) == 0)
    {
      result = a4(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = a4(v14 > 1, v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[3 * v15];
    *(v16 + 8) = v22;
    v16[5] = v12;
    *(v16 + 48) = v13;
    v9 = v23;
  }

  while (v8 != v4);
LABEL_17:
  v17 = _swiftEmptyArrayStorage[2];
  if (v17)
  {
    sub_100091AA8(0, v17, 0);
    v18 = _swiftEmptyArrayStorage[2];
    v19 = 4;
    do
    {
      v20 = _swiftEmptyArrayStorage[v19];
      v21 = _swiftEmptyArrayStorage[3];
      if (v18 >= v21 >> 1)
      {
        sub_100091AA8((v21 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      *(&_swiftEmptyArrayStorage[4] + v18) = v20;
      v19 += 3;
      ++v18;
      --v17;
    }

    while (v17);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000201D4(uint64_t result, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v4 = 0;
  v5 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 24;
LABEL_2:
  v8 = (v7 + 8 * v4);
  while (v6 != v4)
  {
    if (v4 >= v6)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_19;
    }

    v10 = *(v8 + 12);
    v8 += 2;
    ++v4;
    if (v10 == v5)
    {
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = a3(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = a3(v12 > 1, v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[v13];
      *(v14 + 8) = v11;
      *(v14 + 36) = v5;
      v4 = v9;
      goto LABEL_2;
    }
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100091AA8(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 4;
    do
    {
      v18 = _swiftEmptyArrayStorage[v17];
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_100091AA8((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      ++v17;
      ++v16;
      --v15;
    }

    while (v15);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000203BC(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 24;
  v5 = result & 1;
LABEL_2:
  v6 = (v4 + 8 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 12);
    v6 += 2;
    ++v2;
    if (v8 == v5)
    {
      v9 = *v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100092208(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_100092208((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[v11];
      *(v12 + 8) = v9;
      *(v12 + 36) = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100091AA8(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 4;
    do
    {
      v16 = _swiftEmptyArrayStorage[v15];
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100091AA8((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100020580(char a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  result = sub_1000203BC(a1 & 1, a3);
  v13 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v14 = 0;
    v21 = result + 32;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v24 + 16);
      if (v15)
      {
        v16 = *(v21 + 4 * v14);
        v17 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v18 = *(v22 + 72);
        do
        {
          sub_100021190(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_100021128(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_100020EDC(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_100020E7C(v8, type metadata accessor for TaskHistory.Previous);
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      if (++v14 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

void *sub_1000207A4(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        a2(v7 > 1, v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9;
      *(&_swiftEmptyArrayStorage[4] + v8) = v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage[2];
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  sub_100091AA8(0, v9, 0);
  v10 = _swiftEmptyArrayStorage[2];
  v11 = 32;
  do
  {
    v12 = *(_swiftEmptyArrayStorage + v11);
    v13 = _swiftEmptyArrayStorage[3];
    if (v10 >= v13 >> 1)
    {
      sub_100091AA8((v13 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v12;
    v11 += 4;
    ++v10;
    --v9;
  }

  while (v9);
LABEL_14:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100020944(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100020950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Environment.AvailableFileSystemSpace(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Environment.AvailableFileSystemSpace(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100020B88()
{
  result = qword_1005CD288;
  if (!qword_1005CD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD288);
  }

  return result;
}

unint64_t sub_100020BE0()
{
  result = qword_1005CD290;
  if (!qword_1005CD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD290);
  }

  return result;
}

unint64_t sub_100020C34(uint64_t a1)
{
  result = sub_100020C5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100020C5C()
{
  result = qword_1005CD310;
  if (!qword_1005CD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD310);
  }

  return result;
}

unint64_t sub_100020CB4()
{
  result = qword_1005CD318;
  if (!qword_1005CD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD318);
  }

  return result;
}

uint64_t sub_100020D10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

uint64_t sub_100020D58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100020E0C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020E44()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100020EDC(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100021128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000211F8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10002120C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_100021254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000212A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1000212F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100021348(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100021360(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

BOOL sub_1000213AC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static TextPartEnumerationResult.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_1000213C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return TextPartEnumerationResult.hashValue.getter(*v1);
}

void sub_1000213D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  TextPartEnumerationResult.hash(into:)(a1, *v2);
}

Swift::Int sub_1000213E0(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  TextPartEnumerationResult.hash(into:)(v7, *v2);
  return sub_1004A6F14();
}

uint64_t sub_100021428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5C54();
  v5 = sub_10003842C(v4, a1);

  v6 = type metadata accessor for DependencyGraph.State();
  swift_getTupleTypeMetadata2();
  v7 = sub_1004A5C54();
  sub_1000219E0(v7, a1, v6, a2);

  return v5;
}

uint64_t sub_1000214FC()
{
  if ((sub_100037CB4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DependencyGraph.State();
  swift_getWitnessTable();

  return sub_1004A5544();
}

uint64_t sub_1000215C0()
{
  sub_100037DE4();
  type metadata accessor for DependencyGraph.State();
  swift_getWitnessTable();

  return sub_1004A5534();
}

Swift::Int sub_100021660()
{
  sub_1004A6E94();
  sub_1000215C0();
  return sub_1004A6F14();
}

Swift::Int sub_1000216E0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_100021660();
}

uint64_t sub_1000216F4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  return sub_1000215C0();
}

Swift::Int sub_100021708(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_1000215C0();
  return sub_1004A6F14();
}

uint64_t sub_100021754(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  return sub_1000214FC() & 1;
}

uint64_t sub_10002179C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = sub_100021CCC(a1, *(a2 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v9;
  a3[3] = v11;
  return result;
}

unint64_t sub_1000217FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1004A5554();

  return sub_100021858(a1, v9, a2, a3);
}

unint64_t sub_100021858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8 = __chkstk_darwin(a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = sub_1004A5724();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_1000219E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1004A5C94())
  {
    sub_1004A6A84();
    v13 = sub_1004A6A74();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_1004A5CC4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1004A5C74())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1004A6784();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1000217FC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_100021CCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100021428(v7, v8);
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  if (sub_1004A5CB4())
  {
    v21 = v5;
    for (i = 0; ; ++i)
    {
      v14 = sub_1004A5C74();
      sub_1004A5C34();
      if (v14)
      {
        (*(v4 + 16))(v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, a2);
        v15 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1004A6784();
        if (v21 != 8)
        {
          __break(1u);
          return result;
        }

        v22 = result;
        (*(v4 + 16))(v6, &v22, a2);
        swift_unknownObjectRelease();
        v15 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_10:
          __break(1u);
          return v23;
        }
      }

      v16 = type metadata accessor for DependencyGraph();
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = type metadata accessor for DirectedAcyclicGraph();
      sub_100037500(v6, v19);
      (*(v4 + 8))(v6, a2);
      if (v15 == sub_1004A5CB4())
      {
        return v23;
      }
    }
  }

  return v9;
}

uint64_t sub_100021F30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100021F6C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100021F78(uint64_t *a1, int a2)
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

uint64_t sub_100021FC0(uint64_t result, int a2, int a3)
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

Swift::Int sub_100022038()
{
  result = sub_100093190(&off_100598778);
  qword_1005DDEC0 = result;
  return result;
}

uint64_t sub_100022060()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004CEA80;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v1 + 32) = type metadata accessor for FetchSearchResultMessages(0);
  sub_100026044();

  sub_1004A6674();
  *(v1 + 80) = type metadata accessor for FindMissingMessages(0);

  sub_1004A6674();
  *(v1 + 128) = &type metadata for PurgeMessagesOutsideWindowOfInterest;

  sub_1004A6674();
  return v1;
}

void sub_100022170(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  sub_100025E34(a1, &v25 - v9, type metadata accessor for MailboxTaskLogger);
  sub_100025E34(a1, v7, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000258C0(v2, v32);
  sub_1000258C0(v2, v30);
  sub_1000258C0(v2, v29);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v13 = 68160003;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v28);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    LOWORD(v14) = *(v14 + 12);
    sub_100025E9C(v7, type metadata accessor for MailboxTaskLogger);
    *(v13 + 29) = v14;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v16 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);

    sub_100025E9C(v10, type metadata accessor for MailboxTaskLogger);
    v26 = v16;
    v27 = v15;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v28);

    *(v13 + 43) = v19;
    *(v13 + 51) = 2048;
    v20 = *(v33 + 16);
    sub_1000258F8(v32);
    *(v13 + 53) = v20;
    *(v13 + 61) = 2082;
    LOBYTE(v26) = v31;
    v21 = sub_1000DCF64(v30[17]);
    v23 = v22;
    sub_1000258F8(v30);
    v24 = sub_10015BA6C(v21, v23, &v28);

    *(v13 + 63) = v24;
    *(v13 + 71) = 1024;
    LODWORD(v24) = v29[105];
    sub_1000258F8(v29);
    *(v13 + 73) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID batch(es): %{public}s, fetching highest-mod-seq: %{BOOL}d", v13, 0x4Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000258F8(v29);
    sub_1000258F8(v32);
    sub_100025E9C(v7, type metadata accessor for MailboxTaskLogger);

    sub_100025E9C(v10, type metadata accessor for MailboxTaskLogger);
    sub_1000258F8(v30);
  }
}

uint64_t sub_100022514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (!*(v6 + 112))
  {
    v13 = (a5 + *(type metadata accessor for MailboxSyncState() + 48));
    v14 = v13[3];
    v15 = v13[4];
    sub_10002587C(v13, v14);
    *(v6 + 112) = (*(v15 + 24))(v14, v15);
  }

  if (*(v6 + 128) == 1)
  {
    v16 = a5 + *(type metadata accessor for MailboxSyncState() + 48);
    v17 = *(v16 + 40);
    if ((*(v16 + 48) & 1) == 0)
    {
      v17 = *(v17 + 16);
    }

    *(v6 + 120) = v17;
    *(v6 + 128) = 0;
  }

  v18 = &off_1005987A0;
  v19 = &off_1005988A8;
  if (*(v6 + 105))
  {
    v18 = &off_100598810;
    v19 = &off_100598940;
  }

  if (*(v6 + 104))
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  sub_100022658(a1, a2, a3, a4, v20, a6);
}

uint64_t sub_100022658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = sub_10000C9C0(&qword_1005CD540, &qword_1004CF318);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v30[-v15];
  v17 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v30[-v19];
  v21 = *v6;
  v22 = *(v6 + 8);
  v30[12] = *(v6 + 12);
  sub_1000239E4(a1, a2, a3, a4, v21, v16);
  v23 = sub_10000C9C0(&qword_1005CD548, &unk_1004CF320);
  if ((*(*(v23 - 8) + 48))(v16, 1, v23) == 1)
  {
    sub_100025F40(v16, &qword_1005CD540, &qword_1004CF318);
    v24 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
    return (*(*(v24 - 8) + 56))(a6, 1, 1, v24);
  }

  else
  {
    v26 = *v16;
    sub_100025FDC(v16 + *(v23 + 48), v20, &qword_1005CD1D0, &unk_1004CF2C0);
    v27 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
    v28 = a6 + *(v27 + 48);
    *a6 = v26;
    v29 = v28 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
    sub_100025FDC(v20, v28, &unk_1005D91B0, &unk_1004CF400);
    *v29 = a5;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(a6, 0, 1, v27);
  }
}

void sub_10002291C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v76 - v9;
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  __chkstk_darwin(v16);
  v18 = &v76 - v17;
  __chkstk_darwin(v19);
  v21 = &v76 - v20;
  v22 = *(a2 + 112);
  if (v22)
  {
    v23 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
    v24 = *(v23 + 24);
    v25 = *(v23 + 32);
    sub_100025928(v23, v24);
    (*(v25 + 32))(v22, v24, v25);
  }

  v26 = *(type metadata accessor for MailboxSyncState() + 48);
  v82 = a1;
  v27 = (a1 + v26);
  v29 = *(a1 + v26 + 24);
  v28 = *(a1 + v26 + 32);
  v77 = v27;
  sub_10002587C(v27, v29);
  (*(v28 + 40))(v29, v28);
  v31 = *(v30 + 16);

  if (!v31)
  {
    sub_100025E34(a3, v15, type metadata accessor for MailboxTaskLogger);
    sub_100025E34(a3, v12, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000258C0(a2, &v86);
    v43 = sub_1004A4A54();
    v44 = sub_1004A6034();
    if (os_log_type_enabled(v43, v44))
    {
      v78 = a3;
      v45 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v45 = 68159491;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v46 = v79;
      v47 = &v12[*(v79 + 20)];
      *(v45 + 10) = *v47;
      *(v45 + 11) = 2082;
      v48 = &v15[*(v46 + 20)];
      *(v45 + 13) = sub_10015BA6C(*(v48 + 1), *(v48 + 2), &v85);
      *(v45 + 21) = 1040;
      *(v45 + 23) = 2;
      *(v45 + 27) = 512;
      v49 = *(v47 + 12);
      sub_100025E9C(v12, type metadata accessor for MailboxTaskLogger);
      *(v45 + 29) = v49;
      *(v45 + 31) = 2160;
      *(v45 + 33) = 0x786F626C69616DLL;
      *(v45 + 41) = 2085;
      v50 = *(v48 + 4);
      v51 = *(v48 + 10);

      sub_100025E9C(v15, type metadata accessor for MailboxTaskLogger);
      v83 = v50;
      v84 = v51;
      v52 = sub_1004A5824();
      v54 = sub_10015BA6C(v52, v53, &v85);

      *(v45 + 43) = v54;
      *(v45 + 51) = 2048;
      if (v88)
      {
        v55 = *(v88 + 16);
      }

      else
      {
        v55 = 0;
      }

      v57 = v81;
      sub_1000258F8(&v86);
      *(v45 + 53) = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed all %ld changes without UID.", v45, 0x3Du);
      swift_arrayDestroy();

      a3 = v78;
      goto LABEL_17;
    }

    sub_1000258F8(&v86);
    sub_100025E9C(v12, type metadata accessor for MailboxTaskLogger);

    v56 = v15;
LABEL_12:
    sub_100025E9C(v56, type metadata accessor for MailboxTaskLogger);
    v57 = v81;
LABEL_17:
    v58 = v80;
    goto LABEL_18;
  }

  sub_100025E34(a3, v21, type metadata accessor for MailboxTaskLogger);
  sub_100025E34(a3, v18, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000258C0(a2, &v86);
  v32 = sub_1004A4A54();
  v33 = sub_1004A6034();
  if (!os_log_type_enabled(v32, v33))
  {
    sub_1000258F8(&v86);
    sub_100025E9C(v18, type metadata accessor for MailboxTaskLogger);

    v56 = v21;
    goto LABEL_12;
  }

  v78 = a3;
  v34 = swift_slowAlloc();
  v76 = swift_slowAlloc();
  v85 = v76;
  *v34 = 68159747;
  *(v34 + 4) = 2;
  *(v34 + 8) = 256;
  v35 = v79;
  v36 = &v18[*(v79 + 20)];
  *(v34 + 10) = *v36;
  *(v34 + 11) = 2082;
  v37 = &v21[*(v35 + 20)];
  *(v34 + 13) = sub_10015BA6C(*(v37 + 1), *(v37 + 2), &v85);
  *(v34 + 21) = 1040;
  *(v34 + 23) = 2;
  *(v34 + 27) = 512;
  LOWORD(v36) = *(v36 + 12);
  sub_100025E9C(v18, type metadata accessor for MailboxTaskLogger);
  *(v34 + 29) = v36;
  *(v34 + 31) = 2160;
  *(v34 + 33) = 0x786F626C69616DLL;
  *(v34 + 41) = 2085;
  v38 = *(v37 + 4);
  LODWORD(v36) = *(v37 + 10);

  sub_100025E9C(v21, type metadata accessor for MailboxTaskLogger);
  v83 = v38;
  v84 = v36;
  v39 = sub_1004A5824();
  v41 = sub_10015BA6C(v39, v40, &v85);

  *(v34 + 43) = v41;
  *(v34 + 51) = 2048;
  if (v88)
  {
    v42 = *(v88 + 16);
  }

  else
  {
    v42 = 0;
  }

  v58 = v80;
  sub_1000258F8(&v86);
  *(v34 + 53) = v42;
  *(v34 + 61) = 2048;
  *(v34 + 63) = v31;
  _os_log_impl(&_mh_execute_header, v32, v33, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld changes without UID, still %ld remaining.", v34, 0x47u);
  swift_arrayDestroy();

  a3 = v78;
  v57 = v81;
LABEL_18:
  v59 = v82;
  if (!*(v82 + 32))
  {
    v60 = *(v82 + 24);
    sub_100025E34(a3, v57, type metadata accessor for MailboxTaskLogger);
    sub_100025E34(a3, v58, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v61 = sub_1004A4A54();
    v62 = sub_1004A6034();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v83 = v81;
      *v63 = 68159491;
      v78 = a3;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      v64 = v79;
      v65 = v58 + *(v79 + 20);
      *(v63 + 10) = *v65;
      *(v63 + 11) = 2082;
      v66 = v57;
      v67 = v57 + *(v64 + 20);
      *(v63 + 13) = sub_10015BA6C(*(v67 + 8), *(v67 + 16), &v83);
      *(v63 + 21) = 1040;
      *(v63 + 23) = 2;
      *(v63 + 27) = 512;
      v68 = *(v65 + 24);
      sub_100025E9C(v58, type metadata accessor for MailboxTaskLogger);
      *(v63 + 29) = v68;
      *(v63 + 31) = 2160;
      *(v63 + 33) = 0x786F626C69616DLL;
      *(v63 + 41) = 2085;
      v69 = *(v67 + 32);
      v70 = *(v67 + 40);

      sub_100025E9C(v66, type metadata accessor for MailboxTaskLogger);
      v86 = v69;
      v87 = v70;
      a3 = v78;
      v71 = sub_1004A5824();
      v73 = sub_10015BA6C(v71, v72, &v83);

      *(v63 + 43) = v73;
      *(v63 + 51) = 2048;
      *(v63 + 53) = v60;
      _os_log_impl(&_mh_execute_header, v61, v62, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Setting mailbox HIGHESTMODSEQ to %llu.", v63, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100025E9C(v58, type metadata accessor for MailboxTaskLogger);

      sub_100025E9C(v57, type metadata accessor for MailboxTaskLogger);
    }

    v74 = v77[3];
    v75 = v77[4];
    sub_100025928(v77, v74);
    (*(v75 + 64))(v60, a3, v74, v75);
    v59 = v82;
  }

  sub_1000DE294(v59, *(a2 + 120), *(a2 + 128), a3, *(a2 + 136), *(a2 + 144) | (*(a2 + 148) << 32));
}

uint64_t sub_10002333C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_100023390()
{
  if (qword_1005CCDF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100023404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 136);
  v11 = *(v5 + 144);
  v12 = *(v5 + 148);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_100024A18(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_100024C54(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1000234D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_10000C9C0(&qword_1005CD500, &unk_1004CF2D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33[-v16];
  v18 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v33[-v21];
  v24 = *(v7 + 136);
  v23 = v7 + 136;
  v25 = *(v23 + 8);
  v34 = *(v23 + 12);
  sub_100023C8C(a1, a2, a3, a4, a5, a7, v24, v25 | (v34 << 32), v20);
  v26 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
  {
    v27 = &qword_1005CD500;
    v28 = &unk_1004CF2D0;
    v29 = v17;
  }

  else
  {
    v30 = *v17;
    v31 = sub_100025FDC(v17 + *(v26 + 48), v22, &unk_1005D91B0, &unk_1004CF400);
    __chkstk_darwin(v31);
    *&v33[-16] = v22;
    sub_100023840(v30, sub_100025D54, &v33[-32]);
    v29 = v22;
    v27 = &unk_1005D91B0;
    v28 = &unk_1004CF400;
  }

  return sub_100025F40(v29, v27, v28);
}

uint64_t sub_10002376C(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;

    sub_1000BE940(&v9, v2, v3, 0, sub_100025874);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

size_t sub_100023840(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v8 = type metadata accessor for MessagesToRemoveHelper.Range();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v3;
  v14 = *(*v3 + 16);
  if (!v14)
  {
    return 1;
  }

  v18 = a3;
  v19 = a2;
  v15 = 0;
  while (1)
  {
    if (v15 >= v13[2])
    {
      __break(1u);
      goto LABEL_12;
    }

    v4 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    a2 = (*(v9 + 72) * v15);
    sub_100025E34(a2 + v13 + v4, v12, type metadata accessor for MessagesToRemoveHelper.Range);
    v16 = *v12;
    sub_100025E9C(v12, type metadata accessor for MessagesToRemoveHelper.Range);
    if (v16 == a1)
    {
      break;
    }

    if (v14 == ++v15)
    {
      return 1;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_8;
  }

LABEL_12:
  result = sub_100139854(v13);
  v13 = result;
LABEL_8:
  if (v15 >= v13[2])
  {
    __break(1u);
  }

  else
  {
    v19(a2 + v13 + v4);
    result = 0;
    *v3 = v13;
  }

  return result;
}

uint64_t sub_1000239E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v29 = a6;
  v11 = type metadata accessor for MessagesToRemoveHelper.Range();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v28 - v21;
  v31[0] = a1;
  v31[1] = a2;
  v31[2] = a3;
  v31[3] = a4;
  v30 = v31;
  sub_100079CE4(sub_100025FA0, a5, &v28 - v21);
  sub_100025FDC(v22, v19, &qword_1005CD4F0, &unk_1004CF2B0);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    v23 = sub_10000C9C0(&qword_1005CD548, &unk_1004CF320);
    return (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  }

  else
  {
    sub_100025DB0(v19, v15);
    v25 = sub_10000C9C0(&qword_1005CD548, &unk_1004CF320);
    v26 = *(v25 + 48);
    v27 = v29;
    *v29 = *v15;
    sub_10000E268(v15 + *(v11 + 20), v27 + v26, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025E9C(v15, type metadata accessor for MessagesToRemoveHelper.Range);
    return (*(*(v25 - 8) + 56))(v27, 0, 1, v25);
  }
}

uint64_t sub_100024A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v13 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v28 - v15;
  v17 = type metadata accessor for MessagesToRemoveHelper.Range();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v30 = v31;
  sub_100079CE4(sub_100025EFC, a7, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100025F40(v16, &qword_1005CD4F0, &unk_1004CF2B0);
    return 0;
  }

  else
  {
    sub_100025DB0(v16, v21);
    v22 = *v21;
    v23 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
    swift_allocBox();
    v24 = *(v23 + 48);
    v25 = v29;
    *v26 = a1;
    v26[1] = v25;
    sub_10000E268(v21 + *(v17 + 20), v26 + v24, &qword_1005CD1D0, &unk_1004CF2C0);

    sub_100025E9C(v21, type metadata accessor for MessagesToRemoveHelper.Range);
  }

  return v22;
}

uint64_t sub_100024C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v97 = &v84 - v17;
  v18 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v98 = (&v84 - v20);
  v21 = sub_10000C9C0(&qword_1005CD520, &qword_1004CF2F8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v92 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v93 = (&v84 - v25);
  __chkstk_darwin(v26);
  v94 = (&v84 - v27);
  __chkstk_darwin(v28);
  v99 = (&v84 - v29);
  v30 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  v42 = *(a7 + 16);
  if (v42)
  {
    v87 = v40;
    v88 = v41;
    v86 = v39;
    v89 = v37;
    v90 = &v84 - v38;
    v95 = a2;
    v91 = a1;
    v43 = *(type metadata accessor for MessagesToRemoveHelper.Range() - 8);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = *(v43 + 72);

    v46 = 0;
    while (1)
    {
      v47 = *(a7 + v44);
      if ((sub_100019844(v47, a3, a4, a5) & 1) != 0 && (sub_10009A290(v47, 0, a3, a4, a6) & 1) != 0 && (sub_10001F268(v47, 1, a4, a6) & 1) == 0)
      {
        break;
      }

      v44 += v45;
      if (v42 == ++v46)
      {
LABEL_21:
        v61 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
        v62 = v99;
        (*(*(v61 - 8) + 56))(v99, 1, 1, v61);
        goto LABEL_22;
      }
    }

    v85 = (v88 + 7);
    v88 += 6;
LABEL_8:
    if (v46 >= v42)
    {
      goto LABEL_34;
    }

    v48 = type metadata accessor for MessagesToRemoveHelper.Range();
    v49 = *(v48 - 8);
    v48 -= 8;
    v50 = a7 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v51 = *(v49 + 72);
    v52 = *(v48 + 36);
    v53 = v50 + v51 * v46 + *(v48 + 32);
    v84 = (v50 + v51 * v46);
    MessageIdentifierSet.subtracting(_:)(v53, v97);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v97, &unk_1005D91B0, &unk_1004CF400);
      v55 = 1;
    }

    else
    {
      v54 = v87;
      sub_100025FDC(v97, v87, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v54, v98, &qword_1005CD1D0, &unk_1004CF2C0);
      v55 = 0;
    }

    v56 = v89;
    (*v85)(v98, v55, 1, v89);
    if ((*v88)(v98, 1, v56) == 1)
    {
      sub_100025F40(v98, &qword_1005CD518, &qword_1004CF2F0);
      v57 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
      v58 = v94;
      (*(*(v57 - 8) + 56))(v94, 1, 1, v57);
      sub_100025F40(v58, &qword_1005CD520, &qword_1004CF2F8);
      while (!__OFADD__(v46++, 1))
      {
        if (v46 == v42)
        {
          goto LABEL_21;
        }

        if (v46 >= v42)
        {
          goto LABEL_33;
        }

        v60 = *(v50 + v46 * v51);
        if ((sub_100019844(v60, a3, a4, a5) & 1) != 0 && (sub_10009A290(v60, 0, a3, a4, a6) & 1) != 0 && (sub_10001F268(v60, 1, a4, a6) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v76 = v86;
    sub_100025FDC(v98, v86, &qword_1005CD1D0, &unk_1004CF2C0);
    v77 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
    v78 = *(v77 + 48);
    v79 = v84;
    v80 = v94;
    *v94 = *v84;
    sub_100025FDC(v76, v80 + v78, &qword_1005CD1D0, &unk_1004CF2C0);
    v81 = *(v77 - 8);
    v98 = *(v81 + 56);
    (v98)(v80, 0, 1, v77);
    sub_100025F40(v80, &qword_1005CD520, &qword_1004CF2F8);
    v82 = v93;
    sub_1000E10D0(v79, v93);
    v83 = v92;
    sub_10000E268(v82, v92, &qword_1005CD520, &qword_1004CF2F8);
    if ((*(v81 + 48))(v83, 1, v77) == 1)
    {
LABEL_35:

      __break(1u);
      return result;
    }

    v62 = v99;
    sub_100025FDC(v83, v99, &qword_1005CD528, &unk_1004CF300);
    sub_100025F40(v82, &qword_1005CD520, &qword_1004CF2F8);
    (v98)(v62, 0, 1, v77);
LABEL_22:

    v63 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
    v64 = (*(*(v63 - 8) + 48))(v62, 1, v63);
    v65 = v95;
    if (v64 == 1)
    {
      sub_100025F40(v62, &qword_1005CD520, &qword_1004CF2F8);
      return 0;
    }

    v67 = *v62;
    v68 = v90;
    sub_100025FDC(v62 + *(v63 + 48), v90, &qword_1005CD1D0, &unk_1004CF2C0);
    v69 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
    swift_allocBox();
    v70 = *(v69 + 48);
    *v71 = v91;
    v71[1] = v65;
    sub_100025FDC(v68, v71 + v70, &qword_1005CD1D0, &unk_1004CF2C0);

    return v67;
  }

  else if (a8 & 0x100000000) != 0 || (sub_10001F268(-1, 1, a4, a6))
  {
    return 0;
  }

  else
  {
    LODWORD(v101) = 1;
    LODWORD(v100) = a8;
    v72 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v101, &v100, &type metadata for UID, v72, &v102);
    v101 = v102;
    v100 = Range<>.init<A>(_:)(&v101, &type metadata for UID, v72);
    sub_100016D2C();
    sub_1004A7124();
    v73 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
    swift_allocBox();
    v74 = *(v73 + 48);
    *v75 = a1;
    v75[1] = a2;
    sub_100025FDC(v33, v75 + v74, &qword_1005CD1D0, &unk_1004CF2C0);

    return -1;
  }
}

__n128 sub_100025650(uint64_t a1, uint64_t a2)
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
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100025684(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 149))
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

uint64_t sub_1000256CC(uint64_t result, int a2, int a3)
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
    *(result + 148) = 0;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 149) = 1;
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

    *(result + 149) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002574C()
{
  result = qword_1005CD428;
  if (!qword_1005CD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD428);
  }

  return result;
}

unint64_t sub_1000257A4()
{
  result = qword_1005CD430;
  if (!qword_1005CD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD430);
  }

  return result;
}

unint64_t sub_1000257F8(uint64_t a1)
{
  result = sub_100025820();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100025820()
{
  result = qword_1005CD4E8;
  if (!qword_1005CD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD4E8);
  }

  return result;
}

void *sub_10002587C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100025928(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_100025978(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v43 = a5;
  v11 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v39 - v13);
  v15 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v39 - v17);
  v19 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v39 - v21;
  v23 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v39 - v25;
  if (((a3 >> 59) & 0x1E | (a3 >> 2) & 1) == 0xA)
  {
    v40 = a6;
    v41 = v6;
    v27 = swift_projectBox();
    sub_10000E268(v27, v18, &qword_1005CD4F8, &unk_1004CF790);
    v28 = *v18;
    v29 = v18 + *(v15 + 48);
    v30 = v18 + *(v15 + 64);
    if (v18[1] == a2)
    {
      v31 = sub_1000FFC98(a1, *v18);

      if (v31)
      {
        sub_100025FDC(v29, v26, &unk_1005D91B0, &unk_1004CF400);
        v32 = sub_100025FDC(v30, v22, &qword_1005CD1D0, &unk_1004CF2C0);
        v33 = *v41;
        __chkstk_darwin(v32);
        *(&v39 - 2) = v22;
        sub_100079CE4(sub_100025D2C, v34, v14);
        v35 = type metadata accessor for MessagesToRemoveHelper.Range();
        if ((*(*(v35 - 8) + 48))(v14, 1, v35) == 1)
        {
          sub_100025F40(v14, &qword_1005CD4F0, &unk_1004CF2B0);
        }

        else
        {
          v37 = *v14;
          sub_100025E9C(v14, type metadata accessor for MessagesToRemoveHelper.Range);
          v38 = sub_10006F78C(v37, 0, v42, v43, v40);
          if (v38)
          {
            __chkstk_darwin(v38);
            *(&v39 - 2) = v26;
            sub_100023840(v37, sub_100025D4C, (&v39 - 4));
          }
        }

        v30 = v22;
        v29 = v26;
      }
    }

    else
    {
      v36 = *v18;
    }

    sub_100025F40(v30, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
  }
}

uint64_t sub_100025DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesToRemoveHelper.Range();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100025E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025F40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000C9C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100025FDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C9C0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100026044()
{
  result = qword_1005CD568;
  if (!qword_1005CD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD568);
  }

  return result;
}

Swift::Int sub_100026098()
{
  result = sub_100093190(&off_100598A00);
  qword_1005DDEC8 = result;
  return result;
}

void sub_1000260C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  sub_1000118A4(a1, &v25 - v9);
  sub_1000118A4(a1, v7);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100026E5C(v2, v28);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v27);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v16 = *(v14 + 12);
    sub_100011908(v7);
    *(v13 + 29) = v16;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);

    sub_100011908(v10);
    v25 = v17;
    v26 = v15;
    v18 = sub_1004A5824();
    v20 = sub_10015BA6C(v18, v19, &v27);

    *(v13 + 43) = v20;
    *(v13 + 51) = 2082;
    LOBYTE(v25) = v30;
    v21 = sub_1000DCF64(v29);
    v23 = v22;
    sub_100026E94(v28);
    v24 = sub_10015BA6C(v21, v23, &v27);

    *(v13 + 53) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task: %{public}s", v13, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v7);

    sub_100011908(v10);
    sub_100026E94(v28);
  }
}

void sub_1000263A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = *(a2 + 112);
  v14 = *(type metadata accessor for MailboxSyncState() + 48);
  v34 = a1;
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 24);
  v17 = *(a1 + v14 + 32);
  sub_100025928(a1 + v14, v16);
  (*(v17 + 32))(v13, v16, v17);
  v18 = v15[3];
  v19 = v15[4];
  sub_10002587C(v15, v18);
  v20 = *((*(v19 + 24))(v18, v19) + 16);

  sub_1000118A4(a3, v12);
  sub_1000118A4(a3, v9);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  v21 = sub_1004A4A54();
  v22 = sub_1004A6034();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v23 = 68159747;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = *(v6 + 20);
    v32 = v20;
    v25 = &v9[v24];
    *(v23 + 10) = v9[v24];
    *(v23 + 11) = 2082;
    v26 = &v12[*(v6 + 20)];
    *(v23 + 13) = sub_10015BA6C(*(v26 + 1), *(v26 + 2), &v37);
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    LOWORD(v25) = *(v25 + 12);
    sub_100011908(v9);
    *(v23 + 29) = v25;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v27 = *(v26 + 4);
    LODWORD(v25) = *(v26 + 10);

    sub_100011908(v12);
    v35 = v27;
    v36 = v25;
    v28 = sub_1004A5824();
    v30 = sub_10015BA6C(v28, v29, &v37);

    *(v23 + 43) = v30;
    *(v23 + 51) = 2048;
    v31 = *(v13 + 16);

    *(v23 + 53) = v31;

    *(v23 + 61) = 2048;
    *(v23 + 63) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld changes without UID, still %ld remaining.", v23, 0x47u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100011908(v9);

    sub_100011908(v12);
  }

  sub_1000DE294(v34, *(a2 + 120), 0, a3, *(a2 + 128), *(a2 + 136) | (*(a2 + 140) << 32));
}

uint64_t sub_100026734()
{
  if (qword_1005CCE00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100026794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(v5 + 104))
  {
    v6 = &off_100598A28;
  }

  else
  {
    v6 = &off_100598A98;
  }

  sub_100022658(a1, a2, a3, a4, v6, a5);
}

uint64_t sub_1000267EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 128);
  v11 = *(v5 + 136);
  v12 = *(v5 + 140);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_100024A18(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_100024C54(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1000268C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_10000C9C0(&qword_1005CD500, &unk_1004CF2D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33[-v16];
  v18 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v33[-v21];
  v24 = *(v7 + 128);
  v23 = v7 + 128;
  v25 = *(v23 + 8);
  v34 = *(v23 + 12);
  sub_100023C8C(a1, a2, a3, a4, a5, a7, v24, v25 | (v34 << 32), v20);
  v26 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
  {
    v27 = &qword_1005CD500;
    v28 = &unk_1004CF2D0;
    v29 = v17;
  }

  else
  {
    v30 = *v17;
    v31 = sub_100020950(v17 + *(v26 + 48), v22);
    __chkstk_darwin(v31);
    *&v33[-16] = v22;
    sub_100023840(v30, sub_100025D54, &v33[-32]);
    v27 = &unk_1005D91B0;
    v28 = &unk_1004CF400;
    v29 = v22;
  }

  return sub_100025F40(v29, v27, v28);
}

uint64_t sub_100026B44(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;

    sub_1000BE940(&v9, v2, v3, 0, sub_100026E54);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_100026C18(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2 / 2;
  if (a2 / 2 >= result)
  {
    return 0;
  }

  v5 = __OFSUB__(result, v4);
  v6 = result - v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if ((v6 - 0x100000000) < 0xFFFFFFFF00000001)
    {
      return 0;
    }

    if (a4)
    {
      return a3 < 1;
    }

    else
    {
      v7 = *(a3 + 16);
      if (v7 > 0x8B)
      {
        return 0;
      }

      v8 = (a3 + 32);
      do
      {
        result = v7 == 0;
        if (!v7)
        {
          break;
        }

        v9 = *v8++;
        --v7;
      }

      while (v9 >= v6);
    }
  }

  return result;
}

BOOL sub_100026C90(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v3 = result - a2 / 2;
  if (__OFSUB__(result, a2 / 2))
  {
    __break(1u);
  }

  else if ((v3 - 0x100000000) >= 0xFFFFFFFF00000001)
  {
    v4 = (a3 + 32);
    v5 = *(a3 + 16) + 1;
    do
    {
      result = --v5 == 0;
      if (!v5)
      {
        break;
      }

      v6 = *v4;
      v4 += 8;
    }

    while (v6 >= v3);
  }

  else
  {
    return 0;
  }

  return result;
}

__n128 sub_100026CE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100026D18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 141))
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

uint64_t sub_100026D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 140) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 141) = 1;
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

    *(result + 141) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100026DD8(uint64_t a1)
{
  result = sub_100026E00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100026E00()
{
  result = qword_1005CD620;
  if (!qword_1005CD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD620);
  }

  return result;
}

Swift::Int sub_100026EC4()
{
  result = sub_100093190(&off_100598B30);
  qword_1005DDED0 = result;
  return result;
}

void sub_100026EEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  sub_1000118A4(a1, &v25 - v9);
  sub_1000118A4(a1, v7);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100027D64(v2, v30);
  sub_100027D64(v2, v28);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 68159747;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v27);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    LOWORD(v14) = *(v14 + 12);
    sub_100011908(v7);
    *(v13 + 29) = v14;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v16 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);

    sub_100011908(v10);
    v25 = v16;
    v26 = v15;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v27);

    *(v13 + 43) = v19;
    *(v13 + 51) = 2048;
    v20 = *(v30[11] + 16);
    sub_100027D9C(v30);
    *(v13 + 53) = v20;
    *(v13 + 61) = 2082;
    LOBYTE(v25) = v29;
    v21 = sub_1000DCF64(v28[11]);
    v23 = v22;
    sub_100027D9C(v28);
    v24 = sub_10015BA6C(v21, v23, &v27);

    *(v13 + 63) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID batch(es): %{public}s", v13, 0x47u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100027D9C(v30);
    sub_100011908(v7);

    sub_100011908(v10);
    sub_100027D9C(v28);
  }
}

uint64_t sub_10002720C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v38 = a5;
  v12 = sub_10000C9C0(&qword_1005CD540, &qword_1004CF318);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v37 - v14);
  v16 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v37 - v19;
  v21 = *v6;
  v22 = *(v6 + 8);
  v39 = *(v6 + 12);
  sub_1000239E4(a1, a2, a3, a4, v21, v15);
  v23 = sub_10000C9C0(&qword_1005CD548, &unk_1004CF320);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    sub_100025F40(v15, &qword_1005CD540, &qword_1004CF318);
    v24 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
    return (*(*(v24 - 8) + 56))(a6, 1, 1, v24);
  }

  else
  {
    v26 = *v15;
    sub_100025FDC(v15 + *(v23 + 48), v20, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
    v27 = swift_allocBox();
    v29 = v28;
    sub_100027CF4(v20, v28);
    (*(v17 + 56))(v29, 0, 1, v16);
    v30 = v27 | 0xA000000000000000;
    v31 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
    v32 = (a6 + *(v31 + 48));
    *a6 = v26;
    if ((v38 & 0x100) != 0)
    {
      sub_100025F40(v20, &qword_1005CD1D0, &unk_1004CF2C0);
      *v32 = v30;
    }

    else
    {
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      v33 = *(type metadata accessor for SearchReturnOption() - 8);
      v34 = *(v33 + 72);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1004CEAA0;
      swift_storeEnumTagMultiPayload();
      sub_100025F40(v20, &qword_1005CD1D0, &unk_1004CF2C0);
      *v32 = v30;
      v32[1] = v36;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v31 - 8) + 56))(a6, 0, 1, v31);
  }
}

uint64_t sub_1000275F8()
{
  if (qword_1005CCE08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (*(v6 + 112) == 1)
  {
    v7 = a6;
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5 + *(type metadata accessor for MailboxSyncState() + 48);
    v13 = *(v12 + 40);
    if ((*(v12 + 48) & 1) == 0)
    {
      v13 = *(v13 + 16);
    }

    *(v6 + 104) = v13;
    *(v6 + 112) = 0;
    a4 = v11;
    a3 = v10;
    a2 = v9;
    a1 = v8;
    a6 = v7;
  }

  if (*(v6 + 102))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return sub_10002720C(a1, a2, a3, a4, v14 | *(v6 + 101), a6);
}

uint64_t sub_100027720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 88);
  v11 = *(v5 + 96);
  v12 = *(v5 + 100);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_100024A18(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_100024C54(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1000277F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_10000C9C0(&qword_1005CD500, &unk_1004CF2D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33[-v16];
  v18 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v33[-v21];
  v24 = *(v7 + 88);
  v23 = v7 + 88;
  v25 = *(v23 + 8);
  v34 = *(v23 + 12);
  sub_100023C8C(a1, a2, a3, a4, a5, a7, v24, v25 | (v34 << 32), v20);
  v26 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
  {
    v27 = &qword_1005CD500;
    v28 = &unk_1004CF2D0;
    v29 = v17;
  }

  else
  {
    v30 = *v17;
    v31 = sub_100025FDC(v17 + *(v26 + 48), v22, &unk_1005D91B0, &unk_1004CF400);
    __chkstk_darwin(v31);
    *&v33[-16] = v22;
    sub_100023840(v30, sub_100025D54, &v33[-32]);
    v29 = v22;
    v27 = &unk_1005D91B0;
    v28 = &unk_1004CF400;
  }

  return sub_100025F40(v29, v27, v28);
}

uint64_t sub_100027A90(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;

    sub_1000BE940(&v9, v2, v3, 0, sub_100027CC4);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

__n128 sub_100027B64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100027B90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_100027BD8(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100027C48(uint64_t a1)
{
  result = sub_100027C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100027C70()
{
  result = qword_1005CD6D8;
  if (!qword_1005CD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD6D8);
  }

  return result;
}

uint64_t sub_100027CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100027DCC()
{
  result = sub_100093190(&off_100598B80);
  qword_1005DDED8 = result;
  return result;
}

void sub_100027DF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  sub_10002A644(a1, &v25 - v9, type metadata accessor for MailboxTaskLogger);
  sub_10002A644(a1, v7, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10002A764(v2, v29);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v28);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v16 = *(v14 + 12);
    sub_10002A6AC(v7, type metadata accessor for MailboxTaskLogger);
    *(v13 + 29) = v16;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);

    sub_10002A6AC(v10, type metadata accessor for MailboxTaskLogger);
    v26 = v17;
    v27 = v15;
    v18 = sub_1004A5824();
    v20 = sub_10015BA6C(v18, v19, &v28);

    *(v13 + 43) = v20;
    *(v13 + 51) = 2082;
    LOBYTE(v26) = v31;
    v21 = sub_1000DCF64(v30);
    v23 = v22;
    sub_10002A79C(v29);
    v24 = sub_10015BA6C(v21, v23, &v28);

    *(v13 + 53) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task: %{public}s", v13, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_10002A6AC(v7, type metadata accessor for MailboxTaskLogger);

    sub_10002A6AC(v10, type metadata accessor for MailboxTaskLogger);
    sub_10002A79C(v29);
  }
}

void sub_100028134(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005CD798, &unk_1004D3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v205 = &v181[-v7];
  v8 = _s15MissingMessagesO10NewMissingVMa(0);
  v203 = *(v8 - 8);
  v204 = v8;
  v9 = *(v203 + 64);
  __chkstk_darwin(v8);
  v198 = &v181[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v196 = &v181[-v12];
  __chkstk_darwin(v13);
  v197 = &v181[-v14];
  __chkstk_darwin(v15);
  v202 = &v181[-v16];
  v201 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v194 = &v181[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v195 = &v181[-v20];
  __chkstk_darwin(v21);
  v192 = &v181[-v22];
  __chkstk_darwin(v23);
  v193 = &v181[-v24];
  __chkstk_darwin(v25);
  v199 = &v181[-v26];
  __chkstk_darwin(v27);
  v29 = &v181[-v28];
  __chkstk_darwin(v30);
  v32 = &v181[-v31];
  __chkstk_darwin(v33);
  v35 = &v181[-v34];
  v36 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v181[-v38];
  v40 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v208 = &v181[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v43);
  __chkstk_darwin(v44);
  __chkstk_darwin(v45);
  __chkstk_darwin(v46);
  v48 = &v181[-v47];
  __chkstk_darwin(v49);
  v55 = &v181[-v51];
  v56 = *(v2 + 88);
  if (!*(v56 + 16))
  {
    v85 = *(v2 + 24);
    v86 = *(v2 + 32);
    __chkstk_darwin(v50);
    *&v181[-16] = a2;
    if ((*(a1 + 192) & 1) == 0)
    {
      return;
    }

    v88 = *(a1 + 176);
    v87 = *(a1 + 184);
    v89 = *(a1 + 168);
    v209 = v89;

    sub_1000BE940(&v209, v85, v86, 0, sub_10002A750);
    goto LABEL_37;
  }

  v186 = v54;
  v187 = v53;
  v188 = v35;
  v189 = v29;
  v190 = v52;
  v200 = v50;
  v57 = *(v2 + 96);
  v206 = v2;
  LOBYTE(v209) = *(v2 + 100);
  v58 = v209;
  sub_1000DFE98(v56, &v181[-v51]);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v59 = sub_1004A70C4();
  v207 = v55;
  if ((v59 & 1) == 0)
  {
    v182 = v58;
    v183 = v57;
    v184 = v56;
    v191 = a2;
    v185 = a1;
    MessageIdentifierSet.ranges.getter(v39);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v60 = sub_1004A7044();
    v61 = sub_1004A7074();
    v62 = sub_1004A7044();
    v63 = sub_1004A7074();
    if (v60 < v62 || v63 < v60)
    {
      __break(1u);
    }

    else
    {
      v64 = sub_1004A7044();
      v65 = sub_1004A7074();
      sub_100025F40(v39, &qword_1005CD7A0, &unk_1004CF590);
      if (v61 >= v64 && v65 >= v61)
      {
        if (!__OFSUB__(v61, v60))
        {
          if (v61 - v60 > 19)
          {
            v90 = v191;
            v91 = v189;
            sub_10002A644(v191, v189, type metadata accessor for MailboxTaskLogger);
            v92 = v199;
            sub_10002A644(v90, v199, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v93 = v207;
            v94 = v186;
            sub_10002A54C(v207, v186);
            v95 = v190;
            sub_10002A54C(v93, v190);
            v96 = sub_1004A4A54();
            v97 = sub_1004A6034();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              v211[0] = v188;
              *v98 = 68159747;
              *(v98 + 4) = 2;
              *(v98 + 8) = 256;
              v99 = v201;
              v100 = &v92[*(v201 + 20)];
              *(v98 + 10) = *v100;
              *(v98 + 11) = 2082;
              v101 = v91 + *(v99 + 20);
              *(v98 + 13) = sub_10015BA6C(*(v101 + 8), *(v101 + 16), v211);
              *(v98 + 21) = 1040;
              *(v98 + 23) = 2;
              *(v98 + 27) = 512;
              LOWORD(v100) = *(v100 + 12);
              sub_10002A6AC(v92, type metadata accessor for MailboxTaskLogger);
              *(v98 + 29) = v100;
              *(v98 + 31) = 2160;
              *(v98 + 33) = 0x786F626C69616DLL;
              *(v98 + 41) = 2085;
              v102 = *(v101 + 32);
              LODWORD(v101) = *(v101 + 40);

              sub_10002A6AC(v91, type metadata accessor for MailboxTaskLogger);
              v209 = v102;
              v210 = v101;
              v103 = sub_1004A5824();
              v105 = sub_10015BA6C(v103, v104, v211);

              *(v98 + 43) = v105;
              *(v98 + 51) = 2048;
              v106 = v95;
              v107 = v200;
              v108 = MessageIdentifierSet.count.getter();
              sub_100025F40(v94, &unk_1005D91B0, &unk_1004CF400);
              *(v98 + 53) = v108;
              *(v98 + 61) = 2082;
              v109 = v208;
              MessageIdentifierSet.suffix(_:)(20, v107, v208);
              v110 = MessageIdentifierSet.debugDescription.getter(v107);
              v112 = v111;
              sub_100025F40(v109, &unk_1005D91B0, &unk_1004CF400);
              sub_100025F40(v106, &unk_1005D91B0, &unk_1004CF400);
              v113 = sub_10015BA6C(v110, v112, v211);

              *(v98 + 63) = v113;
              _os_log_impl(&_mh_execute_header, v96, v97, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: ... %{public}s", v98, 0x47u);
              swift_arrayDestroy();
            }

            else
            {
              sub_100025F40(v94, &unk_1005D91B0, &unk_1004CF400);
              sub_10002A6AC(v92, type metadata accessor for MailboxTaskLogger);

              sub_100025F40(v95, &unk_1005D91B0, &unk_1004CF400);
              sub_10002A6AC(v91, type metadata accessor for MailboxTaskLogger);
            }

            a1 = v185;
            a2 = v191;
          }

          else
          {
            a2 = v191;
            v66 = v188;
            sub_10002A644(v191, v188, type metadata accessor for MailboxTaskLogger);
            sub_10002A644(a2, v32, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v67 = v207;
            sub_10002A54C(v207, v48);
            v68 = v187;
            sub_10002A54C(v67, v187);
            v69 = sub_1004A4A54();
            v70 = sub_1004A6034();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v199 = swift_slowAlloc();
              v211[0] = v199;
              *v71 = 68159747;
              LODWORD(v190) = v70;
              *(v71 + 4) = 2;
              *(v71 + 8) = 256;
              v72 = v201;
              v73 = &v32[*(v201 + 20)];
              *(v71 + 10) = *v73;
              *(v71 + 11) = 2082;
              v74 = v66 + *(v72 + 20);
              *(v71 + 13) = sub_10015BA6C(*(v74 + 8), *(v74 + 16), v211);
              *(v71 + 21) = 1040;
              *(v71 + 23) = 2;
              *(v71 + 27) = 512;
              LOWORD(v73) = *(v73 + 12);
              sub_10002A6AC(v32, type metadata accessor for MailboxTaskLogger);
              *(v71 + 29) = v73;
              *(v71 + 31) = 2160;
              *(v71 + 33) = 0x786F626C69616DLL;
              *(v71 + 41) = 2085;
              v75 = *(v74 + 32);
              LODWORD(v73) = *(v74 + 40);

              sub_10002A6AC(v66, type metadata accessor for MailboxTaskLogger);
              v209 = v75;
              v210 = v73;
              v76 = sub_1004A5824();
              v78 = sub_10015BA6C(v76, v77, v211);

              *(v71 + 43) = v78;
              *(v71 + 51) = 2048;
              v79 = v200;
              v80 = MessageIdentifierSet.count.getter();
              sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
              *(v71 + 53) = v80;
              *(v71 + 61) = 2082;
              v81 = MessageIdentifierSet.debugDescription.getter(v79);
              v83 = v82;
              a2 = v191;
              sub_100025F40(v68, &unk_1005D91B0, &unk_1004CF400);
              v84 = sub_10015BA6C(v81, v83, v211);

              *(v71 + 63) = v84;
              _os_log_impl(&_mh_execute_header, v69, v190, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: %{public}s", v71, 0x47u);
              swift_arrayDestroy();
            }

            else
            {
              sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
              sub_10002A6AC(v32, type metadata accessor for MailboxTaskLogger);

              sub_100025F40(v68, &unk_1005D91B0, &unk_1004CF400);
              sub_10002A6AC(v66, type metadata accessor for MailboxTaskLogger);
            }

            a1 = v185;
          }

          v56 = v184;
          v57 = v183;
          LOBYTE(v58) = v182;
          goto LABEL_20;
        }

LABEL_43:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_20:
  LOBYTE(v209) = v58;
  v114 = v208;
  v115 = sub_1000E1570(v56, v57 | (v58 << 32));
  __chkstk_darwin(v115);
  *&v181[-16] = v114;
  v116 = sub_1000DCD18(0, sub_10002A5BC, &v181[-32], v56);
  v117 = sub_100025F40(v114, &unk_1005D91B0, &unk_1004CF400);
  v118 = v56;
  v119 = a2;
  if (v116 < 1)
  {
    goto LABEL_35;
  }

  LOBYTE(v209) = v58;
  v120 = v205;
  sub_1000E0110(0x10F, v118, v57 | (v58 << 32), v205);
  if ((*(v203 + 48))(v120, 1, v204) == 1)
  {
    v117 = sub_100025F40(v120, &qword_1005CD798, &unk_1004D3640);
    goto LABEL_35;
  }

  v121 = v202;
  sub_10002A5E0(v120, v202);
  if (v116 > 0x13)
  {
    v143 = v195;
    sub_10002A644(v119, v195, type metadata accessor for MailboxTaskLogger);
    v144 = v194;
    sub_10002A644(v119, v194, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v145 = v196;
    sub_10002A644(v121, v196, _s15MissingMessagesO10NewMissingVMa);
    v146 = v198;
    sub_10002A644(v121, v198, _s15MissingMessagesO10NewMissingVMa);
    v125 = sub_1004A4A54();
    v147 = sub_1004A6014();
    if (os_log_type_enabled(v125, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v191 = v119;
      v205 = v149;
      v211[0] = v149;
      *v148 = 68160003;
      LODWORD(v204) = v147;
      *(v148 + 4) = 2;
      *(v148 + 8) = 256;
      v151 = v200;
      v150 = v201;
      v152 = v143;
      v153 = &v144[*(v201 + 20)];
      *(v148 + 10) = *v153;
      v185 = a1;
      *(v148 + 11) = 2082;
      v154 = v145;
      v155 = v152 + *(v150 + 20);
      *(v148 + 13) = sub_10015BA6C(*(v155 + 8), *(v155 + 16), v211);
      *(v148 + 21) = 1040;
      *(v148 + 23) = 2;
      *(v148 + 27) = 512;
      LOWORD(v153) = *(v153 + 12);
      sub_10002A6AC(v144, type metadata accessor for MailboxTaskLogger);
      *(v148 + 29) = v153;
      *(v148 + 31) = 2160;
      *(v148 + 33) = 0x786F626C69616DLL;
      *(v148 + 41) = 2085;
      v156 = *(v155 + 32);
      LODWORD(v155) = *(v155 + 40);

      sub_10002A6AC(v152, type metadata accessor for MailboxTaskLogger);
      v209 = v156;
      v210 = v155;
      v157 = sub_1004A5824();
      v159 = sub_10015BA6C(v157, v158, v211);

      *(v148 + 43) = v159;
      *(v148 + 51) = 2048;
      *(v148 + 53) = v116;
      *(v148 + 61) = 2048;
      v160 = MessageIdentifierSet.count.getter();
      sub_10002A6AC(v154, _s15MissingMessagesO10NewMissingVMa);
      *(v148 + 63) = v160;
      *(v148 + 71) = 2082;
      a1 = v185;
      v121 = v202;
      v161 = v208;
      v162 = v198;
      MessageIdentifierSet.suffix(_:)(20, v151, v208);
      v163 = MessageIdentifierSet.debugDescription.getter(v151);
      v165 = v164;
      sub_100025F40(v161, &unk_1005D91B0, &unk_1004CF400);
      sub_10002A6AC(v162, _s15MissingMessagesO10NewMissingVMa);
      v166 = sub_10015BA6C(v163, v165, v211);

      *(v148 + 73) = v166;
      _os_log_impl(&_mh_execute_header, v125, v204, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs, adding %ld UIDs as missing: ... %{public}s", v148, 0x51u);
      swift_arrayDestroy();
      goto LABEL_28;
    }

    sub_10002A6AC(v145, _s15MissingMessagesO10NewMissingVMa);
    sub_10002A6AC(v144, type metadata accessor for MailboxTaskLogger);

    sub_10002A6AC(v146, _s15MissingMessagesO10NewMissingVMa);
    v168 = v143;
LABEL_31:
    v167 = sub_10002A6AC(v168, type metadata accessor for MailboxTaskLogger);
    goto LABEL_32;
  }

  v122 = v193;
  sub_10002A644(v119, v193, type metadata accessor for MailboxTaskLogger);
  v123 = v192;
  sub_10002A644(v119, v192, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v124 = v197;
  sub_10002A644(v121, v197, _s15MissingMessagesO10NewMissingVMa);
  v125 = sub_1004A4A54();
  v126 = sub_1004A6014();
  if (!os_log_type_enabled(v125, v126))
  {
    sub_10002A6AC(v123, type metadata accessor for MailboxTaskLogger);

    sub_10002A6AC(v124, _s15MissingMessagesO10NewMissingVMa);
    v168 = v122;
    goto LABEL_31;
  }

  v127 = swift_slowAlloc();
  v128 = swift_slowAlloc();
  v191 = v119;
  v211[0] = v128;
  *v127 = 68159747;
  LODWORD(v208) = v126;
  *(v127 + 4) = 2;
  *(v127 + 8) = 256;
  v129 = v201;
  v130 = &v123[*(v201 + 20)];
  *(v127 + 10) = *v130;
  v131 = a1;
  *(v127 + 11) = 2082;
  v132 = v122;
  v133 = &v122[*(v129 + 20)];
  *(v127 + 13) = sub_10015BA6C(*(v133 + 1), *(v133 + 2), v211);
  *(v127 + 21) = 1040;
  *(v127 + 23) = 2;
  *(v127 + 27) = 512;
  LOWORD(v130) = *(v130 + 12);
  sub_10002A6AC(v123, type metadata accessor for MailboxTaskLogger);
  *(v127 + 29) = v130;
  *(v127 + 31) = 2160;
  *(v127 + 33) = 0x786F626C69616DLL;
  *(v127 + 41) = 2085;
  v134 = *(v133 + 4);
  LODWORD(v133) = *(v133 + 10);

  sub_10002A6AC(v132, type metadata accessor for MailboxTaskLogger);
  v209 = v134;
  v210 = v133;
  v135 = sub_1004A5824();
  v137 = sub_10015BA6C(v135, v136, v211);

  *(v127 + 43) = v137;
  *(v127 + 51) = 2048;
  *(v127 + 53) = v116;
  *(v127 + 61) = 2082;
  a1 = v131;
  v121 = v202;
  v138 = v197;
  v139 = MessageIdentifierSet.debugDescription.getter(v200);
  v141 = v140;
  sub_10002A6AC(v138, _s15MissingMessagesO10NewMissingVMa);
  v142 = sub_10015BA6C(v139, v141, v211);

  *(v127 + 63) = v142;
  _os_log_impl(&_mh_execute_header, v125, v208, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs: %{public}s", v127, 0x47u);
  swift_arrayDestroy();
LABEL_28:
  v119 = v191;

LABEL_32:
  v169 = *(v206 + 24);
  v170 = *(v206 + 32);
  __chkstk_darwin(v167);
  *&v181[-16] = v121;
  if (*(a1 + 192) == 1)
  {
    v172 = v119;
    v174 = *(a1 + 176);
    v173 = *(a1 + 184);
    v209 = *(a1 + 168);
    v171 = v209;

    sub_1000BE940(&v209, v169, v170, 0, sub_10002A70C);
    v175 = v174;
    v119 = v172;
    sub_100020D58(v171, v175, v173, 1);
    v176 = v209;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v176;
    *(a1 + 192) = 1;
  }

  v117 = sub_10002A6AC(v121, _s15MissingMessagesO10NewMissingVMa);
LABEL_35:
  v177 = *(v206 + 24);
  v178 = *(v206 + 32);
  __chkstk_darwin(v117);
  *&v181[-16] = v179;
  *&v181[-8] = v119;
  if (*(a1 + 192))
  {
    v88 = *(a1 + 176);
    v87 = *(a1 + 184);
    v89 = *(a1 + 168);
    v209 = v89;

    sub_1000BE940(&v209, v177, v178, 0, sub_10002A5D8);
    sub_100025F40(v207, &unk_1005D91B0, &unk_1004CF400);
LABEL_37:
    sub_100020D58(v89, v88, v87, 1);
    v180 = v209;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v180;
    *(a1 + 192) = 1;
    return;
  }

  sub_100025F40(v207, &unk_1005D91B0, &unk_1004CF400);
}

void sub_100029700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v11 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  v12 = *(v11 + 40);
  v13 = v12;
  if ((*(v11 + 48) & 1) == 0)
  {
    v13 = *(v12 + 16);
  }

  sub_10002A758(v12, *(v11 + 48));
  *(v11 + 40) = _swiftEmptyArrayStorage;
  *(v11 + 48) = 0;
  sub_10002A644(a2, v10, type metadata accessor for MailboxTaskLogger);
  sub_10002A644(a2, v7, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v14 = sub_1004A4A54();
  v15 = sub_1004A6034();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v13;
    v27 = v17;
    *v16 = 68159491;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v18 = &v7[*(v4 + 20)];
    *(v16 + 10) = *v18;
    *(v16 + 11) = 2082;
    v19 = &v10[*(v4 + 20)];
    *(v16 + 13) = sub_10015BA6C(*(v19 + 1), *(v19 + 2), &v27);
    *(v16 + 21) = 1040;
    *(v16 + 23) = 2;
    *(v16 + 27) = 512;
    v20 = *(v18 + 12);
    sub_10002A6AC(v7, type metadata accessor for MailboxTaskLogger);
    *(v16 + 29) = v20;
    *(v16 + 31) = 2160;
    *(v16 + 33) = 0x786F626C69616DLL;
    *(v16 + 41) = 2085;
    v21 = *(v19 + 4);
    LODWORD(v19) = *(v19 + 10);

    sub_10002A6AC(v10, type metadata accessor for MailboxTaskLogger);
    v25[1] = v21;
    v26 = v19;
    v22 = sub_1004A5824();
    v24 = sub_10015BA6C(v22, v23, &v27);

    *(v16 + 43) = v24;
    *(v16 + 51) = 2048;
    *(v16 + 53) = v25[0];
    _os_log_impl(&_mh_execute_header, v14, v15, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Local mailbox is empty. Removed %ld pending expunge.", v16, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_10002A6AC(v7, type metadata accessor for MailboxTaskLogger);

    sub_10002A6AC(v10, type metadata accessor for MailboxTaskLogger);
  }
}

void sub_100029A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v19 = *(a2 + 104);
  v20 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  sub_1000FFB58(v19);
  v21 = *(v20 + 40);
  if ((*(v20 + 48) & 1) == 0)
  {
    v21 = *(v21 + 16);
  }

  if (v21 < 1)
  {
    sub_10002A644(a3, v12, type metadata accessor for MailboxTaskLogger);
    sub_10002A644(a3, v9, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v22 = sub_1004A4A54();
    v32 = sub_1004A6034();
    if (os_log_type_enabled(v22, v32))
    {
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v33 = 68159491;
      v45 = v19;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v34 = &v9[*(v6 + 20)];
      *(v33 + 10) = *v34;
      *(v33 + 11) = 2082;
      v35 = &v12[*(v6 + 20)];
      *(v33 + 13) = sub_10015BA6C(*(v35 + 1), *(v35 + 2), &v48);
      *(v33 + 21) = 1040;
      *(v33 + 23) = 2;
      *(v33 + 27) = 512;
      v36 = *(v34 + 12);
      sub_10002A6AC(v9, type metadata accessor for MailboxTaskLogger);
      *(v33 + 29) = v36;
      *(v33 + 31) = 2160;
      *(v33 + 33) = 0x786F626C69616DLL;
      *(v33 + 41) = 2085;
      v37 = *(v35 + 4);
      v38 = *(v35 + 10);

      sub_10002A6AC(v12, type metadata accessor for MailboxTaskLogger);
      v46 = v37;
      v47 = v38;
      v39 = sub_1004A5824();
      v41 = sub_10015BA6C(v39, v40, &v48);

      *(v33 + 43) = v41;
      *(v33 + 51) = 2048;
      *(v33 + 53) = v45;
      _os_log_impl(&_mh_execute_header, v22, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed all %ld EXPUNGE messages.", v33, 0x3Du);
      swift_arrayDestroy();

      goto LABEL_8;
    }

    sub_10002A6AC(v9, type metadata accessor for MailboxTaskLogger);

    v42 = v12;
  }

  else
  {
    sub_10002A644(a3, v18, type metadata accessor for MailboxTaskLogger);
    sub_10002A644(a3, v15, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v22 = sub_1004A4A54();
    v23 = sub_1004A6034();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v24 = 68159747;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      v25 = *(v6 + 20);
      v45 = v19;
      v26 = &v15[v25];
      *(v24 + 10) = v15[v25];
      *(v24 + 11) = 2082;
      v27 = &v18[*(v6 + 20)];
      *(v24 + 13) = sub_10015BA6C(*(v27 + 1), *(v27 + 2), &v48);
      *(v24 + 21) = 1040;
      *(v24 + 23) = 2;
      *(v24 + 27) = 512;
      LOWORD(v26) = *(v26 + 12);
      sub_10002A6AC(v15, type metadata accessor for MailboxTaskLogger);
      *(v24 + 29) = v26;
      *(v24 + 31) = 2160;
      *(v24 + 33) = 0x786F626C69616DLL;
      *(v24 + 41) = 2085;
      v28 = *(v27 + 4);
      LODWORD(v26) = *(v27 + 10);

      sub_10002A6AC(v18, type metadata accessor for MailboxTaskLogger);
      v46 = v28;
      v47 = v26;
      v29 = sub_1004A5824();
      v31 = sub_10015BA6C(v29, v30, &v48);

      *(v24 + 43) = v31;
      *(v24 + 51) = 2048;
      *(v24 + 53) = v45;
      *(v24 + 61) = 2048;
      *(v24 + 63) = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld EXPUNGE messages, still %ld remaining.", v24, 0x47u);
      swift_arrayDestroy();

LABEL_8:

      return;
    }

    sub_10002A6AC(v15, type metadata accessor for MailboxTaskLogger);

    v42 = v18;
  }

  sub_10002A6AC(v42, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_100029FC0()
{
  if (qword_1005CCE10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002A02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_10000C9C0(&qword_1005CD7B8, &unk_1004CF5B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v20 - v13);
  if (*(v5 + 102))
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  sub_10002720C(a1, a2, a3, a4, v15 | *(v5 + 101), v14);
  v16 = sub_10000C9C0(&qword_1005CD550, &unk_1004CF4D0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_100025F40(v14, &qword_1005CD7B8, &unk_1004CF5B0);
    v18 = 1;
  }

  else
  {
    sub_100025FDC(v14, a5, &qword_1005CD550, &unk_1004CF4D0);
    v18 = 0;
  }

  return (*(v17 + 56))(a5, v18, 1, v16);
}

uint64_t sub_10002A1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_10000C9C0(&qword_1005CD500, &unk_1004CF2D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33[-v16];
  v18 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v33[-v21];
  v24 = *(v7 + 88);
  v23 = v7 + 88;
  v25 = *(v23 + 8);
  v34 = *(v23 + 12);
  sub_100023C8C(a1, a2, a3, a4, a5, a7, v24, v25 | (v34 << 32), v20);
  v26 = sub_10000C9C0(&qword_1005CD508, &unk_1004CF4C0);
  if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
  {
    v27 = &qword_1005CD500;
    v28 = &unk_1004CF2D0;
    v29 = v17;
  }

  else
  {
    v30 = *v17;
    v31 = sub_100025FDC(v17 + *(v26 + 48), v22, &unk_1005D91B0, &unk_1004CF400);
    __chkstk_darwin(v31);
    *&v33[-16] = v22;
    sub_100023840(v30, sub_100025D54, &v33[-32]);
    v29 = v22;
    v27 = &unk_1005D91B0;
    v28 = &unk_1004CF400;
  }

  return sub_100025F40(v29, v27, v28);
}

__n128 sub_10002A3F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10002A41C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10002A464(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10002A4D0(uint64_t a1)
{
  result = sub_10002A4F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002A4F8()
{
  result = qword_1005CD790;
  if (!qword_1005CD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD790);
  }

  return result;
}

uint64_t sub_10002A54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A5E0(uint64_t a1, uint64_t a2)
{
  v4 = _s15MissingMessagesO10NewMissingVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002A6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002A70C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = a1 + *(type metadata accessor for MailboxSyncState() + 68);
  return sub_1000E3CF8(v2);
}

uint64_t sub_10002A758(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10002A7E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DetermineMessageBatches.TaskState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_10002A8C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DetermineMessageBatches.TaskState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002A984(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002A9BC()
{
  sub_10002AABC();
  if (v0 <= 0x3F)
  {
    sub_10002AB6C();
    if (v1 <= 0x3F)
    {
      sub_10002ABD0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DetermineMessageBatches.TaskState(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002AABC()
{
  if (!qword_1005CD828)
  {
    sub_10002AB18();
    v0 = sub_1004A5DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CD828);
    }
  }
}

unint64_t sub_10002AB18()
{
  result = qword_1005CD830;
  if (!qword_1005CD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD830);
  }

  return result;
}

void sub_10002AB6C()
{
  if (!qword_1005CD838)
  {
    sub_10000DEFC(&qword_1005CD198, &qword_1004CEC20);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CD838);
    }
  }
}

void sub_10002ABD0()
{
  if (!qword_1005CD840)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CD840);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for WindowOfInterestSize(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10002AC34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10002AC7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetermineMessageBatches.Mode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for DetermineMessageBatches.Mode(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10002AE30(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_10002AE44(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_10002AE78()
{
  result = sub_10002AEEC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MessageBatches(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10002AEEC()
{
  result = qword_1005CD918;
  if (!qword_1005CD918)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1005CD918);
  }

  return result;
}

uint64_t sub_10002AF1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if ((*(a2 + 16) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 16))
  {
    v5 = 0;
  }

  if (*(a1 + 16))
  {
    v5 = v4;
  }

  return v5 & 1;
}

BOOL sub_10002AF64(unsigned __int16 *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a1;
  result = *a2 == 2 && v3 == 2;
  if (v3 != 2 && *a2 != 2)
  {
    return ((*a2 ^ v2) & 0x101) == 0;
  }

  return result;
}

void sub_10002AFBC(uint64_t a1)
{
  v3 = type metadata accessor for DetermineMessageBatches(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v126 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v123 = (&v117 - v8);
  __chkstk_darwin(v9);
  v121 = &v117 - v10;
  v125 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v122 = &v117 - v15;
  __chkstk_darwin(v16);
  v18 = &v117 - v17;
  __chkstk_darwin(v19);
  v21 = &v117 - v20;
  __chkstk_darwin(v22);
  v118 = &v117 - v23;
  __chkstk_darwin(v24);
  v119 = &v117 - v25;
  __chkstk_darwin(v26);
  v28 = &v117 - v27;
  __chkstk_darwin(v29);
  v31 = &v117 - v30;
  v32 = type metadata accessor for MessageBatches(0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v120 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v124 = &v117 - v36;
  v37 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = (&v117 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031C0C(v1 + *(v4 + 64), v40, type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v69 = *v40;
    v70 = v122;
    sub_100031C0C(a1, v122, type metadata accessor for MailboxTaskLogger);
    sub_100031C0C(a1, v13, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100031C0C(v1, v126, type metadata accessor for DetermineMessageBatches);
    v71 = sub_1004A4A54();
    v72 = sub_1004A6034();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v73 = 68159747;
      *(v73 + 4) = 2;
      *(v73 + 8) = 256;
      v74 = v125;
      v75 = &v13[*(v125 + 20)];
      *(v73 + 10) = *v75;
      *(v73 + 11) = 2082;
      v76 = v70 + *(v74 + 20);
      *(v73 + 13) = sub_10015BA6C(*(v76 + 8), *(v76 + 16), &v130);
      *(v73 + 21) = 1040;
      *(v73 + 23) = 2;
      *(v73 + 27) = 512;
      LOWORD(v75) = *(v75 + 12);
      sub_100031C74(v13, type metadata accessor for MailboxTaskLogger);
      *(v73 + 29) = v75;
      *(v73 + 31) = 2160;
      *(v73 + 33) = 0x786F626C69616DLL;
      *(v73 + 41) = 2085;
      v77 = *(v76 + 32);
      LODWORD(v75) = *(v76 + 40);

      sub_100031C74(v70, type metadata accessor for MailboxTaskLogger);
      v128 = v77;
      v129 = v75;
      v78 = sub_1004A5824();
      v80 = sub_10015BA6C(v78, v79, &v130);

      *(v73 + 43) = v80;
      *(v73 + 51) = 2048;
      *(v73 + 53) = v69;
      *(v73 + 61) = 2048;
      v81 = *(v126 + 144);
      sub_100031C74(v126, type metadata accessor for DetermineMessageBatches);
      *(v73 + 63) = v81;
      _os_log_impl(&_mh_execute_header, v71, v72, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Will query local persistence (message count: %ld, batch size: %ld).", v73, 0x47u);
      swift_arrayDestroy();

      return;
    }

    sub_100031C74(v126, type metadata accessor for DetermineMessageBatches);
    sub_100031C74(v13, type metadata accessor for MailboxTaskLogger);

    v94 = v70;
    v95 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v42 = v124;
    sub_100035908(v40, v124, type metadata accessor for MessageBatches);
    if (*(*(v42 + 8) + 16))
    {
      v43 = v119;
      sub_100031C0C(a1, v119, type metadata accessor for MailboxTaskLogger);
      v44 = v118;
      sub_100031C0C(a1, v118, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v45 = v120;
      sub_100031C0C(v42, v120, type metadata accessor for MessageBatches);
      v46 = v121;
      sub_100031C0C(v1, v121, type metadata accessor for DetermineMessageBatches);
      v47 = sub_1004A4A54();
      v48 = sub_1004A6034();
      if (os_log_type_enabled(v47, v48))
      {
        v123 = v47;
        v49 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v130 = v126;
        *v49 = 68159747;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v50 = v125;
        v51 = v44 + *(v125 + 20);
        *(v49 + 10) = *v51;
        *(v49 + 11) = 2082;
        v52 = v44;
        v53 = v43;
        v54 = v43 + *(v50 + 20);
        *(v49 + 13) = sub_10015BA6C(*(v54 + 8), *(v54 + 16), &v130);
        *(v49 + 21) = 1040;
        *(v49 + 23) = 2;
        *(v49 + 27) = 512;
        LOWORD(v51) = *(v51 + 24);
        sub_100031C74(v52, type metadata accessor for MailboxTaskLogger);
        *(v49 + 29) = v51;
        *(v49 + 31) = 2160;
        *(v49 + 33) = 0x786F626C69616DLL;
        *(v49 + 41) = 2085;
        v55 = *(v54 + 32);
        LODWORD(v54) = *(v54 + 40);

        sub_100031C74(v53, type metadata accessor for MailboxTaskLogger);
        v128 = v55;
        v129 = v54;
        v56 = sub_1004A5824();
        v58 = sub_10015BA6C(v56, v57, &v130);

        *(v49 + 43) = v58;
        *(v49 + 51) = 2082;
        v59 = *(v45 + 8);
        v60 = *(v59 + 16);
        v61 = _swiftEmptyArrayStorage;
        if (v60)
        {
          LODWORD(v125) = v48;
          v128 = _swiftEmptyArrayStorage;
          sub_100134BC4(0, v60, 0);
          v61 = v128;
          v62 = (v59 + 32);
          do
          {
            v127 = *v62;
            sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
            v63 = sub_1004A5804();
            v128 = v61;
            v66 = v61[2];
            v65 = v61[3];
            if (v66 >= v65 >> 1)
            {
              v122 = v63;
              v68 = v64;
              sub_100134BC4((v65 > 1), v66 + 1, 1);
              v64 = v68;
              v63 = v122;
              v61 = v128;
            }

            v61[2] = v66 + 1;
            v67 = &v61[2 * v66];
            v67[4] = v63;
            v67[5] = v64;
            ++v62;
            --v60;
          }

          while (v60);
          v42 = v124;
          v45 = v120;
          v46 = v121;
          LOBYTE(v48) = v125;
        }

        else
        {
          v42 = v124;
        }

        v128 = v61;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_100031CDC();
        v111 = sub_1004A5614();
        v113 = v112;

        sub_100031C74(v45, type metadata accessor for MessageBatches);
        v114 = sub_10015BA6C(v111, v113, &v130);

        *(v49 + 53) = v114;
        *(v49 + 61) = 2048;
        v115 = *(v46 + 144);
        sub_100031C74(v46, type metadata accessor for DetermineMessageBatches);
        *(v49 + 63) = v115;
        v116 = v123;
        _os_log_impl(&_mh_execute_header, v123, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Using fixed range(s): %{public}s (batch size: %ld).", v49, 0x47u);
        swift_arrayDestroy();

        goto LABEL_24;
      }

      sub_100031C74(v46, type metadata accessor for DetermineMessageBatches);
      sub_100031C74(v44, type metadata accessor for MailboxTaskLogger);

      sub_100031C74(v43, type metadata accessor for MailboxTaskLogger);
      v109 = type metadata accessor for MessageBatches;
      v110 = v45;
    }

    else
    {
      v96 = v31;
      sub_100031C0C(a1, v31, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(a1, v28, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v97 = sub_1004A4A54();
      v98 = sub_1004A6034();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v99 = 68159235;
        *(v99 + 4) = 2;
        *(v99 + 8) = 256;
        v100 = v125;
        v101 = v42;
        v102 = &v28[*(v125 + 20)];
        *(v99 + 10) = *v102;
        *(v99 + 11) = 2082;
        v103 = v96 + *(v100 + 20);
        *(v99 + 13) = sub_10015BA6C(*(v103 + 8), *(v103 + 16), &v130);
        *(v99 + 21) = 1040;
        *(v99 + 23) = 2;
        *(v99 + 27) = 512;
        LOWORD(v102) = *(v102 + 12);
        sub_100031C74(v28, type metadata accessor for MailboxTaskLogger);
        *(v99 + 29) = v102;
        *(v99 + 31) = 2160;
        *(v99 + 33) = 0x786F626C69616DLL;
        *(v99 + 41) = 2085;
        v104 = *(v103 + 32);
        v105 = *(v103 + 40);

        sub_100031C74(v96, type metadata accessor for MailboxTaskLogger);
        v128 = v104;
        v129 = v105;
        v106 = sub_1004A5824();
        v108 = sub_10015BA6C(v106, v107, &v130);

        *(v99 + 43) = v108;
        v42 = v101;
        _os_log_impl(&_mh_execute_header, v97, v98, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. No messages.", v99, 0x33u);
        swift_arrayDestroy();

LABEL_24:
        v95 = type metadata accessor for MessageBatches;
        v94 = v42;
        goto LABEL_25;
      }

      sub_100031C74(v28, type metadata accessor for MailboxTaskLogger);

      v110 = v31;
      v109 = type metadata accessor for MailboxTaskLogger;
    }

    sub_100031C74(v110, v109);
    goto LABEL_24;
  }

  sub_100031C0C(a1, v21, type metadata accessor for MailboxTaskLogger);
  sub_100031C0C(a1, v18, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v82 = v123;
  sub_100031C0C(v1, v123, type metadata accessor for DetermineMessageBatches);
  v83 = sub_1004A4A54();
  v84 = sub_1004A6034();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    *v85 = 68159491;
    *(v85 + 4) = 2;
    *(v85 + 8) = 256;
    v86 = v125;
    v87 = &v18[*(v125 + 20)];
    *(v85 + 10) = *v87;
    *(v85 + 11) = 2082;
    v88 = &v21[*(v86 + 20)];
    *(v85 + 13) = sub_10015BA6C(*(v88 + 1), *(v88 + 2), &v130);
    *(v85 + 21) = 1040;
    *(v85 + 23) = 2;
    *(v85 + 27) = 512;
    LOWORD(v87) = *(v87 + 12);
    sub_100031C74(v18, type metadata accessor for MailboxTaskLogger);
    *(v85 + 29) = v87;
    *(v85 + 31) = 2160;
    *(v85 + 33) = 0x786F626C69616DLL;
    *(v85 + 41) = 2085;
    v89 = *(v88 + 4);
    LODWORD(v87) = *(v88 + 10);

    sub_100031C74(v21, type metadata accessor for MailboxTaskLogger);
    v128 = v89;
    v129 = v87;
    v90 = sub_1004A5824();
    v92 = sub_10015BA6C(v90, v91, &v130);

    *(v85 + 43) = v92;
    *(v85 + 51) = 2048;
    isa = v82[18].isa;
    sub_100031C74(v82, type metadata accessor for DetermineMessageBatches);
    *(v85 + 53) = isa;
    _os_log_impl(&_mh_execute_header, v83, v84, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Will query server. (batch size: %ld).", v85, 0x3Du);
    swift_arrayDestroy();

    return;
  }

  sub_100031C74(v82, type metadata accessor for DetermineMessageBatches);
  sub_100031C74(v18, type metadata accessor for MailboxTaskLogger);

  v94 = v21;
  v95 = type metadata accessor for MailboxTaskLogger;
LABEL_25:
  sub_100031C74(v94, v95);
}

uint64_t sub_10002BEE0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_10002F2C8();
  v7 = sub_1000300D8(v5, v6);
  v8 = sub_10003203C(a1);
  v9 = *(v7 + 2);
  if (v9)
  {
    v10 = 0;
    while (2)
    {
      v11 = &v7[16 * v10 + 32];
      v12 = *v11;
      v13 = *(v11 + 1);
      ++v10;
      v14 = *(v8 + 2) + 1;
      v15 = (v8 + 40);
      do
      {
        if (!--v14)
        {

          v24 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
          v25 = a2 + *(v24 + 48);
          *a2 = v12;
          *(a2 + 8) = v13;
          *(a2 + 16) = 1;
          *v25 = *(v2 + 144);
          *(v25 + 8) = v12;
          *(v25 + 16) = v13;
          *(v25 + 24) = 0;
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          v20 = *(*(v24 - 8) + 56);
          v22 = a2;
          v23 = 0;
          v21 = v24;
          goto LABEL_13;
        }

        v17 = *(v15 - 1);
        v16 = *v15;
        v15 += 2;
      }

      while (v17 != v12 || v16 != v13);
      if (v10 != v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
  v20 = *(*(v19 - 8) + 56);
  v21 = v19;
  v22 = a2;
  v23 = 1;
LABEL_13:

  return v20(v22, v23, 1, v21);
}

uint64_t sub_10002C07C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v6 = v5;
  v77 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  v12 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  __chkstk_darwin(v17);
  v74 = &v65 - v18;
  v19 = sub_10000C9C0(&qword_1005CDA60, &qword_1004CF7C8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v65 - v21;
  v23 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v76 = *(v23 - 8);
  v24 = *(v76 + 64);
  __chkstk_darwin(v23);
  v73 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v65 - v27;
  result = sub_100032120(0, a1, a2);
  if (result)
  {
    goto LABEL_26;
  }

  v72 = v22;
  v30 = *(v6 + 144);
  if (*(v6 + 72))
  {
    LODWORD(v31) = 1;
  }

  else
  {
    v32 = *(v6 + 64);
    v33 = __OFSUB__(a3, v32);
    v34 = a3 - v32;
    if (v33)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v33 = __OFADD__(v34, 1);
    v31 = v34 + 1;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return result;
    }

    if ((v31 - 0x100000000) < 0xFFFFFFFF00000001)
    {
      LODWORD(v31) = 1;
    }
  }

  v71 = v31;
  if ((a3 - 0x100000000) <= 0xFFFFFFFF00000000)
  {
    v35 = v72;
    (*(v76 + 56))(v72, 1, 1, v23);
LABEL_25:
    sub_100025F40(v35, &qword_1005CDA60, &qword_1004CF7C8);
LABEL_26:
    v53 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
    return (*(*(v53 - 8) + 56))(a5, 1, 1, v53);
  }

  v69 = v23;
  v70 = a5;
  v66 = v28;
  v67 = a4;
  v36 = swift_allocObject();
  *(v36 + 16) = a3;
  *(v36 + 20) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v30;
  v38 = v71;
  *(v37 + 32) = v71;
  *(v37 + 36) = a3;
  *(v37 + 40) = 0;
  *(v37 + 48) = v30;
  sub_10000C9C0(&qword_1005CDA70, &qword_1004CF7D8);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1000358F8;
  *(inited + 24) = v37;
  v68 = inited;
  sub_100016D2C();
  sub_1004A7114();
  result = swift_beginAccess();
  v40 = a3 - v38;
  if (v40 >= v30)
  {
    v41 = 0;
    v42 = __OFSUB__(0, v30);
    v43 = a3 - v30;
    while (v41 | v30)
    {
      if (v42)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

      if (-v30 > 0xFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      if (v43 + v41 < 1)
      {
        goto LABEL_33;
      }

      if ((v43 + v41) >> 32)
      {
        goto LABEL_34;
      }

      *(v36 + 16) = a3 - v30;
      *(v36 + 20) = 0;
      v78 = a3;
      result = MessageIdentifierSet.insert(_:)(&v79, &v78, v77);
      v41 -= v30;
      LODWORD(a3) = a3 - v30;
      if (v40 + v41 < v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_21:
  *(v36 + 16) = 0;
  *(v36 + 20) = 1;
  v78 = a3;
  v44 = v77;
  MessageIdentifierSet.insert(_:)(&v79, &v78, v77);
  *(v36 + 16) = 0;
  *(v36 + 20) = 1;
  v45 = v74;
  sub_100025FDC(v16, v74, &qword_1005CDA58, &qword_1004CF7C0);
  v78 = v71;
  MessageIdentifierSet.insert(_:)(&v79, &v78, v44);
  v46 = v75;
  sub_10000E268(v45, v75, &qword_1005CDA58, &qword_1004CF7C0);
  v47 = MessageIdentifierSet.count.getter();

  sub_100025F40(v45, &qword_1005CDA58, &qword_1004CF7C0);
  a5 = v70;
  if (v47 <= 0)
  {
    sub_100025F40(v46, &qword_1005CDA58, &qword_1004CF7C0);
    v49 = 1;
    v35 = v72;
  }

  else
  {
    v48 = v73;
    sub_100025FDC(v46, v73, &qword_1005CDA58, &qword_1004CF7C0);
    v35 = v72;
    sub_100025FDC(v48, v72, &qword_1005CDA68, &qword_1004CF7D0);
    v49 = 0;
  }

  v50 = v76;
  v51 = *(v76 + 56);
  v52 = v69;
  v51(v35, v49, 1, v69);

  if ((*(v50 + 48))(v35, 1, v52) == 1)
  {
    goto LABEL_25;
  }

  v54 = v66;
  sub_100025FDC(v35, v66, &qword_1005CDA68, &qword_1004CF7D0);
  sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v55 = swift_allocBox();
  v57 = v56;
  sub_10000E268(v54, v56, &qword_1005CDA68, &qword_1004CF7D0);
  v51(v57, 0, 1, v52);
  v58 = v55 | 0xB000000000000004;
  v59 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
  v60 = (a5 + *(v59 + 48));
  v79 = 1;
  *a5 = MessageIdentifierSet.contains(_:)(&v79, v77) & 1;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  if ((v67 & 0x100) != 0)
  {
    sub_100025F40(v54, &qword_1005CDA68, &qword_1004CF7D0);
    *v60 = v58;
  }

  else
  {
    sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
    v61 = *(type metadata accessor for SearchReturnOption() - 8);
    v62 = *(v61 + 72);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1004CEAA0;
    swift_storeEnumTagMultiPayload();
    sub_100025F40(v54, &qword_1005CDA68, &qword_1004CF7D0);
    *v60 = v58;
    v60[1] = v64;
  }

  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v59 - 8) + 56))(a5, 0, 1, v59);
}

uint64_t sub_10002C838(int a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = v4;
  v98 = a4;
  LODWORD(v97) = a1;
  v95 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v92 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = &v90 - v10;
  __chkstk_darwin(v11);
  v91 = &v90 - v12;
  __chkstk_darwin(v13);
  v93 = &v90 - v14;
  v15 = type metadata accessor for MessageBatches(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v90 - v21;
  v23 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v90 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  __chkstk_darwin(v30);
  v32 = &v90 - v31;
  __chkstk_darwin(v33);
  v35 = &v90 - v34;
  sub_100124ED4(a3 & 0x101, v22);
  v36 = *(v24 + 48);
  v96 = v23;
  if (v36(v22, 1, v23) == 1)
  {
    v37 = &qword_1005CD510;
    v38 = &unk_1004CF2E0;
    v39 = v22;
  }

  else
  {
    sub_100025FDC(v22, v35, &unk_1005D91B0, &unk_1004CF400);
    v41 = *(v4 + 144);
    sub_10000E268(v35, v32, &unk_1005D91B0, &unk_1004CF400);
    sub_1000D7B58(v41, v32, v97 & 1, v18);
    v42 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
    sub_100031C74(v5 + v42, type metadata accessor for DetermineMessageBatches.TaskState);
    sub_100031C0C(v18, v5 + v42, type metadata accessor for MessageBatches);
    type metadata accessor for DetermineMessageBatches.TaskState(0);
    swift_storeEnumTagMultiPayload();
    v43 = sub_10002D27C(v18);
    if (v44)
    {
      v45 = v98;
      v46 = v94;
      sub_100031C0C(v98, v94, type metadata accessor for MailboxTaskLogger);
      v47 = v92;
      sub_100031C0C(v45, v92, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v48 = v90;
      sub_10000E268(v35, v90, &unk_1005D91B0, &unk_1004CF400);
      v49 = sub_1004A4A54();
      v50 = sub_1004A6034();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v101 = v93;
        *v51 = 68159491;
        *(v51 + 4) = 2;
        *(v51 + 8) = 256;
        v52 = v95;
        v53 = *(v95 + 20);
        v97 = v35;
        v98 = v18;
        v54 = v47 + v53;
        *(v51 + 10) = *(v47 + v53);
        *(v51 + 11) = 2082;
        v55 = v46 + *(v52 + 20);
        *(v51 + 13) = sub_10015BA6C(*(v55 + 8), *(v55 + 16), &v101);
        *(v51 + 21) = 1040;
        *(v51 + 23) = 2;
        *(v51 + 27) = 512;
        LOWORD(v54) = *(v54 + 24);
        sub_100031C74(v47, type metadata accessor for MailboxTaskLogger);
        *(v51 + 29) = v54;
        *(v51 + 31) = 2160;
        *(v51 + 33) = 0x786F626C69616DLL;
        *(v51 + 41) = 2085;
        v56 = *(v55 + 32);
        LODWORD(v55) = *(v55 + 40);

        sub_100031C74(v46, type metadata accessor for MailboxTaskLogger);
        v99 = v56;
        v100 = v55;
        v57 = sub_1004A5824();
        v59 = sub_10015BA6C(v57, v58, &v101);

        *(v51 + 43) = v59;
        *(v51 + 51) = 2082;
        v60 = MessageIdentifierSet.debugDescription.getter(v96);
        v62 = v61;
        sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
        v63 = sub_10015BA6C(v60, v62, &v101);

        *(v51 + 53) = v63;
        _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Creating UID ranges from UIDs: %{public}s", v51, 0x3Du);
        swift_arrayDestroy();

        sub_100031C74(v98, type metadata accessor for MessageBatches);
        v39 = v97;
      }

      else
      {
        sub_100031C74(v47, type metadata accessor for MailboxTaskLogger);

        sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
        sub_100031C74(v46, type metadata accessor for MailboxTaskLogger);
        sub_100031C74(v18, type metadata accessor for MessageBatches);
        v39 = v35;
      }

      v37 = &unk_1005D91B0;
      v38 = &unk_1004CF400;
    }

    else
    {
      v64 = v43;
      v65 = v98;
      v66 = v93;
      sub_100031C0C(v98, v93, type metadata accessor for MailboxTaskLogger);
      v67 = v91;
      sub_100031C0C(v65, v91, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v35, v29, &unk_1005D91B0, &unk_1004CF400);
      v68 = sub_1004A4A54();
      v69 = sub_1004A6034();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v98 = v18;
        v71 = v70;
        v97 = swift_slowAlloc();
        v101 = v97;
        *v71 = 68159747;
        *(v71 + 4) = 2;
        *(v71 + 8) = 256;
        v72 = v95;
        v73 = *(v95 + 20);
        v94 = v64;
        v74 = v67;
        v75 = v67 + v73;
        *(v71 + 10) = *v75;
        *(v71 + 11) = 2082;
        v76 = v66 + *(v72 + 20);
        *(v71 + 13) = sub_10015BA6C(*(v76 + 8), *(v76 + 16), &v101);
        *(v71 + 21) = 1040;
        *(v71 + 23) = 2;
        *(v71 + 27) = 512;
        LOWORD(v75) = *(v75 + 24);
        sub_100031C74(v74, type metadata accessor for MailboxTaskLogger);
        *(v71 + 29) = v75;
        *(v71 + 31) = 2160;
        *(v71 + 33) = 0x786F626C69616DLL;
        *(v71 + 41) = 2085;
        v77 = *(v76 + 32);
        LODWORD(v76) = *(v76 + 40);

        sub_100031C74(v66, type metadata accessor for MailboxTaskLogger);
        v99 = v77;
        v100 = v76;
        v78 = sub_1004A5824();
        v80 = sub_10015BA6C(v78, v79, &v101);

        *(v71 + 43) = v80;
        *(v71 + 51) = 2082;
        v81 = MessageIdentifierSet.debugDescription.getter(v96);
        v82 = v35;
        v84 = v83;
        sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
        v85 = sub_10015BA6C(v81, v84, &v101);

        *(v71 + 53) = v85;
        *(v71 + 61) = 2082;
        v99 = v94;
        v86 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v87 = MessageIdentifierRange.debugDescription.getter(v86);
        v89 = sub_10015BA6C(v87, v88, &v101);

        *(v71 + 63) = v89;
        _os_log_impl(&_mh_execute_header, v68, v69, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Creating UID ranges from UIDs: %{public}s (window of interest: %{public}s)", v71, 0x47u);
        swift_arrayDestroy();

        sub_100031C74(v98, type metadata accessor for MessageBatches);
        v39 = v82;
      }

      else
      {
        sub_100031C74(v67, type metadata accessor for MailboxTaskLogger);

        sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
        sub_100031C74(v66, type metadata accessor for MailboxTaskLogger);
        sub_100031C74(v18, type metadata accessor for MessageBatches);
        v39 = v35;
      }

      v37 = &unk_1005D91B0;
      v38 = &unk_1004CF400;
    }
  }

  return sub_100025F40(v39, v37, v38);
}

uint64_t sub_10002D27C(uint64_t a1)
{
  if (*(v1 + 72))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 8 * v3 + 24);
  v10 = *(v2 + 36);
  v11 = v4;
  v5 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v11, &v10, &type metadata for UID, v5, &v12);
  v6 = *(v1 + 132);
  v7 = v6 != 0;
  v8 = v6 - 1;
  if (v8 == 0 || !v7)
  {
    v8 = 1;
  }

  if (*(v1 + 136))
  {
    v8 = -1;
  }

  v10 = v8;
  v11 = v12;
  static MessageIdentifier.... infix(_:_:)(&v11, &v10, &type metadata for UID, v5, &v12);
  result = v12;
  *(v1 + 76) = v12;
  *(v1 + 84) = 0;
  return result;
}

uint64_t sub_10002D350(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, unint64_t a9)
{
  v44 = type metadata accessor for MailboxTaskLogger(0);
  v15 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v45 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v46 = &v41[-v18];
  v19 = sub_10000C9C0(&qword_1005CDA28, &unk_1004CF780);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v41[-v22];
  v24 = type metadata accessor for DetermineMessageBatches(0);
  v25 = *(v20 + 56);
  sub_100031C0C(v9 + *(v24 + 56), &v23[v25], type metadata accessor for DetermineMessageBatches.TaskState);
  if (a3)
  {
    v26 = v47;
    sub_1000112D4(a9, a4, a5, a6, a7);
    if (!v26)
    {
      sub_10002D784(a9);
    }
  }

  else
  {
    type metadata accessor for DetermineMessageBatches.TaskState(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000112D4(a9, a4, a5, a6, a7);
    }

    else
    {
      v27 = v46;
      sub_100031C0C(a9, v46, type metadata accessor for MailboxTaskLogger);
      v28 = v45;
      sub_100031C0C(a9, v45, type metadata accessor for MailboxTaskLogger);
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
        v43 = swift_slowAlloc();
        v50 = v43;
        *v31 = 68159235;
        v42 = v30;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        v32 = v44;
        v33 = &v28[*(v44 + 20)];
        *(v31 + 10) = *v33;
        *(v31 + 11) = 2082;
        v34 = v27;
        v35 = &v27[*(v32 + 20)];
        *(v31 + 13) = sub_10015BA6C(*(v35 + 1), *(v35 + 2), &v50);
        *(v31 + 21) = 1040;
        *(v31 + 23) = 2;
        *(v31 + 27) = 512;
        LOWORD(v33) = *(v33 + 12);
        sub_100031C74(v28, type metadata accessor for MailboxTaskLogger);
        *(v31 + 29) = v33;
        *(v31 + 31) = 2160;
        *(v31 + 33) = 0x786F626C69616DLL;
        *(v31 + 41) = 2085;
        v36 = *(v35 + 4);
        LODWORD(v35) = *(v35 + 10);

        sub_100031C74(v34, type metadata accessor for MailboxTaskLogger);
        v48 = v36;
        v49 = v35;
        v37 = sub_1004A5824();
        v39 = sub_10015BA6C(v37, v38, &v50);

        *(v31 + 43) = v39;
        _os_log_impl(&_mh_execute_header, v29, v42, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed SEARCH for boundary IDs, but didn’t get any result from the server.", v31, 0x33u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v28, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v27, type metadata accessor for MailboxTaskLogger);
      }
    }
  }

  return sub_100031C74(&v23[v25], type metadata accessor for DetermineMessageBatches.TaskState);
}

unint64_t sub_10002D784(unint64_t a1)
{
  v5 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v251 = &v241 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v252 = &v241 - v9;
  __chkstk_darwin(v10);
  v265 = &v241 - v11;
  __chkstk_darwin(v12);
  v266 = (&v241 - v13);
  __chkstk_darwin(v14);
  v248 = &v241 - v15;
  __chkstk_darwin(v16);
  v250 = &v241 - v17;
  __chkstk_darwin(v18);
  v247 = &v241 - v19;
  __chkstk_darwin(v20);
  v249 = &v241 - v21;
  __chkstk_darwin(v22);
  v257 = &v241 - v23;
  __chkstk_darwin(v24);
  v258 = &v241 - v25;
  v26 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v263 = *(v26 - 8);
  v264 = v26;
  v27 = *(v263 + 64);
  __chkstk_darwin(v26);
  v260 = &v241 - v28;
  v29 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v241 - v31;
  v33 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v241 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v241 - v38;
  v40 = type metadata accessor for MessageBatches(0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v256 = &v241 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v246 = &v241 - v44;
  __chkstk_darwin(v45);
  v253 = &v241 - v46;
  __chkstk_darwin(v47);
  v267 = (&v241 - v48);
  __chkstk_darwin(v49);
  v255 = &v241 - v50;
  __chkstk_darwin(v51);
  v245 = &v241 - v52;
  __chkstk_darwin(v53);
  v254 = &v241 - v54;
  __chkstk_darwin(v55);
  v244 = &v241 - v56;
  __chkstk_darwin(v57);
  v268 = (&v241 - v58);
  sub_10002F2C8();
  if (v59 < 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_unknownObjectRelease();
    v77 = v5;
    v76 = v243;
    v75 = v242;
    v74 = v267;
LABEL_15:
    sub_1000B1490(v1, v75, v76, v77);
    v73 = v78;
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    sub_100016D2C();
    sub_1004A7114();
    sub_10000E268(v39, v36, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v36, &unk_1005D91B0, &unk_1004CF400);
      v83 = 1;
    }

    else
    {
      v82 = v260;
      sub_100025FDC(v36, v260, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v82, v32, &qword_1005CD1D0, &unk_1004CF2C0);
      v83 = 0;
    }

    v84 = v266;
    (*(v263 + 56))(v32, v83, 1, v264);
    v85 = v268;
    sub_1000D80D8(v3, v73, v32, v268);
    sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
    v86 = sub_10002D27C(v85);
    v88 = *(v85[1] + 16);
    v89 = v265;
    if (v88)
    {
      if (v88 <= 9)
      {
        if (v87)
        {
          v90 = v262;
          v91 = v250;
          sub_100031C0C(v262, v250, type metadata accessor for MailboxTaskLogger);
          v92 = v248;
          sub_100031C0C(v90, v248, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v93 = v268;
          v94 = v245;
          sub_100031C0C(v268, v245, type metadata accessor for MessageBatches);
          v95 = v255;
          sub_100031C0C(v93, v255, type metadata accessor for MessageBatches);
          v96 = sub_1004A4A54();
          v97 = sub_1004A6034();
          if (os_log_type_enabled(v96, v97))
          {
            LODWORD(v265) = v97;
            v267 = v96;
            v98 = swift_slowAlloc();
            v264 = swift_slowAlloc();
            v274 = v264;
            *v98 = 68159747;
            *(v98 + 4) = 2;
            *(v98 + 8) = 256;
            v99 = v259;
            v100 = v92 + *(v259 + 20);
            *(v98 + 10) = *v100;
            *(v98 + 11) = 2082;
            v101 = v91 + *(v99 + 20);
            *(v98 + 13) = sub_10015BA6C(*(v101 + 8), *(v101 + 16), &v274);
            *(v98 + 21) = 1040;
            *(v98 + 23) = 2;
            *(v98 + 27) = 512;
            LOWORD(v100) = *(v100 + 24);
            sub_100031C74(v92, type metadata accessor for MailboxTaskLogger);
            *(v98 + 29) = v100;
            *(v98 + 31) = 2160;
            *(v98 + 33) = 0x786F626C69616DLL;
            *(v98 + 41) = 2085;
            v102 = *(v101 + 32);
            LODWORD(v101) = *(v101 + 40);

            sub_100031C74(v91, type metadata accessor for MailboxTaskLogger);
            v272 = v102;
            v273 = v101;
            v103 = sub_1004A5824();
            v105 = sub_10015BA6C(v103, v104, &v274);

            *(v98 + 43) = v105;
            *(v98 + 51) = 2048;
            v106 = *(*(v94 + 8) + 16);
            sub_100031C74(v94, type metadata accessor for MessageBatches);
            *(v98 + 53) = v106;
            v266 = v98;
            *(v98 + 61) = 2082;
            v107 = v255;
            v108 = *(v255 + 8);
            v109 = *(v108 + 16);
            v110 = _swiftEmptyArrayStorage;
            if (v109)
            {
              v272 = _swiftEmptyArrayStorage;
              sub_100134BC4(0, v109, 0);
              v110 = v272;
              v111 = (v108 + 32);
              do
              {
                v271 = *v111;
                sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
                v112 = sub_1004A5804();
                v114 = v113;
                v272 = v110;
                v116 = v110[2];
                v115 = v110[3];
                if (v116 >= v115 >> 1)
                {
                  sub_100134BC4((v115 > 1), v116 + 1, 1);
                  v110 = v272;
                }

                v110[2] = v116 + 1;
                v117 = &v110[2 * v116];
                v117[4] = v112;
                v117[5] = v114;
                ++v111;
                --v109;
              }

              while (v109);
              v107 = v255;
            }

            v272 = v110;
            sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
            sub_100031CDC();
            v197 = sub_1004A5614();
            v199 = v198;
LABEL_76:

            sub_100031C74(v107, type metadata accessor for MessageBatches);
            v229 = sub_10015BA6C(v197, v199, &v274);

            v230 = v266;
            *(&v266[7].isa + 7) = v229;
            v121 = v267;
            _os_log_impl(&_mh_execute_header, v267, v265, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s", v230, 0x47u);
            swift_arrayDestroy();
            goto LABEL_77;
          }
        }

        else
        {
          v267 = v86;
          v154 = v262;
          v91 = v249;
          sub_100031C0C(v262, v249, type metadata accessor for MailboxTaskLogger);
          v92 = v247;
          sub_100031C0C(v154, v247, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v155 = v268;
          v94 = v244;
          sub_100031C0C(v268, v244, type metadata accessor for MessageBatches);
          v95 = v254;
          sub_100031C0C(v155, v254, type metadata accessor for MessageBatches);
          v96 = sub_1004A4A54();
          v156 = sub_1004A6034();
          if (os_log_type_enabled(v96, v156))
          {
            LODWORD(v264) = v156;
            v266 = v96;
            v262 = v267 >> 32;
            v157 = swift_slowAlloc();
            v263 = swift_slowAlloc();
            v274 = v263;
            *v157 = 68160003;
            *(v157 + 4) = 2;
            *(v157 + 8) = 256;
            v158 = v259;
            v159 = v92 + *(v259 + 20);
            *(v157 + 10) = *v159;
            *(v157 + 11) = 2082;
            v160 = v91 + *(v158 + 20);
            *(v157 + 13) = sub_10015BA6C(*(v160 + 8), *(v160 + 16), &v274);
            *(v157 + 21) = 1040;
            *(v157 + 23) = 2;
            *(v157 + 27) = 512;
            LOWORD(v159) = *(v159 + 24);
            sub_100031C74(v92, type metadata accessor for MailboxTaskLogger);
            *(v157 + 29) = v159;
            *(v157 + 31) = 2160;
            *(v157 + 33) = 0x786F626C69616DLL;
            *(v157 + 41) = 2085;
            v161 = *(v160 + 32);
            LODWORD(v160) = *(v160 + 40);

            sub_100031C74(v91, type metadata accessor for MailboxTaskLogger);
            v272 = v161;
            v273 = v160;
            v162 = sub_1004A5824();
            v164 = sub_10015BA6C(v162, v163, &v274);

            *(v157 + 43) = v164;
            *(v157 + 51) = 2048;
            v165 = *(*(v94 + 8) + 16);
            sub_100031C74(v94, type metadata accessor for MessageBatches);
            *(v157 + 53) = v165;
            v265 = v157;
            *(v157 + 61) = 2082;
            v166 = v254;
            v167 = *(v254 + 8);
            v168 = *(v167 + 16);
            v169 = _swiftEmptyArrayStorage;
            if (v168)
            {
              v272 = _swiftEmptyArrayStorage;
              sub_100134BC4(0, v168, 0);
              v169 = v272;
              v170 = (v167 + 32);
              do
              {
                v271 = *v170;
                sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
                v171 = sub_1004A5804();
                v173 = v172;
                v272 = v169;
                v175 = v169[2];
                v174 = v169[3];
                if (v175 >= v174 >> 1)
                {
                  sub_100134BC4((v174 > 1), v175 + 1, 1);
                  v169 = v272;
                }

                v169[2] = v175 + 1;
                v176 = &v169[2 * v175];
                v176[4] = v171;
                v176[5] = v173;
                ++v170;
                --v168;
              }

              while (v168);
              v166 = v254;
            }

            v272 = v169;
            sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
            sub_100031CDC();
            v200 = sub_1004A5614();
            v202 = v201;

            sub_100031C74(v166, type metadata accessor for MessageBatches);
            v203 = sub_10015BA6C(v200, v202, &v274);

            v204 = v265;
            *(v265 + 63) = v203;
            *(v204 + 71) = 2082;
            v272 = __PAIR64__(v262, v267);
            v205 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
            v206 = MessageIdentifierRange.debugDescription.getter(v205);
            v208 = sub_10015BA6C(v206, v207, &v274);

            *(v204 + 73) = v208;
            v121 = v266;
            _os_log_impl(&_mh_execute_header, v266, v264, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s (window of interest: %{public}s)", v204, 0x51u);
            swift_arrayDestroy();

            goto LABEL_78;
          }
        }

        sub_100031C74(v94, type metadata accessor for MessageBatches);
        sub_100031C74(v92, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v91, type metadata accessor for MailboxTaskLogger);
        v153 = v95;
        v196 = type metadata accessor for MessageBatches;
LABEL_57:
        sub_100031C74(v153, v196);
LABEL_79:
        v231 = *(v261 + 56);
        v232 = v269;
        sub_100031C74(v269 + v231, type metadata accessor for DetermineMessageBatches.TaskState);
        sub_100035908(v268, v232 + v231, type metadata accessor for MessageBatches);
        type metadata accessor for DetermineMessageBatches.TaskState(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (v87)
      {
        v131 = v262;
        v132 = v252;
        sub_100031C0C(v262, v252, type metadata accessor for MailboxTaskLogger);
        v133 = v251;
        sub_100031C0C(v131, v251, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v134 = v268;
        v135 = v246;
        sub_100031C0C(v268, v246, type metadata accessor for MessageBatches);
        v136 = v134;
        v137 = v256;
        sub_100031C0C(v136, v256, type metadata accessor for MessageBatches);
        v138 = sub_1004A4A54();
        v139 = sub_1004A6034();
        if (os_log_type_enabled(v138, v139))
        {
          LODWORD(v265) = v139;
          v267 = v138;
          v140 = swift_slowAlloc();
          v264 = swift_slowAlloc();
          v274 = v264;
          *v140 = 68159747;
          *(v140 + 4) = 2;
          *(v140 + 8) = 256;
          v141 = v259;
          v142 = v133 + *(v259 + 20);
          *(v140 + 10) = *v142;
          v143 = v133;
          *(v140 + 11) = 2082;
          v144 = v132 + *(v141 + 20);
          *(v140 + 13) = sub_10015BA6C(*(v144 + 8), *(v144 + 16), &v274);
          *(v140 + 21) = 1040;
          *(v140 + 23) = 2;
          *(v140 + 27) = 512;
          LOWORD(v142) = *(v142 + 24);
          sub_100031C74(v143, type metadata accessor for MailboxTaskLogger);
          *(v140 + 29) = v142;
          *(v140 + 31) = 2160;
          *(v140 + 33) = 0x786F626C69616DLL;
          *(v140 + 41) = 2085;
          v145 = *(v144 + 32);
          LODWORD(v144) = *(v144 + 40);

          sub_100031C74(v132, type metadata accessor for MailboxTaskLogger);
          v272 = v145;
          v273 = v144;
          v146 = sub_1004A5824();
          v148 = sub_10015BA6C(v146, v147, &v274);

          *(v140 + 43) = v148;
          *(v140 + 51) = 2048;
          v149 = *(*(v135 + 8) + 16);
          sub_100031C74(v135, type metadata accessor for MessageBatches);
          *(v140 + 53) = v149;
          v266 = v140;
          *(v140 + 61) = 2082;
          v107 = v256;
          v150 = *(v256 + 8);
          v151 = *(v150 + 16);
          if (v151 <= 0xA)
          {
            v209 = *(v256 + 8);
          }

          else
          {
            sub_1000B1490(*(v256 + 8), v150 + 32, 0, 0x15uLL);
            v150 = v152;
            v151 = *(v152 + 16);
          }

          if (v151)
          {
            v272 = _swiftEmptyArrayStorage;
            sub_100134BC4(0, v151, 0);
            v210 = 32;
            v211 = v272;
            do
            {
              v271 = *(v150 + v210);
              sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
              v212 = sub_1004A5804();
              v214 = v213;
              v272 = v211;
              v216 = v211[2];
              v215 = v211[3];
              if (v216 >= v215 >> 1)
              {
                sub_100134BC4((v215 > 1), v216 + 1, 1);
                v211 = v272;
              }

              v211[2] = v216 + 1;
              v217 = &v211[2 * v216];
              v217[4] = v212;
              v217[5] = v214;
              v210 += 8;
              --v151;
            }

            while (v151);

            v107 = v256;
          }

          else
          {

            v211 = _swiftEmptyArrayStorage;
          }

          v272 = v211;
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_100031CDC();
          v197 = sub_1004A5614();
          v199 = v228;
          goto LABEL_76;
        }

        sub_100031C74(v135, type metadata accessor for MessageBatches);
        sub_100031C74(v133, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v137, type metadata accessor for MessageBatches);
        v153 = v132;
      }

      else
      {
        v177 = v86;
        v178 = v262;
        sub_100031C0C(v262, v84, type metadata accessor for MailboxTaskLogger);
        sub_100031C0C(v178, v89, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v179 = v268;
        sub_100031C0C(v268, v74, type metadata accessor for MessageBatches);
        v180 = v253;
        sub_100031C0C(v179, v253, type metadata accessor for MessageBatches);
        v181 = sub_1004A4A54();
        v182 = sub_1004A6034();
        if (os_log_type_enabled(v181, v182))
        {
          LODWORD(v264) = v182;
          v266 = v181;
          v267 = v177;
          v262 = v177 >> 32;
          v183 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v274 = v263;
          *v183 = 68160003;
          *(v183 + 4) = 2;
          *(v183 + 8) = 256;
          v184 = v259;
          v185 = v89 + *(v259 + 20);
          *(v183 + 10) = *v185;
          *(v183 + 11) = 2082;
          v186 = v74;
          v187 = v84 + *(v184 + 20);
          *(v183 + 13) = sub_10015BA6C(*(v187 + 1), *(v187 + 2), &v274);
          *(v183 + 21) = 1040;
          *(v183 + 23) = 2;
          *(v183 + 27) = 512;
          LOWORD(v185) = *(v185 + 24);
          sub_100031C74(v89, type metadata accessor for MailboxTaskLogger);
          *(v183 + 29) = v185;
          *(v183 + 31) = 2160;
          *(v183 + 33) = 0x786F626C69616DLL;
          *(v183 + 41) = 2085;
          v188 = *(v187 + 4);
          LODWORD(v187) = *(v187 + 10);

          sub_100031C74(v84, type metadata accessor for MailboxTaskLogger);
          v272 = v188;
          v273 = v187;
          v189 = sub_1004A5824();
          v191 = sub_10015BA6C(v189, v190, &v274);

          *(v183 + 43) = v191;
          *(v183 + 51) = 2048;
          v192 = *(*(v186 + 8) + 16);
          sub_100031C74(v186, type metadata accessor for MessageBatches);
          *(v183 + 53) = v192;
          *(v183 + 61) = 2082;
          v193 = *(v180 + 8);
          v194 = *(v193 + 16);
          if (v194 <= 0xA)
          {
            v218 = *(v180 + 8);
          }

          else
          {
            sub_1000B1490(*(v180 + 8), v193 + 32, 0, 0x15uLL);
            v193 = v195;
            v194 = *(v195 + 16);
          }

          v219 = v266;
          if (v194)
          {
            v265 = v183;
            v272 = _swiftEmptyArrayStorage;
            sub_100134BC4(0, v194, 0);
            v220 = 32;
            v221 = v272;
            do
            {
              v271 = *(v193 + v220);
              sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
              v222 = sub_1004A5804();
              v224 = v223;
              v272 = v221;
              v226 = v221[2];
              v225 = v221[3];
              if (v226 >= v225 >> 1)
              {
                sub_100134BC4((v225 > 1), v226 + 1, 1);
                v221 = v272;
              }

              v221[2] = v226 + 1;
              v227 = &v221[2 * v226];
              v227[4] = v222;
              v227[5] = v224;
              v220 += 8;
              --v194;
            }

            while (v194);

            v180 = v253;
            v183 = v265;
            v219 = v266;
          }

          else
          {

            v221 = _swiftEmptyArrayStorage;
          }

          v272 = v221;
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_100031CDC();
          v233 = sub_1004A5614();
          v235 = v234;

          sub_100031C74(v180, type metadata accessor for MessageBatches);
          v236 = sub_10015BA6C(v233, v235, &v274);

          *(v183 + 63) = v236;
          *(v183 + 71) = 2082;
          v272 = __PAIR64__(v262, v267);
          v237 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
          v238 = MessageIdentifierRange.debugDescription.getter(v237);
          v240 = sub_10015BA6C(v238, v239, &v274);

          *(v183 + 73) = v240;
          _os_log_impl(&_mh_execute_header, v219, v264, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s (window of interest: %{public}s)", v183, 0x51u);
          swift_arrayDestroy();

          goto LABEL_79;
        }

        sub_100031C74(v74, type metadata accessor for MessageBatches);
        sub_100031C74(v89, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v180, type metadata accessor for MessageBatches);
        v153 = v84;
      }
    }

    else
    {
      v118 = v262;
      v119 = v258;
      sub_100031C0C(v262, v258, type metadata accessor for MailboxTaskLogger);
      v120 = v257;
      sub_100031C0C(v118, v257, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v121 = sub_1004A4A54();
      v122 = sub_1004A6034();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        *v123 = 68159235;
        *(v123 + 4) = 2;
        *(v123 + 8) = 256;
        v124 = v259;
        v125 = v120 + *(v259 + 20);
        *(v123 + 10) = *v125;
        *(v123 + 11) = 2082;
        v126 = v119 + *(v124 + 20);
        *(v123 + 13) = sub_10015BA6C(*(v126 + 8), *(v126 + 16), &v274);
        *(v123 + 21) = 1040;
        *(v123 + 23) = 2;
        *(v123 + 27) = 512;
        LOWORD(v125) = *(v125 + 24);
        sub_100031C74(v120, type metadata accessor for MailboxTaskLogger);
        *(v123 + 29) = v125;
        *(v123 + 31) = 2160;
        *(v123 + 33) = 0x786F626C69616DLL;
        *(v123 + 41) = 2085;
        v127 = *(v126 + 32);
        LODWORD(v126) = *(v126 + 40);

        sub_100031C74(v119, type metadata accessor for MailboxTaskLogger);
        v272 = v127;
        v273 = v126;
        v128 = sub_1004A5824();
        v130 = sub_10015BA6C(v128, v129, &v274);

        *(v123 + 43) = v130;
        _os_log_impl(&_mh_execute_header, v121, v122, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. No message batches.", v123, 0x33u);
        swift_arrayDestroy();
LABEL_77:

LABEL_78:

        goto LABEL_79;
      }

      sub_100031C74(v120, type metadata accessor for MailboxTaskLogger);

      v153 = v119;
    }

    v196 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_57;
  }

  v60 = v59;
  v262 = a1;
  v259 = v5;
  v270 = v2;
  result = type metadata accessor for DetermineMessageBatches(0);
  v261 = result;
  v62 = *(result + 60);
  v269 = v1;
  v63 = v1 + v62;
  v64 = *(v1 + v62);
  if (*(v64 + 16))
  {
    v65 = 1;
    while (1)
    {
      result = sub_100063D94(v65);
      if ((v66 & 1) == 0)
      {
        break;
      }

      if (v60 == v65)
      {
        goto LABEL_9;
      }

      if (__OFADD__(v65++, 1))
      {
        __break(1u);
LABEL_9:
        v3 = *(v269 + 144);
        v68 = sub_10002F374();
        if (*(v63 + 8))
        {
          sub_100032D20();
          swift_allocError();
          return swift_willThrow();
        }

        v70 = v69;
        v71 = v68;
        v72 = sub_100032AF0(v64);
        v73 = v72;
        if (v70)
        {
          v74 = v267;
          goto LABEL_23;
        }

        v74 = v267;
        if (v71 >= *(v72 + 2))
        {
          goto LABEL_23;
        }

        v1 = sub_100096640(v71, v72);
        if ((v77 & 1) == 0)
        {
          goto LABEL_15;
        }

        v5 = v77;
        v243 = v76;
        v242 = v75;
        sub_1004A6DA4();
        swift_unknownObjectRetain_n();
        v79 = swift_dynamicCastClass();
        if (!v79)
        {
          swift_unknownObjectRelease();
          v79 = _swiftEmptyArrayStorage;
        }

        v80 = v79[2];

        if (!__OFSUB__(v5 >> 1, v243))
        {
          if (v80 != (v5 >> 1) - v243)
          {
            goto LABEL_85;
          }

          v81 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v74 = v267;
          v73 = v81;
          if (!v81)
          {
            v73 = _swiftEmptyArrayStorage;
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        goto LABEL_84;
      }
    }
  }

  return result;
}

void sub_10002F2C8()
{
  v1 = *(v0 + 144);
  if (v1 < 1)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = *(v0 + 88);
  if (v2 >= 1)
  {
    if (*(v0 + 72))
    {
      if (!__OFADD__(v2, 50000))
      {
        return;
      }

      goto LABEL_16;
    }

    v3 = *(v0 + 64);
    v4 = __OFADD__(v3, v1 >> 1);
    v5 = v3 + (v1 >> 1);
    if (v4)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v6 = v5 / v1;
    v7 = v5 / v1 * v1;
    if ((v6 * v1) >> 64 != v7 >> 63)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v4 = __OFSUB__(v7, v2);
    v8 = v7 - v2;
    if (v4)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v8 < 0)
    {
      v4 = __OFSUB__(0, v8);
      v8 = -v8;
      if (v4)
      {
        goto LABEL_21;
      }
    }

    if (v8 < v1 && __OFADD__(v6, 1))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }
  }
}

uint64_t sub_10002F374()
{
  if (*(v0 + 72))
  {
    return 0;
  }

  v1 = *(v0 + 144);
  if (v1 >= 1)
  {
    if (*(v0 + 88) >= 1)
    {
      v2 = *(v0 + 64);
      v3 = __OFADD__(v2, v1 >> 1);
      v4 = v2 + (v1 >> 1);
      if (!v3)
      {
        return v4 / v1;
      }

      goto LABEL_8;
    }

    return 0;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void sub_10002F3B8(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v89 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = (&v84 - v8);
  __chkstk_darwin(v9);
  v11 = &v84 - v10;
  __chkstk_darwin(v12);
  v14 = &v84 - v13;
  v15 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MessageBatches(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v84 - v24;
  __chkstk_darwin(v26);
  v28 = &v84 - v27;
  v29 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
  v90 = v2;
  sub_100031C0C(v2 + v29, v18, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100035908(v18, v28, type metadata accessor for MessageBatches);
    sub_100031C0C(a2, v14, type metadata accessor for MailboxTaskLogger);
    sub_100031C0C(a2, v11, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100031C0C(v28, v25, type metadata accessor for MessageBatches);
    v30 = v28;
    sub_100031C0C(v28, v22, type metadata accessor for MessageBatches);
    v31 = sub_1004A4A54();
    v32 = sub_1004A6034();
    v33 = v22;
    if (os_log_type_enabled(v31, v32))
    {
      v87 = v32;
      v88 = v31;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v95 = v35;
      *v34 = 68159747;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v36 = v89;
      v37 = &v11[*(v89 + 20)];
      *(v34 + 10) = *v37;
      *(v34 + 11) = 2082;
      v38 = v14;
      v39 = &v14[*(v36 + 20)];
      *(v34 + 13) = sub_10015BA6C(*(v39 + 1), *(v39 + 2), &v95);
      *(v34 + 21) = 1040;
      *(v34 + 23) = 2;
      *(v34 + 27) = 512;
      LOWORD(v37) = *(v37 + 12);
      sub_100031C74(v11, type metadata accessor for MailboxTaskLogger);
      *(v34 + 29) = v37;
      *(v34 + 31) = 2160;
      *(v34 + 33) = 0x786F626C69616DLL;
      *(v34 + 41) = 2085;
      v40 = *(v39 + 4);
      LODWORD(v39) = *(v39 + 10);

      sub_100031C74(v38, type metadata accessor for MailboxTaskLogger);
      v93 = v40;
      v94 = v39;
      v41 = sub_1004A5824();
      v43 = sub_10015BA6C(v41, v42, &v95);

      *(v34 + 43) = v43;
      *(v34 + 51) = 2048;
      v44 = *(*(v25 + 1) + 16);
      sub_100031C74(v25, type metadata accessor for MessageBatches);
      *(v34 + 53) = v44;
      *(v34 + 61) = 2082;
      v89 = v33;
      v45 = *(v33 + 8);
      v46 = *(v45 + 16);
      v47 = _swiftEmptyArrayStorage;
      v48 = v30;
      if (v46)
      {
        v86 = v35;
        v93 = _swiftEmptyArrayStorage;
        sub_100134BC4(0, v46, 0);
        v47 = v93;
        v49 = (v45 + 32);
        do
        {
          v92 = *v49;
          sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
          v50 = sub_1004A5804();
          v93 = v47;
          v53 = *(v47 + 2);
          v52 = *(v47 + 3);
          if (v53 >= v52 >> 1)
          {
            v85 = v50;
            v55 = v51;
            sub_100134BC4((v52 > 1), v53 + 1, 1);
            v51 = v55;
            v50 = v85;
            v47 = v93;
          }

          *(v47 + 2) = v53 + 1;
          v54 = &v47[16 * v53];
          *(v54 + 4) = v50;
          *(v54 + 5) = v51;
          ++v49;
          --v46;
        }

        while (v46);
      }

      v93 = v47;
      sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
      sub_100031CDC();
      v73 = sub_1004A5614();
      v75 = v74;

      sub_100031C74(v89, type metadata accessor for MessageBatches);
      v76 = sub_10015BA6C(v73, v75, &v95);

      *(v34 + 63) = v76;
      v77 = v88;
      _os_log_impl(&_mh_execute_header, v88, v87, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created %ld message batches: %{public}s", v34, 0x47u);
      swift_arrayDestroy();

      v70 = v91;
    }

    else
    {
      sub_100031C74(v25, type metadata accessor for MessageBatches);
      sub_100031C74(v11, type metadata accessor for MailboxTaskLogger);

      sub_100031C74(v14, type metadata accessor for MailboxTaskLogger);
      v69 = sub_100031C74(v22, type metadata accessor for MessageBatches);
      v70 = v91;
      v48 = v30;
    }

    v78 = *(v90 + 120);
    v79 = *(v90 + 128);
    __chkstk_darwin(v69);
    *(&v84 - 2) = v48;
    if (*(v70 + 192) == 1)
    {
      v81 = *(v70 + 176);
      v80 = *(v70 + 184);
      v93 = *(v70 + 168);
      v82 = v93;

      sub_1000BE940(&v93, v78, v79, 0, sub_100031CD4);
      sub_100020D58(v82, v81, v80, 1);
      v83 = v93;
      *(v70 + 176) = 0;
      *(v70 + 184) = 0;
      *(v70 + 168) = v83;
      *(v70 + 192) = 1;
    }

    v72 = type metadata accessor for MessageBatches;
    v71 = v48;
  }

  else
  {
    sub_100031C74(v18, type metadata accessor for DetermineMessageBatches.TaskState);
    v56 = v88;
    sub_100031C0C(a2, v88, type metadata accessor for MailboxTaskLogger);
    sub_100031C0C(a2, v6, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v57 = sub_1004A4A54();
    v58 = sub_1004A6014();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v59 = 68159235;
      *(v59 + 4) = 2;
      *(v59 + 8) = 256;
      v60 = v89;
      v61 = &v6[*(v89 + 20)];
      *(v59 + 10) = *v61;
      *(v59 + 11) = 2082;
      v62 = v56 + *(v60 + 20);
      *(v59 + 13) = sub_10015BA6C(*(v62 + 1), *(v62 + 2), &v95);
      *(v59 + 21) = 1040;
      *(v59 + 23) = 2;
      *(v59 + 27) = 512;
      v63 = *(v61 + 12);
      sub_100031C74(v6, type metadata accessor for MailboxTaskLogger);
      *(v59 + 29) = v63;
      *(v59 + 31) = 2160;
      *(v59 + 33) = 0x786F626C69616DLL;
      *(v59 + 41) = 2085;
      v64 = *(v62 + 4);
      v65 = *(v62 + 10);

      sub_100031C74(v56, type metadata accessor for MailboxTaskLogger);
      v93 = v64;
      v94 = v65;
      v66 = sub_1004A5824();
      v68 = sub_10015BA6C(v66, v67, &v95);

      *(v59 + 43) = v68;
      _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to determine message batches", v59, 0x33u);
      swift_arrayDestroy();

      return;
    }

    sub_100031C74(v6, type metadata accessor for MailboxTaskLogger);

    v71 = v56;
    v72 = type metadata accessor for MailboxTaskLogger;
  }

  sub_100031C74(v71, v72);
}

uint64_t sub_10002FD40(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MailboxSyncState() + 60);
  sub_100025F40(a1 + v4, &qword_1005CDA20, &unk_1004D2F20);
  sub_100031C0C(a2, a1 + v4, type metadata accessor for MessageBatches);
  v5 = type metadata accessor for MessageBatches(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 0, 1, v5);
}

uint64_t sub_10002FE08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_10002FE5C()
{
  if (qword_1005CCE18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002FEBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031C0C(v4 + *(a3 + 56), v12, type metadata accessor for DetermineMessageBatches.TaskState);
  LODWORD(a3) = swift_getEnumCaseMultiPayload();
  sub_100031C74(v12, type metadata accessor for DetermineMessageBatches.TaskState);
  if (a3 == 2)
  {
    if (*(v4 + 137) == 2)
    {
      return sub_10002BEE0(a2, a4);
    }

    else
    {
      return sub_10002C07C(a1, a2, *(v4 + 88), *(v4 + 137) & 0x101, a4);
    }
  }

  else
  {
    v14 = sub_10000C9C0(&qword_1005CDA50, &qword_1004CF7B8);
    return (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
  }
}

unint64_t sub_100030030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t *a6@<X8>)
{
  result = sub_100032D74(a1, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

char *sub_1000300D8(uint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2 - 1;
  v5 = _swiftEmptyArrayStorage;
  v6 = 1;
  while (1)
  {
    v7 = v6 + a2;
    if (__OFADD__(v6, a2))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v8 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_20;
    }

    if (v8 > a1)
    {
      break;
    }

    if (v8 < v6)
    {
      goto LABEL_21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100085BDC(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_100085BDC((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v11 = &v5[16 * v10];
    *(v11 + 4) = v6;
    *(v11 + 5) = v8;
    v6 += v4;
    if (v8 >= a1)
    {
      return v5;
    }
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

LABEL_22:
  v5 = sub_100085BDC(0, *(v5 + 2) + 1, 1, v5);
LABEL_15:
  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = sub_100085BDC((v12 > 1), v13 + 1, 1, v5);
  }

  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = a1;
  return v5;
}

Swift::Int sub_100030248()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_100092528(v4, v1);
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

void sub_1000302A8(__int128 *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_100092528(a1, v2);
  sub_1004A6EC4(v3);
}

Swift::Int sub_1000302E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_100092528(v4, v1);
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

uint64_t sub_10003033C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_100114730(*a1, *a2) & ~(v2 ^ v3) & 1;
}

unint64_t sub_100030384()
{
  result = qword_1005CD948;
  if (!qword_1005CD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD948);
  }

  return result;
}

unint64_t sub_1000303D8()
{
  result = qword_1005CD950;
  if (!qword_1005CD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD950);
  }

  return result;
}

unint64_t sub_100030430()
{
  result = qword_1005CD958;
  if (!qword_1005CD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CD958);
  }

  return result;
}

unint64_t sub_100030484(uint64_t a1)
{
  result = sub_1000304AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000304AC()
{
  result = qword_1005CDA10;
  if (!qword_1005CDA10)
  {
    type metadata accessor for DetermineMessageBatches(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDA10);
  }

  return result;
}

void sub_100030504(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v199 = a1;
  v200 = a4;
  v196 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v196 - 8) + 64);
  __chkstk_darwin(v196);
  v193 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v194 = &v189 - v10;
  __chkstk_darwin(v11);
  v190 = &v189 - v12;
  __chkstk_darwin(v13);
  v192 = &v189 - v14;
  __chkstk_darwin(v15);
  v189 = &v189 - v16;
  __chkstk_darwin(v17);
  v191 = &v189 - v18;
  __chkstk_darwin(v19);
  v195 = &v189 - v20;
  __chkstk_darwin(v21);
  v23 = &v189 - v22;
  __chkstk_darwin(v24);
  v26 = &v189 - v25;
  __chkstk_darwin(v27);
  v29 = &v189 - v28;
  __chkstk_darwin(v30);
  v32 = &v189 - v31;
  __chkstk_darwin(v33);
  v35 = &v189 - v34;
  __chkstk_darwin(v36);
  v38 = &v189 - v37;
  __chkstk_darwin(v39);
  v41 = &v189 - v40;
  v197 = v4;
  v198 = a3;
  v42 = *v4;
  if (*(v42 + 16) && (v43 = sub_100063D94(a3), (v44 & 1) != 0))
  {
    v45 = *(v42 + 56) + 12 * v43;
    if (*(v45 + 8))
    {
      if (a2)
      {
        return;
      }

      v46 = v200;
      sub_100031C0C(v200, v29, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v46, v26, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v47 = sub_1004A4A54();
      v48 = sub_1004A6034();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *v49 = 68159747;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v50 = v196;
        v51 = &v26[*(v196 + 20)];
        *(v49 + 10) = *v51;
        *(v49 + 11) = 2082;
        v52 = &v29[*(v50 + 20)];
        *(v49 + 13) = sub_10015BA6C(*(v52 + 1), *(v52 + 2), &v204);
        *(v49 + 21) = 1040;
        *(v49 + 23) = 2;
        *(v49 + 27) = 512;
        LOWORD(v51) = *(v51 + 12);
        sub_100031C74(v26, type metadata accessor for MailboxTaskLogger);
        *(v49 + 29) = v51;
        *(v49 + 31) = 2160;
        *(v49 + 33) = 0x786F626C69616DLL;
        *(v49 + 41) = 2085;
        v53 = *(v52 + 4);
        v54 = *(v52 + 10);

        sub_100031C74(v29, type metadata accessor for MailboxTaskLogger);
        v202 = v53;
        v203 = v54;
        v55 = sub_1004A5824();
        v57 = sub_10015BA6C(v55, v56, &v204);

        *(v49 + 43) = v57;
        *(v49 + 51) = 2048;
        v58 = v198;
        v59 = v199;
        *(v49 + 53) = v198;
        *(v49 + 61) = 2082;
        v202 = v59;
        sub_10000C9C0(&qword_1005CDA48, &qword_1004CF7A8);
        v60 = sub_1004A56E4();
        v62 = sub_10015BA6C(v60, v61, &v204);

        *(v49 + 63) = v62;
        _os_log_impl(&_mh_execute_header, v47, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response NIL and %{public}s", v49, 0x47u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v26, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v29, type metadata accessor for MailboxTaskLogger);
        v58 = v198;
        v59 = v199;
      }

      v96 = v197;
      v146 = *v197;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v202 = *v96;
      v99 = v59;
      v100 = v58;
      goto LABEL_16;
    }

    v101 = *v45;
    v102 = HIDWORD(*v45);
    if (a2)
    {
      v103 = v200;
      v104 = v23;
      sub_100031C0C(v200, v23, type metadata accessor for MailboxTaskLogger);
      v105 = v195;
      sub_100031C0C(v103, v195, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v106 = sub_1004A4A54();
      v107 = sub_1004A6034();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *v108 = 68159747;
        *(v108 + 4) = 2;
        *(v108 + 8) = 256;
        v109 = v196;
        v110 = v105 + *(v196 + 20);
        *(v108 + 10) = *v110;
        *(v108 + 11) = 2082;
        v111 = *(v109 + 20);
        v200 = v101;
        v112 = v104;
        v113 = &v104[v111];
        *(v108 + 13) = sub_10015BA6C(*(v113 + 1), *(v113 + 2), &v204);
        *(v108 + 21) = 1040;
        *(v108 + 23) = 2;
        *(v108 + 27) = 512;
        LOWORD(v110) = *(v110 + 24);
        sub_100031C74(v105, type metadata accessor for MailboxTaskLogger);
        *(v108 + 29) = v110;
        *(v108 + 31) = 2160;
        *(v108 + 33) = 0x786F626C69616DLL;
        *(v108 + 41) = 2085;
        v114 = *(v113 + 4);
        LODWORD(v110) = *(v113 + 10);

        sub_100031C74(v112, type metadata accessor for MailboxTaskLogger);
        v202 = v114;
        v203 = v110;
        v115 = sub_1004A5824();
        LODWORD(v114) = v102;
        v117 = sub_10015BA6C(v115, v116, &v204);

        *(v108 + 43) = v117;
        *(v108 + 51) = 2048;
        *(v108 + 53) = v198;
        *(v108 + 61) = 2082;
        v202 = __PAIR64__(v114, v200);
        v118 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v119 = MessageIdentifierRange.debugDescription.getter(v118);
        v121 = sub_10015BA6C(v119, v120, &v204);

        *(v108 + 63) = v121;
        _os_log_impl(&_mh_execute_header, v106, v107, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response NIL and %{public}s", v108, 0x47u);
        swift_arrayDestroy();

LABEL_36:

        return;
      }

      sub_100031C74(v105, type metadata accessor for MailboxTaskLogger);

      v147 = v104;
      goto LABEL_40;
    }

    v122 = v199;
    v123 = HIDWORD(v199);
    if (v101 == v199 && v123 == v102)
    {
      v148 = v200;
      v149 = v194;
      sub_100031C0C(v200, v194, type metadata accessor for MailboxTaskLogger);
      v150 = v193;
      sub_100031C0C(v148, v193, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v106 = sub_1004A4A54();
      v151 = sub_1004A6004();
      if (os_log_type_enabled(v106, v151))
      {
        v152 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *v152 = 68159491;
        *(v152 + 4) = 2;
        *(v152 + 8) = 256;
        v153 = v196;
        v154 = v150 + *(v196 + 20);
        *(v152 + 10) = *v154;
        *(v152 + 11) = 2082;
        v155 = v149 + *(v153 + 20);
        *(v152 + 13) = sub_10015BA6C(*(v155 + 8), *(v155 + 16), &v204);
        *(v152 + 21) = 1040;
        *(v152 + 23) = 2;
        *(v152 + 27) = 512;
        LOWORD(v154) = *(v154 + 24);
        sub_100031C74(v150, type metadata accessor for MailboxTaskLogger);
        *(v152 + 29) = v154;
        *(v152 + 31) = 2160;
        *(v152 + 33) = 0x786F626C69616DLL;
        *(v152 + 41) = 2085;
        v156 = *(v155 + 32);
        LODWORD(v155) = *(v155 + 40);

        sub_100031C74(v149, type metadata accessor for MailboxTaskLogger);
        v202 = v156;
        v203 = v155;
        v157 = sub_1004A5824();
        v159 = sub_10015BA6C(v157, v158, &v204);

        *(v152 + 43) = v159;
        *(v152 + 51) = 2048;
        *(v152 + 53) = v198;
        _os_log_impl(&_mh_execute_header, v106, v151, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Duplicate response for batch #%ld is identical.", v152, 0x3Du);
        swift_arrayDestroy();

        goto LABEL_36;
      }

      sub_100031C74(v150, type metadata accessor for MailboxTaskLogger);

      v147 = v149;
LABEL_40:
      sub_100031C74(v147, type metadata accessor for MailboxTaskLogger);
      return;
    }

    if (HIDWORD(v199) >= v101 && v102 >= v199)
    {
      v160 = v200;
      v161 = v191;
      sub_100031C0C(v200, v191, type metadata accessor for MailboxTaskLogger);
      v162 = v189;
      sub_100031C0C(v160, v189, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v163 = sub_1004A4A54();
      v164 = sub_1004A6034();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v195 = v102;
        v166 = v165;
        v200 = swift_slowAlloc();
        v204 = v200;
        *v166 = 68160003;
        *(v166 + 4) = 2;
        *(v166 + 8) = 256;
        v167 = v196;
        v168 = v162 + *(v196 + 20);
        *(v166 + 10) = *v168;
        *(v166 + 11) = 2082;
        v169 = v161 + *(v167 + 20);
        *(v166 + 13) = sub_10015BA6C(*(v169 + 8), *(v169 + 16), &v204);
        *(v166 + 21) = 1040;
        *(v166 + 23) = 2;
        *(v166 + 27) = 512;
        LOWORD(v168) = *(v168 + 24);
        sub_100031C74(v162, type metadata accessor for MailboxTaskLogger);
        *(v166 + 29) = v168;
        *(v166 + 31) = 2160;
        *(v166 + 33) = 0x786F626C69616DLL;
        *(v166 + 41) = 2085;
        v170 = *(v169 + 32);
        LODWORD(v169) = *(v169 + 40);

        sub_100031C74(v161, type metadata accessor for MailboxTaskLogger);
        v202 = v170;
        v203 = v169;
        v171 = sub_1004A5824();
        v173 = sub_10015BA6C(v171, v172, &v204);

        *(v166 + 43) = v173;
        *(v166 + 51) = 2048;
        v174 = v198;
        *(v166 + 53) = v198;
        *(v166 + 61) = 2082;
        v202 = __PAIR64__(v195, v101);
        v175 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v176 = MessageIdentifierRange.debugDescription.getter(v175);
        v178 = sub_10015BA6C(v176, v177, &v204);

        *(v166 + 63) = v178;
        v122 = v199;
        *(v166 + 71) = 2082;
        v202 = __PAIR64__(v123, v122);
        v179 = MessageIdentifierRange.debugDescription.getter(v175);
        v181 = sub_10015BA6C(v179, v180, &v204);

        *(v166 + 73) = v181;
        _os_log_impl(&_mh_execute_header, v163, v164, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response %{public}s and %{public}s", v166, 0x51u);
        swift_arrayDestroy();

        v102 = v195;
      }

      else
      {
        sub_100031C74(v162, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v161, type metadata accessor for MailboxTaskLogger);
        v174 = v198;
      }

      if (v122 >= v101)
      {
        v182 = v101;
      }

      else
      {
        v182 = v122;
      }

      LODWORD(v204) = v182;
      if (v123 <= v102)
      {
        v183 = v102;
      }

      else
      {
        v183 = v123;
      }

      v201 = v183;
      v184 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v204, &v201, &type metadata for UID, v184, &v202);
      v185 = v202;
      v186 = v197;
      v187 = *v197;
      v188 = swift_isUniquelyReferenced_nonNull_native();
      v204 = *v186;
      sub_10001CD40(v185, 0, v174, v188);
      *v186 = v204;
    }

    else
    {
      v195 = HIDWORD(*v45);
      v126 = v200;
      v127 = v192;
      sub_100031C0C(v200, v192, type metadata accessor for MailboxTaskLogger);
      v128 = v190;
      sub_100031C0C(v126, v190, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v129 = sub_1004A4A54();
      v130 = sub_1004A6014();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v204 = v200;
        *v131 = 68160003;
        *(v131 + 4) = 2;
        *(v131 + 8) = 256;
        v132 = v196;
        v133 = v128 + *(v196 + 20);
        *(v131 + 10) = *v133;
        *(v131 + 11) = 2082;
        v134 = v127 + *(v132 + 20);
        *(v131 + 13) = sub_10015BA6C(*(v134 + 8), *(v134 + 16), &v204);
        *(v131 + 21) = 1040;
        *(v131 + 23) = 2;
        *(v131 + 27) = 512;
        LOWORD(v133) = *(v133 + 24);
        sub_100031C74(v128, type metadata accessor for MailboxTaskLogger);
        *(v131 + 29) = v133;
        *(v131 + 31) = 2160;
        *(v131 + 33) = 0x786F626C69616DLL;
        *(v131 + 41) = 2085;
        v135 = *(v134 + 32);
        LODWORD(v134) = *(v134 + 40);

        sub_100031C74(v127, type metadata accessor for MailboxTaskLogger);
        v202 = v135;
        v203 = v134;
        v136 = sub_1004A5824();
        v138 = sub_10015BA6C(v136, v137, &v204);

        *(v131 + 43) = v138;
        *(v131 + 51) = 2048;
        *(v131 + 53) = v198;
        *(v131 + 61) = 2082;
        v202 = __PAIR64__(v195, v101);
        v139 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v140 = MessageIdentifierRange.debugDescription.getter(v139);
        v142 = sub_10015BA6C(v140, v141, &v204);

        *(v131 + 63) = v142;
        *(v131 + 71) = 2082;
        v202 = __PAIR64__(v123, v199);
        v143 = MessageIdentifierRange.debugDescription.getter(v139);
        v145 = sub_10015BA6C(v143, v144, &v204);

        *(v131 + 73) = v145;
        _os_log_impl(&_mh_execute_header, v129, v130, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response %{public}s and %{public}s: Should overlap, but they do not.", v131, 0x51u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v128, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v127, type metadata accessor for MailboxTaskLogger);
      }

      *(v197 + 8) = 1;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v75 = v200;
      sub_100031C0C(v200, v35, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v75, v32, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v76 = sub_1004A4A54();
      v77 = sub_1004A6004();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *v78 = 68159747;
        *(v78 + 4) = 2;
        *(v78 + 8) = 256;
        v79 = v196;
        v80 = &v32[*(v196 + 20)];
        *(v78 + 10) = *v80;
        *(v78 + 11) = 2082;
        v81 = &v35[*(v79 + 20)];
        *(v78 + 13) = sub_10015BA6C(*(v81 + 1), *(v81 + 2), &v204);
        *(v78 + 21) = 1040;
        *(v78 + 23) = 2;
        *(v78 + 27) = 512;
        LOWORD(v80) = *(v80 + 12);
        sub_100031C74(v32, type metadata accessor for MailboxTaskLogger);
        *(v78 + 29) = v80;
        *(v78 + 31) = 2160;
        *(v78 + 33) = 0x786F626C69616DLL;
        *(v78 + 41) = 2085;
        v82 = *(v81 + 4);
        LODWORD(v80) = *(v81 + 10);

        sub_100031C74(v35, type metadata accessor for MailboxTaskLogger);
        v202 = v82;
        v203 = v80;
        v83 = sub_1004A5824();
        v85 = sub_10015BA6C(v83, v84, &v204);

        *(v78 + 43) = v85;
        *(v78 + 51) = 2048;
        v86 = v198;
        *(v78 + 53) = v198;
        *(v78 + 61) = 2082;
        v87 = v199;
        v202 = v199;
        v88 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v89 = MessageIdentifierRange.debugDescription.getter(v88);
        v91 = sub_10015BA6C(v89, v90, &v204);

        *(v78 + 63) = v91;
        _os_log_impl(&_mh_execute_header, v76, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld is %{public}s", v78, 0x47u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v32, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v35, type metadata accessor for MailboxTaskLogger);
        v86 = v198;
        v87 = v199;
      }

      v96 = v197;
      v97 = *v197;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v202 = *v96;
      v99 = v87;
      v100 = v86;
LABEL_16:
      sub_10001CD40(v99, 0, v100, isUniquelyReferenced_nonNull_native);
      *v96 = v202;
      return;
    }

    v63 = v200;
    sub_100031C0C(v200, v41, type metadata accessor for MailboxTaskLogger);
    sub_100031C0C(v63, v38, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v64 = sub_1004A4A54();
    v65 = sub_1004A6004();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *v66 = 68159491;
      *(v66 + 4) = 2;
      *(v66 + 8) = 256;
      v67 = v196;
      v68 = &v38[*(v196 + 20)];
      *(v66 + 10) = *v68;
      *(v66 + 11) = 2082;
      v69 = &v41[*(v67 + 20)];
      *(v66 + 13) = sub_10015BA6C(*(v69 + 1), *(v69 + 2), &v204);
      *(v66 + 21) = 1040;
      *(v66 + 23) = 2;
      *(v66 + 27) = 512;
      LOWORD(v68) = *(v68 + 12);
      sub_100031C74(v38, type metadata accessor for MailboxTaskLogger);
      *(v66 + 29) = v68;
      *(v66 + 31) = 2160;
      *(v66 + 33) = 0x786F626C69616DLL;
      *(v66 + 41) = 2085;
      v70 = *(v69 + 4);
      LODWORD(v68) = *(v69 + 10);

      sub_100031C74(v41, type metadata accessor for MailboxTaskLogger);
      v202 = v70;
      v203 = v68;
      v71 = sub_1004A5824();
      v73 = sub_10015BA6C(v71, v72, &v204);

      *(v66 + 43) = v73;
      *(v66 + 51) = 2048;
      v74 = v198;
      *(v66 + 53) = v198;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld is empty", v66, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100031C74(v38, type metadata accessor for MailboxTaskLogger);

      sub_100031C74(v41, type metadata accessor for MailboxTaskLogger);
      v74 = v198;
    }

    v92 = v199;
    v93 = v197;
    v94 = *v197;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v202 = *v93;
    sub_10001CD40(v92, 1, v74, v95);
    *v93 = v202;
  }
}

uint64_t sub_100031A88(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100134BC4(0, v2, 0);
    v3 = 32;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v14 = *(v1 + v3);
      sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v5 = sub_1004A5804();
      v15 = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_100134BC4((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v15;
      }

      v4[2] = v8 + 1;
      v9 = &v4[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v12 = sub_1004A5614();

  return v12;
}

uint64_t sub_100031C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100031C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100031CDC()
{
  result = qword_1005CDA18;
  if (!qword_1005CDA18)
  {
    sub_10000DEFC(&unk_1005DA9A0, &unk_1004CF770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDA18);
  }

  return result;
}

BOOL sub_100031D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageBatches(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v24 - v13);
  v15 = sub_10000C9C0(&qword_1005CDA80, &qword_1004CF7F8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  v20 = *(v19 + 56);
  sub_100031C0C(a1, &v24 - v17, type metadata accessor for DetermineMessageBatches.TaskState);
  sub_100031C0C(a2, &v18[v20], type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100031C0C(v18, v14, type metadata accessor for DetermineMessageBatches.TaskState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = *v14 == *&v18[v20];
      goto LABEL_7;
    }

LABEL_11:
    sub_100025F40(v18, &qword_1005CDA80, &qword_1004CF7F8);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100031C74(v18, type metadata accessor for DetermineMessageBatches.TaskState);
      return 1;
    }

    goto LABEL_11;
  }

  sub_100031C0C(v18, v11, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100031C74(v11, type metadata accessor for MessageBatches);
    goto LABEL_11;
  }

  sub_100035908(&v18[v20], v7, type metadata accessor for MessageBatches);
  v22 = sub_1000DA5A0(v11, v7);
  sub_100031C74(v7, type metadata accessor for MessageBatches);
  sub_100031C74(v11, type metadata accessor for MessageBatches);
LABEL_7:
  sub_100031C74(v18, type metadata accessor for DetermineMessageBatches.TaskState);
  return v22;
}

char *sub_10003203C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = (a1 + 56);
  v3 = _swiftEmptyArrayStorage;
  do
  {
    if (*v2 == 1)
    {
      v7 = *(v2 - 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100085BDC(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_100085BDC((v4 > 1), v5 + 1, 1, v3);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[16 * v5 + 32] = v7;
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_100032120(char a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = sub_10006F7A4(a1 & 1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_100031C0C(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_100035908(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100031C74(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_100031C74(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

void *sub_10003235C(int a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = sub_10006F998(a1, a3);
  v23 = result[2];
  if (v23)
  {
    v13 = 0;
    v21 = result + 4;
    v24 = result;
    while (v13 < result[2])
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_100031C0C(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_100035908(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100031C74(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_100031C74(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

void sub_10003287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a6;
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v7 + 137);
  if (v16 == 2)
  {
    sub_100031C0C(a1, v15, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v17 = *v15;
      v18 = v15[1];
      v19 = v15[2];
      v20 = v15[5];
      v21 = sub_100032598(v17, v18, a2, a4);
      if (v23)
      {
LABEL_23:
      }

      else
      {
        v27 = v21;
        v28 = v22;
        v34[1] = v18;
        v34[2] = v19;
        v29 = 0;
        v30 = *(type metadata accessor for DetermineMessageBatches(0) + 60);
        v31 = *(v20 + 16);
        while (!__OFADD__(v29, 1))
        {
          if (v29 < v31)
          {
            if (v29 >= *(v20 + 16))
            {
              goto LABEL_26;
            }

            v32 = *(v20 + 8 * v29 + 32);
          }

          else
          {
            v32 = 0;
          }

          v33 = v27 + v29;
          sub_100030504(v32, v29 >= v31, v27 + v29, v35);
          if (!(v27 - v28 + v29))
          {
            goto LABEL_23;
          }

          ++v29;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
      }
    }

    else
    {
      sub_100031C74(v15, type metadata accessor for UntaggedResponse);
    }
  }

  else
  {
    if (sub_100057D68(0, 0, 0, a2, a3, a4))
    {
      v24 = v16 & 0x101;
      v25 = 0;
    }

    else
    {
      if ((sub_100057D68(1, 0, 0, a2, a3, a4) & 1) == 0)
      {
        return;
      }

      v24 = v16 & 0x101;
      v25 = 1;
    }

    v26 = v35;

    sub_10002C838(v25, a1, v24, v26);
  }
}

char *sub_100032AF0(unint64_t a1)
{
  v2 = _swiftEmptyArrayStorage;
  v3 = 1;
  v4 = 2;
LABEL_2:
  v5 = v3;
  while (1)
  {
    v3 = v4;
    if (!*(a1 + 16))
    {
      return v2;
    }

    v6 = a1;
    v7 = sub_100063D94(v5);
    if ((v8 & 1) == 0)
    {
      return v2;
    }

    v9 = *(a1 + 56) + 12 * v7;
    if (*(v9 + 8))
    {
      if (!*(v2 + 2))
      {
        return v2;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v2 + 2);
        if (v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_30:
        v2 = sub_100139840(v2);
        v20 = *(v2 + 2);
        if (v20)
        {
LABEL_26:
          v21 = v20 - 1;
          v22 = *&v2[8 * v21 + 36];
          *(v2 + 2) = v21;
          v27 = v22;
          v28 = 1;
          v23 = sub_100016948();
          static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v23, &v29);
          v19 = v29;
          a1 = *(v2 + 2);
          v20 = *(v2 + 3);
          v6 = a1 + 1;
          if (a1 < v20 >> 1)
          {
LABEL_27:
            *(v2 + 2) = v6;
            *&v2[8 * a1 + 32] = v19;
            return v2;
          }

LABEL_32:
          v26 = v19;
          v25 = sub_100085898((v20 > 1), v6, 1, v2);
          v19 = v26;
          v2 = v25;
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    v10 = *v9;
    v11 = *(v2 + 2);
    if (!v11)
    {
      v14 = HIDWORD(v10);
      goto LABEL_16;
    }

    v12 = *&v2[8 * v11 + 24];
    if (v12 >= 2 && v12 - 1 >= v10)
    {
      v27 = v12 - 1;
      v28 = v10;
      v15 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v15, &v29);
      LODWORD(v10) = v29;
      LODWORD(v14) = HIDWORD(v29);
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100085898(0, *(v2 + 2) + 1, 1, v2);
      }

      v17 = *(v2 + 2);
      v16 = *(v2 + 3);
      v6 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v2 = sub_100085898((v16 > 1), v17 + 1, 1, v2);
      }

      *(v2 + 2) = v6;
      v18 = &v2[8 * v17];
      *(v18 + 8) = v10;
      *(v18 + 9) = v14;
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      goto LABEL_2;
    }

    v4 = v3 + 1;
    v5 = v3;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_29;
    }
  }
}

unint64_t sub_100032D20()
{
  result = qword_1005CDA30;
  if (!qword_1005CDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CDA30);
  }

  return result;
}

unint64_t sub_100032D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v88 = a1;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v87 = &v87 - v10;
  v11 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for MailboxTaskLogger(0);
  v15 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v87 - v19;
  __chkstk_darwin(v21);
  v23 = &v87 - v22;
  __chkstk_darwin(v24);
  v26 = &v87 - v25;
  v27 = *(v5 + 72);
  if (v27 == 1 && (sub_10001F494(1, a2, a3) & 1) == 0)
  {
    v34 = *(v5 + 76);
    v88 = v5;
    v35 = *(v5 + 84);
    if (v35)
    {
      v36 = v90;
      sub_100031C0C(v90, v20, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v36, v17, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v37 = sub_1004A4A54();
      v38 = sub_1004A6034();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v39 = 68159235;
        v90 = v34;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v40 = v89;
        v41 = &v17[*(v89 + 20)];
        *(v39 + 10) = *v41;
        *(v39 + 11) = 2082;
        v42 = &v20[*(v40 + 20)];
        *(v39 + 13) = sub_10015BA6C(*(v42 + 1), *(v42 + 2), &v94);
        *(v39 + 21) = 1040;
        *(v39 + 23) = 2;
        *(v39 + 27) = 512;
        LOWORD(v41) = *(v41 + 12);
        sub_100031C74(v17, type metadata accessor for MailboxTaskLogger);
        *(v39 + 29) = v41;
        *(v39 + 31) = 2160;
        *(v39 + 33) = 0x786F626C69616DLL;
        *(v39 + 41) = 2085;
        v43 = *(v42 + 4);
        LODWORD(v42) = *(v42 + 10);

        sub_100031C74(v20, type metadata accessor for MailboxTaskLogger);
        v91 = v43;
        v92 = v42;
        v44 = sub_1004A5824();
        v46 = sub_10015BA6C(v44, v45, &v94);
        v34 = v90;

        *(v39 + 43) = v46;
        _os_log_impl(&_mh_execute_header, v37, v38, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Clearing window of interest", v39, 0x33u);
        swift_arrayDestroy();

LABEL_23:

LABEL_28:
        v69 = v88;
        v70 = swift_allocObject();
        v71 = *(v69 + 104);
        *(v70 + 16) = *(v69 + 96);
        *(v70 + 24) = v71;
        *(v70 + 32) = v34;
        *(v70 + 40) = v35;

        return 1;
      }

      sub_100031C74(v17, type metadata accessor for MailboxTaskLogger);

      v68 = v20;
    }

    else
    {
      v50 = v90;
      sub_100031C0C(v90, v26, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v50, v23, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v37 = sub_1004A4A54();
      v51 = sub_1004A6034();
      if (os_log_type_enabled(v37, v51))
      {
        v52 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v52 = 68159491;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = v89;
        v54 = *(v89 + 20);
        v90 = v34;
        v55 = &v23[v54];
        *(v52 + 10) = v23[v54];
        *(v52 + 11) = 2082;
        v56 = &v26[*(v53 + 20)];
        *(v52 + 13) = sub_10015BA6C(*(v56 + 1), *(v56 + 2), &v94);
        *(v52 + 21) = 1040;
        *(v52 + 23) = 2;
        *(v52 + 27) = 512;
        LOWORD(v55) = *(v55 + 12);
        sub_100031C74(v23, type metadata accessor for MailboxTaskLogger);
        *(v52 + 29) = v55;
        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;
        v57 = *(v56 + 4);
        v58 = *(v56 + 10);

        sub_100031C74(v26, type metadata accessor for MailboxTaskLogger);
        v91 = v57;
        v92 = v58;
        v59 = sub_1004A5824();
        v61 = sub_10015BA6C(v59, v60, &v94);

        *(v52 + 43) = v61;
        *(v52 + 51) = 2082;
        v91 = v90;
        v62 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v63 = MessageIdentifierRange.debugDescription.getter(v62);
        v65 = sub_10015BA6C(v63, v64, &v94);

        *(v52 + 53) = v65;
        v34 = v90;
        _os_log_impl(&_mh_execute_header, v37, v51, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Setting window of interest: %{public}s", v52, 0x3Du);
        swift_arrayDestroy();

        goto LABEL_23;
      }

      sub_100031C74(v23, type metadata accessor for MailboxTaskLogger);

      v68 = v26;
    }

    sub_100031C74(v68, type metadata accessor for MailboxTaskLogger);
    goto LABEL_28;
  }

  v28 = type metadata accessor for DetermineMessageBatches(0);
  sub_100031C0C(v5 + *(v28 + 56), v14, type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 4;
    }

    if ((sub_10001F494(EnumCaseMultiPayload, a2, a3) & 1) == 0)
    {
      v47 = swift_allocObject();
      v48 = *(v5 + 104);
      *(v47 + 16) = *(v5 + 96);
      *(v47 + 24) = v48;
      v49 = *(v5 + 84);
      *(v47 + 32) = *(v5 + 76);
      *(v47 + 40) = v49;

      sub_100031C74(v14, type metadata accessor for DetermineMessageBatches.TaskState);
      return 1;
    }

    if (*(v5 + 84) & 1) != 0 || (v30 = *(v5 + 76), (v30 & 0xFFFFFFFE) == 0) || (sub_10001F494(3, a2, a3))
    {
      sub_100031C74(v14, type metadata accessor for DetermineMessageBatches.TaskState);
      return 4;
    }

    LODWORD(v94) = 1;
    LODWORD(v93) = v30 - 1;
    v73 = sub_100016948();
    v74 = v5;
    static MessageIdentifier.... infix(_:_:)(&v94, &v93, &type metadata for UID, v73, &v91);
    v94 = v91;
    v93 = Range<>.init<A>(_:)(&v94, &type metadata for UID, v73);
    sub_100016D2C();
    v75 = v87;
    sub_1004A7124();
    v76 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
    swift_allocBox();
    v77 = *(v76 + 48);
    v78 = *(v74 + 104);
    *v79 = *(v74 + 96);
    v79[1] = v78;
    sub_100025FDC(v75, v79 + v77, &qword_1005CD1D0, &unk_1004CF2C0);

    sub_100031C74(v14, type metadata accessor for DetermineMessageBatches.TaskState);
    return 3;
  }

  else
  {
    if ((v27 & 1) == 0)
    {
      if ((sub_10001F494(0, a2, a3) & 1) == 0)
      {
        v66 = swift_allocObject();
        v67 = *(v5 + 104);
        *(v66 + 16) = *(v5 + 96);
        *(v66 + 24) = v67;

        return 0;
      }

      if ((sub_10009A604(0, v88, a2, a3) & 1) == 0)
      {
        return 4;
      }
    }

    result = sub_10001F494(2, a2, a3);
    if (result)
    {
      return 4;
    }

    v32 = *(v5 + 136);
    if (v32)
    {
      v33 = -1;
    }

    else
    {
      v72 = *(v5 + 132);
      v33 = v72 - 1;
      if (v72 == 1)
      {
        v33 = 1;
      }

      else if (!v72)
      {
        __break(1u);
        return result;
      }
    }

    v80 = *(v5 + 76);
    v81 = *(v5 + 84);
    if (v32 | v81)
    {
      v82 = 0;
    }

    else
    {
      v82 = v33 - HIDWORD(v80);
    }

    v83 = swift_allocObject();
    v84 = v83;
    v85 = *(v5 + 104);
    v83[2] = *(v5 + 96);
    v83[3] = v85;
    if (v81)
    {
      LODWORD(v91) = 1;
      LODWORD(v94) = v33;
      v86 = sub_100016948();

      static MessageIdentifier.... infix(_:_:)(&v91, &v94, &type metadata for UID, v86, (v84 + 4));
    }

    else
    {
      v83[4] = v80;
    }

    v84[5] = *(v5 + 144);
    v84[6] = v82;
    return 2;
  }
}

void sub_10003376C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v293 = a5;
  v300 = a1;
  v285 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
  v9 = *(*(v285 - 8) + 64);
  __chkstk_darwin(v285);
  v291 = (&v253 - v10);
  v11 = type metadata accessor for MessageBatches(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v294 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v277 = *(v278 - 8);
  v14 = *(v277 + 64);
  __chkstk_darwin(v278);
  v268 = &v253 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v279 = &v253 - v17;
  __chkstk_darwin(v18);
  v260 = &v253 - v19;
  v20 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v274 = &v253 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v265 = &v253 - v24;
  v262 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  v25 = *(*(v262 - 8) + 64);
  __chkstk_darwin(v262);
  v287 = &v253 - v26;
  v292 = sub_10000C9C0(&qword_1005CDA40, &qword_1004CF7A0);
  v27 = *(*(v292 - 8) + 64);
  __chkstk_darwin(v292);
  v29 = (&v253 - v28);
  v288 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v30 = *(*(v288 - 8) + 64);
  __chkstk_darwin(v288);
  v272 = &v253 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v273 = &v253 - v33;
  __chkstk_darwin(v34);
  v280 = &v253 - v35;
  __chkstk_darwin(v36);
  v261 = &v253 - v37;
  __chkstk_darwin(v38);
  v263 = &v253 - v39;
  __chkstk_darwin(v40);
  v286 = &v253 - v41;
  __chkstk_darwin(v42);
  v269 = &v253 - v43;
  __chkstk_darwin(v44);
  v270 = &v253 - v45;
  __chkstk_darwin(v46);
  v276 = &v253 - v47;
  __chkstk_darwin(v48);
  v289 = &v253 - v49;
  v299 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v50 = *(*(v299 - 8) + 64);
  __chkstk_darwin(v299);
  v271 = (&v253 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v52);
  v295 = &v253 - v53;
  __chkstk_darwin(v54);
  v264 = &v253 - v55;
  __chkstk_darwin(v56);
  v275 = (&v253 - v57);
  __chkstk_darwin(v58);
  v60 = (&v253 - v59);
  v290 = type metadata accessor for MailboxTaskLogger(0);
  v61 = *(v290[-1].isa + 8);
  __chkstk_darwin(v290);
  v281 = &v253 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v282 = &v253 - v64;
  __chkstk_darwin(v65);
  v266 = &v253 - v66;
  __chkstk_darwin(v67);
  v267 = &v253 - v68;
  __chkstk_darwin(v69);
  v283 = &v253 - v70;
  __chkstk_darwin(v71);
  v284 = &v253 - v72;
  __chkstk_darwin(v73);
  v75 = &v253 - v74;
  __chkstk_darwin(v76);
  v78 = &v253 - v77;
  __chkstk_darwin(v79);
  v81 = &v253 - v80;
  __chkstk_darwin(v82);
  v84 = &v253 - v83;
  v296 = a2;
  v297 = a4;
  v298 = a3;
  if ((sub_10006FDE4(0, a2, a3, a4) & 1) != 0 && ((v300 >> 59) & 0x1E | (v300 >> 2) & 1) == 8 && *(v5 + 104) == *((v300 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
  {
    v85 = *((v300 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v86 = *((v300 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
    if (sub_1000FFC98(*(v5 + 96), *((v300 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
    {
      v258 = v85;
      v259 = v5;
      v87 = v293;
      sub_100031C0C(v293, v84, type metadata accessor for MailboxTaskLogger);
      sub_100031C0C(v87, v81, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v88 = sub_1004A4A54();
      v89 = sub_1004A6034();
      v257 = v88;
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v304 = v256;
        *v90 = 68159491;
        *(v90 + 4) = 2;
        *(v90 + 8) = 256;
        v91 = v290;
        v92 = v86;
        v93 = &v81[SHIDWORD(v290[2].isa)];
        *(v90 + 10) = *v93;
        *(v90 + 11) = 2082;
        isa_high = SHIDWORD(v91[2].isa);
        v255 = v89;
        v95 = &v84[isa_high];
        *(v90 + 13) = sub_10015BA6C(*&v84[isa_high + 8], *&v84[isa_high + 16], &v304);
        *(v90 + 21) = 1040;
        *(v90 + 23) = 2;
        *(v90 + 27) = 512;
        v254 = *(v93 + 12);
        v86 = v92;
        sub_100031C74(v81, type metadata accessor for MailboxTaskLogger);
        *(v90 + 29) = v254;
        *(v90 + 31) = 2160;
        *(v90 + 33) = 0x786F626C69616DLL;
        *(v90 + 41) = 2085;
        v96 = *(v95 + 4);
        LODWORD(v95) = *(v95 + 10);

        sub_100031C74(v84, type metadata accessor for MailboxTaskLogger);
        v301 = v96;
        v302 = v95;
        v97 = sub_1004A5824();
        v99 = sub_10015BA6C(v97, v98, &v304);

        *(v90 + 43) = v99;
        *(v90 + 51) = 2082;
        v100 = v257;
        v101 = v258;
        v301 = __PAIR64__(v86, v258);
        v102 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v103 = MessageIdentifierRange.debugDescription.getter(v102);
        v105 = sub_10015BA6C(v103, v104, &v304);

        *(v90 + 53) = v105;
        _os_log_impl(&_mh_execute_header, v100, v255, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found window of interest: %{public}s", v90, 0x3Du);
        swift_arrayDestroy();
      }

      else
      {
        sub_100031C74(v81, type metadata accessor for MailboxTaskLogger);

        sub_100031C74(v84, type metadata accessor for MailboxTaskLogger);
        v101 = v258;
      }

      v5 = v259;
      *(v259 + 76) = v101 | (v86 << 32);
      *(v5 + 84) = 0;
      if ((*(v5 + 136) & 1) == 0)
      {
        v106 = *(v5 + 132) - v86;
        if (v106 > *(v5 + 144) / 2)
        {
          v107 = v293;
          sub_100031C0C(v293, v78, type metadata accessor for MailboxTaskLogger);
          sub_100031C0C(v107, v75, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v108 = sub_1004A4A54();
          v109 = sub_1004A6034();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            v304 = v258;
            *v110 = 68159491;
            *(v110 + 4) = 2;
            *(v110 + 8) = 256;
            v111 = v290;
            v112 = &v75[SHIDWORD(v290[2].isa)];
            *(v110 + 10) = *v112;
            *(v110 + 11) = 2082;
            v113 = SHIDWORD(v111[2].isa);
            LODWORD(v257) = v109;
            v114 = &v78[v113];
            *(v110 + 13) = sub_10015BA6C(*&v78[v113 + 8], *&v78[v113 + 16], &v304);
            *(v110 + 21) = 1040;
            *(v110 + 23) = 2;
            *(v110 + 27) = 512;
            v115 = *(v112 + 12);
            sub_100031C74(v75, type metadata accessor for MailboxTaskLogger);
            *(v110 + 29) = v115;
            *(v110 + 31) = 2160;
            *(v110 + 33) = 0x786F626C69616DLL;
            *(v110 + 41) = 2085;
            v116 = *(v114 + 4);
            LODWORD(v114) = *(v114 + 10);

            sub_100031C74(v78, type metadata accessor for MailboxTaskLogger);
            v301 = v116;
            v302 = v114;
            v117 = sub_1004A5824();
            v119 = sub_10015BA6C(v117, v118, &v304);

            *(v110 + 43) = v119;
            *(v110 + 51) = 2048;
            *(v110 + 53) = v106;
            _os_log_impl(&_mh_execute_header, v108, v257, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld new UIDs on server. Querying server..", v110, 0x3Du);
            swift_arrayDestroy();
          }

          else
          {
            sub_100031C74(v75, type metadata accessor for MailboxTaskLogger);

            sub_100031C74(v78, type metadata accessor for MailboxTaskLogger);
          }

          v5 = v259;
          v120 = type metadata accessor for DetermineMessageBatches(0);
          sub_100031C74(v5 + *(v120 + 56), type metadata accessor for DetermineMessageBatches.TaskState);
          swift_storeEnumTagMultiPayload();
        }
      }
    }
  }

  v121 = v296;
  v122 = v297;
  v123 = v298;
  if (sub_10006FDE4(2, v296, v298, v297))
  {
    v124 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
    sub_100031C0C(v5 + v124, v60, type metadata accessor for DetermineMessageBatches.TaskState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100031C74(v60, type metadata accessor for DetermineMessageBatches.TaskState);
      goto LABEL_29;
    }

    if (((v300 >> 59) & 0x1E | (v300 >> 2) & 1) == 9)
    {
      v125 = *v60;
      v126 = swift_projectBox();
      sub_10000E268(v126, v29, &qword_1005CDA40, &qword_1004CF7A0);
      v127 = *v29;
      v128 = *(v292 + 48);
      if (*(v5 + 104) == v29[1])
      {
        v292 = *(v29 + *(v292 + 64));
        v129 = sub_1000FFC98(*(v5 + 96), v127);

        if (v129)
        {
          v258 = v125;
          sub_100025FDC(v29 + v128, v289, &unk_1005D91B0, &unk_1004CF400);
          v130 = *(v5 + 64);
          v131 = *(v5 + 72);
          v132 = v284;
          v133 = v283;
          v259 = v5;
          if (v131 == 1)
          {
            v134 = v292 - v258;
            if (__OFSUB__(v292, v258))
            {
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            if (v134 < 0)
            {
              v135 = __OFSUB__(0, v134);
              v134 = v258 - v292;
              if (v135)
              {
                goto LABEL_92;
              }
            }

            if (v134 < *(v5 + 144) / 2)
            {
              v287 = *(v5 + 144);
              v136 = v293;
              sub_100031C0C(v293, v284, type metadata accessor for MailboxTaskLogger);
              sub_100031C0C(v136, v133, type metadata accessor for MailboxTaskLogger);
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              v137 = sub_1004A4A54();
              v138 = sub_1004A6034();
              if (os_log_type_enabled(v137, v138))
              {
                v139 = swift_slowAlloc();
                LODWORD(v286) = v138;
                v140 = v139;
                v293 = swift_slowAlloc();
                v304 = v293;
                *v140 = 68159747;
                *(v140 + 4) = 2;
                *(v140 + 8) = 256;
                v141 = v290;
                v142 = v133 + SHIDWORD(v290[2].isa);
                *(v140 + 10) = *v142;
                *(v140 + 11) = 2082;
                v143 = v132 + SHIDWORD(v141[2].isa);
                *(v140 + 13) = sub_10015BA6C(*(v143 + 8), *(v143 + 16), &v304);
                *(v140 + 21) = 1040;
                *(v140 + 23) = 2;
                *(v140 + 27) = 512;
                LOWORD(v142) = *(v142 + 24);
                sub_100031C74(v133, type metadata accessor for MailboxTaskLogger);
                *(v140 + 29) = v142;
                *(v140 + 31) = 2160;
                *(v140 + 33) = 0x786F626C69616DLL;
                *(v140 + 41) = 2085;
                v144 = *(v143 + 32);
                LODWORD(v143) = *(v143 + 40);

                sub_100031C74(v132, type metadata accessor for MailboxTaskLogger);
                v301 = v144;
                v302 = v143;
                v145 = sub_1004A5824();
                v147 = sub_10015BA6C(v145, v146, &v304);
                v121 = v296;

                *(v140 + 43) = v147;
                v122 = v297;
                v123 = v298;
                *(v140 + 51) = 2048;
                *(v140 + 53) = v292;
                *(v140 + 61) = 2048;
                *(v140 + 63) = v258;
                _os_log_impl(&_mh_execute_header, v137, v286, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs locally, %ld on server.", v140, 0x47u);
                swift_arrayDestroy();
              }

              else
              {
                sub_100031C74(v133, type metadata accessor for MailboxTaskLogger);

                sub_100031C74(v132, type metadata accessor for MailboxTaskLogger);
              }

              v5 = v259;
              v217 = v289;
              v218 = v276;
              sub_10000E268(v289, v276, &unk_1005D91B0, &unk_1004CF400);
              v219 = v275;
              sub_1000D7B58(v287, v218, 1, v275);
              sub_100025F40(v217, &unk_1005D91B0, &unk_1004CF400);
              swift_storeEnumTagMultiPayload();
              sub_1000357A4(v219, v5 + v124);
              goto LABEL_29;
            }
          }

          if (*(v5 + 84) & 1) != 0 || ((v131 | *(v5 + 136)))
          {
LABEL_52:
            v204 = v293;
            v205 = v282;
            sub_100031C0C(v293, v282, type metadata accessor for MailboxTaskLogger);
            v206 = v281;
            sub_100031C0C(v204, v281, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v207 = sub_1004A4A54();
            v208 = sub_1004A6034();
            if (os_log_type_enabled(v207, v208))
            {
              v209 = swift_slowAlloc();
              v304 = swift_slowAlloc();
              *v209 = 68159747;
              *(v209 + 4) = 2;
              *(v209 + 8) = 256;
              v210 = v290;
              v211 = v206 + SHIDWORD(v290[2].isa);
              *(v209 + 10) = *v211;
              *(v209 + 11) = 2082;
              v212 = v205 + SHIDWORD(v210[2].isa);
              *(v209 + 13) = sub_10015BA6C(*(v212 + 8), *(v212 + 16), &v304);
              *(v209 + 21) = 1040;
              *(v209 + 23) = 2;
              *(v209 + 27) = 512;
              LOWORD(v211) = *(v211 + 24);
              sub_100031C74(v206, type metadata accessor for MailboxTaskLogger);
              *(v209 + 29) = v211;
              *(v209 + 31) = 2160;
              *(v209 + 33) = 0x786F626C69616DLL;
              *(v209 + 41) = 2085;
              v213 = *(v212 + 32);
              LODWORD(v212) = *(v212 + 40);

              sub_100031C74(v205, type metadata accessor for MailboxTaskLogger);
              v301 = v213;
              v302 = v212;
              v122 = v297;
              v214 = sub_1004A5824();
              v216 = sub_10015BA6C(v214, v215, &v304);
              v121 = v296;

              *(v209 + 43) = v216;
              *(v209 + 51) = 2048;
              *(v209 + 53) = v292;
              *(v209 + 61) = 2048;
              *(v209 + 63) = v258;
              _os_log_impl(&_mh_execute_header, v207, v208, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Only found %ld UIDs locally but %ld on server. Querying server for message batches.", v209, 0x47u);
              swift_arrayDestroy();
            }

            else
            {
              sub_100031C74(v206, type metadata accessor for MailboxTaskLogger);

              sub_100031C74(v205, type metadata accessor for MailboxTaskLogger);
            }

            sub_100025F40(v289, &unk_1005D91B0, &unk_1004CF400);
            v5 = v259;
            sub_100031C74(v259 + v124, type metadata accessor for DetermineMessageBatches.TaskState);
            swift_storeEnumTagMultiPayload();
            v123 = v298;
            goto LABEL_29;
          }

          v178 = *(v5 + 76);
          v179 = HIDWORD(v178);
          v180 = *(v5 + 132);
          v181 = v180 + ~HIDWORD(v178);
          v182 = v130 - v181;
          if (!__OFSUB__(v130, v181))
          {
            if (!__OFSUB__(v182, 500))
            {
              if (v182 - 500 < v292)
              {
                v183 = v293;
                v184 = v267;
                sub_100031C0C(v293, v267, type metadata accessor for MailboxTaskLogger);
                v185 = v266;
                sub_100031C0C(v183, v266, type metadata accessor for MailboxTaskLogger);
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                v186 = sub_1004A4A54();
                v187 = sub_1004A6034();
                if (os_log_type_enabled(v186, v187))
                {
                  v188 = swift_slowAlloc();
                  v284 = swift_slowAlloc();
                  v304 = v284;
                  *v188 = 68160003;
                  LODWORD(v283) = v187;
                  *(v188 + 4) = 2;
                  *(v188 + 8) = 256;
                  v189 = v290;
                  v190 = SHIDWORD(v290[2].isa);
                  v293 = v180;
                  v191 = v185 + v190;
                  *(v188 + 10) = *(v185 + v190);
                  *(v188 + 11) = 2082;
                  v192 = SHIDWORD(v189[2].isa);
                  v290 = v186;
                  v193 = v178;
                  v178 = v185;
                  v194 = v184 + v192;
                  *(v188 + 13) = sub_10015BA6C(*(v184 + v192 + 8), *(v184 + v192 + 16), &v304);
                  *(v188 + 21) = 1040;
                  *(v188 + 23) = 2;
                  *(v188 + 27) = 512;
                  LOWORD(v191) = *(v191 + 24);
                  v195 = v178;
                  LODWORD(v178) = v193;
                  sub_100031C74(v195, type metadata accessor for MailboxTaskLogger);
                  *(v188 + 29) = v191;
                  *(v188 + 31) = 2160;
                  *(v188 + 33) = 0x786F626C69616DLL;
                  *(v188 + 41) = 2085;
                  v196 = *(v194 + 32);
                  LODWORD(v194) = *(v194 + 40);

                  sub_100031C74(v184, type metadata accessor for MailboxTaskLogger);
                  v301 = v196;
                  v302 = v194;
                  v197 = sub_1004A5824();
                  v199 = sub_10015BA6C(v197, v198, &v304);

                  *(v188 + 43) = v199;
                  *(v188 + 51) = 2048;
                  *(v188 + 53) = v292;
                  *(v188 + 61) = 2082;
                  v301 = __PAIR64__(v179, v193);
                  v200 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
                  v201 = MessageIdentifierRange.debugDescription.getter(v200);
                  v180 = sub_10015BA6C(v201, v202, &v304);

                  *(v188 + 63) = v180;
                  LODWORD(v180) = v293;
                  *(v188 + 71) = 2048;
                  *(v188 + 73) = v258;
                  v203 = v290;
                  _os_log_impl(&_mh_execute_header, v290, v283, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs locally in window %{public}s, %ld on server.", v188, 0x51u);
                  swift_arrayDestroy();
                }

                else
                {
                  sub_100031C74(v185, type metadata accessor for MailboxTaskLogger);

                  sub_100031C74(v184, type metadata accessor for MailboxTaskLogger);
                }

                v221 = v270;
                v222 = *(v259 + 144);
                v123 = v298;
                if (v222 >= 1)
                {
                  if (v292 >= 1)
                  {
                    if (__OFADD__(v182, v222 >> 1))
                    {
LABEL_96:
                      __break(1u);
                      goto LABEL_97;
                    }

                    v223 = (v182 + (v222 >> 1)) / v222;
                    v224 = v223 * v222;
                    if ((v223 * v222) >> 64 != (v223 * v222) >> 63)
                    {
LABEL_97:
                      __break(1u);
                      goto LABEL_98;
                    }

                    v135 = __OFSUB__(v224, v292);
                    v225 = v224 - v292;
                    if (v135)
                    {
LABEL_98:
                      __break(1u);
LABEL_99:
                      __break(1u);
LABEL_100:
                      __break(1u);
                      return;
                    }

                    if (v225 < 0)
                    {
                      v135 = __OFSUB__(0, v225);
                      v225 = -v225;
                      if (v135)
                      {
                        goto LABEL_100;
                      }
                    }

                    if (v225 >= v222)
                    {
                      goto LABEL_74;
                    }

                    v135 = __OFADD__(v223++, 1);
                    if (!v135)
                    {
                      goto LABEL_74;
                    }

                    __break(1u);
                  }

                  v223 = 0;
LABEL_74:
                  if (!__OFADD__(v223, 1))
                  {
                    v226 = v288;
                    MessageIdentifierSet.suffix(_:)(v223 + 1, v288, v221);
                    v227 = MessageIdentifierSet.startIndex.getter(v226);
                    v229 = v228;
                    if (v227 != MessageIdentifierSet.endIndex.getter(v226) || v229 != v230)
                    {
                      MessageIdentifierSet.subscript.getter(v229, v288, &v301);
                      LODWORD(v178) = v301;
                    }

                    if (v180 == 1)
                    {
                      v231 = 1;
                      goto LABEL_82;
                    }

                    if (v180)
                    {
                      v231 = v180 - 1;
LABEL_82:
                      LODWORD(v304) = v178;
                      LODWORD(v303) = v231;
                      v232 = sub_100016948();
                      static MessageIdentifier.... infix(_:_:)(&v304, &v303, &type metadata for UID, v232, &v301);
                      v233 = v259;
                      *(v259 + 76) = v301;
                      *(v233 + 84) = 0;
                      sub_100016D2C();
                      sub_1004A7114();
                      sub_10000E268(v221, v287, &unk_1005D91B0, &unk_1004CF400);
                      v234 = v288;
                      v235 = MessageIdentifierSet.startIndex.getter(v288);
                      v237 = v236;
                      for (i = v234; v235 != MessageIdentifierSet.endIndex.getter(i) || v237 != v242; i = v239)
                      {
                        v239 = v288;
                        MessageIdentifierSet.subscript.getter(v237, v288, &v301);
                        v240 = v301;
                        v235 = MessageIdentifierSet.index(_:offsetBy:)(v235, v237, 1);
                        v237 = v241;
                        LODWORD(v304) = v240;
                        MessageIdentifierSet.insert(_:)(&v301, &v304, v239);
                      }

                      v243 = v287;
                      v244 = (v287 + *(v262 + 36));
                      *v244 = v235;
                      v244[1] = v237;
                      sub_100025F40(v243, &qword_1005CDA38, &unk_1004D14C0);
                      v245 = v269;
                      sub_100025FDC(v286, v269, &unk_1005D91B0, &unk_1004CF400);
                      v246 = sub_1000DAC78(v245);
                      v247 = v263;
                      sub_1004A7114();
                      v248 = v261;
                      sub_10000E268(v247, v261, &unk_1005D91B0, &unk_1004CF400);
                      if (MessageIdentifierSet.count.getter() < 1)
                      {
                        sub_100025F40(v248, &unk_1005D91B0, &unk_1004CF400);
                        v251 = 1;
                        v5 = v259;
                        v121 = v296;
                        v122 = v297;
                        v250 = v265;
                      }

                      else
                      {
                        v249 = v260;
                        sub_100025FDC(v248, v260, &unk_1005D91B0, &unk_1004CF400);
                        v250 = v265;
                        sub_100025FDC(v249, v265, &qword_1005CD1D0, &unk_1004CF2C0);
                        v251 = 0;
                        v5 = v259;
                        v121 = v296;
                        v122 = v297;
                      }

                      v252 = v264;
                      (*(v277 + 56))(v250, v251, 1, v278);
                      sub_1000D80D8(v222, v246, v250, v252);
                      sub_100025F40(v269, &unk_1005D91B0, &unk_1004CF400);
                      sub_100025F40(v270, &unk_1005D91B0, &unk_1004CF400);
                      sub_100025F40(v289, &unk_1005D91B0, &unk_1004CF400);
                      sub_100025F40(v247, &unk_1005D91B0, &unk_1004CF400);
                      swift_storeEnumTagMultiPayload();
                      sub_1000357A4(v252, v5 + v124);
                      goto LABEL_29;
                    }

                    goto LABEL_99;
                  }

                  goto LABEL_95;
                }

LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              goto LABEL_52;
            }

LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          goto LABEL_91;
        }
      }

      else
      {
        v148 = *v29;
      }

      sub_100025F40(v29 + v128, &unk_1005D91B0, &unk_1004CF400);
    }
  }

LABEL_29:
  if ((sub_10006FDE4(3, v121, v123, v122) & 1) == 0)
  {
    return;
  }

  v149 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
  v150 = v295;
  sub_100031C0C(v5 + v149, v295, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v174 = type metadata accessor for DetermineMessageBatches.TaskState;
    v175 = v150;
LABEL_41:
    sub_100031C74(v175, v174);
    return;
  }

  v151 = v294;
  sub_100035908(v150, v294, type metadata accessor for MessageBatches);
  if ((*(v5 + 84) & 1) != 0 || (v152 = *(v5 + 76), (v152 & 0xFFFFFFFE) == 0) || ((v300 >> 59) & 0x1E | (v300 >> 2) & 1) != 0xA)
  {
    v174 = type metadata accessor for MessageBatches;
    v175 = v151;
    goto LABEL_41;
  }

  v153 = swift_projectBox();
  v154 = v291;
  sub_10000E268(v153, v291, &qword_1005CD4F8, &unk_1004CF790);
  v155 = *v154;
  v156 = *(v285 + 48);
  v157 = *(v285 + 64);
  if (*(v5 + 104) != v154[1])
  {
    v176 = *v154;

    goto LABEL_44;
  }

  v158 = sub_1000FFC98(*(v5 + 96), *v154);

  if ((v158 & 1) == 0)
  {
LABEL_44:
    sub_100031C74(v151, type metadata accessor for MessageBatches);
    v177 = v291;
    sub_100025F40(v291 + v157, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v177 + v156, &unk_1005D91B0, &unk_1004CF400);
    return;
  }

  v159 = v5;
  v160 = v291;
  v161 = v291 + v156;
  v162 = v280;
  sub_100025FDC(v161, v280, &unk_1005D91B0, &unk_1004CF400);
  LODWORD(v304) = 1;
  LODWORD(v303) = v152 - 1;
  v163 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v304, &v303, &type metadata for UID, v163, &v301);
  v304 = v301;
  v303 = Range<>.init<A>(_:)(&v304, &type metadata for UID, v163);
  sub_100016D2C();
  v164 = v279;
  sub_1004A7124();
  LOBYTE(v163) = sub_1004A7034();
  sub_100025F40(v164, &qword_1005CD1D0, &unk_1004CF2C0);
  if (v163)
  {
    sub_100025F40(v160 + v157, &qword_1005CD1D0, &unk_1004CF2C0);
    v165 = *(v5 + 144);
    v166 = *(v151 + 8);
    v167 = v273;
    sub_10000E268(v162, v273, &unk_1005D91B0, &unk_1004CF400);
    v168 = v272;
    sub_10000E268(v167, v272, &unk_1005D91B0, &unk_1004CF400);

    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v168, &unk_1005D91B0, &unk_1004CF400);
      v173 = 1;
      v172 = v274;
    }

    else
    {
      v169 = v168;
      v170 = v268;
      sub_100025FDC(v169, v268, &unk_1005D91B0, &unk_1004CF400);
      v171 = v170;
      v172 = v274;
      sub_100025FDC(v171, v274, &qword_1005CD1D0, &unk_1004CF2C0);
      v173 = 0;
    }

    (*(v277 + 56))(v172, v173, 1, v278);
    v220 = v271;
    sub_1000D80D8(v165, v166, v172, v271);
    sub_100025F40(v167, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v162, &unk_1005D91B0, &unk_1004CF400);
    sub_100031C74(v151, type metadata accessor for MessageBatches);
    swift_storeEnumTagMultiPayload();
    sub_1000357A4(v220, v159 + v149);
  }

  else
  {
    sub_100025F40(v162, &unk_1005D91B0, &unk_1004CF400);
    sub_100031C74(v151, type metadata accessor for MessageBatches);
    sub_100025F40(v160 + v157, &qword_1005CD1D0, &unk_1004CF2C0);
  }
}