uint64_t sub_1CFC7A838(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return v9(a1, a2);
}

void sub_1CFC7A9D0()
{
  if (!qword_1EE04D0C8)
  {
    type metadata accessor for RecentsStyleListCell();
    sub_1CFC9C448();
    v0 = sub_1CFC9FB78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D0C8);
    }
  }
}

void sub_1CFC7AA38()
{
  if (!qword_1EE04D0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE528, &qword_1CFCA4670);
    v0 = sub_1CFC9FEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D0C0);
    }
  }
}

void sub_1CFC7AA9C()
{
  if (!qword_1EE04D080)
  {
    type metadata accessor for SectionHeaderView();
    v0 = sub_1CFC9FB98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D080);
    }
  }
}

unint64_t sub_1CFC7AB08()
{
  result = qword_1EC4EFE28;
  if (!qword_1EC4EFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFE28);
  }

  return result;
}

uint64_t sub_1CFC7AB5C(uint64_t a1)
{
  result = sub_1CFBB240C(&qword_1EE04F4F8, type metadata accessor for RecentsSectionController);
  *(a1 + 8) = result;
  return result;
}

void *sub_1CFC7AC24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEC8, &qword_1CFCA87E0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFED0, &qword_1CFCA87E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFC7AD58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED610, &qword_1CFCA24F0);
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

void *sub_1CFC7AE78(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFED8, &unk_1CFCA87F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED618, &qword_1CFCA24F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFC7AFC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED598, &unk_1CFCA2490);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFC7B110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED590, &qword_1CFCA2488);
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

char *sub_1CFC7B248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
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

char *sub_1CFC7B3B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE38, &unk_1CFCA8608);
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

void *sub_1CFC7B4C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB8, &unk_1CFCA7C40);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED550, &qword_1CFCA2458);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1CFC7B620(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_1CFC7B7FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1CFC7B8BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5F0, &qword_1CFCA24D8);
  v2 = *v0;
  v3 = sub_1CFCA0218();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 48 * v17;
        sub_1CFBCCD6C(*(v2 + 48) + 48 * v17, v23);
        v17 *= 40;
        sub_1CFBB94B0(*(v2 + 56) + v17, v22);
        v19 = (*(v4 + 48) + v18);
        v20 = v23[0];
        v21 = v23[2];
        v19[1] = v23[1];
        v19[2] = v21;
        *v19 = v20;
        result = sub_1CFBAD070(v22, *(v4 + 56) + v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_1CFC7BA60()
{
  v1 = v0;
  v36 = sub_1CFC9C008();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAB8, &qword_1CFCA2EE0);
  v4 = *v0;
  v5 = sub_1CFCA0218();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1CFC7BCE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAA8, &qword_1CFCA2ED0);
  v2 = *v0;
  v3 = sub_1CFCA0218();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1CFC7BE58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA88, &unk_1CFCA2D30);
  v2 = *v0;
  v3 = sub_1CFCA0218();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1CFC7BFA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5F0, &qword_1CFCA24D8);
  result = sub_1CFCA0228();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 48 * v23);
      if (a2)
      {
        v25 = *v24;
        v26 = v24[2];
        v39 = v24[1];
        v40 = v26;
        v38 = v25;
        sub_1CFBAD070((*(v5 + 56) + 40 * v23), v37);
      }

      else
      {
        sub_1CFBCCD6C(v24, &v38);
        sub_1CFBB94B0(*(v5 + 56) + 40 * v23, v37);
      }

      v27 = *(v8 + 40);
      sub_1CFCA0338();
      sub_1CFCA0068();
      MEMORY[0x1D3872880](*(&v40 + 1));
      result = sub_1CFCA0378();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 48 * v16);
      v18 = v38;
      v19 = v40;
      v17[1] = v39;
      v17[2] = v19;
      *v17 = v18;
      result = sub_1CFBAD070(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1CFC7C288(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1CFC9C008();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAB8, &qword_1CFCA2EE0);
  v46 = a2;
  result = sub_1CFCA0228();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_1CFCA0338();
      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1CFC7C608(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAA8, &qword_1CFCA2ED0);
  v40 = a2;
  result = sub_1CFCA0228();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1CFCA0338();
      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1CFC7C8C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA88, &unk_1CFCA2D30);
  result = sub_1CFCA0228();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1CFCA0328();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1CFC7CB2C(void **a1)
{
  v2 = *(sub_1CFC9C448() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CFBA5EC4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1CFC7CBD4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1CFC7CBD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CFCA0278();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CFC9C448();
        v6 = sub_1CFC9F8E8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1CFC9C448() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CFC7D0DC(v8, v9, a1, v4);
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
    return sub_1CFC7CD00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CFC7CD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v44 - v13;
  v14 = sub_1CFC9C448();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v54 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v44 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v44 - v21;
  v46 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v58 = *(v22 + 16);
    v59 = v22 + 16;
    v25 = *(v22 + 72);
    v55 = (v22 + 8);
    v56 = &v44 - v21;
    v26 = v24 + v25 * (a3 - 1);
    v51 = -v25;
    v52 = (v22 + 32);
    v27 = a1 - a3;
    v53 = v24;
    v45 = v25;
    v28 = v24 + v25 * a3;
    v57 = v14;
LABEL_5:
    v49 = v26;
    v50 = a3;
    v47 = v28;
    v48 = v27;
    while (1)
    {
      v61 = v27;
      v29 = v58;
      v58(v23, v28, v14);
      v30 = v60;
      v29(v60, v26, v14);
      v31 = v62;
      sub_1CFC9C3A8();
      v32 = v30;
      v33 = sub_1CFC9BFB8();
      v34 = *(v33 - 8);
      v35 = *(v34 + 48);
      result = v35(v31, 1, v33);
      if (result == 1)
      {
        break;
      }

      sub_1CFC9C3A8();
      result = v35(v12, 1, v33);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v36 = v62;
      v37 = sub_1CFC9BF78();
      v38 = *(v34 + 8);
      v38(v12, v33);
      v38(v36, v33);
      v39 = *v55;
      v14 = v57;
      (*v55)(v32, v57);
      v23 = v56;
      result = v39(v56, v14);
      v40 = v61;
      if (v37)
      {
        if (!v53)
        {
          goto LABEL_15;
        }

        v41 = *v52;
        v42 = v54;
        (*v52)(v54, v28, v14);
        swift_arrayInitWithTakeFrontToBack();
        result = (v41)(v26, v42, v14);
        v26 += v51;
        v28 += v51;
        v43 = __CFADD__(v40, 1);
        v27 = v40 + 1;
        if (!v43)
        {
          continue;
        }
      }

      a3 = v50 + 1;
      v26 = v49 + v45;
      v27 = v48 - 1;
      v28 = v47 + v45;
      if (v50 + 1 == v46)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFC7D0DC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v186 = &v152 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v152 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v173 = &v152 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v153 = &v152 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v152 - v22;
  v183 = sub_1CFC9C448();
  v23 = *(v183 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x1EEE9AC00](v183);
  v164 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v177 = &v152 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v152 = &v152 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v185 = &v152 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v172 = &v152 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v154 = &v152 - v37;
  result = MEMORY[0x1EEE9AC00](v36);
  v158 = &v152 - v40;
  v41 = a3[1];
  if (v41 >= 1)
  {
    v157 = a4;
    v167 = v39;
    v42 = 0;
    v181 = (v23 + 1);
    v182 = v23 + 2;
    v180 = v23 + 4;
    v43 = MEMORY[0x1E69E7CC0];
    v162 = a3;
    v155 = v23;
    v179 = v12;
    v166 = v17;
    while (1)
    {
      v44 = v42;
      v165 = v43;
      if (v42 + 1 >= v41)
      {
        v61 = v42 + 1;
        v75 = v157;
      }

      else
      {
        v174 = v41;
        v45 = *a3;
        v46 = v23[9];
        v47 = v23[2];
        v184 = &v45[v46 * (v42 + 1)];
        v48 = v183;
        (v47)(v158);
        v161 = v42;
        v176 = v46;
        v178 = v45;
        v49 = v154;
        v171 = v47;
        (v47)(v154, &v45[v46 * v42], v48);
        v50 = v159;
        sub_1CFC9C3A8();
        v51 = sub_1CFC9BFB8();
        v52 = *(v51 - 8);
        v53 = v52 + 48;
        v12 = *(v52 + 48);
        result = (v12)(v50, 1, v51);
        if (result == 1)
        {
          goto LABEL_145;
        }

        v156 = v5;
        v54 = v153;
        sub_1CFC9C3A8();
        result = (v12)(v54, 1, v51);
        if (result == 1)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v55 = v159;
        LODWORD(v175) = sub_1CFC9BF78();
        v56 = *(v52 + 8);
        v56(v54, v51);
        v169 = v56;
        v170 = v52 + 8;
        v56(v55, v51);
        v17 = v181;
        v57 = *v181;
        v58 = v183;
        (*v181)(v49, v183);
        v168 = v57;
        result = (v57)(v158, v58);
        v59 = (v161 + 2);
        v60 = &v178[v176 * (v161 + 2)];
        v61 = v174;
        while (v61 != v59)
        {
          v178 = v59;
          v62 = v12;
          v63 = v51;
          v64 = v53;
          v65 = v171;
          (v171)(v172, v60, v58);
          v66 = v167;
          v65(v167, v184, v58);
          v53 = v64;
          v51 = v63;
          v12 = v62;
          v67 = v173;
          sub_1CFC9C3A8();
          result = v62(v67, 1, v51);
          if (result == 1)
          {
            goto LABEL_140;
          }

          v68 = v166;
          sub_1CFC9C3A8();
          v69 = v68;
          result = v62(v68, 1, v51);
          if (result == 1)
          {
            goto LABEL_139;
          }

          v70 = v173;
          v71 = sub_1CFC9BF78();
          v72 = v69;
          v17 = v71 & 1;
          v73 = v169;
          (v169)(v72, v51);
          v73(v70, v51);
          v58 = v183;
          v74 = v168;
          v168(v66, v183);
          result = v74(v172, v58);
          v59 = v178 + 1;
          v60 += v176;
          v184 += v176;
          v61 = v174;
          if ((v175 & 1) != v17)
          {
            v61 = v178;
            break;
          }
        }

        v5 = v156;
        a3 = v162;
        v23 = v155;
        v75 = v157;
        v43 = v165;
        v44 = v161;
        if (v175)
        {
          if (v61 < v161)
          {
            goto LABEL_132;
          }

          if (v161 < v61)
          {
            v17 = v176 * (v61 - 1);
            v76 = v61 * v176;
            v174 = v61;
            v77 = v61;
            v78 = v161;
            v79 = v161 * v176;
            do
            {
              if (v78 != --v77)
              {
                v81 = v5;
                v82 = *a3;
                if (!*a3)
                {
                  goto LABEL_142;
                }

                v12 = &v82[v79];
                v184 = *v180;
                (v184)(v164, &v82[v79], v183, v43);
                if (v79 < v17 || v12 >= &v82[v76])
                {
                  v80 = v183;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v80 = v183;
                  if (v79 != v17)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                result = (v184)(&v82[v17], v164, v80);
                v5 = v81;
                a3 = v162;
                v43 = v165;
              }

              ++v78;
              v17 -= v176;
              v76 -= v176;
              v79 += v176;
            }

            while (v78 < v77);
            v23 = v155;
            v75 = v157;
            v44 = v161;
            v61 = v174;
          }
        }
      }

      v83 = a3[1];
      if (v61 >= v83)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v61, v44))
      {
        goto LABEL_131;
      }

      if (v61 - v44 >= v75)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v44, v75))
      {
        goto LABEL_133;
      }

      if (v44 + v75 >= v83)
      {
        v12 = a3[1];
      }

      else
      {
        v12 = v44 + v75;
      }

      if (v12 < v44)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        result = sub_1CFC7E7DC(v17);
        goto LABEL_105;
      }

      if (v61 == v12)
      {
LABEL_36:
        v12 = v61;
        if (v61 < v44)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v156 = v5;
        v129 = *a3;
        v130 = v23[9];
        v178 = v23[2];
        v131 = &v129[v130 * (v61 - 1)];
        v175 = -v130;
        v161 = v44;
        v132 = v44 - v61;
        v176 = v129;
        v163 = v130;
        v133 = &v129[v61 * v130];
        v134 = v183;
        v135 = v152;
        v168 = v12;
        do
        {
          v174 = v61;
          v169 = v133;
          v170 = v132;
          v136 = v133;
          v171 = v131;
          do
          {
            v137 = v178;
            (v178)(v185, v136, v134, v43);
            v137(v135, v131, v134);
            v138 = v186;
            sub_1CFC9C3A8();
            v139 = sub_1CFC9BFB8();
            v140 = *(v139 - 8);
            v17 = v135;
            v141 = *(v140 + 48);
            result = v141(v138, 1, v139);
            if (result == 1)
            {
              goto LABEL_137;
            }

            v142 = v179;
            sub_1CFC9C3A8();
            result = v141(v142, 1, v139);
            if (result == 1)
            {
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
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
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            v143 = v186;
            LODWORD(v184) = sub_1CFC9BF78();
            v144 = *(v140 + 8);
            v144(v142, v139);
            v144(v143, v139);
            v145 = *v181;
            v134 = v183;
            (*v181)(v17, v183);
            result = (v145)(v185, v134);
            v135 = v17;
            if ((v184 & 1) == 0)
            {
              break;
            }

            if (!v176)
            {
              goto LABEL_138;
            }

            v17 = *v180;
            v146 = v177;
            (*v180)(v177, v136, v134);
            swift_arrayInitWithTakeFrontToBack();
            (v17)(v131, v146, v134);
            v131 += v175;
            v136 += v175;
          }

          while (!__CFADD__(v132++, 1));
          v61 = v174 + 1;
          v131 = &v171[v163];
          v132 = v170 - 1;
          v12 = v168;
          v133 = &v169[v163];
        }

        while ((v174 + 1) != v168);
        v5 = v156;
        a3 = v162;
        v23 = v155;
        v44 = v161;
        if (v168 < v161)
        {
          goto LABEL_130;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v168 = v12;
      if (result)
      {
        v43 = v165;
      }

      else
      {
        result = sub_1CFBB2468(0, *(v165 + 2) + 1, 1, v165, &qword_1EC4EFE78, &qword_1CFCA86E8);
        v43 = result;
      }

      v12 = *(v43 + 2);
      v84 = *(v43 + 3);
      v17 = v12 + 1;
      if (v12 >= v84 >> 1)
      {
        result = sub_1CFBB2468((v84 > 1), v12 + 1, 1, v43, &qword_1EC4EFE78, &qword_1CFCA86E8);
        v43 = result;
      }

      *(v43 + 2) = v17;
      v85 = &v43[16 * v12];
      v86 = v168;
      *(v85 + 4) = v44;
      *(v85 + 5) = v86;
      if (!*v160)
      {
        goto LABEL_144;
      }

      if (v12)
      {
        v87 = *v160;
        while (1)
        {
          v12 = v17 - 1;
          if (v17 >= 4)
          {
            break;
          }

          if (v17 == 3)
          {
            v88 = *(v43 + 4);
            v89 = *(v43 + 5);
            v98 = __OFSUB__(v89, v88);
            v90 = v89 - v88;
            v91 = v98;
LABEL_57:
            if (v91)
            {
              goto LABEL_119;
            }

            v104 = &v43[16 * v17];
            v106 = *v104;
            v105 = *(v104 + 1);
            v107 = __OFSUB__(v105, v106);
            v108 = v105 - v106;
            v109 = v107;
            if (v107)
            {
              goto LABEL_122;
            }

            v110 = &v43[16 * v12 + 32];
            v112 = *v110;
            v111 = *(v110 + 1);
            v98 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v98)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v108, v113))
            {
              goto LABEL_126;
            }

            if (v108 + v113 >= v90)
            {
              if (v90 < v113)
              {
                v12 = v17 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v114 = &v43[16 * v17];
          v116 = *v114;
          v115 = *(v114 + 1);
          v98 = __OFSUB__(v115, v116);
          v108 = v115 - v116;
          v109 = v98;
LABEL_71:
          if (v109)
          {
            goto LABEL_121;
          }

          v117 = &v43[16 * v12];
          v119 = *(v117 + 4);
          v118 = *(v117 + 5);
          v98 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v98)
          {
            goto LABEL_124;
          }

          if (v120 < v108)
          {
            goto LABEL_3;
          }

LABEL_78:
          v125 = v12 - 1;
          if (v12 - 1 >= v17)
          {
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
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          if (!*a3)
          {
            goto LABEL_141;
          }

          v126 = v43;
          v17 = *&v43[16 * v125 + 32];
          v127 = *&v43[16 * v12 + 40];
          sub_1CFC7DF94(*a3 + v23[9] * v17, *a3 + v23[9] * *&v43[16 * v12 + 32], *a3 + v23[9] * v127, v87);
          if (v5)
          {
          }

          if (v127 < v17)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_1CFC7E7DC(v126);
          }

          if (v125 >= *(v126 + 2))
          {
            goto LABEL_116;
          }

          v128 = &v126[16 * v125];
          *(v128 + 4) = v17;
          *(v128 + 5) = v127;
          v187 = v126;
          result = sub_1CFBB26AC(v12);
          v43 = v187;
          v17 = *(v187 + 16);
          if (v17 <= 1)
          {
            goto LABEL_3;
          }
        }

        v92 = &v43[16 * v17 + 32];
        v93 = *(v92 - 64);
        v94 = *(v92 - 56);
        v98 = __OFSUB__(v94, v93);
        v95 = v94 - v93;
        if (v98)
        {
          goto LABEL_117;
        }

        v97 = *(v92 - 48);
        v96 = *(v92 - 40);
        v98 = __OFSUB__(v96, v97);
        v90 = v96 - v97;
        v91 = v98;
        if (v98)
        {
          goto LABEL_118;
        }

        v99 = &v43[16 * v17];
        v101 = *v99;
        v100 = *(v99 + 1);
        v98 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v98)
        {
          goto LABEL_120;
        }

        v98 = __OFADD__(v90, v102);
        v103 = v90 + v102;
        if (v98)
        {
          goto LABEL_123;
        }

        if (v103 >= v95)
        {
          v121 = &v43[16 * v12 + 32];
          v123 = *v121;
          v122 = *(v121 + 1);
          v98 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v98)
          {
            goto LABEL_127;
          }

          if (v90 < v124)
          {
            v12 = v17 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v41 = a3[1];
      v42 = v168;
      if (v168 >= v41)
      {
        goto LABEL_102;
      }
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_102:
  v12 = *v160;
  if (*v160)
  {
    v17 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_135;
    }

    result = v17;
LABEL_105:
    v187 = result;
    v17 = *(result + 16);
    if (v17 >= 2)
    {
      while (*a3)
      {
        v148 = *(result + 16 * v17);
        v149 = result;
        v150 = *(result + 16 * (v17 - 1) + 40);
        sub_1CFC7DF94(*a3 + v23[9] * v148, *a3 + v23[9] * *(result + 16 * (v17 - 1) + 32), *a3 + v23[9] * v150, v12);
        if (v5)
        {
        }

        if (v150 < v148)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1CFC7E7DC(v149);
        }

        if (v17 - 2 >= *(v149 + 2))
        {
          goto LABEL_129;
        }

        v151 = &v149[16 * v17];
        *v151 = v148;
        *(v151 + 1) = v150;
        v187 = v149;
        sub_1CFBB26AC(v17 - 1);
        result = v187;
        v17 = *(v187 + 16);
        if (v17 <= 1)
        {
        }
      }

      goto LABEL_143;
    }
  }

  else
  {
LABEL_147:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFC7DF94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v89 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v87 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v79 - v17;
  v93 = sub_1CFC9C448();
  v18 = *(v93 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v93);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v88 = &v79 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  result = MEMORY[0x1EEE9AC00](v25);
  v90 = &v79 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a2 - a1 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_66;
  }

  v31 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v30 != -1)
  {
    v32 = (a2 - a1) / v30;
    v96 = a1;
    v95 = a4;
    if (v32 >= v31 / v30)
    {
      v87 = v12;
      v34 = v31 / v30 * v30;
      if (a4 < a2 || a2 + v34 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (v34 < 1)
      {
        v60 = a4 + v34;
      }

      else
      {
        v82 = (v18 + 8);
        v83 = (v18 + 16);
        v58 = -v30;
        v59 = (a4 + v34);
        v60 = a4 + v34;
        v92 = a1;
        v80 = -v30;
        v81 = a4;
        do
        {
          v79 = v60;
          v61 = a2;
          a2 += v58;
          v85 = v61;
          v86 = a2;
          while (1)
          {
            if (v61 <= a1)
            {
              v96 = v61;
              v94 = v79;
              goto LABEL_64;
            }

            v62 = a3;
            v84 = v60;
            v63 = *v83;
            v90 = &v59[v58];
            v91 = v59;
            v64 = v93;
            v63(v88);
            (v63)(v22, a2, v64);
            v65 = v89;
            sub_1CFC9C3A8();
            v66 = v22;
            v67 = sub_1CFC9BFB8();
            v68 = *(v67 - 8);
            v69 = *(v68 + 48);
            result = v69(v65, 1, v67);
            if (result == 1)
            {
              goto LABEL_70;
            }

            v70 = v87;
            sub_1CFC9C3A8();
            result = v69(v70, 1, v67);
            if (result == 1)
            {
              goto LABEL_71;
            }

            v71 = &v62[v58];
            v72 = v89;
            v73 = sub_1CFC9BF78();
            v74 = *(v68 + 8);
            v74(v70, v67);
            v74(v72, v67);
            v75 = *v82;
            v76 = v93;
            (*v82)(v66, v93);
            v75(v88, v76);
            a2 = v86;
            v77 = v81;
            v22 = v66;
            if (v73)
            {
              break;
            }

            v78 = v90;
            v60 = v90;
            a1 = v92;
            a3 = v71;
            if (v62 < v91 || v71 >= v91)
            {
              swift_arrayInitWithTakeFrontToBack();
              v58 = v80;
            }

            else
            {
              v58 = v80;
              if (v62 != v91)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v59 = v60;
            v61 = v85;
            if (v78 <= v77)
            {
              a2 = v85;
              goto LABEL_63;
            }
          }

          a1 = v92;
          a3 = v71;
          if (v62 < v85 || v71 >= v85)
          {
            swift_arrayInitWithTakeFrontToBack();
            v60 = v84;
            v58 = v80;
          }

          else
          {
            v60 = v84;
            v58 = v80;
            if (v62 != v85)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v91;
        }

        while (v91 > v77);
      }

LABEL_63:
      v96 = a2;
      v94 = v60;
    }

    else
    {
      v33 = v32 * v30;
      v86 = v27;
      if (a4 < a1 || a1 + v33 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v89 = (a4 + v33);
      v94 = a4 + v33;
      if (v33 >= 1 && a2 < a3)
      {
        v36 = *(v18 + 16);
        v84 = a3;
        v85 = v36;
        v88 = (v18 + 16);
        v82 = (v18 + 8);
        v83 = v30;
        do
        {
          v92 = a1;
          v37 = a2;
          v38 = v93;
          v39 = v85;
          (v85)(v90, a2, v93);
          v40 = v86;
          (v39)(v86, a4, v38);
          v41 = v91;
          sub_1CFC9C3A8();
          v42 = sub_1CFC9BFB8();
          v43 = *(v42 - 8);
          v44 = *(v43 + 48);
          result = v44(v41, 1, v42);
          if (result == 1)
          {
            goto LABEL_68;
          }

          v45 = v87;
          sub_1CFC9C3A8();
          v46 = v45;
          result = v44(v45, 1, v42);
          if (result == 1)
          {
            goto LABEL_69;
          }

          v47 = v91;
          v48 = sub_1CFC9BF78();
          v49 = v46;
          v50 = v48;
          v51 = *(v43 + 8);
          v51(v49, v42);
          v51(v47, v42);
          v52 = *v82;
          v53 = v93;
          (*v82)(v40, v93);
          v52(v90, v53);
          a2 = v37;
          v54 = v92;
          if (v50)
          {
            v56 = v83;
            v55 = v84;
            if (v92 < a2 || v92 >= v83 + a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v92 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v56;
          }

          else
          {
            v56 = v83;
            v55 = v84;
            v57 = v83 + a4;
            if (v92 < a4 || v92 >= v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v92 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v95 = v57;
            a4 += v56;
          }

          a1 = v56 + v54;
          v96 = a1;
        }

        while (a4 < v89 && a2 < v55);
      }
    }

LABEL_64:
    sub_1CFBB25C8(&v96, &v95, &v94);
    return 1;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

char *sub_1CFC7E7F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE78, &qword_1CFCA86E8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1CFC7E8F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = sub_1CFC9C448();
  v6 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = v10 == 0;
  v32 = v10;
  v12 = 0;
  if (v10)
  {
    v38 = (v7 + 16);
    v35 = (v7 + 8);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v31 = a1 + v13;
    v40 = *(v7 + 72);
    v28 = a2 + v13;
    v29 = a2;
    while (1)
    {
      v30 = v11;
      v14 = *(a2 + 16);
      if (v14)
      {
        v33 = v12;
        v34 = v3;
        v39[0] = MEMORY[0x1E69E7CC0];
        sub_1CFBCAA4C(0, v14, 0);
        v15 = v39[0];
        v37 = *v38;
        v16 = v28;
        do
        {
          v17 = v36;
          v37(v9, v16, v36);
          v18 = sub_1CFC9C348();
          v20 = v19;
          (*v35)(v9, v17);
          v39[0] = v15;
          v22 = *(v15 + 16);
          v21 = *(v15 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1CFBCAA4C((v21 > 1), v22 + 1, 1);
            v15 = v39[0];
          }

          *(v15 + 16) = v22 + 1;
          v23 = v15 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
          v16 += v40;
          --v14;
        }

        while (v14);
        v12 = v33;
        v3 = v34;
        a2 = v29;
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      v39[0] = sub_1CFC9C348();
      v39[1] = v24;
      MEMORY[0x1EEE9AC00](v39[0]);
      *(&v27 - 2) = v39;
      v25 = sub_1CFC72FD8(sub_1CFC7F59C, (&v27 - 4), v15);

      if (v25)
      {
        break;
      }

      v11 = ++v12 == v32;
      if (v12 == v32)
      {
        return 0;
      }
    }
  }

  return v12;
}

void sub_1CFC7EBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_detailsPresenter);
  v8 = objc_opt_self();
  v9 = [v8 shared];
  v10 = [v9 current];

  if (!v10)
  {
    v14 = sub_1CFC9C408();
    if (v14)
    {

      goto LABEL_8;
    }
  }

  v11 = [v8 shared];
  v12 = [v11 tapRecentsToCall];

  if (!v12)
  {
LABEL_8:
    sub_1CFC88EA4(a1);
    return;
  }

  v13 = *(v7 + 16);
  sub_1CFC9C898();

  sub_1CFC78790(a2, a3);
}

uint64_t sub_1CFC7ECD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC78384(a1, v4, v5, v6);
}

uint64_t sub_1CFC7ED84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CFC7EDAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_1CFC9C448() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1CFC9C138() - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1CFC799A0(a1, a2, a3, a4, v13, v4 + v10);
}

uint64_t sub_1CFC7EEAC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  v19 = *a1;
  result = sub_1CFC7E8F4(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v64 = v18;
  v74 = v16;
  v57 = v13;
  if (v21)
  {
    return *(v19 + 16);
  }

  v3 = result;
  v22 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v23 = v19;
    v72 = v7 + 16;
    v69 = (v7 + 8);
    v55 = a1;
    v56 = (v7 + 40);
    v59 = v7;
    v60 = a2;
    v24 = v64;
    while (1)
    {
      v27 = v23[2];
      if (v22 == v27)
      {
        return v3;
      }

      if (v22 >= v27)
      {
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
LABEL_37:
        __break(1u);
        break;
      }

      v67 = v23;
      v68 = v2;
      v28 = v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v30 = *(v7 + 72);
      v66 = v22;
      v70 = v30;
      v31 = v30 * v22;
      v32 = *(v7 + 16);
      v65 = v31;
      v62 = v28;
      v32(v24, &v28[v31], v6);
      v33 = *(a2 + 16);
      v71 = v32;
      v61 = v29;
      if (v33)
      {
        v63 = v3;
        v73[0] = MEMORY[0x1E69E7CC0];
        sub_1CFBCAA4C(0, v33, 0);
        v34 = v73[0];
        v35 = a2 + v29;
        v36 = v74;
        do
        {
          v32(v36, v35, v6);
          v37 = sub_1CFC9C348();
          v36 = v74;
          v38 = v37;
          v40 = v39;
          (*v69)(v74, v6);
          v73[0] = v34;
          v42 = *(v34 + 16);
          v41 = *(v34 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1CFBCAA4C((v41 > 1), v42 + 1, 1);
            v36 = v74;
            v34 = v73[0];
          }

          *(v34 + 16) = v42 + 1;
          v43 = v34 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v32 = v71;
          v35 += v70;
          --v33;
        }

        while (v33);
        v7 = v59;
        v3 = v63;
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      v44 = v64;
      v73[0] = sub_1CFC9C348();
      v73[1] = v45;
      MEMORY[0x1EEE9AC00](v73[0]);
      *(&v54 - 2) = v73;
      v46 = v68;
      v47 = sub_1CFC72FD8(sub_1CFC7F374, (&v54 - 4), v34);
      v68 = v46;

      v24 = v44;

      result = (*v69)(v44, v6);
      if (v47)
      {
        a2 = v60;
        v25 = v66;
        v23 = v67;
        v2 = v68;
      }

      else
      {
        v25 = v66;
        v23 = v67;
        if (v3 == v66)
        {
          a2 = v60;
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          v48 = v67[2];
          if (v3 >= v48)
          {
            goto LABEL_35;
          }

          v49 = v71;
          v50 = v70 * v3;
          v51 = v62;
          result = (v71)(v57, &v62[v70 * v3], v6);
          if (v25 >= v48)
          {
            goto LABEL_36;
          }

          v49(v58, &v51[v65], v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1CFC829D4(v23);
          }

          v7 = v59;
          v52 = v23 + v61;
          v53 = *v56;
          result = (*v56)(v23 + v61 + v50, v58, v6);
          if (v25 >= v23[2])
          {
            goto LABEL_37;
          }

          result = v53(&v52[v65], v57, v6);
          *v55 = v23;
          a2 = v60;
          v24 = v64;
        }

        v2 = v68;
        v26 = __OFADD__(v3++, 1);
        if (v26)
        {
          goto LABEL_33;
        }
      }

      v26 = __OFADD__(v25, 1);
      v22 = v25 + 1;
      if (v26)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC7F390(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CFCA02B8() & 1;
  }
}

uint64_t sub_1CFC7F41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE540, &qword_1CFCA4690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC7F4A4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1CFC9C138() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1CFC9C448() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1CFC75814(v7, v8, v9, a1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1CFC7F5D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1CFC7F620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CFC7F690(uint64_t a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v8 = sub_1CFC9E4E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_1CFC9FAE8();
    v13 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();
    sub_1CFBBBBC0(a2, 0);
    (*(v9 + 8))(v12, v8);
    a2 = v14[1];
  }

  *a4 = a1;
  *(a4 + 8) = a2 == a1;
}

uint64_t sub_1CFC7F7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  LODWORD(v51) = a4;
  v56 = a5;
  v57 = sub_1CFC9E218();
  v59 = *(v57 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEE8, &qword_1CFCA8938);
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEF0, &qword_1CFCA8940);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v54 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v53 = v48 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v58 = v48 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v50 = v48 - v23;
  v24 = swift_allocObject();
  v25 = a1;
  v49 = a1;
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  v26 = v51;
  LOBYTE(a1) = v51 & 1;
  *(v24 + 40) = v51 & 1;
  *(v24 + 48) = 0;
  v65 = 0;
  v66 = v25;
  v67 = a2;
  v68 = a3;
  v69 = v26 & 1;

  sub_1CFC7FE94(a3, a1);
  v51 = sub_1CFC7FEA0();
  sub_1CFC9F298();
  sub_1CFC9E208();
  v48[2] = sub_1CFBA57C0(&qword_1EC4EFF00, &qword_1EC4EFEE8, &qword_1CFCA8938);
  v48[1] = sub_1CFC7FEF4();
  v27 = v11;
  v48[0] = v11;
  v28 = v57;
  sub_1CFC9EEC8();
  v29 = *(v59 + 8);
  v59 += 8;
  v29(v10, v28);
  v30 = *(v52 + 8);
  v30(v14, v27);
  v31 = swift_allocObject();
  v32 = v49;
  *(v31 + 16) = v49;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a1;
  *(v31 + 48) = 1;
  v60 = 1;
  v61 = v32;
  v62 = a2;
  v63 = a3;
  v64 = a1;

  sub_1CFC7FE94(a3, a1);
  sub_1CFC9F298();
  sub_1CFC9E208();
  v33 = v57;
  v34 = v58;
  v35 = v48[0];
  sub_1CFC9EEC8();
  v29(v10, v33);
  v30(v14, v35);
  v36 = v55;
  v37 = *(v55 + 16);
  v38 = v53;
  v39 = v50;
  v37(v53, v50, v15);
  v40 = v54;
  v37(v54, v34, v15);
  v41 = v56;
  *v56 = 0;
  *(v41 + 8) = 1;
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF08, &qword_1CFCA8948);
  v37(&v42[v43[12]], v38, v15);
  v44 = &v42[v43[16]];
  *v44 = 0;
  v44[8] = 1;
  v37(&v42[v43[20]], v40, v15);
  v45 = &v42[v43[24]];
  *v45 = 0;
  v45[8] = 1;
  v46 = *(v36 + 8);
  v46(v58, v15);
  v46(v39, v15);
  v46(v40, v15);
  return (v46)(v38, v15);
}

uint64_t sub_1CFC7FDE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = sub_1CFC9E588();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFEE0, &qword_1CFCA8930);
  return sub_1CFC7F7F0(v3, v4, v5, v6, (a1 + *(v7 + 44)));
}

uint64_t sub_1CFC7FE94(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1CFC7FEA0()
{
  result = qword_1EC4EFEF8;
  if (!qword_1EC4EFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFEF8);
  }

  return result;
}

unint64_t sub_1CFC7FEF4()
{
  result = qword_1EC4EED00;
  if (!qword_1EC4EED00)
  {
    sub_1CFC9E218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EED00);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 24);

  sub_1CFBBBBC0(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1CFC7FF90(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1CFC7F690(*(v1 + 16), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1CFC7FFA0@<X0>(unint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF28, &qword_1CFCA89D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v51 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF30, &qword_1CFCA89E0);
  v9 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v51 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF38, &qword_1CFCA89E8);
  v59 = *(v64 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  sub_1CFC9F4E8();
  v65 = a1;
  v66 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF40, &qword_1CFCA89F0);
  sub_1CFC80B1C();
  v21 = v20;
  v22 = v8;
  sub_1CFC9F508();
  v67 = sub_1CFC806AC(a1);
  v68 = v23;
  sub_1CFBB4460();
  v24 = sub_1CFC9EDF8();
  v26 = v25;
  v28 = v27;
  sub_1CFC9ECD8();
  v29 = sub_1CFC9EDC8();
  v55 = v30;
  v56 = v29;
  v53 = v31;
  v57 = v32;

  sub_1CFBB44C0(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  sub_1CFC807CC();
  if (a2)
  {
    v33 = sub_1CFC9F108();
  }

  else
  {
    v33 = sub_1CFC9F188();
  }

  v34 = v33;
  sub_1CFBCCE88(v22, v13, &qword_1EC4EFF28, &qword_1CFCA89D8);
  *&v13[*(v58 + 36)] = v34;
  v35 = v60;
  sub_1CFBCCE88(v13, v60, &qword_1EC4EFF30, &qword_1CFCA89E0);
  v36 = v59;
  v37 = *(v59 + 16);
  v38 = v63;
  v39 = v64;
  v52 = v21;
  v37(v63, v21, v64);
  v40 = v61;
  sub_1CFBA29FC(v35, v61, &qword_1EC4EFF30, &qword_1CFCA89E0);
  v41 = v62;
  v37(v62, v38, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF50, &qword_1CFCA8A28);
  v43 = &v41[*(v42 + 48)];
  v45 = v55;
  v44 = v56;
  *v43 = v56;
  *(v43 + 1) = v45;
  v46 = v53 & 1;
  v43[16] = v53 & 1;
  v47 = KeyPath;
  *(v43 + 3) = v57;
  *(v43 + 4) = v47;
  v43[40] = 1;
  sub_1CFBA29FC(v40, &v41[*(v42 + 64)], &qword_1EC4EFF30, &qword_1CFCA89E0);
  sub_1CFBB45F4(v44, v45, v46);

  sub_1CFBC2FB0(v35, &qword_1EC4EFF30, &qword_1CFCA89E0);
  v48 = *(v36 + 8);
  v49 = v64;
  v48(v52, v64);
  sub_1CFBC2FB0(v40, &qword_1EC4EFF30, &qword_1CFCA89E0);
  sub_1CFBB44C0(v44, v45, v46);

  return (v48)(v63, v49);
}

uint64_t sub_1CFC8044C@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1CFC9F1B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1)
  {
    result = sub_1CFCA01D8();
    __break(1u);
  }

  else
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_1CFC9F1F8();
    (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6);
    v13 = sub_1CFC9F1E8();

    (*(v7 + 8))(v10, v6);
    sub_1CFC9F538();
    sub_1CFC9DF68();
    v17 = 1;
    *&v16[8] = v18;
    *&v16[24] = v19;
    *&v16[40] = v20;
    if (a2)
    {
      result = sub_1CFC9F108();
    }

    else
    {
      result = sub_1CFC9F188();
    }

    *a3 = v13;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    v15 = *&v16[18];
    *(a3 + 18) = *&v16[2];
    *(a3 + 34) = v15;
    *(a3 + 50) = *&v16[34];
    *(a3 + 64) = *&v16[48];
    *(a3 + 72) = result;
  }

  return result;
}

