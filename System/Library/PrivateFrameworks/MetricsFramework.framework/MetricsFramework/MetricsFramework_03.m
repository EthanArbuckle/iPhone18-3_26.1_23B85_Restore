char *sub_258E14B88(char *a1, int64_t a2, char a3)
{
  result = sub_258E14F24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14BA8(char *a1, int64_t a2, char a3)
{
  result = sub_258E15028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14BC8(char *a1, int64_t a2, char a3)
{
  result = sub_258E152A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14BE8(char *a1, int64_t a2, char a3)
{
  result = sub_258E153C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14C08(char *a1, int64_t a2, char a3)
{
  result = sub_258E154E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14C28(char *a1, int64_t a2, char a3)
{
  result = sub_258E15608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14C48(char *a1, int64_t a2, char a3)
{
  result = sub_258E1570C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14C68(char *a1, int64_t a2, char a3)
{
  result = sub_258E1582C(a1, a2, a3, *v3, &qword_27F988E70, &qword_258F0DB68);
  *v3 = result;
  return result;
}

char *sub_258E14CA0(char *a1, int64_t a2, char a3)
{
  result = sub_258E1582C(a1, a2, a3, *v3, &qword_27F988E78, &qword_258F0DB70);
  *v3 = result;
  return result;
}

char *sub_258E14CD8(char *a1, int64_t a2, char a3)
{
  result = sub_258E15938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258E14CF8(void *a1, int64_t a2, char a3)
{
  result = sub_258E15EA4(a1, a2, a3, *v3, &qword_27F988F20, &qword_258F0DBD0, &qword_27F988F28, &qword_258F0DBD8);
  *v3 = result;
  return result;
}

void *sub_258E14D38(void *a1, int64_t a2, char a3)
{
  result = sub_258E15EA4(a1, a2, a3, *v3, &qword_27F988F30, &unk_258F0DBE0, &qword_27F988F38, &unk_258F0F3F0);
  *v3 = result;
  return result;
}

char *sub_258E14D78(char *a1, int64_t a2, char a3)
{
  result = sub_258E15C40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14D98(char *a1, int64_t a2, char a3)
{
  result = sub_258E15D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258E14DB8(size_t a1, int64_t a2, char a3)
{
  result = sub_258E15FD8(a1, a2, a3, *v3, &qword_27F9888C8, &unk_258F0C070, type metadata accessor for SpeakerIdSamplingData);
  *v3 = result;
  return result;
}

char *sub_258E14DFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988950, &qword_258F0DC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 792);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[792 * v8])
    {
      memmove(v12, v13, 792 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E14F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988930, &unk_258F0DBF0);
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

char *sub_258E15028(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888D0, &qword_258F0DBA0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_258E1515C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988880, &unk_258F0C030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988888, &unk_258F0DC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E152A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E88, &qword_258F0DB80);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E153C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E90, &qword_258F0DB88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_258E154E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E58, &qword_258F0DB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_258E15608(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EA8, &qword_258F0DB90);
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

char *sub_258E1570C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EB0, &qword_258F0DB98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E1582C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_258E15938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E80, &qword_258F0DB78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_258E15A3C()
{
  result = qword_27F988EC0;
  if (!qword_27F988EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988EC0);
  }

  return result;
}

unint64_t sub_258E15A90()
{
  result = qword_27F988ED0;
  if (!qword_27F988ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988EC8, &qword_258F0DBB0);
    sub_258E15B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988ED0);
  }

  return result;
}

unint64_t sub_258E15B14()
{
  result = qword_27F988ED8;
  if (!qword_27F988ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988ED8);
  }

  return result;
}

unint64_t sub_258E15B68()
{
  result = qword_27F988EE8;
  if (!qword_27F988EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988EE0, &qword_258F0DBB8);
    sub_258E15BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988EE8);
  }

  return result;
}

unint64_t sub_258E15BEC()
{
  result = qword_27F988EF0;
  if (!qword_27F988EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988EF0);
  }

  return result;
}

char *sub_258E15C40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988918, &qword_258F0C0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E15D60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888F8, &qword_258F0C0A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_258E15EA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16 = MEMORY[0x277D84F90];
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

size_t sub_258E15FD8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_258E161B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6552737574617473 && a2 == 0xEC0000006E6F7361;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465537465737361 && a2 == 0xEE00737574617453 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xEF73757461745365)
  {

    return 2;
  }

  else
  {
    v6 = sub_258F0AD80();

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

uint64_t sub_258E162E0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EF8, &unk_258F0DBC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E15A3C();
  sub_258F0AED0();
  if (!v1)
  {
    LOBYTE(v13) = 0;
    v9 = sub_258F0AC50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EC8, &qword_258F0DBB0);
    v12 = 1;
    sub_258E1657C();
    sub_258F0AC70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EE0, &qword_258F0DBB8);
    v12 = 2;
    sub_258E16654();
    v11 = 0;
    sub_258F0AC20();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_258E1657C()
{
  result = qword_27F988F00;
  if (!qword_27F988F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988EC8, &qword_258F0DBB0);
    sub_258E16600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F00);
  }

  return result;
}

unint64_t sub_258E16600()
{
  result = qword_27F988F08;
  if (!qword_27F988F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F08);
  }

  return result;
}

unint64_t sub_258E16654()
{
  result = qword_27F988F10;
  if (!qword_27F988F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988EE0, &qword_258F0DBB8);
    sub_258E166D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F10);
  }

  return result;
}

unint64_t sub_258E166D8()
{
  result = qword_27F988F18;
  if (!qword_27F988F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F18);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_258E16770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_258E167B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileAssetDownloadErrorCodeFrequency(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MobileAssetDownloadErrorCodeFrequency(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_258E168B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_258E168F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258E1695C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_258E169A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_258E16A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_258E16A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_258E16AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_258E16B34(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_258E16B98(uint64_t *a1, int a2)
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

uint64_t sub_258E16BE0(uint64_t result, int a2, int a3)
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

unint64_t sub_258E16C30()
{
  result = qword_27F988F40;
  if (!qword_27F988F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F40);
  }

  return result;
}

unint64_t sub_258E16C88()
{
  result = qword_27F988F48;
  if (!qword_27F988F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F48);
  }

  return result;
}

unint64_t sub_258E16CE0()
{
  result = qword_27F988F50;
  if (!qword_27F988F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F50);
  }

  return result;
}

unint64_t sub_258E16D34()
{
  result = qword_27F988F60;
  if (!qword_27F988F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F60);
  }

  return result;
}

unint64_t sub_258E16D88()
{
  result = qword_27F988F70;
  if (!qword_27F988F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988F68, &qword_258F0E238);
    sub_258E16E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F70);
  }

  return result;
}

unint64_t sub_258E16E0C()
{
  result = qword_27F988F78;
  if (!qword_27F988F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F78);
  }

  return result;
}

unint64_t sub_258E16E60()
{
  result = qword_27F988F88;
  if (!qword_27F988F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988F80, &qword_258F0E240);
    sub_258E16EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F88);
  }

  return result;
}

unint64_t sub_258E16EE4()
{
  result = qword_27F988F90;
  if (!qword_27F988F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F90);
  }

  return result;
}

unint64_t sub_258E16F38()
{
  result = qword_27F988FA0;
  if (!qword_27F988FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FA0);
  }

  return result;
}

unint64_t sub_258E16F8C()
{
  result = qword_27F988FA8;
  if (!qword_27F988FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FA8);
  }

  return result;
}

unint64_t sub_258E16FE0()
{
  result = qword_27F988FB0;
  if (!qword_27F988FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FB0);
  }

  return result;
}

unint64_t sub_258E17034()
{
  result = qword_27F988FC0;
  if (!qword_27F988FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988FB8, &qword_258F0E250);
    sub_258E170B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FC0);
  }

  return result;
}

unint64_t sub_258E170B8()
{
  result = qword_27F988FC8;
  if (!qword_27F988FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FC8);
  }

  return result;
}

uint64_t sub_258E1710C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6C61697274 && a2 == 0xEE00656361707365;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F6C6C6F72 && a2 == 0xE700000000000000 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000258F19D40 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_258F0AD80();

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

uint64_t sub_258E1727C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988FF8, &qword_258F0E260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E16F38();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v40) = 0;
  v12 = sub_258F0AC50();
  v14 = v13;
  v33 = v12;
  LOBYTE(v34) = 1;
  sub_258E18628();
  sub_258F0AC70();
  v30 = v40;
  v29 = v41;
  v31 = v42;
  v28 = v43;
  v32 = v44;
  LOBYTE(v34) = 2;
  sub_258E1867C();
  sub_258F0AC70();
  v27 = v40;
  v26 = v41;
  v25 = v42;
  v57 = BYTE4(v40);
  v56 = BYTE4(v41);
  v55 = BYTE4(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988FB8, &qword_258F0E250);
  v58 = 3;
  sub_258E186D0();
  sub_258F0AC20();
  (*(v6 + 8))(v10, v5);
  v23 = v54;
  *&v34 = v33;
  *(&v34 + 1) = v14;
  LODWORD(v35) = v30;
  v15 = v31;
  *(&v35 + 1) = v29;
  *&v36 = v31;
  *(&v36 + 1) = v28;
  *&v37 = v32;
  DWORD2(v37) = v27;
  v24 = v57;
  BYTE12(v37) = v57;
  v16 = v26;
  LODWORD(v38) = v26;
  v17 = v56;
  BYTE4(v38) = v56;
  v18 = v25;
  DWORD2(v38) = v25;
  v19 = v55;
  BYTE12(v38) = v55;
  v39 = v54;
  sub_258E187A8(&v34, &v40);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v40 = v33;
  v41 = v14;
  LODWORD(v42) = v30;
  v43 = v29;
  v44 = v15;
  v45 = v28;
  v46 = v32;
  v47 = v27;
  v48 = v24;
  v49 = v16;
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v53 = v23;
  result = sub_258E187E0(&v40);
  v21 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v21;
  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  v22 = v35;
  *a2 = v34;
  *(a2 + 16) = v22;
  return result;
}

uint64_t sub_258E17708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636F4C7465737361 && a2 == 0xEB00000000656C61;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C61697274 && a2 == 0xEE00656361707365)
  {

    return 3;
  }

  else
  {
    v6 = sub_258F0AD80();

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

uint64_t sub_258E17884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892D0, &qword_258F0EE58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BD3C();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v41) = 0;
  v12 = sub_258F0AC50();
  v14 = v13;
  v35 = v12;
  LOBYTE(v36) = 1;
  sub_258E1867C();
  sub_258F0AC70();
  v33 = v41;
  v32 = v42;
  v15 = v43;
  v55 = BYTE4(v41);
  v54 = BYTE4(v42);
  v53 = v44;
  LOBYTE(v41) = 2;
  v16 = sub_258F0AC50();
  v31 = v15;
  v34 = v17;
  v30 = v16;
  v56 = 3;
  v18 = sub_258F0AC50();
  v19 = v10;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  *&v36 = v35;
  *(&v36 + 1) = v14;
  LODWORD(v37) = v33;
  v29 = v55;
  BYTE4(v37) = v55;
  DWORD2(v37) = v32;
  v28 = v54;
  BYTE12(v37) = v54;
  LODWORD(v38) = v31;
  v22 = v53;
  BYTE4(v38) = v53;
  v23 = v30;
  v24 = v34;
  *(&v38 + 1) = v30;
  *&v39 = v34;
  *(&v39 + 1) = v18;
  v40 = v21;
  sub_258E1BD90(&v36, &v41);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v41 = v35;
  v42 = v14;
  v43 = v33;
  v44 = v29;
  v45 = v32;
  v46 = v28;
  v47 = v31;
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = v18;
  v52 = v21;
  result = sub_258E1BDC8(&v41);
  v26 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v26;
  *(a2 + 64) = v40;
  v27 = v37;
  *a2 = v36;
  *(a2 + 16) = v27;
  return result;
}

uint64_t sub_258E17C1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_258F0AD80();

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

uint64_t sub_258E17D28(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892C8, &qword_258F0EE50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v14[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BCE8();
  sub_258F0AED0();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14[15] = 0;
  v10 = sub_258F0AC30();
  v14[14] = 1;
  v11 = sub_258F0AC30();
  v14[13] = 2;
  v12 = sub_258F0AC30();
  (*(v4 + 8))(v8, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v14[12] = BYTE4(v10) & 1;
  v14[8] = BYTE4(v11) & 1;
  v14[4] = BYTE4(v12) & 1;
  return v10 | ((HIDWORD(v10) & 1) << 32);
}

uint64_t sub_258E17F24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D796F6C706564 && a2 == 0xEA0000000000746ELL || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974756F6C6C6F72 && a2 == 0xE900000000000064 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6150726F74636166 && a2 == 0xEA00000000006B63)
  {

    return 2;
  }

  else
  {
    v5 = sub_258F0AD80();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_258E18054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892C0, &qword_258F0EE48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BC94();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v12 = sub_258F0AC80();
  v24 = 1;
  v13 = sub_258F0AC50();
  v15 = v14;
  v22 = v13;
  v23 = 2;
  v16 = sub_258F0AC50();
  v17 = v10;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v12;
  *(a2 + 8) = v22;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v19;
  return result;
}

uint64_t sub_258E18268(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988FD0, &qword_258F0E258);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E16D34();
  sub_258F0AED0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F68, &qword_258F0E238);
  HIBYTE(v11) = 0;
  sub_258E18478();
  sub_258F0AC70();
  v10 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F80, &qword_258F0E240);
  HIBYTE(v11) = 1;
  sub_258E18550();
  sub_258F0AC20();
  (*(v3 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

unint64_t sub_258E18478()
{
  result = qword_27F988FD8;
  if (!qword_27F988FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988F68, &qword_258F0E238);
    sub_258E184FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FD8);
  }

  return result;
}

unint64_t sub_258E184FC()
{
  result = qword_27F988FE0;
  if (!qword_27F988FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FE0);
  }

  return result;
}

unint64_t sub_258E18550()
{
  result = qword_27F988FE8;
  if (!qword_27F988FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988F80, &qword_258F0E240);
    sub_258E185D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FE8);
  }

  return result;
}

unint64_t sub_258E185D4()
{
  result = qword_27F988FF0;
  if (!qword_27F988FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FF0);
  }

  return result;
}

unint64_t sub_258E18628()
{
  result = qword_27F989000;
  if (!qword_27F989000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989000);
  }

  return result;
}

unint64_t sub_258E1867C()
{
  result = qword_27F989008;
  if (!qword_27F989008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989008);
  }

  return result;
}

unint64_t sub_258E186D0()
{
  result = qword_27F989010;
  if (!qword_27F989010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988FB8, &qword_258F0E250);
    sub_258E18754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989010);
  }

  return result;
}

unint64_t sub_258E18754()
{
  result = qword_27F989018;
  if (!qword_27F989018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989018);
  }

  return result;
}

