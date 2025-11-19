uint64_t static EventEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1738 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2628, &qword_2428B8ED8);
  v3 = __swift_project_value_buffer(v2, qword_27ECC2608);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EventEntityQuery.properties.setter(uint64_t a1)
{
  if (qword_27ECC1738 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2628, &qword_2428B8ED8);
  v3 = __swift_project_value_buffer(v2, qword_27ECC2608);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EventEntityQuery.properties.modify())()
{
  if (qword_27ECC1738 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2628, &qword_2428B8ED8);
  __swift_project_value_buffer(v0, qword_27ECC2608);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t EventEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2427F96EC;

  return sub_2427F8164(a1, a2 & 1, a4, a5 & 1);
}

uint64_t sub_2427F6FD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1738 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2628, &qword_2428B8ED8);
  v3 = __swift_project_value_buffer(v2, qword_27ECC2608);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2427F709C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1730 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2620, &qword_2428B8ED0);
  v3 = __swift_project_value_buffer(v2, qword_27ECC25F0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2427F716C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_2427E2738;

  return sub_2427F8164(a2, a3 & 1, a5, a6 & 1);
}

char *sub_2427F7268(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2778, &qword_2428B9350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2427F73D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26E0, &qword_2428B9260);
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

char *sub_2427F74F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4ED0, &qword_2428B91E8);
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

size_t sub_2427F7640(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x277D84F90];
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

char *sub_2427F7828(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC21F0, &qword_2428B7C30);
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

char *sub_2427F7934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2220, &qword_2428B7C60);
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

void *sub_2427F7A54(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26B0, &qword_2428B9230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26B8, &qword_2428B9238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2427F7C14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26A8, &qword_2428B9228);
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

char *sub_2427F7D34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26A0, &qword_2428B9220);
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

size_t sub_2427F7E68(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2427F8044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2678, &qword_2428B91F8);
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

uint64_t sub_2427F8164(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 257) = a4;
  *(v5 + 256) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v7 = sub_2428B3BB8();
  *(v5 + 80) = v7;
  v8 = *(v7 - 8);
  *(v5 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v10 = sub_2428B3688();
  *(v5 + 112) = v10;
  v11 = *(v10 - 8);
  *(v5 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v13 = type metadata accessor for EventEntityQuery.EventPropertyComparator();
  *(v5 + 168) = v13;
  v14 = *(v13 - 8);
  *(v5 + 176) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v17 = swift_task_alloc();
  v18 = *v4;
  *(v5 + 232) = v17;
  *(v5 + 240) = v18;
  sub_2428B4758();
  *(v5 + 248) = sub_2428B4748();
  v20 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_2427F8404, v20, v19);
}

uint64_t sub_2427F8404()
{
  v160 = v0;
  v1 = v0[31];

  v2 = sub_2428B43D8();
  v0[5] = v2;
  v0[6] = sub_2427F96A4(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v2);
  LOBYTE(v2) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((v2 & 1) == 0)
  {
    sub_2428B2938();
    sub_2427F96A4(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    goto LABEL_6;
  }

  v4 = v0[30];
  v5 = sub_2427F3D30();
  v6 = *(v0 + 256);
  if ((sub_2428B32C8() & 1) == 0)
  {
    sub_2427F9528();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();

    goto LABEL_6;
  }

  v140 = v5;
  v7 = v0[28];
  v8 = v0[14];
  v9 = v0[7];
  v10 = *(v0[15] + 56);
  v10(v0[29], 1, 1, v8);
  v148 = v10;
  v10(v7, 1, 1, v8);
  v11 = *(v9 + 16);
  v158 = v0;
  if (!v11)
  {
    v141 = 2;
LABEL_20:
    v43 = v0[25];
    v44 = v0[14];
    v45 = v0[15];
    sub_2427F95E0(v0[29], v43);
    v46 = *(v45 + 48);
    v47 = v46(v43, 1, v44);
    v48 = v0[25];
    if (v47 == 1)
    {
      v49 = v0[14];
      v50 = v0[18];
      sub_2428B3628();
      if (v46(v48, 1, v49) != 1)
      {
        sub_2427E0980(v0[25], &qword_27ECC26F0, &unk_2428B7960);
      }
    }

    else
    {
      (*(v0[15] + 32))(v0[18], v0[25], v0[14]);
    }

    v51 = v0[24];
    v52 = v0[14];
    sub_2427F95E0(v0[28], v51);
    v53 = v46(v51, 1, v52);
    v54 = v0[24];
    if (v53 == 1)
    {
      v55 = v0[14];
      v56 = v0[17];
      sub_2428B3638();
      if (v46(v54, 1, v55) != 1)
      {
        sub_2427E0980(v0[24], &qword_27ECC26F0, &unk_2428B7960);
      }
    }

    else
    {
      (*(v0[15] + 32))(v0[17], v0[24], v0[14]);
    }

    v58 = v0[17];
    v57 = v0[18];
    v59 = v0[14];
    v60 = v0[15];
    v61 = objc_allocWithZone(MEMORY[0x277CF77A0]);
    v62 = sub_2428B3658();
    v63 = sub_2428B3658();
    v64 = [v61 initWithStartDate:v62 endDate:v63];

    v65 = *(v60 + 8);
    v65(v58, v59);
    v65(v57, v59);
    if ([v64 isValid])
    {
      v66 = v0[16];
      v67 = v0[14];
      v68 = v64;
      v69 = *(v0 + 257);
      v70 = v0[8];
      v71 = 13;
      if (v141)
      {
        v71 = 14;
      }

      v72 = 12;
      if (v141 != 2)
      {
        v72 = v71;
      }

      v155 = v72;
      v73 = [v68 startDate];
      sub_2428B3678();

      v74 = sub_2428B3658();
      v65(v66, v67);
      v75 = [v68 endDate];
      sub_2428B3678();

      v76 = sub_2428B3658();
      v65(v66, v67);
      if (v69)
      {
        v77 = 0;
      }

      else
      {
        v77 = v70;
      }

      v78 = [v140 predicateForEventsWithStartDate:v74 endDate:v76 calendars:0 exclusionOptions:v155 filterdOutTitles:0 randomize:0 limit:v77];

      if (v78)
      {
        v150 = v68;
        v79 = [v140 eventsMatchingPredicate_];
        sub_2427DE3E4();
        v80 = sub_2428B46C8();

        if (v80 >> 62)
        {
LABEL_64:
          v156 = v80 & 0xFFFFFFFFFFFFFF8;
          v81 = sub_2428B49C8();
          v147 = v78;
          if (v81)
          {
LABEL_39:
            v82 = 0;
            v83 = v158[11];
            v78 = (v80 & 0xC000000000000001);
            v84 = (v83 + 48);
            v143 = (v83 + 32);
            v138 = (v83 + 16);
            v152 = MEMORY[0x277D84F90];
            v136 = (v83 + 8);
            do
            {
              v85 = v82;
              while (1)
              {
                if (v78)
                {
                  v86 = MEMORY[0x245D1B5D0](v85, v80);
                  v82 = v85 + 1;
                  if (__OFADD__(v85, 1))
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  if (v85 >= *(v156 + 16))
                  {
                    goto LABEL_63;
                  }

                  v86 = *(v80 + 8 * v85 + 32);
                  v82 = v85 + 1;
                  if (__OFADD__(v85, 1))
                  {
LABEL_62:
                    __break(1u);
LABEL_63:
                    __break(1u);
                    goto LABEL_64;
                  }
                }

                v88 = v158[9];
                v87 = v158[10];
                v89 = v86;
                sub_2428B3BC8();
                if ((*v84)(v88, 1, v87) != 1)
                {
                  break;
                }

                v90 = v158[9];

                sub_2427E0980(v90, &qword_27ECC3240, &qword_2428BBF00);
                ++v85;
                if (v82 == v81)
                {
                  goto LABEL_66;
                }
              }

              v92 = v158[12];
              v91 = v158[13];
              v93 = v158[10];
              (*v143)(v91, v158[9], v93);
              (*v138)(v92, v91, v93);
              EventEntity.init(_:)(v92, v159);

              (*v136)(v91, v93);
              v94 = v152;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_2427F7268(0, *(v152 + 2) + 1, 1, v152);
              }

              v96 = *(v94 + 2);
              v95 = *(v94 + 3);
              if (v96 >= v95 >> 1)
              {
                v94 = sub_2427F7268((v95 > 1), v96 + 1, 1, v94);
              }

              *(v94 + 2) = v96 + 1;
              v152 = v94;
              v97 = &v94[160 * v96];
              v98 = v159[1];
              *(v97 + 2) = v159[0];
              *(v97 + 3) = v98;
              v99 = v159[2];
              v100 = v159[3];
              v101 = v159[5];
              *(v97 + 6) = v159[4];
              *(v97 + 7) = v101;
              *(v97 + 4) = v99;
              *(v97 + 5) = v100;
              v102 = v159[6];
              v103 = v159[7];
              v104 = v159[9];
              *(v97 + 10) = v159[8];
              *(v97 + 11) = v104;
              *(v97 + 8) = v102;
              *(v97 + 9) = v103;
            }

            while (v82 != v81);
            goto LABEL_66;
          }
        }

        else
        {
          v156 = v80 & 0xFFFFFFFFFFFFFF8;
          v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v147 = v78;
          if (v81)
          {
            goto LABEL_39;
          }
        }

        v152 = MEMORY[0x277D84F90];
LABEL_66:
        v124 = v158[28];
        v125 = v158[29];
        v127 = v158[26];
        v126 = v158[27];
        v129 = v158[24];
        v128 = v158[25];
        v130 = v158[23];
        v132 = v158[20];
        v133 = v158[19];
        v134 = v158[18];
        v135 = v158[17];
        v137 = v158[16];
        v139 = v158[13];
        v144 = v158[12];
        v157 = v158[9];

        sub_2427E0980(v124, &qword_27ECC26F0, &unk_2428B7960);
        sub_2427E0980(v125, &qword_27ECC26F0, &unk_2428B7960);

        v131 = v158[1];

        return v131(v152);
      }

      v109 = v0[28];
      v110 = v0[29];
      sub_2427F9528();
      swift_allocError();
      *v111 = 4;
      swift_willThrow();

      sub_2427E0980(v109, &qword_27ECC26F0, &unk_2428B7960);
      v108 = v110;
    }

    else
    {
      v106 = v0[28];
      v105 = v0[29];
      sub_2427F9528();
      swift_allocError();
      *v107 = 3;
      swift_willThrow();

      sub_2427E0980(v106, &qword_27ECC26F0, &unk_2428B7960);
      v108 = v105;
    }

    sub_2427E0980(v108, &qword_27ECC26F0, &unk_2428B7960);
    goto LABEL_6;
  }

  v12 = v0[22];
  v13 = v0[15];
  v14 = v0[7] + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = (v13 + 32);
  v145 = (v13 + 48);
  v153 = *(v12 + 72);
  v141 = 2;
  while (1)
  {
    v28 = v0[21];
    sub_2427F957C(v14, v0[23]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v38 = v0[28];
      v39 = v0[26];
      v40 = v0[14];
      v33 = *v15;
      (*v15)(v0[19], v0[23], v40);
      sub_2427F95E0(v38, v39);
      if ((*v145)(v39, 1, v40) != 1)
      {
        v113 = v0[28];
        v112 = v0[29];
        v114 = v0[19];
        v116 = v0[14];
        v115 = v0[15];
        sub_2427E0980(v0[26], &qword_27ECC26F0, &unk_2428B7960);
        sub_2427F9528();
        swift_allocError();
        *v117 = 2;
        swift_willThrow();

        (*(v115 + 8))(v114, v116);
        sub_2427E0980(v113, &qword_27ECC26F0, &unk_2428B7960);
        v118 = v112;
        goto LABEL_61;
      }

      v35 = v0[28];
      v36 = v0[26];
      v37 = v0[19];
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v141 = *v0[23];
LABEL_10:
    v14 += v153;
    if (!--v11)
    {
      goto LABEL_20;
    }
  }

  v30 = v0[29];
  v31 = v0[27];
  v32 = v0[14];
  v33 = *v15;
  (*v15)(v0[20], v0[23], v32);
  sub_2427F95E0(v30, v31);
  v34 = (*v145)(v31, 1, v32);
  v35 = v0[29];
  if (v34 == 1)
  {
    v36 = v0[27];
    v37 = v0[20];
LABEL_17:
    v41 = v158[14];
    sub_2427E0980(v35, &qword_27ECC26F0, &unk_2428B7960);
    sub_2427E0980(v36, &qword_27ECC26F0, &unk_2428B7960);
    v33(v35, v37, v41);
    v0 = v158;
    v148(v35, 0, 1, v41);
    goto LABEL_10;
  }

  v119 = v0[28];
  v120 = v0[20];
  v122 = v0[14];
  v121 = v0[15];
  sub_2427E0980(v0[27], &qword_27ECC26F0, &unk_2428B7960);
  sub_2427F9528();
  swift_allocError();
  *v123 = 1;
  swift_willThrow();

  (*(v121 + 8))(v120, v122);
  sub_2427E0980(v119, &qword_27ECC26F0, &unk_2428B7960);
  v118 = v35;
LABEL_61:
  v0 = v158;
  sub_2427E0980(v118, &qword_27ECC26F0, &unk_2428B7960);
LABEL_6:
  v17 = v0[28];
  v16 = v0[29];
  v19 = v0[26];
  v18 = v0[27];
  v21 = v0[24];
  v20 = v0[25];
  v22 = v0[23];
  v24 = v0[19];
  v23 = v0[20];
  v25 = v0[18];
  v142 = v0[17];
  v146 = v0[16];
  v149 = v0[13];
  v151 = v0[12];
  v154 = v0[9];

  v26 = v0[1];

  return v26();
}

unint64_t sub_2427F91C4()
{
  result = qword_280CDDE20;
  if (!qword_280CDDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE20);
  }

  return result;
}

unint64_t sub_2427F921C()
{
  result = qword_280CDDE18;
  if (!qword_280CDDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE18);
  }

  return result;
}

unint64_t sub_2427F9274()
{
  result = qword_280CDDE28;
  if (!qword_280CDDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE28);
  }

  return result;
}

unint64_t sub_2427F92CC()
{
  result = qword_27ECC2638;
  if (!qword_27ECC2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC2640, &qword_2428BEB60);
    sub_2427C28E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2638);
  }

  return result;
}

unint64_t sub_2427F9354()
{
  result = qword_27ECC2648;
  if (!qword_27ECC2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2648);
  }

  return result;
}

unint64_t sub_2427F93AC()
{
  result = qword_27ECC2650;
  if (!qword_27ECC2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2650);
  }

  return result;
}

uint64_t type metadata accessor for EventEntityQuery.EventPropertyComparator()
{
  result = qword_27ECC2658;
  if (!qword_27ECC2658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2427F94AC()
{
  result = sub_2428B3688();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2427F9528()
{
  result = qword_27ECC26F8;
  if (!qword_27ECC26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC26F8);
  }

  return result;
}

uint64_t sub_2427F957C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventEntityQuery.EventPropertyComparator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427F95E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2427F9650()
{
  result = qword_27ECC2740;
  if (!qword_27ECC2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2740);
  }

  return result;
}

uint64_t sub_2427F96A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TransferableCalendarEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t TransferableCalendarEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2427F978C, 0, 0);
}