uint64_t sub_1CFC806AC(unint64_t a1)
{
  if (a1 > 1)
  {
    result = sub_1CFCA01D8();
    __break(1u);
  }

  else
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_1CFC9BE28();

    return v3;
  }

  return result;
}

uint64_t sub_1CFC807CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF58, &qword_1CFCA8A30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF160, &unk_1CFCA6408);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - v6);
  v8 = sub_1CFC9F1A8();
  v9 = (v7 + *(v4 + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v11 = *MEMORY[0x1E69816C0];
  v12 = sub_1CFC9F1D8();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  sub_1CFBA29FC(v7, v3, &qword_1EC4EF160, &unk_1CFCA6408);
  swift_storeEnumTagMultiPayload();
  sub_1CFC460F4();
  sub_1CFC9E798();
  return sub_1CFBC2FB0(v7, &qword_1EC4EF160, &unk_1CFCA6408);
}

uint64_t sub_1CFC809E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_1CFC9E678();
  *(a1 + 8) = 0x401C000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF20, &qword_1CFCA89D0);
  return sub_1CFC7FFA0(v3, v4, (a1 + *(v5 + 44)));
}

uint64_t getEnumTagSinglePayload for LayoutOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for LayoutOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1CFC80B1C()
{
  result = qword_1EC4EFF48;
  if (!qword_1EC4EFF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFF40, &qword_1CFCA89F0);
    sub_1CFC3E038();
    sub_1CFBA57C0(&qword_1EE04FFE0, &unk_1EC4ED090, &qword_1CFCA3F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFF48);
  }

  return result;
}

uint64_t sub_1CFC80BDC()
{
  swift_getKeyPath();
  sub_1CFC8121C();
  sub_1CFC9C158();

  return *(v0 + 16);
}

uint64_t sub_1CFC80C4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC8121C();
  sub_1CFC9C158();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1CFC80CEC(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC8121C();
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC80DCC()
{
  swift_getKeyPath();
  sub_1CFC8121C();
  sub_1CFC9C158();

  v1 = *(v0 + 24);
}

uint64_t sub_1CFC80E40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC8121C();
  sub_1CFC9C158();

  *a2 = *(v3 + 24);
}

uint64_t sub_1CFC80EBC(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC8121C();
    sub_1CFC9C148();
  }
}

uint64_t RecentsItemCellBottomButtonViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC10CallsAppUI36RecentsItemCellBottomButtonViewModel___observationRegistrar;
  v3 = sub_1CFC9C198();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t RecentsItemCellBottomButtonViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC10CallsAppUI36RecentsItemCellBottomButtonViewModel___observationRegistrar;
  v3 = sub_1CFC9C198();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecentsItemCellBottomButtonViewModel()
{
  result = qword_1EC4EFF78;
  if (!qword_1EC4EFF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFC81120()
{
  result = sub_1CFC9C198();
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

uint64_t sub_1CFC811E0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

unint64_t sub_1CFC8121C()
{
  result = qword_1EC4EE1E8;
  if (!qword_1EC4EE1E8)
  {
    type metadata accessor for RecentsItemCellBottomButtonViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE1E8);
  }

  return result;
}

uint64_t sub_1CFC812A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_1CFC9CD58();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF90, &qword_1CFCA8BE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF98, &qword_1CFCA8BF0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - v19;
  v21 = v14[2];
  v21(&v37 - v19, a1, v13, v18);
  swift_getKeyPath();
  v44 = a2;
  sub_1CFC8121C();
  sub_1CFC9C158();

  if (*(a2 + 16) == 1)
  {
    swift_getKeyPath();
    v44 = a2;
    sub_1CFC9C158();

    v22 = *(a2 + 24);

    v23 = v37;
    sub_1CFC9CD48();
    v24 = v40;
    v25 = v38;
    v26 = v23;
    v27 = v41;
    (*(v40 + 32))(v38, v26, v41);
    v28 = 0;
    v29 = v27;
    v30 = v24;
  }

  else
  {
    v28 = 1;
    v30 = v40;
    v29 = v41;
    v25 = v38;
  }

  (*(v30 + 56))(v25, v28, 1, v29);
  v31 = v39;
  (v21)(v39, v20, v13);
  v32 = v42;
  sub_1CFC816A8(v25, v42);
  v33 = v43;
  (v21)(v43, v31, v13);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFA0, &qword_1CFCA8BF8);
  sub_1CFC816A8(v32, v33 + *(v34 + 48));
  sub_1CFC81718(v25);
  v35 = v14[1];
  v35(v20, v13);
  sub_1CFC81718(v32);
  return (v35)(v31, v13);
}

uint64_t sub_1CFC81640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  *a2 = sub_1CFC9E688();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF88, &qword_1CFCA8BE0);
  return sub_1CFC812A0(a1, v5, a2 + *(v6 + 44));
}

uint64_t sub_1CFC816A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF90, &qword_1CFCA8BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC81718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFF90, &qword_1CFCA8BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFC81780()
{
  result = qword_1EC4EFFA8;
  if (!qword_1EC4EFFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFFB0, qword_1CFCA8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFFA8);
  }

  return result;
}

id sub_1CFC817E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5C0, &qword_1CFCA4A78);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED518, &unk_1CFCA2430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = v50 - v7;
  v8 = sub_1CFC9D9B8();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1CFC9D988();
  v53 = *(v58 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFC9D9F8();
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1CFC9D958();
  v59 = *(v61 - 8);
  v19 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CFC9DA78();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CFC9DA18();
  v27 = type metadata accessor for RecentsStyleListCell();
  v64.receiver = v1;
  v64.super_class = v27;
  objc_msgSendSuper2(&v64, sel__bridgedUpdateConfigurationUsingState_, v26);

  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 userInterfaceIdiom];

  if (qword_1F4C6ACE8 == v29 || qword_1F4C6ACF0 == v29)
  {
    sub_1CFC9DA68();
    v48 = [v1 traitCollection];
    sub_1CFC9CD38();

    if (v63 == 1)
    {
      v51 = v18;
      sub_1CFC9CD28();
      sub_1CFC9DA48();
      v30 = sub_1CFC9DA08();
      v31 = objc_opt_self();
      v32 = v59;
      v33 = v53;
      v50[1] = v53 + 104;
      if (v30)
      {
        v50[0] = v11;
        v34 = v31;
        v35 = [v31 quaternarySystemFillColor];
        sub_1CFC9DA58();
        (*(v32 + 104))(v60, *MEMORY[0x1E69DBEE8], v61);
        (*(v33 + 104))(v14, *MEMORY[0x1E69DBF18], v58);
        v36 = sub_1CFC9D998();
        (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
        v37 = [v34 whiteColor];
        v38 = [v34 systemBlueColor];
        v39 = v50[0];
        sub_1CFC9D9A8();
        v40 = v51;
        sub_1CFC9D968();
        (*(v54 + 8))(v39, v55);
        (*(v33 + 8))(v14, v58);
        v63 = sub_1CFC9FCE8();
        sub_1CFC822E8(v63, v40);
        (*(v56 + 8))(v40, v57);
        (*(v59 + 8))(v60, v61);
      }

      else
      {
        v41 = [v31 clearColor];
        sub_1CFC9DA58();
        (*(v32 + 104))(v60, *MEMORY[0x1E69DBEE8], v61);
        v42 = v58;
        (*(v33 + 104))(v14, *MEMORY[0x1E69DBF18], v58);
        v43 = sub_1CFC9D998();
        (*(*(v43 - 8) + 56))(v52, 1, 1, v43);
        sub_1CFC9D9A8();
        v44 = v51;
        sub_1CFC9D968();
        (*(v54 + 8))(v11, v55);
        (*(v33 + 8))(v14, v42);
        v63 = sub_1CFC9FCE8();
        sub_1CFC822E8(v63, v44);
        (*(v56 + 8))(v44, v57);
        (*(v32 + 8))(v60, v61);
      }

      sub_1CFC9FCF8();
    }

    v45 = v62;
    (*(v22 + 16))(v62, v25, v21);
    (*(v22 + 56))(v45, 0, 1, v21);
    MEMORY[0x1D3872200](v45);
    (*(v22 + 8))(v25, v21);
  }

  v46 = [v1 traitCollection];
  sub_1CFC9CD38();

  [v1 directionalLayoutMargins];
  [v1 setDirectionalLayoutMargins_];
  v49 = [v1 traitCollection];
  sub_1CFC9CD38();

  [v1 directionalLayoutMargins];
  return [v1 setDirectionalLayoutMargins_];
}

void sub_1CFC822E8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED4F8, &qword_1CFCA2418);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v30 - v5;
  v42 = sub_1CFC9D958();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v30 - v10;
  v11 = sub_1CFC9D9F8();
  v44 = *(v11 - 8);
  v12 = v44[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v43 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  v15 = *v2;
  v37 = *(*v2 + 16);
  if (v37)
  {
    v16 = 0;
    v38 = v44 + 2;
    v36 = *MEMORY[0x1E69DBEE8];
    v34 = (v6 + 8);
    v35 = (v6 + 104);
    v39 = v44 + 1;
    v33 = v11;
    v17 = v41;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_11;
      }

      v19 = v43;
      v18 = v44;
      v20 = v15;
      v21 = v44[2];
      v21(v43, v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + v44[9] * v16, v11, v13);
      v22 = v40;
      sub_1CFC9D978();
      v23 = v42;
      (*v35)(v17, v36, v42);
      v45 = MEMORY[0x1D386FE80](v22, v17);
      v24 = *v34;
      (*v34)(v17, v23);
      v25 = v23;
      v11 = v33;
      v24(v22, v25);
      v26 = v18[1];
      v26(v19, v11);
      if (v45)
      {
        break;
      }

      ++v16;
      v15 = v20;
      if (v37 == v16)
      {
        return;
      }
    }

    v27 = v43;
    v28 = v32;
    sub_1CFC828B8(v16, v43);
    v26(v27, v11);
    if (*(*v28 + 16) >= v16)
    {
      v29 = v30;
      (v21)(v30, v31, v11);
      sub_1CFBCAC68(v16, v16, v29);
      return;
    }