uint64_t sub_258E18810(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7465537465737361 && a2 == 0xEA00000000006449;
  if (v3 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465537465737361 && a2 == 0xEC000000656D614ELL || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6569647561 && a2 == 0xEA00000000006449 || (sub_258F0AD80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000258F19DE0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000258F19E10 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000258F19E30 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_258F0AD80();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_258E18A60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989060, &qword_258F0E288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v35 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A2DC();
  sub_258F0AED0();
  if (v2)
  {
    v41 = v2;
    v13 = 0;
  }

  else
  {
    LOBYTE(v47[0]) = 0;
    v12 = sub_258F0ABF0();
    v16 = v15;
    v17 = v12;
    LOBYTE(v47[0]) = 1;
    v18 = sub_258F0AC50();
    v41 = 0;
    v20 = v18;
    v40 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989070, &qword_258F0E290);
    LOBYTE(v42) = 2;
    sub_258E1A330();
    v21 = v41;
    sub_258F0AC20();
    if (!v21)
    {
      v38 = v20;
      v39 = v17;
      v22 = v47[0];
      LOBYTE(v47[0]) = 3;
      v23 = sub_258F0ABF0();
      v41 = 0;
      v25 = v24;
      v37 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989088, &qword_258F0E298);
      LOBYTE(v42) = 4;
      sub_258E1A408();
      v21 = v41;
      sub_258F0AC20();
      if (!v21)
      {
        v36 = a2;
        v26 = v47[0];
        LOBYTE(v47[0]) = 5;
        v50 = sub_258F0AC00();
        v51 = 6;
        v27 = sub_258F0AC00();
        v41 = 0;
        v28 = v27;
        (*(v6 + 8))(v10, v5);
        v30 = v39;
        v29 = v40;
        *&v42 = v39;
        *(&v42 + 1) = v16;
        v31 = v38;
        *&v43 = v38;
        *(&v43 + 1) = v40;
        *&v44 = v22;
        *(&v44 + 1) = v37;
        *&v45 = v25;
        *(&v45 + 1) = v26;
        LOBYTE(v46) = v50;
        HIBYTE(v46) = v28;
        sub_258E1A4E0(&v42, v47);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        v47[0] = v30;
        v47[1] = v16;
        v47[2] = v31;
        v47[3] = v29;
        v47[4] = v22;
        v47[5] = v37;
        v47[6] = v25;
        v47[7] = v26;
        v48 = v50;
        v49 = v28;
        result = sub_258E1A518(v47);
        v32 = v45;
        v33 = v36;
        *(v36 + 32) = v44;
        *(v33 + 48) = v32;
        *(v33 + 64) = v46;
        v34 = v43;
        *v33 = v42;
        *(v33 + 16) = v34;
        return result;
      }
    }

    v41 = v21;
    (*(v6 + 8))(v10, v5);
    v13 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  if (v13)
  {
  }
}

uint64_t sub_258E18EC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F537465737361 && a2 == 0xEB00000000656372;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258F19D60 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570537465737361 && a2 == 0xEE00726569666963 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065 || (sub_258F0AD80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973 || (sub_258F0AD80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000258F19D80 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F19DA0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461507465737361 && a2 == 0xE900000000000068 || (sub_258F0AD80() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x636F4C7465737361 && a2 == 0xEB00000000656C61)
  {

    return 8;
  }

  else
  {
    v6 = sub_258F0AD80();

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

uint64_t sub_258E191CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989020, &qword_258F0E268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v39 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_258E196C4();
  sub_258F0AED0();
  if (v2)
  {
    v51 = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
LABEL_4:
  }

  v49 = v6;
  LOBYTE(v61[0]) = 0;
  v13 = v5;
  v15 = sub_258F0AC50();
  v48 = v16;
  LOBYTE(v61[0]) = 1;
  v17 = sub_258F0AC60();
  LOBYTE(v61[0]) = 2;
  v18 = sub_258F0ABF0();
  v80 = v17;
  v19 = v18;
  v47 = v20;
  LOBYTE(v61[0]) = 3;
  v21 = sub_258F0AC50();
  v23 = v22;
  v45 = v19;
  v46 = v21;
  LOBYTE(v61[0]) = 4;
  v24 = sub_258F0ABF0();
  v26 = v25;
  v44 = v24;
  LOBYTE(v61[0]) = 5;
  v43 = sub_258F0AC90();
  LOBYTE(v61[0]) = 6;
  v42 = sub_258F0AC90();
  LOBYTE(v61[0]) = 7;
  v27 = sub_258F0ABF0();
  v51 = 0;
  v29 = v28;
  v41 = v27;
  v81 = 8;
  sub_258E19718();
  v30 = v51;
  sub_258F0AC70();
  v51 = v30;
  if (v30)
  {
    (*(v49 + 8))(v10, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);

    goto LABEL_4;
  }

  v80 &= 1u;
  v31 = v80;
  (*(v49 + 8))(v10, v13);
  v49 = v78;
  v39 = v79;
  v40 = *(&v78 + 1);
  v32 = v47;
  *&v52 = v15;
  *(&v52 + 1) = v48;
  LOBYTE(v53) = v31;
  v33 = v45;
  *(&v53 + 1) = v45;
  *&v54 = v47;
  *(&v54 + 1) = v46;
  *&v55 = v23;
  *(&v55 + 1) = v44;
  *&v56 = v26;
  *(&v56 + 1) = v43;
  *&v57 = v42;
  *(&v57 + 1) = v41;
  *&v58 = v29;
  *(&v58 + 1) = v77;
  v59 = v78;
  v34 = v77;
  v60 = v79;
  sub_258E1976C(&v52, v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  v61[0] = v15;
  v61[1] = v48;
  v62 = v80;
  v63 = v33;
  v64 = v32;
  v65 = v46;
  v66 = v23;
  v67 = v44;
  v68 = v26;
  v69 = v43;
  v70 = v42;
  v71 = v41;
  v72 = v29;
  v73 = v34;
  v74 = v49;
  v75 = v40;
  v76 = v39;
  result = sub_258E197A4(v61);
  v35 = v59;
  *(a2 + 96) = v58;
  *(a2 + 112) = v35;
  *(a2 + 128) = v60;
  v36 = v55;
  *(a2 + 32) = v54;
  *(a2 + 48) = v36;
  v37 = v57;
  *(a2 + 64) = v56;
  *(a2 + 80) = v37;
  v38 = v53;
  *a2 = v52;
  *(a2 + 16) = v38;
  return result;
}

unint64_t sub_258E196C4()
{
  result = qword_27F989028;
  if (!qword_27F989028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989028);
  }

  return result;
}

unint64_t sub_258E19718()
{
  result = qword_27F989030;
  if (!qword_27F989030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989030);
  }

  return result;
}

unint64_t sub_258E197D4()
{
  result = qword_27F989040;
  if (!qword_27F989040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989040);
  }

  return result;
}

uint64_t sub_258E19828(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890C8, &qword_258F0E2A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A6F8();
  sub_258F0AED0();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_258F0AC50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890D8, &qword_258F0E2B0);
    v11[15] = 1;
    sub_258E1A74C();
    sub_258F0AC70();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_258E19A2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000258F19E60 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465537465737361 && a2 == 0xEF73656369646E49 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465537465737361 && a2 == 0xEE00736567617355 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C416567617375 && a2 == 0xEC00000073657361)
  {

    return 3;
  }

  else
  {
    v5 = sub_258F0AD80();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_258E19BB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989138, &unk_258F0E2E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A9A4();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v21) = 0;
  v18 = sub_258F0AC50();
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989148, &qword_258F0F400);
  v20 = 1;
  sub_258E1ABA8(&qword_27F989150);
  sub_258F0AC70();
  v17 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989158, &qword_258F0E2F0);
  v20 = 2;
  sub_258E1A9F8();
  sub_258F0AC20();
  v13 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989170, &qword_258F0E2F8);
  v20 = 3;
  sub_258E1AAD0();
  sub_258F0AC20();
  (*(v6 + 8))(v10, v5);
  v14 = v21;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v16 = v19;
  *a2 = v18;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v13;
  a2[4] = v14;
  return result;
}

uint64_t sub_258E19EF0(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - v10;
  v12 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  a4();
  sub_258F0AED0();
  if (!v4)
  {
    v13 = v16;
    v18 = 0;
    v12 = sub_258F0AC50();
    v17 = 1;
    sub_258F0AC50();
    (*(v13 + 8))(v11, v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t sub_258E1A0E0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989048, &qword_258F0E278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A288();
  sub_258F0AED0();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13[15] = 0;
  v10 = sub_258F0AC80();
  v13[14] = 1;
  v11 = sub_258F0AC80();
  (*(v4 + 8))(v8, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10 | (v11 << 32);
}

unint64_t sub_258E1A288()
{
  result = qword_27F989050;
  if (!qword_27F989050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989050);
  }

  return result;
}

unint64_t sub_258E1A2DC()
{
  result = qword_27F989068;
  if (!qword_27F989068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989068);
  }

  return result;
}

unint64_t sub_258E1A330()
{
  result = qword_27F989078;
  if (!qword_27F989078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989070, &qword_258F0E290);
    sub_258E1A3B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989078);
  }

  return result;
}

unint64_t sub_258E1A3B4()
{
  result = qword_27F989080;
  if (!qword_27F989080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989080);
  }

  return result;
}

unint64_t sub_258E1A408()
{
  result = qword_27F989090;
  if (!qword_27F989090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989088, &qword_258F0E298);
    sub_258E1A48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989090);
  }

  return result;
}

unint64_t sub_258E1A48C()
{
  result = qword_27F989098;
  if (!qword_27F989098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989098);
  }

  return result;
}

unint64_t sub_258E1A548()
{
  result = qword_27F9890A8;
  if (!qword_27F9890A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989070, &qword_258F0E290);
    sub_258E1A5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890A8);
  }

  return result;
}

unint64_t sub_258E1A5CC()
{
  result = qword_27F9890B0;
  if (!qword_27F9890B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890B0);
  }

  return result;
}

unint64_t sub_258E1A620()
{
  result = qword_27F9890B8;
  if (!qword_27F9890B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989088, &qword_258F0E298);
    sub_258E1A6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890B8);
  }

  return result;
}

unint64_t sub_258E1A6A4()
{
  result = qword_27F9890C0;
  if (!qword_27F9890C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890C0);
  }

  return result;
}

unint64_t sub_258E1A6F8()
{
  result = qword_27F9890D0;
  if (!qword_27F9890D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890D0);
  }

  return result;
}

unint64_t sub_258E1A74C()
{
  result = qword_27F9890E0;
  if (!qword_27F9890E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9890D8, &qword_258F0E2B0);
    sub_258E1A7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890E0);
  }

  return result;
}

unint64_t sub_258E1A7D0()
{
  result = qword_27F9890E8;
  if (!qword_27F9890E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890E8);
  }

  return result;
}

unint64_t sub_258E1A824()
{
  result = qword_27F9890F8;
  if (!qword_27F9890F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9890D8, &qword_258F0E2B0);
    sub_258E1A8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890F8);
  }

  return result;
}

unint64_t sub_258E1A8A8()
{
  result = qword_27F989100;
  if (!qword_27F989100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989100);
  }

  return result;
}

unint64_t sub_258E1A8FC()
{
  result = qword_27F989110;
  if (!qword_27F989110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989110);
  }

  return result;
}

unint64_t sub_258E1A950()
{
  result = qword_27F989128;
  if (!qword_27F989128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989128);
  }

  return result;
}

unint64_t sub_258E1A9A4()
{
  result = qword_27F989140;
  if (!qword_27F989140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989140);
  }

  return result;
}

unint64_t sub_258E1A9F8()
{
  result = qword_27F989160;
  if (!qword_27F989160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989158, &qword_258F0E2F0);
    sub_258E1AA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989160);
  }

  return result;
}

unint64_t sub_258E1AA7C()
{
  result = qword_27F989168;
  if (!qword_27F989168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989168);
  }

  return result;
}

unint64_t sub_258E1AAD0()
{
  result = qword_27F989178;
  if (!qword_27F989178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989170, &qword_258F0E2F8);
    sub_258E1AB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989178);
  }

  return result;
}

unint64_t sub_258E1AB54()
{
  result = qword_27F989180;
  if (!qword_27F989180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989180);
  }

  return result;
}

uint64_t sub_258E1ABA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989148, &qword_258F0F400);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258E1AC14()
{
  result = qword_27F989198;
  if (!qword_27F989198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989158, &qword_258F0E2F0);
    sub_258E1AC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989198);
  }

  return result;
}

unint64_t sub_258E1AC98()
{
  result = qword_27F9891A0;
  if (!qword_27F9891A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891A0);
  }

  return result;
}

unint64_t sub_258E1ACEC()
{
  result = qword_27F9891A8;
  if (!qword_27F9891A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989170, &qword_258F0E2F8);
    sub_258E1AD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891A8);
  }

  return result;
}

unint64_t sub_258E1AD70()
{
  result = qword_27F9891B0;
  if (!qword_27F9891B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UAFAssetSet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UAFAssetSet.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UAFAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UAFAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_258E1B0D4(uint64_t a1, int a2)
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

uint64_t sub_258E1B11C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_258E1B190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_258E1B1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_258E1B2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258E1B2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258E1B350()
{
  result = qword_27F9891B8;
  if (!qword_27F9891B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891B8);
  }

  return result;
}

unint64_t sub_258E1B3A8()
{
  result = qword_27F9891C0;
  if (!qword_27F9891C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891C0);
  }

  return result;
}

unint64_t sub_258E1B400()
{
  result = qword_27F9891C8;
  if (!qword_27F9891C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891C8);
  }

  return result;
}

unint64_t sub_258E1B458()
{
  result = qword_27F9891D0;
  if (!qword_27F9891D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891D0);
  }

  return result;
}

unint64_t sub_258E1B4B0()
{
  result = qword_27F9891D8;
  if (!qword_27F9891D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891D8);
  }

  return result;
}

unint64_t sub_258E1B508()
{
  result = qword_27F9891E0;
  if (!qword_27F9891E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891E0);
  }

  return result;
}

unint64_t sub_258E1B560()
{
  result = qword_27F9891E8;
  if (!qword_27F9891E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891E8);
  }

  return result;
}

unint64_t sub_258E1B5B8()
{
  result = qword_27F9891F0;
  if (!qword_27F9891F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891F0);
  }

  return result;
}

unint64_t sub_258E1B610()
{
  result = qword_27F9891F8;
  if (!qword_27F9891F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891F8);
  }

  return result;
}

unint64_t sub_258E1B668()
{
  result = qword_27F989200;
  if (!qword_27F989200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989200);
  }

  return result;
}

unint64_t sub_258E1B6C0()
{
  result = qword_27F989208;
  if (!qword_27F989208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989208);
  }

  return result;
}

unint64_t sub_258E1B718()
{
  result = qword_27F989210;
  if (!qword_27F989210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989210);
  }

  return result;
}

unint64_t sub_258E1B770()
{
  result = qword_27F989218;
  if (!qword_27F989218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989218);
  }

  return result;
}

unint64_t sub_258E1B7C8()
{
  result = qword_27F989220;
  if (!qword_27F989220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989220);
  }

  return result;
}

unint64_t sub_258E1B820()
{
  result = qword_27F989228;
  if (!qword_27F989228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989228);
  }

  return result;
}

unint64_t sub_258E1B878()
{
  result = qword_27F989230;
  if (!qword_27F989230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989230);
  }

  return result;
}

unint64_t sub_258E1B8D0()
{
  result = qword_27F989238;
  if (!qword_27F989238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989238);
  }

  return result;
}

unint64_t sub_258E1B928()
{
  result = qword_27F989240;
  if (!qword_27F989240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989240);
  }

  return result;
}

unint64_t sub_258E1B980()
{
  result = qword_27F989248;
  if (!qword_27F989248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989248);
  }

  return result;
}

unint64_t sub_258E1B9D8()
{
  result = qword_27F989250;
  if (!qword_27F989250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989250);
  }

  return result;
}

unint64_t sub_258E1BA30()
{
  result = qword_27F989258;
  if (!qword_27F989258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989258);
  }

  return result;
}

unint64_t sub_258E1BA88()
{
  result = qword_27F989260;
  if (!qword_27F989260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989260);
  }

  return result;
}

unint64_t sub_258E1BAE0()
{
  result = qword_27F989268;
  if (!qword_27F989268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989268);
  }

  return result;
}

unint64_t sub_258E1BB38()
{
  result = qword_27F989270;
  if (!qword_27F989270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989270);
  }

  return result;
}

unint64_t sub_258E1BB90()
{
  result = qword_27F989278;
  if (!qword_27F989278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989278);
  }

  return result;
}

unint64_t sub_258E1BBE8()
{
  result = qword_27F989280;
  if (!qword_27F989280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989280);
  }

  return result;
}

unint64_t sub_258E1BC40()
{
  result = qword_27F989288;
  if (!qword_27F989288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989288);
  }

  return result;
}

unint64_t sub_258E1BC94()
{
  result = qword_27F989298;
  if (!qword_27F989298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989298);
  }

  return result;
}

unint64_t sub_258E1BCE8()
{
  result = qword_27F9892A8;
  if (!qword_27F9892A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892A8);
  }

  return result;
}

unint64_t sub_258E1BD3C()
{
  result = qword_27F9892B8;
  if (!qword_27F9892B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892B8);
  }

  return result;
}

unint64_t sub_258E1BDF8()
{
  result = qword_27F9892E0;
  if (!qword_27F9892E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsWorker.Subtask(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsWorker.Subtask(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductId(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProductId(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_258E1C110()
{
  result = qword_27F9892F0;
  if (!qword_27F9892F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892F0);
  }

  return result;
}

unint64_t sub_258E1C168()
{
  result = qword_27F9892F8;
  if (!qword_27F9892F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892F8);
  }

  return result;
}

unint64_t sub_258E1C1C0()
{
  result = qword_27F989300;
  if (!qword_27F989300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989300);
  }

  return result;
}

unint64_t sub_258E1C218()
{
  result = qword_27F989308;
  if (!qword_27F989308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989308);
  }

  return result;
}

unint64_t sub_258E1C270()
{
  result = qword_27F989310;
  if (!qword_27F989310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989310);
  }

  return result;
}

unint64_t sub_258E1C2C8()
{
  result = qword_27F989318;
  if (!qword_27F989318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989318);
  }

  return result;
}

unint64_t sub_258E1C320()
{
  result = qword_27F989320;
  if (!qword_27F989320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989320);
  }

  return result;
}

unint64_t sub_258E1C378()
{
  result = qword_27F989328;
  if (!qword_27F989328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989328);
  }

  return result;
}

unint64_t sub_258E1C3D0()
{
  result = qword_27F989330;
  if (!qword_27F989330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989330);
  }

  return result;
}

unint64_t sub_258E1C428()
{
  result = qword_27F989338;
  if (!qword_27F989338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989338);
  }

  return result;
}

unint64_t sub_258E1C480()
{
  result = qword_27F989340;
  if (!qword_27F989340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989340);
  }

  return result;
}

unint64_t sub_258E1C4D8()
{
  result = qword_27F989348;
  if (!qword_27F989348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989348);
  }

  return result;
}

uint64_t sub_258E1C624(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t dispatch thunk of AssetPenetrationReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t AssetPenetrationSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258E21CB8(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t AssetPenetrationSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_258E21BF8(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

uint64_t sub_258E1CA08(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = sub_258F0A370();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v7 = *(type metadata accessor for AssetPenetrationData() - 8);
  *(v2 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a1;
  *(v2 + 88) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258E1CB40, 0, 0);
}

void sub_258E1CB40()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v0[12] = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;

  v5 = sub_258F0A350();
  v6 = sub_258F0A810();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v8 + 16);

    _os_log_impl(&dword_258DD8000, v5, v6, "AssetPenetrationSELFReporter reporting results for %ld events", v11, 0xCu);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

  else
  {
    v12 = v0[9];
  }

  v13 = v0[11];
  v14 = *(v13 + 16);
  v15 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService;
  v0[13] = v14;
  v0[14] = v15;
  if (v14)
  {
    v16 = v0[6];
    v0[15] = 0;
    if (!*(v13 + 16))
    {
      __break(1u);
      return;
    }

    sub_258E02EF8(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v0[8]);
    v17 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v0[16] = v17;
    if (v17)
    {
      v18 = v17;
      v19 = v0[12];
      v21 = v0[7];
      v20 = v0[8];
      v23 = v0[4];
      v22 = v0[5];
      v24 = v0[2];
      v25 = v0[3];
      v42 = (v24 + v0[14]);
      v44 = v24;
      sub_258DEB8C8(0, &qword_27F989360, 0x277D591F0);
      sub_258E02EF8(v20, v21);
      (*(v23 + 16))(v22, v24 + v19, v25);
      v26 = sub_258E1D860(v21, v22);
      v0[17] = v26;
      [v18 setAssetSetStatusDigestReported_];
      sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
      sub_258E02EF8(v20, v21);
      v27 = sub_258E1DC08(v21);
      [v18 setEventMetadata_];

      v28 = v42[3];
      v29 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v28);
      v30 = *(v29 + 8);
      v43 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      v0[18] = v32;
      *v32 = v0;
      v32[1] = sub_258E1CF90;

      v43(v18, v44 + v19, v28, v29);
      return;
    }

    v33 = v0[2] + v0[12];
    v34 = sub_258F0A350();
    v35 = sub_258F0A820();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_258DD8000, v34, v35, "Failed to generate event for asset penetration", v36, 2u);
      MEMORY[0x259C9EF40](v36, -1, -1);
    }

    v37 = v0[8];

    sub_258E02F5C(v37);
  }

  v39 = v0[7];
  v38 = v0[8];
  v40 = v0[5];

  v41 = v0[1];

  v41();
}

