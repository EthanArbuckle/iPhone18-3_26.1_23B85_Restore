char *sub_1CF1F66D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE630, &qword_1CF9FE468);
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

char *sub_1CF1F67E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE628, &qword_1CF9FE460);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1CF1F696C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_1CF1F6AC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1CF1F6BD8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

void *sub_1CF1F6CD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CF1F6E08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6C0, &qword_1CF9FE540);
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

void *sub_1CF1F6F14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE820, &unk_1CF9FE6F0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF250, &unk_1CFA01B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CF1F7094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE808, &qword_1CF9FE6D0);
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

void *sub_1CF1F7198(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7F8, &unk_1CF9FE6C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE800, &qword_1CFA12A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F72E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
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
    type metadata accessor for NSFileProviderItemIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F742C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1CF1F7588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7D0, &qword_1CF9FE6A0);
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

void *sub_1CF1F76A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE860, &qword_1CF9FE750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE868, &qword_1CF9FE758);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F77F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F796C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6A8, &qword_1CF9FE518);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B0, &unk_1CF9FE520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F7AB4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F20, &unk_1CFA18130);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B8, &unk_1CF9FE530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F7C44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE840, &qword_1CF9FE728);
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
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F7D74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1CF1F7EA8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6A0, &qword_1CF9FE4F8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BD0, &unk_1CF9FE500);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F7FEC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE848, &qword_1CF9FE730);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE850, &unk_1CF9FE738);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF1F81D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1CF1F8318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE700, &qword_1CF9FE598);
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

void *sub_1CF1F847C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 120);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[15 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 120 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_1CF1F85E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
  result = _swift_stdlib_malloc_size(v19);
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

void *sub_1CF1F87F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1CF1F8928(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04A0, &unk_1CF9FE5B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE718, &unk_1CFA058A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1CF1F8B24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1CF1F8C34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *sub_1CF1F8CFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_1CF1F8D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1CF1F8E14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1CF1F8EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

size_t sub_1CF1F8F50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1CF1F9064(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *sub_1CF1F9100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 3) + (v9 >> 63));
  return result;
}

void sub_1CF1F9188(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  sub_1CF1BED00(a1, v2[2], a2);
}

