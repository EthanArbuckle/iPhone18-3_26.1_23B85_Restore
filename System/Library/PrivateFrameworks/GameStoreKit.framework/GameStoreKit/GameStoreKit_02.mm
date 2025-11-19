void *sub_24E619DB0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_24E619EE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24E61A050(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v6)
  {
    if (v11 < a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_24E61A1F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_24E61A360(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213838);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24E61A4BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E08);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24E61A664(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139A8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24E61A7BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v14 = MEMORY[0x277D84F90];
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

char *sub_24E61A904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DE8);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_24E61AAAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
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
    v14 = MEMORY[0x277D84F90];
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
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_24E61ACB8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    *(v11 + 3) = 2 * ((v12 - 32) / 72);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[72 * v9])
    {
      memmove(v13, v14, 72 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_24E61AE00(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v14[3] = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[6 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 48 * v12);
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

size_t sub_24E61AF6C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

void *sub_24E61B1A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v14 = MEMORY[0x277D84F90];
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

size_t sub_24E61B320(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_24E61B4FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DE0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_24E61B600(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08() & 1;
  }
}

uint64_t sub_24E61B674(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08() & 1;
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24E61B71C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E61B78C()
{
  result = qword_27F2137A8;
  if (!qword_27F2137A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2137A8);
  }

  return result;
}

unint64_t sub_24E61B7E4()
{
  result = qword_27F2137B0;
  if (!qword_27F2137B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2137B0);
  }

  return result;
}

unint64_t sub_24E61B83C()
{
  result = qword_27F2137B8;
  if (!qword_27F2137B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2137B8);
  }

  return result;
}

unint64_t sub_24E61B894()
{
  result = qword_27F2137C0;
  if (!qword_27F2137C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2137C0);
  }

  return result;
}

uint64_t AddFriendsShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for AddFriendsShelfIntent()
{
  result = qword_27F213E40;
  if (!qword_27F213E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E61BA0C()
{
  if (*v0)
  {
    return 0x726579616C70;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E61BA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E61BB0C(uint64_t a1)
{
  v2 = sub_24E61BD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E61BB48(uint64_t a1)
{
  v2 = sub_24E61BD28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddFriendsShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E61BD28();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for AddFriendsShelfIntent();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E61BD28()
{
  result = qword_27F213E20;
  if (!qword_27F213E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213E20);
  }

  return result;
}

uint64_t AddFriendsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E30);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AddFriendsShelfIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E61BD28();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E61C0A8(v5, v10 + *(v15 + 20));
  sub_24E61C10C(v10, v16, type metadata accessor for AddFriendsShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E61C174(v10);
}

uint64_t sub_24E61C064(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Player(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E61C0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E61C10C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E61C174(uint64_t a1)
{
  v2 = type metadata accessor for AddFriendsShelfIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E61C234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E61C2F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E61C398()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E61C428()
{
  result = qword_27F213E50;
  if (!qword_27F213E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213E50);
  }

  return result;
}

unint64_t sub_24E61C480()
{
  result = qword_27F213E58;
  if (!qword_27F213E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213E58);
  }

  return result;
}

unint64_t sub_24E61C4D8()
{
  result = qword_27F213E60;
  if (!qword_27F213E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213E60);
  }

  return result;
}

uint64_t sub_24E61C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E61C620(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsRatings()
{
  result = qword_27F213E70;
  if (!qword_27F213E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E61C71C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E61C990();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E61C7D0()
{
  if (!qword_27F213E80)
  {
    sub_24F928488();
    v0 = MEMORY[0x277D21B40];
    sub_24E61DA20(&qword_27F213E88, MEMORY[0x277D21B40]);
    sub_24E61DA20(&qword_27F213E90, v0);
    sub_24E61DA20(&qword_27F213E98, v0);
    v1 = sub_24F928FF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F213E80);
    }
  }
}

void sub_24E61C8D4()
{
  if (!qword_27F213EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213EA8);
    v0 = sub_24F928DE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F213EA0);
    }
  }
}

void sub_24E61C938()
{
  if (!qword_27F213EB0)
  {
    sub_24F929608();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F213EB0);
    }
  }
}

void sub_24E61C990()
{
  if (!qword_27F213EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213EC0);
    sub_24E61CA00();
    v0 = sub_24F927EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F213EB8);
    }
  }
}

unint64_t sub_24E61CA00()
{
  result = qword_27F213EC8;
  if (!qword_27F213EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213EC0);
    sub_24E61DA20(&qword_27F213ED0, type metadata accessor for Ratings);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213EC8);
  }

  return result;
}

uint64_t sub_24E61CAB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F20);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for GameDetailsRatings();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 40) = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 9) = 0;
  v27 = v11 + 40;
  sub_24E61DA68(&v30, (v11 + 40), qword_27F21B590);
  v12 = *(v9 + 24);
  v13 = sub_24F929608();
  v14 = *(*(v13 - 8) + 56);
  v29 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E61D91C();
  v16 = v26;
  sub_24F92D108();
  if (v16)
  {
    v17 = v27;
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_24E601704(v17, qword_27F24EC90);
    return sub_24E601704(&v11[v29], &qword_27F213E68);
  }

  else
  {
    v26 = v5;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v33 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v18 = v31;
    *v11 = v30;
    *(v11 + 1) = v18;
    *(v11 + 4) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v33 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v30, v27, qword_27F24EC90);
    LOBYTE(v30) = 2;
    sub_24E61DA20(&qword_27F213F48, MEMORY[0x277D21F70]);
    v19 = v26;
    sub_24F92CC18();
    sub_24E61DA68(v19, &v11[v29], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F50);
    v33 = 3;
    sub_24E602068(&qword_27F213F58, &qword_27F213F50);
    sub_24F92CC68();
    v20 = *(v22 + 28);
    (*(v24 + 8))(v8, v25);
    *&v11[v20] = v30;
    sub_24E61DAD0(v11, v23);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_24E61DB34(v11);
  }
}

unint64_t sub_24E61CFF8()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x73676E69746172;
  }

  if (*v0)
  {
    v1 = 0x6575676573;
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

uint64_t sub_24E61D068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E61DF54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E61D09C(uint64_t a1)
{
  v2 = sub_24E61D91C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E61D0D8(uint64_t a1)
{
  v2 = sub_24E61D91C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E61D114@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_24E61D16C@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 40, v5, qword_27F24EC90);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

unint64_t sub_24E61D264()
{
  result = qword_27F213ED8;
  if (!qword_27F213ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213ED8);
  }

  return result;
}

uint64_t sub_24E61D2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F00);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = *(a1 + *(type metadata accessor for GameDetailsRatings() + 28));
  if (v7)
  {

    v8 = sub_24F9249A8();
    v29 = 0;
    sub_24E61D584(v7, &v22);
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v30 = v22;
    v31 = v23;
    v37 = v27;
    v36[2] = v24;
    v36[3] = v25;
    v36[4] = v26;
    v36[0] = v22;
    v36[1] = v23;
    sub_24E60169C(&v30, &v21, &qword_27F213F08);
    sub_24E601704(v36, &qword_27F213F08);
    *&v28[39] = v32;
    *&v28[55] = v33;
    *&v28[71] = v34;
    v28[87] = v35;
    *&v28[7] = v30;
    *&v28[23] = v31;
    v9 = v29;
    v10 = sub_24F9251C8();

    v11 = &v6[*(v4 + 36)];
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v13 = *MEMORY[0x277CE13B8];
    v14 = sub_24F927748();
    (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
    *v11 = v10;
    v15 = *&v28[48];
    *(v6 + 49) = *&v28[32];
    *(v6 + 65) = v15;
    *(v6 + 81) = *&v28[64];
    v16 = *&v28[16];
    *(v6 + 17) = *v28;
    *v6 = v8;
    *(v6 + 1) = 0x4040000000000000;
    v6[16] = v9;
    *(v6 + 97) = *&v28[80];
    *(v6 + 33) = v16;
    sub_24E61D8AC(v6, a2);
    return (*(v20 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v18 = *(v20 + 56);

    return v18(a2, 1, 1, v4);
  }
}

uint64_t sub_24E61D584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage);
  v18 = sub_24F9259D8();
  _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000013, 0x800000024FA451B0, *(a1 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings));
  sub_24E600AEC();
  v5 = sub_24F925E18();
  v7 = v6;
  v9 = v8;
  sub_24F925898();
  v10 = sub_24F925C98();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_24E600B40(v5, v7, v9 & 1);

  *a2 = v4;
  *(a2 + 8) = 5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x4008000000000000;
  *(a2 + 32) = v18;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14 & 1;
  *(a2 + 64) = v16;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;

  sub_24E5FD138(v10, v12, v14 & 1);

  sub_24E600B40(v10, v12, v14 & 1);
}

uint64_t sub_24E61D71C()
{
  sub_24E61D264();

  return sub_24F9218E8();
}

unint64_t sub_24E61D7AC()
{
  result = qword_27F213EE8;
  if (!qword_27F213EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213EE8);
  }

  return result;
}

uint64_t sub_24E61D8AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E61D91C()
{
  result = qword_27F213F28;
  if (!qword_27F213F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213F28);
  }

  return result;
}

unint64_t sub_24E61D970()
{
  result = qword_27F213F38;
  if (!qword_27F213F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F24EC90);
    sub_24E602068(&qword_27F213F40, &qword_27F213EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213F38);
  }

  return result;
}

uint64_t sub_24E61DA20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E61DA68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E61DAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsRatings();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E61DB34(uint64_t a1)
{
  v2 = type metadata accessor for GameDetailsRatings();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for GameDetailsRatings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GameDetailsRatings.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E61DCE4()
{
  result = qword_27F213F60;
  if (!qword_27F213F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F68);
    sub_24E61DD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213F60);
  }

  return result;
}

unint64_t sub_24E61DD68()
{
  result = qword_27F213F70;
  if (!qword_27F213F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F00);
    sub_24E602068(&qword_27F213F78, &qword_27F213F80);
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213F70);
  }

  return result;
}

unint64_t sub_24E61DE50()
{
  result = qword_27F213F98;
  if (!qword_27F213F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213F98);
  }

  return result;
}

unint64_t sub_24E61DEA8()
{
  result = qword_27F213FA0;
  if (!qword_27F213FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213FA0);
  }

  return result;
}

unint64_t sub_24E61DF00()
{
  result = qword_27F213FA8;
  if (!qword_27F213FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213FA8);
  }

  return result;
}