LABEL_11:
    __break(1u);
  }
}

id sub_1CFC82860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsStyleListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFC828B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFC829FC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_1CFC9D9F8();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1CFC82A10(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1CFC9FFD8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1CFCA0168();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x1D3872640]();
          sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED798, qword_1CFCA26D8);
          swift_dynamicCast();
          sub_1CFCA0138();
          v6 = *(v11 + 16);
          sub_1CFCA0178();
          sub_1CFCA0188();
          sub_1CFCA0148();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v7 = (a1 + 32);
        sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
        do
        {
          v8 = *v7++;
          v9 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED798, qword_1CFCA26D8);
          swift_dynamicCast();
          sub_1CFCA0138();
          v10 = *(v11 + 16);
          sub_1CFCA0178();
          sub_1CFCA0188();
          sub_1CFCA0148();
          --v2;
        }

        while (v2);
      }

      return v11;
    }
  }

  return result;
}

uint64_t sub_1CFC82C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1CFBCAAF0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1CFBB94B0(v4, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1CFBCAAF0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1CFBCC9AC(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CFC82D30(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v4 = *(a3(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

double sub_1CFC82DC8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_1CFC82E98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  swift_beginAccess();
  v5 = sub_1CFC9CE08();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1CFC82F90(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1CFC9CE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  swift_getKeyPath();
  v13 = v10;
  v14 = v9;
  v15 = v10;
  sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C148();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1CFC83118@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = sub_1CFC9C608();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBAAD9C(v4, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_1CFBCE130(v14);
    v16 = 0xE700000000000000;
    v17 = 0x6C6C41776F6873;
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v20[0] = sub_1CFC9C5B8();
    v20[1] = v18;
    v17 = sub_1CFC9F838();
    v16 = v19;
    result = (*(v7 + 8))(v10, v6);
  }

  *a2 = v17;
  a2[1] = v16;
  return result;
}

void sub_1CFC832C4()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(sub_1CFC9C718() + 16);

  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 1;
  if (!v6)
  {
    v7 = 2;
  }

  v8 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow;
  v9 = *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow);
  if ((v7 * v9) >> 64 != (v7 * v9) >> 63)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 * v9 >= v3)
  {
    return;
  }

  v10 = [v4 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = *(v1 + v8);
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v12 * v13, 1))
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1CFC833E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 97) = 1;
  }

  return result;
}

uint64_t sub_1CFC83438()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 96) = 0;
    sub_1CFBA2D80(0, &qword_1EE04CF30, 0x1E69DD250);
    swift_allocObject();
    swift_weakInit();

    sub_1CFC9FDA8();
  }

  return result;
}

uint64_t sub_1CFC83538()
{
  v4 = v1;
  v47 = sub_1CFC9C608();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FavoriteSectionController.Item(0);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFBAA4F8();
  v15 = *(v14 + 16);
  if (v15)
  {
    v45[0] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    v16 = v14;
    sub_1CFBAA768(0, v15, 0);
    v2 = 0;
    v17 = v50;
    v46 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v4 = (v5 + 16);
    v45[1] = v5 + 8;
    while (v2 < *(v16 + 16))
    {
      v18 = v47;
      v19 = *(v5 + 16);
      v19(v8, v46 + *(v5 + 72) * v2, v47);
      v19(v13, v8, v18);
      swift_storeEnumTagMultiPayload();
      (*(v5 + 8))(v8, v18);
      v50 = v17;
      v3 = *(v17 + 16);
      v20 = *(v17 + 24);
      v0 = v3 + 1;
      if (v3 >= v20 >> 1)
      {
        sub_1CFBAA768(v20 > 1, v3 + 1, 1);
        v17 = v50;
      }

      ++v2;
      *(v17 + 16) = v0;
      sub_1CFBAA7AC(v13, v17 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v3);
      if (v15 == v2)
      {

        v4 = v45[0];
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v51 = v17;
  v21 = v4[8];
  v0 = sub_1CFC9C718();
  v17 = *(sub_1CFBAA4F8() + 16);

  v22 = sub_1CFBAA810(v17, v0);
  v26 = v25 >> 1;
  if (__OFSUB__(v25 >> 1, v24))
  {
    goto LABEL_47;
  }

  v17 = v22;
  v0 = v25 >> 1;
  if ((v25 >> 1) - v24 >= 4)
  {
    v0 = v24 + 4;
    if (__OFADD__(v24, 4))
    {
      goto LABEL_57;
    }
  }

  if (v0 < v24)
  {
    goto LABEL_48;
  }

  if (v26 < v24)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v26 < v0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v0 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v25)
  {
    LOBYTE(v2) = v25;
    v8 = v24;
    v3 = v23;
    sub_1CFCA02D8();
    swift_unknownObjectRetain_n();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      swift_unknownObjectRelease();
      v29 = MEMORY[0x1E69E7CC0];
    }

    v13 = *(v29 + 16);

    if (__OFSUB__(v0, v8))
    {
      goto LABEL_58;
    }

    if (v13 != (v0 - v8))
    {
      goto LABEL_59;
    }

    v28 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v28)
    {
      goto LABEL_25;
    }

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  while (1)
  {
    sub_1CFC84858(v17, v23, v24, v25 & 1 | (2 * v0), &qword_1EC4EFFE8, &qword_1CFCA8E38, MEMORY[0x1E6993700]);
    v28 = v27;
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    v30 = *(v28 + 16);

    if (!v30)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED4F0, &qword_1CFCA2410);
    v31 = *(v49 + 72);
    v32 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1CFCA1DD0;
    v0 = sub_1CFC9C718();
    v17 = *(sub_1CFBAA4F8() + 16);

    v33 = sub_1CFBAA810(v17, v0);
    v37 = v36 >> 1;
    if (__OFSUB__(v36 >> 1, v35))
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v17 = v33;
    v0 = v36 >> 1;
    if ((v36 >> 1) - v35 >= 4)
    {
      v0 = v35 + 4;
      if (__OFADD__(v35, 4))
      {
        __break(1u);
        goto LABEL_61;
      }
    }

    if (v0 < v35)
    {
      goto LABEL_53;
    }

    if (v37 < v35)
    {
      goto LABEL_54;
    }

    if (v37 < v0)
    {
      goto LABEL_55;
    }

    if ((v0 & 0x8000000000000000) == 0)
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_34;
      }

      LOBYTE(v2) = v36;
      v13 = v35;
      v8 = v34;
      sub_1CFCA02D8();
      swift_unknownObjectRetain_n();
      v40 = swift_dynamicCastClass();
      if (!v40)
      {
        swift_unknownObjectRelease();
        v40 = MEMORY[0x1E69E7CC0];
      }

      v41 = *(v40 + 16);

      if (__OFSUB__(v0, v13))
      {
LABEL_61:
        __break(1u);
      }

      else if (v41 == v0 - v13)
      {
        v39 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v39)
        {
          v39 = MEMORY[0x1E69E7CC0];
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      swift_unknownObjectRelease();
      v35 = v13;
      v34 = v8;
      LOBYTE(v36) = v2;
LABEL_34:
      sub_1CFC84858(v17, v34, v35, v36 & 1 | (2 * v0), &qword_1EC4EFFE8, &qword_1CFCA8E38, MEMORY[0x1E6993700]);
      v39 = v38;
LABEL_41:
      swift_unknownObjectRelease();
LABEL_42:
      *(v3 + v32) = v39;
      swift_storeEnumTagMultiPayload();
      sub_1CFBAA8A0(v3);
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_unknownObjectRelease();
    v24 = v8;
    v23 = v3;
    LOBYTE(v25) = v2;
  }

  v42 = v4[4];
  v4[4] = v51;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v44 = v4[3];
    swift_getObjectType();
    SectionControllerParent.sectionItemsDidChange()();
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1CFC83B40()
{
  v1 = sub_1CFC9CE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9CD28();
  v6 = *&v12[1];
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 || *(v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDD8();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  return v6 - (v10 + v10);
}

void sub_1CFC83D84(uint64_t a1, void *a2)
{
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((v2[96] & 1) != 0 || v2[40] == 1) && (v2[97] & 1) == 0)
  {
    v10 = v7;
    v11 = sub_1CFC9C118();
    v12 = [objc_opt_self() currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = *&v2[OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow];
    v16 = v14 * v15;
    if ((v14 * v15) >> 64 == (v14 * v15) >> 63)
    {
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (!v17)
      {
        if (v11 < v18)
        {
          return;
        }

        sub_1CFC832C4();
        if (v20)
        {
          return;
        }

        v21 = v19;
        v22 = sub_1CFC9C128();
        MEMORY[0x1D386E620](v21, v22);
        v23 = sub_1CFC9C0C8();
        (*(v5 + 8))(v9, v10);
        v24 = [a2 cellForItemAtIndexPath_];

        if (!v24)
        {
          return;
        }

        [v24 frame];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v33 = sub_1CFC9C0C8();
        v34 = [a2 layoutAttributesForItemAtIndexPath_];

        if (v34)
        {
          v35 = v30 * 0.5;
          v41.origin.x = v26;
          v41.origin.y = v28;
          v41.size.width = v30;
          v41.size.height = v32;
          v36 = CGRectGetHeight(v41) * 0.5;
          if (sub_1CFC9C118() == 8)
          {
            v26 = v26 + v35;
          }

          else if (sub_1CFC9C118() == 9)
          {
            v28 = v28 + v36;
          }

          else if (sub_1CFC9C118() >= 10)
          {
            v28 = v28 + v36;
            v26 = v26 + v35;
          }

          [v34 frame];
          CGAffineTransformMakeTranslation(&v40, v26 - v37 - v35 * 0.5, v28 - v38 - v36 * 0.5);
          CGAffineTransformScale(&v39, &v40, 0.5, 0.5);
          v40 = v39;
          [v34 setTransform_];
          [v34 setZIndex_];
          return;
        }

LABEL_23:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_1CFC840E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FavoriteSectionController.Item(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9C608();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((*(v2 + 40) & 1) == 0)
  {
    sub_1CFBAAD9C(a1, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CFBCE130(v7);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v14 = *(v2 + 104);

      v15 = sub_1CFC9C5D8();
      v16 = [v15 entryIdentifier];

      v17 = sub_1CFC9F768();
      v19 = v18;

      sub_1CFC48AB8(v17, v19);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v20 = swift_allocObject();
      v30 = xmmword_1CFCA2540;
      *(v20 + 16) = xmmword_1CFCA2540;
      *(v20 + 32) = sub_1CFC9C5E8();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (!v21)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = objc_allocWithZone(type metadata accessor for ContactActionsController());
      v23 = sub_1CFC9619C(v20, v21);
      v24 = *(v2 + 80);
      *(v2 + 80) = v23;
      v25 = v23;

      v26 = sub_1CFC96E60();
      if (v26)
      {
        v27 = v26;
        v28 = swift_allocObject();
        *(v28 + 16) = v30;
        v29 = v28;
        *(v28 + 32) = v27;
      }

      else
      {

        v29 = 0;
      }

      (*(v9 + 8))(v12, v8);
      return v29;
    }
  }

  return result;
}

uint64_t sub_1CFC843CC()
{
  sub_1CFC1910C(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_cellRegistration, &qword_1EC4EFFD8, &unk_1CFCA8DC8);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_showAllCellRegistration, &qword_1EC4EFFD0, &unk_1CFCA8DB8);
  MEMORY[0x1D3873340](v0 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_collectionView);
  return v0;
}

uint64_t sub_1CFC8447C()
{
  sub_1CFC843CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFC844DC(uint64_t a1)
{
  result = sub_1CFBAAE00(&qword_1EE04F0C8, type metadata accessor for FavoriteSectionController.Item);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFC8457C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

void (*sub_1CFC845B8(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC8464C;
}

void sub_1CFC8464C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

void sub_1CFC84734(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_1CFBA2D80(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1CFC84858(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1CFC849FC(uint64_t a1)
{
  v3 = sub_1CFC9C608();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FavoriteSectionController.Item(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 40) & 1) == 0)
  {
    sub_1CFBAAD9C(a1, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CFBCE130(v11);
      v12 = *(v1 + 64);
      v13 = *(v1 + 72);
      sub_1CFC8C8F8(v12, 0);
    }

    else
    {
      (*(v4 + 32))(v7, v11, v3);
      v14 = sub_1CFC9C5D8();
      [v14 performActionWithCompletion_];

      (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t sub_1CFC84BAC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t sub_1CFC84BE8()
{
  result = qword_1EE04F700;
  if (!qword_1EE04F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04F700);
  }

  return result;
}

uint64_t sub_1CFC84C3C()
{
  v1 = *(sub_1CFC9C608() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  return sub_1CFC9C6F8();
}

double sub_1CFC84CEC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9F1A8();
  v3 = sub_1CFC9F158();
  sub_1CFC9F538();
  sub_1CFC9DF68();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  result = *&v9;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_1CFC84D9C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0008, &qword_1CFCA8EF8);
  sub_1CFC84E80();
  sub_1CFC9F298();
  v6 = sub_1CFC9F148();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0010, &qword_1CFCA8F40);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

unint64_t sub_1CFC84E80()
{
  result = qword_1EE04D430;
  if (!qword_1EE04D430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0008, &qword_1CFCA8EF8);
    sub_1CFC4A794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D430);
  }

  return result;
}

unint64_t sub_1CFC84F0C()
{
  result = qword_1EE04D490;
  if (!qword_1EE04D490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0010, &qword_1CFCA8F40);
    sub_1CFBA57C0(&qword_1EE04D1E8, &qword_1EC4F0018, &qword_1CFCA8F48);
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D490);
  }

  return result;
}

id static NSBundle.callsAppUI.getter()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_1CFC8505C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1CFC9C258();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_1CFC9F968();
  v1[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC85150, v6, v5);
}

uint64_t sub_1CFC85150()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_1CFC9C2E8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[9] = sub_1CFC9C2D8();
  v8 = sub_1CFC9C008();
  (*(*(v8 - 8) + 16))(v1, v4, v8);
  (*(v2 + 104))(v1, *MEMORY[0x1E6993610], v3);
  v9 = *(MEMORY[0x1E6993630] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1CFC85284;
  v11 = v0[5];

  return MEMORY[0x1EEDF2808](v11);
}

uint64_t sub_1CFC85284(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[9];
  v8 = v4[5];
  v9 = v4[4];
  v10 = v4[3];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = v4[7];
    v12 = v4[8];
    v13 = sub_1CFC854A0;
  }

  else
  {
    v4[12] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = v4[7];
    v12 = v4[8];
    v13 = sub_1CFC85430;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1CFC85430()
{
  v1 = v0[6];

  v2 = v0[12];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1CFC854A0()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[5];

  v4 = v0[1];
  v5 = MEMORY[0x1E69E7CC0];

  return v4(v5);
}

unint64_t sub_1CFC8551C(uint64_t a1, uint64_t a2)
{
  v3 = 0xD000000000000011;
  v4 = a1 == 0xD000000000000013 && 0x80000001CFCAD860 == a2;
  if (!v4 && (sub_1CFCA02B8() & 1) == 0)
  {
    if (a1 == 0xD000000000000012 && 0x80000001CFCAD880 == a2 || (sub_1CFCA02B8() & 1) != 0)
    {
      return 0xD000000000000017;
    }

    else if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEE007370616D2E65)
    {
      return 0x6572696420746547;
    }

    else if (sub_1CFCA02B8())
    {
      return 0x6572696420746547;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001CFCAD8A0 == a2 || (sub_1CFCA02B8() & 1) != 0)
    {
      return 0xD000000000000010;
    }

    else if ((a1 != 0x6C7070612E6D6F63 || a2 != 0xEF656E6F68702E65) && (sub_1CFCA02B8() & 1) == 0)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1CFC8579C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1CFC9C258();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_1CFC9F968();
  v1[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC85890, v6, v5);
}

uint64_t sub_1CFC85890()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_1CFC9C2E8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[9] = sub_1CFC9C2D8();
  v8 = sub_1CFC9C008();
  (*(*(v8 - 8) + 16))(v1, v4, v8);
  (*(v2 + 104))(v1, *MEMORY[0x1E6993610], v3);
  v9 = *(MEMORY[0x1E6993628] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1CFC859C4;
  v11 = v0[5];

  return MEMORY[0x1EEDF2800](v11);
}

uint64_t sub_1CFC859C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  (*(v8 + 8))(v7, v9);

  v11 = *(v3 + 64);
  v12 = *(v3 + 56);
  if (v1)
  {
    v13 = sub_1CFC85D24;
  }

  else
  {
    v13 = sub_1CFC85B88;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1CFC85B88()
{
  v1 = v0[6];

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = sub_1CFC9D938();
  __swift_project_value_buffer(v3, qword_1EE052308);

  v4 = sub_1CFC9D918();
  v5 = sub_1CFC9FAF8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7 >> 62)
    {
      v0[11];
      v17 = v8;
      v9 = sub_1CFC9FFD8();
      v8 = v17;
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v0[11];
    *(v8 + 4) = v9;
    v11 = v8;

    _os_log_impl(&dword_1CFB9F000, v4, v5, "Data items returned: %ld count", v11, 0xCu);
    MEMORY[0x1D3873280](v11, -1, -1);
  }

  else
  {
    v12 = v0[11];
  }

  v13 = v0[11];
  v14 = v0[5];

  v15 = v0[1];

  return v15(v13);
}

uint64_t sub_1CFC85D24()
{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[5];

  v4 = v0[1];
  v5 = MEMORY[0x1E69E7CC0];

  return v4(v5);
}

uint64_t sub_1CFC85DA0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1CFC85E50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1CFC85EFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_1CFCA02B8() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC8605C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_1CFC8610C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1CFC861B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (sub_1CFCA02B8())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1CFC86328()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  return *(v0 + 48);
}

uint64_t sub_1CFC863C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1CFC86470(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC86580()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  return *(v0 + 49);
}

uint64_t sub_1CFC86620(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC86738()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v1 = *(v0 + 56);
  sub_1CFBB2568(v1, *(v3 + 64));
  return v1;
}

uint64_t sub_1CFC867EC()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  return *(v0 + 72);
}

uint64_t sub_1CFC8688C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1CFC8695C(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC86A74()
{
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  return *(v0 + 73);
}

uint64_t sub_1CFC86B14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  *a2 = *(v3 + 73);
  return result;
}

uint64_t sub_1CFC86BBC(uint64_t result)
{
  v2 = *(v1 + 73);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 73) = result;
  return result;
}

uint64_t sub_1CFC86CF0()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  sub_1CFBB2564(*(v0 + 7), *(v0 + 8));
  v3 = OBJC_IVAR____TtC10CallsAppUI26SectionHeaderConfiguration___observationRegistrar;
  v4 = sub_1CFC9C198();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFC86DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1CFC9E858();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0078, &qword_1CFCA9248);
  v67 = *(v68 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v64 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0080, &qword_1CFCA9250);
  v78 = *(v80 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v65 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0088, &qword_1CFCA9258);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v64 - v14;
  v15 = sub_1CFC9E648();
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0090, &unk_1CFCA9260);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v77 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v64 - v22;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC10CallsAppUI26SectionHeaderConfiguration___observationRegistrar;
  v83 = a1;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  swift_getKeyPath();
  v83 = a1;

  v72 = v23;
  sub_1CFC9C158();

  v26 = *(a1 + 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3E8, &qword_1CFCA4310);
  sub_1CFC9CD28();
  v27 = sub_1CFC9EDC8();
  v29 = v28;
  v31 = v30;

  swift_getKeyPath();
  v83 = a1;
  sub_1CFC9C158();

  v32 = *(a1 + 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4C0, &qword_1CFCA9270);
  sub_1CFC9CD28();
  v33 = sub_1CFC9ED38();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_1CFBB44C0(v27, v29, v31 & 1);

  v83 = v33;
  v84 = v35;
  v85 = v37 & 1;
  v86 = v39;
  v40 = v74;
  sub_1CFC9E628();
  v41 = v73;
  sub_1CFC9EFF8();
  (*(v75 + 8))(v40, v76);
  sub_1CFBB44C0(v33, v35, v37 & 1);

  swift_getKeyPath();
  v83 = a1;
  sub_1CFC9C158();

  if (*(a1 + 40))
  {
    v42 = *(a1 + 32);
    swift_getKeyPath();
    v83 = a1;

    sub_1CFC9C158();

    v43 = *(a1 + 56);
    if (v43)
    {
      v44 = *(a1 + 64);
      swift_getKeyPath();
      v83 = a1;

      sub_1CFC9C158();

      if ((*(a1 + 72) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v45);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00A0, &qword_1CFCA9280);
        sub_1CFBA57C0(&qword_1EC4F00A8, &qword_1EC4F00A0, &qword_1CFCA9280);
        v49 = v66;
        sub_1CFC9F298();

        v50 = v69;
        sub_1CFC9E848();
        sub_1CFBA57C0(&qword_1EC4F00B0, &qword_1EC4F0078, &qword_1CFCA9248);
        sub_1CFBB3074(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
        v51 = v65;
        v52 = v68;
        v53 = v71;
        sub_1CFC9EEC8();
        (*(v70 + 8))(v50, v53);
        (*(v67 + 8))(v49, v52);
        v54 = sub_1CFC9F108();
        sub_1CFBB2564(v43, v44);
        KeyPath = swift_getKeyPath();
        v48 = v79;
        v56 = v80;
        v57 = (v51 + *(v80 + 36));
        *v57 = KeyPath;
        v57[1] = v54;
        sub_1CFBC0FEC(v51, v48);
        v47 = v56;
        v46 = 0;
        goto LABEL_8;
      }

      sub_1CFBB2564(v43, v44);
    }

    v46 = 1;
    v48 = v79;
    v47 = v80;
  }

  else
  {
    v46 = 1;
    v48 = v79;
    v47 = v80;
  }

LABEL_8:
  (*(v78 + 56))(v48, v46, 1, v47);
  v58 = v77;
  sub_1CFBA29FC(v41, v77, &qword_1EC4F0090, &unk_1CFCA9260);
  v59 = v81;
  sub_1CFBC0F74(v48, v81);
  v60 = v82;
  sub_1CFBA29FC(v58, v82, &qword_1EC4F0090, &unk_1CFCA9260);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0098, &qword_1CFCA9278);
  v62 = v60 + *(v61 + 48);
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_1CFBC0F74(v59, v60 + *(v61 + 64));
  sub_1CFBC2FB0(v48, &qword_1EC4F0088, &qword_1CFCA9258);
  sub_1CFBC2FB0(v41, &qword_1EC4F0090, &unk_1CFCA9260);
  sub_1CFBC2FB0(v59, &qword_1EC4F0088, &qword_1CFCA9258);
  return sub_1CFBC2FB0(v58, &qword_1EC4F0090, &unk_1CFCA9260);
}

uint64_t sub_1CFC8782C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9ECA8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC87854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9EC68();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC8787C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9ECB8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC878A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CFC9EC78();
  *a1 = v3;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1CFC878D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CFC9EC98();
  *a1 = v3;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1CFC878FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CFC9E568();
  swift_getKeyPath();
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v9 = 0x4010000000000000;
  if (*(a1 + 49))
  {
    v9 = 0x4018000000000000;
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00B8, &qword_1CFCA92B8);
  return sub_1CFC87A04(a2, a3, a1, a4 + *(v10 + 44));
}

