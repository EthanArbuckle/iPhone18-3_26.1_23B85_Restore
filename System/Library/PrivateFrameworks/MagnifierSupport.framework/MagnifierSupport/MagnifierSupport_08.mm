char *sub_257C65338(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_257C65454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_257C65590(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    *(v11 + 3) = 2 * ((v12 - 32) / 96);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[96 * v9])
    {
      memmove(v13, v14, 96 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

size_t sub_257C656D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

char *sub_257C65918(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    v11 = MEMORY[0x277D84F90];
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

char *sub_257C65A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59C0);
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

char *sub_257C65B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6948);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_257C65C6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6980);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FA6A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257C65DA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6920);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257C65F68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

size_t sub_257C660C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

char *sub_257C662BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

uint64_t sub_257C663C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257ED05F0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_257ECF850();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_257C66590(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_257C664C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257C664C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_257ED0640(), (result & 1) == 0))
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

uint64_t sub_257C66590(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_257C66E20(v8);
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
        sub_257C66B6C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x277D84F90];
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
        result = sub_257ED0640();
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
            result = sub_257ED0640();
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
      result = sub_257BFCB00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_257BFCB00((v39 > 1), v40 + 1, 1, v8);
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
        sub_257C66B6C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_257C66E20(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_257C66D94(v44);
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
    if (v37 || (result = sub_257ED0640(), (result & 1) == 0))
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

uint64_t sub_257C66B6C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_257ED0640() & 1) != 0)
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
      if (!v21 && (sub_257ED0640() & 1) != 0)
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

uint64_t sub_257C66D94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_257C66E20(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_257C66E34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F68F0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_257C67308(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 96 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v26[0] = *v18;
      v26[1] = v19;
      v21 = v18[3];
      v20 = v18[4];
      v22 = v18[2];
      *&v27[12] = *(v18 + 76);
      v26[3] = v21;
      *v27 = v20;
      v26[2] = v22;
      memmove(v11, v18, 0x5CuLL);
      if (v14 == v10)
      {
        sub_257C58DDC(v26, v25);
        goto LABEL_24;
      }

      v11 += 96;
      sub_257C58DDC(v26, v25);
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

void *sub_257C6749C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v30 = result;
    v31 = a3;
    result = 0;
    v9 = 0;
    v29 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = a4;
      v15 = *(a4 + 56) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v16 = *(v15 + 8);
      v7 &= v7 - 1;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = *(v15 + 32);
      v20 = *(v15 + 40);
      *v8 = *v15;
      *(v8 + 8) = v16;
      *(v8 + 16) = v18;
      *(v8 + 24) = v17;
      *(v8 + 32) = v19;
      *(v8 + 40) = v20;
      if (v11 == v31)
      {
        v26 = v17;

        v27 = v16;
        v28 = v18;
        a4 = v14;
        v5 = v29;
        result = v30;
        a3 = v31;
        goto LABEL_24;
      }

      v8 += 56;
      v21 = v17;

      v22 = v16;
      v23 = v18;
      result = v11;
      v24 = __OFADD__(v11++, 1);
      a4 = v14;
      if (v24)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
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
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v25 = v9 + 1;
    }

    else
    {
      v25 = v10;
    }

    v9 = v25 - 1;
    a3 = result;
    v5 = v29;
    result = v30;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_257C6764C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v19;
      if (v14 == v10)
      {
        v23 = v19;
        goto LABEL_24;
      }

      v11 += 16;
      v20 = v19;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_257C677A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_257ECCCF0();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_257C67A48(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_257C67BA0(void *result, char *a2, uint64_t a3, uint64_t a4)
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
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 296 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x128uLL);
      memmove(v11, v18, 0x128uLL);
      if (v14 == v10)
      {
        sub_257C09C58(__dst, v22);
        goto LABEL_23;
      }

      v11 += 296;
      sub_257C09C58(__dst, v22);
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_257C67D68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v36 = a4;
  v19 = *(a4 + 64);
  v18 = a4 + 64;
  v17 = v19;
  v20 = -1 << *(v18 - 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v36;
    a1[1] = v18;
    a1[2] = ~v20;
    a1[3] = v23;
    a1[4] = v22;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a3;
    v23 = 0;
    v32 = v20;
    v24 = (63 - v20) >> 6;
    v25 = 1;
    while (v22)
    {
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      a1 = *(v35 + 72);
      sub_257C67FEC(*(v36 + 48) + a1 * (v28 | (v23 << 6)), v13, a6);
      sub_257C31FD8(v13, v16, a6);
      sub_257C31FD8(v16, a2, a6);
      if (v25 == v34)
      {
        a1 = v33;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v26 = v23;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v27 >= v24)
      {
        break;
      }

      v22 = *(v18 + 8 * v27);
      ++v26;
      if (v22)
      {
        v23 = v27;
        goto LABEL_14;
      }
    }

    v22 = 0;
    if (v24 <= v23 + 1)
    {
      v30 = v23 + 1;
    }

    else
    {
      v30 = v24;
    }

    v23 = v30 - 1;
    a1 = v33;
LABEL_23:
    v20 = v32;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_257C67F9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D132B4(*a1, a1[1], a1[2]);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257C67FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_257C68054()
{
  v2 = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75B48]);
  v4 = sub_257ECF4C0();
  v5 = [v3 initWithStyle:1 reuseIdentifier:v4];

  v6 = sub_257ECCEA0();
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = [v5 textLabel];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v10 = [objc_opt_self() bundleForClass_];
        v11 = sub_257ECF4C0();
        v12 = sub_257ECF4C0();
        v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

        if (!v13)
        {
          sub_257ECF500();
          v13 = sub_257ECF4C0();
        }

        [v8 setText_];
      }

      v14 = [v5 textLabel];
      if (v14)
      {
        v15 = v14;
        [v14 setNumberOfLines_];
      }

      v16 = [v5 textLabel];
      if (v16)
      {
        v17 = v16;
        [v16 setLineBreakMode_];
      }

      v18 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = qword_2815447E0;

      if (v19 != -1)
      {
        v20 = swift_once();
      }

      MEMORY[0x28223BE20](v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
      sub_257ECFD50();

      v21 = sub_257C592D0(0, v47);

      [v18 setOn_];
      [v18 addTarget:v2 action:sel_didToggleActivitySwitch_ forControlEvents:4096];
      [v5 setAccessoryView_];
      [v5 setAccessoryType_];
    }

    return v5;
  }

  v22 = sub_257ECCE60();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v23 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities);
    if (v22 < *(v23 + 16))
    {
      v24 = v23 + 16 * v22;
      v1 = *(v24 + 32);
      v2 = *(v24 + 40);

      v25 = [v5 textLabel];
      if (v25)
      {
        v26 = v25;
        type metadata accessor for MAGUtilities();
        v27 = swift_getObjCClassFromMetadata();
        v28 = [objc_opt_self() bundleForClass_];
        v29 = sub_257ECF4C0();
        v30 = sub_257ECF4C0();
        v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

        if (!v31)
        {
          sub_257ECF500();
          v31 = sub_257ECF4C0();
        }

        [v26 setText_];
      }

      if (qword_281544FE0 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_23:
  swift_beginAccess();
  v32 = qword_2815447E0;

  if (v32 != -1)
  {
    v33 = swift_once();
  }

  MEMORY[0x28223BE20](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  if (*(v47 + 16))
  {
    v34 = sub_257C03F6C(v1, v2);
    v36 = v35;

    if (v36)
    {
      v37 = *(*(v47 + 56) + 296 * v34);

      v38 = [v5 detailTextLabel];
      if (v38)
      {
        v39 = v38;
        if (v37)
        {
          type metadata accessor for MAGUtilities();
          v40 = swift_getObjCClassFromMetadata();
          v41 = [objc_opt_self() bundleForClass_];
          v42 = sub_257ECF4C0();
          v43 = sub_257ECF4C0();
          v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

          sub_257ECF500();
        }

        v45 = sub_257ECF4C0();

        [v39 setText_];
      }

      [v5 setAccessoryType_];
    }

    else
    {
    }
  }

  else
  {
  }

  return v5;
}

uint64_t sub_257C68830(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257C68938(int64_t a1)
{
  if (qword_281544FE0 != -1)
  {
LABEL_38:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  v4 = v20;
  if ([a1 isOn])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_6;
  }

  v7 = *(v20 + 16);
  if (v7)
  {
    a1 = 0;
    do
    {
      if (!*(v20 + a1 + 32))
      {
        v8 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          goto LABEL_44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_16;
      }

      ++a1;
    }

    while (v7 != a1);
  }

  a1 = *(v20 + 16);
LABEL_20:
  v8 = a1;
  if (!__OFADD__(v7, a1 - v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || a1 > *(v4 + 3) >> 1)
    {
      if (v7 <= a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_257BFD908(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    }

    sub_257E541E0(a1, v7, 0);
    goto LABEL_28;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v4 = sub_257C7DF14(v4);
LABEL_16:
    v7 = *(v4 + 2);
    if (v8 != v7)
    {
      break;
    }

    v7 = v8;
LABEL_18:
    if (v7 < a1)
    {
      goto LABEL_42;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  v15 = v4 + 32;
  v16 = &v4[a1 + 33];
  while (1)
  {
    if (v8 >= v7)
    {
      __break(1u);
      goto LABEL_38;
    }

    if (*v16)
    {
      break;
    }

LABEL_31:
    ++v8;
    ++v16;
    if (v8 == v7)
    {
      goto LABEL_18;
    }
  }

  if (v8 == a1)
  {
LABEL_30:
    ++a1;
    goto LABEL_31;
  }

  if (a1 < v7)
  {
    v17 = v15[a1];
    v15[a1] = *v16;
    *v16 = v17;
    v7 = *(v4 + 2);
    goto LABEL_30;
  }

  __break(1u);
LABEL_40:
  v4 = sub_257BFD908(0, *(v4 + 2) + 1, 1, v4);
LABEL_6:
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_257BFD908((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v4[v6 + 32] = 0;
LABEL_28:
  v11 = swift_beginAccess();
  MEMORY[0x28223BE20](v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v12 = swift_beginAccess();
  MEMORY[0x28223BE20](v12);

  sub_257ECFD50();

  v13 = sub_257D53928();
  sub_257D53B38(v4, v18, v19, v13);
}

id sub_257C68E18(uint64_t a1)
{
  v78 = a1;
  v1 = sub_257ECCEB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v70 = objc_opt_self();
  v73 = ObjCClassFromMetadata;
  v5 = [v70 bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  sub_257ECF500();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = *(v2 + 16);
  v71 = v2 + 16;
  v69 = v10;
  v10(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v78, v1);
  v11 = *(v2 + 80);
  v12 = (v11 + 24) & ~v11;
  v74 = v3;
  v68 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = *(v2 + 32);
  v72 = v12;
  v75 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v1;
  v67 = v14;
  v14(v13 + v12, v75, v1);
  sub_257ECC3F0();
  v15 = sub_257ECF4C0();

  v84 = sub_257C69744;
  v85 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_257C63898;
  v83 = &block_descriptor_12;
  v16 = _Block_copy(&aBlock);
  v66 = objc_opt_self();
  v17 = [v66 contextualActionWithStyle:0 title:v15 handler:v16];

  v18 = v77;
  _Block_release(v16);

  v65 = objc_opt_self();
  v19 = [v65 systemBlueColor];
  [v17 setBackgroundColor_];

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_257ED9BF0;
  *(v20 + 32) = v17;
  v21 = sub_257BD2C2C(0, &unk_27F8F6A00);
  v22 = v17;
  v64 = v21;
  v23 = sub_257ECF7F0();

  v24 = objc_opt_self();
  v25 = [v24 configurationWithActions_];

  [v25 setPerformsFirstActionWithFullSwipe_];
  v26 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities;
  v27 = *(*(v18 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities) + 16);
  if (sub_257ECCE60() >= v27)
  {
    goto LABEL_14;
  }

  v28 = sub_257ECCE60();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v18 + v26);
    if (v28 < *(v29 + 16))
    {
      v62 = v22;
      v22 = v25;
      v30 = v29 + 16 * v28;
      v9 = *(v30 + 32);
      v12 = *(v30 + 40);
      v31 = qword_281544FE0;

      if (v31 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_5:
  v61 = v24;
  v32 = qword_281548348;
  swift_beginAccess();
  v33 = v32[12];
  v34 = v32[13];
  aBlock = v32[11];
  v81 = v33;
  v82 = v34;
  v35 = qword_2815447E0;

  if (v35 != -1)
  {
    v36 = swift_once();
  }

  MEMORY[0x28223BE20](v36);
  *(&v61 - 2) = &aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v37 = v79;
  if (!*(v79 + 16))
  {

    v25 = v22;
LABEL_13:
    v22 = v62;
    goto LABEL_14;
  }

  v38 = sub_257C03F6C(v9, v12);
  v40 = v39;

  v25 = v22;
  if ((v40 & 1) == 0)
  {

    goto LABEL_13;
  }

  v41 = *(*(v37 + 56) + 296 * v38 + 1);

  v22 = v62;
  if (v41)
  {
    v42 = [v70 bundleForClass_];
    v43 = sub_257ECF4C0();
    v44 = sub_257ECF4C0();
    v45 = v25;
    v46 = [v42 localizedStringForKey:v43 value:0 table:v44];

    sub_257ECF500();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v75;
    v49 = v76;
    v69(v75, v78, v76);
    v50 = v72;
    v51 = swift_allocObject();
    *(v51 + 16) = v47;
    v67(v51 + v50, v48, v49);
    sub_257ECC3F0();
    v52 = sub_257ECF4C0();

    v84 = sub_257C69838;
    v85 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v81 = 1107296256;
    v82 = sub_257C63898;
    v83 = &block_descriptor_12;
    v53 = _Block_copy(&aBlock);
    v54 = [v66 contextualActionWithStyle:1 title:v52 handler:v53];

    _Block_release(v53);

    v55 = [v65 systemRedColor];
    [v54 setBackgroundColor_];

    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_257ED9BE0;
    *(v56 + 32) = v54;
    *(v56 + 40) = v22;
    v57 = v22;
    v58 = v54;
    v59 = sub_257ECF7F0();

    v25 = [v61 configurationWithActions_];

    [v25 setPerformsFirstActionWithFullSwipe_];
  }

LABEL_14:

  return v25;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t objectdestroy_3Tm()
{
  v1 = sub_257ECCEB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257C69850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_257ECCEB0() - 8);
  v11 = *(v5 + 16);
  v12 = v5 + ((*(v10 + 80) + 24) & ~*(v10 + 80));

  return a5(a1, a2, a3, a4, v11, v12);
}

void sub_257C69900(uint64_t a1)
{
  v3 = *(sub_257ECCEB0() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_257C63474(a1, v4, v5, v6, v7);
}

uint64_t sub_257C699C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D132B4(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_257C69A6C()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C69B84()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C69DB4()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C69F7C()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C6A188()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C6A45C()
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](0);
  return sub_257ED0800();
}

uint64_t sub_257C6A4C8()
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](0);
  return sub_257ED0800();
}

uint64_t sub_257C6A5DC()
{
  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url, &qword_27F8F5F30);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetectionRecordedFile()
{
  result = qword_2815447A8;
  if (!qword_2815447A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257C6A6B8()
{
  sub_257C6A75C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257C6A75C()
{
  if (!qword_281545C48)
  {
    sub_257ECCB70();
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_281545C48);
    }
  }
}

unint64_t sub_257C6A848()
{
  result = qword_27F8F6AC0;
  if (!qword_27F8F6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6AC0);
  }

  return result;
}

unint64_t sub_257C6A89C()
{
  result = qword_27F8F6AC8;
  if (!qword_27F8F6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6AC8);
  }

  return result;
}

unint64_t sub_257C6A954()
{
  result = qword_27F8F6AF0;
  if (!qword_27F8F6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6AF0);
  }

  return result;
}

unint64_t sub_257C6A9A8()
{
  result = qword_27F8F6AF8;
  if (!qword_27F8F6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6AF8);
  }

  return result;
}

unint64_t sub_257C6AA60()
{
  result = qword_27F8F6B20;
  if (!qword_27F8F6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B20);
  }

  return result;
}

unint64_t sub_257C6AAB4()
{
  result = qword_27F8F6B28;
  if (!qword_27F8F6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B28);
  }

  return result;
}

uint64_t sub_257C6AB38(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257C6AB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCB70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6B40);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  swift_beginAccess();
  v30 = a1;
  sub_257C1C614(a1 + v17, v16);
  v18 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  swift_beginAccess();
  v19 = *(v8 + 56);
  sub_257C1C614(v16, v10);
  v31 = a2;
  sub_257C1C614(a2 + v18, &v10[v19]);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) != 1)
  {
    sub_257C1C614(v10, v14);
    if (v20(&v10[v19], 1, v4) != 1)
    {
      v22 = v29;
      (*(v5 + 32))(v29, &v10[v19], v4);
      sub_257C6AF60();
      v23 = sub_257ECF450();
      v24 = *(v5 + 8);
      v24(v22, v4);
      sub_257BE4084(v16, &qword_27F8F5F30);
      v24(v14, v4);
      sub_257BE4084(v10, &qword_27F8F5F30);
      if (v23)
      {
        goto LABEL_9;
      }

LABEL_7:
      v21 = 0;
      return v21 & 1;
    }

    sub_257BE4084(v16, &qword_27F8F5F30);
    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_257BE4084(v10, &qword_27F8F6B40);
    goto LABEL_7;
  }

  sub_257BE4084(v16, &qword_27F8F5F30);
  if (v20(&v10[v19], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_257BE4084(v10, &qword_27F8F5F30);
LABEL_9:
  v25 = *(v30 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
  v26 = *(v31 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
  v21 = v26 == 2 && v25 == 2;
  if (v25 != 2 && v26 != 2)
  {
    v21 = v26 ^ v25 ^ 1;
  }

  return v21 & 1;
}

unint64_t sub_257C6AF60()
{
  result = qword_27F8F6B48;
  if (!qword_27F8F6B48)
  {
    sub_257ECCB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B48);
  }

  return result;
}

unint64_t sub_257C6AFB8()
{
  result = qword_27F8F6B50;
  if (!qword_27F8F6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B50);
  }

  return result;
}

unint64_t sub_257C6B00C()
{
  result = qword_27F8F6B58;
  if (!qword_27F8F6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B58);
  }

  return result;
}

unint64_t sub_257C6B060()
{
  result = qword_27F8F6B60;
  if (!qword_27F8F6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B60);
  }

  return result;
}

unint64_t sub_257C6B0B4()
{
  result = qword_27F8F6B68;
  if (!qword_27F8F6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B68);
  }

  return result;
}

unint64_t sub_257C6B108()
{
  result = qword_281544828;
  if (!qword_281544828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544828);
  }

  return result;
}