uint64_t sub_24E61DF54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73676E69746172 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t getEnumTagSinglePayload for GameDetailsMediaItemComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24E61E188(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24E61E32C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_24E61E4DC()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61E670(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v2 <= 0x3F)
      {
        sub_24E61E670(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
        if (v3 <= 0x3F)
        {
          sub_24E61E670(319, &qword_27F213FD8, type metadata accessor for GSKVideo);
          if (v4 <= 0x3F)
          {
            type metadata accessor for MediaPlatform();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E61E628(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E61E670(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E61E6C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GameDetailsMediaItem(0);
  sub_24E60169C(v1 + *(v10 + 32), v5, &qword_27F213FB8);
  v11 = type metadata accessor for GSKVideo();
  if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
  {
    sub_24E601704(v5, &qword_27F213FB8);
    return sub_24E60169C(v1 + *(v10 + 28), a1, &qword_27F213FB0);
  }

  else
  {
    (*(v7 + 16))(v9, &v5[*(v11 + 20)], v6);
    sub_24E621048(v5, type metadata accessor for GSKVideo);
    (*(v7 + 32))(a1, v9, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

BOOL sub_24E61E8FC()
{
  v1 = sub_24F922348();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = type metadata accessor for GameDetailsMediaItem(0);
  sub_24E60169C(v0 + v16[8], v5, &qword_27F213FB8);
  v17 = type metadata accessor for GSKVideo();
  if ((*(*(v17 - 8) + 48))(v5, 1, v17) == 1)
  {
    sub_24E601704(v5, &qword_27F213FB8);
    sub_24E60169C(v0 + v16[7], v8, &qword_27F213FB0);
  }

  else
  {
    (*(v10 + 16))(v13, &v5[*(v17 + 20)], v9);
    sub_24E621048(v5, type metadata accessor for GSKVideo);
    (*(v10 + 32))(v8, v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F213FB0);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    if (*(v0 + v16[11]) == 1)
    {
      sub_24F921BE8();
      v18 = v25;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      sub_24F9222C8();
      v20 = v19;
      sub_24F922338();
      v22 = v21;
      (*(v26 + 8))(v18, v27);
      (*(v10 + 8))(v15, v9);
      return v20 >= v22;
    }

    (*(v10 + 8))(v15, v9);
  }

  return 0;
}

uint64_t sub_24E61ED14@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9218F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + *(type metadata accessor for GameDetailsMediaItem(0) + 40)) == 1)
  {
    v14 = sub_24E6B00B4(*a1);
    if (v14 > 5)
    {
      *v13 = 1;
      if (v14 - 6 >= 2)
      {
        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        sub_24F9222C8();
        v37 = v36;
        sub_24F922338();
        v39 = v38;
        (*(v7 + 8))(v9, v6);
        v29 = v37 < v39;
        v30 = 5.4;
        v31 = 4.0;
      }

      else
      {
        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        sub_24F9222C8();
        v26 = v25;
        sub_24F922338();
        v28 = v27;
        (*(v7 + 8))(v9, v6);
        v29 = v26 < v28;
        v30 = 4.4;
        v31 = 3.0;
      }
    }

    else
    {
      if (v14 < 3)
      {
        *v13 = 1;
        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        sub_24F9222C8();
        v16 = v15;
        sub_24F922338();
        v18 = v17;
        (*(v7 + 8))(v9, v6);
        if (v16 >= v18)
        {
          v19 = 1.0;
        }

        else
        {
          v19 = 1.4;
        }

LABEL_17:
        v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
        *&v13[v40] = v19;
        v41 = *MEMORY[0x277D7EB60];
        v42 = sub_24F9219E8();
        (*(*(v42 - 8) + 104))(&v13[v40], v41, v42);
        (*(v11 + 104))(v13, *MEMORY[0x277D7EB20], v10);
        return (*(v11 + 32))(a2, v13, v10);
      }

      *v13 = 1;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      sub_24F9222C8();
      v33 = v32;
      sub_24F922338();
      v35 = v34;
      (*(v7 + 8))(v9, v6);
      v29 = v33 < v35;
      v30 = 3.4;
      v31 = 2.0;
    }

    if (v29)
    {
      v19 = v30;
    }

    else
    {
      v19 = v31;
    }

    goto LABEL_17;
  }

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222C8();
  v21 = v20;
  sub_24F922338();
  v23 = v22;
  (*(v7 + 8))(v9, v6);
  if (v21 >= v23)
  {
    return sub_24E61F528(a1, a2);
  }

  else
  {
    return sub_24E61F118(a1, a2);
  }
}

uint64_t sub_24E61F118@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v34 = sub_24F922348();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  v12 = a1[1];
  v13 = *(type metadata accessor for ShelfLayoutEnvironment() + 28);
  v14 = sub_24F923E98();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 1, 1, v14);
  v15(v9, 1, 1, v14);
  v32[0] = v13;
  v16 = sub_24EF13DC0(v11, v9);
  sub_24E601704(v9, &qword_27F2140C0);
  sub_24E601704(v11, &qword_27F2140C0);
  type metadata accessor for GameDetailsMediaItem(0);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v18 = v17;
  v19 = *(v3 + 8);
  v32[1] = v3 + 8;
  v19(v5, v34);
  if (*a1 - (a1[2] + a1[2]) >= (v12 - (v16 + v16)) * v18)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
    v23 = v33;
    *v33 = 1;
    v15(v11, 1, 1, v14);
    v15(v9, 1, 1, v14);
    v20 = v23;
    v24 = sub_24EF13DC0(v11, v9);
    sub_24E601704(v9, &qword_27F2140C0);
    sub_24E601704(v11, &qword_27F2140C0);
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v26 = v25;
    v19(v5, v34);
    *&v23[v22] = (v12 - (v24 + v24)) * v26;
    v27 = *MEMORY[0x277D7EB58];
    v28 = sub_24F9219E8();
    (*(*(v28 - 8) + 104))(&v20[v22], v27, v28);
    v21 = MEMORY[0x277D7EB20];
  }

  else
  {
    v20 = v33;
    *v33 = 1;
    v21 = MEMORY[0x277D7EB30];
  }

  v29 = *v21;
  v30 = sub_24F9218F8();
  return (*(*(v30 - 8) + 104))(v20, v29, v30);
}

uint64_t sub_24E61F528@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_24F922348();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1 - (a1[2] + a1[2]);
  type metadata accessor for GameDetailsMediaItem(0);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222D8();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  v17 = v14 * v16;
  v18 = a1[1];
  type metadata accessor for ShelfLayoutEnvironment();
  v19 = sub_24F923E98();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  v21 = sub_24EF13DC0(v9, v7);
  sub_24E601704(v7, &qword_27F2140C0);
  sub_24E601704(v9, &qword_27F2140C0);
  if (v18 - (v21 + v21) < v17)
  {
    return sub_24E61F118(a1, a2);
  }

  *a2 = 1;
  v23 = *MEMORY[0x277D7EB30];
  v24 = sub_24F9218F8();
  return (*(*(v24 - 8) + 104))(a2, v23, v24);
}

unint64_t sub_24E61F7E4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0xD000000000000011;
    if (a1 != 2)
    {
      v6 = 0x68736E6565726373;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x6152746365707361;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6F65646976;
    if (a1 != 4)
    {
      v3 = 0x6D726F6674616C70;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E61F90C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E620E3C();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v9 = type metadata accessor for GameDetailsMediaItem(0);
    LOBYTE(v12) = 2;
    sub_24F929608();
    sub_24E61E628(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    LOBYTE(v12) = 3;
    sub_24F9289E8();
    sub_24E61E628(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    LOBYTE(v12) = 4;
    type metadata accessor for GSKVideo();
    sub_24E61E628(&qword_27F214068, type metadata accessor for GSKVideo);
    sub_24F92CCF8();
    v12 = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    type metadata accessor for MediaPlatform();
    sub_24E61E628(&qword_27F214070, type metadata accessor for MediaPlatform);
    sub_24F92CD48();
    LOBYTE(v12) = 6;
    sub_24F92CD18();
    LOBYTE(v12) = 7;
    sub_24F92CD18();
    v12 = *(v3 + *(v9 + 48));
    HIBYTE(v11) = 8;
    sub_24E620F7C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E61FD9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214008);
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for GameDetailsMediaItem(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v38 = v16 + 40;
  sub_24E61DA68(&v42, (v16 + 40), qword_27F21B590);
  v39 = v14;
  v17 = *(v14 + 24);
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v41 = v17;
  v20 = v16;
  v19(&v16[v17], 1, 1, v18);
  v21 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24E620E3C();
  v22 = v37;
  sub_24F92D108();
  if (v22)
  {
    v24 = v38;
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_24E601704(v24, qword_27F24EC90);
    return sub_24E601704(v20 + v41, &qword_27F213E68);
  }

  else
  {
    v37 = v10;
    v32 = v7;
    v23 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v45 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v25 = v43;
    *v20 = v42;
    *(v20 + 16) = v25;
    *(v20 + 32) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v45 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v26 = v23;
    sub_24E61DA68(&v42, v38, qword_27F24EC90);
    LOBYTE(v42) = 2;
    sub_24E61E628(&qword_27F213F48, MEMORY[0x277D21F70]);
    v27 = v37;
    sub_24F92CC18();
    sub_24E61DA68(v27, v20 + v41, &qword_27F213E68);
    sub_24F9289E8();
    LOBYTE(v42) = 3;
    sub_24E61E628(&qword_27F214018, MEMORY[0x277D21C48]);
    v28 = v32;
    sub_24F92CC18();
    v29 = v39;
    sub_24E6009C8(v28, v20 + v39[7], &qword_27F213FB0);
    type metadata accessor for GSKVideo();
    LOBYTE(v42) = 4;
    sub_24E61E628(&qword_27F214020, type metadata accessor for GSKVideo);
    v30 = v34;
    sub_24F92CC18();
    sub_24E6009C8(v30, v20 + v29[8], &qword_27F213FB8);
    type metadata accessor for MediaPlatform();
    v45 = 5;
    sub_24E61E628(&qword_27F214028, type metadata accessor for MediaPlatform);
    sub_24F92CC68();
    *(v20 + v29[9]) = v42;
    LOBYTE(v42) = 6;
    *(v20 + v29[10]) = sub_24F92CC38() & 1;
    LOBYTE(v42) = 7;
    *(v20 + v29[11]) = sub_24F92CC38() & 1;
    v45 = 8;
    sub_24E620E90();
    sub_24F92CC68();
    (*(v26 + 8))(v13, v36);
    *(v20 + v29[12]) = v42;
    sub_24E6235A4(v20, v33, type metadata accessor for GameDetailsMediaItem);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_24E621048(v20, type metadata accessor for GameDetailsMediaItem);
  }
}

uint64_t sub_24E620694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6232BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6206C8(uint64_t a1)
{
  v2 = sub_24E620E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E620704(uint64_t a1)
{
  v2 = sub_24E620E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E6207C4()
{
  result = qword_27F213FE0;
  if (!qword_27F213FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213FE0);
  }

  return result;
}

uint64_t sub_24E620818@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GameDetailsMediaItemView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214088);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33[-1] - v11;
  sub_24E6235A4(a1, v8, type metadata accessor for GameDetailsMediaItem);
  v8[*(v6 + 20)] = a2;
  sub_24E61E628(&qword_27F214090, type metadata accessor for GameDetailsMediaItemView);
  sub_24F926B78();
  sub_24E621048(v8, type metadata accessor for GameDetailsMediaItemView);
  v13 = type metadata accessor for MediaItemShape(0);
  v33[3] = v13;
  v33[4] = sub_24E61E628(&qword_27F214080, type metadata accessor for MediaItemShape);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_24E6235A4(a1, boxed_opaque_existential_1, type metadata accessor for GameDetailsMediaItem);
  *(boxed_opaque_existential_1 + *(v13 + 20)) = a2;
  *(boxed_opaque_existential_1 + *(v13 + 24)) = 0;
  sub_24E60169C(v33, a3, &qword_27F214098);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140A0);
  (*(v10 + 16))(a3 + v15[9], v12, v9);
  v16 = a3 + v15[10];
  *v16 = sub_24F923398() & 1;
  *(v16 + 8) = v17;
  *(v16 + 16) = v18 & 1;
  v19 = a3 + v15[11];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v20 = qword_27F24E488;
  v21 = sub_24F923398();
  v23 = v22;
  v25 = v24;
  v26 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140A8) + 36);
  *v26 = v20;
  *(v26 + 8) = v21 & 1;
  *(v26 + 16) = v23;
  *(v26 + 24) = v25 & 1;
  LOBYTE(v20) = sub_24F923398();
  v28 = v27;
  LOBYTE(v23) = v29;
  sub_24E601704(v33, &qword_27F214098);
  (*(v10 + 8))(v12, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B0);
  v31 = a3 + *(result + 36);
  *v31 = v20 & 1;
  *(v31 + 8) = v28;
  *(v31 + 16) = v23 & 1;
  return result;
}

uint64_t sub_24E620BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for MediaItemShape(0);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 64) = v6;
  *(a2 + 72) = sub_24E61E628(&qword_27F214080, type metadata accessor for MediaItemShape);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 40));
  result = sub_24E6235A4(a1, boxed_opaque_existential_1, type metadata accessor for GameDetailsMediaItem);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = 0;
  return result;
}

unint64_t sub_24E620D2C()
{
  result = qword_27F213FF0;
  if (!qword_27F213FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213FF0);
  }

  return result;
}

unint64_t sub_24E620DE8()
{
  result = qword_27F214000;
  if (!qword_27F214000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214000);
  }

  return result;
}

unint64_t sub_24E620E3C()
{
  result = qword_27F214010;
  if (!qword_27F214010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214010);
  }

  return result;
}

unint64_t sub_24E620E90()
{
  result = qword_27F214030;
  if (!qword_27F214030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214030);
  }

  return result;
}

uint64_t sub_24E620EE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F24EC90);
    sub_24E602068(a2, &qword_27F213EA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E620F7C()
{
  result = qword_27F214078;
  if (!qword_27F214078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214078);
  }

  return result;
}

uint64_t sub_24E621010(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E621048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E6210A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for GameDetailsMediaItemView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_24E6235A4(v2, &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsMediaItemView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_24E624130(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for GameDetailsMediaItemView);
  type metadata accessor for GameDetailsMediaItem(0);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v15 = sub_24F922348();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v9, 0, 1, v15);
  sub_24E60169C(v9, v7, &qword_27F214148);
  v17 = (*(v16 + 48))(v7, 1, v15);
  if (v17 == 1)
  {
    sub_24E601704(v9, &qword_27F214148);
    result = sub_24E601704(v7, &qword_27F214148);
    v19 = 0;
  }

  else
  {
    sub_24F9222E8();
    v19 = v20;
    sub_24E601704(v9, &qword_27F214148);
    result = (*(v16 + 8))(v7, v15);
  }

  *a1 = sub_24E62396C;
  *(a1 + 8) = v14;
  *(a1 + 16) = v19;
  *(a1 + 24) = v17 == 1;
  *(a1 + 25) = 0;
  return result;
}

uint64_t sub_24E621390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214150);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  sub_24E621598(a2, a1, v29 - v8);
  sub_24F923998();
  sub_24F923998();
  sub_24F927618();
  sub_24F9238C8();
  v10 = &v9[*(v7 + 44)];
  v11 = v29[1];
  *v10 = v29[0];
  *(v10 + 1) = v11;
  *(v10 + 2) = v29[2];
  sub_24F923998();
  v13 = v12;
  v15 = v14;
  v16 = *(a2 + *(type metadata accessor for GameDetailsMediaItemView(0) + 20));
  v17 = type metadata accessor for GameDetailsMediaItem(0);
  v18 = 26.0;
  if (*(a2 + *(v17 + 40)) == 1 && v16 != 0)
  {
    v20 = *(a2 + *(v17 + 36));
    v21 = *(v20 + 48);
    v22 = *(v20 + 56);
    if (v15 >= v13)
    {
      v23 = v13;
    }

    else
    {
      v23 = v15;
    }

    v24 = v23 * v21;
    if (v22)
    {
      v24 = 7.0;
    }

    v18 = fmax(v24, 7.0);
  }

  v25 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214158) + 36);
  v26 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v27 = type metadata accessor for GradientBackground(0);
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  *(v25 + 16) = v18;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 41) = v16 ^ 1;
  return sub_24E6239F4(v9, a3);
}