uint64_t sub_1CFC87A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE498, &unk_1CFCA92C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v53 - v9);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4A0, &qword_1CFCA45C8);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4A8, &qword_1CFCA92D0);
  v14 = *(v13 - 8);
  v58 = v13;
  v59 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v53 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00C0, &qword_1CFCA92D8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - v24;
  swift_getKeyPath();
  v62 = a3;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  v61 = a2;

  sub_1CFC9C158();

  if (*(a3 + 48) == 1)
  {
    v26 = sub_1CFC9F1A8();
    v27 = *(v7 + 36);
    v28 = *MEMORY[0x1E697E7D8];
    v29 = sub_1CFC9E168();
    (*(*(v29 - 8) + 104))(v10 + v27, v28, v29);
    v30 = *MEMORY[0x1E6980218];
    v31 = sub_1CFC9E9A8();
    (*(*(v31 - 8) + 104))(v10 + v27, v30, v31);
    *v10 = v26;
    swift_getKeyPath();
    v62 = a3;
    sub_1CFC9C158();

    if (*(a3 + 49))
    {
      v32 = 1.57079633;
    }

    else
    {
      v32 = 0.0;
    }

    sub_1CFC9F5D8();
    v34 = v33;
    v36 = v35;
    v37 = v57;
    v38 = sub_1CFBCCE88(v10, v57, &qword_1EC4EE498, &unk_1CFCA92C0);
    v39 = v37 + *(v54 + 36);
    *v39 = v32;
    *(v39 + 8) = v34;
    *(v39 + 16) = v36;
    MEMORY[0x1D3871A90](v38, 0.5, 1.0, 0.0);
    v40 = sub_1CFC9F548();

    swift_getKeyPath();
    v62 = a3;
    sub_1CFC9C158();

    v41 = *(a3 + 49);
    v42 = v56;
    sub_1CFBCCE88(v37, v56, &qword_1EC4EE4A0, &qword_1CFCA45C8);
    v43 = v58;
    v44 = v42 + *(v58 + 36);
    *v44 = v40;
    *(v44 + 8) = v41;
    v45 = v42;
    v46 = v55;
    sub_1CFBCCE88(v45, v55, &qword_1EC4EE4A8, &qword_1CFCA92D0);
    sub_1CFBCCE88(v46, v25, &qword_1EC4EE4A8, &qword_1CFCA92D0);
    v47 = 0;
    v48 = v43;
  }

  else
  {
    v47 = 1;
    v48 = v58;
  }

  (*(v59 + 56))(v25, v47, 1, v48);
  sub_1CFBA29FC(v25, v23, &qword_1EC4F00C0, &qword_1CFCA92D8);
  v50 = v60;
  v49 = v61;
  *a4 = v60;
  *(a4 + 8) = v49;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  *(a4 + 32) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00C8, &qword_1CFCA92E0);
  sub_1CFBA29FC(v23, a4 + *(v51 + 48), &qword_1EC4F00C0, &qword_1CFCA92D8);
  sub_1CFBB45F4(v50, v49, 0);

  sub_1CFBC2FB0(v25, &qword_1EC4F00C0, &qword_1CFCA92D8);
  sub_1CFBC2FB0(v23, &qword_1EC4F00C0, &qword_1CFCA92D8);
  sub_1CFBB44C0(v50, v49, 0);
}

id sub_1CFC87FBC(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration] = 0;
  *&v4[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SectionHeaderView();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1CFBB1F70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF870, &qword_1CFCA7920);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFCA1DD0;
  v11 = sub_1CFC9DC58();
  v12 = MEMORY[0x1E69DC2F0];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1CFC9FD98();

  swift_unknownObjectRelease();

  return v9;
}

id sub_1CFC881D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFC88258(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration))
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration);

    v3 = [v1 traitCollection];
    v4 = [v3 splitViewControllerLayoutEnvironment];

    sub_1CFC86BBC(v4 == 2);
  }

  return result;
}

void sub_1CFC882F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration;
  v3 = *&v1[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration];
  *&v1[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration] = a1;

  if (*&v1[v2])
  {
    v4 = *&v1[v2];

    v5 = [v1 traitCollection];
    v6 = [v5 splitViewControllerLayoutEnvironment];

    sub_1CFC86BBC(v6 == 2);
  }

  sub_1CFBB1F70();
}

uint64_t sub_1CFC883D8()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

unint64_t sub_1CFC88418()
{
  result = qword_1EC4F0058;
  if (!qword_1EC4F0058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0038, &qword_1CFCA9220);
    sub_1CFC884A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0058);
  }

  return result;
}

unint64_t sub_1CFC884A4()
{
  result = qword_1EC4F0060;
  if (!qword_1EC4F0060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0050, &qword_1CFCA9238);
    sub_1CFBA57C0(&qword_1EC4F0068, &qword_1EC4F0070, &qword_1CFCA9240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0060);
  }

  return result;
}

unint64_t sub_1CFC88568()
{
  result = qword_1EC4F00D0;
  if (!qword_1EC4F00D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F00D8, &unk_1CFCA92E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0038, &qword_1CFCA9220);
    sub_1CFC88418();
    swift_getOpaqueTypeConformance2();
    sub_1CFBB3074(&qword_1EE04FFC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F00D0);
  }

  return result;
}

uint64_t DetailsPresenter.__allocating_init(dataSource:presentingViewController:recentsDetailProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v10 + 72) = 0;
  v11 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  v12 = sub_1CFC9C448();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = 0;
  *(v10 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v13 = *(a3 + 16);
  *(v10 + 32) = *a3;
  *(v10 + 48) = v13;
  *(v10 + 64) = *(a3 + 32);
  return v10;
}

uint64_t sub_1CFC88758@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

void sub_1CFC88964(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1CFC889B0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1CFC88A40;
}

void sub_1CFC88A40(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1CFC88ABC()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + 16);
    if (sub_1CFC9C818())
    {
      sub_1CFC72300(&qword_1EC4EFE80, &qword_1EC4EFE88, 0x1E69BDD08);
    }

    v5 = objc_allocWithZone(sub_1CFC9CA48());
    v6 = sub_1CFC9C998();
    v7 = *(v3 + 72);
    *(v3 + 72) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t DetailsPresenter.init(dataSource:presentingViewController:recentsDetailProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  v7 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  v8 = sub_1CFC9C448();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v9 = *(a3 + 16);
  *(v3 + 32) = *a3;
  *(v3 + 48) = v9;
  *(v3 + 64) = *(a3 + 32);
  return v3;
}

void sub_1CFC88C60(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = objc_opt_self();
  v6 = [v5 shared];
  v7 = [v6 current];

  if (v7 || (v12 = sub_1CFC9C408()) == 0)
  {
    v8 = [v5 shared];
    v9 = [v8 tapRecentsToCall];

    if (v9)
    {
      v10 = *(v2 + 16);
      v11 = sub_1CFC9C898();
      a2(v11);
      return;
    }
  }

  else
  {
  }

  sub_1CFC88EA4(a1);
}

void sub_1CFC88D6C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 shared];
  v5 = [v4 current];

  if (v5 || (v9 = sub_1CFC9C408()) == 0)
  {
    v6 = [v3 shared];
    v7 = [v6 tapRecentsToCall];

    if (v7)
    {

      sub_1CFC88EA4(a1);
    }

    else
    {
      v8 = *(v1 + 16);
      sub_1CFC9C898();
    }
  }

  else
  {

    v10 = sub_1CFC9C428();
    sub_1CFC8C10C(v10);
  }
}

void sub_1CFC88EA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37[-v6];
  v8 = sub_1CFC9C408();
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong navigationItem];

      [v12 setBackButtonDisplayMode_];
    }

    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v13 = sub_1CFC9D938();
    __swift_project_value_buffer(v13, qword_1EE052308);
    v14 = sub_1CFC9D918();
    v15 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1CFB9F000, v14, v15, "Create details view for the voicemail.", v16, 2u);
      MEMORY[0x1D3873280](v16, -1, -1);
    }

    v17 = sub_1CFC89330(a1);
    if (v17)
    {
LABEL_9:
      if (qword_1EE050010 != -1)
      {
        swift_once();
      }

      v18 = sub_1CFC9D938();
      __swift_project_value_buffer(v18, qword_1EE052308);
      v19 = sub_1CFC9D918();
      v20 = sub_1CFC9FAF8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1CFB9F000, v19, v20, "Show details view controller.", v21, 2u);
        MEMORY[0x1D3873280](v21, -1, -1);
      }

      sub_1CFC8CF7C(v17);
    }
  }

  else
  {
    v22 = sub_1CFC9C308();
    if (!v22)
    {
      v35 = [objc_opt_self() currentDevice];
      v36 = [v35 userInterfaceIdiom];

      if (v36 != 6)
      {
        return;
      }

      if ((sub_1CFC9C358() & 1) == 0)
      {
        return;
      }

      v17 = sub_1CFC8D7C4();
      if (!v17)
      {
        return;
      }

      goto LABEL_9;
    }

    v23 = v22;
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 navigationItem];

      [v26 setBackButtonDisplayMode_];
    }

    v27 = *(v2 + 16);
    v28 = sub_1CFC9C828();
    v29 = v23;
    sub_1CFC8C10C(v28);

    v30 = sub_1CFC9C428();
    if (v30 >> 62)
    {
      v31 = sub_1CFC9FFD8();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v31 >= 2)
    {
      v32 = sub_1CFC9C448();
      v33 = *(v32 - 8);
      (*(v33 + 16))(v7, a1, v32);
      (*(v33 + 56))(v7, 0, 1, v32);
      v34 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
      swift_beginAccess();
      sub_1CFC8DB9C(v7, v2 + v34);
      swift_endAccess();
    }
  }
}

unint64_t sub_1CFC89330(uint64_t a1)
{
  v2 = sub_1CFC9C448();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v51 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v51 - v11;
  v12 = *(v3 + 16);
  v12();
  v62 = v12;
  v63 = v3 + 16;
  v13 = swift_allocObject();
  v60 = v13;
  swift_weakInit();
  v54 = a1;
  (v12)(v10, a1, v2);
  v14 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v57 = v15;
  *(v15 + 16) = v13;
  v52 = v3;
  v53 = *(v3 + 32);
  v16 = v2;
  v53(v15 + v14, v10, v2);
  v17 = swift_allocObject();
  v61 = v17;
  swift_weakInit();
  v18 = v55;
  v19 = a1;
  v20 = v62;
  (v62)(v55, v19, v16);
  v21 = swift_allocObject();
  v56 = v21;
  *(v21 + 16) = v17;
  v22 = v18;
  v23 = v53;
  v53(v21 + v14, v22, v16);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v58;
  (v20)(v58, v54, v16);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = v25;
  v28 = v16;
  v23(v26 + v14, v27, v16);
  v29 = type metadata accessor for VoicemailDetailViewController(0);
  v30 = objc_allocWithZone(v29);
  v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
  v31 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  v32 = type metadata accessor for VoicemailSmartActionsBannerViewModel();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0xE000000000000000;

  v36 = v57;

  v58 = v24;

  v37 = MEMORY[0x1E69E7CC0];
  *(v35 + 32) = sub_1CFBE54FC(MEMORY[0x1E69E7CC0]);
  *(v35 + 40) = sub_1CFBE56E8(v37);
  *(v35 + 48) = 0;
  sub_1CFC9C188();
  *&v30[v31] = v35;
  v38 = v56;
  v39 = v28;
  *&v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel] = 0;
  *&v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_detailViewContainer] = 0;
  *&v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems] = v37;
  *&v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper] = 0;
  *&v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager] = 0;
  *&v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton] = 0;
  v40 = v59;
  (v62)(&v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item], v59, v39);
  v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_appType] = 1;
  v41 = &v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction];
  *v41 = &unk_1CFCA94A0;
  v41[1] = v36;
  v42 = &v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction];
  *v42 = sub_1CFC8E980;
  v42[1] = v38;
  v43 = &v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController];
  *v43 = sub_1CFC8E9E4;
  v43[1] = v26;

  result = sub_1CFC9C428();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v46 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_9;
  }

  v47 = result;
  v48 = sub_1CFC9FFD8();
  result = v47;
  if (!v48)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x1D3872640](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(result + 32);
LABEL_6:
    v46 = v45;

LABEL_9:
    *&v30[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v46;
    v64.receiver = v30;
    v64.super_class = v29;
    v49 = objc_msgSendSuper2(&v64, sel_initWithNibName_bundle_, 0, 0);
    v49[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
    v50 = v49;
    sub_1CFBDDA1C();

    (*(v52 + 8))(v40, v39);

    return v50;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC898F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1CFC9C448();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = sub_1CFC9F968();
  v2[13] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC89A2C, v7, v6);
}

uint64_t sub_1CFC89A2C()
{
  v1 = v0[13];
  v2 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v6 = v0[11];
    v5 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[6];
    v12 = sub_1CFC9F998();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    (*(v10 + 16))(v7, v11, v9);

    v13 = sub_1CFC9F958();
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v13;
    *(v15 + 24) = v16;
    (*(v10 + 32))(v15 + v14, v7, v9);
    *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
    sub_1CFBDC030(0, 0, v6, &unk_1CFCA94C8, v15);
  }

  v18 = v0[10];
  v17 = v0[11];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1CFC89BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFC9F968();
  v5[4] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC89C94, v7, v6);
}

uint64_t sub_1CFC89C94()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = sub_1CFC9C408();
  if (v3 && (v4 = v3, sub_1CFC9D5B8(), v4, LODWORD(v4) = sub_1CFC9D758(), v4 == sub_1CFC9D758()))
  {
    v5 = v0[2];
    v6 = *(v0[3] + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
    v7 = sub_1CFC9C448();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1CFCA1DD0;
    (*(v8 + 16))(v11 + v10, v5, v7);
    sub_1CFC9C858();

    v12 = sub_1CFC9C408();
    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = v12;
  }

  else
  {
    v14 = v0[2];
    v15 = *(v0[3] + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
    v16 = sub_1CFC9C448();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1CFCA1DD0;
    (*(v17 + 16))(v20 + v19, v14, v16);
    sub_1CFC9C888();

    v21 = sub_1CFC9C408();
    if (!v21)
    {
      goto LABEL_8;
    }

    v13 = v21;
  }

  sub_1CFC9D5C8();

LABEL_8:
  v22 = v0[1];

  return v22();
}

uint64_t sub_1CFC89F00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9C448();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = sub_1CFC9F998();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
    sub_1CFC9F968();
    v13 = sub_1CFC9F958();
    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v13;
    *(v15 + 24) = v16;
    (*(v4 + 32))(v15 + v14, v6, v3);
    sub_1CFBDC030(0, 0, v10, &unk_1CFCA94B8, v15);
  }

  return result;
}

uint64_t sub_1CFC8A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1CFC9F968();
  *(v4 + 24) = sub_1CFC9F958();
  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC8A1C0, v6, v5);
}

uint64_t sub_1CFC8A1C0()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_1CFC9C408();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
    v6 = sub_1CFC9D608();

    v7 = [objc_opt_self() sharedInstance];
  }

  else
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v8 = sub_1CFC9D938();
    __swift_project_value_buffer(v8, qword_1EE052308);
    v7 = sub_1CFC9D918();
    v9 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CFB9F000, v7, v9, "Unable to access message for callback action.", v10, 2u);
      MEMORY[0x1D3873280](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

unint64_t sub_1CFC8A360()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  result = sub_1CFC9C428();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    v2 = 0;
    goto LABEL_11;
  }

  v4 = result;
  v5 = sub_1CFC9FFD8();
  result = v4;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1D3872640](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_7:
    v2 = v1;

LABEL_11:
    v6 = sub_1CFC9C308();
    v3 = sub_1CFC8C4B4(v2);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC8A490(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = sub_1CFC9C448();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0118, &qword_1CFCA9488);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0120, &qword_1CFCA9490);
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = sub_1CFC9F968();
  v3[20] = sub_1CFC9F958();
  v15 = sub_1CFC9F938();
  v3[21] = v15;
  v3[22] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1CFC8A6A0, v15, v14);
}

uint64_t sub_1CFC8A6A0()
{
  v1 = *(v0 + 48);
  if (sub_1CFC8AF88(*(v0 + 56), *(v0 + 40)))
  {
    v2 = *(v0 + 160);

    v3 = *(v0 + 144);
    v4 = *(v0 + 120);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 64);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 144);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 104);
    *(v0 + 184) = *(*(v0 + 56) + 16);
    *(v0 + 16) = sub_1CFC9C848();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE618, &unk_1CFCA4AE0);
    v15 = sub_1CFBA57C0(&qword_1EE04D5C8, &qword_1EC4EE618, &unk_1CFCA4AE0);
    MEMORY[0x1D38702F0](v14, v15);

    sub_1CFC9DCA8();
    (*(v12 + 8))(v11, v13);
    v16 = *(v0 + 152);
    *(v0 + 192) = sub_1CFC9F958();
    v17 = sub_1CFBA57C0(&qword_1EC4F0128, &qword_1EC4F0120, &qword_1CFCA9490);
    v18 = *(MEMORY[0x1E69E85A8] + 4);
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_1CFC8A8E0;
    v20 = *(v0 + 144);
    v21 = *(v0 + 128);

    return MEMORY[0x1EEE6D8C8](v0 + 24, v21, v17);
  }
}

uint64_t sub_1CFC8A8E0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1CFC9F938();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1CFC8AEFC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1CFC9F938();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1CFC8AA78;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1CFC8AA78()
{
  v1 = v0[24];

  v0[27] = v0[3];
  v2 = v0[21];
  v3 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1CFC8AAE4, v2, v3);
}

uint64_t sub_1CFC8AAE4()
{
  v49 = v0;
  if (v0[27])
  {

    if ((sub_1CFC9F9B8() & 1) == 0)
    {
      v1 = v0[26];
      v2 = v0[23];
      v3 = v0[9];
      v4 = v0[10];
      v5 = v0[8];
      v7 = v0[5];
      v6 = v0[6];
      v8 = sub_1CFC9C7B8();
      sub_1CFC88758(v7, v8, v5);

      if ((*(v4 + 48))(v5, 1, v3) == 1)
      {
        sub_1CFBC2FB0(v0[8], &qword_1EC4EE368, &unk_1CFCA4040);
        v9 = v0[19];
        v0[24] = sub_1CFC9F958();
        v10 = sub_1CFBA57C0(&qword_1EC4F0128, &qword_1EC4F0120, &qword_1CFCA9490);
        v11 = *(MEMORY[0x1E69E85A8] + 4);
        v12 = swift_task_alloc();
        v0[25] = v12;
        *v12 = v0;
        v12[1] = sub_1CFC8A8E0;
        v13 = v0[18];
        v14 = v0[16];

        return MEMORY[0x1EEE6D8C8](v0 + 3, v14, v10);
      }

      (*(v0[10] + 32))(v0[12], v0[8], v0[9]);
      if (qword_1EE050010 != -1)
      {
        swift_once();
      }

      v16 = v0[11];
      v17 = v0[12];
      v18 = v0[9];
      v19 = v0[10];
      v20 = sub_1CFC9D938();
      __swift_project_value_buffer(v20, qword_1EE052308);
      (*(v19 + 16))(v16, v17, v18);
      v21 = sub_1CFC9D918();
      v22 = sub_1CFC9FAF8();
      v23 = os_log_type_enabled(v21, v22);
      v25 = v0[10];
      v24 = v0[11];
      v26 = v0[9];
      if (v23)
      {
        v27 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = v47;
        *v27 = 136315138;
        v46 = sub_1CFC9C348();
        v29 = v28;
        v30 = *(v25 + 8);
        v30(v24, v26);
        v31 = sub_1CFBB531C(v46, v29, &v48);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1CFB9F000, v21, v22, "Presenting details for item with id %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x1D3873280](v47, -1, -1);
        MEMORY[0x1D3873280](v27, -1, -1);
      }

      else
      {

        v30 = *(v25 + 8);
        v30(v24, v26);
      }

      v32 = v0[12];
      v33 = v0[9];
      v34 = v0[7];
      sub_1CFC88EA4(v32);
      v30(v32, v33);
    }

    v35 = v0[20];
    v37 = v0[17];
    v36 = v0[18];
    v38 = v0[16];

    (*(v37 + 8))(v36, v38);
  }

  else
  {
    v15 = v0[20];
    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  v39 = v0[18];
  v40 = v0[15];
  v42 = v0[11];
  v41 = v0[12];
  v43 = v0[8];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1CFC8AEFC()
{
  *(v0 + 32) = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED788, &qword_1CFCA26C0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

BOOL sub_1CFC8AF88(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_1CFC9C448();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = *(a1 + 16);
  v17 = sub_1CFC9C7B8();
  sub_1CFC88758(a2, v17, v7);

  v18 = (*(v9 + 48))(v7, 1, v8);
  v19 = v18;
  if (v18 == 1)
  {
    sub_1CFBC2FB0(v7, &qword_1EC4EE368, &unk_1CFCA4040);
  }

  else
  {
    v36 = v18;
    (*(v9 + 32))(v15, v7, v8);
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v20 = sub_1CFC9D938();
    __swift_project_value_buffer(v20, qword_1EE052308);
    (*(v9 + 16))(v12, v15, v8);
    v21 = sub_1CFC9D918();
    v22 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v23;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v23 = 136315138;
      v24 = sub_1CFC9C348();
      v35 = a1;
      v26 = v25;
      v27 = *(v9 + 8);
      v27(v12, v8);
      v28 = sub_1CFBB531C(v24, v26, &v37);

      v29 = v33;
      *(v33 + 1) = v28;
      v30 = v29;
      _os_log_impl(&dword_1CFB9F000, v21, v22, "Presenting details for item with id %s", v29, 0xCu);
      v31 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1D3873280](v31, -1, -1);
      MEMORY[0x1D3873280](v30, -1, -1);
    }

    else
    {

      v27 = *(v9 + 8);
      v27(v12, v8);
    }

    sub_1CFC88EA4(v15);
    v27(v15, v8);
    v19 = v36;
  }

  return v19 != 1;
}

uint64_t sub_1CFC8B30C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1CFC9C008();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_1CFC9F968();
  v2[7] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v2[8] = v7;
  v2[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFC8B400, v7, v6);
}

uint64_t sub_1CFC8B400()
{
  v24 = v0;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1CFC9D938();
  __swift_project_value_buffer(v5, qword_1EE052308);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1CFC9D918();
  v7 = sub_1CFC9FAF8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    sub_1CFC8E860(&unk_1EC4EDA68, MEMORY[0x1E69695A8]);
    v14 = sub_1CFCA0288();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1CFBB531C(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1CFB9F000, v6, v7, "Attempt to show voicemail details for uuid %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1D3873280](v13, -1, -1);
    MEMORY[0x1D3873280](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[2];
  v19 = swift_task_alloc();
  v0[10] = v19;
  *(v19 + 16) = v18;
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_1CFC8B69C;
  v21 = v0[3];

  return sub_1CFC8A490(sub_1CFC8DC0C, v19);
}

uint64_t sub_1CFC8B69C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CFC8B7E0, v5, v4);
}