unint64_t sub_257C6B15C()
{
  result = qword_2815458F0;
  if (!qword_2815458F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458F0);
  }

  return result;
}

uint64_t sub_257C6B1E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AssistiveAccessViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView;
  v5 = *&v3[OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView];
  v6 = [v5 layer];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectWeakAssign();
    v7 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession);
    v8 = *&v3[v4];
    v9 = v7;
    v10 = [v8 layer];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 setSession_];

      return v3;
    }
  }

  else
  {
  }

  result = sub_257ED0410();
  __break(1u);
  return result;
}

void sub_257C6B378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession);
  v4 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView);
  v5 = v3;
  v7 = [v4 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    [v6 setSession_];
  }

  else
  {

    sub_257ED0410();
    __break(1u);
  }
}

uint64_t sub_257C6B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257C6C35C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_257C6B53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257C6C35C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_257C6B5A0()
{
  sub_257C6C35C();
  sub_257ECE8D0();
  __break(1u);
}

id sub_257C6B6AC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView] setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257EDBE40;
  v5 = [*&v0[v1] widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  v7 = [result widthAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  [result frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v43.origin.x = v10;
  v43.origin.y = v12;
  v43.size.width = v14;
  v43.size.height = v16;
  v17 = [v5 constraintEqualToAnchor:v7 constant:CGRectGetWidth(v43) * 0.5];

  *(v4 + 32) = v17;
  v18 = [*&v0[v1] heightAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  v20 = [result heightAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = result;
  [result frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v44.origin.x = v23;
  v44.origin.y = v25;
  v44.size.width = v27;
  v44.size.height = v29;
  v30 = [v18 constraintEqualToAnchor:v20 constant:CGRectGetHeight(v44) * 0.5];

  *(v4 + 40) = v30;
  v31 = [*&v0[v1] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = result;
  v33 = [result centerXAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v4 + 48) = v34;
  v35 = [*&v0[v1] centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v36 = result;
  v37 = objc_opt_self();
  v38 = [v36 centerYAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v4 + 56) = v39;
  sub_257BD2C2C(0, &qword_281543EF0);
  v40 = sub_257ECF7F0();

  [v37 activateConstraints_];

  [*&v0[v1] setAccessibilityIgnoresInvertColors_];
  [*&v0[v1] setAccessibilityTraits_];
  v41 = *&v0[v1];

  return [v41 setIsAccessibilityElement_];
}

uint64_t sub_257C6BBA8()
{
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo22UIInterfaceOrientationV16MagnifierSupportE6windowABvgZ_0();
  v6 = v5;
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView);
  v8 = [v7 layer];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;

    v11 = [v10 connection];
    if (v11)
    {
      [v11 setVideoRotationAngle_];
    }

    sub_257ECD470();
    v12 = sub_257ECDA20();
    v13 = sub_257ECFC00();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v6;
      v21 = v15;
      *v14 = 136315138;
      type metadata accessor for UIInterfaceOrientation(0);
      v16 = sub_257ECF570();
      v18 = sub_257BF1FC8(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_257BAC000, v12, v13, "Updating AVCaptureVideoPreviewLayer orientation to %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x259C74820](v15, -1, -1);
      MEMORY[0x259C74820](v14, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  else
  {

    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

id sub_257C6BFF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssistiveAccessViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257C6C1F8()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

unint64_t sub_257C6C308()
{
  result = qword_27F8F6B80;
  if (!qword_27F8F6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B80);
  }

  return result;
}

unint64_t sub_257C6C35C()
{
  result = qword_27F8F6B88;
  if (!qword_27F8F6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B88);
  }

  return result;
}

uint64_t sub_257C6C3B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AsyncController.VisibilityAssertion();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  result = sub_257C6C43C();
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_257C6C43C()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 40);
  os_unfair_lock_lock(*(v10 + 16));
  v11 = *(v1 + 48);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + 48) = v13;
  if (v13 != 1)
  {
    if (v13 > 1)
    {
      os_unfair_lock_unlock(*(v10 + 16));
      return swift_endAccess();
    }

LABEL_10:
    result = sub_257ED0410();
    __break(1u);
    return result;
  }

  v18[0] = v3;
  os_unfair_lock_unlock(*(v10 + 16));
  swift_endAccess();
  sub_257BD2C2C(0, &qword_281543DA0);
  sub_257BD2C2C(0, &qword_281543F10);
  v14 = sub_257ECFD30();
  v15 = sub_257ECFF50();

  if ((v15 & 1) == 0 || (result = [objc_opt_self() isMainThread], (result & 1) == 0))
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_30;
    v17 = _Block_copy(aBlock);
    sub_257ECC3F0();
    sub_257ECF150();
    v18[1] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v9, v5, v17);
    _Block_release(v17);
    (*(v18[0] + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_257C6C7CC()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = v0[5];
  os_unfair_lock_lock(*(v9 + 16));
  v10 = v0[6];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
LABEL_10:
    result = sub_257ED0410();
    __break(1u);
    return result;
  }

  v0[6] = v12;
  if (v12)
  {
    if (v12 > 0)
    {
      os_unfair_lock_unlock(*(v9 + 16));
      return swift_endAccess();
    }

    goto LABEL_10;
  }

  v20 = v2;
  os_unfair_lock_unlock(*(v9 + 16));
  swift_endAccess();
  sub_257BD2C2C(0, &qword_281543DA0);
  v14 = v0;
  v15 = v0[3];
  sub_257BD2C2C(0, &qword_281543F10);
  v16 = sub_257ECFD30();
  v21 = v15;
  v17 = sub_257ECFF50();

  if ((v17 & 1) == 0 || (result = [objc_opt_self() isMainThread], (result & 1) == 0))
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_13;
    v18 = _Block_copy(aBlock);
    sub_257ECC3F0();
    sub_257ECF150();
    v22 = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v8, v4, v18);
    _Block_release(v18);
    (*(v20 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t AsyncController.deinit()
{

  return v0;
}

uint64_t AsyncController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257C6CBF4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncController();
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

uint64_t sub_257C6CCD8()
{
  MEMORY[0x259C74820](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_257C6CD60()
{
  if (swift_weakLoadStrong())
  {
    sub_257C6C7CC();
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_257C6CDC0(uint64_t *a1, int a2)
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

uint64_t sub_257C6CE08(uint64_t result, int a2, int a3)
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

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257C6CF5C()
{
  result = qword_27F8F6B90;
  if (!qword_27F8F6B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F6B90);
  }

  return result;
}

unint64_t sub_257C6CFAC()
{
  result = qword_27F8F6B98;
  if (!qword_27F8F6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B98);
  }

  return result;
}

unint64_t sub_257C6D004()
{
  result = qword_27F8F6BA0;
  if (!qword_27F8F6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BA0);
  }

  return result;
}

unint64_t sub_257C6D0C4()
{
  result = qword_27F8F6BA8;
  if (!qword_27F8F6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BA8);
  }

  return result;
}

uint64_t sub_257C6D118()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912F08);
  __swift_project_value_buffer(v0, qword_27F912F08);
  return sub_257ECCA00();
}

uint64_t sub_257C6D17C()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257C6D26C, v3, v2);
}

uint64_t sub_257C6D26C()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EDA120;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257C6D350;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257C6D350()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257C6D4F8;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C6D490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C6D4F8()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DetectTextIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257C6D674@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F45C8 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257C6D730(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C6D804, v3, v2);
}

uint64_t sub_257C6D804()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EDE200, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257C6D918(uint64_t a1)
{
  v2 = sub_257C6D0C4();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_257C6D964()
{
  result = qword_27F8F6BB0;
  if (!qword_27F8F6BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BB0);
  }

  return result;
}

uint64_t sub_257C6D9C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257C6D17C();
}

uint64_t sub_257C6DA74(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t MAGAdvancedEventHandler.send(_:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *a1;
  *(v2 + 81) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_257C6DB5C, 0, 0);
}

uint64_t sub_257C6DB5C()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  v3 = *(v2 + 32);
  *(v0 + 82) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 152) = v6;
    *(v0 + 160) = v8;
    v10 = *(v0 + 81);
    v11 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v12 = (*(v7 + 48) + v11);
    *(v0 + 168) = *v12;
    *(v0 + 176) = v12[1];
    v13 = (*(v7 + 56) + v11);
    v14 = *v13;
    *(v0 + 184) = v13[1];
    *(v0 + 64) = *(v0 + 128);
    *(v0 + 80) = v10;

    sub_257ECC3F0();
    v18 = (v14 + *v14);
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    *v15 = v0;
    v15[1] = sub_257C6DD80;

    return v18();
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_257C6DD80()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_257C6E09C;
  }

  else
  {

    v2 = sub_257C6DEAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_257C6DEAC()
{
  v1 = *(v0 + 160);
  v2 = (*(v0 + 152) - 1) & *(v0 + 152);
  if (v2)
  {
    v3 = *(v0 + 144);
LABEL_7:
    *(v0 + 152) = v2;
    *(v0 + 160) = v1;
    v5 = *(v0 + 81);
    v6 = (v1 << 10) | (16 * __clz(__rbit64(v2)));
    v7 = (*(v3 + 48) + v6);
    *(v0 + 168) = *v7;
    *(v0 + 176) = v7[1];
    v8 = (*(v3 + 56) + v6);
    v9 = *v8;
    *(v0 + 184) = v8[1];
    *(v0 + 64) = *(v0 + 128);
    *(v0 + 80) = v5;

    sub_257ECC3F0();
    v12 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_257C6DD80;

    v12();
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 144);
      if (v4 >= (((1 << *(v0 + 82)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 8);

    v11();
  }
}

uint64_t sub_257C6E09C()
{
  v32 = v0;
  v1 = *(v0 + 200);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 81);
  sub_257ECD4F0();

  sub_257BE66F0(v3, v2, v4);
  v5 = v1;
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBE0();

  sub_257C5D470(v3, v2, v4);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v26 = *(v0 + 81);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v27 = *(v0 + 112);
    v28 = *(v0 + 104);
    v29 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v12 = 136315650;
    v14 = sub_257BF1FC8(v9, v8, v30);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v30[1] = v10;
    v30[2] = v11;
    v31 = v26;
    v15 = MAGAdvancedEvent.description.getter();
    v17 = sub_257BF1FC8(v15, v16, v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v18 = sub_257ED0720();
    v20 = sub_257BF1FC8(v18, v19, v30);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_257BAC000, v6, v7, "Handler=%s error handling event=%s. Error=%s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v13, -1, -1);
    MEMORY[0x259C74820](v12, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t MAGAdvancedEventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BE96E8(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t MAGAdvancedEventHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC7964(&unk_257EDE220, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  return swift_endAccess();
}

Swift::Void __swiftcall MAGAdvancedEventHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  v5 = sub_257C03F6C(countAndFlagsBits, object);
  v7 = v6;

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C08F88();
    }

    sub_257C09E7C(v5, v9);
    *(v2 + 16) = v9;
  }

  swift_endAccess();
}

uint64_t MAGAdvancedEventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257C6E5C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257BE3DE0;

  return sub_257C0334C(a1, a2, v6);
}

unint64_t sub_257C6E7C0()
{
  result = qword_27F8F6BD0;
  if (!qword_27F8F6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BD0);
  }

  return result;
}

uint64_t sub_257C6E814(uint64_t a1, uint64_t a2)
{
  *(v2 + 656) = a2;
  v4 = sub_257ECDA30();
  *(v2 + 664) = v4;
  *(v2 + 672) = *(v4 - 8);
  *(v2 + 680) = swift_task_alloc();
  *(v2 + 688) = swift_task_alloc();
  *(v2 + 696) = swift_task_alloc();
  v5 = sub_257ECCC80();
  *(v2 + 704) = v5;
  *(v2 + 712) = *(v5 - 8);
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  v6 = sub_257ECF120();
  *(v2 + 736) = v6;
  *(v2 + 744) = *(v6 - 8);
  *(v2 + 752) = swift_task_alloc();
  v7 = sub_257ECF190();
  *(v2 + 760) = v7;
  *(v2 + 768) = *(v7 - 8);
  *(v2 + 776) = swift_task_alloc();
  *(v2 + 784) = *a1;
  *(v2 + 997) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 800) = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  *(v2 + 808) = v9;
  *(v2 + 816) = v8;

  return MEMORY[0x2822009F8](sub_257C6EA58, v9, v8);
}

