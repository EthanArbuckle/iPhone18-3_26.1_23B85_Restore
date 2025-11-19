char *sub_1B0AFF55C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0AFF688(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4498, &qword_1B0EC5218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0AFF794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4490, &qword_1B0EC5210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0AFF8B4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
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

char *sub_1B0AFF9B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44B8, &qword_1B0EC5238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0AFFB14(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 192);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[192 * v10])
    {
      memmove(v14, v15, 192 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1B0AFFC58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4150, &qword_1B0EC3510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFFD9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0AFFEA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4528, &qword_1B0EC52C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B0007C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1B0B00198(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
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

void *sub_1B0B00298(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43A0, &qword_1B0EC50E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43A8, &qword_1B0EC50F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B0B00400(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1B0B005E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B006F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4500, &qword_1B0EC5280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B00800(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43D8, &qword_1B0EC5140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B0095C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44F0, &qword_1B0EC5270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B00A7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4558, &qword_1B0EC52F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B00B9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4550, &qword_1B0EC52E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B00CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4530, &qword_1B0EC52C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B00DC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44E0, &qword_1B0EC5260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

size_t sub_1B0B00F24(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
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

char *sub_1B0B01100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4318, &unk_1B0EC5060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B01220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4308, &qword_1B0EC5050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B01324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4448, &unk_1B0EC51B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B01444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4428, &qword_1B0EC5198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B01568(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4430, &unk_1B0EC51A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4438, &qword_1B0ECA320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B0169C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4420, &qword_1B0EC5190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 392);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[392 * v8])
    {
      memmove(v12, v13, 392 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B017C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4440, &qword_1B0EC51B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1B0B018DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 12);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 12 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

uint64_t sub_1B0B019E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a3);
  result = sub_1B0E46CB8();
  v10 = -1 << *(v7 + 32);
  v11 = result & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      if (v13[1] == a3)
      {
        v14 = *v13;
        v15 = *(*v13 + 16);
        if (v15 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v15)
    {
      v16 = v14 == a2;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
LABEL_14:

      v19 = (*(v7 + 48) + 16 * v11);
      v20 = *v19;
      v21 = v19[1];
      *a1 = v20;
      a1[1] = v21;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0;
    }

    else
    {
      v17 = (v14 + 32);
      v18 = (a2 + 32);
      while (v15)
      {
        if (*v17 != *v18)
        {
          goto LABEL_3;
        }

        ++v17;
        ++v18;
        if (!--v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    v22 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v24 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B05A54(v24, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  return result;
}

uint64_t sub_1B0B01BA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B0E46C28();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v10 = sub_1B0E46CB8();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  v28 = a1;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v8 + 48) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      v17 = sub_1B0E44BB8();
      v19 = v18;
      if (v17 == sub_1B0E44BB8() && v19 == v20)
      {
        break;
      }

      v22 = sub_1B0E46A78();

      if (v22)
      {
        goto LABEL_11;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:

    v26 = (*(v8 + 48) + 16 * v12);
    v27 = v26[1];
    *v28 = *v26;
    v28[1] = v27;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }

  else
  {
LABEL_9:
    v23 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B05D58(a2, a3, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v29;
    *v28 = a2;
    v28[1] = a3;
    return 1;
  }
}

uint64_t sub_1B0B01D70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B0E46C28();
  if (a3)
  {
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  v9 = sub_1B0E46CB8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v21 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B05F44(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v7 + 48) + 16 * v11);
    if (!v13[1])
    {
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    if (!a3)
    {
      goto LABEL_7;
    }

    v14 = *v13;
    v15 = sub_1B0E44BB8();
    v17 = v16;
    if (v15 == sub_1B0E44BB8() && v17 == v18)
    {
      break;
    }

    v20 = sub_1B0E46A78();

    if (v20)
    {
      goto LABEL_18;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_18:

LABEL_19:
  *a1 = *(*(v7 + 48) + 16 * v11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return 0;
}

uint64_t sub_1B0B01F68(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1B0E46C28();
  sub_1B0E42F48();
  v8 = sub_1B0E46CB8();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_141:
    v75 = *v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v85;
    sub_1B03B2000(a2, a3);
    sub_1B0B06164(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v85 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
LABEL_144:
    v80 = *MEMORY[0x1E69E9840];
    return result;
  }

  v12 = ~v10;
  v13 = a3 >> 62;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 == 0xC000000000000000;
  }

  v15 = !v14;
  v91 = v15;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v88 = v16;
  v87 = v6;
  v83 = (a2 >> 32) - a2;
  v84 = a2 >> 32;
  v89 = v6 + 56;
  v90 = v12;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || a3 >> 62 != 3;
      if (((v23 | v91) & 1) == 0)
      {
        v77 = 0;
        v78 = 0xC000000000000000;
LABEL_142:
        sub_1B0391D50(v77, v78);
LABEL_143:
        v79 = *(*(v6 + 48) + 16 * v11);
        *a1 = v79;
        sub_1B03B2000(v79, *(&v79 + 1));
        result = 0;
        goto LABEL_144;
      }

LABEL_36:
      v24 = 0;
      if (v13 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_148;
      }

      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_147;
      }

      v24 = v24;
      if (v13 <= 1)
      {
LABEL_33:
        v28 = BYTE6(a3);
        if (v13)
        {
          v28 = HIDWORD(a2) - a2;
          if (v88)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
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
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v13 != 2)
    {
      if (!v24)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_146;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_140;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      if (v19 > v19 >> 32)
      {
        goto LABEL_149;
      }

      sub_1B03B2000(v19, v18);
      v41 = sub_1B0E42A98();
      if (v41)
      {
        v42 = v41;
        v43 = sub_1B0E42AC8();
        if (__OFSUB__(v19, v43))
        {
          goto LABEL_151;
        }

        v40 = (v19 - v43 + v42);
      }

      else
      {
        v40 = 0;
      }

      sub_1B0E42AB8();
      v12 = v90;
      if (v13 == 2)
      {
        v68 = *(a2 + 16);
        v82 = *(a2 + 24);
        v50 = sub_1B0E42A98();
        if (v50)
        {
          v69 = sub_1B0E42AC8();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_165;
          }

          v50 += v68 - v69;
        }

        v27 = __OFSUB__(v82, v68);
        v70 = v82 - v68;
        if (v27)
        {
          goto LABEL_161;
        }

        result = sub_1B0E42AB8();
        if (result >= v70)
        {
          v53 = v70;
        }

        else
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_177;
        }

        v9 = v89;
        v12 = v90;
        if (!v50)
        {
          goto LABEL_176;
        }
      }

      else
      {
        if (v13 != 1)
        {
          v9 = v89;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v40)
          {
            goto LABEL_172;
          }

          goto LABEL_138;
        }

        if (v84 < a2)
        {
          goto LABEL_160;
        }

        v50 = sub_1B0E42A98();
        if (v50)
        {
          v54 = sub_1B0E42AC8();
          if (__OFSUB__(a2, v54))
          {
            goto LABEL_167;
          }

          v50 += a2 - v54;
        }

        result = sub_1B0E42AB8();
        v53 = (a2 >> 32) - a2;
        if (result < v83)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_181;
        }

        v9 = v89;
        if (!v50)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_69;
    }

    if (v13 == 1)
    {
      if (v84 < a2)
      {
        goto LABEL_153;
      }

      sub_1B03B2000(v19, v18);
      v31 = sub_1B0E42A98();
      if (!v31)
      {
        goto LABEL_175;
      }

      v32 = v31;
      v33 = sub_1B0E42AC8();
      if (__OFSUB__(a2, v33))
      {
        goto LABEL_157;
      }

      v34 = (a2 - v33 + v32);
      v35 = sub_1B0E42AB8();
      if (!v34)
      {
        goto LABEL_173;
      }

      goto LABEL_109;
    }

    v56 = *(a2 + 16);
    v55 = *(a2 + 24);
    sub_1B03B2000(v19, v18);
    v46 = sub_1B0E42A98();
    if (v46)
    {
      v57 = sub_1B0E42AC8();
      if (__OFSUB__(v56, v57))
      {
        goto LABEL_162;
      }

      v46 += v56 - v57;
    }

    v27 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    if (v27)
    {
      goto LABEL_154;
    }

    v49 = sub_1B0E42AB8();
    v6 = v87;
    if (!v46)
    {
      goto LABEL_171;
    }

LABEL_100:
    if (v49 >= v48)
    {
      v58 = v48;
    }

    else
    {
      v58 = v49;
    }

    v59 = memcmp(__s1, v46, v58);
    sub_1B0391D50(v19, v18);
    v9 = v89;
    v12 = v90;
    if (!v59)
    {
LABEL_140:
      v77 = a2;
      v78 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v20 == 2)
  {
    v36 = *(v19 + 16);
    sub_1B03B2000(v19, v18);
    v37 = sub_1B0E42A98();
    if (v37)
    {
      v38 = v37;
      v39 = sub_1B0E42AC8();
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_150;
      }

      v40 = (v36 - v39 + v38);
    }

    else
    {
      v40 = 0;
    }

    sub_1B0E42AB8();
    v12 = v90;
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v84 < a2)
        {
          goto LABEL_156;
        }

        v50 = sub_1B0E42A98();
        if (v50)
        {
          v51 = sub_1B0E42AC8();
          if (__OFSUB__(a2, v51))
          {
            goto LABEL_166;
          }

          v50 += a2 - v51;
        }

        result = sub_1B0E42AB8();
        v53 = (a2 >> 32) - a2;
        if (result < v83)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_179;
        }

        v9 = v89;
        if (!v50)
        {
          goto LABEL_178;
        }

        goto LABEL_135;
      }

      v9 = v89;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v40)
      {
        goto LABEL_170;
      }

LABEL_138:
      v73 = __s1;
      v72 = v40;
      v71 = BYTE6(a3);
LABEL_139:
      v74 = memcmp(v72, v73, v71);
      sub_1B0391D50(v19, v18);
      v6 = v87;
      if (!v74)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v65 = *(a2 + 16);
    v81 = *(a2 + 24);
    v50 = sub_1B0E42A98();
    if (v50)
    {
      v66 = sub_1B0E42AC8();
      if (__OFSUB__(v65, v66))
      {
        goto LABEL_164;
      }

      v50 += v65 - v66;
    }

    v27 = __OFSUB__(v81, v65);
    v67 = v81 - v65;
    if (v27)
    {
      goto LABEL_159;
    }

    result = sub_1B0E42AB8();
    if (result >= v67)
    {
      v53 = v67;
    }

    else
    {
      v53 = result;
    }

    if (!v40)
    {
      goto LABEL_183;
    }

    v9 = v89;
    v12 = v90;
    if (!v50)
    {
      goto LABEL_182;
    }

LABEL_135:
    if (v40 == v50)
    {
      sub_1B0391D50(a2, a3);
      sub_1B0391D50(v19, v18);
      v6 = v87;
      goto LABEL_143;
    }

    v71 = v53;
    v72 = v40;
    v73 = v50;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v13)
  {
LABEL_69:
    __s2 = a2;
    v93 = a3;
    v94 = BYTE2(a3);
    v95 = BYTE3(a3);
    v96 = BYTE4(a3);
    v97 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v13 == 2)
  {
    v45 = *(a2 + 16);
    v44 = *(a2 + 24);
    sub_1B03B2000(v19, v18);
    v46 = sub_1B0E42A98();
    if (v46)
    {
      v47 = sub_1B0E42AC8();
      if (__OFSUB__(v45, v47))
      {
        goto LABEL_163;
      }

      v46 += v45 - v47;
    }

    v27 = __OFSUB__(v44, v45);
    v48 = v44 - v45;
    if (v27)
    {
      goto LABEL_155;
    }

    v49 = sub_1B0E42AB8();
    v6 = v87;
    if (!v46)
    {
      goto LABEL_174;
    }

    goto LABEL_100;
  }

  if (v84 < a2)
  {
    goto LABEL_152;
  }

  sub_1B03B2000(v19, v18);
  v60 = sub_1B0E42A98();
  if (v60)
  {
    v61 = v60;
    v62 = sub_1B0E42AC8();
    if (__OFSUB__(a2, v62))
    {
      goto LABEL_158;
    }

    v34 = (a2 - v62 + v61);
    v35 = sub_1B0E42AB8();
    if (!v34)
    {
      goto LABEL_169;
    }

LABEL_109:
    if (v35 >= v83)
    {
      v63 = (a2 >> 32) - a2;
    }

    else
    {
      v63 = v35;
    }

    v64 = memcmp(__s1, v34, v63);
    sub_1B0391D50(v19, v18);
    v9 = v89;
    if (!v64)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  sub_1B0E42AB8();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  result = sub_1B0E42AB8();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
  return result;
}

uint64_t sub_1B0B028E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v2;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = sub_1B0E46148();

    if (v15)
    {

      v37 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      swift_dynamicCast();
      result = 0;
      *a1 = *&v38[0];
    }

    else
    {
      result = sub_1B0E46138();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v30 = sub_1B0B02EE4(v14, result + 1);
        *&v38[0] = v30;
        v31 = *(v30 + 16);
        if (*(v30 + 24) <= v31)
        {
          sub_1B0B044D0(v31 + 1);
          v30 = *&v38[0];
        }

        sub_1B0B05740(v32, v30);

        *v3 = v30;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v33 = v2;
    v34 = a1;
    v17 = *(v13 + 40);
    sub_1B0E46C28();
    v18 = *(*a2 + 96);
    swift_beginAccess();
    v35 = v18;
    sub_1B0B0D400(a2 + v18, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B50244(v38);
    sub_1B0B0D468(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    v19 = sub_1B0E46CB8();
    v20 = -1 << *(v13 + 32);
    v21 = v19 & ~v20;
    if ((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v13 + 48) + 8 * v21);
        v24 = *(*v23 + 96);
        swift_beginAccess();
        sub_1B0B0D400(v23 + v24, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B0D400(a2 + v35, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
        v25 = sub_1B0B57E4C(v12, v10);
        sub_1B0B0D468(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B0D468(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (v25)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v34 = *(*(v13 + 48) + 8 * v21);

      return 0;
    }

    else
    {
LABEL_11:
      v26 = v33;
      v27 = *v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v26;

      sub_1B0B06A64(v29, v21, isUniquelyReferenced_nonNull_native);
      *v26 = v36;
      *v34 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B0B02C9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1B0E46C28();
  sub_1B0B50244(v23);
  v12 = sub_1B0E46CB8();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1B0B0D400(*(v10 + 48) + v16 * v14, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v17 = sub_1B0B57E4C(v9, a2);
      sub_1B0B0D468(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1B0B0D468(a2, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D400(*(v10 + 48) + v16 * v14, v22, type metadata accessor for MoveAndCopyMessages.CommandID);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B0B0D400(a2, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    *&v23[0] = *v3;
    sub_1B0B06D44(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1B0B0D530(a2, v20);
    return 1;
  }
}

uint64_t sub_1B0B02EE4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v65 - v5;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v65 - v11;
  if (!a2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43C0, &unk_1B0EC5110);
  v13 = sub_1B0E46218();
  v86 = v13;
  v14 = sub_1B0E460F8();
  v15 = sub_1B0E46168();
  if (!v15)
  {
LABEL_48:

    return v13;
  }

  v71 = v6;
  v70 = v10;
  v69 = v12;
  v68 = v14;
  while (1)
  {
    *&v80 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
    swift_dynamicCast();
    v17 = *(v13 + 16);
    if (*(v13 + 24) <= v17)
    {
      sub_1B0B044D0(v17 + 1);
      v13 = v86;
    }

    v18 = v85;
    v19 = *(v13 + 40);
    sub_1B0E46C28();
    v20 = *(*v18 + 96);
    swift_beginAccess();
    sub_1B0B0D400(v18 + v20, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D400(v12, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      MEMORY[0x1B2728D70](1);
      goto LABEL_39;
    }

    v73 = v18;
    v72 = v13;
    v74 = *v10;
    v23 = *(v10 + 2);
    v24 = *(v10 + 2);
    MEMORY[0x1B2728D70](3);
    MEMORY[0x1B2728D70](v23 | (v23 << 32));
    v25 = 1 << *(v24 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v24 + 64);
    v28 = (v25 + 63) >> 6;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = 0;
    v31 = 0;
    if (v27)
    {
      while (1)
      {
        v32 = v31;
LABEL_20:
        v33 = __clz(__rbit64(v27)) | (v32 << 6);
        v34 = *(*(v24 + 48) + 4 * v33);
        v35 = (*(v24 + 56) + 16 * v33);
        v36 = *v35;
        v37 = v35[1];
        sub_1B03B2000(*v35, v37);
        if (v37 >> 60 == 15)
        {
          break;
        }

        v27 &= v27 - 1;
        v77 = v82;
        v78 = v83;
        v79 = v84;
        v76 = v81;
        v75 = v80;
        sub_1B0E46C88();
        sub_1B0E42F48();
        sub_1B0391D50(v36, v37);
        result = sub_1B0E46CB8();
        v30 ^= result;
        v31 = v32;
        if (!v27)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_17:
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_52;
        }

        if (v32 >= v28)
        {
          break;
        }

        v27 = *(v24 + 64 + 8 * v32);
        ++v31;
        if (v27)
        {
          goto LABEL_20;
        }
      }
    }

    MEMORY[0x1B2728D70](v30);

    v55 = &v88;
LABEL_37:
    v56 = *(v55 - 32);

    v10 = v70;
    v12 = v69;
    v13 = v72;
LABEL_38:
    v18 = v73;
LABEL_39:
    sub_1B0B0D468(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    result = sub_1B0E46CB8();
    v57 = v13 + 56;
    v58 = -1 << *(v13 + 32);
    v59 = result & ~v58;
    v60 = v59 >> 6;
    if (((-1 << v59) & ~*(v13 + 56 + 8 * (v59 >> 6))) == 0)
    {
      v61 = 0;
      v62 = (63 - v58) >> 6;
      while (++v60 != v62 || (v61 & 1) == 0)
      {
        v63 = v60 == v62;
        if (v60 == v62)
        {
          v60 = 0;
        }

        v61 |= v63;
        v64 = *(v57 + 8 * v60);
        if (v64 != -1)
        {
          v16 = __clz(__rbit64(~v64)) + (v60 << 6);
          goto LABEL_5;
        }
      }

      goto LABEL_53;
    }

    v16 = __clz(__rbit64((-1 << v59) & ~*(v13 + 56 + 8 * (v59 >> 6)))) | v59 & 0x7FFFFFFFFFFFFFC0;
LABEL_5:
    *(v57 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    *(*(v13 + 48) + 8 * v16) = v18;
    ++*(v13 + 16);
    v15 = sub_1B0E46168();
    if (!v15)
    {
      goto LABEL_48;
    }
  }

  v73 = v18;
  if (!EnumCaseMultiPayload)
  {
    v22 = v66;
    sub_1B03C60A4(v10, v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_38;
  }

  v72 = v13;
  v67 = *v10;
  v38 = *(v10 + 2);
  v39 = *(v10 + 2);
  MEMORY[0x1B2728D70](2);
  MEMORY[0x1B2728D70](v38 | (v38 << 32));
  v40 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v39 + 64);
  v44 = (v41 + 63) >> 6;
  v74 = v39;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v45 = 0;
  for (i = 0; v43; v45 ^= result)
  {
    v47 = i;
LABEL_32:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = v48 | (v47 << 6);
    v50 = *(*(v74 + 48) + 4 * v49);
    v51 = (*(v74 + 56) + 24 * v49);
    v52 = *v51;
    v53 = *(v51 + 1);
    v54 = *(v51 + 2);
    sub_1B03B2000(v53, v54);
    v77 = v82;
    v78 = v83;
    v79 = v84;
    v76 = v81;
    v75 = v80;
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v52);
    sub_1B03B2000(v53, v54);
    sub_1B0E42F48();
    sub_1B0391D50(v53, v54);
    sub_1B0391D50(v53, v54);
    result = sub_1B0E46CB8();
  }

  while (1)
  {
    v47 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v47 >= v44)
    {

      MEMORY[0x1B2728D70](v45);

      v55 = &v87;
      goto LABEL_37;
    }

    v43 = *(v40 + 8 * v47);
    ++i;
    if (v43)
    {
      i = v47;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1B0B03644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4338, &qword_1B0EC5080);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B0E46C28();
      v20 = v18 - 2;
      if ((v18 - 2) >= 3)
      {
        MEMORY[0x1B2728D70](3);
        v20 = v18 & 1;
      }

      MEMORY[0x1B2728D70](v20);
      result = sub_1B0E46CB8();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
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
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B0B038B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E8, &qword_1B0EC5150);
  result = sub_1B0E46208();
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
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v20);
      result = sub_1B0E46CB8();
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
      *v15 = v21;
      v15[1] = v20;
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

uint64_t sub_1B0B03B0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4360, &qword_1B0EC50A8);
  result = sub_1B0E46208();
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18);
      result = sub_1B0E46CB8();
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
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_1B0B03D5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4450, &qword_1B0EC51C8);
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      sub_1B0E44BB8();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B03FD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4410, &unk_1B0EC5180);
  result = sub_1B0E46208();
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
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_1B0E46C28();
      if (v20)
      {
        MEMORY[0x1B2728D70](0);
        sub_1B0E44BB8();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1B2728D70](1);
      }

      result = sub_1B0E46CB8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

uint64_t sub_1B0B04270(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B0, &qword_1B0EC50F8);
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      sub_1B0E42F48();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B044D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v76 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v76 - v12;
  v14 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v15 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43C0, &unk_1B0EC5110);
  v16 = sub_1B0E46208();
  v17 = v16;
  if (!*(v14 + 16))
  {
LABEL_60:

    *v2 = v17;
    return result;
  }

  v77 = v1;
  v18 = 0;
  v19 = *(v14 + 56);
  v80 = (v14 + 56);
  v20 = 1 << *(v14 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v85 = v14;
  v84 = v7;
  v83 = v16;
  v82 = v11;
  v81 = v13;
  v86 = v23;
  v87 = v16 + 56;
  while (1)
  {
    if (v22)
    {
      v25 = __clz(__rbit64(v22));
      v90 = (v22 - 1) & v22;
    }

    else
    {
      v26 = v18;
      result = v80;
      do
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_62;
        }

        if (v18 >= v23)
        {
          v75 = 1 << *(v14 + 32);
          if (v75 >= 64)
          {
            bzero(v80, ((v75 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v80 = -1 << v75;
          }

          v2 = v77;
          *(v14 + 16) = 0;
          goto LABEL_60;
        }

        v28 = v80[v18];
        ++v26;
      }

      while (!v28);
      v25 = __clz(__rbit64(v28));
      v90 = (v28 - 1) & v28;
    }

    v29 = *(*(v14 + 48) + 8 * (v25 | (v18 << 6)));
    v30 = *(v17 + 40);
    sub_1B0E46C28();
    v31 = *(*v29 + 96);
    swift_beginAccess();
    v89 = v29;
    sub_1B0B0D400(v29 + v31, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D400(v13, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v88 = *v11;
      v34 = *(v11 + 2);
      v35 = *(v11 + 2);
      MEMORY[0x1B2728D70](3);
      MEMORY[0x1B2728D70](v34 | (v34 << 32));
      v36 = v35 + 64;
      v37 = 1 << *(v35 + 32);
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(v35 + 64);
      v40 = (v37 + 63) >> 6;
      v91 = v35;
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v41 = 0;
      v42 = 0;
      if (v39)
      {
        while (1)
        {
          v43 = v42;
LABEL_29:
          v44 = __clz(__rbit64(v39)) | (v43 << 6);
          v45 = *(*(v91 + 48) + 4 * v44);
          v46 = (*(v91 + 56) + 16 * v44);
          v48 = *v46;
          v47 = v46[1];
          sub_1B03B2000(*v46, v47);
          if (v47 >> 60 == 15)
          {
            break;
          }

          v39 &= v39 - 1;
          v94 = v99;
          v95 = v100;
          v96 = v101;
          v93 = v98;
          v92 = v97;
          sub_1B0E46C88();
          sub_1B0E42F48();
          sub_1B0391D50(v48, v47);
          result = sub_1B0E46CB8();
          v41 ^= result;
          v42 = v43;
          if (!v39)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        while (1)
        {
LABEL_26:
          v43 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_63;
          }

          if (v43 >= v40)
          {
            break;
          }

          v39 = *(v36 + 8 * v43);
          ++v42;
          if (v39)
          {
            goto LABEL_29;
          }
        }
      }

      MEMORY[0x1B2728D70](v41);

      v66 = &v102;
LABEL_46:
      v67 = *(v66 - 32);

      v14 = v85;
      v17 = v83;
      v11 = v82;
      v13 = v81;
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

LABEL_47:
    sub_1B0B0D468(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
    result = sub_1B0E46CB8();
    v68 = -1 << *(v17 + 32);
    v69 = result & ~v68;
    v70 = v69 >> 6;
    if (((-1 << v69) & ~*(v87 + 8 * (v69 >> 6))) == 0)
    {
      v71 = 0;
      v72 = (63 - v68) >> 6;
      while (++v70 != v72 || (v71 & 1) == 0)
      {
        v73 = v70 == v72;
        if (v70 == v72)
        {
          v70 = 0;
        }

        v71 |= v73;
        v74 = *(v87 + 8 * v70);
        if (v74 != -1)
        {
          v24 = __clz(__rbit64(~v74)) + (v70 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_64;
    }

    v24 = __clz(__rbit64((-1 << v69) & ~*(v87 + 8 * (v69 >> 6)))) | v69 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v87 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v17 + 48) + 8 * v24) = v89;
    ++*(v17 + 16);
    v23 = v86;
    v22 = v90;
  }

  if (!EnumCaseMultiPayload)
  {
    v33 = v79;
    sub_1B03C60A4(v11, v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_47;
  }

  v78 = *v11;
  v49 = *(v11 + 2);
  v50 = *(v11 + 2);
  MEMORY[0x1B2728D70](2);
  MEMORY[0x1B2728D70](v49 | (v49 << 32));
  v51 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v50 + 64);
  v55 = (v52 + 63) >> 6;
  v88 = v50;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56 = 0;
  for (i = 0; v54; v56 = result ^ v91)
  {
    v91 = v56;
    v58 = i;
LABEL_41:
    v59 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v60 = v59 | (v58 << 6);
    v61 = *(*(v88 + 48) + 4 * v60);
    v62 = (*(v88 + 56) + 24 * v60);
    v63 = *v62;
    v65 = *(v62 + 1);
    v64 = *(v62 + 2);
    sub_1B03B2000(v65, v64);
    v94 = v99;
    v95 = v100;
    v96 = v101;
    v93 = v98;
    v92 = v97;
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v63);
    sub_1B03B2000(v65, v64);
    sub_1B0E42F48();
    sub_1B0391D50(v65, v64);
    sub_1B0391D50(v65, v64);
    result = sub_1B0E46CB8();
  }

  while (1)
  {
    v58 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v58 >= v55)
    {

      MEMORY[0x1B2728D70](v56);

      v66 = &v99 + 8;
      goto LABEL_46;
    }

    v54 = *(v51 + 8 * v58);
    ++i;
    if (v54)
    {
      v91 = v56;
      i = v58;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1B0B04CC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = v77 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v77 - v13;
  v15 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v16 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4538, &qword_1B0EC52D0);
  v17 = sub_1B0E46208();
  v18 = v17;
  if (!*(v15 + 16))
  {
LABEL_62:

    *v2 = v18;
    return result;
  }

  v77[0] = v1;
  v19 = 0;
  v20 = *(v15 + 56);
  v79 = (v15 + 56);
  v21 = 1 << *(v15 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v7;
  v24 = v22 & v20;
  v25 = (v21 + 63) >> 6;
  v87 = v17 + 56;
  v85 = v15;
  v84 = v23;
  v83 = v8;
  v82 = v17;
  v81 = v11;
  v80 = v14;
  v86 = v25;
  while (1)
  {
    if (v24)
    {
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
    }

    else
    {
      v28 = v19;
      result = v79;
      do
      {
        v19 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_64;
        }

        if (v19 >= v25)
        {
          v76 = 1 << *(v15 + 32);
          if (v76 >= 64)
          {
            bzero(v79, ((v76 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v79 = -1 << v76;
          }

          v2 = v77[0];
          *(v15 + 16) = 0;
          goto LABEL_62;
        }

        v30 = v79[v19];
        ++v28;
      }

      while (!v30);
      v27 = __clz(__rbit64(v30));
      v24 = (v30 - 1) & v30;
    }

    v31 = *(v15 + 48);
    v90 = *(v8 + 72);
    sub_1B0B0D530(v31 + v90 * (v27 | (v19 << 6)), v14);
    v32 = *(v18 + 40);
    sub_1B0E46C28();
    sub_1B0B0D400(v14, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v34 = v15;
      v35 = v23;
      MEMORY[0x1B2728D70](1);
      goto LABEL_49;
    }

    v88 = v24;
    v89 = *v11;
    v37 = *(v11 + 2);
    v38 = *(v11 + 2);
    MEMORY[0x1B2728D70](3);
    MEMORY[0x1B2728D70](v37 | (v37 << 32));
    v39 = v38 + 64;
    v40 = 1 << *(v38 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v38 + 64);
    v43 = (v40 + 63) >> 6;
    v91 = v38;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v44 = 0;
    v45 = 0;
    if (v42)
    {
      while (1)
      {
        v46 = v45;
LABEL_29:
        v47 = __clz(__rbit64(v42)) | (v46 << 6);
        v48 = *(*(v91 + 48) + 4 * v47);
        v49 = (*(v91 + 56) + 16 * v47);
        v51 = *v49;
        v50 = v49[1];
        sub_1B03B2000(*v49, v50);
        if (v50 >> 60 == 15)
        {
          break;
        }

        v42 &= v42 - 1;
        v94 = v99;
        v95 = v100;
        v96 = v101;
        v92 = v97;
        v93 = v98;
        sub_1B0E46C88();
        sub_1B0E42F48();
        sub_1B0391D50(v51, v50);
        result = sub_1B0E46CB8();
        v44 ^= result;
        v45 = v46;
        if (!v42)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_26:
        v46 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_65;
        }

        if (v46 >= v43)
        {
          break;
        }

        v42 = *(v39 + 8 * v46);
        ++v45;
        if (v42)
        {
          goto LABEL_29;
        }
      }
    }

    MEMORY[0x1B2728D70](v44);

    v34 = v85;
    v35 = v84;
    v8 = v83;
    v18 = v82;
    v11 = v81;
    v14 = v80;
LABEL_46:
    v25 = v86;
LABEL_48:
    v24 = v88;
LABEL_49:
    result = sub_1B0E46CB8();
    v69 = -1 << *(v18 + 32);
    v70 = result & ~v69;
    v71 = v70 >> 6;
    if (((-1 << v70) & ~*(v87 + 8 * (v70 >> 6))) == 0)
    {
      v72 = 0;
      v73 = (63 - v69) >> 6;
      v23 = v35;
      v15 = v34;
      while (++v71 != v73 || (v72 & 1) == 0)
      {
        v74 = v71 == v73;
        if (v71 == v73)
        {
          v71 = 0;
        }

        v72 |= v74;
        v75 = *(v87 + 8 * v71);
        if (v75 != -1)
        {
          v26 = __clz(__rbit64(~v75)) + (v71 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_66;
    }

    v26 = __clz(__rbit64((-1 << v70) & ~*(v87 + 8 * (v70 >> 6)))) | v70 & 0x7FFFFFFFFFFFFFC0;
    v23 = v35;
    v15 = v34;
LABEL_9:
    *(v87 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    sub_1B0B0D530(v14, *(v18 + 48) + v26 * v90);
    ++*(v18 + 16);
  }

  v88 = v24;
  if (!EnumCaseMultiPayload)
  {
    v34 = v15;
    v35 = v23;
    v36 = v78;
    sub_1B03C60A4(v11, v78, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_46;
  }

  v77[1] = *v11;
  v52 = *(v11 + 2);
  v53 = *(v11 + 2);
  MEMORY[0x1B2728D70](2);
  MEMORY[0x1B2728D70](v52 | (v52 << 32));
  v54 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v53 + 64);
  v58 = (v55 + 63) >> 6;
  v89 = v53;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v59 = 0;
  for (i = 0; v57; v59 = result ^ v91)
  {
    v91 = v59;
    v61 = i;
LABEL_42:
    v62 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    v63 = v62 | (v61 << 6);
    v64 = *(*(v89 + 48) + 4 * v63);
    v65 = (*(v89 + 56) + 24 * v63);
    v66 = *v65;
    v67 = *(v65 + 1);
    v68 = *(v65 + 2);
    sub_1B03B2000(v67, v68);
    v94 = v99;
    v95 = v100;
    v96 = v101;
    v92 = v97;
    v93 = v98;
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v66);
    sub_1B03B2000(v67, v68);
    sub_1B0E42F48();
    sub_1B0391D50(v67, v68);
    sub_1B0391D50(v67, v68);
    result = sub_1B0E46CB8();
  }

  v25 = v86;
  while (1)
  {
    v61 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v61 >= v58)
    {

      MEMORY[0x1B2728D70](v59);

      v34 = v85;
      v35 = v84;
      v8 = v83;
      v18 = v82;
      v11 = v81;
      v14 = v80;
      goto LABEL_48;
    }

    v57 = *(v54 + 8 * v61);
    ++i;
    if (v57)
    {
      v91 = v59;
      i = v61;
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1B0B054C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E0, &qword_1B0EC5148);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v19 = (*(v3 + 48) + 48 * (v16 | (v7 << 6)));
      v30 = *v19;
      v31 = v19[1];
      v32 = v19[2];
      v20 = *(v6 + 40);
      sub_1B0E46C28();
      sub_1B0E461D8();
      result = sub_1B0E46CB8();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 48 * v14);
      *v15 = v30;
      v15[1] = v31;
      v15[2] = v32;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1B0B05740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 40);
  sub_1B0E46C28();
  v9 = *(*a1 + 96);
  swift_beginAccess();
  sub_1B0B0D400(a1 + v9, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B50244(v13);
  sub_1B0B0D468(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0E46CB8();
  v10 = -1 << *(a2 + 32);
  result = sub_1B0E460D8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B0B05888(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_1B0B03644(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B0B06F74();
      a2 = v7;
      goto LABEL_24;
    }

    sub_1B0B07DAC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B0E46C28();
  v10 = v4 - 2;
  if ((v4 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v10 = v4 & 1;
  }

  MEMORY[0x1B2728D70](v10);
  result = sub_1B0E46CB8();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + a2);
      switch(v13)
      {
        case 2:
          if (v4 == 2)
          {
            goto LABEL_23;
          }

          break;
        case 3:
          if (v4 == 3)
          {
            goto LABEL_23;
          }

          break;
        case 4:
          if (v4 == 4)
          {
            goto LABEL_23;
          }

          break;
        default:
          if ((v4 - 2) >= 3u && ((v13 ^ v4) & 1) == 0)
          {
LABEL_23:
            result = sub_1B0E46B98();
            __break(1u);
            goto LABEL_24;
          }

          break;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v4;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }

  return result;
}

uint64_t sub_1B0B05A54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B0B038B0(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        v9 = a3;
        result = sub_1B0B0722C();
        a3 = v9;
        goto LABEL_22;
      }

      sub_1B0B07FE8(v7 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](a2);
    result = sub_1B0E46CB8();
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = (*(v10 + 48) + 16 * a3);
        if (v14[1] == a2)
        {
          v15 = *v14;
          v16 = *(*v14 + 16);
          if (v16 == *(v6 + 16))
          {
            break;
          }
        }

LABEL_10:
        a3 = (a3 + 1) & v13;
        if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v16)
      {
        v17 = v15 == v6;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v15 + 32);
        v19 = (v6 + 32);
        while (v16)
        {
          if (*v18 != *v19)
          {
            goto LABEL_10;
          }

          ++v18;
          ++v19;
          if (!--v16)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      result = sub_1B0E46B98();
      __break(1u);
    }
  }

LABEL_22:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v6;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B0B05C0C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0B03B0C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B03BDF7C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B0B0821C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v4);
  result = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B0B05D58(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B0B03D5C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1B0B0739C();
      goto LABEL_16;
    }

    sub_1B0B0843C(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_1B0E46C28();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  result = sub_1B0E46CB8();
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 16 * a3);
      v16 = *v15;
      v17 = v15[1];
      v18 = sub_1B0E44BB8();
      v20 = v19;
      if (v18 == sub_1B0E44BB8() && v20 == v21)
      {
        goto LABEL_19;
      }

      v23 = sub_1B0E46A78();

      if (v23)
      {
        goto LABEL_20;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v24 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v25 = (*(v24 + 48) + 16 * a3);
  *v25 = v8;
  v25[1] = a2;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B0B05F44(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B0B03FD8(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_1B0B074F8();
        goto LABEL_23;
      }

      sub_1B0B08694(v9 + 1);
    }

    v11 = *v4;
    v12 = *(*v4 + 40);
    sub_1B0E46C28();
    if (a2)
    {
      MEMORY[0x1B2728D70](0);
      sub_1B0E44BB8();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

    result = sub_1B0E46CB8();
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      do
      {
        v15 = (*(v11 + 48) + 16 * a3);
        if (v15[1])
        {
          if (a2)
          {
            v16 = *v15;
            v17 = sub_1B0E44BB8();
            v19 = v18;
            if (v17 == sub_1B0E44BB8() && v19 == v20)
            {
              goto LABEL_26;
            }

            v22 = sub_1B0E46A78();

            if (v22)
            {
              goto LABEL_27;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_27;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_23:
  v23 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v24 = (*(v23 + 48) + 16 * a3);
  *v24 = v8;
  v24[1] = a2;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_26:

LABEL_27:
    result = sub_1B0E46B98();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

uint64_t sub_1B0B06164(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v93 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_1B0B04270(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B0B07650();
      goto LABEL_143;
    }

    sub_1B0B08924(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B0E46C28();
  sub_1B0E42F48();
  result = sub_1B0E46CB8();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = result & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v71 = *v81;
    *(*v81 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v72 = (*(v71 + 48) + 16 * a3);
    *v72 = v7;
    v72[1] = a2;
    v73 = *(v71 + 16);
    v30 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v30)
    {
      *(v71 + 16) = v74;
      v75 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
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
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v14 = ~v13;
  v15 = a2 >> 62;
  if (v7)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v85 = v17;
  v80 = v10;
  v18 = __OFSUB__(HIDWORD(v7), v7);
  v82 = v18;
  v78 = (v7 >> 32) - v7;
  v79 = v7 >> 32;
  v83 = v14;
  v84 = v10 + 56;
  while (1)
  {
    v19 = (*(v10 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    v22 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v85) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_147;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_148;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v20);
    }

LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v26)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v15)
      {
        v27 = HIDWORD(v7) - v7;
        if (v82)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v26 == v27)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_185;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (!v15)
      {
        goto LABEL_97;
      }

      if (v15 == 1)
      {
        if (v79 < v7)
        {
          goto LABEL_152;
        }

        sub_1B03B2000(v21, v20);
        v31 = sub_1B0E42A98();
        if (!v31)
        {
          goto LABEL_175;
        }

        v32 = v31;
        v33 = sub_1B0E42AC8();
        if (__OFSUB__(v7, v33))
        {
          goto LABEL_158;
        }

        v34 = v7 - v33 + v32;
        v35 = sub_1B0E42AB8();
        if (!v34)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v35 >= v78)
        {
          v56 = (v7 >> 32) - v7;
        }

        else
        {
          v56 = v35;
        }

LABEL_114:
        v60 = __s1;
        v61 = v34;
LABEL_140:
        v70 = memcmp(v60, v61, v56);
        result = sub_1B0391D50(v21, v20);
LABEL_141:
        v14 = v83;
        v12 = v84;
        if (!v70)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v54 = *(v7 + 16);
      v53 = *(v7 + 24);
      sub_1B03B2000(v21, v20);
      v34 = sub_1B0E42A98();
      if (v34)
      {
        v55 = sub_1B0E42AC8();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_162;
        }

        v34 += v54 - v55;
      }

      v30 = __OFSUB__(v53, v54);
      v51 = v53 - v54;
      if (v30)
      {
        goto LABEL_156;
      }

      v52 = sub_1B0E42AB8();
      v10 = v80;
      if (!v34)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v52 >= v51)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      goto LABEL_114;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_149;
    }

    sub_1B03B2000(v21, v20);
    v39 = sub_1B0E42A98();
    if (v39)
    {
      v45 = sub_1B0E42AC8();
      if (__OFSUB__(v21, v45))
      {
        goto LABEL_151;
      }

      v39 += v21 - v45;
    }

    sub_1B0E42AB8();
    if (v15 == 2)
    {
      v66 = *(v7 + 16);
      v77 = *(v7 + 24);
      v41 = sub_1B0E42A98();
      if (v41)
      {
        v67 = sub_1B0E42AC8();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_166;
        }

        v41 += v66 - v67;
      }

      v30 = __OFSUB__(v77, v66);
      v68 = v77 - v66;
      if (v30)
      {
        goto LABEL_161;
      }

      v69 = sub_1B0E42AB8();
      if (v69 >= v68)
      {
        v44 = v68;
      }

      else
      {
        v44 = v69;
      }

      if (!v39)
      {
        goto LABEL_177;
      }

      if (!v41)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v79 < v7)
      {
        goto LABEL_160;
      }

      v41 = sub_1B0E42A98();
      if (v41)
      {
        v46 = sub_1B0E42AC8();
        if (__OFSUB__(v7, v46))
        {
          goto LABEL_167;
        }

        v41 += v7 - v46;
      }

      v47 = sub_1B0E42AB8();
      v44 = (v7 >> 32) - v7;
      if (v47 < v78)
      {
        v44 = v47;
      }

      if (!v39)
      {
        goto LABEL_181;
      }

      if (!v41)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v22 == 2)
  {
    v38 = *(v21 + 16);
    sub_1B03B2000(v21, v20);
    v39 = sub_1B0E42A98();
    if (v39)
    {
      v40 = sub_1B0E42AC8();
      if (__OFSUB__(v38, v40))
      {
        goto LABEL_150;
      }

      v39 += v38 - v40;
    }

    sub_1B0E42AB8();
    if (v15 == 2)
    {
      v62 = *(v7 + 16);
      v76 = *(v7 + 24);
      v41 = sub_1B0E42A98();
      if (v41)
      {
        v63 = sub_1B0E42AC8();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_164;
        }

        v41 += v62 - v63;
      }

      v30 = __OFSUB__(v76, v62);
      v64 = v76 - v62;
      if (v30)
      {
        goto LABEL_159;
      }

      v65 = sub_1B0E42AB8();
      if (v65 >= v64)
      {
        v44 = v64;
      }

      else
      {
        v44 = v65;
      }

      if (!v39)
      {
        goto LABEL_183;
      }

      if (!v41)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v79 < v7)
      {
        goto LABEL_155;
      }

      v41 = sub_1B0E42A98();
      if (v41)
      {
        v42 = sub_1B0E42AC8();
        if (__OFSUB__(v7, v42))
        {
          goto LABEL_165;
        }

        v41 += v7 - v42;
      }

      v43 = sub_1B0E42AB8();
      v44 = (v7 >> 32) - v7;
      if (v43 < v78)
      {
        v44 = v43;
      }

      if (!v39)
      {
        goto LABEL_179;
      }

      if (!v41)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v39 == v41)
      {
        goto LABEL_184;
      }

      v70 = memcmp(v39, v41, v44);
      result = sub_1B0391D50(v21, v20);
      v10 = v80;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_170;
    }

LABEL_139:
    v61 = __s1;
    v60 = v39;
    v56 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v15)
  {
LABEL_97:
    __s2 = v7;
    v87 = a2;
    v88 = BYTE2(a2);
    v89 = BYTE3(a2);
    v90 = BYTE4(a2);
    v91 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v15 == 2)
  {
    v49 = *(v7 + 16);
    v48 = *(v7 + 24);
    sub_1B03B2000(v21, v20);
    v34 = sub_1B0E42A98();
    if (v34)
    {
      v50 = sub_1B0E42AC8();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_163;
      }

      v34 += v49 - v50;
    }

    v30 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v30)
    {
      goto LABEL_154;
    }

    v52 = sub_1B0E42AB8();
    v10 = v80;
    if (!v34)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v79 < v7)
  {
    goto LABEL_153;
  }

  sub_1B03B2000(v21, v20);
  v57 = sub_1B0E42A98();
  if (v57)
  {
    v58 = v57;
    v59 = sub_1B0E42AC8();
    if (__OFSUB__(v7, v59))
    {
      goto LABEL_157;
    }

    v34 = v7 - v59 + v58;
    v35 = sub_1B0E42AB8();
    if (!v34)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  sub_1B0E42AB8();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  sub_1B0E42AB8();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_1B0391D50(v21, v20);
LABEL_185:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B0B06A64(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  v14 = *(*v3 + 16);
  v15 = *(*v3 + 24);
  v32 = v3;
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0B044D0(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      result = sub_1B0B077AC();
      goto LABEL_12;
    }

    sub_1B0B08B60(v14 + 1);
  }

  v16 = *v3;
  v17 = *(*v3 + 40);
  sub_1B0E46C28();
  v18 = v34;
  v19 = *(*v34 + 96);
  swift_beginAccess();
  v33 = v19;
  sub_1B0B0D400(v18 + v19, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B50244(v35);
  sub_1B0B0D468(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
  result = sub_1B0E46CB8();
  v20 = v16 + 56;
  v21 = -1 << *(v16 + 32);
  a2 = result & ~v21;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = v16;
    v23 = ~v21;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      v24 = *(*(v22 + 48) + 8 * a2);
      v25 = *(*v24 + 96);
      swift_beginAccess();
      sub_1B0B0D400(v24 + v25, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B0D400(v34 + v33, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      v26 = sub_1B0B57E4C(v13, v10);
      sub_1B0B0D468(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      result = sub_1B0B0D468(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v26)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v23;
    }

    while (((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + 8 * a2) = v34;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B0B06D44(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1B0B04CC0(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1B0B07910();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1B0B09350(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1B0E46C28();
  sub_1B0B50244(v29);
  v18 = sub_1B0E46CB8();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1B0B0D400(*(v16 + 48) + v21 * a2, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      v22 = sub_1B0B57E4C(v13, a1);
      sub_1B0B0D468(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B0B0D530(a1, *(v23 + 48) + *(v9 + 72) * a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void *sub_1B0B06F74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4338, &qword_1B0EC5080);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B0B070C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B0722C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E8, &qword_1B0EC5150);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = (*(v4 + 48) + v17);
        *v21 = v19;
        v21[1] = v20;
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B0739C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4450, &qword_1B0EC51C8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B074F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4410, &unk_1B0EC5180);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

void *sub_1B0B07650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B0, &qword_1B0EC50F8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1B03B2000(v18, *(&v18 + 1));
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

void *sub_1B0B077AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43C0, &unk_1B0EC5110);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1B0B07910()
{
  v1 = v0;
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4538, &qword_1B0EC52D0);
  v7 = *v0;
  v8 = sub_1B0E461F8();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B0B0D400(*(v7 + 48) + v22, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        result = sub_1B0B0D530(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1B0B07B08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B0E461F8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 4 * v16) = *(*(v4 + 48) + 4 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_1B0B07C38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E0, &qword_1B0EC5148);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        v17 = 48 * (v14 | (v8 << 6));
        result = sub_1B03D0A20(*(v2 + 48) + v17, v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21[0];
        v20 = v21[2];
        v18[1] = v21[1];
        v18[2] = v20;
        *v18 = v19;
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

uint64_t sub_1B0B07DAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4338, &qword_1B0EC5080);
  result = sub_1B0E46208();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B0E46C28();
      v19 = v17 - 2;
      if ((v17 - 2) >= 3)
      {
        MEMORY[0x1B2728D70](3);
        v19 = v17 & 1;
      }

      MEMORY[0x1B2728D70](v19);
      result = sub_1B0E46CB8();
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

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_30;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B0B07FE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E8, &qword_1B0EC5150);
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v20);
      result = sub_1B0E46CB8();
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
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

uint64_t sub_1B0B0821C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4360, &qword_1B0EC50A8);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v17);
      result = sub_1B0E46CB8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1B0B0843C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4450, &qword_1B0EC51C8);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
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
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B0E46C28();
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1B0E46CB8();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
      v3 = v31;
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

        v2 = v30;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_1B0B08694(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4410, &unk_1B0EC5180);
  result = sub_1B0E46208();
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_1B0E46C28();
      if (v19)
      {
        MEMORY[0x1B2728D70](0);
        sub_1B0E44BB8();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1B2728D70](1);
      }

      result = sub_1B0E46CB8();
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

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
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
        goto LABEL_31;
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
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B0B08924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B0, &qword_1B0EC50F8);
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      sub_1B03B2000(v19, v20);
      sub_1B0E42F48();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B08B60(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v74 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v74 - v12;
  v14 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v15 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43C0, &unk_1B0EC5110);
  result = sub_1B0E46208();
  v17 = result;
  if (!*(v14 + 16))
  {

LABEL_58:
    *v2 = v17;
    return result;
  }

  v75 = v1;
  v18 = 0;
  v19 = *(v14 + 56);
  v78 = v14 + 56;
  v20 = 1 << *(v14 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v83 = v7;
  v82 = v11;
  v81 = v14;
  v80 = v13;
  v79 = result;
  v84 = v23;
  v85 = result + 56;
  while (1)
  {
    if (v22)
    {
      v25 = __clz(__rbit64(v22));
      v87 = (v22 - 1) & v22;
    }

    else
    {
      v26 = v18;
      do
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_60;
        }

        if (v18 >= v23)
        {

          v2 = v75;
          goto LABEL_58;
        }

        v27 = *(v78 + 8 * v18);
        ++v26;
      }

      while (!v27);
      v25 = __clz(__rbit64(v27));
      v87 = (v27 - 1) & v27;
    }

    v28 = *(*(v14 + 48) + 8 * (v25 | (v18 << 6)));
    v29 = *(v17 + 40);
    sub_1B0E46C28();
    v30 = *(*v28 + 96);
    swift_beginAccess();
    v89 = v28;
    sub_1B0B0D400(v28 + v30, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D400(v13, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v86 = *v11;
      v33 = *(v11 + 2);
      v34 = *(v11 + 2);
      MEMORY[0x1B2728D70](3);
      MEMORY[0x1B2728D70](v33 | (v33 << 32));
      v35 = v34 + 64;
      v36 = 1 << *(v34 + 32);
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v38 = v37 & *(v34 + 64);
      v39 = (v36 + 63) >> 6;

      v88 = v34;
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v40 = 0;
      v41 = 0;
      if (v38)
      {
        while (1)
        {
          v42 = v41;
LABEL_29:
          v43 = __clz(__rbit64(v38)) | (v42 << 6);
          v44 = *(*(v88 + 48) + 4 * v43);
          v45 = (*(v88 + 56) + 16 * v43);
          v47 = *v45;
          v46 = v45[1];
          sub_1B03B2000(*v45, v46);
          if (v46 >> 60 == 15)
          {
            break;
          }

          v38 &= v38 - 1;
          v92 = v97;
          v93 = v98;
          v94 = v99;
          v91 = v96;
          v90 = v95;
          sub_1B0E46C88();
          sub_1B0E42F48();
          sub_1B0391D50(v47, v46);
          result = sub_1B0E46CB8();
          v40 ^= result;
          v41 = v42;
          if (!v38)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        while (1)
        {
LABEL_26:
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_61;
          }

          if (v42 >= v39)
          {
            break;
          }

          v38 = *(v35 + 8 * v42);
          ++v41;
          if (v38)
          {
            goto LABEL_29;
          }
        }
      }

      MEMORY[0x1B2728D70](v40);

      v65 = &v100;
LABEL_46:
      v66 = *(v65 - 32);

      v11 = v82;
      v14 = v81;
      v13 = v80;
      v17 = v79;
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

LABEL_47:
    sub_1B0B0D468(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
    result = sub_1B0E46CB8();
    v67 = -1 << *(v17 + 32);
    v68 = result & ~v67;
    v69 = v68 >> 6;
    if (((-1 << v68) & ~*(v85 + 8 * (v68 >> 6))) == 0)
    {
      v70 = 0;
      v71 = (63 - v67) >> 6;
      while (++v69 != v71 || (v70 & 1) == 0)
      {
        v72 = v69 == v71;
        if (v69 == v71)
        {
          v69 = 0;
        }

        v70 |= v72;
        v73 = *(v85 + 8 * v69);
        if (v73 != -1)
        {
          v24 = __clz(__rbit64(~v73)) + (v69 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_62;
    }

    v24 = __clz(__rbit64((-1 << v68) & ~*(v85 + 8 * (v68 >> 6)))) | v68 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v85 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v17 + 48) + 8 * v24) = v89;
    ++*(v17 + 16);
    v23 = v84;
    v22 = v87;
  }

  if (!EnumCaseMultiPayload)
  {
    v32 = v77;
    sub_1B03C60A4(v11, v77, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2728D70](0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_47;
  }

  v76 = *v11;
  v48 = *(v11 + 2);
  v49 = *(v11 + 2);
  MEMORY[0x1B2728D70](2);
  MEMORY[0x1B2728D70](v48 | (v48 << 32));
  v50 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & *(v49 + 64);
  v54 = (v51 + 63) >> 6;

  v86 = v49;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = 0;
  for (i = 0; v53; v55 = result ^ v88)
  {
    v88 = v55;
    v57 = i;
LABEL_41:
    v58 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v59 = v58 | (v57 << 6);
    v60 = *(*(v86 + 48) + 4 * v59);
    v61 = (*(v86 + 56) + 24 * v59);
    v62 = *v61;
    v64 = *(v61 + 1);
    v63 = *(v61 + 2);
    sub_1B03B2000(v64, v63);
    v92 = v97;
    v93 = v98;
    v94 = v99;
    v91 = v96;
    v90 = v95;
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v62);
    sub_1B03B2000(v64, v63);
    sub_1B0E42F48();
    sub_1B0391D50(v64, v63);
    sub_1B0391D50(v64, v63);
    result = sub_1B0E46CB8();
  }

  while (1)
  {
    v57 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v57 >= v54)
    {

      MEMORY[0x1B2728D70](v55);

      v65 = &v97 + 8;
      goto LABEL_46;
    }

    v53 = *(v50 + 8 * v57);
    ++i;
    if (v53)
    {
      v88 = v55;
      i = v57;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1B0B09350(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = v72 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v72 - v13;
  v15 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v16 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4538, &qword_1B0EC52D0);
  result = sub_1B0E46208();
  v18 = result;
  if (!*(v15 + 16))
  {

LABEL_59:
    *v2 = v18;
    return result;
  }

  v72[0] = v2;
  v19 = 0;
  v20 = *(v15 + 56);
  v74 = v15 + 56;
  v21 = 1 << *(v15 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v79 = v7;
  v78 = v8;
  v77 = v11;
  v76 = v15;
  v75 = v14;
  v82 = result;
  v80 = v24;
  v81 = result + 56;
  while (1)
  {
    if (v23)
    {
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
    }

    else
    {
      v27 = v19;
      do
      {
        v19 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_61;
        }

        if (v19 >= v24)
        {

          v2 = v72[0];
          goto LABEL_59;
        }

        v28 = *(v74 + 8 * v19);
        ++v27;
      }

      while (!v28);
      v26 = __clz(__rbit64(v28));
      v23 = (v28 - 1) & v28;
    }

    v29 = *(v8 + 72);
    sub_1B0B0D400(*(v15 + 48) + v29 * (v26 | (v19 << 6)), v14, type metadata accessor for MoveAndCopyMessages.CommandID);
    v30 = v18[5];
    sub_1B0E46C28();
    sub_1B0B0D400(v14, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      MEMORY[0x1B2728D70](1);
      goto LABEL_48;
    }

    v83 = v29;
    v84 = v23;
    v85 = *v11;
    v33 = *(v11 + 2);
    v34 = *(v11 + 2);
    MEMORY[0x1B2728D70](3);
    MEMORY[0x1B2728D70](v33 | (v33 << 32));
    v35 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & *(v34 + 64);
    v39 = (v36 + 63) >> 6;
    v86 = v34;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = 0;
    v41 = 0;
    if (v38)
    {
      while (1)
      {
        v42 = v41;
LABEL_29:
        v43 = __clz(__rbit64(v38)) | (v42 << 6);
        v44 = *(*(v86 + 48) + 4 * v43);
        v45 = (*(v86 + 56) + 16 * v43);
        v46 = *v45;
        v47 = v45[1];
        sub_1B03B2000(*v45, v47);
        if (v47 >> 60 == 15)
        {
          break;
        }

        v38 &= v38 - 1;
        v89 = v94;
        v90 = v95;
        v91 = v96;
        v87 = v92;
        v88 = v93;
        sub_1B0E46C88();
        sub_1B0E42F48();
        sub_1B0391D50(v46, v47);
        result = sub_1B0E46CB8();
        v40 ^= result;
        v41 = v42;
        if (!v38)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_26:
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_62;
        }

        if (v42 >= v39)
        {
          break;
        }

        v38 = *(v35 + 8 * v42);
        ++v41;
        if (v38)
        {
          goto LABEL_29;
        }
      }
    }

    MEMORY[0x1B2728D70](v40);

LABEL_46:

    v8 = v78;
    v11 = v77;
    v15 = v76;
    v14 = v75;
LABEL_47:
    v23 = v84;
    v29 = v83;
LABEL_48:
    result = sub_1B0E46CB8();
    v18 = v82;
    v65 = -1 << *(v82 + 32);
    v66 = result & ~v65;
    v67 = v66 >> 6;
    if (((-1 << v66) & ~*(v81 + 8 * (v66 >> 6))) == 0)
    {
      v68 = 0;
      v69 = (63 - v65) >> 6;
      while (++v67 != v69 || (v68 & 1) == 0)
      {
        v70 = v67 == v69;
        if (v67 == v69)
        {
          v67 = 0;
        }

        v68 |= v70;
        v71 = *(v81 + 8 * v67);
        if (v71 != -1)
        {
          v25 = __clz(__rbit64(~v71)) + (v67 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_63;
    }

    v25 = __clz(__rbit64((-1 << v66) & ~*(v81 + 8 * (v66 >> 6)))) | v66 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v81 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_1B0B0D530(v14, v18[6] + v25 * v29);
    ++v18[2];
    v24 = v80;
  }

  v83 = v29;
  v84 = v23;
  if (!EnumCaseMultiPayload)
  {
    v32 = v73;
    sub_1B03C60A4(v11, v73, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_47;
  }

  v72[1] = *v11;
  v48 = *(v11 + 2);
  v49 = *(v11 + 2);
  MEMORY[0x1B2728D70](2);
  MEMORY[0x1B2728D70](v48 | (v48 << 32));
  v50 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & *(v49 + 64);
  v54 = (v51 + 63) >> 6;
  v85 = v49;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = 0;
  for (i = 0; v53; v55 = result ^ v86)
  {
    v86 = v55;
    v57 = i;
LABEL_41:
    v58 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v59 = v58 | (v57 << 6);
    v60 = *(*(v85 + 48) + 4 * v59);
    v61 = (*(v85 + 56) + 24 * v59);
    v62 = *v61;
    v64 = *(v61 + 1);
    v63 = *(v61 + 2);
    sub_1B03B2000(v64, v63);
    v89 = v94;
    v90 = v95;
    v91 = v96;
    v87 = v92;
    v88 = v93;
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v62);
    sub_1B03B2000(v64, v63);
    sub_1B0E42F48();
    sub_1B0391D50(v64, v63);
    sub_1B0391D50(v64, v63);
    result = sub_1B0E46CB8();
  }

  while (1)
  {
    v57 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v57 >= v54)
    {

      MEMORY[0x1B2728D70](v55);

      goto LABEL_46;
    }

    v53 = *(v50 + 8 * v57);
    ++i;
    if (v53)
    {
      v86 = v55;
      i = v57;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1B0B09AE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E0, &qword_1B0EC5148);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      sub_1B03D0A20(*(v3 + 48) + 48 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      sub_1B0E46C28();
      sub_1B0E461D8();
      result = sub_1B0E46CB8();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 48 * v13);
      v15 = v29[0];
      v16 = v29[2];
      v14[1] = v29[1];
      v14[2] = v16;
      *v14 = v15;
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

        v2 = v28;
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

char *sub_1B0B09D24(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09D44(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89354(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09D64(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89368(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09D84(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B8937C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09DA4(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B894C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09DC4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09DE4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8961C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09E04(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B89630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09E24(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B89654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09E44(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8979C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09E64(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B897B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09E84(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B897C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09EA4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B897D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09EC4(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B897EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09EE4(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B89934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B09F04(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B89B6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B09F24(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B89B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09F44(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89BB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09F64(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09F84(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B89CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09FA4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09FC4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89F04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09FE4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A004(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A024(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A044(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B0A064(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B8A054(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B0A084(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B8A078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A0A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A0A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A0C4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A0E4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A2C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B0A104(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B8A2D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A124(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A144(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A30C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A164(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B0A184(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B8A334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A1A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A35C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B0A1C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B8A478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B0A1E4(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B8A4A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A204(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A6AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A224(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A6C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A244(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A6D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A264(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A6E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A284(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A6FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A2A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A81C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A2C4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8A928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A2E4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8AA2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A304(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8AA40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A324(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8AB4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A344(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B8AB68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A364(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B8ACB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A384(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B89340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A3A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8ADFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A3C4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8AE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A3E4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8AF20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A404(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B8AF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A424(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B8AF58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B0A444(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B8B0C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A464(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B0B0A484(size_t a1, int64_t a2, char a3)
{
  result = sub_1B0B8B100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A4A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B304(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A4C4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A4E4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B32C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A504(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A524(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B354(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A544(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A564(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B5AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A584(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A5A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B5D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A5C4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B5F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A5E4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A604(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A624(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8B998(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A644(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8BAB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A664(void *a1, int64_t a2, char a3)
{
  result = sub_1B0B8BBBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A684(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8BCF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A6A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8BE0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A6C4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8BF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A6E4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0B8C024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B0B0A704(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9)) | (v5 << 6);
    v13 = *(*(a2 + 48) + 8 * v12);
    v14 = *(a2 + 56) + 12 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v19 = *(v3 + 32);
    v20 = *(v3 + 48);
    v21 = *(v3 + 64);
    v17 = *v3;
    v18 = *(v3 + 16);
    MEMORY[0x1B2728D70](v13);
    sub_1B0E46C68();
    if ((v16 & 1) == 0)
    {
      sub_1B0E46C88();
      sub_1B0E46C88();
    }

    v9 &= v9 - 1;
    result = sub_1B0E46CB8();
    v4 ^= result;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      return MEMORY[0x1B2728D70](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B0A854(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = 0;
  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v6)) | (v11 << 6);
      v13 = *(*(a2 + 48) + 4 * v12);
      v14 = (*(a2 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      sub_1B03B2000(*v14, v16);
      if (v16 >> 60 == 15)
      {
        break;
      }

      v6 &= v6 - 1;
      v20 = a1[2];
      v21 = a1[3];
      v22 = *(a1 + 8);
      v18 = *a1;
      v19 = a1[1];
      sub_1B0E46C88();
      sub_1B0E42F48();
      sub_1B0391D50(v15, v16);
      result = sub_1B0E46CB8();
      v9 ^= result;
      v10 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1B2728D70](v9);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}