uint64_t sub_258E1CF90()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_258E1D434;
  }

  else
  {
    v3 = sub_258E1D0A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E1D0A4()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 104);
  v3 = *(v0 + 120) + 1;
  result = sub_258E02F5C(*(v0 + 64));
  if (v3 != v2)
  {
    v5 = *(v0 + 120) + 1;
    *(v0 + 120) = v5;
    v6 = *(v0 + 88);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    sub_258E02EF8(v6 + ((*(*(v0 + 48) + 80) + 32) & ~*(*(v0 + 48) + 80)) + *(*(v0 + 48) + 72) * v5, *(v0 + 64));
    v7 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    *(v0 + 128) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = *(v0 + 96);
      v11 = *(v0 + 56);
      v10 = *(v0 + 64);
      v13 = *(v0 + 32);
      v12 = *(v0 + 40);
      v14 = *(v0 + 16);
      v15 = *(v0 + 24);
      v32 = (v14 + *(v0 + 112));
      v34 = v14;
      sub_258DEB8C8(0, &qword_27F989360, 0x277D591F0);
      sub_258E02EF8(v10, v11);
      (*(v13 + 16))(v12, v14 + v9, v15);
      v16 = sub_258E1D860(v11, v12);
      *(v0 + 136) = v16;
      [v8 setAssetSetStatusDigestReported_];
      sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
      sub_258E02EF8(v10, v11);
      v17 = sub_258E1DC08(v11);
      [v8 setEventMetadata_];

      v18 = v32[3];
      v19 = v32[4];
      __swift_project_boxed_opaque_existential_1(v32, v18);
      v20 = *(v19 + 8);
      v33 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      *(v0 + 144) = v22;
      *v22 = v0;
      v22[1] = sub_258E1CF90;

      return v33(v8, v34 + v9, v18, v19);
    }

    v23 = *(v0 + 16) + *(v0 + 96);
    v24 = sub_258F0A350();
    v25 = sub_258F0A820();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_258DD8000, v24, v25, "Failed to generate event for asset penetration", v26, 2u);
      MEMORY[0x259C9EF40](v26, -1, -1);
    }

    v27 = *(v0 + 64);

    sub_258E02F5C(v27);
  }

  v29 = *(v0 + 56);
  v28 = *(v0 + 64);
  v30 = *(v0 + 40);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_258E1D434()
{
  v1 = v0[2] + v0[12];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Failed to report asset penetration event", v8, 2u);
    MEMORY[0x259C9EF40](v8, -1, -1);

    v2 = v6;
  }

  else
  {
  }

  v9 = v0[13];
  v10 = v0[15] + 1;
  result = sub_258E02F5C(v0[8]);
  if (v10 != v9)
  {
    v12 = v0[15] + 1;
    v0[15] = v12;
    v13 = v0[11];
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    sub_258E02EF8(v13 + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v12, v0[8]);
    v14 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v0[16] = v14;
    if (v14)
    {
      v15 = v14;
      v16 = v0[12];
      v18 = v0[7];
      v17 = v0[8];
      v20 = v0[4];
      v19 = v0[5];
      v21 = v0[2];
      v22 = v0[3];
      v39 = (v21 + v0[14]);
      v41 = v21;
      sub_258DEB8C8(0, &qword_27F989360, 0x277D591F0);
      sub_258E02EF8(v17, v18);
      (*(v20 + 16))(v19, v21 + v16, v22);
      v23 = sub_258E1D860(v18, v19);
      v0[17] = v23;
      [v15 setAssetSetStatusDigestReported_];
      sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
      sub_258E02EF8(v17, v18);
      v24 = sub_258E1DC08(v18);
      [v15 setEventMetadata_];

      v25 = v39[3];
      v26 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v25);
      v27 = *(v26 + 8);
      v40 = (v27 + *v27);
      v28 = v27[1];
      v29 = swift_task_alloc();
      v0[18] = v29;
      *v29 = v0;
      v29[1] = sub_258E1CF90;

      return v40(v15, v41 + v16, v25, v26);
    }

    v30 = v0[2] + v0[12];
    v31 = sub_258F0A350();
    v32 = sub_258F0A820();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_258DD8000, v31, v32, "Failed to generate event for asset penetration", v33, 2u);
      MEMORY[0x259C9EF40](v33, -1, -1);
    }

    v34 = v0[8];

    sub_258E02F5C(v34);
  }

  v36 = v0[7];
  v35 = v0[8];
  v37 = v0[5];

  v38 = v0[1];

  return v38();
}

id sub_258E1D860(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AssetPenetrationData();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v30 - v17;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_258F0CA20;
  sub_258DEB8C8(0, &qword_27F989380, 0x277D591E8);
  sub_258E02EF8(a1, v18);
  v31 = v5;
  (*(v5 + 16))(v9, a2, v4);
  v22 = v20;
  *(v21 + 32) = sub_258E1E240(v18, v9);
  v23 = sub_258F0A6A0();

  [v22 setDigests_];

  sub_258E02EF8(a1, v15);
  result = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v24 = result;
  if (v15[13])
  {
    v25 = v15[12];
    v26 = sub_258F0A4E0();
    if ([v26 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
    {
      v27 = 0;
    }

    else if ([v26 isEqualToString:@"PROGRAMCODE_IOS"])
    {
      v27 = 1;
    }

    else if ([v26 isEqualToString:@"PROGRAMCODE_MACOS"])
    {
      v27 = 2;
    }

    else if ([v26 isEqualToString:@"PROGRAMCODE_TVOS"])
    {
      v27 = 3;
    }

    else if ([v26 isEqualToString:@"PROGRAMCODE_WATCHOS"])
    {
      v27 = 4;
    }

    else if ([v26 isEqualToString:@"PROGRAMCODE_VISIONOS"])
    {
      v27 = 5;
    }

    else
    {
      v27 = 0;
    }

    [v24 setProgramCode_];
  }

  if (v15[9])
  {
    v28 = v15[8];
    v29 = sub_258F0A4E0();
    [v24 setDeviceType_];
  }

  sub_258E02F5C(v15);
  [v22 setFixedDimensions_];

  (*(v31 + 8))(a2, v4);
  sub_258E02F5C(a1);
  return v22;
}

uint64_t sub_258E1DC08(char *a1)
{
  v2 = sub_258F09A20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v40 - v11;
  v13 = sub_258F09A70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v40 - v21;
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v23)
  {
    sub_258E02F5C(a1);
    return v23;
  }

  v40 = v3;
  v41 = v2;
  if (*(a1 + 1))
  {
    v24 = *a1;
    v25 = *(a1 + 1);
  }

  sub_258F09A30();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_258DE2184(v12, &qword_27F988730, &unk_258F0F8E0);
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    v26 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v27 = sub_258F09A50();
    v28 = [v26 0x1FB3D1262];

    [v23 setDeviceAggregationId_];
    (*(v14 + 8))(v22, v13);
  }

  sub_258F09B50();
  result = sub_258F099E0();
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v30 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v30 >= 1.84467441e19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (is_mul_ok(v30, 0x3E8uLL))
  {
    [v23 setEventTimestampInMsSince1970_];
    v31 = sub_258E47ECC();
    [v23 setAggregationInterval_];

    v32 = type metadata accessor for AssetPenetrationData();
    (*(v14 + 16))(v19, &a1[v32[13]], v13);
    v33 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v34 = sub_258F09A50();
    v35 = [v33 initWithNSUUID_];

    (*(v14 + 8))(v19, v13);
    [v23 setOddId_];

    v36 = &a1[v32[15]];
    if (v36[8])
    {
      v37 = 0;
    }

    else
    {
      v37 = *v36;
    }

    [v23 setUserAggregationIdRotationTimestampMs_];
    v38 = &a1[v32[16]];
    if (v38[8])
    {
      v39 = 0;
    }

    else
    {
      v39 = *v38;
    }

    [v23 setUserAggregationIdExpirationTimestampMs_];
    sub_258E02F5C(a1);
    (*(v40 + 8))(v7, v41);
    return v23;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_258E1E094()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService));
}

uint64_t AssetPenetrationSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService));
  return v0;
}

uint64_t AssetPenetrationSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_258E1E240(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AssetPenetrationData();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v16 = result;
    sub_258DEB8C8(0, &qword_27F989388, 0x277D591F8);
    sub_258E02EF8(a1, v14);
    (*(v5 + 16))(v9, a2, v4);
    v17 = v16;
    sub_258E1E408(v14, v9);
    v19 = v18;
    [v17 setDimensions_];

    (*(v5 + 8))(a2, v4);
    sub_258E02F5C(a1);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_258E1E408(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v3 = sub_258F09A20();
  v136 = *(v3 - 8);
  v4 = *(v136 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v135 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989390, &unk_258F159D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v133 - v10;
  v12 = sub_258F09AA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for AssetPenetrationData();
  v18 = *(*(v144 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v144, v19);
  *&v137 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v133 - v23);
  v25 = sub_258F0A370();
  v138 = *(v25 - 8);
  v139 = v25;
  v26 = *(v138 + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v145)
  {
    v134 = v3;
    v30 = MEMORY[0x277D84F90];
    v149 = sub_258DFBE24(MEMORY[0x277D84F90]);
    v148 = sub_258DFBE24(v30);
    v31 = *(a1 + 24);
    v142 = a1;
    if (v31)
    {
      v133 = *(a1 + 16);
      v32 = *(a1 + 32);
      v140 = sub_258DEB8C8(0, &qword_27F9893A0, 0x277D5B1E0);
      v141 = v31;
      v33 = v24;
      v34 = v17;
      v35 = v13;
      v36 = v12;
      v37 = v11;
      v38 = *(v138 + 16);

      v38(v29, v143, v139);
      v11 = v37;
      v12 = v36;
      v13 = v35;
      v17 = v34;
      v24 = v33;

      a1 = v142;
      v40 = sub_258E1F240(v39, v29, &v149, &v148);
      [v145 setAssetSetStatus_];

      if (!*(a1 + 136))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v133 = 0x526E776F6E6B6E55;
      v141 = 0xED00006E6F736165;
      if (!*(a1 + 136))
      {
LABEL_5:
        if ((*(a1 + 152) & 1) == 0)
        {
          [v145 setBuildInstallationTimestampInSecondsSince1970_];
        }

        sub_258DEB8C8(0, &qword_27F988AC8, 0x277D59248);
        sub_258E02EF8(a1, v24);
        v43 = sub_258E1FD24(v24);
        [v145 setAssistantDimensions_];

        v44 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        sub_258F09A80();
        v45 = sub_258F09A90();
        (*(v13 + 8))(v17, v12);
        [v44 setLocale_];

        v46 = sub_258F0A4E0();
        v140 = v44;
        [v44 setDateFormat_];

        sub_258F09B10();
        v47 = sub_258F09B40();
        v48 = *(v47 - 8);
        v49 = 0;
        if ((*(v48 + 48))(v11, 1, v47) != 1)
        {
          v49 = sub_258F09B20();
          (*(v48 + 8))(v11, v47);
        }

        [v140 setTimeZone_];

        v50 = v143;
        if (*(a1 + 56))
        {
          v51 = v135;
          sub_258F09B50();
          sub_258F099E0();
          v53 = v52;
          (*(v136 + 8))(v51, v134);
        }

        else
        {
          v53 = *(a1 + 48);
        }

        v54 = MEMORY[0x277D84F90];
        if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_79;
        }

        if (v53 <= -1.0)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v53 >= 1.84467441e19)
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        [v145 setAssetSetStatusEventTimestampInSecondsSince1970_];
        v147 = v54;
        v55 = *(v144 + 68);
        if (*(a1 + v55))
        {
          v56 = *(a1 + v55);
        }

        else
        {
          v56 = v54;
        }

        v57 = *(v56 + 16);

        if (v57)
        {
          v58 = 0;
          v59 = (v56 + 40);
          v60 = &selRef_setSampledErrorAsset_;
          while (v58 < *(v56 + 16))
          {
            v61 = *(v59 - 1);
            v62 = *v59;
            v63 = [objc_allocWithZone(MEMORY[0x277D592B8]) v60[10]];
            if (!v63)
            {
              goto LABEL_82;
            }

            v64 = v63;
            v65 = [objc_allocWithZone(MEMORY[0x277D59360]) v60[10]];
            if (!v65)
            {
              goto LABEL_83;
            }

            v66 = v65;
            [v65 setTimestampInSecondsSince1970_];
            [v66 setStatusMessage_];
            [v64 setGmsAssetAvailabilityStatus_];

            v67 = v64;
            MEMORY[0x259C9DF50]();
            if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v68 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_258F0A6D0();
            }

            ++v58;
            sub_258F0A700();

            v59 += 2;
            v60 = &selRef_setSampledErrorAsset_;
            if (v57 == v58)
            {
              a1 = v142;
              v50 = v143;
              goto LABEL_27;
            }
          }

          __break(1u);
          goto LABEL_77;
        }

LABEL_27:

        sub_258DEB8C8(0, &qword_27F989398, 0x277D592B8);
        v69 = sub_258F0A6A0();
        [v145 setClientProcessAssetAvailabilityStatus_];

        v70 = v149;
        v71 = v141;
        if (*(v149 + 16))
        {
        }

        else
        {
          v72 = *(v148 + 16);

          if (!v72)
          {
            (*(v138 + 8))(v50, v139);

            sub_258E02F5C(a1);

            goto LABEL_74;
          }
        }

        v73 = v137;
        sub_258E02EF8(a1, v137);

        v74 = sub_258F0A350();
        v75 = sub_258F0A800();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v146 = v77;
          *v76 = 134218242;
          v78 = *(v73 + 48);
          v79 = *(v73 + 56);
          sub_258E02F5C(v73);
          v80 = 0.0;
          if (!v79)
          {
            v80 = v78;
          }

          *(v76 + 4) = v80;
          *(v76 + 12) = 2080;
          v81 = sub_258DE3018(v133, v71, &v146);

          *(v76 + 14) = v81;
          _os_log_impl(&dword_258DD8000, v74, v75, "--- Conversion Summary for ODD Payload (Timestamp: %f, Reason: %s) ---", v76, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x259C9EF40](v77, -1, -1);
          MEMORY[0x259C9EF40](v76, -1, -1);
        }

        else
        {

          sub_258E02F5C(v73);
        }

        v83 = _swift_stdlib_bridgeErrorToNSError;
        if (*(v70 + 16))
        {
          v84 = 0;
          v85 = v70 + 64;
          v86 = 1 << *(v70 + 32);
          v87 = -1;
          if (v86 < 64)
          {
            v87 = ~(-1 << v86);
          }

          v88 = v87 & *(v70 + 64);
          v89 = (v86 + 63) >> 6;
          *&v82 = 136315394;
          v137 = v82;
          v144 = v70;
          while (v88)
          {
            v90 = v84;
LABEL_48:
            v91 = __clz(__rbit64(v88));
            v88 &= v88 - 1;
            v92 = v91 | (v90 << 6);
            v93 = (*(v70 + 48) + 16 * v92);
            v95 = *v93;
            v94 = v93[1];
            v141 = *(*(v70 + 56) + 8 * v92);

            v96 = sub_258F0A350();
            v97 = sub_258F0A800();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v146 = v99;
              *v98 = v137;
              v100 = sub_258DE3018(v95, v94, &v146);

              *(v98 + 4) = v100;
              *(v98 + 12) = 2048;
              *(v98 + 14) = v141;
              _os_log_impl(&dword_258DD8000, v96, v97, "ODD Payload - Asset Source Conversion: %s: %ld occurrences", v98, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v99);
              v101 = v99;
              a1 = v142;
              MEMORY[0x259C9EF40](v101, -1, -1);
              v102 = v98;
              v50 = v143;
              MEMORY[0x259C9EF40](v102, -1, -1);
            }

            else
            {
            }

            v84 = v90;
            v70 = v144;
          }

          while (1)
          {
            v90 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              break;
            }

            if (v90 >= v89)
            {

              v83 = _swift_stdlib_bridgeErrorToNSError;
              goto LABEL_54;
            }

            v88 = *(v85 + 8 * v90);
            ++v84;
            if (v88)
            {
              goto LABEL_48;
            }
          }

LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v103 = sub_258F0A350();
        v104 = sub_258F0A800();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&dword_258DD8000, v103, v104, "ODD Payload - Asset Source Conversions: None.", v105, 2u);
          MEMORY[0x259C9EF40](v105, -1, -1);
        }