void sub_2427F978C()
{
  v1 = v0[3];
  v2 = sub_2427F3E84();
  v3 = v0[2];
  v4 = sub_2428B46B8();
  v5 = [v2 calendarsWithIdentifiers_];

  if (v5)
  {
    sub_2427F98B4();
    v6 = sub_2428B46C8();

    v7 = sub_2427F9900(v6);

    v8 = v0[1];

    v8(v7);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2427F98B4()
{
  result = qword_27ECC28F0;
  if (!qword_27ECC28F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC28F0);
  }

  return result;
}

void *sub_2427F9900(unint64_t a1)
{
  v2 = type metadata accessor for TransferableCalendarEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v8 = 0;
    v17 = a1 & 0xC000000000000001;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v17)
      {
        v10 = MEMORY[0x245D1B5D0](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18[3] = sub_2428B3DB8();
      v18[4] = sub_2427FA28C(&qword_27ECC27D8, MEMORY[0x277CF7BB8]);
      __swift_allocate_boxed_opaque_existential_1(v18);
      v13 = v11;
      sub_2428B3DC8();
      sub_2428B3848();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2427F73B0(0, v9[2] + 1, 1, v9);
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        v9 = sub_2427F73B0(v14 > 1, v15 + 1, 1, v9);
      }

      v9[2] = v15 + 1;
      sub_2427FA2D4(v6, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15);
      ++v8;
      if (v12 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2427F9B70()
{
  v1 = *(v0 + 16);
  v2 = sub_2427F3E84();
  v3 = [v2 calendarsForEntityType_];
  sub_2427F98B4();
  v4 = sub_2428B46C8();

  v5 = sub_2427F9900(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

unint64_t sub_2427F9C78()
{
  result = qword_27ECC2790;
  if (!qword_27ECC2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2790);
  }

  return result;
}

unint64_t sub_2427F9CD0()
{
  result = qword_27ECC2798;
  if (!qword_27ECC2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2798);
  }

  return result;
}

uint64_t sub_2427F9D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return TransferableCalendarEntityQuery.entities(for:)(a1);
}

uint64_t sub_2427F9E00(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CBA250] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2427FA238();
  *v6 = v2;
  v6[1] = sub_2427CD274;

  return MEMORY[0x28210C0E8](a1, a2, v7);
}

unint64_t sub_2427F9EB8()
{
  result = qword_27ECC30C0;
  if (!qword_27ECC30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC30C0);
  }

  return result;
}

uint64_t sub_2427F9F0C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2427F9F30, 0, 0);
}

uint64_t sub_2427F9F30()
{
  v1 = v0[3];
  v2 = sub_2427F3E84();
  v3 = v0[2];
  v4 = v2;
  v5 = [v2 calendarsForEntityType_];
  sub_2427F98B4();
  v6 = sub_2428B46C8();

  v7 = sub_2427F9900(v6);

  *v3 = v7;
  v8 = v0[1];

  return v8();
}

unint64_t sub_2427FA020()
{
  result = qword_27ECC27B0;
  if (!qword_27ECC27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27B0);
  }

  return result;
}

unint64_t sub_2427FA0C0()
{
  result = qword_27ECC27C0;
  if (!qword_27ECC27C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC27C8, qword_2428B9438);
    sub_2427FA28C(&unk_280CDE0E8, type metadata accessor for TransferableCalendarEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27C0);
  }

  return result;
}

uint64_t sub_2427FA174(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2427F9EB8();
  *v6 = v2;
  v6[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_2427FA238()
{
  result = qword_27ECC27D0;
  if (!qword_27ECC27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27D0);
  }

  return result;
}

uint64_t sub_2427FA28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2427FA2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableCalendarEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427FA3B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_2427FA498(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2427FA4C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2427FA4F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *static CalendarSuggestionsProvider.suggestions(withEventStore:options:)@<X0>(void *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26C8, &unk_2428B9570);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v67 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = v56 - v17;
  v76 = sub_2428B3568();
  v18 = *(v76 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v76);
  v80 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B3DB8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v74 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26D8, &qword_2428B9258);
  v24 = *(v73 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v73);
  v82 = v56 - v26;
  v27 = _s12CalendarLink0A12ListGroupingV6groups14withEventStore16includeDelegates12writableOnly09deletableL00I18IntegrationSourcesSayAC5GroupOGSo07EKEventH0C_S4btFZ_0(a1, *a2 & 1, (*a2 & 4) != 0, (*a2 >> 3) & 1, (*a2 >> 1) & 1);
  v63 = *(v27 + 2);
  if (!v63)
  {
LABEL_28:

    (*(v18 + 56))(v77, 1, 1, v76);
    sub_2427E3430();
    return sub_2428B3108();
  }

  v56[1] = a3;
  v28 = v27;
  type metadata accessor for LocalizedStringUtils();
  result = v28;
  v30 = 0;
  v62 = v28 + 32;
  v72 = (v18 + 56);
  v71 = v24 + 32;
  v57 = (v7 + 16);
  v56[3] = v7 + 8;
  v56[2] = v7 + 32;
  v31 = MEMORY[0x277D84F90];
  v61 = v6;
  v60 = v7;
  v59 = v18;
  v58 = v28;
  while (1)
  {
    if (v30 >= result[2])
    {
      goto LABEL_31;
    }

    v64 = v31;
    v65 = v30;
    v32 = &v62[24 * v30];
    v33 = *v32;
    v34 = *(v32 + 1);
    v68 = v32[16];
    v70 = v33;
    v69 = v34;
    v35 = sub_2428B3218();
    v81 = v35;
    v36 = v35 >> 62 ? sub_2428B49C8() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    result = sub_2427FAED4(v70, v69, v68);
    if (v36)
    {
      break;
    }

    v38 = MEMORY[0x277D84F90];
LABEL_21:

    *&v85 = v70;
    *(&v85 + 1) = v69;
    LOBYTE(v86) = v68;
    v45 = v80;
    static LocalizedStringUtils.localizedTitle(forGroup:)(&v85);
    v46 = sub_2427E3430();
    v47 = v66;
    MEMORY[0x245D19BF0](v45, v38, &type metadata for CalendarEntity, v46);
    v48 = v61;
    (*v57)(v67, v47, v61);
    v49 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_2427F75F8(0, v49[2] + 1, 1, v49);
    }

    v50 = v60;
    v52 = v49[2];
    v51 = v49[3];
    v53 = v49;
    v54 = v65;
    if (v52 >= v51 >> 1)
    {
      v55 = sub_2427F75F8(v51 > 1, v52 + 1, 1, v49);
      v54 = v65;
      v53 = v55;
    }

    sub_2427FAF24(v70, v69, v68);
    (*(v50 + 8))(v66, v48);
    v53[2] = v52 + 1;
    v31 = v53;
    (*(v50 + 32))(v53 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v52, v67, v48);
    v30 = v54 + 1;
    v18 = v59;
    result = v58;
    if (v54 + 1 == v63)
    {
      goto LABEL_28;
    }
  }

  v37 = 0;
  v79 = v81 & 0xC000000000000001;
  v78 = v81 & 0xFFFFFFFFFFFFFF8;
  v38 = MEMORY[0x277D84F90];
  while (v79)
  {
    result = MEMORY[0x245D1B5D0](v37, v81);
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_29;
    }

LABEL_11:
    v40 = result;
    v41 = v74;
    sub_2428B3DC8();
    CalendarEntity.init(_:)(v41, v84);
    v88 = v84[3];
    v89 = v84[4];
    v86 = v84[1];
    v87 = v84[2];
    v85 = v84[0];
    sub_2427E35A0(&v85, v83);
    static LocalizedStringUtils.localizedTitle(forCalendar:)(v40);
    (*v72)(v77, 1, 1, v76);
    v42 = sub_2428B3148();
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_2427E3430();
    sub_2428B2A88();

    sub_2427E3484(&v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_2427F761C(0, v38[2] + 1, 1, v38);
    }

    v44 = v38[2];
    v43 = v38[3];
    if (v44 >= v43 >> 1)
    {
      v38 = sub_2427F761C(v43 > 1, v44 + 1, 1, v38);
    }

    v38[2] = v44 + 1;
    result = (*(v24 + 32))(v38 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v44, v82, v73);
    ++v37;
    if (v39 == v36)
    {
      goto LABEL_21;
    }
  }

  if (v37 >= *(v78 + 16))
  {
    goto LABEL_30;
  }

  result = *(v81 + 8 * v37 + 32);
  v39 = v37 + 1;
  if (!__OFADD__(v37, 1))
  {
    goto LABEL_11;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_2427FAED4(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }

    v4 = result;
  }

  return sub_2428B3218();
}

void *sub_2427FAF24(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }
  }
}

unint64_t sub_2427FAF78()
{
  result = qword_27ECC27E0;
  if (!qword_27ECC27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27E0);
  }

  return result;
}

unint64_t sub_2427FAFD0()
{
  result = qword_27ECC27E8;
  if (!qword_27ECC27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27E8);
  }

  return result;
}

unint64_t sub_2427FB028()
{
  result = qword_27ECC27F0;
  if (!qword_27ECC27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27F0);
  }

  return result;
}

unint64_t sub_2427FB080()
{
  result = qword_27ECC27F8;
  if (!qword_27ECC27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarSuggestionsOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CalendarSuggestionsOptions(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CalendarSuggestionsProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CalendarSuggestionsProvider(_WORD *result, int a2, int a3)
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

uint64_t sub_2427FB210()
{
  sub_2428B4678();
}

uint64_t sub_2427FB34C()
{
  sub_2428B4678();
}

uint64_t sub_2427FB478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC2800);
  __swift_project_value_buffer(v15, qword_27ECC2800);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t static CalendarAppView.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1740 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2800);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2427FB804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v99 = &v75 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v75 - v5;
  v102 = sub_2428B3558();
  v6 = *(v102 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v102);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B36C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B45F8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2428B3568();
  v100 = *(v94 - 8);
  v18 = *(v100 + 64);
  MEMORY[0x28223BE20](v94);
  v88 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2838, &qword_2428B9A58);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2840, &unk_2428B9A60);
  v21 = *(v20 - 8);
  v93 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v80 = 8 * v93;
  v23 = swift_allocObject();
  v78 = v23;
  *(v23 + 16) = xmmword_2428B5D40;
  v87 = *(v20 + 48);
  v95 = v20;
  *(v23 + v22) = 0;
  v24 = v23 + v22;
  sub_2428B4578();
  sub_2428B36B8();
  v98 = *MEMORY[0x277CC9110];
  v89 = *(v6 + 104);
  v82 = v9;
  v89(v9);
  v83 = v6 + 104;
  sub_2428B3588();
  v91 = *(v100 + 56);
  v100 += 56;
  v25 = v97;
  v26 = v94;
  v91(v97, 1, 1, v94);
  v90 = sub_2428B3148();
  v27 = *(v90 - 8);
  v92 = *(v27 + 56);
  v96 = v27 + 56;
  v92(v99, 1, 1, v90);
  v101 = v24;
  sub_2428B3178();
  v28 = *(v20 + 48);
  v86 = v24 + v93;
  v87 = v28;
  *v86 = 1;
  sub_2428B4578();
  v81 = v13;
  sub_2428B36B8();
  v29 = v98;
  (v89)(v82, v98, v102);
  sub_2428B3588();
  v30 = v26;
  v31 = v26;
  v32 = v91;
  v91(v25, 1, 1, v31);
  v33 = v90;
  v92(v99, 1, 1, v90);
  sub_2428B3178();
  v87 = 2 * v93;
  v34 = v95;
  v35 = *(v95 + 48);
  v85 = v101 + 2 * v93;
  v86 = v35;
  *v85 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v36 = v82;
  (v89)(v82, v29, v102);
  sub_2428B3588();
  v32(v97, 1, 1, v30);
  v37 = v33;
  v38 = v92;
  v92(v99, 1, 1, v37);
  sub_2428B3178();
  v39 = *(v34 + 48);
  v86 = v101 + v87 + v93;
  v87 = v39;
  *v86 = 3;
  v79 = v17;
  sub_2428B4578();
  sub_2428B36B8();
  (v89)(v36, v98, v102);
  sub_2428B3588();
  v40 = v94;
  v41 = v91;
  v91(v97, 1, 1, v94);
  v38(v99, 1, 1, v90);
  sub_2428B3178();
  v42 = v93;
  v87 = 4 * v93;
  v43 = v95;
  v44 = *(v95 + 48);
  v85 = v101 + 4 * v93;
  v86 = v44;
  *v85 = 4;
  sub_2428B4578();
  sub_2428B36B8();
  (v89)(v36, v98, v102);
  sub_2428B3588();
  v45 = v97;
  v41(v97, 1, 1, v40);
  v46 = v99;
  v47 = v90;
  v48 = v92;
  v92(v99, 1, 1, v90);
  v49 = v45;
  sub_2428B3178();
  v76 = (v101 + v87 + v42);
  v77 = *(v43 + 48);
  *v76 = 5;
  sub_2428B4578();
  sub_2428B36B8();
  v50 = v82;
  v51 = v89;
  (v89)(v82, v98, v102);
  sub_2428B3588();
  v52 = v100;
  v91(v49, 1, 1, v94);
  v48(v46, 1, 1, v47);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D70, &unk_2428B6230);
  v54 = *(v52 + 16);
  v86 = *(v52 + 24);
  v87 = v53;
  v84 = (v86 + 32) & ~v86;
  v85 = v54;
  v55 = swift_allocObject();
  v75 = xmmword_2428B5D50;
  *(v55 + 16) = xmmword_2428B5D50;
  sub_2428B4578();
  sub_2428B36B8();
  v56 = v102;
  v57 = v51;
  (v51)(v50, v98, v102);
  sub_2428B3578();
  v58 = v97;
  v59 = v99;
  sub_2428B3168();
  v76 = (v101 + 6 * v93);
  v77 = *(v95 + 48);
  *v76 = 6;
  sub_2428B4578();
  sub_2428B36B8();
  (v57)(v50, v98, v56);
  sub_2428B3588();
  v91(v58, 1, 1, v94);
  v60 = v59;
  v92(v59, 1, 1, v90);
  *(swift_allocObject() + 16) = v75;
  sub_2428B4578();
  sub_2428B36B8();
  v61 = v98;
  v62 = v102;
  (v57)(v50, v98, v102);
  sub_2428B3578();
  v63 = v97;
  sub_2428B3168();
  v76 = (v101 + v80 - v93);
  v77 = *(v95 + 48);
  *v76 = 7;
  sub_2428B4578();
  sub_2428B36B8();
  v64 = v61;
  v65 = v89;
  (v89)(v50, v64, v62);
  sub_2428B3588();
  v91(v63, 1, 1, v94);
  v92(v60, 1, 1, v90);
  v93 = 2 * v85;
  *&v75 = swift_allocObject();
  *(v75 + 16) = xmmword_2428B9770;
  sub_2428B4578();
  sub_2428B36B8();
  v66 = v98;
  v67 = v102;
  (v65)(v50, v98, v102);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  (v65)(v50, v66, v67);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  (v65)(v50, v66, v67);
  sub_2428B3578();
  v68 = v97;
  v69 = v99;
  sub_2428B3168();
  v77 = v101 + v80;
  v80 = *(v95 + 48);
  *v77 = 8;
  sub_2428B4578();
  sub_2428B36B8();
  (v65)(v50, v66, v67);
  sub_2428B3588();
  v91(v68, 1, 1, v94);
  v92(v69, 1, 1, v90);
  *(swift_allocObject() + 16) = xmmword_2428B7940;
  sub_2428B4578();
  sub_2428B36B8();
  v70 = v66;
  v71 = v66;
  v72 = v102;
  (v65)(v50, v71, v102);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  (v65)(v50, v70, v72);
  sub_2428B3578();
  sub_2428B3168();
  v73 = sub_242821540(v78);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC2818 = v73;
  return result;
}

