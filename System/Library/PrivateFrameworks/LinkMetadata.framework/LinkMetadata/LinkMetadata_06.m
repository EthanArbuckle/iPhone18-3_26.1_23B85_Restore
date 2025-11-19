void sub_18F00E9D0()
{
  OUTLINED_FUNCTION_391();
  if (v5)
  {
    OUTLINED_FUNCTION_74();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_238();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_236(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8640, &qword_18F0A1280);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_315(v9);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v10 / 40);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 40 * v2 <= (v3 + 32))
    {
      v12 = OUTLINED_FUNCTION_263();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8648, &qword_18F0A1288);
    OUTLINED_FUNCTION_263();
    swift_arrayInitWithCopy();
  }
}

char *sub_18F00EAD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8638, &qword_18F0A1278);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
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

void sub_18F00EBEC()
{
  OUTLINED_FUNCTION_391();
  if (v5)
  {
    OUTLINED_FUNCTION_74();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_238();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_236(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8610, &qword_18F0A1250);
    v9 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_315(v9);
    OUTLINED_FUNCTION_302(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = (v3 + 32);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_18F00ECBC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    a2 = v8 >> 1;
    if ((v8 >> 1) < v6)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 <= v6)
      {
        a2 = v6;
      }

      else
      {
        a2 = v9;
      }
    }
  }

  v10 = *(a4 + 16);
  sub_18F00EF94(v10, a2, &unk_1EACB85C8, &unk_18F0A1210, MEMORY[0x1E6968FB0]);
  OUTLINED_FUNCTION_295();
  v11 = sub_18F0932BC();
  OUTLINED_FUNCTION_106(v11);
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_149();
  if (v7)
  {
    sub_18EFBB490(a4 + v14, v10, v4 + v14, MEMORY[0x1E6968FB0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v4;
}

void sub_18F00EDD4()
{
  OUTLINED_FUNCTION_391();
  if (v5)
  {
    OUTLINED_FUNCTION_74();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_238();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_236(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
    v9 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_315(v9);
    OUTLINED_FUNCTION_302(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = (v3 + 32);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F00EEA4()
{
  OUTLINED_FUNCTION_391();
  if (v5)
  {
    OUTLINED_FUNCTION_74();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_238();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_236(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C0, &qword_18F0A1208);
    v9 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_315(v9);
    OUTLINED_FUNCTION_302(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 32))
    {
      v12 = OUTLINED_FUNCTION_263();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB85B0, &qword_18F0A1200);
    OUTLINED_FUNCTION_263();
    swift_arrayInitWithCopy();
  }
}

size_t sub_18F00EF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

  v8 = OUTLINED_FUNCTION_269(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = OUTLINED_FUNCTION_295();
  v11 = a5(v10);
  OUTLINED_FUNCTION_45(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (v13)
  {
    if (result - v15 != 0x8000000000000000 || v13 != -1)
    {
      v16[2] = a1;
      v16[3] = 2 * ((result - v15) / v13);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18F00F080()
{
  v1 = *v0;
  sub_18F00FE10();
  *v0 = v2;
}

void sub_18F00F0B8()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F110()
{
  v1 = *v0;
  sub_18F00FAF8();
  *v0 = v2;
}

void sub_18F00F148()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

char *sub_18F00F1A0(char *a1, int64_t a2, char a3)
{
  result = sub_18F00F7C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F1C0(char *a1, int64_t a2, char a3)
{
  result = sub_18F00F8C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F1E0(char *a1, int64_t a2, char a3)
{
  result = sub_18F00F9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_18F00F200()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F258()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F2B0()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F308()
{
  v1 = *v0;
  sub_18F00FAF8();
  *v0 = v2;
}

void sub_18F00F340()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

char *sub_18F00F398(char *a1, int64_t a2, char a3)
{
  result = sub_18F00FBD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18F00F3B8(void *a1, int64_t a2, char a3)
{
  result = sub_18F00FCEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_18F00F3D8()
{
  v1 = *v0;
  sub_18F010004();
  *v0 = v2;
}

void sub_18F00F410()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F468()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F4C0()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F518()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F570()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F5C8()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F620()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18F00F678()
{
  v1 = *v0;
  sub_18F00FE10();
  *v0 = v2;
}

char *sub_18F00F6B0(char *a1, int64_t a2, char a3)
{
  result = sub_18F00FEEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_18F00F6D0()
{
  v1 = *v0;
  sub_18F010004();
  *v0 = v2;
}

char *sub_18F00F708(char *a1, int64_t a2, char a3)
{
  result = sub_18F0100E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F728(char *a1, int64_t a2, char a3)
{
  result = sub_18F010200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_18F00F748()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

char *sub_18F00F7A0(char *a1, int64_t a2, char a3)
{
  result = sub_18F0102FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18F00F7C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8708, &qword_18F0A1318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18F00F8C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8700, &qword_18F0A1310);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

char *sub_18F00F9E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB86F8, &qword_18F0A1308);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
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

void sub_18F00FAF8()
{
  OUTLINED_FUNCTION_300();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_238();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 2);
  if (v7 <= v10)
  {
    v11 = *(v0 + 2);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_253(v2, v3, v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = OUTLINED_FUNCTION_355();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v10;
    *(v14 + 3) = 2 * ((v15 - 32) / 32);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[32 * v10] <= v16)
    {
      memmove(v16, v17, 32 * v10);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_124();
    swift_arrayInitWithCopy();
  }
}

char *sub_18F00FBD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8828, &qword_18F0A13F8);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
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

void *sub_18F00FCEC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8858, &qword_18F0A1420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for LNSystemProtocolIdentifier();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_18F00FE10()
{
  OUTLINED_FUNCTION_300();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_238();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 2);
  if (v7 <= v10)
  {
    v11 = *(v0 + 2);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_253(v2, v3, v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = OUTLINED_FUNCTION_355();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v10;
    *(v14 + 3) = 2 * ((v15 - 32) / 8);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[8 * v10] <= v16)
    {
      memmove(v16, v17, 8 * v10);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_124();
    swift_arrayInitWithCopy();
  }
}

char *sub_18F00FEEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB86D0, &qword_18F0A12F0);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

void sub_18F010004()
{
  OUTLINED_FUNCTION_300();
  if (v4)
  {
    OUTLINED_FUNCTION_74();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_238();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 16);
  if (v7 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_253(v2, v3, v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_315(v14);
    v11[2] = v10;
    v11[3] = 2 * (v15 / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = (v11 + 4);
  v17 = (v0 + 32);
  if (v1)
  {
    if (v11 != v0 || &v17[40 * v10] <= v16)
    {
      memmove(v16, v17, 40 * v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_18F0100E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8600, &qword_18F0A1240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || &v13[88 * v8] <= v12)
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

char *sub_18F010200(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8608, &qword_18F0A1248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_18F0102FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85E8, &qword_18F0A1228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || &v13[40 * v8] <= v12)
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

unint64_t sub_18F010414(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_18F09416C();
  v5 = sub_18F093A8C();

  return sub_18F0105B4(a1, v5);
}

unint64_t sub_18F010478(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_18F09452C();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  sub_18F093C1C();
  MEMORY[0x193AD9070](v6);
  MEMORY[0x193AD9070](v7);
  MEMORY[0x193AD9070](v8);
  sub_18F093C1C();
  sub_18F09456C();
  v11 = OUTLINED_FUNCTION_271();

  return sub_18F010738(v11, v12);
}

unint64_t sub_18F010530()
{
  v1 = *(v0 + 40);
  sub_18F0932BC();
  OUTLINED_FUNCTION_203();
  sub_18EF8558C(v2);
  sub_18F093A8C();
  v3 = OUTLINED_FUNCTION_142();

  return sub_18F010874(v3, v4);
}

unint64_t sub_18F0105B4(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_18F09416C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4);
    v11 = sub_18F093AAC();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_18F010738(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v22 = a1[3];
    v23 = a1[2];
    v6 = *a1;
    v5 = a1[1];
    v20 = a1[5];
    v21 = a1[4];
    v7 = a1[6];
    v8 = *(v2 + 48);
    do
    {
      v9 = (v8 + 56 * v4);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
      v14 = v9[6];
      v15 = *v9 == v6 && v9[1] == v5;
      if (v15 || (sub_18F09444C() & 1) != 0)
      {
        v16 = v10 == v23 && v11 == v22;
        if (v16 && v12 == v21)
        {
          v18 = v13 == v20 && v14 == v7;
          if (v18 || (sub_18F09444C() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v24;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_18F010874(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_18F0932BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_18EF8558C(&unk_1ED5FD808);
    v10 = sub_18F093AAC();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_18F010A30(uint64_t a1)
{
  v2 = _s14CodableWrapperVMa_32(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8718, &qword_18F0A1328);
  result = sub_18F0941CC();
  v6 = result;
  v7 = 0;
  v34 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = result;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v34 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(*(v34 + 56) + 8 * v18);

      v23 = v22;
      v24 = v32;
      sub_18EFED20C(v32);

      v6 = v31;
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v25 = (v6[6] + 16 * v18);
      *v25 = v20;
      v25[1] = v21;
      result = sub_18EF88240(v24, v6[7] + *(v33 + 72) * v18);
      v26 = v6[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v6[2] = v28;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F010C50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v45 = a3;
  v7 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8720, &qword_18F0A1330);
  result = sub_18F0941CC();
  v11 = result;
  v12 = 0;
  v41 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = a4 & 1;
  v37 = a2 & 1;
  v35 = result + 64;
  v38 = result;
  if ((v17 & v13) != 0)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v24 = (*(v41 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v41 + 56) + 8 * v23);
      v42 = v37;
      v43 = v45;
      v44 = v36;

      v28 = v27;
      v29 = v39;
      LNEntityMetadata.wrapper(encodingContext:)();

      *(v35 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v11 = v38;
      v30 = (*(v38 + 48) + 16 * v23);
      *v30 = v25;
      v30[1] = v26;
      result = sub_18EF88240(v29, *(v11 + 56) + *(v40 + 72) * v23);
      v31 = *(v11 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v11 + 16) = v33;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {

        return v11;
      }

      v22 = *(v14 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F010EB4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v45 = a3;
  v7 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8730, &qword_18F0A1340);
  result = sub_18F0941CC();
  v11 = result;
  v12 = 0;
  v41 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = a4 & 1;
  v37 = a2 & 1;
  v35 = result + 64;
  v38 = result;
  if ((v17 & v13) != 0)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v24 = (*(v41 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v41 + 56) + 8 * v23);
      v42 = v37;
      v43 = v45;
      v44 = v36;

      v28 = v27;
      v29 = v39;
      LNActionMetadata.wrapper(encodingContext:)();

      *(v35 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v11 = v38;
      v30 = (*(v38 + 48) + 16 * v23);
      *v30 = v25;
      v30[1] = v26;
      result = sub_18EF88240(v29, *(v11 + 56) + *(v40 + 72) * v23);
      v31 = *(v11 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v11 + 16) = v33;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {

        return v11;
      }

      v22 = *(v14 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F011118(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8808, &qword_18F0A13D8);
  result = sub_18F0941CC();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v19 = result + 64;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v5 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      sub_18EFB6E2C(*(a1 + 56) + 32 * v13, v20);
      v15 = v14;
      sub_18EFF3640(v20, &v21);
      if (v1)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v4[6] + 8 * v13) = v15;
      *(v4[7] + 8 * v13) = v21;
      v16 = v4[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_17;
      }

      v4[2] = v18;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_15:

    return v4;
  }

  else
  {
LABEL_5:
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
        goto LABEL_15;
      }

      v12 = *(a1 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_18F0112DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_253(a1, a2, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_284();
  v8 = sub_18F0941CC();
  v9 = 0;
  v56 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v12 = *(v10 - 32);
  OUTLINED_FUNCTION_65();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v54 = v18;
  v55 = v18 + 8;
  if ((v14 & v13) != 0)
  {
    do
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_8:
      v23 = v19 | (v9 << 6);
      v24 = *(*(v56 + 48) + 8 * v23);
      v25 = *(*(v56 + 56) + 8 * v23);
      objc_opt_self();
      OUTLINED_FUNCTION_201();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        swift_unknownObjectRetain();
        v28 = v24;
        v29 = v24;
        v30 = [v27 persistState];
        OUTLINED_FUNCTION_105();
        LOBYTE(v27) = sub_18F034EE8();
        swift_unknownObjectRelease();
        v31 = v27 & v30 & 1;
        if (v27)
        {
          v32 = 0;
        }

        else
        {
          v32 = 8;
        }

        goto LABEL_22;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_201();
      if (swift_dynamicCastObjCClass())
      {
        OUTLINED_FUNCTION_98();
        swift_unknownObjectRetain_n();
        v29 = v24;
        v33 = v24;
        v34 = [v8 searchScopes];
        v31 = sub_18F093DCC();
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_105();
        LOBYTE(v34) = sub_18F034F08();
        swift_unknownObjectRelease();
        if ((v34 & 1) == 0)
        {
          goto LABEL_20;
        }

        v32 = 1;
      }

      else
      {
        objc_opt_self();
        OUTLINED_FUNCTION_201();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          OUTLINED_FUNCTION_201();
          if (swift_dynamicCastObjCClass())
          {
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRetain_n();
            v37 = v24;
            v29 = v24;
            v38 = [v8 entityIdentifier];
            sub_18F093B8C();

            v39 = [v8 entityProperty];
            sub_18F093B8C();

            swift_unknownObjectRelease_n();

LABEL_20:

LABEL_21:
            v31 = 0;
            v32 = 8;
            goto LABEL_22;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_201();
          if (swift_dynamicCastObjCClass())
          {
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRetain_n();
            v44 = v24;
            v45 = [v8 entityIdentifier];
            goto LABEL_31;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_201();
          if (swift_dynamicCastObjCClass())
          {
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRetain_n();
            v46 = v24;
            v45 = [v8 actionIdentifier];
            goto LABEL_31;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_201();
          if (swift_dynamicCastObjCClass())
          {
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRetain_n();
            v47 = v24;
            v45 = [v8 supportedContentTypes];
LABEL_31:
            v48 = v45;
            OUTLINED_FUNCTION_98();
            swift_unknownObjectRelease_n();
          }

          else
          {
            objc_opt_self();
            OUTLINED_FUNCTION_201();
            v49 = swift_dynamicCastObjCClass();
            if (v49)
            {
              v50 = v49;
              v51 = v24;
              [v50 structuredDataRepresentations];
            }

            else
            {
              objc_opt_self();
              OUTLINED_FUNCTION_201();
              if (!swift_dynamicCastObjCClass())
              {
                goto LABEL_40;
              }

              v52 = v24;
            }
          }

          v29 = v24;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_98();
        swift_unknownObjectRetain_n();
        v29 = v24;
        v35 = v24;
        v36 = [v8 supportedCategories];
        v31 = sub_18F093DCC();
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_105();
        LOBYTE(v36) = sub_18F034F08();
        swift_unknownObjectRelease();
        if ((v36 & 1) == 0)
        {
          goto LABEL_20;
        }

        v32 = 2;
      }

LABEL_22:
      v8 = v54;
      *(v55 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v54[6] + 8 * v23) = v29;
      v40 = v54[7] + 40 * v23;
      *v40 = v31;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      *(v40 + 32) = v32;
      v41 = v54[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_39;
      }

      v54[2] = v43;
    }

    while (v15);
  }

  v20 = v9;
  while (1)
  {
    v9 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v9 >= v17)
    {

      return v8;
    }

    ++v20;
    if (*(v10 + 8 * v9))
    {
      OUTLINED_FUNCTION_229();
      v15 = v22 & v21;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  OUTLINED_FUNCTION_401();
  OUTLINED_FUNCTION_248();
  result = OUTLINED_FUNCTION_409();
  __break(1u);
  return result;
}

uint64_t sub_18F01178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_284();
  v9 = sub_18F0941CC();
  v10 = 0;
  v64 = a1;
  v65 = v9;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v13 = *(v11 - 32);
  OUTLINED_FUNCTION_65();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  if ((v15 & v14) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v16));
      v20 = (v16 - 1) & v16;
LABEL_8:
      v24 = v19 | (v10 << 6);
      v25 = *(*(v64 + 48) + 8 * v24);
      v26 = *(*(v64 + 56) + 8 * v24);
      objc_opt_self();
      OUTLINED_FUNCTION_202();
      v27 = swift_dynamicCastObjCClass();
      v66 = v20;
      if (v27)
      {
        v6 = v27;
        v28 = v25;
        [v6 persistState];
        OUTLINED_FUNCTION_68();
        v29 = 0;
      }

      else
      {
        objc_opt_self();
        OUTLINED_FUNCTION_202();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v30;
          OUTLINED_FUNCTION_185();
          swift_unknownObjectRetain_n();
          v32 = v25;
          v6 = [v31 searchScopes];
          sub_18F093DCC();
          OUTLINED_FUNCTION_185();
          swift_unknownObjectRelease_n();

          OUTLINED_FUNCTION_68();
          v29 = 1;
        }

        else
        {
          objc_opt_self();
          OUTLINED_FUNCTION_202();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            v34 = v33;
            v29 = 2;
            OUTLINED_FUNCTION_185();
            swift_unknownObjectRetain_n();
            v35 = v25;
            v6 = [v34 supportedCategories];
            v7 = sub_18F093DCC();
            OUTLINED_FUNCTION_185();
            swift_unknownObjectRelease_n();

            OUTLINED_FUNCTION_68();
          }

          else
          {
            objc_opt_self();
            OUTLINED_FUNCTION_202();
            v36 = swift_dynamicCastObjCClass();
            if (v36)
            {
              v37 = v36;
              OUTLINED_FUNCTION_185();
              swift_unknownObjectRetain_n();
              v38 = v25;
              v39 = [v37 entityIdentifier];
              sub_18F093B8C();
              v25 = v40;

              v41 = [v37 entityProperty];
              v7 = sub_18F093B8C();
              v6 = v42;
              OUTLINED_FUNCTION_185();
              swift_unknownObjectRelease_n();

              v29 = 3;
            }

            else
            {
              objc_opt_self();
              OUTLINED_FUNCTION_202();
              v43 = swift_dynamicCastObjCClass();
              if (v43)
              {
                v44 = v43;
                OUTLINED_FUNCTION_185();
                swift_unknownObjectRetain_n();
                v45 = v25;
                v6 = [v44 entityIdentifier];
                sub_18F093B8C();
                v7 = v25;
                v25 = v46;
                OUTLINED_FUNCTION_185();
                swift_unknownObjectRelease_n();

                OUTLINED_FUNCTION_395();
                v29 = 4;
              }

              else
              {
                objc_opt_self();
                OUTLINED_FUNCTION_202();
                v47 = swift_dynamicCastObjCClass();
                if (v47)
                {
                  v48 = v47;
                  OUTLINED_FUNCTION_185();
                  swift_unknownObjectRetain_n();
                  v49 = v25;
                  v6 = [v48 actionIdentifier];
                  sub_18F093B8C();
                  v7 = v25;
                  v25 = v50;
                  OUTLINED_FUNCTION_185();
                  swift_unknownObjectRelease_n();

                  OUTLINED_FUNCTION_395();
                  v29 = 5;
                }

                else
                {
                  objc_opt_self();
                  OUTLINED_FUNCTION_202();
                  v51 = swift_dynamicCastObjCClass();
                  if (v51)
                  {
                    v52 = v51;
                    OUTLINED_FUNCTION_185();
                    swift_unknownObjectRetain_n();
                    v53 = v25;
                    v6 = [v52 supportedContentTypes];
                    sub_18F0939FC();
                    sub_18F093DCC();
                    OUTLINED_FUNCTION_185();
                    swift_unknownObjectRelease_n();

                    OUTLINED_FUNCTION_68();
                    v29 = 6;
                  }

                  else
                  {
                    objc_opt_self();
                    OUTLINED_FUNCTION_202();
                    v54 = swift_dynamicCastObjCClass();
                    if (v54)
                    {
                      v6 = v54;
                      v55 = v25;
                      [v6 structuredDataRepresentations];
                      OUTLINED_FUNCTION_68();
                      v29 = 7;
                    }

                    else
                    {
                      objc_opt_self();
                      OUTLINED_FUNCTION_202();
                      if (!swift_dynamicCastObjCClass())
                      {
                        goto LABEL_32;
                      }

                      v56 = v25;
                      OUTLINED_FUNCTION_68();
                      v29 = 8;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = v65;
      OUTLINED_FUNCTION_297((v24 >> 3) & 0x1FFFFFFFFFFFFFF8);
      *(v65[6] + 8 * v24) = v57;
      v58 = v65[7] + 40 * v24;
      *v58 = v59;
      *(v58 + 8) = v25;
      *(v58 + 16) = v7;
      *(v58 + 24) = v6;
      *(v58 + 32) = v29;
      v60 = v65[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        break;
      }

      v65[2] = v62;
      v16 = v66;
      if (!v66)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v10 >= v18)
      {

        return v9;
      }

      ++v21;
      if (*(v11 + 8 * v10))
      {
        OUTLINED_FUNCTION_229();
        v20 = v23 & v22;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  OUTLINED_FUNCTION_401();
  OUTLINED_FUNCTION_248();
  result = OUTLINED_FUNCTION_409();
  __break(1u);
  return result;
}

void *sub_18F011C70(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v4 = _s14CodableWrapperVMa_32(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8750, &qword_18F0A1358);
  result = sub_18F0941CC();
  v9 = 0;
  v36 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v31 = result + 8;
  v32 = result;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v36 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      sub_18EF86A14(*(v36 + 56) + *(v33 + 72) * v20, v7);

      v24 = v37;
      v34(&v38, v7);
      v37 = v24;
      if (v24)
      {
        break;
      }

      sub_18EF86A6C();
      result = v32;
      *(v31 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v25 = (result[6] + 16 * v20);
      *v25 = v22;
      v25[1] = v23;
      *(result[7] + 8 * v20) = v38;
      v26 = result[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      result[2] = v28;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;

    sub_18EF86A6C();
    return v29;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return result;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_18F011EE4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v4 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8758, &unk_18F0A1360);
  result = sub_18F0941CC();
  v9 = 0;
  v36 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v31 = result + 8;
  v32 = result;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v36 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      sub_18EF86A14(*(v36 + 56) + *(v33 + 72) * v20, v7);

      v24 = v37;
      v34(&v38, v7);
      v37 = v24;
      if (v24)
      {
        break;
      }

      sub_18EF86A6C();
      result = v32;
      *(v31 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v25 = (result[6] + 16 * v20);
      *v25 = v22;
      v25[1] = v23;
      *(result[7] + 8 * v20) = v38;
      v26 = result[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      result[2] = v28;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;

    sub_18EF86A6C();
    return v29;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return result;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_18F012158(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v4 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8768, &qword_18F0A1370);
  result = sub_18F0941CC();
  v9 = 0;
  v36 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v31 = result + 8;
  v32 = result;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v36 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      sub_18EF86A14(*(v36 + 56) + *(v33 + 72) * v20, v7);

      v24 = v37;
      v34(&v38, v7);
      v37 = v24;
      if (v24)
      {
        break;
      }

      sub_18EF86A6C();
      result = v32;
      *(v31 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v25 = (result[6] + 16 * v20);
      *v25 = v22;
      v25[1] = v23;
      *(result[7] + 8 * v20) = v38;
      v26 = result[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      result[2] = v28;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;

    sub_18EF86A6C();
    return v29;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return result;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_18F0123CC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8670, &qword_18F0A12B0);
  result = sub_18F0941CC();
  v6 = result;
  v7 = 0;
  v29 = a3;
  v30 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v29 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v32 = *(*(v29 + 56) + 8 * v18);

      a1(&v31, &v32);

      if (v3)
      {
        break;
      }

      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v30;
      v22 = v31;
      v23 = (v30[6] + 16 * v18);
      *v23 = v20;
      v23[1] = v21;
      *(v30[7] + 8 * v18) = v22;
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v30[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v30;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_18F012594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_18F01260C(uint64_t a1)
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
    sub_18F0941BC();
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
  result = sub_18F09409C();
  *v1 = result;
  return result;
}

void *sub_18F0126AC(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_18F093B8C();
  OUTLINED_FUNCTION_327();

  return v2;
}

void sub_18F012714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_18F093B5C();

  [a3 _setBundleIdentifier_];
}

uint64_t sub_18F012778(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  if (![a1 *a2])
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_295();
  sub_18EF825F4(v7, a3, a4);
  OUTLINED_FUNCTION_271();
  v8 = sub_18F093DCC();

  return v8;
}

uint64_t sub_18F0127F4(void *a1)
{
  v1 = [a1 typeSpecificMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNActionTypeSpecificMetadataKey(0);
  sub_18EF8558C(&unk_1ED5FF0F8);
  v3 = sub_18F093A4C();

  return v3;
}

uint64_t sub_18F0128B8(void *a1)
{
  v1 = [a1 assistantDefinedSchemaTraits];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7390, &qword_18F09BD68);
  v3 = sub_18F093DCC();

  return v3;
}

uint64_t sub_18F012924(void *a1)
{
  v2 = [a1 synonyms];

  if (!v2)
  {
    return 0;
  }

  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v3 = sub_18F093DCC();

  return v3;
}

uint64_t sub_18F0129F8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18F012A58()
{
  result = qword_1EACB73C8;
  if (!qword_1EACB73C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18EF8558C(&unk_1EACB73D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB73C8);
  }

  return result;
}

unint64_t sub_18F012B0C()
{
  result = qword_1EACB6C40;
  if (!qword_1EACB6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C40);
  }

  return result;
}

unint64_t sub_18F012B60()
{
  result = qword_1EACB7418;
  if (!qword_1EACB7418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7410, &qword_18F09BD90);
    sub_18EF8558C(&unk_1EACB7420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7418);
  }

  return result;
}

unint64_t sub_18F012C14()
{
  result = qword_1EACB7430;
  if (!qword_1EACB7430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18EF8558C(&unk_1ED5FD268);
    sub_18EFBEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7430);
  }

  return result;
}

unint64_t sub_18F012CD0()
{
  result = qword_1EACB7448;
  if (!qword_1EACB7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7448);
  }

  return result;
}

unint64_t sub_18F012D24()
{
  result = qword_1EACB7458;
  if (!qword_1EACB7458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7450, &qword_18F09BDA8);
    sub_18EF8558C(&unk_1EACB7460);
    sub_18EFBE800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7458);
  }

  return result;
}

unint64_t sub_18F012DE0()
{
  result = qword_1EACB7478;
  if (!qword_1EACB7478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7478);
  }

  return result;
}

unint64_t sub_18F012E6C()
{
  result = qword_1EACB7480;
  if (!qword_1EACB7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7480);
  }

  return result;
}

unint64_t sub_18F012EC0()
{
  result = qword_1EACB7490;
  if (!qword_1EACB7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18F012F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7490);
  }

  return result;
}

unint64_t sub_18F012F44()
{
  result = qword_1EACB7498;
  if (!qword_1EACB7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7498);
  }

  return result;
}

unint64_t sub_18F012F98()
{
  result = qword_1EACB74A0;
  if (!qword_1EACB74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74A0);
  }

  return result;
}

unint64_t sub_18F012FEC()
{
  result = qword_1EACB74B0;
  if (!qword_1EACB74B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F013070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74B0);
  }

  return result;
}

unint64_t sub_18F013070()
{
  result = qword_1EACB74B8;
  if (!qword_1EACB74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74B8);
  }

  return result;
}

unint64_t sub_18F0130C4()
{
  result = qword_1EACB74C8;
  if (!qword_1EACB74C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74C0, &qword_18F09BDC8);
    sub_18F013148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74C8);
  }

  return result;
}

unint64_t sub_18F013148()
{
  result = qword_1EACB74D0;
  if (!qword_1EACB74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74D0);
  }

  return result;
}

unint64_t sub_18F01319C()
{
  result = qword_1EACB74D8;
  if (!qword_1EACB74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74D8);
  }

  return result;
}

unint64_t sub_18F0131F0()
{
  result = qword_1EACB74E8;
  if (!qword_1EACB74E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74E0, &qword_18F09BDD0);
    sub_18EF8558C(&unk_1EACB74F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74E8);
  }

  return result;
}

unint64_t sub_18F0132A4()
{
  result = qword_1EACB7500;
  if (!qword_1EACB7500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F013328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7500);
  }

  return result;
}

unint64_t sub_18F013328()
{
  result = qword_1EACB7508;
  if (!qword_1EACB7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7508);
  }

  return result;
}

unint64_t sub_18F01337C()
{
  result = qword_1EACB7520;
  if (!qword_1EACB7520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7518, &qword_18F09BDE0);
    sub_18EF8558C(&unk_1ED5FD268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7520);
  }

  return result;
}

unint64_t sub_18F013430()
{
  result = qword_1ED5FF478;
  if (!qword_1ED5FF478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18EFC279C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF478);
  }

  return result;
}

unint64_t sub_18F0134B4()
{
  result = qword_1ED5FED80;
  if (!qword_1ED5FED80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18EFC27F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FED80);
  }

  return result;
}

unint64_t sub_18F013538()
{
  result = qword_1ED5FEBD0;
  if (!qword_1ED5FEBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74C0, &qword_18F09BDC8);
    sub_18EFC2844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBD0);
  }

  return result;
}

unint64_t sub_18F0135BC()
{
  result = qword_1ED5FD208;
  if (!qword_1ED5FD208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F013640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD208);
  }

  return result;
}

unint64_t sub_18F013640()
{
  result = qword_1ED5FD1F0;
  if (!qword_1ED5FD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1F0);
  }

  return result;
}

unint64_t sub_18F013694()
{
  result = qword_1EACB75B0;
  if (!qword_1EACB75B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75A8, &qword_18F09BE28);
    sub_18EF8558C(&unk_1EACB75B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB75B0);
  }

  return result;
}

unint64_t sub_18F013748()
{
  result = qword_1EACB6AF8;
  if (!qword_1EACB6AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18EF8558C(&unk_1EACB6A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6AF8);
  }

  return result;
}

unint64_t sub_18F0137FC()
{
  result = qword_1EACB75D8;
  if (!qword_1EACB75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75D0, &qword_18F09BE38);
    sub_18EF8558C(&unk_1ED5FD640);
    sub_18EFBEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB75D8);
  }

  return result;
}

unint64_t sub_18F0138B8()
{
  result = qword_1EACB7648;
  if (!qword_1EACB7648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7640, &qword_18F09BE68);
    sub_18EF8558C(&unk_1EACB7650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7648);
  }

  return result;
}

unint64_t sub_18F01398C()
{
  result = qword_1EACB6FE0;
  if (!qword_1EACB6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FE0);
  }

  return result;
}

unint64_t sub_18F0139E0()
{
  result = qword_1EACB7118;
  if (!qword_1EACB7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7118);
  }

  return result;
}

unint64_t sub_18F013A64()
{
  result = qword_1EACB6A60;
  if (!qword_1EACB6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A60);
  }

  return result;
}

unint64_t sub_18F013AB8()
{
  result = qword_1EACB76C0;
  if (!qword_1EACB76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB76C0);
  }

  return result;
}

uint64_t sub_18F013B0C(void *a1)
{
  if (![a1 availabilityAnnotations])
  {
    return 0;
  }

  OUTLINED_FUNCTION_204();
  type metadata accessor for LNPlatformName();
  sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
  OUTLINED_FUNCTION_2();
  sub_18EF8558C(v2);
  OUTLINED_FUNCTION_108();
  v3 = sub_18F093A4C();

  return v3;
}

uint64_t sub_18F013BD0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_18F093B8C();
    OUTLINED_FUNCTION_134();
  }

  return OUTLINED_FUNCTION_108();
}

unint64_t sub_18F013C28()
{
  result = qword_1EACB76D8;
  if (!qword_1EACB76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB76D8);
  }

  return result;
}

unint64_t sub_18F013C7C()
{
  result = qword_1EACB76E8;
  if (!qword_1EACB76E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB76E0, &qword_18F09BEC0);
    sub_18F013D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB76E8);
  }

  return result;
}

unint64_t sub_18F013D00()
{
  result = qword_1EACB76F0;
  if (!qword_1EACB76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB76F0);
  }

  return result;
}

