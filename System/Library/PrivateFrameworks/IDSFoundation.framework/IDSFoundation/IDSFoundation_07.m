char *sub_1A7CCDC84(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCDDAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A7CCDECC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A7CC7FFC(&qword_1EB2B4BA0);
  v10 = *(sub_1A7E21940() - 8);
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
  v15 = *(sub_1A7E21940() - 8);
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

size_t sub_1A7CCE0EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_1A7CC7FFC(a5);
  v14 = *(sub_1A7CC7FFC(a7) - 8);
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
  v19 = *(sub_1A7CC7FFC(a7) - 8);
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

void *sub_1A7CCE31C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_1A7CC7FFC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7CC7FFC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1A7CCE450(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4BC0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCE55C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4B48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A7CCE650(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A7CCE69C(a1, a2);
  sub_1A7CCE7CC(&unk_1F1AABBC0);
  return v3;
}

uint64_t sub_1A7CCE69C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A7CD5AA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A7E22BE0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A7E223D0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A7CD5AA4(v10, 0);
        result = sub_1A7E22B40();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A7CCE7CC(uint64_t result)
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

  result = sub_1A7D4E688(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

char *sub_1A7CCE8B8(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCEDB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCE8D8(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCEEBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCE8F8(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCEFC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCE918(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCF0E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCE938(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCF560(a1, a2, a3, *v3, &qword_1EB2B4C40);
  *v3 = result;
  return result;
}

void *sub_1A7CCE968(void *a1, int64_t a2, char a3)
{
  result = sub_1A7CCF208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCE988(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCF350(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCE9A8(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCF560(a1, a2, a3, *v3, &qword_1EB2B4AB8);
  *v3 = result;
  return result;
}

char *sub_1A7CCE9D8(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCF65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A7CCE9F8(void *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0A08(a1, a2, a3, *v3, &qword_1EB2B4CF8);
  *v3 = result;
  return result;
}

void *sub_1A7CCEA28(void *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0A08(a1, a2, a3, *v3, &qword_1EB2B4B08);
  *v3 = result;
  return result;
}

char *sub_1A7CCEA58(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCF8B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A7CCEA78(void *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0A08(a1, a2, a3, *v3, &qword_1EB2B4CB0);
  *v3 = result;
  return result;
}

char *sub_1A7CCEAA8(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCF9BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCEAC8(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0268(a1, a2, a3, *v3, &qword_1EB2B4CC0);
  *v3 = result;
  return result;
}

char *sub_1A7CCEB00(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCFADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCEB20(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCFBE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A7CCEB40(void *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0A08(a1, a2, a3, *v3, &qword_1EB2B4CC8);
  *v3 = result;
  return result;
}

char *sub_1A7CCEB70(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CCFD04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A7CCEB90(size_t a1, int64_t a2, char a3)
{
  result = sub_1A7CCFE38(a1, a2, a3, *v3, &qword_1EB2B4B78, &unk_1A7E41AC0, type metadata accessor for LEToolLink);
  *v3 = result;
  return result;
}

char *sub_1A7CCEBD4(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A7CCEBF4(void *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCEC14(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0268(a1, a2, a3, *v3, &qword_1EB2B4C78);
  *v3 = result;
  return result;
}

char *sub_1A7CCEC4C(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCEC6C(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD05C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCEC8C(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD06E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCECAC(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD07F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCECCC(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD08FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A7CCECEC(size_t a1, int64_t a2, char a3)
{
  result = sub_1A7CCFE38(a1, a2, a3, *v3, &qword_1EB2B4BA0, &unk_1A7E41AE8, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

void *sub_1A7CCED30(void *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0A08(a1, a2, a3, *v3, &qword_1EB2B4BF8);
  *v3 = result;
  return result;
}

void *sub_1A7CCED60(void *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0A08(a1, a2, a3, *v3, &qword_1EB2B4BF0);
  *v3 = result;
  return result;
}

char *sub_1A7CCED90(char *a1, int64_t a2, char a3)
{
  result = sub_1A7CD0B34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A7CCEDB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4BA8);
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

char *sub_1A7CCEEBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4BE8);
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

char *sub_1A7CCEFC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4D18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1A7CCF0E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4B98);
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

void *sub_1A7CCF208(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4D00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_1A7CC7FFC(&qword_1EB2B4D08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCF350(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4AD8);
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

char *sub_1A7CCF45C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4AC8);
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

char *sub_1A7CCF560(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A7CC7FFC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1A7CCF65C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4AB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A7CCF768(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4C88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7CC7FFC(&qword_1EB2B4C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCF8B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCF9BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1A7CCFADC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4CD0);
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

char *sub_1A7CCFBE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1A7CCFD04(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4CE0);
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

size_t sub_1A7CCFE38(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1A7CC7FFC(a5);
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

char *sub_1A7CD0014(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A7CD0134(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4C80);
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
    sub_1A7CC7FFC(&unk_1EB2B66C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CD0268(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A7CC7FFC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[48 * v9])
    {
      memmove(v13, v14, 48 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1A7CD0384(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4C48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A7CD0490(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4CA0);
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
    sub_1A7CC7FFC(&qword_1EB2B4CA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CD05C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1A7CD06E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4BB8);
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

char *sub_1A7CD07F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4D30);
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

char *sub_1A7CD08FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4BD8);
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

void *sub_1A7CD0A08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A7CC7FFC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7CC7FFC(&qword_1EB2B4B10);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1A7CD0B34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&qword_1EB2B4B60);
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

char *sub_1A7CD0C40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A7CC7FFC(&unk_1EB2B7C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1A7CD0D3C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A7E23200();
  sub_1A7E23220();
  sub_1A7E23220();
  sub_1A7E22350();
  MEMORY[0x1AC562B10](a4);
  v8 = sub_1A7E23240();

  return sub_1A7CD16D8(a1, a2, a3, a4, v8);
}

unint64_t sub_1A7CD0DFC(uint64_t a1)
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](a1);
  v2 = sub_1A7E23240();

  return sub_1A7CD17D4(a1, v2);
}

uint64_t sub_1A7CD0E68(uint64_t a1)
{
  v2 = type metadata accessor for LinkState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7CD0EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7CD0F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7CD0F8C()
{
  result = qword_1EB2B3088;
  if (!qword_1EB2B3088)
  {
    sub_1A7CC9830(&qword_1EB2B4AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3088);
  }

  return result;
}

__n128 sub_1A7CD10A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A7CD10CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1A7CD1114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1A7CD1178(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A7CD1184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A7CD11CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A7CD1248(uint64_t a1, uint64_t a2)
{
  sub_1A7E23200();
  sub_1A7E22350();
  v4 = sub_1A7E23240();

  return sub_1A7CD196C(a1, a2, v4);
}

unint64_t sub_1A7CD12D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A7E23200();
  sub_1A7E22350();
  MEMORY[0x1AC562AF0](a3);
  v6 = sub_1A7E23240();

  return sub_1A7CD1A24(a1, a2, a3, v6);
}

unint64_t sub_1A7CD13A4(void *a1, uint64_t *a2)
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](*a1);
  v4 = sub_1A7E23240();
  return sub_1A7CD1840(a1, v4, a2);
}

unint64_t sub_1A7CD1424(uint64_t a1, uint64_t a2)
{
  sub_1A7E23200();
  if (a2)
  {
    MEMORY[0x1AC562AF0](1);
    sub_1A7E22350();
  }

  else
  {
    MEMORY[0x1AC562AF0](0);
  }

  v4 = sub_1A7E23240();

  return sub_1A7CD1B08(a1, a2, v4);
}

unint64_t sub_1A7CD14B8(uint64_t a1)
{
  v2 = sub_1A7E231F0();

  return sub_1A7CD17D4(a1, v2);
}

unint64_t sub_1A7CD14FC(uint64_t a1)
{
  sub_1A7E21B60();
  sub_1A7CD1F68(&qword_1EB2B3038);
  v2 = sub_1A7E221C0();

  return sub_1A7CD1BD4(a1, v2);
}

unint64_t sub_1A7CD15C0(uint64_t a1)
{
  sub_1A7E23200();
  MEMORY[0x1AC562B10](a1);
  v2 = sub_1A7E23240();

  return sub_1A7CD17D4(a1, v2);
}

unint64_t sub_1A7CD162C(uint64_t a1)
{
  v2 = sub_1A7E22960();

  return sub_1A7CD1D80(a1, v2);
}

unint64_t sub_1A7CD1670(unsigned __int8 a1)
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](a1);
  v2 = sub_1A7E23240();
  return sub_1A7CD1E44(a1, v2);
}

unint64_t sub_1A7CD16D8(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = a1;
    v13 = HIBYTE(a1);
    v14 = ~v7;
    v15 = *(v5 + 48);
    do
    {
      v16 = (v15 + 32 * v8);
      if (*v16 == v12 && v16[1] == v13)
      {
        v18 = *(v16 + 3);
        v19 = *(v16 + 1) == a2 && *(v16 + 2) == a3;
        if (v19 || (sub_1A7E230D0()) && v18 == a4)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v14;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1A7CD17D4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A7CD1840(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    while (1)
    {
      sub_1A7CD1F00(*(v3 + 48) + 24 * v5, v11, a3);
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = swift_unknownObjectWeakLoadStrong();
      sub_1A7CC9970(v11, a3);
      if (!Strong)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_4;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (Strong == v9)
      {
        return v5;
      }

LABEL_5:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (!v9)
    {
      return v5;
    }

LABEL_4:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  return v5;
}

unint64_t sub_1A7CD196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A7E230D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A7CD1A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_1A7E230D0()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1A7CD1B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1A7E230D0() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1A7CD1BD4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1A7E21B60();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_1A7CD1F68(&qword_1EB2B3030);
      v17 = sub_1A7E22240();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1A7CD1D80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A7CD1EB4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A7E22970();

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

unint64_t sub_1A7CD1E44(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A7CD1EB4()
{
  result = qword_1EB2B2898;
  if (!qword_1EB2B2898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B2898);
  }

  return result;
}

uint64_t sub_1A7CD1F00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1A7CC7FFC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7CD1F68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A7E21B60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7CD203C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1A7CCEA28(0, v1, 0);
  v2 = v23;
  v22 = a1 + 64;
  result = sub_1A7E22AD0();
  v5 = result;
  v6 = 0;
  v20 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    v21 = *(*(a1 + 56) + 32 * v5);

    if (v12 >= v11 >> 1)
    {
      result = sub_1A7CCEA28((v11 > 1), v12 + 1, 1);
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 16 * v12 + 32) = v21;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v20;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v20;
      v17 = (a1 + 72 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1A7CD29F0(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1A7CD29F0(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1A7CD2264(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return sub_1A7CD23F0(a1);
}

uint64_t sub_1A7CD22FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A7CD23F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7CD2410, 0, 0);
}

uint64_t sub_1A7CD2410()
{
  v14 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v13 = MEMORY[0x1E69E7CC0];
  v3 = (*(v1 + 32))(v2);
  v4 = (*(v1 + 48))(v2);
  os_unfair_lock_lock((v1 + 80));
  v5 = *(v1 + 88);

  os_unfair_lock_unlock((v1 + 80));
  sub_1A7CC7FFC(&qword_1EB2B4B60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A7E418C0;
  *(v6 + 32) = sub_1A7CD29E8;
  *(v6 + 40) = v1;
  *(v6 + 48) = 0xD000000000000012;
  *(v6 + 56) = 0x80000001A7EADE80;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1A7CCCE10(0, v5[2] + 1, 1, v5);
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1A7CCCE10((v7 > 1), v8 + 1, 1, v5);
  }

  v9 = v0[2];
  v10 = v0[3];
  v5[2] = v8 + 1;
  v5[v8 + 4] = v6;
  EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:log:)(v9, v3, v4, v5, &v13);

  os_unfair_lock_lock((v1 + 80));
  *(v10 + 96) = v13;

  os_unfair_lock_unlock((v1 + 80));

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A7CD2620(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  os_unfair_lock_lock((v3 + 16));
  if (*(v3 + 40) == 1)
  {
    sub_1A7D85A68();
  }

  v5 = sub_1A7CD203C(v4);

  os_unfair_lock_unlock((v3 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);

      v8(a1);

      v7 += 16;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1A7CD26EC()
{

  sub_1A7CD29FC(v0 + 88);

  return swift_deallocClassInstance();
}

__n128 initializeBufferWithCopyOfBuffer for LinkQualityScore(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A7CD277C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A7CD27C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7CD2810()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A7CD2840(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E41D60;
  *(v3 + 24) = v1;

  sub_1A7D20E08(v4, &unk_1A7E44460, v3, v2);
}

void sub_1A7CD28DC()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 96);

  os_unfair_lock_unlock((v1 + 80));
  if (v2)
  {
    v4 = v2;
    v3._countAndFlagsBits = 538976288;
    v3._object = 0xE400000000000000;
    LinkEngineStateLog.log(_:indentation:)(&v4, v3);
  }
}

uint64_t sub_1A7CD2950(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return sub_1A7CD2264(a1);
}

uint64_t sub_1A7CD29F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t CLIIndented.wrapping.setter(__int128 *a1)
{
  sub_1A7B0CD6C(v1);

  return sub_1A7B14FF0(a1, v1);
}

uint64_t CLIIndented.indent.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CLIIndented.indent.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CLIIndented.init(wrapping:indent:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1A7B14FF0(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t CLIIndented.formatted(maxWidth:pad:useColors:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = v5[3];
  v11 = v5[4];
  sub_1A7CC9878(v5, v10);
  v12 = sub_1A7E22360();
  v13 = __OFSUB__(a1, v12);
  result = a1 - v12;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 16))(v28, result, a2 & 1, a3 & 1, v10, v11);
    v15 = v29;
    v16 = v30;
    sub_1A7CC9878(v28, v29);
    v17 = (*(v16 + 8))(v15, v16);
    result = sub_1A7E22360();
    v18 = v17 + result;
    if (!__OFADD__(v17, result))
    {
      v19 = v29;
      v20 = v30;
      sub_1A7CC9878(v28, v29);
      v21 = (*(v20 + 16))(v19, v20);
      v22 = v29;
      v23 = v30;
      sub_1A7CC9878(v28, v29);
      v24 = (*(v23 + 24))(v22, v23);
      MEMORY[0x1EEE9AC00](v24, v25);
      v27[2] = v5;
      v26 = sub_1A7DDEC24(sub_1A7CD2DA4, v27, v24);

      a4[3] = &type metadata for CLIFormattedText;
      a4[4] = &protocol witness table for CLIFormattedText;
      *a4 = v18;
      a4[1] = v21;
      a4[2] = v26;
      return sub_1A7B0CD6C(v28);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7CD2D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);

  result = MEMORY[0x1AC561C90](v4, v5);
  *a3 = v7;
  a3[1] = v8;
  return result;
}

unint64_t sub_1A7CD2DC8(uint64_t a1)
{
  result = sub_1A7CD2DF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A7CD2DF0()
{
  result = qword_1EB2B4D40;
  if (!qword_1EB2B4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4D40);
  }

  return result;
}

__n128 sub_1A7CD2E48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A7CD2E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CD2EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LinkProtocolID.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static LinkProtocolID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A7E230D0();
  }
}

uint64_t sub_1A7CD2FFC()
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](0);
  return sub_1A7E23240();
}

uint64_t sub_1A7CD3040()
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](0);
  return sub_1A7E23240();
}

uint64_t sub_1A7CD308C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7CD3118(uint64_t a1)
{
  v2 = sub_1A7CD32CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD3154(uint64_t a1)
{
  v2 = sub_1A7CD32CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkProtocolID.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4D48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CD32CC();
  sub_1A7E23260();
  sub_1A7E22FF0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1A7CD32CC()
{
  result = qword_1EB2B4D50;
  if (!qword_1EB2B4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4D50);
  }

  return result;
}

uint64_t LinkProtocolID.hashValue.getter()
{
  sub_1A7E23200();
  sub_1A7E22350();
  return sub_1A7E23240();
}

uint64_t LinkProtocolID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B4D58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CD32CC();
  sub_1A7E23250();
  if (!v2)
  {
    v10 = sub_1A7E22EF0();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7CD34E8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A7E230D0();
  }
}

uint64_t sub_1A7CD3518()
{
  sub_1A7E23200();
  sub_1A7E22350();
  return sub_1A7E23240();
}

uint64_t sub_1A7CD356C()
{
  sub_1A7E23200();
  sub_1A7E22350();
  return sub_1A7E23240();
}

unint64_t sub_1A7CD35B8()
{
  result = qword_1EB2B4D60;
  if (!qword_1EB2B4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4D60);
  }

  return result;
}

uint64_t sub_1A7CD360C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A7CD3654(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4D48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CD32CC();
  sub_1A7E23260();
  sub_1A7E22FF0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A7CD3790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A7CD37D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkProtocolID.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LinkProtocolID.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1A7CD3910()
{
  result = qword_1EB2B4D68;
  if (!qword_1EB2B4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4D68);
  }

  return result;
}

unint64_t sub_1A7CD3968()
{
  result = qword_1EB2B4D70;
  if (!qword_1EB2B4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4D70);
  }

  return result;
}

unint64_t sub_1A7CD39C0()
{
  result = qword_1EB2B4D78;
  if (!qword_1EB2B4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4D78);
  }

  return result;
}

uint64_t sub_1A7CD3A7C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t IDSLinksQualityReportDeltaObject.delta.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1A7CD3B24(v4);
}

uint64_t sub_1A7CD3B24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t IDSLinksQualityReportDeltaObject.delta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta);
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  return sub_1A7CD3BC0(v5);
}

uint64_t sub_1A7CD3BC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t IDSLinksQualityReportDeltaObject.syncToken.getter()
{
  v1 = OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = objc_allocWithZone(IDSLinksQualityReportSyncTokenObject);

    v5 = [v4 init];
    v6 = OBJC_IVAR___IDSLinksQualityReportSyncTokenObject_syncToken;
    swift_beginAccess();
    *&v5[v6] = v3;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IDSLinksQualityReportDeltaObject.json()()
{
  if (qword_1EB2B46F8 != -1)
  {
    swift_once();
  }

  v1 = (v0 + OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta);
  swift_beginAccess();
  v4 = *v1;
  sub_1A7CD3B24(*v1);
  sub_1A7CC7FFC(&qword_1EB2B4D98);
  sub_1A7CD42F8();
  v2 = sub_1A7E215E0();
  sub_1A7CD3BC0(v4);
  return v2;
}

void __swiftcall IDSLinksQualityReportDeltaObject.init()(IDSLinksQualityReportDeltaObject *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IDSLinksQualityReportDeltaObject.init()()
{
  v1 = (v0 + OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta);
  *v1 = 0;
  v1[1] = 0;
  v3.super_class = IDSLinksQualityReportDeltaObject;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_1A7CD41DC()
{
  v1 = v0;
  if (qword_1EB2B4700 != -1)
  {
    swift_once();
  }

  sub_1A7CD441C();
  sub_1A7E21590();
  if (!v0)
  {
    v2 = [objc_allocWithZone(IDSLinksQualityReportDeltaObject) init];
    v3 = &v2[OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta];
    swift_beginAccess();
    v4 = *v3;
    *v3 = v6;
    v3[1] = v7;
    v1 = v2;
    sub_1A7CD3BC0(v4);
  }

  return v1;
}

unint64_t sub_1A7CD42F8()
{
  result = qword_1EB2B4DA0;
  if (!qword_1EB2B4DA0)
  {
    sub_1A7CC9830(&qword_1EB2B4D98);
    sub_1A7CD437C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4DA0);
  }

  return result;
}

unint64_t sub_1A7CD437C()
{
  result = qword_1EB2B4DA8;
  if (!qword_1EB2B4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4DA8);
  }

  return result;
}

unint64_t type metadata accessor for IDSLinksQualityReportDeltaObject()
{
  result = qword_1EB2B4DB0;
  if (!qword_1EB2B4DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B4DB0);
  }

  return result;
}

unint64_t sub_1A7CD441C()
{
  result = qword_1EB2B4DB8;
  if (!qword_1EB2B4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4DB8);
  }

  return result;
}

uint64_t IDSSendReason.reason.getter()
{
  v1 = OBJC_IVAR___IDSSendReason_reason;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IDSSendReason.subreason.getter()
{
  v1 = OBJC_IVAR___IDSSendReason_subreason;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IDSSendReason.pathID.getter()
{
  v1 = (v0 + OBJC_IVAR___IDSSendReason_pathID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1A7CD4770(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 pathID];
  v4 = sub_1A7E22290();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1A7CD47C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___IDSSendReason_reason] = a1;
  *&v3[OBJC_IVAR___IDSSendReason_subreason] = a2;
  v9 = 7562345;
  v10 = 0xE300000000000000;
  v8 = a3;
  v4 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v4);

  v5 = &v3[OBJC_IVAR___IDSSendReason_pathID];
  *v5 = 7562345;
  *(v5 + 1) = 0xE300000000000000;
  v7.receiver = v3;
  v7.super_class = IDSSendReason;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t IDSSendReason.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1A7CD4AAC(a1, v16);
  if (!v17)
  {
    sub_1A7CD4B1C(v16);
    goto LABEL_10;
  }

  type metadata accessor for IDSSendReason(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  v3 = [v1 reason];
  if (v3 != [v15 reason] || (v4 = objc_msgSend(v1, sel_subreason), v4 != objc_msgSend(v15, sel_subreason)))
  {

    goto LABEL_10;
  }

  v5 = [v1 pathID];
  v6 = sub_1A7E22290();
  v8 = v7;

  v9 = [v15 pathID];
  v10 = sub_1A7E22290();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A7E230D0();
  }

  return v13 & 1;
}

uint64_t sub_1A7CD4AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7CD4B1C(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&unk_1EB2B7C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A7CD4DC0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 reasons];
  type metadata accessor for IDSSendReason(v3);
  v4 = sub_1A7E22530();

  *a2 = v4;
}

void sub_1A7CD4E20(uint64_t a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for IDSSendReason(a1);
  v3 = sub_1A7E22520();
  [v2 setReasons_];
}

id sub_1A7CD5004(void *a1)
{
  v3 = [v1 reasons];
  type metadata accessor for IDSSendReason(v3);
  v4 = sub_1A7E22530();

  sub_1A7CC7FFC(&qword_1EB2B4A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418E0;
  *(inited + 32) = a1;
  v6 = a1;
  sub_1A7DDF064(inited);
  v7 = objc_allocWithZone(IDSSendReasonContainer);
  v8 = sub_1A7E22520();

  v9 = [v7 initWithReasons_];

  return v9;
}

unint64_t sub_1A7CD5164(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1A7E22460() != a1 || v9 != a2)
  {
    v10 = sub_1A7E230D0();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1A7E22370();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1A7CD5308()
{
  v1 = &off_1E77E4000;
  v2 = [v0 reasons];
  type metadata accessor for IDSSendReason(v2);
  v3 = sub_1A7E22530();

  v40 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A7E22DA0())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v6 = 0;
      v1 = (v3 & 0xC000000000000001);
      while (1)
      {
        if (v1)
        {
          v7 = MEMORY[0x1AC562480](v6, v3);
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v7 reason] == 7)
        {
        }

        else
        {
          sub_1A7E22BF0();
          sub_1A7E22C40();
          sub_1A7E22C50();
          sub_1A7E22C00();
        }

        ++v6;
        if (v9 == i)
        {
          v38 = v40;
          v1 = &off_1E77E4000;
          v5 = MEMORY[0x1E69E7CC0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v38 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v10 = [v39 v1[147]];
    v3 = sub_1A7E22530();

    v40 = v5;
    if (!(v3 >> 62))
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        break;
      }

      goto LABEL_18;
    }

    v11 = sub_1A7E22DA0();
    if (!v11)
    {
      break;
    }

LABEL_18:
    v12 = 0;
    v1 = (v3 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v13 = MEMORY[0x1AC562480](v12, v3);
      }

      else
      {
        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v13 = *(v3 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ([v13 reason] == 7)
      {
        sub_1A7E22BF0();
        sub_1A7E22C40();
        sub_1A7E22C50();
        sub_1A7E22C00();
      }

      else
      {
      }

      ++v12;
      if (v15 == v11)
      {
        v16 = v5;
        goto LABEL_36;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_36:

  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    if (!sub_1A7E22DA0())
    {
      goto LABEL_44;
    }

LABEL_39:
    v17 = sub_1A7E22520();

    v18 = [v39 stringFromReasons_];

    v19 = sub_1A7E22290();
    v21 = v20;

    MEMORY[0x1AC561C90](v19, v21);

    MEMORY[0x1AC561C90](93, 0xE100000000000000);
    v22 = sub_1A7CCCAA4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1A7CCCAA4((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[16 * v24];
    *(v25 + 4) = 91;
    *(v25 + 5) = 0xE100000000000000;
    if (v38 < 0)
    {
      goto LABEL_52;
    }

LABEL_45:
    if ((v38 & 0x4000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (*(v38 + 16))
    {
      goto LABEL_47;
    }

LABEL_53:
  }

  else
  {
    if (*(v16 + 16))
    {
      goto LABEL_39;
    }

LABEL_44:

    v22 = MEMORY[0x1E69E7CC0];
    if ((v38 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_52:
    if (!sub_1A7E22DA0())
    {
      goto LABEL_53;
    }

LABEL_47:
    v26 = sub_1A7E22520();

    v27 = [v39 stringFromReasons_];

    v28 = sub_1A7E22290();
    v30 = v29;

    MEMORY[0x1AC561C90](v28, v30);

    MEMORY[0x1AC561C90](93, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1A7CCCAA4(0, *(v22 + 2) + 1, 1, v22);
    }

    v32 = *(v22 + 2);
    v31 = *(v22 + 3);
    if (v32 >= v31 >> 1)
    {
      v22 = sub_1A7CCCAA4((v31 > 1), v32 + 1, 1, v22);
    }

    *(v22 + 2) = v32 + 1;
    v33 = &v22[16 * v32];
    *(v33 + 4) = 91;
    *(v33 + 5) = 0xE100000000000000;
  }

  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v34 = sub_1A7E221F0();
  v36 = v35;

  MEMORY[0x1AC561C90](v34, v36);

  return 3813750;
}

uint64_t sub_1A7CD5858()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_allocWithZone(IDSSendReason) initWithReason:0 subreason:0 pathID:0];
  v2 = [ObjCClassFromMetadata createWithReason_];

  v3 = [v2 reasonString];
  v4 = sub_1A7E22290();

  return v4;
}

void *sub_1A7CD5AA4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B63E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1A7CD5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1A7CD71E0();

  result = sub_1A7E22470();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1A7CD60B0();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1A7E22BE0();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1A7CD60B0()
{
  v0 = sub_1A7E22480();
  v4 = sub_1A7CD6130(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1A7CD6130(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1A7E229C0();
    if (!v9 || (v10 = v9, v11 = sub_1A7CD5AA4(v9, 0), v12 = sub_1A7CD6288(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1A7E22340();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1A7E22340();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1A7E22BE0();
LABEL_4:

  return sub_1A7E22340();
}

unint64_t sub_1A7CD6288(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1A7E06ED0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1A7E22410();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1A7E22BE0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1A7E06ED0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1A7E223E0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A7CD64A8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1A7E06ED0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1A7E22400();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1A7E06ED0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1A7E06ED0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1A7E22400();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1A7CD6914(uint64_t a1, uint64_t a2)
{
  *&v57 = a1;
  *(&v57 + 1) = a2;
  sub_1A7CC7DFC();
  v2 = sub_1A7E22A40();
  v3 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_33:

    return v3;
  }

  v5 = v2;
  v6 = sub_1A7CD718C();
  v7 = (v5 + 56);
  v8 = MEMORY[0x1E69E67B0];
  while (1)
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    v57 = *(v7 - 3);
    v58 = v9;
    v59 = v10;

    v11 = sub_1A7E22A40();

    if (v11[2] != 3)
    {
      goto LABEL_4;
    }

    v12 = v11[4];
    v13 = v11[5];
    if (!((v13 ^ v12) >> 14))
    {
      goto LABEL_4;
    }

    v14 = v11[6];
    v15 = v11[7];
    if ((v15 & 0x1000000000000000) != 0)
    {
      v33 = v6;
      v34 = v11[7];
      v35 = v11[5];
      v36 = v11[4];
      v37 = v11[6];

      v38 = sub_1A7CD5B18(v36, v35, v37, v34, 10);
      LOBYTE(v36) = v39;

      if (v36)
      {
        v6 = v33;
        v8 = MEMORY[0x1E69E67B0];
LABEL_4:

        goto LABEL_5;
      }

      result = v38;
      v6 = v33;
      v8 = MEMORY[0x1E69E67B0];
    }

    else
    {
      if ((v15 & 0x2000000000000000) != 0)
      {
        *&v57 = v11[6];
        *(&v57 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
        v16 = &v57;
      }

      else if ((v14 & 0x1000000000000000) != 0)
      {
        v16 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v40 = v11[4];
        v41 = v11[7];
        v42 = v11[5];
        v43 = v11[6];
        v16 = sub_1A7E22BE0();
        v14 = v43;
        v12 = v40;
        v8 = MEMORY[0x1E69E67B0];
        v13 = v42;
        v15 = v41;
      }

      result = sub_1A7CD64A8(v16, v12, v13, v14, v15, 10);
      if (v18)
      {
        goto LABEL_4;
      }
    }

    if (v11[2] < 2uLL)
    {
      break;
    }

    v19 = v11[8];
    v20 = v11[9];
    if (!((v20 ^ v19) >> 14))
    {
      goto LABEL_4;
    }

    v21 = v11[10];
    v22 = v11[11];
    v56 = result;
    if ((v22 & 0x1000000000000000) != 0)
    {
      v44 = v8;
      v45 = v6;
      v46 = v11[11];
      v47 = v11[9];
      v48 = v11[8];
      v55 = v11[10];

      v24 = sub_1A7CD5B18(v48, v47, v55, v46, 10);
      LOBYTE(v48) = v49;

      if (v48)
      {
        v6 = v45;
        v8 = v44;
        goto LABEL_4;
      }

      v6 = v45;
    }

    else
    {
      if ((v22 & 0x2000000000000000) != 0)
      {
        *&v57 = v11[10];
        *(&v57 + 1) = v22 & 0xFFFFFFFFFFFFFFLL;
        v23 = &v57;
      }

      else if ((v21 & 0x1000000000000000) != 0)
      {
        v23 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v50 = v11[8];
        v51 = v11[11];
        v52 = v6;
        v53 = v11[9];
        v54 = v11[10];
        v23 = sub_1A7E22BE0();
        v21 = v54;
        v19 = v50;
        v8 = MEMORY[0x1E69E67B0];
        v20 = v53;
        v6 = v52;
        v22 = v51;
      }

      result = sub_1A7CD64A8(v23, v19, v20, v21, v22, 10);
      v24 = result;
      if (v25)
      {
        goto LABEL_4;
      }
    }

    if (v11[2] < 3uLL)
    {
      goto LABEL_35;
    }

    v26 = v6;
    v27 = v11[12];
    v28 = v11[13];
    v30 = v11[14];
    v29 = v11[15];

    MEMORY[0x1AC561BF0](v27, v28, v30, v29);

    v31 = objc_allocWithZone(IDSSendReason);
    v32 = sub_1A7E22260();

    [v31 initWithGenericReason:v56 genericSubreason:v24 genericPathID:v32];

    MEMORY[0x1AC561DF0]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A7E22560();
    }

    sub_1A7E225A0();
    v3 = v60;
    v6 = v26;
    v8 = MEMORY[0x1E69E67B0];
LABEL_5:
    v7 += 4;
    if (!--v4)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

id sub_1A7CD6D24()
{
  sub_1A7CC7DFC();
  v0 = sub_1A7E22A10();
  v22 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 16);
  if (!v1)
  {

    v17 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_8;
    }

LABEL_11:
    if (sub_1A7E22DA0())
    {
      goto LABEL_9;
    }

LABEL_12:

    return 0;
  }

  v2 = (v0 + 40);
  do
  {
    v4 = *(v2 - 1);
    v3 = *v2;

    sub_1A7CD5164(93, 0xE100000000000000, v4, v3);
    if (v5)
    {
    }

    else
    {
      v6 = sub_1A7E22480();
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = MEMORY[0x1AC561BF0](v6, v8, v10, v12);
      v15 = v14;

      v16 = sub_1A7CD6914(v13, v15);

      sub_1A7DDF064(v16);
    }

    v2 += 2;
    --v1;
  }

  while (v1);

  v17 = v22;
  if (v22 >> 62)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_9:
  v18 = objc_allocWithZone(IDSSendReasonContainer);
  type metadata accessor for IDSSendReason(v18);
  v19 = sub_1A7E22520();

  v20 = [v18 initWithReasons_];

  return v20;
}

unint64_t sub_1A7CD6F0C(unint64_t result)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    if (!v1)
    {
LABEL_14:
      sub_1A7CC7FFC(&qword_1EB2B4AA0);
      sub_1A7CD0F8C();
      v18 = sub_1A7E221F0();

      return v18;
    }

    v2 = result;
    v24 = MEMORY[0x1E69E7CC0];
    result = sub_1A7CCE918(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      break;
    }

    v3 = 0;
    v4 = v2;
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    v21 = v2 & 0xC000000000000001;
    v5 = v2;
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v21)
      {
        v7 = MEMORY[0x1AC562480](v3, v4);
      }

      else
      {
        if (v3 >= *(v20 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v4 + 8 * v3 + 32);
      }

      v8 = v7;
      [v7 reason];
      v22 = sub_1A7E23090();
      v23 = v9;
      MEMORY[0x1AC561C90](46, 0xE100000000000000);
      [v8 subreason];
      v10 = sub_1A7E23090();
      MEMORY[0x1AC561C90](v10);

      MEMORY[0x1AC561C90](46, 0xE100000000000000);
      v11 = [v8 pathID];
      v12 = sub_1A7E22290();
      v14 = v13;

      MEMORY[0x1AC561C90](v12, v14);

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1A7CCE918((v15 > 1), v16 + 1, 1);
      }

      *(v24 + 16) = v16 + 1;
      v17 = v24 + 16 * v16;
      *(v17 + 32) = v22;
      *(v17 + 40) = v23;
      ++v3;
      v4 = v5;
      if (v6 == v1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v19 = result;
    v1 = sub_1A7E22DA0();
    result = v19;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A7CD718C()
{
  result = qword_1EB2B4DE8;
  if (!qword_1EB2B4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4DE8);
  }

  return result;
}

unint64_t sub_1A7CD71E0()
{
  result = qword_1EB2B4DF0;
  if (!qword_1EB2B4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4DF0);
  }

  return result;
}

uint64_t LinkEngineLink.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15[-v5];
  v7 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  os_unfair_lock_lock((v1 + 40));
  sub_1A7CCBC54((v1 + 48), &v16);
  os_unfair_lock_unlock((v1 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  v11 = type metadata accessor for LinkStateComponent(0);
  v12 = swift_dynamicCast();
  v13 = *(v11 - 8);
  (*(v13 + 56))(v6, v12 ^ 1u, 1, v11);
  if ((*(v13 + 48))(v6, 1, v11))
  {
    sub_1A7CD9FEC(v6);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1A7CD0EC4(v6, v10);
    sub_1A7CD9FEC(v6);
    return sub_1A7CDA450(v10, a1, type metadata accessor for LinkState);
  }
}

IDSFoundation::LinkStateError __swiftcall LinkStateError.init(errorCode:isRecoverable:shouldReconnect:)(Swift::Int errorCode, Swift::Bool isRecoverable, Swift::Bool shouldReconnect)
{
  *v3 = errorCode;
  *(v3 + 8) = isRecoverable;
  *(v3 + 9) = shouldReconnect;
  result.errorCode = errorCode;
  result.isRecoverable = isRecoverable;
  return result;
}

uint64_t LinkStateError.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v4 = sub_1A7E23090();
  if (v1 == 1)
  {
    MEMORY[0x1AC561C90](0x65766F636572203BLL, 0xED0000656C626172);
  }

  if (v2)
  {
    MEMORY[0x1AC561C90](0x6E6E6F636572203BLL, 0xEB00000000746365);
  }

  return v4;
}

uint64_t sub_1A7CD7520()
{
  v1 = 0x65766F6365527369;
  if (*v0 != 1)
  {
    v1 = 0x6552646C756F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646F43726F727265;
  }
}

uint64_t sub_1A7CD7598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7CDB1E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7CD75C0(uint64_t a1)
{
  v2 = sub_1A7CDA054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD75FC(uint64_t a1)
{
  v2 = sub_1A7CDA054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkStateError.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4DF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v10 - v7;
  v10[6] = *(v1 + 8);
  v10[3] = *(v1 + 9);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDA054();
  sub_1A7E23260();
  v13 = 0;
  sub_1A7E23020();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = 1;
  sub_1A7E23000();
  v11 = 2;
  sub_1A7E23000();
  return (*(v5 + 8))(v8, v4);
}

uint64_t LinkStateError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B4E08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDA054();
  sub_1A7E23250();
  if (!v2)
  {
    v17 = 0;
    v10 = sub_1A7E22F20();
    v16 = 1;
    v11 = sub_1A7E22F00();
    v15 = 2;
    v13 = sub_1A7E22F00();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
    *(a2 + 9) = v13 & 1;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t LinkState.description.getter()
{
  v1 = v0;
  v2 = sub_1A7E22CF0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CD0EC4(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v19 = *v14;
      v20 = v14[8];
      v21 = v14[9];
      v28 = 0x203A64656C696146;
      v29 = 0xE800000000000000;
      v26 = v19;
      v26 = sub_1A7E23090();
      v27 = v22;
      if (v20 == 1)
      {
        MEMORY[0x1AC561C90](0x65766F636572203BLL, 0xED0000656C626172);
      }

      if (v21)
      {
        MEMORY[0x1AC561C90](0x6E6E6F636572203BLL, 0xEB00000000746365);
      }

      MEMORY[0x1AC561C90](v26, v27);

      return v28;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x6E6E6F4320746F4ELL;
    }

    else
    {
      return 0x656E6E6F63736944;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v3 + 32))(v10, v14, v2);
        v16 = 0x657463656E6E6F43;
        v17 = 0xEA00000000002064;
      }

      else
      {
        (*(v3 + 32))(v10, v14, v2);
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_1A7E22B70();

        v16 = 0x656E6E6F63736944;
        v17 = 0xEE0020676E697463;
      }
    }

    else
    {
      (*(v3 + 32))(v10, v14, v2);
      v16 = 0x697463656E6E6F43;
      v17 = 0xEB0000000020676ELL;
    }

    v28 = v16;
    v29 = v17;
    sub_1A7E22CC0();
    sub_1A7E22CE0();
    v23 = *(v3 + 8);
    v23(v6, v2);
    v26 = sub_1A7E23280();
    v24 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v24);

    MEMORY[0x1AC561C90](115, 0xE100000000000000);
    v18 = v28;
    v23(v10, v2);
  }

  return v18;
}

uint64_t LinkState.isDisconnected.getter()
{
  v1 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CD0EC4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 3) < 3)
  {
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1A7CD0E68(v4);
    return 0;
  }

  else
  {
    v7 = sub_1A7E22CF0();
    (*(*(v7 - 8) + 8))(v4, v7);
    return 1;
  }
}

uint64_t sub_1A7CD7EC8()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7CD7F10()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7CD7F54()
{
  v1 = *v0;
  v2 = 0x656E6E6F43746F6ELL;
  v3 = 0x656E6E6F63736964;
  v4 = 0x656E6E6F63736964;
  if (v1 != 4)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697463656E6E6F63;
  if (v1 != 1)
  {
    v5 = 0x657463656E6E6F63;
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

uint64_t sub_1A7CD8024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7CDB314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7CD804C(uint64_t a1)
{
  v2 = sub_1A7CDA0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD8088(uint64_t a1)
{
  v2 = sub_1A7CDA0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CD80D8(uint64_t a1)
{
  v2 = sub_1A7CDA24C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD8114(uint64_t a1)
{
  v2 = sub_1A7CDA24C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CD8150(uint64_t a1)
{
  v2 = sub_1A7CDA2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD818C(uint64_t a1)
{
  v2 = sub_1A7CDA2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CD81D4(uint64_t a1)
{
  v2 = sub_1A7CDA1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD8210(uint64_t a1)
{
  v2 = sub_1A7CDA1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CD824C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6973 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7CD82D0(uint64_t a1)
{
  v2 = sub_1A7CDA1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD830C(uint64_t a1)
{
  v2 = sub_1A7CDA1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CD835C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7CD83E0(uint64_t a1)
{
  v2 = sub_1A7CDA0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD841C(uint64_t a1)
{
  v2 = sub_1A7CDA0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CD8458(uint64_t a1)
{
  v2 = sub_1A7CDA2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CD8494(uint64_t a1)
{
  v2 = sub_1A7CDA2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkState.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4E10);
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v80 = &v64 - v4;
  v77 = sub_1A7CC7FFC(&qword_1EB2B4E18);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v5);
  v72 = &v64 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B4E20);
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v76 = &v64 - v9;
  v10 = sub_1A7CC7FFC(&qword_1EB2B4E28);
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v71 = &v64 - v12;
  v70 = sub_1A7CC7FFC(&qword_1EB2B4E30);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v13);
  v68 = &v64 - v14;
  v15 = sub_1A7E22CF0();
  v83 = *(v15 - 8);
  v84 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v67 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v66 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v64 - v23;
  v25 = sub_1A7CC7FFC(&qword_1EB2B4E38);
  v65 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v64 - v27;
  v29 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A7CC7FFC(&qword_1EB2B4E40);
  v34 = *(v33 - 8);
  v86 = v33;
  v87 = v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v64 - v36;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDA0A8();
  v85 = v37;
  sub_1A7E23260();
  sub_1A7CD0EC4(v92, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v42 = v83;
      v41 = v84;
      (*(v83 + 32))(v24, v32, v84);
      LOBYTE(v89) = 1;
      sub_1A7CDA2A0();
      v51 = v68;
      v45 = v85;
      v40 = v86;
      sub_1A7E22F80();
      sub_1A7CDA39C(&qword_1EB2B4E70);
      v52 = v70;
      sub_1A7E23030();
      (*(v69 + 8))(v51, v52);
LABEL_14:
      (*(v42 + 8))(v24, v41);
      return (*(v87 + 8))(v45, v40);
    }

    v39 = v88;
    v40 = v86;
    v42 = v83;
    v41 = v84;
    if (EnumCaseMultiPayload == 1)
    {
      v43 = v66;
      (*(v83 + 32))(v66, v32, v84);
      LOBYTE(v89) = 2;
      sub_1A7CDA24C();
      v44 = v71;
      v45 = v85;
      sub_1A7E22F80();
      sub_1A7CDA39C(&qword_1EB2B4E70);
      v46 = v74;
      sub_1A7E23030();
      if (v39)
      {
        v47 = v73;
LABEL_13:
        (*(v47 + 8))(v44, v46);
        v24 = v43;
        goto LABEL_14;
      }

      v63 = v73;
    }

    else
    {
      v43 = v67;
      (*(v83 + 32))(v67, v32, v84);
      LOBYTE(v89) = 3;
      sub_1A7CDA1F8();
      v44 = v76;
      v45 = v85;
      sub_1A7E22F80();
      sub_1A7CDA39C(&qword_1EB2B4E70);
      v46 = v79;
      sub_1A7E23030();
      if (v39)
      {
        v47 = v78;
        goto LABEL_13;
      }

      v63 = v78;
    }

    (*(v63 + 8))(v44, v46);
    (*(v42 + 8))(v43, v41);
    return (*(v87 + 8))(v45, v40);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v53 = *v32;
    v54 = v32[8];
    v55 = v32[9];
    LOBYTE(v89) = 5;
    sub_1A7CDA0FC();
    v56 = v80;
    v58 = v85;
    v57 = v86;
    sub_1A7E22F80();
    v89 = v53;
    v90 = v54;
    v91 = v55;
    sub_1A7CDA150();
    v59 = v82;
    sub_1A7E23030();
    (*(v81 + 8))(v56, v59);
    return (*(v87 + 8))(v58, v57);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    LOBYTE(v89) = 0;
    sub_1A7CDA2F4();
    v48 = v85;
    v49 = v86;
    sub_1A7E22F80();
    (*(v65 + 8))(v28, v25);
    return (*(v87 + 8))(v48, v49);
  }

  else
  {
    LOBYTE(v89) = 4;
    sub_1A7CDA1A4();
    v60 = v72;
    v62 = v85;
    v61 = v86;
    sub_1A7E22F80();
    (*(v75 + 8))(v60, v77);
    return (*(v87 + 8))(v62, v61);
  }
}

uint64_t LinkState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B4E90);
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v104 = &v78 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B4E98);
  v90 = *(v7 - 8);
  v91 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v103 = &v78 - v9;
  v89 = sub_1A7CC7FFC(&qword_1EB2B4EA0);
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v10);
  v102 = &v78 - v11;
  v88 = sub_1A7CC7FFC(&qword_1EB2B4EA8);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v12);
  v96 = &v78 - v13;
  v85 = sub_1A7CC7FFC(&qword_1EB2B4EB0);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v14);
  v95 = &v78 - v15;
  v101 = sub_1A7CC7FFC(&qword_1EB2B4EB8);
  v84 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v16);
  v99 = &v78 - v17;
  v100 = sub_1A7CC7FFC(&qword_1EB2B4EC0);
  v105 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v18);
  v20 = &v78 - v19;
  v98 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v98, v21);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v78 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v78 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v78 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v78 - v38;
  v40 = a1[3];
  v110 = a1;
  sub_1A7CC9878(a1, v40);
  sub_1A7CDA0A8();
  v41 = v106;
  sub_1A7E23250();
  if (!v41)
  {
    v80 = v35;
    v42 = v99;
    v81 = v31;
    v82 = v27;
    v79 = v23;
    v43 = v101;
    v44 = v102;
    v106 = 0;
    v46 = v103;
    v45 = v104;
    v83 = v39;
    v47 = v100;
    v48 = sub_1A7E22F70();
    v49 = v48;
    if (*(v48 + 16) != 1 || (v50 = *(v48 + 32), v50 == 6))
    {
      v57 = sub_1A7E22BD0();
      swift_allocError();
      v59 = v58;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v59 = v98;
      v60 = v47;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6AF8], v57);
      swift_willThrow();
      goto LABEL_10;
    }

    if (*(v48 + 32) <= 2u)
    {
      if (*(v48 + 32))
      {
        v51 = v106;
        if (v50 == 1)
        {
          LOBYTE(v107) = 1;
          sub_1A7CDA2A0();
          v52 = v95;
          v53 = v47;
          sub_1A7E22E70();
          if (!v51)
          {
            sub_1A7E22CF0();
            sub_1A7CDA39C(&qword_1EB2B4ED8);
            v54 = v80;
            v55 = v85;
            sub_1A7E22F30();
            (*(v86 + 8))(v52, v55);
            (*(v105 + 8))(v20, v47);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v56 = v54;
LABEL_29:
            v64 = v83;
            sub_1A7CDA450(v56, v83, type metadata accessor for LinkState);
            goto LABEL_30;
          }

          goto LABEL_16;
        }

        LOBYTE(v107) = 2;
        sub_1A7CDA24C();
        v70 = v96;
        v60 = v47;
        sub_1A7E22E70();
        if (!v51)
        {
          v106 = v49;
          sub_1A7E22CF0();
          sub_1A7CDA39C(&qword_1EB2B4ED8);
          v71 = v81;
          v72 = v88;
          sub_1A7E22F30();
          v73 = v105;
          (*(v87 + 8))(v70, v72);
          (*(v73 + 8))(v20, v47);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v56 = v71;
          goto LABEL_29;
        }

LABEL_10:
        (*(v105 + 8))(v20, v60);
LABEL_11:
        swift_unknownObjectRelease();
        return sub_1A7B0CD6C(v110);
      }

      LOBYTE(v107) = 0;
      sub_1A7CDA2F4();
      v60 = v47;
      v63 = v106;
      sub_1A7E22E70();
      if (v63)
      {
        goto LABEL_10;
      }

      (*(v84 + 8))(v42, v43);
      (*(v105 + 8))(v20, v47);
      swift_unknownObjectRelease();
      v64 = v83;
LABEL_27:
      swift_storeEnumTagMultiPayload();
LABEL_30:
      sub_1A7CDA450(v64, v97, type metadata accessor for LinkState);
      return sub_1A7B0CD6C(v110);
    }

    if (v50 == 3)
    {
      LOBYTE(v107) = 3;
      sub_1A7CDA1F8();
      v65 = v44;
      v66 = v47;
      v67 = v106;
      sub_1A7E22E70();
      if (!v67)
      {
        sub_1A7E22CF0();
        sub_1A7CDA39C(&qword_1EB2B4ED8);
        v68 = v82;
        v69 = v89;
        sub_1A7E22F30();
        (*(v92 + 8))(v65, v69);
        (*(v105 + 8))(v20, v66);
        swift_unknownObjectRelease();
LABEL_28:
        swift_storeEnumTagMultiPayload();
        v56 = v68;
        goto LABEL_29;
      }
    }

    else
    {
      if (v50 == 4)
      {
        LOBYTE(v107) = 4;
        sub_1A7CDA1A4();
        v53 = v47;
        v62 = v106;
        sub_1A7E22E70();
        if (v62)
        {
LABEL_16:
          (*(v105 + 8))(v20, v53);
          goto LABEL_11;
        }

        (*(v90 + 8))(v46, v91);
        (*(v105 + 8))(v20, v47);
        swift_unknownObjectRelease();
        v64 = v83;
        goto LABEL_27;
      }

      LOBYTE(v107) = 5;
      sub_1A7CDA0FC();
      v66 = v47;
      v74 = v106;
      sub_1A7E22E70();
      if (!v74)
      {
        sub_1A7CDA348();
        v75 = v93;
        sub_1A7E22F30();
        (*(v94 + 8))(v45, v75);
        (*(v105 + 8))(v20, v47);
        swift_unknownObjectRelease();
        v76 = v108;
        v77 = v109;
        v68 = v79;
        *v79 = v107;
        *(v68 + 8) = v76;
        *(v68 + 9) = v77;
        goto LABEL_28;
      }
    }

    (*(v105 + 8))(v20, v66);
    goto LABEL_11;
  }

  return sub_1A7B0CD6C(v110);
}

uint64_t sub_1A7CD9B0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1A7CD9B40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1A7CD9B6C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7CD9BA0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7CD9BD4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7CD9C08()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7CD9C70(uint64_t a1)
{
  v2 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CD0EC4(a1, v5);
  return LinkEngineLink.state.setter(v5);
}

uint64_t LinkEngineLink.state.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  sub_1A7CD0EC4(a1, &v16 - v10);
  v12 = type metadata accessor for LinkStateComponent(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v11, 0, 1, v12);
  os_unfair_lock_lock(v2 + 10);
  sub_1A7CDA3E0(v11, v7);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1A7CD9FEC(v7);
    v16 = 0u;
    v17 = 0u;
  }

  else
  {
    *(&v17 + 1) = v12;
    v14 = sub_1A7CC98BC(&v16);
    sub_1A7CDA450(v7, v14, type metadata accessor for LinkStateComponent);
  }

  sub_1A7CC8D74(&v16, v12);
  os_unfair_lock_unlock(v2 + 10);
  sub_1A7CD0E68(a1);
  return sub_1A7CD9FEC(v11);
}

void (*LinkEngineLink.state.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for LinkState(0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  LinkEngineLink.state.getter(v4);
  return sub_1A7CD9F5C;
}

void sub_1A7CD9F5C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1A7CD0EC4(v3, v2);
    LinkEngineLink.state.setter(v2);
    sub_1A7CD0E68(v3);
  }

  else
  {
    LinkEngineLink.state.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1A7CD9FEC(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A7CDA054()
{
  result = qword_1EB2B4E00;
  if (!qword_1EB2B4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E00);
  }

  return result;
}

unint64_t sub_1A7CDA0A8()
{
  result = qword_1EB2B4E48;
  if (!qword_1EB2B4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E48);
  }

  return result;
}

unint64_t sub_1A7CDA0FC()
{
  result = qword_1EB2B4E50;
  if (!qword_1EB2B4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E50);
  }

  return result;
}

unint64_t sub_1A7CDA150()
{
  result = qword_1EB2B4E58;
  if (!qword_1EB2B4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E58);
  }

  return result;
}

unint64_t sub_1A7CDA1A4()
{
  result = qword_1EB2B4E60;
  if (!qword_1EB2B4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E60);
  }

  return result;
}

unint64_t sub_1A7CDA1F8()
{
  result = qword_1EB2B4E68;
  if (!qword_1EB2B4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E68);
  }

  return result;
}

unint64_t sub_1A7CDA24C()
{
  result = qword_1EB2B4E78;
  if (!qword_1EB2B4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E78);
  }

  return result;
}

unint64_t sub_1A7CDA2A0()
{
  result = qword_1EB2B4E80;
  if (!qword_1EB2B4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E80);
  }

  return result;
}

unint64_t sub_1A7CDA2F4()
{
  result = qword_1EB2B4E88;
  if (!qword_1EB2B4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4E88);
  }

  return result;
}

unint64_t sub_1A7CDA348()
{
  result = qword_1EB2B4ED0;
  if (!qword_1EB2B4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4ED0);
  }

  return result;
}

uint64_t sub_1A7CDA39C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A7E22CF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7CDA3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7CDA450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for LinkStateError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkStateError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkStateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1A7CDA5C4()
{
  sub_1A7CDA63C();
  if (v0 <= 0x3F)
  {
    sub_1A7CDA684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A7CDA63C()
{
  if (!qword_1EB2B3060)
  {
    v0 = sub_1A7E22CF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B3060);
    }
  }
}

ValueMetadata *sub_1A7CDA684()
{
  result = qword_1EB2B3380;
  if (!qword_1EB2B3380)
  {
    result = &type metadata for LinkStateError;
    atomic_store(&type metadata for LinkStateError, &qword_1EB2B3380);
  }

  return result;
}

uint64_t sub_1A7CDA6DC()
{
  result = type metadata accessor for LinkState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkStateError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LinkStateError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A7CDAA58()
{
  result = qword_1EB2B4EE0;
  if (!qword_1EB2B4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4EE0);
  }

  return result;
}

unint64_t sub_1A7CDAAB0()
{
  result = qword_1EB2B4EE8;
  if (!qword_1EB2B4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4EE8);
  }

  return result;
}

unint64_t sub_1A7CDAB08()
{
  result = qword_1EB2B4EF0;
  if (!qword_1EB2B4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4EF0);
  }

  return result;
}

unint64_t sub_1A7CDAB60()
{
  result = qword_1EB2B4EF8;
  if (!qword_1EB2B4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4EF8);
  }

  return result;
}

unint64_t sub_1A7CDABB8()
{
  result = qword_1EB2B4F00;
  if (!qword_1EB2B4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F00);
  }

  return result;
}

unint64_t sub_1A7CDAC10()
{
  result = qword_1EB2B4F08;
  if (!qword_1EB2B4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F08);
  }

  return result;
}

unint64_t sub_1A7CDAC68()
{
  result = qword_1EB2B4F10;
  if (!qword_1EB2B4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F10);
  }

  return result;
}

unint64_t sub_1A7CDACC0()
{
  result = qword_1EB2B4F18;
  if (!qword_1EB2B4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F18);
  }

  return result;
}

unint64_t sub_1A7CDAD18()
{
  result = qword_1EB2B4F20;
  if (!qword_1EB2B4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F20);
  }

  return result;
}

unint64_t sub_1A7CDAD70()
{
  result = qword_1EB2B4F28;
  if (!qword_1EB2B4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F28);
  }

  return result;
}

unint64_t sub_1A7CDADC8()
{
  result = qword_1EB2B4F30;
  if (!qword_1EB2B4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F30);
  }

  return result;
}