uint64_t sub_24E621598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a2;
  v126 = a3;
  v127 = a1;
  v3 = sub_24F922348();
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v95 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v99 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v100 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v104 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v9;
  MEMORY[0x28223BE20](v8);
  v98 = &v95 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214160);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v95 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214168);
  MEMORY[0x28223BE20](v125);
  v108 = &v95 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214170);
  MEMORY[0x28223BE20](v123);
  v124 = &v95 - v13;
  v14 = sub_24F925508();
  v120 = *(v14 - 8);
  v121 = v14;
  MEMORY[0x28223BE20](v14);
  v119 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v110);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214178);
  MEMORY[0x28223BE20](v113);
  v112 = &v95 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214180);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v111 = &v95 - v19;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214188);
  MEMORY[0x28223BE20](v122);
  v115 = &v95 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v95 - v22;
  v24 = sub_24F9289E8();
  v118 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v96 = v26;
  v97 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v117 = &v95 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v95 - v29;
  v31 = type metadata accessor for GSKVideo();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GameDetailsMediaItem(0);
  sub_24E60169C(v127 + *(v35 + 32), v30, &qword_27F213FB8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_24E601704(v30, &qword_27F213FB8);
    sub_24E61E6C4(v23);
    v36 = v118;
    if ((*(v118 + 48))(v23, 1, v24) == 1)
    {
      sub_24E601704(v23, &qword_27F213FB0);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214190);
      return (*(*(v37 - 8) + 56))(v126, 1, 1, v37);
    }

    v62 = v117;
    v114 = *(v36 + 32);
    v115 = (v36 + 32);
    (v114)(v117, v23, v24);
    if (sub_24E61E8FC())
    {
      v63 = v95;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      sub_24F922338();
      sub_24F9222C8();
      v64 = v99;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      v65 = v102;
      v66 = v63;
      v67 = v103;
      (*(v102 + 8))(v66, v103);
    }

    else
    {
      v64 = v99;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      v65 = v102;
      v67 = v103;
    }

    v68 = v98;
    (*(v65 + 32))(v98, v64, v67);
    (*(v65 + 56))(v68, 0, 1, v67);
    v113 = *MEMORY[0x277CEE240];
    v69 = v97;
    (*(v36 + 16))(v97, v62, v24);
    v70 = v24;
    v71 = v104;
    sub_24E6009C8(v68, v104, &qword_27F214148);
    v72 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v73 = (v96 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = (*(v100 + 80) + v73 + 8) & ~*(v100 + 80);
    v75 = v74 + v101;
    v76 = swift_allocObject();
    v116 = v70;
    (v114)(v76 + v72, v69, v70);
    v77 = v113;
    *(v76 + v73) = v113;
    sub_24E6009C8(v71, v76 + v74, &qword_27F214148);
    *(v76 + v75) = 1;
    v78 = v77;
    sub_24F923998();
    sub_24E61E8FC();
    sub_24F923998();
    sub_24E61E8FC();
    sub_24F927618();
    sub_24F9238C8();
    v79 = v140;
    v80 = v141;
    v81 = v142;
    v82 = v143;
    v83 = v144;
    v84 = v145;
    if (sub_24E61E8FC())
    {
      v85 = -1.57079633;
    }

    else
    {
      v85 = 0.0;
    }

    v137 = v80;
    v136 = v82;
    sub_24F9278A8();
    *&v130 = sub_24E623C20;
    *(&v130 + 1) = v76;
    *&v131 = v79;
    BYTE8(v131) = v137;
    *&v132 = v81;
    BYTE8(v132) = v136;
    *&v133 = v83;
    *(&v133 + 1) = v84;
    *&v134 = v85;
    *(&v134 + 1) = v86;
    v135 = v87;
    v88 = v119;
    sub_24F9254D8();
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214198);
    v90 = sub_24E623D40();
    v91 = v106;
    sub_24F926678();
    (*(v120 + 8))(v88, v121);
    v138[3] = v133;
    v138[4] = v134;
    v139 = v135;
    v138[0] = v130;
    v138[1] = v131;
    v138[2] = v132;
    sub_24E601704(v138, &qword_27F214198);
    if (qword_27F211780 != -1)
    {
      swift_once();
    }

    v130 = xmmword_27F39EFC8;
    v128 = v89;
    v129 = v90;
    swift_getOpaqueTypeConformance2();
    sub_24E600AEC();
    v93 = v108;
    v92 = v109;
    sub_24F926538();
    (*(v107 + 8))(v91, v92);
    sub_24E60169C(v93, v124, &qword_27F214168);
    swift_storeEnumTagMultiPayload();
    sub_24E623E84();
    sub_24E624038();
    v61 = v126;
    sub_24F924E28();
    sub_24E601704(v93, &qword_27F214168);
    (*(v118 + 8))(v117, v116);
  }

  else
  {
    v39 = v30;
    v40 = v34;
    sub_24E624130(v39, v34, type metadata accessor for GSKVideo);
    sub_24E6235A4(v34, v17, type metadata accessor for GSKVideo);
    v41 = v110;
    v42 = *(v110 + 20);
    v43 = type metadata accessor for VideoConfiguration();
    (*(*(v43 - 8) + 56))(&v17[v42], 1, 1, v43);
    v44 = sub_24F9238D8();
    v45 = &v17[v41[12]];
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24E61E628(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    *v45 = sub_24F9243D8();
    v45[1] = v46;
    v17[v41[9]] = 0;
    *&v17[v41[10]] = v44;
    v17[v41[11]] = 0;
    *&v17[v41[6]] = 0x3FE8000000000000;
    *&v17[v41[7]] = 0x3FE0000000000000;
    v47 = &v17[v41[8]];
    *(v47 + 2) = 0u;
    *(v47 + 3) = 0u;
    *v47 = 0u;
    *(v47 + 1) = 0u;
    *(v47 + 32) = 5;
    if (sub_24E61E8FC())
    {
      v48 = -1.57079633;
    }

    else
    {
      v48 = 0.0;
    }

    sub_24F9278A8();
    v50 = v49;
    v52 = v51;
    v53 = v112;
    sub_24E624130(v17, v112, type metadata accessor for GSKVideoView);
    v54 = v113;
    v55 = v53 + *(v113 + 36);
    *v55 = v48;
    *(v55 + 8) = v50;
    *(v55 + 16) = v52;
    v56 = v119;
    sub_24F9254E8();
    v57 = sub_24E623F7C();
    v58 = v111;
    sub_24F926678();
    (*(v120 + 8))(v56, v121);
    sub_24E601704(v53, &qword_27F214178);
    if (qword_27F211778 != -1)
    {
      swift_once();
    }

    v138[0] = xmmword_27F39EFB8;
    *&v130 = v54;
    *(&v130 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    sub_24E600AEC();
    v60 = v115;
    v59 = v116;
    sub_24F926538();
    (*(v114 + 8))(v58, v59);
    sub_24E60169C(v60, v124, &qword_27F214188);
    swift_storeEnumTagMultiPayload();
    sub_24E623E84();
    sub_24E624038();
    v61 = v126;
    sub_24F924E28();
    sub_24E601704(v60, &qword_27F214188);
    sub_24E621048(v40, type metadata accessor for GSKVideo);
  }

  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214190);
  return (*(*(v94 - 8) + 56))(v61, 0, 1, v94);
}

double sub_24E622564@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_24F924B38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MediaItemShape(0);
  type metadata accessor for GameDetailsMediaItem(0);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v16 = *(v5 + *(v15 + 24));
  CGRectInset(v23, v16, v16);
  (*(v12 + 104))(v14, *MEMORY[0x277CE0118], v11);
  sub_24F925AD8();
  result = *&v20;
  v18 = v21;
  *a1 = v20;
  *(a1 + 16) = v18;
  *(a1 + 32) = v22;
  return result;
}

double sub_24E62272C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  sub_24E6235A4(v5, a2, type metadata accessor for MediaItemShape);
  v8 = *(a1 + 24);
  result = *(a2 + v8) + a3;
  *(a2 + v8) = result;
  return result;
}

double sub_24E62278C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24E622564(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24E6227F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

void sub_24E622878(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24E6228C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E61E628(&qword_27F214130, type metadata accessor for MediaItemShape);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24E622958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E61E628(&qword_27F214130, type metadata accessor for MediaItemShape);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24E6229EC(uint64_t a1)
{
  v2 = sub_24E61E628(&qword_27F214130, type metadata accessor for MediaItemShape);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24E622AA0()
{
  result = type metadata accessor for GameDetailsMediaItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameDetailsMediaItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameDetailsMediaItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameDetailsMediaItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameDetailsMediaItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24E622E20()
{
  result = type metadata accessor for GameDetailsMediaItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E622E98()
{
  result = qword_27F2140E8;
  if (!qword_27F2140E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2140B0);
    sub_24E622F24();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2140E8);
  }

  return result;
}

unint64_t sub_24E622F24()
{
  result = qword_27F2140F0;
  if (!qword_27F2140F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2140A8);
    sub_24E602068(&qword_27F2140F8, &qword_27F2140A0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2140F0);
  }

  return result;
}

unint64_t sub_24E622FE0()
{
  result = qword_27F214100;
  if (!qword_27F214100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214100);
  }

  return result;
}

unint64_t sub_24E62307C()
{
  result = qword_27F214118;
  if (!qword_27F214118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214118);
  }

  return result;
}

unint64_t sub_24E623210()
{
  result = qword_27F214138;
  if (!qword_27F214138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214138);
  }

  return result;
}

unint64_t sub_24E623268()
{
  result = qword_27F214140;
  if (!qword_27F214140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214140);
  }

  return result;
}

uint64_t sub_24E6232BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEA0000000000746FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA451F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA45210 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24E6235A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E62360C()
{
  v1 = *(type metadata accessor for GameDetailsMediaItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  }

  v3 = type metadata accessor for GameDetailsMediaItem(0);
  v4 = v3[6];
  v5 = sub_24F929608();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = v3[7];
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v10 = v2 + v3[8];
  v11 = type metadata accessor for GSKVideo();
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v12 = sub_24F91F4A8();
    (*(*(v12 - 8) + 8))(v10, v12);
    (*(v9 + 8))(v10 + v11[5], v8);
    v13 = v11[9];
    v14 = sub_24F928698();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (!v16(v10 + v13, 1, v14))
    {
      (*(v15 + 8))(v10 + v13, v14);
    }

    v17 = v11[10];
    if (!v16(v10 + v17, 1, v14))
    {
      (*(v15 + 8))(v10 + v17, v14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24E62396C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GameDetailsMediaItemView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E621390(a1, v6, a2);
}

uint64_t sub_24E6239F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E623A64()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24E623C20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24F9289E8() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = v1 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_24F728728(v6, v7, a1);
}

unint64_t sub_24E623D40()
{
  result = qword_27F2141A0;
  if (!qword_27F2141A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214198);
    sub_24E623DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2141A0);
  }

  return result;
}

unint64_t sub_24E623DCC()
{
  result = qword_27F2141A8;
  if (!qword_27F2141A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2141B0);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2141A8);
  }

  return result;
}

unint64_t sub_24E623E84()
{
  result = qword_27F2141C8;
  if (!qword_27F2141C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214178);
    sub_24E623F7C();
    swift_getOpaqueTypeConformance2();
    sub_24E61E628(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2141C8);
  }

  return result;
}

unint64_t sub_24E623F7C()
{
  result = qword_27F2141D0;
  if (!qword_27F2141D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214178);
    sub_24E61E628(&qword_27F2141D8, type metadata accessor for GSKVideoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2141D0);
  }

  return result;
}

unint64_t sub_24E624038()
{
  result = qword_27F2141E8;
  if (!qword_27F2141E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214198);
    sub_24E623D40();
    swift_getOpaqueTypeConformance2();
    sub_24E61E628(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2141E8);
  }

  return result;
}

uint64_t sub_24E624130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E62419C()
{
  result = qword_27F2141F8;
  if (!qword_27F2141F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214200);
    sub_24E602068(&qword_27F214208, qword_27F214210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2141F8);
  }

  return result;
}

uint64_t sub_24E62425C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for InvitePlayersToMultiplayerActivityAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24E6257C8(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InvitePlayersToMultiplayerActivityAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24E6277B8(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for InvitePlayersToMultiplayerActivityAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F93C688;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24E6244B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for Player(0);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E624548, 0, 0);
}

uint64_t sub_24E624548()
{
  *(v0 + 96) = sub_24F92B7F8();
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E6245E0, v2, v1);
}

uint64_t sub_24E6245E0()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24E624668, 0, 0);
}

uint64_t sub_24E624668()
{
  *(v0 + 120) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E6246F4, v2, v1);
}

uint64_t sub_24E6246F4()
{
  v1 = v0[14];
  v2 = v0[11];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E625780(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E6257C8(v1 + v3, v2, type metadata accessor for Player);

  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_24E624858;
  v5 = v0[9];

  return sub_24E625830(v5);
}

uint64_t sub_24E624858(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return MEMORY[0x2822009F8](sub_24E624958, 0, 0);
}

uint64_t sub_24E624958()
{
  v1 = v0[9];
  v0[19] = *v1;
  v0[20] = v1[1];
  v2 = type metadata accessor for InvitePlayersToMultiplayerActivityAction();
  v0[21] = v2;
  v3 = *(v2 + 40);
  v0[22] = v1[2];
  v0[23] = v1[3];
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_24E624A2C;
  v5 = v0[17];
  v6 = v0[8];

  return sub_24E625C50(v1 + v3, v5, v6);
}

uint64_t sub_24E624A2C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 72);
  v4 = *v0;

  v5 = *(v2 + 36);
  v6 = swift_task_alloc();
  v1[25] = v6;
  *v6 = v4;
  v6[1] = sub_24E624C4C;
  v7 = v1[23];
  v8 = v1[22];
  v9 = v1[20];
  v10 = v1[19];
  v11 = v1[18];

  return sub_24E626BCC(v10, v9, v3 + v5, v8, v7, v11);
}