uint64_t sub_1CFC8B7E0()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CFC8B848(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9C008();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE730, &qword_1CFCA51D0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  sub_1CFC9C338();
  (*(v4 + 16))(v17, a2, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v21 = *(v8 + 56);
  sub_1CFBA29FC(v20, v11, &qword_1EC4ED570, &unk_1CFCA2470);
  sub_1CFBA29FC(v17, &v11[v21], &qword_1EC4ED570, &unk_1CFCA2470);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) != 1)
  {
    sub_1CFBA29FC(v11, v29, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v22(&v11[v21], 1, v3) != 1)
    {
      v24 = v28;
      (*(v4 + 32))(v28, &v11[v21], v3);
      sub_1CFC8E860(&qword_1EC4EE738, MEMORY[0x1E69695A8]);
      v25 = v29;
      v23 = sub_1CFC9F6F8();
      v26 = *(v4 + 8);
      v26(v24, v3);
      sub_1CFBC2FB0(v17, &qword_1EC4ED570, &unk_1CFCA2470);
      sub_1CFBC2FB0(v20, &qword_1EC4ED570, &unk_1CFCA2470);
      v26(v25, v3);
      sub_1CFBC2FB0(v11, &qword_1EC4ED570, &unk_1CFCA2470);
      return v23 & 1;
    }

    sub_1CFBC2FB0(v17, &qword_1EC4ED570, &unk_1CFCA2470);
    sub_1CFBC2FB0(v20, &qword_1EC4ED570, &unk_1CFCA2470);
    (*(v4 + 8))(v29, v3);
    goto LABEL_6;
  }

  sub_1CFBC2FB0(v17, &qword_1EC4ED570, &unk_1CFCA2470);
  sub_1CFBC2FB0(v20, &qword_1EC4ED570, &unk_1CFCA2470);
  if (v22(&v11[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_1CFBC2FB0(v11, &qword_1EC4EE730, &qword_1CFCA51D0);
    v23 = 0;
    return v23 & 1;
  }

  sub_1CFBC2FB0(v11, &qword_1EC4ED570, &unk_1CFCA2470);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1CFC8BC88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1CFC9F968();
  v3[5] = sub_1CFC9F958();
  v5 = sub_1CFC9F938();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFC8BD24, v5, v4);
}

uint64_t sub_1CFC8BD24()
{
  v16 = v0;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1CFC9D938();
  __swift_project_value_buffer(v2, qword_1EE052308);

  v3 = sub_1CFC9D918();
  v4 = sub_1CFC9FAF8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1CFBB531C(v6, v5, &v15);
    _os_log_impl(&dword_1CFB9F000, v3, v4, "Attempt to show recents details for uniqueID %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D3873280](v8, -1, -1);
    MEMORY[0x1D3873280](v7, -1, -1);
  }

  v10 = v0[2];
  v9 = v0[3];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1CFC8BF10;
  v13 = v0[4];

  return sub_1CFC8A490(sub_1CFC8DC14, v11);
}

uint64_t sub_1CFC8BF10()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CFC67FB0, v5, v4);
}

uint64_t sub_1CFC8C054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CFC9C308();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 uniqueId];

    v8 = sub_1CFC9F768();
    v10 = v9;

    if (v8 == a2 && v10 == a3)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1CFCA02B8();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1CFC8C10C(unint64_t a1)
{
  v3 = sub_1CFC9CFF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (sub_1CFC9FFD8() > 1)
    {
      goto LABEL_3;
    }

    v8 = sub_1CFC9FFD8();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 > 1)
    {
LABEL_3:
      sub_1CFC9D0C8();
      (*(v4 + 104))(v7, *MEMORY[0x1E6995BE8], v3);
      v22 = sub_1CFC88ABC();
      sub_1CFC8E860(&qword_1EC4F00F8, MEMORY[0x1E6993778]);
      v9 = sub_1CFC9D0B8();

      (*(v4 + 8))(v7, v3);

      sub_1CFC9D448();
      if (swift_dynamicCastClass())
      {
        sub_1CFC8E860(&qword_1EC4F0138, type metadata accessor for DetailsPresenter);
        v10 = v9;

        sub_1CFC9D438();
      }

      sub_1CFC8CF7C(v9);

      return;
    }
  }

  if (v8)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D3872640](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v11 = *(a1 + 32);
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v23[0] = sub_1CFC8C4B4(v12);
  v14 = v13;

  sub_1CFC9D448();
  if (swift_dynamicCastClass())
  {
    v23[4] = sub_1CFC9D428();
    v23[5] = MEMORY[0x1E6995CD0];
    v23[1] = v14;
    v15 = objc_opt_self();
    v16 = v23[0];

    v17 = [v15 tu_contactStore];
    v18 = objc_allocWithZone(sub_1CFC9CFE8());
    v19 = sub_1CFC9CFD8();
    v20 = *(v1 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator);
    *(v1 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = v19;
  }

  sub_1CFC8CF7C(v23[0]);

  v21 = v23[0];
}

uint64_t sub_1CFC8C4B4(void *a1)
{
  v2 = sub_1CFC9CFF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_weakInit();
  v14 = a1;
  v13 = MEMORY[0x1E69E7CC0];
  v7 = a1;
  if (a1)
  {
    v8 = v7;
    MEMORY[0x1D3871DC0]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();
  }

  sub_1CFC9D0C8();
  sub_1CFBC2FB0(&v14, &qword_1EC4F00F0, &qword_1CFCA9478);
  (*(v3 + 104))(v6, *MEMORY[0x1E6995BE8], v2);

  v12 = sub_1CFC88ABC();
  sub_1CFC8E860(&qword_1EC4F00F8, MEMORY[0x1E6993778]);
  v9 = sub_1CFC9D0B8();

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_1CFC8C72C(void *a1)
{
  v2 = sub_1CFC9C448();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v7 = sub_1CFC9D938();
  __swift_project_value_buffer(v7, qword_1EE052308);
  v8 = sub_1CFC9D918();
  v9 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CFB9F000, v8, v9, "CommunicationDetails: presentVoicemailDetailAction, going to voicemail details page from voicemail tab", v10, 2u);
    MEMORY[0x1D3873280](v10, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = a1;
    sub_1CFC9C3F8();
    sub_1CFC88EA4(v6);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

id sub_1CFC8C8F8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for FavoritesList(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v34 - v12);
  sub_1CFC9CD28();
  v14 = LOBYTE(v34);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v36 = MEMORY[0x1E69E7CC0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
  sub_1CFC9F228();
  v17 = v35;
  v13[5] = v34;
  v13[6] = v17;
  LOBYTE(v36) = 0;
  sub_1CFC9F228();
  v18 = v35;
  *(v13 + 56) = LOBYTE(v34);
  v13[8] = v18;
  v19 = *(v7 + 52);
  *(v13 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  swift_storeEnumTagMultiPayload();
  *v13 = a1;

  *(v13 + 1) = v3;
  *(v13 + 16) = 0;
  *(v13 + 17) = a2;
  *(v13 + 3) = sub_1CFC8E78C;
  *(v13 + 4) = v16;
  sub_1CFC8E798(v13, v11);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F00E8, &qword_1CFCA9470));
  v21 = sub_1CFC9E6C8();
  v22 = v21;
  if (v14 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_9:

      return sub_1CFC8E7FC(v13);
    }

    v24 = Strong;
    [Strong showDetailViewController:v22 sender:v3];
LABEL_8:

    v22 = v24;
    goto LABEL_9;
  }

  v24 = v21;
  result = [v24 view];
  if (result)
  {
    v26 = result;
    v27 = objc_opt_self();
    v28 = [v27 clearColor];
    [v26 setBackgroundColor_];

    v29 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    v22 = v29;
    result = [v22 view];
    if (result)
    {
      v30 = result;
      v31 = [v27 clearColor];
      [v30 setBackgroundColor_];

      type metadata accessor for CGSize(0);
      sub_1CFC9CD28();
      [v22 setPreferredContentSize_];

      swift_beginAccess();
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        [v32 presentViewController:v22 animated:1 completion:0];

        v24 = v33;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CFC8CE20(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v2 = [Strong navigationController];

        if (v2)
        {
          v3 = [v2 popViewControllerAnimated_];

LABEL_9:
        }
      }
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();

      if (v3)
      {
        [v3 dismissViewControllerAnimated:1 completion:0];
        goto LABEL_9;
      }
    }
  }
}

int64x2_t sub_1CFC8CF54@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x407F400000000000uLL);
  *a1 = result;
  return result;
}

int64x2_t sub_1CFC8CF68@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x4079000000000000uLL);
  *a1 = result;
  a1[1].i8[0] = 0;
  return result;
}

void sub_1CFC8CF7C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
LABEL_7:
      v9 = v5;
      [v5 pushViewController:a1 animated:1];
      goto LABEL_11;
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 presentedViewController];

    if (v8)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    return;
  }

  v9 = v10;
  [v10 showDetailViewController:a1 sender:v1];
LABEL_11:
}

uint64_t DetailsPresenter.deinit()
{
  MEMORY[0x1D3873340](v0 + 24);
  sub_1CFBC2FB0(v0 + 32, &unk_1EC4EF810, &qword_1CFCA7900);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView, &qword_1EC4EE368, &unk_1CFCA4040);
  return v0;
}

uint64_t DetailsPresenter.__deallocating_deinit()
{
  MEMORY[0x1D3873340](v0 + 3);
  sub_1CFBC2FB0((v0 + 4), &unk_1EC4EF810, &qword_1CFCA7900);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView, &qword_1EC4EE368, &unk_1CFCA4040);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t DetailsPresenter.detailsViewController(_:shouldEnableCustomQuickAction:)()
{
  sub_1CFC9F968();
  *(v0 + 16) = sub_1CFC9F958();
  v2 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC8EC6C, v2, v1);
}

uint64_t sub_1CFC8D268()
{
  sub_1CFC9F968();
  *(v0 + 16) = sub_1CFC9F958();
  v2 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC8D2FC, v2, v1);
}

uint64_t sub_1CFC8D2FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1CFC8D388(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1CFBB531C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1CFC8D3E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CFC8D430(a1, a2);
  sub_1CFC8D560(&unk_1F4C6AB98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1CFC8D430(uint64_t a1, unint64_t a2)
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

  v6 = sub_1CFC8D64C(v5, 0);
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

  result = sub_1CFCA0128();
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
        v10 = sub_1CFC9F808();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CFC8D64C(v10, 0);
        result = sub_1CFCA00C8();
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

uint64_t sub_1CFC8D560(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1CFC8D6C0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CFC8D64C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0110, &qword_1CFCA9480);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CFC8D6C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0110, &qword_1CFCA9480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

_BYTE **sub_1CFC8D7B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1CFC8D7C4()
{
  v0 = sub_1CFC9C318();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0130, &qword_1CFCA94D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  sub_1CFC9C3B8();
  v9 = (*(v1 + 88))(v4, v0);
  if (v9 == *MEMORY[0x1E6993648])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x1E6993650])
  {
    (*(v1 + 96))(v4, v0);

    v10 = &unk_1EC4EF488;
    v11 = &unk_1CFCA6F70;
LABEL_5:
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v10, v11) + 48);
    v13 = sub_1CFC9C688();
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x1E6993678] || v9 == *MEMORY[0x1E6993660] || v9 == *MEMORY[0x1E6993670])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x1E6993680])
  {
    (*(v1 + 96))(v4, v0);

    v10 = &unk_1EC4EF490;
    v11 = &unk_1CFCA6F78;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x1E6993658])
  {
LABEL_2:
    (*(v1 + 8))(v4, v0);
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x1E6993668])
  {
    (*(v1 + 96))(v4, v0);
    v16 = sub_1CFC9C688();
    v17 = *(v16 - 8);
    (*(v17 + 32))(v8, v4, v16);
    (*(v17 + 56))(v8, 0, 1, v16);
    goto LABEL_7;
  }

  if (v9 != *MEMORY[0x1E6993640])
  {
    v18 = sub_1CFC9C688();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    (*(v1 + 8))(v4, v0);
    goto LABEL_7;
  }

LABEL_6:
  v14 = sub_1CFC9C688();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
LABEL_7:
  sub_1CFBC2FB0(v8, &qword_1EC4F0130, &qword_1CFCA94D8);
  return 0;
}

uint64_t sub_1CFC8DB9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CFC8DC1C(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_1CFC9D468();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = sub_1CFC9C448();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  swift_beginAccess();
  sub_1CFBA29FC(v2 + v18, v12, &qword_1EC4EE368, &unk_1CFCA4040);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v12, v13);
    v19 = sub_1CFC9C428();
    v20 = v17;
    if (v19 >> 62)
    {
      v21 = sub_1CFC9FFD8();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < 1)
    {
      (*(v14 + 8))(v20, v13);
      goto LABEL_10;
    }

    v22 = v48;
    (*(v48 + 16))(v8, v47, v3);
    v23 = (*(v22 + 88))(v8, v3);
    if (v23 != *MEMORY[0x1E6995840] && v23 != *MEMORY[0x1E6995848])
    {
      (*(v14 + 8))(v20, v13);
      (*(v22 + 8))(v8, v3);
      return;
    }

    v28 = v46;
    (*(v22 + 104))(v46);
    LODWORD(v47) = sub_1CFC9D458();
    (*(v22 + 8))(v28, v3);
    v29 = sub_1CFC9C428();
    v30 = v29;
    if (v29 >> 62)
    {
      v31 = sub_1CFC9FFD8();
      v45 = v20;
      if (v31)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = v20;
      if (v31)
      {
LABEL_17:
        v48 = v14;
        v49 = MEMORY[0x1E69E7CC0];
        sub_1CFCA0168();
        if (v31 < 0)
        {
          __break(1u);
          return;
        }

        v32 = 0;
        do
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x1D3872640](v32, v30);
          }

          else
          {
            v33 = *(v30 + 8 * v32 + 32);
          }

          v34 = v33;
          ++v32;
          [objc_allocWithZone(MEMORY[0x1E69D8B80]) initWithContact_];

          sub_1CFCA0138();
          v35 = *(v49 + 16);
          sub_1CFCA0178();
          sub_1CFCA0188();
          sub_1CFCA0148();
        }

        while (v31 != v32);

        v14 = v48;
        v36 = v49;
        goto LABEL_27;
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_27:
    sub_1CFC34EBC(v36);

    v37 = objc_allocWithZone(MEMORY[0x1E69D8C10]);
    sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
    sub_1CFC72300(&qword_1EC4EEAC8, &qword_1EC4ED538, 0x1E69D8B80);
    v38 = sub_1CFC9F9C8();

    v39 = [v37 initWithRemoteMembers_];

    v40 = v47;
    if (v47)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    [v39 setAvMode_];
    [v39 setVideoEnabled_];
    [v39 setOriginatingUIType_];
    v42 = [objc_opt_self() invitationPreferencesForRecentCall];
    sub_1CFBA2D80(0, &qword_1EC4F0100, 0x1E69D8B68);
    sub_1CFC72300(&qword_1EC4F0108, &qword_1EC4F0100, 0x1E69D8B68);
    sub_1CFC9F9D8();

    v43 = sub_1CFC9F9C8();

    [v39 setInvitationPreferences_];

    v44 = [objc_opt_self() sharedInstance];
    [v44 launchAppForJoinRequest_];

    (*(v14 + 8))(v45, v13);
    return;
  }

  sub_1CFBC2FB0(v12, &qword_1EC4EE368, &unk_1CFCA4040);
LABEL_10:
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v24 = sub_1CFC9D938();
  __swift_project_value_buffer(v24, qword_1EE052308);
  v25 = sub_1CFC9D918();
  v26 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1CFB9F000, v25, v26, "Current group callItem doesn't exist, can't execute group action", v27, 2u);
    MEMORY[0x1D3873280](v27, -1, -1);
  }
}

void sub_1CFC8E374()
{
  sub_1CFC17EA4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DetailsPresenter.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFBD431C;

  return v8(a1);
}

uint64_t dispatch thunk of DetailsPresenter.presentCallHistoryDetails(uniqueID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1CFBD4A14;

  return v10(a1, a2);
}

uint64_t sub_1CFC8E798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC8E7FC(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC8E860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFC8E8A8()
{
  v2 = *(sub_1CFC9C448() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CFBD4A14;

  return sub_1CFC898F4(v4, v0 + v3);
}

uint64_t sub_1CFC8E980()
{
  v1 = *(sub_1CFC9C448() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CFC89F00(v2, v3);
}

unint64_t sub_1CFC8E9E4()
{
  v1 = *(*(sub_1CFC9C448() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1CFC8A360();
}

uint64_t sub_1CFC8EA58(uint64_t a1)
{
  v4 = *(sub_1CFC9C448() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC8A128(a1, v6, v7, v1 + v5);
}

uint64_t sub_1CFC8EB48(uint64_t a1)
{
  v4 = *(sub_1CFC9C448() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD4A14;

  return sub_1CFC89BFC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1CFC8EC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_1CFC9F998();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1CFC9F968();

  v7 = sub_1CFC9F958();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1CFBDC030(0, 0, v5, &unk_1CFCA9688, v8);
}

uint64_t sub_1CFC8EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC8EE58, v6, v5);
}

uint64_t sub_1CFC8EE58()
{
  v1 = (*(v0 + 40) + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1CFC8EF54;

  return v6();
}

uint64_t sub_1CFC8EF54()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1CFC8F074, v4, v3);
}

uint64_t sub_1CFC8F074()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_getKeyPath();
  v0[2] = v2;
  sub_1CFC90228(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v0[3] = v2;
  swift_getKeyPath();
  sub_1CFC9C178();

  *(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) = (*(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) & 1) == 0;
  v0[4] = v2;
  swift_getKeyPath();
  sub_1CFC9C168();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CFC8F1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_1CFC9F628();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFC9F5F8();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1CFC9E0E8();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0170, &qword_1CFCA95B8);
  v53 = *(v54 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v48 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0168, &unk_1CFCA95A8);
  v16 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v18 = &v48 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0160, &qword_1CFCA95A0);
  v19 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v21 = &v48 - v20;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0158, &qword_1CFCA9598);
  v22 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v24 = &v48 - v23;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0150, &qword_1CFCA9590);
  v25 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v48 - v26;
  *&v69 = sub_1CFC9F1A8();
  swift_getKeyPath();
  v27 = a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  v67 = a1;
  v55 = sub_1CFC90228(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  v56 = v27;
  sub_1CFC9C158();

  v28 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage;
  v65 = a1;
  if (*(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) == 1)
  {
    sub_1CFC9E0D8();
  }

  else
  {
    sub_1CFC9E0C8();
  }

  v29 = v52;
  sub_1CFC9EF18();
  (*(v10 + 8))(v13, v51);

  sub_1CFC9F5E8();
  v30 = v60;
  sub_1CFC9F618();
  v31 = &v18[*(v49 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF190, &unk_1CFCA6440) + 28);
  sub_1CFC90228(&unk_1EE04D138, MEMORY[0x1E6982178]);
  v33 = v59;
  sub_1CFC9E298();
  (*(v61 + 8))(v30, v62);
  (*(v58 + 8))(v9, v33);
  *v31 = swift_getKeyPath();
  (*(v53 + 32))(v18, v29, v54);
  v34 = &v21[*(v50 + 36)];
  LODWORD(v33) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  sub_1CFC9F1D8();
  sub_1CFC9CD28();
  *v34 = swift_getKeyPath();
  sub_1CFBCCE88(v18, v21, &qword_1EC4F0168, &unk_1CFCA95A8);
  v35 = sub_1CFC9F178();
  KeyPath = swift_getKeyPath();
  sub_1CFBCCE88(v21, v24, &qword_1EC4F0160, &qword_1CFCA95A0);
  v37 = &v24[*(v57 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v38 = v63;
  sub_1CFBCCE88(v24, v63, &qword_1EC4F0158, &qword_1CFCA9598);
  v39 = (v38 + *(v64 + 36));
  v40 = v70;
  *v39 = v69;
  v39[1] = v40;
  v39[2] = v71;
  swift_getKeyPath();
  v41 = v65;
  v67 = v65;
  sub_1CFC9C158();

  LODWORD(v35) = *(v41 + v28);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = [objc_opt_self() bundleForClass_];
  v44 = sub_1CFC9BE28();
  v46 = v45;

  v67 = v44;
  v68 = v46;
  sub_1CFC8FF44();
  sub_1CFBB4460();
  sub_1CFC9EF68();

  return sub_1CFBC1348(v38);
}

uint64_t sub_1CFC8FA58@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69816C0];
  v3 = sub_1CFC9F1D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1CFC8FACC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69816E0];
  v3 = sub_1CFC9F1D8();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1CFC8FBA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9F1D8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1CFC8FC10@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_1CFC9E858();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0140, &qword_1CFCA9580);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0148, &qword_1CFCA9588);
  sub_1CFC8FE88();
  sub_1CFC9F298();
  sub_1CFC9E848();
  sub_1CFBA57C0(&qword_1EE04D1C8, &qword_1EC4F0140, &qword_1CFCA9580);
  sub_1CFC90228(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
  sub_1CFC9EEC8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1CFC8FE88()
{
  result = qword_1EE04D3A0;
  if (!qword_1EE04D3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0148, &qword_1CFCA9588);
    sub_1CFC8FF44();
    sub_1CFC90228(&qword_1EE04FFC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3A0);
  }

  return result;
}

unint64_t sub_1CFC8FF44()
{
  result = qword_1EE04D3C0;
  if (!qword_1EE04D3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0150, &qword_1CFCA9590);
    sub_1CFC8FFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3C0);
  }

  return result;
}

unint64_t sub_1CFC8FFD0()
{
  result = qword_1EE04D3F0;
  if (!qword_1EE04D3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0158, &qword_1CFCA9598);
    sub_1CFC90088();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3F0);
  }

  return result;
}

unint64_t sub_1CFC90088()
{
  result = qword_1EE04D438;
  if (!qword_1EE04D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0160, &qword_1CFCA95A0);
    sub_1CFC90140();
    sub_1CFBA57C0(&qword_1EE04D220, &qword_1EC4EF138, &qword_1CFCA63B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D438);
  }

  return result;
}

unint64_t sub_1CFC90140()
{
  result = qword_1EE04D4C8;
  if (!qword_1EE04D4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0168, &unk_1CFCA95A8);
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&unk_1EE04D228, &qword_1EC4EF190, &unk_1CFCA6440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4C8);
  }

  return result;
}

uint64_t sub_1CFC90228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFC90270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return sub_1CFC8EDC0(a1, v4, v5, v6);
}

