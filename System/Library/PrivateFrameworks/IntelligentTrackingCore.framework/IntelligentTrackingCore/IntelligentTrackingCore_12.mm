uint64_t sub_1BB692350()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-1] - v6;
  if (*(*(v0 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups))
  {
    v17[0] = *(*(v0 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups);
    swift_bridgeObjectRetain_n();

    sub_1BB695758(v17, v0);

    if (*(v17[0] + 2))
    {
      v9 = *(v17[0] + 4);
      v8 = *(v17[0] + 5);
      v10 = *(v17[0] + 6);
      v11 = *(v17[0] + 7);

      (*(v2 + 16))(v7, *(v0 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v1);
      v17[0] = v9;
      v17[1] = v8;
      v17[2] = v10;
      v17[3] = v11;
      sub_1BB69029C(v17, v4);
      sub_1BB6BA744();
      v13 = v12;

      v14 = *(v2 + 8);
      v14(v4, v1);
      v14(v7, v1);
      if (*(*(v0 + 32) + 104) < v13)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t type metadata accessor for DKPrintExtractionTask()
{
  result = qword_1EBC5E3E8;
  if (!qword_1EBC5E3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1BB6925EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0);
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

char *sub_1BB692704(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEE0);
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

void *sub_1BB692960(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

char *sub_1BB692AA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

char *sub_1BB692BBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E428);
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

char *sub_1BB692CC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E418);
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

void *sub_1BB692DE0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E420);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DAE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BB692F28(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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

char *sub_1BB693024(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E468);
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

char *sub_1BB693128(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E440);
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

size_t sub_1BB693268(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

void *sub_1BB693474(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

char *sub_1BB6935BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E448);
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

char *sub_1BB6936E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C018);
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

size_t sub_1BB6937EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

uint64_t sub_1BB6939C8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BB693A54(v3);
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

uint64_t sub_1BB693BE4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_1BB6BA844();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DKFaceObservation(0);
  v33 = sub_1BB69584C(&qword_1EBC5C068, type metadata accessor for DKFaceObservation);
  *&v31 = a1;
  v12 = *a4;
  v14 = sub_1BB6A1288(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *a4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7] + 40 * v14;
      __swift_destroy_boxed_opaque_existential_1(v21);
      return sub_1BB593648(&v31, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1BB5EAD80();
    goto LABEL_7;
  }

  sub_1BB5E7ED8(v17, a3 & 1);
  v23 = sub_1BB6A1288(a2);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v32);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  sub_1BB6941BC(v14, v11, *v28, v20, type metadata accessor for DKFaceObservation, &qword_1EBC5C068, type metadata accessor for DKFaceObservation);
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_1BB693ED0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_1BB6BA844();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DKBodyObservation(0);
  v33 = sub_1BB69584C(&qword_1EBC5C060, type metadata accessor for DKBodyObservation);
  *&v31 = a1;
  v12 = *a4;
  v14 = sub_1BB6A1288(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *a4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7] + 40 * v14;
      __swift_destroy_boxed_opaque_existential_1(v21);
      return sub_1BB593648(&v31, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1BB5EAD80();
    goto LABEL_7;
  }

  sub_1BB5E7ED8(v17, a3 & 1);
  v23 = sub_1BB6A1288(a2);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v32);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  sub_1BB6941BC(v14, v11, *v28, v20, type metadata accessor for DKBodyObservation, &qword_1EBC5C060, type metadata accessor for DKBodyObservation);
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_1BB6941BC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v20 = a5(0);
  v21 = sub_1BB69584C(a6, a7);
  *&v19 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = sub_1BB6BA844();
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  result = sub_1BB593648(&v19, a4[7] + 40 * a1);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_1BB6942C4(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v79 = a5;
  v78 = sub_1BB6BA7F4();
  v9 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v63 - v12;
  v13 = a2 - a1 + 31;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 5;
  v80 = a3;
  v15 = a3 - a2;
  v16 = v15 / 32;
  if (v13 >> 5 >= v15 / 32)
  {
    if (a4 != a2 || &a2[32 * v16] <= a4)
    {
      memmove(a4, a2, 32 * v16);
    }

    v17 = &a4[32 * v16];
    if (v15 < 32 || a2 <= a1)
    {
      v35 = a2;
    }

    else
    {
      v66 = (v9 + 8);
      v85 = a4;
      v75 = a1;
LABEL_24:
      v36 = 0;
      v37 = v17;
      v67 = a2;
      v64 = a2 - 32;
      v65 = v17;
      do
      {
        v38 = &v37[v36];
        v40 = &v37[v36 - 32];
        v39 = *v40;
        v74 = (v80 + v36);
        v41 = *&v37[v36 - 24];
        v42 = *&v37[v36 - 16];
        v43 = *&v37[v36 - 8];
        v44 = *(v67 - 4);
        v45 = *(v67 - 3);
        v68 = (v80 + v36 - 32);
        v69 = v44;
        v71 = v45;
        v72 = v42;
        v46 = *(v67 - 2);
        v47 = *(v67 - 1);
        v81 = v39;
        v82 = v41;
        v73 = v41;
        v83 = v42;
        v84 = v43;
        v48 = v46;
        v70 = v46;

        v49 = v76;
        sub_1BB69029C(&v81, v76);
        v81 = v69;
        v82 = v45;
        v83 = v48;
        v84 = v47;
        v50 = v77;
        sub_1BB69029C(&v81, v77);
        LODWORD(v69) = sub_1BB6BA774();
        v51 = *v66;
        v52 = v50;
        v53 = v78;
        (*v66)(v52, v78);
        v51(v49, v53);

        if (v69)
        {
          v17 = v38;
          v57 = v75;
          a4 = v85;
          v35 = v64;
          v58 = v68;
          if (v74 != v67)
          {
            v59 = *(v64 + 1);
            *v68 = *v64;
            v58[1] = v59;
          }

          if (v17 <= a4 || (v80 = v58, a2 = v35, v35 <= v57))
          {
            v17 = &v65[v36];
            goto LABEL_36;
          }

          goto LABEL_24;
        }

        v54 = v74 == v38;
        a4 = v85;
        if (!v54)
        {
          v55 = *(v40 + 16);
          v56 = v68;
          *v68 = *v40;
          v56[1] = v55;
        }

        v36 -= 32;
        v37 = v65;
        v17 = &v65[v36];
      }

      while (&v65[v36] > a4);
      v35 = v67;
    }
  }

  else
  {
    if (a4 != a1 || &a1[32 * v14] <= a4)
    {
      memmove(a4, a1, 32 * v14);
    }

    v17 = &a4[32 * v14];
    if (a2 - a1 >= 32 && a2 < v80)
    {
      v70 = (v9 + 8);
      v71 = &a4[32 * v14];
      while (1)
      {
        v75 = a1;
        v18 = *a2;
        v19 = *(a2 + 1);
        v21 = *(a2 + 2);
        v20 = *(a2 + 3);
        v22 = *a4;
        v23 = *(a4 + 1);
        v85 = a4;
        v24 = *(a4 + 2);
        v25 = *(a4 + 3);
        v81 = v18;
        v82 = v19;
        v83 = v21;
        v84 = v20;
        v72 = v22;
        v73 = v24;

        v74 = v23;

        v26 = v76;
        sub_1BB69029C(&v81, v76);
        v81 = v72;
        v82 = v23;
        v83 = v24;
        v84 = v25;
        v27 = v77;
        sub_1BB69029C(&v81, v77);
        LODWORD(v72) = sub_1BB6BA774();
        v28 = *v70;
        v29 = v27;
        v30 = a2;
        v31 = v78;
        (*v70)(v29, v78);
        v28(v26, v31);

        if ((v72 & 1) == 0)
        {
          break;
        }

        v32 = v30;
        a2 = v30 + 32;
        v33 = v75;
        a4 = v85;
        if (v75 != v30)
        {
          goto LABEL_14;
        }

LABEL_15:
        a1 = v33 + 32;
        v17 = v71;
        if (a4 >= v71 || a2 >= v80)
        {
          goto LABEL_17;
        }
      }

      v32 = v85;
      a4 = v85 + 32;
      v33 = v75;
      a2 = v30;
      if (v75 == v85)
      {
        goto LABEL_15;
      }

LABEL_14:
      v34 = *(v32 + 1);
      *v33 = *v32;
      *(v33 + 1) = v34;
      goto LABEL_15;
    }

LABEL_17:
    v35 = a1;
  }

LABEL_36:
  v60 = v17 - a4;
  v61 = v17 - a4 + 31;
  if (v60 < 0)
  {
    v60 = v61;
  }

  if (v35 != a4 || v35 >= &a4[v60 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v35, a4, 32 * (v60 >> 5));
  }

  return 1;
}

uint64_t sub_1BB694804(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1BB693A54(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      v25 = (v10 + 32 * *v12);
      v15 = (v10 + 32 * *v13);
      v16 = v10 + 32 * v14;

      sub_1BB6942C4(v25, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB6949AC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v144 = a4;
  v145 = a1;
  v157 = sub_1BB6BA7F4();
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v155 = &v142 - v10;
  v167 = MEMORY[0x1E69E7CC0];
  v150 = a3;
  v11 = a3[1];
  if (v11 >= 1)
  {
    v154 = (v9 + 8);
    swift_retain_n();
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v158 = a5;
    while (1)
    {
      if (v12 + 1 >= v11)
      {
        v32 = v12 + 1;
        v46 = v144;
      }

      else
      {
        v152 = v11;
        v143 = v13;
        v14 = *v150;
        v15 = (*v150 + 32 * (v12 + 1));
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v148 = 32 * v12;
        v20 = (v14 + 32 * v12);
        v146 = v12;
        v22 = *v20;
        v161 = v20[1];
        v21 = v161;
        v162 = v17;
        v23 = v20[2];
        v24 = v20[3];
        v163 = v16;
        v164 = v17;
        v165 = v18;
        v166 = v19;
        v25 = v23;
        v160 = v23;

        v26 = v155;
        sub_1BB69029C(&v163, v155);
        v163 = v22;
        v164 = v21;
        v165 = v25;
        v166 = v24;
        v27 = v156;
        sub_1BB69029C(&v163, v156);
        LODWORD(v153) = sub_1BB6BA774();
        v28 = *v154;
        v29 = v157;
        (*v154)(v27, v157);
        v149 = v28;
        v28(v26, v29);

        v30 = v146 + 2;
        v31 = (v20 + 6);
        while (1)
        {
          v32 = v152;
          if (v152 == v30)
          {
            break;
          }

          v33 = *(v31 + 2);
          v34 = *(v31 + 3);
          v35 = *(v31 + 4);
          v162 = v31 + 32;
          v163 = v33;
          v36 = *(v31 + 5);
          v37 = *(v31 - 2);
          v161 = *(v31 - 1);
          v38 = v161;
          v39 = *v31;
          v40 = *(v31 + 1);
          v164 = v34;
          v165 = v35;
          v166 = v36;
          v41 = v39;
          v159 = v37;
          v160 = v39;

          v42 = v155;
          sub_1BB69029C(&v163, v155);
          v163 = v159;
          v164 = v38;
          v165 = v41;
          v166 = v40;
          v43 = v156;
          sub_1BB69029C(&v163, v156);
          LOBYTE(v159) = sub_1BB6BA774() & 1;
          LODWORD(v159) = v159;
          v44 = v157;
          v45 = v149;
          v149(v43, v157);
          v45(v42, v44);

          ++v30;
          v31 = v162;
          if ((v153 & 1) != v159)
          {
            v32 = v30 - 1;
            break;
          }
        }

        v46 = v144;
        v13 = v143;
        v12 = v146;
        v47 = v148;
        if (v153)
        {
          if (v32 < v146)
          {
            goto LABEL_114;
          }

          if (v146 < v32)
          {
            v48 = 32 * v32 - 32;
            v49 = v32;
            v50 = v146;
            do
            {
              if (v50 != --v49)
              {
                v57 = *v150;
                if (!*v150)
                {
                  goto LABEL_119;
                }

                v51 = v57 + v47;
                v52 = v57 + v48;
                v53 = *(v51 + 16);
                v54 = *(v51 + 24);
                v55 = *v51;
                v56 = *(v52 + 16);
                *v51 = *v52;
                *(v51 + 16) = v56;
                *v52 = v55;
                *(v52 + 16) = v53;
                *(v52 + 24) = v54;
              }

              ++v50;
              v48 -= 32;
              v47 += 32;
            }

            while (v50 < v49);
          }
        }
      }

      v58 = v150[1];
      if (v32 < v58)
      {
        if (__OFSUB__(v32, v12))
        {
          goto LABEL_113;
        }

        if (v32 - v12 < v46)
        {
          if (__OFADD__(v12, v46))
          {
            goto LABEL_115;
          }

          if (v12 + v46 < v58)
          {
            v58 = v12 + v46;
          }

          if (v58 < v12)
          {
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

          if (v32 != v58)
          {
            v147 = v58;
            v143 = v13;
            v153 = *v150;
            v59 = v153 + 32 * v32 - 32;
            v146 = v12;
            v60 = v12 - v32;
            do
            {
              v152 = v32;
              v61 = (v153 + 32 * v32);
              v62 = *v61;
              v63 = v61[1];
              v65 = v61[2];
              v64 = v61[3];
              v148 = v60;
              v149 = v59;
              v66 = v60;
              v67 = v59;
              do
              {
                v159 = v66;
                v68 = *v67;
                v162 = v67[1];
                v69 = v162;
                v163 = v62;
                v70 = v67[2];
                v71 = v67[3];
                v164 = v63;
                v165 = v65;
                v166 = v64;
                v72 = v70;
                v160 = v68;
                v161 = v70;

                v73 = v155;
                sub_1BB69029C(&v163, v155);
                v163 = v160;
                v164 = v69;
                v165 = v72;
                v166 = v71;
                v74 = v156;
                sub_1BB69029C(&v163, v156);
                LODWORD(v160) = sub_1BB6BA774();
                v75 = *v154;
                v76 = v74;
                v77 = v157;
                (*v154)(v76, v157);
                v75(v73, v77);

                if ((v160 & 1) == 0)
                {
                  break;
                }

                v78 = v159;
                if (!v153)
                {
                  goto LABEL_117;
                }

                v62 = v67[4];
                v63 = v67[5];
                v65 = v67[6];
                v64 = v67[7];
                v79 = *(v67 + 1);
                *(v67 + 2) = *v67;
                *(v67 + 3) = v79;
                *v67 = v62;
                v67[1] = v63;
                v67[2] = v65;
                v67[3] = v64;
                v67 -= 4;
                v80 = __CFADD__(v78, 1);
                v66 = v78 + 1;
              }

              while (!v80);
              v32 = v152 + 1;
              v59 = v149 + 32;
              v60 = v148 - 1;
            }

            while (v152 + 1 != v147);
            v13 = v143;
            v12 = v146;
            v32 = v147;
          }
        }
      }

      if (v32 < v12)
      {
        goto LABEL_112;
      }

      v147 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1BB59D140(0, *(v13 + 2) + 1, 1, v13);
      }

      v82 = *(v13 + 2);
      v81 = *(v13 + 3);
      v83 = v82 + 1;
      if (v82 >= v81 >> 1)
      {
        v13 = sub_1BB59D140((v81 > 1), v82 + 1, 1, v13);
      }

      *(v13 + 2) = v83;
      v84 = v13 + 32;
      v85 = &v13[16 * v82 + 32];
      v86 = v147;
      *v85 = v12;
      *(v85 + 1) = v86;
      v162 = *v145;
      if (!v162)
      {
        goto LABEL_120;
      }

      if (v82)
      {
        v161 = v13 + 32;
        while (1)
        {
          v87 = v83 - 1;
          if (v83 >= 4)
          {
            break;
          }

          if (v83 == 3)
          {
            v88 = *(v13 + 4);
            v89 = *(v13 + 5);
            v98 = __OFSUB__(v89, v88);
            v90 = v89 - v88;
            v91 = v98;
LABEL_57:
            if (v91)
            {
              goto LABEL_102;
            }

            v104 = &v13[16 * v83];
            v106 = *v104;
            v105 = *(v104 + 1);
            v107 = __OFSUB__(v105, v106);
            v108 = v105 - v106;
            v109 = v107;
            if (v107)
            {
              goto LABEL_104;
            }

            v110 = &v84[16 * v87];
            v112 = *v110;
            v111 = *(v110 + 1);
            v98 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v98)
            {
              goto LABEL_107;
            }

            if (__OFADD__(v108, v113))
            {
              goto LABEL_109;
            }

            if (v108 + v113 >= v90)
            {
              if (v90 < v113)
              {
                v87 = v83 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v83 < 2)
          {
            goto LABEL_110;
          }

          v114 = &v13[16 * v83];
          v116 = *v114;
          v115 = *(v114 + 1);
          v98 = __OFSUB__(v115, v116);
          v108 = v115 - v116;
          v109 = v98;
LABEL_72:
          if (v109)
          {
            goto LABEL_106;
          }

          v117 = &v84[16 * v87];
          v119 = *v117;
          v118 = *(v117 + 1);
          v98 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v98)
          {
            goto LABEL_108;
          }

          if (v120 < v108)
          {
            goto LABEL_3;
          }

LABEL_79:
          if (v87 - 1 >= v83)
          {
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
            goto LABEL_116;
          }

          v125 = *v150;
          if (!*v150)
          {
            goto LABEL_118;
          }

          v126 = &v84[16 * v87 - 16];
          v127 = *v126;
          v128 = v87;
          v129 = &v84[16 * v87];
          v130 = *(v129 + 1);
          v131 = (v125 + 32 * *v126);
          v132 = (v125 + 32 * *v129);
          v133 = v125 + 32 * v130;
          v134 = v158;

          v135 = v131;
          v136 = v151;
          sub_1BB6942C4(v135, v132, v133, v162, v134);
          v151 = v136;
          if (v136)
          {

            v167 = v13;
            goto LABEL_92;
          }

          if (v130 < v127)
          {
            goto LABEL_97;
          }

          v137 = *(v13 + 2);
          if (v128 > v137)
          {
            goto LABEL_98;
          }

          *v126 = v127;
          *(v126 + 1) = v130;
          if (v128 >= v137)
          {
            goto LABEL_99;
          }

          v83 = v137 - 1;
          memmove(v129, v129 + 16, 16 * (v137 - 1 - v128));
          *(v13 + 2) = v137 - 1;
          v84 = v161;
          if (v137 <= 2)
          {
            goto LABEL_3;
          }
        }

        v92 = &v84[16 * v83];
        v93 = *(v92 - 8);
        v94 = *(v92 - 7);
        v98 = __OFSUB__(v94, v93);
        v95 = v94 - v93;
        if (v98)
        {
          goto LABEL_100;
        }

        v97 = *(v92 - 6);
        v96 = *(v92 - 5);
        v98 = __OFSUB__(v96, v97);
        v90 = v96 - v97;
        v91 = v98;
        if (v98)
        {
          goto LABEL_101;
        }

        v99 = &v13[16 * v83];
        v101 = *v99;
        v100 = *(v99 + 1);
        v98 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v98)
        {
          goto LABEL_103;
        }

        v98 = __OFADD__(v90, v102);
        v103 = v90 + v102;
        if (v98)
        {
          goto LABEL_105;
        }

        if (v103 >= v95)
        {
          v121 = &v84[16 * v87];
          v123 = *v121;
          v122 = *(v121 + 1);
          v98 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v98)
          {
            goto LABEL_111;
          }

          if (v90 < v124)
          {
            v87 = v83 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_3:
      v11 = v150[1];
      v12 = v147;
      a5 = v158;
      if (v147 >= v11)
      {
        v167 = v13;
        goto LABEL_89;
      }
    }
  }

  swift_retain_n();
LABEL_89:
  v138 = *v145;
  if (*v145)
  {

    v139 = v138;
    v140 = v151;
    sub_1BB694804(&v167, v139, v150, a5);
    v151 = v140;
    if (v140)
    {

LABEL_92:
    }

    else
    {
    }
  }

  else
  {
LABEL_121:

    __break(1u);
  }

  return result;
}

void sub_1BB69537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v42 = a5;
  v41 = sub_1BB6BA7F4();
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v33 - v12;
  v34 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v38 = (v11 + 8);
    v43 = v13;
    v14 = (v13 + 32 * a3 - 32);
    v15 = a1 - a3;
LABEL_5:
    v36 = v14;
    v37 = a3;
    v16 = (v43 + 32 * a3);
    v17 = *v16;
    v18 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    v35 = v15;
    v44 = v15;
    while (1)
    {
      v21 = *v14;
      v51 = v14[1];
      v22 = v51;
      v23 = v14[2];
      v24 = v14[3];
      v47 = v17;
      v48 = v18;
      v49 = v20;
      v50 = v19;
      v25 = v23;
      v45 = v21;
      v46 = v23;

      v26 = v39;
      sub_1BB69029C(&v47, v39);
      v47 = v45;
      v48 = v22;
      v49 = v25;
      v50 = v24;
      v27 = v40;
      sub_1BB69029C(&v47, v40);
      LODWORD(v45) = sub_1BB6BA774();
      v28 = *v38;
      v29 = v27;
      v30 = v41;
      (*v38)(v29, v41);
      v28(v26, v30);

      if ((v45 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v14 = v36 + 4;
        v15 = v35 - 1;
        if (v37 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v17 = v14[4];
      v18 = v14[5];
      v20 = v14[6];
      v19 = v14[7];
      v31 = *(v14 + 1);
      *(v14 + 2) = *v14;
      *(v14 + 3) = v31;
      *v14 = v17;
      v14[1] = v18;
      v14[2] = v20;
      v14[3] = v19;
      v14 -= 4;
      if (__CFADD__(v44++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BB695610(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1BB6BB784();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1BB6BAE94();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1BB6949AC(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1BB69537C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1BB695758(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1BB693AB4(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1BB695610(v7, a2);

  *a1 = v4;
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

uint64_t sub_1BB69584C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BB6958B0()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKIntelligentTrackingTask()
{
  result = qword_1EBC5E488;
  if (!qword_1EBC5E488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6959C0()
{
  result = sub_1BB6BAA34();
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

uint64_t sub_1BB695A6C()
{

  sub_1BB69A9B4(v1);
  v3 = v2;

  v4 = *(v3 + 16);
  if (!v4)
  {
  }

  if (v4 <= 3)
  {
    v5 = 0;
    v6 = 0.0;
LABEL_10:
    v10 = v4 - v5;
    v11 = (v3 + 8 * v5 + 32);
    do
    {
      v12 = *v11++;
      v6 = v6 + v12;
      --v10;
    }

    while (v10);
    goto LABEL_12;
  }

  v5 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v8 = (v3 + 48);
  v6 = 0.0;
  v9 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v6 = v6 + *(v8 - 2) + *(v8 - 1) + *v8 + v8[1];
    v8 += 4;
    v9 -= 4;
  }

  while (v9);
  if (v4 != v5)
  {
    goto LABEL_10;
  }

LABEL_12:

  if (v6 > COERCE_DOUBLE(1))
  {
    v13 = *(v0 + 16);
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
LABEL_25:
      v21 = *(*(v13 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v16)))));

      if (!v21)
      {
LABEL_29:
      }

      if (*(v21 + 33) == 1)
      {
        if (*(v21 + 32) == 1)
        {
          v19 = atan2(*(v21 + 48), *(v21 + 56));
        }

        else
        {
          v19 = *(v21 + 40);
        }

        *(v21 + 40) = v19 / v6;
      }

      v16 &= v16 - 1;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_29;
      }

      v16 = *(v13 + 64 + 8 * v20);
      ++v18;
      if (v16)
      {
        v18 = v20;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DKPersonTracker.__allocating_init(currentTime:configuration:uuid:trackerId:camera:)(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1BB69AC1C(a1, a2, a3, a4, a5);

  return v10;
}

BOOL sub_1BB695D48()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(*v0 + 240));
  (*(v2 + 16))(v5, v0 + qword_1EBC5EE30, v1, v3);
  sub_1BB6BA744();
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  v9 = *(v0 + qword_1EBC5EE28);
  if (v6 == 1)
  {
    if (*(v9 + 64) >= v8)
    {
      return 0;
    }
  }

  else if (*(v9 + 56) >= v8)
  {
    return 0;
  }

  return *(v9 + 192) < *(v0 + *(*v0 + 256));
}

uint64_t DKPersonTrackerConfiguration.init()()
{
  *(v0 + 200) = xmmword_1BB6BE550;
  *(v0 + 216) = 0x3FE0000000000000;
  *(v0 + 224) = xmmword_1BB6C8A70;
  *(v0 + 240) = xmmword_1BB6C8A80;
  *(v0 + 256) = 0x3FD0000000000000;
  *(v0 + 264) = 1;
  *(v0 + 272) = xmmword_1BB6C8A90;
  *(v0 + 288) = 0x3FECCCCCCCCCCCCDLL;
  type metadata accessor for DKIdentityFilter.Configuration();
  swift_allocObject();
  *(v0 + 296) = DKIdentityFilter.Configuration.init()();
  *(v0 + 304) = 0;

  return DKTrackerConfiguration.init()();
}

uint64_t DKPersonTrackerConfiguration.deinit()
{

  return v0;
}

uint64_t DKPersonTrackerConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB696240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00]();
  v9 = &v11 - v8;
  sub_1BB5982A0(a1, &v11 - v8, &qword_1EBC5C370);
  return sub_1BB5BA0DC(v9, *a2 + *a5, &qword_1EBC5C370);
}

uint64_t sub_1BB696394(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB69C9BC(a1, v6, type metadata accessor for DKCamera);
  return sub_1BB5D7FE8(v6, *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera);
}

uint64_t sub_1BB6964B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void *a6)
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  (*(v10 + 16))(&v14 - v11, a1, v9);
  return (*(v10 + 40))(*a2 + *a6, v12, v9);
}

uint64_t sub_1BB6965EC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = a3(0);
  v7 = *(*(v6 - 8) + 40);

  return v7(v3 + v5, a1, v6);
}

uint64_t sub_1BB6966AC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

double sub_1BB69676C@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
  *(a1 + 8) = result;
  return result;
}

double sub_1BB69678C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

uint64_t DKPersonTracker.init(currentTime:configuration:uuid:trackerId:camera:)(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1BB69AC1C(a1, a2, a3, a4, a5);

  return v5;
}

BOOL sub_1BB696AC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker);
  if (v1 && *(*(v1 + qword_1EBC5EE40) + 16) >= *(*(v1 + qword_1EBC5EE28) + 80))
  {
    return 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker);
  return v2 && *(*(v2 + qword_1EBC5EE40) + 16) >= *(*(v2 + qword_1EBC5EE28) + 80);
}

uint64_t sub_1BB696B4C(uint64_t a1)
{
  sub_1BB5CAC04(a1, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera);
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personPoseFilter) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonMotionFilter_camera;

  return sub_1BB5CAC04(a1, v3);
}

uint64_t sub_1BB696BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E498);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v134 - v9;
  v142 = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v144 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v134 - v14;
  v151 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v137 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v136 = &v134 - v17;
  v18 = sub_1BB6BA844();
  v162 = *(v18 - 8);
  v163 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v138 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v149 = &v134 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v154 = &v134 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v134 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v153 = &v134 - v29;
  v30 = sub_1BB6BA7F4();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v134 - v35;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker) = a2;

  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker) = a3;
  v157 = a3;

  v160 = v4;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_handTrackers) = a4;

  v39 = *(v31 + 16);
  (v39)(v36, a1, v30);
  v161 = v36;
  v141 = v31 + 16;
  v140 = v39;
  (v39)(v33, v36, v30);
  type metadata accessor for DKPersonMotionFilter.Measurement(0);
  v37 = swift_allocObject();
  v38 = v37 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_faceRect;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  LODWORD(v39) = 1;
  *(v38 + 32) = 1;
  v40 = v37 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_bodyRect;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  v152 = v40;
  *(v40 + 32) = 1;
  v41 = v37 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_faceYaw;
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = v37 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_facePitch;
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = v37 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_faceRoll;
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = v37 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_distance;
  *v44 = 0;
  v155 = v44;
  *(v44 + 8) = 1;
  v158 = v31;
  v159 = v30;
  (*(v31 + 32))(v37 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_time, v33, v30);
  if (a2 && (v135 = v38, (v45 = *(a2 + *(*a2 + 200))) != 0))
  {
    v156 = v37;
    v46 = v160;
    v134 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastFaceObservationId;
    v47 = v153;
    sub_1BB5982A0(v160 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastFaceObservationId, v153, &qword_1EBC5C370);
    v48 = *(v162 + 48);
    v49 = v48(v47, 1, v163);

    sub_1BB598308(v47, &qword_1EBC5C370);
    if (v49 != 1)
    {
      v50 = v145;
      sub_1BB5982A0(v46 + v134, v145, &qword_1EBC5C370);
      v51 = v163;
      result = v48(v50, 1, v163);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v53 = v162;
      v54 = v148;
      (*(v162 + 16))(v148, v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid, v51);
      sub_1BB680924();
      v55 = sub_1BB6BABE4();
      v56 = *(v53 + 8);
      v56(v54, v51);
      v56(v50, v51);
      v46 = v160;
      if (v55)
      {

        v57 = 0;
        v58 = 0;
        LODWORD(v39) = 1;
        LODWORD(v59) = 4;
        v60 = 1;
        v61 = v161;
        v37 = v156;
        v62 = v163;
        v63 = v46;
        v64 = v157;
        if (!v157)
        {
          goto LABEL_47;
        }

LABEL_24:
        v96 = *(v64 + *(*v64 + 200));
        if (!v96)
        {
          goto LABEL_47;
        }

        LODWORD(v139) = v60;
        LODWORD(v157) = v59;
        v136 = v57;
        v153 = v58;
        LODWORD(v160) = v39;
        v156 = v37;
        v145 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastBodyObservationId;
        v97 = v61;
        v98 = v154;
        sub_1BB5982A0(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastBodyObservationId, v154, &qword_1EBC5C370);
        v99 = *(v162 + 48);
        v100 = v99(v98, 1, v62);

        v101 = v98;
        v61 = v97;
        sub_1BB598308(v101, &qword_1EBC5C370);
        if (v100 != 1)
        {
          v102 = v162;
          v103 = v149;
          (*(v162 + 16))(v149, v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid, v62);
          (*(v102 + 56))(v103, 0, 1, v62);
          v104 = *(v146 + 48);
          v39 = v147;
          sub_1BB5982A0(v63 + v145, v147, &qword_1EBC5C370);
          v62 = v163;
          sub_1BB5982A0(v103, v39 + v104, &qword_1EBC5C370);
          if (v99(v39, 1, v62) == 1)
          {
            sub_1BB598308(v103, &qword_1EBC5C370);
            if (v99(v39 + v104, 1, v62) == 1)
            {

              sub_1BB598308(v39, &qword_1EBC5C370);
              v37 = v156;
              LOBYTE(v39) = v160;
              v58 = v153;
              v61 = v161;
LABEL_46:
              v57 = v136;
              LODWORD(v59) = v157;
              goto LABEL_47;
            }

            goto LABEL_31;
          }

          v105 = v138;
          sub_1BB5982A0(v39, v138, &qword_1EBC5C370);
          if (v99(v39 + v104, 1, v62) == 1)
          {
            sub_1BB598308(v149, &qword_1EBC5C370);
            (*(v162 + 8))(v105, v62);
LABEL_31:
            sub_1BB598308(v39, &qword_1EBC5E498);
            v61 = v161;
            goto LABEL_32;
          }

          v123 = v162;
          v124 = v39 + v104;
          v125 = v148;
          (*(v162 + 32))(v148, v124, v62);
          sub_1BB680924();
          v126 = v39;
          v127 = sub_1BB6BABE4();
          v128 = *(v123 + 8);
          v128(v125, v163);
          sub_1BB598308(v149, &qword_1EBC5C370);
          v128(v105, v163);
          v61 = v161;
          v129 = v126;
          v62 = v163;
          sub_1BB598308(v129, &qword_1EBC5C370);
          if (v127)
          {

            v37 = v156;
            LOBYTE(v39) = v160;
            v58 = v153;
            goto LABEL_46;
          }
        }

LABEL_32:
        if (v139)
        {
          v106 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance + 8);
          v107 = v155;
          *v155 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance);
          *(v107 + 8) = v106;
        }

        v108 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
        v109 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 8);
        v110 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16);
        v111 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 24);
        v37 = v156;
        v57 = v136;
        LODWORD(v59) = v157;
        if (*(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera) - 1 <= 1)
        {
          v112 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 8);
          v113 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16);
          v114 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 24);
          v108 = 1.0 - v108 - CGRectGetWidth(*&v108);
        }

        v115 = v152;
        *v152 = v108;
        *(v115 + 1) = v109;
        *(v115 + 2) = v110;
        *(v115 + 3) = v111;
        *(v115 + 32) = 0;
        v116 = v145;
        sub_1BB598308(v63 + v145, &qword_1EBC5C370);
        v117 = v162;
        (*(v162 + 16))(v63 + v116, v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_uuid, v62);
        (*(v117 + 56))(v63 + v116, 0, 1, v62);
        v118 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences);
        if (v59 == 4)
        {
          LODWORD(v59) = 1;
        }

        if (*(*(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_configuration) + 304) == 1)
        {
          v119 = v144;
          sub_1BB5982A0(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityProbabilities, v144, &qword_1EBC5C058);
          if ((*(v150 + 48))(v119, 1, v151) == 1)
          {

            sub_1BB598308(v119, &qword_1EBC5C058);
          }

          else
          {
            v120 = v137;
            sub_1BB69CA24(v119, v137, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
            LODWORD(v157) = v59;
            v59 = v143;
            v140(v143, v61, v159);
            sub_1BB6988F4();
            *(v59 + *(v142 + 20)) = v121;

            sub_1BB669438(v59);
            v37 = v156;

            v122 = v59;
            LOBYTE(v59) = v157;
            sub_1BB69CA8C(v122, type metadata accessor for DKIdentityFilter.TrackerConfidence);

            sub_1BB66ABB8(v120);

            sub_1BB69CA8C(v120, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
          }
        }

        else
        {
        }

        LOBYTE(v39) = v160;
        v58 = v153;
        goto LABEL_48;
      }
    }

    v65 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw);
    v66 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw + 8);
    *v41 = v65;
    *(v41 + 8) = v66;
    v67 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch + 8);
    *v42 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch);
    *(v42 + 8) = v67;
    v68 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll + 8);
    *v43 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll);
    *(v43 + 8) = v68;
    v60 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance + 8);
    v69 = v155;
    *v155 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance);
    *(v69 + 8) = v60;
    LODWORD(v69) = *(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera) - 1;
    v70 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
    v71 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 8);
    v72 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16);
    v73 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 24);
    v74 = *(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera) != 1;
    v63 = v46;
    v153 = v65;
    if (v69 == 1 || !v74)
    {
      v75 = v71;
      v76 = v72;
      v77 = v73;
      v70 = 1.0 - v70 - CGRectGetWidth(*&v70);
    }

    v62 = v163;
    LODWORD(v160) = v66;
    v78 = v135;
    *v135 = v70;
    v78[1] = v71;
    v78[2] = v72;
    v78[3] = v73;
    *(v78 + 32) = 0;
    v79 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isFrontal);
    v61 = v161;
    if (v79 != 2 && (v79 & 1) == 0)
    {
      v80 = v70;
      v81 = v71;
      v82 = v72;
      v83 = v73;
      MidX = CGRectGetMidX(*&v70);
      v166.origin.x = v80;
      v166.origin.y = v71;
      v166.size.width = v72;
      v166.size.height = v73;
      CGRectGetMidY(v166);
      v167.origin.x = v80;
      v167.origin.y = v71;
      v167.size.width = v72;
      v167.size.height = v73;
      CGRectGetMidX(v167);
      v168.origin.x = v80;
      v168.origin.y = v71;
      v168.size.width = v72;
      v168.size.height = v73;
      MidY = CGRectGetMidY(v168);
      v169.origin.x = v80;
      v169.origin.y = v71;
      v169.size.width = v72;
      v169.size.height = v73;
      v86 = CGRectGetWidth(v169) * 0.614973262;
      v170.origin.x = v80;
      v170.origin.y = v71;
      v170.size.width = v72;
      v170.size.height = v73;
      v87 = CGRectGetHeight(v170) * 0.614973262;
      v88 = v135;
      *v135 = MidX - v86 * 0.5;
      v88[1] = MidY - v87 * 0.5;
      v88[2] = v86;
      v88[3] = v87;
      *(v88 + 32) = 0;
    }

    v89 = v134;
    sub_1BB598308(v46 + v134, &qword_1EBC5C370);
    v90 = v162;
    (*(v162 + 16))(v46 + v89, v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid, v62);
    (*(v90 + 56))(v46 + v89, 0, 1, v62);
    v57 = *(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences);
    if (*(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType))
    {
      LODWORD(v59) = 3;
    }

    else
    {
      LODWORD(v59) = 0;
    }

    if (*(*(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_configuration) + 304) == 1)
    {
      v91 = v139;
      sub_1BB5982A0(v45 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities, v139, &qword_1EBC5C058);
      if ((*(v150 + 48))(v91, 1, v151) == 1)
      {

        sub_1BB598308(v91, &qword_1EBC5C058);
      }

      else
      {
        v92 = v136;
        sub_1BB69CA24(v91, v136, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
        LODWORD(v139) = v60;
        v145 = v45;
        v93 = v59;
        v59 = v143;
        v140(v143, v61, v159);
        sub_1BB6988F4();
        *(v59 + *(v142 + 20)) = v94;

        sub_1BB669438(v59);

        v95 = v59;
        LODWORD(v59) = v93;
        sub_1BB69CA8C(v95, type metadata accessor for DKIdentityFilter.TrackerConfidence);
        v60 = v139;

        sub_1BB66ABB8(v92);

        sub_1BB69CA8C(v92, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
      }
    }

    else
    {
    }

    v37 = v156;
    LODWORD(v39) = v160;
    v58 = v153;
    v64 = v157;
    if (v157)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
    LODWORD(v59) = 4;
    v60 = 1;
    v63 = v160;
    v61 = v161;
    v62 = v163;
    v64 = v157;
    if (v157)
    {
      goto LABEL_24;
    }
  }

LABEL_47:
  v118 = 0;
  v130 = 0;
  if (v59 != 4)
  {
LABEL_48:
    *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastObservationType) = v59;
    v130 = v118;
  }

  if (v39)
  {
    v165 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera);
    v131 = &v165;
    v58 = 0;
  }

  else
  {
    v164 = *(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera);
    v131 = &v164;
  }

  sub_1BB697F7C(v58, 0, v131);

  sub_1BB619884(v37);

  if ((*(*(v63 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_configuration) + 304) & 1) == 0)
  {
    sub_1BB698288(v57, v130);
  }

  sub_1BB6989C8(v61, 0);

  swift_setDeallocating();
  v132 = v159;
  v133 = *(v158 + 8);
  v133(v37 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_time, v159);
  swift_deallocClassInstance();
  return (v133)(v61, v132);
}