uint64_t sub_24E624C4C()
{

  return MEMORY[0x2822009F8](sub_24E624D64, 0, 0);
}

uint64_t sub_24E624D64()
{
  v1 = v0[7];
  sub_24E627820(v0[11], type metadata accessor for Player);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

void sub_24E624E3C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_24F91F3B8();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_24E627970;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  [a2 startFetchingMetadataForURL:v8 completionHandler:v11];
  _Block_release(v11);
}

void sub_24E625000(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B0);
    sub_24F92B798();
  }

  else if (a2)
  {
    v4 = a2;
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8B0);
    v6 = a2;
    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Link metadata fetching didn't succeed: %@.", v9, 0xCu);
      sub_24E601704(v10, &qword_27F227B20);
      MEMORY[0x2530542D0](v10, -1, -1);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B0);
    sub_24F92B798();
  }
}

void sub_24E6251C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24E6252C4()
{
  v1 = type metadata accessor for InvitePlayersToMultiplayerActivityAction();
  v2 = *(*(v1 - 1) + 80);

  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = v3 + v1[6];

  v5 = *(type metadata accessor for GameActivityDraftGameInfo(0) + 28);
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);

  v9 = v3 + v1[9];
  v10 = type metadata accessor for ActivityDefinitionDetail();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 32);
    if (!(*(v7 + 48))(v9 + v11, 1, v6))
    {
      v8(v9 + v11, v6);
    }

    v12 = *(v10 + 56);
    v13 = sub_24F920818();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v9 + v12, 1, v13))
    {
      (*(v14 + 8))(v9 + v12, v13);
    }
  }

  v15 = v1[10];
  v16 = sub_24F920418();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v3 + v15, v16);
  }

  v18 = v1[11];
  v19 = sub_24F928AD8();
  (*(*(v19 - 8) + 8))(v3 + v18, v19);

  return swift_deallocObject();
}

uint64_t sub_24E62563C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for InvitePlayersToMultiplayerActivityAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E6244B4(a1, v7, v1 + v6, v4);
}

uint64_t sub_24E625730()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E625780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E6257C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E625850()
{
  v1 = *(v0 + 232);
  v2 = type metadata accessor for InvitePlayersToMultiplayerActivityAction();
  *(v0 + 240) = v2;
  v3 = *(v1 + *(v2 + 28));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    do
    {
      v9 = v5[1];
      v10 = v5[2];
      v11 = v5[3];
      *(v0 + 80) = *(v5 + 32);
      v12 = *v5;
      *(v0 + 48) = v10;
      *(v0 + 64) = v11;
      *(v0 + 16) = v12;
      *(v0 + 32) = v9;
      v13 = *(v0 + 81);
      if (v13 == 2 || (v13 & 1) != 0)
      {
        v15 = *(v0 + 16);
        v14 = *(v0 + 24);
        sub_24E627A14(v0 + 16, v0 + 88);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24E615CF4(0, *(v7 + 2) + 1, 1, v7);
        }

        v17 = *(v7 + 2);
        v16 = *(v7 + 3);
        if (v17 >= v16 >> 1)
        {
          v7 = sub_24E615CF4((v16 > 1), v17 + 1, 1, v7);
        }

        *(v7 + 2) = v17 + 1;
        v8 = &v7[16 * v17];
        *(v8 + 4) = v15;
        *(v8 + 5) = v14;
        sub_24E627A70(v0 + 16);
      }

      else
      {
        sub_24E627A14(v0 + 16, v0 + 160);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_24E615E80(0, *(v6 + 2) + 1, 1, v6);
        }

        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        if (v19 >= v18 >> 1)
        {
          v6 = sub_24E615E80((v18 > 1), v19 + 1, 1, v6);
        }

        *(v6 + 2) = v19 + 1;
        v20 = &v6[72 * v19];
        *(v20 + 2) = *(v0 + 16);
        v21 = *(v0 + 32);
        v22 = *(v0 + 48);
        v23 = *(v0 + 64);
        *(v20 + 48) = *(v0 + 80);
        *(v20 + 4) = v22;
        *(v20 + 5) = v23;
        *(v20 + 3) = v21;
      }

      v5 = (v5 + 72);
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
  }

  *(v0 + 248) = v6;
  *(v0 + 256) = v7;
  v24 = swift_task_alloc();
  *(v0 + 264) = v24;
  *v24 = v0;
  v24[1] = sub_24E625AB0;

  return sub_24F353D40(v6);
}

uint64_t sub_24E625AB0(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_24E625BD0, 0, 0);
}

uint64_t sub_24E625BD0()
{
  v5 = v0[34];

  sub_24EA0A4AC(v1);
  v2 = v0[1];
  v3 = v0[32];

  return v2(v3, v5);
}

uint64_t sub_24E625C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8);
  v3[18] = swift_task_alloc();
  v5 = sub_24F920418();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E625DB4, 0, 0);
}

uint64_t sub_24E625DB4()
{
  v1 = *(v0[13] + 16);
  if (!v1)
  {
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E8B0);

    v6 = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (!os_log_type_enabled(v6, v11))
    {

      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = 1;

    _os_log_impl(&dword_24E5DD000, v6, v11, "Skip invite via push. PlayerIds list is empty: %{BOOL}d", v12, 8u);
    v9 = v12;
LABEL_11:
    MEMORY[0x2530542D0](v9, -1, -1);
LABEL_20:

    v22 = v0[1];

    return v22();
  }

  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  sub_24E60169C(v0[12], v4, &qword_27F2142B8);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_24E601704(v0[18], &qword_27F2142B8);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8B0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_20;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v6, v7, "activityInstance is empty couldn't send activity invite link via push.", v8, 2u);
    v9 = v8;
    goto LABEL_11;
  }

  v13 = v0[16];
  v14 = v0[13];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  v24 = MEMORY[0x277D84F90];
  sub_24F4579F8(0, v1, 0);
  v15 = v14 + 40;
  do
  {

    sub_24F920FC8();
    v17 = *(v24 + 16);
    v16 = *(v24 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_24F4579F8(v16 > 1, v17 + 1, 1);
    }

    v0[24] = v24;
    v18 = v0[17];
    v19 = v0[15];
    *(v24 + 16) = v17 + 1;
    (*(v13 + 32))(v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17, v18, v19);
    v15 += 16;
    --v1;
  }

  while (v1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v21 = swift_task_alloc();
  v0[22] = v21;
  *v21 = v0;
  v21[1] = sub_24E6261D4;

  return MEMORY[0x28217F228](v0 + 7, v20, v20);
}

uint64_t sub_24E6261D4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_24E62650C;
  }

  else
  {
    v2 = sub_24E6262F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6262F0()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_24E6263DC;
  v4 = v0[24];
  v5 = v0[21];

  return MEMORY[0x282164980](v5, v4, v1, v2);
}

uint64_t sub_24E6263DC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24E626784;
  }

  else
  {
    v2 = sub_24E6266F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E62650C()
{
  v1 = v0[23];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Couldn't invite via push due to error: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E6266F0()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E626784()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[26];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Couldn't invite via push due to error: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E626970(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_24E626990, 0, 0);
}

uint64_t sub_24E626990()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A8);
  *v2 = v0;
  v2[1] = sub_24E626A9C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000002ALL, 0x800000024FA45230, sub_24E6278D4, v1, v3);
}

uint64_t sub_24E626A9C()
{

  return MEMORY[0x2822009F8](sub_24E626BB4, 0, 0);
}

uint64_t sub_24E626BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[9] = v11;
  v6[6] = a4;
  v6[7] = a5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v6[10] = swift_task_alloc();
  v7 = sub_24F91F4A8();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for ActivityDefinitionDetail();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E626D98, 0, 0);
}

uint64_t sub_24E626D98()
{
  v1 = *(v0[8] + 16);
  v0[18] = v1;
  if (!v1)
  {
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v7 = sub_24F9220D8();
    __swift_project_value_buffer(v7, qword_27F39E8B0);

    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();
    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_16;
    }

    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = 1;

    _os_log_impl(&dword_24E5DD000, v8, v9, "Skip invite via iMessage. Contact list is empty: %{BOOL}d", v10, 8u);
    v11 = v10;
LABEL_14:
    MEMORY[0x2530542D0](v11, -1, -1);
LABEL_16:

    v19 = v0[1];

    return v19();
  }

  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  sub_24E60169C(v0[5], v4, &qword_27F2142A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[14];
    v6 = &qword_27F2142A0;
LABEL_10:
    sub_24E601704(v5, v6);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v16 = sub_24F9220D8();
    __swift_project_value_buffer(v16, qword_27F39E8B0);
    v8 = sub_24F9220B8();
    v17 = sub_24F92BD98();
    if (!os_log_type_enabled(v8, v17))
    {
      goto LABEL_16;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24E5DD000, v8, v17, "activityDefinition is empty couldn't send activity invite link via push.", v18, 2u);
    v11 = v18;
    goto LABEL_14;
  }

  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[10];
  sub_24E6277B8(v0[14], v0[17], type metadata accessor for ActivityDefinitionDetail);
  sub_24F91F488();
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v15 = v0[10];
    sub_24E627820(v0[17], type metadata accessor for ActivityDefinitionDetail);
    v6 = &unk_27F228530;
    v5 = v15;
    goto LABEL_10;
  }

  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v21 = [objc_allocWithZone(MEMORY[0x277CD46E0]) init];
  v0[19] = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v0[20] = v22;
  v23 = sub_24F92B098();
  [v22 setTitle_];

  v24 = sub_24F91F3B8();
  [v22 setURL_];

  v25 = swift_task_alloc();
  v0[21] = v25;
  *v25 = v0;
  v25[1] = sub_24E627224;
  v26 = v0[13];

  return sub_24E626970(v26, v21);
}

uint64_t sub_24E627224(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_24E627350, 0, 0);
}

uint64_t sub_24E627350()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if (!v1)
  {
    v1 = *(v0 + 160);
  }

  v2 = [objc_allocWithZone(MEMORY[0x277CD46D8]) init];
  [v2 setMetadata_];
  *(v0 + 16) = 0;
  v38 = v2;
  v3 = [v2 dataRepresentationWithOutOfLineAttachments_];
  v4 = *(v0 + 16);
  v5 = sub_24F91F4E8();
  v7 = v6;

  if (v4)
  {
    v40[0] = 0;
    sub_24F92B598();
  }

  v8 = sub_24F92B588();
  v9 = sub_24F91F3B8();
  v36 = v5;
  v10 = sub_24F91F4C8();
  v11 = sub_24F92B588();

  v12 = IMSPISendRichLinkToMany();

  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v37 = v7;
  v39 = v4;
  v13 = sub_24F9220D8();
  __swift_project_value_buffer(v13, qword_27F39E8B0);

  v14 = sub_24F9220B8();
  v15 = sub_24F92BD98();

  v16 = os_log_type_enabled(v14, v15);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  if (v16)
  {
    v19 = *(v0 + 144);
    v32 = v1;
    v33 = *(v0 + 160);
    v20 = *(v0 + 96);
    v34 = *(v0 + 88);
    v35 = *(v0 + 104);
    v30 = v12;
    v21 = *(v0 + 24);
    v22 = *(v0 + 32);
    v31 = *(v0 + 152);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 134218498;
    *(v23 + 4) = v19;

    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_24E7620D4(v21, v22, v40);
    *(v23 + 22) = 1024;
    *(v23 + 24) = v30;
    _os_log_impl(&dword_24E5DD000, v14, v15, "Invited %ld contacts to multiplayer activity %s, success: %{BOOL}d", v23, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x2530542D0](v24, -1, -1);
    MEMORY[0x2530542D0](v23, -1, -1);
    sub_24E627880(v36, v37);

    (*(v20 + 8))(v35, v34);
  }

  else
  {
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    v27 = *(v0 + 88);

    sub_24E627880(v36, v37);

    (*(v25 + 8))(v26, v27);
  }

  sub_24E627820(*(v0 + 136), type metadata accessor for ActivityDefinitionDetail);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24E6277B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E627820(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E627880(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24E6278DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24E627970(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B0);

  sub_24E625000(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E627AF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214438);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v28 - v7;
  v9 = type metadata accessor for GameDetailsMediaPreview();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 40) = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 9) = 0;
  v34 = v11 + 40;
  sub_24E61DA68(&v38, (v11 + 40), qword_27F21B590);
  v35 = v9;
  v12 = *(v9 + 24);
  v13 = sub_24F929608();
  v14 = *(*(v13 - 8) + 56);
  v36 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E62AB28();
  v32 = v8;
  sub_24F92D108();
  if (v2)
  {
    v17 = v34;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v18 = v36;
    sub_24E601704(v17, qword_27F24EC90);
    return sub_24E601704(&v11[v18], &qword_27F213E68);
  }

  else
  {
    v29 = v6;
    v16 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v41 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v19 = v39;
    *v11 = v38;
    *(v11 + 1) = v19;
    *(v11 + 4) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v41 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v20 = v35;
    v21 = v16;
    sub_24E61DA68(&v38, v34, qword_27F24EC90);
    LOBYTE(v38) = 2;
    sub_24E62AB7C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v22 = v29;
    sub_24F92CC18();
    sub_24E61DA68(v22, &v11[v36], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214448);
    v41 = 3;
    sub_24E62ABC4();
    sub_24F92CC68();
    *&v11[*(v20 + 28)] = v38;
    LOBYTE(v38) = 4;
    v23 = sub_24F92CC28();
    v25 = v24;
    (*(v21 + 8))(v32, v33);
    v26 = &v11[*(v20 + 32)];
    *v26 = v23;
    v26[1] = v25;
    sub_24E62A5F8(v11, v30, type metadata accessor for GameDetailsMediaPreview);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_24E62AC9C(v11, type metadata accessor for GameDetailsMediaPreview);
  }
}