uint64_t sub_1CFC90328()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CC0];

  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  v5 = *(v0 + v3);
  v35 = *(v5 + 16);
  if (v35)
  {
    v34 = v5 + 32;

    v6 = 0;
    v33 = v5;
    while (v6 < *(v5 + 16))
    {
      v38 = *(v34 + 16 * v6);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v8 = sub_1CFBA392C(ObjectType, *(&v38 + 1));
      v9 = *(v8 + 16);
      if (v9)
      {
        v36 = v6;
        v46 = MEMORY[0x1E69E7CC0];
        sub_1CFBA4538(0, v9, 0);
        sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
        sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
        v10 = v46;
        v11 = v9 - 1;
        v12 = 32;
        for (i = v8; ; v8 = i)
        {
          v13 = *(v8 + v12 + 64);
          v14 = *(v8 + v12 + 80);
          v15 = *(v8 + v12 + 48);
          v49 = *(v8 + v12 + 32);
          v16 = *(v8 + v12 + 16);
          v47 = *(v8 + v12);
          v48 = v16;
          v51 = v13;
          v52 = v14;
          v50 = v15;
          v17 = *(&v49 + 1);
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v19 = swift_allocObject();
          v20 = v50;
          *(v19 + 72) = v49;
          *(v19 + 88) = v20;
          v21 = v52;
          *(v19 + 104) = v51;
          *(v19 + 120) = v21;
          v22 = v48;
          *(v19 + 40) = v47;
          *(v19 + 16) = v18;
          *(v19 + 24) = v38;
          *(v19 + 56) = v22;
          sub_1CFBA29FC(&v47, v39, &qword_1EC4EF7B8, &qword_1CFCA78C8);
          swift_unknownObjectRetain();
          sub_1CFBA29FC(&v47, v39, &qword_1EC4EF7B8, &qword_1CFCA78C8);

          sub_1CFC9FDF8();
          v23 = sub_1CFC9FB58();
          [v23 setTintColor_];
          v24 = v23;
          v25 = sub_1CFC9F728();
          [v24 setAccessibilityIdentifier_];

          v42 = v49;
          v43 = v50;
          v44 = v51;
          v45 = v52;
          v40 = v47;
          v41 = v48;
          v46 = v10;
          v27 = v10[2];
          v26 = v10[3];
          swift_unknownObjectRetain();
          if (v27 >= v26 >> 1)
          {
            sub_1CFBA4538((v26 > 1), v27 + 1, 1);
            v10 = v46;
          }

          v10[2] = v27 + 1;
          v28 = &v10[15 * v27];
          *(v28 + 2) = v38;
          v29 = v41;
          *(v28 + 3) = v40;
          *(v28 + 4) = v29;
          v30 = v42;
          v31 = v43;
          v32 = v45;
          *(v28 + 7) = v44;
          *(v28 + 8) = v32;
          *(v28 + 5) = v30;
          *(v28 + 6) = v31;
          v28[18] = v24;
          if (!v11)
          {
            break;
          }

          --v11;
          v12 += 96;
        }

        v5 = v33;
        v6 = v36;
      }

      else
      {

        v10 = MEMORY[0x1E69E7CC0];
      }

      ++v6;
      swift_beginAccess();
      sub_1CFBA46A8(v10);
      swift_endAccess();
      result = swift_unknownObjectRelease();
      if (v6 == v35)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFC90748()
{
  v1 = v0;
  v73 = sub_1CFC9C088();
  v2 = *(v73 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED528, &qword_1CFCA2440);
  v6 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v54 - v7;
  v9 = sub_1CFC9C0A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v54 - v14;
  v15 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
  swift_beginAccess();
  result = *(v1 + v15);
  v60 = *(result + 16);
  if (v60)
  {
    v59 = result + 32;
    v72 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;

    v18 = 0;
    v71 = (v2 + 8);
    v54 = (v10 + 8);
    v55 = (v10 + 16);
    v74 = v1;
    v58 = v17;
    while (1)
    {
      v19 = v59 + 120 * v18;
      v20 = *(v19 + 48);
      v21 = *v19;
      v22 = *(v19 + 16);
      v78[2] = *(v19 + 32);
      v79 = v20;
      v78[0] = v21;
      v78[1] = v22;
      v23 = *(v19 + 64);
      v24 = *(v19 + 80);
      v25 = *(v19 + 96);
      v67 = *(v19 + 112);
      v68 = v18;
      v83 = v67;
      v81 = v24;
      v82 = v25;
      v80 = v23;
      v63 = v79;
      v64 = *(&v22 + 1);
      v70 = v23;
      v62 = *(&v24 + 1);
      v65 = *(&v25 + 1);
      v66 = *(&v79 + 1);
      v26 = v78[0];
      sub_1CFBA29FC(v78, v77, &qword_1EC4ED5C8, &qword_1CFCA24B0);
      v69 = v26;
      v27 = sub_1CFBA48FC(v26, *(&v26 + 1));
      v28 = MEMORY[0x1E69E7CC0];
      if ((v29 & 1) == 0)
      {
        break;
      }

LABEL_16:
      sub_1CFC92278();
      v47 = *(v28 + 2);
      if (v47)
      {
        result = (v28 + 32);
        v48 = -v47;
        v49 = -1;
        do
        {
          v50 = v48 + v49 != -1;
          if (v48 + v49 == -1)
          {
            break;
          }

          if (++v49 >= *(v28 + 2))
          {
            goto LABEL_30;
          }

          v51 = result + 32;
          sub_1CFBB4598(result, v77);
          v52 = (v70)(v77);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          result = v51;
        }

        while ((v52 & 1) == 0);
      }

      else
      {

        v50 = 0;
      }

      v53 = v67;
      v18 = v68 + 1;
      [v67 setEnabled_];
      swift_unknownObjectRelease();

      if (v18 == v60)
      {
      }

      if (v18 >= *(v58 + 16))
      {
        __break(1u);
      }
    }

    v30 = v27;
    v31 = v61;
    SectionnedCollectionViewController.selectedRows(in:)(v69, *(&v26 + 1), v61);
    (*v55)(v56, v31, v9);
    v32 = MEMORY[0x1E6969B50];
    sub_1CFC92B70(&unk_1EE04D6E0, MEMORY[0x1E6969B50]);
    sub_1CFC9F858();
    v33 = *(v57 + 36);
    swift_beginAccess();
    sub_1CFC92B70(&qword_1EE04D6D8, v32);
    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1CFC9FA48();
      sub_1CFC92B70(&qword_1EE04D6F0, MEMORY[0x1E6969B18]);
      v34 = v73;
      v35 = sub_1CFC9F6F8();
      (*v71)(v5, v34);
      if (v35)
      {
        sub_1CFBC2FB0(v8, &unk_1EC4ED528, &qword_1CFCA2440);
        (*v54)(v61, v9);
        goto LABEL_16;
      }

      v36 = sub_1CFC9FA88();
      v38 = *v37;
      v36(v77, 0);
      result = sub_1CFC9FA58();
      if ((v30 & 0x8000000000000000) != 0)
      {
        break;
      }

      v39 = *(v74 + v72);
      if (v30 >= *(v39 + 16))
      {
        goto LABEL_29;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        v40 = *(v39 + 8 * v30 + 32);
        if (v38 < *(v40 + 16))
        {
          v41 = v40 + 40 * v38;
          v42 = *(v41 + 56);
          v43 = __swift_project_boxed_opaque_existential_1((v41 + 32), v42);
          v76 = v42;
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v75);
          (*(*(v42 - 8) + 16))(boxed_opaque_existential_0Tm, v43, v42);
          sub_1CFBCC9AC(&v75, v77);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1CFC7B110(0, *(v28 + 2) + 1, 1, v28);
          }

          v46 = *(v28 + 2);
          v45 = *(v28 + 3);
          if (v46 >= v45 >> 1)
          {
            v28 = sub_1CFC7B110((v45 > 1), v46 + 1, 1, v28);
          }

          *(v28 + 2) = v46 + 1;
          sub_1CFBCC9AC(v77, &v28[32 * v46 + 32]);
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFC90E04(uint64_t a1)
{
  v3 = sub_1CFC9C138();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v79 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = MEMORY[0x1EEE9AC00](v79 - v9);
  v80 = v79 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return 0;
  }

  v79[0] = v12;
  v85 = v10;
  v86 = v1;
  v82 = v13;
  v17 = *(v13 + 16);
  v16 = v13 + 16;
  v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
  v19 = a1 + v18;
  v88 = v16;
  v89 = v11;
  v87 = v17;
  (v17)(v10, a1 + v18);
  if (v15 != 1)
  {
    v69 = *(v82 + 72);
    v70 = (v82 + 8);
    v83 = (v82 + 32);
    v84 = v69;
    v71 = v69 + a1 + v18;
    v72 = 1;
    while (1)
    {
      (v87)(v8, v71, v89);
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      v74 = sub_1CFC9C118();
      v75 = v85;
      v76 = sub_1CFC9C118();
      v77 = *v70;
      if (v74 >= v76)
      {
        v77(v8, v89);
      }

      else
      {
        v78 = v89;
        v77(v75, v89);
        (*v83)(v75, v8, v78);
      }

      ++v72;
      v71 += v84;
      if (v73 == v15)
      {
        goto LABEL_3;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_3:
  v20 = v82;
  (*(v82 + 32))(v80, v85, v89);
  v21 = sub_1CFC9C128();
  v22 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  v23 = v86;
  swift_beginAccess();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = *(v23 + v22);
  if (v21 < *(v24 + 16))
  {
    v25 = v24 + 16 * v21;
    v26 = *(v25 + 32);
    v83 = *(v25 + 40);
    v27 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
    v79[1] = v26;
    swift_unknownObjectRetain();
    swift_beginAccess();
    v28 = *(v20 + 72);
    v85 = (v20 + 8);
    v29 = MEMORY[0x1E69E7CC0];
    v81 = MEMORY[0x1E69E7CC0];
    v30 = v89;
    v31 = v79[0];
    do
    {
      (v87)(v31, v19, v30);
      v32 = *(v86 + v27);

      v33 = sub_1CFC9C128();
      if ((v33 & 0x8000000000000000) != 0)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v33 >= *(v32 + 16))
      {
        goto LABEL_41;
      }

      v34 = *(v32 + 8 * v33 + 32);

      v35 = sub_1CFC9C118();
      if ((v35 & 0x8000000000000000) != 0 || v35 >= *(v34 + 16))
      {
        v30 = v89;
        v84 = *v85;
        v84(v31, v89);
      }

      else
      {
        sub_1CFBB94B0(v34 + 40 * v35 + 32, &v90);

        v36 = *v85;
        (*v85)(v31, v89);
        sub_1CFBAD070(&v90, &v95);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1CFC7AFC8(0, v29[2] + 1, 1, v29);
        }

        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          v29 = sub_1CFC7AFC8((v38 > 1), v39 + 1, 1, v29);
        }

        v29[2] = v39 + 1;
        sub_1CFBAD070(&v95, &v29[5 * v39 + 4]);
        v30 = v89;
      }

      v19 += v28;
      --v15;
    }

    while (v15);
    ObjectType = swift_getObjectType();
    v41 = sub_1CFBA392C(ObjectType, v83);
    v42 = v41;
    v94 = MEMORY[0x1E69E7CC0];
    v88 = *(v41 + 16);
    if (!v88)
    {
LABEL_29:

      if (v81 >> 62)
      {
        goto LABEL_46;
      }

      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        sub_1CFCA02C8();
        sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
        goto LABEL_32;
      }

      goto LABEL_48;
    }

    v43 = 0;
    v87 = (v41 + 32);
    v83 = (v29 + 4);
    v81 = MEMORY[0x1E69E7CC0];
    v82 = v41;
    while (v43 < *(v42 + 16))
    {
      v44 = &v87[96 * v43];
      v45 = v44[1];
      v95 = *v44;
      v96 = v45;
      v46 = v44[2];
      v47 = v44[3];
      v48 = v44[5];
      v99 = v44[4];
      v100 = v48;
      v97 = v46;
      v98 = v47;
      ++v43;
      v49 = v29[2];
      sub_1CFBA29FC(&v95, &v90, &qword_1EC4EF7B8, &qword_1CFCA78C8);
      v50 = -v49;
      v51 = -1;
      v52 = v83;
      do
      {
        if (v50 + v51 == -1)
        {
          sub_1CFBC2FB0(&v95, &qword_1EC4EF7B8, &qword_1CFCA78C8);
          goto LABEL_20;
        }

        if (++v51 >= v29[2])
        {
          __break(1u);
          goto LABEL_40;
        }

        v53 = (v52 + 5);
        sub_1CFBB94B0(v52, v92);
        v54 = v98;
        v55 = v93;
        v56 = __swift_project_boxed_opaque_existential_1(v92, v93);
        v91 = v55;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v90);
        (*(*(v55 - 8) + 16))(boxed_opaque_existential_0Tm, v56, v55);
        v58 = v54(&v90);
        __swift_destroy_boxed_opaque_existential_1Tm(&v90);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        v52 = v53;
      }

      while ((v58 & 1) == 0);
      v59 = *(&v96 + 1);

      v59(v60);
      sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v29;
      v63 = v98;
      *(v62 + 64) = v97;
      *(v62 + 80) = v63;
      v64 = v100;
      *(v62 + 96) = v99;
      *(v62 + 112) = v64;
      v65 = v96;
      *(v62 + 32) = v95;
      *(v62 + 48) = v65;

      sub_1CFC9FDF8();
      MEMORY[0x1D3871DC0]();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v66 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();
      v81 = v94;
LABEL_20:
      v42 = v82;
      if (v43 == v88)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  if (!sub_1CFC9FFD8())
  {
LABEL_48:
    v84(v80, v89);
    swift_unknownObjectRelease();

    return 0;
  }

  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);

  sub_1CFCA01E8();

LABEL_32:

  sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);
  v67 = sub_1CFC9FD68();
  swift_unknownObjectRelease();
  v84(v80, v89);
  return v67;
}

uint64_t SectionnedCollectionViewController.keyCommands.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69DDE88];
  *(v0 + 16) = xmmword_1CFCA2540;
  *(v0 + 32) = [objc_opt_self() keyCommandWithInput:*v1 modifierFlags:0 action:sel_deleteKeyPressed_];
  return v0;
}

uint64_t sub_1CFC91858(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_1CFC9C138();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  v61 = a1;
  v9 = *(*(a1 + v7) + 16);
  if (!v9)
  {
    return result;
  }

  v10 = 0;
  v60 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  v62 = v45 + 16;
  v11 = (v45 + 8);
  v47 = v7;
  v46 = v9;
  while (2)
  {
    v12 = *(v61 + v7);
    if (v10 >= *(v12 + 16))
    {
      goto LABEL_33;
    }

    v13 = v10 + 1;
    v14 = v12 + 16 * v10;
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = sub_1CFBA392C(ObjectType, v15);
    v19 = *(v18 + 16) + 1;
    v20 = v18;
    do
    {
      if (!--v19)
      {

        result = swift_unknownObjectRelease();
        goto LABEL_4;
      }

      v21 = v20 + 96;
      v22 = *(v20 + 48);
      v20 += 96;
    }

    while ((v22 & 1) == 0);
    v55 = v16;
    v56 = v10 + 1;
    v23 = *(v21 - 56);
    v25 = *(v21 - 32);
    v24 = *(v21 - 24);
    v26 = *(v21 - 8);
    v57 = *(v21 - 16);
    v27 = *(v21 + 8);
    v49 = *v21;
    v51 = *(v21 + 24);

    v54 = v23;

    v53 = v25;

    v50 = v24;
    v59 = v26;

    v52 = v27;

    v28 = *(v48 + 16);
    if (!v28)
    {
      v58 = MEMORY[0x1E69E7CC0];
LABEL_30:
      v49(v58);
      swift_unknownObjectRelease();

      v7 = v47;
      v9 = v46;
      v13 = v56;
LABEL_4:
      v10 = v13;
      if (v13 == v9)
      {
        return result;
      }

      continue;
    }

    break;
  }

  v29 = v45;
  v30 = v48 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  swift_beginAccess();
  v31 = *(v29 + 72);
  v32 = *(v29 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v32(v6, v30, v3);
    result = sub_1CFC9C128();
    if (result != v10)
    {
      goto LABEL_23;
    }

    v33 = *(v61 + v60);
    if (v10 >= *(v33 + 16))
    {
      break;
    }

    v34 = *(v33 + 8 * v10 + 32);

    v35 = sub_1CFC9C118();
    if ((v35 & 0x8000000000000000) != 0 || v35 >= *(v34 + 16))
    {

LABEL_23:
      (*v11)(v6, v3);
LABEL_24:
      v67 = 0u;
      v68 = 0u;
      goto LABEL_25;
    }

    sub_1CFBB94B0(v34 + 40 * v35 + 32, &v63);

    sub_1CFBAD070(&v63, &v65);
    v36 = v66;
    v37 = __swift_project_boxed_opaque_existential_1(&v65, v66);
    v64 = v36;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v63);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_0Tm, v37, v36);
    LOBYTE(v36) = v57(&v63);
    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    if ((v36 & 1) == 0)
    {
      (*v11)(v6, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(&v65);
      goto LABEL_24;
    }

    v39 = v66;
    v40 = __swift_project_boxed_opaque_existential_1(&v65, v66);
    *(&v68 + 1) = v39;
    v41 = __swift_allocate_boxed_opaque_existential_0Tm(&v67);
    (*(*(v39 - 8) + 16))(v41, v40, v39);
    (*v11)(v6, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(&v65);
    if (*(&v68 + 1))
    {
      sub_1CFBCC9AC(&v67, &v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1CFC7B110(0, *(v58 + 2) + 1, 1, v58);
      }

      v43 = *(v58 + 2);
      v42 = *(v58 + 3);
      if (v43 >= v42 >> 1)
      {
        v58 = sub_1CFC7B110((v42 > 1), v43 + 1, 1, v58);
      }

      v44 = v58;
      *(v58 + 2) = v43 + 1;
      sub_1CFBCC9AC(&v65, &v44[32 * v43 + 32]);
      goto LABEL_26;
    }

LABEL_25:
    sub_1CFBC2FB0(&v67, &qword_1EC4EE650, &qword_1CFCA4B10);
LABEL_26:
    v30 += v31;
    if (!--v28)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void sub_1CFC91ED8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(a3 + 16);
    if (v8)
    {
      v9 = a3 + 32;
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1CFBB94B0(v9, &v24);
        v12 = a4[6];
        v11 = a4[7];
        v13 = v25;
        v14 = __swift_project_boxed_opaque_existential_1(&v24, v25);
        v23 = v13;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v22);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_0Tm, v14, v13);
        LOBYTE(v11) = v12(&v22);
        __swift_destroy_boxed_opaque_existential_1Tm(&v22);
        if (v11)
        {
          sub_1CFBAD070(&v24, &v22);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBCA900(0, *(v10 + 16) + 1, 1);
            v10 = v26;
          }

          v18 = *(v10 + 16);
          v17 = *(v10 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1CFBCA900((v17 > 1), v18 + 1, 1);
            v10 = v26;
          }

          *(v10 + 16) = v18 + 1;
          sub_1CFBAD070(&v22, v10 + 40 * v18 + 32);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v24);
        }

        v9 += 40;
        --v8;
      }

      while (v8);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v20 = a4[8];
    v19 = a4[9];
    v21 = sub_1CFC82C04(v10);

    v20(v21);

    [v7 setEditing:0 animated:1];
  }
}

void sub_1CFC920C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1CFBC53A0(a3, a4);
    v11 = v10;
    v12 = *(v10 + 2);
    if (v12)
    {
      v13 = 0;
      v14 = (v10 + 32);
      v15 = MEMORY[0x1E69E7CC0];
      while (v13 < *(v11 + 2))
      {
        sub_1CFBB4598(v14, v22);
        v16 = *(a5 + 56);
        if ((*(a5 + 48))(v22))
        {
          sub_1CFBCC9AC(v22, v21);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBCAAF0(0, *(v15 + 16) + 1, 1);
            v15 = v23;
          }

          v19 = *(v15 + 16);
          v18 = *(v15 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1CFBCAAF0((v18 > 1), v19 + 1, 1);
            v15 = v23;
          }

          *(v15 + 16) = v19 + 1;
          sub_1CFBCC9AC(v21, (v15 + 32 * v19 + 32));
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        ++v13;
        v14 += 32;
        if (v12 == v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
LABEL_14:

      v20 = *(a5 + 72);
      (*(a5 + 64))(v15);

      [v9 setEditing:0 animated:1];
    }
  }
}

id sub_1CFC92278()
{
  v1 = v0;
  v74 = sub_1CFC9C138();
  v55 = *(v74 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
  swift_beginAccess();
  v6 = *&v1[v5];
  v7 = *(v6 + 16);
  v73 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  v60 = v6;

  v59 = v7;
  if (!v7)
  {
  }

  v9 = 0;
  v58 = v60 + 32;
  v71 = v1;
  v72 = v55 + 16;
  v56 = (v55 + 8);
  while (v9 < *(v60 + 16))
  {
    v68 = v9;
    v12 = (v58 + 120 * v9);
    v13 = v12[3];
    v14 = *v12;
    v15 = v12[1];
    v77[2] = v12[2];
    v78 = v13;
    v77[0] = v14;
    v77[1] = v15;
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    v82 = *(v12 + 14);
    v19 = v82;
    v80 = v17;
    v81 = v18;
    v79 = v16;
    v20 = *(&v17 + 1);
    v21 = *(&v15 + 1);
    v61 = v18;
    v62 = v15;
    v22 = *(&v16 + 1);
    v69 = *(&v78 + 1);
    v23 = v78;
    v70 = *(&v18 + 1);
    sub_1CFBA29FC(v77, v76, &qword_1EC4ED5C8, &qword_1CFCA24B0);
    sub_1CFBA29FC(v77, v76, &qword_1EC4ED5C8, &qword_1CFCA24B0);
    swift_unknownObjectRelease();
    v63 = v19;

    sub_1CFBA29FC(v77, v76, &qword_1EC4ED5C8, &qword_1CFCA24B0);
    swift_unknownObjectRelease();
    v64 = v20;
    v24 = v71;

    v65 = v22;

    v66 = v23;
    v25 = v69;

    v67 = v21;

    result = [v24 collectionView];
    if (!result)
    {
      goto LABEL_40;
    }

    v26 = result;
    v27 = [result indexPathsForSelectedItems];

    if (v27)
    {
      v28 = sub_1CFC9F8A8();

      v29 = *(v28 + 16);
      v30 = v56;
      if (v29)
      {
        v31 = v55;
        v32 = *(v55 + 80);
        v57 = v28;
        v33 = v28 + ((v32 + 32) & ~v32);
        swift_beginAccess();
        v34 = *(v31 + 72);
        v35 = *(v31 + 16);
        v36 = MEMORY[0x1E69E7CC0];
        v35(v4, v33, v74);
        while (1)
        {
          v37 = *&v24[v73];

          v38 = sub_1CFC9C128();
          if ((v38 & 0x8000000000000000) != 0 || v38 >= *(v37 + 16))
          {
            break;
          }

          v39 = *(v37 + 8 * v38 + 32);

          v40 = sub_1CFC9C118();
          if ((v40 & 0x8000000000000000) != 0 || v40 >= *(v39 + 16))
          {

            v24 = v71;
            goto LABEL_11;
          }

          sub_1CFBB94B0(v39 + 40 * v40 + 32, v75);

          (*v30)(v4, v74);
          sub_1CFBAD070(v75, v76);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1CFC7AFC8(0, v36[2] + 1, 1, v36);
          }

          v42 = v36[2];
          v41 = v36[3];
          if (v42 >= v41 >> 1)
          {
            v36 = sub_1CFC7AFC8((v41 > 1), v42 + 1, 1, v36);
          }

          v36[2] = v42 + 1;
          sub_1CFBAD070(v76, &v36[5 * v42 + 4]);
          v24 = v71;
LABEL_12:
          v33 += v34;
          if (!--v29)
          {

            v43 = v68;
            v25 = v69;
            goto LABEL_27;
          }

          v35(v4, v33, v74);
        }

LABEL_11:
        (*v30)(v4, v74);
        goto LABEL_12;
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
    v43 = v68;
LABEL_27:
    v44 = v36[2];

    if (v44 <= 1)
    {
      v10 = v63;
      v11 = sub_1CFC9F728();
      [v10 setTitle_];
    }

    else
    {
      v45 = v70;
      if (v70)
      {
        v46 = v63;

        v47 = [v46 title];
        if (!v47)
        {
          goto LABEL_36;
        }

        v48 = v47;
        v49 = sub_1CFC9F768();
        v51 = v50;

        if (v49 != v61 || v45 != v51)
        {
          v52 = sub_1CFCA02B8();

          if (v52)
          {

            swift_bridgeObjectRelease_n();
          }

          else
          {
LABEL_36:
            v53 = sub_1CFC9F728();

            [v46 setTitle_];
          }

          goto LABEL_4;
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
      }
    }

LABEL_4:
    result = sub_1CFBC2FB0(v77, &qword_1EC4ED5C8, &qword_1CFCA24B0);
    v9 = v43 + 1;
    if (v9 == v59)
    {
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1CFC92970()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 indexPathsForSelectedItems];

  if (!v3)
  {
    return;
  }

  sub_1CFC9C138();
  v4 = sub_1CFC9F8A8();

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CFC92B4C;
  *(v7 + 24) = v6;
  v10[4] = sub_1CFBF63A4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CFC63D88;
  v10[3] = &block_descriptor_15;
  v8 = _Block_copy(v10);
  v9 = v0;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  [v9 setEditing:0 animated:1];
}

uint64_t sub_1CFC92B70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFC92BB8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  v1 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1CFC92C78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CFC92D40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1CFC950B8(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC92E90(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1CFC92F00(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title;
  v10 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  v11 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8);
  v12 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16);
  v13 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 24);
  sub_1CFBB45F4(v10, v11, v12);

  v14 = a1;
  v25 = a2;
  v15 = a3 & 1;
  v16 = sub_1CFC9EDA8();
  sub_1CFBB44C0(v10, v11, v12);

  if (v16)
  {
    v17 = *v9;
    v18 = *(v9 + 8);
    v19 = *(v9 + 16);
    v20 = *(v9 + 24);
    v21 = v25;
    *v9 = v14;
    *(v9 + 8) = v21;
    *(v9 + 16) = v15;
    *(v9 + 24) = a4;
    sub_1CFBB44C0(v17, v18, v19);
  }

  else
  {
    v24[0] = swift_getKeyPath();
    v24[1] = v24;
    MEMORY[0x1EEE9AC00](v24[0]);
    v23 = v25;
    v26 = v24[2];
    sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
    sub_1CFC9C148();
    sub_1CFBB44C0(v14, v23, v15);
  }
}

uint64_t sub_1CFC93124(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC9323C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC93B1C();
  }

  return result;
}

uint64_t sub_1CFC93294()
{
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  v1 = v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8);
  v4 = *(v1 + 24);
  sub_1CFBB45F4(v2, *(v1 + 8), *(v1 + 16));

  return v2;
}

uint64_t sub_1CFC93370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  v5 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8);
  v6 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16);
  v7 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_1CFBB45F4(v4, v5, v6);
}