uint64_t sub_1BB697F7C(uint64_t a1, char a2, unsigned __int8 *a3)
{
  v4 = *a3;
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *&a1;
    v17 = 3;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0x676E612065636146, 0xEE0020736920656CLL);
    sub_1BB6BAFB4();
    MEMORY[0x1BFB10B60](0x7365657267656420, 0xE800000000000000);
    v6 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v17, 0, 0xE000000000000000, v6);
  }

  v17 = v4;
  sub_1BB5F85C4(&v17, &v15, v5);
  v7 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BD520;
  *(inited + 32) = v7;
  *(inited + 40) = 0x3FF0000000000000;
  v9 = sub_1BB5B0D68(inited);
  swift_setDeallocating();

  sub_1BB655218(v9, 0, 0);

  sub_1BB695A6C();

  v10 = *(*(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_configuration) + 288);

  sub_1BB5F2184(v10, 0, &v15);

  if (v15 != 4 && v15 && *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_currentFaceDirection) != v15)
  {
    *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_currentFaceDirection) = v15;
    v17 = 3;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD00000000000001ALL, 0x80000001BB6CFC70);
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](0xD000000000000013, 0x80000001BB6CFC90);
    sub_1BB6BAFB4();
    v12 = v15;
    v13 = v16;
    v14 = sub_1BB6BB084();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v17, v12, v13, v14);
  }

  return result;
}