unint64_t sub_18F013D54()
{
  result = qword_1EACB7700;
  if (!qword_1EACB7700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB76E0, &qword_18F09BEC0);
    sub_18F013DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7700);
  }

  return result;
}

unint64_t sub_18F013DD8()
{
  result = qword_1EACB7708;
  if (!qword_1EACB7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7708);
  }

  return result;
}

unint64_t sub_18F013E5C()
{
  result = qword_1EACB7720;
  if (!qword_1EACB7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7720);
  }

  return result;
}

unint64_t sub_18F013ED0()
{
  result = qword_1EACB7730;
  if (!qword_1EACB7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7730);
  }

  return result;
}

unint64_t sub_18F013F24()
{
  result = qword_1EACB7738;
  if (!qword_1EACB7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7738);
  }

  return result;
}

unint64_t sub_18F013F78()
{
  result = qword_1EACB6CE0;
  if (!qword_1EACB6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CE0);
  }

  return result;
}

unint64_t sub_18F014034()
{
  result = qword_1EACB7790;
  if (!qword_1EACB7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7790);
  }

  return result;
}

unint64_t sub_18F014088()
{
  result = qword_1EACB77A0;
  if (!qword_1EACB77A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7798, &unk_18F0AB930);
    sub_18F01410C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB77A0);
  }

  return result;
}