LABEL_54:
        v106 = v148;
        if (*(v148 + 16))
        {
          v107 = v148 + 64;
          v108 = 1 << *(v148 + 32);
          v109 = -1;
          if (v108 < 64)
          {
            v109 = ~(-1 << v108);
          }

          v110 = v109 & *(v148 + 64);
          v111 = (v108 + 63) >> 6;

          v112 = 0;
          *&v113 = *(v83 + 257);
          v137 = v113;
          v144 = v106;
          while (v110)
          {
            v114 = v112;
LABEL_65:
            v115 = __clz(__rbit64(v110));
            v110 &= v110 - 1;
            v116 = v115 | (v114 << 6);
            v117 = (*(v106 + 48) + 16 * v116);
            v119 = *v117;
            v118 = v117[1];
            v141 = *(*(v106 + 56) + 8 * v116);

            v120 = sub_258F0A350();
            v121 = sub_258F0A800();
            if (os_log_type_enabled(v120, v121))
            {
              v122 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              v146 = v123;
              *v122 = v137;
              v124 = sub_258DE3018(v119, v118, &v146);

              *(v122 + 4) = v124;
              *(v122 + 12) = 2048;
              *(v122 + 14) = v141;
              _os_log_impl(&dword_258DD8000, v120, v121, "ODD Payload - Locale Conversion: %s: %ld occurrences", v122, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v123);
              v125 = v123;
              a1 = v142;
              MEMORY[0x259C9EF40](v125, -1, -1);
              v126 = v122;
              v50 = v143;
              MEMORY[0x259C9EF40](v126, -1, -1);
            }

            else
            {
            }

            v112 = v114;
            v106 = v144;
          }

          while (1)
          {
            v114 = v112 + 1;
            if (__OFADD__(v112, 1))
            {
              goto LABEL_78;
            }

            if (v114 >= v111)
            {

              goto LABEL_71;
            }

            v110 = *(v107 + 8 * v114);
            ++v112;
            if (v110)
            {
              goto LABEL_65;
            }
          }
        }

        v127 = sub_258F0A350();
        v128 = sub_258F0A800();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&dword_258DD8000, v127, v128, "ODD Payload - Locale Conversions: None.", v129, 2u);
          MEMORY[0x259C9EF40](v129, -1, -1);
        }

LABEL_71:
        v130 = sub_258F0A350();
        v131 = sub_258F0A800();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          _os_log_impl(&dword_258DD8000, v130, v131, "--- End of Conversion Summary ---", v132, 2u);
          MEMORY[0x259C9EF40](v132, -1, -1);
        }

        (*(v138 + 8))(v50, v139);
        sub_258E02F5C(a1);
LABEL_74:

        return;
      }
    }

    v41 = *(a1 + 128);
    v42 = sub_258F0A4E0();
    [v145 setPreviousSystemBuild_];

    goto LABEL_5;
  }

LABEL_84:
  __break(1u);
}

uint64_t sub_258E1F240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
LABEL_116:
    __break(1u);
    return result;
  }

  v103 = a2;
  v97[2] = a2;
  v97[3] = a3;
  v97[4] = a4;
  v98 = MEMORY[0x28223BE20](result, v9);
  v99 = a1;
  result = sub_258EA8418(sub_258E21ED0, v97, a1);
  v106 = result;
  v10 = MEMORY[0x277D84F90];
  v105 = *(result + 16);
  if (!v105)
  {
    goto LABEL_40;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v104 = v106 + 32;
  while (1)
  {
    if (v11 >= *(v106 + 16))
    {
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
      goto LABEL_116;
    }

    v13 = *(v104 + 8 * v11);
    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v35 = *(v104 + 8 * v11);
      }

      v15 = sub_258F0AA20();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v12 >> 62;
    if (v12 >> 62)
    {
      break;
    }

    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      goto LABEL_39;
    }

LABEL_11:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v16)
      {
        goto LABEL_18;
      }

      v19 = v12 & 0xFFFFFFFFFFFFFF8;
      v20 = v12;
      if (v18 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v16)
      {
LABEL_18:
        sub_258F0AA20();
        goto LABEL_19;
      }

      v19 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = *(v19 + 16);
LABEL_19:
    result = sub_258F0AB00();
    v20 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v108 = v20;
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    if (v14)
    {
      v25 = v19;
      result = sub_258F0AA20();
      v19 = v25;
      v24 = result;
      if (!result)
      {
LABEL_4:

        v12 = v108;
        if (v15 > 0)
        {
          goto LABEL_104;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v24 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_4;
      }
    }

    if (((v23 >> 1) - v22) < v15)
    {
      goto LABEL_109;
    }

    v107 = v15;
    v26 = v19 + 8 * v22 + 32;
    v102 = v19;
    if (v14)
    {
      if (v24 < 1)
      {
        goto LABEL_113;
      }

      v100 = v12;
      v101 = v11;
      sub_258E21F2C(&qword_27F9893B0, &qword_27F988F38, &unk_258F0F3F0);
      for (i = 0; i != v24; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F38, &unk_258F0F3F0);
        v29 = sub_258E21B70(v112, i, v13);
        v31 = *v30;
        (v29)(v112, 0);
        *(v26 + 8 * i) = v31;
      }

      v11 = v101;
      v10 = MEMORY[0x277D84F90];
      v27 = v107;
    }

    else
    {
      sub_258DEB8C8(0, &qword_27F9893A8, 0x277D5B1D8);
      v27 = v107;
      swift_arrayInitWithCopy();
    }

    v12 = v108;
    if (v27 > 0)
    {
      v32 = *(v102 + 16);
      v33 = __OFADD__(v32, v27);
      v34 = v32 + v27;
      if (v33)
      {
        goto LABEL_111;
      }

      *(v102 + 16) = v34;
    }