uint64_t sub_1BB698288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 || (v4 = a2) != 0)
  {

    sub_1BB5BF2B4(v4);
  }

  sub_1BB5F1FEC();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12 = (v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
  if (v10)
  {
    *v12 = -1;
    v12[1] = 0;
  }

  else
  {
    *v12 = v6;
    v12[1] = v8;
  }

  return result;
}

void sub_1BB69834C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  if (*(a1 + 16))
  {
    v7 = sub_1BB6A1004(1);
    if (v8)
    {
      v9 = *(a1 + 56);
      v10 = *(v9 + 8 * v7);
      v11 = sub_1BB6A1004(0);
      if (v12)
      {
        v13 = v10 + *(v9 + 8 * v11);
        if (fabs(v13) < 0.00001)
        {
          v13 = dbl_1BB6C5920[v13 > 0.0];
        }

        v14 = v10 / v13;
        v15 = sub_1BB6BA7F4();
        v16 = *(v15 - 8);
        (*(v16 + 16))(v6, a2, v15);
        (*(v16 + 56))(v6, 0, 1, v15);

        sub_1BB6ABB40(0, 1, v6, v14);

        sub_1BB598308(v6, &qword_1EBC5C050);
      }
    }
  }
}

uint64_t sub_1BB698508(uint64_t a1)
{
  v37 = sub_1BB6BA7F4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker))
  {

    v6 = sub_1BB695D48();

    if (!v6)
    {
      return 0;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker))
  {

    v7 = sub_1BB695D48();

    if (!v7)
    {
      return 0;
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_handTrackers);
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BB6BB564())
  {
    v36 = a1;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v35 = v3 + 16;
      v10 = (v3 + 8);

      v11 = 0;
      v12 = v37;
      while (1)
      {
        v13 = MEMORY[0x1BFB111F0](v11, v8);
        a1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v3 = v13;
        v14 = v8;
        v15 = i;
        v16 = *(v13 + *(*v13 + 240));
        (*v35)(v5, v13 + qword_1EBC5EE30, v12);
        sub_1BB6BA744();
        v18 = v17;
        (*v10)(v5, v12);
        v19 = *(v3 + qword_1EBC5EE28);
        if (v16 == 1)
        {
          if (*(v19 + 64) >= v18)
          {
            goto LABEL_30;
          }
        }

        else if (*(v19 + 56) >= v18)
        {
          goto LABEL_30;
        }

        v20 = *(v3 + *(*v3 + 256));
        v21 = *(v19 + 192);
        swift_unknownObjectRelease();
        if (v21 >= v20)
        {
          goto LABEL_31;
        }

        ++v11;
        i = v15;
        v22 = a1 == v15;
        v8 = v14;
        if (v22)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    else
    {
      v35 = v8 & 0xFFFFFFFFFFFFFF8;
      v23 = (v3 + 16);
      v24 = (v3 + 8);

      v25 = 0;
      while (v25 < *(v35 + 16))
      {
        v3 = *(v8 + 8 * v25 + 32);
        v26 = *(v3 + *(*v3 + 240));
        v27 = v37;
        (*v23)(v5, v3 + qword_1EBC5EE30, v37);

        sub_1BB6BA744();
        v29 = v28;
        (*v24)(v5, v27);
        v30 = *(v3 + qword_1EBC5EE28);
        if (v26 == 1)
        {
          v31 = *(v30 + 64);
        }

        else
        {
          v31 = *(v30 + 56);
        }

        if (v31 >= v29)
        {
LABEL_30:

          return 0;
        }

        a1 = *(v3 + *(*v3 + 256));
        v32 = *(v30 + 192);

        if (v32 >= a1)
        {
LABEL_31:

          return 0;
        }

        if (i == ++v25)
        {
LABEL_26:

          return 1;
        }
      }
    }

    __break(1u);
LABEL_35:
    ;
  }

  return 1;
}