uint64_t sub_257C6EA58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 824) = Strong;
  if (!Strong)
  {

    goto LABEL_41;
  }

  v2 = Strong;
  v3 = *(v0 + 997);
  if (v3 > 2)
  {
    if (v3 == 3 || v3 == 4)
    {
LABEL_13:

      goto LABEL_40;
    }

    v13 = *(v0 + 784);
    v14 = *(v0 + 792);
    if (v13 <= 1)
    {
      if (v13 | v14)
      {

        v64 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
        if (v64)
        {
          v65 = *(v0 + 776);
          v66 = *(v0 + 768);
          v154 = *(v0 + 760);
          v67 = *(v0 + 752);
          v68 = *(v0 + 744);
          v69 = *(v0 + 736);
          *(v0 + 144) = sub_257C72000;
          *(v0 + 152) = 0;
          *(v0 + 112) = MEMORY[0x277D85DD0];
          *(v0 + 120) = 1107296256;
          *(v0 + 128) = sub_257D231C0;
          *(v0 + 136) = &block_descriptor_68;
          v70 = _Block_copy((v0 + 112));
          v148 = v64;
          sub_257ECF150();
          *(v0 + 624) = MEMORY[0x277D84F90];
          sub_257BD5668();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
          sub_257BD56C0();
          sub_257ED0180();
          MEMORY[0x259C72880](0, v65, v67, v70);
          _Block_release(v70);
          (*(v68 + 8))(v67, v69);
          (*(v66 + 8))(v65, v154);
          v71 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v72 = swift_allocObject();
          *(v72 + 16) = v71;
          *(v72 + 24) = v148;
          v73 = v148;
          sub_257ECC3F0();
          sub_257E10374(0, sub_257C73184, v72);

          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v26 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
      if (!v26)
      {
        v76 = sub_257DFF3FC();
        v77 = sub_257D83290();

        [v77 setUserInteractionEnabled_];
        goto LABEL_40;
      }

      v27 = *(v0 + 776);
      v145 = *(v0 + 768);
      v151 = *(v0 + 760);
      v28 = *(v0 + 752);
      v140 = *(v0 + 744);
      v29 = *(v0 + 736);
      *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechDepthArray] = MEMORY[0x277D84F90];
      v30 = v26;

      v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect] = 0;
      v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect] = 0;
      sub_257BD2C2C(0, &qword_281543F10);
      v31 = sub_257ECFD30();
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      *(v32 + 24) = v30;
      *(v0 + 96) = sub_257C7318C;
      *(v0 + 104) = v32;
      *(v0 + 64) = MEMORY[0x277D85DD0];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_257D231C0;
      *(v0 + 88) = &block_descriptor_78;
      v33 = _Block_copy((v0 + 64));
      v34 = v30;
      v35 = v2;
      sub_257ECF150();
      *(v0 + 600) = MEMORY[0x277D84F90];
      sub_257BD5668();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD56C0();
      sub_257ED0180();
      MEMORY[0x259C72880](0, v27, v28, v33);
      _Block_release(v33);

      (*(v140 + 8))(v28, v29);
      (*(v145 + 8))(v27, v151);
    }

    else
    {
      if (!(v13 ^ 2 | v14))
      {
        v54 = *(v0 + 776);
        v147 = *(v0 + 768);
        v153 = *(v0 + 760);
        v55 = *(v0 + 752);
        v56 = *(v0 + 744);
        v57 = *(v0 + 736);

        sub_257BD2C2C(0, &qword_281543F10);
        v142 = sub_257ECFD30();
        v58 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v0 + 192) = sub_257C72F68;
        *(v0 + 200) = v58;
        *(v0 + 160) = MEMORY[0x277D85DD0];
        *(v0 + 168) = 1107296256;
        *(v0 + 176) = sub_257D231C0;
        *(v0 + 184) = &block_descriptor_6_2;
        v59 = _Block_copy((v0 + 160));
        sub_257ECC3F0();
        sub_257ECF150();
        *(v0 + 640) = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD56C0();
        sub_257ED0180();
        MEMORY[0x259C72880](0, v54, v55, v59);
        _Block_release(v59);

        (*(v56 + 8))(v55, v57);
        (*(v147 + 8))(v54, v153);

        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(v0 + 566) != 1)
        {
          goto LABEL_40;
        }

        v60 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService];
        sub_257C41F04();
        goto LABEL_95;
      }

      if (v13 ^ 3 | v14)
      {

        v61 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
        if (v61)
        {
          v62 = *(v61 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton);
          if (v62)
          {
            v63 = v62;
            [v63 setHidden_];

            goto LABEL_41;
          }
        }

        goto LABEL_40;
      }

      v15 = *(v0 + 776);
      v144 = *(v0 + 768);
      v150 = *(v0 + 760);
      v16 = *(v0 + 752);
      v17 = *(v0 + 744);
      v18 = *(v0 + 736);

      sub_257BD2C2C(0, &qword_281543F10);
      v139 = sub_257ECFD30();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v0 + 48) = sub_257C72F48;
      *(v0 + 56) = v19;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_257D231C0;
      *(v0 + 40) = &block_descriptor_14;
      v20 = _Block_copy((v0 + 16));
      sub_257ECC3F0();
      sub_257ECF150();
      *(v0 + 616) = MEMORY[0x277D84F90];
      sub_257BD5668();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD56C0();
      sub_257ED0180();
      MEMORY[0x259C72880](0, v15, v16, v20);
      _Block_release(v20);

      (*(v17 + 8))(v16, v18);
      (*(v144 + 8))(v15, v150);

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (*(v0 + 993) != 1 || (v21 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView]) == 0)
      {
LABEL_40:

        goto LABEL_41;
      }

      v22 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService];
      v23 = v21;
      v24 = v22;
      v25 = [v23 scene];
      sub_257C416F0(v25);
    }