LABEL_5:
    if (++v11 == v105)
    {
      goto LABEL_40;
    }
  }

  v36 = sub_258F0AA20();
  v18 = v36 + v15;
  if (!__OFADD__(v36, v15))
  {
    goto LABEL_11;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  sub_258DEB8C8(0, &qword_27F9893A8, 0x277D5B1D8);
  v37 = sub_258F0A6A0();

  [v98 setUafAssetSets_];

  v38 = v99;
  v39 = *(v99 + 16);
  if (!v39)
  {

    v41 = MEMORY[0x277D84F90];
    v42 = v103;
    v69 = *(MEMORY[0x277D84F90] + 16);
    if (!v69)
    {
      goto LABEL_101;
    }

LABEL_64:
    v70 = 0;
    v71 = MEMORY[0x277D84F90];
    v72 = v41 + 32;
    v104 = v41;
    v100 = v41 + 32;
    v101 = v69;
    while (1)
    {
      if (v70 >= *(v41 + 16))
      {
        goto LABEL_105;
      }

      v73 = v71;
      v74 = *(v72 + 8 * v70);
      v75 = v74 >> 62;
      if (v74 >> 62)
      {
        if (v74 < 0)
        {
          v93 = *(v72 + 8 * v70);
        }

        v76 = sub_258F0AA20();
      }

      else
      {
        v76 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = v71 >> 62;
      if (v73 >> 62)
      {
        result = sub_258F0AA20();
      }

      else
      {
        result = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v108 = v76;
      v33 = __OFADD__(result, v76);
      v78 = result + v76;
      if (v33)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v105 = v70;
      if (result)
      {
        if (v77)
        {
          goto LABEL_80;
        }

        v79 = v73 & 0xFFFFFFFFFFFFFF8;
        v80 = v73;
        if (v78 <= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v77)
        {
LABEL_80:
          sub_258F0AA20();
          goto LABEL_81;
        }

        v79 = v73 & 0xFFFFFFFFFFFFFF8;
      }

      v81 = *(v79 + 16);
LABEL_81:
      result = sub_258F0AB00();
      v80 = result;
      v79 = result & 0xFFFFFFFFFFFFFF8;
LABEL_82:
      v106 = v73;
      v107 = v80;
      v82 = *(v79 + 16);
      v83 = *(v79 + 24);
      if (v75)
      {
        result = sub_258F0AA20();
        v84 = result;
        if (!result)
        {
LABEL_65:

          v71 = v107;
          if (v108 > 0)
          {
            goto LABEL_107;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v84 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v84)
        {
          goto LABEL_65;
        }
      }

      if (((v83 >> 1) - v82) < v108)
      {
        goto LABEL_110;
      }

      v85 = v79 + 8 * v82 + 32;
      if (v75)
      {
        if (v84 < 1)
        {
          goto LABEL_114;
        }

        v102 = v79;
        sub_258E21F2C(&qword_27F9893C0, &qword_27F988F28, &qword_258F0DBD8);
        for (j = 0; j != v84; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F28, &qword_258F0DBD8);
          v88 = sub_258E21AF0(v111, j, v74);
          v90 = *v89;
          (v88)(v111, 0);
          *(v85 + 8 * j) = v90;
        }

        v72 = v100;
        v69 = v101;
        v86 = v108;
        v79 = v102;
      }

      else
      {
        sub_258DEB8C8(0, &qword_27F9893B8, 0x277D5B1F8);
        v86 = v108;
        swift_arrayInitWithCopy();
      }

      v71 = v107;
      if (v86 > 0)
      {
        v91 = *(v79 + 16);
        v33 = __OFADD__(v91, v86);
        v92 = v91 + v86;
        if (v33)
        {
          goto LABEL_112;
        }

        *(v79 + 16) = v92;
      }

LABEL_66:
      v41 = v104;
      v70 = v105 + 1;
      v42 = v103;
      if (v105 + 1 == v69)
      {
        goto LABEL_101;
      }
    }
  }

  v111[0] = v10;
  result = sub_258E14CF8(0, v39, 0);
  v40 = 0;
  v100 = v39;
  v101 = v38 + 32;
  v41 = v111[0];
  v42 = v103;
  do
  {
    if (v40 >= *(v38 + 16))
    {
      goto LABEL_108;
    }

    v43 = (v101 + 16 * v40);
    v44 = v43[1];
    if (v44)
    {
      v105 = v40;
      v45 = *v43;
      v110 = v10;
      v46 = *(v44 + 16);
      swift_bridgeObjectRetain_n();
      v102 = v45;

      v108 = v46;
      if (v46)
      {
        v104 = v41;
        v47 = 0;
        v106 = v44;
        v107 = v44 + 32;
        while (v47 < *(v44 + 16))
        {
          v48 = (v107 + 24 * v47);
          v49 = *v48;
          v50 = v48[1];
          v51 = v48[2];
          v52 = objc_allocWithZone(MEMORY[0x277D5B1F8]);

          result = [v52 init];
          if (!result)
          {
            goto LABEL_115;
          }

          v53 = result;
          v54 = sub_258F0A4E0();
          [v53 setSubscriberName_];

          v55 = *(v51 + 16);
          if (v55)
          {
            v109 = v10;
            sub_258F0AB40();
            sub_258DEB8C8(0, &qword_27F9893C8, 0x277D5B1E8);
            v56 = (v51 + 64);
            do
            {
              v57 = *(v56 - 4);
              v58 = *(v56 - 3);
              v59 = *(v56 - 2);
              v60 = *(v56 - 1);
              v61 = *v56;
              v56 += 5;
              v112[0] = v57;
              v112[1] = v58;
              v112[2] = v59;
              v112[3] = v60;
              v112[4] = v61;

              sub_258E20380(v112);
              sub_258F0AB20();
              v62 = *(v109 + 16);
              sub_258F0AB50();
              sub_258F0AB60();
              sub_258F0AB30();
              --v55;
            }

            while (v55);

            v10 = MEMORY[0x277D84F90];
          }

          else
          {
          }

          sub_258DEB8C8(0, &qword_27F9893C8, 0x277D5B1E8);
          v63 = sub_258F0A6A0();

          [v53 setSubscriptions_];

          MEMORY[0x259C9DF50]();
          if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v64 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_258F0A6D0();
          }

          ++v47;
          result = sub_258F0A700();
          v44 = v106;
          if (v47 == v108)
          {
            v65 = v110;
            v42 = v103;
            v41 = v104;
            v38 = v99;
            v39 = v100;
            goto LABEL_59;
          }
        }

        __break(1u);
        goto LABEL_103;
      }

      v65 = v10;
LABEL_59:

      result = swift_bridgeObjectRelease_n();
      v40 = v105;
    }

    else
    {
      v65 = v10;
    }

    v111[0] = v41;
    v67 = *(v41 + 16);
    v66 = *(v41 + 24);
    if (v67 >= v66 >> 1)
    {
      v68 = v40;
      result = sub_258E14CF8((v66 > 1), v67 + 1, 1);
      v40 = v68;
      v41 = v111[0];
    }

    ++v40;
    *(v41 + 16) = v67 + 1;
    *(v41 + 8 * v67 + 32) = v65;
  }

  while (v40 != v39);

  v69 = *(v41 + 16);
  if (v69)
  {
    goto LABEL_64;
  }

LABEL_101:

  sub_258DEB8C8(0, &qword_27F9893B8, 0x277D5B1F8);
  v94 = sub_258F0A6A0();

  v95 = v98;
  [v98 setUafAssetSubscriptions_];

  v96 = sub_258F0A370();
  (*(*(v96 - 8) + 8))(v42, v96);
  return v95;
}

id sub_258E1FD24(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    if (a1[11])
    {
      v4 = a1[10];
      v5 = sub_258F0A4E0();
      [v3 setSystemBuild_];
    }

    v6 = (a1 + *(type metadata accessor for AssetPenetrationData() + 56));
    if (v6[1])
    {
      v7 = *v6;
      v8 = sub_258F0A4E0();
      if ([v8 isEqualToString:@"UNKNOWN"])
      {
        v9 = 0;
      }

      else if ([v8 isEqualToString:@"OPTED_IN"])
      {
        v9 = 1;
      }

      else if ([v8 isEqualToString:@"OPTED_OUT"])
      {
        v9 = 2;
      }

      else if ([v8 isEqualToString:@"DISMISSED"])
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      [v3 setDataSharingOptInStatus_];
    }

    v10 = a1[15];
    if (v10)
    {
      v11 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(a1[14], v10);
      [v3 setSiriInputLocale_];
    }

    sub_258E02F5C(a1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E1FE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_258F0A370();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v16;
  v22 = *(a1 + 64);
  v17 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v17;
  sub_258DEB8C8(0, &qword_27F9893A8, 0x277D5B1D8);
  (*(v11 + 16))(v15, a2, v10);
  sub_258E1A4E0(v21, v20);
  result = sub_258E1FFD4(v21, v15, a3, a4);
  *a5 = result;
  return result;
}

id sub_258E1FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = result;
    v12 = sub_258F0A4E0();
    [v11 setAssetSetName_];

    if (*(a1 + 8))
    {
      v13 = *a1;
      v14 = *(a1 + 8);

      v15 = sub_258F0A4E0();
    }

    else
    {
      v15 = 0;
    }

    [v11 setAssetSetId_];

    v18 = *(a1 + 32);
    if (v18)
    {
      MEMORY[0x28223BE20](v16, v17);
      v33[2] = a2;
      v33[3] = a3;
      v33[4] = a4;

      sub_258EA86C8(sub_258E21FA4, v33, v18);

      sub_258DEB8C8(0, &qword_27F9893F8, 0x277D5B1C0);
      v19 = sub_258F0A6A0();
    }

    else
    {
      v19 = 0;
    }

    [v11 setAssets_];

    if (*(a1 + 48))
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);

      v22 = sub_258F0A4E0();
    }

    else
    {
      v22 = 0;
    }

    [v11 setAudienceId_];

    v23 = *(a1 + 56);
    if (v23)
    {
      v24 = *(v23 + 16);
      if (v24)
      {
        v34 = v11;
        v35 = a1;
        v36 = a2;
        v37 = MEMORY[0x277D84F90];
        result = sub_258F0AB40();
        v25 = 0;
        v26 = (v23 + 36);
        while (v25 < *(v23 + 16))
        {
          v28 = *(v26 - 1);
          v27 = *v26;
          result = [objc_allocWithZone(MEMORY[0x277D5B220]) init];
          if (!result)
          {
            goto LABEL_22;
          }

          ++v25;
          v29 = result;
          [v29 setMobileAssetDownloadErrorCode_];
          [v29 setTimesOccurred_];

          sub_258F0AB20();
          v30 = *(v37 + 16);
          sub_258F0AB50();
          sub_258F0AB60();
          result = sub_258F0AB30();
          v26 += 2;
          if (v24 == v25)
          {
            a1 = v35;
            a2 = v36;
            v11 = v34;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_18:
      sub_258DEB8C8(0, &qword_27F9893F0, 0x277D5B220);
      v31 = sub_258F0A6A0();
    }

    else
    {
      v31 = 0;
    }

    [v11 setMobileAssetDownloadErrorCodeFrequencys_];

    [v11 setFromPreSoftwareUpdateStaging_];
    sub_258E1A518(a1);
    [v11 setExpensiveCellularDownloadRequested_];

    v32 = sub_258F0A370();
    (*(*(v32 - 8) + 8))(a2, v32);
    return v11;
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_258E20380(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = result;
    v6 = sub_258F0A4E0();
    [v5 setSubscriptionName_];

    v7 = a1[2];
    v47 = v7;
    v8 = *(v7 + 16);
    if (v8)
    {
      v46 = MEMORY[0x277D84F90];
      sub_258F0AB40();
      v9 = (v7 + 32);
      do
      {
        v10 = *v9++;
        sub_258F0AEB0();
        sub_258F0AB20();
        v11 = *(v46 + 16);
        sub_258F0AB50();
        sub_258F0AB60();
        sub_258F0AB30();
        --v8;
      }

      while (v8);
    }

    sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
    v12 = sub_258F0A6A0();

    [v5 setAssetSetIndices_];

    v13 = a1[3];
    v46 = v13;
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v41 = a1;
        v42 = v5;
        v45 = MEMORY[0x277D84F90];
        result = sub_258F0AB40();
        v15 = 0;
        v16 = (v13 + 56);
        while (v15 < *(v13 + 16))
        {
          v18 = *(v16 - 3);
          v17 = *(v16 - 2);
          v20 = *(v16 - 1);
          v19 = *v16;
          v21 = objc_allocWithZone(MEMORY[0x277D5B1F0]);

          result = [v21 init];
          if (!result)
          {
            goto LABEL_27;
          }

          ++v15;
          v22 = result;
          v23 = sub_258F0A4E0();
          [v22 setUsageName_];

          v24 = sub_258F0A4E0();

          [v22 setUsageValue_];

          sub_258F0AB20();
          v25 = *(v45 + 16);
          sub_258F0AB50();
          sub_258F0AB60();
          result = sub_258F0AB30();
          v16 += 4;
          if (v14 == v15)
          {
            v5 = v42;
            a1 = v41;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_12:
      sub_258DEB8C8(0, &qword_27F9893E8, 0x277D5B1F0);
      v26 = sub_258F0A6A0();
    }

    else
    {
      v26 = 0;
    }

    [v5 setAssetSetUsages_];

    v27 = a1[4];
    v45 = v27;
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v43 = v5;
        v44 = MEMORY[0x277D84F90];
        result = sub_258F0AB40();
        v29 = 0;
        v30 = (v27 + 56);
        while (v29 < *(v27 + 16))
        {
          v32 = *(v30 - 3);
          v31 = *(v30 - 2);
          v34 = *(v30 - 1);
          v33 = *v30;
          v35 = objc_allocWithZone(MEMORY[0x277D5B200]);

          result = [v35 init];
          if (!result)
          {
            goto LABEL_28;
          }

          ++v29;
          v36 = result;
          v37 = sub_258F0A4E0();
          [v36 setAliasName_];

          v38 = sub_258F0A4E0();

          [v36 setAliasValue_];

          sub_258F0AB20();
          v39 = *(v44 + 16);
          sub_258F0AB50();
          sub_258F0AB60();
          result = sub_258F0AB30();
          v30 += 4;
          if (v28 == v29)
          {

            sub_258DE2184(&v47, &qword_27F989148, &qword_258F0F400);
            sub_258DE2184(&v46, &qword_27F9893D0, &qword_258F0F408);
            sub_258DE2184(&v45, &qword_27F9893D8, &qword_258F0F410);
            v5 = v43;
            goto LABEL_23;
          }
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      sub_258DE2184(&v47, &qword_27F989148, &qword_258F0F400);
      sub_258DE2184(&v46, &qword_27F9893D0, &qword_258F0F408);
      sub_258DE2184(&v45, &qword_27F9893D8, &qword_258F0F410);
LABEL_23:
      sub_258DEB8C8(0, &qword_27F9893E0, 0x277D5B200);
      v40 = sub_258F0A6A0();
    }

    else
    {

      sub_258DE2184(&v47, &qword_27F989148, &qword_258F0F400);
      sub_258DE2184(&v46, &qword_27F9893D0, &qword_258F0F408);
      v40 = 0;
    }

    [v5 setUsageAliases_];

    return v5;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_258E208EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v20 = a5;
  v9 = sub_258F0A370();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 112);
  v22[6] = *(a1 + 96);
  v22[7] = v15;
  v23 = *(a1 + 128);
  v16 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v16;
  v17 = *(a1 + 80);
  v22[4] = *(a1 + 64);
  v22[5] = v17;
  v18 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v18;
  sub_258DEB8C8(0, &qword_27F9893F8, 0x277D5B1C0);
  (*(v10 + 16))(v14, a2, v9);
  sub_258E1976C(v22, &v21);
  result = sub_258E20A58(v22, v14, a3, a4);
  *v20 = result;
  return result;
}

uint64_t sub_258E20A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v14)
  {
    __break(1u);
    goto LABEL_76;
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = v14;
  v18 = sub_258F0A4E0();
  [v17 setAssetName_];

  [v17 setIsAssetPathValid_];
  [v17 setAssetDownloadSizeInBytes_];
  v73 = v17;
  [v17 setAssetUnarchivedSizeInBytes_];
  v19 = *a1;
  v20 = *(a1 + 8);
  v71 = a2;
  v6 = sub_258E21854(*a1, v20);
  v22 = v21;

  MEMORY[0x259C9DEB0](v19, v20);

  MEMORY[0x259C9DEB0](0x27203E2D2027, 0xE600000000000000);
  MEMORY[0x259C9DEB0](v6, v22);
  MEMORY[0x259C9DEB0](39, 0xE100000000000000);
  v8 = 39;
  v7 = 0xE100000000000000;
  v23 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *a3;
  v74 = *a3;
  v9 = sub_258E2E9B4(39, 0xE100000000000000);
  v25 = v4[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
LABEL_11:
    sub_258ED84E0();
    v4 = v74;
    *a3 = v74;
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v10 = v24;
  if (v4[3] < v27)
  {
    sub_258ED541C(v27, isUniquelyReferenced_nonNull_native);
    v4 = v74;
    v28 = sub_258E2E9B4(39, 0xE100000000000000);
    if ((v10 & 1) != (v29 & 1))
    {
      goto LABEL_177;
    }

    v9 = v28;
    *a3 = v74;
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_13;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

  *a3 = v4;
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_12:
  sub_258ED80C8(v9, 39, 0xE100000000000000, 0, v4);
LABEL_13:
  v30 = v4[7];
  v31 = *(v30 + 8 * v9);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 8 * v9) = v33;
    v34 = sub_258F0A4E0();

    v35 = v34;
    if ([v35 isEqualToString:@"UAFASSETSOURCE_UNKNOWN"])
    {
      v36 = 0;
      v37 = v73;
    }

    else
    {
      v37 = v73;
      if ([v35 isEqualToString:@"UAFASSETSOURCE_FACTORY_INSTALL"])
      {
        v36 = 1;
      }

      else if ([v35 isEqualToString:@"UAFASSETSOURCE_ROOT"])
      {
        v36 = 2;
      }

      else if ([v35 isEqualToString:@"UAFASSETSOURCE_TRIAL"])
      {
        v36 = 3;
      }

      else if ([v35 isEqualToString:@"UAFASSETSOURCE_MOBILE_ASSET"])
      {
        v36 = 4;
      }

      else
      {
        v36 = 0;
      }
    }

    [v37 setAssetSource_];
    if (*(a1 + 32))
    {
      v38 = *(a1 + 24);
      v39 = *(a1 + 32);

      v40 = sub_258F0A4E0();
    }

    else
    {
      v40 = 0;
    }

    [v37 setAssetSpecifier_];

    if (*(a1 + 64))
    {
      v41 = *(a1 + 56);
      v42 = *(a1 + 64);

      v43 = sub_258F0A4E0();
    }

    else
    {
      v43 = 0;
    }

    [v37 setAssetVersion_];

    if (*(a1 + 96))
    {
      v44 = *(a1 + 88);
      v45 = *(a1 + 96);

      v46 = sub_258F0A4E0();
    }

    else
    {
      v46 = 0;
    }

    [v37 setAssetPath_];

    v9 = *(a1 + 104);
    v8 = *(a1 + 112);
    v7 = *(a1 + 120);
    v6 = *(a1 + 128);
    v47 = sub_258F0A560();
    v49 = v48;
    v50 = sub_258F0A560();
    v52 = v51;
    MEMORY[0x259C9DEB0](v47, v49);

    isUniquelyReferenced_nonNull_native = 0xE100000000000000;
    MEMORY[0x259C9DEB0](95, 0xE100000000000000);
    MEMORY[0x259C9DEB0](v50, v52);

    a3 = 0x5F454C41434F4CLL;
    v10 = 0xE700000000000000;
    v4 = sub_258F0A4E0();
    if ([v4 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"])
    {
      v53 = 0;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_AR_AE"])
    {
      v53 = 1;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_AR_SA"])
    {
      v53 = 2;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_CA_ES"])
    {
      v53 = 3;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_CS_CZ"])
    {
      v53 = 4;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_DA_DK"])
    {
      v53 = 5;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_DE_AT"])
    {
      v53 = 6;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_DE_CH"])
    {
      v53 = 7;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_DE_DE"])
    {
      v53 = 8;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_EL_GR"])
    {
      v53 = 9;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_EN_AE"])
    {
      v53 = 10;
      goto LABEL_163;
    }
  }

  if ([v4 isEqualToString:{@"LOCALE_EN_AU", v71}])
  {
    v53 = 11;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_CA"])
  {
    v53 = 12;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_GB"])
  {
    v53 = 13;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_ID"])
  {
    v53 = 14;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_IE"])
  {
    v53 = 15;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_IN"])
  {
    v53 = 16;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_MY"])
  {
    v53 = 17;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_NZ"])
  {
    v53 = 18;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_PH"])
  {
    v53 = 19;
    goto LABEL_163;
  }

LABEL_76:
  if ([v4 isEqualToString:@"LOCALE_EN_SG"])
  {
    v53 = 20;
  }

  else if ([v4 isEqualToString:@"LOCALE_EN_SA"])
  {
    v53 = 21;
  }

  else if ([v4 isEqualToString:@"LOCALE_EN_US"])
  {
    v53 = 22;
  }

  else if ([v4 isEqualToString:@"LOCALE_EN_ZA"])
  {
    v53 = 23;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_CL"])
  {
    v53 = 24;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_CO"])
  {
    v53 = 25;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_ES"])
  {
    v53 = 26;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_MX"])
  {
    v53 = 27;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_US"])
  {
    v53 = 28;
  }

  else if ([v4 isEqualToString:@"LOCALE_FI_FI"])
  {
    v53 = 29;
  }

  else if ([v4 isEqualToString:@"LOCALE_FR_BE"])
  {
    v53 = 30;
  }

  else if ([v4 isEqualToString:@"LOCALE_FR_CA"])
  {
    v53 = 31;
  }

  else if ([v4 isEqualToString:@"LOCALE_FR_CH"])
  {
    v53 = 32;
  }

  else if ([v4 isEqualToString:@"LOCALE_FR_FR"])
  {
    v53 = 33;
  }

  else if ([v4 isEqualToString:@"LOCALE_HE_IL"])
  {
    v53 = 34;
  }

  else if ([v4 isEqualToString:@"LOCALE_HI_IN"])
  {
    v53 = 35;
  }

  else if ([v4 isEqualToString:@"LOCALE_HR_HR"])
  {
    v53 = 36;
  }

  else if ([v4 isEqualToString:@"LOCALE_HU_HU"])
  {
    v53 = 37;
  }

  else if ([v4 isEqualToString:@"LOCALE_ID_ID"])
  {
    v53 = 38;
  }

  else if ([v4 isEqualToString:@"LOCALE_IT_CH"])
  {
    v53 = 39;
  }

  else if ([v4 isEqualToString:@"LOCALE_IT_IT"])
  {
    v53 = 40;
  }

  else if ([v4 isEqualToString:@"LOCALE_JA_JP"])
  {
    v53 = 41;
  }

  else if ([v4 isEqualToString:@"LOCALE_KO_KR"])
  {
    v53 = 42;
  }

  else if ([v4 isEqualToString:@"LOCALE_MS_MY"])
  {
    v53 = 43;
  }

  else if ([v4 isEqualToString:@"LOCALE_NB_NO"])
  {
    v53 = 44;
  }

  else if ([v4 isEqualToString:@"LOCALE_NL_BE"])
  {
    v53 = 45;
  }

  else if ([v4 isEqualToString:@"LOCALE_NL_NL"])
  {
    v53 = 46;
  }

  else if ([v4 isEqualToString:@"LOCALE_PL_PL"])
  {
    v53 = 47;
  }

  else if ([v4 isEqualToString:@"LOCALE_PT_BR"])
  {
    v53 = 48;
  }

  else if ([v4 isEqualToString:@"LOCALE_PT_PT"])
  {
    v53 = 49;
  }

  else if ([v4 isEqualToString:@"LOCALE_RO_RO"])
  {
    v53 = 50;
  }

  else if ([v4 isEqualToString:@"LOCALE_RU_RU"])
  {
    v53 = 51;
  }

  else if ([v4 isEqualToString:@"LOCALE_SK_SK"])
  {
    v53 = 52;
  }

  else if ([v4 isEqualToString:@"LOCALE_SV_SE"])
  {
    v53 = 53;
  }

  else if ([v4 isEqualToString:@"LOCALE_TH_TH"])
  {
    v53 = 54;
  }

  else if ([v4 isEqualToString:@"LOCALE_TR_TR"])
  {
    v53 = 55;
  }

  else if ([v4 isEqualToString:@"LOCALE_UK_UA"])
  {
    v53 = 56;
  }

  else if ([v4 isEqualToString:@"LOCALE_VI_VN"])
  {
    v53 = 57;
  }

  else if ([v4 isEqualToString:@"LOCALE_WUU_CN"])
  {
    v53 = 58;
  }

  else if ([v4 isEqualToString:@"LOCALE_YUE_CN"])
  {
    v53 = 59;
  }

  else if ([v4 isEqualToString:@"LOCALE_ZH_CN"])
  {
    v53 = 60;
  }

  else if ([v4 isEqualToString:@"LOCALE_ZH_HK"])
  {
    v53 = 61;
  }

  else if ([v4 isEqualToString:@"LOCALE_ZH_TW"])
  {
    v53 = 62;
  }

  else
  {
    v53 = 0;
  }

LABEL_163:

  [v73 setAssetLocale_];
  sub_258F0AAE0();

  MEMORY[0x259C9DEB0](v9, v8);

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](v7, v6);
  sub_258E197A4(a1);

  MEMORY[0x259C9DEB0](0x6573726170282027, 0xEE00272073612064);
  MEMORY[0x259C9DEB0](a3, v10);

  MEMORY[0x259C9DEB0](0x6E65203E2D202927, 0xEB00000000206D75);
  v54 = sub_258F0AD60();
  MEMORY[0x259C9DEB0](v54);

  v55 = isUniquelyReferenced_nonNull_native;
  v56 = *a4;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *a4;
  v60 = sub_258E2E9B4(39, v55);
  v61 = v58[2];
  v62 = (v59 & 1) == 0;
  v63 = v61 + v62;
  if (__OFADD__(v61, v62))
  {
    __break(1u);
    goto LABEL_172;
  }

  LOBYTE(v6) = v59;
  if (v58[3] >= v63)
  {
    if (v57)
    {
      *a4 = v58;
      if (v59)
      {
        goto LABEL_170;
      }

LABEL_173:
      sub_258ED80C8(v60, 39, v55, 0, v58);
      goto LABEL_174;
    }

LABEL_172:
    sub_258ED84E0();
    *a4 = v58;
    if (v6)
    {
      goto LABEL_170;
    }

    goto LABEL_173;
  }

  sub_258ED541C(v63, v57);
  v64 = sub_258E2E9B4(39, v55);
  if ((v6 & 1) != (v65 & 1))
  {
    goto LABEL_177;
  }

  v60 = v64;
  *a4 = v58;
  if ((v6 & 1) == 0)
  {
    goto LABEL_173;
  }

LABEL_170:

LABEL_174:
  v66 = v58[7];
  v67 = *(v66 + 8 * v60);
  v32 = __OFADD__(v67, 1);
  v68 = v67 + 1;
  if (!v32)
  {
    *(v66 + 8 * v60) = v68;
    v69 = sub_258F0A370();
    (*(*(v69 - 8) + 8))(v71, v69);
    return v73;
  }

  __break(1u);
LABEL_177:
  result = sub_258F0ADC0();
  __break(1u);
  return result;
}

unint64_t sub_258E21854(uint64_t a1, unint64_t a2)
{
  v4 = 0xD000000000000016;
  if ((a1 != 0x6E776F6E6B6E55 || a2 != 0xE700000000000000) && (sub_258F0AD80() & 1) == 0)
  {
    v5 = 0xD00000000000001ELL;
    if (a1 == 0xD000000000000010 && 0x8000000258F19F60 == a2)
    {
      return v5;
    }

    if (sub_258F0AD80())
    {
      return v5;
    }

    v5 = 0xD000000000000013;
    if (a1 == 0x746F6F525FLL && a2 == 0xE500000000000000)
    {
      return v5;
    }

    if (sub_258F0AD80())
    {
      return v5;
    }

    v5 = 0xD000000000000014;
    if (a1 == 0x6C616972545FLL && a2 == 0xE600000000000000)
    {
      return v5;
    }

    if (sub_258F0AD80())
    {
      return v5;
    }

    v5 = 0xD00000000000001BLL;
    if (a1 == 0x5F656C69626F4D5FLL && a2 == 0xED00007465737341)
    {
      return v5;
    }

    if (sub_258F0AD80())
    {
      return v5;
    }

    else
    {

      v7 = sub_258F0A350();
      v8 = sub_258F0A800();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = v10;
        *v9 = 136315138;
        *(v9 + 4) = sub_258DE3018(a1, a2, &v11);
        _os_log_impl(&dword_258DD8000, v7, v8, "ODD Payload - Unmapped Biome asset source string: '%s', defaulting to UNKNOWN for proto conversion.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x259C9EF40](v10, -1, -1);
        MEMORY[0x259C9EF40](v9, -1, -1);
      }
    }
  }

  return v4;
}

uint64_t (*sub_258E21AF0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C9E3B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_258E21FC8;
  }

  __break(1u);
  return result;
}

void (*sub_258E21B70(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C9E3B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_258E21BF0;
  }

  __break(1u);
  return result;
}

uint64_t sub_258E21BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v11 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

uint64_t sub_258E21CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AssetPenetrationSELFReporter();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return sub_258E21BF8(a1, v12, v16, a4, a5);
}

uint64_t type metadata accessor for AssetPenetrationSELFReporter()
{
  result = qword_27F989370;
  if (!qword_27F989370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E21E0C()
{
  result = sub_258F0A370();
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

uint64_t sub_258E21ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  v7[1] = *(v2 + 16);
  v8 = v4;
  result = sub_258EA855C(sub_258E21F80, v7, v5);
  *a2 = result;
  return result;
}

uint64_t sub_258E21F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AssetPenetrationStatus.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, void (*a3)(char *, char *, void *), void (*a4)(char *, uint64_t, uint64_t))
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AssetPenetrationStatus.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_258E2203C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AssetPenetrationCalculator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t AssetPenetrationStatus.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, void (*a3)(char *, char *, void *), void (*a4)(char *, uint64_t, uint64_t))
{
  v147 = a4;
  v146 = a3;
  v148 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v151 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v143 = &v127 - v11;
  v136 = sub_258F09B00();
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  MEMORY[0x28223BE20](v136, v13);
  v133 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_258F09A20();
  v132 = *(v134 - 8);
  v15 = *(v132 + 64);
  MEMORY[0x28223BE20](v134, v16);
  v131 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_258F09A70();
  v155 = *(v167 - 1);
  v18 = *(v155 + 64);
  v20 = MEMORY[0x28223BE20](v167, v19);
  v140 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v142 = &v127 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v127 - v26;
  v28 = sub_258F0A370();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v32 = MEMORY[0x28223BE20](v28, v31);
  v150 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v141 = &v127 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v144 = &v127 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v127 - v41;
  v44 = v29 + 2;
  v43 = v29[2];
  v153 = a2;
  v43(&v127 - v41, a2, v28);
  v45 = type metadata accessor for AssetPenetrationStatusDataProvider();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v49 = v29[4];
  v138 = v42;
  v137 = v49;
  v49(v48 + OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger, v42, v28);
  v50 = v154;
  *(v154 + 16) = v48;
  v139 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_logger;
  v51 = v50;
  v43((v50 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_logger), a2, v28);
  sub_258F09A60();
  v52 = *(v155 + 32);
  v145 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_oddId;
  v52(v51 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_oddId, v27, v167);
  v53 = (v51 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_fbfBundleId);
  v54 = v147;
  *v53 = v146;
  v53[1] = v54;
  v55 = sub_258F0A1F0();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v148 = v148;
  v58 = sub_258F0A1E0();
  *(&v165 + 1) = v55;
  v166 = MEMORY[0x277D04548];
  *&v164 = v58;
  v152 = v28;
  v147 = v43;
  v43(v144, v153, v28);
  v59 = sub_258F09C20();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = v149;
  v63 = sub_258F09BE0();
  if (v62)
  {
    v64 = v29[1];
    v65 = v152;
    v64(v153, v152);

    v66 = v154;
    v67 = *(v154 + 16);

    v64(v66 + v139, v65);
    (*(v155 + 8))(&v145[v66], v167);
    v68 = v53[1];

    type metadata accessor for AssetPenetrationStatus();
    v69 = *(*v66 + 48);
    v70 = *(*v66 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v71 = v63;
    v128 = v53;
    v129 = v29;
    v139 = (v29 + 4);
    v144 = 0;
    v72 = v131;
    sub_258F0A090();
    v73 = v133;
    sub_258F09AC0();
    v149 = v71;
    sub_258F09C10();
    (*(v135 + 8))(v73, v136);
    (*(v132 + 8))(v72, v134);
    v74 = v141;
    v75 = v152;
    v76 = v147;
    v147(v141, v153, v152);
    v146 = *(v155 + 16);
    v130 = v44;
    v77 = v142;
    v146(v142, &v145[v154], v167);
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    v148 = v148;

    v78 = v143;
    sub_258E2203C(v143);
    v76(v150, v74, v75);
    sub_258DE20C0(v78, v151, &qword_27F988720, &qword_258F0B830);
    type metadata accessor for BiomeResultsWrapperFactory();
    v136 = swift_allocObject();
    v79 = type metadata accessor for CAAnalyticsEventSubmitter();
    v80 = swift_allocObject();
    v81 = v140;
    v82 = v167;
    v146(v140, v77, v167);
    sub_258DE20C0(&v164, v163, &qword_27F988BC0, &qword_258F0D148);
    v162[3] = v79;
    v162[4] = &off_286A2C648;
    v162[0] = v80;
    v83 = type metadata accessor for AssetPenetrationCalculator();
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    v86 = swift_allocObject();
    v87 = __swift_mutable_project_boxed_opaque_existential_1(v162, v79);
    v145 = &v127;
    v88 = *(*(v79 - 8) + 64);
    MEMORY[0x28223BE20](v87, v87);
    v90 = (&v127 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v91 + 16))(v90);
    v92 = *v90;
    v161[3] = v79;
    v161[4] = &off_286A2C648;
    v161[0] = v92;
    sub_258F09AC0();
    v76((v86 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger), v150, v152);
    sub_258DE20C0(v151, v86 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
    v93 = (v86 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService);
    v93[3] = v59;
    v93[4] = &off_286A2FA30;
    *v93 = v149;
    *(v86 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeResultsFactory) = v136;
    sub_258DE3FD8(v161, v86 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_analyticsEventSubmitter);
    *(v86 + 16) = v148;
    v146((v86 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId), v81, v82);
    sub_258DE20C0(v163, &v156, &qword_27F988BC0, &qword_258F0D148);
    if (v157)
    {
      sub_258DE2184(v163, &qword_27F988BC0, &qword_258F0D148);
      v94 = *(v155 + 8);
      v95 = v167;
      v94(v140, v167);
      sub_258DE2184(v151, &qword_27F988720, &qword_258F0B830);
      v96 = v129[1];
      v155 = (v129 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v97 = v152;
      v96(v150, v152);
      sub_258DE2184(v143, &qword_27F988720, &qword_258F0B830);
      sub_258DE2184(&v164, &qword_27F988BC0, &qword_258F0D148);
      v94(v142, v95);
      v167 = v96;
      v96(v141, v97);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      sub_258DDA76C(&v156, &v158);
      v98 = v138;
      v99 = v97;
    }

    else
    {
      v100 = type metadata accessor for AssetEventsBiomeClient();
      v101 = swift_allocObject();
      *(v101 + 16) = MEMORY[0x277D84FA0];
      v160 = &off_286A2A7F8;
      v159 = v100;
      *&v158 = v101;
      sub_258DE2184(v163, &qword_27F988BC0, &qword_258F0D148);
      v102 = *(v155 + 8);
      v103 = v167;
      v102(v140, v167);
      sub_258DE2184(v151, &qword_27F988720, &qword_258F0B830);
      v104 = v129[1];
      v155 = (v129 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v105 = v152;
      v104(v150, v152);
      sub_258DE2184(v143, &qword_27F988720, &qword_258F0B830);
      sub_258DE2184(&v164, &qword_27F988BC0, &qword_258F0D148);
      v102(v142, v103);
      v167 = v104;
      v104(v141, v105);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      v99 = v105;
      if (v157)
      {
        sub_258DE2184(&v156, &qword_27F988BC0, &qword_258F0D148);
      }

      v98 = v138;
    }

    v106 = v137;
    v107 = v147;
    v108 = v128;
    sub_258DDA76C(&v158, v86 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient);
    __swift_destroy_boxed_opaque_existential_1Tm(v162);
    v66 = v154;
    *(v154 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_calculator) = v86;
    v109 = v153;
    v107(v98, v153, v99);
    v111 = *v108;
    v110 = v108[1];

    v112 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v111, v110);
    v113 = type metadata accessor for AssetPenetrationSELFReporter();
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    v116 = swift_allocObject();
    v117 = (v116 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService);
    v117[3] = type metadata accessor for SELFReportingService();
    v117[4] = &protocol witness table for SELFReportingService;
    *v117 = v112;
    v106(v116 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger, v98, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_258F0CA20;
    *(v118 + 32) = v116;
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989418, &qword_258F0F418);
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    swift_allocObject();

    *&v164 = sub_258F09BA0();
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989420, qword_258F0F420);
    v123 = *(v122 + 48);
    v124 = *(v122 + 52);
    swift_allocObject();
    v125 = sub_258F09BC0();

    (v167)(v109, v99);
    *(v66 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_reporter) = v125;
  }

  return v66;
}

uint64_t sub_258E23090(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E230B0, 0, 0);
}

uint64_t sub_258E230B0()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258E24130();
}

uint64_t sub_258E2314C(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E2317C, 0, 0);
}

uint64_t sub_258E2317C()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_reporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DED218;

  return v6(v0 + 16);
}

uint64_t sub_258E23248(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E23268, 0, 0);
}

uint64_t sub_258E23268()
{
  v0[4] = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_calculator);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_258E2331C;
  v2 = v0[2];

  return sub_258DFD938(v2);
}

uint64_t sub_258E2331C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E24030, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t AssetPenetrationStatus.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_oddId;
  v5 = sub_258F09A70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_calculator);

  v7 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_reporter);

  v8 = *(v0 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_fbfBundleId + 8);

  return v0;
}

uint64_t AssetPenetrationStatus.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_oddId;
  v5 = sub_258F09A70();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_calculator];

  v7 = *&v0[OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_reporter];

  v8 = *&v0[OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_fbfBundleId + 8];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E23660(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E23684, 0, 0);
}

uint64_t sub_258E23684()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258E24130();
}

uint64_t sub_258E23720(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E23744, 0, 0);
}

uint64_t sub_258E23744()
{
  v0[4] = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_calculator);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_258E237F8;
  v2 = v0[2];

  return sub_258DFD938(v2);
}

uint64_t sub_258E237F8()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E23948, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_258E23960(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E23994, 0, 0);
}

uint64_t sub_258E23994()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_reporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DEDBC8;

  return v6(v0 + 16);
}

uint64_t type metadata accessor for AssetPenetrationStatus()
{
  result = qword_280CC51B0;
  if (!qword_280CC51B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E23B48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetPenetrationStatus();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258E23B94()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09A70();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AssetPenetrationStatus.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of AssetPenetrationStatus.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of AssetPenetrationStatus.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t AssetPenetrationStatusDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t AssetPenetrationStatusDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E24150()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: AssetPenetrationMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t AssetPenetrationStatusDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AssetPenetrationStatusDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E2432C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E24130();
}

uint64_t type metadata accessor for AssetPenetrationStatusDataProvider()
{
  result = qword_27F989450;
  if (!qword_27F989450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of AssetPenetrationStatusDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t AssistantDeviceExperimentMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AssistantDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t AssistantDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v139 = a4;
  v130 = a3;
  v137 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v134 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v129 = v122 - v12;
  v128 = sub_258F09B00();
  v127 = *(v128 - 8);
  v13 = *(v127 + 64);
  MEMORY[0x28223BE20](v128, v14);
  v125 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_258F09A20();
  v124 = *(v126 - 1);
  v16 = *(v124 + 64);
  MEMORY[0x28223BE20](v126, v17);
  v123 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_258F0A370();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v140 = v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v141 = v122 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = v122 - v29;
  v31 = sub_258F09A70();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v20;
  v37 = *(v20 + 16);
  v132 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_logger;
  v37(v4 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_logger, a2, v19);
  sub_258F09A60();
  v38 = *(v32 + 32);
  v143 = v4;
  v131 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_oddId;
  v133 = v31;
  v38(v4 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_oddId, v36, v31);
  v39 = sub_258F0A1F0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v137 = v137;
  v42 = sub_258F0A1E0();
  v154 = v39;
  v155 = MEMORY[0x277D04548];
  v153 = v42;
  v142 = a2;
  v136 = v20 + 16;
  v135 = v37;
  v37(v30, a2, v19);
  v43 = sub_258F09C20();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = v138;
  v47 = sub_258F09BE0();
  v138 = v46;
  if (v46)
  {
    v48 = *(v156 + 8);
    v48(v142, v19);

    v49 = v143;
    v48(&v132[v143], v19);
    (*(v32 + 8))(v49 + v131, v133);
    type metadata accessor for AssistantDeviceExperimentMetrics();
    v50 = *(*v49 + 48);
    v51 = *(*v49 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v52 = v47;
    v53 = v123;
    sub_258F0A090();
    v54 = v125;
    sub_258F09AC0();
    v55 = v52;
    sub_258F09C10();
    (*(v127 + 8))(v54, v128);
    (*(v124 + 8))(v53, v126);
    v56 = v141;
    v57 = v142;
    v58 = v135;
    v135(v141, v142, v19);
    v59 = type metadata accessor for SiriDeviceExperimentMetricsDataProvider();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    v62 = swift_allocObject();
    v63 = *(v156 + 32);
    v131 = v156 + 32;
    v133 = v63;
    v63(v62 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger, v56, v19);
    *(v143 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider) = v62;
    v58(v56, v57, v19);
    v137 = v137;
    v122[1] = v55;

    v64 = v129;
    sub_258E25368(v129);
    v58(v140, v56, v19);
    sub_258DECF90(v64, v134);
    type metadata accessor for BiomeResultsWrapperFactory();
    v128 = swift_allocObject();
    v65 = type metadata accessor for CAAnalyticsEventSubmitter();
    v66 = swift_allocObject();
    sub_258F09F30();
    v127 = sub_258F09F20();
    v154 = v43;
    v155 = &off_286A2FA30;
    v153 = v55;
    v151 = v65;
    v152 = &off_286A2C648;
    v150 = v66;
    v67 = type metadata accessor for AssistantDeviceExperimentMetricsCalculator();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    v70 = swift_allocObject();
    v71 = __swift_mutable_project_boxed_opaque_existential_1(&v153, v43);
    v126 = v122;
    v72 = *(*(v43 - 8) + 64);
    MEMORY[0x28223BE20](v71, v71);
    v74 = (v122 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74);
    v76 = v19;
    v77 = v151;
    v78 = __swift_mutable_project_boxed_opaque_existential_1(&v150, v151);
    v79 = *(*(v77 - 8) + 64);
    MEMORY[0x28223BE20](v78, v78);
    v81 = (v122 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    v83 = *v74;
    v84 = *v81;
    v148 = v43;
    v149 = &off_286A2FA30;
    *&v147 = v83;
    v145 = v65;
    v146 = &off_286A2C648;
    *&v144 = v84;
    sub_258F09AC0();
    sub_258DED000(v64);
    v85 = *(v156 + 8);
    v156 += 8;
    v132 = v85;
    v86 = v141;
    (v85)(v141, v76);
    v133(v70 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger, v140, v76);
    sub_258E25BDC(v134, v70 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_sqlFileURL);
    sub_258DDA76C(&v147, v70 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bookmarkService);
    *(v70 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_biomeResultsFactory) = v128;
    sub_258DDA76C(&v144, v70 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_analyticsEventSubmitter);
    *(v70 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bugReporter) = v127;
    *(v70 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_defaults) = v137;
    __swift_destroy_boxed_opaque_existential_1Tm(&v150);
    __swift_destroy_boxed_opaque_existential_1Tm(&v153);
    *(v143 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_assistantDeviceExperimentMetricsCalculator) = v70;
    v87 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v88 = [v87 Metrics];
    swift_unknownObjectRelease();
    v89 = [v88 OnDeviceDigestExperimentMetrics];
    swift_unknownObjectRelease();
    v90 = [v89 source];

    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989480, &unk_258F0F6E8);
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    swift_allocObject();
    v94 = sub_258F09B80();
    v95 = v142;
    v96 = v135;
    v135(v86, v142, v76);
    v97 = type metadata accessor for SiriDeviceExperimentMetricsBiomeReporter();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    v100 = swift_allocObject();
    v129 = v100;
    *(v100 + 16) = v94;
    v134 = v94;
    v101 = v133;
    v133(v100 + OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger, v86, v76);
    v96(v86, v95, v76);

    v102 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v130, v139);
    v103 = v140;
    v96(v140, v95, v76);
    v104 = type metadata accessor for DeviceExperimentSELFEventConverter();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    v107 = swift_allocObject();
    v101(v107 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger, v103, v76);
    v108 = type metadata accessor for SiriDeviceExperimentMetricsSELFReporter();
    v109 = *(v108 + 48);
    v110 = *(v108 + 52);
    v111 = swift_allocObject();
    *(v111 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v101(v111 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger, v141, v76);
    *(v111 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService) = v102;
    v112 = (v111 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    *v112 = sub_258E25C4C;
    v112[1] = v107;
    v49 = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_258F0F6D0;
    *(v113 + 32) = v129;
    *(v113 + 40) = v111;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989488, &qword_258F0F6F8);
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();

    v153 = sub_258F09BA0();
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989490, qword_258F0F700);
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    swift_allocObject();
    v120 = sub_258F09BC0();

    (v132)(v142, v76);
    *(v49 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter) = v120;
  }

  return v49;
}

uint64_t sub_258E25368@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AssistantDeviceExperimentMetricsCalculator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t type metadata accessor for AssistantDeviceExperimentMetrics()
{
  result = qword_27F9894C8;
  if (!qword_27F9894C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E254EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E2550C, 0, 0);
}

uint64_t sub_258E2550C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258EC0A40();
}

uint64_t sub_258E255B0(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E255E0, 0, 0);
}

uint64_t sub_258E255E0()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DED218;

  return v6(v0 + 16);
}

uint64_t sub_258E256AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E256CC, 0, 0);
}

uint64_t sub_258E256CC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_assistantDeviceExperimentMetricsCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258E267D0(v3);
}

uint64_t AssistantDeviceExperimentMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_assistantDeviceExperimentMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter);

  v6 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t AssistantDeviceExperimentMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_assistantDeviceExperimentMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter);

  v6 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E2594C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E25970, 0, 0);
}

uint64_t sub_258E25970()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258EC0A40();
}