unint64_t sub_1A7CDAE20()
{
  result = qword_1EB2B4F38;
  if (!qword_1EB2B4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F38);
  }

  return result;
}

unint64_t sub_1A7CDAE78()
{
  result = qword_1EB2B4F40;
  if (!qword_1EB2B4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F40);
  }

  return result;
}

unint64_t sub_1A7CDAED0()
{
  result = qword_1EB2B4F48;
  if (!qword_1EB2B4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F48);
  }

  return result;
}

unint64_t sub_1A7CDAF28()
{
  result = qword_1EB2B4F50;
  if (!qword_1EB2B4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F50);
  }

  return result;
}

unint64_t sub_1A7CDAF80()
{
  result = qword_1EB2B4F58;
  if (!qword_1EB2B4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F58);
  }

  return result;
}

unint64_t sub_1A7CDAFD8()
{
  result = qword_1EB2B4F60;
  if (!qword_1EB2B4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F60);
  }

  return result;
}

unint64_t sub_1A7CDB030()
{
  result = qword_1EB2B4F68;
  if (!qword_1EB2B4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F68);
  }

  return result;
}

unint64_t sub_1A7CDB088()
{
  result = qword_1EB2B4F70;
  if (!qword_1EB2B4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F70);
  }

  return result;
}

unint64_t sub_1A7CDB0E0()
{
  result = qword_1EB2B4F78;
  if (!qword_1EB2B4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F78);
  }

  return result;
}

