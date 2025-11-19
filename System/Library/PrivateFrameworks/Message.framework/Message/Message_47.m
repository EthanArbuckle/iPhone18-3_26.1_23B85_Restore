uint64_t sub_1B0A9DF64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v4 = result;
  v5 = 0;
  v6 = BYTE4(result);
  v7 = result == 1 && BYTE4(result) == 3;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = BYTE4(result) == 3;
  }

  v9 = a2 + 40;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = (v9 + 12 * v5);
    v12 = v5;
    while (1)
    {
      if (v12 >= v2)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_44;
      }

      v13 = *(v11 - 1);
      v14 = *v11;
      if (v14 <= 1)
      {
        break;
      }

      if (v14 == 2)
      {
        if (v6 != 2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (v13)
      {
        if (v7)
        {
          goto LABEL_28;
        }
      }

      else if (v8)
      {
        v13 = 0;
        goto LABEL_28;
      }

LABEL_12:
      ++v12;
      v11 += 12;
      if (v5 == v2)
      {
        goto LABEL_35;
      }
    }

    if (*v11)
    {
      if (v6 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    if (v6)
    {
      goto LABEL_12;
    }

LABEL_11:
    if (v13 != v4)
    {
      goto LABEL_12;
    }

    v13 = v4;
LABEL_28:
    v25 = v9;
    v23 = *(v11 - 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    v24 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1B0B0A0E4(0, *(v10 + 16) + 1, 1);
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v9 = v25;
    if (v16 >= v15 >> 1)
    {
      result = sub_1B0B0A0E4((v15 > 1), v16 + 1, 1);
      v9 = v25;
    }

    *(v10 + 16) = v16 + 1;
    v17 = v10 + 12 * v16;
    v8 = v24;
    *(v17 + 32) = v23;
    *(v17 + 36) = v13;
    *(v17 + 40) = v14;
  }

  while (v5 != v2);
LABEL_35:
  v18 = *(v10 + 16);
  if (v18)
  {
    sub_1B0B09DC4(0, v18, 0);
    v19 = *(v3 + 16);
    v20 = 32;
    do
    {
      v21 = *(v10 + v20);
      v22 = *(v3 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1B0B09DC4((v22 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      *(v3 + 4 * v19 + 32) = v21;
      v20 += 12;
      ++v19;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1B0A9E1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  result = sub_1B0A9DF64(a1 & 0xFFFFFFFFFFLL, a3);
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
          sub_1B03B1B68(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_1B03E1BE8(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v8, type metadata accessor for TaskHistory.Previous);
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

uint64_t sub_1B0A9E3F4(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 48;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = (v8 + 24 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= v3)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        v12 = *v10;
        if (*v10)
        {
          break;
        }

        if ((a2 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_6:
        ++v11;
        v10 += 24;
        if (v7 == v3)
        {
          goto LABEL_19;
        }
      }

      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      if (*(v10 - 1) != v6)
      {
        goto LABEL_6;
      }

      v13 = *(v10 - 4);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B09F64(0, *(v9 + 16) + 1, 1);
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1B0B09F64((v14 > 1), v15 + 1, 1);
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 24 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v6;
      *(v16 + 48) = v12;
      if (v7 == v3)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v17 = *(v9 + 16);
  if (v17)
  {
    sub_1B0B09DC4(0, v17, 0);
    v18 = *(v4 + 16);
    v19 = 32;
    do
    {
      v20 = *(v9 + v19);
      v21 = *(v4 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_1B0B09DC4((v21 > 1), v18 + 1, 1);
      }

      *(v4 + 16) = v18 + 1;
      *(v4 + 4 * v18 + 32) = v20;
      v19 += 24;
      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

unint64_t sub_1B0A9E5FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  result = sub_1B0A9E3F4(a1, a2 & 1, a4);
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
          sub_1B03B1B68(v19, v13, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v21 = *(v10 + 2);
            result = sub_1B03E1BE8(*v10);
            if (v21 == v18)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v10, type metadata accessor for TaskHistory.Previous);
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

unint64_t sub_1B0A9E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v26 = a2;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  result = sub_1B0A9F568(a1, a3, a4);
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
          sub_1B03B1B68(v19, v13, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v21 = *(v10 + 2);
            result = sub_1B03E1BE8(*v10);
            if (v21 == v18)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v10, type metadata accessor for TaskHistory.Previous);
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

uint64_t sub_1B0A9EA9C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v4 = result;
  v5 = 0;
  if (result)
  {
    v6 = BYTE4(result) & 1;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = 0;
  }

  else
  {
    v7 = BYTE4(result) & 1;
  }

  v8 = a2 + 40;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = (v8 + 12 * v5);
    v11 = v5;
    while (1)
    {
      if (v11 >= v2)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_38;
      }

      v12 = *(v10 - 1);
      v13 = *v10;
      if (v13 == 1)
      {
        break;
      }

      if ((v4 & 0x100000000) == 0 && v12 == v4)
      {
        v12 = v4;
        goto LABEL_22;
      }

LABEL_11:
      ++v11;
      v10 += 12;
      if (v5 == v2)
      {
        goto LABEL_29;
      }
    }

    if (v12)
    {
      if (v6)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = 0;
LABEL_22:
    v23 = *(v10 - 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    v24 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1B0B0A1A4(0, *(v9 + 16) + 1, 1);
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_1B0B0A1A4((v14 > 1), v15 + 1, 1);
      v16 = v15 + 1;
      v3 = MEMORY[0x1E69E7CC0];
    }

    *(v9 + 16) = v16;
    v17 = v9 + 12 * v15;
    *(v17 + 32) = v23;
    *(v17 + 36) = v12;
    *(v17 + 40) = v13;
    v8 = v24;
  }

  while (v5 != v2);
LABEL_29:
  v18 = *(v9 + 16);
  if (v18)
  {
    sub_1B0B09DC4(0, v18, 0);
    v19 = *(v3 + 16);
    v20 = 32;
    do
    {
      v21 = *(v9 + v20);
      v22 = *(v3 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1B0B09DC4((v22 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      *(v3 + 4 * v19 + 32) = v21;
      v20 += 12;
      ++v19;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1B0A9ECD4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  result = sub_1B0A9EA9C(a1 | ((HIDWORD(a1) & 1) << 32), a3);
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
          sub_1B03B1B68(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_1B03E1BE8(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v8, type metadata accessor for TaskHistory.Previous);
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

unint64_t sub_1B0A9EF18(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t))
{
  v28 = a3;
  v9 = type metadata accessor for TaskHistory.Previous(0);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  result = sub_1B0A9F310(a1, a2 & 1, a4, a5);
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
          sub_1B03B1B68(v21, v15, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v15, v12, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v23 = *(v12 + 2);
            result = sub_1B03E1BE8(*v12);
            if (v23 == v20)
            {
              v24 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v12, type metadata accessor for TaskHistory.Previous);
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

uint64_t sub_1B0A9F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t))
{
  v20[0] = a1;
  v20[1] = a2;
  v18[2] = v20;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = a5(a4, v18, a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = MEMORY[0x1E69E7CC0];
    v10 = v8;
    sub_1B0B09DC4(0, v9, 0);
    v11 = v10;
    v12 = v19;
    v13 = *(v19 + 16);
    v14 = 32;
    do
    {
      v15 = *(v11 + v14);
      v19 = v12;
      v16 = *(v12 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_1B0B09DC4((v16 > 1), v13 + 1, 1);
        v11 = v10;
        v12 = v19;
      }

      *(v12 + 16) = v13 + 1;
      *(v12 + 4 * v13 + 32) = v15;
      v14 += 24;
      ++v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1B0A9F310(uint64_t result, char a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v8 = result;
  v9 = 0;
  v10 = a3 + 48;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = (v10 + 24 * v9);
    v13 = v9;
    while (1)
    {
      if (v13 >= v4)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_28;
      }

      v14 = *(v12 - 1);
      v15 = *v12;
      if (v15 != 1)
      {
        break;
      }

      if (a2)
      {
        goto LABEL_12;
      }

LABEL_5:
      ++v13;
      v12 += 24;
      if (v9 == v4)
      {
        goto LABEL_19;
      }
    }

    if ((a2 & 1) != 0 || v14 != v8)
    {
      goto LABEL_5;
    }

    v14 = v8;
LABEL_12:
    v24 = *(v12 - 4);
    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = v10;
    if ((result & 1) == 0)
    {
      result = a4(0, *(v11 + 16) + 1, 1);
    }

    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      result = a4(v16 > 1, v17 + 1, 1);
    }

    *(v11 + 16) = v17 + 1;
    v18 = v11 + 24 * v17;
    *(v18 + 32) = v24;
    *(v18 + 40) = v14;
    *(v18 + 48) = v15;
    v10 = v25;
  }

  while (v9 != v4);
LABEL_19:
  v19 = *(v11 + 16);
  if (v19)
  {
    sub_1B0B09DC4(0, v19, 0);
    v20 = *(v5 + 16);
    v21 = 32;
    do
    {
      v22 = *(v11 + v21);
      v23 = *(v5 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_1B0B09DC4((v23 > 1), v20 + 1, 1);
      }

      *(v5 + 16) = v20 + 1;
      *(v5 + 4 * v20 + 32) = v22;
      v21 += 24;
      ++v20;
      --v19;
    }

    while (v19);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1B0A9F568(uint64_t result, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v4 = 0;
  v5 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 24;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (v7 + 8 * v4);
  while (v6 != v4)
  {
    if (v4 >= v6)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_21;
    }

    v12 = *(v10 + 12);
    v10 += 2;
    ++v4;
    if (v12 == v5)
    {
      v13 = *v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = a3(0, *(v9 + 16) + 1, 1);
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        result = a3(v14 > 1, v15 + 1, 1);
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 8 * v15;
      *(v16 + 32) = v13;
      *(v16 + 36) = v5;
      v4 = v11;
      goto LABEL_2;
    }
  }

  v17 = *(v9 + 16);
  if (v17)
  {
    sub_1B0B09DC4(0, v17, 0);
    v18 = *(v8 + 16);
    v19 = 32;
    do
    {
      v20 = *(v9 + v19);
      v21 = *(v8 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_1B0B09DC4((v21 > 1), v18 + 1, 1);
      }

      *(v8 + 16) = v18 + 1;
      *(v8 + 4 * v18 + 32) = v20;
      v19 += 8;
      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0A9F750(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 24;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = result & 1;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 8 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    v10 = *(v8 + 12);
    v8 += 2;
    ++v2;
    if (v10 == v6)
    {
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A4A4(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0B0A4A4((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 8 * v13;
      *(v14 + 32) = v11;
      *(v14 + 36) = v10;
      v2 = v9;
      goto LABEL_2;
    }
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    sub_1B0B09DC4(0, v15, 0);
    v16 = *(v5 + 16);
    v17 = 32;
    do
    {
      v18 = *(v7 + v17);
      v19 = *(v5 + 24);
      if (v16 >= v19 >> 1)
      {
        sub_1B0B09DC4((v19 > 1), v16 + 1, 1);
      }

      *(v5 + 16) = v16 + 1;
      *(v5 + 4 * v16 + 32) = v18;
      v17 += 8;
      ++v16;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

unint64_t sub_1B0A9F914(char a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  result = sub_1B0A9F750(a1 & 1, a3);
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
          sub_1B03B1B68(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_1B03E1BE8(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v8, type metadata accessor for TaskHistory.Previous);
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

uint64_t sub_1B0A9FB38(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = (a1 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v5++;
      v7 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2(0, *(v6 + 16) + 1, 1);
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
      }

      *(v6 + 16) = v11;
      *(v6 + 4 * v10 + 32) = v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1B0B09DC4(0, v11, 0);
  v12 = v3;
  v13 = *(v3 + 16);
  v14 = 32;
  do
  {
    v15 = *(v6 + v14);
    v16 = *(v12 + 24);
    if (v13 >= v16 >> 1)
    {
      sub_1B0B09DC4((v16 > 1), v13 + 1, 1);
    }

    *(v12 + 16) = v13 + 1;
    *(v12 + 4 * v13 + 32) = v15;
    v14 += 4;
    ++v13;
    --v11;
  }

  while (v11);
LABEL_15:

  return v12;
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

unint64_t sub_1B0A9FE98()
{
  result = qword_1EB6E3EF0;
  if (!qword_1EB6E3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3EF0);
  }

  return result;
}

unint64_t sub_1B0A9FEF0()
{
  result = qword_1EB6E3EF8;
  if (!qword_1EB6E3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3EF8);
  }

  return result;
}

unint64_t sub_1B0A9FF44(uint64_t a1)
{
  result = sub_1B0A9FF6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0A9FF6C()
{
  result = qword_1EB6E3F00;
  if (!qword_1EB6E3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3F00);
  }

  return result;
}

unint64_t sub_1B0A9FFC4()
{
  result = qword_1EB6E3F08;
  if (!qword_1EB6E3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3F08);
  }

  return result;
}

uint64_t sub_1B0AA0164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AA01DC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1B0AA022C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1B0AA0280(void *result, int a2)
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

uint64_t _s15IMAP2Connection13PathViabilityO9hashValueSivg_0(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

BOOL sub_1B0AA034C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1B0AA02CC(*a1, *a2);
}

uint64_t sub_1B0AA0360(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return _s15IMAP2Connection13PathViabilityO9hashValueSivg_0(*v1);
}

uint64_t sub_1B0AA0370(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1B0AA02DC(a1, *v2);
}

uint64_t sub_1B0AA0380(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1B0AA02DC(v7, *v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AA03C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E45258();
  v5 = sub_1B0AB6B5C(v4, a1);

  v6 = type metadata accessor for DependencyGraph.State();
  swift_getTupleTypeMetadata2();
  v7 = sub_1B0E45258();
  sub_1B0AA0980(v7, a1, v6, a2);

  return v5;
}

uint64_t sub_1B0AA049C()
{
  if ((sub_1B0AB63E4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DependencyGraph.State();
  swift_getWitnessTable();

  return sub_1B0E44758();
}

uint64_t sub_1B0AA0560()
{
  sub_1B0AB6514();
  type metadata accessor for DependencyGraph.State();
  swift_getWitnessTable();

  return sub_1B0E44748();
}

uint64_t sub_1B0AA0600()
{
  sub_1B0E46C28();
  sub_1B0AA0560();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AA0680(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_1B0AA0600();
}

uint64_t sub_1B0AA0694(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  return sub_1B0AA0560();
}

uint64_t sub_1B0AA06A8(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_1B0AA0560();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AA06F4(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  return sub_1B0AA049C() & 1;
}

uint64_t sub_1B0AA073C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = sub_1B0AA0C6C(a1, *(a2 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v9;
  a3[3] = v11;
  return result;
}

unint64_t sub_1B0AA079C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1B0E447B8();

  return sub_1B0AA07F8(a1, v9, a2, a3);
}

unint64_t sub_1B0AA07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
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
      v22 = sub_1B0E44A28();
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

uint64_t sub_1B0AA0980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1B0E452A8())
  {
    sub_1B0E466B8();
    v13 = sub_1B0E466A8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1B0E452A8();
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
        if (sub_1B0E45288())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B0E462E8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1B0AA079C(v12, a2, v27);
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

uint64_t sub_1B0AA0C6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0AA03C8(v7, v8);
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  if (sub_1B0E452A8())
  {
    v21 = v5;
    for (i = 0; ; ++i)
    {
      v14 = sub_1B0E45288();
      sub_1B0E451E8();
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
        result = sub_1B0E462E8();
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
      sub_1B0AB5C30(v6, v19);
      (*(v4 + 8))(v6, a2);
      if (v15 == sub_1B0E452A8())
      {
        return v23;
      }
    }
  }

  return v9;
}

uint64_t sub_1B0AA0ED0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0AA0F18(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA0F60(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AA0FD8()
{
  result = sub_1B03D0770(&unk_1F2710640);
  qword_1EB738368 = result;
  return result;
}

uint64_t sub_1B0AA1000()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B0EC1E50;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v1 + 32) = type metadata accessor for FetchSearchResultMessages(0);
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 80) = type metadata accessor for FindMissingMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v1 + 128) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v1;
}

void sub_1B0AA1110(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1B0AA4CE4(a1, &v26 - v9, type metadata accessor for MailboxTaskLogger);
  sub_1B0AA4CE4(a1, v7, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA47C0(v2, v33);
  sub_1B0AA47C0(v2, v31);
  sub_1B0AA47C0(v2, v30);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v13 = 68160003;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v29);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    LOWORD(v14) = *(v14 + 12);
    sub_1B0AA4D4C(v7, type metadata accessor for MailboxTaskLogger);
    *(v13 + 29) = v14;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v16 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AA4D4C(v10, type metadata accessor for MailboxTaskLogger);
    v27 = v16;
    v28 = v15;
    v17 = sub_1B0E44BA8();
    v19 = sub_1B0399D64(v17, v18, &v29);

    *(v13 + 43) = v19;
    *(v13 + 51) = 2048;
    v20 = *(v34 + 16);
    sub_1B0AA47F8(v33);
    *(v13 + 53) = v20;
    *(v13 + 61) = 2082;
    LOBYTE(v27) = v32;
    v21 = sub_1B0B430BC(v31[17]);
    v23 = v22;
    sub_1B0AA47F8(v31);
    v24 = sub_1B0399D64(v21, v23, &v29);

    *(v13 + 63) = v24;
    *(v13 + 71) = 1024;
    LODWORD(v24) = v30[105];
    sub_1B0AA47F8(v30);
    *(v13 + 73) = v24;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID batch(es): %{public}s, fetching highest-mod-seq: %{BOOL}d", v13, 0x4Du);
    v25 = v26;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v25, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0AA47F8(v30);
    sub_1B0AA47F8(v33);
    sub_1B0AA4D4C(v7, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA4D4C(v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA47F8(v31);
  }
}

uint64_t sub_1B0AA14B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (!*(v6 + 112))
  {
    v13 = (a5 + *(type metadata accessor for MailboxSyncState() + 48));
    v14 = v13[3];
    v15 = v13[4];
    __swift_project_boxed_opaque_existential_0(v13, v14);
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

  v18 = &unk_1F2710668;
  v19 = &unk_1F2710770;
  if (*(v6 + 105))
  {
    v18 = &unk_1F27106D8;
    v19 = &unk_1F2710808;
  }

  if (*(v6 + 104))
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  sub_1B0AA15F8(a1, a2, a3, a4, v20, a6);
}

uint64_t sub_1B0AA15F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC8, &qword_1B0EC26A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30[-v19];
  v21 = *v6;
  v22 = *(v6 + 8);
  v30[12] = *(v6 + 12);
  sub_1B0AA2928(a1, a2, a3, a4, v21, v16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD0, &unk_1B0EC26B0);
  if ((*(*(v23 - 8) + 48))(v16, 1, v23) == 1)
  {
    sub_1B0398EFC(v16, &qword_1EB6E3FC8, &qword_1B0EC26A8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
    return (*(*(v24 - 8) + 56))(a6, 1, 1, v24);
  }

  else
  {
    v26 = *v16;
    sub_1B03C60A4(v16 + *(v23 + 48), v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
    v28 = a6 + *(v27 + 48);
    *a6 = v26;
    v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
    sub_1B03C60A4(v20, v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *v29 = a5;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(a6, 0, 1, v27);
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }
}

void sub_1B0AA18BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v79 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - v20;
  v22 = *(a2 + 112);
  if (v22)
  {
    v23 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
    v24 = *(v23 + 24);
    v25 = *(v23 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    (*(v25 + 32))(v22, v24, v25);
  }

  v26 = *(type metadata accessor for MailboxSyncState() + 48);
  v85 = a1;
  v27 = (a1 + v26);
  v29 = *(a1 + v26 + 24);
  v28 = *(a1 + v26 + 32);
  v80 = v27;
  __swift_project_boxed_opaque_existential_0(v27, v29);
  (*(v28 + 40))(v29, v28);
  v31 = *(v30 + 16);

  if (!v31)
  {
    sub_1B0AA4CE4(a3, v15, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA4CE4(a3, v12, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AA47C0(a2, &v89);
    v43 = sub_1B0E43988();
    v44 = sub_1B0E45908();
    if (os_log_type_enabled(v43, v44))
    {
      v81 = a3;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v88 = v46;
      *v45 = 68159491;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v47 = v82;
      v48 = &v12[*(v82 + 20)];
      *(v45 + 10) = *v48;
      *(v45 + 11) = 2082;
      v49 = &v15[*(v47 + 20)];
      *(v45 + 13) = sub_1B0399D64(*(v49 + 1), *(v49 + 2), &v88);
      *(v45 + 21) = 1040;
      *(v45 + 23) = 2;
      *(v45 + 27) = 512;
      v50 = *(v48 + 12);
      sub_1B0AA4D4C(v12, type metadata accessor for MailboxTaskLogger);
      *(v45 + 29) = v50;
      *(v45 + 31) = 2160;
      *(v45 + 33) = 0x786F626C69616DLL;
      *(v45 + 41) = 2085;
      v51 = *(v49 + 4);
      v52 = *(v49 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA4D4C(v15, type metadata accessor for MailboxTaskLogger);
      v86 = v51;
      v87 = v52;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, &v88);

      *(v45 + 43) = v55;
      *(v45 + 51) = 2048;
      if (v91)
      {
        v56 = *(v91 + 16);
      }

      else
      {
        v56 = 0;
      }

      v58 = v84;
      sub_1B0AA47F8(&v89);
      *(v45 + 53) = v56;
      _os_log_impl(&dword_1B0389000, v43, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed all %ld changes without UID.", v45, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v46, -1, -1);
      MEMORY[0x1B272C230](v45, -1, -1);

      a3 = v81;
      goto LABEL_17;
    }

    sub_1B0AA47F8(&v89);
    sub_1B0AA4D4C(v12, type metadata accessor for MailboxTaskLogger);

    v57 = v15;
LABEL_12:
    sub_1B0AA4D4C(v57, type metadata accessor for MailboxTaskLogger);
    v58 = v84;
LABEL_17:
    v59 = v83;
    goto LABEL_18;
  }

  sub_1B0AA4CE4(a3, v21, type metadata accessor for MailboxTaskLogger);
  sub_1B0AA4CE4(a3, v18, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA47C0(a2, &v89);
  v32 = sub_1B0E43988();
  v33 = sub_1B0E45908();
  if (!os_log_type_enabled(v32, v33))
  {
    sub_1B0AA47F8(&v89);
    sub_1B0AA4D4C(v18, type metadata accessor for MailboxTaskLogger);

    v57 = v21;
    goto LABEL_12;
  }

  v81 = a3;
  v34 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v88 = v79;
  *v34 = 68159747;
  *(v34 + 4) = 2;
  *(v34 + 8) = 256;
  v35 = v82;
  v36 = &v18[*(v82 + 20)];
  *(v34 + 10) = *v36;
  *(v34 + 11) = 2082;
  v37 = &v21[*(v35 + 20)];
  *(v34 + 13) = sub_1B0399D64(*(v37 + 1), *(v37 + 2), &v88);
  *(v34 + 21) = 1040;
  *(v34 + 23) = 2;
  *(v34 + 27) = 512;
  LOWORD(v36) = *(v36 + 12);
  sub_1B0AA4D4C(v18, type metadata accessor for MailboxTaskLogger);
  *(v34 + 29) = v36;
  *(v34 + 31) = 2160;
  *(v34 + 33) = 0x786F626C69616DLL;
  *(v34 + 41) = 2085;
  v38 = *(v37 + 4);
  LODWORD(v36) = *(v37 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AA4D4C(v21, type metadata accessor for MailboxTaskLogger);
  v86 = v38;
  v87 = v36;
  v39 = sub_1B0E44BA8();
  v41 = sub_1B0399D64(v39, v40, &v88);

  *(v34 + 43) = v41;
  *(v34 + 51) = 2048;
  if (v91)
  {
    v42 = *(v91 + 16);
  }

  else
  {
    v42 = 0;
  }

  v59 = v83;
  sub_1B0AA47F8(&v89);
  *(v34 + 53) = v42;
  *(v34 + 61) = 2048;
  *(v34 + 63) = v31;
  _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld changes without UID, still %ld remaining.", v34, 0x47u);
  v60 = v79;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v60, -1, -1);
  MEMORY[0x1B272C230](v34, -1, -1);

  a3 = v81;
  v58 = v84;
LABEL_18:
  v61 = v85;
  if (!*(v85 + 32))
  {
    v62 = *(v85 + 24);
    sub_1B0AA4CE4(a3, v58, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA4CE4(a3, v59, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v63 = sub_1B0E43988();
    v64 = sub_1B0E45908();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v86 = v84;
      *v65 = 68159491;
      v81 = a3;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v66 = v82;
      v67 = v59 + *(v82 + 20);
      *(v65 + 10) = *v67;
      *(v65 + 11) = 2082;
      v68 = v58;
      v69 = v58 + *(v66 + 20);
      *(v65 + 13) = sub_1B0399D64(*(v69 + 8), *(v69 + 16), &v86);
      *(v65 + 21) = 1040;
      *(v65 + 23) = 2;
      *(v65 + 27) = 512;
      v70 = *(v67 + 24);
      sub_1B0AA4D4C(v59, type metadata accessor for MailboxTaskLogger);
      *(v65 + 29) = v70;
      *(v65 + 31) = 2160;
      *(v65 + 33) = 0x786F626C69616DLL;
      *(v65 + 41) = 2085;
      v71 = *(v69 + 32);
      v72 = *(v69 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA4D4C(v68, type metadata accessor for MailboxTaskLogger);
      v89 = v71;
      v90 = v72;
      a3 = v81;
      v73 = sub_1B0E44BA8();
      v75 = sub_1B0399D64(v73, v74, &v86);

      *(v65 + 43) = v75;
      *(v65 + 51) = 2048;
      *(v65 + 53) = v62;
      _os_log_impl(&dword_1B0389000, v63, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Setting mailbox HIGHESTMODSEQ to %llu.", v65, 0x3Du);
      v76 = v84;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v76, -1, -1);
      MEMORY[0x1B272C230](v65, -1, -1);
    }

    else
    {
      sub_1B0AA4D4C(v59, type metadata accessor for MailboxTaskLogger);

      sub_1B0AA4D4C(v58, type metadata accessor for MailboxTaskLogger);
    }

    v77 = v80[3];
    v78 = v80[4];
    __swift_mutable_project_boxed_opaque_existential_1(v80, v77);
    (*(v78 + 64))(v62, a3, v77, v78);
    v61 = v85;
  }

  sub_1B0B443EC(v61, *(a2 + 120), *(a2 + 128), a3, *(a2 + 136), *(a2 + 144) | (*(a2 + 148) << 32));
}

uint64_t sub_1B0AA22DC()
{
  if (qword_1EB6E3DC0 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AA2348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 136);
  v11 = *(v5 + 144);
  v12 = *(v5 + 148);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_1B0AA395C(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_1B0AA3B98(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1B0AA241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA8, &qword_1B0EC2680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v31[-v19];
  v22 = *(v7 + 136);
  v21 = v7 + 136;
  v23 = *(v21 + 8);
  v31[12] = *(v21 + 12);
  sub_1B0AA2BD0(a1, a2, a3, a4, a7, v22, v16);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    v25 = &qword_1EB6E3FA8;
    v26 = &qword_1B0EC2680;
    v27 = v16;
  }

  else
  {
    v28 = *v16;
    v29 = sub_1B03C60A4(v16 + *(v24 + 48), v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1EEE9AC00](v29);
    *&v31[-16] = v20;
    sub_1B0AA2784(v28, sub_1B0AA4C04, &v31[-32]);
    v27 = v20;
    v25 = &unk_1EB6E1AF0;
    v26 = &unk_1B0E9AF40;
  }

  return sub_1B0398EFC(v27, v25, v26);
}

uint64_t sub_1B0AA26B0(uint64_t result)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0AA47B8);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

size_t sub_1B0AA2784(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v8 = type metadata accessor for MessagesToRemoveHelper.Range();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
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
    sub_1B0AA4CE4(a2 + v13 + v4, v12, type metadata accessor for MessagesToRemoveHelper.Range);
    v16 = *v12;
    sub_1B0AA4D4C(v12, type metadata accessor for MessagesToRemoveHelper.Range);
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
  result = sub_1B0B8C8C4(v13);
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

uint64_t sub_1B0AA2928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v29 = a6;
  v11 = type metadata accessor for MessagesToRemoveHelper.Range();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  v31[0] = a1;
  v31[1] = a2;
  v31[2] = a3;
  v31[3] = a4;
  v30 = v31;
  sub_1B0AF4F50(sub_1B0AA4DF0, a5, &v28 - v21);
  sub_1B03C60A4(v22, v19, &qword_1EB6E3FA0, &unk_1B0EC2670);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD0, &unk_1B0EC26B0);
    return (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  }

  else
  {
    sub_1B0AA4C60(v19, v15);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD0, &unk_1B0EC26B0);
    v26 = *(v25 + 48);
    v27 = v29;
    *v29 = *v15;
    sub_1B03B5C80(v15 + *(v11 + 20), v27 + v26, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AA4D4C(v15, type metadata accessor for MessagesToRemoveHelper.Range);
    return (*(*(v25 - 8) + 56))(v27, 0, 1, v25);
  }
}

uint64_t sub_1B0AA2BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v121 = a2;
  v122 = a6;
  v118 = a4;
  v119 = a5;
  v117 = a3;
  v123 = a7;
  v124 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v110 - v9;
  v125 = type metadata accessor for MessagesToRemoveHelper.Range();
  v120 = *(v125 - 8);
  v11 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = (&v110 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v110 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v112 = &v110 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v111 = *(v23 - 8);
  v24 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v110 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v110 - v30;
  v32 = type metadata accessor for TaskHistory.Running(0);
  v115 = *(v32 - 8);
  v116 = v32;
  v33 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v113 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v110 - v36;
  v38 = type metadata accessor for UntaggedResponse(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = (&v110 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0AA4CE4(v124, v41, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    if (EnumCaseMultiPayload != 20)
    {
      if (EnumCaseMultiPayload != 12)
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
        (*(*(v87 - 8) + 56))(v123, 1, 1, v87);
        return sub_1B0AA4D4C(v41, type metadata accessor for UntaggedResponse);
      }

      v43 = v41[1];
      v127[0] = *v41;
      v127[1] = v43;
      v127[2] = v41[2];
      v44 = *(&v127[0] + 1);
      if (*(&v127[0] + 1))
      {
        v45 = *&v127[0];
        v46 = *&v127[1];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = Tag.init(_:)(v45, v44);
        if (v48)
        {
          goto LABEL_42;
        }

        v49 = v47;
        v117 = v46;
        v120 = v45;
        v122 = v44;
        v50 = *(v121 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (!v50)
        {
LABEL_41:

          v44 = v122;
          v45 = v120;
          goto LABEL_42;
        }

        LODWORD(v125) = v49;
        v124 = HIDWORD(v49);
        v51 = v121 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
        v52 = *(v115 + 72);
        while (1)
        {
          sub_1B0AA4CE4(v51, v37, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AA4D4C(v37, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v53 = *v37;
            v54 = *(v37 + 1);
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AA4D4C(&v37[*(v55 + 64)], type metadata accessor for ClientCommand);
            v56 = v53 == v125 && v54 == v124;
            if (v56)
            {
              v57 = v51;
              v58 = v113;
              sub_1B0AA4CE4(v57, v113, type metadata accessor for TaskHistory.Running);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                v59 = *v58;
                v60 = *(v58 + 1);
                v61 = *(v58 + 2);
                sub_1B0AA4D4C(&v58[*(v55 + 64)], type metadata accessor for ClientCommand);

                v56 = v59 == v125;
                v44 = v122;
                v45 = v120;
                if (!v56)
                {
                  __break(1u);
                  goto LABEL_52;
                }

                if (v60 == v124)
                {
                  v62 = sub_1B0AEAA80(v61, v118);
                  if ((v63 & 1) == 0)
                  {
                    v64 = v62;
                    v65 = v112;
                    ExtendedSearchResponse.matchedUIDs.getter(v112);
                    sub_1B0A96464(v127);
                    if ((*(v111 + 48))(v65, 1, v23) == 1)
                    {
                      sub_1B0398EFC(v65, &qword_1EB6E3920, &qword_1B0E9B070);
                      v66 = sub_1B0E43988();
                      v67 = sub_1B0E458E8();
                      v68 = os_log_type_enabled(v66, v67);
                      v69 = v123;
                      if (v68)
                      {
                        v70 = swift_slowAlloc();
                        *v70 = 0;
                        _os_log_impl(&dword_1B0389000, v66, v67, "Extended search response has no UIDs.", v70, 2u);
                        MEMORY[0x1B272C230](v70, -1, -1);
                      }

                      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
                      v72 = *(*(v71 - 8) + 56);
                      v73 = v69;
                      return v72(v73, 1, 1, v71);
                    }

                    else
                    {
                      v106 = v110;
                      sub_1B03C60A4(v65, v110, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
                      v108 = *(v107 + 48);
                      v109 = v123;
                      *v123 = v64;
                      sub_1B03C60A4(v106, v109 + v108, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                      return (*(*(v107 - 8) + 56))(v109, 0, 1, v107);
                    }
                  }

LABEL_42:
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0A96464(v127);

LABEL_43:
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v94 = sub_1B0E43988();
                  v95 = sub_1B0E458E8();

                  if (os_log_type_enabled(v94, v95))
                  {
                    v96 = swift_slowAlloc();
                    v97 = swift_slowAlloc();
                    v126[0] = v97;
                    *v96 = 136446210;
                    v98 = sub_1B0399D64(v45, v44, v126);

                    *(v96 + 4) = v98;
                    _os_log_impl(&dword_1B0389000, v94, v95, "Received unknown extended search response with tag '%{public}s'.", v96, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v97);
                    MEMORY[0x1B272C230](v97, -1, -1);
                    MEMORY[0x1B272C230](v96, -1, -1);
                  }

                  else
                  {
                  }

                  v99 = v123;
                  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
                  v72 = *(*(v71 - 8) + 56);
                  v73 = v99;
                  return v72(v73, 1, 1, v71);
                }

LABEL_52:
                __break(1u);
              }

              result = sub_1B0AA4D4C(v58, type metadata accessor for TaskHistory.Running);
              __break(1u);
              return result;
            }
          }

          v51 += v52;
          if (!--v50)
          {
            goto LABEL_41;
          }
        }
      }

      sub_1B0A96464(v127);
      v44 = 0xE90000000000003ELL;
      v45 = 0x6E776F6E6B6E753CLL;
      goto LABEL_43;
    }

    memcpy(v127, v41, 0x268uLL);
    if ((BYTE12(v127[0]) & 1) == 0)
    {
      v74 = *(v122 + 16);
      if (v74)
      {
        v75 = DWORD2(v127[0]);
        v76 = v122 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
        v77 = *(v120 + 72);
        while (1)
        {
          sub_1B0AA4CE4(v76, v13, type metadata accessor for MessagesToRemoveHelper.Range);
          sub_1B03B5C80(&v13[*(v125 + 20)], v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
          LODWORD(v126[0]) = v75;
          v78 = MessageIdentifierSet.contains(_:)(v126, v23);
          sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          if (v78)
          {
            break;
          }

          sub_1B0AA4D4C(v13, type metadata accessor for MessagesToRemoveHelper.Range);
          v76 += v77;
          if (!--v74)
          {
            goto LABEL_49;
          }
        }

        v100 = v114;
        sub_1B0AA4C60(v13, v114);
        v101 = *v100;
        sub_1B0AA4D4C(v100, type metadata accessor for MessagesToRemoveHelper.Range);
        if (sub_1B0AD44F4(v101, v121, v117, v118))
        {
          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
          v103 = *(v102 + 48);
          v104 = v123;
          *v123 = v101;
          LODWORD(v126[0]) = v75;
          v105 = sub_1B041C1E8();
          MessageIdentifierSet.init(_:)(v126, &type metadata for UID, v105);
          sub_1B0AA4C0C(v127);
          return (*(*(v102 - 8) + 56))(v104, 0, 1, v102);
        }
      }
    }

LABEL_49:
    sub_1B0AA4C0C(v127);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
    v72 = *(*(v71 - 8) + 56);
    v73 = v123;
    return v72(v73, 1, 1, v71);
  }

  v79 = v19;
  v80 = *v41;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = (v80 + 32);
    do
    {
      v83 = *v82++;
      LODWORD(v126[0]) = v83;
      MessageIdentifierSet.insert(_:)(v127, v126, v23);
      --v81;
    }

    while (v81);
  }

  v84 = v31;
  v85 = sub_1B03C60A4(v28, v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v85);
  *(&v110 - 2) = v31;
  sub_1B0AF4F50(sub_1B0AA4CC4, v122, v79);
  if ((*(v120 + 48))(v79, 1, v125) == 1)
  {
    sub_1B0398EFC(v79, &qword_1EB6E3FA0, &unk_1B0EC2670);
    v86 = v123;
  }

  else
  {
    v89 = *v79;
    sub_1B0AA4D4C(v79, type metadata accessor for MessagesToRemoveHelper.Range);
    v90 = sub_1B0AD44F4(v89, v121, v117, v118);
    v86 = v123;
    if (v90)
    {
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
      v92 = *(v91 + 48);
      *v86 = v89;
      sub_1B03B5C80(v84, v86 + v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      (*(*(v91 - 8) + 56))(v86, 0, 1, v91);
      return sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }
  }

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  (*(*(v93 - 8) + 56))(v86, 1, 1, v93);
  return sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0AA395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  v17 = type metadata accessor for MessagesToRemoveHelper.Range();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v30 = v31;
  sub_1B0AF4F50(sub_1B0AA4DAC, a7, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1B0398EFC(v16, &qword_1EB6E3FA0, &unk_1B0EC2670);
    return 0;
  }

  else
  {
    sub_1B0AA4C60(v16, v21);
    v22 = *v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
    swift_allocBox();
    v24 = *(v23 + 48);
    v25 = v29;
    *v26 = a1;
    v26[1] = v25;
    sub_1B03B5C80(v21 + *(v17 + 20), v26 + v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AA4D4C(v21, type metadata accessor for MessagesToRemoveHelper.Range);
  }

  return v22;
}

uint64_t sub_1B0AA3B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v98 = (&v84 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB8, &qword_1B0EC2688);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v92 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = (&v84 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v94 = (&v84 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v99 = (&v84 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v46 = 0;
    while (1)
    {
      v47 = *(a7 + v44);
      if ((sub_1B0A98E04(v47, a3, a4, a5) & 1) != 0 && (sub_1B0B11C58(v47, 0, a3, a4, a6) & 1) != 0 && (sub_1B0A9E5FC(v47, 1, a4, a6) & 1) == 0)
      {
        break;
      }

      v44 += v45;
      if (v42 == ++v46)
      {
LABEL_21:
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
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
      sub_1B0398EFC(v97, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v55 = 1;
    }

    else
    {
      v54 = v87;
      sub_1B03C60A4(v97, v87, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v54, v98, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v55 = 0;
    }

    v56 = v89;
    (*v85)(v98, v55, 1, v89);
    if ((*v88)(v98, 1, v56) == 1)
    {
      sub_1B0398EFC(v98, &unk_1EB6E3670, &unk_1B0E9B260);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
      v58 = v94;
      (*(*(v57 - 8) + 56))(v94, 1, 1, v57);
      sub_1B0398EFC(v58, &qword_1EB6E3FB8, &qword_1B0EC2688);
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
        if ((sub_1B0A98E04(v60, a3, a4, a5) & 1) != 0 && (sub_1B0B11C58(v60, 0, a3, a4, a6) & 1) != 0 && (sub_1B0A9E5FC(v60, 1, a4, a6) & 1) == 0)
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
    sub_1B03C60A4(v98, v86, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
    v78 = *(v77 + 48);
    v79 = v84;
    v80 = v94;
    *v94 = *v84;
    sub_1B03C60A4(v76, v80 + v78, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v81 = *(v77 - 8);
    v98 = *(v81 + 56);
    (v98)(v80, 0, 1, v77);
    sub_1B0398EFC(v80, &qword_1EB6E3FB8, &qword_1B0EC2688);
    v82 = v93;
    sub_1B0B47218(v79, v93);
    v83 = v92;
    sub_1B03B5C80(v82, v92, &qword_1EB6E3FB8, &qword_1B0EC2688);
    if ((*(v81 + 48))(v83, 1, v77) == 1)
    {
LABEL_35:

      __break(1u);
      return result;
    }

    v62 = v99;
    sub_1B03C60A4(v83, v99, &qword_1EB6E3FC0, &unk_1B0EC2690);
    sub_1B0398EFC(v82, &qword_1EB6E3FB8, &qword_1B0EC2688);
    (v98)(v62, 0, 1, v77);
LABEL_22:

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
    v64 = (*(*(v63 - 8) + 48))(v62, 1, v63);
    v65 = v95;
    if (v64 == 1)
    {
      sub_1B0398EFC(v62, &qword_1EB6E3FB8, &qword_1B0EC2688);
      return 0;
    }

    v67 = *v62;
    v68 = v90;
    sub_1B03C60A4(v62 + *(v63 + 48), v90, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
    swift_allocBox();
    v70 = *(v69 + 48);
    *v71 = v91;
    v71[1] = v65;
    sub_1B03C60A4(v68, v71 + v70, &unk_1EB6E26C0, &unk_1B0E9DE10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v67;
  }

  else if (a8 & 0x100000000) != 0 || (sub_1B0A9E5FC(-1, 1, a4, a6))
  {
    return 0;
  }

  else
  {
    LODWORD(v101) = 1;
    LODWORD(v100) = a8;
    v72 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v101, &v100, &type metadata for UID, v72, &v102);
    v101 = v102;
    v100 = Range<>.init<A>(_:)(&v101, &type metadata for UID, v72);
    sub_1B03D06F8();
    sub_1B0E46F08();
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
    swift_allocBox();
    v74 = *(v73 + 48);
    *v75 = a1;
    v75[1] = a2;
    sub_1B03C60A4(v33, v75 + v74, &unk_1EB6E26C0, &unk_1B0E9DE10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return -1;
  }
}

__n128 __swift_memcpy149_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AA45C8(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA4610(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AA4690()
{
  result = qword_1EB6DD898;
  if (!qword_1EB6DD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD898);
  }

  return result;
}

unint64_t sub_1B0AA46E8()
{
  result = qword_1EB6DD890;
  if (!qword_1EB6DD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD890);
  }

  return result;
}

unint64_t sub_1B0AA473C(uint64_t a1)
{
  result = sub_1B0AA4764();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AA4764()
{
  result = qword_1EB6E3F98;
  if (!qword_1EB6E3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3F98);
  }

  return result;
}

void sub_1B0AA4828(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v43 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v39 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v39 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v39 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v39 - v25;
  if (((a3 >> 59) & 0x1E | (a3 >> 2) & 1) == 0xA)
  {
    v40 = a6;
    v41 = v6;
    v27 = swift_projectBox();
    sub_1B03B5C80(v27, v18, &qword_1EB6E3628, &unk_1B0EA2080);
    v28 = *v18;
    v29 = v18 + *(v15 + 48);
    v30 = v18 + *(v15 + 64);
    if (v18[1] == a2)
    {
      v31 = sub_1B04520BC(a1, *v18);

      if (v31)
      {
        sub_1B03C60A4(v29, v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v32 = sub_1B03C60A4(v30, v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v33 = *v41;
        MEMORY[0x1EEE9AC00](v32);
        *(&v39 - 2) = v22;
        sub_1B0AF4F50(sub_1B0AA4BDC, v34, v14);
        v35 = type metadata accessor for MessagesToRemoveHelper.Range();
        if ((*(*(v35 - 8) + 48))(v14, 1, v35) == 1)
        {
          sub_1B0398EFC(v14, &qword_1EB6E3FA0, &unk_1B0EC2670);
        }

        else
        {
          v37 = *v14;
          sub_1B0AA4D4C(v14, type metadata accessor for MessagesToRemoveHelper.Range);
          v38 = sub_1B0AEAF24(v37, 0, v42, v43, v40);
          if (v38)
          {
            MEMORY[0x1EEE9AC00](v38);
            *(&v39 - 2) = v26;
            sub_1B0AA2784(v37, sub_1B0AA4BFC, (&v39 - 4));
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

    sub_1B0398EFC(v30, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }
}

uint64_t sub_1B0AA4C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesToRemoveHelper.Range();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AA4CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AA4D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AA4E2C()
{
  result = sub_1B03D0770(&unk_1F27108C8);
  qword_1EB738370 = result;
  return result;
}

void sub_1B0AA4E54(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1B0A92638(a1, &v26 - v9);
  sub_1B0A92638(a1, v7);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA5BF0(v2, v29);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v16 + 1), *(v16 + 2), &v28);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v17 = *(v15 + 12);
    sub_1B0A9269C(v7);
    *(v13 + 29) = v17;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v18 = *(v16 + 4);
    LODWORD(v16) = *(v16 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v10);
    v26 = v18;
    v27 = v16;
    v19 = sub_1B0E44BA8();
    v21 = sub_1B0399D64(v19, v20, &v28);

    *(v13 + 43) = v21;
    *(v13 + 51) = 2082;
    LOBYTE(v26) = v31;
    v22 = sub_1B0B430BC(v30);
    v24 = v23;
    sub_1B0AA5C28(v29);
    v25 = sub_1B0399D64(v22, v24, &v28);

    *(v13 + 53) = v25;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task: %{public}s", v13, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v7);

    sub_1B0A9269C(v10);
    sub_1B0AA5C28(v29);
  }
}

void sub_1B0AA513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = *(a2 + 112);
  v14 = *(type metadata accessor for MailboxSyncState() + 48);
  v35 = a1;
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 24);
  v17 = *(a1 + v14 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1 + v14, v16);
  (*(v17 + 32))(v13, v16, v17);
  v18 = v15[3];
  v19 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v18);
  v20 = *((*(v19 + 24))(v18, v19) + 16);

  sub_1B0A92638(a3, v12);
  sub_1B0A92638(a3, v9);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  v21 = sub_1B0E43988();
  v22 = sub_1B0E45908();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v23 = 68159747;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = *(v6 + 20);
    v33 = v20;
    v25 = &v9[v24];
    *(v23 + 10) = v9[v24];
    *(v23 + 11) = 2082;
    v26 = &v12[*(v6 + 20)];
    *(v23 + 13) = sub_1B0399D64(*(v26 + 1), *(v26 + 2), &v38);
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    LOWORD(v25) = *(v25 + 12);
    sub_1B0A9269C(v9);
    *(v23 + 29) = v25;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v27 = *(v26 + 4);
    LODWORD(v25) = *(v26 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v12);
    v36 = v27;
    v37 = v25;
    v28 = sub_1B0E44BA8();
    v30 = sub_1B0399D64(v28, v29, &v38);

    *(v23 + 43) = v30;
    *(v23 + 51) = 2048;
    v31 = *(v13 + 16);

    *(v23 + 53) = v31;

    *(v23 + 61) = 2048;
    *(v23 + 63) = v33;
    _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld changes without UID, still %ld remaining.", v23, 0x47u);
    v32 = v34;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v32, -1, -1);
    MEMORY[0x1B272C230](v23, -1, -1);
  }

  else
  {

    sub_1B0A9269C(v9);

    sub_1B0A9269C(v12);
  }

  sub_1B0B443EC(v35, *(a2 + 120), 0, a3, *(a2 + 128), *(a2 + 136) | (*(a2 + 140) << 32));
}

uint64_t sub_1B0AA54C8()
{
  if (qword_1EB6E3DC8 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AA5528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(v5 + 104))
  {
    v6 = &unk_1F27108F0;
  }

  else
  {
    v6 = &unk_1F2710960;
  }

  sub_1B0AA15F8(a1, a2, a3, a4, v6, a5);
}

uint64_t sub_1B0AA5580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 128);
  v11 = *(v5 + 136);
  v12 = *(v5 + 140);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_1B0AA395C(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_1B0AA3B98(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1B0AA5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA8, &qword_1B0EC2680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v31[-v19];
  v22 = *(v7 + 128);
  v21 = v7 + 128;
  v23 = *(v21 + 8);
  v31[12] = *(v21 + 12);
  sub_1B0AA2BD0(a1, a2, a3, a4, a7, v22, v16);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    v25 = &qword_1EB6E3FA8;
    v26 = &qword_1B0EC2680;
    v27 = v16;
  }

  else
  {
    v28 = *v16;
    v29 = sub_1B074BA2C(v16 + *(v24 + 48), v20);
    MEMORY[0x1EEE9AC00](v29);
    *&v31[-16] = v20;
    sub_1B0AA2784(v28, sub_1B0AA4C04, &v31[-32]);
    v25 = &unk_1EB6E1AF0;
    v26 = &unk_1B0E9AF40;
    v27 = v20;
  }

  return sub_1B0398EFC(v27, v25, v26);
}

uint64_t sub_1B0AA58D8(uint64_t result)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0AA5BE8);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0AA59AC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
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

BOOL sub_1B0AA5A24(_BOOL8 result, uint64_t a2, uint64_t a3)
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

__n128 __swift_memcpy141_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AA5AAC(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA5AF4(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AA5B6C(uint64_t a1)
{
  result = sub_1B0AA5B94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AA5B94()
{
  result = qword_1EB6E3FF0;
  if (!qword_1EB6E3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3FF0);
  }

  return result;
}

uint64_t sub_1B0AA5C58()
{
  result = sub_1B03D0770(&unk_1F27109F8);
  qword_1EB737D60 = result;
  return result;
}

void sub_1B0AA5C80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1B0A92638(a1, &v26 - v9);
  sub_1B0A92638(a1, v7);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA6A5C(v2, v31);
  sub_1B0AA6A5C(v2, v29);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 68159747;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v16 + 1), *(v16 + 2), &v28);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    LOWORD(v15) = *(v15 + 12);
    sub_1B0A9269C(v7);
    *(v13 + 29) = v15;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v17 = *(v16 + 4);
    LODWORD(v16) = *(v16 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v10);
    v26 = v17;
    v27 = v16;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v28);

    *(v13 + 43) = v20;
    *(v13 + 51) = 2048;
    v21 = *(v31[11] + 16);
    sub_1B0AA6A94(v31);
    *(v13 + 53) = v21;
    *(v13 + 61) = 2082;
    LOBYTE(v26) = v30;
    v22 = sub_1B0B430BC(v29[11]);
    v24 = v23;
    sub_1B0AA6A94(v29);
    v25 = sub_1B0399D64(v22, v24, &v28);

    *(v13 + 63) = v25;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID batch(es): %{public}s", v13, 0x47u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0AA6A94(v31);
    sub_1B0A9269C(v7);

    sub_1B0A9269C(v10);
    sub_1B0AA6A94(v29);
  }
}

uint64_t sub_1B0AA5FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v38 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC8, &qword_1B0EC26A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v37 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  v21 = *v6;
  v22 = *(v6 + 8);
  v39 = *(v6 + 12);
  sub_1B0AA2928(a1, a2, a3, a4, v21, v15);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD0, &unk_1B0EC26B0);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    sub_1B0398EFC(v15, &qword_1EB6E3FC8, &qword_1B0EC26A8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
    return (*(*(v24 - 8) + 56))(a6, 1, 1, v24);
  }

  else
  {
    v26 = *v15;
    sub_1B03C60A4(v15 + *(v23 + 48), v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
    v27 = swift_allocBox();
    v29 = v28;
    sub_1B03D08AC(v20, v28);
    (*(v17 + 56))(v29, 0, 1, v16);
    v30 = v27 | 0xA000000000000000;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
    v32 = (a6 + *(v31 + 48));
    *a6 = v26;
    if ((v38 & 0x100) != 0)
    {
      sub_1B0398EFC(v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *v32 = v30;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      v33 = *(type metadata accessor for SearchReturnOption() - 8);
      v34 = *(v33 + 72);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1B0EC1E70;
      swift_storeEnumTagMultiPayload();
      sub_1B0398EFC(v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *v32 = v30;
      v32[1] = v36;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v31 - 8) + 56))(a6, 0, 1, v31);
  }
}

uint64_t sub_1B0AA638C()
{
  if (qword_1EB6DD8B8 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AA6400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
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

  return sub_1B0AA5FA0(a1, a2, a3, a4, v14 | *(v6 + 101), a6);
}

uint64_t sub_1B0AA64B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 88);
  v11 = *(v5 + 96);
  v12 = *(v5 + 100);
  v13 = *v5;
  v14 = *(v5 + 8);
  result = sub_1B0AA395C(v13, v14, a1, a2, a3, a4, v10);
  if (v17 == 0xFF)
  {
    result = sub_1B0AA3B98(v13, v14, a1, a2, a3, a4, v10, v11 | (v12 << 32));
  }

  *a5 = result;
  a5[1] = v17;
  a5[2] = v18;
  return result;
}

uint64_t sub_1B0AA6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA8, &qword_1B0EC2680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v31[-v19];
  v22 = *(v7 + 88);
  v21 = v7 + 88;
  v23 = *(v21 + 8);
  v31[12] = *(v21 + 12);
  sub_1B0AA2BD0(a1, a2, a3, a4, a7, v22, v16);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    v25 = &qword_1EB6E3FA8;
    v26 = &qword_1B0EC2680;
    v27 = v16;
  }

  else
  {
    v28 = *v16;
    v29 = sub_1B03C60A4(v16 + *(v24 + 48), v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1EEE9AC00](v29);
    *&v31[-16] = v20;
    sub_1B0AA2784(v28, sub_1B0AA4C04, &v31[-32]);
    v27 = v20;
    v25 = &unk_1EB6E1AF0;
    v26 = &unk_1B0E9AF40;
  }

  return sub_1B0398EFC(v27, v25, v26);
}

uint64_t sub_1B0AA6824(uint64_t result)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0AA6A2C);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0AA68F8(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA6940(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AA69B0(uint64_t a1)
{
  result = sub_1B0AA69D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AA69D8()
{
  result = qword_1EB6DD8B0;
  if (!qword_1EB6DD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD8B0);
  }

  return result;
}

uint64_t sub_1B0AA6AC4()
{
  result = sub_1B03D0770(&unk_1F2710A48);
  qword_1EB737D28 = result;
  return result;
}

void sub_1B0AA6AEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1B0AA92CC(a1, &v26 - v9, type metadata accessor for MailboxTaskLogger);
  sub_1B0AA92CC(a1, v7, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0AA93EC(v2, v30);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v16 + 1), *(v16 + 2), &v29);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v17 = *(v15 + 12);
    sub_1B0AA9334(v7, type metadata accessor for MailboxTaskLogger);
    *(v13 + 29) = v17;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v18 = *(v16 + 4);
    LODWORD(v16) = *(v16 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AA9334(v10, type metadata accessor for MailboxTaskLogger);
    v27 = v18;
    v28 = v16;
    v19 = sub_1B0E44BA8();
    v21 = sub_1B0399D64(v19, v20, &v29);

    *(v13 + 43) = v21;
    *(v13 + 51) = 2082;
    LOBYTE(v27) = v32;
    v22 = sub_1B0B430BC(v31);
    v24 = v23;
    sub_1B0AA9424(v30);
    v25 = sub_1B0399D64(v22, v24, &v29);

    *(v13 + 53) = v25;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task: %{public}s", v13, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0AA9334(v7, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA9334(v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA9424(v30);
  }
}

void sub_1B0AA6E2C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FF8, &unk_1B0EC6940);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v209 = &v185[-v7];
  v8 = _s15MissingMessagesO10NewMissingVMa(0);
  v207 = *(v8 - 8);
  v208 = v8;
  v9 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v202 = &v185[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v200 = &v185[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v201 = &v185[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v206 = &v185[-v16];
  v205 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v198 = &v185[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v199 = &v185[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v196 = &v185[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v197 = &v185[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v203 = &v185[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v185[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v185[-v31];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v185[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v185[-v38];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v212 = &v185[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v185[-v47];
  MEMORY[0x1EEE9AC00](v49);
  v55 = &v185[-v51];
  v56 = *(v2 + 88);
  if (!*(v56 + 16))
  {
    v86 = *(v2 + 24);
    v87 = *(v2 + 32);
    MEMORY[0x1EEE9AC00](v50);
    *&v185[-16] = a2;
    if ((*(a1 + 192) & 1) == 0)
    {
      return;
    }

    v89 = *(a1 + 176);
    v88 = *(a1 + 184);
    v90 = *(a1 + 168);
    v213 = v90;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v213, v86, v87, 0, sub_1B0AA93D8);
    goto LABEL_37;
  }

  v190 = v54;
  v191 = v53;
  v192 = v35;
  v193 = v29;
  v194 = v52;
  v204 = v50;
  v57 = *(v2 + 96);
  v210 = v2;
  LOBYTE(v213) = *(v2 + 100);
  v58 = v213;
  sub_1B0B45FF0(v56, &v185[-v51]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v59 = sub_1B0E46E98();
  v211 = v55;
  if ((v59 & 1) == 0)
  {
    v186 = v58;
    v187 = v57;
    v188 = v56;
    v195 = a2;
    v189 = a1;
    MessageIdentifierSet.ranges.getter(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v60 = sub_1B0E46E18();
    v61 = sub_1B0E46E28();
    v62 = sub_1B0E46E18();
    v63 = sub_1B0E46E28();
    if (v60 < v62 || v63 < v60)
    {
      __break(1u);
    }

    else
    {
      v64 = sub_1B0E46E18();
      v65 = sub_1B0E46E28();
      sub_1B0398EFC(v39, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v61 >= v64 && v65 >= v61)
      {
        if (!__OFSUB__(v61, v60))
        {
          if (v61 - v60 > 19)
          {
            v91 = v195;
            v92 = v193;
            sub_1B0AA92CC(v195, v193, type metadata accessor for MailboxTaskLogger);
            v93 = v203;
            sub_1B0AA92CC(v91, v203, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v94 = v211;
            v95 = v190;
            sub_1B03D08AC(v211, v190);
            v96 = v194;
            sub_1B03D08AC(v94, v194);
            v97 = sub_1B0E43988();
            v98 = sub_1B0E45908();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              v215[0] = v192;
              *v99 = 68159747;
              *(v99 + 4) = 2;
              *(v99 + 8) = 256;
              v100 = v205;
              v101 = &v93[*(v205 + 20)];
              *(v99 + 10) = *v101;
              *(v99 + 11) = 2082;
              v102 = v92 + *(v100 + 20);
              *(v99 + 13) = sub_1B0399D64(*(v102 + 8), *(v102 + 16), v215);
              *(v99 + 21) = 1040;
              *(v99 + 23) = 2;
              *(v99 + 27) = 512;
              LOWORD(v101) = *(v101 + 12);
              sub_1B0AA9334(v93, type metadata accessor for MailboxTaskLogger);
              *(v99 + 29) = v101;
              *(v99 + 31) = 2160;
              *(v99 + 33) = 0x786F626C69616DLL;
              *(v99 + 41) = 2085;
              v103 = *(v102 + 32);
              LODWORD(v102) = *(v102 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AA9334(v92, type metadata accessor for MailboxTaskLogger);
              v213 = v103;
              v214 = v102;
              v104 = sub_1B0E44BA8();
              v106 = sub_1B0399D64(v104, v105, v215);

              *(v99 + 43) = v106;
              *(v99 + 51) = 2048;
              v107 = v96;
              v108 = v204;
              v109 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v95, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v99 + 53) = v109;
              *(v99 + 61) = 2082;
              v110 = v212;
              MessageIdentifierSet.suffix(_:)(20, v108, v212);
              v111 = MessageIdentifierSet.debugDescription.getter(v108);
              v113 = v112;
              sub_1B0398EFC(v110, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0398EFC(v107, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v114 = sub_1B0399D64(v111, v113, v215);

              *(v99 + 63) = v114;
              _os_log_impl(&dword_1B0389000, v97, v98, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: ... %{public}s", v99, 0x47u);
              v115 = v192;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v115, -1, -1);
              MEMORY[0x1B272C230](v99, -1, -1);
            }

            else
            {
              sub_1B0398EFC(v95, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AA9334(v93, type metadata accessor for MailboxTaskLogger);

              sub_1B0398EFC(v96, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AA9334(v92, type metadata accessor for MailboxTaskLogger);
            }

            a1 = v189;
            a2 = v195;
          }

          else
          {
            a2 = v195;
            v66 = v192;
            sub_1B0AA92CC(v195, v192, type metadata accessor for MailboxTaskLogger);
            sub_1B0AA92CC(a2, v32, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v67 = v211;
            sub_1B03D08AC(v211, v48);
            v68 = v191;
            sub_1B03D08AC(v67, v191);
            v69 = sub_1B0E43988();
            v70 = sub_1B0E45908();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v203 = swift_slowAlloc();
              v215[0] = v203;
              *v71 = 68159747;
              LODWORD(v194) = v70;
              *(v71 + 4) = 2;
              *(v71 + 8) = 256;
              v72 = v205;
              v73 = &v32[*(v205 + 20)];
              *(v71 + 10) = *v73;
              *(v71 + 11) = 2082;
              v74 = v66 + *(v72 + 20);
              *(v71 + 13) = sub_1B0399D64(*(v74 + 8), *(v74 + 16), v215);
              *(v71 + 21) = 1040;
              *(v71 + 23) = 2;
              *(v71 + 27) = 512;
              LOWORD(v73) = *(v73 + 12);
              sub_1B0AA9334(v32, type metadata accessor for MailboxTaskLogger);
              *(v71 + 29) = v73;
              *(v71 + 31) = 2160;
              *(v71 + 33) = 0x786F626C69616DLL;
              *(v71 + 41) = 2085;
              v75 = *(v74 + 32);
              LODWORD(v73) = *(v74 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AA9334(v66, type metadata accessor for MailboxTaskLogger);
              v213 = v75;
              v214 = v73;
              v76 = sub_1B0E44BA8();
              v78 = sub_1B0399D64(v76, v77, v215);

              *(v71 + 43) = v78;
              *(v71 + 51) = 2048;
              v79 = v204;
              v80 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v71 + 53) = v80;
              *(v71 + 61) = 2082;
              v81 = MessageIdentifierSet.debugDescription.getter(v79);
              v83 = v82;
              a2 = v195;
              sub_1B0398EFC(v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v84 = sub_1B0399D64(v81, v83, v215);

              *(v71 + 63) = v84;
              _os_log_impl(&dword_1B0389000, v69, v194, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: %{public}s", v71, 0x47u);
              v85 = v203;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v85, -1, -1);
              MEMORY[0x1B272C230](v71, -1, -1);
            }

            else
            {
              sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AA9334(v32, type metadata accessor for MailboxTaskLogger);

              sub_1B0398EFC(v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AA9334(v66, type metadata accessor for MailboxTaskLogger);
            }

            a1 = v189;
          }

          v56 = v188;
          v57 = v187;
          LOBYTE(v58) = v186;
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
  LOBYTE(v213) = v58;
  v116 = v212;
  v117 = sub_1B0B476B8(v56, v57 | (v58 << 32));
  MEMORY[0x1EEE9AC00](v117);
  *&v185[-16] = v116;
  v118 = sub_1B0B42E70(0, sub_1B0AA9244, &v185[-32], v56);
  v119 = sub_1B0398EFC(v116, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v120 = v56;
  v121 = a2;
  if (v118 < 1)
  {
    goto LABEL_35;
  }

  LOBYTE(v213) = v58;
  v122 = v209;
  sub_1B0B46268(0x10F, v120, v57 | (v58 << 32), v209);
  if ((*(v207 + 48))(v122, 1, v208) == 1)
  {
    v119 = sub_1B0398EFC(v122, &qword_1EB6E3FF8, &unk_1B0EC6940);
    goto LABEL_35;
  }

  v123 = v206;
  sub_1B0AA9268(v122, v206);
  if (v118 > 0x13)
  {
    v147 = v199;
    sub_1B0AA92CC(v121, v199, type metadata accessor for MailboxTaskLogger);
    v148 = v198;
    sub_1B0AA92CC(v121, v198, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v149 = v200;
    sub_1B0AA92CC(v123, v200, _s15MissingMessagesO10NewMissingVMa);
    v150 = v202;
    sub_1B0AA92CC(v123, v202, _s15MissingMessagesO10NewMissingVMa);
    v127 = sub_1B0E43988();
    v151 = sub_1B0E458E8();
    if (os_log_type_enabled(v127, v151))
    {
      v129 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v195 = v121;
      v209 = v152;
      v215[0] = v152;
      *v129 = 68160003;
      LODWORD(v208) = v151;
      *(v129 + 4) = 2;
      *(v129 + 8) = 256;
      v154 = v204;
      v153 = v205;
      v155 = v147;
      v156 = &v148[*(v205 + 20)];
      *(v129 + 10) = *v156;
      v189 = a1;
      *(v129 + 11) = 2082;
      v157 = v149;
      v158 = v155 + *(v153 + 20);
      *(v129 + 13) = sub_1B0399D64(*(v158 + 8), *(v158 + 16), v215);
      *(v129 + 21) = 1040;
      *(v129 + 23) = 2;
      *(v129 + 27) = 512;
      LOWORD(v156) = *(v156 + 12);
      sub_1B0AA9334(v148, type metadata accessor for MailboxTaskLogger);
      *(v129 + 29) = v156;
      *(v129 + 31) = 2160;
      *(v129 + 33) = 0x786F626C69616DLL;
      *(v129 + 41) = 2085;
      v159 = *(v158 + 32);
      LODWORD(v158) = *(v158 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA9334(v155, type metadata accessor for MailboxTaskLogger);
      v213 = v159;
      v214 = v158;
      v160 = sub_1B0E44BA8();
      v162 = sub_1B0399D64(v160, v161, v215);

      *(v129 + 43) = v162;
      *(v129 + 51) = 2048;
      *(v129 + 53) = v118;
      *(v129 + 61) = 2048;
      v163 = MessageIdentifierSet.count.getter();
      sub_1B0AA9334(v157, _s15MissingMessagesO10NewMissingVMa);
      *(v129 + 63) = v163;
      *(v129 + 71) = 2082;
      a1 = v189;
      v123 = v206;
      v164 = v212;
      v165 = v202;
      MessageIdentifierSet.suffix(_:)(20, v154, v212);
      v166 = MessageIdentifierSet.debugDescription.getter(v154);
      v168 = v167;
      sub_1B0398EFC(v164, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AA9334(v165, _s15MissingMessagesO10NewMissingVMa);
      v169 = sub_1B0399D64(v166, v168, v215);

      *(v129 + 73) = v169;
      _os_log_impl(&dword_1B0389000, v127, v208, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs, adding %ld UIDs as missing: ... %{public}s", v129, 0x51u);
      v170 = v209;
      swift_arrayDestroy();
      v146 = v170;
      goto LABEL_28;
    }

    sub_1B0AA9334(v149, _s15MissingMessagesO10NewMissingVMa);
    sub_1B0AA9334(v148, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA9334(v150, _s15MissingMessagesO10NewMissingVMa);
    v172 = v147;
LABEL_31:
    v171 = sub_1B0AA9334(v172, type metadata accessor for MailboxTaskLogger);
    goto LABEL_32;
  }

  v124 = v197;
  sub_1B0AA92CC(v121, v197, type metadata accessor for MailboxTaskLogger);
  v125 = v196;
  sub_1B0AA92CC(v121, v196, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v126 = v201;
  sub_1B0AA92CC(v123, v201, _s15MissingMessagesO10NewMissingVMa);
  v127 = sub_1B0E43988();
  v128 = sub_1B0E458E8();
  if (!os_log_type_enabled(v127, v128))
  {
    sub_1B0AA9334(v125, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA9334(v126, _s15MissingMessagesO10NewMissingVMa);
    v172 = v124;
    goto LABEL_31;
  }

  v129 = swift_slowAlloc();
  v130 = swift_slowAlloc();
  v195 = v121;
  v131 = v130;
  v215[0] = v130;
  *v129 = 68159747;
  LODWORD(v212) = v128;
  *(v129 + 4) = 2;
  *(v129 + 8) = 256;
  v132 = v205;
  v133 = &v125[*(v205 + 20)];
  *(v129 + 10) = *v133;
  v134 = a1;
  *(v129 + 11) = 2082;
  v135 = v124;
  v136 = &v124[*(v132 + 20)];
  *(v129 + 13) = sub_1B0399D64(*(v136 + 1), *(v136 + 2), v215);
  *(v129 + 21) = 1040;
  *(v129 + 23) = 2;
  *(v129 + 27) = 512;
  LOWORD(v133) = *(v133 + 12);
  sub_1B0AA9334(v125, type metadata accessor for MailboxTaskLogger);
  *(v129 + 29) = v133;
  *(v129 + 31) = 2160;
  *(v129 + 33) = 0x786F626C69616DLL;
  *(v129 + 41) = 2085;
  v137 = *(v136 + 4);
  LODWORD(v136) = *(v136 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AA9334(v135, type metadata accessor for MailboxTaskLogger);
  v213 = v137;
  v214 = v136;
  v138 = sub_1B0E44BA8();
  v140 = sub_1B0399D64(v138, v139, v215);

  *(v129 + 43) = v140;
  *(v129 + 51) = 2048;
  *(v129 + 53) = v118;
  *(v129 + 61) = 2082;
  a1 = v134;
  v123 = v206;
  v141 = v201;
  v142 = MessageIdentifierSet.debugDescription.getter(v204);
  v144 = v143;
  sub_1B0AA9334(v141, _s15MissingMessagesO10NewMissingVMa);
  v145 = sub_1B0399D64(v142, v144, v215);

  *(v129 + 63) = v145;
  _os_log_impl(&dword_1B0389000, v127, v212, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs: %{public}s", v129, 0x47u);
  swift_arrayDestroy();
  v146 = v131;
LABEL_28:
  v121 = v195;
  MEMORY[0x1B272C230](v146, -1, -1);
  MEMORY[0x1B272C230](v129, -1, -1);

LABEL_32:
  v173 = *(v210 + 24);
  v174 = *(v210 + 32);
  MEMORY[0x1EEE9AC00](v171);
  *&v185[-16] = v123;
  if (*(a1 + 192) == 1)
  {
    v176 = v121;
    v178 = *(a1 + 176);
    v177 = *(a1 + 184);
    v213 = *(a1 + 168);
    v175 = v213;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v213, v173, v174, 0, sub_1B0AA9394);
    v179 = v178;
    v121 = v176;
    sub_1B03BB638(v175, v179, v177, 1);
    v180 = v213;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v180;
    *(a1 + 192) = 1;
  }

  v119 = sub_1B0AA9334(v123, _s15MissingMessagesO10NewMissingVMa);
LABEL_35:
  v181 = *(v210 + 24);
  v182 = *(v210 + 32);
  MEMORY[0x1EEE9AC00](v119);
  *&v185[-16] = v183;
  *&v185[-8] = v121;
  if (*(a1 + 192))
  {
    v89 = *(a1 + 176);
    v88 = *(a1 + 184);
    v90 = *(a1 + 168);
    v213 = v90;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v213, v181, v182, 0, sub_1B0AA9260);
    sub_1B0398EFC(v211, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_37:
    sub_1B03BB638(v90, v89, v88, 1);
    v184 = v213;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v184;
    *(a1 + 192) = 1;
    return;
  }

  sub_1B0398EFC(v211, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

void sub_1B0AA83F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  v12 = *(v11 + 40);
  v13 = v12;
  if ((*(v11 + 48) & 1) == 0)
  {
    v13 = *(v12 + 16);
  }

  sub_1B0AA93E0(v12, *(v11 + 48));
  *(v11 + 40) = MEMORY[0x1E69E7CC0];
  *(v11 + 48) = 0;
  sub_1B0AA92CC(a2, v10, type metadata accessor for MailboxTaskLogger);
  sub_1B0AA92CC(a2, v7, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v14 = sub_1B0E43988();
  v15 = sub_1B0E45908();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v13;
    v18 = v17;
    v28 = v17;
    *v16 = 68159491;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v19 = &v7[*(v4 + 20)];
    *(v16 + 10) = *v19;
    *(v16 + 11) = 2082;
    v20 = &v10[*(v4 + 20)];
    *(v16 + 13) = sub_1B0399D64(*(v20 + 1), *(v20 + 2), &v28);
    *(v16 + 21) = 1040;
    *(v16 + 23) = 2;
    *(v16 + 27) = 512;
    v21 = *(v19 + 12);
    sub_1B0AA9334(v7, type metadata accessor for MailboxTaskLogger);
    *(v16 + 29) = v21;
    *(v16 + 31) = 2160;
    *(v16 + 33) = 0x786F626C69616DLL;
    *(v16 + 41) = 2085;
    v22 = *(v20 + 4);
    LODWORD(v20) = *(v20 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AA9334(v10, type metadata accessor for MailboxTaskLogger);
    v26[1] = v22;
    v27 = v20;
    v23 = sub_1B0E44BA8();
    v25 = sub_1B0399D64(v23, v24, &v28);

    *(v16 + 43) = v25;
    *(v16 + 51) = 2048;
    *(v16 + 53) = v26[0];
    _os_log_impl(&dword_1B0389000, v14, v15, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Local mailbox is empty. Removed %ld pending expunge.", v16, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v18, -1, -1);
    MEMORY[0x1B272C230](v16, -1, -1);
  }

  else
  {
    sub_1B0AA9334(v7, type metadata accessor for MailboxTaskLogger);

    sub_1B0AA9334(v10, type metadata accessor for MailboxTaskLogger);
  }
}

void sub_1B0AA871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v19 = *(a2 + 104);
  v20 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  sub_1B0B638C4(v19);
  v21 = *(v20 + 40);
  if ((*(v20 + 48) & 1) == 0)
  {
    v21 = *(v21 + 16);
  }

  if (v21 < 1)
  {
    sub_1B0AA92CC(a3, v12, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA92CC(a3, v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = sub_1B0E43988();
    v34 = sub_1B0E45908();
    if (os_log_type_enabled(v22, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 68159491;
      v48 = v19;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v37 = &v9[*(v6 + 20)];
      *(v35 + 10) = *v37;
      *(v35 + 11) = 2082;
      v38 = &v12[*(v6 + 20)];
      *(v35 + 13) = sub_1B0399D64(*(v38 + 1), *(v38 + 2), &v51);
      *(v35 + 21) = 1040;
      *(v35 + 23) = 2;
      *(v35 + 27) = 512;
      v39 = *(v37 + 12);
      sub_1B0AA9334(v9, type metadata accessor for MailboxTaskLogger);
      *(v35 + 29) = v39;
      *(v35 + 31) = 2160;
      *(v35 + 33) = 0x786F626C69616DLL;
      *(v35 + 41) = 2085;
      v40 = *(v38 + 4);
      v41 = *(v38 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA9334(v12, type metadata accessor for MailboxTaskLogger);
      v49 = v40;
      v50 = v41;
      v42 = sub_1B0E44BA8();
      v44 = sub_1B0399D64(v42, v43, &v51);

      *(v35 + 43) = v44;
      *(v35 + 51) = 2048;
      *(v35 + 53) = v48;
      _os_log_impl(&dword_1B0389000, v22, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed all %ld EXPUNGE messages.", v35, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v36, -1, -1);
      v33 = v35;
      goto LABEL_8;
    }

    sub_1B0AA9334(v9, type metadata accessor for MailboxTaskLogger);

    v45 = v12;
  }

  else
  {
    sub_1B0AA92CC(a3, v18, type metadata accessor for MailboxTaskLogger);
    sub_1B0AA92CC(a3, v15, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = sub_1B0E43988();
    v23 = sub_1B0E45908();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v24 = 68159747;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      v25 = *(v6 + 20);
      v48 = v19;
      v26 = &v15[v25];
      *(v24 + 10) = v15[v25];
      *(v24 + 11) = 2082;
      v27 = &v18[*(v6 + 20)];
      *(v24 + 13) = sub_1B0399D64(*(v27 + 1), *(v27 + 2), &v51);
      *(v24 + 21) = 1040;
      *(v24 + 23) = 2;
      *(v24 + 27) = 512;
      LOWORD(v26) = *(v26 + 12);
      sub_1B0AA9334(v15, type metadata accessor for MailboxTaskLogger);
      *(v24 + 29) = v26;
      *(v24 + 31) = 2160;
      *(v24 + 33) = 0x786F626C69616DLL;
      *(v24 + 41) = 2085;
      v28 = *(v27 + 4);
      LODWORD(v26) = *(v27 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AA9334(v18, type metadata accessor for MailboxTaskLogger);
      v49 = v28;
      v50 = v26;
      v29 = sub_1B0E44BA8();
      v31 = sub_1B0399D64(v29, v30, &v51);

      *(v24 + 43) = v31;
      *(v24 + 51) = 2048;
      *(v24 + 53) = v48;
      *(v24 + 61) = 2048;
      *(v24 + 63) = v21;
      _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld EXPUNGE messages, still %ld remaining.", v24, 0x47u);
      v32 = v47;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v32, -1, -1);
      v33 = v24;
LABEL_8:
      MEMORY[0x1B272C230](v33, -1, -1);

      return;
    }

    sub_1B0AA9334(v15, type metadata accessor for MailboxTaskLogger);

    v45 = v18;
  }

  sub_1B0AA9334(v45, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0AA8CB8()
{
  if (qword_1EB6DD380 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AA8D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4000, &unk_1B0EC2910);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v20 - v13);
  if (*(v5 + 102))
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  sub_1B0AA5FA0(a1, a2, a3, a4, v15 | *(v5 + 101), v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FD8, &unk_1B0EC2850);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_1B0398EFC(v14, &qword_1EB6E4000, &unk_1B0EC2910);
    v18 = 1;
  }

  else
  {
    sub_1B03C60A4(v14, a5, &qword_1EB6E3FD8, &unk_1B0EC2850);
    v18 = 0;
  }

  return (*(v17 + 56))(a5, v18, 1, v16);
}

uint64_t sub_1B0AA8EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA8, &qword_1B0EC2680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v31[-v19];
  v22 = *(v7 + 88);
  v21 = v7 + 88;
  v23 = *(v21 + 8);
  v31[12] = *(v21 + 12);
  sub_1B0AA2BD0(a1, a2, a3, a4, a7, v22, v16);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FB0, &unk_1B0EC2840);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    v25 = &qword_1EB6E3FA8;
    v26 = &qword_1B0EC2680;
    v27 = v16;
  }

  else
  {
    v28 = *v16;
    v29 = sub_1B03C60A4(v16 + *(v24 + 48), v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1EEE9AC00](v29);
    *&v31[-16] = v20;
    sub_1B0AA2784(v28, sub_1B0AA4C04, &v31[-32]);
    v27 = v20;
    v25 = &unk_1EB6E1AF0;
    v26 = &unk_1B0E9AF40;
  }

  return sub_1B0398EFC(v27, v25, v26);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1B0AA9114(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA915C(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AA91C8(uint64_t a1)
{
  result = sub_1B0AA91F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AA91F0()
{
  result = qword_1EB6DD378;
  if (!qword_1EB6DD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD378);
  }

  return result;
}

uint64_t sub_1B0AA9268(uint64_t a1, uint64_t a2)
{
  v4 = _s15MissingMessagesO10NewMissingVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AA92CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AA9334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AA9394(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = a1 + *(type metadata accessor for MailboxSyncState() + 68);
  return sub_1B0B494D4(v2);
}

uint64_t sub_1B0AA93E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1B0AA94BC()
{
  sub_1B0AA95BC();
  if (v0 <= 0x3F)
  {
    sub_1B0AA9618();
    if (v1 <= 0x3F)
    {
      sub_1B0AA967C();
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

void sub_1B0AA95BC()
{
  if (!qword_1EB6DAD90)
  {
    sub_1B0451ED8();
    v0 = sub_1B0E45588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DAD90);
    }
  }
}

void sub_1B0AA9618()
{
  if (!qword_1EB6DE348[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, qword_1EB6DE348);
    }
  }
}

void sub_1B0AA967C()
{
  if (!qword_1EB6DE198)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DE198);
    }
  }
}

uint64_t sub_1B0AA96CC(uint64_t *a1, int a2)
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

uint64_t sub_1B0AA9714(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AA98C8(unsigned __int8 *a1)
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

_WORD *sub_1B0AA98DC(_WORD *result, unsigned int a2)
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

uint64_t sub_1B0AA9910()
{
  result = sub_1B0AA9984();
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

uint64_t sub_1B0AA9984()
{
  result = qword_1EB6DACE0;
  if (!qword_1EB6DACE0)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB6DACE0);
  }

  return result;
}

uint64_t sub_1B0AA99B4(uint64_t a1, uint64_t a2)
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

BOOL sub_1B0AA99FC(unsigned __int16 *a1, _WORD *a2)
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

void sub_1B0AA9A54(uint64_t a1)
{
  v3 = type metadata accessor for DetermineMessageBatches(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v130 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v127 = (&v121 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v121 - v10;
  v129 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v121 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v121 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v121 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v121 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v121 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v121 - v30;
  v32 = type metadata accessor for MessageBatches(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v124 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v128 = &v121 - v36;
  v37 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0AB06A4(v1 + *(v4 + 64), v40, type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v69 = *v40;
    v70 = v126;
    sub_1B0AB06A4(a1, v126, type metadata accessor for MailboxTaskLogger);
    sub_1B0AB06A4(a1, v13, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AB06A4(v1, v130, type metadata accessor for DetermineMessageBatches);
    v71 = sub_1B0E43988();
    v72 = sub_1B0E45908();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v134 = v74;
      *v73 = 68159747;
      *(v73 + 4) = 2;
      *(v73 + 8) = 256;
      v75 = v129;
      v76 = &v13[*(v129 + 20)];
      *(v73 + 10) = *v76;
      *(v73 + 11) = 2082;
      v77 = v70 + *(v75 + 20);
      *(v73 + 13) = sub_1B0399D64(*(v77 + 8), *(v77 + 16), &v134);
      *(v73 + 21) = 1040;
      *(v73 + 23) = 2;
      *(v73 + 27) = 512;
      LOWORD(v76) = *(v76 + 12);
      sub_1B0AB070C(v13, type metadata accessor for MailboxTaskLogger);
      *(v73 + 29) = v76;
      *(v73 + 31) = 2160;
      *(v73 + 33) = 0x786F626C69616DLL;
      *(v73 + 41) = 2085;
      v78 = *(v77 + 32);
      LODWORD(v76) = *(v77 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v70, type metadata accessor for MailboxTaskLogger);
      v132 = v78;
      v133 = v76;
      v79 = sub_1B0E44BA8();
      v81 = sub_1B0399D64(v79, v80, &v134);

      *(v73 + 43) = v81;
      *(v73 + 51) = 2048;
      *(v73 + 53) = v69;
      *(v73 + 61) = 2048;
      v82 = *(v130 + 144);
      sub_1B0AB070C(v130, type metadata accessor for DetermineMessageBatches);
      *(v73 + 63) = v82;
      _os_log_impl(&dword_1B0389000, v71, v72, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Will query local persistence (message count: %ld, batch size: %ld).", v73, 0x47u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v74, -1, -1);
      MEMORY[0x1B272C230](v73, -1, -1);

      return;
    }

    sub_1B0AB070C(v130, type metadata accessor for DetermineMessageBatches);
    sub_1B0AB070C(v13, type metadata accessor for MailboxTaskLogger);

    v96 = v70;
    v97 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v42 = v128;
    sub_1B0AB424C(v40, v128, type metadata accessor for MessageBatches);
    if (*(*(v42 + 8) + 16))
    {
      v43 = v123;
      sub_1B0AB06A4(a1, v123, type metadata accessor for MailboxTaskLogger);
      v44 = v122;
      sub_1B0AB06A4(a1, v122, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v45 = v124;
      sub_1B0AB06A4(v42, v124, type metadata accessor for MessageBatches);
      v46 = v125;
      sub_1B0AB06A4(v1, v125, type metadata accessor for DetermineMessageBatches);
      v47 = sub_1B0E43988();
      v48 = sub_1B0E45908();
      if (os_log_type_enabled(v47, v48))
      {
        v127 = v47;
        v49 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v134 = v130;
        *v49 = 68159747;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v50 = v129;
        v51 = v44 + *(v129 + 20);
        *(v49 + 10) = *v51;
        *(v49 + 11) = 2082;
        v52 = v44;
        v53 = v43;
        v54 = v43 + *(v50 + 20);
        *(v49 + 13) = sub_1B0399D64(*(v54 + 8), *(v54 + 16), &v134);
        *(v49 + 21) = 1040;
        *(v49 + 23) = 2;
        *(v49 + 27) = 512;
        LOWORD(v51) = *(v51 + 24);
        sub_1B0AB070C(v52, type metadata accessor for MailboxTaskLogger);
        *(v49 + 29) = v51;
        *(v49 + 31) = 2160;
        *(v49 + 33) = 0x786F626C69616DLL;
        *(v49 + 41) = 2085;
        v55 = *(v54 + 32);
        LODWORD(v54) = *(v54 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v53, type metadata accessor for MailboxTaskLogger);
        v132 = v55;
        v133 = v54;
        v56 = sub_1B0E44BA8();
        v58 = sub_1B0399D64(v56, v57, &v134);

        *(v49 + 43) = v58;
        *(v49 + 51) = 2082;
        v59 = *(v45 + 8);
        v60 = *(v59 + 16);
        v61 = MEMORY[0x1E69E7CC0];
        if (v60)
        {
          LODWORD(v129) = v48;
          v132 = MEMORY[0x1E69E7CC0];
          sub_1B0A18B88(0, v60, 0);
          v61 = v132;
          v62 = (v59 + 32);
          do
          {
            v131 = *v62;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
            v63 = sub_1B0E44B88();
            v132 = v61;
            v66 = *(v61 + 16);
            v65 = *(v61 + 24);
            if (v66 >= v65 >> 1)
            {
              v126 = v63;
              v68 = v64;
              sub_1B0A18B88(v65 > 1, v66 + 1, 1);
              v64 = v68;
              v63 = v126;
              v61 = v132;
            }

            *(v61 + 16) = v66 + 1;
            v67 = v61 + 16 * v66;
            *(v67 + 32) = v63;
            *(v67 + 40) = v64;
            ++v62;
            --v60;
          }

          while (v60);
          v42 = v128;
          v45 = v124;
          v46 = v125;
          LOBYTE(v48) = v129;
        }

        else
        {
          v42 = v128;
        }

        v132 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B03B11C4();
        v114 = sub_1B0E448E8();
        v116 = v115;

        sub_1B0AB070C(v45, type metadata accessor for MessageBatches);
        v117 = sub_1B0399D64(v114, v116, &v134);

        *(v49 + 53) = v117;
        *(v49 + 61) = 2048;
        v118 = *(v46 + 144);
        sub_1B0AB070C(v46, type metadata accessor for DetermineMessageBatches);
        *(v49 + 63) = v118;
        v119 = v127;
        _os_log_impl(&dword_1B0389000, v127, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Using fixed range(s): %{public}s (batch size: %ld).", v49, 0x47u);
        v120 = v130;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v120, -1, -1);
        MEMORY[0x1B272C230](v49, -1, -1);

        goto LABEL_24;
      }

      sub_1B0AB070C(v46, type metadata accessor for DetermineMessageBatches);
      sub_1B0AB070C(v44, type metadata accessor for MailboxTaskLogger);

      sub_1B0AB070C(v43, type metadata accessor for MailboxTaskLogger);
      v112 = type metadata accessor for MessageBatches;
      v113 = v45;
    }

    else
    {
      v98 = v31;
      sub_1B0AB06A4(a1, v31, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(a1, v28, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v99 = sub_1B0E43988();
      v100 = sub_1B0E45908();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v134 = v102;
        *v101 = 68159235;
        *(v101 + 4) = 2;
        *(v101 + 8) = 256;
        v103 = v129;
        v104 = v42;
        v105 = &v28[*(v129 + 20)];
        *(v101 + 10) = *v105;
        *(v101 + 11) = 2082;
        v106 = v98 + *(v103 + 20);
        *(v101 + 13) = sub_1B0399D64(*(v106 + 8), *(v106 + 16), &v134);
        *(v101 + 21) = 1040;
        *(v101 + 23) = 2;
        *(v101 + 27) = 512;
        LOWORD(v105) = *(v105 + 12);
        sub_1B0AB070C(v28, type metadata accessor for MailboxTaskLogger);
        *(v101 + 29) = v105;
        *(v101 + 31) = 2160;
        *(v101 + 33) = 0x786F626C69616DLL;
        *(v101 + 41) = 2085;
        v107 = *(v106 + 32);
        v108 = *(v106 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v98, type metadata accessor for MailboxTaskLogger);
        v132 = v107;
        v133 = v108;
        v109 = sub_1B0E44BA8();
        v111 = sub_1B0399D64(v109, v110, &v134);

        *(v101 + 43) = v111;
        v42 = v104;
        _os_log_impl(&dword_1B0389000, v99, v100, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. No messages.", v101, 0x33u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v102, -1, -1);
        MEMORY[0x1B272C230](v101, -1, -1);

LABEL_24:
        v97 = type metadata accessor for MessageBatches;
        v96 = v42;
        goto LABEL_25;
      }

      sub_1B0AB070C(v28, type metadata accessor for MailboxTaskLogger);

      v113 = v31;
      v112 = type metadata accessor for MailboxTaskLogger;
    }

    sub_1B0AB070C(v113, v112);
    goto LABEL_24;
  }

  sub_1B0AB06A4(a1, v21, type metadata accessor for MailboxTaskLogger);
  sub_1B0AB06A4(a1, v18, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v83 = v127;
  sub_1B0AB06A4(v1, v127, type metadata accessor for DetermineMessageBatches);
  v84 = sub_1B0E43988();
  v85 = sub_1B0E45908();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 68159491;
    *(v86 + 4) = 2;
    *(v86 + 8) = 256;
    v88 = v129;
    v89 = &v18[*(v129 + 20)];
    *(v86 + 10) = *v89;
    *(v86 + 11) = 2082;
    v90 = &v21[*(v88 + 20)];
    *(v86 + 13) = sub_1B0399D64(*(v90 + 1), *(v90 + 2), &v134);
    *(v86 + 21) = 1040;
    *(v86 + 23) = 2;
    *(v86 + 27) = 512;
    LOWORD(v89) = *(v89 + 12);
    sub_1B0AB070C(v18, type metadata accessor for MailboxTaskLogger);
    *(v86 + 29) = v89;
    *(v86 + 31) = 2160;
    *(v86 + 33) = 0x786F626C69616DLL;
    *(v86 + 41) = 2085;
    v91 = *(v90 + 4);
    LODWORD(v89) = *(v90 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AB070C(v21, type metadata accessor for MailboxTaskLogger);
    v132 = v91;
    v133 = v89;
    v92 = sub_1B0E44BA8();
    v94 = sub_1B0399D64(v92, v93, &v134);

    *(v86 + 43) = v94;
    *(v86 + 51) = 2048;
    isa = v83[18].isa;
    sub_1B0AB070C(v83, type metadata accessor for DetermineMessageBatches);
    *(v86 + 53) = isa;
    _os_log_impl(&dword_1B0389000, v84, v85, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Will query server. (batch size: %ld).", v86, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v87, -1, -1);
    MEMORY[0x1B272C230](v86, -1, -1);

    return;
  }

  sub_1B0AB070C(v83, type metadata accessor for DetermineMessageBatches);
  sub_1B0AB070C(v18, type metadata accessor for MailboxTaskLogger);

  v96 = v21;
  v97 = type metadata accessor for MailboxTaskLogger;
LABEL_25:
  sub_1B0AB070C(v96, v97);
}

uint64_t sub_1B0AAA978@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1B0AADD60();
  v7 = sub_1B0AAEB70(v5, v6);
  v8 = sub_1B0AB0A70(a1);
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

          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
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

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
  v20 = *(*(v19 - 8) + 56);
  v21 = v19;
  v22 = a2;
  v23 = 1;
LABEL_13:

  return v20(v22, v23, 1, v21);
}

uint64_t sub_1B0AAAB14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v6 = v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  v12 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4038, &qword_1B0EC2B08);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v76 = *(v23 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  result = sub_1B0AB0B54(0, a1, a2);
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
    sub_1B0398EFC(v35, &qword_1EB6E4038, &qword_1B0EC2B08);
LABEL_26:
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4048, &qword_1B0EC2B18);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1B0AB423C;
  *(inited + 24) = v37;
  v68 = inited;
  sub_1B03D06F8();
  sub_1B0E46EE8();
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
  sub_1B03C60A4(v16, v74, &qword_1EB6E4030, &qword_1B0EC2B00);
  v78 = v71;
  MessageIdentifierSet.insert(_:)(&v79, &v78, v44);
  v46 = v75;
  sub_1B03B5C80(v45, v75, &qword_1EB6E4030, &qword_1B0EC2B00);
  v47 = MessageIdentifierSet.count.getter();

  sub_1B0398EFC(v45, &qword_1EB6E4030, &qword_1B0EC2B00);
  a5 = v70;
  if (v47 <= 0)
  {
    sub_1B0398EFC(v46, &qword_1EB6E4030, &qword_1B0EC2B00);
    v49 = 1;
    v35 = v72;
  }

  else
  {
    v48 = v73;
    sub_1B03C60A4(v46, v73, &qword_1EB6E4030, &qword_1B0EC2B00);
    v35 = v72;
    sub_1B03C60A4(v48, v72, &qword_1EB6E4040, &qword_1B0EC2B10);
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
  sub_1B03C60A4(v35, v66, &qword_1EB6E4040, &qword_1B0EC2B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v55 = swift_allocBox();
  v57 = v56;
  sub_1B03B5C80(v54, v56, &qword_1EB6E4040, &qword_1B0EC2B10);
  v51(v57, 0, 1, v52);
  v58 = v55 | 0xB000000000000004;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
  v60 = (a5 + *(v59 + 48));
  v79 = 1;
  *a5 = MessageIdentifierSet.contains(_:)(&v79, v77) & 1;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  if ((v67 & 0x100) != 0)
  {
    sub_1B0398EFC(v54, &qword_1EB6E4040, &qword_1B0EC2B10);
    *v60 = v58;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
    v61 = *(type metadata accessor for SearchReturnOption() - 8);
    v62 = *(v61 + 72);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1B0EC1E70;
    swift_storeEnumTagMultiPayload();
    sub_1B0398EFC(v54, &qword_1EB6E4040, &qword_1B0EC2B10);
    *v60 = v58;
    v60[1] = v64;
  }

  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v59 - 8) + 56))(a5, 0, 1, v59);
}

uint64_t sub_1B0AAB2D0(int a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = v4;
  v100 = a4;
  LODWORD(v99) = a1;
  v97 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v92 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v92 - v14;
  v15 = type metadata accessor for MessageBatches(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v92 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v92 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v92 - v34;
  sub_1B0B7EA7C(a3 & 0x101, v22);
  v36 = *(v24 + 48);
  v98 = v23;
  if (v36(v22, 1, v23) == 1)
  {
    v37 = &qword_1EB6E3920;
    v38 = &qword_1B0E9B070;
    v39 = v22;
  }

  else
  {
    sub_1B03C60A4(v22, v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v41 = *(v4 + 144);
    sub_1B03B5C80(v35, v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0B3EA18(v41, v32, v99 & 1, v18);
    v42 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
    sub_1B0AB070C(v5 + v42, type metadata accessor for DetermineMessageBatches.TaskState);
    sub_1B0AB06A4(v18, v5 + v42, type metadata accessor for MessageBatches);
    type metadata accessor for DetermineMessageBatches.TaskState(0);
    swift_storeEnumTagMultiPayload();
    v43 = sub_1B0AABD14(v18);
    if (v44)
    {
      v45 = v100;
      v46 = v96;
      sub_1B0AB06A4(v100, v96, type metadata accessor for MailboxTaskLogger);
      v47 = v94;
      sub_1B0AB06A4(v45, v94, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v48 = v92;
      sub_1B03B5C80(v35, v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v49 = sub_1B0E43988();
      v50 = sub_1B0E45908();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v103 = v95;
        *v51 = 68159491;
        *(v51 + 4) = 2;
        *(v51 + 8) = 256;
        v52 = v97;
        v53 = *(v97 + 20);
        v99 = v35;
        v100 = v18;
        v54 = v47 + v53;
        *(v51 + 10) = *(v47 + v53);
        *(v51 + 11) = 2082;
        v55 = v46 + *(v52 + 20);
        *(v51 + 13) = sub_1B0399D64(*(v55 + 8), *(v55 + 16), &v103);
        *(v51 + 21) = 1040;
        *(v51 + 23) = 2;
        *(v51 + 27) = 512;
        LOWORD(v54) = *(v54 + 24);
        sub_1B0AB070C(v47, type metadata accessor for MailboxTaskLogger);
        *(v51 + 29) = v54;
        *(v51 + 31) = 2160;
        *(v51 + 33) = 0x786F626C69616DLL;
        *(v51 + 41) = 2085;
        v56 = *(v55 + 32);
        LODWORD(v55) = *(v55 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v46, type metadata accessor for MailboxTaskLogger);
        v101 = v56;
        v102 = v55;
        v57 = sub_1B0E44BA8();
        v59 = sub_1B0399D64(v57, v58, &v103);

        *(v51 + 43) = v59;
        *(v51 + 51) = 2082;
        v60 = MessageIdentifierSet.debugDescription.getter(v98);
        v62 = v61;
        sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v63 = sub_1B0399D64(v60, v62, &v103);

        *(v51 + 53) = v63;
        _os_log_impl(&dword_1B0389000, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Creating UID ranges from UIDs: %{public}s", v51, 0x3Du);
        v64 = v95;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v64, -1, -1);
        MEMORY[0x1B272C230](v51, -1, -1);

        sub_1B0AB070C(v100, type metadata accessor for MessageBatches);
        v39 = v99;
      }

      else
      {
        sub_1B0AB070C(v47, type metadata accessor for MailboxTaskLogger);

        sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AB070C(v46, type metadata accessor for MailboxTaskLogger);
        sub_1B0AB070C(v18, type metadata accessor for MessageBatches);
        v39 = v35;
      }

      v37 = &unk_1EB6E1AF0;
      v38 = &unk_1B0E9AF40;
    }

    else
    {
      v65 = v43;
      v66 = v100;
      v67 = v95;
      sub_1B0AB06A4(v100, v95, type metadata accessor for MailboxTaskLogger);
      v68 = v93;
      sub_1B0AB06A4(v66, v93, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v35, v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v69 = sub_1B0E43988();
      v70 = sub_1B0E45908();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v100 = v18;
        v72 = v71;
        v99 = swift_slowAlloc();
        v103 = v99;
        *v72 = 68159747;
        *(v72 + 4) = 2;
        *(v72 + 8) = 256;
        v73 = v97;
        v74 = *(v97 + 20);
        v96 = v65;
        v75 = v68;
        v76 = v68 + v74;
        *(v72 + 10) = *v76;
        *(v72 + 11) = 2082;
        v77 = v67 + *(v73 + 20);
        *(v72 + 13) = sub_1B0399D64(*(v77 + 8), *(v77 + 16), &v103);
        *(v72 + 21) = 1040;
        *(v72 + 23) = 2;
        *(v72 + 27) = 512;
        LOWORD(v76) = *(v76 + 24);
        sub_1B0AB070C(v75, type metadata accessor for MailboxTaskLogger);
        *(v72 + 29) = v76;
        *(v72 + 31) = 2160;
        *(v72 + 33) = 0x786F626C69616DLL;
        *(v72 + 41) = 2085;
        v78 = *(v77 + 32);
        LODWORD(v77) = *(v77 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v67, type metadata accessor for MailboxTaskLogger);
        v101 = v78;
        v102 = v77;
        v79 = sub_1B0E44BA8();
        v81 = sub_1B0399D64(v79, v80, &v103);

        *(v72 + 43) = v81;
        *(v72 + 51) = 2082;
        v82 = MessageIdentifierSet.debugDescription.getter(v98);
        v83 = v35;
        v85 = v84;
        sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v86 = sub_1B0399D64(v82, v85, &v103);

        *(v72 + 53) = v86;
        *(v72 + 61) = 2082;
        v101 = v96;
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v88 = MessageIdentifierRange.debugDescription.getter(v87);
        v90 = sub_1B0399D64(v88, v89, &v103);

        *(v72 + 63) = v90;
        _os_log_impl(&dword_1B0389000, v69, v70, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Creating UID ranges from UIDs: %{public}s (window of interest: %{public}s)", v72, 0x47u);
        v91 = v99;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v91, -1, -1);
        MEMORY[0x1B272C230](v72, -1, -1);

        sub_1B0AB070C(v100, type metadata accessor for MessageBatches);
        v39 = v83;
      }

      else
      {
        sub_1B0AB070C(v68, type metadata accessor for MailboxTaskLogger);

        sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AB070C(v67, type metadata accessor for MailboxTaskLogger);
        sub_1B0AB070C(v18, type metadata accessor for MessageBatches);
        v39 = v35;
      }

      v37 = &unk_1EB6E1AF0;
      v38 = &unk_1B0E9AF40;
    }
  }

  return sub_1B0398EFC(v39, v37, v38);
}

uint64_t sub_1B0AABD14(uint64_t a1)
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
  v5 = sub_1B041C1E8();
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

uint64_t sub_1B0AABDE8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, unint64_t a9)
{
  v45 = type metadata accessor for MailboxTaskLogger(0);
  v15 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v42[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4018, &unk_1B0EC2AD0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42[-v22];
  v24 = type metadata accessor for DetermineMessageBatches(0);
  v25 = *(v20 + 56);
  sub_1B0AB06A4(v9 + *(v24 + 56), &v23[v25], type metadata accessor for DetermineMessageBatches.TaskState);
  if (a3)
  {
    v26 = v48;
    sub_1B0A92068(a9, a4, a5, a6, a7);
    if (!v26)
    {
      sub_1B0AAC21C(a9);
    }
  }

  else
  {
    type metadata accessor for DetermineMessageBatches.TaskState(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0A92068(a9, a4, a5, a6, a7);
    }

    else
    {
      v27 = v47;
      sub_1B0AB06A4(a9, v47, type metadata accessor for MailboxTaskLogger);
      v28 = v46;
      sub_1B0AB06A4(a9, v46, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v29 = sub_1B0E43988();
      v30 = sub_1B0E458E8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        *v31 = 68159235;
        v43 = v30;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        v32 = v45;
        v33 = &v28[*(v45 + 20)];
        *(v31 + 10) = *v33;
        *(v31 + 11) = 2082;
        v34 = v27;
        v35 = &v27[*(v32 + 20)];
        *(v31 + 13) = sub_1B0399D64(*(v35 + 1), *(v35 + 2), &v51);
        *(v31 + 21) = 1040;
        *(v31 + 23) = 2;
        *(v31 + 27) = 512;
        LOWORD(v33) = *(v33 + 12);
        sub_1B0AB070C(v28, type metadata accessor for MailboxTaskLogger);
        *(v31 + 29) = v33;
        *(v31 + 31) = 2160;
        *(v31 + 33) = 0x786F626C69616DLL;
        *(v31 + 41) = 2085;
        v36 = *(v35 + 4);
        LODWORD(v35) = *(v35 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v34, type metadata accessor for MailboxTaskLogger);
        v49 = v36;
        v50 = v35;
        v37 = sub_1B0E44BA8();
        v39 = sub_1B0399D64(v37, v38, &v51);

        *(v31 + 43) = v39;
        _os_log_impl(&dword_1B0389000, v29, v43, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed SEARCH for boundary IDs, but didn’t get any result from the server.", v31, 0x33u);
        v40 = v44;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v40, -1, -1);
        MEMORY[0x1B272C230](v31, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v28, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v27, type metadata accessor for MailboxTaskLogger);
      }
    }
  }

  return sub_1B0AB070C(&v23[v25], type metadata accessor for DetermineMessageBatches.TaskState);
}

unint64_t sub_1B0AAC21C(unint64_t a1)
{
  v5 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v256 = &v246 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v257 = &v246 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v270 = &v246 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v271 = (&v246 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v253 = &v246 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v255 = &v246 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v252 = &v246 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v254 = &v246 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v262 = &v246 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v263 = &v246 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v268 = *(v26 - 8);
  v269 = v26;
  v27 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v265 = &v246 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v246 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v246 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v246 - v38;
  v40 = type metadata accessor for MessageBatches(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v261 = &v246 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v251 = &v246 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v258 = &v246 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v272 = (&v246 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v260 = &v246 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v250 = &v246 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v259 = &v246 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v249 = &v246 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v273 = (&v246 - v58);
  sub_1B0AADD60();
  if (v59 < 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_unknownObjectRelease();
    v77 = v5;
    v76 = v248;
    v75 = v247;
    v74 = v272;
LABEL_15:
    sub_1B0B21C30(v1, v75, v76, v77);
    v73 = v78;
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    sub_1B03D06F8();
    sub_1B0E46EE8();
    sub_1B03B5C80(v39, v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v83 = 1;
    }

    else
    {
      v82 = v265;
      sub_1B03C60A4(v36, v265, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v82, v32, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v83 = 0;
    }

    v84 = v271;
    (*(v268 + 56))(v32, v83, 1, v269);
    v85 = v273;
    sub_1B0B3EF98(v3, v73, v32, v273);
    sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v86 = sub_1B0AABD14(v85);
    v88 = *(v85[1] + 16);
    v89 = v270;
    if (v88)
    {
      if (v88 <= 9)
      {
        if (v87)
        {
          v90 = v267;
          v91 = v255;
          sub_1B0AB06A4(v267, v255, type metadata accessor for MailboxTaskLogger);
          v92 = v253;
          sub_1B0AB06A4(v90, v253, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v93 = v273;
          v94 = v250;
          sub_1B0AB06A4(v273, v250, type metadata accessor for MessageBatches);
          v95 = v260;
          sub_1B0AB06A4(v93, v260, type metadata accessor for MessageBatches);
          v96 = sub_1B0E43988();
          v97 = sub_1B0E45908();
          if (os_log_type_enabled(v96, v97))
          {
            LODWORD(v270) = v97;
            v272 = v96;
            v98 = swift_slowAlloc();
            v269 = swift_slowAlloc();
            v279 = v269;
            *v98 = 68159747;
            *(v98 + 4) = 2;
            *(v98 + 8) = 256;
            v99 = v264;
            v100 = v92 + *(v264 + 20);
            *(v98 + 10) = *v100;
            *(v98 + 11) = 2082;
            v101 = v91 + *(v99 + 20);
            *(v98 + 13) = sub_1B0399D64(*(v101 + 8), *(v101 + 16), &v279);
            *(v98 + 21) = 1040;
            *(v98 + 23) = 2;
            *(v98 + 27) = 512;
            LOWORD(v100) = *(v100 + 24);
            sub_1B0AB070C(v92, type metadata accessor for MailboxTaskLogger);
            *(v98 + 29) = v100;
            *(v98 + 31) = 2160;
            *(v98 + 33) = 0x786F626C69616DLL;
            *(v98 + 41) = 2085;
            v102 = *(v101 + 32);
            LODWORD(v101) = *(v101 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0AB070C(v91, type metadata accessor for MailboxTaskLogger);
            v277 = v102;
            v278 = v101;
            v103 = sub_1B0E44BA8();
            v105 = sub_1B0399D64(v103, v104, &v279);

            *(v98 + 43) = v105;
            *(v98 + 51) = 2048;
            v106 = *(*(v94 + 8) + 16);
            sub_1B0AB070C(v94, type metadata accessor for MessageBatches);
            *(v98 + 53) = v106;
            v271 = v98;
            *(v98 + 61) = 2082;
            v107 = v260;
            v108 = *(v260 + 8);
            v109 = *(v108 + 16);
            v110 = MEMORY[0x1E69E7CC0];
            if (v109)
            {
              v277 = MEMORY[0x1E69E7CC0];
              sub_1B0A18B88(0, v109, 0);
              v110 = v277;
              v111 = (v108 + 32);
              do
              {
                v276 = *v111;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
                v112 = sub_1B0E44B88();
                v114 = v113;
                v277 = v110;
                v116 = *(v110 + 16);
                v115 = *(v110 + 24);
                if (v116 >= v115 >> 1)
                {
                  sub_1B0A18B88(v115 > 1, v116 + 1, 1);
                  v110 = v277;
                }

                *(v110 + 16) = v116 + 1;
                v117 = v110 + 16 * v116;
                *(v117 + 32) = v112;
                *(v117 + 40) = v114;
                ++v111;
                --v109;
              }

              while (v109);
              v107 = v260;
            }

            v277 = v110;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
            sub_1B03B11C4();
            v199 = sub_1B0E448E8();
            v201 = v200;
LABEL_76:

            sub_1B0AB070C(v107, type metadata accessor for MessageBatches);
            v233 = sub_1B0399D64(v199, v201, &v279);

            v123 = v271;
            *(&v271[7].isa + 7) = v233;
            v121 = v272;
            _os_log_impl(&dword_1B0389000, v272, v270, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s", v123, 0x47u);
            v234 = v269;
            swift_arrayDestroy();
            v132 = v234;
            goto LABEL_77;
          }
        }

        else
        {
          v272 = v86;
          v156 = v267;
          v91 = v254;
          sub_1B0AB06A4(v267, v254, type metadata accessor for MailboxTaskLogger);
          v92 = v252;
          sub_1B0AB06A4(v156, v252, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v157 = v273;
          v94 = v249;
          sub_1B0AB06A4(v273, v249, type metadata accessor for MessageBatches);
          v95 = v259;
          sub_1B0AB06A4(v157, v259, type metadata accessor for MessageBatches);
          v96 = sub_1B0E43988();
          v158 = sub_1B0E45908();
          if (os_log_type_enabled(v96, v158))
          {
            LODWORD(v269) = v158;
            v271 = v96;
            v267 = v272 >> 32;
            v159 = swift_slowAlloc();
            v268 = swift_slowAlloc();
            v279 = v268;
            *v159 = 68160003;
            *(v159 + 4) = 2;
            *(v159 + 8) = 256;
            v160 = v264;
            v161 = v92 + *(v264 + 20);
            *(v159 + 10) = *v161;
            *(v159 + 11) = 2082;
            v162 = v91 + *(v160 + 20);
            *(v159 + 13) = sub_1B0399D64(*(v162 + 8), *(v162 + 16), &v279);
            *(v159 + 21) = 1040;
            *(v159 + 23) = 2;
            *(v159 + 27) = 512;
            LOWORD(v161) = *(v161 + 24);
            sub_1B0AB070C(v92, type metadata accessor for MailboxTaskLogger);
            *(v159 + 29) = v161;
            *(v159 + 31) = 2160;
            *(v159 + 33) = 0x786F626C69616DLL;
            *(v159 + 41) = 2085;
            v163 = *(v162 + 32);
            LODWORD(v162) = *(v162 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0AB070C(v91, type metadata accessor for MailboxTaskLogger);
            v277 = v163;
            v278 = v162;
            v164 = sub_1B0E44BA8();
            v166 = sub_1B0399D64(v164, v165, &v279);

            *(v159 + 43) = v166;
            *(v159 + 51) = 2048;
            v167 = *(*(v94 + 8) + 16);
            sub_1B0AB070C(v94, type metadata accessor for MessageBatches);
            *(v159 + 53) = v167;
            v270 = v159;
            *(v159 + 61) = 2082;
            v168 = v259;
            v169 = *(v259 + 8);
            v170 = *(v169 + 16);
            v171 = MEMORY[0x1E69E7CC0];
            if (v170)
            {
              v277 = MEMORY[0x1E69E7CC0];
              sub_1B0A18B88(0, v170, 0);
              v171 = v277;
              v172 = (v169 + 32);
              do
              {
                v276 = *v172;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
                v173 = sub_1B0E44B88();
                v175 = v174;
                v277 = v171;
                v177 = *(v171 + 16);
                v176 = *(v171 + 24);
                if (v177 >= v176 >> 1)
                {
                  sub_1B0A18B88(v176 > 1, v177 + 1, 1);
                  v171 = v277;
                }

                *(v171 + 16) = v177 + 1;
                v178 = v171 + 16 * v177;
                *(v178 + 32) = v173;
                *(v178 + 40) = v175;
                ++v172;
                --v170;
              }

              while (v170);
              v168 = v259;
            }

            v277 = v171;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
            sub_1B03B11C4();
            v202 = sub_1B0E448E8();
            v204 = v203;

            sub_1B0AB070C(v168, type metadata accessor for MessageBatches);
            v205 = sub_1B0399D64(v202, v204, &v279);

            v206 = v270;
            *(v270 + 63) = v205;
            *(v206 + 71) = 2082;
            v277 = __PAIR64__(v267, v272);
            v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
            v208 = MessageIdentifierRange.debugDescription.getter(v207);
            v210 = sub_1B0399D64(v208, v209, &v279);

            *(v206 + 73) = v210;
            v121 = v271;
            _os_log_impl(&dword_1B0389000, v271, v269, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s (window of interest: %{public}s)", v206, 0x51u);
            v211 = v268;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v211, -1, -1);
            v212 = v206;
            goto LABEL_78;
          }
        }

        sub_1B0AB070C(v94, type metadata accessor for MessageBatches);
        sub_1B0AB070C(v92, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v91, type metadata accessor for MailboxTaskLogger);
        v155 = v95;
        v198 = type metadata accessor for MessageBatches;
LABEL_57:
        sub_1B0AB070C(v155, v198);
LABEL_79:
        v235 = *(v266 + 56);
        v236 = v274;
        sub_1B0AB070C(v274 + v235, type metadata accessor for DetermineMessageBatches.TaskState);
        sub_1B0AB424C(v273, v236 + v235, type metadata accessor for MessageBatches);
        type metadata accessor for DetermineMessageBatches.TaskState(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (v87)
      {
        v133 = v267;
        v134 = v257;
        sub_1B0AB06A4(v267, v257, type metadata accessor for MailboxTaskLogger);
        v135 = v256;
        sub_1B0AB06A4(v133, v256, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v136 = v273;
        v137 = v251;
        sub_1B0AB06A4(v273, v251, type metadata accessor for MessageBatches);
        v138 = v136;
        v139 = v261;
        sub_1B0AB06A4(v138, v261, type metadata accessor for MessageBatches);
        v140 = sub_1B0E43988();
        v141 = sub_1B0E45908();
        if (os_log_type_enabled(v140, v141))
        {
          LODWORD(v270) = v141;
          v272 = v140;
          v142 = swift_slowAlloc();
          v269 = swift_slowAlloc();
          v279 = v269;
          *v142 = 68159747;
          *(v142 + 4) = 2;
          *(v142 + 8) = 256;
          v143 = v264;
          v144 = v135 + *(v264 + 20);
          *(v142 + 10) = *v144;
          v145 = v135;
          *(v142 + 11) = 2082;
          v146 = v134 + *(v143 + 20);
          *(v142 + 13) = sub_1B0399D64(*(v146 + 8), *(v146 + 16), &v279);
          *(v142 + 21) = 1040;
          *(v142 + 23) = 2;
          *(v142 + 27) = 512;
          LOWORD(v144) = *(v144 + 24);
          sub_1B0AB070C(v145, type metadata accessor for MailboxTaskLogger);
          *(v142 + 29) = v144;
          *(v142 + 31) = 2160;
          *(v142 + 33) = 0x786F626C69616DLL;
          *(v142 + 41) = 2085;
          v147 = *(v146 + 32);
          LODWORD(v146) = *(v146 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AB070C(v134, type metadata accessor for MailboxTaskLogger);
          v277 = v147;
          v278 = v146;
          v148 = sub_1B0E44BA8();
          v150 = sub_1B0399D64(v148, v149, &v279);

          *(v142 + 43) = v150;
          *(v142 + 51) = 2048;
          v151 = *(*(v137 + 8) + 16);
          sub_1B0AB070C(v137, type metadata accessor for MessageBatches);
          *(v142 + 53) = v151;
          v271 = v142;
          *(v142 + 61) = 2082;
          v107 = v261;
          v152 = *(v261 + 8);
          v153 = *(v152 + 16);
          if (v153 <= 0xA)
          {
            v213 = *(v261 + 8);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          }

          else
          {
            sub_1B0B21C30(*(v261 + 8), v152 + 32, 0, 0x15uLL);
            v152 = v154;
            v153 = *(v154 + 16);
          }

          if (v153)
          {
            v277 = MEMORY[0x1E69E7CC0];
            sub_1B0A18B88(0, v153, 0);
            v214 = 32;
            v215 = v277;
            do
            {
              v276 = *(v152 + v214);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
              v216 = sub_1B0E44B88();
              v218 = v217;
              v277 = v215;
              v220 = *(v215 + 16);
              v219 = *(v215 + 24);
              if (v220 >= v219 >> 1)
              {
                sub_1B0A18B88(v219 > 1, v220 + 1, 1);
                v215 = v277;
              }

              *(v215 + 16) = v220 + 1;
              v221 = v215 + 16 * v220;
              *(v221 + 32) = v216;
              *(v221 + 40) = v218;
              v214 += 8;
              --v153;
            }

            while (v153);

            v107 = v261;
          }

          else
          {

            v215 = MEMORY[0x1E69E7CC0];
          }

          v277 = v215;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B03B11C4();
          v199 = sub_1B0E448E8();
          v201 = v232;
          goto LABEL_76;
        }

        sub_1B0AB070C(v137, type metadata accessor for MessageBatches);
        sub_1B0AB070C(v135, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v139, type metadata accessor for MessageBatches);
        v155 = v134;
      }

      else
      {
        v179 = v86;
        v180 = v267;
        sub_1B0AB06A4(v267, v84, type metadata accessor for MailboxTaskLogger);
        sub_1B0AB06A4(v180, v89, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v181 = v273;
        sub_1B0AB06A4(v273, v74, type metadata accessor for MessageBatches);
        v182 = v258;
        sub_1B0AB06A4(v181, v258, type metadata accessor for MessageBatches);
        v183 = sub_1B0E43988();
        v184 = sub_1B0E45908();
        if (os_log_type_enabled(v183, v184))
        {
          LODWORD(v269) = v184;
          v271 = v183;
          v272 = v179;
          v267 = v179 >> 32;
          v185 = swift_slowAlloc();
          v268 = swift_slowAlloc();
          v279 = v268;
          *v185 = 68160003;
          *(v185 + 4) = 2;
          *(v185 + 8) = 256;
          v186 = v264;
          v187 = v89 + *(v264 + 20);
          *(v185 + 10) = *v187;
          *(v185 + 11) = 2082;
          v188 = v74;
          v189 = v84 + *(v186 + 20);
          *(v185 + 13) = sub_1B0399D64(*(v189 + 1), *(v189 + 2), &v279);
          *(v185 + 21) = 1040;
          *(v185 + 23) = 2;
          *(v185 + 27) = 512;
          LOWORD(v187) = *(v187 + 24);
          sub_1B0AB070C(v89, type metadata accessor for MailboxTaskLogger);
          *(v185 + 29) = v187;
          *(v185 + 31) = 2160;
          *(v185 + 33) = 0x786F626C69616DLL;
          *(v185 + 41) = 2085;
          v190 = *(v189 + 4);
          LODWORD(v189) = *(v189 + 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AB070C(v84, type metadata accessor for MailboxTaskLogger);
          v277 = v190;
          v278 = v189;
          v191 = sub_1B0E44BA8();
          v193 = sub_1B0399D64(v191, v192, &v279);

          *(v185 + 43) = v193;
          *(v185 + 51) = 2048;
          v194 = *(*(v188 + 8) + 16);
          sub_1B0AB070C(v188, type metadata accessor for MessageBatches);
          *(v185 + 53) = v194;
          *(v185 + 61) = 2082;
          v195 = *(v182 + 8);
          v196 = *(v195 + 16);
          if (v196 <= 0xA)
          {
            v222 = *(v182 + 8);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          }

          else
          {
            sub_1B0B21C30(*(v182 + 8), v195 + 32, 0, 0x15uLL);
            v195 = v197;
            v196 = *(v197 + 16);
          }

          v223 = v271;
          if (v196)
          {
            v270 = v185;
            v277 = MEMORY[0x1E69E7CC0];
            sub_1B0A18B88(0, v196, 0);
            v224 = 32;
            v225 = v277;
            do
            {
              v276 = *(v195 + v224);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
              v226 = sub_1B0E44B88();
              v228 = v227;
              v277 = v225;
              v230 = *(v225 + 16);
              v229 = *(v225 + 24);
              if (v230 >= v229 >> 1)
              {
                sub_1B0A18B88(v229 > 1, v230 + 1, 1);
                v225 = v277;
              }

              *(v225 + 16) = v230 + 1;
              v231 = v225 + 16 * v230;
              *(v231 + 32) = v226;
              *(v231 + 40) = v228;
              v224 += 8;
              --v196;
            }

            while (v196);

            v182 = v258;
            v185 = v270;
            v223 = v271;
          }

          else
          {

            v225 = MEMORY[0x1E69E7CC0];
          }

          v277 = v225;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B03B11C4();
          v237 = sub_1B0E448E8();
          v239 = v238;

          sub_1B0AB070C(v182, type metadata accessor for MessageBatches);
          v240 = sub_1B0399D64(v237, v239, &v279);

          *(v185 + 63) = v240;
          *(v185 + 71) = 2082;
          v277 = __PAIR64__(v267, v272);
          v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
          v242 = MessageIdentifierRange.debugDescription.getter(v241);
          v244 = sub_1B0399D64(v242, v243, &v279);

          *(v185 + 73) = v244;
          _os_log_impl(&dword_1B0389000, v223, v269, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. %ld message batch(es): %{public}s (window of interest: %{public}s)", v185, 0x51u);
          v245 = v268;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v245, -1, -1);
          MEMORY[0x1B272C230](v185, -1, -1);

          goto LABEL_79;
        }

        sub_1B0AB070C(v74, type metadata accessor for MessageBatches);
        sub_1B0AB070C(v89, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v182, type metadata accessor for MessageBatches);
        v155 = v84;
      }
    }

    else
    {
      v118 = v267;
      v119 = v263;
      sub_1B0AB06A4(v267, v263, type metadata accessor for MailboxTaskLogger);
      v120 = v262;
      sub_1B0AB06A4(v118, v262, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v121 = sub_1B0E43988();
      v122 = sub_1B0E45908();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v279 = v124;
        LODWORD(v123->isa) = 68159235;
        HIDWORD(v123->isa) = 2;
        LOWORD(v123[1].isa) = 256;
        v125 = v264;
        v126 = v120 + *(v264 + 20);
        BYTE2(v123[1].isa) = *v126;
        *(&v123[1].isa + 3) = 2082;
        v127 = v119 + *(v125 + 20);
        *(&v123[1].isa + 5) = sub_1B0399D64(*(v127 + 8), *(v127 + 16), &v279);
        *(&v123[2].isa + 5) = 1040;
        *(&v123[2].isa + 7) = 2;
        *(&v123[3].isa + 3) = 512;
        LOWORD(v126) = *(v126 + 24);
        sub_1B0AB070C(v120, type metadata accessor for MailboxTaskLogger);
        *(&v123[3].isa + 5) = v126;
        *(&v123[3].isa + 7) = 2160;
        *(&v123[4].isa + 1) = 0x786F626C69616DLL;
        *(&v123[5].isa + 1) = 2085;
        v128 = *(v127 + 32);
        LODWORD(v127) = *(v127 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v119, type metadata accessor for MailboxTaskLogger);
        v277 = v128;
        v278 = v127;
        v129 = sub_1B0E44BA8();
        v131 = sub_1B0399D64(v129, v130, &v279);

        *(&v123[5].isa + 3) = v131;
        _os_log_impl(&dword_1B0389000, v121, v122, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed UIDBATCHES. No message batches.", v123, 0x33u);
        swift_arrayDestroy();
        v132 = v124;
LABEL_77:
        MEMORY[0x1B272C230](v132, -1, -1);
        v212 = v123;
LABEL_78:
        MEMORY[0x1B272C230](v212, -1, -1);

        goto LABEL_79;
      }

      sub_1B0AB070C(v120, type metadata accessor for MailboxTaskLogger);

      v155 = v119;
    }

    v198 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_57;
  }

  v60 = v59;
  v267 = a1;
  v264 = v5;
  v275 = v2;
  result = type metadata accessor for DetermineMessageBatches(0);
  v266 = result;
  v62 = *(result + 60);
  v274 = v1;
  v63 = v1 + v62;
  v64 = *(v1 + v62);
  if (*(v64 + 16))
  {
    v65 = 1;
    while (1)
    {
      result = sub_1B0ADFFE8(v65);
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
        v3 = *(v274 + 144);
        v68 = sub_1B0AADE0C();
        if (*(v63 + 8))
        {
          sub_1B0AB1754();
          swift_allocError();
          return swift_willThrow();
        }

        v70 = v69;
        v71 = v68;
        v72 = sub_1B0AB1524(v64);
        v73 = v72;
        if (v70)
        {
          v74 = v272;
          goto LABEL_23;
        }

        v74 = v272;
        if (v71 >= *(v72 + 2))
        {
          goto LABEL_23;
        }

        v1 = sub_1B0B0E178(v71, v72);
        if ((v77 & 1) == 0)
        {
          goto LABEL_15;
        }

        v5 = v77;
        v248 = v76;
        v247 = v75;
        sub_1B0E46AD8();
        swift_unknownObjectRetain_n();
        v79 = swift_dynamicCastClass();
        if (!v79)
        {
          swift_unknownObjectRelease();
          v79 = MEMORY[0x1E69E7CC0];
        }

        v80 = *(v79 + 16);

        if (!__OFSUB__(v5 >> 1, v248))
        {
          if (v80 != (v5 >> 1) - v248)
          {
            goto LABEL_85;
          }

          v81 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v74 = v272;
          v73 = v81;
          if (!v81)
          {
            v73 = MEMORY[0x1E69E7CC0];
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

void sub_1B0AADD60()
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

uint64_t sub_1B0AADE0C()
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

void sub_1B0AADE50(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v90 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = (&v85 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v85 - v13;
  v15 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MessageBatches(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  v29 = *(type metadata accessor for DetermineMessageBatches(0) + 56);
  v91 = v2;
  sub_1B0AB06A4(v2 + v29, v18, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0AB424C(v18, v28, type metadata accessor for MessageBatches);
    sub_1B0AB06A4(a2, v14, type metadata accessor for MailboxTaskLogger);
    sub_1B0AB06A4(a2, v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AB06A4(v28, v25, type metadata accessor for MessageBatches);
    v30 = v28;
    sub_1B0AB06A4(v28, v22, type metadata accessor for MessageBatches);
    v31 = sub_1B0E43988();
    v32 = sub_1B0E45908();
    v33 = v22;
    if (os_log_type_enabled(v31, v32))
    {
      v88 = v32;
      v89 = v31;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v96 = v35;
      *v34 = 68159747;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v36 = v90;
      v37 = &v11[*(v90 + 20)];
      *(v34 + 10) = *v37;
      *(v34 + 11) = 2082;
      v38 = v14;
      v39 = &v14[*(v36 + 20)];
      *(v34 + 13) = sub_1B0399D64(*(v39 + 1), *(v39 + 2), &v96);
      *(v34 + 21) = 1040;
      *(v34 + 23) = 2;
      *(v34 + 27) = 512;
      LOWORD(v37) = *(v37 + 12);
      sub_1B0AB070C(v11, type metadata accessor for MailboxTaskLogger);
      *(v34 + 29) = v37;
      *(v34 + 31) = 2160;
      *(v34 + 33) = 0x786F626C69616DLL;
      *(v34 + 41) = 2085;
      v40 = *(v39 + 4);
      LODWORD(v39) = *(v39 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v38, type metadata accessor for MailboxTaskLogger);
      v94 = v40;
      v95 = v39;
      v41 = sub_1B0E44BA8();
      v43 = sub_1B0399D64(v41, v42, &v96);

      *(v34 + 43) = v43;
      *(v34 + 51) = 2048;
      v44 = *(*(v25 + 1) + 16);
      sub_1B0AB070C(v25, type metadata accessor for MessageBatches);
      *(v34 + 53) = v44;
      *(v34 + 61) = 2082;
      v90 = v33;
      v45 = *(v33 + 8);
      v46 = *(v45 + 16);
      v47 = MEMORY[0x1E69E7CC0];
      v48 = v30;
      if (v46)
      {
        v87 = v35;
        v94 = MEMORY[0x1E69E7CC0];
        sub_1B0A18B88(0, v46, 0);
        v47 = v94;
        v49 = (v45 + 32);
        do
        {
          v93 = *v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
          v50 = sub_1B0E44B88();
          v94 = v47;
          v53 = *(v47 + 2);
          v52 = *(v47 + 3);
          if (v53 >= v52 >> 1)
          {
            v86 = v50;
            v55 = v51;
            sub_1B0A18B88(v52 > 1, v53 + 1, 1);
            v51 = v55;
            v50 = v86;
            v47 = v94;
          }

          *(v47 + 2) = v53 + 1;
          v54 = &v47[16 * v53];
          *(v54 + 4) = v50;
          *(v54 + 5) = v51;
          ++v49;
          --v46;
        }

        while (v46);
        v35 = v87;
      }

      v94 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B03B11C4();
      v74 = sub_1B0E448E8();
      v76 = v75;

      sub_1B0AB070C(v90, type metadata accessor for MessageBatches);
      v77 = sub_1B0399D64(v74, v76, &v96);

      *(v34 + 63) = v77;
      v78 = v89;
      _os_log_impl(&dword_1B0389000, v89, v88, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created %ld message batches: %{public}s", v34, 0x47u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v35, -1, -1);
      MEMORY[0x1B272C230](v34, -1, -1);

      v71 = v92;
    }

    else
    {
      sub_1B0AB070C(v25, type metadata accessor for MessageBatches);
      sub_1B0AB070C(v11, type metadata accessor for MailboxTaskLogger);

      sub_1B0AB070C(v14, type metadata accessor for MailboxTaskLogger);
      v70 = sub_1B0AB070C(v22, type metadata accessor for MessageBatches);
      v71 = v92;
      v48 = v30;
    }

    v79 = *(v91 + 120);
    v80 = *(v91 + 128);
    MEMORY[0x1EEE9AC00](v70);
    *(&v85 - 2) = v48;
    if (*(v71 + 192) == 1)
    {
      v82 = *(v71 + 176);
      v81 = *(v71 + 184);
      v94 = *(v71 + 168);
      v83 = v94;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B2BE00(&v94, v79, v80, 0, sub_1B0AB076C);
      sub_1B03BB638(v83, v82, v81, 1);
      v84 = v94;
      *(v71 + 176) = 0;
      *(v71 + 184) = 0;
      *(v71 + 168) = v84;
      *(v71 + 192) = 1;
    }

    v73 = type metadata accessor for MessageBatches;
    v72 = v48;
  }

  else
  {
    sub_1B0AB070C(v18, type metadata accessor for DetermineMessageBatches.TaskState);
    v56 = v89;
    sub_1B0AB06A4(a2, v89, type metadata accessor for MailboxTaskLogger);
    sub_1B0AB06A4(a2, v6, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v57 = sub_1B0E43988();
    v58 = sub_1B0E458E8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v96 = v60;
      *v59 = 68159235;
      *(v59 + 4) = 2;
      *(v59 + 8) = 256;
      v61 = v90;
      v62 = &v6[*(v90 + 20)];
      *(v59 + 10) = *v62;
      *(v59 + 11) = 2082;
      v63 = v56 + *(v61 + 20);
      *(v59 + 13) = sub_1B0399D64(*(v63 + 1), *(v63 + 2), &v96);
      *(v59 + 21) = 1040;
      *(v59 + 23) = 2;
      *(v59 + 27) = 512;
      v64 = *(v62 + 12);
      sub_1B0AB070C(v6, type metadata accessor for MailboxTaskLogger);
      *(v59 + 29) = v64;
      *(v59 + 31) = 2160;
      *(v59 + 33) = 0x786F626C69616DLL;
      *(v59 + 41) = 2085;
      v65 = *(v63 + 4);
      v66 = *(v63 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v56, type metadata accessor for MailboxTaskLogger);
      v94 = v65;
      v95 = v66;
      v67 = sub_1B0E44BA8();
      v69 = sub_1B0399D64(v67, v68, &v96);

      *(v59 + 43) = v69;
      _os_log_impl(&dword_1B0389000, v57, v58, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to determine message batches", v59, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v60, -1, -1);
      MEMORY[0x1B272C230](v59, -1, -1);

      return;
    }

    sub_1B0AB070C(v6, type metadata accessor for MailboxTaskLogger);

    v72 = v56;
    v73 = type metadata accessor for MailboxTaskLogger;
  }

  sub_1B0AB070C(v72, v73);
}

uint64_t sub_1B0AAE7D8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for MailboxSyncState() + 60);
  sub_1B0398EFC(a1 + v4, &qword_1EB6E4010, &unk_1B0EC6220);
  sub_1B0AB06A4(a2, a1 + v4, type metadata accessor for MessageBatches);
  v5 = type metadata accessor for MessageBatches(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 0, 1, v5);
}

uint64_t sub_1B0AAE8A0@<X0>(uint64_t a1@<X8>)
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AAE8F4()
{
  if (qword_1EB6DD7A0 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AAE954@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0AB06A4(v4 + *(a3 + 56), v12, type metadata accessor for DetermineMessageBatches.TaskState);
  LODWORD(a3) = swift_getEnumCaseMultiPayload();
  sub_1B0AB070C(v12, type metadata accessor for DetermineMessageBatches.TaskState);
  if (a3 == 2)
  {
    if (*(v4 + 137) == 2)
    {
      return sub_1B0AAA978(a2, a4);
    }

    else
    {
      return sub_1B0AAAB14(a1, a2, *(v4 + 88), *(v4 + 137) & 0x101, a4);
    }
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4028, &qword_1B0EC2AF8);
    return (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
  }
}

unint64_t sub_1B0AAEAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t *a6@<X8>)
{
  result = sub_1B0AB17A8(a1, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

char *sub_1B0AAEB70(uint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a2 - 1;
  v5 = MEMORY[0x1E69E7CC0];
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
      v5 = sub_1B0AFF8A0(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_1B0AFF8A0((v9 > 1), v10 + 1, 1, v5);
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
  v5 = sub_1B0AFF8A0(0, *(v5 + 2) + 1, 1, v5);
LABEL_15:
  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = sub_1B0AFF8A0((v12 > 1), v13 + 1, 1, v5);
  }

  *(v5 + 2) = v13 + 1;
  v14 = &v5[16 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = a1;
  return v5;
}

uint64_t sub_1B0AAECE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  sub_1B0B0A704(v4, v1);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AAED40(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1B0B0A704(a1, v2);
  return sub_1B0E46C68();
}

uint64_t sub_1B0AAED78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  sub_1B0B0A704(v4, v1);
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AAEDD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1B0B73554(*a1, *a2) & ~(v2 ^ v3) & 1;
}

unint64_t sub_1B0AAEE1C()
{
  result = qword_1EB6E4008;
  if (!qword_1EB6E4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4008);
  }

  return result;
}

unint64_t sub_1B0AAEE70()
{
  result = qword_1EB6DD798;
  if (!qword_1EB6DD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD798);
  }

  return result;
}

unint64_t sub_1B0AAEEC8()
{
  result = qword_1EB6DD790;
  if (!qword_1EB6DD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD790);
  }

  return result;
}

unint64_t sub_1B0AAEF1C(uint64_t a1)
{
  result = sub_1B0AAEF44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AAEF44()
{
  result = qword_1EB6DD778;
  if (!qword_1EB6DD778)
  {
    type metadata accessor for DetermineMessageBatches(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD778);
  }

  return result;
}

void sub_1B0AAEF9C(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v208 = a1;
  v209 = a4;
  v205 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v202 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v203 = &v198 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v198 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v201 = &v198 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v198 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v200 = &v198 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v204 = &v198 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v198 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v198 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v198 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v198 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v198 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v198 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v198 - v40;
  v206 = v4;
  v207 = a3;
  v42 = *v4;
  if (*(v42 + 16) && (v43 = sub_1B0ADFFE8(a3), (v44 & 1) != 0))
  {
    v45 = *(v42 + 56) + 12 * v43;
    if (*(v45 + 8))
    {
      if (a2)
      {
        return;
      }

      v46 = v209;
      sub_1B0AB06A4(v209, v29, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v46, v26, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v47 = sub_1B0E43988();
      v48 = sub_1B0E45908();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v213 = v50;
        *v49 = 68159747;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v51 = v205;
        v52 = &v26[*(v205 + 20)];
        *(v49 + 10) = *v52;
        *(v49 + 11) = 2082;
        v53 = &v29[*(v51 + 20)];
        *(v49 + 13) = sub_1B0399D64(*(v53 + 1), *(v53 + 2), &v213);
        *(v49 + 21) = 1040;
        *(v49 + 23) = 2;
        *(v49 + 27) = 512;
        LOWORD(v52) = *(v52 + 12);
        sub_1B0AB070C(v26, type metadata accessor for MailboxTaskLogger);
        *(v49 + 29) = v52;
        *(v49 + 31) = 2160;
        *(v49 + 33) = 0x786F626C69616DLL;
        *(v49 + 41) = 2085;
        v54 = *(v53 + 4);
        v55 = *(v53 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v29, type metadata accessor for MailboxTaskLogger);
        v211 = v54;
        v212 = v55;
        v56 = sub_1B0E44BA8();
        v58 = sub_1B0399D64(v56, v57, &v213);

        *(v49 + 43) = v58;
        *(v49 + 51) = 2048;
        v59 = v207;
        v60 = v208;
        *(v49 + 53) = v207;
        *(v49 + 61) = 2082;
        v211 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
        v61 = sub_1B0E449D8();
        v63 = sub_1B0399D64(v61, v62, &v213);

        *(v49 + 63) = v63;
        _os_log_impl(&dword_1B0389000, v47, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response NIL and %{public}s", v49, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v50, -1, -1);
        MEMORY[0x1B272C230](v49, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v26, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v29, type metadata accessor for MailboxTaskLogger);
        v59 = v207;
        v60 = v208;
      }

      v99 = v206;
      v152 = *v206;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v211 = *v99;
      v102 = v60;
      v103 = v59;
      goto LABEL_16;
    }

    v104 = *v45;
    v105 = HIDWORD(*v45);
    if (a2)
    {
      v106 = v209;
      v107 = v23;
      sub_1B0AB06A4(v209, v23, type metadata accessor for MailboxTaskLogger);
      v108 = v204;
      sub_1B0AB06A4(v106, v204, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v109 = sub_1B0E43988();
      v110 = sub_1B0E45908();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v213 = v112;
        *v111 = 68159747;
        *(v111 + 4) = 2;
        *(v111 + 8) = 256;
        v113 = v205;
        v114 = v108 + *(v205 + 20);
        *(v111 + 10) = *v114;
        *(v111 + 11) = 2082;
        v115 = *(v113 + 20);
        v209 = v104;
        v116 = v107;
        v117 = &v107[v115];
        *(v111 + 13) = sub_1B0399D64(*(v117 + 1), *(v117 + 2), &v213);
        *(v111 + 21) = 1040;
        *(v111 + 23) = 2;
        *(v111 + 27) = 512;
        LOWORD(v114) = *(v114 + 24);
        sub_1B0AB070C(v108, type metadata accessor for MailboxTaskLogger);
        *(v111 + 29) = v114;
        *(v111 + 31) = 2160;
        *(v111 + 33) = 0x786F626C69616DLL;
        *(v111 + 41) = 2085;
        v118 = *(v117 + 4);
        LODWORD(v114) = *(v117 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v116, type metadata accessor for MailboxTaskLogger);
        v211 = v118;
        v212 = v114;
        v119 = sub_1B0E44BA8();
        LODWORD(v118) = v105;
        v121 = sub_1B0399D64(v119, v120, &v213);

        *(v111 + 43) = v121;
        *(v111 + 51) = 2048;
        *(v111 + 53) = v207;
        *(v111 + 61) = 2082;
        v211 = __PAIR64__(v118, v209);
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v123 = MessageIdentifierRange.debugDescription.getter(v122);
        v125 = sub_1B0399D64(v123, v124, &v213);

        *(v111 + 63) = v125;
        _os_log_impl(&dword_1B0389000, v109, v110, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response NIL and %{public}s", v111, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v112, -1, -1);
        v126 = v111;
LABEL_36:
        MEMORY[0x1B272C230](v126, -1, -1);

        return;
      }

      sub_1B0AB070C(v108, type metadata accessor for MailboxTaskLogger);

      v153 = v107;
      goto LABEL_40;
    }

    v127 = v208;
    v128 = HIDWORD(v208);
    if (v104 == v208 && v128 == v105)
    {
      v154 = v209;
      v155 = v203;
      sub_1B0AB06A4(v209, v203, type metadata accessor for MailboxTaskLogger);
      v156 = v202;
      sub_1B0AB06A4(v154, v202, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v109 = sub_1B0E43988();
      v157 = sub_1B0E458D8();
      if (os_log_type_enabled(v109, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v213 = v159;
        *v158 = 68159491;
        *(v158 + 4) = 2;
        *(v158 + 8) = 256;
        v160 = v205;
        v161 = v156 + *(v205 + 20);
        *(v158 + 10) = *v161;
        *(v158 + 11) = 2082;
        v162 = v155 + *(v160 + 20);
        *(v158 + 13) = sub_1B0399D64(*(v162 + 8), *(v162 + 16), &v213);
        *(v158 + 21) = 1040;
        *(v158 + 23) = 2;
        *(v158 + 27) = 512;
        LOWORD(v161) = *(v161 + 24);
        sub_1B0AB070C(v156, type metadata accessor for MailboxTaskLogger);
        *(v158 + 29) = v161;
        *(v158 + 31) = 2160;
        *(v158 + 33) = 0x786F626C69616DLL;
        *(v158 + 41) = 2085;
        v163 = *(v162 + 32);
        LODWORD(v162) = *(v162 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v155, type metadata accessor for MailboxTaskLogger);
        v211 = v163;
        v212 = v162;
        v164 = sub_1B0E44BA8();
        v166 = sub_1B0399D64(v164, v165, &v213);

        *(v158 + 43) = v166;
        *(v158 + 51) = 2048;
        *(v158 + 53) = v207;
        _os_log_impl(&dword_1B0389000, v109, v157, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Duplicate response for batch #%ld is identical.", v158, 0x3Du);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v159, -1, -1);
        v126 = v158;
        goto LABEL_36;
      }

      sub_1B0AB070C(v156, type metadata accessor for MailboxTaskLogger);

      v153 = v155;
LABEL_40:
      sub_1B0AB070C(v153, type metadata accessor for MailboxTaskLogger);
      return;
    }

    if (HIDWORD(v208) >= v104 && v105 >= v208)
    {
      v167 = v209;
      v168 = v200;
      sub_1B0AB06A4(v209, v200, type metadata accessor for MailboxTaskLogger);
      v169 = v198;
      sub_1B0AB06A4(v167, v198, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v170 = sub_1B0E43988();
      v171 = sub_1B0E45908();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v204 = v105;
        v173 = v172;
        v209 = swift_slowAlloc();
        v213 = v209;
        *v173 = 68160003;
        *(v173 + 4) = 2;
        *(v173 + 8) = 256;
        v174 = v205;
        v175 = v169 + *(v205 + 20);
        *(v173 + 10) = *v175;
        *(v173 + 11) = 2082;
        v176 = v168 + *(v174 + 20);
        *(v173 + 13) = sub_1B0399D64(*(v176 + 8), *(v176 + 16), &v213);
        *(v173 + 21) = 1040;
        *(v173 + 23) = 2;
        *(v173 + 27) = 512;
        LOWORD(v175) = *(v175 + 24);
        sub_1B0AB070C(v169, type metadata accessor for MailboxTaskLogger);
        *(v173 + 29) = v175;
        *(v173 + 31) = 2160;
        *(v173 + 33) = 0x786F626C69616DLL;
        *(v173 + 41) = 2085;
        v177 = *(v176 + 32);
        LODWORD(v176) = *(v176 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v168, type metadata accessor for MailboxTaskLogger);
        v211 = v177;
        v212 = v176;
        v178 = sub_1B0E44BA8();
        v180 = sub_1B0399D64(v178, v179, &v213);

        *(v173 + 43) = v180;
        *(v173 + 51) = 2048;
        v181 = v207;
        *(v173 + 53) = v207;
        *(v173 + 61) = 2082;
        v211 = __PAIR64__(v204, v104);
        v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v183 = MessageIdentifierRange.debugDescription.getter(v182);
        v185 = sub_1B0399D64(v183, v184, &v213);

        *(v173 + 63) = v185;
        v127 = v208;
        *(v173 + 71) = 2082;
        v211 = __PAIR64__(v128, v127);
        v186 = MessageIdentifierRange.debugDescription.getter(v182);
        v188 = sub_1B0399D64(v186, v187, &v213);

        *(v173 + 73) = v188;
        _os_log_impl(&dword_1B0389000, v170, v171, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response %{public}s and %{public}s", v173, 0x51u);
        v189 = v209;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v189, -1, -1);
        v190 = v173;
        v105 = v204;
        MEMORY[0x1B272C230](v190, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v169, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v168, type metadata accessor for MailboxTaskLogger);
        v181 = v207;
      }

      if (v127 >= v104)
      {
        v191 = v104;
      }

      else
      {
        v191 = v127;
      }

      LODWORD(v213) = v191;
      if (v128 <= v105)
      {
        v192 = v105;
      }

      else
      {
        v192 = v128;
      }

      v210 = v192;
      v193 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v213, &v210, &type metadata for UID, v193, &v211);
      v194 = v211;
      v195 = v206;
      v196 = *v206;
      v197 = swift_isUniquelyReferenced_nonNull_native();
      v213 = *v195;
      sub_1B0A9C268(v194, 0, v181, v197);
      *v195 = v213;
    }

    else
    {
      v204 = HIDWORD(*v45);
      v131 = v209;
      v132 = v201;
      sub_1B0AB06A4(v209, v201, type metadata accessor for MailboxTaskLogger);
      v133 = v199;
      sub_1B0AB06A4(v131, v199, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v134 = sub_1B0E43988();
      v135 = sub_1B0E458E8();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v213 = v209;
        *v136 = 68160003;
        *(v136 + 4) = 2;
        *(v136 + 8) = 256;
        v137 = v205;
        v138 = v133 + *(v205 + 20);
        *(v136 + 10) = *v138;
        *(v136 + 11) = 2082;
        v139 = v132 + *(v137 + 20);
        *(v136 + 13) = sub_1B0399D64(*(v139 + 8), *(v139 + 16), &v213);
        *(v136 + 21) = 1040;
        *(v136 + 23) = 2;
        *(v136 + 27) = 512;
        LOWORD(v138) = *(v138 + 24);
        sub_1B0AB070C(v133, type metadata accessor for MailboxTaskLogger);
        *(v136 + 29) = v138;
        *(v136 + 31) = 2160;
        *(v136 + 33) = 0x786F626C69616DLL;
        *(v136 + 41) = 2085;
        v140 = *(v139 + 32);
        LODWORD(v139) = *(v139 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v132, type metadata accessor for MailboxTaskLogger);
        v211 = v140;
        v212 = v139;
        v141 = sub_1B0E44BA8();
        v143 = sub_1B0399D64(v141, v142, &v213);

        *(v136 + 43) = v143;
        *(v136 + 51) = 2048;
        *(v136 + 53) = v207;
        *(v136 + 61) = 2082;
        v211 = __PAIR64__(v204, v104);
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v145 = MessageIdentifierRange.debugDescription.getter(v144);
        v147 = sub_1B0399D64(v145, v146, &v213);

        *(v136 + 63) = v147;
        *(v136 + 71) = 2082;
        v211 = __PAIR64__(v128, v208);
        v148 = MessageIdentifierRange.debugDescription.getter(v144);
        v150 = sub_1B0399D64(v148, v149, &v213);

        *(v136 + 73) = v150;
        _os_log_impl(&dword_1B0389000, v134, v135, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld got response %{public}s and %{public}s: Should overlap, but they do not.", v136, 0x51u);
        v151 = v209;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v151, -1, -1);
        MEMORY[0x1B272C230](v136, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v133, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v132, type metadata accessor for MailboxTaskLogger);
      }

      *(v206 + 8) = 1;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v77 = v209;
      sub_1B0AB06A4(v209, v35, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v77, v32, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v78 = sub_1B0E43988();
      v79 = sub_1B0E458D8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v213 = v81;
        *v80 = 68159747;
        *(v80 + 4) = 2;
        *(v80 + 8) = 256;
        v82 = v205;
        v83 = &v32[*(v205 + 20)];
        *(v80 + 10) = *v83;
        *(v80 + 11) = 2082;
        v84 = &v35[*(v82 + 20)];
        *(v80 + 13) = sub_1B0399D64(*(v84 + 1), *(v84 + 2), &v213);
        *(v80 + 21) = 1040;
        *(v80 + 23) = 2;
        *(v80 + 27) = 512;
        LOWORD(v83) = *(v83 + 12);
        sub_1B0AB070C(v32, type metadata accessor for MailboxTaskLogger);
        *(v80 + 29) = v83;
        *(v80 + 31) = 2160;
        *(v80 + 33) = 0x786F626C69616DLL;
        *(v80 + 41) = 2085;
        v85 = *(v84 + 4);
        LODWORD(v83) = *(v84 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v35, type metadata accessor for MailboxTaskLogger);
        v211 = v85;
        v212 = v83;
        v86 = sub_1B0E44BA8();
        v88 = sub_1B0399D64(v86, v87, &v213);

        *(v80 + 43) = v88;
        *(v80 + 51) = 2048;
        v89 = v207;
        *(v80 + 53) = v207;
        *(v80 + 61) = 2082;
        v90 = v208;
        v211 = v208;
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v92 = MessageIdentifierRange.debugDescription.getter(v91);
        v94 = sub_1B0399D64(v92, v93, &v213);

        *(v80 + 63) = v94;
        _os_log_impl(&dword_1B0389000, v78, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld is %{public}s", v80, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v81, -1, -1);
        MEMORY[0x1B272C230](v80, -1, -1);
      }

      else
      {
        sub_1B0AB070C(v32, type metadata accessor for MailboxTaskLogger);

        sub_1B0AB070C(v35, type metadata accessor for MailboxTaskLogger);
        v89 = v207;
        v90 = v208;
      }

      v99 = v206;
      v100 = *v206;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v211 = *v99;
      v102 = v90;
      v103 = v89;
LABEL_16:
      sub_1B0A9C268(v102, 0, v103, isUniquelyReferenced_nonNull_native);
      *v99 = v211;
      return;
    }

    v64 = v209;
    sub_1B0AB06A4(v209, v41, type metadata accessor for MailboxTaskLogger);
    sub_1B0AB06A4(v64, v38, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v65 = sub_1B0E43988();
    v66 = sub_1B0E458D8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v213 = v68;
      *v67 = 68159491;
      *(v67 + 4) = 2;
      *(v67 + 8) = 256;
      v69 = v205;
      v70 = &v38[*(v205 + 20)];
      *(v67 + 10) = *v70;
      *(v67 + 11) = 2082;
      v71 = &v41[*(v69 + 20)];
      *(v67 + 13) = sub_1B0399D64(*(v71 + 1), *(v71 + 2), &v213);
      *(v67 + 21) = 1040;
      *(v67 + 23) = 2;
      *(v67 + 27) = 512;
      LOWORD(v70) = *(v70 + 12);
      sub_1B0AB070C(v38, type metadata accessor for MailboxTaskLogger);
      *(v67 + 29) = v70;
      *(v67 + 31) = 2160;
      *(v67 + 33) = 0x786F626C69616DLL;
      *(v67 + 41) = 2085;
      v72 = *(v71 + 4);
      LODWORD(v70) = *(v71 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v41, type metadata accessor for MailboxTaskLogger);
      v211 = v72;
      v212 = v70;
      v73 = sub_1B0E44BA8();
      v75 = sub_1B0399D64(v73, v74, &v213);

      *(v67 + 43) = v75;
      *(v67 + 51) = 2048;
      v76 = v207;
      *(v67 + 53) = v207;
      _os_log_impl(&dword_1B0389000, v65, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Batch #%ld is empty", v67, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v68, -1, -1);
      MEMORY[0x1B272C230](v67, -1, -1);
    }

    else
    {
      sub_1B0AB070C(v38, type metadata accessor for MailboxTaskLogger);

      sub_1B0AB070C(v41, type metadata accessor for MailboxTaskLogger);
      v76 = v207;
    }

    v95 = v208;
    v96 = v206;
    v97 = *v206;
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v211 = *v96;
    sub_1B0A9C268(v95, 1, v76, v98);
    *v96 = v211;
  }
}

uint64_t sub_1B0AB0520(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B0A18B88(0, v2, 0);
    v3 = 32;
    v4 = v15;
    do
    {
      v14 = *(v1 + v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v5 = sub_1B0E44B88();
      v16 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B0A18B88(v7 > 1, v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v16;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v12 = sub_1B0E448E8();

  return v12;
}

uint64_t sub_1B0AB06A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AB070C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1B0AB0774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageBatches(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4058, &qword_1B0EC2B38);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v20 = *(v19 + 56);
  sub_1B0AB06A4(a1, &v24 - v17, type metadata accessor for DetermineMessageBatches.TaskState);
  sub_1B0AB06A4(a2, &v18[v20], type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B0AB06A4(v18, v14, type metadata accessor for DetermineMessageBatches.TaskState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = *v14 == *&v18[v20];
      goto LABEL_7;
    }

LABEL_11:
    sub_1B0398EFC(v18, &qword_1EB6E4058, &qword_1B0EC2B38);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B0AB070C(v18, type metadata accessor for DetermineMessageBatches.TaskState);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1B0AB06A4(v18, v11, type metadata accessor for DetermineMessageBatches.TaskState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0AB070C(v11, type metadata accessor for MessageBatches);
    goto LABEL_11;
  }

  sub_1B0AB424C(&v18[v20], v7, type metadata accessor for MessageBatches);
  v22 = sub_1B03D34B0(v11, v7);
  sub_1B0AB070C(v7, type metadata accessor for MessageBatches);
  sub_1B0AB070C(v11, type metadata accessor for MessageBatches);
LABEL_7:
  sub_1B0AB070C(v18, type metadata accessor for DetermineMessageBatches.TaskState);
  return v22;
}

char *sub_1B0AB0A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 56);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*v2 == 1)
    {
      v7 = *(v2 - 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B0AFF8A0(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_1B0AFF8A0((v4 > 1), v5 + 1, 1, v3);
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

uint64_t sub_1B0AB0B54(char a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0AEAF3C(a1 & 1, a3);
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
          sub_1B0AB06A4(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AB424C(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AB070C(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B0AB070C(v8, type metadata accessor for ClientCommand);
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

uint64_t sub_1B0AB0D90(int a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0AEB130(a1, a3);
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
          sub_1B0AB06A4(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AB424C(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AB070C(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B0AB070C(v8, type metadata accessor for ClientCommand);
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

uint64_t sub_1B0AB0FCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TaskHistory.Running(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = Tag.init(_:)(a1, a2);
  if (v17)
  {
    return 0;
  }

  v18 = v16;
  v39 = a4;
  v40 = v12;
  v19 = *(a3 + 16);
  v41 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v19)
  {
LABEL_20:

    return 0;
  }

  v20 = v18;
  v21 = HIDWORD(v18);
  v22 = v41 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v23 = *(v9 + 72);
  while (1)
  {
    sub_1B0AB06A4(v22, v15, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0AB070C(v15, type metadata accessor for TaskHistory.Running);
LABEL_5:
    v22 += v23;
    if (!--v19)
    {
      goto LABEL_20;
    }
  }

  v24 = *v15;
  v25 = *(v15 + 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0AB070C(&v15[*(v26 + 64)], type metadata accessor for ClientCommand);
  if (v24 != v20 || v25 != v21)
  {
    goto LABEL_5;
  }

  v28 = v40;
  sub_1B0AB06A4(v22, v40, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_25:
    result = sub_1B0AB070C(v28, type metadata accessor for TaskHistory.Running);
    __break(1u);
    return result;
  }

  v29 = *v28;
  v30 = v28;
  v31 = *(v28 + 4);
  v28 = *(v28 + 8);
  sub_1B0AB070C(v30 + *(v26 + 64), type metadata accessor for ClientCommand);

  if (v29 != v20)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v31 != v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = (v39 + 32);
  v33 = *(v39 + 16) + 1;
  while (--v33)
  {
    v34 = v32 + 8;
    v35 = *v32;
    v32 += 8;
    if (v35 == v28)
    {
      if ((*(v34 - 2) & 1) == 0)
      {
        return 0;
      }

      result = *(v34 - 3);
      v37 = *(v34 - 2);
      return result;
    }
  }

  return 0;
}

void sub_1B0AB12B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a6;
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v7 + 137);
  if (v16 == 2)
  {
    sub_1B0AB06A4(a1, v15, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v17 = *v15;
      v18 = v15[1];
      v19 = v15[2];
      v20 = v15[5];
      v21 = sub_1B0AB0FCC(v17, v18, a2, a4);
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
          sub_1B0AAEF9C(v32, v29 >= v31, v27 + v29, v35);
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
      sub_1B0AB070C(v15, type metadata accessor for UntaggedResponse);
    }
  }

  else
  {
    if (sub_1B0AD49E0(0, 0, 0, a2, a3, a4))
    {
      v24 = v16 & 0x101;
      v25 = 0;
    }

    else
    {
      if ((sub_1B0AD49E0(1, 0, 0, a2, a3, a4) & 1) == 0)
      {
        return;
      }

      v24 = v16 & 0x101;
      v25 = 1;
    }

    v26 = v35;

    sub_1B0AAB2D0(v25, a1, v24, v26);
  }
}

char *sub_1B0AB1524(unint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
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
    v7 = sub_1B0ADFFE8(v5);
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
        v2 = sub_1B0B8C8B0(v2);
        v20 = *(v2 + 2);
        if (v20)
        {
LABEL_26:
          v21 = v20 - 1;
          v22 = *&v2[8 * v21 + 36];
          *(v2 + 2) = v21;
          v27 = v22;
          v28 = 1;
          v23 = sub_1B041C1E8();
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
          v25 = sub_1B0AFF55C((v20 > 1), v6, 1, v2);
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
      v15 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v15, &v29);
      LODWORD(v10) = v29;
      LODWORD(v14) = HIDWORD(v29);
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B0AFF55C(0, *(v2 + 2) + 1, 1, v2);
      }

      v17 = *(v2 + 2);
      v16 = *(v2 + 3);
      v6 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v2 = sub_1B0AFF55C((v16 > 1), v17 + 1, 1, v2);
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

unint64_t sub_1B0AB1754()
{
  result = qword_1EB6E4020;
  if (!qword_1EB6E4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4020);
  }

  return result;
}

unint64_t sub_1B0AB17A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = a5;
  v91 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v90 - v10;
  v11 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for MailboxTaskLogger(0);
  v15 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v90 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90 - v25;
  v27 = *(v5 + 72);
  if (v27 == 1 && (sub_1B0A9E828(1, a2, a3) & 1) == 0)
  {
    v34 = *(v5 + 76);
    v91 = v5;
    v35 = *(v5 + 84);
    if (v35)
    {
      v36 = v93;
      sub_1B0AB06A4(v93, v20, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v36, v17, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v37 = sub_1B0E43988();
      v38 = sub_1B0E45908();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v97 = v40;
        *v39 = 68159235;
        v93 = v34;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v41 = v92;
        v42 = &v17[*(v92 + 20)];
        *(v39 + 10) = *v42;
        *(v39 + 11) = 2082;
        v43 = &v20[*(v41 + 20)];
        *(v39 + 13) = sub_1B0399D64(*(v43 + 1), *(v43 + 2), &v97);
        *(v39 + 21) = 1040;
        *(v39 + 23) = 2;
        *(v39 + 27) = 512;
        LOWORD(v42) = *(v42 + 12);
        sub_1B0AB070C(v17, type metadata accessor for MailboxTaskLogger);
        *(v39 + 29) = v42;
        *(v39 + 31) = 2160;
        *(v39 + 33) = 0x786F626C69616DLL;
        *(v39 + 41) = 2085;
        v44 = *(v43 + 4);
        LODWORD(v43) = *(v43 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v20, type metadata accessor for MailboxTaskLogger);
        v94 = v44;
        v95 = v43;
        v45 = sub_1B0E44BA8();
        v47 = sub_1B0399D64(v45, v46, &v97);
        v34 = v93;

        *(v39 + 43) = v47;
        _os_log_impl(&dword_1B0389000, v37, v38, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Clearing window of interest", v39, 0x33u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v40, -1, -1);
        v48 = v39;
LABEL_23:
        MEMORY[0x1B272C230](v48, -1, -1);

LABEL_28:
        v72 = v91;
        v73 = swift_allocObject();
        v74 = *(v72 + 104);
        *(v73 + 16) = *(v72 + 96);
        *(v73 + 24) = v74;
        *(v73 + 32) = v34;
        *(v73 + 40) = v35;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 1;
      }

      sub_1B0AB070C(v17, type metadata accessor for MailboxTaskLogger);

      v71 = v20;
    }

    else
    {
      v52 = v93;
      sub_1B0AB06A4(v93, v26, type metadata accessor for MailboxTaskLogger);
      sub_1B0AB06A4(v52, v23, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v37 = sub_1B0E43988();
      v53 = sub_1B0E45908();
      if (os_log_type_enabled(v37, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v97 = v55;
        *v54 = 68159491;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v56 = v92;
        v57 = *(v92 + 20);
        v93 = v34;
        v58 = &v23[v57];
        *(v54 + 10) = v23[v57];
        *(v54 + 11) = 2082;
        v59 = &v26[*(v56 + 20)];
        *(v54 + 13) = sub_1B0399D64(*(v59 + 1), *(v59 + 2), &v97);
        *(v54 + 21) = 1040;
        *(v54 + 23) = 2;
        *(v54 + 27) = 512;
        LOWORD(v58) = *(v58 + 12);
        sub_1B0AB070C(v23, type metadata accessor for MailboxTaskLogger);
        *(v54 + 29) = v58;
        *(v54 + 31) = 2160;
        *(v54 + 33) = 0x786F626C69616DLL;
        *(v54 + 41) = 2085;
        v60 = *(v59 + 4);
        v61 = *(v59 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AB070C(v26, type metadata accessor for MailboxTaskLogger);
        v94 = v60;
        v95 = v61;
        v62 = sub_1B0E44BA8();
        v64 = sub_1B0399D64(v62, v63, &v97);

        *(v54 + 43) = v64;
        *(v54 + 51) = 2082;
        v94 = v93;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v66 = MessageIdentifierRange.debugDescription.getter(v65);
        v68 = sub_1B0399D64(v66, v67, &v97);

        *(v54 + 53) = v68;
        v34 = v93;
        _os_log_impl(&dword_1B0389000, v37, v53, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Setting window of interest: %{public}s", v54, 0x3Du);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v55, -1, -1);
        v48 = v54;
        goto LABEL_23;
      }

      sub_1B0AB070C(v23, type metadata accessor for MailboxTaskLogger);

      v71 = v26;
    }

    sub_1B0AB070C(v71, type metadata accessor for MailboxTaskLogger);
    goto LABEL_28;
  }

  v28 = type metadata accessor for DetermineMessageBatches(0);
  sub_1B0AB06A4(v5 + *(v28 + 56), v14, type metadata accessor for DetermineMessageBatches.TaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 4;
    }

    if ((sub_1B0A9E828(EnumCaseMultiPayload, a2, a3) & 1) == 0)
    {
      v49 = swift_allocObject();
      v50 = *(v5 + 104);
      *(v49 + 16) = *(v5 + 96);
      *(v49 + 24) = v50;
      v51 = *(v5 + 84);
      *(v49 + 32) = *(v5 + 76);
      *(v49 + 40) = v51;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AB070C(v14, type metadata accessor for DetermineMessageBatches.TaskState);
      return 1;
    }

    if (*(v5 + 84) & 1) != 0 || (v30 = *(v5 + 76), (v30 & 0xFFFFFFFE) == 0) || (sub_1B0A9E828(3, a2, a3))
    {
      sub_1B0AB070C(v14, type metadata accessor for DetermineMessageBatches.TaskState);
      return 4;
    }

    LODWORD(v97) = 1;
    LODWORD(v96) = v30 - 1;
    v76 = sub_1B041C1E8();
    v77 = v5;
    static MessageIdentifier.... infix(_:_:)(&v97, &v96, &type metadata for UID, v76, &v94);
    v97 = v94;
    v96 = Range<>.init<A>(_:)(&v97, &type metadata for UID, v76);
    sub_1B03D06F8();
    v78 = v90;
    sub_1B0E46F08();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
    swift_allocBox();
    v80 = *(v79 + 48);
    v81 = *(v77 + 104);
    *v82 = *(v77 + 96);
    v82[1] = v81;
    sub_1B03C60A4(v78, v82 + v80, &unk_1EB6E26C0, &unk_1B0E9DE10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AB070C(v14, type metadata accessor for DetermineMessageBatches.TaskState);
    return 3;
  }

  else
  {
    if ((v27 & 1) == 0)
    {
      if ((sub_1B0A9E828(0, a2, a3) & 1) == 0)
      {
        v69 = swift_allocObject();
        v70 = *(v5 + 104);
        *(v69 + 16) = *(v5 + 96);
        *(v69 + 24) = v70;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 0;
      }

      if ((sub_1B0B11FCC(0, v91, a2, a3) & 1) == 0)
      {
        return 4;
      }
    }

    result = sub_1B0A9E828(2, a2, a3);
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
      v75 = *(v5 + 132);
      v33 = v75 - 1;
      if (v75 == 1)
      {
        v33 = 1;
      }

      else if (!v75)
      {
        __break(1u);
        return result;
      }
    }

    v83 = *(v5 + 76);
    v84 = *(v5 + 84);
    if (v32 | v84)
    {
      v85 = 0;
    }

    else
    {
      v85 = v33 - HIDWORD(v83);
    }

    v86 = swift_allocObject();
    v87 = v86;
    v88 = *(v5 + 104);
    v86[2] = *(v5 + 96);
    v86[3] = v88;
    if (v84)
    {
      LODWORD(v94) = 1;
      LODWORD(v97) = v33;
      v89 = sub_1B041C1E8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      static MessageIdentifier.... infix(_:_:)(&v94, &v97, &type metadata for UID, v89, (v87 + 4));
    }

    else
    {
      v86[4] = v83;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    v87[5] = *(v5 + 144);
    v87[6] = v85;
    return 2;
  }
}