uint64_t static CalendarAppView.caseDisplayRepresentations.getter()
{
  if (qword_27ECC1748 != -1)
  {
    swift_once();
  }

  return sub_2428B3218();
}

CalendarLink::CalendarAppView_optional __swiftcall CalendarAppView.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CalendarAppView.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 7954788;
    v7 = 0x68746E6F6DLL;
    if (v1 != 2)
    {
      v7 = 0x6E6F4D74696C7073;
    }

    if (*v0)
    {
      v6 = 1801807223;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x686372616573;
    v3 = 0x7261646E656C6163;
    if (v1 != 7)
    {
      v3 = 0x786F626E69;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 1918985593;
    if (v1 != 4)
    {
      v4 = 1953720684;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2427FCC6C@<X0>(uint64_t *a1@<X8>)
{
  result = CalendarAppView.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2427FCC98()
{
  result = qword_280CDDF90;
  if (!qword_280CDDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF90);
  }

  return result;
}

uint64_t sub_2427FCCEC()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2427FB34C();
  return sub_2428B4CB8();
}

uint64_t sub_2427FCD3C()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2427FB34C();
  return sub_2428B4CB8();
}

unint64_t sub_2427FCD84()
{
  result = qword_280CDDFD0;
  if (!qword_280CDDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFD0);
  }

  return result;
}

unint64_t sub_2427FCDDC()
{
  result = qword_280CDDFA8;
  if (!qword_280CDDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFA8);
  }

  return result;
}

unint64_t sub_2427FCE34()
{
  result = qword_280CDDF88;
  if (!qword_280CDDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF88);
  }

  return result;
}

unint64_t sub_2427FCE8C()
{
  result = qword_280CDDFB8;
  if (!qword_280CDDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFB8);
  }

  return result;
}

unint64_t sub_2427FCEE0()
{
  result = qword_280CDDFB0;
  if (!qword_280CDDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFB0);
  }

  return result;
}

unint64_t sub_2427FCF34()
{
  result = qword_280CDDFC8;
  if (!qword_280CDDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFC8);
  }

  return result;
}

unint64_t sub_2427FCF8C()
{
  result = qword_280CDDFC0;
  if (!qword_280CDDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFC0);
  }

  return result;
}

uint64_t sub_2427FCFE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1740 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2800);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2427FD0D8()
{
  result = qword_27ECC2820;
  if (!qword_27ECC2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2820);
  }

  return result;
}

uint64_t sub_2427FD12C(uint64_t a1)
{
  v2 = sub_2427FD0D8();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2427FD17C()
{
  result = qword_280CDDFA0;
  if (!qword_280CDDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFA0);
  }

  return result;
}

unint64_t sub_2427FD1D4()
{
  result = qword_280CDDF80;
  if (!qword_280CDDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF80);
  }

  return result;
}

unint64_t sub_2427FD22C()
{
  result = qword_280CDDF98;
  if (!qword_280CDDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF98);
  }

  return result;
}

uint64_t sub_2427FD280()
{
  if (qword_27ECC1748 != -1)
  {
    swift_once();
  }

  return sub_2428B3218();
}

uint64_t sub_2427FD2DC(uint64_t a1)
{
  v2 = sub_2427FCF8C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2427FD32C()
{
  result = qword_27ECC2828;
  if (!qword_27ECC2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC2830, &qword_2428B99D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2828);
  }

  return result;
}

uint64_t sub_2427FD3D4()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2428B3568();
  __swift_allocate_value_buffer(v7, qword_27ECC2850);
  __swift_project_value_buffer(v7, qword_27ECC2850);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static DeleteCalendarsIntent.title.modify())()
{
  if (qword_27ECC1750 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3568();
  __swift_project_value_buffer(v0, qword_27ECC2850);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2427FD6D8()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3078();
  __swift_allocate_value_buffer(v12, qword_27ECC2868);
  __swift_project_value_buffer(v12, qword_27ECC2868);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3088();
}

uint64_t sub_2427FD9F4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_2427FDAE0(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static DeleteCalendarsIntent.description.modify())()
{
  if (qword_27ECC1758 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC2868);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2427FDC60@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_2427FDD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (*a5 == -1)
  {
    v9 = a6(0);
  }

  else
  {
    swift_once();
    v9 = a6(0);
  }

  v10 = v9;
  v11 = __swift_project_value_buffer(v9, a7);
  swift_beginAccess();
  (*(*(v10 - 8) + 24))(v11, a1, v10);
  return swift_endAccess();
}

uint64_t DeleteCalendarsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  v55 = sub_2428B3298();
  v57 = *(v55 - 8);
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v52 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = v38 - v11;
  v12 = sub_2428B3558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2428B36C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_2428B45F8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_2428B3568();
  v48 = v21;
  v56 = *(v21 - 8);
  v22 = *(v56 + 64);
  MEMORY[0x28223BE20](v21);
  v38[1] = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  v43 = sub_2428B2958();
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28A8, &qword_2428B9A88);
  sub_2428B4578();
  sub_2428B36B8();
  v25 = *(v13 + 104);
  v41 = *MEMORY[0x277CC9110];
  v24 = v41;
  v39 = v12;
  v25(v16, v41, v12);
  v40 = v25;
  v42 = v13 + 104;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v25(v16, v24, v12);
  v26 = v50;
  sub_2428B3578();
  v27 = *(v56 + 56);
  v56 += 56;
  v49 = v27;
  v27(v26, 0, 1, v21);
  v58 = 0;
  v28 = sub_2428B2AE8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v45 = v30;
  v46 = v29 + 56;
  v30(v51, 1, 1, v28);
  v30(v52, 1, 1, v28);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  sub_2428B2948();
  *&v59 = sub_2428B2918();
  *(&v59 + 1) = 11;
  LODWORD(v43) = *MEMORY[0x277CBA308];
  v31 = *(v57 + 104);
  v57 += 104;
  v44 = v31;
  v31(v53);
  sub_2427FE634();
  sub_2427FE688();
  v54[1] = sub_2428B2E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28B0, &qword_2428B9A90);
  sub_2428B4578();
  sub_2428B36B8();
  v32 = v41;
  v33 = v39;
  v34 = v40;
  v40(v16, v41, v39);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v34(v16, v32, v33);
  v35 = v50;
  sub_2428B3578();
  v49(v35, 0, 1, v48);
  LOBYTE(v59) = 3;
  v36 = v45;
  v45(v51, 1, 1, v28);
  v36(v52, 1, 1, v28);
  v44(v53, v43, v55);
  sub_24280181C();
  result = sub_2428B2E38();
  v54[2] = result;
  return result;
}

unint64_t sub_2427FE634()
{
  result = qword_280CDE110;
  if (!qword_280CDE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE110);
  }

  return result;
}

unint64_t sub_2427FE688()
{
  result = qword_280CDE5B0;
  if (!qword_280CDE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5B0);
  }

  return result;
}