unint64_t sub_1A7CDB138()
{
  result = qword_1EB2B4F80;
  if (!qword_1EB2B4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F80);
  }

  return result;
}

unint64_t sub_1A7CDB190()
{
  result = qword_1EB2B4F88;
  if (!qword_1EB2B4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F88);
  }

  return result;
}

uint64_t sub_1A7CDB1E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766F6365527369 && a2 == 0xED0000656C626172 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6552646C756F6873 && a2 == 0xEF7463656E6E6F63)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7CDB314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6E6F43746F6ELL && a2 == 0xEC00000064657463;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xED0000676E697463 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEC00000064657463 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t CLITextAlign.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

unint64_t sub_1A7CDB600()
{
  result = qword_1EB2B4F90;
  if (!qword_1EB2B4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLITextAlign(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLITextAlign(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t LinkDefinitionComponent.definition.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1A7CDB7B8(v2);
}

uint64_t sub_1A7CDB7B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 LinkDefinitionComponent.definition.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_1A7CDB84C(*v1);
  result = v4;
  *v1 = v4;
  v1[2] = v2;
  return result;
}

uint64_t sub_1A7CDB84C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t LinkEngineLink.definition.getter@<X0>(uint64_t *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 40));
  sub_1A7CCBDFC((v1 + 48), &v7);
  os_unfair_lock_unlock((v1 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  if (swift_dynamicCast())
  {
    v3 = v8;
    if (v8 != 1)
    {
      v4 = v9;
      v5 = v10;
      sub_1A7CDB7B8(v8);
      result = sub_1A7CDBC48(v3);
      *a1 = v3;
      a1[1] = v4;
      a1[2] = v5;
      return result;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 1;
  }

  result = sub_1A7CDBC48(1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_1A7CDB9B8(uint64_t *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  sub_1A7CDB7B8(*a1);
  os_unfair_lock_lock(v5 + 10);
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = &type metadata for LinkDefinitionComponent;
  sub_1A7CDB7B8(v2);
  sub_1A7CC8D74(v7, &type metadata for LinkDefinitionComponent);
  os_unfair_lock_unlock(v5 + 10);

  return sub_1A7CDB84C(v2);
}

uint64_t LinkEngineLink.definition.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  os_unfair_lock_lock(v1 + 10);
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = &type metadata for LinkDefinitionComponent;
  sub_1A7CDB7B8(v2);
  sub_1A7CC8D74(v6, &type metadata for LinkDefinitionComponent);
  os_unfair_lock_unlock(v1 + 10);

  return sub_1A7CDB84C(v2);
}

uint64_t (*LinkEngineLink.definition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  LinkEngineLink.definition.getter(a1);
  return sub_1A7CDBB48;
}

uint64_t sub_1A7CDBB48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    sub_1A7CDB7B8(*a1);
    os_unfair_lock_lock(v5 + 10);
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = &type metadata for LinkDefinitionComponent;
    sub_1A7CDB7B8(v2);
    sub_1A7CC8D74(&v7, &type metadata for LinkDefinitionComponent);
    os_unfair_lock_unlock(v5 + 10);
    sub_1A7CDB84C(v2);
  }

  else
  {
    os_unfair_lock_lock(v5 + 10);
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = &type metadata for LinkDefinitionComponent;
    sub_1A7CDB7B8(v2);
    sub_1A7CC8D74(&v7, &type metadata for LinkDefinitionComponent);
    os_unfair_lock_unlock(v5 + 10);
  }

  return sub_1A7CDB84C(v2);
}

uint64_t sub_1A7CDBC48(uint64_t result)
{
  if (result != 1)
  {
    return sub_1A7CDB84C(result);
  }

  return result;
}

uint64_t sub_1A7CDBC58(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1A7CDBC70(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A7CDBC84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A7CDBCE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CLITextStringInterpolation.segments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Swift::Void __swiftcall CLITextStringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A7CCC2B0(0, *(v4 + 2) + 1, 1, v4);
    *v1 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1A7CCC2B0((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[48 * v7];
  *(v8 + 4) = countAndFlagsBits;
  *(v8 + 5) = object;
  *(v8 + 24) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  v8[72] = 2;
  *v1 = v4;
}

uint64_t CLITextStringInterpolation.appendInterpolation(_:)(uint64_t *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *v1;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v8;
  if ((result & 1) == 0)
  {
    result = sub_1A7CCC2B0(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
    *v1 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1A7CCC2B0((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 48 * v11;
  *(v12 + 32) = v13;
  *(v12 + 40) = v2;
  *(v12 + 48) = v3;
  *(v12 + 49) = v4;
  *(v12 + 56) = v5;
  *(v12 + 64) = v6;
  *(v12 + 72) = v7;
  *v1 = v8;
  return result;
}

uint64_t CLITextStringInterpolation.appendInterpolation(_:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_1A7CC9878(a1, v3);
  (*(v4 + 8))(v17, v3, v4);
  v5 = v17[1];
  v16 = v17[0];
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v10 = v22;
  v11 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v11;
  if ((result & 1) == 0)
  {
    result = sub_1A7CCC2B0(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *v2 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_1A7CCC2B0((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  v15 = v11 + 48 * v14;
  *(v15 + 32) = v16;
  *(v15 + 40) = v5;
  *(v15 + 48) = v6;
  *(v15 + 49) = v7;
  *(v15 + 56) = v8;
  *(v15 + 64) = v9;
  *(v15 + 72) = v10;
  *v2 = v11;
  return result;
}

{
  v1 = a1[3];
  v2 = a1[4];
  sub_1A7CC9878(a1, v1);
  (*(v2 + 8))(v5, v1, v2);
  v3 = v5[3];

  return sub_1A7DDF090(v3);
}

Swift::Void __swiftcall CLITextStringInterpolation.appendInterpolation(_:color:)(Swift::String _, IDSFoundation::CLIString::Color color)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = *color;
  v6 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A7CCC2B0(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1A7CCC2B0((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[48 * v9];
  *(v10 + 4) = countAndFlagsBits;
  *(v10 + 5) = object;
  v10[48] = 0;
  v10[49] = v5;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  v10[72] = 2;
  *v2 = v6;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static CLIStringSegmentsBuilder.buildPartialBlock(accumulated:next:)()
{

  sub_1A7DDF090(v0);
}

uint64_t static CLIStringSegmentsBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static CLIStringSegmentsBuilder.buildArray(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1A7CCC2B0(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static CLIStringSegmentsBuilder.buildExpression(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;
  *(v8 + 48) = v3;
  *(v8 + 49) = v4;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 72) = v7;

  return v8;
}

uint64_t static CLIStringSegmentsBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;

  return v4;
}

uint64_t static CLIStringSegmentsBuilder.buildExpression(_:)()
{
}

{
  return MEMORY[0x1E69E7CC0];
}

uint64_t static CLIStringSegmentsBuilder.buildExpression(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1A7CC9878(a1, v1);
  (*(v2 + 8))(v4, v1, v2);
  return v4[3];
}

{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_1A7CC9878(a1, v1);

  return sub_1A7CDD144(v3, v1, v2);
}

uint64_t CLIText.segments.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

IDSFoundation::CLIText __swiftcall CLIText.init(segments:)(IDSFoundation::CLIText segments)
{
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v1 + 24) = segments.leadingPadding;
  return segments;
}

IDSFoundation::CLIText __swiftcall CLIText.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v5 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v5;
  v10 = *(v5 + 2);
  v9 = *(v5 + 3);
  if (v10 >= v9 >> 1)
  {
    v5 = sub_1A7CCC2B0((v9 > 1), v10 + 1, 1, v5);
    v8 = v5;
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[48 * v10];
  *(v11 + 4) = countAndFlagsBits;
  *(v11 + 5) = object;
  *(v11 + 24) = 0;
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  v11[72] = 2;
  *(v4 + 24) = v8;
  result.segments._rawValue = v8;
  result.trailingPadding = v6;
  result.leadingPadding = v5;
  result.alignment = v7;
  return result;
}

IDSFoundation::CLIText __swiftcall CLIText.init(stringInterpolation:)(IDSFoundation::CLIText stringInterpolation)
{
  v2 = *stringInterpolation.leadingPadding;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v1 + 24) = v2;
  return stringInterpolation;
}

uint64_t CLIText.init(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  result = a1();
  *(a2 + 24) = result;
  return result;
}

uint64_t CLIText.formatted(maxWidth:pad:useColors:)@<X0>(uint64_t result@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = result;
  v81 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v82 = result;
  if (!v6)
  {
LABEL_29:
    v31 = v7[2];
    if (!v31)
    {

      v76 = 0;
      v33 = MEMORY[0x1E69E7CC0];
LABEL_93:
      v77 = *(v33 + 16);
      a3[3] = &type metadata for CLIFormattedText;
      a3[4] = &protocol witness table for CLIFormattedText;
      *a3 = v76;
      a3[1] = v77;
      a3[2] = v33;
      return result;
    }

    v92 = MEMORY[0x1E69E7CC0];
    result = sub_1A7CCE918(0, v31, 0);
    v32 = 0;
    v89 = 0;
    v33 = v92;
    v34 = v7 + 6;
    v80 = v31;
    while (1)
    {
      if (v32 >= v7[2])
      {
        goto LABEL_95;
      }

      v84 = *(v34 - 2);
      v35 = *v34;
      v86 = *(v34 - 1);
      v88 = v33;

      v93 = sub_1A7E22450();
      v94 = v36;
      result = sub_1A7E22450();
      v90 = result;
      v91 = v37;
      if (v81 == 2)
      {
        v40 = v4 - v35;
        if (__OFSUB__(v4, v35))
        {
          goto LABEL_112;
        }

        result = sub_1A7E22360();
        v41 = v40 - result;
        if (__OFSUB__(v40, result))
        {
          goto LABEL_113;
        }

        result = sub_1A7E22360();
        if (__OFSUB__(v41, result))
        {
          goto LABEL_115;
        }

        v42 = sub_1A7E22450();
        MEMORY[0x1AC561C90](v42);

        v43 = sub_1A7E22450();
        MEMORY[0x1AC561C90](v43);

        v44 = sub_1A7E22360();
        result = sub_1A7E22360();
        v45 = v44 + result;
        if (__OFADD__(v44, result))
        {
          goto LABEL_117;
        }

        v19 = __OFADD__(v45, v35);
        v46 = v45 + v35;
        if (v19)
        {
          goto LABEL_118;
        }

        if (v46 >= v4)
        {
          goto LABEL_53;
        }

        v47 = sub_1A7E22360();
        result = sub_1A7E22360();
        v48 = v47 + result;
        if (__OFADD__(v47, result))
        {
          goto LABEL_126;
        }

        v19 = __OFADD__(v48, v35);
        v49 = v48 + v35;
        if (v19)
        {
          goto LABEL_127;
        }

        if (__OFSUB__(v4, v49))
        {
          goto LABEL_128;
        }

        goto LABEL_52;
      }

      if (v81 == 3)
      {
        break;
      }

      if (a2)
      {
        v50 = v4 - v35;
        if (__OFSUB__(v4, v35))
        {
          goto LABEL_123;
        }

        result = sub_1A7E22360();
        v51 = v50 - result;
        if (__OFSUB__(v50, result))
        {
          goto LABEL_124;
        }

        result = sub_1A7E22360();
        if (__OFSUB__(v51, result))
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

LABEL_53:
      v54 = v93;
      v53 = v94;
      result = sub_1A7E22360();
      v55 = v35 + result;
      if (__OFADD__(v35, result))
      {
        goto LABEL_96;
      }

      v57 = v90;
      v56 = v91;
      result = sub_1A7E22360();
      if (__OFADD__(v55, result))
      {
        goto LABEL_97;
      }

      if (v55 + result > v4)
      {
        result = sub_1A7E22360();
        v58 = v35 + result;
        if (__OFADD__(v35, result))
        {
          goto LABEL_100;
        }

        result = sub_1A7E22360();
        v59 = v58 + result;
        if (__OFADD__(v58, result))
        {
          goto LABEL_101;
        }

        v60 = v59 - v4;
        if (__OFSUB__(v59, v4))
        {
          goto LABEL_102;
        }

        result = sub_1A7E22360();
        if (result >= v60)
        {
          v61 = v60;
        }

        else
        {
          v61 = result;
        }

        if (v61)
        {
          if (v61 < 0)
          {
            goto LABEL_119;
          }

          if ((v91 & 0x2000000000000000) != 0)
          {
            v62 = HIBYTE(v91) & 0xF;
          }

          else
          {
            v62 = v90 & 0xFFFFFFFFFFFFLL;
          }

          result = sub_1A7E22380();
          if (v63)
          {
            goto LABEL_129;
          }

          if (4 * v62 < result >> 14)
          {
            goto LABEL_120;
          }

          sub_1A7E22320();
          v4 = v82;
        }

        result = sub_1A7E22360();
        v64 = v35 + result;
        if (__OFADD__(v35, result))
        {
          goto LABEL_103;
        }

        v57 = v90;
        v56 = v91;
        result = sub_1A7E22360();
        v65 = v64 + result;
        if (__OFADD__(v64, result))
        {
          goto LABEL_104;
        }

        v66 = v65 - v4;
        if (__OFSUB__(v65, v4))
        {
          goto LABEL_105;
        }

        result = sub_1A7E22360();
        if (result >= v66)
        {
          v67 = v66;
        }

        else
        {
          v67 = result;
        }

        if (v67)
        {
          if (v67 < 0)
          {
            goto LABEL_121;
          }

          if ((v94 & 0x2000000000000000) != 0)
          {
            v68 = HIBYTE(v94) & 0xF;
          }

          else
          {
            v68 = v93 & 0xFFFFFFFFFFFFLL;
          }

          result = sub_1A7E22380();
          if (v69)
          {
            goto LABEL_130;
          }

          if (4 * v68 < result >> 14)
          {
            goto LABEL_122;
          }

          sub_1A7E22320();
          v54 = v93;
          v53 = v94;
          v4 = v82;
        }
      }

      result = sub_1A7E22360();
      v19 = __OFADD__(result, v35);
      v70 = result + v35;
      if (v19)
      {
        goto LABEL_98;
      }

      v71 = sub_1A7E22360();

      if (__OFADD__(v70, v71))
      {
        goto LABEL_99;
      }

      v72 = v89;
      if (v70 + v71 > v89)
      {
        v72 = v70 + v71;
      }

      v89 = v72;

      MEMORY[0x1AC561C90](v84, v86);

      MEMORY[0x1AC561C90](v57, v56);

      v33 = v88;
      v74 = *(v88 + 16);
      v73 = *(v88 + 24);
      if (v74 >= v73 >> 1)
      {
        result = sub_1A7CCE918((v73 > 1), v74 + 1, 1);
        v33 = v88;
      }

      ++v32;
      *(v33 + 16) = v74 + 1;
      v75 = v33 + 16 * v74;
      *(v75 + 32) = v54;
      *(v75 + 40) = v53;
      v34 += 3;
      if (v80 == v32)
      {

        v76 = v89;
        goto LABEL_93;
      }
    }

    v38 = v4 - v35;
    if (__OFSUB__(v4, v35))
    {
      goto LABEL_111;
    }

    result = sub_1A7E22360();
    v39 = v38 - result;
    if (__OFSUB__(v38, result))
    {
      goto LABEL_114;
    }

    result = sub_1A7E22360();
    if (__OFSUB__(v39, result))
    {
      goto LABEL_116;
    }

LABEL_52:
    v52 = sub_1A7E22450();
    MEMORY[0x1AC561C90](v52);

    goto LABEL_53;
  }

  v8 = 0;
  v9 = 0;
  v83 = *(v5 + 16);
  v85 = *(v3 + 24);
  while (v9 < *(v5 + 16))
  {

    v10 = sub_1A7D5B478(v8);

    v11 = v7[2];
    v12 = v10[2];
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

      v14 = v10[4];
      v13 = v10[5];
      v15 = v10[6];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A7CDD07C(v7);
        v7 = result;
      }

      if (v11 > v7[2])
      {
        goto LABEL_106;
      }

      MEMORY[0x1AC561C90](v14, v13);
      v16 = v7[2];

      if (!v16)
      {
        goto LABEL_107;
      }

      if (v16 > v7[2])
      {
        goto LABEL_108;
      }

      v17 = &v7[3 * v16 + 4];
      v18 = *(v17 - 8);
      v19 = __OFADD__(v18, v15);
      v20 = v18 + v15;
      if (v19)
      {
        goto LABEL_109;
      }

      *(v17 - 8) = v20;
      v21 = v10[2];
      if (!v21)
      {
        goto LABEL_110;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v21 - 1 > v10[3] >> 1)
      {
        v10 = sub_1A7CCC4FC(isUniquelyReferenced_nonNull_native, v21, 1, v10);
      }

      sub_1A7CDD274((v10 + 4));
      v23 = v10[2];
      memmove(v10 + 4, v10 + 7, 24 * v23 - 24);
      v12 = v23 - 1;
      v10[2] = v23 - 1;
    }

    if (!v12)
    {
LABEL_27:
      v8 = v7[2];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    v87 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A7CCC4FC(0, v7[2] + 1, 1, v7);
    }

    v24 = v10 + 6;
    do
    {
      v26 = *(v24 - 2);
      v25 = *(v24 - 1);
      v27 = *v24;
      v28 = v7[2];
      v29 = v7[3];
      v8 = v28 + 1;

      if (v28 >= v29 >> 1)
      {
        v7 = sub_1A7CCC4FC((v29 > 1), v28 + 1, 1, v7);
      }

      v24 += 3;
      v7[2] = v8;
      v30 = &v7[3 * v28];
      v30[4] = v26;
      v30[5] = v25;
      v30[6] = v27;
      --v12;
    }

    while (v12);
    v6 = v83;
    v5 = v85;
    v9 = v87;
LABEL_3:
    v8 = v7[3 * v8 + 3];
LABEL_4:
    ++v9;

    v4 = v82;
    if (v9 == v6)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
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
  return result;
}