uint64_t sub_1CFC93440(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  sub_1CFBB45F4(*a1, v3, v4);

  return sub_1CFC92F00(v2, v3, v4, v5);
}

uint64_t sub_1CFC934B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title;
  v6 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  v7 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8);
  v8 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16);
  v9 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 24);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4 & 1;
  *(v5 + 24) = a5;
  sub_1CFBB45F4(a2, a3, a4 & 1);

  sub_1CFBB44C0(v6, v7, v8);
}

uint64_t sub_1CFC93540()
{
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  v1 = (v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  sub_1CFBB9654(v2, v1[1], v1[2], v1[3]);
  return v2;
}

uint64_t sub_1CFC93614@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v5 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  v6 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16);
  v7 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1CFBB9654(v4, v5, v6, v7);
}

uint64_t sub_1CFC936D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  sub_1CFBB9654(*a1, v3, v4, v5);
  return sub_1CFC93734(v2, v3, v4, v5);
}

uint64_t sub_1CFC93734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v8 = a1;
  v9 = (v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v11 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v10 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  v13 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16);
  v12 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24);
  if (!v12)
  {
    if (!a4)
    {
      v19 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
    sub_1CFC9C148();
    sub_1CFBB74FC(v8, a2, v6, a4);
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v14 = a2;
  v16 = *(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  sub_1CFBB45F4(*(v4 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle), v10, v13 & 1);

  v17 = sub_1CFC9EDA8();
  v18 = v16;
  v6 = a3;
  a2 = v14;
  v8 = a1;
  sub_1CFBB74FC(v11, v18, v13, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *v9;
  v10 = v9[1];
  v13 = v9[2];
  v19 = v9[3];
LABEL_8:
  *v9 = v8;
  v9[1] = a2;
  v9[2] = v6;
  v9[3] = a4;

  return sub_1CFBB74FC(v11, v10, v13, v19);
}

uint64_t sub_1CFC9394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v6 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  v7 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8);
  v8 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16);
  v9 = *(a1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFBB9654(a2, a3, a4, a5);
  return sub_1CFBB74FC(v6, v7, v8, v9);
}

uint64_t sub_1CFC939C4()
{
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  return *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary);
}

uint64_t sub_1CFC93A6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  *a2 = *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary);
  return result;
}

uint64_t sub_1CFC93B1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01C8, &qword_1CFCA9848);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = v64 - v4;
  v5 = sub_1CFC9BDF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v65 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v64 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v64 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_highlightText);
  sub_1CFC9DCE8();
  if (v71)
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v71)
  {
    v17 = v71;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  sub_1CFC9C3D8();
  v18 = sub_1CFC9F728();

  v67 = v16;
  v19 = sub_1CFC9F728();
  v20 = [v18 attributedStringToHighlightText_];

  v21 = v5;
  sub_1CFC9BE18();
  v68 = v14;
  v69 = v6;
  v22 = *(v6 + 16);
  v23 = v14;
  v24 = v12;
  v22(v12, v23, v5);
  v25 = sub_1CFC9EDE8();
  sub_1CFC92F00(v25, v27, v26 & 1, v28);
  v29 = sub_1CFC9C408();
  if (v29)
  {
    v30 = v29;
    v31 = v67;
    v64[1] = v24;
    v64[2] = v1;
    v32 = v17;
    v65 = v21;
    if (*(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) == 1)
    {
      *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v70 = v1;
      sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
      sub_1CFC9C148();
    }

    v46 = v66;
    sub_1CFC9D5A8();
    v47 = sub_1CFC9D738();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {

      sub_1CFBC2FB0(v46, &qword_1EC4F01C8, &qword_1CFCA9848);
    }

    else
    {
      v49 = sub_1CFC9D728();
      v51 = v50;
      (*(v48 + 8))(v46, v47);
      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        sub_1CFC9423C(v49, v51, v31, v32);

        v53 = sub_1CFC9EDE8();
        sub_1CFC93734(v53, v55, v54 & 1, v56);

        return (*(v69 + 8))(v68, v65);
      }
    }

    v58 = v65;
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v60 = [objc_opt_self() bundleForClass_];
    v61 = sub_1CFC9BE28();
    v63 = v62;

    sub_1CFC93734(v61, v63, 0, MEMORY[0x1E69E7CC0]);
    return (*(v69 + 8))(v68, v58);
  }

  else
  {
    sub_1CFC9C438();
    v33 = sub_1CFC9F728();

    v34 = sub_1CFC9F728();

    v35 = [v33 attributedStringToHighlightText_];

    v36 = v65;
    sub_1CFC9BE18();
    v22(v12, v36, v5);
    v37 = sub_1CFC9EDE8();
    sub_1CFC93734(v37, v39, v38 & 1, v40);
    v41 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary;
    if (*(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary))
    {
      v42 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v42);
      v70 = v1;
      sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
      sub_1CFC9C148();

      v43 = *(v69 + 8);
      v43(v36, v5);
      return (v43)(v68, v5);
    }

    else
    {
      v57 = *(v69 + 8);
      v57(v36, v5);
      result = (v57)(v68, v5);
      *(v1 + v41) = 0;
    }
  }

  return result;
}

uint64_t sub_1CFC9423C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1CFC9BE48();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1CFC957C4();
  sub_1CFC95ACC(a1, a2, a3, a4, v10);
  if (sub_1CFC9F7D8() < 1)
  {

    sub_1CFC9BE38();
    return sub_1CFC9BE08();
  }

  else
  {
    v11 = sub_1CFC9F728();

    v12 = sub_1CFC9F728();
    [v11 attributedStringToHighlightText_];

    return sub_1CFC9BE18();
  }
}

uint64_t sub_1CFC943BC()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_item;
  v2 = sub_1CFC9C448();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_highlightText);

  v4 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables);

  v5 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 24);
  sub_1CFBB44C0(*(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16));

  sub_1CFBB74FC(*(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16), *(v0 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24));
  v6 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState___observationRegistrar;
  v7 = sub_1CFC9C198();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VoicemailResultCellState()
{
  result = qword_1EC4F01A8;
  if (!qword_1EC4F01A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFC94548()
{
  result = sub_1CFC9C448();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1CFC9C198();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1CFC94648()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  v2 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  sub_1CFBB9654(v2, *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 8), *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 16), *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle + 24));
  return v2;
}

uint64_t sub_1CFC9471C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_item;
  sub_1CFC9C3A8();
  v8 = sub_1CFC9BFB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1CFC9BF98();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1CFBC2FB0(v6, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
  }

  return result;
}

uint64_t sub_1CFC94870()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  return *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary);
}

uint64_t sub_1CFC9491C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  v2 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title);
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 24);
  sub_1CFBB45F4(v2, *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 8), *(v1 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title + 16));

  return v2;
}

uint64_t sub_1CFC949F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF6B58](a1, WitnessTable);
}

unint64_t sub_1CFC94ADC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CFCA0338();
  sub_1CFCA0068();
  MEMORY[0x1D3872880](*(a1 + 40));
  v4 = sub_1CFCA0378();

  return sub_1CFC94CE8(a1, v4);
}

unint64_t sub_1CFC94B54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  v6 = sub_1CFCA0378();

  return sub_1CFC94DC8(a1, a2, v6);
}

unint64_t sub_1CFC94BCC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1CFCA0328();

  return sub_1CFC94E80(a1, v4);
}

unint64_t sub_1CFC94C10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1CFCA0048();

  return sub_1CFC94EEC(a1, v5);
}

unint64_t sub_1CFC94C54(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CFC9F768();
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  v4 = sub_1CFCA0378();

  return sub_1CFC94FB4(a1, v4);
}

unint64_t sub_1CFC94CE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CFBCCD6C(*(v2 + 48) + 48 * v4, v9);
      if (MEMORY[0x1D3872590](v9, a1))
      {
        v7 = v9[5];
        sub_1CFBCCDA4(v9);
        if (v7 == *(a1 + 40))
        {
          return v4;
        }
      }

      else
      {
        sub_1CFBCCDA4(v9);
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CFC94DC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CFCA02B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CFC94E80(uint64_t a1, uint64_t a2)
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

unint64_t sub_1CFC94EEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CFBAAE48(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3872590](v9, a1);
      sub_1CFBAAEA4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CFC94FB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1CFC9F768();
      v9 = v8;
      if (v7 == sub_1CFC9F768() && v9 == v10)
      {
        break;
      }

      v12 = sub_1CFCA02B8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1CFC950B8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_1CFC9DC98();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1EC4EFD28;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_1CFBB9E3C(&qword_1EC4EFD28, MEMORY[0x1E695BF10]);

          v22 = sub_1CFC9F6B8();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_1CFBB9E3C(&qword_1EC4EFD30, MEMORY[0x1E695BF10]);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (sub_1CFC9F6F8())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_1EC4EFD28;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1CFC953AC(v8, v7);
}

uint64_t sub_1CFC953AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1CFC9FFD8();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_1CFCA0028();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC954B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CFC9FFD8())
  {
    v7 = sub_1CFC72480(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__cancellables) = v7;
  v8 = v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__title;
  *v8 = xmmword_1CFCA9690;
  *(v8 + 16) = 0;
  *(v8 + 24) = v6;
  v9 = (v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__subtitle);
  *v9 = 0u;
  v9[1] = 0u;
  *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState__showingSummary) = 0;
  sub_1CFC9C188();
  v10 = OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_item;
  v11 = sub_1CFC9C448();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3 + v10, a1, v11);
  *(v3 + OBJC_IVAR____TtC10CallsAppUI24VoicemailResultCellState_highlightText) = a2;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0200, qword_1CFCA9898);
  sub_1CFBA57C0(&qword_1EC4F0208, &qword_1EC4F0200, qword_1CFCA9898);
  sub_1CFC9DDA8();

  swift_getKeyPath();
  sub_1CFBB9E3C(&qword_1EC4F01C0, type metadata accessor for VoicemailResultCellState);
  sub_1CFC9C158();

  swift_getKeyPath();
  sub_1CFC9C178();

  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  swift_getKeyPath();
  sub_1CFC9C168();

  (*(v12 + 8))(a1, v11);
  return v3;
}

void sub_1CFC957C4()
{
  v0 = sub_1CFC9F7D8();
  v1 = v0 + 1;
  if (__OFADD__(v0, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v1 >= 1)
  {
    v29 = objc_opt_self();
    v2 = *MEMORY[0x1E69DB648];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01E8, &qword_1CFCA9860);
    v3 = 0;
    while (!__OFADD__(v3, v1))
    {
      v4 = (v3 + v1) / 2;
      sub_1CFC9F7E8();
      v5 = sub_1CFC9F848();
      MEMORY[0x1D3871CF0](v5);

      v6 = [v29 telephonyUISubheadlineShortFont];
      v7 = sub_1CFC9F728();

      v32[0] = v2;
      v32[4] = sub_1CFC95F38();
      v32[1] = v6;
      v8 = sub_1CFCA0238();
      v9 = v2;
      v10 = v6;
      sub_1CFC95F84(v32, &v30);
      v11 = v30;
      v12 = sub_1CFC94C54(v30);
      if (v13)
      {
        goto LABEL_14;
      }

      v8[(v12 >> 6) + 8] |= 1 << v12;
      *(v8[6] + 8 * v12) = v11;
      sub_1CFBCC9AC(&v31, (v8[7] + 32 * v12));
      v14 = v8[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_15;
      }

      v8[2] = v16;
      sub_1CFBC2FB0(v32, &qword_1EC4F01F8, &qword_1CFCA9868);
      type metadata accessor for Key(0);
      sub_1CFBB9E3C(&qword_1EC4ED1F8, type metadata accessor for Key);
      v17 = sub_1CFC9F698();

      [v7 boundingRectWithSize:3 options:v17 attributes:0 context:{344.0, 1.79769313e308}];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v33.origin.x = v19;
      v33.origin.y = v21;
      v33.size.width = v23;
      v33.size.height = v25;
      v26 = ceil(CGRectGetHeight(v33));
      [v10 lineHeight];
      v28 = v27;

      if (v26 / v28 > 2.0)
      {
        v1 = v4 - 1;
      }

      else
      {
        v3 = v4 + 1;
      }

      if (v3 >= v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

unint64_t sub_1CFC95ACC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01D0, &qword_1CFCA9850);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v48 - v12;
  if (sub_1CFC9F7D8() <= a5)
  {

    return a1;
  }

  v48 = a1;
  v49 = a2;
  v14 = *MEMORY[0x1E695DA48];
  sub_1CFBB4460();
  v15 = sub_1CFC9FEE8();
  if (v16)
  {
    a1 = v15;
    a2 = v16;
  }

  else
  {
  }

  v48 = a3;
  v49 = a4;
  v17 = sub_1CFC9FEE8();
  if (v18)
  {
    a3 = v17;
    a4 = v18;
  }

  else
  {
  }

  v48 = 25180;
  v49 = 0xE200000000000000;
  MEMORY[0x1D3871D30](a3, a4);

  MEMORY[0x1D3871D30](0x625C2A775CLL, 0xE500000000000000);
  v19 = v48;
  v20 = v49;
  v48 = a1;
  v49 = a2;
  v54 = v19;
  v55 = v20;
  v21 = sub_1CFC9C028();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_1CFC9FF08();
  v23 = v22;
  sub_1CFBC2FB0(v13, &qword_1EC4F01D0, &qword_1CFCA9850);

  if (v23)
  {
    return a1;
  }

  v24 = sub_1CFC9F818();
  result = sub_1CFC9F818();
  v26 = result - v24;
  if (__OFSUB__(result, v24))
  {
    __break(1u);
    goto LABEL_27;
  }

  v27 = __OFSUB__(a5, v26);
  v28 = a5 - v26;
  if (v27)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = result;
  result = sub_1CFC9F7D8();
  v30 = result - v29;
  if (__OFSUB__(result, v29))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = v28 / 2;
  if (v30 < v28 / 2)
  {
    v27 = __OFSUB__(v28, v30);
    v32 = v28 - v30;
    if (v27)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v33 = v24 - v32;
    if (!__OFSUB__(v24, v32))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v33 = v24 - v31;
  if (!__OFSUB__(v24, v31))
  {
LABEL_19:
    v54 = 0;
    v55 = 0xE000000000000000;
    result = sub_1CFC9F7E8();
    v34 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v34 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v34 >= result >> 14)
    {
      v35 = sub_1CFC9F848();
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = MEMORY[0x1D3871CF0](v35, v37, v39, v41);
      v44 = v43;

      if (v33 >= 1)
      {
        MEMORY[0x1D3871D30](0xA680E29C80E2, 0xA600000000000000);
        v48 = v42;
        v49 = v44;
        v52 = 32;
        v53 = 0xE100000000000000;
        v45 = sub_1CFC9FEC8();

        v46 = *(v45 + 16);
        v48 = v45;
        v49 = v45 + 32;
        v50 = v46 != 0;
        v51 = (2 * v46) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01D8, &qword_1CFCA9858);
        sub_1CFBA57C0(&qword_1EC4F01E0, &qword_1EC4F01D8, &qword_1CFCA9858);
        v42 = sub_1CFC9F6E8();
        v44 = v47;
      }

      MEMORY[0x1D3871D30](v42, v44);

      return v54;
    }

    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1CFC95F38()
{
  result = qword_1EC4F01F0;
  if (!qword_1EC4F01F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4F01F0);
  }

  return result;
}

uint64_t sub_1CFC95F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F01F8, &qword_1CFCA9868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t View.contextMenu(contacts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v8[0] = sub_1CFC35A20;
  v8[1] = v6;
  v9 = 0;

  MEMORY[0x1D38715B0](v8, a2, &type metadata for ContactActionsMenuModifier, a3);
}

uint64_t sub_1CFC96128()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD28();

  return v1;
}

char *sub_1CFC9619C(unint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4F02F0, &unk_1CFCA9A90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v68 - v7;
  v9 = sub_1CFC9FE98();
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v68 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0300, &qword_1CFCA9AA0);
  v70 = *(v72 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0308, &qword_1CFCA9AA8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0310, &unk_1CFCA9AB0);
  v77 = *(v21 - 8);
  v78 = v21;
  v22 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v68 - v23;
  swift_unknownObjectWeakInit();
  v24 = &v2[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v2[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_cancellable] = 0;
  *&v2[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_contacts] = a1;
  v68 = v2;
  swift_unknownObjectWeakAssign();
  v25 = objc_opt_self();

  v26 = sub_1CFC9F728();
  v27 = [v25 tu:v26 contactStoreConfigurationForBundleIdentifier:?];

  v86 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CFCA2540;
  *(v28 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v89 = MEMORY[0x1E69E7CC0];
  v82 = v9;
  v83 = a2;
  v81 = v8;
  v74 = v18;
  v75 = v17;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v85 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v30 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  v31 = a1 & 0xC000000000000001;
  if (v29)
  {
    do
    {
      while (1)
      {
        if (v31)
        {
          v60 = MEMORY[0x1D3872640](v30, a1);
        }

        else
        {
          if (v30 >= *(v85 + 16))
          {
            goto LABEL_21;
          }

          v60 = *(a1 + 8 * v30 + 32);
        }

        v61 = v60;
        v62 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v85 = a1 & 0xFFFFFFFFFFFFFF8;
          v29 = sub_1CFC9FFD8();
          goto LABEL_3;
        }

        v63 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE870, &unk_1CFCA53E0);
        v64 = sub_1CFC9F898();
        v65 = [v61 areKeysAvailable_];

        if ((v65 & 1) == 0)
        {
          break;
        }

        a1 = v63;
LABEL_15:
        MEMORY[0x1D3871DC0]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v67 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CFC9F8C8();
        }

        sub_1CFC9F8F8();
        v84 = v89;
        v30 = v62;
        if (v29 == v62)
        {
          goto LABEL_4;
        }
      }

      v66 = [v61 identifier];
      if (!v66)
      {
        sub_1CFC9F768();
        v66 = sub_1CFC9F728();
      }

      v58 = sub_1CFC9F898();
      v59 = [v86 contactForIdentifier:v66 keysToFetch:v58];

      ++v30;
      a1 = v63;
      if (v59)
      {
        goto LABEL_15;
      }
    }

    while (v29 != v30);
  }

LABEL_4:

  v32 = objc_allocWithZone(MEMORY[0x1E695D118]);
  sub_1CFBA2D80(0, &unk_1EE04CED8, 0x1E695CD58);
  v33 = sub_1CFC9F898();

  v34 = [v32 initWithContacts_];

  v35 = v68;
  *&v68[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_controller] = v34;
  v36 = [v34 currentAvailableMenuItems];
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v37 = sub_1CFC9F8A8();

  swift_beginAccess();
  v88 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4F02B0, &qword_1CFCA98E8);
  sub_1CFC9DD08();
  swift_endAccess();
  v38 = type metadata accessor for ContactActionsController();
  v87.receiver = v35;
  v87.super_class = v38;
  v39 = objc_msgSendSuper2(&v87, sel_init);
  v40 = *&v39[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_controller];
  v41 = v39;
  [v40 setDelegate_];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F02E8, &qword_1CFCA9A88);
  v42 = v69;
  sub_1CFC9DD18();
  swift_endAccess();
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v43 = sub_1CFC9FC28();
  v89 = v43;
  v44 = sub_1CFC9FBF8();
  v45 = v71;
  (*(*(v44 - 8) + 56))(v71, 1, 1, v44);
  sub_1CFBA57C0(&unk_1EC4F0318, &qword_1EC4F0300, &qword_1CFCA9AA0);
  sub_1CFC72300(&qword_1EE04FF90, &qword_1EE04FF80, 0x1E69E9610);
  v46 = v72;
  v47 = v73;
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v45, &qword_1EC4EF860, &qword_1CFCA4AD0);

  (*(v70 + 8))(v42, v46);
  v48 = v79;
  sub_1CFC9FE88();
  v49 = [objc_opt_self() mainRunLoop];
  v89 = v49;
  v50 = sub_1CFC9FE78();
  v51 = v81;
  (*(*(v50 - 8) + 56))(v81, 1, 1, v50);
  sub_1CFBA2D80(0, &qword_1EC4F0328, 0x1E695DFD0);
  sub_1CFBA57C0(&qword_1EC4F0330, &qword_1EC4F0308, &qword_1CFCA9AA8);
  sub_1CFC72300(&qword_1EC4F0338, &qword_1EC4F0328, 0x1E695DFD0);
  v52 = v75;
  v53 = v76;
  sub_1CFC9DD98();
  sub_1CFBC2FB0(v51, &unk_1EC4F02F0, &unk_1CFCA9A90);

  (*(v80 + 8))(v48, v82);
  (*(v74 + 8))(v47, v52);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFBA57C0(&qword_1EC4F0340, &qword_1EC4F0310, &unk_1CFCA9AB0);
  v54 = v78;
  v55 = sub_1CFC9DDA8();

  (*(v77 + 8))(v53, v54);
  v56 = *&v41[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_cancellable];
  *&v41[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_cancellable] = v55;

  return v41;
}

void sub_1CFC96CD8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion);
    v4 = Strong;
    sub_1CFBB256C(v3);

    if (v3)
    {
      v3(v1);
      sub_1CFBABFA0(v3);
    }
  }
}

id sub_1CFC96E60()
{
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_contacts];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = *&v0[OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_contacts];
    }

    if (sub_1CFC9FFD8())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v9[4] = sub_1CFC98824;
  v9[5] = v2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CFC970DC;
  v9[3] = &block_descriptor_16;
  v3 = _Block_copy(v9);
  v4 = objc_opt_self();
  v5 = v0;
  v6 = [v4 elementWithProvider_];
  _Block_release(v3);

  return v6;
}

uint64_t sub_1CFC96F8C(void (*a1)(), void (*a2)(), uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD28();

  if (v12 >> 62)
  {
    v11 = sub_1CFC9FFD8();

    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6)
  {
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CFC9DD28();

    a1();
  }

LABEL_4:
  v7 = (a3 + OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion);
  v8 = *(a3 + OBJC_IVAR____TtC10CallsAppUI24ContactActionsController_deferredElementCompletion);
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;

  return sub_1CFBABFA0(v8);
}

