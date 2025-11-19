void *sub_1D10FE208(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FE228(char *a1, int64_t a2, char a3)
{
  result = sub_1D1101200(a1, a2, a3, *v3, &qword_1EC60AD98, type metadata accessor for CGSize);
  *v3 = result;
  return result;
}

char *sub_1D10FE264(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EE06B698, &type metadata for DisplayCategory, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10FE3A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D11044D4(0, &qword_1EC60A098, &qword_1EC60A0A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D10FAA88(0, &qword_1EC60A0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D10FE524(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D1104CB4(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_1D10FE718(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60AEB8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10FE844(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D109347C(0, &qword_1EC609C98, &qword_1EC609CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D10951AC(0, &qword_1EC609CA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10FE990(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60AE50, &_s23FormattedRecordMetadataVN, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10FEAC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D109347C(0, &qword_1EC609D60, &qword_1EC609D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10FEC38(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1104A60();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1095090(0, &qword_1EC60AE90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10FED80(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60AE20, &_s27FormattedRecordValueInRangeVN, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10FEEBC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D109347C(0, &qword_1EC609D30, &qword_1EC609D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609D28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10FF024(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D11049F8();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 152 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1095090(0, &qword_1EC609D10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10FF16C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60AE08, &_s20FormattedRecordValueVN, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10FF2A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D109347C(0, &qword_1EC609D08, &qword_1EC609D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609D00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10FF40C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1104990();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1095090(0, &qword_1EC60AE78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10FF538(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60ADF0, &_s15FormattedRecordVN, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10FF65C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D109347C(0, &qword_1EC609CE8, &qword_1EC609CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10FF7B0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1104928();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1095090(0, &qword_1EC60AE68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10FF8F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60AE38, &_s22FormattedRecord3ValuesVN, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10FFA28(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D109347C(0, &qword_1EC609CC8, &qword_1EC609CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10FFB7C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D11048C0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[20 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 160 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1095090(0, &qword_1EC609C88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10FFCBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10FFDE0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D109347C(0, &qword_1EC60ADB0, &qword_1EC60ADB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D10951AC(0, &qword_1EC60ADB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10FFF34(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1104CB4(0, &qword_1EC60ADC0, sub_1D1104738, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1104738();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D110009C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EE0694D8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D11001B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60ABE8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D11002D4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D110465C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D1105010(0, &qword_1EE06B0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1100414(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60AF08, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D1100530(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1105010(0, &qword_1EC60AD20, &type metadata for GatewayIdentifiedClinicalAccount, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D1100654(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1104CB4(0, &qword_1EC60AEC0, sub_1D1104AC8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D1104AC8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D11007A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1104CB4(0, &qword_1EC60AD08, sub_1D10FAB5C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D10FAB5C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1100900(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D1105010(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1D1100A7C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    sub_1D1104864(0, a5, a6, a7, a8);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 56);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[7 * v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 56 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D11047E8(0, a6, a7, a8);
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1D1100CC0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1D11044D4(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FAA88(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D1100E1C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D1105010(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1D1100F54(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1104CB4(0, &qword_1EC60ABD8, sub_1D10FA090, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D10FA090();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D11010B4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1104CB4(0, &qword_1EC60ADA0, sub_1D11046D8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D11046D8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1101200(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D1104CB4(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t sub_1D1101314()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EB6F0(0, &qword_1EC60A928);
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D1101580()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EB89C(0, &qword_1EC60A960, sub_1D109D220);
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v34 = v1;
    v35 = (v7 + 63) >> 6;
    v37 = result + 56;
    v38 = v2;
    v36 = result;
    while (1)
    {
      if (!v9)
      {
        v12 = v5;
        while (1)
        {
          v5 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v5 >= v35)
          {
            break;
          }

          v13 = v6[v5];
          ++v12;
          if (v13)
          {
            v11 = __clz(__rbit64(v13));
            v40 = (v13 - 1) & v13;
            goto LABEL_14;
          }
        }

        v33 = 1 << *(v2 + 32);
        if (v33 >= 64)
        {
          bzero(v6, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v33;
        }

        *(v2 + 16) = 0;
        v1 = v34;
        break;
      }

      v11 = __clz(__rbit64(v9));
      v40 = (v9 - 1) & v9;
LABEL_14:
      v14 = (*(v2 + 48) + 72 * (v11 | (v5 << 6)));
      v15 = *v14;
      *v44 = *(v14 + 1);
      *&v44[3] = *(v14 + 1);
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);
      v18 = *(v14 + 3);
      v19 = *(v14 + 6);
      v42 = *(v14 + 5);
      v43 = *(v14 + 4);
      v20 = *(v14 + 7);
      v39 = *(v14 + 8);
      sub_1D139177C();
      v41 = v15;
      MEMORY[0x1D38870E0](v15);
      sub_1D1390D9C();
      sub_1D139179C();
      if (v18)
      {
        sub_1D139027C();
      }

      sub_1D139027C();
      if (v19 >> 62)
      {
        v31 = sub_1D13910DC();
        MEMORY[0x1D38870E0](v31);
        result = sub_1D13910DC();
        v21 = result;
        if (!result)
        {
          goto LABEL_25;
        }
      }

      else
      {
        result = MEMORY[0x1D38870E0](*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_25;
        }
      }

      if (v21 < 1)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v21; ++i)
        {
          MEMORY[0x1D3886B70](i, v19);
          sub_1D1390D9C();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v23 = (v19 + 32);
        do
        {
          v24 = *v23++;
          v25 = v24;
          sub_1D1390D9C();

          --v21;
        }

        while (v21);
      }

LABEL_25:
      if (v20 >> 62)
      {
        v32 = sub_1D13910DC();
        MEMORY[0x1D38870E0](v32);
        result = sub_1D13910DC();
        v26 = result;
        if (!result)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = MEMORY[0x1D38870E0](*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v26 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_6;
        }
      }

      if (v26 < 1)
      {
        goto LABEL_46;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v26; ++j)
        {
          MEMORY[0x1D3886B70](j, v20);
          sub_1D1390D9C();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v28 = (v20 + 32);
        do
        {
          v29 = *v28++;
          v30 = v29;
          sub_1D1390D9C();

          --v26;
        }

        while (v26);
      }

LABEL_6:
      sub_1D1390D9C();
      sub_1D13917CC();
      result = sub_1D139106C();
      *(v37 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v4 = v36;
      v10 = *(v36 + 48) + 72 * result;
      *v10 = v41;
      *(v10 + 1) = *v44;
      *(v10 + 4) = *&v44[3];
      *(v10 + 8) = v16;
      *(v10 + 16) = v17;
      v9 = v40;
      *(v10 + 24) = v18;
      *(v10 + 32) = v43;
      *(v10 + 40) = v42;
      *(v10 + 48) = v19;
      *(v10 + 56) = v20;
      *(v10 + 64) = v39;
      ++*(v36 + 16);
      v2 = v38;
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D11019E0()
{
  v1 = v0;
  v2 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D10EB740();
  result = sub_1D139118C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
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
LABEL_15:
      v19 = *(v30 + 72);
      sub_1D1104D80(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      sub_1D139177C();
      sub_1D139027C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D1104D80(v4, *(v7 + 48) + v15 * v19, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D1101CE8()
{
  v1 = v0;
  v35 = sub_1D138ED5C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1D10EB65C();
  result = sub_1D139118C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D1104B64(&qword_1EC60A930, MEMORY[0x1E69A3910]);
      result = sub_1D139006C();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D1102038()
{
  v1 = v0;
  v35 = sub_1D138D75C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1D10EBCBC();
  result = sub_1D139118C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D1104B64(&qword_1EC60A9C0, MEMORY[0x1E6969AD0]);
      result = sub_1D139006C();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D11023A0()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EB6F0(0, &qword_1EC60A958);
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D139176C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D1102600()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EBBE0();
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1D139177C();
      BrowseCategory.rawValue.getter();
      sub_1D139027C();

      v17 = *(v16 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor);
      sub_1D1390D9C();

      result = sub_1D13917CC();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D11028A8()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseCategory();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D10EBB4C();
  result = sub_1D139118C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
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
LABEL_15:
      v19 = *(v30 + 72);
      sub_1D1104D80(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for BrowseCategory);
      sub_1D139177C();
      BrowseCategory.rawValue.getter();
      sub_1D139027C();

      result = sub_1D13917CC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D1104D80(v4, *(v7 + 48) + v15 * v19, type metadata accessor for BrowseCategory);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D1102BD8(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  result = sub_1D139118C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_1D1390D7C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1D1102DF8()
{
  v1 = v0;
  v2 = type metadata accessor for UserDomainConceptViewData();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1D10EB988();
  result = sub_1D139118C();
  v6 = result;
  if (*(v4 + 16))
  {
    v22 = v0;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v23 = result + 56;
    for (i = v24; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v25 + 72);
      sub_1D1104D80(*(v4 + 48) + v17 * (v14 | (v7 << 6)), i, type metadata accessor for UserDomainConceptViewData);
      sub_1D139177C();
      UserDomainConceptViewData.hash(into:)();
      sub_1D13917CC();
      v18 = v23;
      v19 = sub_1D139106C();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1104D80(i, *(v6 + 48) + v19 * v17, type metadata accessor for UserDomainConceptViewData);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
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
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v4 + 32);
    if (v20 >= 64)
    {
      bzero((v4 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v1 = v22;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D1103088()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EB89C(0, &qword_1EC60A978, sub_1D109F238);
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D139177C();
      MEMORY[0x1D38870E0](v16);
      result = sub_1D13917CC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D11032F0(uint64_t a1, uint64_t a2)
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v4 = *(a1 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor);
  sub_1D1390D9C();

  sub_1D13917CC();
  result = sub_1D139106C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D11033E0(uint64_t a1, uint64_t a2)
{
  sub_1D1390D7C();
  result = sub_1D139106C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D1103464(unint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(__int128 *))
{
  v40 = a4;
  v26 = result;
  v27 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 72 * v15;
    v38[0] = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 16);
    v39 = *(v16 + 64);
    v38[2] = v18;
    v38[3] = v17;
    v38[1] = v19;
    v20 = *(v16 + 48);
    v35 = *(v16 + 32);
    v36 = v20;
    v37 = *(v16 + 64);
    v21 = *(v16 + 16);
    v33 = *v16;
    v34 = v21;
    sub_1D1082914(v38, &v28);
    v22 = v40(&v33);
    if (v4)
    {
      v30 = v35;
      v31 = v36;
      v32 = v37;
      v28 = v33;
      v29 = v34;
      return sub_1D1080D98(&v28);
    }

    v23 = v22;
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v28 = v33;
    v29 = v34;
    result = sub_1D1080D98(&v28);
    if (v23)
    {
      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1D1103848(v26, a2, v27, a3);
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
      goto LABEL_16;
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

void sub_1D110364C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_1D1103C40(a1, a2, v20, a3);
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

void *sub_1D11037B8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_1D110364C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_1D1103848(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1D10EB89C(0, &qword_1EC60A960, sub_1D109D220);
  v9 = sub_1D13911AC();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v40 = a4;
  v41 = v9 + 56;
  result = a4;
  if (!v10)
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
        goto LABEL_43;
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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v16 = *(result + 48) + 72 * (v13 | (v11 << 6));
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = *(v16 + 48);
    v47 = *(v16 + 64);
    v45 = v18;
    v46 = v19;
    v43 = *v16;
    v44 = v17;
    sub_1D139177C();
    v20 = *(&v44 + 1);
    MEMORY[0x1D38870E0](v43);
    sub_1D1082914(&v43, v42);
    sub_1D1390D9C();
    sub_1D139179C();
    if (v20)
    {
      sub_1D139027C();
    }

    v21 = v46;
    sub_1D139027C();
    if (v21 >> 62)
    {
      v38 = sub_1D13910DC();
      MEMORY[0x1D38870E0](v38);
      result = sub_1D13910DC();
      v22 = result;
      if (!result)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = MEMORY[0x1D38870E0](*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_26;
      }
    }

    if (v22 < 1)
    {
      goto LABEL_47;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v22; ++i)
      {
        MEMORY[0x1D3886B70](i, v21);
        sub_1D1390D9C();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v24 = (v21 + 32);
      do
      {
        v25 = *v24++;
        v26 = v25;
        sub_1D1390D9C();

        --v22;
      }

      while (v22);
    }

LABEL_26:
    v27 = *(&v46 + 1);
    if (*(&v46 + 1) >> 62)
    {
      v39 = sub_1D13910DC();
      MEMORY[0x1D38870E0](v39);
      result = sub_1D13910DC();
      v28 = result;
      if (!result)
      {
        goto LABEL_35;
      }
    }

    else
    {
      result = MEMORY[0x1D38870E0](*((*(&v46 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10));
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_35;
      }
    }

    if (v28 < 1)
    {
      goto LABEL_48;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v28; ++j)
      {
        MEMORY[0x1D3886B70](j, v27);
        sub_1D1390D9C();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v30 = (v27 + 32);
      do
      {
        v31 = *v30++;
        v32 = v31;
        sub_1D1390D9C();

        --v28;
      }

      while (v28);
    }

LABEL_35:
    sub_1D1390D9C();
    sub_1D13917CC();
    result = sub_1D139106C();
    *(v41 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v33 = *(v5 + 48) + 72 * result;
    *v33 = v43;
    v34 = v44;
    v35 = v45;
    v36 = v46;
    *(v33 + 64) = v47;
    *(v33 + 32) = v35;
    *(v33 + 48) = v36;
    *(v33 + 16) = v34;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_46;
    }

    if (!v4)
    {
      break;
    }

    result = v40;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

LABEL_43:

  return v5;
}

uint64_t sub_1D1103C40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D1104E88();
  result = sub_1D13911AC();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1D1390D7C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1D1103E28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1D138ED5C();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1D10EB65C();
  result = sub_1D13911AC();
  v10 = result;
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
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D1104B64(&qword_1EC60A930, MEMORY[0x1E69A3910]);
    result = sub_1D139006C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
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
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_1D1104144(uint64_t a1, uint64_t a2)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D13910DC();
    result = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      return result;
    }

    v30 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    result = sub_1D139107C();
    v27 = result;
    v28 = v5;
    v29 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return result;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1D13912DC();
  result = sub_1D139104C();
  v6 = *(a1 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v3)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v27;
    v10 = v28;
    v12 = v29;
    sub_1D12D39A4(v27, v28, v29, a1);
    v14 = v13;
    [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v13 predicate:a2];

    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    result = sub_1D13912BC();
    if (v24)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_1D139109C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1D1104F70();
      v8 = sub_1D13906EC();
      sub_1D139113C();
      result = v8(v26, 0);
      if (v7 == v3)
      {
LABEL_28:
        sub_1D1105004(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v11 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v11 >> 6;
      v17 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v17 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v11 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1D1105004(v11, v10, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1D1105004(v11, v10, 0);
      }

LABEL_27:
      v27 = v15;
      v28 = v10;
      v29 = 0;
      if (v7 == v3)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1D1104470()
{
  result = qword_1EC60AD80;
  if (!qword_1EC60AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AD80);
  }

  return result;
}

void sub_1D11044D4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D10FAA88(255, a3);
    v4 = sub_1D13915DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1104534()
{
  if (!qword_1EE06A508)
  {
    sub_1D106F934(255, &qword_1EE06A630);
    sub_1D109D274(&qword_1EE06A628, &qword_1EE06A630);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A508);
    }
  }
}

void sub_1D11045C8()
{
  if (!qword_1EC60A948)
  {
    sub_1D106F934(255, &qword_1EC609A00);
    sub_1D109D274(&qword_1EC60A950, &qword_1EC609A00);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A948);
    }
  }
}

void sub_1D110465C()
{
  if (!qword_1EC60AD90)
  {
    sub_1D1105010(255, &qword_1EE06B0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AD90);
    }
  }
}

void sub_1D11046D8()
{
  if (!qword_1EC60ADA8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60ADA8);
    }
  }
}

void sub_1D1104738()
{
  if (!qword_1EC60ADC8)
  {
    sub_1D1105010(255, &qword_1EC60ABF8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    sub_1D10FAA88(255, &qword_1EC60ADD0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC60ADC8);
    }
  }
}

void sub_1D11047E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D1105010(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D1104864(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D11047E8(255, a3, a4, a5);
    v6 = sub_1D13915DC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D11048C0()
{
  if (!qword_1EC60AE58)
  {
    sub_1D1095090(255, &qword_1EC609C88);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AE58);
    }
  }
}

void sub_1D1104928()
{
  if (!qword_1EC60AE60)
  {
    sub_1D1095090(255, &qword_1EC60AE68);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AE60);
    }
  }
}

void sub_1D1104990()
{
  if (!qword_1EC60AE70)
  {
    sub_1D1095090(255, &qword_1EC60AE78);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AE70);
    }
  }
}

void sub_1D11049F8()
{
  if (!qword_1EC60AE80)
  {
    sub_1D1095090(255, &qword_1EC609D10);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AE80);
    }
  }
}

void sub_1D1104A60()
{
  if (!qword_1EC60AE88)
  {
    sub_1D1095090(255, &qword_1EC60AE90);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AE88);
    }
  }
}

void sub_1D1104AC8()
{
  if (!qword_1EC60AEC8)
  {
    sub_1D1104CB4(255, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60AEC8);
    }
  }
}

uint64_t sub_1D1104B64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1104BB4()
{
  if (!qword_1EC60AEF0)
  {
    type metadata accessor for BrowseCategory();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60AEF0);
    }
  }
}

void sub_1D1104C20()
{
  if (!qword_1EC60A980)
  {
    sub_1D106F934(255, &qword_1EE06B6C0);
    sub_1D109D274(&qword_1EE06B0C8, &qword_1EE06B6C0);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A980);
    }
  }
}

void sub_1D1104CB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1104D18()
{
  if (!qword_1EE06B4D0)
  {
    type metadata accessor for BrowseCategory();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06B4D0);
    }
  }
}

uint64_t sub_1D1104D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1104DE8()
{
  if (!qword_1EC60A9B0)
  {
    sub_1D106F934(255, &qword_1EC60A9A8);
    sub_1D109D274(&qword_1EC60A9B8, &qword_1EC60A9A8);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A9B0);
    }
  }
}

void sub_1D1104E7C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1D1104E88()
{
  if (!qword_1EE069520)
  {
    sub_1D106F934(255, &qword_1EE06B780);
    sub_1D109D274(&qword_1EE06B778, &qword_1EE06B780);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE069520);
    }
  }
}

unint64_t sub_1D1104F1C()
{
  result = qword_1EC60AEF8;
  if (!qword_1EC60AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AEF8);
  }

  return result;
}

void sub_1D1104F70()
{
  if (!qword_1EC60AF00)
  {
    sub_1D106F934(255, &qword_1EE06B780);
    sub_1D109D274(&qword_1EE06B778, &qword_1EE06B780);
    v0 = sub_1D13906FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AF00);
    }
  }
}

uint64_t sub_1D1105004(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D1105010(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1D1105078()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  v2 = v0;
  [v2 setBackgroundColor_];
  [v2 setOpaque_];

  [v2 setNumberOfLines_];
  [v2 setTextAlignment_];
  [v2 setLineBreakMode_];
  v3 = [objc_opt_self() boldSystemFontOfSize_];
  [v2 setFont_];

  return v2;
}

char *sub_1D110519C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressIndicator;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v7 = [objc_opt_self() whiteColor];
  [v6 setColor_];

  *&v2[v5] = v6;
  v8 = OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressMessageLabel;
  *&v2[v8] = sub_1D1105078();
  v9 = OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_backgroundEffect;
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v2[v9] = v11;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_fontSize] = 0x4038000000000000;
  v12 = &v2[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_text];
  *v12 = a1;
  *(v12 + 1) = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ProgressHUD();
  v13 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v13 setOpaque_];
  [v13 setNeedsDisplayOnBoundsChange_];
  v14 = *&v13[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_backgroundEffect];
  [v14 setAutoresizingMask_];
  [v13 bounds];
  [v14 setFrame_];
  [v13 addSubview_];
  [v13 addSubview_];
  [v13 addSubview_];
  sub_1D1390C8C();

  return v13;
}

id sub_1D11053F0()
{
  result = [v0 superview];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [objc_opt_self() defaultSizeForStyle_];
    v58.origin.x = v4;
    v58.origin.y = v6;
    v58.size.width = v8;
    v58.size.height = v10;
    v59 = CGRectInset(v58, 20.0, 20.0);
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    [v0 frame];
    v57 = 0.0;
    if (*&v0[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_text + 8])
    {
      v53 = v15;
      v16 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressMessageLabel];

      v17 = [v16 font];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1D139012C();

        sub_1D106F7BC();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D139E700;
        v21 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        *(inited + 64) = sub_1D11059C8();
        *(inited + 40) = v18;
        v22 = v21;
        v23 = v18;
        sub_1D109B2B4(inited);
        swift_setDeallocating();
        sub_1D106F880(inited + 32);
        type metadata accessor for Key(0);
        sub_1D106F8DC();
        v24 = sub_1D138FFEC();

        [v19 sizeWithAttributes_];
        v26 = v25;
        v28 = v27;

        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v57 = v26;
        CGRectGetWidth(v60);
        v61.origin.x = x;
        v61.origin.y = y;
        v61.size.width = width;
        v61.size.height = height;
        CGRectGetHeight(v61);

        v56 = v28;
      }

      else
      {

        v56 = 0.0;
      }
    }

    else
    {
      v56 = 0.0;
    }

    UIRectCenteredIntegralRect();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [v0 setFrame_];
    v37 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressIndicator];
    [v37 frame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v55 = v30;
    v62.origin.x = v30;
    v62.origin.y = v32;
    v62.size.width = v34;
    v62.size.height = v36;
    v46 = CGRectGetWidth(v62);
    v63.origin.x = v39;
    v63.origin.y = v41;
    v63.size.width = v43;
    v63.size.height = v45;
    v47 = CGRectGetWidth(v63);
    v48 = CGRound((v46 - v47) * 0.5);
    [v37 setFrame_];
    if (v57 == 0.0 && v56 == 0.0)
    {
      return [*&v0[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressMessageLabel] setFrame_];
    }

    else
    {
      v64.origin.x = v55;
      v64.origin.y = v32;
      v64.size.width = v34;
      v64.size.height = v36;
      v49 = CGRectGetWidth(v64);
      v54 = CGRound((v49 - v57) * 0.5);
      v65.origin.y = 26.0;
      v65.origin.x = v48;
      v65.size.width = v43;
      v65.size.height = v45;
      v50 = CGRectGetHeight(v65);
      v66.origin.x = v55;
      v66.origin.y = v32;
      v66.size.width = v34;
      v66.size.height = v36;
      v51 = CGRectGetWidth(v66) + -20.0;
      if (v51 >= v57)
      {
        v52 = v57;
      }

      else
      {
        v52 = v51;
      }

      return [*&v0[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressMessageLabel] setFrame_];
    }
  }

  return result;
}

id sub_1D11058F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressHUD();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D11059C8()
{
  result = qword_1EC60E670;
  if (!qword_1EC60E670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60E670);
  }

  return result;
}

void sub_1D1105A14()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressIndicator;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setColor_];

  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressMessageLabel;
  *(v0 + v4) = sub_1D1105078();
  v5 = OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_backgroundEffect;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v0 + v5) = v7;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_fontSize) = 0x4038000000000000;
  v8 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_text);
  *v8 = 0;
  v8[1] = 0;
  sub_1D13913BC();
  __break(1u);
}

id sub_1D1105B98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConditionRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1105C00(uint64_t a1)
{
  result = sub_1D1105C28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1105C28()
{
  result = qword_1EC60AF48;
  if (!qword_1EC60AF48)
  {
    type metadata accessor for ConditionRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AF48);
  }

  return result;
}

id sub_1D1105CAC(void *a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a2();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v8 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v9 = sub_1D139012C();

    [v8 setTitle_];

    v10 = sub_1D139012C();

    [v8 setSubtitle_];

    [v8 setSeparatorStyle_];
    [v8 setSeparatorHidden_];
    [v8 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v8;
}

id sub_1D1105E68(void *a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a2();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v8 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v9 = sub_1D139012C();

    [v8 setTitle_];

    v10 = sub_1D139012C();

    [v8 setSubtitle_];

    [v8 setSeparatorStyle_];
    [v8 setSeparatorHidden_];
    [v8 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v8;
}

id sub_1D1106024(void *a1)
{
  v1 = [a1 categories];
  sub_1D106F934(0, &qword_1EC609980);
  v2 = sub_1D139045C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_1D13910DC();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3886B70](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 localizedPreferredName];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = v9;
    v11 = sub_1D139016C();
    v24 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D10F7284(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_1D10F7284((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v24;
  }

  while (v4 != v3);
LABEL_23:

  v16 = Array<A>.newlineJoined.getter(v5);
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v20 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v21 = sub_1D139012C();

    [v20 setTitle_];

    v22 = sub_1D139012C();

    [v20 setSubtitle_];

    [v20 setSeparatorStyle_];
    [v20 setSeparatorHidden_];
    [v20 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v20;
}

id sub_1D1106378(void *a1)
{
  v1 = [a1 severity];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 localizedPreferredName];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1D1106588(void *a1)
{
  sub_1D1107C14(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v79 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v79 - v11;
  result = [a1 onset];
  if (result)
  {
    v14 = result;
    if ([result valueType] == 3)
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v84 = sub_1D138D1CC();
      v86 = v15;
      v16 = [v14 medicalDateIntervalValue];
      v83 = sub_1D106F934(0, &qword_1EC609BE8);
      v17 = v16;
      v18 = [v17 startDate];
      v19 = [v17 endDate];
      v85 = v17;

      v20 = [a1 meaningfulDateTitle];
      v82 = sub_1D139016C();
      v22 = v21;

      if (!v18)
      {
        if (v19)
        {
          v55 = v19;
          v56 = v86;

          v57 = sub_1D11EDE68(v84, v56, v19, v82, v22);
          v58 = v57;

          if (v57)
          {
          }

          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (v19)
      {
        v80 = v22;
        v23 = v19;
        v24 = v18;
        v81 = v23;
        v25 = [v23 dateForUTC];
        sub_1D138D52C();

        v26 = [v24 dateForUTC];
        sub_1D138D52C();

        sub_1D138D4CC();
        v28 = v27;
        v29 = *(v6 + 8);
        v29(v8, v5);
        v29(v12, v5);
        if (v28 > COERCE_DOUBLE(1))
        {

          v82 = "ETAIL_TITLE_RELEASED";
          v30 = sub_1D138D67C();
          (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
          if (qword_1EC608CB0 != -1)
          {
            swift_once();
          }

          v80 = qword_1EC60C070;
          sub_1D1107C14(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D139E710;
          v83 = v24;
          v32 = [v24 displayString];
          v33 = sub_1D139016C();
          v35 = v34;

          v36 = MEMORY[0x1E69E6158];
          *(v31 + 56) = MEMORY[0x1E69E6158];
          v37 = sub_1D1089930();
          *(v31 + 64) = v37;
          *(v31 + 32) = v33;
          *(v31 + 40) = v35;
          v38 = [v81 displayString];
          v39 = sub_1D139016C();
          v41 = v40;

          *(v31 + 96) = v36;
          *(v31 + 104) = v37;
          *(v31 + 72) = v39;
          *(v31 + 80) = v41;
          v42 = sub_1D138D1CC();
          v44 = v43;
          if (*(v31 + 16))
          {
            v42 = sub_1D139019C();
            v46 = v45;

            sub_1D10CD608(v4);
            v44 = v46;
          }

          else
          {
            sub_1D10CD608(v4);
          }

          v73 = HIBYTE(v44) & 0xF;
          if ((v44 & 0x2000000000000000) == 0)
          {
            v73 = v42 & 0xFFFFFFFFFFFFLL;
          }

          v74 = v81;
          v75 = v83;
          if (v73)
          {
            v76 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
            [v76 setDisplayItemType_];

            v77 = sub_1D139012C();

            [v76 setTitle_];

            v78 = sub_1D139012C();

            [v76 setSubtitle_];

            [v76 setSeparatorStyle_];
            [v76 setSeparatorHidden_];
            [v76 setExtraTopPadding_];

            v57 = v76;
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v71 = v86;

        v72 = v24;
        v69 = sub_1D11EDE68(v84, v71, v18, v82, v80);
        v70 = v69;

        v68 = v81;
      }

      else
      {
        v66 = v18;
        v67 = v86;

        v68 = v66;
        v69 = sub_1D11EDE68(v84, v67, v18, v82, v22);
        v70 = v69;
      }

      if (v69)
      {
        v57 = v69;

LABEL_42:
        return v57;
      }

LABEL_41:
      v57 = 0;
      goto LABEL_42;
    }

    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v47 = sub_1D138D1CC();
    v49 = v48;
    v50 = [a1 meaningfulDateTitle];
    v51 = sub_1D139016C();
    v53 = v52;

    if (v47 == v51 && v49 == v53)
    {
    }

    else
    {
      v54 = sub_1D139162C();

      if (v54)
      {
      }

      else
      {
        v59 = [v14 displayString];
        if (!v59)
        {
          sub_1D139016C();
          v59 = sub_1D139012C();
        }

        v60 = sub_1D139016C();
        v62 = v61;

        v63 = HIBYTE(v62) & 0xF;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v63 = v60 & 0xFFFFFFFFFFFFLL;
        }

        if (v63)
        {
          v64 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
          [v64 setDisplayItemType_];
          v65 = sub_1D139012C();

          [v64 setTitle_];

          [v64 setSubtitle_];
          [v64 setSeparatorStyle_];
          [v64 setSeparatorHidden_];
          [v64 setExtraTopPadding_];

          return v64;
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_1D1106FBC(void *a1)
{
  sub_1D1107C14(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v79 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v79 - v11;
  result = [a1 abatement];
  if (result)
  {
    v14 = result;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v15 = sub_1D138D1CC();
    v17 = v16;
    if ([v14 valueType] == 3)
    {
      v83 = v15;
      v85 = v14;
      v86 = v17;
      v18 = [v14 medicalDateIntervalValue];
      v19 = sub_1D106F934(0, &qword_1EC609BE8);
      v20 = v18;
      v21 = [v20 startDate];
      v22 = [v20 endDate];
      v84 = v20;

      v23 = [a1 meaningfulDateTitle];
      v82 = sub_1D139016C();
      v25 = v24;

      if (v21)
      {
        if (v22)
        {
          v80 = v19;
          v26 = v22;
          v27 = v21;
          v81 = v26;
          v28 = [v26 dateForUTC];
          sub_1D138D52C();

          v29 = [v27 dateForUTC];
          sub_1D138D52C();

          sub_1D138D4CC();
          v31 = v30;
          v32 = *(v6 + 8);
          v32(v8, v5);
          v32(v12, v5);
          if (v31 > COERCE_DOUBLE(1))
          {

            v82 = "ETAIL_TITLE_RELEASED";
            v33 = sub_1D138D67C();
            (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
            if (qword_1EC608CB0 != -1)
            {
              swift_once();
            }

            v80 = qword_1EC60C070;
            sub_1D1107C14(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_1D139E710;
            v35 = [v27 displayString];
            v36 = sub_1D139016C();
            v38 = v37;

            v39 = MEMORY[0x1E69E6158];
            *(v34 + 56) = MEMORY[0x1E69E6158];
            v40 = sub_1D1089930();
            *(v34 + 64) = v40;
            *(v34 + 32) = v36;
            *(v34 + 40) = v38;
            v41 = [v81 displayString];
            v42 = sub_1D139016C();
            v44 = v43;

            *(v34 + 96) = v39;
            *(v34 + 104) = v40;
            *(v34 + 72) = v42;
            *(v34 + 80) = v44;
            v45 = sub_1D138D1CC();
            v47 = v46;
            if (*(v34 + 16))
            {
              v45 = sub_1D139019C();
              v49 = v48;

              sub_1D10CD608(v4);
              v47 = v49;
            }

            else
            {
              sub_1D10CD608(v4);
            }

            v74 = HIBYTE(v47) & 0xF;
            if ((v47 & 0x2000000000000000) == 0)
            {
              v74 = v45 & 0xFFFFFFFFFFFFLL;
            }

            v75 = v81;
            if (v74)
            {
              v76 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
              [v76 setDisplayItemType_];

              v77 = sub_1D139012C();

              [v76 setTitle_];

              v78 = sub_1D139012C();

              [v76 setSubtitle_];

              [v76 setSeparatorStyle_];
              [v76 setSeparatorHidden_];
              [v76 setExtraTopPadding_];

              v73 = v76;
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          v70 = v86;

          v71 = v27;
          v58 = sub_1D11EDE68(v83, v70, v21, v82, v25);
          v59 = v58;

          v72 = v81;
        }

        else
        {
          v67 = v21;
          v68 = v86;

          v69 = v67;
          v58 = sub_1D11EDE68(v83, v68, v21, v82, v25);
          v59 = v58;
        }
      }

      else
      {
        if (!v22)
        {

          goto LABEL_38;
        }

        v56 = v22;
        v57 = v86;

        v58 = sub_1D11EDE68(v83, v57, v22, v82, v25);
        v59 = v58;
      }

      if (v58)
      {
        v73 = v58;

LABEL_39:
        return v73;
      }

LABEL_38:
      v73 = 0;
      goto LABEL_39;
    }

    v50 = v14;
    v51 = [a1 meaningfulDateTitle];
    v52 = sub_1D139016C();
    v54 = v53;

    if (v15 == v52 && v17 == v54)
    {
    }

    else
    {
      v55 = sub_1D139162C();

      if (v55)
      {
      }

      else
      {
        v60 = [v50 displayString];
        if (!v60)
        {
          sub_1D139016C();
          v60 = sub_1D139012C();
        }

        v61 = sub_1D139016C();
        v63 = v62;

        v64 = HIBYTE(v63) & 0xF;
        if ((v63 & 0x2000000000000000) == 0)
        {
          v64 = v61 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          v65 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
          [v65 setDisplayItemType_];
          v66 = sub_1D139012C();

          [v65 setTitle_];

          [v65 setSubtitle_];
          [v65 setSeparatorStyle_];
          [v65 setSeparatorHidden_];
          [v65 setExtraTopPadding_];

          return v65;
        }
      }
    }

    return 0;
  }

  return result;
}

void *sub_1D1107980(void *a1)
{
  v1 = a1;
  v16[4] = sub_1D1105CAC(a1, sub_1D1249358);
  v16[5] = sub_1D1105E68(v1, sub_1D124935C);
  v16[6] = sub_1D1106024(v1);
  v16[7] = sub_1D1106378(v1);
  if (qword_1EE06AD00 != -1)
  {
LABEL_14:
    swift_once();
  }

  v2 = sub_1D138D1CC();
  v4 = v3;
  sub_1D106F934(0, &qword_1EC609BE8);
  v5 = [v1 recordedDate];
  v6 = [v1 meaningfulDateTitle];
  v7 = sub_1D139016C();
  v9 = v8;

  v16[8] = sub_1D11EDE68(v2, v4, v5, v7, v9);
  v16[9] = sub_1D1106588(v1);
  v16[10] = sub_1D1106FBC(v1);
  v16[11] = sub_1D1380498(v1);
  v16[12] = sub_1D1270740(v1);
  v10 = 0;
  v16[13] = sub_1D128719C(v1);
  v1 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v10 <= 0xA)
  {
    v11 = 10;
  }

  else
  {
    v11 = v10;
  }

  while (v10 != 10)
  {
    if (v11 == v10)
    {
      __break(1u);
      goto LABEL_14;
    }

    v12 = v16[v10++ + 4];
    if (v12)
    {
      v13 = v12;
      MEMORY[0x1D3885D90]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v1 = v15;
      goto LABEL_3;
    }
  }

  sub_1D10CD53C();
  swift_arrayDestroy();
  return v1;
}

void sub_1D1107C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1107C78(void *a1)
{
  v11[4] = sub_1D1106378(a1);
  v2 = 0;
  v11[5] = sub_1D1380498(a1);
  v3 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  while (v2 != 2)
  {
    v4 = v11[v2++ + 4];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1D3885D90]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v3 = v12;
    }
  }

  sub_1D10CD53C();
  swift_arrayDestroy();
  v12 = v3;
  if (v3 >> 62)
  {
    if (sub_1D13910DC() >= 2)
    {
      goto LABEL_13;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_13;
  }

  v6 = sub_1D128719C(a1);
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1D3885D90]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v3 = v12;
  }

LABEL_13:
  if (v3 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      return v3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    return v3;
  }

  v8 = sub_1D1270740(a1);
  if (v8)
  {
    v9 = v8;
    MEMORY[0x1D3885D90]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    return v12;
  }

  return v3;
}

uint64_t sub_1D1108000()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D1108060(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HRTimelineHeaderView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D11080F8;
}

void sub_1D11080F8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D11081C0()
{
  v1 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D1108280(char a1)
{
  v3 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_1D1108680();
  [v4 setHidden_];
}

void sub_1D11082EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = sub_1D1108680();
  [v5 setHidden_];
}

void (*sub_1D110835C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D11083E4;
}

void sub_1D11083E4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1D1108680();
    [v6 setHidden_];
  }

  free(v3);
}

id sub_1D1108490(uint64_t *a1, void *a2, SEL *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
LABEL_5:
    v16 = v6;
    return v7;
  }

  result = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() *a3];
    v13 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v13 setFont_];
    [v13 setNumberOfLines_];
    v14 = v12;
    [v13 setTextColor_];

    v15 = *(v4 + v5);
    *(v4 + v5) = v13;
    v7 = v13;

    v6 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1D11085D0()
{
  v1 = OBJC_IVAR___HRTimelineHeaderView____lazy_storage___backgroundEffectView;
  v2 = *(v0 + OBJC_IVAR___HRTimelineHeaderView____lazy_storage___backgroundEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRTimelineHeaderView____lazy_storage___backgroundEffectView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D1108680()
{
  v1 = OBJC_IVAR___HRTimelineHeaderView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR___HRTimelineHeaderView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HRTimelineHeaderView____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id TimelineHeaderView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1D139012C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier_];

  return v4;
}

id TimelineHeaderView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden] = 0;
  *&v2[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___backgroundEffectView] = 0;
  *&v2[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___separatorView] = 0;
  if (a2)
  {
    v4 = sub_1D139012C();
  }

  else
  {
    v4 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for TimelineHeaderView();
  v5 = objc_msgSendSuper2(&v8, sel_initWithReuseIdentifier_, v4);

  v6 = v5;
  sub_1D1108A04();

  return v6;
}

id TimelineHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TimelineHeaderView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden] = 0;
  *&v1[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___backgroundEffectView] = 0;
  *&v1[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___separatorView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TimelineHeaderView();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_1D1108A04();
  }

  return v4;
}

void sub_1D1108A04()
{
  v1 = sub_1D11085D0();
  [v1 setHidden_];

  [v0 setBackgroundView_];
  v2 = [v0 contentView];
  v3 = sub_1D1108450();
  [v2 addSubview_];

  v4 = [v0 contentView];
  v5 = sub_1D1108470();
  [v4 addSubview_];

  v6 = [v0 contentView];
  v7 = sub_1D1108680();
  [v6 addSubview_];
}

void sub_1D1108B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D1108450();
  v7 = sub_1D139012C();
  [v6 setText_];

  v8 = sub_1D1108470();
  sub_1D10940C8();
  sub_1D1390F9C();
  v9 = sub_1D139012C();

  [v8 setText_];
}

void sub_1D1108C9C(void *a1)
{
  v2 = sub_1D11085D0();
  if (a1 && (v3 = [a1 _backdropViewLayerGroupName]) != 0)
  {
    v4 = v3;
    sub_1D139016C();

    v6 = sub_1D139012C();

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  [v2 _setGroupName_];
}

void sub_1D1108E34()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TimelineHeaderView();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  [v0 setFloating_];
  v1 = OBJC_IVAR___HRTimelineHeaderView_separatorViewHidden;
  swift_beginAccess();
  v0[v1] = 0;
  v2 = sub_1D1108680();
  [v2 setHidden_];

  v3 = sub_1D11085D0();
  [v3 _setGroupName_];
}

id sub_1D1109018(char a1)
{
  v2 = a1 & 1;
  result = [v1 floating];
  if (result != v2)
  {
    v4 = sub_1D1108450();
    result = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    [v4 setFont_];

    v6 = sub_1D1108470();
    [v6 setNumberOfLines_];

    v7 = [v1 backgroundView];
    if (v7)
    {
      v8 = v7;
      [v7 setHidden_];
    }

    [v1 setNeedsLayout];
    if ([v1 floating])
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v9 = &selRef_headerViewDidBeginFloating_;
    }

    else
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v9 = &selRef_headerViewDidEndFloating_;
    }

    [result *v9];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D11091D0()
{
  v1 = sub_1D139160C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TimelineHeaderView();
  v46.receiver = v0;
  v46.super_class = v5;
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v47);
  [v0 layoutMargins];
  v8 = v7;
  [v0 layoutMargins];
  v10 = v9;
  [v0 layoutMargins];
  v12 = v11;
  v13 = sub_1D1108450();
  v14 = [v13 font];

  if (v14)
  {
    v15 = Width - v8 - v10;
    [v14 lineHeight];

    (*(v2 + 104))(v4, *MEMORY[0x1E69E7040], v1);
    v16 = [v0 traitCollection];
    sub_1D138D87C();
    v18 = v17;

    (*(v2 + 8))(v4, v1);
    [*&v0[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___titleLabel] setFrame_];
    [v0 layoutMargins];
    v20 = v19;
    v48.origin.y = 12.0;
    v48.origin.x = v12;
    v48.size.width = v15;
    v48.size.height = v18;
    MaxY = CGRectGetMaxY(v48);
    v22 = sub_1D1108470();
    [v22 sizeThatFits_];
    v24 = v23;

    [*&v0[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___subtitleLabel] setFrame_];
    v25 = [v0 traitCollection];
    [v25 displayPixel];
    v27 = v26;

    v28 = 0.0;
    if (([v0 floating] & 1) == 0)
    {
      [v0 layoutMargins];
      v28 = v29;
    }

    v49.origin.x = v20;
    v49.origin.y = MaxY;
    v49.size.width = v15;
    v49.size.height = v24;
    v30 = CGRectGetMaxY(v49);
    if ([v0 floating])
    {
      [v0 bounds];
      v15 = CGRectGetWidth(v50);
    }

    v31 = v30 + 12.0 - v27;
    v32 = sub_1D1108680();
    [v32 setFrame_];

    v33 = sub_1D11085D0();
    v34 = [v33 isHidden];

    if ((v34 & 1) == 0)
    {
      v35 = OBJC_IVAR___HRTimelineHeaderView____lazy_storage___backgroundEffectView;
      [*&v0[OBJC_IVAR___HRTimelineHeaderView____lazy_storage___backgroundEffectView] frame];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v51.origin.x = v28;
      v51.origin.y = v31;
      v51.size.width = v15;
      v51.size.height = v27;
      v44 = CGRectGetMaxY(v51);
      if (v44 >= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = v44;
      }

      [*&v0[v35] setFrame_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D11096B4(void *a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for TimelineHeaderView();
  objc_msgSendSuper2(&v25, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!v3)
  {

    goto LABEL_12;
  }

  v6 = sub_1D139016C();
  v8 = v7;
  if (v6 == sub_1D139016C() && v8 == v9)
  {

    if (a1)
    {
      goto LABEL_16;
    }

LABEL_18:
    v21 = 0.0;
    goto LABEL_19;
  }

  v11 = sub_1D139162C();

  if ((v11 & 1) == 0)
  {
LABEL_12:
    v12 = sub_1D1108450();
    v13 = objc_opt_self();
    v14 = *MEMORY[0x1E69DDC50];
    v15 = [v13 _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
    if (v15)
    {
      v16 = v15;
      [v12 setFont_];

      v17 = sub_1D1108470();
      v18 = [v13 _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
      if (v18)
      {
        v19 = v18;
        [v17 setFont_];

        [v1 setNeedsLayout];
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_15:
  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_16:
  [a1 displayScale];
  v21 = v20;
LABEL_19:
  v22 = [v1 traitCollection];
  [v22 displayScale];
  v24 = v23;

  if (!a1 || v21 != v24)
  {
    [v1 setNeedsLayout];
  }
}

id TimelineHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimelineHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id *sub_1D1109C38()
{

  return v0;
}

void sub_1D1109C88()
{
  v1 = v0;
  sub_1D139027C();
  sub_1D139027C();
  v2 = *(v0 + 32);
  if (!v2)
  {
    sub_1D139179C();
    v4 = *(v0 + 40);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1D139179C();
    return;
  }

  sub_1D139179C();
  v3 = v2;
  sub_1D1390D9C();

  v4 = *(v1 + 40);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1D139179C();
  v5 = v4;
  sub_1D1390D9C();
}

uint64_t sub_1D1109D6C()
{
  sub_1D1109C38();

  return swift_deallocClassInstance();
}

uint64_t sub_1D1109DC4()
{
  sub_1D139177C();
  sub_1D1109C88();
  return sub_1D13917CC();
}

uint64_t sub_1D1109E2C()
{
  sub_1D139177C();
  sub_1D1109C88();
  return sub_1D13917CC();
}

uint64_t sub_1D1109E6C()
{
  v1 = *(*v0 + 80);

  return v1;
}

uint64_t sub_1D1109EA0(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D139162C();
  }
}

uint64_t sub_1D1109ECC()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1D1109F00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D1109FCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TextItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D110A00C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1D3886B70](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1D13912AC();
        sub_1D13912EC();
        v4 = v15;
        sub_1D13912FC();
        sub_1D13912BC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

void *sub_1D110A1B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D13910DC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v19 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FD914(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69A3698];
      do
      {
        v7 = MEMORY[0x1D3886B70](v5, a1);
        v9 = *(v19 + 16);
        v8 = *(v19 + 24);
        if (v9 >= v8 >> 1)
        {
          v11 = v7;
          sub_1D10FD914((v8 > 1), v9 + 1, 1);
          v7 = v11;
        }

        ++v5;
        *(v19 + 16) = v9 + 1;
        v10 = v19 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
      }

      while (v2 != v5);
    }

    else
    {
      v12 = (a1 + 32);
      v13 = *(v19 + 16);
      v14 = 16 * v13;
      v15 = MEMORY[0x1E69A3698];
      do
      {
        v16 = *v12;
        v17 = *(v19 + 24);

        if (v13 >= v17 >> 1)
        {
          sub_1D10FD914((v17 > 1), v13 + 1, 1);
        }

        *(v19 + 16) = v13 + 1;
        v18 = v19 + v14;
        *(v18 + 32) = v16;
        *(v18 + 40) = v15;
        v14 += 16;
        ++v12;
        ++v13;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1D110A3E0(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1D13910DC();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FDBC4(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x1D3886B70](v11, a1);
        v22 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D10FDBC4((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_1D111695C(a3, a4);
        *&v19 = v12;
        *(v9 + 16) = v14 + 1;
        sub_1D102CC18(&v19, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_1D10FDBC4((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_1D111695C(a3, a4);
        *&v19 = v16;
        *(v9 + 16) = v18 + 1;
        sub_1D102CC18(&v19, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D110A5C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D10FDBC4(0, v1, 0);
    v2 = v19;
    v4 = a1 + 32;
    do
    {
      sub_1D1072E70(v4, v15);
      sub_1D1080EA4(0, &qword_1EC60A3D0);
      sub_1D1080EA4(0, &qword_1EC60F6A0);
      swift_dynamicCast();
      v19 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D10FDBC4((v5 > 1), v6 + 1, 1);
      }

      v7 = v17;
      v8 = v18;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x1EEE9AC00](v9);
      v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v12 + 16))(v11);
      sub_1D11151E0(v6, v11, &v19, v7, v8, sub_1D102CC18);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v2 = v19;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1D110A7BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D13910DC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FDC9C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D3886B70](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D10FDC9C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1D106F934(0, &qword_1EC60B0F8);
        v16 = &protocol witness table for HKOntologyLocalizedEducationContentSection;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1D10FDC9C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1D106F934(0, &qword_1EC60B0F8);
        v16 = &protocol witness table for HKOntologyLocalizedEducationContentSection;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D110A99C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D10FDCD4(0, v1, 0);
    v2 = v30;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[4];
      v6 = v4[6];
      v27 = v4[5];
      v28 = v6;
      v7 = v4[1];
      v22 = *v4;
      v8 = v4[2];
      v9 = v4[3];
      v23 = v7;
      v24 = v8;
      v29 = *(v4 + 14);
      v25 = v9;
      v26 = v5;
      sub_1D1116114(&v22, &v19);
      v30 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D10FDCD4((v10 > 1), v11 + 1, 1);
        v2 = v30;
      }

      v20 = &type metadata for MedicalRecordTimelineViewData;
      v21 = sub_1D1116170();
      v12 = swift_allocObject();
      v13 = v27;
      v14 = v28;
      v15 = v25;
      *(v12 + 80) = v26;
      *(v12 + 96) = v13;
      *(v12 + 112) = v14;
      v16 = v23;
      v17 = v24;
      *(v12 + 16) = v22;
      *(v12 + 32) = v16;
      *&v19 = v12;
      *(v12 + 128) = v29;
      *(v12 + 48) = v17;
      *(v12 + 64) = v15;
      *(v2 + 16) = v11 + 1;
      sub_1D102CC18(&v19, v2 + 40 * v11 + 32);
      v4 = (v4 + 120);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1D110AB04(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D13910DC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FDD2C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D3886B70](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D10FDD2C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1D106F934(0, &qword_1EE06B0E0);
        v16 = &protocol witness table for HKMedicalRecord;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1D10FDD2C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1D106F934(0, &qword_1EE06B0E0);
        v16 = &protocol witness table for HKMedicalRecord;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D110AD74(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, uint64_t a4, void (*a5)(uint64_t *, unint64_t))
{
  v22 = a4;
  v23 = a5;
  v8 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v21 = a2;
    a2(0, v12, 0);
    v13 = v25;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_1D11162B4(v14, v11, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        v21(v16 > 1, v17 + 1, 1);
        v13 = v25;
      }

      v24[3] = v8;
      v24[4] = sub_1D111695C(a3, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
      sub_1D11162B4(v11, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      *(v13 + 16) = v17 + 1;
      v23(v24, v13 + 40 * v17 + 32);
      sub_1D111631C(v11, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

void *sub_1D110B098(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D13910DC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FDECC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D3886B70](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D10FDECC((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1D106F934(0, &qword_1EC60B128);
        v16 = &protocol witness table for HKCodedValue;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1D10FDECC((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1D106F934(0, &qword_1EC60B128);
        v16 = &protocol witness table for HKCodedValue;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D110B2C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D10FDD64(0, v1, 0);
    v2 = v21;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v18 = v4[2];
      v19 = v5;
      v20 = *(v4 + 64);
      v6 = v4[1];
      v16 = *v4;
      v17 = v6;
      sub_1D1116AAC(&v16, &v13);
      v21 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D10FDD64((v7 > 1), v8 + 1, 1);
        v2 = v21;
      }

      v14 = &type metadata for RecordTitleWithSubtitleItem;
      v15 = sub_1D1116B08();
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v19;
      *(v9 + 48) = v18;
      *(v9 + 64) = v10;
      *(v9 + 80) = v20;
      v11 = v17;
      *(v9 + 16) = v16;
      *(v9 + 32) = v11;
      *(v2 + 16) = v8 + 1;
      sub_1D102CC18(&v13, v2 + 40 * v8 + 32);
      v4 = (v4 + 72);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D110B3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D10FD984(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D10FD984((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D109E39C(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1D110B4F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D13910DC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FE164(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D3886B70](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D10FE164((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1D106F934(0, &qword_1EC60B0A8);
        v16 = &protocol witness table for HKDiagnosticTestResult;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1D10FE164((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1D106F934(0, &qword_1EC60B0A8);
        v16 = &protocol witness table for HKDiagnosticTestResult;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1D110B6D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D13910DC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FDD2C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D3886B70](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D10FDD2C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1D106F934(0, &qword_1EC60B0A8);
        v16 = &protocol witness table for HKMedicalRecord;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1D10FDD2C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1D106F934(0, &qword_1EC60B0A8);
        v16 = &protocol witness table for HKMedicalRecord;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1D102CC18(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D110B900(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v4 = 0;
    v30 = v2 & 0xFFFFFFFFFFFFFF8;
    v31 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v28 = i;
    v29 = v2 + 32;
    v27 = v2;
    while (1)
    {
      if (v31)
      {
        v6 = MEMORY[0x1D3886B70](v4, v2);
      }

      else
      {
        if (v4 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        v6 = *(v29 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4, 1);
      v9 = v4 + 1;
      if (v8)
      {
        break;
      }

      v37 = v6;
      sub_1D110EC7C(&v37, &v36);
      if (v1)
      {
        goto LABEL_40;
      }

      v10 = v36;
      v11 = v36 >> 62;
      if (v36 >> 62)
      {
        v12 = sub_1D13910DC();
      }

      else
      {
        v12 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v5 >> 62;
      if (v5 >> 62)
      {
        v25 = sub_1D13910DC();
        v7 = (v25 + v12);
        if (__OFADD__(v25, v12))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v7 = (v14 + v12);
        if (__OFADD__(v14, v12))
        {
          goto LABEL_39;
        }
      }

      v33 = v9;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v13)
        {
          v15 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v7 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_1D13910DC();
        goto LABEL_21;
      }

      if (v13)
      {
        goto LABEL_20;
      }

LABEL_21:
      v5 = sub_1D139122C();
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v34 = v12;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v18 = sub_1D13910DC();
        if (!v18)
        {
LABEL_4:

          if (v34 > 0)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v34)
      {
        goto LABEL_44;
      }

      v32 = v5;
      v2 = v15 + 8 * v16 + 32;
      if (v11)
      {
        if (v18 < 1)
        {
          goto LABEL_46;
        }

        sub_1D1115AFC(0, &qword_1EC60B178, &unk_1EC6096D0, 0x1E696C510, MEMORY[0x1E69E62F8]);
        sub_1D1116D70();
        for (j = 0; j != v18; ++j)
        {
          v20 = sub_1D1112FB8(v35, j, v10);
          v22 = *v21;
          (v20)(v35, 0);
          *(v2 + 8 * j) = v22;
        }
      }

      else
      {
        sub_1D106F934(0, &unk_1EC6096D0);
        swift_arrayInitWithCopy();
      }

      v5 = v32;
      v2 = v27;
      if (v34 >= 1)
      {
        v23 = *(v15 + 16);
        v8 = __OFADD__(v23, v34);
        v24 = v23 + v34;
        if (v8)
        {
          goto LABEL_45;
        }

        *(v15 + 16) = v24;
      }

LABEL_5:
      v4 = v33;
      if (v33 == v28)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D110BC7C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v3 = 0;
    v33 = v1 & 0xFFFFFFFFFFFFFF8;
    v34 = v1 & 0xC000000000000001;
    v32 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    v29 = i;
    v30 = v1;
    while (1)
    {
      if (v34)
      {
        v5 = MEMORY[0x1D3886B70](v3, v1);
      }

      else
      {
        if (v3 >= *(v33 + 16))
        {
          goto LABEL_40;
        }

        v5 = *(v32 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *&v5[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets];

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1D13910DC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v4 >> 62;
      if (v4 >> 62)
      {
        v27 = sub_1D13910DC();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_38;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v11)
        {
          v14 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1D13910DC();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      v4 = sub_1D139122C();
      v14 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v36 = v4;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v9)
      {
        v18 = v14;
        v19 = sub_1D13910DC();
        v14 = v18;
        v17 = v19;
        if (v19)
        {
LABEL_25:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_42;
          }

          v20 = v14 + 8 * v15 + 32;
          v31 = v14;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_44;
            }

            sub_1D1115AFC(0, &qword_1EC60B138, &qword_1EC60D440, 0x1E696BFB0, MEMORY[0x1E69E62F8]);
            sub_1D1116B5C();
            for (j = 0; j != v17; ++j)
            {
              v22 = sub_1D1112FB8(v35, j, v8);
              v24 = *v23;
              (v22)(v35, 0);
              *(v20 + 8 * j) = v24;
            }
          }

          else
          {
            sub_1D106F934(0, &qword_1EC60D440);
            swift_arrayInitWithCopy();
          }

          i = v29;
          v1 = v30;
          v4 = v36;
          if (v10 >= 1)
          {
            v25 = *(v31 + 16);
            v7 = __OFADD__(v25, v10);
            v26 = v25 + v10;
            if (v7)
            {
              goto LABEL_43;
            }

            *(v31 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_25;
        }
      }

      v4 = v36;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v3 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D110BFD8(unint64_t a1, uint64_t (*a2)(void))
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v4 = 0;
    v34 = v2 & 0xFFFFFFFFFFFFFF8;
    v35 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v33 = v2 + 32;
    v30 = i;
    v31 = v2;
    while (1)
    {
      if (v35)
      {
        v6 = MEMORY[0x1D3886B70](v4, v2);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_41;
        }

        v6 = *(v33 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = a2();

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = sub_1D13910DC();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        v28 = sub_1D13910DC();
        v14 = v28 + v11;
        if (__OFADD__(v28, v11))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_39;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_1D13910DC();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = v5;
        goto LABEL_22;
      }

LABEL_21:
      v38 = sub_1D139122C();
      v15 = v38 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v10)
      {
        v19 = v15;
        v20 = sub_1D13910DC();
        v15 = v19;
        v18 = v20;
        if (v20)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v11)
          {
            goto LABEL_43;
          }

          v21 = v15 + 8 * v16 + 32;
          v32 = v15;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_45;
            }

            sub_1D1115AFC(0, &qword_1EC60B138, &qword_1EC60D440, 0x1E696BFB0, MEMORY[0x1E69E62F8]);
            sub_1D1116B5C();
            for (j = 0; j != v18; ++j)
            {
              v23 = sub_1D1112FB8(v37, j, v9);
              v25 = *v24;
              (v23)(v37, 0);
              *(v21 + 8 * j) = v25;
            }
          }

          else
          {
            sub_1D106F934(0, &qword_1EC60D440);
            swift_arrayInitWithCopy();
          }

          i = v30;
          v2 = v31;
          v5 = v38;
          if (v11 >= 1)
          {
            v26 = *(v32 + 16);
            v8 = __OFADD__(v26, v11);
            v27 = v26 + v11;
            if (v8)
            {
              goto LABEL_44;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      v5 = v38;
      if (v11 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v4 == i)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *MedicalRecordChartabilityResult.outOfRangeDataSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource);
  v2 = v1;
  return v1;
}

void *MedicalRecordChartabilityResult.noRangeDataSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource);
  v2 = v1;
  return v1;
}

BOOL sub_1D110C668()
{
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource) || *(v0 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource))
  {
    return 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_seriesDataSources);
  if (v2 >> 62)
  {
    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 > 1;
}

id MedicalRecordChartabilityResult.__allocating_init(configuration:masterDataSource:seriesDataSources:outOfRangeDataSource:noRangeDataSource:latestChartableDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_configuration] = a1;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_masterDataSource] = a2;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_seriesDataSources] = a3;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource] = a4;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource] = a5;
  sub_1D106A1D8(a6, &v13[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_latestChartableDate]);
  v16.receiver = v13;
  v16.super_class = v6;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D109AC18(a6);
  return v14;
}

id MedicalRecordChartabilityResult.init(configuration:masterDataSource:seriesDataSources:outOfRangeDataSource:noRangeDataSource:latestChartableDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_configuration] = a1;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_masterDataSource] = a2;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_seriesDataSources] = a3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource] = a4;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource] = a5;
  sub_1D106A1D8(a6, &v6[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_latestChartableDate]);
  v10.receiver = v6;
  v10.super_class = type metadata accessor for MedicalRecordChartabilityResult();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_1D109AC18(a6);
  return v8;
}

uint64_t type metadata accessor for MedicalRecordChartabilityResult()
{
  result = qword_1EC60AFD8;
  if (!qword_1EC60AFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D110CA30(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v16[3] = sub_1D106F934(0, a5);
  v16[4] = a7;
  v16[0] = a1;
  v13 = a1;
  v14 = sub_1D110AB04(a2);
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x60))(v16, v14, 1, 0, a3, a4);

  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_1D110CB48(void *a1, int a2, void *a3, int a4, void *aBlock, unint64_t *a6, int a7, uint64_t a8, uint64_t a9)
{
  v13 = _Block_copy(aBlock);
  sub_1D106F934(0, &qword_1EE06B0E0);
  v14 = sub_1D139045C();
  v19[2] = v13;
  v20[3] = sub_1D106F934(0, a6);
  v20[4] = a8;
  v20[0] = a3;
  v15 = a3;
  v16 = a1;
  v17 = sub_1D110AB04(v14);

  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x60))(v20, v17, 1, 0, a9, v19);

  _Block_release(v13);

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

void sub_1D110CC88(void *a1, char *a2, void *a3, int a4, void (*a5)(void), uint64_t a6)
{
  LODWORD(v186) = a4;
  v187 = a3;
  v188 = a2;
  v201 = *MEMORY[0x1E69E9840];
  sub_1D11161C4(0, &qword_1EE06B500, 255, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v155 - v10;
  v12 = sub_1D138D57C();
  v160 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138F0BC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v170 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v179 = &v155 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v155 - v20;
  sub_1D138F04C();
  v169 = a1;
  sub_1D1072E70(a1, &v198);
  v22 = sub_1D138F0AC();
  v23 = sub_1D13907EC();
  v24 = os_log_type_enabled(v22, v23);
  v166 = a6;
  v167 = a5;
  v162 = v12;
  v159 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v195 = v26;
    *v25 = 136446210;
    sub_1D1072E70(&v198, v197);
    sub_1D1072E70(v197, v196);
    sub_1D1080EA4(0, &qword_1EC60D3F0);
    sub_1D13916AC();
    v27 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v28 = sub_1D13901EC();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v197);
    __swift_destroy_boxed_opaque_existential_1Tm(&v198);
    v31 = sub_1D11DF718(v28, v30, &v195);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D101F000, v22, v23, "Determining chartability for concept %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1D38882F0](v26, -1, -1);
    MEMORY[0x1D38882F0](v25, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v198);
  }

  v184 = *(v15 + 1);
  (v184)(v21, v14);
  v32 = v14;
  v33 = v15;
  if (v186)
  {
    v34 = 1;
  }

  else
  {
    v34 = v187;
  }

  v35 = v169;
  v36 = v169[3];
  v37 = v169[4];
  __swift_project_boxed_opaque_existential_1Tm(v169, v36);
  if ((*(v37 + 16))(v36, v37))
  {
    v38 = type metadata accessor for BloodPressureChartConfiguration();
  }

  else
  {
    v38 = type metadata accessor for SingleValueChartConfiguration();
  }

  v39 = [objc_allocWithZone(v38) init];
  v40 = sub_1D11155E0(v188, v34);
  v41 = 0;
  v156 = v34;
  v157 = v33;
  v158 = v39;
  v42 = v40;
  type metadata accessor for MedicalRecordUnitCollector();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC8];
  v175 = v42;
  if (v42 >> 62)
  {
    goto LABEL_107;
  }

  v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v180 = v32;
  v176 = v44;
  if (v44)
  {
    if (v44 < 1)
    {
      __break(1u);
LABEL_109:
      v101 = sub_1D13910DC();
      goto LABEL_66;
    }

    v45 = 0;
    v46 = v175 & 0xC000000000000001;
    do
    {
      if (v46)
      {
        v35 = MEMORY[0x1D3886B70](v45, v175);
      }

      else
      {
        v35 = *(v175 + 8 * v45 + 32);
      }

      ++v45;
      swift_beginAccess();

      v48 = sub_1D110B900(v47);

      sub_1D12F3D48(v48);
    }

    while (v176 != v45);
  }

  v49 = sub_1D12F42DC();
  v34 = v49;
  v197[0] = MEMORY[0x1E69E7CC0];
  v168 = inited;
  v32 = v180;
  v178 = v49;
  if (v176)
  {
    v70 = 0;
    v164 = v175 & 0xFFFFFFFFFFFFFF8;
    v165 = v175 & 0xC000000000000001;
    v163 = (v175 + 32);
    v182 = v157 + 8;
    *&v50 = 138543618;
    v177 = v50;
    v172 = MEMORY[0x1E69E7CC0];
    v37 = v179;
    while (1)
    {
      while (1)
      {
        if (v165)
        {
          v174 = MEMORY[0x1D3886B70](v70, v175);
          v71 = __OFADD__(v70, 1);
          v72 = v70 + 1;
          if (v71)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if (v70 >= *(v164 + 16))
          {
            goto LABEL_106;
          }

          v174 = v163[v70];

          v71 = __OFADD__(v70, 1);
          v72 = v70 + 1;
          if (v71)
          {
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            v44 = sub_1D13910DC();
            goto LABEL_12;
          }
        }

        v171 = v72;
        v73 = v174;
        swift_beginAccess();
        v74 = *(v73 + 64);
        *&v198 = MEMORY[0x1E69E7CC0];
        v187 = (v74 & 0xFFFFFFFFFFFFFF8);
        v75 = v74 >> 62 ? sub_1D13910DC() : *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v75)
        {
          v76 = 0;
          v186 = v74 & 0xC000000000000001;
          v173 = MEMORY[0x1E69E7CC0];
          v183 = v74;
          v185 = v75;
          while (2)
          {
            v77 = v76;
            while (1)
            {
              if (v186)
              {
                v78 = MEMORY[0x1D3886B70](v77, v74);
              }

              else
              {
                if (v77 >= v187[2])
                {
                  goto LABEL_93;
                }

                v78 = *(v74 + 8 * v77 + 32);
              }

              v79 = v78;
              if (__OFADD__(v77, 1))
              {
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                v182 = sub_1D110BFD8(v172, sub_1D110F8F4);
                v183 = v75;
                v200 = 0;
                v198 = 0u;
                v199 = 0u;
                v122 = [v158 dataTransformer];
                v32 = v184;
                v123 = objc_allocWithZone(v184);
                *&v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets] = 0;
                *&v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets] = MEMORY[0x1E69E7CC8];
                v124 = v37;
                v125 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
                *&v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors] = 0;
                *&v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange] = 0;
                *&v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange] = 0;
                *&v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type] = 1;
                sub_1D11162B4(&v198, &v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining], sub_1D1115B88);
                *&v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer] = v122;
                v126 = v187;
                *&v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit] = v187;
                swift_beginAccess();
                v127 = v185;
                *&v123[v125] = v185;
                v37 = v127;
                v123[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] = 1;
                v190.receiver = v123;
                v190.super_class = v32;
                v33 = v126;
                v181 = v188;
                v128 = objc_msgSendSuper2(&v190, sel_init);
                sub_1D111631C(&v198, sub_1D1115B88);
                v129 = *((*v124 & *v128) + 0x168);
                v186 = v128;
                v129(v182);

                v75 = v183;
                v130 = sub_1D110BFD8(v172, sub_1D110FA30);
                v41 = v130;
                if (!(v130 >> 62))
                {
                  v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_96;
                }

                goto LABEL_112;
              }

              v188 = (v77 + 1);
              v196[0] = 0;
              v80 = [v78 chartableCodedQuantitySetConvertedToUnit:v34 error:v196];
              v35 = v196[0];
              if (v80)
              {
                break;
              }

              v81 = v196[0];
              v82 = sub_1D138D2BC();

              swift_willThrow();
              sub_1D138F04C();
              v83 = v79;
              v84 = v82;
              v85 = sub_1D138F0AC();
              v35 = sub_1D13907DC();

              if (os_log_type_enabled(v85, v35))
              {
                v86 = swift_slowAlloc();
                v87 = swift_slowAlloc();
                v88 = swift_slowAlloc();
                v196[0] = v88;
                *v86 = v177;
                *(v86 + 4) = v83;
                *v87 = v83;
                *(v86 + 12) = 2082;
                v194[0] = v82;
                v181 = v83;
                v89 = v82;
                sub_1D1080EA4(0, &qword_1EE06B690);
                v90 = sub_1D13901EC();
                v92 = sub_1D11DF718(v90, v91, v196);
                v37 = v179;

                *(v86 + 14) = v92;
                _os_log_impl(&dword_1D101F000, v85, v35, "Unable to convert chartable coded quantity set %{public}@: %{public}s", v86, 0x16u);
                sub_1D10B8240(v87);
                v93 = v87;
                v32 = v180;
                MEMORY[0x1D38882F0](v93, -1, -1);
                __swift_destroy_boxed_opaque_existential_1Tm(v88);
                v94 = v88;
                v34 = v178;
                MEMORY[0x1D38882F0](v94, -1, -1);
                MEMORY[0x1D38882F0](v86, -1, -1);

                (v184)(v37, v32);
              }

              else
              {

                (v184)(v37, v32);
              }

              v75 = v185;
              v41 = 0;
              ++v77;
              v74 = v183;
              if (v188 == v185)
              {
                inited = v168;
                goto LABEL_50;
              }
            }

            v95 = v196[0];

            MEMORY[0x1D3885D90]();
            if (*((v198 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v198 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D13904BC();
              v37 = v179;
            }

            sub_1D13904FC();
            v173 = v198;
            v75 = v185;
            v76 = v188;
            inited = v168;
            if (v188 != v185)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v173 = MEMORY[0x1E69E7CC0];
        }

LABEL_50:

        v33 = v173;
        if (!(v173 >> 62))
        {
          break;
        }

        if (!sub_1D13910DC())
        {
          goto LABEL_52;
        }

LABEL_59:
        v35 = v174;
        sub_1D1072E70(v174 + 16, &v198);
        v96 = v35[7];
        v97 = type metadata accessor for MedicalRecordChartableSeries();
        v98 = objc_allocWithZone(v97);
        sub_1D1072E70(&v198, &v98[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartDefining]);
        *&v98[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets] = v33;
        *&v98[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_preferredColors] = v96;
        v193.receiver = v98;
        v193.super_class = v97;
        v99 = v96;
        objc_msgSendSuper2(&v193, sel_init);

        v100 = __swift_destroy_boxed_opaque_existential_1Tm(&v198);
        MEMORY[0x1D3885D90](v100);
        if (*((v197[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        v172 = v197[0];
        v70 = v171;
        v37 = v179;
        if (v171 == v176)
        {
          goto LABEL_64;
        }
      }

      if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

LABEL_52:

      v70 = v171;
      if (v171 == v176)
      {
        goto LABEL_64;
      }
    }
  }

  v172 = MEMORY[0x1E69E7CC0];
LABEL_64:
  v37 = v172;
  v34 = v172 & 0xFFFFFFFFFFFFFF8;
  if (v172 >> 62)
  {
    goto LABEL_109;
  }

  v101 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_66:
  v102 = 0;
  v35 = 0;
  v32 = (v37 & 0xC000000000000001);
  while (v101 != v102)
  {
    if (v32)
    {
      v103 = MEMORY[0x1D3886B70](v102, v172);
      if (__OFADD__(v102, 1))
      {
        goto LABEL_102;
      }
    }

    else
    {
      if (v102 >= *(v34 + 16))
      {
        goto LABEL_103;
      }

      v103 = *(v172 + 8 * v102 + 32);
      if (__OFADD__(v102, 1))
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    v104 = *&v103[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets];
    if (v104 >> 62)
    {
      v33 = v103;
      v37 = sub_1D13910DC();
      v103 = v33;
    }

    else
    {
      v37 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v102;
    v71 = __OFADD__(v35, v37);
    v35 = (v35 + v37);
    if (v71)
    {
      goto LABEL_104;
    }
  }

  if (v35 < v156)
  {

    sub_1D1115BF0();
    v105 = swift_allocError();
    *v106 = v35;
    *(v106 + 8) = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_setDeallocating();

    v51 = v169;
    v52 = v180;
    v53 = v170;
    sub_1D138F04C();
    sub_1D1072E70(v51, &v198);
    v54 = v105;
    v55 = sub_1D138F0AC();
    v56 = sub_1D13907FC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v194[0] = v58;
      *v57 = 136446466;
      sub_1D1072E70(&v198, v197);
      sub_1D1072E70(v197, v196);
      sub_1D1080EA4(0, &qword_1EC60D3F0);
      sub_1D13916AC();
      v59 = HKSensitiveLogItem();
      v180 = v52;
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v60 = sub_1D13901EC();
      v62 = v61;
      __swift_destroy_boxed_opaque_existential_1Tm(v197);
      __swift_destroy_boxed_opaque_existential_1Tm(&v198);
      v63 = sub_1D11DF718(v60, v62, v194);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2082;
      v197[0] = v105;
      v64 = v105;
      sub_1D1080EA4(0, &qword_1EE06B690);
      v65 = sub_1D13901EC();
      v67 = sub_1D11DF718(v65, v66, v194);

      *(v57 + 14) = v67;
      _os_log_impl(&dword_1D101F000, v55, v56, "Cannot chart concept: %{public}s because: %{public}s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v58, -1, -1);
      MEMORY[0x1D38882F0](v57, -1, -1);

      v68 = v170;
      v69 = v180;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v198);
      v68 = v53;
      v69 = v52;
    }

    (v184)(v68, v69);
    v167(0);

    return;
  }

  if (v176)
  {
    v75 = v175;
    if ((v175 & 0xC000000000000001) != 0)
    {
      v107 = MEMORY[0x1D3886B70](0, v175);
    }

    else
    {
      if (!*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_112:
        v131 = sub_1D13910DC();
LABEL_96:
        v108 = v158;
        if (v131)
        {
          v200 = 0;
          v198 = 0u;
          v199 = 0u;
          v183 = [v158 dataTransformer];
          v132 = objc_allocWithZone(v32);
          *&v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets] = 0;
          *&v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets] = MEMORY[0x1E69E7CC8];
          v133 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
          *&v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors] = 0;
          *&v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange] = 0;
          *&v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange] = 0;
          *&v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type] = 2;
          sub_1D11162B4(&v198, &v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining], sub_1D1115B88);
          *&v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer] = v183;
          *&v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit] = v33;
          swift_beginAccess();
          *&v132[v133] = v37;
          v132[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] = 1;
          v189.receiver = v132;
          v189.super_class = v32;
          v108 = v158;
          v134 = v33;
          v135 = v181;
          v136 = objc_msgSendSuper2(&v189, sel_init);
          sub_1D111631C(&v198, sub_1D1115B88);
          v137 = *((*MEMORY[0x1E69E7D40] & *v136) + 0x168);
          v185 = v136;
          v137(v41);
        }

        else
        {
          v185 = 0;
        }

        v121 = v161;

        goto LABEL_100;
      }

      v107 = *(v175 + 32);
    }

    v108 = v158;

    v109 = *(v107 + 56);
    v110 = v109;
  }

  else
  {

    v109 = 0;
    v108 = v158;
  }

  sub_1D1072E70(v169, &v198);
  v111 = [v108 dataTransformer];
  v112 = type metadata accessor for MedicalRecordChartDataSource();
  v113 = objc_allocWithZone(v112);
  *&v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets] = 0;
  *&v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets] = MEMORY[0x1E69E7CC8];
  v114 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
  *&v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors] = 0;
  *&v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange] = 0;
  *&v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange] = 0;
  *&v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type] = 0;
  sub_1D11162B4(&v198, &v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining], sub_1D1115B88);
  *&v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer] = v111;
  v115 = v178;
  *&v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit] = v178;
  swift_beginAccess();
  *&v113[v114] = v109;
  v113[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] = 1;
  v192.receiver = v113;
  v192.super_class = v112;
  v184 = v112;
  v187 = v115;
  v185 = v109;
  v116 = v109;
  v35 = objc_msgSendSuper2(&v192, sel_init);
  sub_1D111631C(&v198, sub_1D1115B88);
  v75 = 0;
  v117 = sub_1D110BC7C(v172);
  v37 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v35) + 0x168))(v117);

  v118 = [v108 shouldShowOutOfRangeOverlay];
  v188 = v116;
  if (v118)
  {
    v119 = v169[3];
    v120 = v169[4];
    __swift_project_boxed_opaque_existential_1Tm(v169, v119);
    if (((*(v120 + 24))(v119, v120) & 1) == 0)
    {
      goto LABEL_94;
    }

    v185 = 0;
    v186 = 0;
    v121 = v161;
    v108 = v158;
  }

  else
  {
    v185 = 0;
    v186 = 0;
    v121 = v161;
  }

LABEL_100:
  sub_1D138D46C();

  *&v198 = sub_1D1113328(v138, sub_1D12A2F80, sub_1D111428C);
  sub_1D110FDA8(&v198, sub_1D1247E34, sub_1D110FE3C);
  if (v75)
  {

    __break(1u);
  }

  else
  {

    v139 = v198;
    v140 = v187;
    swift_unknownObjectRetain();
    v187 = v140;
    v141 = sub_1D1115288(v139, v108, v140, v121);

    swift_unknownObjectRelease();

    v142 = v159;
    v143 = v160;
    v144 = v162;
    (*(v160 + 16))(v159, v121, v162);
    (*(v143 + 56))(v142, 0, 1, v144);
    v145 = type metadata accessor for MedicalRecordChartabilityResult();
    v146 = objc_allocWithZone(v145);
    *&v146[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_configuration] = v108;
    *&v146[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_masterDataSource] = v35;
    *&v146[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_seriesDataSources] = v141;
    v147 = v35;
    v149 = v185;
    v148 = v186;
    *&v146[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource] = v186;
    *&v146[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource] = v149;
    sub_1D106A1D8(v142, &v146[OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_latestChartableDate]);
    v191.receiver = v146;
    v191.super_class = v145;
    swift_unknownObjectRetain();
    v150 = v147;
    v151 = v148;
    v152 = v149;
    v153 = objc_msgSendSuper2(&v191, sel_init);
    sub_1D109AC18(v142);
    v154 = v153;
    v167(v153);
    swift_unknownObjectRelease();

    swift_setDeallocating();

    (*(v143 + 8))(v161, v162);
  }
}