uint64_t sub_1CF1F91C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CF1F91F4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CF1F9248()
{
  result = sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF1F9400(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1CF9E7818();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1CF9E79B8();
  *v1 = result;
  return result;
}

int *sub_1CF1F94A0(int *result, int *a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_11:
    v6 = a3;
LABEL_13:
    *result = a4;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4)
    {
      v4 = -a4 & a4;
      v5 = v4 ^ a4;
      *a2 = v4;
      if (a3 != 1)
      {
        v6 = 1;
        while (1)
        {
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (a4 == v4)
          {
            a4 = 0;
            goto LABEL_13;
          }

          v8 = v5;
          v4 = v5 & -v5;
          v5 ^= v4;
          a2[v6++] = v4;
          a4 = v8;
          if (v7 == a3)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_10:
      a4 = v5;
      goto LABEL_11;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1CF1F952C(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_11:
    v6 = a3;
LABEL_13:
    *result = a4;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4)
    {
      v4 = -a4 & a4;
      v5 = v4 ^ a4;
      *a2 = v4;
      if (a3 != 1)
      {
        v6 = 1;
        while (1)
        {
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (a4 == v4)
          {
            a4 = 0;
            goto LABEL_13;
          }

          v8 = v5;
          v4 = v5 & -v5;
          v5 ^= v4;
          a2[v6++] = v4;
          a4 = v8;
          if (v7 == a3)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_10:
      a4 = v5;
      goto LABEL_11;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1CF1F9648(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v7 = a4;
  v16 = a4;
  if (!a2)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_19;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_19:
    *result = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = result;
    a5(0);
    sub_1CF1FD858(a6, a7);
    v12 = 0;
    while (1)
    {
      if (sub_1CF9E7798())
      {
        v7 = v16;
        v8 = v12;
        goto LABEL_18;
      }

      v13 = __clz(__rbit64(v7));
      v14 = v13 >= 0x40 ? 0 : 1 << v13;
      result = sub_1CF9E7798();
      if ((result & 1) == 0)
      {
        v7 &= ~v14;
        v16 = v7;
      }

      *(a2 + 8 * v12) = v14;
      if (v8 - 1 == v12)
      {
        break;
      }

      if (__OFADD__(++v12, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    v7 = v16;
LABEL_18:
    result = v15;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_1CF1F97A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      LOBYTE(v18) = *(v18 + 26);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      *(v11 + 26) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 32;

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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1F9918(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1F9A6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1CF1A91AC(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1CF054EA0(v20, v21);
      sub_1CF054EA0(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1CF1F9BD8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1CF1F9D84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v37 = a4;
  v20 = *(a4 + 64);
  v19 = a4 + 64;
  v18 = v20;
  v21 = -1 << *(v19 - 32);
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v18;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
LABEL_25:
    *a1 = v37;
    a1[1] = v19;
    a1[2] = ~v21;
    a1[3] = v24;
    a1[4] = v23;
    return;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a3;
    v24 = 0;
    v33 = v21;
    v25 = (63 - v21) >> 6;
    v26 = 1;
    while (v23)
    {
LABEL_14:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      a1 = *(v36 + 72);
      sub_1CEFE4F24(*(v37 + 56) + a1 * (v29 | (v24 << 6)), v14, a6);
      sub_1CEFE4BF8(v14, v17, a6);
      sub_1CEFE4BF8(v17, a2, a6);
      if (v26 == v35)
      {
        a1 = v34;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v27 = v24;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v28 >= v25)
      {
        break;
      }

      v23 = *(v19 + 8 * v28);
      ++v27;
      if (v23)
      {
        v24 = v28;
        goto LABEL_14;
      }
    }

    v23 = 0;
    if (v25 <= v24 + 1)
    {
      v31 = v24 + 1;
    }

    else
    {
      v31 = v25;
    }

    v24 = v31 - 1;
    a1 = v34;
LABEL_23:
    v21 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1CF1F9FB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      if (v14 == v10)
      {
        sub_1CF1FB2C0(v19, v20, v21, v22);
        goto LABEL_24;
      }

      v11 += 32;
      sub_1CF1FB2C0(v19, v20, v21, v22);
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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1FA120(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 48) + 48 * (v14 | (v9 << 6));
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      v18 = *(v15 + 16);
      *a2 = *v15;
      *(a2 + 16) = v18;
      *(a2 + 32) = v16;
      *(a2 + 40) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 48;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1CF1FA234(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1FA388(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      *v11 = v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {
        v24 = v19;
        goto LABEL_24;
      }

      v11 += 24;
      v21 = v19;
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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1FA4E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      LOBYTE(v14) = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1CF1FA5F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1CEFF6FC0(*(a4 + 56) + ((v12 << 10) | (16 * v17)), v20);
      sub_1CEFF701C(v20, v21);
      sub_1CEFF701C(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 16;
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
        goto LABEL_26;
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
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1CF1FA760(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_1CF1FD5C8(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_1CF1FD638(v11, v14);
      sub_1CF1FD638(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        goto LABEL_23;
      }

      a2 += v26;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1CF1FA994(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      v9 &= v9 - 1;
      v19 = *(a4 + 56) + 32 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      LOBYTE(v19) = *(v19 + 24);
      *v11 = v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      *(v11 + 32) = v19;
      if (v14 == v10)
      {
        v26 = v18;
        goto LABEL_24;
      }

      v11 += 40;
      v23 = v18;
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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CF1FAB04(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = *(a4 + 48) + 16 * v15;
      v17 = *v16;
      LOBYTE(v16) = *(v16 + 8);
      v18 = *(a4 + 56) + 32 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      *a2 = v17;
      *(a2 + 8) = v16;
      *(a2 + 16) = v19;
      *(a2 + 24) = v20;
      *(a2 + 32) = v21;
      *(a2 + 40) = v18;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 48;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v23 = v9 + 1;
    }

    else
    {
      v23 = (63 - v6) >> 6;
    }

    v9 = v23 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1CF1FAC30(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1CF1FAD8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CF9E7818();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CF9E7818();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CEFCCCEC(&qword_1EC4BE830, &qword_1EC4BE828, &qword_1CF9FE700);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE828, &qword_1CF9FE700);
            v9 = sub_1CF8E36EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1FAF40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CF9E7818();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CF9E7818();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CEFCCCEC(&qword_1EC4BE7C0, &qword_1EC4BE7B8, &qword_1CF9FE680);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7B8, &qword_1CF9FE680);
            v9 = sub_1CF8E36EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1FB0F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CF9E7818();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CF9E7818();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CEFCCCEC(&qword_1EC4BE680, &qword_1EC4BE678, &qword_1CF9FE4D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE678, &qword_1CF9FE4D8);
            v9 = sub_1CF8E36EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CF1FB2C0(id result, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v4 = a2;
        v6 = result;
        a2 = v4;
        result = a3;
      }

      else if (a4 != 2)
      {
        return result;
      }

      v8 = result;
      v7 = a2;
      result = v8;
    }
  }

  else if (a4 - 3 >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1CF1FB354()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000073, 0x80000001CFA2F5D0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA2F650);
  return 0;
}

void sub_1CF1FB410()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA2F6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CF9E7B58();
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF1FB4D4(int a1, uint64_t a2, uint64_t a3)
{
  v152 = a3;
  v133 = a1;
  v155[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  v149 = *(v4 - 8);
  v5 = *(v149 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v134 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v135 = &v127 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v139 = &v127 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v141 = &v127 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v138 = &v127 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v146 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v127 - v18;
  v144 = sub_1CF9E6938();
  v143 = *(v144 - 8);
  v19 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E5A58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v136 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v137 = &v127 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v140 = &v127 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v150 = &v127 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v127 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v127 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v127 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v127 - v41;
  v43 = OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_userURL;
  v153 = v22;
  v44 = *(v22 + 16);
  v44(&v127 - v41, a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_userURL, v21);
  v151 = a2;
  v148 = v43;
  v44(v40, a2 + v43, v21);
  v45 = objc_allocWithZone(type metadata accessor for FPFSSQLBackupEngine());
  v46 = FPFSSQLBackupEngine.init(userURL:outputUserURL:)(v42, v40);
  if (v46)
  {
    v147 = v4;
    v47 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL;
    v48 = v46;
    v44(v37, &v46[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v21);
    v44(v34, &v48[v47], v21);
    v49 = type metadata accessor for SQLBackupManifest();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = sub_1CF1BA200(v34);
    v130 = v37;
    v132 = v52;

    v128 = v48;
    sub_1CF9E5988();
    v54 = v150;
    sub_1CF9E5958();
    v55 = *(v153 + 8);
    v131 = v21;
    v153 += 8;
    v129 = v55;
    v55(v42, v21);
    v56 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v57 = sub_1CF9E5928();
    v154[0] = 0;
    v58 = [v56 removeItemAtURL:v57 error:v154];

    if (v58)
    {
      v59 = v154[0];
    }

    else
    {
      v60 = v154[0];
      v61 = sub_1CF9E57F8();

      swift_willThrow();
    }

    v62 = v151;
    v154[0] = 0;
    v154[1] = 0xE000000000000000;
    v63 = *(v151 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_backupBuild + 8);
    if (v63)
    {
      v64 = *(v151 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_backupBuild);
      v155[0] = 0;
      v155[1] = 0xE000000000000000;
      sub_1CF9E7948();

      strcpy(v155, "backup build: ");
      HIBYTE(v155[1]) = -18;
      MEMORY[0x1D3868CC0](v64, v63);
      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v155[0], v155[1]);
    }

    v65 = *(v62 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreType + 8);
    if (v65)
    {
      v66 = *(v62 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreType);
      v155[0] = 0;
      v155[1] = 0xE000000000000000;
      sub_1CF9E7948();

      strcpy(v155, "restore type: ");
      HIBYTE(v155[1]) = -18;
      MEMORY[0x1D3868CC0](v66, v65);
      MEMORY[0x1D3868CC0](v155[0], v155[1]);
    }

    v127 = v22 + 16;
    v67 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    sub_1CF9E5A18();
    v68 = sub_1CF9E6888();

    v69 = v142;
    sub_1CF9E6918();
    v70 = sub_1CF9E68C8();
    v72 = v71;

    (*(v143 + 8))(v69, v144);
    if (v72 >> 60 == 15)
    {
      v73 = 0;
    }

    else
    {
      v73 = sub_1CF9E5B48();
      sub_1CEFE48D8(v70, v72);
    }

    v74 = v149;
    v75 = [v67 createFileAtPath:v68 contents:v73 attributes:0];

    v76 = v151;
    if ((v75 & 1) == 0)
    {
      v77 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v78 = sub_1CF9E6108();
      v79 = sub_1CF9E72A8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 67109120;
        *(v80 + 4) = MEMORY[0x1D38683F0]();
        _os_log_impl(&dword_1CEFC7000, v78, v79, "Failed to save restore timestamp on disk: %d", v80, 8u);
        MEMORY[0x1D386CDC0](v80, -1, -1);
      }

      (*(v74 + 8))(v145, v147);
    }

    v81 = sub_1CF9E5A18();
    v82 = (v76 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath);
    v83 = *(v76 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_restoreTimestampFilePath + 8);
    *v82 = v81;
    v82[1] = v84;

    v85 = sub_1CF9E5A18();
    v87 = v86;
    v88 = fpfs_current_or_default_log();
    v89 = v146;
    sub_1CF9E6128();

    v90 = sub_1CF9E6108();
    v91 = sub_1CF9E72C8();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v155[0] = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_1CEFD0DF0(v85, v87, v155);
      _os_log_impl(&dword_1CEFC7000, v90, v91, "Populating new columns with base path: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      v94 = v93;
      v54 = v150;
      MEMORY[0x1D386CDC0](v94, -1, -1);
      MEMORY[0x1D386CDC0](v92, -1, -1);
    }

    v146 = *(v74 + 8);
    v95 = (v146)(v89, v147);
    v96 = v132;
    v97 = *(v132 + 3);
    MEMORY[0x1EEE9AC00](v95);
    *(&v127 - 4) = v96;
    *(&v127 - 3) = v85;
    *(&v127 - 2) = v87;
    sub_1CF1E8034(21, sub_1CF1FDAB0, (&v127 - 6));

    v98 = fpfs_current_or_default_log();
    v99 = v138;
    sub_1CF9E6128();
    v100 = sub_1CF9E6108();
    v101 = sub_1CF9E72C8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_1CEFC7000, v100, v101, "Creating indexes", v102, 2u);
      MEMORY[0x1D386CDC0](v102, -1, -1);
    }

    v103 = v147;
    (v146)(v99, v147);
    v104 = v132;
    v105 = *(v132 + 3);
    sub_1CF1E8034(21, sub_1CF1FDA98, v132);
    v106 = v131;
    sub_1CF1EB170(*(v151 + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_fpDatabaseURLs), v104);
    v109 = v108;
    if (v107)
    {
      v110 = v107;
      v111 = sub_1CF9E57E8();
      v112 = v129;
      if (v109)
      {
        v113 = sub_1CF9E6888();
      }

      else
      {
        v113 = 0;
      }

      (*(v152 + 16))(v152, 0, v111, v113);

      v116 = v54;
      v117 = v106;
    }

    else
    {

      v115 = v136;
      sub_1CF9E5958();
      sub_1CF33988C(v115);
      v112 = v129;
      v129(v115, v106);
      sub_1CF1BC728();
      if (v133)
      {
        sub_1CF33BA94();
      }

      v118 = fpfs_current_or_default_log();
      v119 = v134;
      sub_1CF9E6128();
      v120 = sub_1CF9E6108();
      v121 = sub_1CF9E72C8();
      v122 = os_log_type_enabled(v120, v121);
      v123 = v152;
      if (v122)
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_1CEFC7000, v120, v121, "Calling completion handler with success.", v124, 2u);
        v125 = v124;
        v103 = v147;
        MEMORY[0x1D386CDC0](v125, -1, -1);
      }

      (v146)(v119, v103);
      v126 = sub_1CF9E6888();
      (*(v123 + 16))(v123, 1, 0, v126);

      v116 = v54;
      v117 = v106;
    }

    v112(v116, v117);
    v112(v130, v106);
  }

  else
  {
    v53 = sub_1CF9E6888();
    (*(v152 + 16))(v152, 1, 0, v53);
  }

  v114 = *MEMORY[0x1E69E9840];
}

void sub_1CF1FCADC(void *a1, uint64_t a2)
{
  v61 = a2;
  v82[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v64 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v60 - v11;
  v79 = sub_1CF9E6118();
  v80 = *(v79 - 8);
  v13 = *(v80 + 64);
  v14 = MEMORY[0x1EEE9AC00](v79);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v60 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v20);
  memset(&v81, 0, sizeof(v81));
  v23 = a1;
  sub_1CF515DE8(v23, &v81);
  v65 = v22;
  v69 = v19;
  v73 = v16;
  v71 = v12;
  v25 = *&v23[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSQLRestoreEngine_fpDatabaseURLs];
  v26 = *(v25 + 16);
  if (v26)
  {
    v72 = 0;
    st_dev = v81.st_dev;
    v28 = *(v4 + 16);
    v27 = v4 + 16;
    v74 = v28;
    v29 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v66 = *(v27 + 56);
    v78 = (v27 - 8);
    v77 = (v80 + 8);
    *&v24 = 136315138;
    v63 = v24;
    *&v24 = 134218240;
    v60 = v24;
    *&v24 = 136446466;
    v62 = v24;
    v70 = v27;
    v67 = v10;
    v30 = v71;
    v31 = v65;
    do
    {
      v75 = v26;
      v32 = v74;
      v74(v30, v29, v3);
      v33 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v32(v10, v30, v3);
      v34 = sub_1CF9E6108();
      v35 = sub_1CF9E72C8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = v3;
        v38 = swift_slowAlloc();
        v82[0] = v38;
        *v36 = v63;
        sub_1CF1FD858(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
        v39 = sub_1CF9E7F98();
        v40 = v10;
        v42 = v41;
        v80 = *v78;
        (v80)(v40, v37);
        v43 = sub_1CEFD0DF0(v39, v42, v82);

        *(v36 + 4) = v43;
        _os_log_impl(&dword_1CEFC7000, v34, v35, "Restoring purgencies and residency reasons on disk for db at %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        v44 = v38;
        v3 = v37;
        MEMORY[0x1D386CDC0](v44, -1, -1);
        v45 = v36;
        v30 = v71;
        MEMORY[0x1D386CDC0](v45, -1, -1);
      }

      else
      {

        v80 = *v78;
        (v80)(v10, v3);
      }

      v76 = *v77;
      v76(v31, v79);
      v46 = v69;
      v47 = sub_1CF1ED230(v30, st_dev);
      v49 = v48;
      v50 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v51 = sub_1CF9E6108();
      v52 = sub_1CF9E7288();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = v60;
        if (__OFSUB__(v49, v47))
        {
          __break(1u);
        }

        *(v53 + 4) = v49 - v47;
        *(v53 + 12) = 2048;
        *(v53 + 14) = v49;
        v54 = v52;
        v55 = v53;
        _os_log_impl(&dword_1CEFC7000, v51, v54, "Restored purgency on %ld/%ld items", v53, 0x16u);
        MEMORY[0x1D386CDC0](v55, -1, -1);
      }

      v76(v46, v79);
      v30 = v71;
      (v80)(v71, v3);
      v31 = v65;
      v29 += v66;
      v26 = v75 - 1;
      v10 = v67;
    }

    while (v75 != 1);
    v56 = v61;
    v57 = v72;
    if (v72)
    {
      v58 = sub_1CF9E57E8();
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
    v57 = 0;
    v56 = v61;
  }

  (*(v56 + 16))(v56, v58);

  v59 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF1FD5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF1FD638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF1FD6A8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  return sub_1CF3ED4C8(a1, *(v1 + 16), *(v1 + 24));
}

id sub_1CF1FD6B8(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_1CF1FD6F8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_1CF1FD788()
{
  result = qword_1EC4BE870;
  if (!qword_1EC4BE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE870);
  }

  return result;
}

uint64_t sub_1CF1FD858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF1FD954(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  return sub_1CF3ED43C(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1CF1FD9F4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  return sub_1CF3ED3BC(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1CF1FDA04(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  return sub_1CF3ED334(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1CF1FDB5C()
{
  v1 = *v0;
  v2 = 0x656C646E6168;
  v3 = 0x664F746E65747865;
  v4 = 0x654C746E65747865;
  if (v1 != 3)
  {
    v4 = 0x7367616C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7269447369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF1FDBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF1FE794(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1CF1FDC24@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF08BAD4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CF1FDC4C(uint64_t a1)
{
  v2 = sub_1CF1FE580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1FDC88(uint64_t a1)
{
  v2 = sub_1CF1FE580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF1FDCC4(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1CF1FDD14(a1);
  return v2;
}

uint64_t sub_1CF1FDD14(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE888, &qword_1CF9FE8E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1FE580();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for VFSStagedContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = 0;
    sub_1CF1FE628();
    sub_1CF9E7D88();
    *(v1 + 16) = v22;
    *(v1 + 32) = v23;
    *(v1 + 40) = v24;
    LOBYTE(v22) = 1;
    *(v1 + 56) = sub_1CF9E7D58() & 1;
    LOBYTE(v22) = 2;
    v11 = sub_1CF9E7CD8();
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v16 = v11;
      LOBYTE(v22) = 3;
      v17 = sub_1CF9E7CD8();
      if (v18)
      {
        v13 = 0;
      }

      else
      {
        v13 = v16;
      }

      if (v18)
      {
        v14 = 0;
      }

      else
      {
        v14 = v17;
      }

      v15 = (v18 & 1) != 0;
    }

    *(v1 + 64) = v13;
    *(v1 + 72) = v14;
    *(v1 + 80) = v15;
    LOBYTE(v22) = 4;
    v19 = sub_1CF9E7CE8();
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    *(v1 + 88) = v21;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(&v22);
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1CF1FE030(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE880, &qword_1CF9FE8D8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1FE580();
  sub_1CF9E82A8();
  v15 = *(v3 + 40);
  v16 = *(v3 + 48);
  v31 = *(v3 + 16);
  v32 = *(v3 + 32);
  v33 = v15;
  v34 = v16;
  v35 = 0;
  sub_1CF1FE5D4();

  sub_1CF9E7F08();

  if (v2)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v28 = v8;
  v18 = v29;
  v17 = v30;
  v19 = *(v3 + 56);
  LOBYTE(v31) = 1;
  sub_1CF9E7EC8();
  v21 = v9;
  v22 = v10;
  if ((*(v3 + 80) & 1) == 0)
  {
    v26 = *(v3 + 64);
    v27 = *(v3 + 72);
    LOBYTE(v31) = 2;
    sub_1CF9E7EE8();
    LOBYTE(v31) = 3;
    sub_1CF9E7EE8();
  }

  v23 = *(v3 + 88);
  LOBYTE(v31) = 4;
  v24 = v21;
  sub_1CF9E7EF8();
  sub_1CF9E7E28();
  v30 = v34;
  __swift_project_boxed_opaque_existential_1(&v31, v33);
  sub_1CF1D6D18();
  v25 = v28;
  sub_1CF9E82A8();
  (*(v18 + 8))(v25, v17);
  (*(v22 + 8))(v13, v24);
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_1CF1FE39C()
{
  v1 = 1701603686;
  if (*(v0 + 56))
  {
    v1 = 7498084;
  }

  *(v0 + 56);
  v6 = v1;
  MEMORY[0x1D3868CC0](0x286F6E692DLL, 0xE500000000000000);
  v5 = *(v0 + 16);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  if ((*(v0 + 80) & 1) == 0 && (*(v0 + 64) & 0x8000000000000000) == 0)
  {
    v3 = *(v0 + 72);
    MEMORY[0x1D3868CC0](91, 0xE100000000000000);
    type metadata accessor for CFRange(0);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0, 0xE000000000000000);
  }

  if (*(v0 + 88))
  {
    MEMORY[0x1D3868CC0](36, 0xE100000000000000);
  }

  return v6;
}

uint64_t sub_1CF1FE500()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_1CF1FE580()
{
  result = qword_1EDEA7108;
  if (!qword_1EDEA7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7108);
  }

  return result;
}

unint64_t sub_1CF1FE5D4()
{
  result = qword_1EDEA7D48;
  if (!qword_1EDEA7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7D48);
  }

  return result;
}

unint64_t sub_1CF1FE628()
{
  result = qword_1EDEA7D40;
  if (!qword_1EDEA7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7D40);
  }

  return result;
}

unint64_t sub_1CF1FE690()
{
  result = qword_1EC4BE890[0];
  if (!qword_1EC4BE890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4BE890);
  }

  return result;
}

unint64_t sub_1CF1FE6E8()
{
  result = qword_1EDEA70F8;
  if (!qword_1EDEA70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA70F8);
  }

  return result;
}

unint64_t sub_1CF1FE740()
{
  result = qword_1EDEA7100;
  if (!qword_1EDEA7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7100);
  }

  return result;
}

uint64_t sub_1CF1FE794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7269447369 && a2 == 0xE500000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x664F746E65747865 && a2 == 0xEC00000074657366 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C746E65747865 && a2 == 0xEC0000006874676ELL || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

void sub_1CF1FE944(unsigned __int8 a1, id a2)
{
  v3 = *v2;
  v4 = a1 >> 5;
  if (v4 == 4)
  {
    if (a1 == 129)
    {
      v10 = *(v2 + v3[76]);
      if (v10)
      {
        v11 = a2;
        v12 = [v10 version];
        a2 = v11;
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v5 = [a2 bindLongParameter_];
      goto LABEL_19;
    }

LABEL_13:
    sub_1CF1D8E0C(a1, a2);
    return;
  }

  if (v4 != 3)
  {
    if (v4 == 2)
    {
      if (a1 == 66)
      {
        v19 = v3[72];
        v20 = v3[70];
        v21 = v3[68];
        v22 = a2;
        swift_getAssociatedTypeWitness();
        v23 = *(swift_getAssociatedConformanceWitness() + 8);
        v24 = *(v23 + 32);
        v25 = swift_checkMetadataState();
        v24(v22, v25, v23);
        return;
      }

      if (a1 == 67)
      {
        v5 = [a2 bindUnsignedLongParameter_];
LABEL_19:
        v26 = v5;
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return;
      }
    }

    goto LABEL_13;
  }

  if (a1 != 97)
  {
    if (a1 == 98)
    {
      v6 = v3[75];
      v7 = *(v3 + 35);
      v29 = *(v3 + 34);
      v30 = v7;
      v8 = type metadata accessor for Bouncing.BouncingContext();
      WitnessTable = swift_getWitnessTable();
      sub_1CF4C0DE0(v2 + v6, v8, WitnessTable);
      return;
    }

    goto LABEL_13;
  }

  v14 = (v2 + v3[74]);
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
    v17 = v14[1];

    v18 = MEMORY[0x1E69E6158];
  }

  else
  {

    v16 = 0;
    v18 = 0;
    *&v30 = 0;
  }

  *&v29 = v16;
  *(&v29 + 1) = v15;
  *(&v30 + 1) = v18;
  sub_1CEFF8EA0(&v29);
  v28 = v27;
  sub_1CEFCCC44(&v29, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v28)
  {
    sub_1CF9E7B68();
    __break(1u);
  }
}

void sub_1CF1FEC64(unsigned __int8 a1, void *a2)
{
  if (a1 == 99)
  {
    v3 = *(v2 + 144);
    v5 = sub_1CF9E8268();
    v6 = [a2 bindObjectParameter_];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  }

  else
  {
    sub_1CF1D8E0C(a1, a2);
  }
}

void sub_1CF1FECF4(unsigned __int8 a1, void *a2)
{
  v3 = *v2;
  v4 = a1 >> 5;
  if (v4 == 3)
  {
    if (a1 == 96)
    {
      v6 = v3[73];
      goto LABEL_7;
    }
  }

  else if (v4 == 2 && a1 == 66)
  {
    v5 = v3[72];
LABEL_7:
    v7 = v3[70];
    v8 = v3[68];
    swift_getAssociatedTypeWitness();
    v10 = *(swift_getAssociatedConformanceWitness() + 8);
    v11 = *(v10 + 32);
    v12 = swift_checkMetadataState();
    v11(a2, v12, v10);
    return;
  }

  sub_1CF1D8E0C(a1, a2);
}

void sub_1CF1FEE18(unsigned __int8 a1, void *a2)
{
  if (a1 == 99)
  {
    v3 = v2[10];
    v6[0] = v2[9];
    v6[1] = v3;
    v4 = v2[12];
    v6[2] = v2[11];
    v6[3] = v4;
    v5 = sub_1CF1CB300();
    sub_1CF201180(v5, v6);
  }

  else
  {
    sub_1CF1D8E0C(a1, a2);
  }
}

uint64_t sub_1CF1FEEA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF1FEF68(char a1)
{
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](a1 & 1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1FEFB0(char a1)
{
  if (a1)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 1852399981;
  }
}

uint64_t sub_1CF1FEFF8()
{
  sub_1CF9E81D8();
  sub_1CF0BA674(v2, *v0);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1FF040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF1FEEA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF1FF068@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1CF1B93DC();
  *a2 = result;
  return result;
}

uint64_t sub_1CF1FF09C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF1FF0F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF1FF144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v57 = a6;
  v54 = sub_1CF9E75D8();
  v61 = *(v54 - 8);
  v11 = *(v61 + 64);
  v12 = MEMORY[0x1EEE9AC00](v54);
  v65 = &v49 - v13;
  v59 = *(a2 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v58 = sub_1CF9E7E08();
  v64 = *(v58 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v18 = &v49 - v17;
  v60 = a2;
  v66 = a2;
  v67 = a3;
  v55 = a3;
  v62 = a5;
  v63 = a4;
  v68 = a4;
  v69 = a5;
  v19 = type metadata accessor for ReconciliationID();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v49 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v70;
  sub_1CF9E8298();
  if (v27)
  {
    v35 = a1;
  }

  else
  {
    v50 = v23;
    v51 = v25;
    v29 = v59;
    v28 = v60;
    v52 = v19;
    v70 = a1;
    v31 = v61;
    v30 = v62;
    LOBYTE(v66) = 0;
    v32 = *(v63 + 24);
    v33 = v58;
    sub_1CF9E7CF8();
    v34 = v18;
    v37 = v33;
    v38 = (*(v29 + 48))(v65, 1, v28);
    if (v38 == 1)
    {
      (*(v31 + 8))(v65, v54);
      LOBYTE(v66) = 1;
      v39 = *(v30 + 24);
      v40 = v50;
      sub_1CF9E7D88();
      v45 = v57;
      (*(v64 + 8))(v34, v37);
      v46 = v52;
      swift_storeEnumTagMultiPayload();
      v47 = *(v56 + 32);
      v48 = v51;
      v47(v51, v40, v46);
      v47(v45, v48, v46);
    }

    else
    {
      (*(v64 + 8))(v34, v33);
      v41 = *(v29 + 32);
      v42 = v53;
      v41(v53, v65, v28);
      v43 = v51;
      v41(v51, v42, v28);
      v44 = v52;
      swift_storeEnumTagMultiPayload();
      (*(v56 + 32))(v57, v43, v44);
    }

    v35 = v70;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1CF1FF638(void *a1, uint64_t a2)
{
  v41 = *(*(a2 + 24) - 8);
  v4 = *(v41 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(*(v7 + 16) - 8);
  v8 = *(v38 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 32);
  v39 = v18;
  *&v19 = v18;
  v42 = v20;
  *(&v19 + 1) = v20;
  v43 = v17;
  v47 = v19;
  v48 = v17;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v21 = sub_1CF9E7F78();
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  (*(v12 + 16))(v15, v44, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v40;
    v26 = v41;
    v28 = v42;
    (*(v41 + 32))(v40, v15, v42);
    LOBYTE(v47) = 1;
    v29 = *(*(&v43 + 1) + 32);
    v30 = v46;
    sub_1CF9E7F08();
    (*(v26 + 8))(v27, v28);
    return (*(v45 + 8))(v24, v30);
  }

  else
  {
    v33 = v37;
    v32 = v38;
    v34 = v39;
    (*(v38 + 32))(v37, v15, v39);
    LOBYTE(v47) = 0;
    v35 = *(v43 + 32);
    v36 = v46;
    sub_1CF9E7F08();
    (*(v32 + 8))(v33, v34);
    return (*(v45 + 8))(v24, v36);
  }
}

void sub_1CF1FFA60(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4[68];
  v9 = v4[69];
  v10 = v4[70];
  v11 = v4[71];
  v46 = a4;
  v47 = v8;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v12 = type metadata accessor for Bouncing.BouncingContext();
  v13 = sub_1CF9E75D8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v45 - v17;
  v19 = a1 >> 5;
  if (v19 == 4)
  {
    if (a1 == 129)
    {
      if (([a2 isNullAtIndex_] & 1) != 0 || (v27 = objc_msgSend(a2, sel_integerAtIndex_, a3)) == 0)
      {
        v31 = v46;
        *v46 = 0u;
        *(v31 + 16) = 0u;
      }

      else
      {
        v28 = [objc_opt_self() domainVersionWithVersion_];
        v29 = sub_1CF1E7FC0();
        v30 = v46;
        v46[3] = v29;
        *v30 = v28;
      }

      return;
    }

LABEL_16:
    v47 = v8;
    v48 = v9;
    v49 = v10;
    v50 = v11;
    type metadata accessor for Job();
    sub_1CF1D90A0(a2, a1, a3, v46);
    return;
  }

  if (v19 == 3)
  {
    if (a1 == 97)
    {
      v32 = v46;
      v46[3] = &type metadata for Filename;
      v33 = [a2 stringAtIndex_];
      v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v35;

      *v32 = v34;
      v32[1] = v36;
      return;
    }

    if (a1 == 98)
    {
      v22 = v16;
      v23 = v15;
      swift_getWitnessTable();
      v24 = v51;
      sub_1CF4C1F24(a3, v12, v18);
      if (!v24)
      {
        Description = v12[-1].Description;
        if ((Description[6])(v18, 1, v12) == 1)
        {
          (*(v22 + 8))(v18, v23);
          v26 = v46;
          *v46 = 0u;
          *(v26 + 16) = 0u;
        }

        else
        {
          v43 = v46;
          v46[3] = v12;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
          Description[4](boxed_opaque_existential_0, v18, v12);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  if (v19 != 2)
  {
    goto LABEL_16;
  }

  if (a1 != 66)
  {
    if (a1 == 67)
    {
      v20 = [a2 unsignedLongAtIndex_];
      v21 = v46;
      v46[3] = MEMORY[0x1E69E6810];
      *v21 = v20;
      return;
    }

    goto LABEL_16;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(swift_getAssociatedConformanceWitness() + 8);
  v39 = *(v38 + 16);
  v40 = v46;
  v46[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(v40);
  v41 = a2;
  v42 = v51;
  v39(v41, a3, AssociatedTypeWitness, v38);
  if (v42)
  {
    __swift_deallocate_boxed_opaque_existential_0(v40);
  }
}

uint64_t sub_1CF1FFE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  *&v60 = &_s9SQLFieldsON_1;
  *(&v60 + 1) = a2;
  v47 = sub_1CF020F5C();
  *&v61 = v47;
  *(&v61 + 1) = a3;
  v6 = type metadata accessor for SQLCodableAccessorWrapper();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v40 - v8;
  v9 = *(v3 + 560);
  v53 = *(v3 + 544);
  v46 = v3;
  v52 = v9;
  v60 = v53;
  v61 = v9;
  type metadata accessor for Bouncing.BouncingContext();
  v10 = sub_1CF9E75D8();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v40 - v17;
  LOBYTE(v60) = 66;
  v19 = sub_1CF0230AC(a2, AssociatedTypeWitness);
  v20 = a2;
  v21 = a2;
  v22 = a3;
  v23 = v54;
  sub_1CF0230B4(&v60, v19, v21, AssociatedTypeWitness, a3);
  if (!v23)
  {
    *&v52 = AssociatedTypeWitness;
    *&v53 = v18;
    v44 = v13;
    v45 = v10;
    v54 = v15;
    LOBYTE(v60) = 67;
    v24 = MEMORY[0x1E69E6810];
    v25 = v20;
    AssociatedTypeWitness = v22;
    sub_1CF0230AC(v20, MEMORY[0x1E69E6810]);
    sub_1CF0230B4(&v60, v24, v20, v24, v22);
    v27 = v62;
    LOBYTE(v59) = 97;
    sub_1CF0230AC(v25, &type metadata for Filename);
    sub_1CF0230B4(&v59, &type metadata for Filename, v25, &type metadata for Filename, v22);
    v28 = v53;
    v29 = v52;
    v59 = v60;
    LOBYTE(v58) = 98;
    sub_1CF0230B4(&v58, v45, v25, v45, v22);
    LOBYTE(v57) = -127;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
    sub_1CF0230AC(v25, v30);
    sub_1CF0230B4(&v57, v30, v25, v30, v22);
    v42 = v27;
    v43 = v58;
    v31 = v48;
    sub_1CF021034(sub_1CF1E800C, 0, v25, &_s9SQLFieldsON_1, 0, v47, v48);
    v32 = v50;
    WitnessTable = swift_getWitnessTable();
    v34 = sub_1CF023F08(v31, v32, WitnessTable);
    v47 = 0;
    v36 = v51;
    v41 = v35;
    v40 = v34;
    (*(v49 + 8))(v31, v32);
    v56 = 65;
    sub_1CF0230AC(v25, &type metadata for JobReason);
    v37 = v47;
    sub_1CF0230B4(&v56, &type metadata for JobReason, v25, &type metadata for JobReason, v22);
    v38 = (v36 + 8);
    if (v37)
    {

      (*v38)(v44, v45);

      (*(v54 + 8))(v28, v29);
    }

    else
    {
      v39 = v44;
      sub_1CF9B55F8(v28, v42, &v59, v44, v43, v40, v41, v57);
      (*v38)(v39, v45);
      (*(v54 + 8))(v28, v29);
      AssociatedTypeWitness = sub_1CF1DA980(v55, v25, AssociatedTypeWitness);
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1CF2005A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF1FFE7C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF20063C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF2007DC(a1, a2, a3, sub_1CF1E800C, sub_1CF65A0B4);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF2006A8@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 == 99)
  {
    v6 = [a1 unsignedLongLongAtIndex_];
    a4[3] = &type metadata for CapturedContent;
    result = swift_allocObject();
    *a4 = result;
    *(result + 16) = v6;
    *(result + 24) = 0;
    *(result + 28) = 1;
    *(result + 32) = xmmword_1CF9F4E20;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 1;
    *(result + 72) = 0;
  }

  else
  {
    v11 = *(v4 + 544);
    v12 = *(v4 + 560);
    type metadata accessor for Job();
    return sub_1CF1D90A0(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1CF2007DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t, uint64_t, uint64_t))
{
  v20 = a5;
  v22 = a4;
  v9 = sub_1CF020F5C();
  *&v27 = &_s9SQLFieldsON_1;
  *(&v27 + 1) = a2;
  *&v28 = v9;
  *(&v28 + 1) = a3;
  v10 = type metadata accessor for SQLCodableAccessorWrapper();
  v21 = *(v10 - 8);
  v11 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v26 = 99;
  sub_1CF0230AC(a2, &type metadata for CapturedContent);
  v31 = a1;
  sub_1CF0230B4(&v26, &type metadata for CapturedContent, a2, &type metadata for CapturedContent, a3);
  if (!v5)
  {
    v14 = v21;
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    sub_1CF021034(v22, 0, a2, &_s9SQLFieldsON_1, a3, v9, v13);
    WitnessTable = swift_getWitnessTable();
    v16 = sub_1CF023F08(v13, v10, WitnessTable);
    v22 = v17;
    v18 = v16;
    (*(v14 + 8))(v13, v10);
    v23 = 65;
    sub_1CF0230AC(a2, &type metadata for JobReason);
    sub_1CF0230B4(&v23, &type metadata for JobReason, a2, &type metadata for JobReason, a3);
    v20(v25, v18, v22, v24);
    a3 = sub_1CF1DA980(v31, a2, a3);
  }

  return a3;
}

uint64_t sub_1CF200B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF2007DC(a1, a2, a3, sub_1CF1E800C, sub_1CF611894);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t *sub_1CF200B68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = a1 >> 5;
  if (v10 != 3)
  {
    if (v10 == 2 && a1 == 66)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = *(v4 + 544);
    v18 = *(v4 + 560);
    type metadata accessor for Job();
    return sub_1CF1D90A0(a2, a1, a3, a4);
  }

  if (a1 != 96)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = *(v4 + 560);
  v12 = *(v4 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 16);
  a4[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(a4);
  result = v15(a2, a3, AssociatedTypeWitness, v14);
  if (v5)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a4);
  }

  return result;
}

char *sub_1CF200CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49[0] = &_s9SQLFieldsON_1;
  v49[1] = a2;
  v44 = sub_1CF020F5C();
  v49[2] = v44;
  v49[3] = a3;
  v8 = type metadata accessor for SQLCodableAccessorWrapper();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = *(v4 + 560);
  v14 = *(v4 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v16 = *(v45 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  LOBYTE(v49[0]) = 66;
  v22 = sub_1CF0230AC(a2, AssociatedTypeWitness);
  v46 = a2;
  v47 = a3;
  v23 = v48;
  sub_1CF0230B4(v49, v22, a2, AssociatedTypeWitness, a3);
  if (!v23)
  {
    v24 = v44;
    v41 = v21;
    v48 = v4;
    LOBYTE(v49[0]) = 96;
    sub_1CF0230B4(v49, v22, v46, AssociatedTypeWitness, v47);
    v40 = v19;
    sub_1CF021034(sub_1CF1E800C, 0, v46, &_s9SQLFieldsON_1, v47, v24, v12);
    v25 = v42;
    v26 = v12;
    WitnessTable = swift_getWitnessTable();
    v28 = sub_1CF023F08(v12, v25, WitnessTable);
    v30 = v40;
    v44 = v31;
    v32 = v25;
    v33 = v28;
    (*(v43 + 8))(v26, v32);
    v50 = 65;
    v34 = v46;
    v35 = v47;
    sub_1CF0230AC(v46, &type metadata for JobReason);
    sub_1CF0230B4(&v50, &type metadata for JobReason, v34, &type metadata for JobReason, v35);
    v36 = v41;
    sub_1CF656E74(v41, v30, v33, v44, v49[0]);
    v37 = v36;
    v38 = *(v45 + 8);
    v38(v30, AssociatedTypeWitness);
    v38(v37, AssociatedTypeWitness);
    v19 = sub_1CF1DA980(a1, v46, v47);
  }

  return v19;
}

char *sub_1CF201154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = sub_1CF200CC4(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF201180(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v38 = *(a2 + 13);
  v39 = *(a2 + 15);
  v6 = *(a2 + 24);
  v23 = *(a2 + 16);
  v25 = *(a2 + 40);
  v26 = *(a2 + 32);
  v24 = *(a2 + 48);
  v37[0] = *(a2 + 49);
  *(v37 + 3) = *(a2 + 52);
  if (*(a1 + 16))
  {
    v8 = (a1 + 32);
    v9 = *(a2 + 56);
    if (v24)
    {
      v10 = -1;
    }

    else
    {
      v10 = v25;
    }

    v11 = v26;
    if (v24)
    {
      v11 = -1;
    }

    v20 = v11;
    v21 = v10;
    v12 = *(a1 + 16);
    v22 = v4;
    do
    {
      if (*(a2 + 24) >> 60 == 11)
      {
      }

      else
      {
        v13 = *v8;
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v28 = v3;
            LODWORD(v29) = v4;
            BYTE4(v29) = v5;
            *(&v29 + 5) = v38;
            HIBYTE(v29) = v39;
            v30 = v23;
            v31 = v6;
            v32 = v26;
            v33 = v25;
            v34 = v24;
            *v35 = v37[0];
            *&v35[3] = *(v37 + 3);
            v36 = v9;
            sub_1CF1AE1DC(&v28, v27);
            v15 = [v2 bindLongParameter_];
          }

          else
          {
            v28 = v3;
            LODWORD(v29) = v4;
            BYTE4(v29) = v5;
            *(&v29 + 5) = v38;
            HIBYTE(v29) = v39;
            v30 = v23;
            v31 = v6;
            v32 = v26;
            v33 = v25;
            v34 = v24;
            *v35 = v37[0];
            *&v35[3] = *(v37 + 3);
            v36 = v9;
            if (v13 == 4)
            {
              sub_1CF1AE1DC(&v28, v27);
              v15 = [v2 bindLongParameter_];
            }

            else
            {
              sub_1CF1AE1DC(&v28, v27);
              v15 = [v2 bindUnsignedLongParameter_];
            }
          }
        }

        else
        {
          if (*v8)
          {
            if (v13 == 1)
            {
              v28 = v3;
              LODWORD(v29) = v4;
              BYTE4(v29) = v5;
              *(&v29 + 5) = v38;
              HIBYTE(v29) = v39;
              v30 = v23;
              v31 = v6;
              v32 = v26;
              v33 = v25;
              v34 = v24;
              *v35 = v37[0];
              *&v35[3] = *(v37 + 3);
              v36 = v9;
              sub_1CF1AE1DC(&v28, v27);
              if (v5)
              {
                v14 = 0;
              }

              else
              {
                v14 = sub_1CF9E8258();
              }
            }

            else
            {
              v28 = v3;
              LODWORD(v29) = v4;
              BYTE4(v29) = v5;
              *(&v29 + 5) = v38;
              HIBYTE(v29) = v39;
              v30 = v23;
              v31 = v6;
              v32 = v26;
              v33 = v25;
              v34 = v24;
              *v35 = v37[0];
              *&v35[3] = *(v37 + 3);
              v36 = v9;
              sub_1CF1AE1DC(&v28, v27);
              if (v6 >> 60 == 15)
              {
                v14 = 0;
              }

              else
              {
                v14 = sub_1CF9E5B48();
              }
            }

            swift_unknownObjectRelease();
            sub_1CEFCCC44(a2, &unk_1EC4BF260, &unk_1CFA01B60);
            v4 = v22;
            goto LABEL_9;
          }

          v28 = v3;
          LODWORD(v29) = v4;
          BYTE4(v29) = v5;
          *(&v29 + 5) = v38;
          HIBYTE(v29) = v39;
          v30 = v23;
          v31 = v6;
          v32 = v26;
          v33 = v25;
          v34 = v24;
          *v35 = v37[0];
          *&v35[3] = *(v37 + 3);
          v36 = v9;
          sub_1CF1AE1DC(&v28, v27);
          v16 = sub_1CF9E8268();

          v4 = v22;
        }

        sub_1CEFCCC44(a2, &unk_1EC4BF260, &unk_1CFA01B60);
      }

LABEL_9:
      ++v8;
      --v12;
    }

    while (v12);
  }

  result = sub_1CF9E6B18();
  v28 = result;
  v29 = v18;
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    sub_1CF03DE28(2);
    return v28;
  }

  return result;
}

unint64_t sub_1CF201714()
{
  result = qword_1EDEA6220[0];
  if (!qword_1EDEA6220[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BFF40, &unk_1CF9FE780);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA6220);
  }

  return result;
}

void sub_1CF201778(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1CF03D7A8(a1, a2, a3);
  }
}

uint64_t sub_1CF201810(uint64_t a1)
{
  v3 = *(a1 + 144);
  v5 = *(a1 + 160);
  result = type metadata accessor for ItemReconciliation();
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1CF2018B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ItemMetadata();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  sub_1CF2023E0(a1, sub_1CEFED338, &v54 - v10);
  if (!v2)
  {
    v13 = sub_1CF23D13C(31, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
    v14 = sub_1CEFED4EC(32, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
    v15 = v14;
    sub_1CEFF4408(v11, v8);
    v16 = *v8;
    if (v16 == 1)
    {
      v17 = 0;
      v15 = 0;
    }

    else if (v16 != 2 && v8[v5[20]] == 0)
    {
      if ((v8[v5[28]] & 1) == 0)
      {
        LODWORD(v85) = 0;
        v17 = *&v8[v5[26]];
        goto LABEL_14;
      }

      v17 = 0;
    }

    else
    {
      v17 = 0;
      v15 = 0;
    }

    LODWORD(v85) = 1;
LABEL_14:
    sub_1CEFD5218(v8, type metadata accessor for ItemMetadata);
    sub_1CF23EF20(29, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, &v61);
    sub_1CEFEDAC0(30, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, v77);
    v19 = *(&v77[0] + 1);
    v59 = v61;
    v60 = *&v77[0];
    v20 = BYTE8(v61);
    sub_1CF23EF20(28, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, &v83);
    v58 = v19;
    v57 = v20;
    sub_1CF23EF20(29, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, &v81);
    v80 = v85;
    v21 = v58;

    sub_1CEFEDAC0(30, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, v79);
    v85 = 0;

    v22 = v79[0];
    v56 = v79[1];
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFE4874(v11, a2 + *(v55 + 48));
    sub_1CEFE528C(&v61);
    v23 = v84;
    v24 = v81;
    v25 = v82;
    v26 = v80;
    *a2 = v83;
    *(a2 + 8) = v23;
    *(a2 + 16) = v24;
    *(a2 + 24) = v25;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
    *(a2 + 48) = v17;
    *(a2 + 56) = v26;
    v27 = v59;
    *(a2 + 64) = 0;
    *(a2 + 72) = v27;
    *(a2 + 80) = v57;
    *(a2 + 88) = v60;
    *(a2 + 96) = v21;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    v28 = v55;
    v29 = a2 + *(v55 + 52);
    v30 = v74;
    *(v29 + 192) = v73;
    *(v29 + 208) = v30;
    *(v29 + 224) = v75;
    *(v29 + 240) = v76;
    v31 = v70;
    *(v29 + 128) = v69;
    *(v29 + 144) = v31;
    v32 = v72;
    *(v29 + 160) = v71;
    *(v29 + 176) = v32;
    v33 = v66;
    *(v29 + 64) = v65;
    *(v29 + 80) = v33;
    v34 = v68;
    *(v29 + 96) = v67;
    *(v29 + 112) = v34;
    v35 = v62;
    *v29 = v61;
    *(v29 + 16) = v35;
    v36 = v64;
    *(v29 + 32) = v63;
    *(v29 + 48) = v36;
    v37 = a2 + v28[14];
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 1;
    v38 = a2 + v28[15];
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    v39 = v56;
    *(a2 + 128) = v22;
    *(a2 + 136) = v39;
    v40 = *(v29 + 208);
    v77[12] = *(v29 + 192);
    v77[13] = v40;
    v77[14] = *(v29 + 224);
    v78 = *(v29 + 240);
    v41 = *(v29 + 144);
    v77[8] = *(v29 + 128);
    v77[9] = v41;
    v42 = *(v29 + 176);
    v77[10] = *(v29 + 160);
    v77[11] = v42;
    v43 = *(v29 + 80);
    v77[4] = *(v29 + 64);
    v77[5] = v43;
    v44 = *(v29 + 112);
    v77[6] = *(v29 + 96);
    v77[7] = v44;
    v45 = *(v29 + 16);
    v77[0] = *v29;
    v77[1] = v45;
    v46 = *(v29 + 48);
    v77[2] = *(v29 + 32);
    v77[3] = v46;
    sub_1CEFCCC44(v77, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v47 = v74;
    *(v29 + 192) = v73;
    *(v29 + 208) = v47;
    *(v29 + 224) = v75;
    *(v29 + 240) = v76;
    v48 = v70;
    *(v29 + 128) = v69;
    *(v29 + 144) = v48;
    v49 = v72;
    *(v29 + 160) = v71;
    *(v29 + 176) = v49;
    v50 = v66;
    *(v29 + 64) = v65;
    *(v29 + 80) = v50;
    v51 = v68;
    *(v29 + 96) = v67;
    *(v29 + 112) = v51;
    v52 = v62;
    *v29 = v61;
    *(v29 + 16) = v52;
    v53 = v64;
    *(v29 + 32) = v63;
    *(v29 + 48) = v53;
    *(a2 + v28[16]) = 0;
    result = 0.0;
    *(a2 + v28[17]) = xmmword_1CF9FEC20;
  }

  return result;
}

uint64_t sub_1CF201F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ItemMetadata();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CF2023E0(a1, sub_1CEFED338, v8);
  if (!v2)
  {
    sub_1CF23D9AC(0x21u, a1, &v63);
    v10 = v63;
    sub_1CF23D9AC(0x22u, a1, &v63);
    v11 = v63;
    v12 = sub_1CF23E884(28, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
    v13 = sub_1CF23E884(29, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
    v80 = 0;
    v46 = v13;
    sub_1CEFE42D4(v10, *(&v10 + 1));
    sub_1CEFE42D4(v11, *(&v11 + 1));
    v14 = v80;
    sub_1CEFEDAC0(30, a1, sub_1CF7BF3BC, sub_1CF1CA5F0, v79);
    v80 = v14;
    if (v14)
    {
      sub_1CEFE4714(v10, *(&v10 + 1));
      sub_1CEFE4714(v11, *(&v11 + 1));

      v63 = v10;
      *&v64 = 0;
      *(&v64 + 1) = v11;
      v65 = *(&v11 + 1);
      v66 = 0uLL;
      sub_1CEFCCC44(&v63, &unk_1EC4BF250, &unk_1CFA01B50);
      return sub_1CEFD5218(v8, type metadata accessor for ItemMetadata);
    }

    else
    {
      sub_1CEFE4714(v11, *(&v11 + 1));
      sub_1CEFE4714(v10, *(&v10 + 1));
      v44 = v79[1];
      v45 = v79[0];
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CEFE4874(v8, a2 + *(v43 + 48));
      sub_1CEFE528C(&v47);
      v15 = v46;
      *a2 = v12;
      *(a2 + 8) = v15;
      *(a2 + 16) = v10;
      *(a2 + 32) = 0;
      *(a2 + 40) = v11;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      v16 = v43;
      v17 = (a2 + *(v43 + 52));
      v18 = v60;
      v17[12] = v59;
      v17[13] = v18;
      v17[14] = v61;
      *(v17 + 30) = v62;
      v19 = v56;
      v17[8] = v55;
      v17[9] = v19;
      v20 = v58;
      v17[10] = v57;
      v17[11] = v20;
      v21 = v52;
      v17[4] = v51;
      v17[5] = v21;
      v22 = v54;
      v17[6] = v53;
      v17[7] = v22;
      v23 = v48;
      *v17 = v47;
      v17[1] = v23;
      v24 = v50;
      v17[2] = v49;
      v17[3] = v24;
      v25 = a2 + v16[14];
      *v25 = 0u;
      *(v25 + 16) = 0u;
      *(v25 + 32) = 1;
      v26 = a2 + v16[15];
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 1;
      v27 = v44;
      *(a2 + 80) = v45;
      *(a2 + 88) = v27;
      v28 = v17[13];
      v75 = v17[12];
      v76 = v28;
      v77 = v17[14];
      v78 = *(v17 + 30);
      v29 = v17[9];
      v71 = v17[8];
      v72 = v29;
      v30 = v17[11];
      v73 = v17[10];
      v74 = v30;
      v31 = v17[5];
      v67 = v17[4];
      v68 = v31;
      v32 = v17[7];
      v69 = v17[6];
      v70 = v32;
      v33 = v17[1];
      v63 = *v17;
      v64 = v33;
      v34 = v17[3];
      v65 = v17[2];
      v66 = v34;
      result = sub_1CEFCCC44(&v63, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v35 = v60;
      v17[12] = v59;
      v17[13] = v35;
      v17[14] = v61;
      *(v17 + 30) = v62;
      v36 = v56;
      v17[8] = v55;
      v17[9] = v36;
      v37 = v58;
      v17[10] = v57;
      v17[11] = v37;
      v38 = v52;
      v17[4] = v51;
      v17[5] = v38;
      v39 = v54;
      v17[6] = v53;
      v17[7] = v39;
      v40 = v48;
      *v17 = v47;
      v17[1] = v40;
      v41 = v50;
      v17[2] = v49;
      v17[3] = v41;
      *(a2 + v16[16]) = 0;
      *(a2 + v16[17]) = xmmword_1CF9FEC20;
    }
  }

  return result;
}

uint64_t sub_1CF2023E0@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, __int128 *, __n128)@<X1>, _BYTE *a3@<X8>)
{
  v122 = a3;
  v5 = sub_1CF9E5CF8();
  v125 = *(v5 - 8);
  v126 = v5;
  v6 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v124 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v87 - v25;
  LOBYTE(v129) = 16;
  v27 = a2;
  a2(&v128, &v129, v24);
  v28 = v127;
  result = sub_1CEFED4EC(v128, a1, sub_1CF7BF3BC, sub_1CF1CA5F0);
  if (v28)
  {
    return result;
  }

  v30 = result;
  v120 = v27;
  v121 = a1;
  v116 = v16;
  v117 = v13;
  v118 = v19;
  v119 = v26;
  v127 = v22;
  if (result >= 0x10000)
  {
    v31 = v127;
    v33 = v120;
    v32 = v121;
    if (BYTE3(result))
    {
      __break(1u);
      goto LABEL_12;
    }

    ResidencyReason.init(rawValue:)(BYTE2(result));
    LOBYTE(v22) = v129;
  }

  else
  {
    LOBYTE(v22) = 6;
    v31 = v127;
    v33 = v120;
    v32 = v121;
  }

  EvictionUrgency.init(rawValue:)(v30);
  if (v129 == 6)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    LOBYTE(v16) = v129;
  }

  LOBYTE(v129) = 0;
  v33(&v128, &v129);
  sub_1CF23CF40(v128, v32, &v131 + 2);
  v34 = BYTE2(v131);
  LOBYTE(v129) = 2;
  v33(&v128, &v129);
  v35 = sub_1CEFEF02C(v128, v32, sub_1CF7BF3BC, sub_1CF1CA5F0);
  v130 = v34;
  v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v37 = sub_1CF9E8198();

  LOBYTE(v129) = 15;
  v33(&v128, &v129);
  v38 = sub_1CEFEF02C(v128, v32, sub_1CF7BF3BC, sub_1CF1CA5F0);
  v115 = v37;
  v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v27 = sub_1CF9E8198();

  LOBYTE(v129) = 13;
  v33(&v128, &v129);
  v40 = sub_1CF23D344(v128, v32, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v129) = 4;
  v33(&v128, &v129);
  v113 = sub_1CF23CD44(v128, v32);
  v114 = v40;
  LOBYTE(v129) = 5;
  v33(&v128, &v129);
  sub_1CF23CA4C(v128, v32, v119);
  LOBYTE(v129) = 6;
  a1 = 0;
  v33(&v128, &v129);
  sub_1CF23CA4C(v128, v32, v31);
  LOBYTE(v129) = 3;
  v33(&v128, &v129);
  v112 = sub_1CEFEEA08(v128, v32, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v129) = 11;
  v33(&v128, &v129);
  v111 = sub_1CEFEEA08(v128, v32, sub_1CF7BF3BC, sub_1CF1CA5F0);
LABEL_12:
  v41 = v16;
  LOBYTE(v129) = 12;
  v33(&v128, &v129);
  v110 = sub_1CEFEEA08(v128, v32, sub_1CF7BF3BC, sub_1CF1CA5F0);
  if (a1)
  {
    sub_1CEFCCC44(v127, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return sub_1CEFCCC44(v119, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  LOBYTE(v129) = 7;
  (v120)(&v128, &v129);
  sub_1CF23CA4C(v128, v121, v118);
  LOBYTE(v129) = 8;
  (v120)(&v128, &v129);
  v109 = sub_1CF23C840(v128, v121);
  LOBYTE(v129) = 9;
  (v120)(&v128, &v129);
  v108 = sub_1CF23C62C(v128, v121);
  v107 = v42;
  LOBYTE(v129) = 14;
  (v120)(&v128, &v129);
  v106 = sub_1CF23C420(v128, v121);
  LOBYTE(v128) = 20;
  (v120)((&v131 + 1), &v128);
  sub_1CF23D77C(BYTE1(v131), v121, sub_1CF7BF3BC, sub_1CF1CA5F0, &v129);
  v105 = v129;
  LOBYTE(v128) = 23;
  (v120)((&v131 + 1), &v128);
  v104 = sub_1CF23D13C(BYTE1(v131), v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v128) = 21;
  (v120)((&v131 + 1), &v128);
  v103 = sub_1CEFEEA08(BYTE1(v131), v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v128) = 22;
  (v120)((&v131 + 1), &v128);
  v102 = sub_1CEFEEA08(BYTE1(v131), v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v128) = 27;
  (v120)((&v131 + 1), &v128);
  v101 = sub_1CEFEEA08(BYTE1(v131), v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v128) = 17;
  (v120)((&v131 + 1), &v128);
  v100 = sub_1CEFEEA08(BYTE1(v131), v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v128) = 18;
  (v120)((&v131 + 1), &v128);
  v99 = sub_1CEFEEA08(BYTE1(v131), v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v128) = 1;
  (v120)((&v131 + 1), &v128);
  v43 = sub_1CEFEEA08(BYTE1(v131), v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  LOBYTE(v128) = 10;
  (v120)((&v131 + 1), &v128);
  v44 = sub_1CF23C214(BYTE1(v131), v121);
  BYTE1(v131) = 19;
  (v120)(&v131, &v131 + 1);
  sub_1CEFF3938(v131, v121, sub_1CF7BF3BC, sub_1CF1CA5F0, &v128);
  v98 = v128;
  BYTE1(v131) = 24;
  (v120)(&v131, &v131 + 1);
  v97 = sub_1CF23C000(v131, v121);
  v96 = v45;
  BYTE1(v131) = 25;
  (v120)(&v131, &v131 + 1);
  v95 = sub_1CF23D344(v131, v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  BYTE1(v131) = 26;
  (v120)(&v131, &v131 + 1);
  v94 = sub_1CEFF3720(v131, v121, sub_1CF7BF3BC, sub_1CF1CA5F0);
  v120 = v46;
  v121 = 0;
  v47 = type metadata accessor for ItemMetadata();
  v48 = v122;
  v49 = &v122[v47[14]];
  *v49 = 0;
  v49[1] = 0;
  v91 = v49;
  v48[v47[17]] = 2;
  v92 = v47[23];
  v48[v92] = 6;
  v50 = &v48[v47[30]];
  v51 = *(v125 + 56);
  v93 = 1;
  v89 = v50;
  v51();
  v90 = &v48[v47[34]];
  *v90 = xmmword_1CF9F4E20;
  v52 = &v48[v47[38]];
  *v52 = 0;
  v52[1] = 0;
  v88 = v52;
  if (v130 > 1)
  {
    v93 = 0;
    goto LABEL_19;
  }

  if (!v130)
  {
LABEL_19:
    v53 = v44;
    goto LABEL_20;
  }

  v93 = 0;
  v53 = 1;
LABEL_20:
  v54 = v113 & 0x1FF;
  if (fpfs_supports_vfs_ignore_permissions_iopolicy())
  {
    v55 = v54 | 0x40;
    if ((v53 & 1) == 0)
    {
      v55 = v54;
    }
  }

  else
  {
    v56 = v54 | (v113 >> 2) & 0x40 | 0x80;
    if ((v53 & 1) == 0)
    {
      LOWORD(v56) = v54;
    }

    v55 = (4 * v56) & 0x100 | v56;
  }

  v57 = v95;
  v58 = HIDWORD(v95);
  v59 = v122;
  *v122 = v130;
  v59[v47[20]] = v43 & 1;
  v60 = v114;
  v61 = HIDWORD(v114);
  v59[v47[28]] = v44 & 1;
  v59[v47[29]] = v44 & 1;
  *&v59[v47[26]] = v115;
  *&v59[v47[27]] = v27;
  v62 = *v59;
  if (!((v62 == 1) | v44 & 1))
  {
    v60 = 0;
  }

  *(v59 + 1) = v60;
  v59[8] = v61 & 1 | (((v62 == 1) | v44 & 1) == 0);
  v63 = &v59[v47[37]];
  v64 = (v62 != 0) | v44;
  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v57;
  }

  *v63 = v65;
  v63[4] = (v64 | v58) & 1;
  *(v59 + 5) = v55;
  v66 = v116;
  sub_1CEFCCBDC(v119, v116, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v67 = *(v125 + 48);
  if (v67(v66, 1, v126) == 1)
  {
    sub_1CF9E5C88();
    if (v67(v116, 1, v126) != 1)
    {
      sub_1CEFCCC44(v116, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    (*(v125 + 32))(v123, v116, v126);
  }

  v68 = v126;
  v69 = *(v125 + 32);
  v70 = &v122[v47[7]];
  v125 += 32;
  v69(v70, v123, v126);
  v71 = v117;
  sub_1CEFCCBDC(v127, v117, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if (v67(v71, 1, v68) == 1)
  {
    sub_1CF9E5C88();
    sub_1CEFCCC44(v127, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v119, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v67(v117, 1, v126) != 1)
    {
      sub_1CEFCCC44(v117, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    sub_1CEFCCC44(v127, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v119, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v69(v124, v117, v126);
  }

  v72 = v47[31];
  v73 = v122;
  v74 = &v122[v47[32]];
  v75 = v47[33];
  v76 = &v122[v47[35]];
  v69(&v122[v47[8]], v124, v126);
  v73[v47[9]] = v112 & 1;
  v73[v47[10]] = v111 & 1;
  v73[v47[13]] = v110 & 1;
  *&v73[v47[19]] = v104;
  v73[v47[21]] = v41;
  v73[v47[15]] = v103 & 1;
  v73[v47[16]] = v102 & 1;
  v73[v47[11]] = v100 & 1;
  v73[v47[12]] = v99 & 1;
  v73[v47[18]] = v101 & 1;
  sub_1CEFDA9E0(v118, v89, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *&v73[v72] = v109;
  *v74 = v108;
  v74[8] = v107 & 1;
  *&v73[v75] = v106;
  v77 = v91;
  v78 = v91[1];

  v79 = *(&v98 + 1);
  *v77 = v98;
  v77[1] = v79;
  v80 = v90;
  result = sub_1CEFE48D8(*v90, v90[1]);
  v81 = *(&v105 + 1);
  *v80 = v105;
  v80[1] = v81;
  *v76 = v97;
  v76[8] = v96 & 1;
  v73[v47[36]] = 0;
  if (v120)
  {
    v82 = HIBYTE(v120) & 0xF;
    if ((v120 & 0x2000000000000000) == 0)
    {
      v82 = v94 & 0xFFFFFFFFFFFFLL;
    }

    if (v82)
    {
      v83 = v88;
      v84 = v120;
      *v88 = v94;
      v83[1] = v84;
    }

    else
    {
    }
  }

  v85 = v122;
  v122[v47[24]] = 0;
  v85[v47[25]] = 0;
  v85[v47[22]] = 0;
  if (v93)
  {
    v86 = v22;
  }

  else
  {
    v86 = 6;
  }

  v85[v92] = v86;
  return result;
}

uint64_t sub_1CF2036D8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *))
{
  HIBYTE(v9) = 0;
  a2((&v9 + 6), &v9 + 7);
  result = sub_1CEFEF02C(BYTE6(v9), a1, sub_1CF7BFB60, sub_1CF1D841C);
  if (!v2)
  {
    if (result > 2)
    {
      if (result == 3)
      {
        sub_1CF1DA62C();
        return swift_allocError();
      }

      if (result != 4)
      {
        if (result == 5)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    else
    {
      if (!result)
      {
        BYTE1(v9) = 1;
        a2(&v9, &v9 + 1);
        v6 = sub_1CF23E024(v9, a1, sub_1CF7BFB60, sub_1CF1D841C);
        BYTE1(v8) = 2;
        a2(&v8, &v8 + 1);
        sub_1CF23DE0C(v8, a1, sub_1CF7BFB60, sub_1CF1D841C);
        return v6;
      }

      if (result != 1)
      {
        if (result == 2)
        {
          BYTE5(v9) = 2;
          a2((&v9 + 4), &v9 + 5);
          return sub_1CF23DE0C(BYTE4(v9), a1, sub_1CF7BFB60, sub_1CF1D841C);
        }

LABEL_13:
        sub_1CF1DA5D8();
        swift_allocError();
        *v7 = 0;
        return swift_willThrow();
      }

      BYTE3(v9) = 2;
      a2((&v9 + 2), &v9 + 3);
      return sub_1CF23DE0C(BYTE2(v9), a1, sub_1CF7BFB60, sub_1CF1D841C);
    }
  }

  return result;
}

uint64_t sub_1CF2039B0(char a1, void *a2, int a3)
{
  sub_1CF19F384(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
  if (swift_dynamicCastMetatype())
  {
    v6 = sub_1CF1CCAF8();
    v7 = sub_1CF245E6C(v6, a2, a3);

    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
  if (swift_dynamicCastMetatype())
  {
    v8 = sub_1CF1CCAE4();
    v9 = sub_1CF245898(v8, a2, a3);
    if (v3)
    {
LABEL_5:
      v7 = v3;

      return v7;
    }

LABEL_9:
    v7 = v9;

    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
  if (swift_dynamicCastMetatype())
  {
    v11 = sub_1CF1CCAD0();
    v9 = sub_1CF245094(v11, a2, a3);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF90, &qword_1CF9FAE40);
  if (swift_dynamicCastMetatype())
  {
    v12 = sub_1CF1CCABC();
    v9 = sub_1CF244790(v12, a2, a3);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA40, &qword_1CF9FEFB0);
  if (swift_dynamicCastMetatype())
  {
    v13 = sub_1CF1CCAA8();
    v14 = &qword_1EC4BDA40;
    v15 = &qword_1CF9FEFB0;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFD0, &unk_1CF9FADF0);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCA94();
    v9 = sub_1CF2440F8(v16, a2, a3);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0150, &unk_1CF9FAC40);
  if (swift_dynamicCastMetatype())
  {
    v13 = sub_1CF1CCA80();
    v14 = &unk_1EC4C0150;
    v15 = &unk_1CF9FAC40;
LABEL_15:
    v9 = sub_1CF241F04(v13, a2, a3, v14, v15);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF203C5C(char a1, void *a2, int a3)
{
  sub_1CF1A01B4(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  if (swift_dynamicCastMetatype())
  {
    v6 = sub_1CF1CCA6C();
    v7 = sub_1CF2439E0(v6, a2, a3);

    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  if (swift_dynamicCastMetatype())
  {
    v8 = sub_1CF1CCA58();
    v9 = sub_1CF2432B8(v8, a2, a3);
    if (v3)
    {
LABEL_5:
      v7 = v3;

      return v7;
    }

LABEL_9:
    v7 = v9;

    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  if (swift_dynamicCastMetatype())
  {
    v11 = sub_1CF1CCA44();
    v9 = sub_1CF242BD4(v11, a2, a3);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF50, &qword_1CF9FB440);
  if (swift_dynamicCastMetatype())
  {
    v12 = sub_1CF1CCA30();
    v9 = sub_1CF242420(v12, a2, a3);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0260, &unk_1CF9FCB00);
  if (swift_dynamicCastMetatype())
  {
    v13 = sub_1CF1CCA1C();
    v14 = &unk_1EC4C0260;
    v15 = &unk_1CF9FCB00;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0290, &qword_1CF9FB3F0);
  if (swift_dynamicCastMetatype())
  {
    v16 = sub_1CF1CCA08();
    v9 = sub_1CF2417D4(v16, a2, a3);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0410, &qword_1CF9FB240);
  if (swift_dynamicCastMetatype())
  {
    v13 = sub_1CF1CC9F4();
    v14 = &unk_1EC4C0410;
    v15 = &qword_1CF9FB240;
LABEL_15:
    v9 = sub_1CF241F04(v13, a2, a3, v14, v15);
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

unint64_t sub_1CF203F08(uint64_t a1)
{
  v4 = sub_1CF23F814(0x40u, a1);
  if (!v2)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_1CF23F5D8(0xDCu, a1);
    v9 = sub_1CF23F398(0xFCu, a1);
    if (v9)
    {
      v11 = sub_1CF203C5C(v8, v6, v7);

      return v11 | 0x8000000000000000;
    }

    else
    {
      v1 = sub_1CF2039B0(v8, v6, v7);
    }
  }

  return v1;
}

unint64_t sub_1CF203FD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v49 = a2;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v20 = type metadata accessor for Signpost(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v46 = a1;
  if (!*(a1 + 16))
  {
    return sub_1CEFE9968(MEMORY[0x1E69E7CC0]);
  }

  v42 = a3;
  v43 = a4;
  v44 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEBBE40;
  (*(v10 + 56))(v19, 1, 1, v9);
  sub_1CEFCCBDC(v19, v17, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(v10 + 48);
  if (v24(v17, 1, v9) == 1)
  {
    v25 = v23;
    v41 = v23;
    v26 = v45;
    sub_1CF9E6048();
    v27 = v24(v17, 1, v9);
    v28 = v26;
    v23 = v41;
    if (v27 != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v28 = v45;
    (*(v10 + 32))(v45, v17, v9);
  }

  v30 = v44;
  (*(v10 + 16))(v44, v28, v9);
  *(v30 + *(v20 + 20)) = v23;
  v31 = v30 + *(v20 + 24);
  *v31 = "SQLDB: Decoration Query";
  *(v31 + 8) = 23;
  *(v31 + 16) = 2;
  v32 = v23;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v28, v9);
  v33 = sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v48;
  *(&v40 - 6) = v43;
  *(&v40 - 5) = v34;
  *(&v40 - 32) = v49 & 1;
  v35 = v47;
  *(&v40 - 3) = v46;
  *(&v40 - 2) = v35;
  v36 = (*(v34 + 24))(sub_1CF24CCEC);
  if (v5)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CEFD5218(v30, type metadata accessor for Signpost);
  }

  else
  {
    v37 = v36;
    v38 = sub_1CEFE9968(MEMORY[0x1E69E7CC0]);
    v50 = v38;
    if ([v37 next])
    {
      do
      {
        v39 = objc_autoreleasePoolPush();
        sub_1CF238460(v37);
        objc_autoreleasePoolPop(v39);
      }

      while (([v37 next] & 1) != 0);
      v38 = v50;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v30, type metadata accessor for Signpost);
    return v38;
  }
}

uint64_t sub_1CF2044E8(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v19);
  if (!v1)
  {
    v3 = sub_1CF23ED24(67, v2);
    v5 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v6 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v7 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v8 = sub_1CF23E440(65, v2);
    v21 = v19;
    v18 = v20;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0u;
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
    *(v12 + 272) = 0;
    *(v12 + 280) = -1;
    v13 = *(*v12 + 664);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
    v15 = v12 + *(*v12 + 672);
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0xB000000000000000;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    v16 = v12 + *(*v12 + 680);
    *(v16 + 64) = 0;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v12 + *(*v12 + 688)) = 0;
    *(v12 + 152) = v18;
    *(v12 + 160) = v5;
    *(v12 + 168) = v3;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 1;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 120) = v6;
    *(v12 + 128) = v7;
    v17 = v21;
    *(v12 + 136) = v8;
    *(v12 + 144) = v17;
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    *(v12 + 88) = 0;
    *(v12 + 112) = 0;
    v2 = sub_1CF246F18(v2);
  }

  return v2;
}

uint64_t sub_1CF2047F0(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1CF23E884(66, a1, sub_1CF7BFB60, sub_1CF1D841C);
  if (!v1)
  {
    v4 = v3;
    v5 = sub_1CF23ED24(67, v2);
    v7 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v8 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v18 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v9 = sub_1CF23E440(65, v2);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    *(v13 + 168) = 0;
    *(v13 + 176) = 0;
    *(v13 + 184) = 1;
    *(v13 + 192) = 0u;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    v14 = *(*v13 + 664);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
    (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
    v16 = v13 + *(*v13 + 672);
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0xB000000000000000;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    v17 = (v13 + *(*v13 + 680));
    *v17 = 0u;
    v17[1] = 0u;
    v17[2] = 0u;
    v17[3] = 0u;
    v17[4] = 0u;
    v17[5] = 0u;
    v17[6] = 0u;
    *(v13 + *(*v13 + 688)) = 0;
    *(v13 + 152) = v7;
    *(v13 + 160) = v5;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 1;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 120) = v8;
    *(v13 + 128) = v18;
    *(v13 + 136) = v9;
    *(v13 + 144) = v4;
    *(v13 + 112) = 0;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0;
    *(v13 + 88) = 0;
    v2 = sub_1CF246F18(v2);
  }

  return v2;
}

uint64_t sub_1CF204AF4(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v20);
  if (!v1)
  {
    v3 = sub_1CF23ED24(67, v2);
    sub_1CEFEE134(128, v2, sub_1CF7BFB60, sub_1CF1D841C, &v22);
    v4 = v22;
    v6 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v7 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v19 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v8 = sub_1CF23E440(65, v2);
    v18 = v20;
    v17 = v21;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    *(v12 + 200) = 0u;
    *(v12 + 216) = 0u;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    *(v12 + 280) = 0;
    *(v12 + 184) = 0u;
    *(v12 + 264) = 0u;
    v13 = *(*v12 + 672);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
    v15 = v12 + *(*v12 + 680);
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0xB000000000000000;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    v16 = v12 + *(*v12 + 688);
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 1;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0;
    *(v12 + *(*v12 + 712)) = 0;
    *(v12 + 168) = v3;
    *(v12 + 176) = v4;
    *(v12 + *(*v12 + 696)) = 0;
    *(v12 + *(*v12 + 704)) = 0;
    *(v12 + 152) = v17;
    *(v12 + 160) = v6;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 1;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 120) = v7;
    *(v12 + 128) = v19;
    *(v12 + 136) = v8;
    *(v12 + 144) = v18;
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    *(v12 + 88) = 0;
    *(v12 + 112) = 0;
    v2 = sub_1CF246F18(v2);
  }

  return v2;
}

uint64_t sub_1CF204E80(uint64_t a1)
{
  v4 = sub_1CF23E884(66, a1, sub_1CF7BFB60, sub_1CF1D841C);
  if (!v2)
  {
    v5 = v4;
    v6 = sub_1CF23ED24(67, a1);
    sub_1CEFEE134(128, a1, sub_1CF7BFB60, sub_1CF1D841C, &v21);
    v7 = v21;
    v9 = sub_1CEFEF234(129, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v10 = sub_1CEFF0CDC(32, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v20 = sub_1CEFF0EE4(33, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v19 = sub_1CF23E440(65, a1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    *(v14 + 176) = 0;
    *(v14 + 184) = -1;
    *(v14 + 192) = 0;
    *(v14 + 200) = 0;
    *(v14 + 208) = 1;
    *(v14 + 216) = 0u;
    *(v14 + 232) = 0u;
    *(v14 + 248) = 0;
    v15 = *(*v14 + 672);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
    (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
    v17 = v14 + *(*v14 + 680);
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0xB000000000000000;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    v18 = (v14 + *(*v14 + 688));
    *v18 = 0u;
    v18[1] = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    v18[4] = 0u;
    v18[5] = 0u;
    *(v14 + *(*v14 + 712)) = 0;
    *(v14 + 160) = v6;
    *(v14 + 168) = v7;
    *(v14 + *(*v14 + 696)) = 0;
    *(v14 + *(*v14 + 704)) = 0;
    *(v14 + 144) = v5;
    *(v14 + 152) = v9;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 1;
    *(v14 + 72) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 120) = v10;
    *(v14 + 128) = v20;
    *(v14 + 136) = v19;
    *(v14 + 112) = 0;
    *(v14 + 88) = 0;
    *(v14 + 96) = 0;
    *(v14 + 104) = 0;
    v1 = sub_1CF246F18(a1);
  }

  return v1;
}

uint64_t sub_1CF20520C(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v16);
  if (!v1)
  {
    v3 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v4 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v6 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v7 = sub_1CF23E440(65, v2);
    v18 = v16;
    v15 = v17;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    *(v11 + 168) = 0u;
    *(v11 + 184) = 0u;
    *(v11 + 200) = 1;
    *(v11 + 208) = 0u;
    *(v11 + 224) = 0u;
    *(v11 + 240) = 0u;
    *(v11 + 256) = 1;
    *(v11 + 257) = 514;
    v12 = *(*v11 + 688);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
    *(v11 + 152) = v15;
    *(v11 + 160) = v3;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 1;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 120) = v4;
    *(v11 + 128) = v6;
    v14 = v18;
    *(v11 + 136) = v7;
    *(v11 + 144) = v14;
    *(v11 + 96) = 0;
    *(v11 + 104) = 0;
    *(v11 + 88) = 0;
    *(v11 + 112) = 0;
    v2 = sub_1CF246F18(v2);
  }

  return v2;
}

uint64_t sub_1CF2054B0(uint64_t a1)
{
  v4 = sub_1CF23E884(66, a1, sub_1CF7BFB60, sub_1CF1D841C);
  if (!v2)
  {
    v1 = v4;
    v5 = sub_1CF23ED24(67, a1);
    sub_1CEFEDAC0(97, a1, sub_1CF7BFB60, sub_1CF1D841C, v30);
    v8 = v30[0];
    v7 = v30[1];
    sub_1CF23EA90(98, a1, v27);
    v9 = sub_1CEFEF234(129, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v10 = sub_1CEFF0CDC(32, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v26 = sub_1CEFF0EE4(33, a1, sub_1CF7BFB60, sub_1CF1D841C);
    v11 = sub_1CF23E440(65, a1);
    v31 = 0;
    v24 = v28;
    v25 = v11;
    v23 = v29;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF50, &qword_1CF9FB440);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = *(*v15 + 616);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
    v18 = v15 + *(*v15 + 624);
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 1;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0;
    *(v15 + *(*v15 + 632)) = 0;
    *(v15 + 152) = v5;
    *(v15 + 160) = v8;
    *(v15 + 168) = v7;
    v19 = v27[1];
    *(v15 + 176) = v27[0];
    *(v15 + 192) = v19;
    *(v15 + 208) = v24;
    *(v15 + 216) = v23;
    *(v15 + 224) = v9;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 1;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 120) = v10;
    *(v15 + 128) = v26;
    *(v15 + 136) = v25;
    *(v15 + 144) = v1;
    v20 = 270592;
    if ((v25 & 0x8000) != 0)
    {
      v20 = 2367744;
    }

    *(v15 + 88) = 0;
    *(v15 + 96) = v20;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0;
    v21 = v31;
    v22 = sub_1CF246F18(a1);
    if (!v21)
    {
      v1 = v22;
    }
  }

  return v1;
}

uint64_t sub_1CF205860(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v27);
  if (!v1)
  {
    v3 = sub_1CF23ED24(67, v2);
    sub_1CEFEDAC0(97, v2, sub_1CF7BFB60, sub_1CF1D841C, v26);
    v5 = v26[0];
    v4 = v26[1];
    sub_1CF23F130(98, v2, v25);
    v7 = sub_1CEFEF234(129, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v8 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v24 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v9 = sub_1CF23E440(65, v2);
    v29 = 0;
    v10 = v9;
    v23 = v27;
    v22 = v28;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF90, &qword_1CF9FAE40);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    v15 = *(*v14 + 616);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
    (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
    v17 = (v14 + *(*v14 + 624));
    *v17 = 0u;
    v17[1] = 0u;
    v17[2] = 0u;
    v17[3] = 0u;
    v17[4] = 0u;
    v17[5] = 0u;
    *(v14 + *(*v14 + 632)) = 0;
    *(v14 + 152) = v22;
    *(v14 + 160) = v3;
    *(v14 + 168) = v5;
    *(v14 + 176) = v4;
    v18 = v25[0];
    *(v14 + 200) = v25[1];
    *(v14 + 184) = v18;
    *(v14 + 216) = v7;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 120) = v8;
    *(v14 + 128) = v24;
    *(v14 + 136) = v10;
    *(v14 + 144) = v23;
    v19 = 270592;
    if ((v10 & 0x8000) != 0)
    {
      v19 = 2367744;
    }

    *(v14 + 88) = 0;
    *(v14 + 96) = v19;
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
    v20 = v29;
    v21 = sub_1CF246F18(v2);
    if (!v20)
    {
      v2 = v21;
    }
  }

  return v2;
}

uint64_t sub_1CF205BFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1;
  sub_1CF23E63C(99, a1, &v18);
  if (!v3)
  {
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v7 = sub_1CEFF0CDC(32, v6, sub_1CF7BFB60, sub_1CF1D841C);
    v9 = sub_1CEFF0EE4(33, v6, sub_1CF7BFB60, sub_1CF1D841C);
    v10 = sub_1CF23E440(65, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v11 = swift_allocObject();
    v12 = v19;
    *(v11 + 144) = v18;
    *(v11 + 160) = v12;
    v13 = v21;
    *(v11 + 176) = v20;
    *(v11 + 192) = v13;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 1;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0;
    *(v11 + 96) = xmmword_1CF9FEC30;
    *(v11 + 112) = 0;
    *(v11 + 120) = v7;
    *(v11 + 128) = v9;
    *(v11 + 136) = v10;
    if ((v10 & 0x8000) != 0)
    {
      *(v11 + 96) = 2359552;
      *(v11 + 112) = 0;
    }

    v6 = sub_1CF246F18(v6);
  }

  return v6;
}

uint64_t sub_1CF205DF4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = swift_allocObject();
  v11 = a1[1];
  *(result + 144) = *a1;
  *(result + 160) = v11;
  v12 = a1[3];
  *(result + 176) = a1[2];
  *(result + 192) = v12;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0;
  *(result + 96) = xmmword_1CF9FEC30;
  *(result + 112) = 0;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  if ((a4 & 0x8000) != 0)
  {
    *(result + 96) = 2359552;
    *(result + 112) = 0;
  }

  return result;
}

uint64_t sub_1CF205E98(uint64_t a1)
{
  v2 = a1;
  sub_1CF23EF20(66, a1, sub_1CF7BFB60, sub_1CF1D841C, &v16);
  if (!v1)
  {
    sub_1CF23EF20(96, v2, sub_1CF7BFB60, sub_1CF1D841C, &v14);
    v3 = sub_1CEFF0CDC(32, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v4 = sub_1CEFF0EE4(33, v2, sub_1CF7BFB60, sub_1CF1D841C);
    v6 = sub_1CF23E440(65, v2);
    v18 = 0;
    v7 = v16;
    v8 = v17;
    v9 = v14;
    v10 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFD0, &unk_1CF9FADF0);
    v11 = swift_allocObject();
    *(v11 + 152) = v8;
    *(v11 + 160) = v9;
    *(v11 + 168) = v10;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 1;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0;
    *(v11 + 96) = xmmword_1CF9FEC30;
    *(v11 + 112) = 0;
    *(v11 + 120) = v3;
    *(v11 + 128) = v4;
    *(v11 + 136) = v6;
    *(v11 + 144) = v7;
    if ((v6 & 0x8000) != 0)
    {
      *(v11 + 96) = 2359552;
      *(v11 + 112) = 0;
    }

    v12 = v18;
    v13 = sub_1CF246F18(v2);
    if (!v12)
    {
      v2 = v13;
    }
  }

  return v2;
}

uint64_t sub_1CF2060B0(void *a1, uint64_t a2, uint64_t (*a3)(void, void), NSObject *a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v10 + 160);
  v24 = *(v10 + 144);
  v25 = v16;
  type metadata accessor for ConcreteJobResult();
  v17 = sub_1CF056580();
  v18 = *(*v5 + 176);
  *&v25 = 0;
  v24 = 0x7FFFFFFF80uLL;
  sub_1CF98B47C(&v5[v18], &v24, a1, v17, a2, a3, a4);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v20 = v19;
  (*(v12 + 8))(v15, v11);
  v21 = v20 * 1000000000.0;
  if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);

    sub_1CF92DCD4(0, "schedule(db:with:)", 18, 2);
  }

  if (v21 >= 9.22337204e18)
  {
    goto LABEL_7;
  }

  sub_1CF521850(v17, v21, a2, a3, a4);

  return 0;
}

uint64_t sub_1CF2062EC()
{
  v1 = *(*v0 + 176);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 160);
  v2 = type metadata accessor for ItemReconciliation();
  return (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_1CF206394()
{
  v1 = *v0;
  v2 = sub_1CF0529A8();
  v3 = *(*v2 + 176);
  v6 = *(v1 + 144);
  v7 = *(v1 + 160);
  v4 = type metadata accessor for ItemReconciliation();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  return v2;
}

uint64_t sub_1CF20647C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF206528(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  (*(*(*(*v11 + 80) - 8) + 32))(v11 + *(*v11 + 96), a1);
  *(v11 + *(*v11 + 104)) = a2;
  v12 = v11 + *(*v11 + 112);
  *v12 = a3;
  *(v12 + 8) = a4 & 1;
  return v11;
}

uint64_t sub_1CF206614(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 96), a1);
  *(v4 + *(*v4 + 104)) = a2;
  v8 = v4 + *(*v4 + 112);
  *v8 = a3;
  *(v8 + 8) = a4 & 1;
  return v4;
}

uint64_t sub_1CF2066E0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 96);
  v4 = *(*(*(v2 + 88) + 40) + 8);
  v5 = a2 + *(*a2 + 96);
  v6 = *(v2 + 80);
  return sub_1CF9E6868() & 1;
}

uint64_t sub_1CF206744()
{
  v1 = *(*v0 + 80);
  v2 = *(*(*v0 + 88) + 40);
  v3 = v0 + *(*v0 + 96);
  return sub_1CF9E6758();
}

uint64_t sub_1CF20681C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2068E0()
{
  sub_1CF9E81D8();
  v1 = *(*v0 + 80);
  v2 = *(*(*v0 + 88) + 40);
  v3 = v0 + *(*v0 + 96);
  sub_1CF9E6758();
  return sub_1CF9E8228();
}

uint64_t sub_1CF206968(void *a1)
{
  v2 = a1[77];
  v3 = a1[75];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v6 = a1[78];
    v7 = a1[76];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1CF206ADC()
{
  sub_1CF9E81D8();
  v1 = *v0;
  sub_1CF206744();
  return sub_1CF9E8228();
}

uint64_t sub_1CF206B28(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    strcpy(v38, "JobThrottle.");
    BYTE5(v38[1]) = 0;
    HIWORD(v38[1]) = -5120;
    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v3 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v4 = sub_1CEFE4328(v38[0], v38[1]);
      v6 = v5;

      if (v6)
      {
        v7 = (v3[7] + 16 * v4);
        v8 = *v7;
        v9 = v7[1];
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_41;
      }
    }

    else
    {
    }

    swift_endAccess();
    v10 = sub_1CF1CB920();
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v36 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v11, 0);
    v12 = 0;
    v13 = a2;
    while (v12 < v10[2])
    {
      v14 = *(v10 + v12 + 32);
      v38[0] = a1;
      v38[1] = v13;
      v15 = 0xD00000000000001ALL;
      if (v14 == 6)
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0x80000001CFA2C090;
      if (v14 == 6)
      {
        v16 = 0x80000001CFA2C070;
      }

      v17 = 0x797469726F697270;
      if (v14 == 4)
      {
        v17 = 0x7272655F7473616CLL;
      }

      v18 = 0xEA0000000000726FLL;
      if (v14 != 4)
      {
        v18 = 0xE800000000000000;
      }

      if (v14 <= 5)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = 0xEF657461645F7972;
      v20 = 0x7465725F7478656ELL;
      if (v14 != 2)
      {
        v20 = 0x7272655F7473616CLL;
        v19 = 0xEF657461645F726FLL;
      }

      v21 = 0x6574617473;
      if (v14)
      {
        v21 = 0x6F635F7972746572;
      }

      v22 = 0xE500000000000000;
      if (v14)
      {
        v22 = 0xEB00000000746E75;
      }

      if (v14 <= 1)
      {
        v20 = v21;
        v19 = v22;
      }

      if (v14 <= 3)
      {
        v23 = v20;
      }

      else
      {
        v23 = v15;
      }

      if (v14 <= 3)
      {
        v24 = v19;
      }

      else
      {
        v24 = v16;
      }

      v25 = v11;
      v26 = v13;

      MEMORY[0x1D3868CC0](v23, v24);

      v27 = v38[0];
      a2 = v38[1];
      v29 = *(v36 + 16);
      v28 = *(v36 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1CEFE95CC((v28 > 1), v29 + 1, 1);
      }

      ++v12;
      *(v36 + 16) = v29 + 1;
      v30 = v36 + 16 * v29;
      *(v30 + 32) = v27;
      *(v30 + 40) = a2;
      v11 = v25;
      v13 = v26;
      if (v25 == v12)
      {
        a2 = v26;

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_40:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v8 = sub_1CF9E67D8();
  v32 = v31;

  strcpy(v38, "JobThrottle.");
  BYTE5(v38[1]) = 0;
  HIWORD(v38[1]) = -5120;
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v8, v32, v38[0], v38[1], isUniquelyReferenced_nonNull_native);

  off_1EDEAE210 = v37;
  swift_endAccess();
  swift_beginAccess();
LABEL_41:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v8;
}

uint64_t sub_1CF207018(uint64_t a1, unint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v3 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v4 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA37740);
      v6 = v5;

      if (v6)
      {
        v7 = (v3[7] + 16 * v4);
        v8 = *v7;
        v9 = v7[1];
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_27;
      }
    }

    else
    {
    }

    swift_endAccess();
    v10 = sub_1CF03D7E8();
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v27 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v11, 0);
    v12 = 0;
    v13 = a2;
    while (v12 < v10[2])
    {
      v14 = *(v10 + v12 + 32);
      v29 = v13;
      v15 = 0xD000000000000010;
      if (v14 != 1)
      {
        v15 = 0xD000000000000012;
      }

      v16 = 0x80000001CFA2C410;
      if (v14 == 1)
      {
        v16 = 0x80000001CFA2C3F0;
      }

      if (*(v10 + v12 + 32))
      {
        v17 = v15;
      }

      else
      {
        v17 = 0x6574617473;
      }

      if (*(v10 + v12 + 32))
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      v19 = v13;

      MEMORY[0x1D3868CC0](v17, v18);

      a2 = *(v27 + 16);
      v20 = *(v27 + 24);
      if (a2 >= v20 >> 1)
      {
        sub_1CEFE95CC((v20 > 1), a2 + 1, 1);
      }

      ++v12;
      *(v27 + 16) = a2 + 1;
      v21 = v27 + 16 * a2;
      *(v21 + 32) = a1;
      *(v21 + 40) = v29;
      v13 = v19;
      if (v11 == v12)
      {
        a2 = v19;

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v8 = sub_1CF9E67D8();
  v23 = v22;

  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v8, v23, 0xD000000000000013, 0x80000001CFA37740, isUniquelyReferenced_nonNull_native);

  off_1EDEAE210 = v28;
  swift_endAccess();
  swift_beginAccess();
LABEL_27:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v8;
}

uint64_t sub_1CF207454(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1B0, &unk_1CF9FF000);
    v29 = sub_1CF9E82E8();
    v31 = v3;
    MEMORY[0x1D3868CC0](46, 0xE100000000000000);
    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v4 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v5 = sub_1CEFE4328(v29, v31);
      v7 = v6;

      if (v7)
      {
        v8 = (v4[7] + 16 * v5);
        v9 = *v8;
        v10 = v8[1];
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_20;
      }
    }

    else
    {
    }

    swift_endAccess();
    v11 = sub_1CF1CBD20();
    v12 = v11[2];
    if (!v12)
    {
      break;
    }

    v27 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v12, 0);
    v13 = 0;
    while (v13 < v11[2])
    {
      v14 = *(v11 + v13 + 32);

      if (v14 >> 2 == 63)
      {
        v15 = 0xE400000000000000;
        v16 = 1701079411;
      }

      else if (v14 >> 2 == 55)
      {
        v15 = 0xE400000000000000;
        v16 = 1701869940;
      }

      else
      {
        v16 = sub_1CF1D841C(v14);
        v15 = v17;
      }

      MEMORY[0x1D3868CC0](v16, v15);

      v19 = *(v27 + 16);
      v18 = *(v27 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1CEFE95CC((v18 > 1), v19 + 1, 1);
      }

      ++v13;
      *(v27 + 16) = v19 + 1;
      v20 = v27 + 16 * v19;
      *(v20 + 32) = a1;
      *(v20 + 40) = a2;
      if (v12 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_19:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v9 = sub_1CF9E67D8();
  v22 = v21;

  v30 = sub_1CF9E82E8();
  v32 = v23;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v9, v22, v30, v32, isUniquelyReferenced_nonNull_native);

  off_1EDEAE210 = v28;
  swift_endAccess();
  swift_beginAccess();
LABEL_20:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v9;
}

uint64_t sub_1CF207884(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v3 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v4 = sub_1CEFE4328(0xD000000000000037, 0x80000001CFA376C0);
      v6 = v5;

      if (v6)
      {
        v7 = (v3[7] + 16 * v4);
        v8 = *v7;
        v9 = v7[1];
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_25;
      }
    }

    else
    {
    }

    swift_endAccess();
    v10 = sub_1CF1CBF6C();
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v11, 0);
    v12 = 0;
    while (v12 < v10[2])
    {
      v13 = *(v10 + v12 + 32);
      v14 = 0x64695F6D657469;
      if (v13 != 1)
      {
        v14 = 0x657079745F626F6ALL;
      }

      v15 = 0xE700000000000000;
      if (v13 != 1)
      {
        v15 = 0xE800000000000000;
      }

      if (*(v10 + v12 + 32))
      {
        v16 = v14;
      }

      else
      {
        v16 = 1684957547;
      }

      if (*(v10 + v12 + 32))
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      MEMORY[0x1D3868CC0](v16, v17);

      v19 = *(v26 + 16);
      v18 = *(v26 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1CEFE95CC((v18 > 1), v19 + 1, 1);
      }

      ++v12;
      *(v26 + 16) = v19 + 1;
      v20 = v26 + 16 * v19;
      *(v20 + 32) = a1;
      *(v20 + 40) = a2;
      if (v11 == v12)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_24:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v8 = sub_1CF9E67D8();
  v22 = v21;

  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v8, v22, 0xD000000000000037, 0x80000001CFA376C0, isUniquelyReferenced_nonNull_native);

  off_1EDEAE210 = v27;
  swift_endAccess();
  swift_beginAccess();
LABEL_25:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v8;
}

uint64_t sub_1CF207C98(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v3 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v4 = sub_1CEFE4328(0xD000000000000037, 0x80000001CFA37700);
      v6 = v5;

      if (v6)
      {
        v7 = (v3[7] + 16 * v4);
        v8 = *v7;
        v9 = v7[1];
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_25;
      }
    }

    else
    {
    }

    swift_endAccess();
    v10 = sub_1CF1CC164();
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v11, 0);
    v12 = 0;
    while (v12 < v10[2])
    {
      v13 = *(v10 + v12 + 32);
      v14 = 0x64695F6D657469;
      if (v13 != 1)
      {
        v14 = 0x657079745F626F6ALL;
      }

      v15 = 0xE700000000000000;
      if (v13 != 1)
      {
        v15 = 0xE800000000000000;
      }

      if (*(v10 + v12 + 32))
      {
        v16 = v14;
      }

      else
      {
        v16 = 1684957547;
      }

      if (*(v10 + v12 + 32))
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      MEMORY[0x1D3868CC0](v16, v17);

      v19 = *(v26 + 16);
      v18 = *(v26 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1CEFE95CC((v18 > 1), v19 + 1, 1);
      }

      ++v12;
      *(v26 + 16) = v19 + 1;
      v20 = v26 + 16 * v19;
      *(v20 + 32) = a1;
      *(v20 + 40) = a2;
      if (v11 == v12)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_24:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v8 = sub_1CF9E67D8();
  v22 = v21;

  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v8, v22, 0xD000000000000037, 0x80000001CFA37700, isUniquelyReferenced_nonNull_native);

  off_1EDEAE210 = v27;
  swift_endAccess();
  swift_beginAccess();
LABEL_25:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v8;
}

uint64_t sub_1CF2080AC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
LABEL_34:
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEAE208 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v31 = sub_1CF9E82E8();
  v33 = v3;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();
  v4 = off_1EDEAE210;
  if (!*(off_1EDEAE210 + 2))
  {

    goto LABEL_8;
  }

  v5 = sub_1CEFE4328(v31, v33);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_8:
    swift_endAccess();
    v11 = sub_1CF1CC7A8();
    v12 = *(v11 + 2);
    if (!v12)
    {
LABEL_31:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
      v9 = sub_1CF9E67D8();
      v24 = v23;

      v32 = sub_1CF9E82E8();
      v34 = v25;
      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      MEMORY[0x1D3868CC0](a1, a2);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = off_1EDEAE210;
      off_1EDEAE210 = 0x8000000000000000;
      sub_1CF1D19D0(v9, v24, v32, v34, isUniquelyReferenced_nonNull_native);

      off_1EDEAE210 = v29;
      swift_endAccess();
      swift_beginAccess();
      goto LABEL_32;
    }

    v30 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v12, 0);
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v11 + 2))
      {
        __break(1u);
        goto LABEL_34;
      }

      v14 = v11[v13 + 32];
      if (v14 <= 0x1E)
      {
        switch(v14)
        {
          case 0x1Cu:

            v16 = 0xE200000000000000;
            v15 = 25705;
            break;
          case 0x1Du:

            v16 = 0xE900000000000064;
            v15 = 0x695F746E65726170;
            break;
          case 0x1Eu:

            v16 = 0xE800000000000000;
            v15 = 0x656D616E656C6966;
            break;
          default:
            goto LABEL_24;
        }
      }

      else if (v11[v13 + 32] > 0x20u)
      {
        if (v14 == 33)
        {

          v15 = 0x5F746E65746E6F63;
          v16 = 0xEF6E6F6973726576;
          goto LABEL_28;
        }

        if (v14 != 34)
        {
          goto LABEL_24;
        }

        v15 = 0xD000000000000012;
        v16 = 0x80000001CFA2EC40;
      }

      else
      {
        if (v14 == 31)
        {

          v16 = 0xEA00000000006469;
          v15 = 0x656C69665F736676;
          goto LABEL_28;
        }

        if (v14 != 32)
        {
LABEL_24:
          v17 = sub_1CF07FC44(v14);
          v19 = v18;

          MEMORY[0x1D3868CC0](v17, v19);

          v15 = 0x617461646174656DLL;
          v16 = 0xE90000000000005FLL;
          goto LABEL_28;
        }

        v15 = 0xD000000000000010;
        v16 = 0x80000001CFA2EC20;
      }

LABEL_28:
      MEMORY[0x1D3868CC0](v15, v16);

      v21 = *(v30 + 16);
      v20 = *(v30 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1CEFE95CC((v20 > 1), v21 + 1, 1);
      }

      ++v13;
      *(v30 + 16) = v21 + 1;
      v22 = v30 + 16 * v21;
      *(v22 + 32) = a1;
      *(v22 + 40) = a2;
      if (v12 == v13)
      {
        goto LABEL_31;
      }
    }
  }

  v8 = (v4[7] + 16 * v5);
  v9 = *v8;
  v10 = v8[1];
  swift_endAccess();
  swift_beginAccess();

LABEL_32:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v9;
}

uint64_t sub_1CF208628(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
LABEL_34:
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEAE208 != -1)
  {
    swift_once();
  }

  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();
  v3 = off_1EDEAE210;
  if (!*(off_1EDEAE210 + 2))
  {

    goto LABEL_8;
  }

  v4 = sub_1CEFE4328(0xD000000000000016, 0x80000001CFA37760);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_8:
    swift_endAccess();
    v10 = sub_1CF1CBB20();
    v11 = v10[2];
    if (!v11)
    {
LABEL_31:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
      v8 = sub_1CF9E67D8();
      v23 = v22;

      MEMORY[0x1D3868CC0](a1, a2);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = off_1EDEAE210;
      off_1EDEAE210 = 0x8000000000000000;
      sub_1CF1D19D0(v8, v23, 0xD000000000000016, 0x80000001CFA37760, isUniquelyReferenced_nonNull_native);

      off_1EDEAE210 = v27;
      swift_endAccess();
      swift_beginAccess();
      goto LABEL_32;
    }

    v28 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v11, 0);
    v12 = 0;
    while (1)
    {
      if (v12 >= v10[2])
      {
        __break(1u);
        goto LABEL_34;
      }

      v13 = *(v10 + v12 + 32);
      if (v13 <= 0x1E)
      {
        switch(v13)
        {
          case 0x1Cu:

            v15 = 0xE200000000000000;
            v14 = 25705;
            break;
          case 0x1Du:

            v15 = 0xE900000000000064;
            v14 = 0x695F746E65726170;
            break;
          case 0x1Eu:

            v15 = 0xE800000000000000;
            v14 = 0x656D616E656C6966;
            break;
          default:
            goto LABEL_24;
        }
      }

      else if (*(v10 + v12 + 32) > 0x20u)
      {
        if (v13 == 33)
        {

          v14 = 0x5F746E65746E6F63;
          v15 = 0xEF6E6F6973726576;
          goto LABEL_28;
        }

        if (v13 != 34)
        {
          goto LABEL_24;
        }

        v14 = 0xD000000000000012;
        v15 = 0x80000001CFA2EC40;
      }

      else
      {
        if (v13 == 31)
        {

          v15 = 0xEA00000000006469;
          v14 = 0x656C69665F736676;
          goto LABEL_28;
        }

        if (v13 != 32)
        {
LABEL_24:
          v16 = sub_1CF07FC44(v13);
          v18 = v17;

          MEMORY[0x1D3868CC0](v16, v18);

          v14 = 0x617461646174656DLL;
          v15 = 0xE90000000000005FLL;
          goto LABEL_28;
        }

        v14 = 0xD000000000000010;
        v15 = 0x80000001CFA2EC20;
      }

LABEL_28:
      MEMORY[0x1D3868CC0](v14, v15);

      v20 = *(v28 + 16);
      v19 = *(v28 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1CEFE95CC((v19 > 1), v20 + 1, 1);
      }

      ++v12;
      *(v28 + 16) = v20 + 1;
      v21 = v28 + 16 * v20;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      if (v11 == v12)
      {
        goto LABEL_31;
      }
    }
  }

  v7 = (v3[7] + 16 * v4);
  v8 = *v7;
  v9 = v7[1];
  swift_endAccess();
  swift_beginAccess();

LABEL_32:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v8;
}

uint64_t sub_1CF208B88(uint64_t a1, void *a2)
{
  v3 = sub_1CF9E6938();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v8 = sub_1CF9E68C8();
  v10 = v9;

  result = (*(v4 + 8))(v7, v3);
  if (v10 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_1CF9E5B48();
    sub_1CEFE48D8(v8, v10);
    v13 = [a2 bindObjectParameter_];

    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    return v14;
  }

  return result;
}

uint64_t sub_1CF208D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v74 = a5;
  v75 = a3;
  v76 = a4;
  v77 = a1;
  v63 = a2;
  v7 = *v5;
  v8 = *(*v5 + 624);
  v9 = *(*v5 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v58 - v14;
  v72 = *(AssociatedTypeWitness - 8);
  v15 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v58 - v16;
  v17 = *(v7 + 616);
  v18 = *(v7 + 600);
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  *&v78 = v19;
  *(&v78 + 1) = AssociatedTypeWitness;
  v66 = AssociatedConformanceWitness;
  *&v79 = AssociatedConformanceWitness;
  *(&v79 + 1) = v21;
  v64 = v21;
  v22 = type metadata accessor for ReconciliationID();
  v67 = *(v22 - 8);
  v68 = v22;
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v58 - v24;
  v25 = sub_1CF9E75D8();
  v62 = *(v25 - 8);
  v26 = *(v62 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v58 - v28;
  v73 = *(v19 - 8);
  v30 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v58 = &v58 - v31;
  *&v32 = v18;
  *(&v32 + 1) = v9;
  *&v33 = v17;
  *(&v33 + 1) = v8;
  v60 = v33;
  v79 = v33;
  v61 = v32;
  v78 = v32;
  v34 = type metadata accessor for ItemReconciliation();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v58 - v37;
  result = (*(v74 + 8))(v76);
  if (result == 2)
  {
    v78 = v61;
    v79 = v60;
    type metadata accessor for ReconciliationIDObjectCacheValue();
    v40 = v77;
    (*(v35 + 16))(v38, v77, v34);
    v41 = sub_1CF024178(v38, v63);
    v42 = v62;
    (*(v62 + 16))(v29, v40, v25);
    v43 = (*(v73 + 48))(v29, 1, v19);
    v76 = v41;
    if (v43 == 1)
    {
      (*(v42 + 8))(v29, v25);
    }

    else
    {
      v44 = v73;
      v45 = v58;
      (*(v73 + 32))(v58, v29, v19);
      *&v78 = v19;
      *(&v78 + 1) = AssociatedTypeWitness;
      *&v79 = v66;
      *(&v79 + 1) = v64;
      type metadata accessor for ReconciliationIDObject();
      v46 = v65;
      (*(v44 + 16))(v65, v45, v19);
      v47 = v68;
      swift_storeEnumTagMultiPayload();
      v48 = sub_1CF01D170(v46);
      (*(v67 + 8))(v46, v47);
      [*(v6 + *(*v6 + 664)) setObject:v41 forKey:v48];

      (*(v44 + 8))(v45, v19);
    }

    v50 = v70;
    v49 = v71;
    v51 = v69;
    (*(v70 + 16))(v69, v77 + *(v34 + 52), v71);
    v52 = v72;
    if ((*(v72 + 48))(v51, 1, AssociatedTypeWitness) == 1)
    {

      return (*(v50 + 8))(v51, v49);
    }

    else
    {
      v53 = v59;
      (*(v52 + 32))(v59, v51, AssociatedTypeWitness);
      *&v78 = v19;
      *(&v78 + 1) = AssociatedTypeWitness;
      *&v79 = v66;
      *(&v79 + 1) = v64;
      type metadata accessor for ReconciliationIDObject();
      v54 = v65;
      (*(v52 + 16))(v65, v53, AssociatedTypeWitness);
      v55 = v68;
      swift_storeEnumTagMultiPayload();
      v56 = sub_1CF01D170(v54);
      (*(v67 + 8))(v54, v55);
      v57 = *(v6 + *(*v6 + 664));
      [v57 setObject:v76 forKey:v56];

      return (*(v52 + 8))(v53, AssociatedTypeWitness);
    }
  }

  return result;
}