uint64_t sub_258E25A14(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E25A38, 0, 0);
}

uint64_t sub_258E25A38()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_assistantDeviceExperimentMetricsCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258E267D0(v3);
}

uint64_t sub_258E25ADC(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E25B10, 0, 0);
}

uint64_t sub_258E25B10()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DEDBC8;

  return v6(v0 + 16);
}

uint64_t sub_258E25BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E25CEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssistantDeviceExperimentMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258E25D30()
{
  result = qword_27F9894B8;
  if (!qword_27F9894B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9894B8);
  }

  return result;
}

unint64_t sub_258E25D84()
{
  result = qword_27F9894C0;
  if (!qword_27F9894C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9894C0);
  }

  return result;
}

uint64_t sub_258E25DE0()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09A70();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AssistantDeviceExperimentMetrics.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of AssistantDeviceExperimentMetrics.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of AssistantDeviceExperimentMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258E262A4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  a2[3] = result;
  *a2 = v3;
  a2[1] = v5;
  return result;
}

double sub_258E262F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_258E2EA2C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_258DE4090(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t AssistantDeviceExperimentMetricsCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a2;
  v46 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v41 - v10;
  v12 = sub_258F0A370();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a2, v12);
  sub_258DE20C0(a3, v11, &qword_27F988720, &qword_258F0B830);
  type metadata accessor for BiomeResultsWrapperFactory();
  v45 = swift_allocObject();
  v18 = type metadata accessor for CAAnalyticsEventSubmitter();
  v19 = swift_allocObject();
  sub_258F09F30();
  v42 = sub_258F09F20();
  v20 = sub_258F09C20();
  v50[3] = v20;
  v50[4] = &off_286A2FA30;
  v50[0] = a4;
  v48 = v18;
  v49 = &off_286A2C648;
  v47[0] = v19;
  v21 = type metadata accessor for AssistantDeviceExperimentMetricsCalculator();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v50, v20);
  v26 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v25, v25);
  v28 = (&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v48;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v31, v31);
  v34 = (&v41 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v28;
  v37 = *v34;
  v38 = (v24 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bookmarkService);
  v38[3] = v20;
  v38[4] = &off_286A2FA30;
  *v38 = v36;
  v39 = (v24 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_analyticsEventSubmitter);
  v39[3] = v18;
  v39[4] = &off_286A2C648;
  *v39 = v37;
  sub_258F09AC0();
  sub_258DE2184(v43, &qword_27F988720, &qword_258F0B830);
  (*(v13 + 8))(v44, v12);
  (*(v13 + 32))(v24 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger, v17, v12);
  sub_258E2EAD8(v11, v24 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  *(v24 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_biomeResultsFactory) = v45;
  *(v24 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bugReporter) = v42;
  *(v24 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_defaults) = v46;
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  return v24;
}

uint64_t type metadata accessor for AssistantDeviceExperimentMetricsCalculator()
{
  result = qword_27F989508;
  if (!qword_27F989508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E267D0(uint64_t a1)
{
  v2[197] = v1;
  v2[196] = a1;
  v3 = sub_258F09F40();
  v2[198] = v3;
  v4 = *(v3 - 8);
  v2[199] = v4;
  v5 = *(v4 + 64) + 15;
  v2[200] = swift_task_alloc();
  v6 = sub_258F09F50();
  v2[201] = v6;
  v7 = *(v6 - 8);
  v2[202] = v7;
  v8 = *(v7 + 64) + 15;
  v2[203] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894D8, &unk_258F0F8D0);
  v2[204] = v9;
  v10 = *(v9 - 8);
  v2[205] = v10;
  v11 = *(v10 + 64) + 15;
  v2[206] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0) - 8) + 64) + 15;
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v13 = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[209] = v13;
  v14 = *(v13 + 64) + 15;
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v15 = type metadata accessor for EventMetadata(0);
  v2[212] = v15;
  v16 = *(v15 - 8);
  v2[213] = v16;
  v17 = *(v16 + 64) + 15;
  v2[214] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[215] = swift_task_alloc();
  v2[216] = swift_task_alloc();
  v2[217] = swift_task_alloc();
  v2[218] = swift_task_alloc();
  v2[219] = swift_task_alloc();
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v19 = type metadata accessor for CommonDigestElements();
  v2[222] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v2[223] = swift_task_alloc();
  v21 = sub_258F09A20();
  v2[224] = v21;
  v22 = *(v21 - 8);
  v2[225] = v22;
  v23 = *(v22 + 64) + 15;
  v2[226] = swift_task_alloc();
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v24 = sub_258F0A2C0();
  v2[230] = v24;
  v25 = *(v24 - 8);
  v2[231] = v25;
  v26 = *(v25 + 64) + 15;
  v2[232] = swift_task_alloc();
  v2[233] = swift_task_alloc();
  v27 = sub_258F0A2F0();
  v2[234] = v27;
  v28 = *(v27 - 8);
  v2[235] = v28;
  v29 = *(v28 + 64) + 15;
  v2[236] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E26C50, 0, 0);
}