unint64_t sub_24E62807C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0x7470697263736564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24E628118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E62AE78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E62814C(uint64_t a1)
{
  v2 = sub_24E62AB28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E628188(uint64_t a1)
{
  v2 = sub_24E62AB28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6281DC()
{
  if (*v0)
  {
    return 0x6D496D6574737973;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24E628220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E628300(uint64_t a1)
{
  v2 = sub_24E62850C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E62833C(uint64_t a1)
{
  v2 = sub_24E62850C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaPreviewPlatform.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E62850C();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E62850C()
{
  result = qword_27F2142D0;
  if (!qword_27F2142D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2142D0);
  }

  return result;
}

uint64_t MediaPreviewPlatform.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E62850C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CC28();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E628790(uint64_t a1, int a2)
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

uint64_t sub_24E6287D8(uint64_t result, int a2, int a3)
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

unint64_t sub_24E62883C()
{
  result = qword_27F2142E0;
  if (!qword_27F2142E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2142E0);
  }

  return result;
}

unint64_t sub_24E628894()
{
  result = qword_27F2142E8;
  if (!qword_27F2142E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2142E8);
  }

  return result;
}

unint64_t sub_24E6288EC()
{
  result = qword_27F2142F0;
  if (!qword_27F2142F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2142F0);
  }

  return result;
}

uint64_t sub_24E628940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v23[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214340);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214348);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214350);
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  sub_24E628BD0(a2, a3 & 0x101, a1, v9);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v9, v13, &qword_27F214340);
  v17 = &v13[*(v11 + 44)];
  v18 = v29;
  *(v17 + 4) = v28;
  *(v17 + 5) = v18;
  *(v17 + 6) = v30;
  v19 = v25;
  *v17 = v24;
  *(v17 + 1) = v19;
  v20 = v27;
  *(v17 + 2) = v26;
  *(v17 + 3) = v20;
  sub_24E6009C8(v13, v16, &qword_27F214348);
  v16[*(v14 + 36)] = 0;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v21 = sub_24F9248C8();
  __swift_project_value_buffer(v21, qword_27F39F078);
  sub_24E62A340();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v16, &qword_27F214350);
}

uint64_t sub_24E628BD0@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214398);
  MEMORY[0x28223BE20](v30);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143A0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214388);
  MEMORY[0x28223BE20](v29);
  v12 = v28 - v11;
  v13 = sub_24F924848();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a1;
    v19 = a1;
  }

  else
  {
    v28[0] = v15;

    sub_24F92BDC8();
    v20 = sub_24F9257A8();
    v28[1] = v8;
    v21 = v20;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    v18 = a1;
    sub_24E62A5EC(a1, 0);
    (*(v14 + 8))(v17, v28[0]);
    v19 = v33;
  }

  v22 = v32;
  if (v19 > 2 || *(*(v22 + *(type metadata accessor for GameDetailsMediaPreview() + 28)) + 16) <= 3uLL)
  {
    *v12 = sub_24F9249A8();
    *(v12 + 1) = 0x4014000000000000;
    v12[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143A8);
    sub_24E629084(v18, a2 & 0x101, v22, &unk_2861C4A18, sub_24E62B034, &v12[*(v26 + 44)]);
    v24 = &qword_27F214388;
    sub_24E60169C(v12, v10, &qword_27F214388);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F214380, &qword_27F214388);
    sub_24E602068(&qword_27F214390, &qword_27F214398);
    sub_24F924E28();
    v25 = v12;
  }

  else
  {
    *v7 = sub_24F924C98();
    *(v7 + 1) = 0x4024000000000000;
    v7[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143B0);
    sub_24E629084(v18, a2 & 0x101, v22, &unk_2861C49F0, sub_24E62A6C8, &v7[*(v23 + 44)]);
    v24 = &qword_27F214398;
    sub_24E60169C(v7, v10, &qword_27F214398);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F214380, &qword_27F214388);
    sub_24E602068(&qword_27F214390, &qword_27F214398);
    sub_24F924E28();
    v25 = v7;
  }

  return sub_24E601704(v25, v24);
}

uint64_t sub_24E629084@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v35 = a2;
  v36 = a1;
  v37 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143B8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for GameDetailsMediaPreview();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143C0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  *v22 = sub_24F9249A8();
  *(v22 + 1) = 0x4008000000000000;
  v22[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143C8);
  v23 = *(v14 + 36);
  v32 = a3;
  v24 = *(*(a3 + v23) + 16);
  v38 = 0;
  v39 = v24;
  swift_getKeyPath();
  sub_24E62A5F8(a3, &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsMediaPreview);
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = swift_allocObject();
  sub_24E62A664(&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8);
  sub_24E62A6CC();
  sub_24E62A7AC();
  sub_24F927228();
  *v12 = sub_24F9249A8();
  *(v12 + 1) = 0x4014000000000000;
  v12[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214400);
  sub_24E6295DC(v32, v35 & 0x101, &v12[*(v27 + 44)]);
  sub_24E60169C(v22, v20, &qword_27F2143C0);
  sub_24E60169C(v12, v10, &qword_27F2143B8);
  v28 = v37;
  sub_24E60169C(v20, v37, &qword_27F2143C0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214408);
  sub_24E60169C(v10, v28 + *(v29 + 48), &qword_27F2143B8);
  sub_24E601704(v12, &qword_27F2143B8);
  sub_24E601704(v22, &qword_27F2143C0);
  sub_24E601704(v10, &qword_27F2143B8);
  return sub_24E601704(v20, &qword_27F2143C0);
}

uint64_t sub_24E629444@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for GameDetailsMediaPreview();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(*(a2 + *(result + 28)) + 16))
  {

    v7 = sub_24F926DF8();
    v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20) + 36));
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v10 = *MEMORY[0x277CE1050];
    v11 = sub_24F926E78();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    *v8 = swift_getKeyPath();
    *a3 = v7;
    LODWORD(v7) = sub_24F9251C8();
    v12 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8) + 36);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v14 = *MEMORY[0x277CE13B8];
    v15 = sub_24F927748();
    result = (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
    *v12 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E6295DC@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t *a3@<X8>)
{
  v61 = a2;
  v66 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214418);
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v6);
  v59 = (&v53 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214420);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v53 - v14);
  v16 = (a1 + *(type metadata accessor for GameDetailsMediaPreview() + 32));
  v17 = v16[1];
  v67 = *v16;
  v68 = v17;
  sub_24E600AEC();

  v18 = sub_24F925E18();
  v20 = v19;
  v22 = v21;
  LODWORD(v17) = sub_24F9251C8();
  v23 = *(v13 + 36);
  v24 = *MEMORY[0x277CE13B8];
  v25 = sub_24F927748();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v58 = v24;
  v56 = v27;
  v57 = v25;
  v55 = v26 + 104;
  (v27)(v15 + v23, v24);
  *v15 = v17;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v54 = v13;
  v28 = sub_24F925C58();
  v30 = v29;
  LOBYTE(v13) = v31;
  sub_24E600B40(v18, v20, v22 & 1);

  sub_24E601704(v15, &qword_27F213F10);
  sub_24F925A18();
  sub_24F9258E8();

  v32 = sub_24F925C98();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_24E600B40(v28, v30, v13 & 1);

  if ((v61 & 0x100) != 0)
  {
    sub_24F926DF8();
    v42 = v60;
    sub_24F924CF8();
    v43 = sub_24F924D08();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    v44 = sub_24F926E58();

    sub_24E601704(v42, &qword_27F214410);
    v45 = sub_24F9251C8();
    v46 = v63;
    v47 = v59;
    v48 = v59 + *(v63 + 36);
    v56(&v48[*(v54 + 36)], v58, v57);
    *v48 = v45;
    *v47 = v44;
    v41 = v62;
    sub_24E6009C8(v47, v62, &qword_27F214418);
    v39 = 0;
    v40 = v46;
  }

  else
  {
    v39 = 1;
    v41 = v62;
    v40 = v63;
  }

  (*(v64 + 56))(v41, v39, 1, v40);
  v49 = v65;
  sub_24E60169C(v41, v65, &qword_27F214420);
  v50 = v66;
  *v66 = v32;
  v50[1] = v34;
  *(v50 + 16) = v36 & 1;
  v50[3] = v38;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214430);
  sub_24E60169C(v49, v50 + *(v51 + 48), &qword_27F214420);
  sub_24E5FD138(v32, v34, v36 & 1);

  sub_24E601704(v41, &qword_27F214420);
  sub_24E601704(v49, &qword_27F214420);
  sub_24E600B40(v32, v34, v36 & 1);
}

uint64_t sub_24E629B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_24E628940(a1, *v2, v3 | *(v2 + 8), a2);
}

uint64_t sub_24E629B7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #6.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24E62A5F8(v7, v5, MEMORY[0x277CDFBC8]);
  sub_24E62AB7C(&qword_27F214338, MEMORY[0x277CDFBC8]);
  v19 = sub_24F927348();
  result = sub_24E62AC9C(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24E629D30()
{
  sub_24E62AB1C(*v0, *(v0 + 8));
  sub_24E62A190();
  return sub_24F9218E8();
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_24E629DB8(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24E629E00(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E629E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E629F38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsMediaPreview()
{
  result = qword_27F2142F8;
  if (!qword_27F2142F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E62A034()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E62A0F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E62A0F0()
{
  if (!qword_27F214308)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F214308);
    }
  }
}

unint64_t sub_24E62A190()
{
  result = qword_27F214310;
  if (!qword_27F214310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214310);
  }

  return result;
}

unint64_t sub_24E62A230()
{
  result = qword_27F214320;
  if (!qword_27F214320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214320);
  }

  return result;
}

unint64_t sub_24E62A2EC()
{
  result = qword_27F214330;
  if (!qword_27F214330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214330);
  }

  return result;
}

unint64_t sub_24E62A340()
{
  result = qword_27F214358;
  if (!qword_27F214358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214350);
    sub_24E62A3F8();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214358);
  }

  return result;
}

unint64_t sub_24E62A3F8()
{
  result = qword_27F214360;
  if (!qword_27F214360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214348);
    sub_24E62A484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214360);
  }

  return result;
}

unint64_t sub_24E62A484()
{
  result = qword_27F214368;
  if (!qword_27F214368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214340);
    sub_24E62A508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214368);
  }

  return result;
}

unint64_t sub_24E62A508()
{
  result = qword_27F214370;
  if (!qword_27F214370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214378);
    sub_24E602068(&qword_27F214380, &qword_27F214388);
    sub_24E602068(&qword_27F214390, &qword_27F214398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214370);
  }

  return result;
}

uint64_t sub_24E62A5EC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24E62A5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E62A664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsMediaPreview();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E62A6CC()
{
  result = qword_27F2143E0;
  if (!qword_27F2143E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0);
    sub_24E62A758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2143E0);
  }

  return result;
}

unint64_t sub_24E62A758()
{
  result = qword_27F2143E8;
  if (!qword_27F2143E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2143E8);
  }

  return result;
}

unint64_t sub_24E62A7AC()
{
  result = qword_27F2143F0;
  if (!qword_27F2143F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D8);
    sub_24E62A864();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2143F0);
  }

  return result;
}

unint64_t sub_24E62A864()
{
  result = qword_27F2143F8;
  if (!qword_27F2143F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DF20);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2143F8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for GameDetailsMediaPreview();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  }

  v3 = *(v1 + 24);
  v4 = sub_24F929608();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_24E62AA9C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for GameDetailsMediaPreview() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E629444(a1, v6, a2);
}

uint64_t sub_24E62AB1C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24E62AB28()
{
  result = qword_27F214440;
  if (!qword_27F214440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214440);
  }

  return result;
}

uint64_t sub_24E62AB7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E62ABC4()
{
  result = qword_27F214450;
  if (!qword_27F214450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214448);
    sub_24E62AC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214450);
  }

  return result;
}

unint64_t sub_24E62AC48()
{
  result = qword_27F214458;
  if (!qword_27F214458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214458);
  }

  return result;
}

uint64_t sub_24E62AC9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E62AD0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214350);
  sub_24E62A340();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E62AD74()
{
  result = qword_27F214460;
  if (!qword_27F214460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214460);
  }

  return result;
}

unint64_t sub_24E62ADCC()
{
  result = qword_27F214468;
  if (!qword_27F214468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214468);
  }

  return result;
}

unint64_t sub_24E62AE24()
{
  result = qword_27F214470;
  if (!qword_27F214470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214470);
  }

  return result;
}

uint64_t sub_24E62AE78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E62B05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E62B12C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsRibbon()
{
  result = qword_27F214478;
  if (!qword_27F214478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E62B228()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E62B2DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E62B2DC()
{
  if (!qword_27F214488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214490);
    sub_24E62B34C();
    v0 = sub_24F927EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F214488);
    }
  }
}