uint64_t sub_1CFC970DC(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1CFC9882C, v5);
}

void sub_1CFC97170(uint64_t a1, uint64_t a2)
{
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v3 = sub_1CFC9F898();
  (*(a2 + 16))(a2, v3);
}

id sub_1CFC9721C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactActionsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFC97320@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactActionsController();
  result = sub_1CFC9DCB8();
  *a1 = result;
  return result;
}

char *sub_1CFC97360()
{
  v0 = objc_allocWithZone(type metadata accessor for ContactActionsController());

  return sub_1CFC9619C(v1, 0);
}

uint64_t type metadata accessor for ContactActionsController()
{
  result = qword_1EE04F618;
  if (!qword_1EE04F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC973F4()
{
  sub_1CFC974C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1CFC974C0()
{
  if (!qword_1EC4F02A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4F02B0, &qword_1CFCA98E8);
    v0 = sub_1CFC9DD48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4F02A8);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFC97544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1CFC9758C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFC97608()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for ContactActionsController();
  sub_1CFC97758();
  v4 = sub_1CFC9DE98();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD28();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F02C8, &qword_1CFCA9A80);
  sub_1CFBA57C0(&qword_1EC4F02D0, &qword_1EC4F02C8, &qword_1CFCA9A80);
  sub_1CFC987D0();
  sub_1CFC9EED8();
}

unint64_t sub_1CFC97758()
{
  result = qword_1EC4F02C0;
  if (!qword_1EC4F02C0)
  {
    type metadata accessor for ContactActionsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F02C0);
  }

  return result;
}

void sub_1CFC977B0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 children];
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v4 = sub_1CFC9F8A8();

  *a2 = v4;
}

uint64_t sub_1CFC97820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03E0, &qword_1CFCA9BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03F0, &qword_1CFCA9BB8);
  sub_1CFBA57C0(&qword_1EC4F03E8, &qword_1EC4F03E0, &qword_1CFCA9BB0);
  sub_1CFC98D34();
  return sub_1CFC9F208();
}

id sub_1CFC97910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 image];
  if (result)
  {
    result = sub_1CFC9F198();
  }

  *a2 = result;
  return result;
}

uint64_t sub_1CFC97950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03B0, &qword_1CFCA9B90);
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03B8, &qword_1CFCA9B98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0390, &qword_1CFCA9B80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v73 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03C0, &qword_1CFCA9BA0);
  v14 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0380, &qword_1CFCA9B78);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v73 - v20;
  v22 = *(a1 + 8);
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    v82 = v17;
    v83 = v10;
    *(v25 + 16) = v24;
    MEMORY[0x1EEE9AC00](v25);
    *(&v73 - 2) = v24;
    v26 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03E0, &qword_1CFCA9BB0);
    sub_1CFBA57C0(&qword_1EC4F03E8, &qword_1EC4F03E0, &qword_1CFCA9BB0);
    sub_1CFC9F298();
    v27 = v82;
    (*(v18 + 16))(v16, v21, v82);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4F0378, &qword_1EC4F0380, &qword_1CFCA9B78);
    sub_1CFC98B94();
    v28 = v85;
    sub_1CFC9E798();

    (*(v18 + 8))(v21, v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0370, &qword_1CFCA9B70);
    return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  }

  else
  {
    v31 = v85;
    v32 = v81;
    v76 = v6;
    v77 = v9;
    v78 = v13;
    v75 = v16;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      v82 = v17;
      v35 = v22;
      v36 = [v34 options];
      v83 = v10;
      if (v36)
      {
        v81 = v35;
        v46 = v35;
        v47 = [v34 title];
        v48 = sub_1CFC9F768();
        v50 = v49;

        v51 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v51 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {
          v52 = [v34 title];

          v53 = sub_1CFC9F768();
          v55 = v54;

          v86 = v53;
          v87 = v55;
          sub_1CFBB4460();
          v56 = sub_1CFC9EDF8();
          v58 = v57;
          LOBYTE(v53) = v59;
          sub_1CFC9ECD8();
          v60 = v53;
          v61 = sub_1CFC9EDC8();
          v63 = v62;
          LODWORD(v79) = v64;
          v66 = v65;

          sub_1CFBB44C0(v56, v58, v60 & 1);

          v67 = v79 & 1;
          sub_1CFBB45F4(v61, v63, v79 & 1);
        }

        else
        {

          v61 = 0;
          v63 = 0;
          v67 = 0;
          v66 = 0;
        }

        v43 = v75;
        v68 = v77;
        v69 = [v34 children];
        sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
        v70 = sub_1CFC9F8A8();

        sub_1CFBB9654(v61, v63, v67, v66);
        sub_1CFBB74FC(v61, v63, v67, v66);
        *v68 = v61;
        v68[1] = v63;
        v68[2] = v67;
        v68[3] = v66;
        v68[4] = v70;
        swift_storeEnumTagMultiPayload();
        sub_1CFBB9654(v61, v63, v67, v66);

        sub_1CFBB9654(v61, v63, v67, v66);

        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03A0, &qword_1CFCA9B88);
        sub_1CFBA57C0(&qword_1EC4F0398, &qword_1EC4F03A0, &qword_1CFCA9B88);
        sub_1CFBA57C0(&qword_1EC4F03A8, &qword_1EC4F03B0, &qword_1CFCA9B90);
        v42 = v78;
        sub_1CFC9E798();
        sub_1CFBB74FC(v61, v63, v67, v66);
        sub_1CFBB74FC(v61, v63, v67, v66);

        sub_1CFBB74FC(v61, v63, v67, v66);

        v35 = v81;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v36);
        *(&v73 - 2) = v34;
        MEMORY[0x1EEE9AC00](v37);
        *(&v73 - 2) = v34;
        v74 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03C8, &qword_1CFCA9BA8);
        sub_1CFBA57C0(&unk_1EC4F03D0, &qword_1EC4F03C8, &qword_1CFCA9BA8);
        sub_1CFC987D0();
        v38 = v32;
        sub_1CFC9ED08();

        v39 = v79;
        v40 = v32;
        v41 = v80;
        (*(v79 + 16))(v77, v40, v80);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F03A0, &qword_1CFCA9B88);
        sub_1CFBA57C0(&qword_1EC4F0398, &qword_1EC4F03A0, &qword_1CFCA9B88);
        sub_1CFBA57C0(&qword_1EC4F03A8, &qword_1EC4F03B0, &qword_1CFCA9B90);
        v42 = v78;
        sub_1CFC9E798();
        (*(v39 + 8))(v38, v41);
        v43 = v75;
      }

      sub_1CFC98C88(v42, v43);
      swift_storeEnumTagMultiPayload();
      sub_1CFBA57C0(&qword_1EC4F0378, &qword_1EC4F0380, &qword_1CFCA9B78);
      sub_1CFC98B94();
      v71 = v85;
      sub_1CFC9E798();

      sub_1CFBC2FB0(v42, &qword_1EC4F0390, &qword_1CFCA9B80);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0370, &qword_1CFCA9B70);
      return (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
    }

    else
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0370, &qword_1CFCA9B70);
      v45 = *(*(v44 - 8) + 56);

      return v45(v31, 1, 1, v44);
    }
  }
}

uint64_t sub_1CFC98428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 title];
  v5 = sub_1CFC9F768();
  v7 = v6;

  v26 = v5;
  v27 = v7;
  sub_1CFBB4460();
  v8 = sub_1CFC9EDF8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [a1 subtitle];
  if (v15)
  {
    v16 = v15;
    sub_1CFC9F768();

    v17 = sub_1CFC9EDF8();
    v19 = v18;
    v21 = v20;
    v23 = v22 & 1;
    sub_1CFBB45F4(v17, v18, v22 & 1);
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v21 = 0;
  }

  v24 = v12 & 1;
  sub_1CFBB45F4(v8, v10, v24);

  sub_1CFBB9654(v17, v19, v23, v21);
  sub_1CFBB74FC(v17, v19, v23, v21);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v24;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v23;
  *(a2 + 56) = v21;
  sub_1CFBB74FC(v17, v19, v23, v21);
  sub_1CFBB44C0(v8, v10, v24);
}

uint64_t sub_1CFC985D0()
{
  sub_1CFC98868(*v0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0348, &qword_1CFCA9B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0350, &qword_1CFCA9B68);
  sub_1CFBA57C0(&qword_1EC4F0358, &qword_1EC4F0348, &qword_1CFCA9B60);
  sub_1CFC98A58();
  return sub_1CFC9F3B8();
}

uint64_t sub_1CFC986CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD28();

  *a2 = v5;
  return result;
}

uint64_t sub_1CFC9874C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_1CFC9DD38();
}

unint64_t sub_1CFC987D0()
{
  result = qword_1EC4F02D8;
  if (!qword_1EC4F02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F02D8);
  }

  return result;
}

unint64_t sub_1CFC98868(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1D3872640](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1CFC9FFD8();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0400, &qword_1CFCA9BC0);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFC98A58()
{
  result = qword_1EC4F0360;
  if (!qword_1EC4F0360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0350, &qword_1CFCA9B68);
    sub_1CFC98ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0360);
  }

  return result;
}

unint64_t sub_1CFC98ADC()
{
  result = qword_1EC4F0368;
  if (!qword_1EC4F0368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0370, &qword_1CFCA9B70);
    sub_1CFBA57C0(&qword_1EC4F0378, &qword_1EC4F0380, &qword_1CFCA9B78);
    sub_1CFC98B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0368);
  }

  return result;
}

unint64_t sub_1CFC98B94()
{
  result = qword_1EC4F0388;
  if (!qword_1EC4F0388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0390, &qword_1CFCA9B80);
    sub_1CFBA57C0(&qword_1EC4F0398, &qword_1EC4F03A0, &qword_1CFCA9B88);
    sub_1CFBA57C0(&qword_1EC4F03A8, &qword_1EC4F03B0, &qword_1CFCA9B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0388);
  }

  return result;
}

uint64_t sub_1CFC98C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0390, &qword_1CFCA9B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFC98D34()
{
  result = qword_1EC4F03F8;
  if (!qword_1EC4F03F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F03F0, &qword_1CFCA9BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F03F8);
  }

  return result;
}

unint64_t sub_1CFC98DB0()
{
  result = qword_1EC4F0408;
  if (!qword_1EC4F0408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4F0410, &qword_1CFCA9BC8);
    sub_1CFC98A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0408);
  }

  return result;
}

id sub_1CFC98E84()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem);
  }

  else
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = v0;
    sub_1CFC9FDF8();
    v7 = sub_1CFC9FB58();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1CFC99044()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CFC99AC8(Strong + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService, &v5);
    if (v6)
    {
      sub_1CFBAD070(&v5, v7);
      v2 = v8;
      v3 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v4 = (*(v3 + 24))(v2, v3);
      [v1 presentViewController:v4 animated:1 completion:0];

      __swift_destroy_boxed_opaque_existential_1Tm(v7);
    }

    else
    {
      sub_1CFC9A5E8(&v5);
    }
  }
}

id VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)(void *a1, uint64_t a2, unsigned __int16 a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem) = 0;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_dataSource) = a1;
  sub_1CFC99AC8(a2, v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService);
  v8 = type metadata accessor for DetailsPresenter();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + 72) = 0;
  v12 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  v13 = sub_1CFC9C448();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v11 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = 0;
  *(v11 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v11 + 64) = 0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_detailsPresenter) = v11;
  sub_1CFC99AC8(a2, v57);
  *&v55 = a3;
  BYTE8(v55) = 0;
  v14 = type metadata accessor for VoicemailsSectionController(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = a1;

  v54 = v17;
  v18 = sub_1CFC16EEC(v17, v11, v57, &v55);
  *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_section) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD60, &unk_1CFCA8700);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CFCA1DD0;
  v20 = sub_1CFC9A590();
  *(v19 + 32) = v18;
  *(v19 + 40) = v20;

  SectionnedCollectionViewController.init(sections:)(v19);
  v22 = v21;
  *(*&v21[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_section] + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate + 8) = &protocol witness table for VoicemailListViewController;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v23 = v22;
  v24 = [v23 navigationItem];
  sub_1CFC140F0(a3);
  v25 = sub_1CFC9F728();

  [v24 setTitle_];

  LODWORD(v24) = sub_1CFC9D758();
  if (v24 == sub_1CFC9D758() || (v26 = sub_1CFC9D758(), v26 == sub_1CFC9D758()))
  {
    v27 = [v23 navigationItem];
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v58 = type metadata accessor for VoicemailListViewController();
    v57[0] = v23;
    v30 = sub_1CFC9F728();

    v31 = v58;
    if (v58)
    {
      v32 = __swift_project_boxed_opaque_existential_1(v57, v58);
      v33 = *(v31 - 8);
      v34 = *(v33 + 64);
      v35 = MEMORY[0x1EEE9AC00](v32);
      v37 = &v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v37, v35);
      v38 = sub_1CFCA02A8();
      (*(v33 + 8))(v37, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
    }

    else
    {
      v38 = 0;
    }

    v39 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v30 style:0 target:v38 action:sel_clearAllButtonTappedWithSender_];

    swift_unknownObjectRelease();
    [v27 setRightBarButtonItem_];
  }

  else
  {

    v41 = [v23 editButtonItem];
    type metadata accessor for BundleClass();
    v42 = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v44 = sub_1CFC9F728();

    [v41 setTitle_];

    v45 = [objc_opt_self() shared];
    v46 = [v45 current];

    v47 = [v23 navigationItem];
    v48 = [v23 editButtonItem];
    if (v46)
    {
      [v47 setRightBarButtonItem_];
    }

    else
    {
      [v47 setLeftBarButtonItem_];

      sub_1CFC99AC8(v23 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService, &v55);
      if (v56)
      {
        sub_1CFBAD070(&v55, v57);
        v49 = v58;
        v50 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        v51 = (*(v50 + 16))(v49, v50);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        if ((v51 & 1) == 0)
        {
          sub_1CFC9A5E8(a2);

          return v23;
        }
      }

      else
      {
        sub_1CFC9A5E8(&v55);
      }

      v52 = [v23 navigationItem];
      v53 = sub_1CFC98E84();
      [v52 setRightBarButtonItem_];
    }
  }

  sub_1CFC9A5E8(a2);
  return v23;
}

uint64_t sub_1CFC998E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1CFC9F968();
  v2[4] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFC99980, v4, v3);
}

uint64_t sub_1CFC99980()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_detailsPresenter);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1CFC67BD0;
  v3 = v0[2];

  return sub_1CFC8B30C(v3);
}

uint64_t sub_1CFC99A24()
{
  sub_1CFC99AC8(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService, &v5);
  if (v6)
  {
    sub_1CFBAD070(&v5, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1CFC9A5E8(&v5);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1CFC99AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE538, qword_1CFCA9BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFC99B38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      v3 = [v2 popViewControllerAnimated_];
    }
  }
}

void sub_1CFC99CB4(__int16 a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_1CFC9BE28();

  v8 = sub_1CFC9F728();

  v9 = [objc_opt_self() alertControllerWithTitle:0 message:v8 preferredStyle:{0, 0xE000000000000000}];

  v10 = [v6 &:ObjCClassFromMetadata OBJC:? LABEL:? PROTOCOL:? :? :?UISearchControllerDelegate + 3];
  sub_1CFC9BE28();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  sub_1CFBB2568(a2, a3);
  v13 = sub_1CFC9F728();

  aBlock[4] = sub_1CFC9A814;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBDBE60;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:2 handler:{v14, 0xE000000000000000}];
  _Block_release(v14);

  v17 = [v6 bundleForClass_];
  sub_1CFC9BE28();

  v18 = sub_1CFC9F728();

  v19 = [v15 actionWithTitle:v18 style:1 handler:{0, 0xE000000000000000}];

  [v9 addAction_];
  [v9 addAction_];
  v20 = [v9 popoverPresentationController];
  if (v20)
  {
    v21 = v20;
    v22 = [v24 navigationItem];
    v23 = [v22 rightBarButtonItem];

    [v21 setSourceItem_];
  }

  [v24 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_1CFC9A0FC(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(result + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_section);
    v8 = result;

    sub_1CFC13254(a3);
  }

  if (a4)
  {
    return a4(result);
  }

  return result;
}

void sub_1CFC9A1D0()
{
  sub_1CFC9A5E8(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService);
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_section);

  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_detailsPresenter);

  v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem);
}

id VoicemailListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void VoicemailListViewController.presentVoicemails(mailbox:)(unsigned __int16 a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_dataSource];
  sub_1CFC99AC8(&v2[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService], v6);
  objc_allocWithZone(type metadata accessor for VoicemailListViewController());
  v5 = VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)(v4, v6, a1);
  [v2 showDetailViewController:v5 sender:v2];
}

Swift::Void __swiftcall VoicemailListViewController.presentAccountProvisioning()()
{
  v1 = v0;
  sub_1CFC99AC8(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService, &v5);
  if (v6)
  {
    sub_1CFBAD070(&v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = (*(v3 + 40))(v2, v3);
    [v1 presentViewController:v4 animated:1 completion:0];

    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1CFC9A5E8(&v5);
  }
}

void sub_1CFC9A4F8(unsigned __int16 a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_dataSource];
  sub_1CFC99AC8(&v2[OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_legacyMailboxService], v6);
  objc_allocWithZone(type metadata accessor for VoicemailListViewController());
  v5 = VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)(v4, v6, a1);
  [v2 showDetailViewController:v5 sender:v2];
}

unint64_t sub_1CFC9A590()
{
  result = qword_1EC4EFAC0;
  if (!qword_1EC4EFAC0)
  {
    type metadata accessor for VoicemailsSectionController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EFAC0);
  }

  return result;
}

uint64_t sub_1CFC9A5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE538, qword_1CFCA9BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of VoicemailListViewController.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x240);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFBD431C;

  return v8(a1);
}

CallsAppUI::SimpleCallViewModel __swiftcall SimpleCallViewModel.init(headerLabel:callButtonLabel:)(Swift::String headerLabel, Swift::String callButtonLabel)
{
  *v2 = headerLabel;
  v2[1] = callButtonLabel;
  result.callButtonLabel = callButtonLabel;
  result.headerLabel = headerLabel;
  return result;
}

uint64_t sub_1CFC9A850()
{
  if (*v0)
  {
    result = 0x747475426C6C6163;
  }

  else
  {
    result = 0x614C726564616568;
  }

  *v0;
  return result;
}

uint64_t sub_1CFC9A8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614C726564616568 && a2 == 0xEB000000006C6562;
  if (v6 || (sub_1CFCA02B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747475426C6C6163 && a2 == 0xEF6C6562614C6E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFCA02B8();

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

uint64_t sub_1CFC9A994(uint64_t a1)
{
  v2 = sub_1CFC9ABA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFC9A9D0(uint64_t a1)
{
  v2 = sub_1CFC9ABA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SimpleCallViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0448, &qword_1CFCA9C60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFC9ABA0();
  sub_1CFCA0398();
  v16 = 0;
  v12 = v14[3];
  sub_1CFCA0268();
  if (!v12)
  {
    v15 = 1;
    sub_1CFCA0268();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CFC9ABA0()
{
  result = qword_1EC4F0450;
  if (!qword_1EC4F0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0450);
  }

  return result;
}

uint64_t SimpleCallViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0458, &qword_1CFCA9C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFC9ABA0();
  sub_1CFCA0388();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = 0;
  v11 = sub_1CFCA0258();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1CFCA0258();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t SimpleCallView.init(initialModel:text:onCallButtonPressed:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = *a1;
  v17 = *(a1 + 2);
  v18 = *(a1 + 3);
  result = sub_1CFC9F228();
  *a8 = a6;
  a8[1] = a7;
  a8[7] = a2;
  a8[8] = a3;
  a8[9] = a4;
  a8[10] = a5;
  return result;
}

uint64_t SimpleCallView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_1CFC9E678();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0460, &qword_1CFCA9C70);
  return sub_1CFC9AF28(v7, (a1 + *(v5 + 44)));
}

uint64_t sub_1CFC9AF28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF670, &qword_1CFCA3640);
  v43 = *(v44 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v38 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0490, &qword_1CFCA9F00);
  v40 = *(v41 - 8);
  v7 = v40;
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = *(a1 + 32);
  v57 = *(a1 + 16);
  v58 = v13;
  v59 = *(a1 + 48);
  v14 = *(a1 + 32);
  v48 = *(a1 + 16);
  v49 = v14;
  v50 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0498, &qword_1CFCA9F08);
  sub_1CFC9F238();
  v16 = v53;
  v15 = v54;

  v17 = *(a1 + 72);
  v48 = *(a1 + 56);
  v49 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F04A0, &qword_1CFCA9F10);
  sub_1CFC9F378();
  *&v48 = v16;
  *(&v48 + 1) = v15;
  sub_1CFBB4460();
  v18 = v12;
  v39 = v12;
  sub_1CFC9F598();
  v48 = v57;
  v49 = v58;
  v50 = v59;
  sub_1CFC9F238();
  v19 = v55;
  v20 = v56;

  v51 = v19;
  v52 = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a1 + 64);
  *(v21 + 96) = *(a1 + 80);
  v23 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v23;
  sub_1CFC9B774(a1, &v48);
  v24 = v47;
  sub_1CFC9F2C8();
  v25 = *(v7 + 16);
  v26 = v46;
  v27 = v41;
  v25(v46, v18, v41);
  v28 = v43;
  v29 = *(v43 + 16);
  v30 = v42;
  v31 = v24;
  v32 = v44;
  v29(v42, v31, v44);
  v33 = v45;
  v25(v45, v26, v27);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F04A8, qword_1CFCA9F18);
  v29(&v33[*(v34 + 48)], v30, v32);
  v35 = *(v28 + 8);
  v35(v47, v32);
  v36 = *(v40 + 8);
  v36(v39, v27);
  v35(v30, v32);
  return (v36)(v46, v27);
}

uint64_t sub_1CFC9B408@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_1CFC9E678();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0460, &qword_1CFCA9C70);
  return sub_1CFC9AF28(v7, (a1 + *(v5 + 44)));
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFC9B490(uint64_t a1, int a2)
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

uint64_t sub_1CFC9B4D8(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFC9B54C(uint64_t *a1, int a2)
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

uint64_t sub_1CFC9B594(uint64_t result, int a2, int a3)
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

unint64_t sub_1CFC9B5F8()
{
  result = qword_1EC4F0468;
  if (!qword_1EC4F0468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0470, &qword_1CFCA9DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0468);
  }

  return result;
}

unint64_t sub_1CFC9B670()
{
  result = qword_1EC4F0478;
  if (!qword_1EC4F0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0478);
  }

  return result;
}

unint64_t sub_1CFC9B6C8()
{
  result = qword_1EC4F0480;
  if (!qword_1EC4F0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0480);
  }

  return result;
}

unint64_t sub_1CFC9B720()
{
  result = qword_1EC4F0488;
  if (!qword_1EC4F0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F0488);
  }

  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1EC4F2A00 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1EC4F29F4 > a2)
  {
    return 1;
  }

  if (dword_1EC4F29F4 < a2)
  {
    return 0;
  }

  return dword_1EC4F29F8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EC4F2A08 == -1)
  {
    if (qword_1EC4F2A10)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_1EC4F2A10)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EC4F2A00 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_1EC4F29F4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_1EC4F29F4 >= a3)
      {
        result = dword_1EC4F29F8 >= a4;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC4F2A10;
  if (qword_1EC4F2A10)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC4F2A10 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1D3872B70](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_1EC4F29F4, &dword_1EC4F29F8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}