LABEL_41:

    v52 = *(v0 + 8);

    return v52();
  }

  if (*(v0 + 997))
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 792);
      v5 = *(v0 + 784);

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (*(v0 + 564) == 1)
      {
        sub_257C1651C(v4);
      }

      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v6 = *(v0 + 792);
  v7 = *(v0 + 784);
  v8 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastARFrame;
  v9 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastARFrame);
  if (v9)
  {
    sub_257BD2C2C(0, &qword_27F8F6BD8);
    v10 = v6;
    sub_257C73068(v7, v6, 0);
    v11 = v9;
    v12 = sub_257ECFF50();

    if (v12)
    {

LABEL_39:
      goto LABEL_40;
    }
  }

  else
  {
    v36 = v6;
    sub_257C73068(v7, v6, 0);
  }

  v37 = *&v2[v8];
  *&v2[v8] = *(v0 + 792);

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 563) == 1)
  {
    v38 = *(v0 + 776);
    v141 = *(v0 + 768);
    v146 = *(v0 + 760);
    v39 = v7;
    v40 = *(v0 + 752);
    v41 = *(v0 + 744);
    v152 = v6;
    v42 = *(v0 + 736);
    sub_257BD2C2C(0, &qword_281543F10);
    v138 = sub_257ECFD30();
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v0 + 240) = sub_257C7317C;
    *(v0 + 248) = v43;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_257D231C0;
    *(v0 + 232) = &block_descriptor_65;
    v44 = _Block_copy((v0 + 208));
    v45 = v39;
    sub_257ECF150();
    *(v0 + 632) = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v38, v40, v44);
    _Block_release(v44);

    v46 = v40;
    v7 = v39;
    v47 = v42;
    v6 = v152;
    (*(v41 + 8))(v46, v47);
    (*(v141 + 8))(v38, v146);
  }

  v48 = [v7 currentFrame];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 capturedImage];
  }

  else
  {
    v50 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 648) = v50;
  sub_257ECC3F0();
  sub_257ECDD70();
  v51 = qword_281548348;
  *(v0 + 832) = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((*(v0 + 561) & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , *(v0 + 327) == 1) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 325) & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 324) & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 323) & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 322) & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 326) & 1) == 0))
  {

    goto LABEL_39;
  }

  *(v0 + 994) = 0;
  *(v0 + 584) = 0;
  *(v0 + 592) = 0;
  *(v0 + 568) = 0;
  *(v0 + 576) = 0;
  v74 = v6;
  if ((sub_257BD7140(v74, (v0 + 994), (v0 + 568), (v0 + 584)) & 1) == 0)
  {

    sub_257ECC3F0();
    sub_257CC0214();

    sub_257DFE168();
    sub_257BD87F0(*(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), *(v0 + 994));

    *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechDepthArray] = MEMORY[0x277D84F90];

    sub_257C1D94C();

    goto LABEL_41;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 321))
  {
    goto LABEL_60;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 995) == 1)
  {
    v78 = v51 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
    swift_beginAccess();
    v79 = *(v78 + 8);
    v80 = *(v78 + 16);
    *(v0 + 544) = *v78;
    *(v0 + 552) = v79;
    *(v0 + 560) = v80;
    v81 = qword_2815447E0;

    if (v81 != -1)
    {
      swift_once();
    }

    *(swift_task_alloc() + 16) = v0 + 544;
    sub_257ECFD50();

    if (*(v0 + 565) == 1)
    {
LABEL_60:
      v75 = v74;
      sub_257DD5308(v75);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 996) == 1)
  {
    v155 = v74;
    v82 = *(v0 + 720);
    v83 = *(v0 + 712);
    v84 = *(v0 + 704);
    sub_257ECCC70();
    v149 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionService;
    v85 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionService];
    v86 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorCheckTime;
    swift_beginAccess();
    v87 = v85 + v86;
    v88 = v83;
    v89 = *(v83 + 16);
    v89(v82, v87, v84);
    sub_257ECCBC0();
    v91 = v90;
    v92 = *(v88 + 8);
    v92(v82, v84);
    if (v91 <= 0.05)
    {
      v92(*(v0 + 728), *(v0 + 704));

      v74 = v155;
    }

    else
    {
      v143 = v92;
      v93 = *(v0 + 720);
      v94 = *(v0 + 712);
      v95 = *(v0 + 704);
      v96 = *&v2[v149];
      v89(v93, *(v0 + 728), v95);
      v97 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorCheckTime;
      swift_beginAccess();
      (*(v94 + 40))(v96 + v97, v93, v95);
      swift_endAccess();
      v98 = [v2 view];
      if (!v98)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v98, v99, v100);
      }

      v101 = v98;
      v102 = *(v0 + 728);
      v103 = *(v0 + 704);

      [v101 bounds];
      v105 = v104;
      v107 = v106;

      v74 = v155;
      v108 = v155;
      sub_257C22580(v108, v105, v107);

      v143(v102, v103);
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 992) == 1)
  {
    sub_257C15F84(v74);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 567) != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v113 = *(v0 + 824);
    if (*(v0 + 562) == 1)
    {
      v114 = *(v0 + 720);
      v115 = *(v0 + 712);
      v116 = *(v0 + 704);
      v117 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService;
      *(v0 + 856) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService;
      v118 = *&v113[v117];
      v119 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
      swift_beginAccess();
      v120 = *(v115 + 16);
      *(v0 + 864) = v120;
      *(v0 + 872) = (v115 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v120(v114, v118 + v119, v116);
      sub_257ECCC10();
      v122 = v121;
      v123 = *(v115 + 8);
      *(v0 + 880) = v123;
      *(v0 + 888) = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v123(v114, v116);
      if (v122 < -5.0)
      {
        v124 = [*(v0 + 792) capturedImage];
        type metadata accessor for MAGCVPixelBufferWrapper();
        inited = swift_initStackObject();
        *(v0 + 896) = inited;
        *(inited + 16) = v124;
        v111 = swift_task_alloc();
        *(v0 + 904) = v111;
        *v111 = v0;
        v112 = sub_257C705AC;
        goto LABEL_77;
      }

      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      v125 = *(v0 + 880);
      v126 = *(v0 + 864);
      v127 = *(v0 + 824);
      v128 = *(v0 + 720);
      v129 = *(v0 + 704);
      v130 = byte_27F8F78A0;
      *(v0 + 998) = byte_27F8F78A0;
      v131 = v130 ? 0.01 : 0.25;
      v132 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
      *(v0 + 920) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
      swift_beginAccess();
      v126(v128, v127 + v132, v129);
      sub_257ECCC10();
      v134 = v133;
      v125(v128, v129);
      v113 = *(v0 + 824);
      if (v131 < -v134)
      {
        v135 = *(*&v113[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
        if (v135)
        {
          v136 = *(v0 + 856);
          [v135 videoRotationAngleForHorizonLevelPreview];
          *(*&v113[v136] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = v137;
        }

        v98 = sub_257C70920;
        v99 = 0;
        v100 = 0;

        return MEMORY[0x2822009F8](v98, v99, v100);
      }
    }

    v60 = *(v0 + 792);
    v2 = *(v0 + 784);

LABEL_95:
    goto LABEL_40;
  }

  v109 = [v74 capturedImage];
  type metadata accessor for MAGCVPixelBufferWrapper();
  inited = swift_initStackObject();
  *(v0 + 840) = inited;
  *(inited + 16) = v109;
  v111 = swift_task_alloc();
  *(v0 + 848) = v111;
  *v111 = v0;
  v112 = sub_257C70450;
LABEL_77:
  v111[1] = v112;

  return sub_257C2F68C(inited);
}

uint64_t sub_257C70450()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 840);
  if (v0)
  {

    swift_setDeallocating();
    v5 = *(v3 + 816);
    v6 = *(v3 + 808);
    v7 = sub_257C71178;
  }

  else
  {
    swift_setDeallocating();

    v5 = *(v3 + 816);
    v6 = *(v3 + 808);
    v7 = sub_257C731E0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_257C705AC()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = v2[102];
    v4 = v2[101];
    v5 = sub_257C71588;
  }

  else
  {
    v6 = v2[112];
    swift_setDeallocating();

    v3 = v2[102];
    v4 = v2[101];
    v5 = sub_257C706DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257C706DC()
{
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 880);
  v2 = *(v0 + 864);
  v3 = *(v0 + 824);
  v4 = *(v0 + 720);
  v5 = *(v0 + 704);
  v6 = byte_27F8F78A0;
  *(v0 + 998) = byte_27F8F78A0;
  if (v6)
  {
    v7 = 0.01;
  }

  else
  {
    v7 = 0.25;
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
  *(v0 + 920) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
  swift_beginAccess();
  v2(v4, v3 + v8, v5);
  sub_257ECCC10();
  v10 = v9;
  v1(v4, v5);
  if (v7 >= -v10)
  {
    v15 = *(v0 + 824);
    v16 = *(v0 + 792);
    v17 = *(v0 + 784);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v11 = *(v0 + 824);
    v12 = *(*(v11 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
    if (v12)
    {
      v13 = *(v0 + 856);
      [v12 videoRotationAngleForHorizonLevelPreview];
      *(*(v11 + v13) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = v14;
    }

    return MEMORY[0x2822009F8](sub_257C70920, 0, 0);
  }
}

uint64_t sub_257C70920()
{
  if (qword_27F8F4620 != -1)
  {
    swift_once();
  }

  if (byte_27F8F78A1 == 1 && *(v0 + 998) != 0)
  {
    *(v0 + 280) = &type metadata for MFFeatureFlags;
    *(v0 + 288) = sub_257C73100();
    *(v0 + 256) = 2;
    sub_257ECCF60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 256);
  }

  v2 = *(v0 + 816);
  v3 = *(v0 + 808);

  return MEMORY[0x2822009F8](sub_257C709F4, v3, v2);
}

uint64_t sub_257C709F4()
{
  v1 = v0[99];
  v0[116] = *(v0[103] + v0[107]);
  v2 = [v1 capturedImage];

  type metadata accessor for MAGCVPixelBufferWrapper();
  v3 = swift_allocObject();
  v0[117] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_257C70AA4, 0, 0);
}

uint64_t sub_257C70AA4()
{
  v1 = swift_task_alloc();
  *(v0 + 944) = v1;
  *(v1 + 16) = *(v0 + 928);
  v2 = swift_task_alloc();
  *(v0 + 952) = v2;
  *v2 = v0;
  v2[1] = sub_257C70B90;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000028, 0x8000000257EFA0E0, sub_257C253C4, v1, v3);
}

uint64_t sub_257C70B90()
{

  if (v0)
  {

    v1 = sub_257C70E74;
  }

  else
  {

    v1 = sub_257C70CD8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_257C70CD8()
{

  v1 = *(v0 + 816);
  v2 = *(v0 + 808);

  return MEMORY[0x2822009F8](sub_257C70D40, v2, v1);
}

uint64_t sub_257C70D40()
{
  v1 = v0[115];
  v2 = v0[103];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[88];

  sub_257ECCC70();

  swift_beginAccess();
  (*(v6 + 40))(&v2[v1], v5, v7);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t sub_257C70E74()
{

  v1 = *(v0 + 816);
  v2 = *(v0 + 808);

  return MEMORY[0x2822009F8](sub_257C731E4, v2, v1);
}

uint64_t sub_257C70EDC()
{
  v1 = swift_task_alloc();
  *(v0 + 976) = v1;
  *(v1 + 16) = *(v0 + 960);
  v2 = swift_task_alloc();
  *(v0 + 984) = v2;
  *v2 = v0;
  v2[1] = sub_257C70FC8;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000028, 0x8000000257EFA0E0, sub_257C73200, v1, v3);
}

uint64_t sub_257C70FC8()
{

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_257C71110, 0, 0);
}

uint64_t sub_257C71110()
{

  v1 = *(v0 + 816);
  v2 = *(v0 + 808);

  return MEMORY[0x2822009F8](sub_257C731E4, v2, v1);
}

uint64_t sub_257C71178()
{
  v1 = *(v0 + 792);
  sub_257E98020(v1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 562) == 1)
  {
    v2 = *(v0 + 824);
    v3 = *(v0 + 720);
    v4 = *(v0 + 712);
    v5 = *(v0 + 704);
    v6 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService;
    *(v0 + 856) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService;
    v7 = *(v2 + v6);
    v8 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
    swift_beginAccess();
    v9 = *(v4 + 16);
    *(v0 + 864) = v9;
    *(v0 + 872) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v7 + v8, v5);
    sub_257ECCC10();
    v11 = v10;
    v12 = *(v4 + 8);
    *(v0 + 880) = v12;
    *(v0 + 888) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v3, v5);
    if (v11 < -5.0)
    {
      v13 = [*(v0 + 792) capturedImage];
      type metadata accessor for MAGCVPixelBufferWrapper();
      inited = swift_initStackObject();
      *(v0 + 896) = inited;
      *(inited + 16) = v13;
      v15 = swift_task_alloc();
      *(v0 + 904) = v15;
      *v15 = v0;
      v15[1] = sub_257C705AC;

      return sub_257C2F68C(inited);
    }

    if (qword_27F8F4618 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 880);
    v22 = *(v0 + 864);
    v23 = *(v0 + 824);
    v24 = *(v0 + 720);
    v25 = *(v0 + 704);
    v26 = byte_27F8F78A0;
    *(v0 + 998) = byte_27F8F78A0;
    if (v26)
    {
      v27 = 0.01;
    }

    else
    {
      v27 = 0.25;
    }

    v28 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
    *(v0 + 920) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
    swift_beginAccess();
    v22(v24, v23 + v28, v25);
    sub_257ECCC10();
    v30 = v29;
    v21(v24, v25);
    v17 = *(v0 + 824);
    if (v27 < -v30)
    {
      v31 = *(*&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
      if (v31)
      {
        v32 = *(v0 + 856);
        [v31 videoRotationAngleForHorizonLevelPreview];
        *(*&v17[v32] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = v33;
      }

      return MEMORY[0x2822009F8](sub_257C70920, 0, 0);
    }
  }

  else
  {
    v17 = *(v0 + 824);
  }

  v18 = *(v0 + 792);
  v19 = *(v0 + 784);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_257C71588()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 896);
  swift_setDeallocating();

  *(v0 + 608) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v19 = *(v0 + 912);

    sub_257ECD3B0();
    v20 = v19;
    v21 = sub_257ECDA20();
    v22 = sub_257ECFBD0();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 912);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v24;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_257BAC000, v21, v22, "Blur Error %@", v25, 0xCu);
      sub_257C11B14(v26);
      MEMORY[0x259C74820](v26, -1, -1);
      MEMORY[0x259C74820](v25, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
    goto LABEL_16;
  }

  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  if (v7 != 4)
  {
    goto LABEL_11;
  }

  v8 = v6 | v5;
  if (v4 == 9 && !v8)
  {
    sub_257ECD3B0();
    v9 = sub_257ECDA20();
    v10 = sub_257ECFBD0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 912);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_257BAC000, v9, v10, "No Blur Value Generated", v13, 2u);
      MEMORY[0x259C74820](v13, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 672) + 8))(*(v0 + 696), *(v0 + 664));