unint64_t sub_24E62B34C()
{
  result = qword_27F214498;
  if (!qword_27F214498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214490);
    sub_24E62C130(&qword_27F2144A0, type metadata accessor for Badge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214498);
  }

  return result;
}

uint64_t sub_24E62B400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2144D8);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for GameDetailsRibbon();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 40) = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 9) = 0;
  v32 = v11 + 40;
  sub_24E61DA68(&v33, (v11 + 40), qword_27F21B590);
  v12 = *(v9 + 24);
  v13 = sub_24F929608();
  v14 = *(*(v13 - 8) + 56);
  v30 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E62C0DC();
  v16 = v29;
  sub_24F92D108();
  if (v16)
  {
    v18 = v30;
    v19 = v32;
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_24E601704(v19, qword_27F24EC90);
    return sub_24E601704(&v11[v18], &qword_27F213E68);
  }

  else
  {
    v29 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v36 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v17 = v28;
    sub_24F92CC68();
    v20 = v34;
    *v11 = v33;
    *(v11 + 1) = v20;
    *(v11 + 4) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v36 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v21 = v30;
    sub_24E61DA68(&v33, v32, qword_27F24EC90);
    LOBYTE(v33) = 2;
    sub_24E62C130(&qword_27F213F48, MEMORY[0x277D21F70]);
    v22 = v29;
    sub_24F92CC18();
    v23 = v27;
    sub_24E61DA68(v22, &v11[v21], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2144E8);
    v36 = 3;
    sub_24E602068(&qword_27F2144F0, &qword_27F2144E8);
    sub_24F92CC68();
    (*(v23 + 8))(v8, v17);
    *&v11[*(v9 + 28)] = v33;
    sub_24E62C178(v11, v26);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_24E62C1DC(v11, type metadata accessor for GameDetailsRibbon);
  }
}

unint64_t sub_24E62B94C()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x736567646162;
  }

  if (*v0)
  {
    v1 = 0x6575676573;
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

uint64_t sub_24E62B9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E62C43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E62B9E0(uint64_t a1)
{
  v2 = sub_24E62C0DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E62BA1C(uint64_t a1)
{
  v2 = sub_24E62C0DC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E62BAC0()
{
  result = qword_27F2144A8;
  if (!qword_27F2144A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2144A8);
  }

  return result;
}

uint64_t sub_24E62BB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F925A38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RibbonView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2144C8);
  v21 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v14 = *(a1 + *(type metadata accessor for GameDetailsRibbon() + 28));
  if (v14 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_3;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v22[0] = 0x4034000000000000;
    (*(v5 + 104))(v7, *MEMORY[0x277CE0A98], v4);
    sub_24E62C088();

    sub_24F9237B8();
    v15 = &v10[*(v8 + 20)];
    v22[5] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214490);
    sub_24F926F28();
    v16 = v22[1];
    *v15 = v22[0];
    *(v15 + 1) = v16;
    sub_24E60169C(a1 + 40, v22, qword_27F24EC90);
    sub_24E601704(v22, qword_27F21B590);
    if (qword_27F211830 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9248C8();
    __swift_project_value_buffer(v17, qword_27F39F078);
    sub_24E62C130(&qword_27F2144D0, type metadata accessor for RibbonView);
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    sub_24E62C1DC(v10, type metadata accessor for RibbonView);
    (*(v21 + 32))(a2, v13, v11);
    return (*(v21 + 56))(a2, 0, 1, v11);
  }

  v19 = *(v21 + 56);

  return v19(a2, 1, 1, v11);
}

uint64_t sub_24E62BEF8()
{
  sub_24E62BAC0();

  return sub_24F9218E8();
}

unint64_t sub_24E62BF88()
{
  result = qword_27F2144B8;
  if (!qword_27F2144B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2144B8);
  }

  return result;
}

unint64_t sub_24E62C088()
{
  result = qword_27F2361F0;
  if (!qword_27F2361F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2361F0);
  }

  return result;
}

unint64_t sub_24E62C0DC()
{
  result = qword_27F2144E0;
  if (!qword_27F2144E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2144E0);
  }

  return result;
}

uint64_t sub_24E62C130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E62C178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsRibbon();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E62C1DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E62C250()
{
  result = qword_27F2144F8;
  if (!qword_27F2144F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214500);
    type metadata accessor for RibbonView(255);
    sub_24E62C130(&qword_27F2144D0, type metadata accessor for RibbonView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2144F8);
  }

  return result;
}

unint64_t sub_24E62C338()
{
  result = qword_27F214508;
  if (!qword_27F214508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214508);
  }

  return result;
}

unint64_t sub_24E62C390()
{
  result = qword_27F214510;
  if (!qword_27F214510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214510);
  }

  return result;
}

unint64_t sub_24E62C3E8()
{
  result = qword_27F214518;
  if (!qword_27F214518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214518);
  }

  return result;
}

uint64_t sub_24E62C43C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736567646162 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24E62C5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F91F4A8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E62C700(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F91F4A8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E62C850()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E62C9D4(319, &qword_27F213EB8, &qword_27F213EC0, &unk_24F93BCB0, sub_24E61CA00);
        if (v3 <= 0x3F)
        {
          sub_24E62C9D4(319, &qword_27F214530, &qword_27F214538, &unk_24F93D040, sub_24E62CA44);
          if (v4 <= 0x3F)
          {
            sub_24F91F4A8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E62C98C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E62C9D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = sub_24F927EA8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_24E62CA44()
{
  result = qword_27F214540;
  if (!qword_27F214540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214538);
    sub_24E62C98C(&qword_27F214548, type metadata accessor for ReviewSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214540);
  }

  return result;
}

uint64_t sub_24E62CAF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_24F91F4A8();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145C0);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for GameDetailsRatingsAndReviews(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v35 = v12 + 40;
  sub_24E61DA68(&v38, (v12 + 40), qword_27F21B590);
  v13 = *(v10 + 24);
  v14 = sub_24F929608();
  v15 = *(*(v14 - 8) + 56);
  v37 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24E62F0FC();
  v33 = v9;
  v17 = v34;
  sub_24F92D108();
  if (v17)
  {
    v19 = v35;
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_24E601704(v19, qword_27F24EC90);
    sub_24E601704(&v12[v37], &qword_27F213E68);
  }

  else
  {
    v18 = v6;
    v34 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v41 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v20 = v39;
    v21 = v12;
    *v12 = v38;
    *(v12 + 1) = v20;
    *(v12 + 4) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v41 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v38, v35, qword_27F24EC90);
    LOBYTE(v38) = 2;
    sub_24E62C98C(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v18, &v12[v37], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F50);
    v41 = 3;
    sub_24E602068(&qword_27F213F58, &qword_27F213F50);
    sub_24F92CC68();
    v22 = v34;
    *&v12[*(v34 + 28)] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145D0);
    v41 = 4;
    v23 = v32;
    sub_24E602068(&qword_27F2145D8, &qword_27F2145D0);
    sub_24F92CC68();
    **(v22 + 32) = v38;
    LOBYTE(v38) = 5;
    sub_24E62C98C(&qword_27F2145E0, MEMORY[0x277CC9260]);
    v24 = v29;
    sub_24F92CC68();
    (*(v31 + 8))(v33, v23);
    (*(v27 + 32))(v21 + *(v22 + 36), v30, v24);
    sub_24E62F150(v21, v28, type metadata accessor for GameDetailsRatingsAndReviews);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24E62F1B8(v21, type metadata accessor for GameDetailsRatingsAndReviews);
  }
}

uint64_t sub_24E62D238()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x73676E69746172;
  v4 = 0x7553776569766572;
  if (v1 != 4)
  {
    v4 = 0x50746375646F7270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_24E62D300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E62F710(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E62D328(uint64_t a1)
{
  v2 = sub_24E62F0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E62D364(uint64_t a1)
{
  v2 = sub_24E62F0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E62D408()
{
  result = qword_27F214550;
  if (!qword_27F214550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214550);
  }

  return result;
}

uint64_t sub_24E62D45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214578);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  *v6 = sub_24F924C98();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214580);
  sub_24E62D6B8(a1, &v6[*(v11 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v6, v10, &qword_27F214570);
  v12 = &v10[*(v8 + 44)];
  v13 = v20[5];
  *(v12 + 4) = v20[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v20[6];
  v14 = v20[1];
  *v12 = v20[0];
  *(v12 + 1) = v14;
  v15 = v20[3];
  *(v12 + 2) = v20[2];
  *(v12 + 3) = v15;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214588) + 36);
  v17 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v18 = type metadata accessor for GradientBackground(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = xmmword_24F93CFD0;
  *(v16 + 32) = 0x4030000000000000;
  *(v16 + 40) = 257;
  return sub_24E6009C8(v10, a2, &qword_27F214578);
}

uint64_t sub_24E62D6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for AppStoreDeeplinkButton(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214590);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v50 - v9);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598);
  v11 = MEMORY[0x28223BE20](v54);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = sub_24F91F008();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145A0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v57 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v50 - v22;
  v24 = type metadata accessor for GameDetailsRatingsAndReviews(0);
  v25 = *(a1 + *(v24 + 28));
  v59 = a1;
  v56 = v24;
  if (v25)
  {
    v52 = v8;
    v53 = v7;
    v26 = *(a1 + *(v24 + 32));
    if (v26)
    {
      sub_24E62F0B0();
      (*(v16 + 16))(v18, v26 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle, v15);
      swift_retain_n();

      v27 = sub_24F92BFD8();
      v28 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v51 = [v28 length];
      v29 = [v28 mutableString];
      v30 = sub_24F92B098();
      v31 = sub_24F92B098();
      [v29 replaceOccurrencesOfString:v30 withString:v31 options:1024 range:{0, v51}];

      v32 = [v28 string];
      v33 = sub_24F92B0D8();
      v35 = v34;
    }

    else
    {
      swift_retain_n();
      v33 = 0;
      v35 = 0;
    }

    sub_24F9271E8();
    v36 = sub_24F9251C8();
    *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0) + 36)] = v36;
    v37 = *(v54 + 36);
    v38 = *MEMORY[0x277CE13B8];
    v39 = sub_24F927748();
    (*(*(v39 - 8) + 104))(&v14[v37], v38, v39);
    v40 = v55;
    sub_24E60169C(v14, v55, &qword_27F214598);
    *v10 = v25;
    v10[1] = v33;
    v10[2] = v35;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B8);
    sub_24E60169C(v40, v10 + *(v41 + 64), &qword_27F214598);

    sub_24E601704(v14, &qword_27F214598);
    sub_24E601704(v40, &qword_27F214598);

    sub_24E6009C8(v10, v23, &qword_27F214590);
    (*(v52 + 56))(v23, 0, 1, v53);
  }

  else
  {
    (*(v8 + 56))(v23, 1, 1, v7);
  }

  v42 = *(v56 + 36);
  v43 = sub_24F91F4A8();
  v44 = v60;
  (*(*(v43 - 8) + 16))(v60, v59 + v42, v43);
  v45 = v57;
  sub_24E60169C(v23, v57, &qword_27F2145A0);
  v46 = v58;
  sub_24E62F150(v44, v58, type metadata accessor for AppStoreDeeplinkButton);
  v47 = v61;
  sub_24E60169C(v45, v61, &qword_27F2145A0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145A8);
  sub_24E62F150(v46, v47 + *(v48 + 48), type metadata accessor for AppStoreDeeplinkButton);
  sub_24E62F1B8(v44, type metadata accessor for AppStoreDeeplinkButton);
  sub_24E601704(v23, &qword_27F2145A0);
  sub_24E62F1B8(v46, type metadata accessor for AppStoreDeeplinkButton);
  return sub_24E601704(v45, &qword_27F2145A0);
}

uint64_t sub_24E62DD74()
{
  sub_24E62D408();

  return sub_24F9218E8();
}

unint64_t sub_24E62DE04()
{
  result = qword_27F214560;
  if (!qword_27F214560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214560);
  }

  return result;
}

uint64_t sub_24E62DF04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214690);
  v3 = MEMORY[0x28223BE20](v45);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v44 = a1;
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage);
  v11 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v12) = v10;
  v50.value.super.super.isa = [v11 initWithFloat_];
  isa = v50.value.super.super.isa;
  v50.is_nil = 1;
  v15 = localizedStringForDecimal(_:_:)(v50, v14);
  countAndFlagsBits = v15.value._countAndFlagsBits;
  object = v15.value._object;

  if (!v15.value._object)
  {
    countAndFlagsBits = sub_24F92BA88();
    object = v18;
  }

  v48 = countAndFlagsBits;
  v49 = object;
  sub_24E600AEC();
  v19 = sub_24F925E18();
  v21 = v20;
  v23 = v22;
  v24 = sub_24F925908();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  sub_24F925968();
  sub_24E601704(v9, &qword_27F214698);
  sub_24F925918();
  sub_24F9259A8();

  v25 = sub_24F925C98();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_24E600B40(v19, v21, v23 & 1);

  *v6 = sub_24F924CA8();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146A0);
  sub_24E62E298(v44, &v6[*(v32 + 44)]);
  v33 = sub_24F925818();
  sub_24F923318();
  v34 = &v6[*(v45 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = v47;
  sub_24E60169C(v6, v47, &qword_27F214690);
  v40 = v46;
  *v46 = v25;
  v40[1] = v27;
  v29 &= 1u;
  *(v40 + 16) = v29;
  v40[3] = v31;
  v40[4] = 0;
  *(v40 + 40) = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146A8);
  sub_24E60169C(v39, v40 + *(v41 + 64), &qword_27F214690);
  sub_24E5FD138(v25, v27, v29);

  sub_24E601704(v6, &qword_27F214690);
  sub_24E601704(v39, &qword_27F214690);
  sub_24E600B40(v25, v27, v29);
}