void sub_1BB6988F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker);
  if (v1)
  {
    v2 = *(v1 + *(*v1 + 248));
    if (*(v2 + 33) == 1 && *(v2 + 32) == 1)
    {
      atan2(*(v2 + 48), *(v2 + 56));
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker);
  if (v3)
  {
    v4 = *(v3 + *(*v3 + 248));
    if (*(v4 + 33) == 1 && *(v4 + 32) == 1)
    {
      atan2(*(v4 + 48), *(v4 + 56));
    }
  }
}

uint64_t sub_1BB6989C8(uint64_t a1, int a2)
{
  v3 = v2;
  v147 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v155 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = &v116 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v153 = &v116 - v10;
  v145 = type metadata accessor for DKPersonGroup(0);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v160 = &v116 - v13;
  v14 = sub_1BB6BA844();
  v167 = *(v14 - 8);
  v168 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v169 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v116 - v17;
  *&v161 = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  MEMORY[0x1EEE9AC00](v161);
  v165 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1BB6BA7F4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v116 - v25;
  v27 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v116 - v31;
  v156 = type metadata accessor for DKMotion3();
  v164 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v34 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personPoseFilter);

  v166 = a1;
  sub_1BB61A97C(a1);
  v36 = *(v35 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonMotionFilter_lastState);

  if (!v36)
  {
    return 0;
  }

  v148 = v29;
  v163 = v36;
  v151 = OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_motion;
  sub_1BB69C9BC(v36 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_motion, v34, type metadata accessor for DKMotion3);
  sub_1BB699F68(v34);
  sub_1BB69CA8C(v34, type metadata accessor for DKMotion3);
  v37 = v27[5];
  v38 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  (*(*(v38 - 8) + 56))(&v32[v37], 1, 1, v38);
  sub_1BB6BA724();
  v39 = &v32[v27[7]];
  *&v162 = *(v20 + 16);
  (v162)(v39, v26, v19);
  v40 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v41 = MEMORY[0x1E69E7CC0];
  *&v39[v40[5]] = MEMORY[0x1E69E7CC0];
  *&v39[v40[6]] = v41;
  v141 = v20;
  (*(v20 + 8))(v26, v19);
  *&v39[v40[7]] = v41;
  sub_1BB6BA724();
  *v32 = v41;
  *&v32[v27[6]] = 0;
  v42 = v27[9];
  v152 = v32;
  v32[v42] = 1;
  v43 = v166;
  if (*(*(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_configuration) + 304) == 1)
  {
    v44 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identityFilterNew;
    v45 = v165;
    (v162)(v165, v166, v19);
    sub_1BB6988F4();
    *(v45 + *(v161 + 20)) = v46;

    sub_1BB669438(v45);

    sub_1BB69CA8C(v45, type metadata accessor for DKIdentityFilter.TrackerConfidence);
    v47 = v152;
    sub_1BB69CA8C(v152, type metadata accessor for DKIdentityFilter.IdentityState);
    sub_1BB69C9BC(*(v3 + v44) + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state, v47, type metadata accessor for DKIdentityFilter.IdentityState);
  }

  (v162)(v157, v43, v19);
  v165 = *(v167 + 16);
  v166 = v167 + 16;
  v165(v158, v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v168);
  v48 = v163;
  v49 = *(v163 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRect + 16);
  v50 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
  v51 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity + 8);
  v52 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker);
  v139 = *(v163 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRect);
  v138 = v49;
  v137 = v50;
  v144 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker;
  if (v52 && (v53 = *(v52 + *(*v52 + 200))) != 0 && (v54 = v53 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId, *(v54 + 8) != 1))
  {
    v58 = *v54;
  }

  else
  {
    v55 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker);
    if (v55 && (v56 = *(v55 + *(*v55 + 200))) != 0)
    {
      v57 = v56 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
      if (*(v57 + 8))
      {
        v58 = -1;
      }

      else
      {
        v58 = *v57;
      }
    }

    else
    {
      v58 = -1;
    }
  }

  v136 = v58;
  *&v161 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId;
  v135 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId);
  v60 = v160;
  sub_1BB69C9BC(v163 + v151, v160, type metadata accessor for DKMotion3);
  v61 = *(v164 + 56);
  v164 += 56;
  v126 = v61;
  v61(v60, 0, 1, v156);
  v142 = v19;
  (v162)(v159, v48 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_lastUpdated, v19);
  v62 = *(v48 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_framesSinceLastUpdate);
  v133 = *(v48 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceYaw);
  v131 = *(v48 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceYaw + 8);
  v130 = *(v48 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_facePitch);
  v129 = *(v48 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_facePitch + 8);
  v128 = *(v48 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRoll);
  v127 = *(v48 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRoll + 8);
  v63 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker;
  v64 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker);
  v143 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_handTrackers;
  v65 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_handTrackers);
  if (v52)
  {
    v150 = *(v52 + *(*v52 + 200));
  }

  else
  {
    v150 = 0;
  }

  v66 = MEMORY[0x1E69E7CC0];
  if (v64)
  {
    v149 = *(v64 + *(*v64 + 200));
  }

  else
  {
    v149 = 0;
  }

  v170 = v66;
  if (v65 >> 62)
  {
LABEL_68:
    v67 = sub_1BB6BB564();
  }

  else
  {
    v67 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_bridgeObjectRetain_n();
  v132 = v64;

  v140 = v52;

  v134 = v62;
  v151 = v65;
  if (!v67)
  {
    v65 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  v68 = 0;
  v64 = v65 & 0xC000000000000001;
  v69 = v65 & 0xFFFFFFFFFFFFFF8;
  v70 = v65 + 32;
  v65 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v52 = v68;
    while (v64)
    {
      result = MEMORY[0x1BFB111F0](v52, v151);
      v68 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        return result;
      }

      v72 = *(result + *(*result + 200));
      *&v162 = result;

      v73 = swift_unknownObjectRelease();
      if (v72)
      {
        goto LABEL_36;
      }

LABEL_30:
      v52 = v68;
      if (v68 == v67)
      {
        goto LABEL_41;
      }
    }

    if ((v52 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v52 >= *(v69 + 16))
    {
      goto LABEL_65;
    }

    v68 = v52 + 1;
    if (!*(*(v70 + 8 * v52) + *(**(v70 + 8 * v52) + 200)))
    {
      goto LABEL_30;
    }

LABEL_36:
    MEMORY[0x1BFB10C80](v73);
    if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v62 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BB6BAE64();
    }

    sub_1BB6BAEB4();
    v65 = v170;
    if (v68 != v67)
    {
      continue;
    }

    break;
  }

LABEL_41:

  v125 = sub_1BB5C2498(v65);

  v74 = *(v3 + v161);
  v64 = v168;
  v75 = *(v167 + 56);
  v76 = 1;
  *&v162 = v167 + 56;
  *&v161 = v75;
  v75(v153, 1, 1, v168);
  v77 = *(v3 + v144);
  v124 = v74;
  v78 = v154;
  if (v77)
  {
    v165(v154, v77 + qword_1EBC5EDF8, v64);
    v76 = 0;
  }

  v79 = 1;
  (v161)(v78, v76, 1, v64);
  v80 = *(v3 + v63);
  v81 = v155;
  if (v80)
  {
    v165(v155, v80 + qword_1EBC5EDF8, v64);
    v79 = 0;
  }

  v82 = v143;
  (v161)(v81, v79, 1, v64);
  v83 = *(v3 + v82);
  if (v83 >> 62)
  {
    v52 = sub_1BB6BB564();
  }

  else
  {
    v52 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v144 = v3;

  v65 = MEMORY[0x1E69E7CC0];
  if (v52)
  {
    v84 = 0;
    v62 = v83 & 0xFFFFFFFFFFFFFF8;
    v3 = v168;
    v63 = v167 + 32;
    while (1)
    {
      if ((v83 & 0xC000000000000001) != 0)
      {
        v85 = MEMORY[0x1BFB111F0](v84, v83);
        v64 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v84 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v85 = *(v83 + 8 * v84 + 32);

        v64 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_66;
        }
      }

      v165(v169, v85 + qword_1EBC5EDF8, v3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1BB59CF10(0, *(v65 + 16) + 1, 1, v65);
      }

      v87 = *(v65 + 16);
      v86 = *(v65 + 24);
      if (v87 >= v86 >> 1)
      {
        v65 = sub_1BB59CF10(v86 > 1, v87 + 1, 1, v65);
      }

      *(v65 + 16) = v87 + 1;
      v88 = v65 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v87;
      v3 = v168;
      (*(v167 + 32))(v88, v169, v168);
      ++v84;
      if (v64 == v52)
      {
        goto LABEL_62;
      }
    }
  }

  v3 = v168;
LABEL_62:

  v89 = v145;
  v90 = v146;
  sub_1BB6BA724();
  v91 = v89[7];
  v92 = v161;
  (v161)(&v90[v91], 1, 1, v3);
  v93 = v89[8];
  v92(&v90[v93], 1, 1, v3);
  v94 = v89[9];
  v92(&v90[v94], 1, 1, v3);
  v95 = v89[10];
  *v90 = v124;
  *(v90 + 1) = 0;
  sub_1BB5BA0DC(v153, &v90[v91], &qword_1EBC5C370);
  sub_1BB5BA0DC(v154, &v90[v93], &qword_1EBC5C370);
  sub_1BB5BA0DC(v155, &v90[v94], &qword_1EBC5C370);
  *&v90[v95] = v65;
  v96 = v144;
  v169 = *(v144 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyKeypoints);
  v97 = *(v163 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_bodyRect);
  v161 = *(v163 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_bodyRect + 16);
  v162 = v97;
  v165 = sub_1BB5BAB20();
  v155 = sub_1BB5BAB20();
  v166 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence);
  v154 = sub_1BB5BAB20();
  v98 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personSelectionFilter;
  v145 = sub_1BB5BAB20();
  LODWORD(v153) = *(*(v96 + v98) + 138);
  LODWORD(v143) = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastObservationType);
  LODWORD(v124) = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_currentMotionClassification);
  v123 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_currentFaceDirection);
  sub_1BB69C9BC(v152, v148, type metadata accessor for DKIdentityFilter.IdentityState);
  sub_1BB6988F4();
  v100 = v99;
  type metadata accessor for DKPersonTrackerState(0);
  v59 = swift_allocObject();
  v117 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion;
  v126(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion, 1, 1, v156);
  v101 = v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceYaw;
  *v101 = 0;
  *(v101 + 8) = 1;
  v102 = v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_facePitch;
  *v102 = 0;
  *(v102 + 8) = 1;
  v103 = v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceRoll;
  *v103 = 0;
  *(v103 + 8) = 1;
  v104 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceTracker;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceTracker) = 0;
  v118 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyTracker;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyTracker) = 0;
  v119 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_handTrackers;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_handTrackers) = MEMORY[0x1E69E7CC0];
  v120 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyKeypoints) = 0;
  v156 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type) = 0;
  v126 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification) = 2;
  v122 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection) = 3;
  v121 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackingLock;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackingLock) = 0;
  v164 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerConfidence;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerConfidence) = 0;
  v105 = *(v141 + 32);
  v106 = v142;
  v105(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time, v157, v142);
  (*(v167 + 32))(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v158, v168);
  v107 = (v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
  v108 = v138;
  *v107 = v139;
  v107[1] = v108;
  v109 = (v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity);
  *v109 = v137;
  v109[1] = v51;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_anstId) = -1;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_anstGroupId) = v136;
  v110 = v135;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId) = v135;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_groupId) = v110;

  sub_1BB5BA0DC(v160, v59 + v117, &qword_1EBC5BCB8);
  v105(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastUpdated, v159, v106);
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_framesSinceLastUpdate) = v134;
  *v101 = v133;
  *(v101 + 8) = v131;
  *v102 = v130;
  *(v102 + 8) = v129;
  *v103 = v128;
  *(v103 + 8) = v127;
  *(v59 + v104) = v140;

  *(v59 + v118) = v132;

  *(v59 + v119) = v151;

  v111 = (v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lastObservation);
  v112 = v150;
  *v111 = 0;
  v111[1] = v112;
  v113 = v125;
  v111[2] = v149;
  v111[3] = v113;
  sub_1BB69CA24(v90, v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_group, type metadata accessor for DKPersonGroup);
  v114 = (v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect);
  v115 = v161;
  *v114 = v162;
  v114[1] = v115;
  *(v59 + v120) = v169;

  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_speakingConfidence) = v165;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lookingConfidence) = v155;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) = v166;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_saliencyConfidence) = v154;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionConfidence) = v145;
  *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_selectionReason) = v153;
  *(v59 + v156) = v143;
  *(v126 + v59) = v124;
  *(v59 + v122) = v123;
  *(v59 + v121) = v147 & 1;
  sub_1BB69CA24(v148, v59 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, type metadata accessor for DKIdentityFilter.IdentityState);
  *(v59 + v164) = v100;
  sub_1BB69A094();

  sub_1BB69CA8C(v152, type metadata accessor for DKIdentityFilter.IdentityState);
  return v59;
}