unint64_t sub_18F01410C()
{
  result = qword_1EACB77A8;
  if (!qword_1EACB77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB77A8);
  }

  return result;
}

unint64_t sub_18F014160()
{
  result = qword_1EACB6C58;
  if (!qword_1EACB6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7798, &unk_18F0AB930);
    sub_18F0141E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C58);
  }

  return result;
}

unint64_t sub_18F0141E4()
{
  result = qword_1EACB6CC0;
  if (!qword_1EACB6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12LinkMetadata0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_18F0142BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F0142FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_18F014340(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18F01437C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F0143BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18F01440C()
{
  result = qword_1ED5FD430;
  if (!qword_1ED5FD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB77D8, &qword_18F09CD58);
    sub_18EFBED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD430);
  }

  return result;
}

unint64_t sub_18F0144B8()
{
  result = qword_1ED5FD6F0;
  if (!qword_1ED5FD6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB77E8, &qword_18F09CD60);
    sub_18EFC3C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD6F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_18F0145B4()
{
  result = _s14CodableWrapperVMa_0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F014628(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014668(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_18F0146C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014700(uint64_t result, int a2, int a3)
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

uint64_t sub_18F01485C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01489C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_18F014934(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014974(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t _s14CodableWrapperVwet_0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18F014B9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 33))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416(a1);
  }

  return OUTLINED_FUNCTION_170(v2);
}

uint64_t sub_18F014BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 33) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F014C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t *sub_18F014CCC(unint64_t *result, uint64_t a2)
{
  if (a2 < 0xE)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    v2 = (8 * (a2 - 14)) | 0xE000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t *sub_18F014D28(unint64_t *result, uint64_t a2)
{
  if (a2 < 0xD)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    v2 = (8 * (a2 - 13)) | 0xD000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_18F014D58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014D98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18F014E34()
{
  if (!qword_1ED5FD3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7850, &qword_18F09DA20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD3E8);
    }
  }
}

void sub_18F014EAC()
{
  if (!qword_1ED5FD610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7840, &qword_18F09DA18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD610);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18F014F38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_get_extra_inhabitant_index_178Tm()
{
  OUTLINED_FUNCTION_62();
  if (v0)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_333();
  v5 = OUTLINED_FUNCTION_120(v4);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_179Tm()
{
  OUTLINED_FUNCTION_29();
  if (v5)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_253(v0, v1, v2, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_254();
    v9 = OUTLINED_FUNCTION_52(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_18F01509C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_170(*a1 + 2147483646);
    }

    v3 = *(a1 + 16);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_170(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_170(v4);
}

uint64_t sub_18F0150EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_18F015168()
{
  if (!qword_1ED5FD378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD378);
    }
  }
}

void sub_18F0151E0()
{
  if (!qword_1ED5FD380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD380);
    }
  }
}

void sub_18F015258()
{
  if (!qword_1ED5FD398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD398);
    }
  }
}