uint64_t DeleteCalendarsIntent.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t DeleteCalendarsIntent.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*DeleteCalendarsIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t DeleteCalendarsIntent.entities.getter()
{
  v1 = *(v0 + 8);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_2427FE820@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427FE85C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*DeleteCalendarsIntent.entities.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t DeleteCalendarsIntent.reportJunk.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*DeleteCalendarsIntent.reportJunk.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t static DeleteCalendarsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28C0, &qword_2428B9A98);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28C8, &qword_2428B9AA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_242801870();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28D8, &qword_2428B9AD0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t DeleteCalendarsIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(*(sub_2428B3408() - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_2428B3418();
  *(v2 + 112) = v4;
  v5 = *(v4 - 8);
  *(v2 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v8 = sub_2428B31E8();
  *(v2 + 144) = v8;
  v9 = *(v8 - 8);
  *(v2 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC28E0, &qword_2428B9AE0);
  *(v2 + 168) = v11;
  v12 = *(v11 - 8);
  *(v2 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v14 = sub_2428B2AE8();
  *(v2 + 192) = v14;
  v15 = *(v14 - 8);
  *(v2 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = *v1;
  *(v2 + 232) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_2427FEE84, 0, 0);
}

uint64_t sub_2427FEE84()
{
  v1 = sub_2428B43D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_242801E44(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v1 & 1) == 0)
  {
    sub_2428B2938();
    sub_242801E44(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
LABEL_14:
    swift_willThrow();
LABEL_15:
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 160);
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 104);

    v23 = *(v0 + 8);
LABEL_58:

    return v23();
  }

  v3 = *(v0 + 216);
  sub_2428B28E8();
  v4 = [*(v0 + 80) eventStore];
  *(v0 + 240) = v4;
  swift_unknownObjectRelease();
  if (!v4)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v16 = 24;
    goto LABEL_14;
  }

  v71 = v4;
  v5 = *(v0 + 224);
  sub_2428B2DC8();
  v6 = *(v0 + 88);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 48);
    v10 = MEMORY[0x277D84F90];
    while (v8 < *(v6 + 16))
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      sub_2428B3218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2427F7828(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_2427F7828((v13 > 1), v14 + 1, 1, v10);
      }

      ++v8;
      *(v10 + 2) = v14 + 1;
      v15 = &v10[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v9 += 10;
      if (v7 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:
  *(v0 + 248) = v10;

  v24 = sub_2428B46B8();
  v9 = v71;
  v7 = [v71 calendarsWithIdentifiers_];

  if (!v7)
  {
    goto LABEL_56;
  }

  sub_2427F98B4();
  v25 = sub_2428B46C8();
  v6 = v25;
  *(v0 + 256) = v25;
  v8 = (v25 >> 62);
  if (v25 >> 62)
  {
LABEL_54:
    if (!sub_2428B49C8())
    {
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:

LABEL_56:

    v63 = *(v0 + 96);
    sub_2428B2C28();
    goto LABEL_57;
  }

LABEL_20:
  v26 = [objc_allocWithZone(MEMORY[0x277CF7C78]) initWithCalendars_];
  *(v0 + 264) = v26;

  v27 = [v26 rejectionReason];
  if (v27 > 1)
  {
    if (v27 == 2)
    {

      if (v8)
      {
        v43 = sub_2428B49C8();
      }

      else
      {
        v43 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v43 <= 1;
      v46 = 8;
    }

    else
    {
      if (v27 != 3)
      {
        return sub_2428B4B58();
      }

      if (v8)
      {
        v29 = sub_2428B49C8();
      }

      else
      {
        v29 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v29 <= 1;
      v46 = 16;
    }

    if (v45)
    {
      v44 = v46;
    }

    else
    {
      v44 = v46 + 1;
    }

LABEL_47:
    sub_2427CCDB0();
    swift_allocError();
    *v47 = v44;
    swift_willThrow();

    goto LABEL_15;
  }

  if (v27)
  {
    if (v27 == 1)
    {

      if (v8)
      {
        v28 = sub_2428B49C8();
      }

      else
      {
        v28 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v44 = v28 > 1;
      goto LABEL_47;
    }

    return sub_2428B4B58();
  }

  v30 = [v26 nextConfirmation];
  if (!v30)
  {
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v9 = *(v0 + 240);
    v50 = *(v0 + 248);
    v51 = *(v0 + 96);

    [v48 perform];
    sub_2428B2C28();

LABEL_57:
    v64 = *(v0 + 208);
    v65 = *(v0 + 184);
    v66 = *(v0 + 160);
    v68 = *(v0 + 128);
    v67 = *(v0 + 136);
    v69 = *(v0 + 104);

    v23 = *(v0 + 8);
    goto LABEL_58;
  }

  *(v0 + 272) = v30;
  v31 = *(v0 + 208);
  v32 = v30;
  v33 = [v30 dialog];
  sub_2428B4618();

  sub_2428B2AC8();
  v34 = [v32 type];
  if (v34)
  {
    if (v34 != 1)
    {
      return sub_2428B4B58();
    }

    v35 = *(v0 + 232);
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 192);
    v39 = *(v0 + 136);
    *(v0 + 296) = sub_2428B2DE8();
    (*(v37 + 16))(v39, v36, v38);
    (*(v37 + 56))(v39, 0, 1, v38);
    v40 = *(MEMORY[0x277CB9EE0] + 4);
    v41 = swift_task_alloc();
    *(v0 + 304) = v41;
    *v41 = v0;
    v41[1] = sub_2427FFDA8;
    v42 = *(v0 + 136);

    return MEMORY[0x28210BA20](v0 + 320, &unk_285515458, v42);
  }

  else
  {
    v52 = *(v0 + 232);
    v53 = *(v0 + 208);
    v54 = *(v0 + 184);
    v55 = *(v0 + 160);
    *(v0 + 56) = *(v0 + 216);
    *(v0 + 72) = v52;
    sub_2428B2C18();
    sub_2428B31D8();
    v56 = *(MEMORY[0x277CB9C30] + 4);
    v57 = swift_task_alloc();
    *(v0 + 280) = v57;
    v58 = sub_242801870();
    v59 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0);
    *v57 = v0;
    v57[1] = sub_2427FF6E0;
    v60 = *(v0 + 184);
    v61 = *(v0 + 160);
    v62 = *(v0 + 168);

    return MEMORY[0x28210B510](v60, v61, 1, &type metadata for DeleteCalendarsIntent, v62, v58, v59);
  }
}

uint64_t sub_2427FF6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v18 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[31];
    v5 = v2[32];
    v7 = v2[22];
    v6 = v2[23];
    v9 = v2[20];
    v8 = v2[21];
    v12 = v2 + 18;
    v10 = v2[18];
    v11 = v12[1];

    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v13 = sub_242800434;
  }

  else
  {
    v15 = v2[22];
    v14 = v2[23];
    v16 = v2[21];
    (*(v2[19] + 8))(v2[20], v2[18]);
    (*(v15 + 8))(v14, v16);
    v13 = sub_2427FF88C;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_2427FF88C()
{
  v1 = [*(v0 + 264) selectConfirmationOptionAtIndex_];
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  if (v1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v4 = [v2 nextConfirmation];
    if (v4)
    {
      *(v0 + 272) = v4;
      v5 = *(v0 + 208);
      v6 = v4;
      v7 = [v4 dialog];
      sub_2428B4618();

      sub_2428B2AC8();
      v8 = [v6 type];
      if (v8 == 1)
      {
        v46 = *(v0 + 232);
        v48 = *(v0 + 200);
        v47 = *(v0 + 208);
        v49 = *(v0 + 192);
        v50 = *(v0 + 136);
        *(v0 + 296) = sub_2428B2DE8();
        (*(v48 + 16))(v50, v47, v49);
        (*(v48 + 56))(v50, 0, 1, v49);
        v51 = *(MEMORY[0x277CB9EE0] + 4);
        v52 = swift_task_alloc();
        *(v0 + 304) = v52;
        *v52 = v0;
        v52[1] = sub_2427FFDA8;
        v53 = *(v0 + 136);

        return MEMORY[0x28210BA20](v0 + 320, &unk_285515458, v53);
      }

      else if (v8)
      {
        return sub_2428B4B58();
      }

      else
      {
        v9 = *(v0 + 232);
        v10 = *(v0 + 208);
        v11 = *(v0 + 184);
        v12 = *(v0 + 160);
        *(v0 + 56) = *(v0 + 216);
        *(v0 + 72) = v9;
        sub_2428B2C18();
        sub_2428B31D8();
        v13 = *(MEMORY[0x277CB9C30] + 4);
        v14 = swift_task_alloc();
        *(v0 + 280) = v14;
        v15 = sub_242801870();
        v16 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0);
        *v14 = v0;
        v14[1] = sub_2427FF6E0;
        v17 = *(v0 + 184);
        v18 = *(v0 + 160);
        v19 = *(v0 + 168);

        return MEMORY[0x28210B510](v17, v18, 1, &type metadata for DeleteCalendarsIntent, v19, v15, v16);
      }
    }

    v35 = *(v0 + 256);
    v36 = *(v0 + 264);
    v38 = *(v0 + 240);
    v37 = *(v0 + 248);
    v39 = *(v0 + 96);

    [v36 perform];
    sub_2428B2C28();

    v40 = *(v0 + 208);
    v41 = *(v0 + 184);
    v42 = *(v0 + 160);
    v44 = *(v0 + 128);
    v43 = *(v0 + 136);
    v45 = *(v0 + 104);

    v34 = *(v0 + 8);
  }

  else
  {
    v20 = *(v0 + 248);
    v21 = *(v0 + 256);
    v22 = *(v0 + 240);
    v23 = *(v0 + 200);
    v55 = *(v0 + 192);
    v56 = *(v0 + 208);
    v25 = *(v0 + 120);
    v24 = *(v0 + 128);
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);

    sub_2428B33F8();
    sub_242801D34(MEMORY[0x277D84F90]);
    sub_242801E44(&qword_27ECC28F8, MEMORY[0x277CC8620]);
    sub_2428B3528();
    sub_2428B33E8();
    (*(v25 + 8))(v24, v26);
    swift_willThrow();

    (*(v23 + 8))(v56, v55);
    v28 = *(v0 + 208);
    v29 = *(v0 + 184);
    v30 = *(v0 + 160);
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 104);

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_2427FFDA8()
{
  v2 = *v1;
  v3 = (*v1)[38];
  v4 = *v1;
  v2[39] = v0;

  v5 = v2[37];
  if (v0)
  {
    v7 = v2[31];
    v6 = v2[32];
    sub_2427D2948(v2[17]);

    v8 = sub_242800514;
  }

  else
  {
    sub_2427D2948(v2[17]);

    v8 = sub_2427FFF0C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2427FFF0C()
{
  v1 = [*(v0 + 264) selectConfirmationOptionAtIndex_];
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  if (v1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v4 = [v2 nextConfirmation];
    if (v4)
    {
      *(v0 + 272) = v4;
      v5 = *(v0 + 208);
      v6 = v4;
      v7 = [v4 dialog];
      sub_2428B4618();

      sub_2428B2AC8();
      v8 = [v6 type];
      if (v8 == 1)
      {
        v46 = *(v0 + 232);
        v48 = *(v0 + 200);
        v47 = *(v0 + 208);
        v49 = *(v0 + 192);
        v50 = *(v0 + 136);
        *(v0 + 296) = sub_2428B2DE8();
        (*(v48 + 16))(v50, v47, v49);
        (*(v48 + 56))(v50, 0, 1, v49);
        v51 = *(MEMORY[0x277CB9EE0] + 4);
        v52 = swift_task_alloc();
        *(v0 + 304) = v52;
        *v52 = v0;
        v52[1] = sub_2427FFDA8;
        v53 = *(v0 + 136);

        return MEMORY[0x28210BA20](v0 + 320, &unk_285515458, v53);
      }

      else if (v8)
      {
        return sub_2428B4B58();
      }

      else
      {
        v9 = *(v0 + 232);
        v10 = *(v0 + 208);
        v11 = *(v0 + 184);
        v12 = *(v0 + 160);
        *(v0 + 56) = *(v0 + 216);
        *(v0 + 72) = v9;
        sub_2428B2C18();
        sub_2428B31D8();
        v13 = *(MEMORY[0x277CB9C30] + 4);
        v14 = swift_task_alloc();
        *(v0 + 280) = v14;
        v15 = sub_242801870();
        v16 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0);
        *v14 = v0;
        v14[1] = sub_2427FF6E0;
        v17 = *(v0 + 184);
        v18 = *(v0 + 160);
        v19 = *(v0 + 168);

        return MEMORY[0x28210B510](v17, v18, 1, &type metadata for DeleteCalendarsIntent, v19, v15, v16);
      }
    }

    v35 = *(v0 + 256);
    v36 = *(v0 + 264);
    v38 = *(v0 + 240);
    v37 = *(v0 + 248);
    v39 = *(v0 + 96);

    [v36 perform];
    sub_2428B2C28();

    v40 = *(v0 + 208);
    v41 = *(v0 + 184);
    v42 = *(v0 + 160);
    v44 = *(v0 + 128);
    v43 = *(v0 + 136);
    v45 = *(v0 + 104);

    v34 = *(v0 + 8);
  }

  else
  {
    v20 = *(v0 + 248);
    v21 = *(v0 + 256);
    v22 = *(v0 + 240);
    v23 = *(v0 + 200);
    v55 = *(v0 + 192);
    v56 = *(v0 + 208);
    v25 = *(v0 + 120);
    v24 = *(v0 + 128);
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);

    sub_2428B33F8();
    sub_242801D34(MEMORY[0x277D84F90]);
    sub_242801E44(&qword_27ECC28F8, MEMORY[0x277CC8620]);
    sub_2428B3528();
    sub_2428B33E8();
    (*(v25 + 8))(v24, v26);
    swift_willThrow();

    (*(v23 + 8))(v56, v55);
    v28 = *(v0 + 208);
    v29 = *(v0 + 184);
    v30 = *(v0 + 160);
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 104);

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_242800434()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 288);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 104);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_242800514()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 312);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 104);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2428005F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC2880);
  __swift_project_value_buffer(v15, qword_27ECC2880);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t static DeleteCalendarsIntent.ReportJunkChoice.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1760 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242800978()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v54 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v37 - v5;
  v38 = sub_2428B3558();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B36C8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B45F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = sub_2428B3568();
  v13 = *(v53 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2940, &qword_2428B9F28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2948, &qword_2428B9F30);
  v44 = v15;
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v42 = 2 * v16;
  v18 = swift_allocObject();
  v43 = v18;
  *(v18 + 16) = xmmword_2428B9770;
  v19 = (v18 + v17);
  v39 = *(v15 + 48);
  *v19 = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v47 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v52 = v6 + 104;
  v21 = v40;
  v20(v40);
  v37 = v20;
  sub_2428B3588();
  v22 = *(v13 + 56);
  v49 = v13 + 56;
  v50 = v22;
  v23 = v41;
  v22(v41, 1, 1, v53);
  v46 = sub_2428B3148();
  v24 = *(v46 - 8);
  v45 = *(v24 + 56);
  v48 = v24 + 56;
  v45(v54, 1, 1, v46);
  v51 = v19;
  v25 = v23;
  sub_2428B3178();
  v26 = &v19[v16];
  v27 = v44;
  v39 = *(v44 + 48);
  *v26 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v28 = v38;
  (v20)(v21, v47, v38);
  v29 = v21;
  sub_2428B3588();
  v30 = v25;
  v31 = v25;
  v32 = v53;
  v50(v31, 1, 1, v53);
  v33 = v54;
  v45(v54, 1, 1, v46);
  sub_2428B3178();
  v34 = &v51[v42];
  v42 = *(v27 + 48);
  *v34 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  (v37)(v29, v47, v28);
  sub_2428B3588();
  v50(v30, 1, 1, v32);
  v45(v33, 1, 1, v46);
  sub_2428B3178();
  v35 = sub_242821750(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC2898 = v35;
  return result;
}

uint64_t static DeleteCalendarsIntent.ReportJunkChoice.caseDisplayRepresentations.getter()
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t static DeleteCalendarsIntent.ReportJunkChoice.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC2898 = a1;
}

uint64_t (*static DeleteCalendarsIntent.ReportJunkChoice.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24280115C@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC2898;
  return sub_2428B3218();
}

uint64_t sub_2428011DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1768;
  sub_2428B3218();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC2898 = v1;
}

CalendarLink::DeleteCalendarsIntent::ReportJunkChoice_optional __swiftcall DeleteCalendarsIntent.ReportJunkChoice.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeleteCalendarsIntent.ReportJunkChoice.rawValue.getter()
{
  v1 = 0x6F706552746E6F64;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F706572;
  }
}

uint64_t sub_242801324(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F706552746E6F64;
  v4 = 0xEA00000000007472;
  if (v2 != 1)
  {
    v3 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74726F706572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6F706552746E6F64;
  v8 = 0xEA00000000007472;
  if (*a2 != 1)
  {
    v7 = 0x6C65636E6163;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74726F706572;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2428B4BF8();
  }

  return v11 & 1;
}

uint64_t sub_242801424()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

uint64_t sub_2428014C4()
{
  *v0;
  *v0;
  sub_2428B4678();
}

uint64_t sub_242801550()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

void sub_2428015F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000007472;
  v5 = 0x6F706552746E6F64;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74726F706572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242801654@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1760 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2428016FC(uint64_t a1)
{
  v2 = sub_24280181C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_242801748()
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t sub_2428017C0(uint64_t a1)
{
  v2 = sub_2428020F0();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_24280181C()
{
  result = qword_27ECC28B8;
  if (!qword_27ECC28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC28B8);
  }

  return result;
}

unint64_t sub_242801870()
{
  result = qword_27ECC28D0;
  if (!qword_27ECC28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC28D0);
  }

  return result;
}

uint64_t sub_2428018C4()
{
  v1 = *(v0 + 8);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_2428018F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1750 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2428019B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28C0, &qword_2428B9A98);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28C8, &qword_2428B9AA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28D8, &qword_2428B9AD0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242801B4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return DeleteCalendarsIntent.perform()(a1);
}

unint64_t sub_242801C04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2428B4C88();
  sub_2428B4678();
  v6 = sub_2428B4CB8();

  return sub_242801C7C(a1, a2, v6);
}

unint64_t sub_242801C7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2428B4BF8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_242801D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2950, &qword_2428B9F38);
    v3 = sub_2428B4BA8();
    v4 = a1 + 32;
    sub_2428B2F38();
    while (1)
    {
      sub_242802448(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_242801C04(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2428024B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_242801E44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242801E90()
{
  result = qword_280CDDC38;
  if (!qword_280CDDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC38);
  }

  return result;
}

unint64_t sub_242801EE8()
{
  result = qword_280CDDC90;
  if (!qword_280CDDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC90);
  }

  return result;
}

unint64_t sub_242801F40()
{
  result = qword_280CDDC68;
  if (!qword_280CDDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC68);
  }

  return result;
}

unint64_t sub_242801F98()
{
  result = qword_280CDDC30;
  if (!qword_280CDDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC30);
  }

  return result;
}

unint64_t sub_242801FF0()
{
  result = qword_280CDDC78;
  if (!qword_280CDDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC78);
  }

  return result;
}

unint64_t sub_242802044()
{
  result = qword_280CDDC70;
  if (!qword_280CDDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC70);
  }

  return result;
}

unint64_t sub_242802098()
{
  result = qword_280CDDC98;
  if (!qword_280CDDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC98);
  }

  return result;
}

unint64_t sub_2428020F0()
{
  result = qword_280CDDC80;
  if (!qword_280CDDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC80);
  }

  return result;
}

unint64_t sub_242802198()
{
  result = qword_280CDDC58;
  if (!qword_280CDDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC58);
  }

  return result;
}

unint64_t sub_2428021F0()
{
  result = qword_280CDDC20;
  if (!qword_280CDDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC20);
  }

  return result;
}

unint64_t sub_242802248()
{
  result = qword_280CDDC48;
  if (!qword_280CDDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC48);
  }

  return result;
}

unint64_t sub_2428022E4()
{
  result = qword_27ECC2920;
  if (!qword_27ECC2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2920);
  }

  return result;
}

unint64_t sub_242802344()
{
  result = qword_280CDDC08;
  if (!qword_280CDDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC08);
  }

  return result;
}

unint64_t sub_24280239C()
{
  result = qword_280CDDC10;
  if (!qword_280CDDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC10);
  }

  return result;
}

uint64_t sub_242802448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2958, &unk_2428B9F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2428024B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2428024D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC2960);
  __swift_project_value_buffer(v15, qword_27ECC2960);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t LocationEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v30 - v7;
  v9 = sub_2428B36C8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B3558();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2428B45F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2428B3568();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1[1];
  v23 = *v1;
  sub_2428B2C68();
  if (v39)
  {
    return sub_2428B3128();
  }

  v31 = v18;
  v32 = v21;
  v24 = v11;
  v33 = v17;
  v34 = v14;
  v26 = v35;
  v25 = v36;
  sub_2428B2C68();
  if (v39)
  {
    return sub_2428B3128();
  }

  v30[1] = v38;
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v24, qword_27ECD4500);
  (*(v26 + 16))(v34, v28, v24);
  sub_2428B36B8();
  sub_2428B3578();
  (*(v31 + 56))(v8, 1, 1, v33);
  v29 = sub_2428B3148();
  (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
  return sub_2428B3178();
}

uint64_t LocationEntity.title.getter()
{
  v1 = *v0;
  sub_2428B2C68();
  return v3;
}