uint64_t sub_1BB699F68(uint64_t a1)
{
  v2 = v1;
  result = type metadata accessor for DKMotion3();
  v5 = *(a1 + *(result + 24));
  if (*(v5 + 16))
  {
    v6 = fabs(*(v5 + 32));
    v7 = &unk_1F3A48600;
    if (v6 < 0.1)
    {
      v7 = &unk_1F3A485D0;
    }

    if (v6 >= 0.05)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F3A485A0;
    }

    v9 = sub_1BB5B0D90(v8);

    sub_1BB65586C(v9, 0, 0);

    sub_1BB695A6C();

    sub_1BB5F72A0(&v10, 0x3FECCCCCCCCCCCCDLL, 0);

    if (v10 != 3)
    {
      *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_currentMotionClassification) = v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB69A094()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_history;

  MEMORY[0x1BFB10C80](v3);
  if (*((*(v0 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_57:
    sub_1BB6BAE64();
  }

  sub_1BB6BAEB4();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    result = sub_1BB6BB564();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_configuration);
  while (*(v6 + 72) < result)
  {
    v7 = *(v1 + v2);
    if (v7 >> 62)
    {
      if (!sub_1BB6BB564())
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v8 = *(v1 + v2);
    if (v8 >> 62)
    {
      if (!sub_1BB6BB564())
      {
        goto LABEL_51;
      }
    }

    else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB111F0](0, v8);
      swift_unknownObjectRelease();
      v9 = *(v1 + v2);
      if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v9 = *(v1 + v2);
      if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
      {
LABEL_14:
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        goto LABEL_15;
      }
    }

    if (!sub_1BB6BB564())
    {
      goto LABEL_56;
    }

LABEL_15:
    v10 = *(v1 + v2);
    if (v10 >> 62)
    {
      result = sub_1BB6BB564();
      if (result < 1)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        return result;
      }

      v19 = sub_1BB6BB564();
      v12 = v19 - 1;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_53;
      }

      v12 = v11 - 1;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_54;
      }
    }

    v13 = *(v1 + v2);
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + v2) = v13;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
      {
LABEL_26:
        sub_1BB6BB564();
      }

LABEL_27:
      v13 = sub_1BB6BB384();
      *(v1 + v2) = v13;
      v15 = (v13 & 0xFFFFFFFFFFFFFF8);
      goto LABEL_28;
    }

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v15 = (v13 & 0xFFFFFFFFFFFFFF8);
    if (v12 > *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

LABEL_28:

    if (v13 >> 62)
    {
      result = sub_1BB6BB564();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_60;
      }

      memmove(v15 + 4, v15 + 5, 8 * (result - 1));
      v20 = sub_1BB6BB564();
      v17 = v20 - 1;
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_55;
      }
    }

    else
    {
      v16 = v15[2];
      memmove(v15 + 4, v15 + 5, 8 * v16 - 8);
      v17 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        goto LABEL_55;
      }
    }

    v15[2] = v17;
    v18 = *(v1 + v2);
    if (v18 >> 62)
    {
      result = sub_1BB6BB564();
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return result;
}

uint64_t sub_1BB69A3D8(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker);
  if (v2)
  {
    *(v2 + *(*v2 + 240)) = result & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker);
  if (v3)
  {
    *(v3 + *(*v3 + 240)) = result & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_handTrackers);
  if (v4 >> 62)
  {
    v11 = result;
    v5 = sub_1BB6BB564();
    result = v11;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = result & 1;

    for (i = 0; i != v5; ++i)
    {
      v8 = MEMORY[0x1BFB111F0](i, v4);
      *(v8 + *(*v8 + 240)) = v6;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = (v4 + 32);
    do
    {
      v10 = *v9++;
      *(v10 + *(*v10 + 240)) = result & 1;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t DKPersonTracker.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_creationDate;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastFaceObservationId, &qword_1EBC5C370);
  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastBodyObservationId, &qword_1EBC5C370);
  sub_1BB69CA8C(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera, type metadata accessor for DKCamera);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_logger;
  v5 = sub_1BB6BAA34();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid;
  v7 = sub_1BB6BA844();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v2);

  return v0;
}

uint64_t DKPersonTracker.__deallocating_deinit()
{
  DKPersonTracker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB69A830@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid;
  v5 = sub_1BB6BA844();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BB69A950(uint64_t a1)
{
  v3 = *v1;
  sub_1BB5CAC04(a1, v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera);
  v4 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personPoseFilter) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonMotionFilter_camera;

  return sub_1BB5CAC04(a1, v4);
}

void sub_1BB69A9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = *(a1 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    sub_1BB5E5760(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_1BB6BB244();
    v5 = v26;
    v6 = v4;
    v7 = 0;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v10 = *(a1 + 36);
      v11 = *(*(a1 + 56) + 8 * v6);
      v12 = 0.5;
      if (*(v11 + 33) == 1)
      {
        if (*(v11 + 32) == 1)
        {
          v13 = *(a1 + 36);
          v12 = atan2(*(v11 + 48), *(v11 + 56));
          v10 = v13;
          v5 = v26;
        }

        else
        {
          v12 = *(v11 + 40);
        }
      }

      v14 = v3;
      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        v25 = v10;
        v24 = v12;
        sub_1BB5E5760((v15 > 1), v16 + 1, 1);
        v10 = v25;
        v5 = v26;
        v12 = v24;
      }

      *(v27 + 16) = v16 + 1;
      *(v27 + 8 * v16 + 32) = v12;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_26;
      }

      v17 = *(v14 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v3 = v14;
      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a1 + 72 + 8 * v9);
        while (v20 < (v8 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1BB66F830(v6, v10, 0);
            v5 = v26;
            v8 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1BB66F830(v6, v10, 0);
        v5 = v26;
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t sub_1BB69AC1C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v78 = a5;
  v79 = a3;
  *&v73 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = &v68 - v10;
  v11 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v74 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BB6BA7F4();
  v13 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  *&v68 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastFaceObservationId;
  v16 = sub_1BB6BA844();
  v17 = *(v16 - 8);
  v72 = v17;
  v18 = *(v17 + 56);
  v18(v6 + v15, 1, 1, v16);
  v71 = v16;
  v18(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastBodyObservationId, 1, 1, v16);
  sub_1BB6BAA24();
  v19 = (v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
  *v19 = -1;
  v19[1] = 0;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker) = 0;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_handTrackers) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_history) = v20;
  v21 = v20;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyKeypoints) = 0;
  v22 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personSelectionFilter;
  type metadata accessor for DKPersonSelectionFilter(0);
  swift_allocObject();
  *(v6 + v22) = sub_1BB6B9358(1);
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
  type metadata accessor for DKPersonRankingFilter();
  swift_allocObject();
  *(v6 + v23) = sub_1BB6AC6A4();
  v24 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420);
  v25 = swift_allocObject();
  *(v6 + v24) = v25;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceCropBuffer) = v21;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastObservationType) = 0;
  *(v25 + 16) = -1;
  *(v25 + 24) = 0x3FF0000000000000;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_currentMotionClassification) = 0;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_currentFaceDirection) = 3;
  sub_1BB6BA724();
  v76 = v13;
  v26 = *(v13 + 16);
  v70 = a1;
  v27 = v75;
  v26(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_creationDate, a1, v75);
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_configuration) = a2;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId) = v73;
  (*(v17 + 16))(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v79, v16);
  v28 = v78;
  sub_1BB69C9BC(v78, v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_camera, type metadata accessor for DKCamera);
  v29 = a2[2];
  v30 = a2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
  swift_allocObject();

  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identityFilter) = sub_1BB6B44C8(MEMORY[0x1E69E7CC0], v29, v30);
  v31 = v68;
  v32 = a1;
  v33 = v27;
  v26(v68, v32, v27);
  v34 = v74;
  sub_1BB69C9BC(v28, v74, type metadata accessor for DKCamera);
  type metadata accessor for DKPersonMotionFilter(0);
  swift_allocObject();
  v69 = a2;

  v35 = sub_1BB61C6FC(v31, a2, v34);

  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personPoseFilter) = v35;
  v36 = v77;
  v37 = *(v76 + 56);
  v37(v77, 1, 1, v27);
  v74 = type metadata accessor for DKBinaryProbabilityFilter();
  v38 = swift_allocObject();
  *(v38 + 49) = 0;
  *(v38 + 24) = 0;
  type metadata accessor for DKSmoothingFilter();
  v39 = swift_allocObject();
  v73 = xmmword_1BB6BE460;
  *(v39 + 48) = xmmword_1BB6BE460;
  v40 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v37(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v33);
  v41 = v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v42 = 0;
  *(v42 + 8) = 1;
  *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  v68 = xmmword_1BB6C0820;
  *(v39 + 16) = xmmword_1BB6C0820;
  *(v39 + 32) = 256;
  *(v39 + 40) = 0;
  sub_1BB5BA0DC(v36, v39 + v40, &qword_1EBC5C050);
  *v41 = 0;
  *(v41 + 8) = 1;
  *v42 = 0;
  *(v42 + 8) = 1;
  *(v38 + 16) = v39;
  *(v38 + 32) = 0x3FE0000000000000;
  *(v38 + 40) = 0;
  *(v38 + 48) = 1;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_speakingFilter) = v38;
  v43 = v36;
  v44 = v75;
  v37(v43, 1, 1, v75);
  v45 = swift_allocObject();
  *(v45 + 49) = 0;
  *(v45 + 24) = 0;
  v46 = swift_allocObject();
  *(v46 + 48) = v73;
  v47 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v37(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v44);
  v48 = v46 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v48 = 0;
  *(v48 + 8) = 1;
  v49 = v46 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v49 = 0;
  *(v49 + 8) = 1;
  *(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v46 + 16) = v68;
  *(v46 + 32) = 256;
  *(v46 + 40) = 0;
  v50 = v46 + v47;
  v51 = v77;
  sub_1BB5BA0DC(v77, v50, &qword_1EBC5C050);
  *v48 = 0;
  *(v48 + 8) = 1;
  *v49 = 0;
  *(v49 + 8) = 1;
  *(v45 + 16) = v46;
  *(v45 + 32) = 0x3FE0000000000000;
  *(v45 + 40) = 0;
  *(v45 + 48) = 1;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lookingFilter) = v45;
  v52 = v51;
  v53 = v51;
  v54 = v44;
  v37(v52, 1, 1, v44);
  v55 = swift_allocObject();
  *(v55 + 49) = 0;
  *(v55 + 24) = 0;
  v56 = swift_allocObject();
  *(v56 + 48) = v73;
  v57 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v37(v56 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v54);
  v58 = v56 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v58 = 0;
  *(v58 + 8) = 1;
  v59 = v56 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v59 = 0;
  *(v59 + 8) = 1;
  *(v56 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v56 + 16) = _Q0;
  *(v56 + 32) = 256;
  *(v56 + 40) = 0;
  sub_1BB5BA0DC(v53, v56 + v57, &qword_1EBC5C050);
  *v58 = 0;
  *(v58 + 8) = 1;
  *v59 = 0;
  *(v59 + 8) = 1;
  *(v55 + 16) = v56;
  *(v55 + 32) = 0x3FE0000000000000;
  *(v55 + 40) = 0;
  *(v55 + 48) = 1;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_saliencyFilter) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E4B8);
  swift_allocObject();
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_motionClassificationFilter) = sub_1BB6B4B28(&unk_1F3A48550, 0.1, 0.1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E4C0);
  swift_allocObject();
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceDirectionFilter) = sub_1BB6B4E58(&unk_1F3A48578, 0.5, 0.5);
  type metadata accessor for DKIdentityFilter(0);
  swift_allocObject();

  v66 = DKIdentityFilter.init(configuration:)(v65);
  sub_1BB69CA8C(v78, type metadata accessor for DKCamera);
  (*(v72 + 8))(v79, v71);
  (*(v76 + 8))(v70, v54);
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identityFilterNew) = v66;
  return v6;
}

uint64_t keypath_get_40Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v5 + v6, v7);
}

uint64_t type metadata accessor for DKPersonTracker()
{
  result = qword_1EBC5E4A0;
  if (!qword_1EBC5E4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BB69BDF8()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB688A24();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DKCamera();
      if (v2 <= 0x3F)
      {
        sub_1BB6BAA34();
        if (v3 <= 0x3F)
        {
          sub_1BB6BA844();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1BB69C9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB69CA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB69CA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BB69CB10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BB69CB58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1BB69CBCC()
{
  v1 = *(v0 + 16);
  result = *(*(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces);
  v3 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v4 = *(*(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (v4 >> 62)
  {
    v12 = *(*(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces);
    v5 = sub_1BB6BB564();
    result = v12;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_15:

    goto LABEL_16;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = 0;
    do
    {
      v7 = MEMORY[0x1BFB111F0](v6++, v4);
      *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = 0;

      v8 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint);
      *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = 0;
      swift_unknownObjectRelease();
    }

    while (v5 != v6);
  }

  else
  {

    v9 = 32;
    do
    {
      v10 = *(v4 + v9);
      *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = 0;

      v11 = *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint);
      *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = 0;

      v9 += 8;
      --v5;
    }

    while (v5);
  }

LABEL_16:

  v13 = *(v1 + 48);
  result = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies);
  if (result)
  {
    v14 = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies);
  }

  else
  {
    v14 = v3;
  }

  if (v14 >> 62)
  {
    v22 = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies);
    v15 = sub_1BB6BB564();
    result = v22;
    if (v15)
    {
LABEL_21:
      if (v15 >= 1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {

          v16 = 0;
          do
          {
            v17 = MEMORY[0x1BFB111F0](v16++, v14);
            *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop) = 0;

            v18 = *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint);
            *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint) = 0;
            swift_unknownObjectRelease();
          }

          while (v15 != v16);
        }

        else
        {

          v19 = 32;
          do
          {
            v20 = *(v14 + v19);
            *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop) = 0;

            v21 = *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint);
            *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint) = 0;

            v19 += 8;
            --v15;
          }

          while (v15);
        }

        goto LABEL_31;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_21;
    }
  }

LABEL_31:

  v23 = *(v1 + 48);
  result = *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands);
  if (result)
  {
    v24 = *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands);
  }

  else
  {
    v24 = v3;
  }

  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_36;
    }

LABEL_45:

    goto LABEL_46;
  }

  v29 = *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands);
  v25 = sub_1BB6BB564();
  result = v29;
  if (!v25)
  {
    goto LABEL_45;
  }

LABEL_36:
  if (v25 < 1)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {

    v26 = 0;
    do
    {
      v27 = MEMORY[0x1BFB111F0](v26++, v24);
      *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_crop) = 0;
      swift_unknownObjectRelease();
    }

    while (v25 != v26);
  }

  else
  {

    v28 = 32;
    do
    {
      *(*(v24 + v28) + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_crop) = 0;

      v28 += 8;
      --v25;
    }

    while (v25);
  }

LABEL_46:

  v30 = *(v1 + 48);
  v31 = *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
  *(v30 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image) = 0;

  v32 = *(v0 + 8);

  return v32(1);
}