void sub_18F0152D0()
{
  if (!qword_1ED5FD3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD3F0);
    }
  }
}

uint64_t sub_18F015358(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_18F0156B8()
{
  result = qword_1EACB7908;
  if (!qword_1EACB7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7908);
  }

  return result;
}

unint64_t sub_18F015950()
{
  result = qword_1EACB7950;
  if (!qword_1EACB7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7950);
  }

  return result;
}

unint64_t sub_18F0159A8()
{
  result = qword_1EACB7958;
  if (!qword_1EACB7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7958);
  }

  return result;
}

unint64_t sub_18F015A00()
{
  result = qword_1EACB7960;
  if (!qword_1EACB7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7960);
  }

  return result;
}

unint64_t sub_18F015A58()
{
  result = qword_1EACB7968;
  if (!qword_1EACB7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7968);
  }

  return result;
}

unint64_t sub_18F015AB0()
{
  result = qword_1EACB7970;
  if (!qword_1EACB7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7970);
  }

  return result;
}

unint64_t sub_18F015B08()
{
  result = qword_1EACB7978;
  if (!qword_1EACB7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7978);
  }

  return result;
}

unint64_t sub_18F015B60()
{
  result = qword_1EACB7980;
  if (!qword_1EACB7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7980);
  }

  return result;
}

unint64_t sub_18F015BB8()
{
  result = qword_1EACB7988;
  if (!qword_1EACB7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7988);
  }

  return result;
}

unint64_t sub_18F015C10()
{
  result = qword_1EACB7990;
  if (!qword_1EACB7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7990);
  }

  return result;
}

unint64_t sub_18F015C68()
{
  result = qword_1EACB7998;
  if (!qword_1EACB7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7998);
  }

  return result;
}

unint64_t sub_18F016140()
{
  result = qword_1EACB7A20;
  if (!qword_1EACB7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A20);
  }

  return result;
}

unint64_t sub_18F016198()
{
  result = qword_1EACB7A28;
  if (!qword_1EACB7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A28);
  }

  return result;
}

unint64_t sub_18F0161F0()
{
  result = qword_1EACB6CD0;
  if (!qword_1EACB6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CD0);
  }

  return result;
}

unint64_t sub_18F016248()
{
  result = qword_1EACB6CD8;
  if (!qword_1EACB6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CD8);
  }

  return result;
}

unint64_t sub_18F0162A0()
{
  result = qword_1EACB7A30;
  if (!qword_1EACB7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A30);
  }

  return result;
}

unint64_t sub_18F0162F8()
{
  result = qword_1EACB7A38;
  if (!qword_1EACB7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A38);
  }

  return result;
}

unint64_t sub_18F016350()
{
  result = qword_1EACB7A40;
  if (!qword_1EACB7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A40);
  }

  return result;
}

unint64_t sub_18F0163A8()
{
  result = qword_1EACB7A48;
  if (!qword_1EACB7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A48);
  }

  return result;
}

unint64_t sub_18F016400()
{
  result = qword_1EACB7A50;
  if (!qword_1EACB7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A50);
  }

  return result;
}

unint64_t sub_18F016458()
{
  result = qword_1EACB7A58;
  if (!qword_1EACB7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A58);
  }

  return result;
}

unint64_t sub_18F0164B0()
{
  result = qword_1EACB7100;
  if (!qword_1EACB7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7100);
  }

  return result;
}

unint64_t sub_18F016508()
{
  result = qword_1EACB7108;
  if (!qword_1EACB7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7108);
  }

  return result;
}

unint64_t sub_18F016560()
{
  result = qword_1ED5FD670;
  if (!qword_1ED5FD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD670);
  }

  return result;
}

unint64_t sub_18F0165B8()
{
  result = qword_1ED5FD678;
  if (!qword_1ED5FD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD678);
  }

  return result;
}

unint64_t sub_18F016610()
{
  result = qword_1ED5FD5B0;
  if (!qword_1ED5FD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5B0);
  }

  return result;
}

unint64_t sub_18F016668()
{
  result = qword_1ED5FD5B8;
  if (!qword_1ED5FD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5B8);
  }

  return result;
}

uint64_t sub_18F0166BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F016700()
{
  result = qword_1ED5FE5B0;
  if (!qword_1ED5FE5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AA8, &qword_18F0A0BE8);
    sub_18EFC5418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5B0);
  }

  return result;
}

unint64_t sub_18F016784()
{
  result = qword_1ED5FE598;
  if (!qword_1ED5FE598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AB0, &qword_18F0A0BF0);
    sub_18EFC546C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE598);
  }

  return result;
}

unint64_t sub_18F016808()
{
  result = qword_1ED5FE5A0;
  if (!qword_1ED5FE5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AB8, &qword_18F0A0BF8);
    sub_18EFC54D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5A0);
  }

  return result;
}

unint64_t sub_18F01688C()
{
  result = qword_1EACB6B08;
  if (!qword_1EACB6B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB78B0, &qword_18F09DDE0);
    sub_18EF8558C(&unk_1EACB6A30);
    sub_18EF8558C(&unk_1EACB6A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B08);
  }

  return result;
}

unint64_t sub_18F016978()
{
  result = qword_1EACB6FD8;
  if (!qword_1EACB6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FD8);
  }

  return result;
}

unint64_t sub_18F0169CC()
{
  result = qword_1ED5FD370;
  if (!qword_1ED5FD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD370);
  }

  return result;
}

unint64_t sub_18F016A20()
{
  result = qword_1EACB7B38;
  if (!qword_1EACB7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B38);
  }

  return result;
}

unint64_t sub_18F016A74()
{
  result = qword_1EACB7B40;
  if (!qword_1EACB7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B40);
  }

  return result;
}

unint64_t sub_18F016AC8()
{
  result = qword_1EACB7B48;
  if (!qword_1EACB7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B48);
  }

  return result;
}

unint64_t sub_18F016B1C()
{
  result = qword_1EACB7B50;
  if (!qword_1EACB7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B50);
  }

  return result;
}

unint64_t sub_18F016B70()
{
  result = qword_1EACB7B58;
  if (!qword_1EACB7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B58);
  }

  return result;
}

unint64_t sub_18F016BC4()
{
  result = qword_1EACB7B60;
  if (!qword_1EACB7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B60);
  }

  return result;
}

unint64_t sub_18F016C18()
{
  result = qword_1EACB7B68;
  if (!qword_1EACB7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B68);
  }

  return result;
}

unint64_t sub_18F016C6C()
{
  result = qword_1EACB7B70;
  if (!qword_1EACB7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B70);
  }

  return result;
}

unint64_t sub_18F016CC0()
{
  result = qword_1EACB7B78;
  if (!qword_1EACB7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B78);
  }

  return result;
}

unint64_t sub_18F016D14()
{
  result = qword_1EACB7B80;
  if (!qword_1EACB7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B80);
  }

  return result;
}

unint64_t sub_18F016D68()
{
  result = qword_1EACB6C08;
  if (!qword_1EACB6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C08);
  }

  return result;
}

unint64_t sub_18F016DBC()
{
  result = qword_1EACB7B90;
  if (!qword_1EACB7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B90);
  }

  return result;
}

unint64_t sub_18F016E10()
{
  result = qword_1EACB7BB0;
  if (!qword_1EACB7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7BA8, &qword_18F0A0C48);
    sub_18F016E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7BB0);
  }

  return result;
}

unint64_t sub_18F016E94()
{
  result = qword_1EACB7BB8;
  if (!qword_1EACB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7BB8);
  }

  return result;
}

unint64_t sub_18F016EE8()
{
  result = qword_1EACB6F90;
  if (!qword_1EACB6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F90);
  }

  return result;
}

unint64_t sub_18F016F3C()
{
  result = qword_1EACB6F88;
  if (!qword_1EACB6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F88);
  }

  return result;
}

unint64_t sub_18F016F90()
{
  result = qword_1EACB7C48;
  if (!qword_1EACB7C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7C40, &qword_18F0A0CA8);
    sub_18EF8558C(&unk_1EACB7C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7C48);
  }

  return result;
}

unint64_t sub_18F017044()
{
  result = qword_1EACB7048;
  if (!qword_1EACB7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7048);
  }

  return result;
}

unint64_t sub_18F017098()
{
  result = qword_1EACB6FA0;
  if (!qword_1EACB6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FA0);
  }

  return result;
}

unint64_t sub_18F0170EC()
{
  result = qword_1EACB7C60;
  if (!qword_1EACB7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7C60);
  }

  return result;
}