uint64_t LocationEntity.address.getter()
{
  v1 = *(v0 + 8);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_242802C58(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  v11 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242802DF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  v11 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.address.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242802FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = a1[1];
  sub_2428066BC(*a1);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t LocationEntity.geoLocation.setter(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_2428B2C78();
}

uint64_t (*LocationEntity.geoLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

double LocationEntity.radius.getter()
{
  v1 = *(v0 + 24);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_242803190(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.radius.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t LocationEntity.isImprecise.getter()
{
  v1 = *(v0 + 32);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_24280335C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.isImprecise.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t LocationEntity.contactLabel.getter()
{
  v1 = *(v0 + 40);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_242803528(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  v11 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.contactLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t LocationEntity.mapKitHandleString.getter()
{
  v1 = *(v0 + 48);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_2428036F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  v11 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.mapKitHandleString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t LocationEntity.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = sub_2428B3558();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v4 + 104);
  v16(v7, v15, v3);
  sub_2428B3578();
  v45 = v14;
  v46 = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v16(v7, v15, v3);
  sub_2428B3578();
  v50 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2990, &qword_2428B9F68);
  sub_2428B4578();
  sub_2428B36B8();
  v16(v7, v15, v3);
  sub_2428B3578();
  sub_242805E10();
  v48 = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC29A0, &unk_2428B9F70);
  sub_2428B4578();
  sub_2428B36B8();
  v16(v7, v15, v3);
  sub_2428B3578();
  v47 = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v16(v7, v15, v3);
  sub_2428B3578();
  v52 = sub_2428B2D78();
  sub_2428B4578();
  sub_2428B36B8();
  v16(v7, v15, v3);
  sub_2428B3578();
  v51 = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v16(v7, v15, v3);
  v17 = v46;
  sub_2428B3578();
  v18 = sub_2428B2D68();
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *&v53 = sub_2428B3A38();
  *(&v53 + 1) = v20;
  sub_2428B2C78();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *&v53 = sub_2428B3A58();
  *(&v53 + 1) = v22;
  sub_2428B2C78();
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_2428B39F8();
  if (v24)
  {
    LocationEntity.GeoLocationEntity.init(_:)(v24, &v53);
    v25 = v53;
  }

  else
  {
    v25 = 0uLL;
  }

  v53 = v25;
  v26 = v48;
  sub_2428B2C78();
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A48();
  *&v53 = v28;
  v29 = v47;
  sub_2428B2C78();
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(v53) = sub_2428B3A08() & 1;
  sub_2428B2C78();
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *&v53 = sub_2428B3A18();
  *(&v53 + 1) = v32;
  sub_2428B2C78();
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = sub_2428B3A28();
  if (v35 >> 60 == 15)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v38 = v34;
    v39 = v35;
    v36 = sub_2428B3608();
    v37 = v40;
    sub_242805E64(v38, v39);
  }

  *&v53 = v36;
  *(&v53 + 1) = v37;
  sub_2428B2C78();
  v41 = v49;
  v42 = v50;
  *v49 = v17;
  v41[1] = v42;
  v41[2] = v26;
  v41[3] = v29;
  v43 = v51;
  v41[4] = v52;
  v41[5] = v43;
  v41[6] = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void LocationEntity.GeoLocationEntity.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v23 = a1;
  v2 = sub_2428B3558();
  v21 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B3568();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC29A0, &unk_2428B9F70);
  sub_2428B4578();
  sub_2428B36B8();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v3 + 104);
  v14(v6, v13, v2);
  sub_2428B3578();
  v15 = sub_2428B2D88();
  v16 = v22;
  *v22 = v15;
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v21);
  sub_2428B3578();
  v16[1] = sub_2428B2D88();
  v17 = v23;
  [v23 coordinate];
  v24 = v18;
  sub_2428B2C78();
  [v17 coordinate];
  v24 = v19;
  sub_2428B2C78();
}

uint64_t LocationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = sub_2428B3558();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2428B45F8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B3568();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  HIDWORD(v19) = *MEMORY[0x277CC9110];
  v13 = *(v2 + 104);
  v13(v5);
  v20 = v2 + 104;
  v21 = v13;
  sub_2428B3578();
  v23 = v12;
  v14 = sub_2428B2D68();
  v15 = v22;
  *v22 = v14;
  sub_2428B4578();
  sub_2428B36B8();
  v16 = HIDWORD(v19);
  (v13)(v5, HIDWORD(v19), v1);
  sub_2428B3578();
  v15[1] = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2990, &qword_2428B9F68);
  sub_2428B4578();
  sub_2428B36B8();
  v17 = v21;
  (v21)(v5, v16, v1);
  sub_2428B3578();
  sub_242805E10();
  v15[2] = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC29A0, &unk_2428B9F70);
  sub_2428B4578();
  sub_2428B36B8();
  v17(v5, v16, v1);
  sub_2428B3578();
  v15[3] = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v17(v5, v16, v1);
  sub_2428B3578();
  v15[4] = sub_2428B2D78();
  sub_2428B4578();
  sub_2428B36B8();
  v17(v5, v16, v1);
  sub_2428B3578();
  v15[5] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v17(v5, v16, v1);
  sub_2428B3578();
  result = sub_2428B2D68();
  v15[6] = result;
  return result;
}

id LocationEntity.ekStructuredLocation.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = [objc_allocWithZone(MEMORY[0x277CC5AD0]) init];
  sub_2428B2C68();
  if (v20)
  {
    v9 = sub_2428B4608();
  }

  else
  {
    v9 = 0;
  }

  [v8 setTitle_];

  sub_2428B2C68();
  if (v20)
  {
    v10 = sub_2428B4608();
  }

  else
  {
    v10 = 0;
  }

  [v8 setAddress_];

  sub_2428B2C68();
  if (v19)
  {
    sub_2428B2C68();
    sub_2428B2C68();
    v11 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v18 longitude:v18];
    sub_242805E78(v19);
  }

  else
  {
    v11 = 0;
  }

  [v8 setGeoLocation_];

  sub_2428B2C68();
  [v8 setRadius_];
  sub_2428B2C68();
  [v8 setImprecise_];
  sub_2428B2C68();
  if (v20)
  {
    v12 = sub_2428B4608();
  }

  else
  {
    v12 = 0;
  }

  [v8 setContactLabel_];

  sub_2428B2C68();
  v13 = v20;
  if (v20)
  {
    sub_2428B3218();
    v14 = sub_2428B35E8();
    v16 = v15;
    swift_bridgeObjectRelease_n();
    if (v16 >> 60 == 15)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_2428B35F8();
      sub_242805E64(v14, v16);
    }
  }

  [v8 setMapKitHandle_];

  return v8;
}

double LocationEntity.GeoLocationEntity.latitude.getter()
{
  v1 = *v0;
  sub_2428B2C68();
  return v3;
}

double LocationEntity.GeoLocationEntity.longitude.getter()
{
  v1 = *(v0 + 8);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_242804D60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC2978);
  __swift_project_value_buffer(v15, qword_27ECC2978);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t sub_242805084@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2428B3338();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t LocationEntity.GeoLocationEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v24[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  v9 = sub_2428B36C8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B3558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2428B45F8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_2428B3568();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v11, qword_27ECD4500);
  (*(v12 + 16))(v15, v21, v11);
  sub_2428B36B8();
  sub_2428B3578();
  (*(v19 + 56))(v8, 1, 1, v18);
  v22 = sub_2428B3148();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  return sub_2428B3178();
}

uint64_t sub_2428054BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.GeoLocationEntity.latitude.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t sub_2428055E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.GeoLocationEntity.longitude.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t LocationEntity.GeoLocationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B3568();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC29A0, &unk_2428B9F70);
  sub_2428B4578();
  sub_2428B36B8();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v3 + 104);
  v14(v6, v13, v2);
  sub_2428B3578();
  *a1 = sub_2428B2D88();
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  result = sub_2428B2D88();
  a1[1] = result;
  return result;
}

uint64_t sub_2428059E8(uint64_t a1)
{
  v2 = sub_242806750();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_242805A34()
{
  sub_242806750();

  return sub_2428B28C8();
}

uint64_t sub_242805AA4(uint64_t a1)
{
  v2 = sub_242805E10();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242805B08(uint64_t a1)
{
  v2 = sub_24280610C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_242805B58(uint64_t a1)
{
  v2 = sub_2428066FC();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_242805BA4()
{
  sub_2428066FC();

  return sub_2428B28C8();
}

uint64_t sub_242805C14@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2428B3338();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_242805CB0(uint64_t a1)
{
  v2 = sub_242806258();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242805D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2427DC6B4;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_242805DC4(uint64_t a1)
{
  v2 = sub_2428064FC();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_242805E10()
{
  result = qword_27ECC2998;
  if (!qword_27ECC2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2998);
  }

  return result;
}

uint64_t sub_242805E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2427D357C(a1, a2);
  }

  return a1;
}

uint64_t sub_242805E78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_242805EC0()
{
  result = qword_280CDDF00;
  if (!qword_280CDDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF00);
  }

  return result;
}

unint64_t sub_242805F18()
{
  result = qword_280CDDEF0;
  if (!qword_280CDDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEF0);
  }

  return result;
}

unint64_t sub_242805F70()
{
  result = qword_280CDDEC8;
  if (!qword_280CDDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEC8);
  }

  return result;
}

unint64_t sub_24280600C()
{
  result = qword_280CDDEE8;
  if (!qword_280CDDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEE8);
  }

  return result;
}

unint64_t sub_242806060()
{
  result = qword_280CDDEE0;
  if (!qword_280CDDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEE0);
  }

  return result;
}

unint64_t sub_2428060B4()
{
  result = qword_280CDDEF8;
  if (!qword_280CDDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEF8);
  }

  return result;
}

unint64_t sub_24280610C()
{
  result = qword_280CDDED8;
  if (!qword_280CDDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDED8);
  }

  return result;
}

unint64_t sub_242806160()
{
  result = qword_27ECC2358;
  if (!qword_27ECC2358)
  {
    sub_2428B36A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2358);
  }

  return result;
}

unint64_t sub_242806200()
{
  result = qword_280CDDED0;
  if (!qword_280CDDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDED0);
  }

  return result;
}

unint64_t sub_242806258()
{
  result = qword_280CDDEC0;
  if (!qword_280CDDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEC0);
  }

  return result;
}

unint64_t sub_2428062B0()
{
  result = qword_280CDE310;
  if (!qword_280CDE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE310);
  }

  return result;
}

unint64_t sub_242806308()
{
  result = qword_280CDE300;
  if (!qword_280CDE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE300);
  }

  return result;
}

unint64_t sub_242806360()
{
  result = qword_280CDE2D8;
  if (!qword_280CDE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2D8);
  }

  return result;
}

unint64_t sub_2428063FC()
{
  result = qword_280CDE2F8;
  if (!qword_280CDE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2F8);
  }

  return result;
}

unint64_t sub_242806450()
{
  result = qword_280CDE2F0;
  if (!qword_280CDE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2F0);
  }

  return result;
}

unint64_t sub_2428064A4()
{
  result = qword_280CDE308;
  if (!qword_280CDE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE308);
  }

  return result;
}

unint64_t sub_2428064FC()
{
  result = qword_280CDE2E8;
  if (!qword_280CDE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2E8);
  }

  return result;
}

unint64_t sub_242806598()
{
  result = qword_280CDE2E0;
  if (!qword_280CDE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2E0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_242806608(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_242806650(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2428066BC(uint64_t result)
{
  if (result)
  {
    sub_2428B2F38();

    return sub_2428B2F38();
  }

  return result;
}

unint64_t sub_2428066FC()
{
  result = qword_27ECC29E8;
  if (!qword_27ECC29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC29E8);
  }

  return result;
}

unint64_t sub_242806750()
{
  result = qword_27ECC29F0;
  if (!qword_27ECC29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC29F0);
  }

  return result;
}

uint64_t static InternalBuildAssertion._verifyRunningOnInternalBuild()()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {
    return FunctionReplacement();
  }

  sub_2428B2938();
  sub_242806880();
  swift_allocError();
  sub_2428B2928();
  return swift_willThrow();
}

unint64_t sub_242806880()
{
  result = qword_27ECC1A80;
  if (!qword_27ECC1A80)
  {
    sub_2428B2938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1A80);
  }

  return result;
}

uint64_t sub_242806928(void *a1)
{
  v1 = *(*a1 + qword_27ECC2A18);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_24280697C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_242806B64(a1, &v13 - v9);
  v11 = *(*a2 + qword_27ECC2A18);
  sub_242806B64(v10, v8);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_242806BD4(v10);
}

uint64_t sub_242806A64()
{
  v1 = *(v0 + qword_27ECC2A18);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_242806AB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + qword_27ECC2A18);
  sub_242806B64(a1, &v8 - v6);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_242806BD4(a1);
}

uint64_t sub_242806B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242806BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_242806C3C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A18);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242806CEC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A28);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242806D9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A30);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

double sub_242806E34@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + qword_27ECC2A38);
  sub_2428B2F38();
  sub_2428B4328();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_242806E8C(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + qword_27ECC2A38);
  v4 = *a1;
  v5 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_242806EE4()
{
  v1 = *(v0 + qword_27ECC2A38);
  sub_2428B2F38();
  sub_2428B4328();

  return v3;
}

uint64_t sub_242806F30()
{
  v1 = *(v0 + qword_27ECC2A38);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_242806F7C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A38);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_242807014@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + qword_27ECC2A40);
  sub_2428B2F38();
  sub_2428B4328();

  *a2 = v5;
  return result;
}

uint64_t sub_24280706C()
{
  v1 = *(v0 + qword_27ECC2A40);
  sub_2428B2F38();
  sub_2428B4328();

  return v3;
}

uint64_t sub_2428070B8()
{
  v1 = *(v0 + qword_27ECC2A40);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_242807104(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A40);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D4714;
}

uint64_t static AttendeeEntityRepresentation.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v33[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33[-1] - v7;
  type metadata accessor for AttendeeEntityRepresentation();
  sub_2428080B4(&qword_27ECC2A48);
  v9 = sub_2428B41E8();
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v33[3] = v10;
  v33[4] = *(v11 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
  sub_2428A8840(v33, v8);
  v14 = sub_2428B2BD8();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = *(v9 + qword_27ECC2A18);
  sub_242806B64(v8, v6);
  sub_2428B2F38();
  sub_2428B4338();

  sub_242806BD4(v8);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_2428B39D8();
  v18 = 0x605040302010007uLL >> (8 * v17);
  if (v17 >= 8)
  {
    LOBYTE(v18) = 7;
  }

  v19 = *(v9 + qword_27ECC2A28);
  LOBYTE(v33[0]) = v18;
  sub_2428B2F38();
  sub_2428B4338();

  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_2428B39C8();
  v22 = 0x302010004uLL >> (8 * v21);
  if (v21 >= 5)
  {
    LOBYTE(v22) = 4;
  }

  v23 = *(v9 + qword_27ECC2A30);
  LOBYTE(v33[0]) = v22;
  sub_2428B2F38();
  sub_2428B4338();

  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = sub_2428B39E8();
  v26 = *(v9 + qword_27ECC2A38);
  v33[0] = v25;
  v33[1] = v27;
  sub_2428B2F38();
  sub_2428B4338();

  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_2428B39B8() == 2;
  v30 = *(v9 + qword_27ECC2A40);
  LOBYTE(v33[0]) = v29;
  sub_2428B2F38();
  sub_2428B4338();

  return v9;
}

CalendarLink::AttendeeEntityRepresentation::AttendeeEntityParticipantStatusRepresentation_optional __swiftcall AttendeeEntityRepresentation.AttendeeEntityParticipantStatusRepresentation.init(_:)(EKParticipantStatus a1)
{
  v2 = 0x605040302010007uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::AttendeeEntityRepresentation::AttendeeTypeRepresentation_optional __swiftcall AttendeeEntityRepresentation.AttendeeTypeRepresentation.init(_:)(EKParticipantType a1)
{
  v2 = 0x302010004uLL >> (8 * a1);
  if (a1 >= (EKParticipantTypeGroup|EKParticipantTypePerson))
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return a1;
}

uint64_t type metadata accessor for AttendeeEntityRepresentation()
{
  result = qword_27ECC2B58;
  if (!qword_27ECC2B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttendeeEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return AttendeeEntityRepresentation.init(_:)(a1);
}

uint64_t AttendeeEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27ECC2A18;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A50, &qword_2428BA508);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v12 = qword_27ECC2A28;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A58, &qword_2428BA510);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_2428B4308();
  v16 = qword_27ECC2A30;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A60, &unk_2428BA518);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v1 + v16) = sub_2428B4308();
  v20 = qword_27ECC2A38;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E40, &qword_2428B6580);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v20) = sub_2428B4308();
  v24 = qword_27ECC2A40;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A68, &qword_2428BA528);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v1 + v24) = sub_2428B4308();
  (*(v4 + 16))(v7, a1, v3);
  v28 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v28;
}