void sub_258E26C50()
{
  v376 = v0;
  v1 = v0[236];
  v2 = v0[233];
  sub_258F0A2E0();
  sub_258F0A2D0();
  sub_258F0A2A0();
  v3 = sub_258F0A2D0();
  v4 = sub_258F0A860();
  if (sub_258F0A900())
  {
    v5 = v0[233];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_258F0A2B0();
    _os_signpost_emit_with_name_impl(&dword_258DD8000, v3, v4, v7, "AssistantDeviceExperimentMetricsCalculatorSP", "", v6, 2u);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v8 = v0[233];
  v9 = v0[232];
  v10 = v0[231];
  v11 = v0[230];
  v12 = v0[197];

  (*(v10 + 16))(v9, v8, v11);
  v13 = sub_258F0A330();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_258F0A320();
  v16 = sub_258F0A350();
  v17 = sub_258F0A810();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_258DD8000, v16, v17, "SQL calculator invoked: AssistantDeviceExperimentMetricsCalculator", v18, 2u);
    MEMORY[0x259C9EF40](v18, -1, -1);
  }

  v19 = v0[197];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  v20 = *(sub_258F0A190() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_258F0F8A0;
  sub_258F0A160();
  sub_258F0A160();
  sub_258DE0270();
  v23 = v0[197];
  v24 = sub_258DE0428();
  v25 = *(v0[197] + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_defaults);
  v26 = sub_258F0A4E0();
  v27 = v0;
  v28 = [v25 BOOLForKey_];

  v29 = v27[229];
  if (v28)
  {
    sub_258F09A10();
  }

  else
  {
    v30 = v27[197] + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_calendar;
    sub_258F09BB0();
  }

  v31 = v27[229];
  v32 = v27[225];
  v365 = v27;
  v33 = v27[224];
  v34 = sub_258F0A0E0();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_258F0A0D0();
  sub_258F0A0C0();

  v37 = *(v32 + 8);
  v37(v31, v33);
  v38 = v24;
  v39 = sub_258F0A4E0();
  LODWORD(v31) = [v25 BOOLForKey_];

  v40 = sub_258F0A350();
  v41 = sub_258F0A810();
  v42 = os_log_type_enabled(v40, v41);
  v355 = v37;
  if (v31)
  {
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v375[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A640, v375);
      _os_log_impl(&dword_258DD8000, v40, v41, "%s: Include current date data for aggregation.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x259C9EF40](v44, -1, -1);
      MEMORY[0x259C9EF40](v43, -1, -1);
    }

    v45 = v365;
  }

  else
  {
    if (v42)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v375[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A640, v375);
      _os_log_impl(&dword_258DD8000, v40, v41, "%s: current date data NOT included for aggregation.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x259C9EF40](v47, -1, -1);
      MEMORY[0x259C9EF40](v46, -1, -1);
    }

    v45 = v365;
    v48 = v38;
  }

  v49 = v45[228];
  v50 = v45[227];
  v51 = v45[197];
  sub_258F0A050();

  v52 = sub_258F0A010();
  v53 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  v352 = swift_allocObject();
  *(v352 + 16) = v53;
  sub_258F09B50();
  sub_258F09930();
  v354 = v38;
  if ((sub_258F0A070() & 1) == 0)
  {
    v356 = 0;
    v359 = 0;
    v364 = MEMORY[0x277D84F90];
LABEL_172:

    v243 = sub_258F0A350();
    v244 = sub_258F0A810();
    if (os_log_type_enabled(v243, v244))
    {
      v245 = swift_slowAlloc();
      *v245 = 134217984;
      *(v245 + 4) = v364[2];

      _os_log_impl(&dword_258DD8000, v243, v244, "AssistantDeviceExperimentMetricsCalculator query yielded %ld results", v245, 0xCu);
      MEMORY[0x259C9EF40](v245, -1, -1);
    }

    else
    {
    }

    v246 = v45[206];
    v247 = v45[205];
    v248 = v45[204];
    v346 = v45[202];
    v366 = v45[199];
    v369 = v45[197];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E8, &unk_258F0F8F0);
    v249 = *(v247 + 72);
    v250 = (*(v247 + 80) + 32) & ~*(v247 + 80);
    v251 = (swift_allocObject() + v250);
    v252 = *(v248 + 48);
    *v251 = v356;
    v253 = *MEMORY[0x277D5D998];
    v254 = sub_258F09EC0();
    v255 = v45;
    v256 = *(*(v254 - 8) + 104);
    v256(&v251[v252], v253, v254);
    v257 = *(v248 + 48);
    *&v251[v249] = v359;
    v337 = &v251[v249];
    v256(&v251[v249 + v257], *MEMORY[0x277D5D9A0], v254);
    v362 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bugReporter;
    v373 = *MEMORY[0x277D5D9C8];
    v371 = (v346 + 104);
    v258 = (v346 + 8);
    v357 = *MEMORY[0x277D5D9B8];
    v360 = (v366 + 104);
    v367 = (v366 + 8);
    sub_258DE20C0(v251, v246, &qword_27F9894D8, &unk_258F0F8D0);
    v259 = *v246;
    v340 = v248;
    v260 = *(v248 + 48);
    v261 = sub_258F09EB0();
    if (v259 >= 1)
    {
      v263 = v255[197];
      sub_258E2C77C(v259, v261, v262);
    }

    v264 = v255[203];
    v265 = v255[201];

    sub_258F09EB0();
    v266 = *v371;
    (*v371)(v264, v373, v265);
    if (v259 < 1)
    {
    }

    else
    {
      v267 = v255[203];
      v268 = v255[200];
      v269 = v255[198];
      v270 = *(v369 + v362);
      (*v360)(v268, v357, v269);
      sub_258F09F10();

      (*v367)(v268, v269);
    }

    v271 = v255[206];
    v272 = *v258;
    (*v258)(v255[203], v255[201]);
    sub_258DE2184(v271, &qword_27F9894D8, &unk_258F0F8D0);
    sub_258DE20C0(v337, v271, &qword_27F9894D8, &unk_258F0F8D0);
    v273 = *v271;
    v274 = *(v340 + 48);
    v275 = sub_258F09EB0();
    if (v273 >= 1)
    {
      v277 = v255[197];
      sub_258E2C77C(v273, v275, v276);
    }

    v278 = v255[203];
    v279 = v255[201];

    sub_258F09EB0();
    v266(v278, v373, v279);
    if (v273 <= 0)
    {
    }

    else
    {
      v280 = v255[203];
      v281 = v255[200];
      v282 = v255[198];
      v283 = *(v369 + v362);
      (*v360)(v281, v357, v282);
      sub_258F09F10();

      (*v367)(v281, v282);
    }

    v284 = v255[206];
    v285 = v255[204];
    v286 = v255[197];
    v272(v255[203], v255[201]);
    sub_258DE2184(v284, &qword_27F9894D8, &unk_258F0F8D0);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258DFCF28(v352, 1);
    v287 = v255[236];
    v319 = v255[235];
    v322 = v255[234];
    v314 = v255[230];
    v316 = v255[233];
    v324 = v255[232];
    v326 = v255[229];
    v310 = v255[228];
    v312 = v255[231];
    v374 = v255[227];
    v288 = v255[226];
    v289 = v255[224];
    v328 = v255[223];
    v330 = v255[221];
    v332 = v255[220];
    v335 = v255[219];
    v338 = v255[218];
    v341 = v255[217];
    v343 = v255[216];
    v347 = v255[215];
    v351 = v255[214];
    v353 = v255[211];
    v358 = v255[210];
    v361 = v255[208];
    v363 = v255[207];
    v368 = v255[206];
    v370 = v255[203];
    v372 = v255[200];
    v290 = v255[196];
    sub_258F0A0F0();
    sub_258F09BB0();
    v291 = sub_258F09B70();
    v355(v288, v289);

    v355(v374, v289);
    v355(v310, v289);
    *v290 = v291;
    v290[1] = MEMORY[0x277D84F90];
    v290[2] = v364;
    sub_258E29670(v287, "AssistantDeviceExperimentMetricsCalculatorSP", 44, 2);

    (*(v312 + 8))(v316, v314);
    (*(v319 + 8))(v287, v322);

    v292 = v255[1];

    v292();
    return;
  }

  v356 = 0;
  v359 = 0;
  v296 = v45 + 194;
  v297 = v45 + 193;
  v294 = (v45 + 237);
  v295 = v45 + 195;
  v293 = v45 + 475;
  v336 = v45[222];
  v339 = v45[212];
  v299 = v45[209];
  v300 = v45[223];
  v298 = (v45[213] + 56);
  v364 = MEMORY[0x277D84F90];
  while (1)
  {
    v54 = sub_258F0A060();
    if (!v54)
    {
      goto LABEL_23;
    }

    v55 = v54;
    v56 = sub_258F0A350();
    v57 = sub_258F0A810();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v375[0] = v59;
      *v58 = 136315138;
      v60 = sub_258F0A420();
      v62 = sub_258DE3018(v60, v61, v375);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_258DD8000, v56, v57, "AssistantDeviceExperimentMetrics row data: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x259C9EF40](v59, -1, -1);
      MEMORY[0x259C9EF40](v58, -1, -1);
    }

    v45[171] = 0x5F746375646F7270;
    v45[172] = 0xEA00000000006469;
    sub_258F0AA80();
    if (!*(v55 + 16) || (v63 = sub_258E2EA2C((v45 + 7)), (v64 & 1) == 0))
    {

      sub_258E0F590((v45 + 7));
LABEL_43:
      v72 = sub_258F0A350();
      v80 = sub_258F0A820();
      if (!os_log_type_enabled(v72, v80))
      {
        goto LABEL_22;
      }

      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_258DD8000, v72, v80, "row does not have product Id", v81, 2u);