unint64_t sub_18F017140()
{
  result = qword_1EACB7C70;
  if (!qword_1EACB7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7C70);
  }

  return result;
}

unint64_t sub_18F017194()
{
  result = qword_1EACB7CC8;
  if (!qword_1EACB7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7CC8);
  }

  return result;
}

unint64_t sub_18F0171E8()
{
  result = qword_1EACB7D70;
  if (!qword_1EACB7D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7D68, &qword_18F0A0D60);
    sub_18EFBE800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7D70);
  }

  return result;
}

unint64_t sub_18F01726C()
{
  result = qword_1EACB7D78;
  if (!qword_1EACB7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7D78);
  }

  return result;
}

unint64_t sub_18F0172C0()
{
  result = qword_1EACB7160;
  if (!qword_1EACB7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7160);
  }

  return result;
}

unint64_t sub_18F017314()
{
  result = qword_1EACB7D90;
  if (!qword_1EACB7D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7D88, &qword_18F0A0D68);
    sub_18F0173A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7D90);
  }

  return result;
}

unint64_t sub_18F0173A0()
{
  result = qword_1EACB7D98;
  if (!qword_1EACB7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7D98);
  }

  return result;
}

unint64_t sub_18F0173F4()
{
  result = qword_1EACB7DD0;
  if (!qword_1EACB7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7DD0);
  }

  return result;
}

unint64_t sub_18F017448()
{
  result = qword_1EACB6B38;
  if (!qword_1EACB6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B38);
  }

  return result;
}

unint64_t sub_18F01749C()
{
  result = qword_1EACB7DE0;
  if (!qword_1EACB7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7DE0);
  }

  return result;
}

unint64_t sub_18F0174F0()
{
  result = qword_1EACB7DF0;
  if (!qword_1EACB7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7DF0);
  }

  return result;
}

unint64_t sub_18F017544()
{
  result = qword_1EACB7E08;
  if (!qword_1EACB7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7E08);
  }

  return result;
}

unint64_t sub_18F017598()
{
  result = qword_1EACB7E20;
  if (!qword_1EACB7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7E20);
  }

  return result;
}

unint64_t sub_18F0175EC()
{
  result = qword_1EACB7E38;
  if (!qword_1EACB7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7E38);
  }

  return result;
}

unint64_t sub_18F017640()
{
  result = qword_1EACB71D8;
  if (!qword_1EACB71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB71D8);
  }

  return result;
}

unint64_t sub_18F017694()
{
  result = qword_1ED5FCF08;
  if (!qword_1ED5FCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF08);
  }

  return result;
}

unint64_t sub_18F0176E8()
{
  result = qword_1EACB7038;
  if (!qword_1EACB7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7038);
  }

  return result;
}

unint64_t sub_18F01773C()
{
  result = qword_1EACB7010;
  if (!qword_1EACB7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7010);
  }

  return result;
}

unint64_t sub_18F017790()
{
  result = qword_1EACB6E30;
  if (!qword_1EACB6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E30);
  }

  return result;
}

unint64_t sub_18F0177E4()
{
  result = qword_1EACB7ED0;
  if (!qword_1EACB7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7ED0);
  }

  return result;
}

unint64_t sub_18F017838()
{
  result = qword_1EACB7EE0;
  if (!qword_1EACB7EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7ED8, &qword_18F0A0DF0);
    sub_18F0178BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7EE0);
  }

  return result;
}

unint64_t sub_18F0178BC()
{
  result = qword_1EACB7EE8;
  if (!qword_1EACB7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7EE8);
  }

  return result;
}

unint64_t sub_18F017910()
{
  result = qword_1EACB7F28;
  if (!qword_1EACB7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7F28);
  }

  return result;
}

unint64_t sub_18F017964()
{
  result = qword_1EACB7F30;
  if (!qword_1EACB7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7F30);
  }

  return result;
}

unint64_t sub_18F0179B8()
{
  result = qword_1EACB6F08;
  if (!qword_1EACB6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F08);
  }

  return result;
}

unint64_t sub_18F017A0C()
{
  result = qword_1EACB6B90;
  if (!qword_1EACB6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B90);
  }

  return result;
}

unint64_t sub_18F017A60()
{
  result = qword_1EACB70A8;
  if (!qword_1EACB70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70A8);
  }

  return result;
}

unint64_t sub_18F017AB4()
{
  result = qword_1EACB7188;
  if (!qword_1EACB7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7188);
  }

  return result;
}

unint64_t sub_18F017B70()
{
  result = qword_1ED5FF0C8;
  if (!qword_1ED5FF0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7BA8, &qword_18F0A0C48);
    sub_18EFC2AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0C8);
  }

  return result;
}

uint64_t (*sub_18F017BF4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_18EFCE780(a3);
  sub_18EFBB7B4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x193AD8BA0](a2, a3);
  }

  *a1 = v7;
  return sub_18F020730;
}

void (*sub_18F017C80(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_18EFCE780(a3);
  sub_18EFBB7B4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_292();
    v7 = MEMORY[0x193AD8BA0](v9);
  }

  *a1 = v7;
  return sub_18F017D08;
}

uint64_t sub_18F017D10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_18F0941BC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_18EFA0A7C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_18EF825F4(0, &qword_1EACB6A58, off_1E72B0050);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_18EF8992C(&unk_1EACB8788);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8780, &qword_18F0A1380);
          v9 = sub_18F017BF4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F017EA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_18F0941BC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_18EFA0A7C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_18EF825F4(0, &qword_1EACB7750, off_1E72AFF30);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_18EF8992C(&unk_1EACB85E0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D8, &qword_18F0A1220);
          v9 = sub_18F017BF4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F018040(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_18F0941BC();
    v7 = result;
    if (!result)
    {
      return OUTLINED_FUNCTION_108();
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return OUTLINED_FUNCTION_108();
    }
  }

  if (v5)
  {
    result = sub_18EFA0A7C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
        swift_arrayInitWithCopy();
        return OUTLINED_FUNCTION_108();
      }

      if (v7 >= 1)
      {
        sub_18EF8992C(&qword_1EACB6C48);
        for (i = 0; i != v7; ++i)
        {
          v9 = OUTLINED_FUNCTION_263();
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          v11 = sub_18F017C80(v14, i, a3);
          v13 = *v12;
          (v11)(v14, 0);
          *(v5 + 8 * i) = v13;
        }

        return OUTLINED_FUNCTION_108();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_18F0181D0()
{
  result = qword_1EACB6FF0;
  if (!qword_1EACB6FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7C40, &qword_18F0A0CA8);
    sub_18EF8558C(&unk_1EACB6FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FF0);
  }

  return result;
}

unint64_t sub_18F018284()
{
  result = qword_1ED5FD5D8;
  if (!qword_1ED5FD5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7D68, &qword_18F0A0D60);
    sub_18EFBE7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5D8);
  }

  return result;
}

unint64_t sub_18F018308()
{
  result = qword_1EACB7150;
  if (!qword_1EACB7150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7D88, &qword_18F0A0D68);
    sub_18F018394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7150);
  }

  return result;
}

unint64_t sub_18F018394()
{
  result = qword_1EACB70F8;
  if (!qword_1EACB70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70F8);
  }

  return result;
}

unint64_t sub_18F0183E8()
{
  result = qword_1ED5FCE50;
  if (!qword_1ED5FCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCE50);
  }

  return result;
}

unint64_t sub_18F01843C()
{
  result = qword_1EACB80A8;
  if (!qword_1EACB80A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7ED8, &qword_18F0A0DF0);
    sub_18F0184C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB80A8);
  }

  return result;
}

unint64_t sub_18F0184C0()
{
  result = qword_1EACB80B0;
  if (!qword_1EACB80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB80B0);
  }

  return result;
}

unint64_t sub_18F018514()
{
  result = qword_1EACB6F50;
  if (!qword_1EACB6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F50);
  }

  return result;
}

unint64_t sub_18F018568()
{
  result = qword_1EACB6A80;
  if (!qword_1EACB6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A80);
  }

  return result;
}

unint64_t sub_18F0185F4()
{
  result = qword_1EACB8128;
  if (!qword_1EACB8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8128);
  }

  return result;
}

unint64_t sub_18F018648()
{
  result = qword_1ED5FCE40;
  if (!qword_1ED5FCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCE40);
  }

  return result;
}

unint64_t sub_18F01869C()
{
  result = qword_1EACB8188;
  if (!qword_1EACB8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8188);
  }

  return result;
}

unint64_t sub_18F0186F0()
{
  result = qword_1EACB6E68;
  if (!qword_1EACB6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E68);
  }

  return result;
}

unint64_t sub_18F018744()
{
  result = qword_1EACB6EC0;
  if (!qword_1EACB6EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8198, &qword_18F0A0FF0);
    sub_18EF8558C(&unk_1EACB6E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6EC0);
  }

  return result;
}

unint64_t sub_18F018880()
{
  result = qword_1EACB81A8;
  if (!qword_1EACB81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB81A8);
  }

  return result;
}

unint64_t sub_18F0188D4()
{
  result = qword_1EACB81B0;
  if (!qword_1EACB81B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8198, &qword_18F0A0FF0);
    sub_18EF8558C(&unk_1EACB81B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB81B0);
  }

  return result;
}

unint64_t sub_18F018988()
{
  result = qword_1EACB81F0;
  if (!qword_1EACB81F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB81D0, &qword_18F0A1008);
    sub_18EF8558C(&unk_1EACB81F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB81F0);
  }

  return result;
}

unint64_t sub_18F018A3C()
{
  result = qword_1EACB8200;
  if (!qword_1EACB8200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB81D8, &qword_18F0A1010);
    sub_18EF8558C(&unk_1EACB8208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8200);
  }

  return result;
}

unint64_t sub_18F018AF0()
{
  result = qword_1EACB7258;
  if (!qword_1EACB7258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8240, &qword_18F0A1038);
    sub_18EFCC148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7258);
  }

  return result;
}

unint64_t sub_18F018B74()
{
  result = qword_1EACB8250;
  if (!qword_1EACB8250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8240, &qword_18F0A1038);
    sub_18F018BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8250);
  }

  return result;
}

unint64_t sub_18F018BF8()
{
  result = qword_1EACB8258;
  if (!qword_1EACB8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8258);
  }

  return result;
}

unint64_t sub_18F018C4C()
{
  result = qword_1EACB8280;
  if (!qword_1EACB8280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A70, &qword_18F0A0BB8);
    sub_18EF8558C(&unk_1EACB8288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8280);
  }

  return result;
}

unint64_t sub_18F018D08()
{
  result = qword_1EACB8290;
  if (!qword_1EACB8290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A78, &qword_18F0A0BC0);
    sub_18EF8558C(&unk_1EACB8298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8290);
  }

  return result;
}

unint64_t sub_18F018DBC()
{
  result = qword_1EACB82A0;
  if (!qword_1EACB82A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A80, &qword_18F0A0BC8);
    sub_18EF8558C(&unk_1EACB7DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82A0);
  }

  return result;
}

unint64_t sub_18F018E78()
{
  result = qword_1EACB82A8;
  if (!qword_1EACB82A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A88, &qword_18F0A0BD0);
    sub_18EF8558C(&unk_1EACB82B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82A8);
  }

  return result;
}