LABEL_16:
    v29 = 0;
    goto LABEL_17;
  }

  if (v4 != 10 || v8)
  {
LABEL_11:
    sub_257C73154(v4, v5, v6, v7);
    goto LABEL_12;
  }

  sub_257ECD3B0();
  v14 = sub_257ECDA20();
  v15 = sub_257ECFBD0();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 912);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_257BAC000, v14, v15, "Blur Detected", v18, 2u);
    MEMORY[0x259C74820](v18, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 672) + 8))(*(v0 + 688), *(v0 + 664));

  v29 = 1;
LABEL_17:
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 880);
  v31 = *(v0 + 864);
  v32 = *(v0 + 824);
  v33 = *(v0 + 720);
  v34 = *(v0 + 704);
  v35 = byte_27F8F78A0;
  *(v0 + 998) = byte_27F8F78A0;
  if (v35)
  {
    v36 = 0.01;
  }

  else
  {
    v36 = 0.25;
  }

  v37 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
  *(v0 + 920) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
  swift_beginAccess();
  v31(v33, v32 + v37, v34);
  sub_257ECCC10();
  v39 = v38;
  v30(v33, v34);
  if (v36 >= -v39)
  {
    v48 = *(v0 + 824);
    v49 = *(v0 + 792);
    v50 = *(v0 + 784);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    v40 = *(v0 + 824);
    v41 = *(*(v40 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
    if (v41)
    {
      v42 = *(v0 + 856);
      [v41 videoRotationAngleForHorizonLevelPreview];
      *(*(v40 + v42) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = v43;
    }

    if (v29)
    {
      v44 = *(v0 + 792);
      *(v0 + 960) = *(*(v0 + 824) + *(v0 + 856));
      v45 = [v44 capturedImage];

      type metadata accessor for MAGCVPixelBufferWrapper();
      v46 = swift_allocObject();
      *(v0 + 968) = v46;
      *(v46 + 16) = v45;
      v47 = sub_257C70EDC;
    }

    else
    {
      v47 = sub_257C70920;
    }

    return MEMORY[0x2822009F8](v47, 0, 0);
  }
}

uint64_t sub_257C71B5C(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_257ECDD70();
  v5 = sub_257DFF59C();
  v6 = [v5 layer];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    [v7 setAutomaticallyDimsOverCaptureRegion_];

    [v8 setSession_];
    type metadata accessor for RotationRateManager();
    v9 = swift_allocObject();
    *(v9 + 16) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
    *(v9 + 24) = 0;
    *&v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager] = v9;
    sub_257ECC3F0();

    if ((*(v9 + 24) & 1) == 0)
    {
      [*(v9 + 16) startDeviceMotionUpdates];
      *(v9 + 24) = 1;
    }

    v10 = *(*&v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager);
    if ((*(v10 + 24) & 1) == 0)
    {
      v11 = *(v10 + 16);
      sub_257ECC3F0();
      [v11 startDeviceMotionUpdates];
      *(v10 + 24) = 1;
    }

    v12 = [objc_allocWithZone(ARFrameLuminanceManager) init];
    v13 = *&v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager];
    *&v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager] = v12;

    [a2 setAlpha_];
    [a2 setHidden_];
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = v4;
    v15 = v4;
    v16 = a2;
    sub_257E10748(0, sub_257C73194, v14, 0.1);
  }

  else
  {

    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

void sub_257C71E20(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  v3 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  v4 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView);
  *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView) = v3;
  v5 = v3;

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_2815447E0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  MEMORY[0x28223BE20](v7);
  sub_257ECFD50();

  if (v8 > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  sub_257D362F0();
}

id sub_257C72000()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedInstance];
  v18[0] = 0;
  v5 = [v4 setActive:0 withOptions:1 error:v18];

  v6 = v18[0];
  if (v5)
  {

    return v6;
  }

  else
  {
    v17 = v18[0];
    v8 = v18[0];
    v9 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD3B0();
    v10 = v9;
    v11 = sub_257ECDA20();
    v12 = sub_257ECFBD0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v9;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_257BAC000, v11, v12, "Cannot configure audio session: %@", v13, 0xCu);
      sub_257C11B14(v14);
      MEMORY[0x259C74820](v14, -1, -1);
      MEMORY[0x259C74820](v13, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_257C72294(uint64_t a1, void *a2)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v9 = HIBYTE(v18);
    swift_getKeyPath();
    swift_getKeyPath();
    HIBYTE(v18) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257ECD460();
    v10 = sub_257ECDA20();
    v11 = sub_257ECFBD0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_257BAC000, v10, v11, "Restarting capture session...", v12, 2u);
      MEMORY[0x259C74820](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v13 = *&v8[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = a2;
    *(v14 + 32) = v9;
    v15 = v13;
    v16 = v8;
    v17 = a2;
    sub_257DB05D0(sub_257C7319C, v14);
  }

  return result;
}

uint64_t sub_257C72538(char a1, void *a2, void *a3, int a4)
{
  v23 = a4;
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_257ECF190();
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_257BD2C2C(0, &qword_281543F10);
  v14 = sub_257ECFD30();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  if (a1)
  {
    *(v15 + 24) = a3;
    v16 = a3;
    *(v15 + 32) = v23 & 1;
    v29 = sub_257C731B0;
    v30 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_257D231C0;
    v28 = &block_descriptor_114;
    v17 = _Block_copy(&aBlock);
    v18 = a2;
    v19 = v16;
  }

  else
  {
    v29 = sub_257C731A8;
    v30 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_257D231C0;
    v28 = &block_descriptor_108;
    v17 = _Block_copy(&aBlock);
    v20 = a2;
  }

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v13, v10, v17);
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v24);
}

void sub_257C72878()
{
  v0 = sub_257DFF3FC();
  v1 = sub_257D83290();

  [v1 setUserInteractionEnabled_];
}