uint64_t sub_2428077E0()
{
  v1 = *(v0 + qword_27ECC2A18);

  v2 = *(v0 + qword_27ECC2A28);

  v3 = *(v0 + qword_27ECC2A30);

  v4 = *(v0 + qword_27ECC2A38);

  v5 = *(v0 + qword_27ECC2A40);
}

uint64_t AttendeeEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC2A18);

  v2 = *(v0 + qword_27ECC2A28);

  v3 = *(v0 + qword_27ECC2A30);

  v4 = *(v0 + qword_27ECC2A38);

  v5 = *(v0 + qword_27ECC2A40);

  return v0;
}

uint64_t AttendeeEntityRepresentation.__deallocating_deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC2A18);
  sub_2428B2F38();

  v2 = *(v0 + qword_27ECC2A28);

  v3 = *(v0 + qword_27ECC2A30);

  v4 = *(v0 + qword_27ECC2A38);

  v5 = *(v0 + qword_27ECC2A40);

  return swift_deallocClassInstance();
}

uint64_t sub_242807990(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2428079F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242807A44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

CalendarLink::AttendeeEntityRepresentation::AttendeeEntityParticipantStatusRepresentation_optional __swiftcall AttendeeEntityRepresentation.AttendeeEntityParticipantStatusRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242807B64(uint64_t a1)
{
  v2 = sub_242808CBC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_242807BA0(uint64_t a1)
{
  v2 = sub_242808CBC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242807BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428081AC();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_242807C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242808CBC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242807C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428081AC();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

CalendarLink::AttendeeEntityRepresentation::AttendeeTypeRepresentation_optional __swiftcall AttendeeEntityRepresentation.AttendeeTypeRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242807DA0(uint64_t a1)
{
  v2 = sub_242808C68();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_242807DDC(uint64_t a1)
{
  v2 = sub_242808C68();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242807E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_242808498();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_242807E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242808C68();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242807EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_242808498();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_2428080B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttendeeEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2428080FC()
{
  result = qword_27ECC2AB8;
  if (!qword_27ECC2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AB8);
  }

  return result;
}

unint64_t sub_242808154()
{
  result = qword_27ECC2AC0;
  if (!qword_27ECC2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AC0);
  }

  return result;
}

unint64_t sub_2428081AC()
{
  result = qword_27ECC2AC8;
  if (!qword_27ECC2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AC8);
  }

  return result;
}

unint64_t sub_242808204()
{
  result = qword_27ECC2AD0;
  if (!qword_27ECC2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AD0);
  }

  return result;
}

unint64_t sub_24280825C()
{
  result = qword_27ECC2AD8;
  if (!qword_27ECC2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AD8);
  }

  return result;
}

unint64_t sub_2428082E0()
{
  result = qword_27ECC2AF0;
  if (!qword_27ECC2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AF0);
  }

  return result;
}

unint64_t sub_242808338()
{
  result = qword_27ECC2AF8;
  if (!qword_27ECC2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AF8);
  }

  return result;
}

unint64_t sub_242808390()
{
  result = qword_27ECC2B00;
  if (!qword_27ECC2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B00);
  }

  return result;
}

unint64_t sub_2428083E8()
{
  result = qword_27ECC2B08;
  if (!qword_27ECC2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B08);
  }

  return result;
}

unint64_t sub_242808440()
{
  result = qword_27ECC2B10;
  if (!qword_27ECC2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B10);
  }

  return result;
}

unint64_t sub_242808498()
{
  result = qword_27ECC2B18;
  if (!qword_27ECC2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B18);
  }

  return result;
}

unint64_t sub_2428084F0()
{
  result = qword_27ECC2B20;
  if (!qword_27ECC2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B20);
  }

  return result;
}

unint64_t sub_242808548()
{
  result = qword_27ECC2B28;
  if (!qword_27ECC2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B28);
  }

  return result;
}

unint64_t sub_2428085CC()
{
  result = qword_27ECC2B40;
  if (!qword_27ECC2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B40);
  }

  return result;
}

unint64_t sub_242808624()
{
  result = qword_27ECC2B48;
  if (!qword_27ECC2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B48);
  }

  return result;
}

unint64_t sub_24280867C()
{
  result = qword_27ECC2B50;
  if (!qword_27ECC2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B50);
  }

  return result;
}

unint64_t sub_242808C68()
{
  result = qword_27ECC2B68;
  if (!qword_27ECC2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B68);
  }

  return result;
}

unint64_t sub_242808CBC()
{
  result = qword_27ECC2B70;
  if (!qword_27ECC2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B70);
  }

  return result;
}

uint64_t CalendarEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t CalendarEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t CalendarEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalendarEntityRepresentation()
{
  result = qword_27ECC2BC0;
  if (!qword_27ECC2BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242809138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2428091CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242809254(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242809298(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_24280937C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_2428093A0, 0, 0);
}

uint64_t sub_2428093A0()
{
  v1 = *(v0 + 120);
  sub_2428B4248();
  if (*(v0 + 80))
  {
    sub_2427D3564((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(MEMORY[0x277CEB110] + 4);
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_2428094D8;

    return MEMORY[0x28213DD78](v2, v3);
  }

  else
  {
    sub_2427D34A8(v0 + 56);
    sub_2427D3510();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2428094D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v8 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v6 = sub_2427DAE40;
  }

  else
  {
    v6 = sub_2428095F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2428095F0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[14];
  v6 = sub_2428B3458();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_2428B3448();
  sub_2428B3838();
  v9 = sub_2428B37F8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_2428B3218();
  v0[12] = sub_2428B37E8();
  sub_242809CEC(&qword_27ECC2BD0, MEMORY[0x277CF7B38]);
  sub_2428B3428();
  v12 = v0[17];
  v13 = v0[18];

  sub_2427D357C(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v14 = v0[1];

  return v14();
}

uint64_t TransferableCalendarEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t TransferableCalendarEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t TransferableCalendarEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransferableCalendarEntityRepresentation()
{
  result = qword_27ECC2C20;
  if (!qword_27ECC2C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242809BA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242809C50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242809CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242809D34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t dispatch thunk of TransferableCalendarEntityRepresentation.calendar(with:)(uint64_t a1, uint64_t a2)
{
  v9 = (*v2 + class metadata base offset for TransferableCalendarEntityRepresentation);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2427CD274;

  return v10(a1, a2);
}

uint64_t type metadata accessor for Location()
{
  result = qword_27ECC2C30;
  if (!qword_27ECC2C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242809F8C()
{
  result = sub_2428B37C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_24280A010()
{
  v1 = v0;
  v2 = sub_2428B37C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Location();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24280A838(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = v10[1];
    v13 = sub_2428B4608();

    v14 = [objc_opt_self() locationWithTitle_];
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v14 = [objc_allocWithZone(MEMORY[0x277CC5AD0]) init];
    sub_2428B3788();
    if (v15)
    {
      v16 = sub_2428B4608();
    }

    else
    {
      v16 = 0;
    }

    [v14 setTitle_];

    v17 = sub_2428B3798();
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*&v17 longitude:v18];
    }

    [v14 setGeoLocation_];

    sub_2428B37B8();
    if (v21)
    {
      v22 = sub_2428B4608();
    }

    else
    {
      v22 = 0;
    }

    [v14 setAddress_];

    (*(v3 + 8))(v6, v2);
  }

  return v14;
}

uint64_t sub_24280A2A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2C60, &qword_2428BB150);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = type metadata accessor for Location();
  v6 = sub_24280A938();
  MEMORY[0x245D19EE0](v6, v5, &type metadata for Location.PlaceDescriptorResolver, v6);
  v7 = sub_24280A98C();
  MEMORY[0x245D19EE0](v7, v5, &type metadata for Location.StringResolver, v7);
  sub_24280A8F0(&qword_27ECC2C40, type metadata accessor for Location);
  sub_2428B33A8();
  v9[0] = v6;
  v9[1] = &type metadata for Location.PlaceDescriptorResolver;
  sub_2428B3398();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24280A454(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24280A474, 0, 0);
}

uint64_t sub_24280A474()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2428B37C8();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for Location();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24280A564(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_24280A58C, 0, 0);
}

uint64_t sub_24280A58C()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v3 = type metadata accessor for Location();
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v5 = v0[1];
  sub_2428B3218();

  return v5();
}

uint64_t sub_24280A660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2C58, &qword_2428BB148);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2428B7940;
  v1 = sub_2428B37C8();
  v2 = sub_24280A8F0(&qword_27ECC2C50, MEMORY[0x277CCB120]);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_24280A89C();
  *(v0 + 48) = MEMORY[0x277D837D0];
  *(v0 + 56) = v3;
  return v0;
}

unint64_t sub_24280A704@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24280A838(v5, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v7;
    v8 = v7[1];
    a2[3] = MEMORY[0x277D837D0];
    result = sub_24280A89C();
    a2[4] = result;
    *a2 = v9;
    a2[1] = v8;
  }

  else
  {
    v11 = sub_2428B37C8();
    a2[3] = v11;
    a2[4] = sub_24280A8F0(&qword_27ECC2C50, MEMORY[0x277CCB120]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(*(v11 - 8) + 32))(boxed_opaque_existential_1, v7, v11);
  }

  return result;
}

uint64_t sub_24280A838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24280A89C()
{
  result = qword_27ECC2C48;
  if (!qword_27ECC2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C48);
  }

  return result;
}

uint64_t sub_24280A8F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24280A938()
{
  result = qword_27ECC2C68;
  if (!qword_27ECC2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C68);
  }

  return result;
}

unint64_t sub_24280A98C()
{
  result = qword_27ECC2C70;
  if (!qword_27ECC2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C70);
  }

  return result;
}

unint64_t sub_24280AA00()
{
  result = qword_27ECC2C78;
  if (!qword_27ECC2C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC2C80, &qword_2428BB188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C78);
  }

  return result;
}

unint64_t sub_24280AA68()
{
  result = qword_27ECC2C88;
  if (!qword_27ECC2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C88);
  }

  return result;
}

unint64_t sub_24280AAC0()
{
  result = qword_27ECC2C90;
  if (!qword_27ECC2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C90);
  }

  return result;
}

unint64_t sub_24280AB18()
{
  result = qword_27ECC2C98;
  if (!qword_27ECC2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C98);
  }

  return result;
}

unint64_t sub_24280AB74()
{
  result = qword_27ECC2CA0;
  if (!qword_27ECC2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2CA0);
  }

  return result;
}

uint64_t sub_24280AC1C()
{
  v0 = sub_2428B3558();
  __swift_allocate_value_buffer(v0, qword_27ECD4500);
  v1 = __swift_project_value_buffer(v0, qword_27ECD4500);
  *v1 = type metadata accessor for LocalizedStringUtils();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_24280ACB8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v51 = a6;
  v8 = sub_2428B2EF8();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  v16 = sub_2428B30E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B30C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v45 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v46 = &v44 - v26;
  v27 = a1[7];
  v74 = a1[6];
  v75 = v27;
  v28 = a1[9];
  v76 = a1[8];
  v77 = v28;
  v29 = a1[3];
  v70 = a1[2];
  v71 = v29;
  v30 = a1[5];
  v72 = a1[4];
  v73 = v30;
  v31 = a1[1];
  v68 = *a1;
  v69 = v31;
  v64 = v47;
  v65 = v48;
  v66 = v49;
  v67 = v50;
  v32 = v6[7];
  v60 = v6[6];
  v61 = v32;
  v62 = v6[8];
  v63 = *(v6 + 18);
  v33 = v6[3];
  v56 = v6[2];
  v57 = v33;
  v34 = v6[5];
  v58 = v6[4];
  v59 = v34;
  v35 = v6[1];
  v54 = *v6;
  v55 = v35;
  sub_24281E58C();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v17 + 8))(v20, v16);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_2427E0980(v15, &qword_27ECC2F28, &qword_2428BB680);
    v37 = v52;
    v36 = v53;
    (*(v52 + 104))(v11, *MEMORY[0x277CB9F18], v53);
    sub_2427C28E0();
    sub_242822644();
    sub_2428B2BE8();
    return (*(v37 + 8))(v11, v36);
  }

  else
  {
    v39 = v52;
    v40 = v53;
    v41 = v46;
    (*(v22 + 32))(v46, v15, v21);
    v42 = v45;
    (*(v22 + 16))(v45, v41, v21);
    if ((*(v22 + 88))(v42, v21) == *MEMORY[0x277CBA168])
    {
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BF8();
      return (*(v22 + 8))(v41, v21);
    }

    else
    {
      (*(v39 + 104))(v11, *MEMORY[0x277CB9F18], v40);
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BE8();
      (*(v39 + 8))(v11, v40);
      v43 = *(v22 + 8);
      v43(v41, v21);
      return (v43)(v42, v21);
    }
  }
}

uint64_t sub_24280B1C4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v51 = a6;
  v8 = sub_2428B2EF8();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  v16 = sub_2428B30E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B30C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v45 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v46 = &v44 - v26;
  v27 = a1[7];
  v73 = a1[6];
  v74 = v27;
  v28 = a1[9];
  v75 = a1[8];
  v76 = v28;
  v29 = a1[3];
  v69 = a1[2];
  v70 = v29;
  v30 = a1[5];
  v71 = a1[4];
  v72 = v30;
  v31 = a1[1];
  v67 = *a1;
  v68 = v31;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v32 = v6[7];
  v60 = v6[6];
  v61 = v32;
  v62 = v6[8];
  v33 = v6[3];
  v56 = v6[2];
  v57 = v33;
  v34 = v6[5];
  v58 = v6[4];
  v59 = v34;
  v35 = v6[1];
  v54 = *v6;
  v55 = v35;
  sub_242822740();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v17 + 8))(v20, v16);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_2427E0980(v15, &qword_27ECC2F28, &qword_2428BB680);
    v37 = v52;
    v36 = v53;
    (*(v52 + 104))(v11, *MEMORY[0x277CB9F18], v53);
    sub_2427C28E0();
    sub_242822644();
    sub_2428B2BE8();
    return (*(v37 + 8))(v11, v36);
  }

  else
  {
    v39 = v52;
    v40 = v53;
    v41 = v46;
    (*(v22 + 32))(v46, v15, v21);
    v42 = v45;
    (*(v22 + 16))(v45, v41, v21);
    if ((*(v22 + 88))(v42, v21) == *MEMORY[0x277CBA168])
    {
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BF8();
      return (*(v22 + 8))(v41, v21);
    }

    else
    {
      (*(v39 + 104))(v11, *MEMORY[0x277CB9F18], v40);
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BE8();
      (*(v39 + 8))(v11, v40);
      v43 = *(v22 + 8);
      v43(v41, v21);
      return (v43)(v42, v21);
    }
  }
}

