char *sub_1BB59DB80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1BB59DC6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEF0);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_1BB59DDAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1BB59DF04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1BB59E04C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF78);
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

char *sub_1BB59E150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF20);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BB59E280(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1BB59E3C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF38);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BB59E524(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

uint64_t sub_1BB59E700(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1BB59F668(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1BB6BD320;
      sub_1BB59F668(0, 0xC000000000000000);
      result = sub_1BB59ED54(a1);
      v8 = v21;
      v9 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1BB59F668(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      result = (a1)(&v21, &v21 + BYTE6(v4));
      v8 = v21;
      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    return result;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    return (a1)(&v21, &v21);
  }

  sub_1BB59F668(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_1BB6BD320;
  sub_1BB59F668(0, 0xC000000000000000);
  sub_1BB6BA664();
  v10 = *(&v21 + 1);
  v11 = *(v21 + 16);
  v12 = *(v21 + 24);
  result = sub_1BB6BA4F4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_1BB6BA524();
  v15 = v11 - v14;
  if (__OFSUB__(v11, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v12, v11);
  v17 = v12 - v11;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = sub_1BB6BA514();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  result = (a1)(v13 + v15, v13 + v15 + v19);
  *v2 = v21;
  v2[1] = v10 | 0x8000000000000000;
  return result;
}

char *sub_1BB59E9B0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1BB59F668(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1BB59F668(v6, v5);
    *v3 = xmmword_1BB6BD320;
    sub_1BB59F668(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1BB6BA4F4() && __OFSUB__(v6, sub_1BB6BA524()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1BB6BA534();
      swift_allocObject();
      v13 = sub_1BB6BA4D4();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1BB59EE30(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1BB59F668(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1BB6BD320;
    sub_1BB59F668(0, 0xC000000000000000);
    sub_1BB6BA664();
    result = sub_1BB59EE30(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

uint64_t sub_1BB59ED54(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1BB6BA684();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_1BB6BA4F4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_1BB6BA524();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_1BB6BA514();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_1BB59EE30(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1BB6BA4F4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1BB6BA524();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1BB6BA514();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;
  v7 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v6;
  v6[4] = swift_slowAlloc();
  v8[5] = v7;
  if (!a1[4] || !a2[4])
  {
    goto LABEL_23;
  }

  if (v4 > 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  if (v4 < 0xFFFFFFFF80000000 || v5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = a1[3];
  if (v9 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = a2[2];
  if (v10 >= 0xFFFFFFFF80000000)
  {
    if (v10 <= 0x7FFFFFFF)
    {
      cblas_dgemm_NEWLAPACK();
      return v8;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGSd_AEtFZ_0(void *a1, double a2)
{
  __B[1] = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((v7 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v6;
  v9 = swift_slowAlloc();
  *(v8 + 32) = v9;
  *(v8 + 40) = v7;
  v10 = a1[4];
  if (v10)
  {
    __B[0] = a2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      vDSP_vsmulD(v10, 1, __B, v9, 1, v4 * v5);
      return v8;
    }

LABEL_8:
    __break(1u);
  }

  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1poiyACySdGAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v6;
  v9 = swift_slowAlloc();
  *(v8 + 32) = v9;
  *(v8 + 40) = v7;
  v10 = a1[4];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = *(a2 + 32);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = a1[3];
  v13 = v4 * v12;
  if ((v4 * v12) >> 64 == (v4 * v12) >> 63)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      vDSP_vaddD(v10, 1, v11, 1, v9, 1, v13);
      return v8;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

void *sub_1BB59F300(void *result)
{
  v2 = result[2];
  v1[2] = v2;
  v3 = result[3];
  v1[3] = v3;
  v4 = v2 * v3;
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  result = swift_slowAlloc();
  v1[4] = result;
  v1[5] = v4;
  v6 = v5[4];
  if (!v6)
  {
    return v1;
  }

  v7 = v1[2];
  v8 = v1[3];
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_11;
  }

  if ((v9 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((8 * v9) & 0x8000000000000000) == 0)
  {
    memmove(result, v6, 8 * v9);
    return v1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1soiyACySdGAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v6;
  v9 = swift_slowAlloc();
  *(v8 + 32) = v9;
  *(v8 + 40) = v7;
  v10 = a1[4];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v9;
  v12 = *(a2 + 32);
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = a1[3];
  v14 = v4 * v13;
  if ((v4 * v13) >> 64 == (v4 * v13) >> 63)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      vDSP_vsubD(v12, 1, v10, 1, v11, 1, v14);
      return v8;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t sub_1BB59F4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  result = a2 * a3;
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    v3[4] = sub_1BB6BB1B4();
    v3[5] = v6;
    sub_1BB59C058(a1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB59F560(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    v2[4] = sub_1BB6BB1B4();
    v2[5] = v5;
    sub_1BB6BA714();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB59F5FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DKMatrix();
  swift_allocObject();
  return sub_1BB59F560(a1, a2);
}

uint64_t sub_1BB59F668(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BB59F6D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v1[2] = v3;
  v4 = *(a1 + 24);
  v1[3] = v4;
  result = v3 * v4;
  if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v2 + 80);
  v1[4] = sub_1BB6BB1B4();
  v1[5] = v7;
  v8 = sub_1BB6BB1A4();
  result = sub_1BB6BB1A4();
  if (result)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return v1;
  }

  v10 = v1[2];
  v11 = v1[3];
  v12 = v10 * v11;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
    goto LABEL_12;
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = v12 * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    memmove(result, v8, v14);
    return v1;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1BB59F7D0(uint64_t a1)
{
  type metadata accessor for DKMatrix();
  swift_allocObject();
  return sub_1BB59F6D4(a1);
}

uint64_t sub_1BB59F834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1BB59F8A8(void *result)
{
  v2 = result[2];
  v1[2] = v2;
  v3 = result[3];
  v1[3] = v3;
  v4 = v2 * v3;
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v4 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  result = swift_slowAlloc();
  v1[4] = result;
  v1[5] = v4;
  v6 = v5[4];
  if (!v6)
  {
    return v1;
  }

  v7 = v1[2];
  v8 = v1[3];
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_11;
  }

  if ((v9 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((4 * v9) & 0x8000000000000000) == 0)
  {
    memmove(result, v6, 4 * v9);
    return v1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t _s23IntelligentTrackingCore8DKMatrixCAASfRszrlE1moiyACySfGSf_AEtFZ_0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5BE38);
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v5 = v2 * v3;
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((v5 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v4;
  v4[4] = swift_slowAlloc();
  v6[5] = v5;
  if (a1[4])
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      MEMORY[0x1BFB12430]();
      return v6;
    }

LABEL_8:
    __break(1u);
  }

  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double sub_1BB59FCF8(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MinX = CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  v11 = fmin(MinX - CGRectGetWidth(v15) * a1 * 0.5, 1.0);
  if (v11 < 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMinY(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetHeight(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetHeight(v19);
  return v12;
}

double CGRect.area.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

CGFloat CGRect.bottomRight.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = CGRectGetWidth(*&a1) + a1;
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetHeight(v10);
  return v8;
}

__C::CGRect __swiftcall CGRect.init(topLeft:bottomRight:)(CGPoint topLeft, CGPoint bottomRight)
{
  v2 = bottomRight.x - topLeft.x;
  v3 = bottomRight.y - topLeft.y;
  result.origin.y = topLeft.y;
  result.origin.x = topLeft.x;
  result.size.height = v3;
  result.size.width = v2;
  return result;
}

Swift::Double __swiftcall CGRect.iouGeneralized(rect2:)(__C::CGRect rect2)
{
  v5 = v4;
  height = rect2.size.height;
  r1 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  y = rect2.origin.y;
  width = rect2.size.width;
  x = rect2.origin.x;
  v38.origin.x = v8;
  v38.origin.y = v7;
  v38.size.width = v6;
  v38.size.height = v5;
  v39 = CGRectIntersection(v38, rect2);
  v9 = v39.origin.x;
  v10 = v39.origin.y;
  v11 = v39.size.width;
  v12 = v39.size.height;
  v13 = CGRectGetWidth(v39);
  v40.origin.x = v9;
  v40.origin.y = v10;
  v40.size.width = v11;
  v40.size.height = v12;
  v37 = v13 * CGRectGetHeight(v40);
  v41.origin.x = v8;
  v31 = v7;
  v41.origin.y = v7;
  v41.size.width = v6;
  v41.size.height = r1;
  v14 = CGRectGetWidth(v41);
  v42.origin.x = v8;
  v42.origin.y = v7;
  v42.size.width = v6;
  v42.size.height = r1;
  v15 = v14 * CGRectGetHeight(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v16 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v17 = CGRectGetHeight(v44);
  v18 = x;
  v19 = v15 + v16 * v17 - v37;
  if (v19 > 2.22044605e-16)
  {
    v20 = v19;
  }

  else
  {
    v20 = 2.22044605e-16;
  }

  v45.origin.x = v8;
  v45.origin.y = v31;
  v45.size.width = v6;
  v45.size.height = r1;
  v21 = y;
  v22 = width;
  v23 = height;
  v46 = CGRectUnion(v45, *&v18);
  v24 = v46.origin.x;
  v25 = v46.origin.y;
  v26 = v46.size.width;
  v27 = v46.size.height;
  v28 = CGRectGetWidth(v46);
  v47.origin.x = v24;
  v47.origin.y = v25;
  v47.size.width = v26;
  v47.size.height = v27;
  v29 = v28 * CGRectGetHeight(v47);
  if (v29 <= 2.22044605e-16)
  {
    v29 = 2.22044605e-16;
  }

  return v37 / v20 - (v29 - v20) / v29;
}

Swift::Double __swiftcall CGRect.minSizeNormalizedDistance(rect2:)(__C::CGRect rect2)
{
  v26 = v4;
  v5 = v3;
  v6 = v2;
  v7 = v1;
  height = rect2.size.height;
  y = rect2.origin.y;
  v22 = rect2.size.height;
  width = rect2.size.width;
  v10 = rect2.origin.y;
  x = rect2.origin.x;
  v27.origin.x = v1;
  v27.origin.y = v2;
  v27.size.width = v3;
  v27.size.height = v4;
  v12 = CGRectGetWidth(v27);
  v28.origin.x = x;
  v28.origin.y = v10;
  v28.size.width = width;
  v28.size.height = height;
  v13 = CGRectGetWidth(v28);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  v24 = fmax(v13, 0.01);
  v29.origin.x = v7;
  v29.origin.y = v6;
  v29.size.width = v5;
  v29.size.height = v26;
  v14 = CGRectGetHeight(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = v22;
  v15 = CGRectGetHeight(v30);
  if (v15 >= v14)
  {
    v15 = v14;
  }

  v23 = fmax(v15, 0.01);
  v31.origin.x = v7;
  v31.origin.y = v6;
  v31.size.width = v5;
  v31.size.height = v26;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = v22;
  v17 = CGRectGetMidX(v32);
  v33.size.height = v26;
  v25 = (MidX - v17) / v24;
  v33.origin.x = v7;
  v33.origin.y = v6;
  v33.size.width = v5;
  MidY = CGRectGetMidY(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = v22;
  v19 = CGRectGetMidY(v34);
  return sqrt(v25 * v25 + (MidY - v19) / v23 * ((MidY - v19) / v23));
}

CGPoint __swiftcall CGPoint.mirrored(xAxis:yAxis:)(Swift::Bool xAxis, Swift::Bool yAxis)
{
  if (xAxis)
  {
    v2 = 1.0 - v2;
  }

  if (yAxis)
  {
    v3 = 1.0 - v3;
  }

  result.y = v3;
  result.x = v2;
  return result;
}

uint64_t sub_1BB5A0278@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 32);
    v4 = v2 - 1;
    if (v2 == 1)
    {
      v5 = *(result + 40);
      *&v6 = v5;
      v7 = *(result + 32);
    }

    else
    {
      v9 = (result + 48);
      v10 = v2 - 1;
      v7 = *(result + 32);
      v11 = v7;
      do
      {
        v12 = *v9;
        v9 += 2;
        v13 = v12;
        if (v12 < v11)
        {
          v7 = v13;
          v11 = v13;
        }

        --v10;
      }

      while (v10);
      v5 = *(result + 40);
      v14 = (result + 56);
      v15 = v2 - 1;
      *&v6 = v5;
      v16 = v5;
      do
      {
        v17 = *v14;
        v14 += 2;
        v18 = v17;
        if (v17 < v16)
        {
          *&v6 = v18;
          v16 = v18;
        }

        --v15;
      }

      while (v15);
      v19 = (result + 48);
      v20 = v2 - 1;
      do
      {
        v21 = *v19;
        v19 += 2;
        v22 = v21;
        if (v3 < v21)
        {
          v3 = v22;
        }

        --v20;
      }

      while (v20);
      v23 = (result + 56);
      do
      {
        v24 = *v23;
        v23 += 2;
        v25 = v24;
        if (v5 < v24)
        {
          v5 = v25;
        }

        --v4;
      }

      while (v4);
    }

    v26 = v3 - v7;
    v8 = v5 - *&v6;
    *(&v6 + 1) = v26;
  }

  else
  {
    v6 = 0uLL;
    v7 = 0.0;
    v8 = 0.0;
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v2 == 0;
  return result;
}

uint64_t sub_1BB5A0378(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BB6BAA04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_1BB6BA654();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB5A0D20(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BB598308(v11, &qword_1EBC5C030);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v16 = a2 / 100.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C038);
    inited = swift_initStackObject();
    v18 = MEMORY[0x1E696D338];
    v39 = xmmword_1BB6BD520;
    *(inited + 16) = xmmword_1BB6BD520;
    v19 = *v18;
    *(inited + 32) = v19;
    *(inited + 40) = v16;
    v20 = v19;
    sub_1BB5B0078(inited);
    swift_setDeallocating();
    sub_1BB598308(inited + 32, &qword_1EBC5C040);
    type metadata accessor for CFString(0);
    sub_1BB5A0D90();
    v21 = sub_1BB6BAAE4();

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v23 = Mutable;
      v38 = v15;
      v24 = v2;
      sub_1BB6BA9D4();
      sub_1BB6BA9C4();
      (*(v6 + 8))(v8, v5);
      v25 = sub_1BB6BAC04();

      v26 = CGImageDestinationCreateWithData(v23, v25, 1uLL, 0);

      if (v26)
      {
        CGImageDestinationAddImage(v26, v24, v21);
        v27 = CGImageDestinationFinalize(v26);
        v28 = v38;
        if (v27)
        {
          v29 = v23;
          v30 = sub_1BB6BA6F4();
          v32 = v31;

          sub_1BB6BA704();
          sub_1BB59F668(v30, v32);
          v35 = sub_1BB6BA5C4();

          (*(v13 + 8))(v28, v12);
          return v35;
        }

        (*(v13 + 8))(v38, v12);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C048);
        v34 = swift_allocObject();
        *(v34 + 16) = v39;
        *(v34 + 56) = MEMORY[0x1E69E6158];
        *(v34 + 32) = 0xD000000000000020;
        *(v34 + 40) = 0x80000001BB6CADA0;
        sub_1BB6BB904();

        (*(v13 + 8))(v38, v12);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C048);
      v33 = swift_allocObject();
      *(v33 + 16) = v39;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 32) = 0xD000000000000014;
      *(v33 + 40) = 0x80000001BB6CAD80;
      sub_1BB6BB904();

      (*(v13 + 8))(v15, v12);
    }
  }

  return 0;
}

void sub_1BB5A08E4(__CVBuffer *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_time;
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  v28 = v6;
  (*(v7 + 16))(v2 + v5, a2);
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_width) = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_height) = Height;
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_width;
  v10 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_width);
  v11 = v10 * Height;
  if ((v10 * Height) >> 64 != (v10 * Height) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = a2;
  if (v11)
  {
    v12 = Height;
    v13 = sub_1BB6BAE94();
    *(v13 + 16) = v11;
    bzero((v13 + 32), 4 * v12 * v10);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_redBuffer;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_redBuffer) = v13;
  v15 = *(v2 + v9);
  v16 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_height;
  v17 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_height);
  v18 = v15 * v17;
  if ((v15 * v17) >> 64 != (v15 * v17) >> 63)
  {
    goto LABEL_21;
  }

  if (v18 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18)
  {
    v19 = sub_1BB6BAE94();
    *(v19 + 16) = v18;
    bzero((v19 + 32), 4 * v18);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_greenBuffer;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_greenBuffer) = v19;
  v21 = *(v2 + v9);
  v22 = *(v2 + v16);
  v23 = v21 * v22;
  if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
  {
    goto LABEL_23;
  }

  if (v23 < 0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  if (v23)
  {
    v24 = sub_1BB6BAE94();
    *(v24 + 16) = v23;
    bzero((v24 + 32), 4 * v23);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_blueBuffer;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_blueBuffer) = v24;
  sub_1BB5F0640(a1, (v2 + v14), (v2 + v20), (v2 + v25));
  if (v27)
  {
  }

  (*(v7 + 8))(v26, v28);
}

uint64_t sub_1BB5A0B50()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKImageRGBBufferStamped()
{
  result = qword_1EBC5C020;
  if (!qword_1EBC5C020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5A0C70()
{
  result = sub_1BB6BA7F4();
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

uint64_t sub_1BB5A0D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BB5A0D90()
{
  result = qword_1EBC5BD08;
  if (!qword_1EBC5BD08)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5BD08);
  }

  return result;
}

uint64_t DKStatisticsFilter.__allocating_init(maxNumElements:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 40) = 1;
  *(result + 48) = v3;
  *(result + 56) = v3;
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t DKStatisticsFilter.init(maxNumElements:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 1;
  *(v1 + 48) = v2;
  *(v1 + 56) = v2;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t DKStatisticsFilter.__allocating_init(maxTimeInterval:)(double a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 24) = 1;
  *(result + 48) = v3;
  *(result + 56) = v3;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

uint64_t DKStatisticsFilter.init(maxTimeInterval:)(double a1)
{
  result = v1;
  *(v1 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 1;
  *(v1 + 48) = v3;
  *(v1 + 56) = v3;
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_1BB5A0ED8()
{
  v1 = *(v0 + 48);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB5A0EFC()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 8 * v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB5A0F24(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v34 - v5;
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = *(v2 + 48);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 48) = v13;
  if ((result & 1) == 0)
  {
LABEL_42:
    result = sub_1BB59D03C(0, *(v13 + 16) + 1, 1, v13);
    v13 = result;
    *(v2 + 48) = result;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    result = sub_1BB59D03C((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v16 + 1;
  *(v13 + 8 * v16 + 32) = a1;
  *(v2 + 48) = v13;
  if (*(v2 + 24))
  {
    if ((*(v2 + 40) & 1) == 0)
    {
      a1 = *(v2 + 32);
      sub_1BB6BA7E4();
      v13 = *(v2 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 56) = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1BB59D348(0, *(v13 + 16) + 1, 1, v13);
        *(v2 + 56) = v13;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        v13 = sub_1BB59D348(v18 > 1, v19 + 1, 1, v13);
      }

      *(v13 + 16) = v19 + 1;
      v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v21 = *(v7 + 72);
      result = (*(v7 + 32))(v13 + v20 + v21 * v19, v12, v6);
      *(v2 + 56) = v13;
      if (*(v13 + 16))
      {
        v24 = *(v7 + 16);
        v23 = v7 + 16;
        v22 = v24;
        v35 = v24;
        v36 = (v23 + 40);
        v7 = v23 - 8;
        v24(v9, v13 + v20, v6);
        while (1)
        {
          sub_1BB6BA7A4();
          if (a1 >= fabs(v26))
          {
            return (*v7)(v9, v6);
          }

          v27 = *(v2 + 56);
          if (!*(v27 + 16))
          {
            goto LABEL_39;
          }

          v28 = v37;
          v22(v37, v27 + v20, v6);
          (*v36)(v28, 0, 1, v6);
          sub_1BB5A1908(v28);
          v12 = *(v2 + 56);
          v13 = *(v12 + 2);
          if (!v13)
          {
            goto LABEL_40;
          }

          v29 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 56) = v12;
          if (!v29 || (v13 - 1) > *(v12 + 3) >> 1)
          {
            v12 = sub_1BB59D348(v29, v13, 1, v12);
            *(v2 + 56) = v12;
          }

          v30 = *v7;
          (*v7)(&v12[v20], v6);
          if (v21 > 0 || &v12[v20] >= &v12[v20 + v21 + (*(v12 + 2) - 1) * v21])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          --*(v12 + 2);
          *(v2 + 56) = v12;
          v12 = *(v2 + 48);
          v13 = *(v12 + 2);
          if (!v13)
          {
            goto LABEL_41;
          }

          v31 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 48) = v12;
          if ((v31 & 1) == 0 || (v13 - 1) > *(v12 + 3) >> 1)
          {
            v12 = sub_1BB59D03C(v31, v13, 1, v12);
            *(v2 + 48) = v12;
          }

          v25 = *(v12 + 2);
          memmove(v12 + 32, v12 + 40, 8 * v25 - 8);
          *(v12 + 2) = v25 - 1;
          *(v2 + 48) = v12;
          result = v30(v9, v6);
          v13 = *(v2 + 56);
          v22 = v35;
          if (!*(v13 + 16))
          {
            return result;
          }

          v35(v9, v13 + v20, v6);
        }
      }
    }
  }

  else
  {
    v9 = *(v2 + 16);
    while (1)
    {
      v32 = *(v13 + 16);
      if (v9 >= v32)
      {
        break;
      }

      if (!v32)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      *(v2 + 48) = v13;
      if ((v32 - 1) > *(v13 + 24) >> 1)
      {
        v13 = sub_1BB59D03C(1, v32, 1, v13);
        *(v2 + 48) = v13;
      }

      v33 = *(v13 + 16);
      result = memmove((v13 + 32), (v13 + 40), 8 * v33 - 8);
      *(v13 + 16) = v33 - 1;
      *(v2 + 48) = v13;
    }
  }

  return result;
}

uint64_t sub_1BB5A1408()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 32);
  v4 = v2 - 1;
  if (v2 != 1)
  {
    v5 = (v1 + 40);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v3 < v6)
      {
        v3 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return *&v3;
}

uint64_t sub_1BB5A1450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1BB5A1494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 32);

  if (v1 != 1)
  {
    v5 = a1 + 48;
    v6 = 1;
LABEL_4:
    v7 = v3;
    v8 = v5 + 24 * v6;
    for (i = v6; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v3 = *(v8 - 16);

      sub_1BB65002C(v7);
      v11 = v10;
      sub_1BB65002C(v3);
      if (v11 == v12)
      {
        sub_1BB6502C4(v7);
        v14 = v13;
        sub_1BB6502C4(v3);
        if (v14 < v15)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1BB65002C(v7);
        v17 = v16;
        sub_1BB65002C(v3);
        if (v17 < v18)
        {
LABEL_13:

          if (v6 != v1)
          {
            goto LABEL_4;
          }

          return v3;
        }
      }

      v8 += 24;
      if (v6 == v1)
      {
        return v7;
      }
    }
  }

  return v3;
}

uint64_t sub_1BB5A1628()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 32);
  v4 = v2 - 1;
  if (v2 != 1)
  {
    v5 = (v1 + 40);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 < v3)
      {
        v3 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return *&v3;
}

int64_t sub_1BB5A1670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1BB5A1724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1BB5A1768()
{
  v4 = *(v0 + 48);
  swift_bridgeObjectRetain_n();
  sub_1BB5A1970(&v4);

  v1 = *(*(v0 + 48) + 16) >> 1;
  if (v1 >= *(v4 + 2))
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v2 = *&v4[8 * v1 + 32];

    return v2;
  }

  return result;
}

double sub_1BB5A1808()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = 0.0;
    return v4 / v2;
  }

  if (v2 <= 3)
  {
    v3 = 0;
    v4 = 0.0;
LABEL_8:
    v7 = v2 - v3;
    v8 = (v1 + 8 * v3 + 32);
    do
    {
      v9 = *v8++;
      v4 = v4 + v9;
      --v7;
    }

    while (v7);
    return v4 / v2;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = (v1 + 48);
  v4 = 0.0;
  v6 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v4 = v4 + *(v5 - 2) + *(v5 - 1) + *v5 + v5[1];
    v5 += 4;
    v6 -= 4;
  }

  while (v6);
  if (v2 != v3)
  {
    goto LABEL_8;
  }

  return v4 / v2;
}

uint64_t DKStatisticsFilter.deinit()
{

  return v0;
}

uint64_t DKStatisticsFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5A1908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB5A1970(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BB693AA0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1BB6BB784();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1BB6BAE94();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1BB5A1CDC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1BB5A1CDC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1BB693A54(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1BB5A2238((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
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
      result = sub_1BB59D140(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1BB59D140((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1BB5A2238((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

uint64_t sub_1BB5A2238(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t static DKConversions.convert(time:metadata:image:camera:)(uint64_t a1, unint64_t a2, void *a3, unsigned __int8 *a4)
{
  v121 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v122 = &v96 - v8;
  v107 = sub_1BB6BA844();
  v115 = *(v107 - 8);
  v9 = MEMORY[0x1EEE9AC00](v107);
  v98 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v96 - v11;
  v12 = sub_1BB6BA7F4();
  v119 = *(v12 - 8);
  v13 = v119;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v96 - v16;
  v18 = v13[2];
  v108 = a1;
  v18(&v96 - v16, a1, v12);
  v19 = type metadata accessor for DKObservationMetadata(0);
  v20 = objc_allocWithZone(v19);
  v21 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image;
  v22 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition;
  *&v20[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition] = 0;
  v23 = &v20[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_imageSize];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = &v20[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_appID];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v20[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_latency];
  *v25 = 0;
  v25[8] = 1;
  v106 = v13 + 2;
  v105 = v18;
  v18(&v20[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time], v17, v12);
  *&v20[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_observations] = MEMORY[0x1E69E7CC0];
  v26 = v121;
  *&v20[v21] = v121;
  *&v20[v22] = 0;
  v27 = v26;

  v127.receiver = v20;
  v127.super_class = v19;
  v28 = v119;
  v29 = objc_msgSendSuper2(&v127, sel_init);
  v30 = *(v28 + 1);
  v97 = v17;
  v121 = v12;
  result = v30(v17, v12);
  if (!(a2 >> 62))
  {
    v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_3;
    }

    return v29;
  }

  result = sub_1BB6BB564();
  v32 = result;
  if (!result)
  {
    return v29;
  }

LABEL_3:
  if (v32 >= 1)
  {
    v33 = 0;
    v120 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_observations;
    v118 = a2 & 0xC000000000000001;
    v100 = (v28 + 32);
    v99 = (v115 + 32);
    v34 = &unk_1E7FB4000;
    v104 = a4;
    v103 = a2;
    v102 = v29;
    v101 = v32;
    do
    {
      if (v118)
      {
        v35 = MEMORY[0x1BFB111F0](v33, a2);
      }

      else
      {
        v35 = *(a2 + 8 * v33 + 32);
      }

      v36 = v35;
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37 && (v38 = v37, [v37 v34[382]], LOBYTE(v123) = a4[1], v126 = *a4, sub_1BB5A4994(&v123, &v126, v128, v39, v40, v41, v42), (v129 & 1) == 0))
      {
        v134 = v128[0];
        v135 = v128[1];
        v105(v116, v108, v121);
        sub_1BB6BA834();
        v114 = [v38 faceID];
        v68 = [v38 hasYawAngle];
        v69 = 0;
        v70 = 0;
        if (v68)
        {
          [v38 yawAngle];
          v70 = v71;
        }

        v119 = v36;
        v113 = v68 ^ 1;
        v112 = [v38 hasRollAngle];
        if (v112)
        {
          [v38 rollAngle];
          v69 = v72;
        }

        v73 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
        v74 = *(*(v73 - 8) + 56);
        v74(v122, 1, 1, v73);
        v115 = type metadata accessor for DKFaceObservation(0);
        v75 = swift_allocObject();
        v76 = v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
        v77 = v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
        v78 = v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw;
        v79 = v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch;
        v110 = (v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll);
        v111 = (v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance);
        *(v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType) = 0;
        *(v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = 0;
        *(v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = 0;
        v109 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isFrontal;
        v80 = v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprintConfidence;
        *v80 = 0;
        *(v80 + 8) = 1;
        v81 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities;
        v74(v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities, 1, 1, v73);
        (*v100)(v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time, v116, v121);
        (*v99)(v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid, v117, v107);
        v82 = (v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
        v83 = v135;
        *v82 = v134;
        v82[1] = v83;
        *(v75 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences) = MEMORY[0x1E69E7CC0];
        *v76 = v114;
        *(v76 + 8) = 0;
        *v77 = -1;
        *(v77 + 8) = 0;
        *v78 = v70;
        *(v78 + 8) = v113;
        *v79 = 0;
        *(v79 + 8) = 1;
        v84 = v110;
        *v110 = v69;
        *(v84 + 8) = v112 ^ 1;
        v85 = v111;
        *v111 = 0;
        *(v85 + 8) = 1;
        *(v75 + v109) = 2;
        sub_1BB5A4CF4(v122, v75 + v81);
        v29 = v102;
        v86 = v120;
        v87 = *&v102[v120];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v29[v86] = v87;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v87 = sub_1BB59D370(0, v87[2] + 1, 1, v87);
          *&v29[v120] = v87;
        }

        a2 = v103;
        v32 = v101;
        v89 = v119;
        v91 = v87[2];
        v90 = v87[3];
        a4 = v104;
        if (v91 >= v90 >> 1)
        {
          v94 = sub_1BB59D370((v90 > 1), v91 + 1, 1, v87);
          *&v29[v120] = v94;
        }

        v124 = v115;
        v125 = sub_1BB5A4D64(&qword_1EBC5C068, type metadata accessor for DKFaceObservation);
        *&v123 = v75;
        v92 = v120;
        v93 = *&v29[v120];
        *(v93 + 16) = v91 + 1;
        sub_1BB593648(&v123, v93 + 40 * v91 + 32);
        *&v29[v92] = v93;
        v34 = &unk_1E7FB4000;
      }

      else
      {
        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (!v43 || (v44 = v43, [v43 v34[382]], LOBYTE(v123) = a4[1], v126 = *a4, sub_1BB5A4994(&v123, &v126, v130, v45, v46, v47, v48), (v131 & 1) != 0))
        {
        }

        else
        {
          v119 = v36;
          v132 = v130[0];
          v133 = v130[1];
          v105(v97, v108, v121);
          sub_1BB6BA834();
          v115 = [v44 bodyID];
          v49 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
          v50 = *(*(v49 - 8) + 56);
          v50(v122, 1, 1, v49);
          v51 = type metadata accessor for DKBodyObservation(0);
          v52 = swift_allocObject();
          v53 = v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId;
          v54 = v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
          *(v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop) = 0;
          *(v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint) = 0;
          v55 = v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprintConfidence;
          *v55 = 0;
          *(v55 + 8) = 1;
          v56 = v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
          v57 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities;
          v50(v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities, 1, 1, v49);
          (*v100)(v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time, v97, v121);
          (*v99)(v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid, v98, v107);
          v58 = (v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
          v59 = v133;
          *v58 = v132;
          v58[1] = v59;
          *(v52 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences) = MEMORY[0x1E69E7CC0];
          *v53 = v115;
          *(v53 + 8) = 0;
          v29 = v102;
          *v54 = -1;
          *(v54 + 8) = 0;
          *v56 = 0;
          *(v56 + 8) = 1;
          sub_1BB5A4CF4(v122, v52 + v57);
          v60 = v120;
          v61 = *&v29[v120];
          v62 = swift_isUniquelyReferenced_nonNull_native();
          *&v29[v60] = v61;
          if ((v62 & 1) == 0)
          {
            v61 = sub_1BB59D370(0, v61[2] + 1, 1, v61);
            *&v29[v120] = v61;
          }

          v64 = v61[2];
          v63 = v61[3];
          a2 = v103;
          v32 = v101;
          v65 = v119;
          if (v64 >= v63 >> 1)
          {
            v95 = sub_1BB59D370((v63 > 1), v64 + 1, 1, v61);
            *&v29[v120] = v95;
          }

          v124 = v51;
          v125 = sub_1BB5A4D64(&qword_1EBC5C060, type metadata accessor for DKBodyObservation);
          *&v123 = v52;
          v66 = v120;
          v67 = *&v29[v120];
          *(v67 + 16) = v64 + 1;
          sub_1BB593648(&v123, v67 + 40 * v64 + 32);
          *&v29[v66] = v67;
          a4 = v104;
          v34 = &unk_1E7FB4000;
        }
      }

      ++v33;
    }

    while (v32 != v33);
    return v29;
  }

  __break(1u);
  return result;
}

double static DKConversions.convert(rect:orient:port:)@<D0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  sub_1BB5A4994(a1, a2, v10, a4, a5, a6, a7);
  result = *v10;
  v9 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v11;
  return result;
}

char *static DKConversions.convert(time:observationsDict:image:cameraPortType:cameraIntrinsics:referenceDimensions:orientation:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v118 - v13;
  v144 = sub_1BB6BA844();
  v15 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1BB6BA7F4();
  v17 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v19 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v147 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C070);
  sub_1BB6BAE24();
  v20 = v147;
  if (!v147)
  {
    return 0;
  }

  DKCameraOrientation.init(rawValue:)(a7);
  if (v147 == 8)
  {

    return 0;
  }

  v139 = v15;
  v138 = v147;
  static DKCamera.convertPort(portType:)(a4, a5, &v147);
  v137 = v147;
  v140 = v20;
  v22 = *(v17 + 16);
  v23 = v19;
  v136 = a1;
  v143 = v19;
  v24 = v146;
  v22(v23, a1, v146);
  v25 = type metadata accessor for DKObservationMetadata(0);
  v26 = objc_allocWithZone(v25);
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image;
  v141 = v14;
  v28 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition;
  *&v26[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition] = 0;
  v29 = &v26[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_imageSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = &v26[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_appID];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v26[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_latency];
  *v31 = 0;
  v31[8] = 1;
  v135 = v17 + 16;
  v134 = v22;
  v22(&v26[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time], v143, v24);
  v32 = v140;
  *&v26[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_observations] = MEMORY[0x1E69E7CC0];
  *&v26[v27] = a3;
  *&v26[v28] = 0;
  v33 = v141;
  v34 = a3;

  v153.receiver = v26;
  v153.super_class = v25;
  v142 = objc_msgSendSuper2(&v153, sel_init);
  (*(v17 + 8))(v143, v24);
  v35 = *(v32 + 16);
  if (v35)
  {
    v133 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_observations;
    v36 = (v32 + 32);
    v132 = (v17 + 32);
    v139 += 4;
    while (1)
    {
      v37 = *v36;
      v38 = *(*v36 + 16);

      if (v38)
      {
        v39 = sub_1BB6A10FC(0x444965636146, 0xE600000000000000);
        if (v40)
        {
          break;
        }
      }

      v148 = 0u;
      v147 = 0u;
      sub_1BB5A4DAC(&v147);
      if (!*(v37 + 16) || (v45 = sub_1BB6A10FC(17481, 0xE200000000000000), (v46 & 1) == 0))
      {

        v148 = 0u;
        v147 = 0u;
LABEL_25:
        sub_1BB5A4DAC(&v147);
        goto LABEL_9;
      }

      sub_1BB5A4E14(*(v37 + 56) + 32 * v45, &v147);
      sub_1BB5A4DAC(&v147);
      if (*(v37 + 16))
      {
        v47 = sub_1BB6A10FC(1952671058, 0xE400000000000000);
        if (v48)
        {
          sub_1BB5A4E14(*(v37 + 56) + 32 * v47, &v147);
          sub_1BB5A4E70();
          if (swift_dynamicCast())
          {
            v43 = v151;
            *&v151 = 88;
            *(&v151 + 1) = 0xE100000000000000;
            v49 = [v43 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v49)
            {
              sub_1BB6BB214();
              swift_unknownObjectRelease();
            }

            else
            {
              v152 = 0u;
              v151 = 0u;
            }

            v148 = v152;
            v147 = v151;
            if (!*(&v152 + 1))
            {
LABEL_72:

              goto LABEL_25;
            }

            if (swift_dynamicCast())
            {
              v52 = v150;
              *&v151 = 89;
              *(&v151 + 1) = 0xE100000000000000;
              v53 = [v43 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v53)
              {
                sub_1BB6BB214();
                swift_unknownObjectRelease();
              }

              else
              {
                v152 = 0u;
                v151 = 0u;
              }

              v148 = v152;
              v147 = v151;
              if (!*(&v152 + 1))
              {
                goto LABEL_72;
              }

              if (swift_dynamicCast())
              {
                v56 = v150;
                *&v151 = 0x6874646957;
                *(&v151 + 1) = 0xE500000000000000;
                v57 = [v43 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();
                if (v57)
                {
                  sub_1BB6BB214();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v152 = 0u;
                  v151 = 0u;
                }

                v148 = v152;
                v147 = v151;
                if (!*(&v152 + 1))
                {
                  goto LABEL_72;
                }

                if (swift_dynamicCast())
                {
                  v60 = v150;
                  *&v151 = 0x746867696548;
                  *(&v151 + 1) = 0xE600000000000000;
                  v61 = [v43 __swift_objectForKeyedSubscript_];
                  swift_unknownObjectRelease();
                  if (v61)
                  {
                    sub_1BB6BB214();
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v152 = 0u;
                    v151 = 0u;
                  }

                  v148 = v152;
                  v147 = v151;
                  if (!*(&v152 + 1))
                  {
                    goto LABEL_72;
                  }

                  if (swift_dynamicCast())
                  {
                    LOBYTE(v147) = v138;
                    LOBYTE(v151) = v137;
                    sub_1BB5A4994(&v147, &v151, v156, v52, v56, v60, v150);
                    if ((v157 & 1) == 0)
                    {
                      v158 = v156[0];
                      v159 = v156[1];
                      if (*(v37 + 16) && (v65 = sub_1BB6A10FC(0x444965636146, 0xE600000000000000), (v66 & 1) != 0) && (sub_1BB5A4E14(*(v37 + 56) + 32 * v65, &v147), swift_dynamicCast()))
                      {
                        v67 = v151;
                      }

                      else
                      {
                        v67 = -1;
                      }

                      v131 = v67;
                      if (*(v37 + 16) && (v95 = sub_1BB6A10FC(0x444970756F7247, 0xE700000000000000), (v96 & 1) != 0))
                      {
                        sub_1BB5A4E14(*(v37 + 56) + 32 * v95, &v147);

                        if (swift_dynamicCast())
                        {
                          v97 = v151;
                          goto LABEL_102;
                        }
                      }

                      else
                      {
                      }

                      v97 = -1;
LABEL_102:
                      v129 = v97;
                      v134(v143, v136, v146);
                      sub_1BB6BA834();
                      v98 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
                      v99 = *(v98 - 8);
                      v125 = *(v99 + 56);
                      v126 = (v99 + 56);
                      (v125)(v33, 1, 1, v98);
                      v130 = type metadata accessor for DKBodyObservation(0);
                      v100 = swift_allocObject();
                      v127 = (v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId);
                      v128 = (v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId);
                      *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop) = 0;
                      *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint) = 0;
                      v101 = v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprintConfidence;
                      *v101 = 0;
                      *(v101 + 8) = 1;
                      v102 = v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
                      v103 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities;
                      (v125)(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities, 1, 1, v98);
                      (*v132)(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_time, v143, v146);
                      (*v139)(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid, v145, v144);
                      v104 = (v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
                      v105 = v159;
                      *v104 = v158;
                      v104[1] = v105;
                      *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences) = MEMORY[0x1E69E7CC0];
                      v106 = v127;
                      *v127 = v131;
                      *(v106 + 8) = 0;
                      v107 = v128;
                      *v128 = v129;
                      *(v107 + 8) = 0;
                      *v102 = 0;
                      *(v102 + 8) = 1;
                      v33 = v141;
                      v129 = v100;
                      sub_1BB5A4CF4(v141, v100 + v103);
                      v108 = v142;
                      v109 = v133;
                      v110 = *&v142[v133];
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *&v108[v109] = v110;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v110 = sub_1BB59D370(0, v110[2] + 1, 1, v110);
                        *&v142[v133] = v110;
                      }

                      v94 = v110[2];
                      v112 = v110[3];
                      v131 = v94 + 1;
                      if (v94 >= v112 >> 1)
                      {
                        v117 = sub_1BB59D370((v112 > 1), v131, 1, v110);
                        *&v142[v133] = v117;
                      }

                      *(&v148 + 1) = v130;
                      v149 = sub_1BB5A4D64(&qword_1EBC5C060, type metadata accessor for DKBodyObservation);
                      *&v147 = v129;
LABEL_107:
                      v113 = v142;
                      v114 = v133;
                      v115 = *&v142[v133];
                      *(v115 + 16) = v131;
                      sub_1BB593648(&v147, v115 + 40 * v94 + 32);
                      *&v113[v114] = v115;
                      goto LABEL_9;
                    }
                  }
                }
              }
            }

LABEL_7:
          }
        }
      }

LABEL_8:

LABEL_9:
      ++v36;
      if (!--v35)
      {
        goto LABEL_108;
      }
    }

    sub_1BB5A4E14(*(v37 + 56) + 32 * v39, &v147);
    sub_1BB5A4DAC(&v147);
    if (!*(v37 + 16))
    {
      goto LABEL_8;
    }

    v41 = sub_1BB6A10FC(1952671058, 0xE400000000000000);
    if ((v42 & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_1BB5A4E14(*(v37 + 56) + 32 * v41, &v147);
    sub_1BB5A4E70();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    v43 = v151;
    *&v151 = 88;
    *(&v151 + 1) = 0xE100000000000000;
    v44 = [v43 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v44)
    {
      sub_1BB6BB214();
      swift_unknownObjectRelease();
    }

    else
    {
      v152 = 0u;
      v151 = 0u;
    }

    v148 = v152;
    v147 = v151;
    if (!*(&v152 + 1))
    {
      goto LABEL_72;
    }

    if (swift_dynamicCast())
    {
      v50 = v150;
      *&v151 = 89;
      *(&v151 + 1) = 0xE100000000000000;
      v51 = [v43 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v51)
      {
        sub_1BB6BB214();
        swift_unknownObjectRelease();
      }

      else
      {
        v152 = 0u;
        v151 = 0u;
      }

      v148 = v152;
      v147 = v151;
      if (!*(&v152 + 1))
      {
        goto LABEL_72;
      }

      if (swift_dynamicCast())
      {
        v54 = v150;
        *&v151 = 0x6874646957;
        *(&v151 + 1) = 0xE500000000000000;
        v55 = [v43 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v55)
        {
          sub_1BB6BB214();
          swift_unknownObjectRelease();
        }

        else
        {
          v152 = 0u;
          v151 = 0u;
        }

        v148 = v152;
        v147 = v151;
        if (!*(&v152 + 1))
        {
          goto LABEL_72;
        }

        if (swift_dynamicCast())
        {
          v58 = v150;
          *&v151 = 0x746867696548;
          *(&v151 + 1) = 0xE600000000000000;
          v59 = [v43 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v59)
          {
            sub_1BB6BB214();
            swift_unknownObjectRelease();
          }

          else
          {
            v152 = 0u;
            v151 = 0u;
          }

          v148 = v152;
          v147 = v151;
          if (!*(&v152 + 1))
          {
            goto LABEL_72;
          }

          if (swift_dynamicCast())
          {
            LOBYTE(v147) = v138;
            LOBYTE(v151) = v137;
            sub_1BB5A4994(&v147, &v151, v154, v50, v54, v58, v150);
            if ((v155 & 1) == 0)
            {
              v160 = v154[0];
              v161 = v154[1];
              if (*(v37 + 16) && (v62 = sub_1BB6A10FC(0x444965636146, 0xE600000000000000), (v63 & 1) != 0) && (sub_1BB5A4E14(*(v37 + 56) + 32 * v62, &v147), swift_dynamicCast()))
              {
                v64 = v151;
              }

              else
              {
                v64 = -1;
              }

              v131 = v64;
              if (*(v37 + 16) && (v68 = sub_1BB6A10FC(0x444970756F7247, 0xE700000000000000), (v69 & 1) != 0) && (sub_1BB5A4E14(*(v37 + 56) + 32 * v68, &v147), swift_dynamicCast()))
              {
                v70 = v151;
              }

              else
              {
                v70 = -1;
              }

              v130 = v70;
              if (*(v37 + 16) && (v71 = sub_1BB6A10FC(0x666E49656C676E41, 0xEC0000007761596FLL), (v72 & 1) != 0) && (sub_1BB5A4E14(*(v37 + 56) + 32 * v71, &v147), (swift_dynamicCast() & 1) != 0))
              {
                LODWORD(v129) = 0;
                v73 = *&v151 * 3.14159265 / 180.0;
              }

              else
              {
                LODWORD(v129) = 1;
                v73 = 0.0;
              }

              if (*(v37 + 16) && (v74 = sub_1BB6A10FC(0x666E49656C676E41, 0xEE0068637469506FLL), (v75 & 1) != 0))
              {
                sub_1BB5A4E14(*(v37 + 56) + 32 * v74, &v147);

                if (swift_dynamicCast())
                {
                  LODWORD(v127) = 0;
                  v76 = *&v151 * 3.14159265 / 180.0;
LABEL_90:
                  v134(v143, v136, v146);
                  sub_1BB6BA834();
                  v77 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
                  v119 = *(*(v77 - 8) + 56);
                  v119(v33, 1, 1, v77);
                  v128 = type metadata accessor for DKFaceObservation(0);
                  v78 = swift_allocObject();
                  v126 = (v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId);
                  v125 = (v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId);
                  v124 = (v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw);
                  v123 = (v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch);
                  v122 = (v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll);
                  v121 = (v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance);
                  *(v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType) = 0;
                  *(v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = 0;
                  *(v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = 0;
                  v120 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isFrontal;
                  v79 = v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprintConfidence;
                  *v79 = 0;
                  *(v79 + 8) = 1;
                  v80 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities;
                  v119(v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities, 1, 1, v77);
                  (*v132)(v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time, v143, v146);
                  (*v139)(v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid, v145, v144);
                  v81 = (v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
                  v82 = v161;
                  *v81 = v160;
                  v81[1] = v82;
                  *(v78 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences) = MEMORY[0x1E69E7CC0];
                  v83 = v126;
                  *v126 = v131;
                  *(v83 + 8) = 0;
                  v84 = v125;
                  *v125 = v130;
                  *(v84 + 8) = 0;
                  v85 = v124;
                  *v124 = v73;
                  *(v85 + 8) = v129;
                  v86 = v123;
                  *v123 = 0;
                  *(v86 + 8) = 1;
                  v87 = v122;
                  *v122 = v76;
                  *(v87 + 8) = v127;
                  v88 = v121;
                  *v121 = 0;
                  *(v88 + 8) = 1;
                  *(v78 + v120) = 2;
                  v89 = v78 + v80;
                  v33 = v141;
                  sub_1BB5A4CF4(v141, v89);
                  v90 = v142;
                  v91 = *&v142[v133];
                  v92 = swift_isUniquelyReferenced_nonNull_native();
                  *&v90[v133] = v91;
                  if ((v92 & 1) == 0)
                  {
                    v91 = sub_1BB59D370(0, v91[2] + 1, 1, v91);
                    *&v142[v133] = v91;
                  }

                  v94 = v91[2];
                  v93 = v91[3];
                  v131 = v94 + 1;
                  if (v94 >= v93 >> 1)
                  {
                    v116 = sub_1BB59D370((v93 > 1), v131, 1, v91);
                    *&v142[v133] = v116;
                  }

                  *(&v148 + 1) = v128;
                  v149 = sub_1BB5A4D64(&qword_1EBC5C068, type metadata accessor for DKFaceObservation);
                  *&v147 = v78;
                  goto LABEL_107;
                }
              }

              else
              {
              }

              LODWORD(v127) = 1;
              v76 = 0.0;
              goto LABEL_90;
            }
          }
        }
      }
    }

    goto LABEL_7;
  }

LABEL_108:

  return v142;
}

void sub_1BB5A4994(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v9 = *a1;
  if (*a2 - 1 > 1)
  {
    v10 = 1;
    MinX = 0.0;
    if (*a1 > 2u)
    {
      if (v9 == 3)
      {
LABEL_10:
        v19 = a4;
        v12 = a5;
        v13 = a6;
        v14 = a7;
        MinX = CGRectGetMinX(*(&a5 - 1));
        goto LABEL_11;
      }

      if (v9 != 4)
      {
        goto LABEL_9;
      }

      v12 = a5;
      v13 = a6;
      v14 = a7;
      v28 = 1.0 - CGRectGetMinX(*&a4);
      v37.origin.x = a4;
      v37.origin.y = v12;
      v37.size.width = v13;
      v37.size.height = v14;
      MinX = v28 - CGRectGetWidth(v37);
      v38.origin.x = a4;
      v38.origin.y = v12;
      v38.size.width = v13;
      v38.size.height = v14;
      v27 = 1.0 - CGRectGetMinY(v38);
LABEL_21:
      v39.origin.x = a4;
      v39.origin.y = v12;
      v39.size.width = v13;
      v39.size.height = v14;
      MinY = v27 - CGRectGetHeight(v39);
      goto LABEL_22;
    }

    if (v9 != 1)
    {
      MinY = 0.0;
      Height = 0.0;
      Width = 0.0;
      if (v9 != 2)
      {
        goto LABEL_28;
      }

      v26 = a4;
      v21 = a5;
      v22 = a6;
      v23 = a7;
      MinX = CGRectGetMinY(*(&a5 - 1));
      v34.origin.x = a4;
      v34.origin.y = v21;
      v34.size.width = v22;
      v34.size.height = v23;
      v25 = 1.0 - CGRectGetMinX(v34);
LABEL_18:
      v35.origin.x = a4;
      v35.origin.y = v21;
      v35.size.width = v22;
      v35.size.height = v23;
      MinY = v25 - CGRectGetWidth(v35);
LABEL_26:
      v44.origin.x = a4;
      v44.origin.y = v21;
      v44.size.width = v22;
      v44.size.height = v23;
      Height = CGRectGetHeight(v44);
      v45.origin.x = a4;
      v45.origin.y = v21;
      v45.size.width = v22;
      v45.size.height = v23;
      Width = CGRectGetWidth(v45);
      goto LABEL_27;
    }

    v21 = a5;
    v22 = a6;
    v23 = a7;
    v29 = 1.0 - CGRectGetMinY(*&a4);
    v42.origin.x = a4;
    v42.origin.y = v21;
    v42.size.width = v22;
    v42.size.height = v23;
    MinX = v29 - CGRectGetHeight(v42);
LABEL_25:
    v43.origin.x = a4;
    v43.origin.y = v21;
    v43.size.width = v22;
    v43.size.height = v23;
    MinY = CGRectGetMinX(v43);
    goto LABEL_26;
  }

  v10 = 1;
  MinX = 0.0;
  if (*a1 <= 2u)
  {
    if (v9 != 1)
    {
      MinY = 0.0;
      Height = 0.0;
      Width = 0.0;
      if (v9 != 2)
      {
        goto LABEL_28;
      }

      v20 = a4;
      v21 = a5;
      v22 = a6;
      v23 = a7;
      v24 = 1.0 - CGRectGetMinY(*(&a5 - 1));
      v32.origin.x = a4;
      v32.origin.y = v21;
      v32.size.width = v22;
      v32.size.height = v23;
      MinX = v24 - CGRectGetHeight(v32);
      v33.origin.x = a4;
      v33.origin.y = v21;
      v33.size.width = v22;
      v33.size.height = v23;
      v25 = 1.0 - CGRectGetMinX(v33);
      goto LABEL_18;
    }

    v21 = a5;
    v22 = a6;
    v23 = a7;
    MinX = CGRectGetMinY(*&a4);
    goto LABEL_25;
  }

  if (v9 == 3)
  {
    v12 = a5;
    v13 = a6;
    v14 = a7;
    MinX = CGRectGetMinX(*&a4);
    v36.origin.x = a4;
    v36.origin.y = v12;
    v36.size.width = v13;
    v36.size.height = v14;
    v27 = 1.0 - CGRectGetMinY(v36);
    goto LABEL_21;
  }

  if (v9 == 4)
  {
    v12 = a5;
    v13 = a6;
    v14 = a7;
    v15 = 1.0 - CGRectGetMinX(*&a4);
    v30.origin.x = a4;
    v30.origin.y = v12;
    v30.size.width = v13;
    v30.size.height = v14;
    MinX = v15 - CGRectGetWidth(v30);
LABEL_11:
    v31.origin.x = a4;
    v31.origin.y = v12;
    v31.size.width = v13;
    v31.size.height = v14;
    MinY = CGRectGetMinY(v31);
LABEL_22:
    v40.origin.x = a4;
    v40.origin.y = v12;
    v40.size.width = v13;
    v40.size.height = v14;
    Height = CGRectGetWidth(v40);
    v41.origin.x = a4;
    v41.origin.y = v12;
    v41.size.width = v13;
    v41.size.height = v14;
    Width = CGRectGetHeight(v41);
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

LABEL_9:
  MinY = 0.0;
  Height = 0.0;
  Width = 0.0;
  if (v9 == 7)
  {
    goto LABEL_10;
  }

LABEL_28:
  *a3 = MinX;
  *(a3 + 8) = MinY;
  *(a3 + 16) = Height;
  *(a3 + 24) = Width;
  *(a3 + 32) = v10;
}

uint64_t sub_1BB5A4CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5A4D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BB5A4DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB5A4E14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BB5A4E70()
{
  result = qword_1EBC5C080;
  if (!qword_1EBC5C080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC5C080);
  }

  return result;
}

uint64_t sub_1BB5A4EBC(unsigned __int8 *a1, unsigned __int8 *a2, double a3, double a4)
{
  v4 = *a1;
  if (*a2 - 1 > 1)
  {
    if (*a1 > 2u)
    {
      v5 = a3;
      v6 = 1.0 - a3;
      if (v4 == 7)
      {
        v7 = a3;
      }

      else
      {
        v7 = 0.0;
      }

      goto LABEL_10;
    }

    v5 = 1.0 - a4;
    v9 = v4 == 2;
  }

  else
  {
    if (*a1 > 2u)
    {
      v5 = a3;
      v6 = 1.0 - a3;
      if (v4 == 7)
      {
        v7 = a3;
      }

      else
      {
        v7 = 0.0;
      }

LABEL_10:
      if (v4 != 4)
      {
        v6 = v7;
      }

      v8 = v4 == 3;
      goto LABEL_18;
    }

    v5 = a4;
    v9 = v4 == 2;
    a4 = 1.0 - a4;
  }

  v6 = a4;
  if (!v9)
  {
    v6 = 0.0;
  }

  v8 = v4 == 1;
LABEL_18:
  if (v8)
  {
    return *&v5;
  }

  else
  {
    return *&v6;
  }
}

IntelligentTrackingCore::DKCameraOrientation_optional __swiftcall DKCameraOrientation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t static DKCamera.convertPort(portType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result == 0x6570795474726F50 && a2 == 0xEF6E776F6E6B6E55;
  if (v4 || (v6 = result, result = sub_1BB6BB7E4(), (result & 1) != 0))
  {
    v7 = 0;
  }

  else if (v6 == 0x6570795474726F50 && a2 == 0xED0000746E6F7246 || (result = sub_1BB6BB7E4(), (result & 1) != 0))
  {
    v7 = 1;
  }

  else if (v6 == 0xD000000000000016 && 0x80000001BB6CAE70 == a2 || (result = sub_1BB6BB7E4(), (result & 1) != 0))
  {
    v7 = 2;
  }

  else if (v6 == 0x6570795474726F50 && a2 == 0xEC0000006B636142 || (result = sub_1BB6BB7E4(), (result & 1) != 0))
  {
    v7 = 3;
  }

  else if (v6 == 0xD000000000000015 && 0x80000001BB6CAE90 == a2 || (result = sub_1BB6BB7E4(), (result & 1) != 0))
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
    if (v6 != 0xD000000000000015 || 0x80000001BB6CAEB0 != a2)
    {
      result = sub_1BB6BB7E4();
      if (result)
      {
        v7 = 5;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  *a3 = v7;
  return result;
}

uint64_t DKCamera.motion.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DKCamera() + 32);

  return sub_1BB5A8610(a1, v3);
}

uint64_t DKCamera.imageSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for DKCamera();
  v8 = v3 + *(result + 40);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

__n128 DKCamera.distortionCoefficients.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DKCamera() + 44);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 DKCamera.distortionCoefficients.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for DKCamera() + 44);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

void DKCamera.init(port:orientation:f:o:distortionCoefficients:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, double a3@<X2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, double a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, __int128 *a10)
{
  v69 = a8;
  v67 = a6;
  v68 = a7;
  v66 = a4;
  v65 = a3;
  v14 = sub_1BB6BA7F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v16) = *a2;
  v72 = *a1;
  LODWORD(v73.f64[0]) = v16;
  v18 = *(a10 + 4);
  v19 = *(a10 + 40);
  v20 = type metadata accessor for DKCamera();
  v21 = a9 + v20[8];
  sub_1BB6BA7E4();
  v22 = *(v15 + 16);
  v23 = *a10;
  v70 = a10[1];
  v71 = v23;
  v22(v21, v17, v14);
  v24 = type metadata accessor for DKMotion3();
  *(v21 + v24[5]) = &unk_1F3A47FC8;
  *(v21 + v24[6]) = &unk_1F3A48000;
  (*(v15 + 8))(v17, v14);
  *(v21 + v24[7]) = &unk_1F3A48038;
  *(a9 + v20[9]) = 1;
  v26 = a9 + v20[10];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = a9 + v20[11];
  v28 = v70;
  *v27 = v71;
  *(v27 + 16) = v28;
  *(v27 + 32) = v18;
  *(v27 + 40) = v19;
  if (a5 & 1) != 0 || (v69)
  {
    if (v72 > 2)
    {
      v32 = LODWORD(v73.f64[0]);
      if (v72 == 3)
      {
        v29 = 0x44231929448F5D79;
        v30 = 1154642043;
        v31 = xmmword_1BB6BD6F0;
      }

      else if (v72 == 4)
      {
        v29 = 0x44215B20448FD4E5;
        v30 = 1146894262;
        v31 = xmmword_1BB6BD6C0;
      }

      else
      {
        v29 = 0x4424A1D8448E7BBELL;
        v30 = 1161757061;
        v31 = xmmword_1BB6BD690;
      }
    }

    else
    {
      v29 = 0x44BC957044FBD91DLL;
      v30 = 1160463942;
      v31 = xmmword_1BB6BD660;
      v32 = LODWORD(v73.f64[0]);
    }

    v31.i32[1] = v30;
    v42 = vcvtq_f64_f32(*v31.i8);
    v43 = vcvtq_f64_f32(v29);
    *a9 = v72;
    *(a9 + 1) = v32;
    v31.i32[0] = 2;
    v25.i32[0] = v32 - 3;
    v44 = vdupq_lane_s32(*&vcgtq_u32(v31, v25), 0);
    v45 = vbslq_s8(v44, v43, vextq_s8(v43, v43, 8uLL));
    v46 = vbslq_s8(v44, v42, vextq_s8(v42, v42, 8uLL));
    __asm { FMOV            V2.2D, #0.5 }

    v52 = vdivq_f64(vmulq_f64(v46, _Q2), v45);
    v73 = v52;
    *(a9 + 24) = v52;
    v53 = atan(0.5 / v52.f64[0]);
    v54 = v53 + v53;
    v55 = atan(0.5 / v73.f64[1]);
    *(a9 + 8) = v54;
    *(a9 + 16) = v55 + v55;
    return;
  }

  v33 = v65;
  v35 = v67;
  v34 = v68;
  v36 = v66;
  if (v65 < 1.0e-10 || (v37 = v66, v66 < 1.0e-10) || v67 < 1.0e-10 || (v38 = v68, v68 < 1.0e-10))
  {
    v61 = 0xE900000000000029;
    v62 = 0xD000000000000012;
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000025, 0x80000001BB6CAED0);
    MEMORY[0x1BFB10B60](0xD000000000000012, 0x80000001BB6CAF00);
    v74 = v33;
    v75 = v36;
    type metadata accessor for CGPoint(0);
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](32, 0xE100000000000000);
    v74 = v35;
    v75 = v34;
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](32, 0xE100000000000000);
    if (SLODWORD(v73.f64[0]) > 3)
    {
      if (SLODWORD(v73.f64[0]) > 5)
      {
        if (LODWORD(v73.f64[0]) != 6)
        {
          v61 = 0xE900000000000064;
          v62 = 0x6574636572726F43;
          goto LABEL_36;
        }

        v61 = 0xE800000000000000;
        v63 = 0x6F4465636146;
        goto LABEL_35;
      }

      if (LODWORD(v73.f64[0]) != 4)
      {
        v61 = 0xE600000000000000;
        v62 = 0x705565636146;
        goto LABEL_36;
      }

      v61 = 0xEE00746867695265;
    }

    else
    {
      if (SLODWORD(v73.f64[0]) <= 1)
      {
        if (LODWORD(v73.f64[0]))
        {
          v61 = 0xE800000000000000;
          v62 = 0x7469617274726F50;
LABEL_36:
          MEMORY[0x1BFB10B60](v62, v61);

          sub_1BB6BB524();
          __break(1u);
          return;
        }

        v63 = 0x6F6E6B6E5528;
LABEL_35:
        v62 = v63 & 0xFFFFFFFFFFFFLL | 0x6E77000000000000;
        goto LABEL_36;
      }

      if (LODWORD(v73.f64[0]) == 2)
      {
        v61 = 0x80000001BB6CAF50;
        goto LABEL_36;
      }

      v61 = 0xED00007466654C65;
    }

    v62 = 0x70616373646E614CLL;
    goto LABEL_36;
  }

  v39 = LOBYTE(v73.f64[0]);
  if ((LODWORD(v73.f64[0]) - 3) > 1)
  {
    v40 = v66;
    v41 = v68;
    v37 = v65;
    v38 = v67;
  }

  else
  {
    v40 = v65;
    v41 = v67;
  }

  v56 = v40 * 0.5 / v41;
  v57 = v37 * 0.5 / v38;
  *(a9 + 24) = v56;
  *(a9 + 32) = v57;
  v58 = atan(0.5 / v56);
  v59 = v58 + v58;
  v60 = atan(0.5 / v57);
  *(a9 + 8) = v59;
  *(a9 + 16) = v60 + v60;
  *a9 = v72;
  *(a9 + 1) = v39;
}

void static DKCamera.fixCalibration(f:o:port:orientation:)(double a1, double a2, double a3, double a4, uint64_t a5, unsigned __int8 *a6)
{
  if (a1 < 1.0e-10 || a2 < 1.0e-10 || a3 < 1.0e-10 || a4 < 1.0e-10)
  {
    v6 = *a6;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000025, 0x80000001BB6CAED0);
    MEMORY[0x1BFB10B60](0xD000000000000012, 0x80000001BB6CAF00);
    type metadata accessor for CGPoint(0);
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](32, 0xE100000000000000);
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](32, 0xE100000000000000);
    v7 = 0xE900000000000064;
    v8 = 0x6574636572726F43;
    if (v6 == 6)
    {
      v8 = 0x6E776F4465636146;
      v7 = 0xE800000000000000;
    }

    v9 = 0xEE00746867695265;
    v10 = 0x70616373646E614CLL;
    if (v6 != 4)
    {
      v10 = 0x705565636146;
      v9 = 0xE600000000000000;
    }

    if (v6 <= 5)
    {
      v8 = v10;
      v7 = v9;
    }

    v11 = 0x80000001BB6CAF50;
    v12 = 0x70616373646E614CLL;
    if (v6 == 2)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v11 = 0xED00007466654C65;
    }

    v13 = 0x6E776F6E6B6E5528;
    v14 = 0xE800000000000000;
    if (v6)
    {
      v13 = 0x7469617274726F50;
    }

    else
    {
      v14 = 0xE900000000000029;
    }

    if (v6 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v13 = v12;
    }

    if (v6 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = v8;
    }

    if (v6 <= 3)
    {
      v16 = v11;
    }

    else
    {
      v16 = v7;
    }

    MEMORY[0x1BFB10B60](v15, v16);

    sub_1BB6BB524();
    __break(1u);
  }
}

double static DKCamera.defaultIntrinsicsForCamera(port:)@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BB5A8CCC(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

void DKCamera.init(port:orientation:intrinsics:distortionCoefficients:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v13 = sub_1BB6BA7F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v17 = *a2;
  v50 = *(a4 + 4);
  v18 = *(a4 + 40);
  v19 = type metadata accessor for DKCamera();
  v20 = a5 + v19[8];
  sub_1BB6BA7E4();
  v21 = *(v14 + 16);
  v22 = *a4;
  v48 = a4[1];
  v49 = v22;
  v21(v20, v16, v13);
  v23 = type metadata accessor for DKMotion3();
  *(v20 + v23[5]) = &unk_1F3A48070;
  *(v20 + v23[6]) = &unk_1F3A480A8;
  v24 = v13;
  v25 = v56;
  (*(v14 + 8))(v16, v24);
  *(v20 + v23[7]) = &unk_1F3A480E0;
  *(a5 + v19[9]) = 1;
  v26 = a5 + v19[10];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = a5 + v19[11];
  v28 = v48;
  *v27 = v49;
  *(v27 + 16) = v28;
  *(v27 + 32) = v50;
  *(v27 + 40) = v18;
  *a5 = v51;
  *(a5 + 1) = v17;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEC8);
  sub_1BB6BAE24();
  if (!v54)
  {
    goto LABEL_9;
  }

  v29 = v54[2];
  if (v29 < 4)
  {
    if (v29)
    {
      v33 = v54[4];
      v34 = *(v33 + 16);
      if (v34)
      {
        if (v29 != 1)
        {
          v20 = v54[5];
          if (*(v20 + 16) >= 2uLL)
          {
            if (v34 >= 3)
            {
              v6 = *(v33 + 32);
              v7 = *(v20 + 40);
              v5 = *(v33 + 48);

              if (*(v20 + 16) >= 3uLL)
              {
                goto LABEL_16;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v30 = v54[7];
  v31 = *(v30 + 16);
  if (!v31)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v29 == 4)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = v54[8];
  if (*(v20 + 16) < 2uLL)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v31 < 3)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v6 = *(v30 + 32);
  v7 = *(v20 + 40);
  v5 = *(v30 + 48);

  if (*(v20 + 16) < 3uLL)
  {
    __break(1u);
LABEL_9:
    sub_1BB5A8D60();
    swift_allocError();
    *v32 = 0xD00000000000001BLL;
    *(v32 + 8) = 0x80000001BB6CAF70;
    *(v32 + 16) = 0;
    swift_willThrow();

    sub_1BB5A9140(v20, type metadata accessor for DKMotion3);
    return;
  }

LABEL_16:
  v8 = *(v20 + 48);

  if (v6 < 1.0e-10 || v7 < 1.0e-10 || v5 < 1.0e-10 || v8 < 1.0e-10)
  {
LABEL_43:
    v44 = 0xE900000000000029;
    v45 = 0xD000000000000012;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000025, 0x80000001BB6CAED0);
    MEMORY[0x1BFB10B60](0xD000000000000012, 0x80000001BB6CAF00);
    v52 = v6;
    v53 = v7;
    type metadata accessor for CGPoint(0);
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](32, 0xE100000000000000);
    v52 = v5;
    v53 = v8;
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](32, 0xE100000000000000);
    if (v17 > 3)
    {
      if (v17 > 5)
      {
        if (v17 != 6)
        {
          v44 = 0xE900000000000064;
          v45 = 0x6574636572726F43;
          goto LABEL_60;
        }

        v44 = 0xE800000000000000;
        v46 = 0x6F4465636146;
        goto LABEL_59;
      }

      if (v17 != 4)
      {
        v44 = 0xE600000000000000;
        v45 = 0x705565636146;
        goto LABEL_60;
      }

      v44 = 0xEE00746867695265;
    }

    else
    {
      if (v17 <= 1)
      {
        if (v17)
        {
          v44 = 0xE800000000000000;
          v45 = 0x7469617274726F50;
LABEL_60:
          MEMORY[0x1BFB10B60](v45, v44);

          sub_1BB6BB524();
          __break(1u);
          return;
        }

        v46 = 0x6F6E6B6E5528;
LABEL_59:
        v45 = v46 & 0xFFFFFFFFFFFFLL | 0x6E77000000000000;
        goto LABEL_60;
      }

      if (v17 == 2)
      {
        v44 = 0x80000001BB6CAF50;
        goto LABEL_60;
      }

      v44 = 0xED00007466654C65;
    }

    v45 = 0x70616373646E614CLL;
    goto LABEL_60;
  }

  if ((v17 - 3) <= 1)
  {
    v35 = v6;
  }

  else
  {
    v35 = v7;
  }

  if ((v17 - 3) <= 1)
  {
    v36 = v5;
  }

  else
  {
    v36 = v8;
  }

  if ((v17 - 3) <= 1)
  {
    v37 = v7;
  }

  else
  {
    v37 = v6;
  }

  if ((v17 - 3) <= 1)
  {
    v38 = v8;
  }

  else
  {
    v38 = v5;
  }

  v39 = v35 * 0.5 / v36;
  v40 = v37 * 0.5 / v38;
  *(a5 + 24) = v39;
  *(a5 + 32) = v40;

  v41 = atan(0.5 / v39);
  v42 = v41 + v41;
  v43 = atan(0.5 / v40);
  *(a5 + 8) = v42;
  *(a5 + 16) = v43 + v43;
}

void DKCamera.init(port:orientation:intrinsics:distortionCoefficients:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a3;
  v9 = sub_1BB6BA7F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a1;
  v50 = *a2;
  v13 = *(a4 + 4);
  v14 = *(a4 + 40);
  v15 = type metadata accessor for DKCamera();
  v16 = a5 + v15[8];
  sub_1BB6BA7E4();
  v17 = *(v10 + 16);
  v18 = *a4;
  v51 = a4[1];
  v52 = v18;
  v17(v16, v12, v9);
  v19 = type metadata accessor for DKMotion3();
  *(v16 + v19[5]) = &unk_1F3A48118;
  *(v16 + v19[6]) = &unk_1F3A48150;
  (*(v10 + 8))(v12, v9);
  v20 = v57;
  *(v16 + v19[7]) = &unk_1F3A48188;
  *(a5 + v15[9]) = 1;
  v21 = a5 + v15[10];
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  v22 = a5 + v15[11];
  v23 = v51;
  *v22 = v52;
  *(v22 + 16) = v23;
  *(v22 + 32) = v13;
  *(v22 + 40) = v14;
  if (*v20 < COERCE_FLOAT(1) || (v24 = *(v20 + 20), v24 < COERCE_FLOAT(1)) || (v25 = *(v20 + 32), *&v25 < COERCE_FLOAT(1)) || *(&v25 + 1) < COERCE_FLOAT(1))
  {
    sub_1BB5A8D60();
    swift_allocError();
    *v26 = 0xD00000000000001DLL;
    *(v26 + 8) = 0x80000001BB6CAF90;
    *(v26 + 16) = 0;
    swift_willThrow();
    sub_1BB5A9140(v16, type metadata accessor for DKMotion3);
    return;
  }

  v27 = *v20;
  v28 = v24;
  v29 = *&v25;
  v30 = COERCE_FLOAT(HIDWORD(*(v20 + 32)));
  if (v30 < 1.0e-10 || v29 < 1.0e-10 || v27 < 1.0e-10 || v28 < 1.0e-10)
  {
    v41 = 0xE900000000000029;
    v42 = 0xD000000000000012;
    v55 = 0;
    v56 = 0xE000000000000000;
    v43 = v29;
    v44 = v30;
    v45 = v27;
    v46 = v28;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000025, 0x80000001BB6CAED0);
    MEMORY[0x1BFB10B60](0xD000000000000012, 0x80000001BB6CAF00);
    v53 = v45;
    v54 = v46;
    type metadata accessor for CGPoint(0);
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](32, 0xE100000000000000);
    v53 = v43;
    v54 = v44;
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](32, 0xE100000000000000);
    if (v50 > 3)
    {
      if (v50 > 5)
      {
        if (v50 != 6)
        {
          v41 = 0xE900000000000064;
          v42 = 0x6574636572726F43;
          goto LABEL_37;
        }

        v41 = 0xE800000000000000;
        v47 = 0x6F4465636146;
        goto LABEL_36;
      }

      if (v50 != 4)
      {
        v41 = 0xE600000000000000;
        v42 = 0x705565636146;
        goto LABEL_37;
      }

      v41 = 0xEE00746867695265;
    }

    else
    {
      if (v50 <= 1)
      {
        if (v50)
        {
          v41 = 0xE800000000000000;
          v42 = 0x7469617274726F50;
LABEL_37:
          MEMORY[0x1BFB10B60](v42, v41);

          sub_1BB6BB524();
          __break(1u);
          return;
        }

        v47 = 0x6F6E6B6E5528;
LABEL_36:
        v42 = v47 & 0xFFFFFFFFFFFFLL | 0x6E77000000000000;
        goto LABEL_37;
      }

      if (v50 == 2)
      {
        v41 = 0x80000001BB6CAF50;
        goto LABEL_37;
      }

      v41 = 0xED00007466654C65;
    }

    v42 = 0x70616373646E614CLL;
    goto LABEL_37;
  }

  v31 = v50;
  v32 = v50 - 3;
  if ((v50 - 3) <= 1)
  {
    v33 = *v20;
  }

  else
  {
    v33 = v28;
  }

  if (v32 <= 1)
  {
    v34 = v29;
  }

  else
  {
    v34 = COERCE_FLOAT(HIDWORD(*(v20 + 32)));
  }

  if (v32 > 1)
  {
    v35 = v29;
  }

  else
  {
    v27 = v28;
    v35 = COERCE_FLOAT(HIDWORD(*(v20 + 32)));
  }

  v36 = v33 * 0.5 / v34;
  v37 = v27 * 0.5 / v35;
  *(a5 + 24) = v36;
  *(a5 + 32) = v37;
  v38 = atan(0.5 / v36);
  v39 = v38 + v38;
  v40 = atan(0.5 / v37);
  *(a5 + 8) = v39;
  *(a5 + 16) = v40 + v40;
  *a5 = v49;
  *(a5 + 1) = v31;
}

CGPoint __swiftcall DKCamera.cameraToWorldRelative(point:)(CGPoint point)
{
  sub_1BB5A6988(5, point.x, point.y);
  v3 = v2;
  v5 = atan2(-(v4 + -0.5), *(v1 + 24));
  v6 = atan2(v3 + -0.5, *(v1 + 32));
  v7 = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

uint64_t sub_1BB5A6988(uint64_t a1, float64_t a2, float64_t a3)
{
  result = type metadata accessor for DKCamera();
  v7.f64[0] = a2;
  v6 = v3 + *(result + 44);
  v7.f64[1] = a3;
  if ((*(v6 + 40) & 1) == 0)
  {
    if (a1 < 1)
    {
LABEL_9:
      __break(1u);
    }

    else
    {
      v8 = *(v6 + 32);
      v10 = *v6;
      v9 = *(v6 + 8);
      v11 = *(v6 + 16);
      v12 = vaddq_f64(v11, v11);
      v13 = vextq_s8(v11, v11, 8uLL);
      v14 = 1;
      while (1)
      {
        v15 = vmulq_f64(v7, v7);
        v16 = vaddq_f64(vdupq_laneq_s64(v15, 1), v15);
        v17 = vmulq_f64(v16, v16);
        v7 = vdivq_f64(vsubq_f64(v7, vaddq_f64(vmulq_laneq_f64(vmulq_n_f64(v12, v7.f64[0]), v7, 1), vmulq_f64(v13, vaddq_f64(vdupq_lane_s64(*&v16.f64[0], 0), vmulq_f64(v7, vaddq_f64(v7, v7)))))), vdupq_lane_s64(COERCE__INT64(v10 * vaddvq_f64(v15) + 1.0 + v9 * v17.f64[0] + v8 * vmulq_f64(v16, v17).f64[0]), 0));
        if (a1 == v14)
        {
          break;
        }

        if (__OFADD__(v14++, 1))
        {
          __break(1u);
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

CGSize __swiftcall DKCamera.cameraToWorldRelative(size:distance:)(CGSize size, Swift::Double distance)
{
  height = size.height;
  v4 = vdivq_f64(vmulq_n_f64(vmulq_f64(*(v2 + 8), __PAIR128__(*&height, *&size.width)), distance), *(v2 + 24));
  v5 = v4.f64[1];
  result.width = v4.f64[0];
  result.height = v5;
  return result;
}

__C::CGRect __swiftcall DKCamera.cameraToWorldRelative(rect:distance:)(__C::CGRect rect, Swift::Double distance)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MidX = CGRectGetMidX(rect);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidY = CGRectGetMidY(v22);
  sub_1BB5A6988(5, MidX, MidY);
  v11 = v10;
  v13 = v2[3];
  v14 = atan2(-(v12 + -0.5), v13);
  v15 = v11 + -0.5;
  v16 = v2[4];
  v17 = atan2(v15, v16);
  v18 = v2[1] * width * distance / v13;
  v19 = v2[2] * height * distance / v16;
  v20 = v17 + v19 * -0.5;
  v21 = v14 + v18 * -0.5;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v20;
  result.origin.x = v21;
  return result;
}

void __swiftcall DKCamera.cameraToWorld(rect:distance:)(Swift::tuple_worldRect___C_CGRect_distance_Double *__return_ptr retstr, __C::CGRect rect, Swift::Double_optional distance)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (v3)
  {
    v10 = 10.0;
    if (CGRectGetWidth(rect) >= 1.0e-10)
    {
      v11 = *(v4 + 24) * 0.115;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v10 = v11 / CGRectGetWidth(v20);
    }
  }

  else
  {
    v10 = *&distance.is_nil;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = DKCamera.cameraToWorldRelative(rect:distance:)(v21, v10);
  v18 = v22.origin.y;
  v19 = v22.origin.x;
  v12 = v22.size.width;
  v13 = v22.size.height;
  v14 = v4 + *(type metadata accessor for DKCamera() + 32);
  v15 = *(v14 + *(type metadata accessor for DKMotion3() + 20));
  v16 = *(v15 + 16);
  if (v16)
  {
    if (v16 != 1)
    {
      v17.f64[0] = v19;
      v17.f64[1] = v18;
      retstr->worldRect.origin = vaddq_f64(v17, *(v15 + 32));
      retstr->worldRect.size.width = v12;
      retstr->worldRect.size.height = v13;
      retstr->distance = v10;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Double __swiftcall DKCamera.heuristicDistance(rect:type:)(__C::CGRect rect, IntelligentTrackingCore::DKObservationType type)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = *type;
  v8 = CGRectGetWidth(rect);
  result = 10.0;
  if (v8 >= 1.0e-10)
  {
    v10 = *(v2 + 24);
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v11 = CGRectGetWidth(v13);
    if (v7 <= 1 && v7)
    {
      v12 = 0.35;
    }

    else
    {
      v12 = 0.115;
    }

    return v10 * v12 / v11;
  }

  return result;
}

CGPoint __swiftcall DKCamera.worldToCameraRelative(point:)(CGPoint point)
{
  *&v2 = *&sub_1BB5A6D90(point.x, point.y);
  v4 = v3;
  v5 = 0.5 - tan(v2) * *(v1 + 24);
  v6 = tan(v4) * *(v1 + 32) + 0.5;
  v7 = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

float64x2_t sub_1BB5A6D90(double a1, float64_t a2)
{
  v3 = v2 + *(type metadata accessor for DKCamera() + 44);
  result.f64[0] = a1;
  result.f64[1] = a2;
  if ((*(v3 + 40) & 1) == 0)
  {
    *&v5 = a1 * a1 + a2 * a2;
    return vaddq_f64(vaddq_f64(vmulq_f64(vaddq_f64(vmulq_f64(vaddq_f64(result, result), result), vdupq_lane_s64(v5, 0)), vextq_s8(*(v3 + 16), *(v3 + 16), 8uLL)), vmulq_laneq_f64(vmulq_n_f64(vaddq_f64(*(v3 + 16), *(v3 + 16)), a1), result, 1)), vmulq_n_f64(result, *&v5 * (*&v5 * *&v5) * *(v3 + 32) + *&v5 * *&v5 * *(v3 + 8) + *&v5 * *v3 + 1.0));
  }

  return result;
}

CGSize __swiftcall DKCamera.worldToCameraRelative(size:distance:)(CGSize size, Swift::Double distance)
{
  height = size.height;
  v4 = vdivq_f64(vdivq_f64(vmulq_f64(*(v2 + 24), __PAIR128__(*&height, *&size.width)), vdupq_lane_s64(*&distance, 0)), *(v2 + 8));
  v5 = v4.f64[1];
  result.width = v4.f64[0];
  result.height = v5;
  return result;
}

__C::CGRect __swiftcall DKCamera.worldToCameraRelative(rect:distance:)(__C::CGRect rect, Swift::Double distance)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MidX = CGRectGetMidX(rect);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  *&v10 = *&sub_1BB5A6D90(MidX, MidY);
  v12 = v11;
  v13 = tan(v10);
  v14 = v2[3];
  v15 = 0.5 - v13 * v14;
  v16 = tan(v12);
  v17 = v14 * width / distance / v2[1];
  v18 = v2[4];
  v19 = v16 * v18 + 0.5;
  v20 = v18 * height / distance / v2[2];
  v21 = v15 - v17 * 0.5;
  v22 = v19 - v20 * 0.5;
  result.size.height = v20;
  result.size.width = v17;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

__C::CGRect __swiftcall DKCamera.worldToCamera(rect:distance:clampToBorders:)(__C::CGRect rect, Swift::Double distance, Swift::Bool clampToBorders)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MidX = CGRectGetMidX(rect);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  CGRectGetMidY(v35);
  v11 = v3 + *(type metadata accessor for DKCamera() + 32);
  v12 = *(v11 + *(type metadata accessor for DKMotion3() + 20));
  if (!*(v12 + 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto _$s23IntelligentTrackingCore8DKCameraV13worldToCamera4rect8distance05clampF7BordersSo6CGRectVAI_SdSbtF;
  }

    ;
  }

    ;
  }

  v33 = i;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MidY = CGRectGetMidY(v37);
  if (*(v12 + 16) < 2uLL)
  {
    goto LABEL_20;
  }

  v18 = MidY - *(v12 + 40);
  if (v18 > 3.14159265)
  {
    v19.f64[0] = v33;
    do
    {
      v18 = v18 + -6.28318531;
    }

    while (v18 > 3.14159265);
    if (v18 >= -3.14159265)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  for (v19.f64[0] = v33; v18 < -3.14159265; v18 = v18 + 6.28318531)
  {
LABEL_13:
    ;
  }

LABEL_14:
  v19.f64[1] = v18;
  if (clampToBorders)
  {
    v20 = *(v3 + 8);
    __asm { FMOV            V1.2D, #-0.5 }

    v26 = vmulq_f64(v20, _Q1);
    __asm { FMOV            V2.2D, #0.5 }

    v28 = vmulq_f64(v20, _Q2);
    v29 = vbslq_s8(vcgeq_f64(v19, v26), v19, v26);
    v19 = vbslq_s8(vcgtq_f64(v29, v28), v28, v29);
  }

  v30 = v19.f64[0] - width * 0.5;
  v32 = width;
  v19.f64[0] = height;

  v31 = v19.f64[1] - height * 0.5;
  *&MidY = DKCamera.worldToCameraRelative(rect:distance:)(*(&v19 - 24), distance);
_$s23IntelligentTrackingCore8DKCameraV13worldToCamera4rect8distance05clampF7BordersSo6CGRectVAI_SdSbtF:
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = MidY;
  return result;
}

CGImagePropertyOrientation __swiftcall DKCamera.getCGImagePropertyOrientation()()
{
  if ((v0[1] - 1) > 3u)
  {
    return 1;
  }

  if (*v0 - 1 >= 2)
  {
    v1 = &unk_1BB6BD710;
  }

  else
  {
    v1 = &unk_1BB6BD700;
  }

  return v1[(v0[1] - 1)];
}

unint64_t sub_1BB5A716C()
{
  v1 = *v0;
  v2 = 1953656688;
  v3 = 0x7A69536567616D69;
  if (v1 != 6)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x6E6F69746F6DLL;
  if (v1 != 4)
  {
    v4 = 0x6F69746174537369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7761766;
  if (v1 != 2)
  {
    v5 = 0x696C616D726F4E66;
  }

  if (*v0)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BB5A7274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB5A9AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5A72A8(uint64_t a1)
{
  v2 = sub_1BB5A8DF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5A72E4(uint64_t a1)
{
  v2 = sub_1BB5A8DF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKCamera.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C090);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5A8DF8();
  sub_1BB6BB984();
  LOBYTE(v19) = *v3;
  v23 = 0;
  sub_1BB5A8E4C();
  sub_1BB6BB744();
  if (!v2)
  {
    LOBYTE(v19) = *(v3 + 1);
    v23 = 1;
    sub_1BB5A8EA0();
    sub_1BB6BB744();
    v19 = *(v3 + 8);
    v23 = 2;
    type metadata accessor for CGSize(0);
    sub_1BB5A903C(&qword_1EBC5C0B0, type metadata accessor for CGSize);
    sub_1BB6BB744();
    v19 = *(v3 + 24);
    v23 = 3;
    type metadata accessor for CGPoint(0);
    sub_1BB5A903C(&qword_1EBC5C0B8, type metadata accessor for CGPoint);
    sub_1BB6BB744();
    v18 = type metadata accessor for DKCamera();
    LOBYTE(v19) = 4;
    type metadata accessor for DKMotion3();
    sub_1BB5A903C(&qword_1EBC5C0C0, type metadata accessor for DKMotion3);
    sub_1BB6BB744();
    v9 = v18;
    LOBYTE(v19) = 5;
    sub_1BB6BB714();
    v10 = (v3 + *(v9 + 40));
    v11 = *(v10 + 16);
    v19 = *v10;
    LOBYTE(v20) = v11;
    v23 = 6;
    sub_1BB6BB704();
    v12 = (v3 + *(v9 + 44));
    v13 = *(v12 + 4);
    v14 = *(v12 + 40);
    v15 = v12[1];
    v19 = *v12;
    v20 = v15;
    v21 = v13;
    v22 = v14;
    v23 = 7;
    sub_1BB5A8EF4();
    sub_1BB6BB704();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKCamera.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for DKMotion3();
  MEMORY[0x1EEE9AC00](v3);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C0D0);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v39 - v6;
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DKCamera();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15[*(v13 + 32)];
  sub_1BB6BA7E4();
  (*(v9 + 16))(v16, v11, v8);
  *&v16[v3[5]] = &unk_1F3A481C0;
  *&v16[v3[6]] = &unk_1F3A481F8;
  (*(v9 + 8))(v11, v8);
  v17 = v3[7];
  v48 = v16;
  v49 = a1;
  *&v16[v17] = &unk_1F3A48230;
  v18 = &v15[*(v12 + 44)];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[40] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5A8DF8();
  v46 = v7;
  v19 = v47;
  sub_1BB6BB974();
  if (v19)
  {
    v20 = v48;
    __swift_destroy_boxed_opaque_existential_1(v49);
    v25 = type metadata accessor for DKMotion3;
    v26 = v20;
  }

  else
  {
    v40 = v12;
    v41 = v3;
    v47 = v15;
    v21 = v44;
    v54 = 0;
    sub_1BB5A8F94();
    sub_1BB6BB684();
    v22 = v47;
    *v47 = v50;
    v54 = 1;
    sub_1BB5A8FE8();
    sub_1BB6BB684();
    v23 = v48;
    v22[1] = v50;
    type metadata accessor for CGSize(0);
    v54 = 2;
    v24 = sub_1BB5A903C(&qword_1EBC5C0E8, type metadata accessor for CGSize);
    sub_1BB6BB684();
    v39[1] = v24;
    *(v22 + 8) = v50;
    type metadata accessor for CGPoint(0);
    v54 = 3;
    sub_1BB5A903C(&qword_1EBC5C0F0, type metadata accessor for CGPoint);
    sub_1BB6BB684();
    *(v22 + 24) = v50;
    LOBYTE(v50) = 4;
    sub_1BB5A903C(&qword_1EBC5C0F8, type metadata accessor for DKMotion3);
    v28 = v43;
    v29 = v45;
    sub_1BB6BB684();
    sub_1BB5A8610(v28, v23);
    LOBYTE(v50) = 5;
    v30 = sub_1BB6BB654();
    v31 = v40;
    v32 = v47;
    v47[*(v40 + 36)] = v30 & 1;
    v54 = 6;
    sub_1BB6BB644();
    v33 = v32 + *(v31 + 40);
    v34 = v51;
    *v33 = v50;
    *(v33 + 16) = v34;
    v54 = 7;
    sub_1BB5A9084();
    v35 = v46;
    sub_1BB6BB644();
    (*(v21 + 8))(v35, v29);
    v36 = v52;
    v37 = v53;
    v38 = v51;
    *v18 = v50;
    *(v18 + 1) = v38;
    *(v18 + 4) = v36;
    v18[40] = v37;
    sub_1BB5A90D8(v32, v42, type metadata accessor for DKCamera);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v26 = v32;
    v25 = type metadata accessor for DKCamera;
  }

  return sub_1BB5A9140(v26, v25);
}

void __swiftcall DKCameraDistortionParameters.init(k1:k2:p1:p2:k3:)(IntelligentTrackingCore::DKCameraDistortionParameters *__return_ptr retstr, Swift::Double k1, Swift::Double k2, Swift::Double p1, Swift::Double p2, Swift::Double k3)
{
  retstr->k1 = k1;
  retstr->k2 = k2;
  retstr->p1 = p1;
  retstr->p2 = p2;
  retstr->k3 = k3;
}

uint64_t sub_1BB5A7DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB5A9D94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB5A7DFC(uint64_t a1)
{
  v2 = sub_1BB5A91A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB5A7E38(uint64_t a1)
{
  v2 = sub_1BB5A91A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKCameraDistortionParameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C108);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5A91A0();
  sub_1BB6BB984();
  v13 = 0;
  sub_1BB6BB724();
  if (!v1)
  {
    v12 = 1;
    sub_1BB6BB724();
    v11 = 2;
    sub_1BB6BB724();
    v10 = 3;
    sub_1BB6BB724();
    v9 = 4;
    sub_1BB6BB724();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKCameraDistortionParameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C118);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB5A91A0();
  sub_1BB6BB974();
  if (!v2)
  {
    v20[15] = 0;
    sub_1BB6BB664();
    v10 = v9;
    v20[14] = 1;
    sub_1BB6BB664();
    v12 = v11;
    v20[13] = 2;
    sub_1BB6BB664();
    v14 = v13;
    v20[12] = 3;
    sub_1BB6BB664();
    v17 = v16;
    v20[11] = 4;
    sub_1BB6BB664();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v17;
    a2[4] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

IntelligentTrackingCore::DKCameraPort_optional __swiftcall DKCameraPort.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = rawValue._countAndFlagsBits == 0x6570795474726F50 && rawValue._object == 0xEF6E776F6E6B6E55;
  if (v4 || (countAndFlagsBits = rawValue._countAndFlagsBits, (sub_1BB6BB7E4() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6570795474726F50 && object == 0xED0000746E6F7246 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0xD000000000000016 && 0x80000001BB6CAE70 == object || (sub_1BB6BB7E4() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6570795474726F50 && object == 0xEC0000006B636142 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0xD000000000000015 && 0x80000001BB6CAE90 == object || (sub_1BB6BB7E4() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0xD000000000000015 && 0x80000001BB6CAEB0 == object)
  {

    v7 = 5;
  }

  else
  {
    v8 = sub_1BB6BB7E4();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *v3 = v7;
  return result;
}

unint64_t DKCameraPort.description.getter()
{
  v1 = 0x6570795474726F50;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 != 4)
  {
    v3 = 0xD000000000000015;
  }

  if (v2 == 3)
  {
    v3 = 0x6570795474726F50;
  }

  if (v2 == 1)
  {
    v4 = 0x6570795474726F50;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = v4;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

IntelligentTrackingCore::DKCameraPort_optional __swiftcall DKCameraPort.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for DKCamera()
{
  result = qword_1EBC5C130;
  if (!qword_1EBC5C130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5A8610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKMotion3();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BB5A8674()
{
  v1 = 0x6570795474726F50;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 != 4)
  {
    v3 = 0xD000000000000015;
  }

  if (v2 == 3)
  {
    v3 = 0x6570795474726F50;
  }

  if (v2 == 1)
  {
    v4 = 0x6570795474726F50;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = v4;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t DKCameraOrientation.description.getter()
{
  v1 = *v0;
  v2 = 0x6574636572726F43;
  if (v1 == 6)
  {
    v2 = 0x6E776F4465636146;
  }

  v3 = 0x70616373646E614CLL;
  if (v1 != 4)
  {
    v3 = 0x705565636146;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (v1 != 2)
  {
    v4 = 0x70616373646E614CLL;
  }

  v5 = 0x6E776F6E6B6E5528;
  if (*v0)
  {
    v5 = 0x7469617274726F50;
  }

  if (*v0 <= 1u)
  {
    v4 = v5;
  }

  if (*v0 <= 3u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BB5A8904()
{
  v1 = *v0;
  v2 = 0x6574636572726F43;
  if (v1 == 6)
  {
    v2 = 0x6E776F4465636146;
  }

  v3 = 0x70616373646E614CLL;
  if (v1 != 4)
  {
    v3 = 0x705565636146;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (v1 != 2)
  {
    v4 = 0x70616373646E614CLL;
  }

  v5 = 0x6E776F6E6B6E5528;
  if (*v0)
  {
    v5 = 0x7469617274726F50;
  }

  if (*v0 <= 1u)
  {
    v4 = v5;
  }

  if (*v0 <= 3u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t _s23IntelligentTrackingCore8DKCameraV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v7 = type metadata accessor for DKCamera();
  v8 = v7[8];
  v9 = a1;
  v10 = a1 + v8;
  v11 = a2;
  v12 = a2 + v8;
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for DKMotion3();
  if ((sub_1BB635DAC(*&v10[v13[5]], *&v12[v13[5]]) & 1) == 0 || (sub_1BB635DAC(*&v10[v13[6]], *&v12[v13[6]]) & 1) == 0 || (sub_1BB635DAC(*&v10[v13[7]], *&v12[v13[7]]) & 1) == 0 || *(v9 + v7[9]) != *(v11 + v7[9]))
  {
    return 0;
  }

  v14 = v7[10];
  v15 = (v9 + v14);
  v16 = *(v9 + v14 + 16);
  v17 = (v11 + v14);
  if (v16)
  {
    if ((v17[2] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_26;
  }

  result = 0;
  if ((v17[2] & 1) == 0 && *v15 == *v17 && v15[1] == v17[1])
  {
LABEL_26:
    v18 = v7[11];
    v19 = (v9 + v18);
    v20 = *(v9 + v18 + 40);
    v21 = (v11 + v18);
    if (v20)
    {
      if (LOBYTE(v21[2].f64[1]))
      {
        return 1;
      }
    }

    else if ((LOBYTE(v21[2].f64[1]) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v19, *v21), vceqq_f64(v19[1], v21[1])))) & 1) != 0 && v19[2].f64[0] == v21[2].f64[0])
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unsigned __int8 *sub_1BB5A8CCC@<X0>(unsigned __int8 *result@<X0>, __int128 *a2@<X8>)
{
  v2 = *result;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = xmmword_1BB6BD6D0;
      v4 = xmmword_1BB6BD6E0;
      v5 = xmmword_1BB6BD6F0;
    }

    else if (v2 == 4)
    {
      v3 = xmmword_1BB6BD6A0;
      v4 = xmmword_1BB6BD6B0;
      v5 = xmmword_1BB6BD6C0;
    }

    else
    {
      v3 = xmmword_1BB6BD670;
      v4 = xmmword_1BB6BD680;
      v5 = xmmword_1BB6BD690;
    }
  }

  else
  {
    v3 = xmmword_1BB6BD640;
    v4 = xmmword_1BB6BD650;
    v5 = xmmword_1BB6BD660;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v3;
  return result;
}

unint64_t sub_1BB5A8D60()
{
  result = qword_1EBC5C088;
  if (!qword_1EBC5C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C088);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1BB5A8DF8()
{
  result = qword_1EBC5C098;
  if (!qword_1EBC5C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C098);
  }

  return result;
}

unint64_t sub_1BB5A8E4C()
{
  result = qword_1EBC5C0A0;
  if (!qword_1EBC5C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C0A0);
  }

  return result;
}

unint64_t sub_1BB5A8EA0()
{
  result = qword_1EBC5C0A8;
  if (!qword_1EBC5C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C0A8);
  }

  return result;
}

unint64_t sub_1BB5A8EF4()
{
  result = qword_1EBC5C0C8;
  if (!qword_1EBC5C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C0C8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1BB5A8F94()
{
  result = qword_1EBC5C0D8;
  if (!qword_1EBC5C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C0D8);
  }

  return result;
}

unint64_t sub_1BB5A8FE8()
{
  result = qword_1EBC5C0E0;
  if (!qword_1EBC5C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C0E0);
  }

  return result;
}

uint64_t sub_1BB5A903C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BB5A9084()
{
  result = qword_1EBC5C100;
  if (!qword_1EBC5C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C100);
  }

  return result;
}

uint64_t sub_1BB5A90D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB5A9140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BB5A91A0()
{
  result = qword_1EBC5C110;
  if (!qword_1EBC5C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C110);
  }

  return result;
}

unint64_t sub_1BB5A91F8()
{
  result = qword_1EBC5C120;
  if (!qword_1EBC5C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C120);
  }

  return result;
}

unint64_t sub_1BB5A9250()
{
  result = qword_1EBC5C128;
  if (!qword_1EBC5C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C128);
  }

  return result;
}

void sub_1BB5A92CC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DKMotion3();
      if (v2 <= 0x3F)
      {
        sub_1BB5A93B8();
        if (v3 <= 0x3F)
        {
          sub_1BB5A9410();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BB5A93B8()
{
  if (!qword_1EBC5C140)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5C140);
    }
  }
}

void sub_1BB5A9410()
{
  if (!qword_1EBC5C148)
  {
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5C148);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BB5A9474(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB5A9494(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DKCameraPort(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DKCameraPort(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LegacySubjectSelection.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacySubjectSelection.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BB5A9788(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BB5A9818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB5A98DC()
{
  result = qword_1EBC5C150;
  if (!qword_1EBC5C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C150);
  }

  return result;
}

unint64_t sub_1BB5A9934()
{
  result = qword_1EBC5C158;
  if (!qword_1EBC5C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C158);
  }

  return result;
}

unint64_t sub_1BB5A998C()
{
  result = qword_1EBC5C160;
  if (!qword_1EBC5C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C160);
  }

  return result;
}

unint64_t sub_1BB5A99E4()
{
  result = qword_1EBC5C168;
  if (!qword_1EBC5C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C168);
  }

  return result;
}

unint64_t sub_1BB5A9A3C()
{
  result = qword_1EBC5C170;
  if (!qword_1EBC5C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C170);
  }

  return result;
}

unint64_t sub_1BB5A9A94()
{
  result = qword_1EBC5C178;
  if (!qword_1EBC5C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C178);
  }

  return result;
}

uint64_t sub_1BB5A9AE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953656688 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7761766 && a2 == 0xE300000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C616D726F4E66 && a2 == 0xEB0000000064657ALL || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746F6DLL && a2 == 0xE600000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69746174537369 && a2 == 0xEC0000007972616ELL || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7A69536567616D69 && a2 == 0xE900000000000065 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BB6CAFB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1BB5A9D94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12651 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12907 && a2 == 0xE200000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12656 && a2 == 0xE200000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 12912 && a2 == 0xE200000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 13163 && a2 == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

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

unint64_t sub_1BB5A9F1C()
{
  result = qword_1EBC5C180;
  if (!qword_1EBC5C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C180);
  }

  return result;
}

unint64_t sub_1BB5A9F70()
{
  result = qword_1EBC5C188;
  if (!qword_1EBC5C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C188);
  }

  return result;
}

uint64_t DKDifferential2DMotionFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKDifferential2DMotionFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

IntelligentTrackingCore::DKDifferential2DMotionFilter::Index_optional __swiftcall DKDifferential2DMotionFilter.Index.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DKDifferential2DMotionFilter.Configuration.deinit()
{

  return v0;
}

uint64_t DKDifferential2DMotionFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKDifferential2DMotionFilter.__allocating_init(configuration:)(uint64_t a1)
{
  swift_allocObject();
  sub_1BB5AA76C(a1);
  v3 = v2;

  return v3;
}

uint64_t DKDifferential2DMotionFilter.init(configuration:)(uint64_t a1)
{
  sub_1BB5AA76C(a1);
  v2 = v1;

  return v2;
}

uint64_t sub_1BB5AA290(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime, v4);
  sub_1BB6BA744();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  v11 = v10[2];
  if (v11 < 3)
  {
    goto LABEL_34;
  }

  if (v10[3] <= 0)
  {
    goto LABEL_34;
  }

  if (v11 < 6)
  {
    goto LABEL_34;
  }

  v12 = v10[4];
  v13 = v12[3];
  v14 = v12[5];
  v15 = __sincos_stret(v12[2]);
  v16 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F);
  v17 = v16[2];
  if (v17 < 1)
  {
    goto LABEL_34;
  }

  v18 = v16[3];
  if (v18 <= 3)
  {
    goto LABEL_34;
  }

  if ((v17 * 3) >> 64 != (3 * v17) >> 63)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v16[4];
  *(v19 + 24 * v17) = v9 * v15.__cosval;
  if (v18 <= 5)
  {
    goto LABEL_34;
  }

  v20 = (v17 * 5) >> 64;
  v21 = 5 * v17;
  if (v20 != v21 >> 63)
  {
    goto LABEL_27;
  }

  *(v19 + 8 * v21) = v9 * (v9 * v15.__cosval * 0.5);
  v22 = v16[2];
  if (v22 < 2)
  {
    goto LABEL_34;
  }

  v23 = v16[3];
  if (v23 <= 3)
  {
    goto LABEL_34;
  }

  if ((v22 * 3) >> 64 != (3 * v22) >> 63)
  {
    goto LABEL_28;
  }

  v24 = v16[4];
  *(v24 + 24 * v22 + 8) = v9 * v15.__sinval;
  if (v23 <= 5)
  {
    goto LABEL_34;
  }

  v25 = (v22 * 5) >> 64;
  v26 = 5 * v22;
  if (v25 != v26 >> 63)
  {
    goto LABEL_29;
  }

  *(v24 + 8 * v26 + 8) = v9 * (v9 * v15.__sinval * 0.5);
  v27 = v16[2];
  if (v27 < 3)
  {
    goto LABEL_34;
  }

  v28 = v16[3];
  if (v28 <= 4)
  {
    goto LABEL_34;
  }

  if (v27 >> 61)
  {
    goto LABEL_30;
  }

  v29 = v16[4];
  *(v29 + 32 * v27 + 16) = v9;
  if (v27 == 3 || v28 == 5)
  {
    goto LABEL_34;
  }

  v30 = (v27 * 5) >> 64;
  v31 = 5 * v27;
  if (v30 != v31 >> 63)
  {
    goto LABEL_31;
  }

  v32 = __OFADD__(v31, 3);
  v33 = v31 + 3;
  if (v32)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v29 + 8 * v33) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  swift_allocObject();

  v35 = sub_1BB59F300(v34);

  v36 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J) = v35;

  v37 = *(v2 + v36);
  v38 = v37[2];
  if (v38 < 1 || v37[3] <= 2)
  {
    goto LABEL_34;
  }

  if (v38 + 0x4000000000000000 < 0)
  {
    goto LABEL_33;
  }

  v39 = v9 * (v9 * 0.5);
  v40 = v37[4];
  *(v40 + 16 * v38) = v9 * -(v15.__sinval * v13) - v39 * (v14 * v15.__sinval);
  if (v38 != 1)
  {
    *(v40 + 16 * v38 + 8) = v9 * (v15.__cosval * v13) + v39 * (v15.__cosval * v14);
    return sub_1BB69E74C(a1);
  }

LABEL_34:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t DKDifferential2DMotionFilter.deinit()
{
  v0 = DKKalmanFilter.deinit();

  return v0;
}

uint64_t DKDifferential2DMotionFilter.__deallocating_deinit()
{
  DKKalmanFilter.deinit();

  return swift_deallocClassInstance();
}

void sub_1BB5AA76C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKDifferential2DMotionFilter_differentialConfiguration) = a1;
  v2 = swift_retain_n();
  DKKalmanFilter.init(configuration:stateSize:)(v2, 6);
  v4 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  v5 = v4[2];
  if (v5 < 1)
  {
    goto LABEL_43;
  }

  v6 = v4[3];
  if (v6 <= 0)
  {
    goto LABEL_43;
  }

  v7 = v4[4];
  *v7 = 0x3FAEB851EB851EB8;
  if (v5 == 1 || v6 == 1)
  {
    goto LABEL_43;
  }

  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7[v5 + 1] = 0x3FAEB851EB851EB8;
  if (v5 < 3 || v6 <= 2)
  {
    goto LABEL_43;
  }

  if ((v5 + 0x4000000000000000) < 0)
  {
    goto LABEL_35;
  }

  if (__OFADD__(2 * v5, 2))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7[2 * v5 + 2] = 0x3FAEB851EB851EB8;
  if (v5 < 4 || v6 <= 3)
  {
    goto LABEL_43;
  }

  v11 = 3 * v5;
  if ((v5 * 3) >> 64 != (3 * v5) >> 63)
  {
    goto LABEL_37;
  }

  v12 = __OFADD__(v11, 3);
  v13 = v11 + 3;
  if (v12)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v7[v13] = 0x3F9999999999999ALL;
  if (v5 < 5 || v6 <= 4)
  {
    goto LABEL_43;
  }

  if (v5 >> 61)
  {
    goto LABEL_39;
  }

  if (__OFADD__(4 * v5, 4))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7[4 * v5 + 4] = 0x3F947AE147AE147BLL;
  if (v5 < 6 || v6 <= 5)
  {
    goto LABEL_43;
  }

  v15 = (v5 * 5) >> 64;
  v16 = 5 * v5;
  if (v15 == v16 >> 63)
  {
    v12 = __OFADD__(v16, 5);
    v17 = v16 + 5;
    if (!v12)
    {
      v7[v17] = 0x3F847AE147AE147BLL;
      return;
    }

    goto LABEL_42;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1BB6BB524();
  __break(1u);
}

unint64_t sub_1BB5AA934()
{
  result = qword_1EBC5C190;
  if (!qword_1EBC5C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C190);
  }

  return result;
}

unint64_t sub_1BB5AA98C()
{
  result = qword_1EBC5C198;
  if (!qword_1EBC5C198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5C1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C198);
  }

  return result;
}

void sub_1BB5AAB4C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1BB6BB564())
  {
    if (sub_1BB6BB564())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1BFB111F0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1BB6BB564();
LABEL_13:
      if (v3)
      {
        sub_1BB68C8E4(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_1BB5AAC24()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1BB6BB564())
  {
    if (sub_1BB6BB564())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1BFB111F0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1BB6BB564();
LABEL_13:
      if (v3)
      {
        sub_1BB68C8FC(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

unint64_t sub_1BB5AAD68@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BB5B17AC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BB5AAD9C()
{
  v1 = *v0;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](v1);
  return sub_1BB6BB964();
}

uint64_t sub_1BB5AAE10()
{
  v1 = *v0;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](v1);
  return sub_1BB6BB964();
}

uint64_t DKIntelligentTrackingSession.__allocating_init(config:camera:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  swift_allocObject();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1BB5AAF30;

  return (sub_1BB5B17BC)(a1, a2, a3);
}

uint64_t sub_1BB5AAF30(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t DKIntelligentTrackingSession.init(config:camera:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1BB5B46E0;

  return (sub_1BB5B17BC)(a1, a2, a3);
}

uint64_t sub_1BB5AB154()
{

  v1 = sub_1BB5CDC68();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BB5AB1D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BB5AB1F0, 0, 0);
}

uint64_t sub_1BB5AB1F0()
{
  v4 = v0;
  sub_1BB5ACDCC(&v3, *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BB5AB280(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BB5AB2A0, 0, 0);
}

uint64_t sub_1BB5AB2A0()
{
  v1 = *(v0 + 16);

  sub_1BB5ACBE4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BB5AB32C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_inputBuffer);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    if (sub_1BB6BB564() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    sub_1BB5AAB4C();
    v5 = v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v1 + 16);

  os_unfair_lock_unlock(v6 + 4);
}

uint64_t sub_1BB5AB424()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastMetadata);
    *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastMetadata) = 0;

    v1 = *(v0 + 16);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKPreprocessTask_lastMetadata);
    *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKPreprocessTask_lastMetadata) = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1BB5AB4C4(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  *(v2 + 40) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1BB5AB4F4, 0, 0);
}

uint64_t sub_1BB5AB4F4()
{
  v1 = *(*(v0 + 16) + 120);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest;
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v0 + 40);
    *v4 = v2;
    *(v4 + 8) = v3;
    v8 = *(v4 + 16);
    *(v4 + 16) = v7;
    sub_1BB5B3498(v2, v3, v7);
    sub_1BB5B34AC(v6, v5, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BB5AB59C(double a1, double a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BB5AB5C4, 0, 0);
}

uint64_t sub_1BB5AB5C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1BB67E674(1, v4, v3, v2, v1);

  v5 = *(v0 + 1);

  return v5();
}

uint64_t sub_1BB5AB694(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  *(v4 + 16) = v3;
  *(v4 + 24) = *a1;
  *(v4 + 25) = *a2;
  *(v4 + 26) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1BB5AB6CC, 0, 0);
}

uint64_t sub_1BB5AB6CC()
{
  v6 = v0;
  v1 = *(v0 + 25);
  *(*(*(*(v0 + 16) + 16) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_framingEngine) + 41) = *(v0 + 24);
  if (v1 == 4)
  {
  }

  else
  {
    v5 = *(v0 + 25);

    sub_1BB67E01C(&v5);
  }

  if (*(v0 + 26) != 3)
  {
    v4 = *(v0 + 26);
    sub_1BB67E228(&v4);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BB5AB794(double a1, double a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BB5AB7BC, 0, 0);
}

uint64_t sub_1BB5AB7BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1BB67E880(0, v4, v3, v2, v1);

  v5 = *(v0 + 1);

  return v5();
}

uint64_t sub_1BB5AB88C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1BB6BA7F4();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB5AB94C, 0, 0);
}

void sub_1BB5AB94C()
{
  v95 = v0;
  v1 = v0[12];
  v90 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  sub_1BB660BA0();

  (*(v1 + 24))(v2[2] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v4, v3);

  sub_1BB5CDCDC(v4);

  v5 = v2[5];
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
  v7 = *(v1 + 8);

  v7(v5 + v6, v3);
  v8 = *(v1 + 16);
  v0[14] = v8;
  v0[15] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v91 = v0;
  v9 = v2;
  v8(v5 + v6, v4, v3);

  v10 = v2[5];
  v8(v90, v2[2] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_startTime, v3);

  sub_1BB6BA744();
  v12 = v11;
  v7(v90, v3);
  v13 = v10 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_elapsedTime;
  *v13 = v12;
  *(v13 + 8) = 0;

  v14 = *(v2[2] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_inputBuffer);
  v15 = *(v14 + 16);

  os_unfair_lock_lock(v15 + 4);

  v16 = *(v14 + 24);
  if (v16 >> 62)
  {
LABEL_85:
    v17 = sub_1BB6BB564();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v91;
  if (v17 < 1)
  {
    v20 = 0;
  }

  else
  {
    sub_1BB5AAB4C();
    v20 = v19;
  }

  v91[16] = v20;
  v21 = v91[10];
  v22 = *(v14 + 16);

  os_unfair_lock_unlock(v22 + 4);

  v23 = *(*(v21 + 24) + 89);
  v24 = 2;
  v25 = &OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image;
  if (v23 == 2 || !v20)
  {
    goto LABEL_15;
  }

  if (!*&v20[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image])
  {
    v24 = 2;
    goto LABEL_15;
  }

  v26 = v9[2];
  if (*(*(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_adaptiveFramerate) + 72) == 1)
  {
    v24 = 1;
    goto LABEL_15;
  }

  v27 = *(*(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_97:
  v28 = sub_1BB6BB564();
LABEL_14:
  v24 = v28 < 2;
LABEL_15:
  *(v9[5] + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_pipelineMode) = v24;

  v30 = sub_1BB6168E8(v29);
  *(v18 + 176) = v30;

  if (BYTE1(v30) > 2u)
  {
    if (BYTE1(v30) == 3)
    {
      if (v30 != 3)
      {
        v30 = *(*(v18 + 80) + 176);
        if (v30)
        {
          v93 = 10;
          v34 = sub_1BB6BB064();
          _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v93, 0xD000000000000012, 0x80000001BB6CB120, v34);
          *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchIndex) = -1;
        }
      }

      v32 = 240;
    }

    else if (BYTE1(v30) == 4)
    {
      if (v30 != 4)
      {
        v33 = *(*(v18 + 80) + 168);
        if (v33)
        {
          *(v33 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKReturnToBaseTask_returnToBaseIssued) = 0;
        }
      }

      v32 = 232;
    }

    else
    {
      if (v30 != 5)
      {
        v38 = *(*(v18 + 80) + 184);
        if (v38)
        {
          *(v38 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKFlip180Task_flip180Issued) = 0;
        }
      }

      v32 = 248;
    }
  }

  else if (BYTE1(v30))
  {
    if (BYTE1(v30) == 1)
    {
      if (v30 == 5)
      {
        v94 = 8;
        v30 = "Search state reset";
        v31 = sub_1BB6BB084();
        _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v94, 0xD00000000000002CLL, 0x80000001BB6CB140, v31);
        *(v9[2] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_localHomePosition) = 0;
      }

      v32 = 200;
    }

    else
    {
      v35 = *(v9[5] + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_pipelineMode);
      v36 = 224;
      if (v35 == 1)
      {
        v36 = 216;
      }

      v37 = v35 == 0;
      v32 = 208;
      if (!v37)
      {
        v32 = v36;
      }
    }
  }

  else
  {
    v32 = 192;
  }

  v14 = *(*(v18 + 80) + v32);
  *(v18 + 136) = v14;

  v39 = v14 >> 62;
  if (v20)
  {
    v30 = *&v20[*v25];
    if (v30)
    {
      v90 = *v25;
      v25 = (v14 & 0xFFFFFFFFFFFFFF8);
      if (!v39)
      {
        v40 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_45;
      }

      goto LABEL_93;
    }

LABEL_55:
    v44 = v20;
    goto LABEL_70;
  }

  while (1)
  {
    if (v39)
    {
      v66 = sub_1BB6BB564();
      *(v18 + 144) = v66;
      if (!v66)
      {
LABEL_87:
        v70 = *(v18 + 177);
        v71 = *(v18 + 80);

        v72 = *(v71 + 40);
        v73 = v72 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_adaptiveFPS;
        *v73 = *(*(*(v71 + 16) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_adaptiveFramerate) + 64);
        *(v73 + 8) = 0;
        v74 = *(v18 + 128);
        v75 = *(v18 + 80);
        *(v72 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingMode) = v70 + 1;

        sub_1BB660D30();
        v77 = v76;

        v78 = v72 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingFPS;
        *v78 = v77;
        *(v78 + 8) = 0;

        v79 = *(v75 + 16);
        v80 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_signals;

        *(v79 + v80) = MEMORY[0x1E69E7CD0];

        v81 = *(*(v75 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command);
        if (v81)
        {
          v83 = *(v18 + 96);
          v82 = *(v18 + 104);
          v84 = *(v18 + 88);
          (*(v18 + 112))(v82, v81 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v84);
          v85 = *(v81 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command);
          v86 = *(v81 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 8);
          v87 = *(v81 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 16);
          type metadata accessor for DKIntelligentTrackingCommand(0);
          v81 = swift_allocObject();
          (*(v83 + 32))(v81 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v82, v84);
          v18 = v91;
          v88 = v81 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
          *v88 = v85;
          *(v88 + 8) = v86;
          *(v88 + 16) = v87;
          sub_1BB598288(v85, v86, v87);
        }

        v89 = *(v18 + 8);

        v89(v81);
        return;
      }
    }

    else
    {
      v66 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v18 + 144) = v66;
      if (!v66)
      {
        goto LABEL_87;
      }
    }

    if (v66 >= 1)
    {
      *(v18 + 152) = 0;
      v67 = *(v18 + 136);
      if ((v67 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1BFB111F0](0);
      }

      else
      {
        v68 = *(v67 + 32);
      }

      *(v18 + 160) = v68;
      v92 = (*(*v68 + 224) + **(*v68 + 224));
      v69 = swift_task_alloc();
      *(v18 + 168) = v69;
      *v69 = v18;
      v69[1] = sub_1BB5AC4B0;

      v92();
      return;
    }

    __break(1u);
LABEL_93:
    v40 = sub_1BB6BB564();
LABEL_45:
    v18 = v14 & 0xC000000000000001;
    v41 = v20;
    v9 = v30;
    v42 = 0;
    do
    {
      if (v40 == v42)
      {

        v45 = *&v20[v90];
        *&v20[v90] = 0;

        v18 = v91;
        goto LABEL_70;
      }

      if (v18)
      {
        v30 = MEMORY[0x1BFB111F0](v42, v14);
        if (__OFADD__(v42, 1))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      else
      {
        if (v42 >= v25[2])
        {
          __break(1u);
          goto LABEL_85;
        }

        v30 = *(v14 + 8 * v42 + 32);

        if (__OFADD__(v42, 1))
        {
          goto LABEL_54;
        }
      }

      v43 = (*(*v30 + 232))();

      ++v42;
    }

    while ((v43 & 1) == 0);
    v25 = v9;
    Width = CVPixelBufferGetWidth(v9);
    v47 = Width * 720.0 / CVPixelBufferGetHeight(v9);
    if (COERCE__INT64(fabs(v47)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v18 = v91;
    if (v47 <= -2147483650.0)
    {
      goto LABEL_95;
    }

    if (v47 >= 2147483650.0)
    {
      goto LABEL_96;
    }

    v48 = v91[10];
    LODWORD(v49) = v47;
    v50 = *(v48 + 272);
    if (!v50)
    {
      v49 = v49;
LABEL_66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BB6BD520;
      *(inited + 32) = sub_1BB6BAC34();
      *(inited + 40) = v55;
      *(inited + 48) = sub_1BB5B06AC(MEMORY[0x1E69E7CC0]);
      sub_1BB5B07C0(inited);
      swift_setDeallocating();
      sub_1BB598308(inited + 32, &qword_1EBC5C1D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1D8);
      v56 = sub_1BB6BAAE4();

      CVPixelBufferCreate(0, v49, 0x2D0uLL, 0x42475241u, v56, (v48 + 272));

      goto LABEL_67;
    }

    v51 = CVPixelBufferGetWidth(v50);
    v49 = v49;
    if (v51 != v49)
    {
      goto LABEL_66;
    }

    v52 = v51;
    v53 = *(v48 + 272);
    if (!v53)
    {
      goto LABEL_99;
    }

    v49 = v52;
    if (CVPixelBufferGetHeight(v53) != 720)
    {
      goto LABEL_66;
    }

LABEL_67:
    v57 = *(v48 + 272);
    if (!v57)
    {
      break;
    }

    v58 = v57;
    v30 = _s23IntelligentTrackingCore11DKImageUtilC27resizeImageForCVPixelBuffer_06outputJ010dimensionsSbSo11CVBufferRefa_AHSgSo17CMVideoDimensionsatFZ_0(v25, v57);

    if (v30)
    {
      v59 = *(v48 + 272);
      v30 = *&v20[v90];
      *&v20[v90] = v59;
      v60 = v59;
    }

LABEL_70:
    v61 = *(v18 + 80);
    v62 = *(v61 + 56);
    if (v62)
    {
      v30 = *(v62 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastMetadata);
      *(v62 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastMetadata) = v20;
      v63 = v20;

      v61 = *(v18 + 80);
    }

    v64 = *(v61 + 48);
    if (v64)
    {
      v65 = *(v64 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKPreprocessTask_lastMetadata);
      *(v64 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKPreprocessTask_lastMetadata) = v20;
      v20 = v65;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_1BB5AC4B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BB5AC5AC, 0, 0);
}

uint64_t sub_1BB5AC5AC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 177);
    v4 = *(v0 + 80);

    v5 = *(v4 + 40);
    v6 = v5 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_adaptiveFPS;
    *v6 = *(*(*(v4 + 16) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_adaptiveFramerate) + 64);
    *(v6 + 8) = 0;
    v7 = *(v0 + 128);
    v8 = *(v0 + 80);
    *(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingMode) = v3 + 1;

    sub_1BB660D30();
    v10 = v9;

    v11 = v5 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingFPS;
    *v11 = v10;
    *(v11 + 8) = 0;

    v12 = *(v8 + 16);
    v13 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_signals;

    *(v12 + v13) = MEMORY[0x1E69E7CD0];

    v14 = *(*(v8 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command);
    if (v14)
    {
      v16 = *(v0 + 96);
      v15 = *(v0 + 104);
      v17 = *(v0 + 88);
      (*(v0 + 112))(v15, v14 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v17);
      v18 = *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command);
      v19 = *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 8);
      v20 = *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 16);
      type metadata accessor for DKIntelligentTrackingCommand(0);
      v14 = swift_allocObject();
      (*(v16 + 32))(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v15, v17);
      v21 = v14 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
      sub_1BB598288(v18, v19, v20);
    }

    v22 = *(v0 + 8);

    return v22(v14);
  }

  else
  {
    v24 = *(v0 + 152) + 1;
    *(v0 + 152) = v24;
    v25 = *(v0 + 136);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1BFB111F0]();
    }

    else
    {
      v26 = *(v25 + 8 * v24 + 32);
    }

    *(v0 + 160) = v26;
    v28 = (*(*v26 + 224) + **(*v26 + 224));
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_1BB5AC4B0;

    return v28();
  }
}

uint64_t sub_1BB5AC924(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BB5AC944, 0, 0);
}

uint64_t sub_1BB5AC944()
{
  v13 = v0;
  v1 = v0[2];
  v2 = v0[3];

  sub_1BB5CBFE4(v1);

  v3 = *(*(v2 + 32) + 24);
  v4 = *(v3 + 32);

  [v4 lock];
  *(v3 + 16) = 1;
  [v4 unlock];

  if (*(v2 + 80))
  {
    sub_1BB5B6E64();
  }

  v5 = v0[3];
  v6 = v5[21];
  if (v6)
  {
    *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKReturnToBaseTask_returnToBaseIssued) = 0;
    v5 = v0[3];
  }

  v7 = v5[22];
  if (v7)
  {
    v12 = 10;
    v8 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v12, 0xD000000000000012, 0x80000001BB6CB120, v8);
    *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchIndex) = -1;
    v5 = v0[3];
  }

  v9 = v5[23];
  if (v9)
  {
    *(v9 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKFlip180Task_flip180Issued) = 0;
  }

  v10 = v0[1];

  return v10();
}

uint64_t DKIntelligentTrackingSession.deinit()
{

  return v0;
}

uint64_t DKIntelligentTrackingSession.__deallocating_deinit()
{
  DKIntelligentTrackingSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5ACBE4(void *a1)
{
  v2 = v1;
  v4 = v2[2];

  os_unfair_lock_lock(v4 + 4);

  v5 = a1;
  MEMORY[0x1BFB10C80]();
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BB6BAE64();
  }

  sub_1BB6BAEB4();
  v6 = v2[3];
  if (v6 >> 62)
  {
    v7 = sub_1BB6BB564();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2[4] < v7)
  {
    sub_1BB5AAB4C();
  }

  v9 = v2[2];

  os_unfair_lock_unlock(v9 + 4);
}

uint64_t sub_1BB5ACCEC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1BB6BB914();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1BB5AE2EC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BB5ACDCC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](a2);
  v6 = sub_1BB6BB964();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1BB5AE40C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BB5ACEC4(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v22 = &v21 - v9;
  v23 = v2;
  v10 = *v2;
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB5B4694(&qword_1EBC5C280, MEMORY[0x1E6969530]);
  sub_1BB6BAB84();
  v25 = v4;
  sub_1BB6BA844();
  sub_1BB5B4694(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  sub_1BB6BAB84();
  v11 = sub_1BB6BB964();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    do
    {
      sub_1BB5B4570(*(v10 + 48) + v15 * v13, v7);
      if (sub_1BB6BA7C4())
      {
        v16 = sub_1BB6BA814();
        sub_1BB5B45D4(v7);
        if (v16)
        {
          sub_1BB5B45D4(a2);
          sub_1BB5B4570(*(v10 + 48) + v15 * v13, v24);
          return 0;
        }
      }

      else
      {
        sub_1BB5B45D4(v7);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v18 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v22;
  sub_1BB5B4570(a2, v22);
  v26 = *v18;
  sub_1BB5AE558(v20, v13, isUniquelyReferenced_nonNull_native);
  *v18 = v26;
  sub_1BB5B4630(a2, v24);
  return 1;
}

uint64_t sub_1BB5AD188(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BB6BA844();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BB5B4694(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_1BB6BAB74();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BB5B4694(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
      v21 = sub_1BB6BABE4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BB5AE81C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BB5AD468(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1BB6BB914();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1BB5AEAC0(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BB5AD55C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2B8);
  result = sub_1BB6BB2B4();
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
      result = sub_1BB6BB914();
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

uint64_t sub_1BB5AD780()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2F8);
  result = sub_1BB6BB2B4();
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
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BB6BB924();
      MEMORY[0x1BFB117B0](v16);
      result = sub_1BB6BB964();
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

uint64_t sub_1BB5AD9D0()
{
  v1 = v0;
  v2 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C290);
  result = sub_1BB6BB2B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
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
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_1BB5B4630(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_1BB6BB924();
      sub_1BB6BA7F4();
      sub_1BB5B4694(&qword_1EBC5C280, MEMORY[0x1E6969530]);
      sub_1BB6BAB84();
      sub_1BB6BA844();
      sub_1BB5B4694(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
      sub_1BB6BAB84();
      result = sub_1BB6BB964();
      v21 = -1 << *(v7 + 32);
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1BB5B4630(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}