uint64_t type metadata accessor for DKCleanupTask()
{
  result = qword_1EBC5E4C8;
  if (!qword_1EBC5E4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DKMotionStatisticsFilter.__allocating_init(duration:)(double a1)
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = a1;
  return result;
}

uint64_t DKMotionStatisticsFilter.init(duration:)(double a1)
{
  result = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1BB69D060(uint64_t a1)
{
  v38 = a1;
  v39 = type metadata accessor for DKMotion3();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BB6BA7F4();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v15 = *(v1 + 16);
  v16 = v15[2];
  v37 = v3;
  if (v16)
  {
    v17 = (v3[80] + 32) & ~v3[80];
    v34 = (v5 + 16);
    v35 = (v3 + 56);
    v18 = (v5 + 8);
    v32 = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    while (1)
    {
      sub_1BB69D470(v15 + v17, v14);
      v3 = *v35;
      (*v35)(v14, 0, 1, v39);
      sub_1BB62E628(v14);
      v20 = *(v1 + 16);
      if (!*(v20 + 16))
      {
        break;
      }

      v21 = v36;
      (*v34)(v10, v20 + v17, v36);
      sub_1BB6BA794();
      v22 = sub_1BB6BA774();
      v23 = *v18;
      (*v18)(v7, v21);
      v23(v10, v21);
      if ((v22 & 1) == 0)
      {
        goto LABEL_18;
      }

      v15 = *(v1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v15;
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v15[2];
        if (!v25)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15 = sub_1BB6B1088(v15);
        *(v1 + 16) = v15;
        v25 = v15[2];
        if (!v25)
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      v26 = v25 - 1;
      v2 = (v15 + v17);
      sub_1BB5DD2DC(v15 + v17);
      v27 = *(v37 + 9);
      if (v27 > 0 || v2 >= (v15 + v17 + v27 + v27 * v26))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v27)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v15[2] = v26;
      *(v1 + 16) = v15;
      if (!v15[2])
      {
        (v3)(v14, 1, 1, v39, v19);
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    v2 = sub_1BB59E4FC(0, v2[2] + 1, 1, v2);
    *(v1 + 16) = v2;
    goto LABEL_19;
  }

LABEL_15:
  (*(v3 + 7))(v14, 1, 1, v39, v12);
LABEL_17:
  sub_1BB62E628(v14);
LABEL_18:
  v17 = v33;
  sub_1BB69D470(v38, v33);
  v2 = *(v1 + 16);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((v28 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v30 = v2[2];
  v29 = v2[3];
  if (v30 >= v29 >> 1)
  {
    v2 = sub_1BB59E4FC(v29 > 1, v30 + 1, 1, v2);
  }

  v2[2] = v30 + 1;
  result = sub_1BB5DD278(v17, v2 + ((v37[80] + 32) & ~v37[80]) + *(v37 + 9) * v30);
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1BB69D470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKMotion3();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB69D4D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for DKMotion3();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    sub_1BB69D470(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a1);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a1, v7, 1, v5);
}

uint64_t sub_1BB69D598@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for DKMotion3();
    v13 = *(v6 - 8);
    sub_1BB69D470(v3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a1);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for DKMotion3();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

void sub_1BB69D6B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = type metadata accessor for DKMotion3();
    v4 = *(v3 - 8);
    v5 = *(v4 + 72);
    v6 = v1 + *(v3 + 20) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = 1.79769313e308;
    v8 = -1.79769313e308;
    while (*(*v6 + 16))
    {
      v9 = *v6;
      v10 = *(*v6 + 32);
      if (v10 < v7)
      {
        v7 = *(v9 + 32);
      }

      if (v8 <= v10)
      {
        v8 = *(v9 + 32);
      }

      v6 += v5;
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1BB69D78C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = type metadata accessor for DKMotion3();
    v4 = *(v3 - 8);
    v5 = *(v4 + 72);
    v6 = v1 + *(v3 + 20) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = 1.79769313e308;
    v8 = -1.79769313e308;
    while (*(*v6 + 16) >= 2uLL)
    {
      v9 = *v6;
      v10 = *(*v6 + 40);
      if (v10 < v7)
      {
        v7 = *(v9 + 40);
      }

      if (v8 <= v10)
      {
        v8 = *(v9 + 40);
      }

      v6 += v5;
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1BB69D86C()
{
  v1 = type metadata accessor for DKMotion3();
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v2 + 24);
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    v11 = 0.0;
    v12 = 0.0;
    while (1)
    {
      sub_1BB69D470(v9, v5);
      v13 = *&v5[v8];
      v14 = *(v13 + 16);
      if (!v14)
      {
        break;
      }

      if (v14 == 1)
      {
        goto LABEL_9;
      }

      v15 = *(v13 + 40);
      v12 = v12 + *(v13 + 32);
      sub_1BB5DD2DC(v5);
      v11 = v11 + v15;
      v9 += v10;
      if (!--v7)
      {

        return;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_1BB69D9D0()
{
  v1 = sub_1BB6BA7F4();
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - v5;
  v54 = v0;
  v7 = *(*(v0 + 16) + 16);
  if (!v7)
  {
LABEL_23:
    __break(1u);
    return;
  }

  if (v7 != 1)
  {
    v51 = (v4 + 8);
    v52 = (v4 + 16);
    v8 = 0.0;
    v9 = 1;
    v10 = 0.0;
    v11 = 0.0;
    v49 = v7;
    while (1)
    {
      v12 = *(v54 + 16);
      if (v9 >= *(v12 + 16))
      {
        break;
      }

      v13 = type metadata accessor for DKMotion3();
      v14 = *(*(v13 - 8) + 80);
      v15 = *(*(v13 - 8) + 72);
      v16 = (v14 + 32) & ~v14;
      v17 = v12 + v16;
      v18 = v15 * v9;
      v19 = *(v13 + 24);
      v20 = *(v12 + v16 + v15 * v9 + v19);
      if (!*(v20 + 16))
      {
        goto LABEL_16;
      }

      v21 = v9 - 1;
      v22 = v15 * (v9 - 1);
      v23 = v17 + v22;
      v24 = *(v17 + v22 + v19);
      if (!*(v24 + 16))
      {
        goto LABEL_17;
      }

      v25 = v13;
      v50 = v16;
      v55 = v9;
      v26 = *(v20 + 32);
      v27 = *(v24 + 32);
      v28 = *v52;
      (*v52)(v6);
      if (v21 >= *(v12 + 16))
      {
        goto LABEL_18;
      }

      v29 = v6;
      v30 = v1;
      v31 = v53;
      (v28)(v53, v23, v30);
      sub_1BB6BA744();
      v33 = v32;
      v34 = *v51;
      v35 = v31;
      v1 = v30;
      v6 = v29;
      (*v51)(v35, v1);
      v34(v29, v1);
      v36 = *(v54 + 16);
      if (v55 >= *(v36 + 16))
      {
        goto LABEL_19;
      }

      v37 = v36 + v50;
      v38 = *(v25 + 24);
      v39 = *(v36 + v50 + v18 + v38);
      if (*(v39 + 16) < 2uLL)
      {
        goto LABEL_20;
      }

      v40 = v37 + v22;
      v41 = *(v37 + v22 + v38);
      if (*(v41 + 16) < 2uLL)
      {
        goto LABEL_21;
      }

      v42 = *(v39 + 40);
      v43 = *(v41 + 40);
      v28(v6);
      if (v21 >= *(v36 + 16))
      {
        goto LABEL_22;
      }

      v11 = v11 + 1.0;
      v44 = (v26 - v27) / v33;
      v45 = v53;
      (v28)(v53, v40, v1);
      sub_1BB6BA744();
      v47 = v46;
      v34(v45, v1);
      v34(v6, v1);
      v10 = v10 + v44;
      v8 = v8 + (v42 - v43) / v47;
      v9 = v55 + 1;
      if (v49 == v55 + 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

uint64_t DKMotionStatisticsFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB69DF38(unint64_t a1, double a2, double a3)
{
  v4 = v3;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  LOBYTE(v14) = 1;
  v8 = sub_1BB6BB074();
  _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v14, 0xD000000000000016, 0x80000001BB6CFEC0, v8);
  sub_1BB5ACCEC(&v14, a1);
  v9 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_measurement;
  v10 = *(v3 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_measurement);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1BB6B0F28(v10);
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (*(v10 + 2) <= a1)
  {
    goto LABEL_19;
  }

  *&v10[8 * a1 + 32] = 0;
  *(v4 + v9) = v10;
  v9 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_covariance;
  v10 = *(v4 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_covariance);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v9) = v10;
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    if (*(v10 + 2) > a1)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_8:
    sub_1BB5ACCEC(&v14, a1);
    v9 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_measurement;
    v10 = *(v4 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_measurement);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v9) = v10;
    if ((v13 & 1) == 0)
    {
      break;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_1BB6B0F28(v10);
    v10 = result;
  }

LABEL_17:
  v10 = sub_1BB6B0F28(v10);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (*(v10 + 2) <= a1)
  {
    goto LABEL_20;
  }

  *&v10[8 * a1 + 32] = a2;
  *(v4 + v9) = v10;
  v9 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_covariance;
  v10 = *(v4 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_covariance);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v9) = v10;
  if ((result & 1) == 0)
  {
    result = sub_1BB6B0F28(v10);
    v10 = result;
  }

  if (*(v10 + 2) > a1)
  {
LABEL_14:
    *&v10[8 * a1 + 32] = a3;
    *(v4 + v9) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t DKKalmanFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKKalmanFilter.Configuration.deinit()
{

  return v0;
}

uint64_t sub_1BB69E1E8(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void DKKalmanFilter.init(configuration:stateSize:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BB6BA724();
  sub_1BB6BA724();
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_stateSize;
  *(v2 + 16) = a1;
  *(v2 + v6) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = 1;
  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;

  *(v8 + 32) = swift_slowAlloc();
  *(v8 + 40) = a2;
  sub_1BB6A0590(0.0);
  *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x) = v8;
  v9 = a2 * a2;
  if ((a2 * a2) >> 64 != (a2 * a2) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v9 - 0x1000000000000000) >> 61 == 7)
  {
    v35 = sub_1BB6A2DC4(8 * v9);
    v36 = v10;
    sub_1BB6A23E8(&v35, a2);
    v11 = v35;
    v12 = v36;
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a2;
    sub_1BB59F834(v11, v12);
    v14 = swift_slowAlloc();
    v13[4] = v14;
    v13[5] = v9;
    sub_1BB6A03A4(v14, a2 * a2, 0, 0, 1, v11, v12);
    sub_1BB59F668(v11, v12);
    sub_1BB59F668(v11, v12);
    *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P) = v13;
    v35 = sub_1BB6A2DC4(8 * v9);
    v36 = v15;
    sub_1BB6A23E8(&v35, a2);
    v16 = v35;
    v17 = v36;
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a2;
    sub_1BB59F834(v16, v17);
    v19 = swift_slowAlloc();
    v18[4] = v19;
    v18[5] = v9;
    sub_1BB6A03A4(v19, a2 * a2, 0, 0, 1, v16, v17);
    sub_1BB59F668(v16, v17);
    sub_1BB59F668(v16, v17);
    *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_I) = v18;
    v35 = sub_1BB6A2DC4(8 * v9);
    v36 = v20;
    sub_1BB6A23E8(&v35, a2);
    v21 = v35;
    v22 = v36;
    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a2;
    sub_1BB59F834(v21, v22);
    v24 = swift_slowAlloc();
    v23[4] = v24;
    v23[5] = v9;
    sub_1BB6A03A4(v24, a2 * a2, 0, 0, 1, v21, v22);
    sub_1BB59F668(v21, v22);
    sub_1BB59F668(v21, v22);
    *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q) = v23;
    v35 = sub_1BB6A2DC4(8 * v9);
    v36 = v25;
    sub_1BB6A23E8(&v35, a2);
    v26 = v35;
    v27 = v36;
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = a2;
    sub_1BB59F834(v26, v27);
    v29 = swift_slowAlloc();
    v28[4] = v29;
    v28[5] = v9;
    sub_1BB6A03A4(v29, a2 * a2, 0, 0, 1, v26, v27);
    sub_1BB59F668(v26, v27);
    sub_1BB59F668(v26, v27);
    *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F) = v28;
    v35 = sub_1BB6A2DC4(8 * v9);
    v36 = v30;
    sub_1BB6A23E8(&v35, a2);
    v31 = v35;
    v32 = v36;
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = a2;
    sub_1BB59F834(v31, v32);
    v34 = swift_slowAlloc();
    v33[4] = v34;
    v33[5] = v9;
    sub_1BB6A03A4(v34, a2 * a2, 0, 0, 1, v31, v32);
    sub_1BB59F668(v31, v32);

    sub_1BB59F668(v31, v32);
    *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J) = v33;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BB69E62C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  if (*(v2 + 16) <= result || result < 0 || *(v2 + 24) <= 0)
  {
    result = sub_1BB6BB524();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB69E6B4(uint64_t a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  if (v3[2] <= a1 || a1 < 0 || v3[3] <= 0)
  {
    result = sub_1BB6BB524();
    __break(1u);
  }

  else
  {
    *(v3[4] + 8 * a1) = a2;

    return sub_1BB6A0058();
  }

  return result;
}

uint64_t sub_1BB69E74C(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_1BB6BAA34();
  v4 = *(v3 - 8);
  v82 = v3;
  v83 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v74 - v11;
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime;
  v14 = *(v7 + 16);
  v14(&v74 - v11, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime, v6);
  sub_1BB6BA724();
  v15 = sub_1BB6BA7C4();
  v75 = v7;
  v16 = *(v7 + 8);
  v16(v10, v6);
  result = (v16)(v12, v6);
  if (v15)
  {
    return result;
  }

  v86 = v13;
  v14(v12, v2 + v13, v6);
  sub_1BB6BA744();
  v19 = v18;
  v87 = v6;
  v16(v12, v6);
  v20 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F;
  v21 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F);
  v22 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x;
  v23 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);

  v24 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v21, v23);

  *(v2 + v22) = v24;

  if (*(*(v2 + 16) + 32) == 1)
  {
    v25 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J;
    v26 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J);
    v27 = (v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P);
    v28 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P);

    v29 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v26, v28);

    v30 = *(v2 + v25);
    v32 = v30[2];
    v31 = v30[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
    inited = swift_initStackObject();
    *(inited + 16) = v31;
    *(inited + 24) = v32;
    v20 = v31 * v32;
    if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if ((v20 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v34 = inited;

    v35 = swift_slowAlloc();
    v34[4] = v35;
    v34[5] = v20;
    v36 = v30[4];
    v37 = v79;
    if (!v36)
    {
      goto LABEL_13;
    }

    if (((v32 | v31) & 0x8000000000000000) == 0)
    {
LABEL_12:
      vDSP_mtransD(v36, 1, v35, 1, v32, v31);
      goto LABEL_13;
    }

    __break(1u);
  }

  v38 = *(v2 + v20);
  v27 = (v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P);
  v39 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P);

  v29 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v38, v39);

  v40 = *(v2 + v20);
  v32 = v40[2];
  v31 = v40[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  v41 = swift_initStackObject();
  *(v41 + 16) = v31;
  *(v41 + 24) = v32;
  v42 = v31 * v32;
  if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v42 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v34 = v41;

  v35 = swift_slowAlloc();
  v34[4] = v35;
  v34[5] = v42;
  v36 = v40[4];
  v37 = v79;
  if (v36)
  {
    if ((v32 | v31) < 0)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = sub_1BB6BB524();
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

LABEL_13:

  v43 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v29, v34);

  swift_setDeallocating();
  MEMORY[0x1BFB122F0](v35, -1, -1);
  v44 = v2;

  v46 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGSd_AEtFZ_0(v45, v19);

  v47 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1poiyACySdGAE_AEtFZ_0(v43, v46);

  *v27 = v47;

  sub_1BB6A0058();
  sub_1BB6A01AC();
  v78 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_stateSize;
  v49 = *(v44 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_stateSize);
  v50 = v82;
  if (v49 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v52 = v86;
  v51 = v87;
  v53 = v76;
  if (v49)
  {
    v54 = 0;
    v55 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P;
    v84 = "identityState";
    v85 = "ed. Ignoring body detection";
    ++v83;
    v81 = "sFilter";
    *&v48 = 136315138;
    v80 = v48;
    v77 = v49;
    while (1)
    {
      v56 = *(v44 + v78);
      if (v56 < 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v56)
      {
        break;
      }

LABEL_16:
      ++v54;
      v37 = v79;
      if (v54 == v77)
      {
        return (*(v75 + 24))(v44 + v52, v37, v51);
      }
    }

    v57 = 0;
    while (1)
    {
      v60 = *(v44 + v55);
      v61 = v60[2];
      if (v54 >= v61 || v57 >= v60[3])
      {
        goto LABEL_51;
      }

      v62 = v57 * v61;
      if ((v57 * v61) >> 64 != (v57 * v61) >> 63)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v63 = v62 + v54;
      if (__OFADD__(v62, v54))
      {
        goto LABEL_41;
      }

      v64 = v60[4];
      v59 = *(v64 + 8 * v63);
      if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v58 = *(v44 + 16);
        if (*(v58 + 16) > v59)
        {
          v59 = *(v58 + 16);
        }

        if (*(v58 + 24) < v59)
        {
          v59 = *(v58 + 24);
        }

        *(v64 + 8 * v63) = v59;
      }

      else
      {
        v65 = sub_1BB6BB074();
        sub_1BB6BAA24();
        v66 = v53;
        v67 = sub_1BB6BAA14();
        if (os_log_type_enabled(v67, v65))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v88 = v69;
          *v68 = v80;
          *(v68 + 4) = sub_1BB6A0A5C(0xD000000000000015, v81 | 0x8000000000000000, &v88);
          _os_log_impl(&dword_1BB58A000, v67, v65, "%s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          v70 = v69;
          v50 = v82;
          MEMORY[0x1BFB122F0](v70, -1, -1);
          MEMORY[0x1BFB122F0](v68, -1, -1);
        }

        (*v83)(v66, v50);
        v53 = v66;
        v71 = *(v44 + v55);
        v72 = v71[2];
        v52 = v86;
        v51 = v87;
        if (v54 >= v72 || v57 >= v71[3])
        {
          goto LABEL_51;
        }

        v73 = v57 * v72;
        if ((v57 * v72) >> 64 != (v57 * v72) >> 63)
        {
          goto LABEL_42;
        }

        if (__OFADD__(v73, v54))
        {
          goto LABEL_43;
        }

        *(v71[4] + 8 * (v73 + v54)) = 0x3FF0000000000000;
      }

      if (v56 == ++v57)
      {
        goto LABEL_16;
      }
    }
  }

  return (*(v75 + 24))(v44 + v52, v37, v51);
}

void sub_1BB69EF7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v9;
  v12 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_updateIndices;
  if (*(*(a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_updateIndices) + 16))
  {
    v47 = a1;
    v13 = *(v5 + 16);
    v45 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime;
    v13(&v44 - v9, &v1[OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime], v4, v10);
    sub_1BB6BA724();
    sub_1BB6A35B0(&qword_1EBC5D460, MEMORY[0x1E6969530]);
    v14 = sub_1BB6BABE4();
    v46 = v5;
    v15 = *(v5 + 8);
    v15(v7, v4);
    v15(v11, v4);
    if (v14)
    {
      v16 = 0;
      v17 = v47;
      v18 = *(v47 + v12);
      v19 = 1 << *(v18 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v18 + 56);
      v22 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x;
      v23 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_measurement;
      v24 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P;
      v25 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_covariance;
      v26 = (v19 + 63) >> 6;
      v27 = v46;
      while (v21)
      {
LABEL_12:
        v30 = *(*(v18 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v21)))));
        if (v30 < 0)
        {
          goto LABEL_33;
        }

        v31 = *(v17 + v23);
        if (v30 >= *(v31 + 16))
        {
          goto LABEL_34;
        }

        v32 = *&v2[v22];
        if (v30 >= v32[2] || v32[3] <= 0)
        {
          goto LABEL_40;
        }

        *(v32[4] + 8 * v30) = *(v31 + 8 * v30 + 32);
        v33 = *(v2 + 2);
        if (*(v33 + 48))
        {
          v34 = *(v17 + v25);
          if (v30 >= *(v34 + 16))
          {
            goto LABEL_36;
          }

          v35 = *&v2[v24];
          v36 = v35[2];
          if (v30 >= v36 || v30 >= v35[3])
          {
            goto LABEL_40;
          }

          v37 = v30 * v36;
          if ((v30 * v36) >> 64 != (v30 * v36) >> 63)
          {
            goto LABEL_38;
          }

          v38 = v37 + v30;
          if (__OFADD__(v37, v30))
          {
            goto LABEL_39;
          }

          v28 = *(v34 + 8 * v30 + 32);
        }

        else
        {
          v35 = *&v2[v24];
          v39 = v35[2];
          if (v30 >= v39 || v30 >= v35[3])
          {
            goto LABEL_40;
          }

          v40 = v30 * v39;
          if ((v30 * v39) >> 64 != (v30 * v39) >> 63)
          {
            goto LABEL_35;
          }

          v38 = v40 + v30;
          if (__OFADD__(v40, v30))
          {
            goto LABEL_37;
          }

          v28 = *(v33 + 40);
        }

        v21 &= v21 - 1;
        *(v35[4] + 8 * v38) = v28;
      }

      while (1)
      {
        v29 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          goto LABEL_30;
        }

        v21 = *(v18 + 56 + 8 * v29);
        ++v16;
        if (v21)
        {
          v16 = v29;
          goto LABEL_12;
        }
      }

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
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_1BB6BB524();
      __break(1u);
    }

    else
    {
      v41 = v47;
      (v13)(v11, v47 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time, v4);
      (*(*v2 + 456))(v11);
      v15(v11, v4);
      v17 = v41;
      sub_1BB69F6B4(v41);
      v27 = v46;
LABEL_30:
      v42 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
      v43 = *(v27 + 24);
      v43(&v2[v45], v17 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time, v4);
      v43(&v2[OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime], v17 + v42, v4);
    }
  }
}