uint64_t sub_24280B6C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a4;
  v51 = a5;
  v48 = a2;
  v49 = a3;
  v52 = a6;
  v8 = sub_2428B2EF8();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = sub_2428B30E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B30C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v46 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v47 = &v45 - v26;
  v27 = a1[7];
  v76 = a1[6];
  v77 = v27;
  v28 = a1[9];
  v78 = a1[8];
  v79 = v28;
  v29 = a1[3];
  v72 = a1[2];
  v73 = v29;
  v30 = a1[5];
  v74 = a1[4];
  v75 = v30;
  v31 = a1[1];
  v70 = *a1;
  v71 = v31;
  v66 = v48;
  v67 = v49;
  v68 = v50;
  v69 = v51;
  v32 = v6[9];
  v63 = v6[8];
  v64 = v32;
  v65 = v6[10];
  v33 = v6[5];
  v59 = v6[4];
  v60 = v33;
  v34 = v6[7];
  v61 = v6[6];
  v62 = v34;
  v35 = v6[1];
  v55 = *v6;
  v56 = v35;
  v36 = v6[3];
  v57 = v6[2];
  v58 = v36;
  sub_2428226EC();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v17 + 8))(v20, v16);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_2427E0980(v15, &qword_27ECC2F28, &qword_2428BB680);
    v38 = v53;
    v37 = v54;
    (*(v53 + 104))(v11, *MEMORY[0x277CB9F18], v54);
    sub_2427C28E0();
    sub_242822644();
    sub_2428B2BE8();
    return (*(v38 + 8))(v11, v37);
  }

  else
  {
    v40 = v53;
    v41 = v54;
    v42 = v47;
    (*(v22 + 32))(v47, v15, v21);
    v43 = v46;
    (*(v22 + 16))(v46, v42, v21);
    if ((*(v22 + 88))(v43, v21) == *MEMORY[0x277CBA168])
    {
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BF8();
      return (*(v22 + 8))(v42, v21);
    }

    else
    {
      (*(v40 + 104))(v11, *MEMORY[0x277CB9F18], v41);
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BE8();
      (*(v40 + 8))(v11, v41);
      v44 = *(v22 + 8);
      v44(v42, v21);
      return (v44)(v43, v21);
    }
  }
}

uint64_t sub_24280BBD4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v51 = a6;
  v8 = sub_2428B2EF8();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  v16 = sub_2428B30E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B30C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v45 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v46 = &v44 - v26;
  v27 = a1[7];
  v72 = a1[6];
  v73 = v27;
  v28 = a1[9];
  v74 = a1[8];
  v75 = v28;
  v29 = a1[3];
  v68 = a1[2];
  v69 = v29;
  v30 = a1[5];
  v70 = a1[4];
  v71 = v30;
  v31 = a1[1];
  v66 = *a1;
  v67 = v31;
  v62 = v47;
  v63 = v48;
  v64 = v49;
  v65 = v50;
  v32 = v6[5];
  v58 = v6[4];
  v59 = v32;
  v33 = v6[7];
  v60 = v6[6];
  v61 = v33;
  v34 = v6[1];
  v54 = *v6;
  v55 = v34;
  v35 = v6[3];
  v56 = v6[2];
  v57 = v35;
  sub_2428225F0();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v17 + 8))(v20, v16);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_2427E0980(v15, &qword_27ECC2F28, &qword_2428BB680);
    v37 = v52;
    v36 = v53;
    (*(v52 + 104))(v11, *MEMORY[0x277CB9F18], v53);
    sub_2427C28E0();
    sub_242822644();
    sub_2428B2BE8();
    return (*(v37 + 8))(v11, v36);
  }

  else
  {
    v39 = v52;
    v40 = v53;
    v41 = v46;
    (*(v22 + 32))(v46, v15, v21);
    v42 = v45;
    (*(v22 + 16))(v45, v41, v21);
    if ((*(v22 + 88))(v42, v21) == *MEMORY[0x277CBA168])
    {
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BF8();
      return (*(v22 + 8))(v41, v21);
    }

    else
    {
      (*(v39 + 104))(v11, *MEMORY[0x277CB9F18], v40);
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BE8();
      (*(v39 + 8))(v11, v40);
      v43 = *(v22 + 8);
      v43(v41, v21);
      return (v43)(v42, v21);
    }
  }
}

uint64_t sub_24280C0D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a8;
  v46 = a7;
  v45 = a6;
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v48 = a9;
  v11 = sub_2428B2EF8();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v40 - v17;
  v19 = sub_2428B30E8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2428B30C8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v41 = &v40 - v30;
  v31 = a1[3];
  v60 = a1[2];
  v61 = v31;
  v62 = a1[4];
  v32 = a1[1];
  v58 = *a1;
  v59 = v32;
  v54 = a2;
  v55 = v42;
  v56 = v43;
  v57 = v44;
  v51 = v45;
  v52 = v46;
  v53 = v47;
  sub_242822548();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v20 + 8))(v23, v19);
  if ((*(v25 + 48))(v18, 1, v24) == 1)
  {
    sub_2427E0980(v18, &qword_27ECC2F28, &qword_2428BB680);
    v34 = v49;
    v33 = v50;
    (*(v49 + 104))(v14, *MEMORY[0x277CB9F18], v50);
    sub_2427E3430();
    sub_24282259C();
    sub_2428B2BE8();
    return (*(v34 + 8))(v14, v33);
  }

  else
  {
    v36 = v49;
    v37 = v50;
    v38 = v41;
    (*(v25 + 32))(v41, v18, v24);
    (*(v25 + 16))(v29, v38, v24);
    if ((*(v25 + 88))(v29, v24) == *MEMORY[0x277CBA168])
    {
      sub_2427E3430();
      sub_24282259C();
      sub_2428B2BF8();
      return (*(v25 + 8))(v38, v24);
    }

    else
    {
      (*(v36 + 104))(v14, *MEMORY[0x277CB9F18], v37);
      sub_2427E3430();
      sub_24282259C();
      sub_2428B2BE8();
      (*(v36 + 8))(v14, v37);
      v39 = *(v25 + 8);
      v39(v38, v24);
      return (v39)(v29, v24);
    }
  }
}

uint64_t sub_24280C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24280C694, 0, 0);
}

uint64_t sub_24280C694()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
  v3 = sub_2428B46B8();
  v4 = [objc_opt_self() spanDecisionInfoForEvents_];
  *(v0 + 48) = v4;

  sub_2428B2DC8();
  if (*(v0 + 80))
  {
    if (*(v0 + 80) != 3)
    {
      v14 = [v4 proposeFuture];

      if (v14)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      goto LABEL_14;
    }

    if ([v4 shouldRequestSpan])
    {
      v5 = *(v0 + 40);
      if ([v4 proposeFuture])
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2138, &qword_2428B7958);
      v7 = swift_allocObject();
      *(v0 + 56) = v7;
      *(v7 + 16) = xmmword_2428B7940;
      *(v7 + 32) = 0;
      *(v7 + 33) = v6;
      v8 = sub_2428B2AE8();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      v9 = *(MEMORY[0x277CB9EE0] + 4);
      v10 = swift_task_alloc();
      *(v0 + 64) = v10;
      *v10 = v0;
      v10[1] = sub_24280C8D8;
      v12 = *(v0 + 32);
      v11 = *(v0 + 40);

      return MEMORY[0x28210BA20](v0 + 81, v7, v11);
    }
  }

  v13 = 0;
LABEL_14:
  v15 = *(v0 + 40);
  **(v0 + 16) = v13;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24280C8D8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 72) = v0;

  sub_2427E0980(v4, &qword_27ECC1CA0, &unk_2428B5D80);

  if (v0)
  {
    v5 = sub_242822E80;
  }

  else
  {
    v5 = sub_242822E7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24280CA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24280CADC, 0, 0);
}

uint64_t sub_24280CADC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
  v3 = sub_2428B46B8();
  v4 = [objc_opt_self() spanDecisionInfoForEvents_];
  *(v0 + 48) = v4;

  sub_2428B2DC8();
  if (*(v0 + 80))
  {
    if (*(v0 + 80) != 3)
    {
      v14 = [v4 proposeFuture];

      if (v14)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      goto LABEL_14;
    }

    if ([v4 shouldRequestSpan])
    {
      v5 = *(v0 + 40);
      if ([v4 proposeFuture])
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2138, &qword_2428B7958);
      v7 = swift_allocObject();
      *(v0 + 56) = v7;
      *(v7 + 16) = xmmword_2428B7940;
      *(v7 + 32) = 0;
      *(v7 + 33) = v6;
      v8 = sub_2428B2AE8();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      v9 = *(MEMORY[0x277CB9EE0] + 4);
      v10 = swift_task_alloc();
      *(v0 + 64) = v10;
      *v10 = v0;
      v10[1] = sub_24280CD20;
      v12 = *(v0 + 32);
      v11 = *(v0 + 40);

      return MEMORY[0x28210BA20](v0 + 81, v7, v11);
    }
  }

  v13 = 0;
LABEL_14:
  v15 = *(v0 + 40);
  **(v0 + 16) = v13;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24280CD20()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 72) = v0;

  sub_2427E0980(v4, &qword_27ECC1CA0, &unk_2428B5D80);

  if (v0)
  {
    v5 = sub_2427DE378;
  }

  else
  {
    v5 = sub_2427DE300;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

__n128 sub_24280CEA8@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_2428B2DC8();
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24280CEF4(__int128 *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *a1;
  v19 = a1[1];
  v20 = v2;
  v4 = a1[2];
  v5 = a1[4];
  v21 = a1[3];
  v22 = v5;
  v6 = *(a2 + 112);
  v23[6] = *(a2 + 96);
  v23[7] = v6;
  v23[8] = *(a2 + 128);
  v7 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v7;
  v8 = *(a2 + 80);
  v23[4] = *(a2 + 64);
  v23[5] = v8;
  v9 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v9;
  v10 = *a1;
  v15 = v4;
  v16 = v21;
  v17 = a1[4];
  v18 = v10;
  v24 = *(a2 + 144);
  v13 = v3;
  v14 = v19;
  sub_2427E0918(&v18, v12, &qword_27ECC2248, &unk_2428B7CE0);
  sub_24281E5F8(v23, v12);
  sub_2428B2DD8();
  return sub_24281E630(v23);
}

uint64_t EditEventIntent.calendar.setter(__int128 *a1)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 48);
  return sub_2428B2DD8();
}

uint64_t sub_24280D020(_OWORD *a1, uint64_t a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v23 = a1[6];
  v24 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v25 = a1[8];
  v26 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v19 = a1[2];
  v20 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v21 = a1[4];
  v22 = v9;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v11 = *(a2 + 112);
  v27[6] = *(a2 + 96);
  v27[7] = v11;
  v27[8] = *(a2 + 128);
  v12 = *(a2 + 48);
  v27[2] = *(a2 + 32);
  v27[3] = v12;
  v13 = *(a2 + 80);
  v27[4] = *(a2 + 64);
  v27[5] = v13;
  v14 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v14;
  v17[16] = v23;
  v17[17] = v4;
  v15 = a1[9];
  v17[18] = v25;
  v17[19] = v15;
  v17[12] = v19;
  v17[13] = v8;
  v17[14] = v21;
  v17[15] = v3;
  v28 = *(a2 + 144);
  v17[10] = v18[0];
  v17[11] = v7;
  sub_2427CD4FC(v18, v17);
  sub_24281E5F8(v27, v17);
  sub_2428B2DD8();
  return sub_24281E630(v27);
}

uint64_t EditEventIntent.event.setter(__int128 *a1)
{
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 8);
  return sub_2428B2DD8();
}