uint64_t sub_24E62E298@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v35 - v7;
  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage);
  v37 = sub_24F9259D8();
  v40 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000013, 0x800000024FA451B0, *(a1 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings));
  v41 = v9;
  sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24F925A18();
  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_24E600B40(v10, v12, v14 & 1);

  v40 = v15;
  v41 = v17;
  v22 = v19 & 1;
  v42 = v19 & 1;
  v43 = v21;
  v23 = v36;
  sub_24F9268B8();
  sub_24E600B40(v15, v17, v22);

  v24 = sub_24F9251C8();
  v25 = (v23 + *(v4 + 44));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v27 = *MEMORY[0x277CE13B8];
  v28 = sub_24F927748();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  *v25 = v24;
  v29 = v38;
  sub_24E60169C(v23, v38, &qword_27F2146B0);
  v30 = v39;
  *v39 = v8;
  *(v30 + 1) = 5;
  *(v30 + 16) = 0;
  v31 = v37;
  v30[3] = 3.0;
  *(v30 + 4) = v31;
  v32 = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B8);
  sub_24E60169C(v29, v32 + *(v33 + 48), &qword_27F2146B0);

  sub_24E601704(v23, &qword_27F2146B0);
  sub_24E601704(v29, &qword_27F2146B0);
}

uint64_t sub_24E62E590@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_24F924988();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214688);
  return sub_24E62DF04(v3, (a1 + *(v4 + 44)));
}

double sub_24E62E5E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  sub_24E600AEC();

  v34 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  v13 = sub_24F9251C8();
  v14 = *(v6 + 36);
  v15 = *MEMORY[0x277CE13B8];
  v16 = sub_24F927748();
  (*(*(v16 - 8) + 104))(&v8[v14], v15, v16);
  *v8 = v13;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  LOBYTE(v14) = v12;
  v17 = v34;
  v18 = sub_24F925C58();
  v20 = v19;
  LOBYTE(v6) = v21;
  v33[1] = v22;
  sub_24E600B40(v17, v10, v14 & 1);

  sub_24E601704(v8, &qword_27F213F10);
  sub_24F925898();
  v23 = sub_24F925C98();
  v25 = v24;
  LOBYTE(v10) = v26;
  v34 = v27;

  sub_24E600B40(v18, v20, v6 & 1);

  KeyPath = swift_getKeyPath();
  sub_24F927628();
  sub_24F9242E8();
  *(&v35[1] + 7) = v37;
  *(v35 + 7) = v36;
  *(&v35[3] + 7) = v39;
  *(&v35[4] + 7) = v40;
  *(&v35[5] + 7) = v41;
  *(&v35[6] + 7) = v42;
  *(&v35[2] + 7) = v38;
  v29 = v35[5];
  *(a3 + 105) = v35[4];
  *(a3 + 121) = v29;
  *(a3 + 137) = v35[6];
  v30 = v35[1];
  *(a3 + 41) = v35[0];
  *(a3 + 57) = v30;
  result = *&v35[2];
  v32 = v35[3];
  *(a3 + 73) = v35[2];
  *a3 = v23;
  *(a3 + 8) = v25;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v34;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  *(a3 + 152) = *(&v35[6] + 15);
  *(a3 + 89) = v32;
  return result;
}

uint64_t sub_24E62E904@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214628);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214630);
  MEMORY[0x28223BE20](v39);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214638);
  v40 = *(v15 - 8);
  v41 = v15;
  MEMORY[0x28223BE20](v15);
  v38 = &v37 - v16;
  *v14 = sub_24F9249A8();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214640) + 44)];
  v18 = sub_24F926E48();
  (*(v4 + 16))(v6, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214648);
  sub_24E602068(&qword_27F214650, &qword_27F214648);
  sub_24F925A88();
  v19 = *(v8 + 16);
  v20 = v37;
  v19(v37, v12, v7);
  *v17 = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214658);
  v19(v17 + *(v21 + 48), v20, v7);
  v22 = *(v8 + 8);

  v22(v12, v7);
  v22(v20, v7);

  LODWORD(v22) = sub_24F9251C8();
  v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214660) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v25 = *MEMORY[0x277CE13B8];
  v26 = sub_24F927748();
  v27 = v25;
  v28 = v39;
  (*(*(v26 - 8) + 104))(&v23[v24], v27, v26);
  *v23 = v22;
  v29 = v38;
  v30 = sub_24F925A18();
  KeyPath = swift_getKeyPath();
  v32 = &v14[*(v28 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = sub_24E62F920();
  sub_24F9268B8();
  sub_24E601704(v14, &qword_27F214630);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v34 = sub_24F9248C8();
  __swift_project_value_buffer(v34, qword_27F39F078);
  v43 = v28;
  v44 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v41;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return (*(v40 + 8))(v29, v35);
}

__n128 sub_24E62EE38@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24F9249A8();
  sub_24E62EEBC(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_24E62EEBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2114A8 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  v2 = sub_24F925E18();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_24F926DF8();
  v6 = sub_24F925E28();
  v8 = v7;
  v10 = v9;
  sub_24F9259E8();
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_24E600B40(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_24E5FD138(v21, v20, v19 & 1);

  sub_24E5FD138(v11, v13, v15 & 1);

  sub_24E600B40(v11, v13, v15 & 1);

  sub_24E600B40(v21, v20, v19 & 1);
}

unint64_t sub_24E62F0B0()
{
  result = qword_27F223430;
  if (!qword_27F223430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F223430);
  }

  return result;
}

unint64_t sub_24E62F0FC()
{
  result = qword_27F2145C8;
  if (!qword_27F2145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2145C8);
  }

  return result;
}

uint64_t sub_24E62F150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E62F1B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E62F23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E62F2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E62F32C()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E62F398(uint64_t a1, int a2)
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

uint64_t sub_24E62F3E0(uint64_t result, int a2, int a3)
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

unint64_t sub_24E62F440()
{
  result = qword_27F2145F8;
  if (!qword_27F2145F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214588);
    sub_24E62F4FC();
    sub_24E62C98C(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2145F8);
  }

  return result;
}

unint64_t sub_24E62F4FC()
{
  result = qword_27F214600;
  if (!qword_27F214600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214578);
    sub_24E602068(&qword_27F214608, &qword_27F214570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214600);
  }

  return result;
}

unint64_t sub_24E62F60C()
{
  result = qword_27F214610;
  if (!qword_27F214610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214610);
  }

  return result;
}

unint64_t sub_24E62F664()
{
  result = qword_27F214618;
  if (!qword_27F214618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214618);
  }

  return result;
}

unint64_t sub_24E62F6BC()
{
  result = qword_27F214620;
  if (!qword_27F214620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214620);
  }

  return result;
}

uint64_t sub_24E62F710(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73676E69746172 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7553776569766572 && a2 == 0xED00007972616D6DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50746375646F7270 && a2 == 0xEE004C5255656761)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24E62F920()
{
  result = qword_27F214668;
  if (!qword_27F214668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214630);
    sub_24E62F9D8();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214668);
  }

  return result;
}

unint64_t sub_24E62F9D8()
{
  result = qword_27F214670;
  if (!qword_27F214670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214660);
    sub_24E602068(&qword_27F214678, &qword_27F214680);
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214670);
  }

  return result;
}

uint64_t sub_24E62FAC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214630);
  sub_24E62F920();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E62FB68()
{
  result = qword_27F2146C0;
  if (!qword_27F2146C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146C8);
    sub_24E62FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2146C0);
  }

  return result;
}

unint64_t sub_24E62FBF4()
{
  result = qword_27F2146D0;
  if (!qword_27F2146D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146D8);
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2146D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameDetailsSummaryComponent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GameDetailsSummaryComponent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24E62FD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E62FE30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsSummary()
{
  result = qword_27F214700;
  if (!qword_27F214700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E62FF2C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E62FFE0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E62FFE0()
{
  if (!qword_27F214710)
  {
    type metadata accessor for Paragraph();
    sub_24E63163C(&qword_27F214718, type metadata accessor for Paragraph);
    v0 = sub_24F927EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F214710);
    }
  }
}

uint64_t sub_24E630074@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214788);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for GameDetailsSummary();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 40) = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 9) = 0;
  v32 = v11 + 40;
  sub_24E61DA68(&v33, (v11 + 40), qword_27F21B590);
  v12 = *(v9 + 24);
  v13 = sub_24F929608();
  v14 = *(*(v13 - 8) + 56);
  v30 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E6315E8();
  v16 = v29;
  sub_24F92D108();
  if (v16)
  {
    v18 = v30;
    v19 = v32;
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_24E601704(v19, qword_27F24EC90);
    return sub_24E601704(&v11[v18], &qword_27F213E68);
  }

  else
  {
    v29 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v36 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v17 = v28;
    sub_24F92CC68();
    v20 = v34;
    *v11 = v33;
    *(v11 + 1) = v20;
    *(v11 + 4) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v36 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v21 = v30;
    sub_24E61DA68(&v33, v32, qword_27F24EC90);
    LOBYTE(v33) = 2;
    sub_24E63163C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v22 = v29;
    sub_24F92CC18();
    v23 = v27;
    sub_24E61DA68(v22, &v11[v21], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214798);
    v36 = 3;
    sub_24E602068(&qword_27F2147A0, &qword_27F214798);
    sub_24F92CC68();
    (*(v23 + 8))(v8, v17);
    *&v11[*(v9 + 28)] = v33;
    sub_24E631684(v11, v26, type metadata accessor for GameDetailsSummary);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_24E6316EC(v11, type metadata accessor for GameDetailsSummary);
  }
}

unint64_t sub_24E6305C8()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7972616D6D7573;
  }

  if (*v0)
  {
    v1 = 0x6575676573;
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

uint64_t sub_24E630638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6318C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E630660(uint64_t a1)
{
  v2 = sub_24E6315E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E63069C(uint64_t a1)
{
  v2 = sub_24E6315E8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E630740()
{
  result = qword_27F214720;
  if (!qword_27F214720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214720);
  }

  return result;
}

uint64_t sub_24E630794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v64 = a2;
  v69 = a4;
  v70 = sub_24F9248C8();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24F925DC8();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v52);
  v53 = &v51 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214740);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = &v51 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214748);
  MEMORY[0x28223BE20](v56);
  v55 = &v51 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214750);
  MEMORY[0x28223BE20](v60);
  v62 = &v51 - v10;
  sub_24E60169C(a1 + 40, &v80, qword_27F24EC90);
  v11 = *(&v81 + 1);
  sub_24E601704(&v80, qword_27F21B590);
  type metadata accessor for GameDetailsSummary();
  v66 = a1;
  if (v11)
  {
    v12 = Paragraph.collapsedText.getter();
  }

  else
  {
    v12 = Paragraph.text.getter();
  }

  v13 = v12;
  v14 = [v12 string];

  v15 = sub_24F92B0D8();
  v17 = v16;

  *&v80 = v15;
  *(&v80 + 1) = v17;
  sub_24E600AEC();
  v18 = sub_24F925E18();
  v20 = v19;
  v22 = v21;
  sub_24F925898();
  v23 = sub_24F925C98();
  v25 = v24;
  v27 = v26;

  sub_24E600B40(v18, v20, v22 & 1);

  v28 = sub_24F9251C8();
  v29 = *(v52 + 36);
  v30 = *MEMORY[0x277CE13B8];
  v31 = sub_24F927748();
  v32 = v53;
  (*(*(v31 - 8) + 104))(&v53[v29], v30, v31);
  *v32 = v28;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v33 = sub_24F925C58();
  v35 = v34;
  LOBYTE(v28) = v36;
  v38 = v37;
  sub_24E600B40(v23, v25, v27 & 1);

  sub_24E601704(v32, &qword_27F213F10);
  sub_24F927628();
  sub_24F9242E8();
  v89 = v28 & 1;
  v39 = v54;
  sub_24F925DB8();
  KeyPath = swift_getKeyPath();
  *&v71 = v33;
  *(&v71 + 1) = v35;
  LOBYTE(v72) = v28 & 1;
  *(&v72 + 1) = v38;
  v77 = v79[6];
  v78 = v79[7];
  v79[0] = v79[8];
  v73 = v79[2];
  v74 = v79[3];
  v75 = v79[4];
  v76 = v79[5];
  *&v79[1] = KeyPath;
  BYTE8(v79[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214758);
  sub_24E631220();
  v41 = v58;
  sub_24F926718();
  (*(v57 + 8))(v39, v59);
  v86 = v77;
  v87 = v78;
  v88[0] = v79[0];
  *(v88 + 9) = *(v79 + 9);
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  sub_24E601704(&v80, &qword_27F214758);
  v42 = v66;
  sub_24E60169C(v66 + 40, &v71, qword_27F24EC90);
  if (*(&v72 + 1))
  {
    v43 = v64;
  }

  else
  {
    v43 = 0;
  }

  v44 = (*(&v72 + 1) == 0) | v65;
  sub_24E601704(&v71, qword_27F21B590);
  v45 = swift_getKeyPath();
  v46 = v55;
  (*(v61 + 32))(v55, v41, v63);
  v47 = v46 + *(v56 + 36);
  *v47 = v45;
  *(v47 + 8) = v43;
  *(v47 + 16) = v44 & 1;
  v48 = v62;
  sub_24E631364(v46, v62);
  *(v48 + *(v60 + 36)) = 0;
  sub_24E60169C(v42 + 40, &v71, qword_27F24EC90);
  sub_24E601704(&v71, qword_27F21B590);
  v49 = v67;
  sub_24F9248B8();
  sub_24E6313D4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v68 + 8))(v49, v70);
  return sub_24E631580(v48);
}