uint64_t DKKalmanFilter.deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v2);

  return v0;
}

BOOL sub_1BB69F4E0()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v2 + 16))(&v12 - v7, v0 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v1, v6);
  sub_1BB6BA724();
  sub_1BB6A35B0(&qword_1EBC5D460, MEMORY[0x1E6969530]);
  v9 = sub_1BB6BABE4();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v8, v1);
  return (v9 & 1) == 0;
}

uint64_t sub_1BB69F6B4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_updateIndices);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1BB6A07D0(*(v1 + 16), 0);
    v4 = sub_1BB6A27AC(&v101, v3 + 4, v2, v1);

    sub_1BB593660();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v101 = v3;

  sub_1BB6A1B74(&v101);

  v90 = v101;
  v5 = *(v101 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = 1;
  if (v5 >> 60)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v7 = inited;
  v96 = swift_slowAlloc();
  *(v7 + 32) = v96;
  *(v7 + 40) = v5;
  sub_1BB6A0590(0.0);
  v8 = swift_initStackObject();
  v8[2] = v5;
  v8[3] = 1;
  v95 = swift_slowAlloc();
  v8[4] = v95;
  v8[5] = v5;
  sub_1BB6A0590(0.0);
  v9 = swift_initStackObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v5;
  v92 = v9;
  v10 = v5 * v5;
  if ((v5 * v5) >> 64 != (v5 * v5) >> 63)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if ((v10 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v94 = swift_slowAlloc();
  v92[4] = v94;
  v92[5] = v10;
  sub_1BB6A0590(0.0);
  v11 = *(v98 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_stateSize);
  v12 = swift_initStackObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v11;
  v91 = v12;
  v13 = v5 * v11;
  if ((v5 * v11) >> 64 != (v5 * v11) >> 63)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if ((v13 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v89 = v7;
  v88 = v8;
  __A = swift_slowAlloc();
  v91[4] = __A;
  v91[5] = v13;
  sub_1BB6A0590(0.0);
  v99 = *(v90 + 2);
  v14 = a1;
  if (v99)
  {
    v15 = 0;
    v16 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_measurement;
    v17 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x;
    v18 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_covariance;
    v19 = v90 + 32;
    v20 = *(v98 + 16);
    do
    {
      v21 = *&v19[8 * v15];
      if (v21 < 0)
      {
        goto LABEL_70;
      }

      v22 = *(v14 + v16);
      if (v21 >= *(v22 + 16))
      {
        goto LABEL_71;
      }

      v23 = *(v22 + 8 * v21 + 32);
      v24 = *(v20 + 56);
      if (*(v24 + 16))
      {
        v25 = sub_1BB6A1004(*&v19[8 * v15]);
        if (v26)
        {
          v27 = *(v24 + 56) + 32 * v25;
          v28 = *v27;
          v29 = *(v27 + 8);
          v30 = *(v27 + 16);
          v31 = *(v27 + 24);
          if (v29)
          {
            v28 = -1.79769313e308;
          }

          if (v31)
          {
            v30 = 1.79769313e308;
          }

          if (v28 <= v23)
          {
            v28 = v23;
          }

          v23 = v30;
          v14 = a1;
          if (v30 >= v28)
          {
            v23 = v28;
          }
        }

        else
        {
          v14 = a1;
        }
      }

      if (v5 == v15)
      {
        goto LABEL_89;
      }

      *(v95 + 8 * v15) = v23;
      v32 = *(v98 + v17);
      if (v21 >= v32[2] || v32[3] <= 0)
      {
        goto LABEL_89;
      }

      *(v96 + 8 * v15) = *(v32[4] + 8 * v21);
      v33 = *(v14 + v18);
      if (v21 >= *(v33 + 16))
      {
        goto LABEL_72;
      }

      v34 = *(v33 + 8 * v21 + 32);
      if (*(v20 + 16) > v34)
      {
        v34 = *(v20 + 16);
      }

      if (*(v20 + 24) < v34)
      {
        v34 = *(v20 + 24);
      }

      v35 = v15 * v5;
      if ((v15 * v5) >> 64 != (v15 * v5) >> 63)
      {
        goto LABEL_73;
      }

      v36 = __OFADD__(v35, v15);
      v37 = v35 + v15;
      if (v36)
      {
        goto LABEL_74;
      }

      *(v94 + 8 * v37) = v34;
      if (v21 >= v11)
      {
        goto LABEL_89;
      }

      v38 = v21 * v5;
      if ((v21 * v5) >> 64 != (v21 * v5) >> 63)
      {
        goto LABEL_75;
      }

      v36 = __OFADD__(v38, v15);
      v39 = v38 + v15;
      if (v36)
      {
        goto LABEL_76;
      }

      ++v15;
      __A[v39] = 1.0;
    }

    while (v99 != v15);
  }

  v40 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P;
  v41 = *(v98 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_P);
  v42 = swift_initStackObject();
  v42[2] = v11;
  v42[3] = v5;

  v43 = swift_slowAlloc();
  v42[4] = v43;
  v42[5] = v5 * v11;
  if (v11 < 0)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v44 = v43;
  vDSP_mtransD(__A, 1, v43, 1, v5, v11);
  v45 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v41, v42);

  swift_setDeallocating();
  MEMORY[0x1BFB122F0](v44, -1, -1);
  v46 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v91, v45);
  _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1poiyACySdGAE_AEtFZ_0(v46, v92);

  v47 = DKMatrix<>.inverse()();

  v48 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v45, v47);
  v5 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1soiyACySdGAE_AEtFZ_0(v88, v89);
  if (v99)
  {
    v49 = 0;
    v50 = *(v98 + 16);
    v51 = *(v90 + 2);
    while (v49 != v51)
    {
      v52 = *(v50 + 64);
      if (*(v52 + 16))
      {
        v53 = *&v90[8 * v49 + 32];
        v54 = sub_1BB6BB914();
        v55 = -1 << *(v52 + 32);
        v56 = v54 & ~v55;
        if ((*(v52 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          v57 = ~v55;
          while (*(*(v52 + 48) + 8 * v56) != v53)
          {
            v56 = (v56 + 1) & v57;
            if (((*(v52 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          if (v49 >= *(v5 + 16) || *(v5 + 24) <= 0)
          {
            goto LABEL_89;
          }

          v58 = *(v5 + 32);
            ;
          }

          while (i < -3.14159265)
          {
            i = i + 6.28318531;
          }

          *(v58 + 8 * v49) = i;
        }
      }

LABEL_42:
      if (++v49 == v99)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_58:

  v60 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x;
  v61 = *(v98 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);

  v62 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v48, v5);
  v63 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1poiyACySdGAE_AEtFZ_0(v61, v62);
  v64 = v48;

  *(v98 + v60) = v63;

  sub_1BB6A01AC();
  v65 = *(v98 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_I);

  v66 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v48, v91);
  v67 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1soiyACySdGAE_AEtFZ_0(v65, v66);

  v68 = *(v98 + v40);

  v69 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v67, v68);

  v71 = v67[2];
  v70 = v67[3];
  v72 = swift_initStackObject();
  *(v72 + 16) = v70;
  *(v72 + 24) = v71;
  v73 = v70 * v71;
  if ((v70 * v71) >> 64 != (v70 * v71) >> 63)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if ((v73 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v74 = v72;
  v75 = swift_slowAlloc();
  v74[4] = v75;
  v74[5] = v73;
  v76 = v67[4];
  if (!v76)
  {
LABEL_63:
    v100 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v69, v74);

    swift_setDeallocating();
    MEMORY[0x1BFB122F0](v75, -1, -1);
    v77 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v64, v92);
    v78 = v64[2];
    v79 = v64[3];
    v80 = swift_initStackObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = v78;
    v81 = v79 * v78;
    if ((v79 * v78) >> 64 == (v79 * v78) >> 63)
    {
      if ((v81 - 0x1000000000000000) >> 61 == 7)
      {
        v82 = v80;
        v83 = swift_slowAlloc();
        v82[4] = v83;
        v82[5] = v81;
        v84 = v64[4];
        if (v84)
        {
          if ((v78 | v79) < 0)
          {
            goto LABEL_88;
          }

          vDSP_mtransD(v84, 1, v83, 1, v78, v79);
        }

        v85 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1moiyACySdGAE_AEtFZ_0(v77, v82);

        swift_setDeallocating();
        MEMORY[0x1BFB122F0](v83, -1, -1);
        v86 = _s23IntelligentTrackingCore8DKMatrixCAASdRszrlE1poiyACySdGAE_AEtFZ_0(v100, v85);

        *(v98 + v40) = v86;

        sub_1BB6A0058();
        swift_setDeallocating();
        MEMORY[0x1BFB122F0](v94, -1, -1);
        swift_setDeallocating();
        MEMORY[0x1BFB122F0](v96, -1, -1);
        swift_setDeallocating();
        MEMORY[0x1BFB122F0](v95, -1, -1);

        swift_setDeallocating();
        return MEMORY[0x1BFB122F0](__A, -1, -1);
      }

      goto LABEL_86;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (((v71 | v70) & 0x8000000000000000) == 0)
  {
    vDSP_mtransD(v76, 1, v75, 1, v71, v70);
    goto LABEL_63;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  sub_1BB6BB524();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1BB6A0058()
{
  v1 = 0;
  v2 = *(*(v0 + 16) + 64);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x;
  v7 = (v3 + 63) >> 6;
  if (v5)
  {
LABEL_8:
    while (1)
    {
      v9 = *(*(v2 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v5)))));
      v10 = *(v0 + v6);
      if (v9 >= v10[2] || v9 < 0 || v10[3] <= 0)
      {
        break;
      }

      v11 = v10[4];
        ;
      }

      while (i < -3.14159265)
      {
        i = i + 6.28318531;
      }

      v5 &= v5 - 1;
      *(v11 + 8 * v9) = i;
      if (!v5)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v8 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        return result;
      }

      v5 = *(v2 + 56 + 8 * v8);
      ++v1;
      if (v5)
      {
        v1 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

void sub_1BB6A01AC()
{
  v1 = 0;
  v2 = *(*(v0 + 16) + 56);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x;
  v7 = (v3 + 63) >> 6;
  if (v5)
  {
    while (1)
    {
      v8 = v1;
LABEL_8:
      v9 = __clz(__rbit64(v5)) | (v8 << 6);
      v10 = *(*(v2 + 48) + 8 * v9);
      v11 = *(v0 + v6);
      if (v10 >= v11[2] || v10 < 0 || v11[3] <= 0)
      {
        break;
      }

      v5 &= v5 - 1;
      v12 = *(v2 + 56) + 32 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = v11[4];
      if (v14)
      {
        v13 = -1.79769313e308;
      }

      if (v16)
      {
        v15 = 1.79769313e308;
      }

      if (v13 <= *(v17 + 8 * v10))
      {
        v13 = *(v17 + 8 * v10);
      }

      if (v15 < v13)
      {
        v13 = v15;
      }

      *(v17 + 8 * v10) = v13;
      v1 = v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        return;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v1;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  sub_1BB6BB524();
  __break(1u);
}

unint64_t sub_1BB6A0310(unint64_t result)
{
  v2 = *(*(v1 + 16) + 56);
  if (*(v2 + 16))
  {
    return sub_1BB6A1004(result);
  }

  return result;
}

uint64_t sub_1BB6A03A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return 0;
    }

    v10 = *(a6 + 16);
    v9 = *(a6 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v8 < 1)
    {
      return 0;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a6) - a6;
    if (__OFSUB__(HIDWORD(a6), a6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v8;
    if (v8 < 1)
    {
      return 0;
    }
  }

  else
  {
    v8 = BYTE6(a7);
    if (!BYTE6(a7))
    {
      return 0;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (a3 != a4)
    {
      if ((a2 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v8 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      LODWORD(v7) = 8 * a2;
      if (v8 >= 8 * a2)
      {
        v8 = 8 * a2;
      }

      v12 = a3 + v8;
      if (__OFADD__(a3, v8))
      {
        goto LABEL_43;
      }

      if (v12 >= a3)
      {
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_23;
    }

    return 0;
  }

  if (v7)
  {
    if (v7 == 2)
    {
      a3 = *(a6 + 16);
    }

    else
    {
      a3 = a6;
    }

    goto LABEL_25;
  }

LABEL_23:
  a3 = v7;
LABEL_25:
  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v8 >= 8 * a2)
  {
    v8 = 8 * a2;
  }

  v12 = a3 + v8;
  if (__OFADD__(a3, v8))
  {
    goto LABEL_39;
  }

  if (v12 < a3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_30:
  if (a3 == v12)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_44;
  }

  v13 = a3;
  sub_1BB6BA6C4();
  result = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1BB6A0508(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v3 = a3 * a3;
  if ((a3 * a3) >> 64 != (a3 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 == -1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = v3 >= 0;
  if (v4 > 0)
  {
    v5 = v3 < 1;
  }

  if (!v5)
  {
    v6 = 0;
    do
    {
      *(result + 8 * v6) = 0x3FF0000000000000;
      if (__OFADD__(v6, v4))
      {
        v6 = ((v6 + v4) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v6 += v4;
      }

      v7 = v3 >= v6;
      if (v4 > 0)
      {
        v7 = v6 >= v3;
      }
    }

    while (!v7);
  }

  return result;
}

void sub_1BB6A0590(double a1)
{
  v2 = v1[2];
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v1[3];
  if (__OFSUB__(v4, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((v4 - 1) & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v1[4];
    while (1)
    {
      *(v6 + 8 * v5) = a1;
      if (v4 != 1)
      {
        break;
      }

LABEL_11:
      if (v5 == v3)
      {
        return;
      }

      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        __break(1u);
        return;
      }
    }

    v7 = 1;
    while (1)
    {
      v8 = v7 * v2;
      if ((v7 * v2) >> 64 != (v7 * v2) >> 63)
      {
        break;
      }

      v9 = __OFADD__(v8, v5);
      v10 = v8 + v5;
      if (v9)
      {
        goto LABEL_17;
      }

      *(v6 + 8 * v10) = a1;
      if (v4 == ++v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
}

uint64_t DKKalmanFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DKKalmanFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKKalmanFilter.__allocating_init(configuration:stateSize:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DKKalmanFilter.init(configuration:stateSize:)(a1, a2);
  return v4;
}

uint64_t DKKalmanFilter.__deallocating_deinit()
{
  DKKalmanFilter.deinit();

  return swift_deallocClassInstance();
}

void *sub_1BB6A07D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF78);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1BB6A0854(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

size_t sub_1BB6A08D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E500);
  v4 = *(type metadata accessor for DKPersonGroup(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BB6A09D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D1B8);
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

unint64_t sub_1BB6A0A5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BB6A0B28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BB5A4E14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BB6A0B28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BB6A0C34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BB6BB3C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BB6A0C34(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BB6A0C80(a1, a2);
  sub_1BB6A0DB0(&unk_1F3A47E58);
  return v3;
}

uint64_t sub_1BB6A0C80(uint64_t a1, unint64_t a2)
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

  v6 = sub_1BB6A0E9C(v5, 0);
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

  result = sub_1BB6BB3C4();
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
        v10 = sub_1BB6BACF4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BB6A0E9C(v10, 0);
        result = sub_1BB6BB2D4();
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

uint64_t sub_1BB6A0DB0(uint64_t result)
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

  result = sub_1BB6A0F10(result, v11, 1, v3);
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

void *sub_1BB6A0E9C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E508);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BB6A0F10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E508);
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

unint64_t sub_1BB6A1004(uint64_t a1)
{
  v2 = sub_1BB6BB914();

  return sub_1BB6A1420(a1, v2);
}

unint64_t sub_1BB6A1048(uint64_t a1)
{
  sub_1BB6BB924();
  type metadata accessor for CFString(0);
  sub_1BB6A35B0(&qword_1EBC5E4F8, type metadata accessor for CFString);
  sub_1BB6BA8C4();
  v2 = sub_1BB6BB964();

  return sub_1BB6A148C(a1, v2);
}

unint64_t sub_1BB6A10FC(uint64_t a1, uint64_t a2)
{
  sub_1BB6BB924();
  sub_1BB6BACC4();
  v4 = sub_1BB6BB964();

  return sub_1BB6A1598(a1, a2, v4);
}

unint64_t sub_1BB6A1174(char a1)
{
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](a1 & 1);
  v2 = sub_1BB6BB964();
  return sub_1BB6A1650(a1 & 1, v2);
}

unint64_t sub_1BB6A11DC(unsigned __int8 a1)
{
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](a1);
  v2 = sub_1BB6BB964();
  return sub_1BB6A1A00(a1, v2);
}

unint64_t sub_1BB6A1244(uint64_t a1)
{
  v2 = sub_1BB6BB274();

  return sub_1BB6A16C0(a1, v2);
}

unint64_t sub_1BB6A1288(uint64_t a1)
{
  sub_1BB6BA844();
  sub_1BB6A35B0(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
  v2 = sub_1BB6BAB74();

  return sub_1BB6A1788(a1, v2);
}

unint64_t sub_1BB6A1320(uint64_t a1)
{
  sub_1BB6BB924();
  sub_1BB5EC1E8(v4, a1);
  v2 = sub_1BB6BB964();

  return sub_1BB6A1948(a1, v2);
}

unint64_t sub_1BB6A138C(uint64_t a1)
{
  sub_1BB6BAC34();
  sub_1BB6BB924();
  sub_1BB6BACC4();
  v2 = sub_1BB6BB964();

  return sub_1BB6A1A70(a1, v2);
}

unint64_t sub_1BB6A1420(uint64_t a1, uint64_t a2)
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

unint64_t sub_1BB6A148C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1BB6A35B0(&qword_1EBC5E4F8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BB6BA8B4();

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

unint64_t sub_1BB6A1598(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BB6BB7E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BB6A1650(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BB6A16C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BB6A35F8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB11100](v9, a1);
      sub_1BB6A3654(v9);
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

unint64_t sub_1BB6A1788(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1BB6BA844();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1BB6A35B0(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
      v16 = sub_1BB6BABE4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1BB6A1948(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      sub_1BB643238(v7, a1);
      v9 = v8;

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BB6A1A00(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1BB6A1A70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1BB6BAC34();
      v8 = v7;
      if (v6 == sub_1BB6BAC34() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BB6BB7E4();

      if ((v11 & 1) == 0)
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

uint64_t sub_1BB6A1B74(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BB693A68(v2);
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
          *(v13 + 1) = v14;
          v13 -= 8;
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
    sub_1BB6A1CA8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1BB6A1CA8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
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

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1BB6A21F4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
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
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1BB59D140((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1BB6A21F4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_1BB6A21F4(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
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
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1BB6A23E8(uint64_t *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {

      sub_1BB59F668(v5, v4);
      *&v25 = v5;
      *(&v25 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1BB6BD320;
      sub_1BB59F668(0, 0xC000000000000000);
      sub_1BB6BA664();
      v14 = *(&v25 + 1);
      v15 = *(v25 + 16);
      v16 = *(v25 + 24);
      result = sub_1BB6BA4F4();
      if (result)
      {
        v17 = result;
        v18 = sub_1BB6BA524();
        v19 = v15 - v18;
        if (__OFSUB__(v15, v18))
        {
          goto LABEL_28;
        }

        v20 = __OFSUB__(v16, v15);
        v21 = v16 - v15;
        if (v20)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
        }

        v22 = sub_1BB6BA514();
        if (v22 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        result = sub_1BB6A0508(v17 + v19, v17 + v19 + v23, a2);
        *a1 = v25;
        a1[1] = v14 | 0x8000000000000000;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(&v25 + 7) = 0;
      *&v25 = 0;
      return sub_1BB6A0508(&v25, &v25, a2);
    }
  }

  else if (v6)
  {

    sub_1BB59F668(v5, v4);
    *&v25 = v5;
    *(&v25 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1BB6BD320;
    sub_1BB59F668(0, 0xC000000000000000);
    result = sub_1BB6A26F0(&v25, a2);
    v24 = *(&v25 + 1) | 0x4000000000000000;
    *a1 = v25;
    a1[1] = v24;
  }

  else
  {
    result = sub_1BB59F668(v5, v4);
    *&v25 = v5;
    WORD4(v25) = v4;
    BYTE10(v25) = BYTE2(v4);
    BYTE11(v25) = BYTE3(v4);
    v8 = a2 * a2;
    BYTE12(v25) = BYTE4(v4);
    BYTE13(v25) = BYTE5(v4);
    BYTE14(v25) = BYTE6(v4);
    if ((a2 * a2) >> 64 != (a2 * a2) >> 63)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v9 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (a2 == -1)
    {
      goto LABEL_31;
    }

    v10 = v8 >= 0;
    if (v9 > 0)
    {
      v10 = v8 < 1;
    }

    if (!v10)
    {
      v11 = 0;
      do
      {
        *(&v25 + v11) = 0x3FF0000000000000;
        if (__OFADD__(v11, v9))
        {
          v11 = ((v11 + v9) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v11 += v9;
        }

        v12 = v8 >= v11;
        if (v9 > 0)
        {
          v12 = v11 >= v8;
        }
      }

      while (!v12);
    }

    v13 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
    *a1 = v25;
    a1[1] = v13;
  }

  return result;
}

uint64_t sub_1BB6A26F0(int *a1, uint64_t a2)
{
  result = sub_1BB6BA684();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1BB6BA4F4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1BB6BA524();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1BB6BA514();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  sub_1BB6A0508(v7 + v8, v7 + v8 + v11, a2);
}

void *sub_1BB6A27AC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
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
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1BB6A28AC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DKPersonGroup(0);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[7];
      v25 = *(v31 + 72);
      sub_1BB6A34E8(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_1BB6A354C(v10, v13);
      sub_1BB6A354C(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1BB6A2AD4(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1BB6A2C28(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = (*(a4 + 56) + ((v10 << 11) | (32 * v15)));
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      v9[3] = v20;
      if (v12 == v24)
      {

        a4 = v16;
        v6 = v23;
        a3 = v24;
        goto LABEL_24;
      }

      v9 += 4;

      result = v12;
      v21 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v22 = v10 + 1;
    }

    else
    {
      v22 = v11;
    }

    v10 = v22 - 1;
    a3 = result;
    v6 = v23;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}