uint64_t sub_24280D170()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2428B3568();
  __swift_allocate_value_buffer(v7, qword_27ECC2CB0);
  __swift_project_value_buffer(v7, qword_27ECC2CB0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static EditEventIntent.title.modify())()
{
  if (qword_27ECC1788 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3568();
  __swift_project_value_buffer(v0, qword_27ECC2CB0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24280D474()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3078();
  __swift_allocate_value_buffer(v12, qword_27ECC2CC8);
  __swift_project_value_buffer(v12, qword_27ECC2CC8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3088();
}

uint64_t (*static EditEventIntent.description.modify())()
{
  if (qword_27ECC1790 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC2CC8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t EditEventIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v183 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v156 = v146 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE8, &unk_2428BDEA0);
  v154 = *(v4 - 8);
  v155 = v4;
  v5 = *(v154 + 64);
  MEMORY[0x28223BE20](v4);
  v153 = v146 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v149 = v146 - v9;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BD0, &unk_2428BE2F0);
  v163 = *(v160 - 8);
  v10 = *(v163 + 64);
  MEMORY[0x28223BE20](v160);
  v159 = v146 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v161 = v146 - v14;
  v180 = sub_2428B3298();
  v182 = *(v180 - 8);
  v15 = *(v182 + 64);
  MEMORY[0x28223BE20](v180);
  v179 = v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v164 = v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v178 = v146 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v177 = v146 - v24;
  v25 = sub_2428B3558();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2428B36C8();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2428B45F8();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2428B3568();
  v181 = *(v165 - 8);
  v38 = *(v181 + 64);
  MEMORY[0x28223BE20](v165);
  v176 = v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v194 = 0u;
  v195 = 0u;
  *&v196 = 0;
  sub_2428B2948();
  *v183 = sub_2428B2918();
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v41 = *(v26 + 104);
  v167 = *MEMORY[0x277CC9110];
  v40 = v167;
  v170 = v25;
  v41(v29, v167, v25);
  v171 = v26 + 104;
  v168 = v41;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v41(v29, v40, v25);
  v42 = v177;
  v43 = v37;
  v44 = v33;
  sub_2428B3578();
  v45 = *(v181 + 56);
  v181 += 56;
  v175 = v45;
  v45(v42, 0, 1, v165);
  sub_2427CBC50(&v194);
  v190 = v200;
  v191 = v201;
  v192 = v202;
  v193 = v203;
  v186 = v196;
  v187 = v197;
  v188 = v198;
  v189 = v199;
  v184 = v194;
  v185 = v195;
  v46 = sub_2428B2AE8();
  v172 = v46;
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v169 = v48;
  v173 = v47 + 56;
  v48(v178, 1, 1, v46);
  v48(v164, 1, 1, v46);
  v174 = *MEMORY[0x277CBA308];
  v166 = *(v182 + 104);
  v182 += 104;
  v166(v179);
  sub_2427C2774();
  v183[1] = sub_2428B2E68();
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B4578();
  sub_2428B36B8();
  v49 = v167;
  v50 = v170;
  v51 = v168;
  v168(v29, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v51(v29, v49, v50);
  v52 = v177;
  sub_2428B3578();
  v175(v52, 0, 1, v165);
  v151 = sub_2428B4568();
  v184 = 0uLL;
  v53 = *(v151 - 8);
  v150 = *(v53 + 56);
  v152 = v53 + 56;
  v150(v161, 1, 1, v151);
  v54 = v169;
  v169(v178, 1, 1, v172);
  (v166)(v179, v174, v180);
  v183[2] = sub_2428B2EB8();
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4440, &unk_2428BE300);
  sub_2428B4578();
  sub_2428B36B8();
  v55 = v167;
  v56 = v170;
  v57 = v168;
  v168(v29, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v57(v29, v55, v56);
  v58 = v177;
  sub_2428B3578();
  v175(v58, 0, 1, v165);
  v54(v178, 1, 1, v172);
  v147 = *MEMORY[0x277CB9EF0];
  v59 = *(v163 + 104);
  v163 += 104;
  v148 = v59;
  v59(v159);
  v60 = v166;
  (v166)(v179, v174, v180);
  v183[3] = sub_2428B2E98();
  sub_2428B4578();
  sub_2428B36B8();
  v61 = v167;
  v62 = v170;
  v63 = v168;
  v168(v29, v167, v170);
  v64 = v43;
  v65 = v44;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v63(v29, v61, v62);
  v66 = v177;
  v67 = v64;
  sub_2428B3578();
  v68 = v165;
  v175(v66, 0, 1, v165);
  v169(v178, 1, 1, v172);
  v148(v159, v147, v160);
  (v60)(v179, v174, v180);
  v183[4] = sub_2428B2E98();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D20, &qword_2428BB328);
  sub_2428B4578();
  sub_2428B36B8();
  v69 = v167;
  v70 = v170;
  v71 = v168;
  v168(v29, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v71(v29, v69, v70);
  v72 = v177;
  sub_2428B3578();
  v175(v72, 0, 1, v68);
  LOBYTE(v184) = 2;
  v73 = sub_2428B4718();
  (*(*(v73 - 8) + 56))(v149, 1, 1, v73);
  v169(v178, 1, 1, v172);
  (v166)(v179, v174, v180);
  v183[5] = sub_2428B2EC8();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D28, &unk_2428BDEE0);
  sub_2428B4578();
  sub_2428B36B8();
  v74 = v167;
  v75 = v170;
  v76 = v168;
  v168(v29, v167, v170);
  sub_2428B3578();
  v146[1] = v67;
  sub_2428B4578();
  sub_2428B36B8();
  v76(v29, v74, v75);
  v77 = v177;
  v78 = v29;
  sub_2428B3578();
  v79 = v165;
  v175(v77, 0, 1, v165);
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v184 = 0u;
  v80 = v172;
  v81 = v169;
  v169(v178, 1, 1, v172);
  v81(v164, 1, 1, v80);
  (v166)(v179, v174, v180);
  sub_2427FE688();
  v183[6] = sub_2428B2E68();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3890, &unk_2428BDF10);
  sub_2428B4578();
  sub_2428B36B8();
  v82 = v167;
  v83 = v170;
  v84 = v168;
  v168(v78, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  v157 = v65;
  sub_2428B36B8();
  v84(v78, v82, v83);
  v85 = v177;
  sub_2428B3578();
  v175(v85, 0, 1, v79);
  LOBYTE(v184) = 4;
  v86 = v172;
  v87 = v169;
  v169(v178, 1, 1, v172);
  v87(v164, 1, 1, v86);
  (v166)(v179, v174, v180);
  sub_24281E43C();
  v183[7] = sub_2428B2E38();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D38, &unk_2428BE310);
  sub_2428B4578();
  sub_2428B36B8();
  v88 = v167;
  v89 = v170;
  v90 = v168;
  v168(v78, v167, v170);
  v91 = v78;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v90(v78, v88, v89);
  v92 = v177;
  sub_2428B3578();
  v175(v92, 0, 1, v165);
  LOBYTE(v184) = 3;
  v93 = v172;
  v94 = v169;
  v169(v178, 1, 1, v172);
  v94(v164, 1, 1, v93);
  (v166)(v179, v174, v180);
  sub_24281E490();
  v183[8] = sub_2428B2E38();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38A0, &unk_2428C16A0);
  sub_2428B4578();
  sub_2428B36B8();
  v95 = v167;
  v96 = v170;
  v97 = v168;
  v168(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v97(v91, v95, v96);
  v98 = v177;
  sub_2428B3578();
  v175(v98, 0, 1, v165);
  LOBYTE(v184) = 5;
  v99 = v172;
  v100 = v169;
  v169(v178, 1, 1, v172);
  v100(v164, 1, 1, v99);
  (v166)(v179, v174, v180);
  sub_24281E4E4();
  v183[9] = sub_2428B2E38();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D48, &qword_2428C15F0);
  sub_2428B4578();
  sub_2428B36B8();
  v101 = v167;
  v102 = v170;
  v103 = v168;
  v168(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v103(v91, v101, v102);
  v104 = v177;
  sub_2428B3578();
  v175(v104, 0, 1, v165);
  v169(v178, 1, 1, v172);
  (v166)(v179, v174, v180);
  sub_242822E34(&unk_27ECC2D50, type metadata accessor for Location);
  v183[10] = sub_2428B2E18();
  sub_2428B4578();
  sub_2428B36B8();
  v105 = v170;
  v106 = v168;
  v168(v91, v101, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v106(v91, v101, v105);
  v107 = v177;
  sub_2428B3578();
  v175(v107, 0, 1, v165);
  v184 = 0uLL;
  v150(v161, 1, 1, v151);
  v169(v178, 1, 1, v172);
  (v166)(v179, v174, v180);
  v183[11] = sub_2428B2EB8();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4450, &unk_2428C15E0);
  sub_2428B4578();
  sub_2428B36B8();
  v108 = v167;
  v109 = v170;
  v110 = v168;
  v168(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v110(v91, v108, v109);
  v111 = v177;
  sub_2428B3578();
  v112 = v165;
  v175(v111, 0, 1, v165);
  v169(v178, 1, 1, v172);
  (v166)(v179, v174, v180);
  v183[12] = sub_2428B2EA8();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D60, &unk_2428BDF20);
  sub_2428B4578();
  sub_2428B36B8();
  v113 = v167;
  v114 = v170;
  v110(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v110(v91, v113, v114);
  v115 = v177;
  sub_2428B3578();
  v175(v115, 0, 1, v112);
  *&v184 = 0;
  BYTE8(v184) = 1;
  v169(v178, 1, 1, v172);
  (*(v154 + 104))(v153, *MEMORY[0x277CB9ED0], v155);
  v116 = v166;
  (v166)(v179, v174, v180);
  v183[13] = sub_2428B2ED8();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4470, &qword_2428C1600);
  sub_2428B4578();
  sub_2428B36B8();
  v117 = v167;
  v118 = v170;
  v119 = v168;
  v168(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v119(v91, v117, v118);
  v120 = v177;
  sub_2428B3578();
  v121 = v165;
  v175(v120, 0, 1, v165);
  v169(v178, 1, 1, v172);
  (v116)(v179, v174, v180);
  sub_242822E34(&unk_27ECC2D70, type metadata accessor for AlarmTrigger);
  v183[14] = sub_2428B2E18();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3980, &unk_2428C16B0);
  sub_2428B4578();
  sub_2428B36B8();
  v122 = v167;
  v123 = v170;
  v124 = v168;
  v168(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v124(v91, v122, v123);
  v125 = v177;
  sub_2428B3578();
  v175(v125, 0, 1, v121);
  v126 = sub_2428B35D8();
  (*(*(v126 - 8) + 56))(v156, 1, 1, v126);
  v169(v178, 1, 1, v172);
  (v166)(v179, v174, v180);
  v183[15] = sub_2428B2E88();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D80, &qword_2428BB330);
  sub_2428B4578();
  sub_2428B36B8();
  v127 = v167;
  v128 = v170;
  v129 = v168;
  v168(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v129(v91, v127, v128);
  v130 = v177;
  sub_2428B3578();
  v175(v130, 0, 1, v165);
  LOBYTE(v184) = 7;
  v131 = v172;
  v132 = v169;
  v169(v178, 1, 1, v172);
  v132(v164, 1, 1, v131);
  (v166)(v179, v174, v180);
  sub_2427E5D08();
  v183[16] = sub_2428B2E38();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D90, &qword_2428BB338);
  sub_2428B4578();
  sub_2428B36B8();
  v133 = v167;
  v134 = v170;
  v135 = v168;
  v168(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v135(v91, v133, v134);
  v136 = v177;
  sub_2428B3578();
  v175(v136, 0, 1, v165);
  *&v184 = 0;
  v137 = v172;
  v138 = v169;
  v169(v178, 1, 1, v172);
  v138(v164, 1, 1, v137);
  (v166)(v179, v174, v180);
  sub_2427EB740();
  v183[17] = sub_2428B2E68();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DA0, &qword_2428BE810);
  sub_2428B4578();
  sub_2428B36B8();
  v139 = v167;
  v140 = v170;
  v141 = v168;
  v168(v91, v167, v170);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v141(v91, v139, v140);
  v142 = v177;
  sub_2428B3578();
  v175(v142, 0, 1, v165);
  LOBYTE(v184) = 3;
  v143 = v172;
  v144 = v169;
  v169(v178, 1, 1, v172);
  v144(v164, 1, 1, v143);
  (v166)(v179, v174, v180);
  sub_24281E538();
  result = sub_2428B2E38();
  v183[18] = result;
  return result;
}

uint64_t EditEventIntent.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_242810320(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[19] = v2;
  sub_24281E5F8(v9, v8);
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return sub_24281E630(v9);
}

uint64_t EditEventIntent.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*EditEventIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t (*EditEventIntent.event.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent.title.getter()
{
  v1 = *(v0 + 16);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242810554(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 112);
  v12[6] = *(a2 + 96);
  v12[7] = v4;
  v12[8] = *(a2 + 128);
  v13 = *(a2 + 144);
  v5 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v5;
  v6 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v6;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v10 = v3;
  v11 = v2;
  sub_2428B3218();
  sub_24281E5F8(v12, v9);
  sub_2428B2DD8();
  return sub_24281E630(v12);
}

uint64_t (*EditEventIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428106C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2427E0918(a1, &v16 - v9, &qword_27ECC26F0, &unk_2428B7960);
  v11 = *(a2 + 112);
  v18[6] = *(a2 + 96);
  v18[7] = v11;
  v18[8] = *(a2 + 128);
  v19 = *(a2 + 144);
  v12 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v12;
  v13 = *(a2 + 80);
  v18[4] = *(a2 + 64);
  v18[5] = v13;
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_24281E5F8(v18, &v17);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  return sub_24281E630(v18);
}

uint64_t EditEventIntent.startDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 24);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntent.startDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242810990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2427E0918(a1, &v16 - v9, &qword_27ECC26F0, &unk_2428B7960);
  v11 = *(a2 + 112);
  v18[6] = *(a2 + 96);
  v18[7] = v11;
  v18[8] = *(a2 + 128);
  v19 = *(a2 + 144);
  v12 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v12;
  v13 = *(a2 + 80);
  v18[4] = *(a2 + 64);
  v18[5] = v13;
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_24281E5F8(v18, &v17);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  return sub_24281E630(v18);
}

uint64_t EditEventIntent.endDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 32);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntent.endDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent.isAllDay.getter()
{
  v1 = *(v0 + 40);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242810C68(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.isAllDay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t (*EditEventIntent.calendar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242810E6C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t EditEventIntent.privacyLevel.setter(char *a1)
{
  v2 = *(v1 + 56);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent.privacyLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242810FDC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t EditEventIntent.status.setter(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24281114C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t EditEventIntent.availability.setter(char *a1)
{
  v2 = *(v1 + 72);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent.availability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent.note.getter()
{
  v1 = *(v0 + 88);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_2428112F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 112);
  v12[6] = *(a2 + 96);
  v12[7] = v4;
  v12[8] = *(a2 + 128);
  v13 = *(a2 + 144);
  v5 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v5;
  v6 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v6;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v10 = v3;
  v11 = v2;
  sub_2428B3218();
  sub_24281E5F8(v12, v9);
  sub_2428B2DD8();
  return sub_24281E630(v12);
}

uint64_t (*EditEventIntent.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242811464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2427E0918(a1, &v16 - v9, &qword_27ECC44A0, &qword_2428C16C0);
  v11 = *(a2 + 112);
  v18[6] = *(a2 + 96);
  v18[7] = v11;
  v18[8] = *(a2 + 128);
  v19 = *(a2 + 144);
  v12 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v12;
  v13 = *(a2 + 80);
  v18[4] = *(a2 + 64);
  v18[5] = v13;
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC44A0, &qword_2428C16C0);
  sub_24281E5F8(v18, &v17);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC44A0, &qword_2428C16C0);
  return sub_24281E630(v18);
}

uint64_t EditEventIntent.recurrence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 96);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t (*EditEventIntent.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t EditEventIntent.travelTime.getter()
{
  v1 = *(v0 + 104);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242811740(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 112);
  v12[6] = *(a2 + 96);
  v12[7] = v4;
  v12[8] = *(a2 + 128);
  v13 = *(a2 + 144);
  v5 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v5;
  v6 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v6;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v10 = v2;
  v11 = v3;
  sub_24281E5F8(v12, v9);
  sub_2428B2DD8();
  return sub_24281E630(v12);
}

uint64_t (*EditEventIntent.travelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 104);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428118C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2427E0918(a1, &v16 - v9, &qword_27ECC2CE0, &qword_2428B6560);
  v11 = *(a2 + 112);
  v18[6] = *(a2 + 96);
  v18[7] = v11;
  v18[8] = *(a2 + 128);
  v19 = *(a2 + 144);
  v12 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v12;
  v13 = *(a2 + 80);
  v18[4] = *(a2 + 64);
  v18[5] = v13;
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC2CE0, &qword_2428B6560);
  sub_24281E5F8(v18, &v17);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_24281E630(v18);
}

uint64_t EditEventIntent.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 120);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EditEventIntent.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 120);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242811B88(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t EditEventIntent.participationStatus.setter(char *a1)
{
  v2 = *(v1 + 128);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent.participationStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent.attendees.getter()
{
  v1 = *(v0 + 136);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242811D08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[19] = v2;
  sub_2428B3218();
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.attendees.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242811E78(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t EditEventIntent.span.setter(char *a1)
{
  v2 = *(v1 + 144);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent.span.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 144);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static EditEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DB0, &qword_2428BB340);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DB8, &qword_2428BB348);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_24281E58C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DC8, &qword_2428BB378);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242812178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}