uint64_t sub_257C728DC(char *a1, void *a2, char a3)
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager;
  v7 = *&a1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager];
  if (v7 && *(v7 + 24) == 1)
  {
    v8 = *(v7 + 16);
    sub_257ECC3F0();
    [v8 stopDeviceMotionUpdates];
    *(v7 + 24) = 0;
  }

  v9 = *(*&a1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager);
  if (*(v9 + 24) == 1)
  {
    v10 = *(v9 + 16);
    sub_257ECC3F0();
    [v10 stopDeviceMotionUpdates];
    *(v9 + 24) = 0;
  }

  *&a1[v6] = 0;

  v11 = *&a1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager];
  *&a1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager] = 0;

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3 & 1;
  v13 = a1;
  v14 = a2;
  sub_257E10748(0, sub_257C731BC, v12, 1.0);
}

void sub_257C72A3C(uint64_t a1, void *a2)
{
  v4 = sub_257DFF59C();
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView) = v4;

  [a2 setHidden_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  v6 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
  v7 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (v7)
  {
    [v7 removeFromSuperview];
    v8 = *(a1 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + v6) = 0;

  v9 = sub_257DFF3FC();
  v10 = sub_257D83290();

  [v10 setUserInteractionEnabled_];
}

void sub_257C72B88(void *a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = [a1 currentFrame];
  if (v7 && (v8 = v7, v9 = [v7 capturedImage], v8, v9))
  {
    v13 = sub_257E9C938(v9);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v13;
    sub_257ECC3F0();
    v14 = v13;
    sub_257ECDD70();
  }

  else
  {
    sub_257ECD410();
    v10 = sub_257ECDA20();
    v11 = sub_257ECFBD0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = 103;
      _os_log_impl(&dword_257BAC000, v10, v11, "%ld No pixel buffer for current frame available", v12, 0xCu);
      MEMORY[0x259C74820](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_257C72E7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_257E10374(0, 0, 0);
  }
}

void sub_257C72EDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_257E10748(1, 0, 0, 0.15);
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C72F70@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257C72FF0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

id sub_257C73068(id result, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3 && a3 != 4)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

LABEL_5:
    v3 = result;
  }

  v4 = result;

  return a2;
}

unint64_t sub_257C73100()
{
  result = qword_27F8F8170;
  if (!qword_27F8F8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8170);
  }

  return result;
}

uint64_t sub_257C73154(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4 || a4 == 3 || a4 == 2)
  {
  }

  return result;
}

void *sub_257C73204()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F57D0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  v42 = sub_257ECCB70();
  v7 = *(v42 - 8);
  v8 = MEMORY[0x28223BE20](v42);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v29 - v10;
  v11 = v0[6];
  v12 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v38 = *(v13 + 16);
  if (v38)
  {
    v14 = 0;
    v35 = v7 + 16;
    v34 = *MEMORY[0x277CBE838];
    v29 = (v7 + 32);
    v32 = (v7 + 8);
    v31 = MEMORY[0x277D84F90];
    v33 = xmmword_257ED6D30;
    v36 = v13;
    v37 = v7;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v39 = *(v7 + 72);
      (*(v7 + 16))(v41, v13 + v40 + v39 * v14, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5788);
      inited = swift_initStackObject();
      *(inited + 16) = v33;
      v16 = v34;
      *(inited + 32) = v34;
      v17 = v16;
      sub_257BF2B04(inited);
      swift_setDeallocating();
      sub_257BF32AC(inited + 32);
      sub_257ECCAA0();

      v18 = sub_257ECC930();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v6, 0, 1, v18);
      sub_257BE401C(v6, v4, &unk_27F8F57D0);
      if ((*(v19 + 48))(v4, 1, v18) == 1)
      {
        sub_257BE4084(v6, &unk_27F8F57D0);
        sub_257BE4084(v4, &unk_27F8F57D0);
      }

      else
      {
        v20 = sub_257ECC920();
        v22 = v21;
        sub_257BE4084(v6, &unk_27F8F57D0);
        (*(v19 + 8))(v4, v18);
        if ((v22 & 1) == 0 && vcvtd_n_f64_s64(v20, 0x14uLL) > 0.0)
        {
          v23 = *v29;
          (*v29)(v30, v41, v42);
          v24 = v31;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_257BF26C4(0, v24[2] + 1, 1);
            v24 = v43;
          }

          v27 = v24[2];
          v26 = v24[3];
          if (v27 >= v26 >> 1)
          {
            sub_257BF26C4(v26 > 1, v27 + 1, 1);
            v24 = v43;
          }

          v24[2] = v27 + 1;
          v31 = v24;
          v23(v24 + v40 + v27 * v39, v30, v42);
          v7 = v37;
          goto LABEL_5;
        }
      }

      (*v32)(v41, v42);
      v7 = v37;
LABEL_5:
      ++v14;
      v13 = v36;
      if (v38 == v14)
      {
        goto LABEL_16;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_16:

  v43 = v31;
  sub_257ECC3F0();
  sub_257C74A50(&v43);

  return v43;
}

id sub_257C73738(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  sub_257BE401C(a1, &v30 - v9, &qword_27F8F5F30);
  v11 = sub_257ECCB70();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v14 = sub_257ECCAE0();
    (*(v12 + 8))(v10, v11);
    v13 = [*(v2 + 64) objectForKey_];
    sub_257ECD360();
    v15 = v13;
    v16 = v14;
    v17 = sub_257ECDA20();
    v18 = sub_257ECFBD0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v30 = v4;
      v23 = v22;
      v33 = v22;
      *v19 = 136315650;
      *(v19 + 4) = sub_257BF1FC8(0x7069726373627573, 0xED0000293A5F2874, &v33);
      *(v19 + 12) = 2080;
      v32 = v13;
      v24 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0);
      v25 = sub_257ECF570();
      v27 = sub_257BF1FC8(v25, v26, &v33);

      *(v19 + 14) = v27;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v16;
      *v21 = v16;
      v28 = v16;
      _os_log_impl(&dword_257BAC000, v17, v18, "%s: get %s from %@", v19, 0x20u);
      sub_257BE4084(v21, &unk_27F8F5490);
      MEMORY[0x259C74820](v21, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v23, -1, -1);
      MEMORY[0x259C74820](v19, -1, -1);

      (*(v31 + 8))(v7, v30);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return v13;
}

void sub_257C73AEC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  sub_257BE401C(a2, &v35 - v11, &qword_27F8F5F30);
  v13 = sub_257ECCB70();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_257BE4084(a2, &qword_27F8F5F30);

    return;
  }

  v15 = sub_257ECCAE0();
  (*(v14 + 8))(v12, v13);
  if (!a1)
  {
    sub_257BE4084(a2, &qword_27F8F5F30);

    return;
  }

  v16 = a1;
  [v16 size];
  v19 = v17 * v18 * 0.25;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v39 = v19;
  v40 = v7;
  sub_257ECD360();
  v20 = v16;
  v21 = v15;
  v22 = sub_257ECDA20();
  v23 = sub_257ECFBD0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = v3;
    v25 = v24;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v25 = 136315906;
    *(v25 + 4) = sub_257BF1FC8(0x7069726373627573, 0xED0000293A5F2874, &v42);
    *(v25 + 12) = 2080;
    v41 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0);
    v26 = sub_257ECF570();
    v28 = sub_257BF1FC8(v26, v27, &v42);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v21;
    v29 = v36;
    *v36 = v21;
    *(v25 + 32) = 2048;
    v30 = v39;
    *(v25 + 34) = v39;
    v31 = v21;
    _os_log_impl(&dword_257BAC000, v22, v23, "%s: set %s to %@, cost: %ld", v25, 0x2Au);
    sub_257BE4084(v29, &unk_27F8F5490);
    MEMORY[0x259C74820](v29, -1, -1);
    v32 = v37;
    swift_arrayDestroy();
    MEMORY[0x259C74820](v32, -1, -1);
    v33 = v25;
    v3 = v38;
    MEMORY[0x259C74820](v33, -1, -1);

    (*(v40 + 8))(v9, v6);
    v34 = v30;
  }

  else
  {

    (*(v40 + 8))(v9, v6);
    v34 = v39;
  }

  [*(v3 + 64) setObject:v20 forKey:v21 cost:v34];

  sub_257BE4084(a2, &qword_27F8F5F30);
}