unint64_t sub_18F018F34()
{
  result = qword_1EACB82B8;
  if (!qword_1EACB82B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7A90, &qword_18F0A0BD8);
    sub_18EF8558C(&unk_1EACB7DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82B8);
  }

  return result;
}

unint64_t sub_18F018FE8()
{
  result = qword_1EACB82C8;
  if (!qword_1EACB82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82C8);
  }

  return result;
}

unint64_t sub_18F01903C()
{
  result = qword_1EACB82D0;
  if (!qword_1EACB82D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AA0, &qword_18F0A0BE0);
    sub_18EF8558C(&unk_1EACB82D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82D0);
  }

  return result;
}

unint64_t sub_18F0190F0()
{
  result = qword_1EACB82E0;
  if (!qword_1EACB82E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AA8, &qword_18F0A0BE8);
    sub_18F019174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82E0);
  }

  return result;
}

unint64_t sub_18F019174()
{
  result = qword_1EACB82E8;
  if (!qword_1EACB82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82E8);
  }

  return result;
}

unint64_t sub_18F0191C8()
{
  result = qword_1EACB82F0;
  if (!qword_1EACB82F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AB0, &qword_18F0A0BF0);
    sub_18F01924C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82F0);
  }

  return result;
}

unint64_t sub_18F01924C()
{
  result = qword_1EACB82F8;
  if (!qword_1EACB82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82F8);
  }

  return result;
}

unint64_t sub_18F0192A0()
{
  result = qword_1EACB8300;
  if (!qword_1EACB8300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AB8, &qword_18F0A0BF8);
    sub_18F019324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8300);
  }

  return result;
}

unint64_t sub_18F019324()
{
  result = qword_1EACB8308;
  if (!qword_1EACB8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8308);
  }

  return result;
}

void sub_18F019378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_268();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_18F0193F0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_18F093FEC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_18F019430()
{
  sub_18F093B8C();
  sub_18F093B5C();
  OUTLINED_FUNCTION_216();

  return v0;
}

unint64_t sub_18F019464()
{
  result = qword_1ED5FD238;
  if (!qword_1ED5FD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD238);
  }

  return result;
}

unint64_t sub_18F0194B8()
{
  result = qword_1ED5FCDC8;
  if (!qword_1ED5FCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDC8);
  }

  return result;
}

unint64_t sub_18F01950C()
{
  result = qword_1EACB8378;
  if (!qword_1EACB8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8378);
  }

  return result;
}

unint64_t sub_18F019560()
{
  result = qword_1EACB6EC8;
  if (!qword_1EACB6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6EC8);
  }

  return result;
}

unint64_t sub_18F0195B4()
{
  result = qword_1EACB6A90;
  if (!qword_1EACB6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A90);
  }

  return result;
}

unint64_t sub_18F019608()
{
  result = qword_1EACB83D0;
  if (!qword_1EACB83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB83D0);
  }

  return result;
}

unint64_t sub_18F01965C()
{
  result = qword_1EACB83D8;
  if (!qword_1EACB83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB83D8);
  }

  return result;
}

unint64_t sub_18F0196B0()
{
  result = qword_1EACB83E8;
  if (!qword_1EACB83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB83E8);
  }

  return result;
}

unint64_t sub_18F019704()
{
  result = qword_1EACB6C00;
  if (!qword_1EACB6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C00);
  }

  return result;
}

unint64_t sub_18F019758()
{
  result = qword_1EACB6BE8;
  if (!qword_1EACB6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BE8);
  }

  return result;
}

unint64_t sub_18F0197AC()
{
  result = qword_1EACB6A50;
  if (!qword_1EACB6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A50);
  }

  return result;
}

unint64_t sub_18F019800()
{
  result = qword_1EACB6A18;
  if (!qword_1EACB6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A18);
  }

  return result;
}

unint64_t sub_18F019854()
{
  result = qword_1ED5FCDC0;
  if (!qword_1ED5FCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDC0);
  }

  return result;
}

unint64_t sub_18F0198A8()
{
  result = qword_1ED5FCDD8;
  if (!qword_1ED5FCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDD8);
  }

  return result;
}

unint64_t sub_18F0198FC()
{
  result = qword_1ED5FCF60;
  if (!qword_1ED5FCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF60);
  }

  return result;
}

unint64_t sub_18F019950()
{
  result = qword_1ED5FCF70;
  if (!qword_1ED5FCF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF70);
  }

  return result;
}

unint64_t sub_18F0199A4()
{
  result = qword_1EACB84F0;
  if (!qword_1EACB84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB84F0);
  }

  return result;
}

unint64_t sub_18F0199F8()
{
  result = qword_1EACB8500;
  if (!qword_1EACB8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8500);
  }

  return result;
}

unint64_t sub_18F019A4C()
{
  result = qword_1EACB6AC8;
  if (!qword_1EACB6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6AC8);
  }

  return result;
}

unint64_t sub_18F019AA0()
{
  result = qword_1EACB8560;
  if (!qword_1EACB8560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7898, &qword_18F09DC48);
    sub_18EF8558C(&unk_1EACB6A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8560);
  }

  return result;
}

unint64_t sub_18F019B54()
{
  result = qword_1ED5FCDF0;
  if (!qword_1ED5FCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDF0);
  }

  return result;
}

unint64_t sub_18F019BA8()
{
  result = qword_1ED5FD5F8;
  if (!qword_1ED5FD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5F8);
  }

  return result;
}

uint64_t sub_18F019BFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_18F00BDA4(a1, a2);
}

unint64_t sub_18F019C18()
{
  result = qword_1EACB8690;
  if (!qword_1EACB8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8690);
  }

  return result;
}

void sub_18F019C6C(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_18F019C7C()
{
  result = qword_1EACB86A8;
  if (!qword_1EACB86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB86A8);
  }

  return result;
}

uint64_t sub_18F019D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F019D78(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_138();
  v5 = v4(v3);
  OUTLINED_FUNCTION_36(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_108();
  v9(v8);
  return a2;
}

unint64_t sub_18F019DD0()
{
  result = qword_1EACB86E8;
  if (!qword_1EACB86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB86E8);
  }

  return result;
}

uint64_t sub_18F019E24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_18F019EA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_18F019F9C()
{
  result = qword_1EACB8770;
  if (!qword_1EACB8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8770);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_18F01A078()
{
  result = qword_1EACB6A00;
  if (!qword_1EACB6A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB72F8, &qword_18F09BD38);
    sub_18EF8558C(&unk_1EACB6A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A00);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_187Tm()
{
  OUTLINED_FUNCTION_62();
  if (v0)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v4 = OUTLINED_FUNCTION_85();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_188Tm()
{
  OUTLINED_FUNCTION_29();
  if (v5)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_253(v0, v1, v2, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_331();
    v9 = OUTLINED_FUNCTION_52(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_18F01A348(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 15);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 15);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 15);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

_BYTE *sub_18F01A3CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_181(result, a2 + 14);
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14CodableWrapperO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_415Tm()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_51();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_99(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_156();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t __swift_store_extra_inhabitant_index_416Tm()
{
  OUTLINED_FUNCTION_34();
  result = OUTLINED_FUNCTION_51();
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_66();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
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

uint64_t sub_18F01A8A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01A8E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_18F01A944(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x73 && *(a1 + 16))
    {
      v2 = *a1 + 114;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x72)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18F01A98C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *result = a2 - 115;
    *(result + 8) = 0;
    if (a3 >= 0x73)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_18F01AA5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416(a1);
  }

  return OUTLINED_FUNCTION_170(v2);
}

uint64_t sub_18F01AA9C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F01AAE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x73 && *(a1 + 17))
    {
      v2 = *a1 + 114;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x72)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18F01AB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *(result + 16) = 0;
    *result = a2 - 115;
    *(result + 8) = 0;
    if (a3 >= 0x73)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So17LNEntityValueTypeC12LinkMetadataE20EntityCodableWrapper33_8F5A22252D2EEFBD74C1473F6DDC7E6CLLV06SystemfgH0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01ABB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01ABF8(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F01AC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416(a1);
  }

  return OUTLINED_FUNCTION_170(v2);
}

uint64_t sub_18F01ACB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F01ACFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416(a1);
  }

  return OUTLINED_FUNCTION_170(v2);
}

unint64_t sub_18F01AD60()
{
  result = qword_1EACB88B8;
  if (!qword_1EACB88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88B8);
  }

  return result;
}

unint64_t sub_18F01ADB8()
{
  result = qword_1EACB88C0;
  if (!qword_1EACB88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88C0);
  }

  return result;
}

unint64_t sub_18F01AE10()
{
  result = qword_1EACB88C8;
  if (!qword_1EACB88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88C8);
  }

  return result;
}

unint64_t sub_18F01AE68()
{
  result = qword_1EACB88D0;
  if (!qword_1EACB88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88D0);
  }

  return result;
}

unint64_t sub_18F01AEC0()
{
  result = qword_1EACB88D8;
  if (!qword_1EACB88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88D8);
  }

  return result;
}

unint64_t sub_18F01AF18()
{
  result = qword_1EACB88E0;
  if (!qword_1EACB88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88E0);
  }

  return result;
}

unint64_t sub_18F01AF70()
{
  result = qword_1EACB88E8;
  if (!qword_1EACB88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88E8);
  }

  return result;
}

unint64_t sub_18F01AFC8()
{
  result = qword_1EACB88F0;
  if (!qword_1EACB88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88F0);
  }

  return result;
}

unint64_t sub_18F01B020()
{
  result = qword_1EACB88F8;
  if (!qword_1EACB88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88F8);
  }

  return result;
}

unint64_t sub_18F01B078()
{
  result = qword_1EACB8900;
  if (!qword_1EACB8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8900);
  }

  return result;
}

unint64_t sub_18F01B0D0()
{
  result = qword_1EACB8908;
  if (!qword_1EACB8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8908);
  }

  return result;
}

unint64_t sub_18F01B128()
{
  result = qword_1EACB8910;
  if (!qword_1EACB8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8910);
  }

  return result;
}

unint64_t sub_18F01B180()
{
  result = qword_1EACB8918;
  if (!qword_1EACB8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8918);
  }

  return result;
}

unint64_t sub_18F01B1D8()
{
  result = qword_1EACB8920;
  if (!qword_1EACB8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8920);
  }

  return result;
}

unint64_t sub_18F01B230()
{
  result = qword_1EACB8928;
  if (!qword_1EACB8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8928);
  }

  return result;
}

unint64_t sub_18F01B288()
{
  result = qword_1EACB8930;
  if (!qword_1EACB8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8930);
  }

  return result;
}

unint64_t sub_18F01B2E0()
{
  result = qword_1EACB8938;
  if (!qword_1EACB8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8938);
  }

  return result;
}

unint64_t sub_18F01B338()
{
  result = qword_1EACB8940;
  if (!qword_1EACB8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8940);
  }

  return result;
}

unint64_t sub_18F01B390()
{
  result = qword_1EACB8948;
  if (!qword_1EACB8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8948);
  }

  return result;
}

unint64_t sub_18F01B3E8()
{
  result = qword_1EACB8950;
  if (!qword_1EACB8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8950);
  }

  return result;
}

unint64_t sub_18F01B440()
{
  result = qword_1EACB8958;
  if (!qword_1EACB8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8958);
  }

  return result;
}