uint64_t sub_24E630F04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24E631684(v7, v5, MEMORY[0x277CDFBC8]);
  sub_24E63163C(&qword_27F214338, MEMORY[0x277CDFBC8]);
  v19 = sub_24F927348();
  result = sub_24E6316EC(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

unint64_t sub_24E631160()
{
  result = qword_27F214730;
  if (!qword_27F214730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214730);
  }

  return result;
}

unint64_t sub_24E631220()
{
  result = qword_27F214760;
  if (!qword_27F214760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214758);
    sub_24E6312D8();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214760);
  }

  return result;
}

unint64_t sub_24E6312D8()
{
  result = qword_27F223560;
  if (!qword_27F223560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223560);
  }

  return result;
}

uint64_t sub_24E631364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6313D4()
{
  result = qword_27F214768;
  if (!qword_27F214768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214750);
    sub_24E63148C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214768);
  }

  return result;
}

unint64_t sub_24E63148C()
{
  result = qword_27F214770;
  if (!qword_27F214770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214758);
    sub_24E631220();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214770);
  }

  return result;
}

uint64_t sub_24E631580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E6315E8()
{
  result = qword_27F214790;
  if (!qword_27F214790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214790);
  }

  return result;
}

uint64_t sub_24E63163C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E631684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6316EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E63175C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214750);
  sub_24E6313D4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E6317C4()
{
  result = qword_27F2147A8;
  if (!qword_27F2147A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2147A8);
  }

  return result;
}

unint64_t sub_24E63181C()
{
  result = qword_27F2147B0;
  if (!qword_27F2147B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2147B0);
  }

  return result;
}

unint64_t sub_24E631874()
{
  result = qword_27F2147B8;
  if (!qword_27F2147B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2147B8);
  }

  return result;
}

uint64_t sub_24E6318C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24E631A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E631B0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsAnnotation()
{
  result = qword_27F2147C0;
  if (!qword_27F2147C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E631C08()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E631E04(319, &qword_27F2147D0, &qword_27F2147D8, &unk_24F93D950, sub_24E631D2C);
        if (v3 <= 0x3F)
        {
          sub_24E631E04(319, &qword_27F213EB8, &qword_27F213EC0, &unk_24F93BCB0, sub_24E61CA00);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24E631D2C()
{
  result = qword_27F2147E0;
  if (!qword_27F2147E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2147D8);
    sub_24E631DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2147E0);
  }

  return result;
}

unint64_t sub_24E631DB0()
{
  result = qword_27F2147E8;
  if (!qword_27F2147E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2147E8);
  }

  return result;
}

void sub_24E631E04(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = sub_24F927EA8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24E631E74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2147F8);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v22 - v6;
  v8 = type metadata accessor for GameDetailsAnnotation();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 40) = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 9) = 0;
  v28 = v10 + 40;
  sub_24E61DA68(&v30, (v10 + 40), qword_27F21B590);
  v11 = v8[6];
  v12 = sub_24F929608();
  v13 = *(*(v12 - 8) + 56);
  v29 = v11;
  v13(&v10[v11], 1, 1, v12);
  v14 = &v10[v8[7]];
  *(v14 + 144) = 0;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *v14 = 0u;
  v15 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E632684();
  v24 = v7;
  v16 = v26;
  sub_24F92D108();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_24E601704(v28, qword_27F24EC90);
    sub_24E601704(&v10[v29], &qword_27F213E68);
    return sub_24E601704(v14, &qword_27F214808);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v33 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v17 = v31;
    *v10 = v30;
    *(v10 + 1) = v17;
    *(v10 + 4) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v33 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v18 = v23;
    sub_24E61DA68(&v30, v28, qword_27F24EC90);
    LOBYTE(v30) = 2;
    sub_24E6326D8(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v5, &v10[v29], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214808);
    v33 = 3;
    sub_24E602068(&qword_27F214810, &qword_27F214808);
    sub_24F92CC68();
    sub_24E61DA68(&v30, v14, &qword_27F214808);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F50);
    v33 = 4;
    v19 = v24;
    sub_24E602068(&qword_27F213F58, &qword_27F213F50);
    sub_24F92CC68();
    v20 = v8[8];
    (*(v18 + 8))(v19, v25);
    *&v10[v20] = v30;
    sub_24E632720(v10, v22);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_24E632784(v10);
  }
}

unint64_t sub_24E6324E4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x697461746F6E6E61;
  if (v1 != 3)
  {
    v4 = 0x73676E69746172;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24E632578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6328F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6325A0(uint64_t a1)
{
  v2 = sub_24E632684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6325DC(uint64_t a1)
{
  v2 = sub_24E632684();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E632684()
{
  result = qword_27F214800;
  if (!qword_27F214800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214800);
  }

  return result;
}

uint64_t sub_24E6326D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E632720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsAnnotation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E632784(uint64_t a1)
{
  v2 = type metadata accessor for GameDetailsAnnotation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E6327F4()
{
  result = qword_27F214818;
  if (!qword_27F214818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214818);
  }

  return result;
}

unint64_t sub_24E63284C()
{
  result = qword_27F214820;
  if (!qword_27F214820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214820);
  }

  return result;
}

unint64_t sub_24E6328A4()
{
  result = qword_27F214828;
  if (!qword_27F214828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214828);
  }

  return result;
}

uint64_t sub_24E6328F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73676E69746172 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24E632AD0()
{
  result = qword_27F214830;
  if (!qword_27F214830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214830);
  }

  return result;
}

uint64_t sub_24E632B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E632CFC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E632BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E632CFC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E632C40()
{
  sub_24E632CFC();
  sub_24F925628();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for AchievementsByGameShelfIntentImplementation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AchievementsByGameShelfIntentImplementation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E632CFC()
{
  result = qword_27F214838;
  if (!qword_27F214838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214838);
  }

  return result;
}

uint64_t GameDashboardLaunchContext.LaunchTarget.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24E632E2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
  sub_24F91FD88();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24E632F20@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
  sub_24F91FD88();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t type metadata accessor for GameDashboardLaunchContext()
{
  result = qword_27F214870;
  if (!qword_27F214870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E633064(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24E633180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void (*sub_24E6331D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24E632DD8();
  return sub_24E63330C;
}

void sub_24E63330C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

uint64_t sub_24E6333A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext__action;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F214858);
}

uint64_t sub_24E633478(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214858);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F214858);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F214858);
}

uint64_t sub_24E6335C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext__action;
  swift_beginAccess();
  return sub_24E60169C(v5 + v3, a1, &qword_27F214858);
}

uint64_t sub_24E6336A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214858);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_24E60169C(a2, &v9 - v5, &qword_27F214858);
  v7 = OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext__action;
  swift_beginAccess();
  sub_24E6346B0(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t GameDashboardLaunchContext.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext__action;
  v2 = type metadata accessor for LaunchDashboardAction();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_24F91FDB8();
  return v0;
}

uint64_t GameDashboardLaunchContext.init()()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext__action;
  v2 = type metadata accessor for LaunchDashboardAction();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_24F91FDB8();
  return v0;
}

uint64_t sub_24E633890(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214858);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for LaunchDashboardAction();
  sub_24E60169C(a1 + *(v10 + 20), v9, &unk_27F23E1F0);
  v11 = type metadata accessor for Player(0);
  v12 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_24E601704(v9, &unk_27F23E1F0);
  if (v12 == 1)
  {
    result = swift_beginAccess();
    if (*(v2 + 16) == 2)
    {
      return result;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v17[-16] = v2;
    v17[-8] = 2;
    v18 = v2;
    sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
  }

  else
  {
    sub_24E634630(a1, v6);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    *&v17[-16] = v2;
    *&v17[-8] = v6;
    v19 = v2;
    sub_24E6343CC(&qword_27F214848, type metadata accessor for GameDashboardLaunchContext);
    sub_24F91FD78();

    sub_24E601704(v6, &qword_27F214858);
    result = swift_beginAccess();
    if (*(v2 + 16) == 1)
    {
      return result;
    }

    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    *&v17[-16] = v2;
    v17[-8] = 1;
    v18 = v2;
  }

  sub_24F91FD78();
}

uint64_t GameDashboardLaunchContext.deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext__action, &qword_27F214858);
  v1 = OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GameDashboardLaunchContext.__deallocating_deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext__action, &qword_27F214858);
  v1 = OBJC_IVAR____TtC12GameStoreKit26GameDashboardLaunchContext___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E633DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_24F928AE8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_24F928698();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  sub_24F92B7F8();
  v6[12] = sub_24F92B7E8();
  v10 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E633F34, v10, v9);
}

uint64_t sub_24E633F34()
{

  type metadata accessor for LaunchDashboardAction();
  v1 = sub_24F928AC8();
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[2];
    (*(v5 + 16))(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v3, v2, v4);
    v7 = sub_24F928688();
    _s12GameStoreKit24AccessPointMetricsHelperO11recordClick13metricsFields7hostAppySDySSypG_SSSgtFZ_0(v7, *v6, *(v6 + 8));

    (*(v5 + 8))(v3, v4);
  }

  else
  {
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  sub_24E633890(v0[2]);
  (*(v9 + 104))(v8, *MEMORY[0x277D21CA8], v10);
  sub_24F92A9C8();
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24E6340E8(uint64_t a1)
{
  v2 = type metadata accessor for LaunchDashboardAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v9 = sub_24F92A9E8();
  type metadata accessor for GameDashboardLaunchContext();
  sub_24F928F28();
  v10 = v18[1];
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_24E634630(a1, v5);
  sub_24F92B7F8();

  v12 = sub_24F92B7E8();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  sub_24E634F38(v5, v15 + v13);
  *(v15 + v14) = v10;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v9;
  sub_24EA998B8(0, 0, v8, &unk_24F93DE58, v15);

  return v9;
}

unint64_t sub_24E634330()
{
  result = qword_27F214860;
  if (!qword_27F214860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214860);
  }

  return result;
}

uint64_t sub_24E6343CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E63441C()
{
  sub_24E6345B0();
  if (v0 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24E6345B0()
{
  if (!qword_27F214880[0])
  {
    type metadata accessor for LaunchDashboardAction();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, qword_27F214880);
    }
  }
}

uint64_t sub_24E634630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchDashboardAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6346B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214858);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E634720()
{
  v1 = type metadata accessor for LaunchDashboardAction();
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = type metadata accessor for Game();
  v5 = v4[18];
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v9 = v4[19];
  v37 = *(v7 + 48);
  if (!v37(v3 + v9, 1, v6))
  {
    v8(v3 + v9, v6);
  }

  v39 = v8;

  v10 = v4[21];
  v11 = sub_24F920818();
  v38 = *(v11 - 8);
  v35 = *(v38 + 48);
  if (!v35(v3 + v10, 1, v11))
  {
    (*(v38 + 8))(v3 + v10, v11);
  }

  v36 = v11;

  v12 = v3 + v1[5];
  v13 = type metadata accessor for Player(0);
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {
    v34 = v1;

    v39(v12 + v13[6], v6);

    if (*(v12 + v13[9] + 8) != 1)
    {
    }

    v14 = v12 + v13[13];
    v15 = type metadata accessor for CallProviderConversationHandleSet();
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {
      v16 = type metadata accessor for CallProviderConversationHandle();
      v17 = v14;
      v18 = *(*(v16 - 8) + 48);
      v33 = v17;
      if (!(v18)(v17, 1, v16))
      {

        v19 = *(type metadata accessor for CallProvider() + 24);
        if (!v37(v33 + v19, 1, v6))
        {
          v39(v33 + v19, v6);
        }
      }

      v32 = v33 + *(v15 + 20);
      if (!v18())
      {

        v20 = *(type metadata accessor for CallProvider() + 24);
        if (!v37(v32 + v20, 1, v6))
        {
          v39(v32 + v20, v6);
        }
      }
    }

    if (*(v12 + v13[15] + 8))
    {
    }

    v21 = v12 + v13[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    v1 = v34;
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v21, 1, PlayedTogetherInfo))
    {

      v39(v21 + v4[18], v6);
      v23 = v4[19];
      if (!v37(v21 + v23, 1, v6))
      {
        v39(v21 + v23, v6);
      }

      v24 = v4[21];
      if (!v35(v21 + v24, 1, v36))
      {
        (*(v38 + 8))(v21 + v24, v36);
      }

      v1 = v34;
    }

    v25 = v12 + v13[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v25, 1, ChallengeInfo))
    {

      v39(v25 + v4[18], v6);
      v27 = v4[19];
      if (!v37(v25 + v27, 1, v6))
      {
        v39(v25 + v27, v6);
      }

      v28 = v4[21];
      if (!v35(v25 + v28, 1, v36))
      {
        (*(v38 + 8))(v25 + v28, v36);
      }
    }
  }

  sub_24E634F20(*(v3 + v1[6]), *(v3 + v1[6] + 8), *(v3 + v1[6] + 16));
  v29 = v1[7];
  v30 = sub_24F928AD8();
  (*(*(v30 - 8) + 8))(v3 + v29, v30);

  return swift_deallocObject();
}