unsigned __int8 *sub_257C73F84()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCAF0();
  v4 = sub_257ECCAD0();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_257ECCAF0();
  v8 = sub_257ECCAD0();
  v10 = v9;
  result = (v7)(v3, v0);
  v12 = HIBYTE(v6) & 0xF;
  v13 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_64;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v39 = 0;
    v16 = sub_257C762CC(v4, v6, 10);
    v34 = v37;
    goto LABEL_63;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v38[0] = v4;
    v38[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v12)
      {
        if (--v12)
        {
          v16 = 0;
          v26 = v38 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_74:
      __break(1u);
      return result;
    }

    if (v4 != 45)
    {
      if (v12)
      {
        v16 = 0;
        v31 = v38;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v20 = v38 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_72;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    result = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_257ED0320();
  }

  v15 = *result;
  if (v15 == 43)
  {
    if (v13 < 1)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v12 = v13 - 1;
    if (v13 != 1)
    {
      v16 = 0;
      if (result)
      {
        v23 = result + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            goto LABEL_61;
          }

          v25 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            goto LABEL_61;
          }

          v16 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            goto LABEL_61;
          }

          ++v23;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_53;
    }

LABEL_61:
    v16 = 0;
    LOBYTE(v12) = 1;
    goto LABEL_62;
  }

  if (v15 != 45)
  {
    if (v13)
    {
      v16 = 0;
      if (result)
      {
        while (1)
        {
          v29 = *result - 48;
          if (v29 > 9)
          {
            goto LABEL_61;
          }

          v30 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            goto LABEL_61;
          }

          v16 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_61;
          }

          ++result;
          if (!--v13)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_53;
    }

    goto LABEL_61;
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v12 = v13 - 1;
  if (v13 == 1)
  {
    goto LABEL_61;
  }

  v16 = 0;
  if (result)
  {
    v17 = result + 1;
    while (1)
    {
      v18 = *v17 - 48;
      if (v18 > 9)
      {
        goto LABEL_61;
      }

      v19 = 10 * v16;
      if ((v16 * 10) >> 64 != (10 * v16) >> 63)
      {
        goto LABEL_61;
      }

      v16 = v19 - v18;
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_61;
      }

      ++v17;
      if (!--v12)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_53:
  LOBYTE(v12) = 0;
LABEL_62:
  v39 = v12;
  v34 = v12;
LABEL_63:

  if (v34)
  {
LABEL_64:

    return 0;
  }

  v35 = v16 < sub_257C743A0(v8, v10);
  if (v36)
  {
    return 0;
  }

  else
  {
    return v35;
  }
}

uint64_t sub_257C743A0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_257ED0320();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_257C762CC(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_257C746A0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_257ECCB70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BE401C(a1, v6, &qword_27F8F5F30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_257BE4084(v6, &qword_27F8F5F30);
  }

  else
  {
    sub_257ECCA60();
    v11 = *(v8 + 8);
    v11(v6, v7);
    v12 = sub_257ECCAE0();
    v11(v10, v7);
    v13 = [*(v2 + 64) objectForKey_];

    if (v13)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_257C7487C@<X0>(uint64_t a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v6 = 16;
  v7 = 0;
  if (sysctlbyname("kern.boottime", &v7, &v6, 0, 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = v6 == 16;
  }

  if (v2)
  {
    sub_257ECCC20();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_257ECCC80();
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

uint64_t sub_257C74984()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_257C749FC()
{
  result = qword_27F8F6BE0;
  if (!qword_27F8F6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BE0);
  }

  return result;
}

uint64_t sub_257C74A50(void **a1)
{
  v2 = *(sub_257ECCB70() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_257C67010(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_257C74B6C(v6);
  *a1 = v3;
  return result;
}

void *sub_257C74AF8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F57C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_257C74B6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257ED05F0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_257ECCB70();
        v6 = sub_257ECF850();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_257ECCB70() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_257C74F78(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_257C74C98(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257C74C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_257ECCB70();
  v9 = *(v42 - 8);
  v10 = MEMORY[0x28223BE20](v42);
  v47 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v37 = a2;
  if (a3 != a2)
  {
    v50 = &v35 - v16;
    v17 = *a4;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 56);
    v48 = v19;
    v49 = (v18 - 8);
    v21 = (v17 + v20 * (a3 - 1));
    v43 = -v20;
    v44 = (v18 + 16);
    v22 = a1 - a3;
    v45 = v17;
    v46 = v18;
    v36 = v20;
    v23 = v17 + v20 * a3;
    v24 = v4;
    while (2)
    {
      v40 = v21;
      v41 = a3;
      v38 = v23;
      v39 = v22;
      v25 = v42;
      while (1)
      {
        v26 = v50;
        v27 = v48;
        v48(v50, v23, v25);
        v27(v14, v21, v25);
        v28 = sub_257C73F84();
        v51 = v24;
        if (v24)
        {
          v34 = *v49;
          (*v49)(v14, v25);
          return (v34)(v26, v25);
        }

        v29 = v28;
        v30 = *v49;
        (*v49)(v14, v25);
        result = (v30)(v26, v25);
        if ((v29 & 1) == 0)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v31 = *v44;
        v32 = v47;
        (*v44)(v47, v23, v25);
        swift_arrayInitWithTakeFrontToBack();
        result = v31(v21, v32, v25);
        v21 += v43;
        v23 += v43;
        v33 = __CFADD__(v22++, 1);
        v24 = v51;
        if (v33)
        {
          goto LABEL_11;
        }
      }

      v24 = v51;
LABEL_11:
      a3 = v41 + 1;
      v21 = &v40[v36];
      v22 = v39 - 1;
      v23 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_257C74F78(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v144 = a1;
  v9 = sub_257ECCB70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v147 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v148 = &v133 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v150 = &v133 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v149 = &v133 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v143 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v133 - v23;
  result = MEMORY[0x28223BE20](v22);
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v144;
    if (*v144)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v140 = &v133 - v26;
  v138 = a4;
  v29 = 0;
  v158 = (v10 + 8);
  v159 = v10 + 16;
  v155 = (v10 + 32);
  v30 = MEMORY[0x277D84F90];
  v160 = v9;
  v152 = v27;
  v141 = v24;
  v145 = a3;
  v137 = v10;
  while (1)
  {
    v31 = v29;
    if ((v29 + 1) >= v28)
    {
      v54 = v29 + 1;
    }

    else
    {
      v156 = v28;
      v161 = v6;
      v32 = *a3;
      v33 = *(v10 + 72);
      v5 = *a3 + v33 * (v29 + 1);
      v34 = *(v10 + 16);
      v35 = v140;
      v36 = v29;
      v34(v140, v5, v9);
      v139 = v32;
      v157 = v33;
      v37 = &v32[v33 * v36];
      v38 = v141;
      v153 = v34;
      v34(v141, v37, v9);
      v39 = v38;
      v40 = v161;
      LODWORD(v154) = sub_257C73F84();
      v161 = v40;
      if (v40)
      {
        v132 = *v158;
        (*v158)(v38, v9);
        v132(v35, v9);
      }

      v41 = *v158;
      (*v158)(v39, v9);
      v151 = v41;
      result = (v41)(v35, v9);
      v142 = v36;
      v42 = v36 + 2;
      v43 = v157;
      v44 = &v139[v157 * (v36 + 2)];
      v45 = v143;
      while (v156 != v42)
      {
        v46 = v30;
        v47 = v160;
        v48 = v153;
        (v153)(v45, v44, v160);
        v49 = v152;
        v48(v152, v5, v47);
        v50 = v161;
        v51 = sub_257C73F84();
        v161 = v50;
        if (v50)
        {
          v130 = v151;
          (v151)(v49, v47);
          (v130)(v45, v47);
        }

        v52 = v51;
        v53 = v151;
        (v151)(v49, v47);
        result = (v53)(v45, v47);
        ++v42;
        v43 = v157;
        v44 += v157;
        v5 += v157;
        v30 = v46;
        if ((v154 ^ v52))
        {
          v54 = (v42 - 1);
          goto LABEL_12;
        }
      }

      v54 = v156;
LABEL_12:
      v10 = v137;
      v9 = v160;
      v6 = v161;
      v31 = v142;
      if ((v154 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v54 < v142)
      {
        goto LABEL_140;
      }

      if (v142 < v54)
      {
        v55 = v54;
        v56 = v43 * (v54 - 1);
        v57 = v55 * v43;
        v156 = v55;
        v58 = v142;
        v59 = v142 * v43;
        do
        {
          if (v58 != --v55)
          {
            v161 = v6;
            v61 = *v145;
            if (!*v145)
            {
              goto LABEL_144;
            }

            v5 = v61 + v59;
            v154 = *v155;
            v154(v147, v61 + v59, v160);
            if (v59 < v56 || v5 >= v61 + v57)
            {
              v60 = v160;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v60 = v160;
              if (v59 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v154)(v61 + v56, v147, v60);
            v6 = v161;
            v43 = v157;
          }

          ++v58;
          v56 -= v43;
          v57 -= v43;
          v59 += v43;
        }

        while (v58 < v55);
        a3 = v145;
        v10 = v137;
        v9 = v160;
        v31 = v142;
        v54 = v156;
      }

      else
      {
LABEL_25:
        a3 = v145;
      }
    }

    v62 = a3[1];
    if (v54 >= v62)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v54, v31))
    {
      goto LABEL_136;
    }

    if (v54 - v31 >= v138)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v31, v138))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v156 = v54;
    if (&v31[v138] >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = &v31[v138];
    }

    if (v63 < v31)
    {
      goto LABEL_139;
    }

    if (v156 == v63)
    {
      v54 = v156;
LABEL_37:
      if (v54 < v31)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v110 = *a3;
    v111 = *(v10 + 72);
    v157 = *(v10 + 16);
    v112 = v110 + v111 * (v156 - 1);
    v153 = -v111;
    v154 = v110;
    v142 = v31;
    v113 = &v31[-v156];
    v134 = v111;
    v5 = v110 + v156 * v111;
    v115 = v149;
    v114 = v150;
    v151 = v63;
    v146 = v30;
    do
    {
      v135 = v5;
      v136 = v113;
      v139 = v112;
      v116 = v112;
      while (1)
      {
        v117 = v6;
        v118 = v157;
        (v157)(v115, v5, v9);
        v118(v114, v116, v9);
        v119 = sub_257C73F84();
        v120 = v114;
        v161 = v117;
        if (v117)
        {
          v131 = *v158;
          (*v158)(v114, v9);
          v131(v115, v9);
        }

        v121 = v119;
        v122 = *v158;
        (*v158)(v120, v9);
        result = (v122)(v115, v9);
        if ((v121 & 1) == 0)
        {
          break;
        }

        v30 = v146;
        if (!v154)
        {
          goto LABEL_142;
        }

        v123 = *v155;
        v124 = v148;
        v9 = v160;
        (*v155)(v148, v5, v160);
        swift_arrayInitWithTakeFrontToBack();
        v123(v116, v124, v9);
        v116 += v153;
        v5 += v153;
        v125 = __CFADD__(v113++, 1);
        v6 = v161;
        v115 = v149;
        v114 = v150;
        if (v125)
        {
          goto LABEL_100;
        }
      }

      v9 = v160;
      v6 = v161;
      v115 = v149;
      v114 = v150;
      v30 = v146;
LABEL_100:
      v112 = &v139[v134];
      v113 = v136 - 1;
      v5 = v135 + v134;
      v54 = v151;
      ++v156;
    }

    while (v156 != v151);
    a3 = v145;
    v10 = v137;
    v31 = v142;
    if (v151 < v142)
    {
      goto LABEL_135;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v65 = *(v30 + 2);
    v64 = *(v30 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = sub_257BFCB00((v64 > 1), v65 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v66;
    v67 = &v30[16 * v65];
    *(v67 + 4) = v31;
    *(v67 + 5) = v54;
    v151 = v54;
    v68 = *v144;
    if (!*v144)
    {
      goto LABEL_145;
    }

    if (v65)
    {
      break;
    }

    v6 = v5;
LABEL_89:
    v28 = a3[1];
    v29 = v151;
    v9 = v160;
    if (v151 >= v28)
    {
      goto LABEL_104;
    }
  }

  v6 = v5;
  while (1)
  {
    v5 = v66 - 1;
    if (v66 >= 4)
    {
      v73 = &v30[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_122;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_123;
      }

      v80 = &v30[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_125;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_128;
      }

      if (v84 >= v76)
      {
        v102 = &v30[16 * v5 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_134;
        }

        if (v71 < v105)
        {
          v5 = v66 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v66 == 3)
    {
      v69 = *(v30 + 4);
      v70 = *(v30 + 5);
      v79 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      v72 = v79;
LABEL_58:
      if (v72)
      {
        goto LABEL_124;
      }

      v85 = &v30[16 * v66];
      v87 = *v85;
      v86 = *(v85 + 1);
      v88 = __OFSUB__(v86, v87);
      v89 = v86 - v87;
      v90 = v88;
      if (v88)
      {
        goto LABEL_127;
      }

      v91 = &v30[16 * v5 + 32];
      v93 = *v91;
      v92 = *(v91 + 1);
      v79 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v79)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v89, v94))
      {
        goto LABEL_131;
      }

      if (v89 + v94 >= v71)
      {
        if (v71 < v94)
        {
          v5 = v66 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v95 = &v30[16 * v66];
    v97 = *v95;
    v96 = *(v95 + 1);
    v79 = __OFSUB__(v96, v97);
    v89 = v96 - v97;
    v90 = v79;
LABEL_72:
    if (v90)
    {
      goto LABEL_126;
    }

    v98 = &v30[16 * v5];
    v100 = *(v98 + 4);
    v99 = *(v98 + 5);
    v79 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if (v79)
    {
      goto LABEL_129;
    }

    if (v101 < v89)
    {
      goto LABEL_89;
    }

LABEL_79:
    v106 = v5 - 1;
    if (v5 - 1 >= v66)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v107 = *&v30[16 * v106 + 32];
    v108 = *&v30[16 * v5 + 40];
    sub_257C75B04(*a3 + *(v10 + 72) * v107, *a3 + *(v10 + 72) * *&v30[16 * v5 + 32], *a3 + *(v10 + 72) * v108, v68);
    if (v6)
    {
    }

    if (v108 < v107)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_257C66E20(v30);
    }

    if (v106 >= *(v30 + 2))
    {
      goto LABEL_121;
    }

    v109 = &v30[16 * v106];
    *(v109 + 4) = v107;
    *(v109 + 5) = v108;
    v162 = v30;
    result = sub_257C66D94(v5);
    v30 = v162;
    v66 = *(v162 + 2);
    if (v66 <= 1)
    {
      goto LABEL_89;
    }
  }

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
LABEL_137:
  result = sub_257C66E20(v30);
  v30 = result;
LABEL_106:
  v162 = v30;
  v126 = *(v30 + 2);
  if (v126 < 2)
  {
  }

  while (*a3)
  {
    v127 = *&v30[16 * v126];
    v128 = *&v30[16 * v126 + 24];
    sub_257C75B04(*a3 + *(v10 + 72) * v127, *a3 + *(v10 + 72) * *&v30[16 * v126 + 16], *a3 + *(v10 + 72) * v128, v5);
    if (v6)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_257C66E20(v30);
    }

    if (v126 - 2 >= *(v30 + 2))
    {
      goto LABEL_133;
    }

    v129 = &v30[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v162 = v30;
    result = sub_257C66D94(v126 - 1);
    v30 = v162;
    v126 = *(v162 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_257C75B04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = sub_257ECCB70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  result = MEMORY[0x28223BE20](&v61 - v15);
  v19 = &v61 - v18;
  v72 = *(v20 + 72);
  if (!v72)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_66;
  }

  v21 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v72;
  v79 = a1;
  v78 = a4;
  v74 = v9;
  if (v22 >= v21 / v72)
  {
    v70 = v17;
    v71 = v14;
    v24 = v21 / v72 * v72;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v24;
    if (v24 >= 1)
    {
      v37 = v71;
      v38 = -v72;
      v67 = (v10 + 16);
      v68 = (v10 + 8);
      v39 = v36;
      v73 = a4;
      v64 = a1;
      v65 = -v72;
      do
      {
        v75 = v5;
        v62 = v36;
        v40 = a2;
        v41 = a2 + v38;
        v66 = v41;
        v69 = v40;
        while (1)
        {
          v44 = v76;
          if (v40 <= a1)
          {
            v79 = v40;
            v59 = v62;
LABEL_62:
            v77 = v59;
            goto LABEL_64;
          }

          v63 = v36;
          v72 = v39;
          v45 = v39 + v38;
          v46 = *v67;
          v47 = v74;
          (*v67)(v37, v39 + v38, v74);
          v48 = v41;
          v49 = v38;
          v50 = v70;
          v46(v70, v48, v47);
          v51 = v75;
          v52 = sub_257C73F84();
          v75 = v51;
          if (v51)
          {
            v60 = *v68;
            (*v68)(v50, v47);
            v60(v37, v47);
            v79 = v69;
            v59 = v63;
            goto LABEL_62;
          }

          v53 = v52;
          v76 = v44 + v49;
          v54 = *v68;
          (*v68)(v50, v47);
          v54(v37, v47);
          if (v53)
          {
            break;
          }

          v36 = v45;
          v55 = v64;
          if (v44 < v72 || v76 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
            v41 = v66;
            v42 = v73;
          }

          else
          {
            v38 = v65;
            v41 = v66;
            v42 = v73;
            if (v44 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v43 = v45 > v42;
          v37 = v71;
          a1 = v55;
          v40 = v69;
          if (!v43)
          {
            a2 = v69;
            goto LABEL_63;
          }
        }

        a1 = v64;
        if (v44 < v69 || v76 >= v69)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v73;
          v5 = v75;
          v36 = v63;
          v38 = v65;
        }

        else
        {
          v56 = v44 == v69;
          v38 = v65;
          a2 = v66;
          v57 = v73;
          v5 = v75;
          v36 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v71;
        v39 = v72;
      }

      while (v72 > v57);
    }

LABEL_63:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v23 = v22 * v72;
    v71 = result;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v23;
    v77 = a4 + v23;
    if (v23 >= 1 && a2 < v76)
    {
      v26 = *(v10 + 16);
      v69 = v10 + 16;
      v67 = v26;
      v68 = (v10 + 8);
      while (1)
      {
        v27 = a2;
        v28 = a4;
        v29 = v67;
        (v67)(v19, a2, v9);
        v30 = v19;
        v31 = v71;
        v73 = v28;
        (v29)(v71, v28, v9);
        v32 = sub_257C73F84();
        if (v5)
        {
          break;
        }

        v33 = v32;
        v75 = 0;
        v34 = *v68;
        (*v68)(v31, v9);
        v34(v30, v9);
        v19 = v30;
        if (v33)
        {
          v35 = v72;
          a2 = v27 + v72;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v73;
        }

        else
        {
          v35 = v72;
          a4 = v73 + v72;
          a2 = v27;
          if (a1 < v73 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 += v35;
        v79 = a1;
        v5 = v75;
        if (a4 < v70)
        {
          v9 = v74;
          if (a2 < v76)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v58 = *v68;
      (*v68)(v31, v9);
      v58(v30, v9);
    }
  }

LABEL_64:
  sub_257C761E4(&v79, &v78, &v77, MEMORY[0x277CC9260]);
  return 1;
}

uint64_t sub_257C761E4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unsigned __int8 *sub_257C762CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_257ECF710();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_257C76858();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_257ED0320();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_257C76858()
{
  v0 = sub_257ECF720();
  v4 = sub_257C768D8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_257C768D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_257ED00D0();
    if (!v9 || (v10 = v9, v11 = sub_257C74AF8(v9, 0), v12 = sub_257C76A30(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_257ECF5C0();

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
      return sub_257ECF5C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_257ED0320();
LABEL_4:

  return sub_257ECF5C0();
}

unint64_t sub_257C76A30(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_257C76C50(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_257ECF6B0();
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
          result = sub_257ED0320();
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

    result = sub_257C76C50(v12, a6, a7);
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

    result = sub_257ECF680();
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

uint64_t sub_257C76C50(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_257ECF6D0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C721B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_BYTE *sub_257C76CCC(uint64_t a1)
{
  v2 = sub_257ECDA30();
  v102 = *(v2 - 8);
  v103 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v95 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v97 = &v89 - v6;
  MEMORY[0x28223BE20](v5);
  v100 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v99 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v89 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v89 - v13;
  v15 = sub_257ECCB70();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v96 = &v89 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v89 - v24;
  v104 = a1;
  sub_257ECCA60();
  v26 = *(v16 + 16);
  v26(v14, v25, v15);
  v27 = (v16 + 56);
  v28 = *(v16 + 56);
  (v28)(v14, 0, 1, v15);
  v29 = sub_257C73738(v14);
  sub_257BE4084(v14, &qword_27F8F5F30);
  if (v29)
  {
    (*(v16 + 8))(v25, v15);
    return v29;
  }

  v91 = v23;
  v92 = v16;
  v93 = v26;
  v94 = v25;
  v31 = v100;
  v32 = v101;
  sub_257ECCA60();
  (v28)(v32, 0, 1, v15);
  v33 = sub_257C73738(v32);
  sub_257BE4084(v32, &qword_27F8F5F30);
  if (!v33)
  {
    v100 = v27;
    v101 = v28;
    v47 = v97;
    sub_257ECD360();
    v48 = v96;
    v93(v96, v94, v15);
    v49 = sub_257ECDA20();
    v50 = sub_257ECFBD0();
    v51 = os_log_type_enabled(v49, v50);
    v90 = v15;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v106 = v53;
      *v52 = 136315138;
      sub_257C775BC();
      v54 = sub_257ED0600();
      v55 = v15;
      v57 = v56;
      v58 = *(v92 + 8);
      v58(v48, v55);
      v59 = sub_257BF1FC8(v54, v57, &v106);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_257BAC000, v49, v50, "CACHE MISS (%s)", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      v60 = v53;
      v61 = v58;
      MEMORY[0x259C74820](v60, -1, -1);
      MEMORY[0x259C74820](v52, -1, -1);
    }

    else
    {

      v61 = *(v92 + 8);
      v61(v48, v15);
    }

    v63 = v103;
    v64 = *(v102 + 1);
    v64(v47, v103);
    v66 = v98;
    v65 = v99;
    v67 = v93;
    if (v105[16])
    {
      v102 = v64;
      v68 = v104;
      v69 = sub_257E86E70(v104);
      if (!v69)
      {
        v98 = v61;
        v70 = v95;
        sub_257ECD360();
        v71 = v90;
        v67(v66, v68, v90);
        v72 = sub_257ECDA20();
        v73 = v66;
        v74 = sub_257ECFBD0();
        if (os_log_type_enabled(v72, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v106 = v76;
          *v75 = 136315138;
          v77 = sub_257ECCB50();
          v79 = v78;
          v80 = v71;
          v81 = v98;
          (v98)(v73, v80);
          v82 = sub_257BF1FC8(v77, v79, &v106);
          v61 = v81;

          *(v75 + 4) = v82;
          _os_log_impl(&dword_257BAC000, v72, v74, "Read nil thumbnail from: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x259C74820](v76, -1, -1);
          MEMORY[0x259C74820](v75, -1, -1);

          v83 = v95;
          v84 = v103;
        }

        else
        {

          v88 = v98;
          (v98)(v73, v71);
          v83 = v70;
          v61 = v88;
          v84 = v63;
        }

        v102(v83, v84);
        v85 = 0;
        v65 = v99;
        goto LABEL_18;
      }
    }

    else
    {
      v69 = sub_257E867E0(v104);
    }

    v85 = v69;
    v86 = v69;
LABEL_18:
    sub_257ECCA60();
    v87 = v90;
    (v101)(v65, 0, 1, v90);
    sub_257C73AEC(v85, v65);
    v61(v94, v87);
    return v85;
  }

  v105 = v33;
  v34 = v31;
  sub_257ECD360();
  v35 = v91;
  v36 = v94;
  v93(v91, v94, v15);
  v37 = sub_257ECDA20();
  v38 = sub_257ECFBD0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = v35;
    v104 = swift_slowAlloc();
    v106 = v104;
    *v39 = 136315138;
    sub_257C775BC();
    v41 = sub_257ED0600();
    v43 = v42;
    v44 = *(v92 + 8);
    v44(v40, v15);
    v45 = sub_257BF1FC8(v41, v43, &v106);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_257BAC000, v37, v38, "CACHE HIT (%s)", v39, 0xCu);
    v46 = v104;
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x259C74820](v46, -1, -1);
    MEMORY[0x259C74820](v39, -1, -1);

    (*(v102 + 1))(v34, v103);
    v44(v94, v15);
  }

  else
  {

    v62 = *(v92 + 8);
    v62(v35, v15);
    (*(v102 + 1))(v34, v103);
    v62(v36, v15);
  }

  return v105;
}

unint64_t sub_257C775BC()
{
  result = qword_27F8FAC90;
  if (!qword_27F8FAC90)
  {
    sub_257ECCB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAC90);
  }

  return result;
}

uint64_t sub_257C77614()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - v5;
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD360();
  v11 = sub_257ECDA20();
  v12 = sub_257ECFBD0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_257BAC000, v11, v12, "Permanently deleting assets and emptying caches...", v13, 2u);
    MEMORY[0x259C74820](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  if (qword_27F8F46D8 != -1)
  {
    swift_once();
  }

  [*(qword_27F9132E8 + 64) removeAllObjects];
  if (qword_27F8F46E0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F9132F0;
  [*(qword_27F9132F0 + 64) removeAllObjects];
  v15 = sub_257C73204();
  v16 = v15[2];
  if (v16)
  {
    v28[0] = v14;
    v28[1] = v15;
    v17 = *(v1 + 16);
    v18 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v19 = *(v1 + 72);
    do
    {
      v17(v6, v18, v0);
      sub_257E875E8(v6);
      (*(v1 + 8))(v6, v0);
      v18 += v19;
      --v16;
    }

    while (v16);
  }

  v20 = sub_257C73204();
  v21 = v20[2];
  if (v21)
  {
    v24 = *(v1 + 16);
    v23 = v1 + 16;
    v22 = v24;
    v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v26 = *(v23 + 56);
    do
    {
      v22(v4, v25, v0);
      sub_257E875E8(v4);
      (*(v23 - 8))(v4, v0);
      v25 += v26;
      --v21;
    }

    while (v21);
  }
}