unint64_t sub_18F01B498()
{
  result = qword_1EACB8960;
  if (!qword_1EACB8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8960);
  }

  return result;
}

unint64_t sub_18F01B4F0()
{
  result = qword_1EACB8968;
  if (!qword_1EACB8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8968);
  }

  return result;
}

unint64_t sub_18F01B548()
{
  result = qword_1EACB8970;
  if (!qword_1EACB8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8970);
  }

  return result;
}

unint64_t sub_18F01B5A0()
{
  result = qword_1EACB8978;
  if (!qword_1EACB8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8978);
  }

  return result;
}

unint64_t sub_18F01B5F8()
{
  result = qword_1EACB8980;
  if (!qword_1EACB8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8980);
  }

  return result;
}

unint64_t sub_18F01B650()
{
  result = qword_1EACB8988;
  if (!qword_1EACB8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8988);
  }

  return result;
}

unint64_t sub_18F01B6A8()
{
  result = qword_1EACB8990;
  if (!qword_1EACB8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8990);
  }

  return result;
}

unint64_t sub_18F01B700()
{
  result = qword_1EACB8998;
  if (!qword_1EACB8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8998);
  }

  return result;
}

unint64_t sub_18F01B758()
{
  result = qword_1EACB89A0;
  if (!qword_1EACB89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89A0);
  }

  return result;
}

unint64_t sub_18F01B7B0()
{
  result = qword_1EACB89A8;
  if (!qword_1EACB89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89A8);
  }

  return result;
}

unint64_t sub_18F01B808()
{
  result = qword_1EACB89B0;
  if (!qword_1EACB89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89B0);
  }

  return result;
}

unint64_t sub_18F01B860()
{
  result = qword_1EACB89B8;
  if (!qword_1EACB89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89B8);
  }

  return result;
}

unint64_t sub_18F01B8B8()
{
  result = qword_1EACB89C0;
  if (!qword_1EACB89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89C0);
  }

  return result;
}

unint64_t sub_18F01B910()
{
  result = qword_1EACB89C8;
  if (!qword_1EACB89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89C8);
  }

  return result;
}

unint64_t sub_18F01B968()
{
  result = qword_1EACB89D0;
  if (!qword_1EACB89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89D0);
  }

  return result;
}

unint64_t sub_18F01B9C0()
{
  result = qword_1EACB89D8;
  if (!qword_1EACB89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89D8);
  }

  return result;
}

unint64_t sub_18F01BA18()
{
  result = qword_1EACB89E0;
  if (!qword_1EACB89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89E0);
  }

  return result;
}

unint64_t sub_18F01BA70()
{
  result = qword_1EACB89E8;
  if (!qword_1EACB89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89E8);
  }

  return result;
}

unint64_t sub_18F01BAC8()
{
  result = qword_1EACB89F0;
  if (!qword_1EACB89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89F0);
  }

  return result;
}

unint64_t sub_18F01BB20()
{
  result = qword_1EACB89F8;
  if (!qword_1EACB89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89F8);
  }

  return result;
}

unint64_t sub_18F01BB78()
{
  result = qword_1EACB8A00;
  if (!qword_1EACB8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A00);
  }

  return result;
}

unint64_t sub_18F01BBD0()
{
  result = qword_1EACB8A08;
  if (!qword_1EACB8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A08);
  }

  return result;
}

unint64_t sub_18F01BC28()
{
  result = qword_1EACB8A10;
  if (!qword_1EACB8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A10);
  }

  return result;
}

unint64_t sub_18F01BC80()
{
  result = qword_1EACB8A18;
  if (!qword_1EACB8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A18);
  }

  return result;
}

unint64_t sub_18F01BCD8()
{
  result = qword_1EACB8A20;
  if (!qword_1EACB8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A20);
  }

  return result;
}

unint64_t sub_18F01BD30()
{
  result = qword_1EACB8A28;
  if (!qword_1EACB8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A28);
  }

  return result;
}

unint64_t sub_18F01BD88()
{
  result = qword_1EACB8A30;
  if (!qword_1EACB8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A30);
  }

  return result;
}

unint64_t sub_18F01BDE0()
{
  result = qword_1EACB8A38;
  if (!qword_1EACB8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A38);
  }

  return result;
}

unint64_t sub_18F01BE38()
{
  result = qword_1EACB8A40;
  if (!qword_1EACB8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A40);
  }

  return result;
}

unint64_t sub_18F01BE90()
{
  result = qword_1EACB8A48;
  if (!qword_1EACB8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A48);
  }

  return result;
}

unint64_t sub_18F01BEE8()
{
  result = qword_1EACB8A50;
  if (!qword_1EACB8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A50);
  }

  return result;
}

unint64_t sub_18F01BF40()
{
  result = qword_1EACB8A58;
  if (!qword_1EACB8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A58);
  }

  return result;
}

unint64_t sub_18F01BF98()
{
  result = qword_1EACB8A60;
  if (!qword_1EACB8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A60);
  }

  return result;
}

unint64_t sub_18F01BFF0()
{
  result = qword_1EACB8A68;
  if (!qword_1EACB8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A68);
  }

  return result;
}

unint64_t sub_18F01C048()
{
  result = qword_1EACB8A70;
  if (!qword_1EACB8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A70);
  }

  return result;
}

unint64_t sub_18F01C0A0()
{
  result = qword_1EACB8A78;
  if (!qword_1EACB8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A78);
  }

  return result;
}

unint64_t sub_18F01C0F8()
{
  result = qword_1EACB8A80;
  if (!qword_1EACB8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A80);
  }

  return result;
}

unint64_t sub_18F01C150()
{
  result = qword_1EACB8A88;
  if (!qword_1EACB8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A88);
  }

  return result;
}

unint64_t sub_18F01C1A8()
{
  result = qword_1EACB8A90;
  if (!qword_1EACB8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A90);
  }

  return result;
}

unint64_t sub_18F01C200()
{
  result = qword_1EACB8A98;
  if (!qword_1EACB8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A98);
  }

  return result;
}

unint64_t sub_18F01C258()
{
  result = qword_1EACB8AA0;
  if (!qword_1EACB8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AA0);
  }

  return result;
}

unint64_t sub_18F01C2B0()
{
  result = qword_1EACB8AA8;
  if (!qword_1EACB8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AA8);
  }

  return result;
}

unint64_t sub_18F01C308()
{
  result = qword_1EACB8AB0;
  if (!qword_1EACB8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AB0);
  }

  return result;
}

unint64_t sub_18F01C360()
{
  result = qword_1EACB8AB8;
  if (!qword_1EACB8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AB8);
  }

  return result;
}

unint64_t sub_18F01C3B8()
{
  result = qword_1EACB8AC0;
  if (!qword_1EACB8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AC0);
  }

  return result;
}

unint64_t sub_18F01C410()
{
  result = qword_1EACB8AC8;
  if (!qword_1EACB8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AC8);
  }

  return result;
}

unint64_t sub_18F01C468()
{
  result = qword_1EACB8AD0;
  if (!qword_1EACB8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AD0);
  }

  return result;
}

unint64_t sub_18F01C4C0()
{
  result = qword_1EACB8AD8;
  if (!qword_1EACB8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AD8);
  }

  return result;
}

unint64_t sub_18F01C518()
{
  result = qword_1EACB8AE0;
  if (!qword_1EACB8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AE0);
  }

  return result;
}

unint64_t sub_18F01C570()
{
  result = qword_1EACB8AE8;
  if (!qword_1EACB8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AE8);
  }

  return result;
}

unint64_t sub_18F01C5C8()
{
  result = qword_1EACB8AF0;
  if (!qword_1EACB8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AF0);
  }

  return result;
}

unint64_t sub_18F01C620()
{
  result = qword_1EACB8AF8;
  if (!qword_1EACB8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AF8);
  }

  return result;
}

unint64_t sub_18F01C678()
{
  result = qword_1EACB8B00;
  if (!qword_1EACB8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B00);
  }

  return result;
}

unint64_t sub_18F01C6D0()
{
  result = qword_1EACB8B08;
  if (!qword_1EACB8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B08);
  }

  return result;
}

unint64_t sub_18F01C728()
{
  result = qword_1EACB8B10;
  if (!qword_1EACB8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B10);
  }

  return result;
}

unint64_t sub_18F01C780()
{
  result = qword_1EACB8B18;
  if (!qword_1EACB8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B18);
  }

  return result;
}

unint64_t sub_18F01C7D8()
{
  result = qword_1EACB8B20;
  if (!qword_1EACB8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B20);
  }

  return result;
}

unint64_t sub_18F01C830()
{
  result = qword_1EACB8B28;
  if (!qword_1EACB8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B28);
  }

  return result;
}

unint64_t sub_18F01C888()
{
  result = qword_1ED5FCDE0;
  if (!qword_1ED5FCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDE0);
  }

  return result;
}

unint64_t sub_18F01C8E0()
{
  result = qword_1ED5FCDE8;
  if (!qword_1ED5FCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDE8);
  }

  return result;
}

unint64_t sub_18F01C938()
{
  result = qword_1EACB6A40;
  if (!qword_1EACB6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A40);
  }

  return result;
}

unint64_t sub_18F01C990()
{
  result = qword_1EACB6A48;
  if (!qword_1EACB6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A48);
  }

  return result;
}

unint64_t sub_18F01C9E8()
{
  result = qword_1EACB6BD0;
  if (!qword_1EACB6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BD0);
  }

  return result;
}

unint64_t sub_18F01CA40()
{
  result = qword_1EACB6BD8;
  if (!qword_1EACB6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BD8);
  }

  return result;
}

unint64_t sub_18F01CA98()
{
  result = qword_1EACB6BF0;
  if (!qword_1EACB6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BF0);
  }

  return result;
}

unint64_t sub_18F01CAF0()
{
  result = qword_1EACB6BF8;
  if (!qword_1EACB6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BF8);
  }

  return result;
}

unint64_t sub_18F01CB48()
{
  result = qword_1EACB8B30;
  if (!qword_1EACB8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B30);
  }

  return result;
}

unint64_t sub_18F01CBA0()
{
  result = qword_1EACB8B38;
  if (!qword_1EACB8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B38);
  }

  return result;
}

unint64_t sub_18F01CBF8()
{
  result = qword_1EACB6E50;
  if (!qword_1EACB6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E50);
  }

  return result;
}

unint64_t sub_18F01CC50()
{
  result = qword_1EACB6E58;
  if (!qword_1EACB6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E58);
  }

  return result;
}

unint64_t sub_18F01CCA8()
{
  result = qword_1EACB7120;
  if (!qword_1EACB7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7120);
  }

  return result;
}

unint64_t sub_18F01CD00()
{
  result = qword_1EACB7128;
  if (!qword_1EACB7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7128);
  }

  return result;
}

unint64_t sub_18F01CD58()
{
  result = qword_1ED5FCE30;
  if (!qword_1ED5FCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCE30);
  }

  return result;
}

unint64_t sub_18F01CDB0()
{
  result = qword_1ED5FCE38;
  if (!qword_1ED5FCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCE38);
  }

  return result;
}

unint64_t sub_18F01CE08()
{
  result = qword_1EACB8B40;
  if (!qword_1EACB8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B40);
  }

  return result;
}

unint64_t sub_18F01CE60()
{
  result = qword_1EACB8B48;
  if (!qword_1EACB8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B48);
  }

  return result;
}