LABEL_45:
      MEMORY[0x259C9EF40](v81, -1, -1);
      goto LABEL_22;
    }

    sub_258DE4090(*(v55 + 56) + 32 * v63, (v45 + 77));
    sub_258E0F590((v45 + 7));
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_43;
    }

    v65 = v45[165];
    v66 = v45[166];
    if (v65 != 0x4E41545349535341 || v66 != 0xE900000000000054)
    {
      v67 = v45[165];
      v68 = v45[166];
      if ((sub_258F0AD80() & 1) == 0)
      {

        v72 = sub_258F0A350();
        v238 = sub_258F0A810();

        if (!os_log_type_enabled(v72, v238))
        {

          goto LABEL_23;
        }

        v239 = v65;
        v81 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        v375[0] = v240;
        *v81 = 136315138;
        v241 = sub_258DE3018(v239, v66, v375);

        *(v81 + 4) = v241;
        _os_log_impl(&dword_258DD8000, v72, v238, "productId of ASSISTANT is only supported from this extension - skipping row with productId: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v240);
        MEMORY[0x259C9EF40](v240, -1, -1);
        goto LABEL_45;
      }
    }

    v69 = v45[197];
    v70 = sub_258E2990C(v55, v45[227], 0xD00000000000002ALL, 0x8000000258F1A590);
    v72 = v70;
    if ((v71 & 0x10000) != 0)
    {

LABEL_22:

      goto LABEL_23;
    }

    v333 = v70;
    if (v71)
    {
      if (__OFADD__(v359, 1))
      {
        goto LABEL_190;
      }

      ++v359;
    }

    v73 = v45[197];
    sub_258E2AD44(v55, sub_258EF07B0, &OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger, v45[223]);
    v45[153] = 0xD000000000000011;
    v45[154] = 0x8000000258F1A5C0;
    sub_258F0AA80();
    if (!*(v55 + 16) || (v74 = sub_258E2EA2C((v45 + 27)), (v75 & 1) == 0))
    {
      sub_258E0F590((v45 + 27));
LABEL_48:
      v331 = 0;
      v329 = 1;
      goto LABEL_49;
    }

    sub_258DE4090(*(v55 + 56) + 32 * v74, (v45 + 93));
    sub_258E0F590((v45 + 27));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    v76 = v45[175];
    v77 = v45[176];
    v78 = sub_258F0A4E0();

    v79 = v78;
    if ([v79 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN"])
    {
      v331 = 0;
    }

    else
    {
      if ([v79 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ALLOCATED"])
      {
        v242 = 1;
      }

      else if ([v79 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ACTIVATED"])
      {
        v242 = 2;
      }

      else
      {
        v242 = [v79 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_DEACTIVATED"] ? 3 : 0;
      }

      v331 = v242;
    }

    v329 = 0;
LABEL_49:
    v325 = v65;
    v327 = v66;
    v82 = v45[221];
    v83 = sub_258F09A70();
    v84 = *(v83 - 8);
    v344 = *(v84 + 56);
    v344(v82, 1, 1, v83);
    v45[159] = 0xD000000000000015;
    v45[160] = 0x8000000258F189D0;
    sub_258F0AA80();
    v348 = v83;
    if (*(v55 + 16) && (v85 = sub_258E2EA2C((v45 + 42)), (v86 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v85, (v45 + 117));
      sub_258E0F590((v45 + 42));
      if (swift_dynamicCast())
      {
        v87 = v45[221];
        v88 = v45[220];
        v89 = v45[177];
        v90 = v45[178];
        sub_258F09A30();

        sub_258DE2184(v87, &qword_27F988730, &unk_258F0F8E0);
        v91 = v88;
        v83 = v348;
        sub_258E2EAD8(v91, v87, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258E0F590((v45 + 42));
    }

    v92 = v45[219];
    sub_258DE20C0(v45[221], v92, &qword_27F988730, &unk_258F0F8E0);
    v93 = *(v84 + 48);
    v94 = v93(v92, 1, v83);
    sub_258DE2184(v92, &qword_27F988730, &unk_258F0F8E0);
    if (v94 == 1)
    {
      v95 = sub_258F0A350();
      v96 = sub_258F0A820();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_258DD8000, v95, v96, "observed NilDeviceAggregationId", v97, 2u);
        MEMORY[0x259C9EF40](v97, -1, -1);
      }

      if (__OFADD__(v356, 1))
      {
        goto LABEL_191;
      }

      ++v356;
    }

    v98 = v348;
    v344(v45[218], 1, 1, v348);
    v45[147] = 0xD000000000000013;
    v45[148] = 0x8000000258F1A5E0;
    sub_258F0AA80();
    if (*(v55 + 16) && (v99 = sub_258E2EA2C((v45 + 57)), (v100 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v99, (v45 + 129));
      sub_258E0F590((v45 + 57));
      if (swift_dynamicCast())
      {
        v101 = v45[220];
        v102 = v45[218];
        v103 = v45[189];
        v104 = v45[190];
        sub_258F09A30();

        sub_258DE2184(v102, &qword_27F988730, &unk_258F0F8E0);
        v105 = v102;
        v98 = v348;
        sub_258E2EAD8(v101, v105, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258E0F590((v45 + 57));
    }

    v106 = v45[217];
    sub_258DE20C0(v45[218], v106, &qword_27F988730, &unk_258F0F8E0);
    v107 = v93(v106, 1, v98);
    sub_258DE2184(v106, &qword_27F988730, &unk_258F0F8E0);
    if (v107 == 1)
    {
      v108 = sub_258F0A350();
      v109 = sub_258F0A820();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&dword_258DD8000, v108, v109, "observed NilUserAggregationId", v110, 2u);
        MEMORY[0x259C9EF40](v110, -1, -1);
      }
    }

    v45[169] = 0xD000000000000029;
    v45[170] = 0x8000000258F18AC0;
    sub_258F0AA80();
    if (*(v55 + 16) && (v111 = sub_258E2EA2C((v45 + 72)), (v112 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v111, (v45 + 101));
      sub_258E0F590((v45 + 72));
      v113 = swift_dynamicCast();
      v114 = v113 ? *v296 : 0;
      v115 = v113 ^ 1;
    }

    else
    {
      sub_258E0F590((v45 + 72));
      v114 = 0;
      v115 = 1;
    }

    v45[163] = 0xD00000000000002BLL;
    v45[164] = 0x8000000258F18AF0;
    sub_258F0AA80();
    if (*(v55 + 16) && (v116 = sub_258E2EA2C((v45 + 2)), (v117 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v116, (v45 + 133));
      sub_258E0F590((v45 + 2));
      v118 = swift_dynamicCast();
      v119 = *v297;
      if (!v118)
      {
        v119 = 0;
      }

      v320 = v119;
      v120 = v118 ^ 1;
    }

    else
    {
      sub_258E0F590((v45 + 2));
      v320 = 0;
      v120 = 1;
    }

    v317 = v120;
    v121 = v45[228];
    v122 = v45[221];
    v123 = v45[218];
    v124 = v45[216];
    v125 = v45;
    v126 = v45[214];
    v127 = v125[197];
    sub_258E2BACC(v55, &OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger, v124);
    sub_258F09A60();
    v344(v126, 0, 1, v348);
    sub_258DE20C0(v122, v126 + v339[5], &qword_27F988730, &unk_258F0F8E0);
    sub_258DE20C0(v123, v126 + v339[6], &qword_27F988730, &unk_258F0F8E0);
    sub_258F099E0();
    if ((*&v128 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v128 <= -1.0)
    {
      goto LABEL_187;
    }

    if (v128 >= 1.84467441e19)
    {
      goto LABEL_188;
    }

    if (!is_mul_ok(v128, 0x3E8uLL))
    {
      goto LABEL_189;
    }

    v129 = v114;
    v130 = 1000 * v128;
    v131 = v365[214];
    v349 = v365[212];
    v132 = v365[208];
    v133 = v365[207];
    v134 = [objc_opt_self() sharedPreferences];
    v135 = [v134 longLivedIdentifierUploadingEnabled];

    v136 = v131 + v339[7];
    *v136 = v130;
    *(v136 + 8) = 0;
    *(v131 + v339[8]) = v333;
    v137 = v131 + v339[9];
    *v137 = v129;
    *(v137 + 8) = v115;
    v138 = v131 + v339[10];
    *v138 = v320;
    *(v138 + 8) = v317;
    v139 = v131 + v339[11];
    *v139 = 0;
    *(v139 + 4) = 1;
    *(v131 + v339[12]) = v135 ^ 1;
    v140 = type metadata accessor for DeviceExperimentMetricsBuilderImpl(0);
    v141 = *(v140 + 48);
    v142 = *(v140 + 52);
    swift_allocObject();
    v143 = sub_258E3C08C();
    sub_258E2F64C(v131, v132, type metadata accessor for EventMetadata);
    (*v298)(v132, 0, 1, v349);
    sub_258E2EAD8(v132, v133, &qword_27F9894E0, &unk_258F106A0);
    v144 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
    swift_beginAccess();
    sub_258E2EA70(v133, v143 + v144, &qword_27F9894E0, &unk_258F106A0);
    swift_endAccess();
    v145 = v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType;
    *v145 = 2;
    *(v145 + 4) = 0;
    strcpy(v365 + 1256, "experiment_id");
    *(v365 + 635) = -4864;
    sub_258F0AA80();
    if (*(v55 + 16) && (v146 = sub_258E2EA2C((v365 + 67)), (v147 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v146, (v365 + 97));
      sub_258E0F590((v365 + 67));
      v148 = swift_dynamicCast();
      v149 = v365[145];
      v150 = v365[146];
      if (!v148)
      {
        v149 = 0;
        v150 = 0;
      }
    }

    else
    {
      sub_258E0F590((v365 + 67));
      v149 = 0;
      v150 = 0;
    }

    v151 = v365[220];
    v152 = v365[216];
    v153 = (v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
    v154 = *(v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId + 8);
    *v153 = v149;
    v153[1] = v150;

    sub_258DE20C0(v152, v151, &qword_27F988730, &unk_258F0F8E0);
    v155 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
    swift_beginAccess();
    sub_258E2EA70(v151, v143 + v155, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    strcpy(v365 + 1528, "deployment_id");
    *(v365 + 771) = -4864;
    sub_258F0AA80();
    if (*(v55 + 16) && (v156 = sub_258E2EA2C((v365 + 62)), (v157 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v156, (v365 + 113));
      sub_258E0F590((v365 + 62));
      v158 = swift_dynamicCast();
      v159 = *v295;
      if (!v158)
      {
        v159 = 0;
      }

      v160 = v158 ^ 1;
    }

    else
    {
      sub_258E0F590((v365 + 62));
      v159 = 0;
      v160 = 1;
    }

    v161 = v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId;
    *v161 = v159;
    *(v161 + 8) = v160;
    v365[143] = 0x745F656369766564;
    v365[144] = 0xEB00000000657079;
    sub_258F0AA80();
    if (*(v55 + 16) && (v162 = sub_258E2EA2C((v365 + 52)), (v163 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v162, (v365 + 125));
      sub_258E0F590((v365 + 52));
      v164 = swift_dynamicCast();
      v165 = v365[187];
      v166 = v365[188];
      if (!v164)
      {
        v165 = 0;
        v166 = 0;
      }
    }

    else
    {
      sub_258E0F590((v365 + 52));
      v165 = 0;
      v166 = 0;
    }

    v167 = (v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
    v168 = *(v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType + 8);
    *v167 = v165;
    v167[1] = v166;

    v169 = *(v300 + 44);
    v170 = v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode;
    *v170 = *(v300 + 40);
    *(v170 + 4) = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894F0, &qword_258F11690);
    v171 = type metadata accessor for ExperimentDigest(0);
    v172 = *(*(v171 - 1) + 72);
    v173 = (*(*(v171 - 1) + 80) + 32) & ~*(*(v171 - 1) + 80);
    v174 = swift_allocObject();
    *(v174 + 16) = xmmword_258F0B820;
    strcpy(v365 + 1208, "system_build");
    *(v365 + 1221) = 0;
    *(v365 + 611) = -5120;
    sub_258F0AA80();
    if (*(v55 + 16) && (v175 = sub_258E2EA2C((v365 + 47)), (v176 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v175, (v365 + 81));
      sub_258E0F590((v365 + 47));
      v177 = swift_dynamicCast();
      if (v177)
      {
        v178 = v365[185];
      }

      else
      {
        v178 = 0;
      }

      if (v177)
      {
        v179 = v365[186];
      }

      else
      {
        v179 = 0;
      }

      v342 = v179;
      v345 = v178;
    }

    else
    {
      sub_258E0F590((v365 + 47));
      v342 = 0;
      v345 = 0;
    }

    v334 = *(v300 + 8);
    v321 = *(v300 + 12);
    v318 = *v365[223];
    v315 = *(v300 + 4);
    v365[149] = 0xD000000000000012;
    v365[150] = 0x8000000258F1A600;
    sub_258F0AA80();
    if (*(v55 + 16) && (v180 = sub_258E2EA2C((v365 + 37)), (v181 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v180, (v365 + 121));
      sub_258E0F590((v365 + 37));
      v182 = swift_dynamicCast();
      if (v182)
      {
        v183 = v365[183];
      }

      else
      {
        v183 = 0;
      }

      if (v182)
      {
        v184 = v365[184];
      }

      else
      {
        v184 = 0;
      }

      v311 = v184;
      v313 = v183;
    }

    else
    {
      sub_258E0F590((v365 + 37));
      v311 = 0;
      v313 = 0;
    }

    v365[155] = 0xD000000000000013;
    v365[156] = 0x8000000258F1A620;
    sub_258F0AA80();
    if (*(v55 + 16) && (v185 = sub_258E2EA2C((v365 + 32)), (v186 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v185, (v365 + 109));
      sub_258E0F590((v365 + 32));
      v187 = swift_dynamicCast();
      v188 = v365[181];
      if (!v187)
      {
        v188 = 0;
      }

      v323 = v188;
      if (v187)
      {
        v189 = v365[182];
      }

      else
      {
        v189 = 0;
      }

      v309 = v189;
    }

    else
    {
      sub_258E0F590((v365 + 32));
      v323 = 0;
      v309 = 0;
    }

    v307 = *(v300 + 20);
    v308 = *(v300 + 16);
    v305 = *(v300 + 28);
    v306 = *(v300 + 24);
    v190 = *(v300 + 32);
    v365[161] = 0x616D6F645F627573;
    v365[162] = 0xEA00000000006E69;
    v191 = v190;
    sub_258F0AA80();
    if (*(v55 + 16) && (v192 = sub_258E2EA2C((v365 + 22)), (v193 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v192, (v365 + 105));
      sub_258E0F590((v365 + 22));
      v194 = swift_dynamicCast();
      if (v194)
      {
        v195 = v365[179];
      }

      else
      {
        v195 = 0;
      }

      if (v194)
      {
        v196 = v365[180];
      }

      else
      {
        v196 = 0;
      }

      v303 = v196;
      v304 = v195;
    }

    else
    {
      sub_258E0F590((v365 + 22));
      v303 = 0;
      v304 = 0;
    }

    sub_258DE20C0(v365[223] + *(v336 + 40), v365[215], &qword_27F988730, &unk_258F0F8E0);
    v365[167] = 0x746E635F6E727574;
    v365[168] = 0xE800000000000000;
    sub_258F0AA80();
    if (*(v55 + 16) && (v197 = sub_258E2EA2C((v365 + 17)), (v198 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v197, (v365 + 89));
      sub_258E0F590((v365 + 17));
      v199 = swift_dynamicCast();
      v200 = *v294;
      if (!v199)
      {
        v200 = 0;
      }

      v302 = v200;
      v201 = v199 ^ 1;
    }

    else
    {
      sub_258E0F590((v365 + 17));
      v302 = 0;
      v201 = 1;
    }

    v301 = v201;
    v350 = v174;
    v202 = v174 + v173;
    strcpy(v365 + 1384, "user_turn_cnt");
    *(v365 + 699) = -4864;
    sub_258F0AA80();
    if (*(v55 + 16) && (v203 = sub_258E2EA2C((v365 + 12)), (v204 & 1) != 0))
    {
      sub_258DE4090(*(v55 + 56) + 32 * v203, (v365 + 85));
      sub_258E0F590((v365 + 12));

      v205 = swift_dynamicCast();
      if (v205)
      {
        v206 = *v293;
      }

      else
      {
        v206 = 0;
      }

      v207 = v205 ^ 1;
    }

    else
    {

      sub_258E0F590((v365 + 12));
      v206 = 0;
      v207 = 1;
    }

    v208 = *(v365[223] + *(v336 + 44));
    *v202 = v325;
    *(v202 + 8) = v327;
    *(v202 + 16) = v345;
    *(v202 + 24) = v342;
    *(v202 + 32) = v334;
    *(v202 + 36) = v321;
    *(v202 + 40) = v318;
    *(v202 + 44) = v315;
    *(v202 + 48) = v313;
    *(v202 + 56) = v311;
    *(v202 + 64) = v323;
    *(v202 + 72) = v309;
    *(v202 + 80) = v308;
    *(v202 + 84) = v307;
    *(v202 + 88) = v306;
    *(v202 + 92) = v305;
    *(v202 + 112) = v304;
    *(v202 + 120) = v303;
    v209 = v365[215];
    *(v202 + 136) = v331;
    v210 = v365[211];
    *(v202 + 96) = v190;
    *(v202 + 104) = 0;
    v211 = v365[210];
    *(v202 + 128) = 0;
    *(v202 + 132) = 1;
    *(v202 + 140) = v329;
    *(v202 + 141) = 514;
    sub_258E2EAD8(v209, v202 + v171[19], &qword_27F988730, &unk_258F0F8E0);
    *(v202 + v171[20]) = 2;
    *(v202 + v171[21]) = 0;
    v212 = v202 + v171[22];
    *v212 = 0;
    *(v212 + 4) = 1;
    v213 = v202 + v171[23];
    *v213 = v302;
    *(v213 + 4) = v301;
    v214 = v202 + v171[24];
    *v214 = v206;
    *(v214 + 4) = v207;
    v215 = v202 + v171[25];
    *v215 = 0;
    *(v215 + 4) = 1;
    v216 = v202 + v171[26];
    *v216 = 0;
    *(v216 + 4) = 1;
    v217 = v202 + v171[27];
    *v217 = 0;
    *(v217 + 4) = 1;
    v218 = v202 + v171[28];
    *v218 = 0;
    *(v218 + 4) = 1;
    v219 = v202 + v171[29];
    *v219 = 0;
    *(v219 + 4) = 1;
    v220 = v202 + v171[30];
    *v220 = 0;
    *(v220 + 4) = 1;
    v221 = v202 + v171[31];
    *v221 = 0;
    *(v221 + 4) = 1;
    v222 = v202 + v171[32];
    *v222 = 0;
    *(v222 + 4) = 1;
    v223 = v202 + v171[33];
    *v223 = 0;
    *(v223 + 4) = 1;
    v224 = v202 + v171[34];
    *v224 = 0;
    *(v224 + 4) = 1;
    v225 = v202 + v171[35];
    *v225 = 0;
    *(v225 + 4) = 1;
    v226 = v202 + v171[36];
    *v226 = 0;
    *(v226 + 4) = 1;
    v227 = v202 + v171[37];
    *v227 = 1;
    *(v227 + 8) = 0u;
    *(v227 + 24) = 0u;
    *(v202 + v171[38]) = v208;
    v228 = *(v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests);
    *(v143 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests) = v350;

    sub_258E3BDA4(v210);

    sub_258E2F64C(v210, v211, type metadata accessor for DeviceExperimentMetrics);
    v229 = v364;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v229 = sub_258DE26CC(0, v364[2] + 1, 1, v364);
    }

    v231 = v229[2];
    v230 = v229[3];
    if (v231 >= v230 >> 1)
    {
      v364 = sub_258DE26CC(v230 > 1, v231 + 1, 1, v229);
    }

    else
    {
      v364 = v229;
    }

    v45 = v365;
    v232 = v365[223];
    v233 = v365[221];
    v234 = v365[218];
    v235 = v365[216];
    v236 = v365[214];
    v237 = v365[210];
    sub_258E2F6B4(v365[211], type metadata accessor for DeviceExperimentMetrics);
    sub_258E2F6B4(v236, type metadata accessor for EventMetadata);
    sub_258DE2184(v235, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v234, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v233, &qword_27F988730, &unk_258F0F8E0);
    sub_258E2F6B4(v232, type metadata accessor for CommonDigestElements);
    v364[2] = v231 + 1;
    sub_258E2EB40(v237, v364 + ((*(v299 + 80) + 32) & ~*(v299 + 80)) + *(v299 + 72) * v231);
LABEL_23:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_172;
    }
  }

  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
}