unint64_t sub_18F01CEB8()
{
  result = qword_1EACB6A70;
  if (!qword_1EACB6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A70);
  }

  return result;
}

unint64_t sub_18F01CF10()
{
  result = qword_1EACB6A78;
  if (!qword_1EACB6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A78);
  }

  return result;
}

unint64_t sub_18F01CF68()
{
  result = qword_1EACB6F40;
  if (!qword_1EACB6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F40);
  }

  return result;
}

unint64_t sub_18F01CFC0()
{
  result = qword_1EACB6F48;
  if (!qword_1EACB6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F48);
  }

  return result;
}

unint64_t sub_18F01D018()
{
  result = qword_1EACB8B50;
  if (!qword_1EACB8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B50);
  }

  return result;
}

unint64_t sub_18F01D070()
{
  result = qword_1EACB8B58;
  if (!qword_1EACB8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B58);
  }

  return result;
}

unint64_t sub_18F01D0C8()
{
  result = qword_1EACB6E20;
  if (!qword_1EACB6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E20);
  }

  return result;
}

unint64_t sub_18F01D120()
{
  result = qword_1EACB6E28;
  if (!qword_1EACB6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E28);
  }

  return result;
}

unint64_t sub_18F01D178()
{
  result = qword_1EACB7000;
  if (!qword_1EACB7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7000);
  }

  return result;
}

unint64_t sub_18F01D1D0()
{
  result = qword_1EACB7008;
  if (!qword_1EACB7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7008);
  }

  return result;
}

unint64_t sub_18F01D228()
{
  result = qword_1EACB7020;
  if (!qword_1EACB7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7020);
  }

  return result;
}

unint64_t sub_18F01D280()
{
  result = qword_1EACB7028;
  if (!qword_1EACB7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7028);
  }

  return result;
}

unint64_t sub_18F01D2D8()
{
  result = qword_1ED5FCF80;
  if (!qword_1ED5FCF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF80);
  }

  return result;
}

unint64_t sub_18F01D330()
{
  result = qword_1ED5FCF88;
  if (!qword_1ED5FCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF88);
  }

  return result;
}

unint64_t sub_18F01D388()
{
  result = qword_1ED5FE850;
  if (!qword_1ED5FE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE850);
  }

  return result;
}

unint64_t sub_18F01D3E0()
{
  result = qword_1ED5FE858;
  if (!qword_1ED5FE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE858);
  }

  return result;
}

unint64_t sub_18F01D438()
{
  result = qword_1ED5FE800;
  if (!qword_1ED5FE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE800);
  }

  return result;
}

unint64_t sub_18F01D490()
{
  result = qword_1ED5FE808;
  if (!qword_1ED5FE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE808);
  }

  return result;
}

unint64_t sub_18F01D4E8()
{
  result = qword_1ED5FE7F0;
  if (!qword_1ED5FE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7F0);
  }

  return result;
}

unint64_t sub_18F01D540()
{
  result = qword_1ED5FE7E8;
  if (!qword_1ED5FE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7E8);
  }

  return result;
}

unint64_t sub_18F01D598()
{
  result = qword_1ED5FE840;
  if (!qword_1ED5FE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE840);
  }

  return result;
}

unint64_t sub_18F01D5F0()
{
  result = qword_1ED5FE848;
  if (!qword_1ED5FE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE848);
  }

  return result;
}

unint64_t sub_18F01D648()
{
  result = qword_1ED5FE820;
  if (!qword_1ED5FE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE820);
  }

  return result;
}

unint64_t sub_18F01D6A0()
{
  result = qword_1ED5FE828;
  if (!qword_1ED5FE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE828);
  }

  return result;
}

unint64_t sub_18F01D6F8()
{
  result = qword_1ED5FE830;
  if (!qword_1ED5FE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE830);
  }

  return result;
}

unint64_t sub_18F01D750()
{
  result = qword_1ED5FE838;
  if (!qword_1ED5FE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE838);
  }

  return result;
}

unint64_t sub_18F01D7A8()
{
  result = qword_1ED5FE810;
  if (!qword_1ED5FE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE810);
  }

  return result;
}

unint64_t sub_18F01D800()
{
  result = qword_1ED5FE818;
  if (!qword_1ED5FE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE818);
  }

  return result;
}

unint64_t sub_18F01D858()
{
  result = qword_1ED5FE7D0;
  if (!qword_1ED5FE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7D0);
  }

  return result;
}

unint64_t sub_18F01D8B0()
{
  result = qword_1ED5FE7D8;
  if (!qword_1ED5FE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7D8);
  }

  return result;
}

unint64_t sub_18F01D908()
{
  result = qword_1ED5FD220;
  if (!qword_1ED5FD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD220);
  }

  return result;
}

unint64_t sub_18F01D960()
{
  result = qword_1ED5FD228;
  if (!qword_1ED5FD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD228);
  }

  return result;
}

unint64_t sub_18F01D9B8()
{
  result = qword_1ED5FE870;
  if (!qword_1ED5FE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE870);
  }

  return result;
}

unint64_t sub_18F01DA10()
{
  result = qword_1ED5FE878;
  if (!qword_1ED5FE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE878);
  }

  return result;
}

unint64_t sub_18F01DA68()
{
  result = qword_1ED5FD360;
  if (!qword_1ED5FD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD360);
  }

  return result;
}

unint64_t sub_18F01DAC0()
{
  result = qword_1ED5FD368;
  if (!qword_1ED5FD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD368);
  }

  return result;
}

unint64_t sub_18F01DB18()
{
  result = qword_1EACB6FC0;
  if (!qword_1EACB6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FC0);
  }

  return result;
}

unint64_t sub_18F01DB70()
{
  result = qword_1EACB6FC8;
  if (!qword_1EACB6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FC8);
  }

  return result;
}

unint64_t sub_18F01DBC8()
{
  result = qword_1ED5FD040;
  if (!qword_1ED5FD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD040);
  }

  return result;
}

unint64_t sub_18F01DC20()
{
  result = qword_1ED5FD048;
  if (!qword_1ED5FD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD048);
  }

  return result;
}

unint64_t sub_18F01DC74()
{
  result = qword_1ED5FDEF8;
  if (!qword_1ED5FDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDEF8);
  }

  return result;
}

unint64_t sub_18F01DCC8()
{
  result = qword_1ED5FDF10;
  if (!qword_1ED5FDF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB77C0, &qword_18F09BF18);
    sub_18EF883DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF10);
  }

  return result;
}

unint64_t sub_18F01DD54()
{
  result = qword_1ED5FDF00;
  if (!qword_1ED5FDF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB8B78, &qword_18F0A7B90);
    sub_18EF8558C(&unk_1ED5FE008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF00);
  }

  return result;
}

unint64_t sub_18F01DE10()
{
  result = qword_1ED5FCFB0;
  if (!qword_1ED5FCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCFB0);
  }

  return result;
}

unint64_t sub_18F01DE64()
{
  result = qword_1EACB8BA0;
  if (!qword_1EACB8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8BA0);
  }

  return result;
}

unint64_t sub_18F01DEB8()
{
  result = qword_1EACB8BB0;
  if (!qword_1EACB8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8BB0);
  }

  return result;
}

unint64_t sub_18F01DF0C()
{
  result = qword_1EACB6F28;
  if (!qword_1EACB6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F28);
  }

  return result;
}

unint64_t sub_18F01DF60()
{
  result = qword_1EACB6BB0;
  if (!qword_1EACB6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BB0);
  }

  return result;
}

unint64_t sub_18F01DFB4()
{
  result = qword_1EACB70D0;
  if (!qword_1EACB70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70D0);
  }

  return result;
}

unint64_t sub_18F01E008()
{
  result = qword_1EACB71B0;
  if (!qword_1EACB71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB71B0);
  }

  return result;
}

unint64_t sub_18F01E05C()
{
  result = qword_1EACB8C40;
  if (!qword_1EACB8C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8C38, &qword_18F0A7BE8);
    sub_18F012B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8C40);
  }

  return result;
}

unint64_t sub_18F01E0E0()
{
  result = qword_1EACB6C20;
  if (!qword_1EACB6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C20);
  }

  return result;
}

unint64_t sub_18F01E134()
{
  result = qword_1EACB6C18;
  if (!qword_1EACB6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C18);
  }

  return result;
}

unint64_t sub_18F01E188()
{
  result = qword_1EACB6C30;
  if (!qword_1EACB6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C30);
  }

  return result;
}

unint64_t sub_18F01E1DC()
{
  result = qword_1EACB8CC0;
  if (!qword_1EACB8CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8CB8, &qword_18F0A7C20);
    sub_18EF8558C(&unk_1EACB8CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8CC0);
  }

  return result;
}

unint64_t sub_18F01E290()
{
  result = qword_1EACB8CE8;
  if (!qword_1EACB8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8CE8);
  }

  return result;
}

unint64_t sub_18F01E2E4()
{
  result = qword_1EACB8D00;
  if (!qword_1EACB8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8D00);
  }

  return result;
}

unint64_t sub_18F01E338()
{
  result = qword_1EACB8D10;
  if (!qword_1EACB8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8D10);
  }

  return result;
}

unint64_t sub_18F01E38C()
{
  result = qword_1EACB71B8;
  if (!qword_1EACB71B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8C38, &qword_18F0A7BE8);
    sub_18EF8882C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB71B8);
  }

  return result;
}

uint64_t sub_18F01E410(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_18F01E458(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F01E4A8()
{
  result = qword_1ED5FD1D0;
  if (!qword_1ED5FD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1D0);
  }

  return result;
}

unint64_t sub_18F01E4FC()
{
  result = qword_1ED5FD1C8;
  if (!qword_1ED5FD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1C8);
  }

  return result;
}

unint64_t sub_18F01E550()
{
  result = qword_1ED5FD1E0;
  if (!qword_1ED5FD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1E0);
  }

  return result;
}

uint64_t sub_18F01E5A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F01E5E8()
{
  result = qword_1EACB6EB8;
  if (!qword_1EACB6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6EB8);
  }

  return result;
}

unint64_t sub_18F01E63C()
{
  result = qword_1EACB8E20;
  if (!qword_1EACB8E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB77C0, &qword_18F09BF18);
    sub_18F013748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E20);
  }

  return result;
}

unint64_t sub_18F01E6C8()
{
  result = qword_1EACB8E28;
  if (!qword_1EACB8E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB8B78, &qword_18F0A7B90);
    sub_18EF8558C(&unk_1EACB6A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E28);
  }

  return result;
}

unint64_t sub_18F01E784()
{
  result = qword_1EACB8E50;
  if (!qword_1EACB8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E50);
  }

  return result;
}

unint64_t sub_18F01E7D8()
{
  result = qword_1EACB8E58;
  if (!qword_1EACB8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E58);
  }

  return result;
}

unint64_t sub_18F01E82C()
{
  result = qword_1EACB8E60;
  if (!qword_1EACB8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E60);
  }

  return result;
}

unint64_t sub_18F01E880()
{
  result = qword_1EACB8E78;
  if (!qword_1EACB8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E78);
  }

  return result;
}

uint64_t sub_18F01EA04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416(a1);
  }

  return OUTLINED_FUNCTION_170(v2);
}

uint64_t sub_18F01EA44(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F01EA94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01EAE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}