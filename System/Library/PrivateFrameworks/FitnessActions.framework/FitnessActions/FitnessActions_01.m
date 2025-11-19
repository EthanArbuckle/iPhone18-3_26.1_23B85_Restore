unint64_t sub_1E5B6F52C()
{
  result = qword_1ED03E8A0;
  if (!qword_1ED03E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8A0);
  }

  return result;
}

uint64_t sub_1E5B6F580(uint64_t a1, int **a2)
{
  v2[2] = sub_1E5BF7084();
  v2[3] = sub_1E5BF7074();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6F688;

  return v8();
}

uint64_t sub_1E5B6F688()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B71A18, v5, v4);
}

uint64_t sub_1E5B6F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5BF7084();
  v4[3] = sub_1E5BF7074();
  v8 = *(a2 + 24);
  v12 = (*(a2 + 16) + **(a2 + 16));
  v9 = *(*(a2 + 16) + 4);
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1E5B6F8E4;

  return v12(a3, a4);
}

uint64_t sub_1E5B6F8E4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B6FA20, v5, v4);
}

uint64_t sub_1E5B6FA20()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B6FA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 32) = a1;
  *(v6 + 40) = sub_1E5BF7084();
  *(v6 + 48) = sub_1E5BF7074();
  *(v6 + 56) = *a2;
  v11 = *(a2 + 40);
  v15 = (*(a2 + 32) + **(a2 + 32));
  v12 = *(*(a2 + 32) + 4);
  v13 = swift_task_alloc();
  *(v6 + 72) = v13;
  *v13 = v6;
  v13[1] = sub_1E5B6FBC0;

  return v15(a3, a4, a5);
}

uint64_t sub_1E5B6FBC0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v11 = *v1;
  v2[10] = v0;

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v11;
  if (v0)
  {
    v7 = sub_1E5B7002C;
  }

  else
  {
    v7 = sub_1E5B6FD80;
  }

  v6[1] = v7;
  v8 = v2[8];

  return v10();
}

uint64_t sub_1E5B6FD80()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 25);
  v10 = *v0;

  *(v1 + 16) = (v3 << 8) | 1;
  v4 = v1 + 16;
  *(v4 + 8) = 0x80;
  v5 = *(MEMORY[0x1E6999AF0] + 4);
  v6 = swift_task_alloc();
  *(v4 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E938, &qword_1E5BF95D8);
  *v6 = v10;
  v6[1] = sub_1E5B6FEF0;
  v8 = *(v4 + 16);

  return MEMORY[0x1EEE01A40](v4, v7);
}

uint64_t sub_1E5B6FEF0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B6C854, v5, v4);
}

uint64_t sub_1E5B7002C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B70168, v5, v4);
}

uint64_t sub_1E5B70168()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5B701D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 25) = a5;
  *(v5 + 32) = a1;
  *(v5 + 40) = sub_1E5BF7084();
  *(v5 + 48) = sub_1E5BF7074();
  *(v5 + 56) = *a2;
  v9 = *(a2 + 56);
  v13 = (*(a2 + 48) + **(a2 + 48));
  v10 = *(*(a2 + 48) + 4);
  v11 = swift_task_alloc();
  *(v5 + 72) = v11;
  *v11 = v5;
  v11[1] = sub_1E5B70308;

  return v13(a3, a4);
}

uint64_t sub_1E5B70308()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v11 = *v1;
  v2[10] = v0;

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v11;
  if (v0)
  {
    v7 = sub_1E5B70770;
  }

  else
  {
    v7 = sub_1E5B704C8;
  }

  v6[1] = v7;
  v8 = v2[8];

  return v10();
}

uint64_t sub_1E5B704C8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 25);
  v10 = *v0;

  *(v1 + 16) = v3 << 8;
  v4 = v1 + 16;
  *(v4 + 8) = 0x80;
  v5 = *(MEMORY[0x1E6999AF0] + 4);
  v6 = swift_task_alloc();
  *(v4 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E938, &qword_1E5BF95D8);
  *v6 = v10;
  v6[1] = sub_1E5B70634;
  v8 = *(v4 + 16);

  return MEMORY[0x1EEE01A40](v4, v7);
}

uint64_t sub_1E5B70634()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B71A1C, v5, v4);
}

uint64_t sub_1E5B70770()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B71A14, v5, v4);
}

uint64_t sub_1E5B708AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a3;
  *(v4 + 48) = sub_1E5BF7084();
  *(v4 + 56) = sub_1E5BF7074();
  v8 = *(a2 + 72);
  v12 = (*(a2 + 64) + **(a2 + 64));
  v9 = *(*(a2 + 64) + 4);
  v10 = swift_task_alloc();
  *(v4 + 64) = v10;
  *v10 = v4;
  v10[1] = sub_1E5B709D0;

  return v12(a3, a4);
}

uint64_t sub_1E5B709D0()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = sub_1E5BF7054();
  if (v2)
  {
    v8 = sub_1E5B70B2C;
  }

  else
  {
    v8 = sub_1E5B6D790;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5B70B2C()
{
  v21 = v0;
  v1 = *(v0 + 56);

  if (qword_1ED03E1D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v3 = sub_1E5BF6594();
  __swift_project_value_buffer(v3, qword_1ED053DE0);
  v4 = v2;
  v5 = sub_1E5BF6574();
  v6 = sub_1E5BF71C4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 72);
  if (v7)
  {
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 67109378;
    *(v10 + 4) = v9;
    *(v10 + 8) = 2080;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = sub_1E5BF7454();
    v17 = sub_1E5B89CE4(v15, v16, &v20);

    *(v10 + 10) = v17;
    _os_log_impl(&dword_1E5B54000, v5, v6, "Failed to present toast confirmation with added status: %{BOOL}d, error: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E6938270](v11, -1, -1);
    MEMORY[0x1E6938270](v10, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1E5B70D08(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5B708AC(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5B70E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B70E74(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5B6E314;

  return sub_1E5B701D8(a1, v1 + 16, v4, v5, v6);
}

uint64_t sub_1E5B70F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B70F98(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5B6E314;

  return sub_1E5B6FA84(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1E5B710C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6E314;

  return sub_1E5B6F580(a1, (v1 + 16));
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1E5B711C4(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6D9A0;

  return sub_1E5B6F7C4(a1, v1 + 16, v4, v5);
}

unint64_t sub_1E5B71274()
{
  result = qword_1ED03E8A8;
  if (!qword_1ED03E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8A8);
  }

  return result;
}

unint64_t sub_1E5B712CC()
{
  result = qword_1ED03E8B0;
  if (!qword_1ED03E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8B0);
  }

  return result;
}

unint64_t sub_1E5B71324()
{
  result = qword_1ED03E8B8;
  if (!qword_1ED03E8B8)
  {
    type metadata accessor for StackButtonState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8B8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E5B71398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E5B713E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14FitnessActions18StackButtonFeatureV14TaskIdentifier33_849F923ECF76723D0306BF17E1AFAA7CLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1E5B71460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5B714A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1E5B714EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1E5B71518()
{
  result = qword_1ED03E8C0;
  if (!qword_1ED03E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8C0);
  }

  return result;
}

void *sub_1E5B715D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E8F8, &qword_1E5BF9598);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E900, &qword_1E5BF95A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E5B71778(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

uint64_t sub_1E5B71960(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 != 1)
      {
        return 0;
      }
    }

    else if (a6)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a6 == 3)
        {
          return (a4 ^ a1 ^ 1) & 1;
        }

        return 0;
      }

      return a6 == 4 && !(a5 | a4);
    }

    if (a6 != 2)
    {
      return 0;
    }
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1E5BF7444();
}

uint64_t sub_1E5B71A20()
{
  sub_1E5B72C04(v0, &v6);
  if (v9 <= 1u)
  {
    v3 = v6;
    v4 = v7;
    v5 = v8;
    if (v9)
    {
      v1 = 2;
    }

    else
    {
      v1 = 0;
    }

    goto LABEL_7;
  }

  if (v9 == 2)
  {
    v3 = v6;
    v4 = v7;
    v5 = v8;
    v1 = 3;
LABEL_7:
    MEMORY[0x1E6937C10](v1);
    sub_1E5BF7244();
    return sub_1E5B6E230(&v3);
  }

  return MEMORY[0x1E6937C10](1);
}

uint64_t sub_1E5B71ADC()
{
  sub_1E5BF74B4();
  sub_1E5B71A20();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B71B20()
{
  sub_1E5BF74B4();
  sub_1E5B71A20();
  return sub_1E5BF7504();
}

__n128 SampleContentButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t SampleContentButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, void **a3, int64_t a4, int a5)
{
  LODWORD(v142) = a5;
  v143 = a4;
  v139 = a3;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E930, &qword_1E5BF95D0);
  v141 = *(v140 - 8);
  v7 = *(v141 + 64);
  v8 = MEMORY[0x1EEE9AC00](v140);
  v138 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v137 = &v127 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v132 = &v127 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v131 = &v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  v135 = *(v15 - 8);
  v16 = *(v135 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v127 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v133 = *(v20 - 8);
  v21 = *(v133 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v134 = (&v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v127 - v23;
  v25 = v5[3];
  v152 = v5[2];
  v153 = v25;
  v154 = v5[4];
  v26 = v5[1];
  v150 = *v5;
  v151 = v26;
  v28 = *a2;
  v27 = *(a2 + 1);
  v29 = type metadata accessor for SampleContentButtonState();
  v30 = &a2[v29[8]];
  v144 = v24;
  sub_1E5B5F864(v30, v24, &qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B5F864(&a2[v29[9]], v19, &qword_1ED03E948, &qword_1E5BFD480);
  if (v142)
  {
    if (v142 == 1)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v142 = v31[12];
      v32 = v31[16];
      v33 = v31[20];
      v34 = v138;
      v137 = &v138[v31[24]];
      v129 = v28;
      v145 = v28;
      v35 = v27;
      v146 = v27;
      swift_bridgeObjectRetain_n();
      sub_1E5BF7254();
      v149 = 2;
      sub_1E5B72C04(v147, &v145);
      sub_1E5B72C3C();
      sub_1E5BF7254();
      sub_1E5B72C90(v147);
      v36 = *MEMORY[0x1E6999B50];
      v37 = sub_1E5BF6E24();
      (*(*(v37 - 8) + 104))(&v34[v32], v36, v37);
      v38 = *MEMORY[0x1E6999B40];
      v39 = sub_1E5BF6E14();
      (*(*(v39 - 8) + 104))(&v34[v33], v38, v39);
      v130 = v19;
      v40 = v136;
      sub_1E5B5F864(v19, v136, &qword_1ED03E948, &qword_1E5BFD480);
      v41 = v134;
      sub_1E5B5F864(v144, v134, &qword_1ED03E950, &unk_1E5BF95F0);
      v42 = (*(v135 + 80) + 16) & ~*(v135 + 80);
      v43 = (v16 + *(v133 + 80) + v42) & ~*(v133 + 80);
      v44 = (v21 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = (v44 + 87) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      sub_1E5B5F8D4(v40, v46 + v42, &qword_1ED03E948, &qword_1E5BFD480);
      sub_1E5B5F8D4(v41, v46 + v43, &qword_1ED03E950, &unk_1E5BF95F0);
      v47 = (v46 + v44);
      v48 = v153;
      v47[2] = v152;
      v47[3] = v48;
      v47[4] = v154;
      v49 = v151;
      *v47 = v150;
      v47[1] = v49;
      v50 = (v46 + v45);
      *v50 = v129;
      v50[1] = v35;
      *(v46 + ((v45 + 23) & 0xFFFFFFFFFFFFFFF8)) = v143;
      v51 = v137;
      *v137 = &unk_1E5BF9630;
      *(v51 + 1) = v46;
      sub_1E5B74298(&v150, &v145);
      sub_1E5BF7094();
      v52 = v141;
      v53 = v34;
      v54 = v140;
      (*(v141 + 104))(v53, *MEMORY[0x1E6999AD8], v140);
      v55 = v139;
      v56 = *v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1E5B7156C(0, v56[2] + 1, 1, v56);
      }

      v58 = v56[2];
      v57 = v56[3];
      v59 = v130;
      if (v58 >= v57 >> 1)
      {
        v126 = v130;
        v56 = sub_1E5B7156C(v57 > 1, v58 + 1, 1, v56);
        v59 = v126;
      }

      sub_1E5B5F804(v59, &qword_1ED03E948, &qword_1E5BFD480);
      sub_1E5B5F804(v144, &qword_1ED03E950, &unk_1E5BF95F0);
      v56[2] = v58 + 1;
      result = (*(v52 + 32))(v56 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v58, v138, v54);
      *v55 = v56;
      return result;
    }

    if (v143 > 1)
    {
      if (v143 == 2)
      {
        sub_1E5B5F804(v19, &qword_1ED03E948, &qword_1E5BFD480);
        sub_1E5B5F804(v144, &qword_1ED03E950, &unk_1E5BF95F0);
        v80 = v29[10];
        goto LABEL_26;
      }

      if (v143 == 3)
      {
        sub_1E5B5F804(v19, &qword_1ED03E948, &qword_1E5BFD480);
        sub_1E5B5F804(v144, &qword_1ED03E950, &unk_1E5BF95F0);
        v80 = v29[11];
LABEL_26:
        sub_1E5B5F804(&a2[v80], &qword_1ED03E5C0, &unk_1E5BF8A20);
        v120 = v29[7];
        v121 = sub_1E5BF6494();
        v122 = *(v121 - 8);
        (*(v122 + 16))(&a2[v80], &a2[v120], v121);
        (*(v122 + 56))(&a2[v80], 0, 1, v121);
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
        return (*(*(v123 - 8) + 56))(&a2[v80], 0, 1, v123);
      }

      sub_1E5B5F804(v19, &qword_1ED03E948, &qword_1E5BFD480);
      sub_1E5B5F804(v144, &qword_1ED03E950, &unk_1E5BF95F0);
      v124 = v29[11];
LABEL_29:
      sub_1E5B5F804(&a2[v124], &qword_1ED03E5C0, &unk_1E5BF8A20);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      return (*(*(v125 - 8) + 56))(&a2[v124], 1, 1, v125);
    }

    if (v143)
    {
      sub_1E5B5F804(v19, &qword_1ED03E948, &qword_1E5BFD480);
      sub_1E5B5F804(v144, &qword_1ED03E950, &unk_1E5BF95F0);
      v124 = v29[10];
      goto LABEL_29;
    }

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v82 = v81[12];
    v83 = v81[16];
    v84 = v81[20];
    v85 = v131;
    v86 = &v131[v81[24]];
    v145 = v28;
    v146 = v27;
    swift_bridgeObjectRetain_n();
    sub_1E5BF7254();
    v149 = 1;
    sub_1E5B72C04(v147, &v145);
    v143 = sub_1E5B72C3C();
    sub_1E5BF7254();
    sub_1E5B72C90(v147);
    v87 = *MEMORY[0x1E6999B50];
    v88 = sub_1E5BF6E24();
    v89 = *(v88 - 8);
    v90 = *(v89 + 104);
    LODWORD(v142) = v87;
    v138 = v88;
    v137 = v90;
    v136 = v89 + 104;
    (v90)(&v85[v83], v87);
    v91 = *MEMORY[0x1E6999B40];
    v92 = sub_1E5BF6E14();
    v93 = *(v92 - 8);
    v94 = *(v93 + 104);
    LODWORD(v135) = v91;
    v134 = v94;
    v133 = v93 + 104;
    (v94)(&v85[v84], v91, v92);
    v95 = swift_allocObject();
    v96 = v153;
    *(v95 + 48) = v152;
    *(v95 + 64) = v96;
    *(v95 + 80) = v154;
    v97 = v151;
    *(v95 + 16) = v150;
    *(v95 + 32) = v97;
    *(v95 + 96) = v28;
    *(v95 + 104) = v27;
    *v86 = &unk_1E5BF9650;
    *(v86 + 1) = v95;
    sub_1E5B74298(&v150, &v145);
    sub_1E5BF7094();
    v98 = v85;
    v99 = *MEMORY[0x1E6999AD8];
    v100 = v140;
    v129 = *(v141 + 104);
    v129(v98, v99, v140);
    v101 = *v139;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_1E5B7156C(0, v101[2] + 1, 1, v101);
    }

    v103 = v101[2];
    v102 = v101[3];
    v130 = v19;
    if (v103 >= v102 >> 1)
    {
      v101 = sub_1E5B7156C(v102 > 1, v103 + 1, 1, v101);
    }

    v101[2] = v103 + 1;
    v104 = *(v141 + 32);
    v128 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v105 = *(v141 + 72);
    v106 = v131;
    v141 += 32;
    v131 = v104;
    (v104)(v101 + v128 + v105 * v103, v106, v100);
    v107 = v81[12];
    v108 = v81[16];
    v109 = v81[20];
    v110 = v132;
    v111 = &v132[v81[24]];
    v148 = 0;
    memset(v147, 0, sizeof(v147));
    v149 = 3;
    sub_1E5B72C04(v147, &v145);
    sub_1E5BF7254();
    sub_1E5B72C90(v147);
    v112 = &v110[v108];
    v113 = v140;
    (v137)(v112, v142, v138);
    (v134)(&v110[v109], v135, v92);
    v114 = swift_allocObject();
    v115 = v153;
    v114[3] = v152;
    v114[4] = v115;
    v114[5] = v154;
    v116 = v151;
    v114[1] = v150;
    v114[2] = v116;
    *v111 = &unk_1E5BF9660;
    *(v111 + 1) = v114;
    sub_1E5B74298(&v150, &v145);
    sub_1E5BF7094();
    v129(v110, v99, v113);
    v118 = v101[2];
    v117 = v101[3];
    if (v118 >= v117 >> 1)
    {
      v101 = sub_1E5B7156C(v117 > 1, v118 + 1, 1, v101);
    }

    v119 = v139;
    sub_1E5B5F804(v130, &qword_1ED03E948, &qword_1E5BFD480);
    sub_1E5B5F804(v144, &qword_1ED03E950, &unk_1E5BF95F0);
    v101[2] = v118 + 1;
    result = (v131)(v101 + v128 + v118 * v105, v132, v113);
    *v119 = v101;
  }

  else
  {
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v62 = v61[12];
    v63 = v61[16];
    v64 = v61[20];
    v65 = v137;
    v66 = &v137[v61[24]];
    v145 = v28;
    v146 = v27;

    sub_1E5BF7254();
    v149 = 0;
    sub_1E5B72C04(v147, &v145);
    sub_1E5B72C3C();
    sub_1E5BF7254();
    sub_1E5B72C90(v147);
    v67 = *MEMORY[0x1E6999B50];
    v68 = sub_1E5BF6E24();
    (*(*(v68 - 8) + 104))(&v65[v63], v67, v68);
    v69 = *MEMORY[0x1E6999B40];
    v70 = sub_1E5BF6E14();
    (*(*(v70 - 8) + 104))(&v65[v64], v69, v70);
    v71 = swift_allocObject();
    v72 = v153;
    *(v71 + 48) = v152;
    *(v71 + 64) = v72;
    *(v71 + 80) = v154;
    v73 = v151;
    *(v71 + 16) = v150;
    *(v71 + 32) = v73;
    *(v71 + 96) = v143;
    *v66 = &unk_1E5BF9640;
    *(v66 + 1) = v71;
    sub_1E5B74298(&v150, &v145);
    sub_1E5BF7094();
    v74 = v141;
    v75 = v140;
    (*(v141 + 104))(v65, *MEMORY[0x1E6999AD8], v140);
    v76 = v139;
    v77 = *v139;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_1E5B7156C(0, v77[2] + 1, 1, v77);
    }

    v79 = v77[2];
    v78 = v77[3];
    if (v79 >= v78 >> 1)
    {
      v77 = sub_1E5B7156C(v78 > 1, v79 + 1, 1, v77);
    }

    sub_1E5B5F804(v19, &qword_1ED03E948, &qword_1E5BFD480);
    sub_1E5B5F804(v144, &qword_1ED03E950, &unk_1E5BF95F0);
    v77[2] = v79 + 1;
    result = (*(v74 + 32))(v77 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v79, v65, v75);
    *v76 = v77;
  }

  return result;
}

unint64_t sub_1E5B72C3C()
{
  result = qword_1ED03E958;
  if (!qword_1ED03E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E958);
  }

  return result;
}

uint64_t sub_1E5B72CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5BF7084();
  v4[3] = sub_1E5BF7074();
  v8 = *(a2 + 72);
  v12 = (*(a2 + 64) + **(a2 + 64));
  v9 = *(*(a2 + 64) + 4);
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1E5B6F688;

  return v12(a3, a4);
}

uint64_t sub_1E5B72DE0(uint64_t a1, int **a2)
{
  v2[2] = sub_1E5BF7084();
  v2[3] = sub_1E5BF7074();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6F8E4;

  return v8();
}

uint64_t sub_1E5B72EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  *(v3 + 80) = sub_1E5BF7084();
  *(v3 + 88) = sub_1E5BF7074();
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(v3 + 96) = *(a2 + 48);
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v3 + 112) = v8;
  *v8 = v3;
  v8[1] = sub_1E5B72FFC;

  return v10();
}

uint64_t sub_1E5B72FFC()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 120) = v0;

  if (v0)
  {
    *(v3 + 16) = 3;
    *(v3 + 24) = 2;
    v4 = *(MEMORY[0x1E6999AF0] + 4);
    v5 = swift_task_alloc();
    *(v3 + 152) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9A0, &qword_1E5BF9838);
    *v5 = v3;
    v5[1] = sub_1E5B735B8;
    v7 = *(v3 + 64);

    return MEMORY[0x1EEE01A40](v3 + 16, v6);
  }

  else
  {
    v12 = (*(v3 + 96) + **(v3 + 96));
    v8 = *(*(v3 + 96) + 4);
    v9 = swift_task_alloc();
    *(v3 + 128) = v9;
    *v9 = v3;
    v9[1] = sub_1E5B73234;
    v10 = *(v3 + 104);

    return v12();
  }
}

uint64_t sub_1E5B73234()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 136) = v0;

  if (v0)
  {
    *(v3 + 32) = 2;
    v4 = v3 + 32;
    *(v3 + 40) = 2;
    v5 = *(MEMORY[0x1E6999AF0] + 4);
    v6 = swift_task_alloc();
    *(v3 + 160) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9A0, &qword_1E5BF9838);
    *v6 = v3;
    v6[1] = sub_1E5B73764;
  }

  else
  {
    *(v3 + 48) = *(v3 + 72);
    v4 = v3 + 48;
    *(v3 + 56) = 1;
    v9 = *(MEMORY[0x1E6999AF0] + 4);
    v10 = swift_task_alloc();
    *(v3 + 144) = v10;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9A0, &qword_1E5BF9838);
    *v10 = v3;
    v10[1] = sub_1E5B73418;
  }

  v8 = *(v3 + 64);

  return MEMORY[0x1EEE01A40](v4, v7);
}

uint64_t sub_1E5B73418()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B73554, v5, v4);
}

uint64_t sub_1E5B73554()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B735B8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B736F4, v5, v4);
}

uint64_t sub_1E5B736F4()
{
  v1 = v0[15];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5B73764()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B738A0, v5, v4);
}

uint64_t sub_1E5B738A0()
{
  v1 = v0[17];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5B73910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v7[8] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  v7[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();
  sub_1E5BF7084();
  v7[15] = sub_1E5BF7074();
  v16 = sub_1E5BF7054();
  v7[16] = v16;
  v7[17] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1E5B73A90, v16, v15);
}

uint64_t sub_1E5B73A90()
{
  v1 = v0[10];
  sub_1E5B5F864(v0[2], v0[11], &qword_1ED03E948, &qword_1E5BFD480);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = v0[15];
    v15 = v0[11];

    v16 = &qword_1ED03E948;
    v17 = &qword_1E5BFD480;
    v18 = v15;
    goto LABEL_7;
  }

  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E968, &unk_1E5BF9620) + 48);
  (*(v3 + 32))(v2, v5, v4);
  v7 = sub_1E5BF6464();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v9 = sub_1E5BF6554();
  v0[18] = v9;
  if (!v9)
  {
    v19 = v0[15];
    (*(v0[13] + 8))(v0[14], v0[12]);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = v0[8];
  sub_1E5B5F864(v0[3], v0[9], &qword_1ED03E950, &unk_1E5BF95F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v13 = v0[15];
      (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_9:

      goto LABEL_10;
    }

    v30 = v0[15];
    v31 = v0[9];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v16 = &qword_1ED03E950;
    v17 = &unk_1E5BF95F0;
    v18 = v31;
LABEL_7:
    sub_1E5B5F804(v18, v16, v17);
LABEL_10:
    v20 = v0[14];
    v21 = v0[11];
    v22 = v0[9];

    v23 = v0[1];

    return v23();
  }

  if (EnumCaseMultiPayload)
  {
    v32 = v0[9];
    v26 = *(v32 + 8);
    v27 = *(v32 + 24);
    v28 = *(v32 + 32);
    v29 = *(v32 + 40);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440);
    v8(v32 + *(v33 + 48), v7);
  }

  else
  {
    v25 = v0[9];
    v26 = *(v25 + 8);
    v27 = *(v25 + 24);
    v28 = *(v25 + 32);
    v29 = *(v25 + 40);
  }

  v0[20] = v27;
  v0[21] = v28;
  v0[19] = v26;
  v34 = v0[4];
  v35 = *(v34 + 24);
  v42 = (*(v34 + 16) + **(v34 + 16));
  v36 = *(*(v34 + 16) + 4);
  v37 = swift_task_alloc();
  v0[22] = v37;
  *v37 = v0;
  v37[1] = sub_1E5B73E1C;
  v38 = v0[6];
  v39 = v0[7];
  v40 = v0[5];
  v41.n128_u64[0] = 0;

  return v42(v40, v38, v39, v29, v10, v41);
}

uint64_t sub_1E5B73E1C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v11 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1E5B74004;
  }

  else
  {
    v8 = v2[20];
    v7 = v2[21];
    v9 = v2[19];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1E5B73F54;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5B73F54()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];

  (*(v5 + 8))(v3, v4);
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E5B74004()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  v10 = v0[9];

  (*(v8 + 8))(v6, v7);

  v11 = v0[1];
  v12 = v0[23];

  return v11();
}

uint64_t sub_1E5B740E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 87) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v1 + v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v11);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1E5B6D9A0;

  return sub_1E5B73910(a1, v1 + v5, v1 + v8, v1 + v9, v13, v14, v15);
}

uint64_t sub_1E5B742E4(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6E314;

  return sub_1E5B72EE8(a1, v1 + 16, v4);
}

uint64_t sub_1E5B7438C(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5B72CC0(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5B74438(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6E314;

  return sub_1E5B72DE0(a1, (v1 + 16));
}

unint64_t sub_1E5B744D4()
{
  result = qword_1ED03E978;
  if (!qword_1ED03E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E978);
  }

  return result;
}

unint64_t sub_1E5B7452C()
{
  result = qword_1ED03E980;
  if (!qword_1ED03E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E980);
  }

  return result;
}

unint64_t sub_1E5B74584()
{
  result = qword_1ED03E988;
  if (!qword_1ED03E988)
  {
    type metadata accessor for SampleContentButtonState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E988);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14FitnessActions26SampleContentButtonFeatureV14TaskIdentifier33_E117A2A71084C6892795640FD1E3F9C1LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
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

uint64_t sub_1E5B7461C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B74658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5B746A4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1E5B746E0()
{
  result = qword_1ED03E990;
  if (!qword_1ED03E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E990);
  }

  return result;
}

uint64_t sub_1E5B74734(uint64_t a1, uint64_t a2)
{
  sub_1E5B72C04(a1, v9);
  sub_1E5B72C04(a2, v11);
  if (v10 > 1u)
  {
    if (v10 != 2)
    {
      if (v12 == 3)
      {
        v4 = vorrq_s8(*&v11[8], *&v11[24]);
        if (!(*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *v11))
        {
          sub_1E5B72C90(v9);
          v3 = 1;
          return v3 & 1;
        }
      }

      goto LABEL_12;
    }

    sub_1E5B72C04(v9, v8);
    if (v12 != 2)
    {
LABEL_4:
      sub_1E5B6E230(v8);
LABEL_12:
      sub_1E5B5F804(v9, &qword_1ED03E998, &qword_1E5BF9830);
      v3 = 0;
      return v3 & 1;
    }
  }

  else if (v10)
  {
    sub_1E5B72C04(v9, v8);
    if (v12 != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_1E5B72C04(v9, v8);
    if (v12)
    {
      goto LABEL_4;
    }
  }

  v6[0] = *v11;
  v6[1] = *&v11[16];
  v7 = *&v11[32];
  v3 = MEMORY[0x1E6937980](v8, v6);
  sub_1E5B6E230(v6);
  sub_1E5B6E230(v8);
  sub_1E5B72C90(v9);
  return v3 & 1;
}

unint64_t sub_1E5B74884()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x6570704177656976;
  }

  *v0;
  return result;
}

uint64_t sub_1E5B748CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07830 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5B749B4(uint64_t a1)
{
  v2 = sub_1E5B74DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B749F0(uint64_t a1)
{
  v2 = sub_1E5B74DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B74A2C(uint64_t a1)
{
  v2 = sub_1E5B74E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B74A68(uint64_t a1)
{
  v2 = sub_1E5B74E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B74AA4(uint64_t a1)
{
  v2 = sub_1E5B74E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B74AE0(uint64_t a1)
{
  v2 = sub_1E5B74E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewButtonAction.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9A8, &qword_1E5BF9850);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9B0, &qword_1E5BF9858);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9B8, &qword_1E5BF9860);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B74DD8();
  sub_1E5BF7524();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E5B74E2C();
    sub_1E5BF7394();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E5B74E80();
    sub_1E5BF7394();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1E5B74DD8()
{
  result = qword_1ED03E9C0;
  if (!qword_1ED03E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9C0);
  }

  return result;
}

unint64_t sub_1E5B74E2C()
{
  result = qword_1ED03E9C8;
  if (!qword_1ED03E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9C8);
  }

  return result;
}

unint64_t sub_1E5B74E80()
{
  result = qword_1ED03E9D0;
  if (!qword_1ED03E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9D0);
  }

  return result;
}

uint64_t PreviewButtonAction.hashValue.getter(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B74F60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5B74FAC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1E5B74FAC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EA18, &qword_1E5BF9BD8);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EA20, &qword_1E5BF9BE0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03EA28, &qword_1E5BF9BE8);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B74DD8();
  v15 = v32;
  sub_1E5BF7514();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1E5BF7374();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1E5B7FB0C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1E5BF7284();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v24 = &type metadata for PreviewButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1E5B74E2C();
    sub_1E5BF72C4();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1E5B74E80();
    sub_1E5BF72C4();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_1E5B7546C()
{
  result = qword_1ED03E9D8;
  if (!qword_1ED03E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewLoadError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewLoadError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5B75644()
{
  result = qword_1ED03E9E0;
  if (!qword_1ED03E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9E0);
  }

  return result;
}

unint64_t sub_1E5B7569C()
{
  result = qword_1ED03E9E8;
  if (!qword_1ED03E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9E8);
  }

  return result;
}

unint64_t sub_1E5B756F4()
{
  result = qword_1ED03E9F0;
  if (!qword_1ED03E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9F0);
  }

  return result;
}

unint64_t sub_1E5B7574C()
{
  result = qword_1ED03E9F8;
  if (!qword_1ED03E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9F8);
  }

  return result;
}

unint64_t sub_1E5B757A4()
{
  result = qword_1ED03EA00;
  if (!qword_1ED03EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EA00);
  }

  return result;
}

unint64_t sub_1E5B757FC()
{
  result = qword_1ED03EA08;
  if (!qword_1ED03EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EA08);
  }

  return result;
}

unint64_t sub_1E5B75854()
{
  result = qword_1ED03EA10;
  if (!qword_1ED03EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EA10);
  }

  return result;
}

uint64_t PreviewButtonEnvironment.init(resolvePreviewConfiguration:presentPreviewPlayer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5B758D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5B75918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E5B75960(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5B759B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB40, qword_1E5BF9D30);
  sub_1E5B5FC8C(&qword_1EE2C6268, &qword_1ED03EB40, qword_1E5BF9D30);

  return sub_1E5BF6614();
}

uint64_t sub_1E5B75A58()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB48, &qword_1E5BF9D48);
  sub_1E5BF6C54();
  return v2;
}

uint64_t sub_1E5B75AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  sub_1E5B76870();
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5B75B4C(uint64_t a1))(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  sub_1E5B76870();
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 32) = v7;
  return sub_1E5B78658;
}

uint64_t AccountButton.init(store:contactDataProvider:avatarViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *a8 = sub_1E5B62F34;
  *(a8 + 8) = v16;
  *(a8 + 16) = 0;

  a3(v17);
  type metadata accessor for AccountButtonContactDataProvider();
  sub_1E5BF6C44();
  *(a8 + 24) = v20;
  *(a8 + 32) = v21;
  v18 = a8 + *(type metadata accessor for AccountButton() + 40);
  sub_1E5B75AA8(a4, a5, a6, a7);
}

uint64_t AccountButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v69 = a1;
  v77 = *(a1 - 8);
  v75 = *(v77 + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v76 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 16);
  v6 = sub_1E5BF66E4();
  v7 = *(a1 + 24);
  v95 = v7;
  v96 = MEMORY[0x1E697E040];
  v68 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E6981CD8];
  v87 = v5;
  v88 = MEMORY[0x1E6981CD8];
  v10 = v5;
  v74 = v5;
  v89 = v6;
  v90 = v6;
  v11 = MEMORY[0x1E6981CD0];
  v91 = v7;
  v92 = MEMORY[0x1E6981CD0];
  v73 = v7;
  v93 = WitnessTable;
  v94 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF71F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB0, &qword_1E5BF9C58);
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB8, &qword_1E5BF9C60);
  v72 = sub_1E5BF66E4();
  v87 = v10;
  v88 = v9;
  v89 = v6;
  v90 = v6;
  v91 = v7;
  v92 = v11;
  v93 = WitnessTable;
  v94 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = swift_getWitnessTable();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
  v16 = sub_1E5B7656C();
  v87 = v9;
  v88 = v11;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1E5B76768();
  v87 = v13;
  v88 = v14;
  v89 = v15;
  v90 = v16;
  v91 = v17;
  v92 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v84 = v12;
  v85 = v19;
  v83 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = sub_1E5B5FC8C(&qword_1ED03EB30, &qword_1ED03EAB8, &qword_1E5BF9C60);
  v81 = v20;
  v82 = v21;
  v61 = swift_getWitnessTable();
  v22 = sub_1E5BF6CB4();
  v67 = *(v22 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v59 = &v58 - v24;
  v25 = swift_getWitnessTable();
  v68 = v22;
  v87 = v22;
  v88 = MEMORY[0x1E69E6370];
  v64 = v25;
  v89 = v25;
  v90 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v65 + 64);
  v27 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v62 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v63 = &v58 - v29;
  v30 = v77;
  v31 = v76;
  v32 = v70;
  v33 = v69;
  v60 = *(v77 + 16);
  v60(v76, v70, v69);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v36 = v74;
  v37 = v73;
  *(v35 + 16) = v74;
  *(v35 + 24) = v37;
  v38 = v30 + 32;
  v39 = *(v30 + 32);
  v77 = v38;
  v39(v35 + v34, v31, v33);
  v40 = v37;
  v41 = v59;
  v78 = v36;
  v79 = v40;
  v80 = v32;
  sub_1E5BF6C84();
  v42 = sub_1E5B75A58();
  swift_getKeyPath();
  v87 = v42;
  sub_1E5B78108();
  sub_1E5BF64D4();

  v43 = *(v42 + 16);
  v44 = v43;

  if (v43)
  {
  }

  LOBYTE(v87) = v43 != 0;
  v45 = v76;
  v60(v76, v32, v33);
  v46 = swift_allocObject();
  v47 = v73;
  *(v46 + 16) = v74;
  *(v46 + 24) = v47;
  v39(v46 + v34, v45, v33);
  v48 = v62;
  v49 = v68;
  v50 = MEMORY[0x1E69E6370];
  v51 = v64;
  v52 = MEMORY[0x1E69E6388];
  sub_1E5BF6B54();

  (*(v67 + 8))(v41, v49);
  v87 = v49;
  v88 = v50;
  v89 = v51;
  v90 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v63;
  v55 = OpaqueTypeMetadata2;
  sub_1E5B64D48(v48, OpaqueTypeMetadata2, v53);
  v56 = *(v65 + 8);
  v56(v48, v55);
  sub_1E5B64D48(v54, v55, v53);
  return (v56)(v54, v55);
}

unint64_t sub_1E5B7656C()
{
  result = qword_1ED03EAD8;
  if (!qword_1ED03EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
    sub_1E5B765F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EAD8);
  }

  return result;
}

unint64_t sub_1E5B765F8()
{
  result = qword_1ED03EAE0;
  if (!qword_1ED03EAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAE8, &qword_1E5BF9C80);
    sub_1E5B766B0();
    sub_1E5B5FC8C(&qword_1ED03EB08, &qword_1ED03EB10, &qword_1E5BF9C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EAE0);
  }

  return result;
}

unint64_t sub_1E5B766B0()
{
  result = qword_1ED03EAF0;
  if (!qword_1ED03EAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAF8, &qword_1E5BF9C88);
    sub_1E5B5FC8C(&qword_1EE2C62F0, &qword_1ED03EB00, &qword_1E5C042E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EAF0);
  }

  return result;
}

unint64_t sub_1E5B76768()
{
  result = qword_1ED03EB18;
  if (!qword_1ED03EB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
    sub_1E5B7656C();
    sub_1E5B5FC8C(&qword_1ED03EB20, &qword_1ED03EB28, &unk_1E5BFAD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EB18);
  }

  return result;
}

uint64_t sub_1E5B76820()
{
  type metadata accessor for AccountButton();
  sub_1E5B759B8();
  sub_1E5BF6E44();
}

unint64_t sub_1E5B76870()
{
  result = qword_1EE2C6200;
  if (!qword_1EE2C6200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2C6200);
  }

  return result;
}

uint64_t sub_1E5B768BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for AccountButton() - 8) + 80);

  return sub_1E5B76820();
}

uint64_t sub_1E5B76940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v40 = a4;
  v6 = sub_1E5BF66E4();
  v58 = a3;
  v59 = MEMORY[0x1E697E040];
  v39 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v50 = a2;
  v51 = MEMORY[0x1E6981CD8];
  v52 = v6;
  v53 = v6;
  v54 = a3;
  v55 = MEMORY[0x1E6981CD0];
  v56 = WitnessTable;
  v57 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF71F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB0, &qword_1E5BF9C58);
  v35 = sub_1E5BF6874();
  v8 = sub_1E5BF6BD4();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB8, &qword_1E5BF9C60);
  v12 = sub_1E5BF66E4();
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v33 - v17;
  v41 = a2;
  v42 = a3;
  v43 = v34;
  v50 = a2;
  v51 = MEMORY[0x1E6981CD8];
  v52 = v6;
  v53 = v6;
  v54 = a3;
  v55 = MEMORY[0x1E6981CD0];
  v56 = WitnessTable;
  v57 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = swift_getWitnessTable();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
  v22 = sub_1E5B7656C();
  v50 = MEMORY[0x1E6981CD8];
  v51 = MEMORY[0x1E6981CD0];
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1E5B76768();
  v50 = v19;
  v51 = v20;
  v52 = v21;
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v47 = v18;
  v48 = v25;
  v26 = swift_getWitnessTable();
  sub_1E5BF6BC4();
  v46 = v26;
  v27 = swift_getWitnessTable();
  sub_1E5B7855C();
  sub_1E5BF6B84();
  (*(v37 + 8))(v11, v8);
  v28 = sub_1E5B5FC8C(&qword_1ED03EB30, &qword_1ED03EAB8, &qword_1E5BF9C60);
  v44 = v27;
  v45 = v28;
  v29 = swift_getWitnessTable();
  v30 = v36;
  sub_1E5B64D48(v16, v12, v29);
  v31 = *(v38 + 8);
  v31(v16, v12);
  sub_1E5B64D48(v30, v12, v29);
  return (v31)(v30, v12);
}

uint64_t sub_1E5B76E54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v112 = a3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  v104 = *(v111 - 8);
  v5 = v104[8];
  MEMORY[0x1EEE9AC00](v111);
  v103 = &v95 - v6;
  v98 = sub_1E5BF69B4();
  v7 = *(v98 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAB0, &qword_1E5BF9C58);
  v101 = *(v11 - 8);
  v12 = *(v101 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v105 = &v95 - v14;
  v97 = *(a1 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5BF66E4();
  v135 = a2;
  v136 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  *&v128 = a1;
  *(&v128 + 1) = MEMORY[0x1E6981CD8];
  *&v129 = v17;
  *(&v129 + 1) = v17;
  v114 = v17;
  *&v130 = a2;
  *(&v130 + 1) = MEMORY[0x1E6981CD0];
  *&v131 = WitnessTable;
  *(&v131 + 1) = WitnessTable;
  v115 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v100 + 64);
  v21 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v95 - v24;
  v25 = sub_1E5BF71F4();
  v102 = *(v25 - 8);
  v26 = *(v102 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v99 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v95 - v29;
  v110 = v11;
  v109 = sub_1E5BF6874();
  v108 = *(v109 - 8);
  v30 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v95 - v31;
  v113 = a1;
  v116 = a2;
  v32 = type metadata accessor for AccountButton();
  sub_1E5B759B8();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (v134 == 1)
  {
    v105 = v25;
    v33 = v113;
    v34 = sub_1E5B75A58();
    swift_getKeyPath();
    *&v128 = v34;
    sub_1E5B78108();
    sub_1E5BF64D4();

    v35 = *(v34 + 16);
    v36 = v35;

    if (v35)
    {
      v37 = sub_1E5B75B4C(v32);
      v38 = v96;
      v37(v36);

      v39 = sub_1E5BF6D74();
      v104 = &v95;
      v40 = MEMORY[0x1EEE9AC00](v39);
      v41 = v116;
      MEMORY[0x1EEE9AC00](v40);
      v42 = swift_checkMetadataState();
      v43 = v115;
      v44 = MEMORY[0x1E6981CD8];
      sub_1E5BF6B64();

      (*(v97 + 8))(v38, v33);
      *&v128 = v33;
      *(&v128 + 1) = v44;
      *&v129 = v42;
      *(&v129 + 1) = v42;
      *&v130 = v41;
      *(&v130 + 1) = MEMORY[0x1E6981CD0];
      *&v131 = v43;
      *(&v131 + 1) = v43;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v46 = v95;
      sub_1E5B64D48(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
      v47 = v100;
      v48 = *(v100 + 8);
      v48(v23, OpaqueTypeMetadata2);
      sub_1E5B64D48(v46, OpaqueTypeMetadata2, OpaqueTypeConformance2);
      v48(v46, OpaqueTypeMetadata2);
      v49 = v33;
      v50 = v99;
      (*(v47 + 32))(v99, v23, OpaqueTypeMetadata2);
      v51 = 0;
    }

    else
    {
      v51 = 1;
      v49 = v33;
      v50 = v99;
      v47 = v100;
    }

    (*(v47 + 56))(v50, v51, 1, OpaqueTypeMetadata2);
    v69 = v102;
    v70 = v106;
    v71 = v105;
    (*(v102 + 16))(v106, v50, v105);
    v72 = *(v69 + 8);
    v72(v50, v71);
    *&v128 = v49;
    v73 = MEMORY[0x1E6981CD8];
    *(&v128 + 1) = MEMORY[0x1E6981CD8];
    *&v129 = v114;
    *(&v129 + 1) = v114;
    *&v130 = v116;
    v74 = MEMORY[0x1E6981CD0];
    *(&v130 + 1) = MEMORY[0x1E6981CD0];
    *&v131 = v115;
    *(&v131 + 1) = v115;
    v117 = swift_getOpaqueTypeConformance2();
    v75 = swift_getWitnessTable();
    sub_1E5B64D48(v70, v71, v75);
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
    v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
    v78 = sub_1E5B7656C();
    *&v128 = v73;
    *(&v128 + 1) = v74;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = sub_1E5B76768();
    v66 = v111;
    *&v128 = v76;
    *(&v128 + 1) = v111;
    *&v129 = v77;
    *(&v129 + 1) = v78;
    *&v130 = v79;
    *(&v130 + 1) = v80;
    swift_getOpaqueTypeConformance2();
    v81 = v107;
    sub_1E5BE14D8(v50, v71);
    v72(v50, v71);
    v72(v106, v71);
    v67 = v81;
  }

  else
  {
    v52 = sub_1E5BF6BE4();
    sub_1E5BF6964();
    sub_1E5BF6984();

    v53 = v98;
    (*(v7 + 104))(v10, *MEMORY[0x1E6980EA8], v98);
    v54 = sub_1E5BF69C4();

    (*(v7 + 8))(v10, v53);
    KeyPath = swift_getKeyPath();
    v56 = sub_1E5BF6BB4();
    v57 = swift_getKeyPath();
    sub_1E5BF6D84();
    sub_1E5BF6674();
    *&v122 = v52;
    *(&v122 + 1) = KeyPath;
    *&v123 = v54;
    *(&v123 + 1) = v57;
    *&v124 = v56;
    sub_1E5BF6D74();
    v58 = v103;
    v59 = MEMORY[0x1E6981CD0];
    v60 = MEMORY[0x1E6981CD8];
    sub_1E5BF6834();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
    v63 = sub_1E5B7656C();
    *&v128 = v60;
    *(&v128 + 1) = v59;
    v64 = swift_getOpaqueTypeConformance2();
    v94 = sub_1E5B76768();
    v65 = v105;
    v66 = v111;
    sub_1E5BF6B74();
    (v104[1])(v58, v66);
    v130 = v124;
    v131 = v125;
    v132 = v126;
    v133 = v127;
    v128 = v122;
    v129 = v123;
    sub_1E5B785B0(&v128);
    *&v122 = v113;
    *(&v122 + 1) = MEMORY[0x1E6981CD8];
    *&v123 = v114;
    *(&v123 + 1) = v114;
    *&v124 = v116;
    *(&v124 + 1) = MEMORY[0x1E6981CD0];
    *&v125 = v115;
    *(&v125 + 1) = v115;
    v121 = swift_getOpaqueTypeConformance2();
    swift_getWitnessTable();
    *&v122 = v61;
    *(&v122 + 1) = v66;
    *&v123 = v62;
    *(&v123 + 1) = v63;
    *&v124 = v64;
    *(&v124 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    v67 = v107;
    v68 = v110;
    sub_1E5BE15D0(v65, v25, v110);
    (*(v101 + 8))(v65, v68);
  }

  *&v128 = v113;
  v82 = MEMORY[0x1E6981CD8];
  *(&v128 + 1) = MEMORY[0x1E6981CD8];
  *&v129 = v114;
  *(&v129 + 1) = v114;
  *&v130 = v116;
  v83 = MEMORY[0x1E6981CD0];
  *(&v130 + 1) = MEMORY[0x1E6981CD0];
  *&v131 = v115;
  *(&v131 + 1) = v115;
  v120 = swift_getOpaqueTypeConformance2();
  v84 = swift_getWitnessTable();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
  v87 = sub_1E5B7656C();
  *&v128 = v82;
  *(&v128 + 1) = v83;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = sub_1E5B76768();
  *&v128 = v85;
  *(&v128 + 1) = v66;
  *&v129 = v86;
  *(&v129 + 1) = v87;
  *&v130 = v88;
  *(&v130 + 1) = v89;
  v90 = swift_getOpaqueTypeConformance2();
  v118 = v84;
  v119 = v90;
  v91 = v109;
  v92 = swift_getWitnessTable();
  sub_1E5B64D48(v67, v91, v92);
  return (*(v108 + 8))(v67, v91);
}

uint64_t sub_1E5B77D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E5BF66E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  sub_1E5BF6D84();
  sub_1E5BF6B14();
  v15[0] = a3;
  v15[1] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1E5B64D48(v9, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v9, v4);
  sub_1E5B64D48(v11, v4, WitnessTable);
  return (v13)(v11, v4);
}

uint64_t sub_1E5B77F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v12[3] = *(a1 + 48);
  v12[4] = v5;
  v13 = *(a1 + 80);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = v4;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAD0, &qword_1E5BF9C78) + 36);
  sub_1E5BF6D54();
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB28, &unk_1E5BFAD40) + 56)) = 256;
  v8 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v8;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  return sub_1E5B78690(v12, v11);
}

uint64_t sub_1E5B77FF4(uint64_t a1, char *a2)
{
  v2 = *a2;
  type metadata accessor for AccountButton();
  sub_1E5B759B8();
  sub_1E5BF6E44();
}

id sub_1E5B78050@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E5B78108();
  sub_1E5BF64D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1E5B780D8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1E5B86E54(v2);
}

unint64_t sub_1E5B78108()
{
  result = qword_1ED03EB38;
  if (!qword_1ED03EB38)
  {
    type metadata accessor for AccountButtonContactDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EB38);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for AccountButton() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  sub_1E5B5C0A8();
  v9 = v5[3];

  v10 = v5[4];

  v11 = v3[12];
  sub_1E5B76870();
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5BF6544();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return swift_deallocObject();
}

uint64_t sub_1E5B7828C(uint64_t a1, char *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for AccountButton() - 8) + 80);

  return sub_1E5B77FF4(a1, a2);
}

void sub_1E5B7836C(uint64_t a1)
{
  sub_1E5B78454();
  if (v2 <= 0x3F)
  {
    sub_1E5B784F8();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      sub_1E5B76870();
      swift_getFunctionTypeMetadata1();
      sub_1E5BF6544();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5B78454()
{
  if (!qword_1EE2C63E8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EB40, qword_1E5BF9D30);
    sub_1E5B5FC8C(&qword_1EE2C6268, &qword_1ED03EB40, qword_1E5BF9D30);
    v0 = sub_1E5BF6624();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2C63E8);
    }
  }
}

void sub_1E5B784F8()
{
  if (!qword_1EE2C62C8)
  {
    type metadata accessor for AccountButtonContactDataProvider();
    v0 = sub_1E5BF6C64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C62C8);
    }
  }
}

unint64_t sub_1E5B7855C()
{
  result = qword_1ED03EB50;
  if (!qword_1ED03EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EB50);
  }

  return result;
}

uint64_t sub_1E5B785B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B78658(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1E5B78690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B78700(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

uint64_t ViewStackButtonEnvironment.init(resolveUpNextCount:navigateToStack:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t CreatePlanAlertEnvironment.init(requireWorkoutPlan:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E5B7875C(uint64_t *a1, int a2)
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

uint64_t sub_1E5B787A4(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5B787F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewButtonFeature.TaskIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v6(v13, a1, v4);
  v6(v15, a2, v4);
  if (!v14)
  {
    v6(v12, v13, v4);
    if (!v17)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_1E5B6E230(v12);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 8))(v13, TupleTypeMetadata2);
    v7 = 0;
    return v7 & 1;
  }

  if (v14 != 1)
  {
    v6(v12, v13, v4);
    if (v17 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  v6(v12, v13, v4);
  if (v17 != 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v10[0] = v15[0];
  v10[1] = v15[1];
  v11 = v16;
  v7 = MEMORY[0x1E6937980](v12, v10);
  sub_1E5B6E230(v10);
  sub_1E5B6E230(v12);
  (*(v5 + 8))(v13, v4);
  return v7 & 1;
}

uint64_t sub_1E5B789D8(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 16))(&v8, v2, a2);
  if (v11)
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    if (v11 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    v3 = 0;
  }

  MEMORY[0x1E6937C10](v3);
  sub_1E5BF7244();
  return sub_1E5B6E230(&v5);
}

uint64_t sub_1E5B78AA4(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5B789D8(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B78AF4(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5B789D8(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B78B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E5B787F0(a1, a2);
}

__n128 PreviewButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t PreviewButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v85) = a4;
  v78 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  v8 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v10 = &v71 - v9;
  v11 = type metadata accessor for PreviewPlayerConfiguration();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = v14;
  v74 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB60, &qword_1E5BF9E68);
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v71 - v19;
  v21 = a5;
  v22 = *(*(a5 + 16) - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - v25;
  v27 = v5[1];
  v84 = *v5;
  v28 = v5[3];
  v79 = v5[2];
  v80 = v27;
  v81 = v28;
  v30 = v29;
  v31 = a2;
  v75 = *(v22 + 16);
  v75(&v71 - v25, a2, v29);
  if (v85)
  {
    v32 = v84;
    v85 = v22;
    v33 = *(v21 + 24);
    v34 = type metadata accessor for PreviewButtonState();
    sub_1E5B7934C(v31 + *(v34 + 40), v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v51 = v30;
      if (EnumCaseMultiPayload)
      {
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB68, &unk_1E5BF9E70) + 48);
        v52 = v71;
        sub_1E5B793BC(v10, v71);
        v54 = sub_1E5BF6464();
        (*(*(v54 - 8) + 8))(&v10[v53], v54);
      }

      else
      {
        v52 = v71;
        sub_1E5B793BC(v10, v71);
      }

      v55 = v32;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v84 = v56[12];
      v57 = v56[16];
      v58 = v56[20];
      v59 = v20;
      v60 = &v20[v56[24]];
      v61 = *(v33 + 24);
      v62 = v51;
      sub_1E5BF72B4();
      v87 = 2;
      v63 = type metadata accessor for PreviewButtonFeature.TaskIdentifier();
      swift_getWitnessTable();
      sub_1E5BF72B4();
      (*(*(v63 - 8) + 8))(v86, v63);
      v64 = *MEMORY[0x1E6999B50];
      v65 = sub_1E5BF6E24();
      (*(*(v65 - 8) + 104))(&v59[v57], v64, v65);
      v66 = v52;
      v67 = v74;
      sub_1E5B793BC(v66, v74);
      v68 = (*(v72 + 80) + 64) & ~*(v72 + 80);
      v69 = swift_allocObject();
      v69[2] = v62;
      v69[3] = v33;
      v69[4] = v55;
      v70 = v79;
      v69[5] = v80;
      v69[6] = v70;
      v69[7] = v81;
      sub_1E5B793BC(v67, v69 + v68);
      *v60 = &unk_1E5BF9E88;
      *(v60 + 1) = v69;

      sub_1E5B6C8B8();
      sub_1E5B6C8BC(&v59[v58]);
      (*(v82 + 104))(v59, *MEMORY[0x1E6999AD8], v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB70, &qword_1E5BF9E90);
      sub_1E5BF7034();
      return (*(v85 + 8))(v26, v62);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      (*(v85 + 8))(v26, v30);
      return sub_1E5B79944(v10);
    }

    else
    {
      return (*(v85 + 8))(v26, v30);
    }
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v76 = v37[12];
    v38 = v37[16];
    v85 = v37[20];
    v74 = &v20[v37[24]];
    v39 = v30;
    v40 = *(v21 + 24);
    v41 = *(v40 + 24);
    sub_1E5BF72B4();
    v87 = 0;
    v42 = type metadata accessor for PreviewButtonFeature.TaskIdentifier();
    swift_getWitnessTable();
    sub_1E5BF72B4();
    (*(*(v42 - 8) + 8))(v86, v42);
    v43 = *MEMORY[0x1E6999B50];
    v44 = sub_1E5BF6E24();
    (*(*(v44 - 8) + 104))(&v20[v38], v43, v44);
    v45 = v77;
    v75(v77, v26, v39);
    v46 = (*(v22 + 80) + 64) & ~*(v22 + 80);
    v47 = swift_allocObject();
    *(v47 + 2) = v39;
    *(v47 + 3) = v40;
    v49 = v80;
    v48 = v81;
    *(v47 + 4) = v84;
    *(v47 + 5) = v49;
    *(v47 + 6) = v79;
    *(v47 + 7) = v48;
    (*(v22 + 32))(&v47[v46], v45, v39);
    v50 = v74;
    *v74 = &unk_1E5BF9EA0;
    *(v50 + 1) = v47;

    sub_1E5B6C8B8();
    sub_1E5B6C8BC(&v20[v85]);
    (*(v82 + 104))(v20, *MEMORY[0x1E6999AD8], v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB70, &qword_1E5BF9E90);
    sub_1E5BF7034();
    return (*(v22 + 8))(v26, v39);
  }
}

uint64_t sub_1E5B7934C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B793BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewPlayerConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B79438(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1E5BF7084();
  v6[3] = sub_1E5BF7074();
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_1E5B6F688;

  return v12(a6);
}

uint64_t sub_1E5B79554(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1E5BF7084();
  v6[3] = sub_1E5BF7074();
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_1E5B79670;

  return v12(a6);
}

uint64_t sub_1E5B79670()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E5BF7054();
  if (v2)
  {
    v8 = sub_1E5B797CC;
  }

  else
  {
    v8 = sub_1E5B6FA20;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5B797CC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1E5B79830(uint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(type metadata accessor for PreviewPlayerConfiguration() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5B6D9A0;

  return sub_1E5B79554(a1, v8, v9, v10, v11, v1 + v7);
}

uint64_t sub_1E5B79944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B799AC(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[2] - 8) + 80) + 64) & ~*(*(v1[2] - 8) + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5B6E314;

  return sub_1E5B79438(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_1E5B79AD0()
{
  result = qword_1ED03EB78;
  if (!qword_1ED03EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EB78);
  }

  return result;
}

unint64_t sub_1E5B79B28()
{
  result = qword_1ED03EB80[0];
  if (!qword_1ED03EB80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED03EB80);
  }

  return result;
}

uint64_t sub_1E5B79B98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B79BEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B79C34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B79C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5B79D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v31 = a1;
  v8 = sub_1E5BF64B4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1E5BF6F94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v13 = sub_1E5BF69D4();
  v28 = v14;
  v29 = v13;
  v26 = v15;
  v27 = v16;
  sub_1E5BF6614();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4 & 1;
  sub_1E5B5F5EC();
  v18 = sub_1E5BF6D34();
  v25 = v24;
  v24[1] = v32;
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC98, &unk_1E5BFA180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1ED03ECA0, &qword_1ED03EC98, &unk_1E5BFA180);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  v20 = v26;
  v21 = v29;
  v22 = v28;
  sub_1E5BF6B04();
  sub_1E5B7AD08(v21, v22, v20 & 1);
}

uint64_t sub_1E5B7A170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v39 = a1;
  v43 = a4;
  v4 = sub_1E5BF6494();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v36 - v23;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v12 + 48))(v24, 1, v11);
  if (result != 1)
  {
    sub_1E5B7AD6C(v24, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
    sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v27 = v42;
    (*(v42 + 56))(v18, 0, 1, v4);
    v28 = *(v7 + 48);
    sub_1E5B7ADDC(v20, v10);
    sub_1E5B7ADDC(v18, &v10[v28]);
    v29 = *(v27 + 48);
    if (v29(v10, 1, v4) == 1)
    {
      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v29(&v10[v28], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v10, &qword_1ED03E5E8, &unk_1E5BF9600);
        v30 = 1;
LABEL_10:
        v26 = v30 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v31 = v38;
      sub_1E5B7ADDC(v10, v38);
      if (v29(&v10[v28], 1, v4) != 1)
      {
        v32 = &v10[v28];
        v33 = v37;
        (*(v27 + 32))(v37, v32, v4);
        sub_1E5B7AE4C();
        v34 = v27;
        v30 = sub_1E5BF6F14();
        v35 = *(v34 + 8);
        v35(v33, v4);
        sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
        v35(v31, v4);
        result = sub_1E5B5F804(v10, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v20, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v27 + 8))(v31, v4);
    }

    result = sub_1E5B5F804(v10, &qword_1ED03E790, &qword_1E5BF9150);
    v30 = 0;
    goto LABEL_10;
  }

  v26 = 0;
LABEL_11:
  *v43 = v26;
  return result;
}

uint64_t sub_1E5B7A6E0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13[-v8];
  sub_1E5BF65D4();
  v10 = sub_1E5BF65E4();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  v14 = a1;
  v15 = a2;
  v16 = a3 & 1;
  sub_1E5B5F5EC();
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B7A83C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5B7A900@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5B7AAE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5B7ACFC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5B7AAE4(a1);
}

uint64_t sub_1E5B7AD08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5B5C0A8();

  return swift_deallocObject();
}

uint64_t sub_1E5B7AD54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5B7A83C();
}

uint64_t sub_1E5B7AD60@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5B7A900(a1);
}

uint64_t sub_1E5B7AD6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B7ADDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B7AE4C()
{
  result = qword_1ED03E7A0;
  if (!qword_1ED03E7A0)
  {
    sub_1E5BF6494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E7A0);
  }

  return result;
}

FitnessActions::PreviewLoadError_optional __swiftcall PreviewLoadError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1E5B7AEC8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1E5B7AEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B7DE44();
  v5 = sub_1E5B7DE98();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t PreviewPlayerConfiguration.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5BF6384();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PreviewPlayerConfiguration.contentIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PreviewPlayerConfiguration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for PreviewPlayerConfiguration()
{
  result = qword_1EE2C6768;
  if (!qword_1EE2C6768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreviewPlayerConfiguration.streamingProgramIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PreviewPlayerConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PreviewPlayerConfiguration.sampleContentIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PreviewPlayerConfiguration() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *PreviewPlayerConfiguration.init(streamingURL:contentIdentifier:streamingProgramIdentifier:sampleContentIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1E5BF6384();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for PreviewPlayerConfiguration();
  v18 = (a8 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = (a8 + result[6]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a8 + result[7]);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

unint64_t sub_1E5B7B23C()
{
  v1 = 0x6E696D6165727473;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E5B7B2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B7DCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B7B2F4(uint64_t a1)
{
  v2 = sub_1E5B7CD7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B7B330(uint64_t a1)
{
  v2 = sub_1E5B7CD7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewPlayerConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03ECA8, &qword_1E5BFA1D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B7CD7C();
  sub_1E5BF7524();
  v22[15] = 0;
  sub_1E5BF6384();
  sub_1E5B7D074(&qword_1ED03ECB8, MEMORY[0x1E6968FB0]);
  sub_1E5BF7424();
  if (!v2)
  {
    v11 = type metadata accessor for PreviewPlayerConfiguration();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v22[14] = 1;
    sub_1E5BF73A4();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v22[13] = 2;
    sub_1E5BF73A4();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v22[12] = 3;
    sub_1E5BF73A4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PreviewPlayerConfiguration.hash(into:)()
{
  sub_1E5BF6384();
  sub_1E5B7D074(&qword_1ED03ECC0, MEMORY[0x1E6968FB0]);
  sub_1E5BF6EF4();
  v1 = type metadata accessor for PreviewPlayerConfiguration();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    sub_1E5BF74D4();
    sub_1E5BF6FE4();
  }

  else
  {
    sub_1E5BF74D4();
  }

  v4 = (v0 + v1[6]);
  if (v4[1])
  {
    v5 = *v4;
    sub_1E5BF74D4();
    sub_1E5BF6FE4();
  }

  else
  {
    sub_1E5BF74D4();
  }

  v6 = (v0 + v1[7]);
  if (!v6[1])
  {
    return sub_1E5BF74D4();
  }

  v7 = *v6;
  sub_1E5BF74D4();

  return sub_1E5BF6FE4();
}

uint64_t PreviewPlayerConfiguration.hashValue.getter()
{
  sub_1E5BF74B4();
  PreviewPlayerConfiguration.hash(into:)();
  return sub_1E5BF7504();
}

uint64_t PreviewPlayerConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E5BF6384();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03ECC8, &unk_1E5BFA1D8);
  v31 = *(v33 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v28 - v8;
  v10 = type metadata accessor for PreviewPlayerConfiguration();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B7CD7C();
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v13;
  v16 = v30;
  v37 = 0;
  sub_1E5B7D074(&qword_1ED03ECD0, MEMORY[0x1E6968FB0]);
  sub_1E5BF7364();
  (*(v16 + 32))(v13, v32, v4);
  v36 = 1;
  v17 = sub_1E5BF72E4();
  v18 = &v13[v10[5]];
  *v18 = v17;
  v18[1] = v19;
  v35 = 2;
  v20 = sub_1E5BF72E4();
  v21 = &v13[v10[6]];
  *v21 = v20;
  v21[1] = v22;
  v34 = 3;
  v23 = sub_1E5BF72E4();
  v25 = v24;
  (*(v31 + 8))(v9, v33);
  v26 = (v15 + v10[7]);
  *v26 = v23;
  v26[1] = v25;
  sub_1E5B7CDD0(v15, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5B7CE34(v15);
}

uint64_t sub_1E5B7BB84()
{
  sub_1E5BF74B4();
  PreviewPlayerConfiguration.hash(into:)();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B7BBC8()
{
  sub_1E5BF74B4();
  PreviewPlayerConfiguration.hash(into:)();
  return sub_1E5BF7504();
}

uint64_t PreviewButtonState.localizedTitle.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t (*PreviewButtonState.loadState.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t PreviewButtonState.init(identifier:locale:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v39 = a5;
  v37 = a2;
  v9 = sub_1E5BF64B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5BF6F94();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v35 - v19;
  v21 = *(a4 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v21 + 16);
  v35 = a4;
  v36 = a1;
  v25(v24, a1, a4);
  v26 = a3;
  sub_1E5B7934C(a3, v20);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v27 = qword_1EE2CD210;
  v28 = v37;
  (*(v10 + 16))(v13, v37, v9);
  v29 = v27;
  v30 = sub_1E5BF6FD4();
  v32 = v31;
  sub_1E5B79944(v26);
  (*(v10 + 8))(v28, v9);
  v33 = v35;
  (*(v21 + 8))(v36, v35);
  return PreviewButtonState.init(identifier:loadState:localizedTitle:)(v24, v20, v30, v32, v33, v38);
}

uint64_t PreviewButtonState.init(identifier:loadState:localizedTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for PreviewButtonState();
  result = sub_1E5B7CF18(a2, a6 + *(v10 + 40));
  v12 = (a6 + *(v10 + 36));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t sub_1E5B7C058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5B7C188(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x657A696C61636F6CLL;
  }

  return 0x7461745364616F6CLL;
}

uint64_t sub_1E5B7C1F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5B7C188(*v1);
}

uint64_t sub_1E5B7C200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5B7C058(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5B7C230@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5B7DE3C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B7C25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B7C2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PreviewButtonState.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v21[0] = a2;
  v21[1] = v3;
  type metadata accessor for PreviewButtonState.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E5BF7434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v24 = 0;
  v11 = *(v4 + 16);
  v12 = v21[2];
  v13 = v21[3];
  sub_1E5BF7424();
  if (v13)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = v6;
  v16 = v21[0];
  v17 = (v12 + *(v21[0] + 36));
  v18 = *v17;
  v19 = v17[1];
  v23 = 1;
  sub_1E5BF73E4();
  v20 = *(v16 + 40);
  v22 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  sub_1E5B7CFA0(&qword_1ED03ECD8);
  sub_1E5BF7424();
  return (*(v15 + 8))(v9, v5);
}

uint64_t PreviewButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  v7 = *(*(v37 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v34 - v9;
  v39 = *(a2 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewButtonState.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_1E5BF7384();
  v38 = *(v44 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v34 - v13;
  v42 = a3;
  v15 = type metadata accessor for PreviewButtonState();
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v14;
  v20 = v45;
  sub_1E5BF7514();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v38;
  v22 = v39;
  v45 = v18;
  v34 = v15;
  v23 = v40;
  v24 = v41;
  v48 = 0;
  v25 = v43;
  v26 = *(v42 + 8);
  sub_1E5BF7364();
  (*(v22 + 32))(v45, v24, a2);
  v47 = 1;
  v27 = sub_1E5BF7324();
  v28 = v45;
  v29 = &v45[*(v34 + 36)];
  *v29 = v27;
  v29[1] = v30;
  v46 = 2;
  sub_1E5B7CFA0(&qword_1ED03ECF0);
  sub_1E5BF7364();
  (*(v21 + 8))(v25, v44);
  v31 = v34;
  sub_1E5B7CF18(v23, &v28[*(v34 + 40)]);
  v32 = v35;
  (*(v35 + 16))(v36, v28, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v32 + 8))(v28, v31);
}

uint64_t static PreviewButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for PreviewButtonState();
  v8 = *(v7 + 36);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v7 + 40);
  type metadata accessor for PreviewPlayerConfiguration();
  sub_1E5B7D074(&qword_1ED03ECF8, type metadata accessor for PreviewPlayerConfiguration);

  return sub_1E5BF6DE4();
}

uint64_t PreviewButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 24);
  sub_1E5BF6EF4();
  v6 = (v2 + *(a2 + 36));
  v7 = *v6;
  v8 = v6[1];
  sub_1E5BF6FE4();
  v9 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  sub_1E5B7D074(&qword_1ED03ED00, type metadata accessor for PreviewPlayerConfiguration);
  return sub_1E5BF6DF4();
}

uint64_t PreviewButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  PreviewButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B7CBFC(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  PreviewButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t _s14FitnessActions26PreviewPlayerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5BF6374() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PreviewPlayerConfiguration();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1E5BF7444();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1E5BF7444();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_1E5BF7444() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1E5B7CD7C()
{
  result = qword_1ED03ECB0;
  if (!qword_1ED03ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03ECB0);
  }

  return result;
}

uint64_t sub_1E5B7CDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewPlayerConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B7CE34(uint64_t a1)
{
  v2 = type metadata accessor for PreviewPlayerConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B7CE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B7CF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B7CFA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EB58, &qword_1E5BF9E60);
    sub_1E5B7D074(&qword_1ED03ECE0, type metadata accessor for PreviewPlayerConfiguration);
    sub_1E5B7D074(&qword_1ED03ECE8, type metadata accessor for PreviewPlayerConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B7D074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5B7D0C0()
{
  result = qword_1ED03ED08[0];
  if (!qword_1ED03ED08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED03ED08);
  }

  return result;
}

void sub_1E5B7D1B0()
{
  sub_1E5BF6384();
  if (v0 <= 0x3F)
  {
    sub_1E5B7D23C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B7D23C()
{
  if (!qword_1EE2C6230)
  {
    v0 = sub_1E5BF71F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C6230);
    }
  }
}

void sub_1E5B7D28C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E5B7D98C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5B7D31C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1E5BF6384() - 8);
  v10 = ((((((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = *(sub_1E5BF6464() - 8);
  v12 = *(v11 + 80);
  v13 = ((v10 + v12) & ~v12) + *(v11 + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = 40;
  if (v13 > 0x28)
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_30;
  }

  v16 = v12 | *(v9 + 80) & 0xF8 | 7;
  v17 = v14 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v8 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v7 < 0x7FFFFFFF)
      {
        v24 = *(((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      else
      {
        v23 = *(v6 + 48);

        return v23(a1, v7, v5);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_19:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return v8 + (v17 | v22) + 1;
}

void sub_1E5B7D610(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1E5BF6384() - 8);
  v12 = ((((((*(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = *(sub_1E5BF6464() - 8);
  v14 = *(v13 + 80);
  v15 = ((v12 + v14) & ~v14) + *(v13 + 64);
  if (v15 <= v12)
  {
    v15 = v12;
  }

  v16 = 40;
  if (v15 > 0x28)
  {
    v16 = v15;
  }

  v17 = *(v8 + 64);
  v18 = v14 | *(v11 + 80) & 0xF8 | 7;
  v19 = v16 + ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18) + 1;
  if (a3 <= v10)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v10 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v10 < a2)
  {
    v21 = ~v10 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_50:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v19] = 0;
  }

  else if (v20)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 < 0x7FFFFFFF)
  {
    v27 = (&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v27 = a2 & 0x7FFFFFFF;
      v27[1] = 0;
    }

    else
    {
      v27[1] = (a2 - 1);
    }
  }

  else
  {
    v26 = *(v28 + 56);

    v26(a1, a2, v9, v7);
  }
}

void sub_1E5B7D98C()
{
  if (!qword_1ED03ED90[0])
  {
    type metadata accessor for PreviewPlayerConfiguration();
    sub_1E5B7D074(&qword_1ED03ECF8, type metadata accessor for PreviewPlayerConfiguration);
    v0 = sub_1E5BF6E04();
    if (!v1)
    {
      atomic_store(v0, qword_1ED03ED90);
    }
  }
}

uint64_t getEnumTagSinglePayload for PreviewPlayerConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewPlayerConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5B7DB74()
{
  result = qword_1ED03EE18;
  if (!qword_1ED03EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE18);
  }

  return result;
}

unint64_t sub_1E5B7DC20()
{
  result = qword_1ED03EE20;
  if (!qword_1ED03EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE20);
  }

  return result;
}

unint64_t sub_1E5B7DC78()
{
  result = qword_1ED03EE28;
  if (!qword_1ED03EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE28);
  }

  return result;
}

uint64_t sub_1E5B7DCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C078C0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5C078E0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07900 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5B7DE44()
{
  result = qword_1ED03EE30;
  if (!qword_1ED03EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE30);
  }

  return result;
}

unint64_t sub_1E5B7DE98()
{
  result = qword_1ED03EE38;
  if (!qword_1ED03EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE38);
  }

  return result;
}

__n128 AccountButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t AccountButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, void **a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E920, &qword_1E5BF95C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32[-v12];
  v14 = *a4;
  v15 = v4[1];
  v33 = *v4;
  v34 = v15;
  v16 = v4[3];
  v35 = v4[2];
  v36 = v16;
  if (v14 == 2)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v18 = v17[12];
    v19 = v17[16];
    v20 = v17[20];
    v21 = &v13[v17[24]];
    sub_1E5B7E1D4();
    sub_1E5BF7254();
    v22 = *MEMORY[0x1E6999B50];
    v23 = sub_1E5BF6E24();
    (*(*(v23 - 8) + 104))(&v13[v19], v22, v23);
    v24 = swift_allocObject();
    v25 = v34;
    v24[1] = v33;
    v24[2] = v25;
    v26 = v36;
    v24[3] = v35;
    v24[4] = v26;
    *v21 = &unk_1E5BFA798;
    v21[1] = v24;
    sub_1E5B7E3C8(&v33, v32);
    sub_1E5BF7094();
    v27 = *MEMORY[0x1E6999B48];
    v28 = sub_1E5BF6E14();
    (*(*(v28 - 8) + 104))(&v13[v20], v27, v28);
    (*(v9 + 104))(v13, *MEMORY[0x1E6999AD8], v8);
    v29 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1E5B71590(0, v29[2] + 1, 1, v29);
    }

    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1E5B71590(v30 > 1, v31 + 1, 1, v29);
    }

    v29[2] = v31 + 1;
    result = (*(v9 + 32))(v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, v13, v8);
    *a3 = v29;
  }

  else
  {
    *a2 = v14 & 1;
  }

  return result;
}

unint64_t sub_1E5B7E1D4()
{
  result = qword_1ED03EE40;
  if (!qword_1ED03EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE40);
  }

  return result;
}

uint64_t sub_1E5B7E228(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5BF7084();
  v2[3] = sub_1E5BF7074();
  v4 = *(a2 + 56);
  v8 = (*(a2 + 48) + **(a2 + 48));
  v5 = *(*(a2 + 48) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E5B79670;

  return v8();
}

uint64_t sub_1E5B7E330(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6D9A0;

  return sub_1E5B7E228(a1, v1 + 16);
}

unint64_t sub_1E5B7E40C()
{
  result = qword_1ED03EE48;
  if (!qword_1ED03EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE48);
  }

  return result;
}

unint64_t sub_1E5B7E464()
{
  result = qword_1ED03EE50;
  if (!qword_1ED03EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE50);
  }

  return result;
}

unint64_t sub_1E5B7E4BC()
{
  result = qword_1ED03EE58;
  if (!qword_1ED03EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE58);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5B7E524(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E5B7E56C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5B7E5E0()
{
  result = qword_1ED03EE60;
  if (!qword_1ED03EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE60);
  }

  return result;
}

uint64_t sub_1E5B7E634()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E668()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E69C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E6D0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E704()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E738()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5B7E76C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E5B7E798()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E7CC(uint64_t a1)
{
  v2 = sub_1E5B7EE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B7E808(uint64_t a1)
{
  v2 = sub_1E5B7EE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5B7E844()
{
  if (*v0)
  {
    result = 0x616843656C797473;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1E5B7E88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001E5C07920 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616843656C797473 && a2 == 0xEC0000006465676ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E5BF7444();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E5B7E978(uint64_t a1)
{
  v2 = sub_1E5B7ED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B7E9B4(uint64_t a1)
{
  v2 = sub_1E5B7ED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B7E9F0(uint64_t a1)
{
  v2 = sub_1E5B7EDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B7EA2C(uint64_t a1)
{
  v2 = sub_1E5B7EDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountButtonAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EE68, &qword_1E5BFA8D0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EE70, &qword_1E5BFA8D8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EE78, &qword_1E5BFA8E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B7ED74();
  sub_1E5BF7524();
  if (v15 == 2)
  {
    v25 = 0;
    sub_1E5B7EE70();
    sub_1E5BF7394();
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    v27 = 1;
    sub_1E5B7EDC8();
    v18 = v22;
    sub_1E5BF7394();
    v26 = v15 & 1;
    sub_1E5B7EE1C();
    v19 = v24;
    sub_1E5BF7424();
    (*(v23 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1E5B7ED74()
{
  result = qword_1ED03EE80;
  if (!qword_1ED03EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE80);
  }

  return result;
}

unint64_t sub_1E5B7EDC8()
{
  result = qword_1ED03EE88;
  if (!qword_1ED03EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE88);
  }

  return result;
}

unint64_t sub_1E5B7EE1C()
{
  result = qword_1ED03EE90;
  if (!qword_1ED03EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE90);
  }

  return result;
}

unint64_t sub_1E5B7EE70()
{
  result = qword_1ED03EE98;
  if (!qword_1ED03EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE98);
  }

  return result;
}

uint64_t AccountButtonAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EEA0, &qword_1E5BFA8E8);
  v29 = *(v27 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EEA8, &qword_1E5BFA8F0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EEB0, &unk_1E5BFA8F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5B7ED74();
  v17 = v31;
  sub_1E5BF7514();
  if (!v17)
  {
    v31 = v6;
    v18 = v11;
    v19 = v30;
    v20 = sub_1E5BF7374();
    if (*(v20 + 16) == 1)
    {
      if (*(v20 + 32))
      {
        v35 = 1;
        sub_1E5B7EDC8();
        sub_1E5BF72C4();
        sub_1E5B7F380();
        v26 = v27;
        sub_1E5BF7364();
        (*(v29 + 8))(v5, v26);
        (*(v18 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v19 = v34;
      }

      else
      {
        v33 = 0;
        sub_1E5B7EE70();
        sub_1E5BF72C4();
        (*(v28 + 8))(v9, v31);
        (*(v11 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v19 = 2;
      }
    }

    else
    {
      v21 = sub_1E5BF7284();
      swift_allocError();
      v23 = v22;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
      *v23 = &type metadata for AccountButtonAction;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v18 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

unint64_t sub_1E5B7F380()
{
  result = qword_1ED03EEB8;
  if (!qword_1ED03EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEB8);
  }

  return result;
}

BOOL static AccountButtonAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t AccountButtonAction.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x1E6937C10](v2);
}

uint64_t AccountButtonAction.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B7F4EC()
{
  v1 = *v0;
  sub_1E5BF74B4();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B7F54C()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x1E6937C10](v2);
}

uint64_t sub_1E5B7F594()
{
  v1 = *v0;
  sub_1E5BF74B4();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

BOOL sub_1E5B7F5F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

unint64_t sub_1E5B7F638()
{
  result = qword_1ED03EEC0;
  if (!qword_1ED03EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountButtonAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccountButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E5B7F7E0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E5B7F7F4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1E5B7F848()
{
  result = qword_1ED03EEC8;
  if (!qword_1ED03EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEC8);
  }

  return result;
}

unint64_t sub_1E5B7F8A0()
{
  result = qword_1ED03EED0;
  if (!qword_1ED03EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EED0);
  }

  return result;
}

unint64_t sub_1E5B7F8F8()
{
  result = qword_1ED03EED8;
  if (!qword_1ED03EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EED8);
  }

  return result;
}

unint64_t sub_1E5B7F950()
{
  result = qword_1ED03EEE0;
  if (!qword_1ED03EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEE0);
  }

  return result;
}

unint64_t sub_1E5B7F9A8()
{
  result = qword_1ED03EEE8;
  if (!qword_1ED03EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEE8);
  }

  return result;
}

unint64_t sub_1E5B7FA00()
{
  result = qword_1ED03EEF0;
  if (!qword_1ED03EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEF0);
  }

  return result;
}

unint64_t sub_1E5B7FA58()
{
  result = qword_1ED03EEF8;
  if (!qword_1ED03EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEF8);
  }

  return result;
}

unint64_t sub_1E5B7FAB0()
{
  result = qword_1ED03EF00;
  if (!qword_1ED03EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF00);
  }

  return result;
}

uint64_t UpNextQueueButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5B62F34;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t UpNextQueueButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_1E5BF66D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF08, &qword_1E5BFACF0);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  sub_1E5B5F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF10, &qword_1E5BFACF8);
  sub_1E5B8081C();
  sub_1E5BF6C84();
  (*(v3 + 104))(v6, *MEMORY[0x1E697E6E8], v2);
  sub_1E5B5FC8C(&qword_1ED03EF98, &qword_1ED03EF08, &qword_1E5BFACF0);
  v15 = v20;
  sub_1E5BF6A74();
  (*(v3 + 8))(v6, v2);
  (*(v19 + 8))(v10, v7);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v12;
  *(v16 + 32) = v13;
  v17 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFA0, &qword_1E5BFAD58) + 36));
  *v17 = sub_1E5B80F14;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  return sub_1E5B5F5EC();
}

uint64_t sub_1E5B7FE60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5B80E50();
}

uint64_t sub_1E5B7FE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v87 = a2;
  v88 = a4;
  v5 = sub_1E5BF64B4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5BF6F94();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5BF69B4();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v68 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF48, &qword_1E5BFAD10);
  v17 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF28, &qword_1E5BFAD00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC0, &unk_1E5BFAE50);
  v23 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v68 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  v31 = sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48);
  v83 = a1;
  v75 = v31;
  v76 = v30;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v33 = *v29;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5B5F804(v29, &qword_1ED03EFC8, &qword_1E5BFB9C0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_1E5B808A8();
    return sub_1E5BF6864();
  }

  v33 = *v29;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFD0, &qword_1E5BFAE80) + 48);
  v35 = sub_1E5BF6464();
  (*(*(v35 - 8) + 8))(v29 + v34, v35);
LABEL_6:
  if (v33 < 1)
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF38, &qword_1E5BFAD08);
    (*(*(v67 - 8) + 56))(v22, 1, 1, v67);
  }

  else
  {
    v69 = v25;
    v70 = v22;
    v71 = v19;
    v36 = sub_1E5BF6C04();
    sub_1E5BF6D84();
    sub_1E5BF6674();
    v37 = v101;
    v38 = v102;
    v39 = v103;
    v40 = v104;
    v42 = v105;
    v41 = v106;
    v43 = sub_1E5BF6944();
    sub_1E5BF65F4();
    v98 = v38;
    v97 = v40;
    v96 = 0;
    *&v89 = v36;
    *(&v89 + 1) = v37;
    LOBYTE(v90) = v38;
    *(&v90 + 1) = v39;
    LOBYTE(v91) = v40;
    *(&v91 + 1) = v42;
    *&v92 = v41;
    BYTE8(v92) = v43;
    *&v93 = v44;
    *(&v93 + 1) = v45;
    *&v94 = v46;
    *(&v94 + 1) = v47;
    v95 = 0;
    sub_1E5BF6D74();
    v48 = MEMORY[0x1E6981CD0];
    v49 = MEMORY[0x1E6981CD8];
    v50 = v72;
    sub_1E5BF6834();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF60, &unk_1E5BFAD20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF68, &unk_1E5BFAD30);
    sub_1E5B80BEC();
    *&v99[0] = v49;
    *(&v99[0] + 1) = v48;
    swift_getOpaqueTypeConformance2();
    sub_1E5B80C78();
    v51 = v81;
    v52 = v74;
    sub_1E5BF6B74();
    (*(v73 + 8))(v50, v52);
    v99[4] = v93;
    v99[5] = v94;
    v100 = v95;
    v99[0] = v89;
    v99[1] = v90;
    v99[2] = v91;
    v99[3] = v92;
    sub_1E5B5F804(v99, &qword_1ED03EF60, &unk_1E5BFAD20);
    sub_1E5BF6964();
    sub_1E5BF6984();

    v54 = v77;
    v53 = v78;
    v55 = v79;
    (*(v78 + 104))(v77, *MEMORY[0x1E6980EA8], v79);
    v56 = sub_1E5BF69C4();

    (*(v53 + 8))(v54, v55);
    KeyPath = swift_getKeyPath();
    v58 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF58, &qword_1E5BFAD18) + 36));
    *v58 = KeyPath;
    v58[1] = v56;
    v59 = sub_1E5BF6BB4();
    v60 = swift_getKeyPath();
    *&v89 = v59;
    v61 = sub_1E5BF6684();
    v62 = (v51 + *(v80 + 36));
    *v62 = v60;
    v62[1] = v61;
    sub_1E5BF6F24();
    if (qword_1EE2C6208 != -1)
    {
      swift_once();
    }

    v63 = qword_1EE2CD210;
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    *&v89 = sub_1E5BF6FD4();
    *(&v89 + 1) = v64;
    sub_1E5B809B8();
    sub_1E5B81070();
    v22 = v70;
    sub_1E5BF6A94();

    sub_1E5B5F804(v51, &qword_1ED03EF48, &qword_1E5BFAD10);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF38, &qword_1E5BFAD08);
    (*(*(v65 - 8) + 56))(v22, 0, 1, v65);
    v25 = v69;
  }

  sub_1E5B57900(v22, v25);
  swift_storeEnumTagMultiPayload();
  sub_1E5B808A8();
  sub_1E5BF6864();
  return sub_1E5B5F804(v22, &qword_1ED03EF28, &qword_1E5BFAD00);
}

unint64_t sub_1E5B8081C()
{
  result = qword_1ED03EF18;
  if (!qword_1ED03EF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF10, &qword_1E5BFACF8);
    sub_1E5B808A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF18);
  }

  return result;
}

unint64_t sub_1E5B808A8()
{
  result = qword_1ED03EF20;
  if (!qword_1ED03EF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF28, &qword_1E5BFAD00);
    sub_1E5B8092C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF20);
  }

  return result;
}

unint64_t sub_1E5B8092C()
{
  result = qword_1ED03EF30;
  if (!qword_1ED03EF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF38, &qword_1E5BFAD08);
    sub_1E5B809B8();
    sub_1E5B80D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF30);
  }

  return result;
}

unint64_t sub_1E5B809B8()
{
  result = qword_1ED03EF40;
  if (!qword_1ED03EF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF48, &qword_1E5BFAD10);
    sub_1E5B80A70();
    sub_1E5B5FC8C(&qword_1ED03EF80, &qword_1ED03EF88, &qword_1E5BFAD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF40);
  }

  return result;
}

unint64_t sub_1E5B80A70()
{
  result = qword_1ED03EF50;
  if (!qword_1ED03EF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF58, &qword_1E5BFAD18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF60, &unk_1E5BFAD20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF68, &unk_1E5BFAD30);
    sub_1E5B80BEC();
    swift_getOpaqueTypeConformance2();
    sub_1E5B80C78();
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1EE2C62F0, &qword_1ED03EB00, &qword_1E5C042E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF50);
  }

  return result;
}

unint64_t sub_1E5B80BEC()
{
  result = qword_1ED03EF70;
  if (!qword_1ED03EF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF60, &unk_1E5BFAD20);
    sub_1E5B5FB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF70);
  }

  return result;
}

unint64_t sub_1E5B80C78()
{
  result = qword_1ED03EF78;
  if (!qword_1ED03EF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF68, &unk_1E5BFAD30);
    sub_1E5B80BEC();
    sub_1E5B5FC8C(&qword_1ED03EB20, &qword_1ED03EB28, &unk_1E5BFAD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF78);
  }

  return result;
}

unint64_t sub_1E5B80D30()
{
  result = qword_1ED03EF90;
  if (!qword_1ED03EF90)
  {
    sub_1E5BF68E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF90);
  }

  return result;
}

uint64_t sub_1E5B80D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v14 = *(a1 + 96);
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF68, &unk_1E5BFAD30) + 36);
  sub_1E5BF6D64();
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB28, &unk_1E5BFAD40) + 56)) = 256;
  v8 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v8;
  *(a2 + 96) = *(a1 + 96);
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  v10 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v10;
  return sub_1E5B810C4(v13, v12);
}

uint64_t sub_1E5B80E50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5B80F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5B80E50();
}

unint64_t sub_1E5B80F74()
{
  result = qword_1ED03EFA8;
  if (!qword_1ED03EFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EFA0, &qword_1E5BFAD58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF08, &qword_1E5BFACF0);
    sub_1E5B5FC8C(&qword_1ED03EF98, &qword_1ED03EF08, &qword_1E5BFACF0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EFA8);
  }

  return result;
}

unint64_t sub_1E5B81070()
{
  result = qword_1EE2C6248;
  if (!qword_1EE2C6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6248);
  }

  return result;
}

uint64_t sub_1E5B810C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF60, &unk_1E5BFAD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutSwapItem.workoutIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutSwapItem.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

FitnessActions::WorkoutSwapItem __swiftcall WorkoutSwapItem.init(workoutIdentifier:title:)(Swift::String workoutIdentifier, Swift::String title)
{
  *v2 = workoutIdentifier;
  v2[1] = title;
  result.title = title;
  result.workoutIdentifier = workoutIdentifier;
  return result;
}

uint64_t static WorkoutSwapItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5BF7444(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5BF7444();
    }
  }

  return result;
}

uint64_t WorkoutSwapItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5BF6FE4();

  return sub_1E5BF6FE4();
}

uint64_t WorkoutSwapItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  sub_1E5BF6FE4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B812FC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  sub_1E5BF6FE4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B81364()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5BF6FE4();

  return sub_1E5BF6FE4();
}

uint64_t sub_1E5B813B4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  sub_1E5BF6FE4();
  return sub_1E5BF7504();
}

unint64_t sub_1E5B8141C()
{
  result = qword_1ED03EFD8;
  if (!qword_1ED03EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EFD8);
  }

  return result;
}

uint64_t sub_1E5B81470(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5BF7444(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5BF7444();
    }
  }

  return result;
}

uint64_t sub_1E5B81514(uint64_t a1, int a2)
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

uint64_t sub_1E5B8155C(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5B815D0()
{
  if (*v0)
  {
    result = 0x656C797473;
  }

  else
  {
    result = 0x6E65646469487369;
  }

  *v0;
  return result;
}

uint64_t sub_1E5B81608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65646469487369 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5B816E0(uint64_t a1)
{
  v2 = sub_1E5B818E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8171C(uint64_t a1)
{
  v2 = sub_1E5B818E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicBarButtonItemState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFE0, &qword_1E5BFAFC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B818E0();
  sub_1E5BF7524();
  v16 = 0;
  sub_1E5BF73F4();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1E5B81934();
    sub_1E5BF7424();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E5B818E0()
{
  result = qword_1ED03EFE8;
  if (!qword_1ED03EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EFE8);
  }

  return result;
}

unint64_t sub_1E5B81934()
{
  result = qword_1ED03EFF0;
  if (!qword_1ED03EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EFF0);
  }

  return result;
}

uint64_t DynamicBarButtonItemState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFF8, &qword_1E5BFAFC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B818E0();
  sub_1E5BF7514();
  if (!v2)
  {
    v17 = 0;
    v11 = sub_1E5BF7334();
    v15 = 1;
    sub_1E5B81B48();
    sub_1E5BF7364();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v11 & 1;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5B81B48()
{
  result = qword_1ED03F000;
  if (!qword_1ED03F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F000);
  }

  return result;
}

uint64_t DynamicBarButtonItemState.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5BF74D4();
  return MEMORY[0x1E6937C10](v2);
}

uint64_t DynamicBarButtonItemState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B81C94()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B81CF4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5BF74D4();
  return MEMORY[0x1E6937C10](v2);
}

uint64_t sub_1E5B81D34()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B81DBC()
{
  result = qword_1EE2C69E8[0];
  if (!qword_1EE2C69E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C69E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicBarButtonItemState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for DynamicBarButtonItemState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1E5B81F94()
{
  result = qword_1ED03F008;
  if (!qword_1ED03F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F008);
  }

  return result;
}

unint64_t sub_1E5B81FEC()
{
  result = qword_1ED03F010;
  if (!qword_1ED03F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F010);
  }

  return result;
}

unint64_t sub_1E5B82044()
{
  result = qword_1ED03F018;
  if (!qword_1ED03F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F018);
  }

  return result;
}

uint64_t sub_1E5B82098(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for PreviewButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t PreviewButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for PreviewButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13 & 1;
  return result;
}

uint64_t sub_1E5B82234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v31 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F0E0, &qword_1E5BFB300);
  v13 = *(v12 - 8);
  v29 = v12;
  v30 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = *v4;
  v18 = v4[1];
  v19 = *(v4 + 16);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v32 = *(v28 + 16);
  v33 = v17;
  v34 = v18;
  v35 = v19;
  sub_1E5B5F77C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5BF6C84();
  sub_1E5BF6D74();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F0E8, &qword_1E5BFB308);
  v22 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
  v23 = sub_1E5B83AB8();
  v24 = MEMORY[0x1E6981CD8];
  v25 = MEMORY[0x1E6981CD0];
  sub_1E5BF6B74();
  (*(v8 + 8))(v11, v7);
  v36 = v7;
  v37 = v24;
  v38 = v21;
  v39 = v22;
  v40 = v25;
  v41 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  sub_1E5BF69F4();
  return (*(v30 + 8))(v16, v26);
}

uint64_t sub_1E5B82578@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PreviewButton();
  sub_1E5B82098(v2);
  swift_getKeyPath();
  sub_1E5BF6E34();

  sub_1E5B81070();
  result = sub_1E5BF69E4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1E5B82638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B82678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F0E8, &qword_1E5BFB308) + 36));
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F100, &qword_1E5BFB310) + 28);
  sub_1E5BF6714();
  *v4 = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t PreviewButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_1E5B82814(v4, v5, v6, v7, v8, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03F020, &qword_1E5BFB1E0) + 36));
  *v10 = sub_1E5B83600;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;

  return sub_1E5B5F5EC();
}

uint64_t sub_1E5B82814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v108 = a6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F118, &qword_1E5BFB320);
  v11 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v94 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F110, &qword_1E5BFB318);
  v13 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v98 = &v94 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F120, &qword_1E5BFB328);
  v15 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v94 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F128, &qword_1E5BFB330);
  v17 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v94 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F0D8, &qword_1E5BFB2F8);
  v19 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v104 = &v94 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F130, &qword_1E5BFB338);
  v111 = *(v106 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v23 = &v94 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v94 - v26;
  v28 = a1;
  v120 = a1;
  v121 = a2;
  v29 = a2;
  v101 = a3;
  v122 = a3 & 1;
  v30 = type metadata accessor for PreviewButton();
  sub_1E5B82098(v30);
  v99 = a4;
  v112 = a4;
  v113 = a5;
  v100 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v114 = v28;
    v115 = v29;
    LOBYTE(v116) = a3 & 1;
    sub_1E5B82234(0, 0, v30, v23);
    v47 = v111;
    v48 = v106;
    (*(v111 + 16))(v103, v23, v106);
    swift_storeEnumTagMultiPayload();
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    v52 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    v53 = sub_1E5B83AB8();
    v114 = v50;
    v115 = MEMORY[0x1E6981CD8];
    v116 = v51;
    v117 = v52;
    v118 = MEMORY[0x1E6981CD0];
    v119 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v114 = v49;
    v115 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1E5B83B9C();
    v55 = v104;
    sub_1E5BF6864();
    sub_1E5B5F864(v55, v107, &qword_1ED03F0D8, &qword_1E5BFB2F8);
    swift_storeEnumTagMultiPayload();
    sub_1E5B83940();
    sub_1E5BF6864();
    sub_1E5B5F804(v55, &qword_1ED03F0D8, &qword_1E5BFB2F8);
    return (*(v47 + 8))(v23, v48);
  }

  v32 = v106;
  v33 = v111;
  if (!EnumCaseMultiPayload)
  {
LABEL_5:
    sub_1E5B7CE34(v27);
    v114 = v28;
    v115 = v29;
    v36 = v101 & 1;
    LOBYTE(v116) = v101 & 1;
    v37 = swift_allocObject();
    v38 = v100;
    *(v37 + 16) = v99;
    *(v37 + 24) = v38;
    *(v37 + 32) = v28;
    *(v37 + 40) = v29;
    *(v37 + 48) = v36;
    sub_1E5B5F5EC();
    sub_1E5B82234(sub_1E5B83D14, v37, v30, v23);

    v39 = v23;
    (*(v33 + 16))(v107, v23, v32);
    swift_storeEnumTagMultiPayload();
    sub_1E5B83940();
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    v43 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    v44 = sub_1E5B83AB8();
    v114 = v41;
    v115 = MEMORY[0x1E6981CD8];
    v116 = v42;
    v117 = v43;
    v118 = MEMORY[0x1E6981CD0];
    v119 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v114 = v40;
    v115 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1E5BF6864();
    return (*(v33 + 8))(v39, v32);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB68, &unk_1E5BF9E70) + 48);
    v35 = sub_1E5BF6464();
    (*(*(v35 - 8) + 8))(&v27[v34], v35);
    goto LABEL_5;
  }

  v99 = v30;
  v95 = v23;
  v57 = *v27;
  v56 = *(v27 + 1);
  v100 = *(v27 + 2);
  v58 = *(v27 + 4);

  sub_1E5B83D44();
  v59 = swift_allocError();
  *v60 = 1;
  v61 = sub_1E5BF6364();
  v62 = [v61 domain];

  v63 = sub_1E5BF6FA4();
  v65 = v64;

  if (v57 == v63 && v56 == v65)
  {
  }

  else
  {
    v66 = sub_1E5BF7444();

    if ((v66 & 1) == 0)
    {
LABEL_13:
      v114 = v28;
      v115 = v29;
      LOBYTE(v116) = v101 & 1;
      v78 = v95;
      sub_1E5B82234(0, 0, v99, v95);
      v79 = v111;
      (*(v111 + 16))(v97, v78, v32);
      swift_storeEnumTagMultiPayload();
      v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
      v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
      v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
      v83 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
      v84 = sub_1E5B83AB8();
      v114 = v81;
      v115 = MEMORY[0x1E6981CD8];
      v116 = v82;
      v117 = v83;
      v118 = MEMORY[0x1E6981CD0];
      v119 = v84;
      v85 = swift_getOpaqueTypeConformance2();
      v114 = v80;
      v115 = v85;
      swift_getOpaqueTypeConformance2();
      v77 = v98;
      sub_1E5BF6864();
      (*(v79 + 8))(v78, v32);
      goto LABEL_14;
    }
  }

  v67 = swift_allocError();
  *v68 = 1;
  v69 = sub_1E5BF6364();
  v70 = [v69 code];

  if (v100 != v70)
  {
    goto LABEL_13;
  }

  swift_storeEnumTagMultiPayload();
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
  v74 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
  v75 = sub_1E5B83AB8();
  v114 = v72;
  v115 = MEMORY[0x1E6981CD8];
  v116 = v73;
  v117 = v74;
  v118 = MEMORY[0x1E6981CD0];
  v119 = v75;
  v76 = swift_getOpaqueTypeConformance2();
  v114 = v71;
  v115 = v76;
  swift_getOpaqueTypeConformance2();
  v77 = v98;
  sub_1E5BF6864();
LABEL_14:
  v86 = v107;
  sub_1E5B5F864(v77, v103, &qword_1ED03F110, &qword_1E5BFB318);
  swift_storeEnumTagMultiPayload();
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
  v90 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
  v91 = sub_1E5B83AB8();
  v114 = v88;
  v115 = MEMORY[0x1E6981CD8];
  v116 = v89;
  v117 = v90;
  v118 = MEMORY[0x1E6981CD0];
  v119 = v91;
  v92 = swift_getOpaqueTypeConformance2();
  v114 = v87;
  v115 = v92;
  swift_getOpaqueTypeConformance2();
  sub_1E5B83B9C();
  v93 = v104;
  sub_1E5BF6864();
  sub_1E5B5F864(v93, v86, &qword_1ED03F0D8, &qword_1E5BFB2F8);
  swift_storeEnumTagMultiPayload();
  sub_1E5B83940();
  sub_1E5BF6864();
  sub_1E5B5F804(v93, &qword_1ED03F0D8, &qword_1E5BFB2F8);
  return sub_1E5B5F804(v77, &qword_1ED03F110, &qword_1E5BFB318);
}

uint64_t sub_1E5B8359C()
{
  v0 = type metadata accessor for PreviewButton();
  sub_1E5B82098(v0);
  sub_1E5BF6E44();
}

uint64_t sub_1E5B83650()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1E5B836B0()
{
  result = qword_1ED03F0A8;
  if (!qword_1ED03F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED03F020, &qword_1E5BFB1E0);
    sub_1E5B8373C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0A8);
  }

  return result;
}

unint64_t sub_1E5B8373C()
{
  result = qword_1ED03F0B0;
  if (!qword_1ED03F0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0B8, &qword_1E5BFB2E8);
    sub_1E5B837C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0B0);
  }

  return result;
}

unint64_t sub_1E5B837C0()
{
  result = qword_1ED03F0C0;
  if (!qword_1ED03F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0C8, &qword_1E5BFB2F0);
    sub_1E5B83940();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    sub_1E5B83AB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0C0);
  }

  return result;
}

unint64_t sub_1E5B83940()
{
  result = qword_1ED03F0D0;
  if (!qword_1ED03F0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0D8, &qword_1E5BFB2F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    sub_1E5B83AB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E5B83B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0D0);
  }

  return result;
}

unint64_t sub_1E5B83AB8()
{
  result = qword_1ED03F0F0;
  if (!qword_1ED03F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1ED03F0F8, &qword_1ED03F100, &qword_1E5BFB310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0F0);
  }

  return result;
}

unint64_t sub_1E5B83B9C()
{
  result = qword_1ED03F108;
  if (!qword_1ED03F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F110, &qword_1E5BFB318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    sub_1E5B83AB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F108);
  }

  return result;
}

uint64_t sub_1E5B83D1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_1E5B8359C();
}

unint64_t sub_1E5B83D44()
{
  result = qword_1EE2C7560[0];
  if (!qword_1EE2C7560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C7560);
  }

  return result;
}

uint64_t sub_1E5B83D98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B83E18(uint64_t a1)
{
  v2 = sub_1E5BF6724();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5BF6754();
}

uint64_t sub_1E5B83EE0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_1E5B82578(a1);
}

uint64_t sub_1E5B83F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v51 = a1;
  v49 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = (v37 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v41 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v40 = v37 - v15;
  v16 = sub_1E5BF64B4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = sub_1E5BF6F94();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v20 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  v48 = a4;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v21 = sub_1E5BF69D4();
  v43 = v22;
  v44 = v21;
  v42 = v23;
  v45 = v24;
  sub_1E5BF6614();
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  *(v25 + 32) = a4 & 1;
  sub_1E5B5F5EC();
  sub_1E5BF6D34();
  v38 = v53;
  v39 = v52;
  v37[1] = v54;
  sub_1E5BF6614();
  swift_getKeyPath();
  v26 = v40;
  sub_1E5BF6E34();

  v27 = v26;
  v28 = v41;
  sub_1E5B5F8D4(v27, v41, &qword_1ED03E760, &qword_1E5BF9120);
  if ((*(v46 + 48))(v28, 1, v47) == 1)
  {
    v29 = type metadata accessor for PlannedWorkoutConfirmation(0);
    v30 = v50;
    v31 = (*(*(v29 - 8) + 56))(v50, 1, 1, v29);
  }

  else
  {
    v30 = v50;
    v31 = sub_1E5B5F8D4(v28, v50, &qword_1ED03E758, &unk_1E5BFB490);
  }

  v50 = v37;
  v32 = MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F140, &qword_1E5BFB4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F148, &unk_1E5BFB4F0);
  type metadata accessor for PlannedWorkoutConfirmation(0);
  sub_1E5B5FC8C(&qword_1EE2C6320, &qword_1ED03F140, &qword_1E5BFB4E8);
  sub_1E5B5FC8C(&qword_1EE2C6298, &qword_1ED03F148, &unk_1E5BFB4F0);
  v33 = v42;
  v35 = v43;
  v34 = v44;
  sub_1E5BF6AE4();

  sub_1E5B7AD08(v34, v35, v33 & 1);

  return sub_1E5B5F804(v30, &qword_1ED03E758, &unk_1E5BFB490);
}

uint64_t sub_1E5B84588@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v51 = a3;
  v52 = a2;
  v50 = a1;
  v55 = a4;
  v4 = sub_1E5BF6494();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v46 - v28;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v19 + 48))(v29, 1, v18);
  if (result != 1)
  {
    sub_1E5B5F8D4(v29, v25, &qword_1ED03E758, &unk_1E5BFB490);
    sub_1E5B5F864(v25, v23, &qword_1ED03E758, &unk_1E5BFB490);
    v32 = type metadata accessor for PlannedWorkoutConfirmation(0);
    v33 = (*(*(v32 - 8) + 48))(v23, 1, v32);
    v46 = v25;
    if (v33 == 1)
    {
      sub_1E5B5F804(v23, &qword_1ED03E758, &unk_1E5BFB490);
      v34 = 1;
      v35 = v53;
      v36 = v54;
    }

    else
    {
      v35 = v53;
      v36 = v54;
      (*(v54 + 16))(v53, v23, v4);
      sub_1E5B85A38(v23, type metadata accessor for PlannedWorkoutConfirmation);
      v34 = 0;
    }

    v37 = *(v36 + 56);
    v37(v35, v34, 1, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v37(v16, 0, 1, v4);
    v38 = *(v49 + 48);
    sub_1E5B5F864(v35, v9, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v16, &v9[v38], &qword_1ED03E5E8, &unk_1E5BF9600);
    v39 = *(v36 + 48);
    if (v39(v9, 1, v4) == 1)
    {
      sub_1E5B5F804(v16, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v46, &qword_1ED03E758, &unk_1E5BFB490);
      if (v39(&v9[v38], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        v40 = 1;
LABEL_13:
        v31 = v40 & 1;
        goto LABEL_14;
      }
    }

    else
    {
      v41 = v48;
      sub_1E5B5F864(v9, v48, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v39(&v9[v38], 1, v4) != 1)
      {
        v42 = v54;
        v43 = &v9[v38];
        v44 = v47;
        (*(v54 + 32))(v47, v43, v4);
        sub_1E5B7AE4C();
        v40 = sub_1E5BF6F14();
        v45 = *(v42 + 8);
        v45(v44, v4);
        sub_1E5B5F804(v16, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v46, &qword_1ED03E758, &unk_1E5BFB490);
        v45(v41, v4);
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_13;
      }

      sub_1E5B5F804(v16, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v46, &qword_1ED03E758, &unk_1E5BFB490);
      (*(v54 + 8))(v41, v4);
    }

    result = sub_1E5B5F804(v9, &qword_1ED03E790, &qword_1E5BF9150);
    v40 = 0;
    goto LABEL_13;
  }

  v31 = 0;
LABEL_14:
  *v55 = v31;
  return result;
}

uint64_t sub_1E5B84CA4()
{
  type metadata accessor for StartWorkoutButtonAction();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5B84CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v40 = a4;
  v44 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v39[-v10];
  v11 = type metadata accessor for PlannedWorkoutConfirmation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v43 = &v39[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v42 = &v39[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v39[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39[-v25];
  sub_1E5B85898(a1, v14);
  v27 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  LOBYTE(v13) = v40 & 1;
  *(v28 + 32) = v40 & 1;
  sub_1E5B858FC(v14, v28 + v27);
  v48 = a2;
  v49 = a3;
  v50 = v13;
  sub_1E5B5F5EC();
  sub_1E5BF6C84();
  v29 = v41;
  sub_1E5BF65D4();
  v30 = sub_1E5BF65E4();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  *(v31 + 32) = v13;
  v45 = a2;
  v46 = a3;
  v47 = v13;
  sub_1E5B5F5EC();
  sub_1E5BF6C74();
  v32 = v16[2];
  v33 = v42;
  v32(v42, v26, v15);
  v34 = v43;
  v32(v43, v24, v15);
  v35 = v44;
  v32(v44, v33, v15);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F150, &qword_1E5C05DD0);
  v32(&v35[*(v36 + 48)], v34, v15);
  v37 = v16[1];
  v37(v24, v15);
  v37(v26, v15);
  v37(v34, v15);
  return (v37)(v33, v15);
}

uint64_t sub_1E5B85148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v6 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  v9 = type metadata accessor for PlannedWorkoutConfirmation(0);
  v10 = (a4 + v9[7]);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(a4 + v9[6]);
  v14 = *(a4 + v9[5]);
  *v8 = v11;
  v8[1] = v12;
  v8[2] = v13;
  v8[3] = v14;
  swift_storeEnumTagMultiPayload();

  sub_1E5BF6E44();

  return sub_1E5B85A38(v8, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5B852BC()
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v1 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5B85A38(v3, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5B853EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5B855D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5BF64B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5BF6F94();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E5BF6F74();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  v10 = (a1 + *(type metadata accessor for PlannedWorkoutConfirmation(0) + 32));
  v11 = *v10;
  v12 = v10[1];
  sub_1E5BF6F44();
  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_1E5B8588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_1E5B855D8(a1, a2);
}

uint64_t sub_1E5B85898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannedWorkoutConfirmation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B858FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannedWorkoutConfirmation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B85960()
{
  v1 = *(type metadata accessor for PlannedWorkoutConfirmation(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_1E5B85148(v2, v3, v4, v5);
}

uint64_t sub_1E5B859C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5B853EC(a1);
}

uint64_t sub_1E5B859FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5B852BC();
}

uint64_t sub_1E5B85A08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5B853EC(a1);
}

uint64_t sub_1E5B85A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5B85B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B85B88(uint64_t a1)
{
  v2 = sub_1E5B85D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B85BC4(uint64_t a1)
{
  v2 = sub_1E5B85D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountButtonState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F158, &qword_1E5BFB540);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B85D4C();
  sub_1E5BF7524();
  v12 = v8;
  sub_1E5B7EE1C();
  sub_1E5BF7424();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5B85D4C()
{
  result = qword_1ED03F160;
  if (!qword_1ED03F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F160);
  }

  return result;
}

uint64_t AccountButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F168, &qword_1E5BFB548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B85D4C();
  sub_1E5BF7514();
  if (!v2)
  {
    sub_1E5B7F380();
    sub_1E5BF7364();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AccountButtonState.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B85FEC()
{
  result = qword_1ED03F170;
  if (!qword_1ED03F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F170);
  }

  return result;
}

unint64_t sub_1E5B86044()
{
  result = qword_1ED03F178;
  if (!qword_1ED03F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F178);
  }

  return result;
}

unint64_t sub_1E5B8609C()
{
  result = qword_1ED03F180;
  if (!qword_1ED03F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F180);
  }

  return result;
}

__n128 DynamicStartWorkoutFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t DynamicStartWorkoutFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, void **a3)
{
  v74 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E910, &qword_1E5BF95B0);
  v55 = *(v75 - 8);
  v5 = v55[8];
  v6 = MEMORY[0x1EEE9AC00](v75);
  v69 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v52 - v8;
  v11 = *v3;
  v10 = v3[1];
  v12 = v3[3];
  v73 = v3[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = (a2 + *(type metadata accessor for DynamicStartWorkoutState() + 28));
  v16 = v15[1];
  v72 = *v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
  v60 = v17[12];
  v18 = v17[16];
  v61 = v17[20];
  v19 = &v9[v17[24]];
  v68 = v13;
  v76 = v13;
  v77 = v14;

  v67 = v14;
  swift_bridgeObjectRetain_n();
  sub_1E5BF7254();
  v79 = 7;
  sub_1E5B6C48C(v78, &v76);
  v66 = sub_1E5B6C4E8();
  sub_1E5BF7254();
  sub_1E5B6C53C(v78);
  v20 = *MEMORY[0x1E6999B50];
  v21 = sub_1E5BF6E24();
  v22 = *(v21 - 8);
  v23 = *(v22 + 104);
  v65 = v20;
  v64 = v21;
  v63 = v23;
  v62 = v22 + 104;
  (v23)(&v9[v18], v20);
  v24 = swift_allocObject();
  v25 = v73;
  v24[2] = v72;
  v24[3] = v16;
  v70 = v11;
  v71 = v10;
  v24[4] = v11;
  v24[5] = v10;
  v24[6] = v25;
  v24[7] = v12;
  *v19 = &unk_1E5BFB768;
  *(v19 + 1) = v24;
  v26 = v55;

  v72 = v12;

  sub_1E5BF7094();
  v27 = *MEMORY[0x1E6999B48];
  v28 = sub_1E5BF6E14();
  v29 = *(v28 - 8);
  v30 = *(v29 + 104);
  v31 = &v9[v61];
  LODWORD(v61) = v27;
  v60 = v28;
  v59 = v30;
  v58 = v29 + 104;
  (v30)(v31, v27);
  v32 = v26[13];
  v57 = *MEMORY[0x1E6999AD8];
  v56 = v32;
  v32(v9);
  v33 = *v74;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1E5B715B4(0, v33[2] + 1, 1, v33);
  }

  v35 = v33[2];
  v34 = v33[3];
  v36 = v69;
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1E5B715B4(v34 > 1, v35 + 1, 1, v33);
  }

  v33[2] = v35 + 1;
  v38 = v26[4];
  v37 = v26 + 4;
  v54 = (*(v37 + 48) + 32) & ~*(v37 + 48);
  v39 = v37[5];
  v40 = v9;
  v41 = v75;
  v55 = v38;
  (v38)(v33 + v54 + v39 * v35, v40, v75);
  v52[1] = v17[12];
  v42 = v17[16];
  v53 = v17[20];
  v43 = &v36[v17[24]];
  v45 = v67;
  v44 = v68;
  v76 = v68;
  v77 = v67;

  sub_1E5BF7254();
  v79 = 5;
  sub_1E5B6C48C(v78, &v76);
  sub_1E5BF7254();
  sub_1E5B6C53C(v78);
  v63(&v36[v42], v65, v64);
  v46 = swift_allocObject();
  v47 = v71;
  v46[2] = v70;
  v46[3] = v47;
  v48 = v72;
  v46[4] = v73;
  v46[5] = v48;
  v46[6] = v44;
  v46[7] = v45;
  *v43 = &unk_1E5BFB778;
  *(v43 + 1) = v46;

  sub_1E5BF7094();
  v59(&v36[v53], v61, v60);
  v56(v36, v57, v41);
  v50 = v33[2];
  v49 = v33[3];
  if (v50 >= v49 >> 1)
  {
    v33 = sub_1E5B715B4(v49 > 1, v50 + 1, 1, v33);
  }

  v33[2] = v50 + 1;
  result = (v55)(v33 + v54 + v50 * v39, v36, v75);
  *v74 = v33;
  return result;
}

uint64_t sub_1E5B866D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a2;
  v7[3] = a3;
  sub_1E5BF7084();
  v7[6] = sub_1E5BF7074();
  v9 = sub_1E5BF7054();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E5B86770, v9, v8);
}

uint64_t sub_1E5B86770()
{
  v1 = v0[3];
  if (v1)
  {
    v9 = (v0[4] + *v0[4]);
    v2 = *(v0[4] + 4);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1E5B6C734;
    v4 = v0[5];
    v5 = v0[2];

    return v9(v5, v1);
  }

  else
  {
    v7 = v0[6];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E5B868B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5B6E314;

  return sub_1E5B866D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E5B86984(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_1E5BF7084();
  v7[3] = sub_1E5BF7074();
  v14 = (a2 + *a2);
  v11 = a2[1];
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_1E5B6F8E4;

  return v14(a6, a7);
}

uint64_t objectdestroyTm_2(void (*a1)(void), void (*a2)(void))
{
  a1(v2[3]);
  v4 = v2[5];

  a2(v2[7]);

  return swift_deallocObject();
}

uint64_t sub_1E5B86B14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5B6D9A0;

  return sub_1E5B86984(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1E5B86BE8()
{
  result = qword_1EE2C69A8;
  if (!qword_1EE2C69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69A8);
  }

  return result;
}

unint64_t sub_1E5B86C40()
{
  result = qword_1EE2C69B0;
  if (!qword_1EE2C69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69B0);
  }

  return result;
}

unint64_t sub_1E5B86C98()
{
  result = qword_1EE2C6DE0[0];
  if (!qword_1EE2C6DE0[0])
  {
    type metadata accessor for DynamicStartWorkoutState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6DE0);
  }

  return result;
}

uint64_t sub_1E5B86D00()
{
  v0 = sub_1E5BF6594();
  __swift_allocate_value_buffer(v0, qword_1ED053DE0);
  __swift_project_value_buffer(v0, qword_1ED053DE0);
  return sub_1E5BF6584();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void *sub_1E5B86DDC()
{
  swift_getKeyPath();
  sub_1E5B78108();
  sub_1E5BF64D4();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1E5B86E54(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1E5B78108();
    sub_1E5BF64C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1E5B76870();
  v5 = v4;
  v6 = a1;
  v7 = sub_1E5BF71E4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_1E5B86FA4()
{
  swift_getKeyPath();
  sub_1E5B78108();
  sub_1E5BF64D4();

  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_1E5B8702C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E5B78108();
  sub_1E5BF64D4();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1E5B870BC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);

  v5 = sub_1E5BAF15C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1E5B78108();
    sub_1E5BF64C4();
  }
}

uint64_t sub_1E5B871D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
}

uint64_t AccountButtonContactDataProvider.__allocating_init(makeAccountChangedStream:makeUserContactChangedStream:fetchUserContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  AccountButtonContactDataProvider.init(makeAccountChangedStream:makeUserContactChangedStream:fetchUserContact:)(a1, a2, a3, a4, a5, a6);
  return v15;
}

void *AccountButtonContactDataProvider.init(makeAccountChangedStream:makeUserContactChangedStream:fetchUserContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v49 = a1;
  v50 = a4;
  v47 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F188, &qword_1E5BFB840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v44 - v13;
  v15 = MEMORY[0x1E69E7CC0];
  v7[2] = 0;
  v7[5] = v15;
  v16 = v7 + 5;
  sub_1E5BF6504();
  v7[3] = a5;
  v7[4] = a6;
  v17 = sub_1E5BF70C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(v14, 1, 1, v17);
  v21 = sub_1E5BF7084();
  v48 = a6;

  v22 = sub_1E5BF7074();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v7;
  sub_1E5B880B4(0, 0, v14, &unk_1E5BFB850, v23);

  v44 = v20;
  v45 = v19;
  v19(v14, 1, 1, v17);
  v25 = swift_allocObject();
  swift_weakInit();

  v46 = v21;
  v26 = sub_1E5BF7074();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v24;
  v27[4] = v49;
  v27[5] = a2;
  v49 = a2;
  v27[6] = v25;

  v28 = sub_1E5B880B4(0, 0, v14, &unk_1E5BFB8A0, v27);
  swift_getKeyPath();
  v51 = v7;
  sub_1E5B78108();
  sub_1E5BF64D4();

  v51 = v7;
  swift_getKeyPath();
  sub_1E5BF64F4();

  swift_beginAccess();
  v29 = v7[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[5] = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1E5B715D8(0, v29[2] + 1, 1, v29);
    *v16 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1E5B715D8((v31 > 1), v32 + 1, 1, v29);
  }

  v29[2] = v32 + 1;
  v29[v32 + 4] = v28;
  v7[5] = v29;
  swift_endAccess();
  v51 = v7;
  swift_getKeyPath();
  sub_1E5BF64E4();

  v45(v14, 1, 1, v17);
  v33 = swift_allocObject();
  swift_weakInit();

  v34 = v50;

  v35 = sub_1E5BF7074();
  v36 = swift_allocObject();
  v36[2] = v35;
  v37 = v47;
  v36[3] = MEMORY[0x1E69E85E0];
  v36[4] = v37;
  v36[5] = v34;
  v36[6] = v33;

  v38 = sub_1E5B880B4(0, 0, v14, &unk_1E5BFB8D8, v36);
  swift_getKeyPath();
  v51 = v7;
  sub_1E5BF64D4();

  v51 = v7;
  swift_getKeyPath();
  sub_1E5BF64F4();

  swift_beginAccess();
  v39 = v7[5];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v7[5] = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_1E5B715D8(0, v39[2] + 1, 1, v39);
    *v16 = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    v39 = sub_1E5B715D8((v41 > 1), v42 + 1, 1, v39);
  }

  v39[2] = v42 + 1;
  v39[v42 + 4] = v38;
  v7[5] = v39;
  swift_endAccess();
  v51 = v7;
  swift_getKeyPath();
  sub_1E5BF64E4();

  return v7;
}

uint64_t sub_1E5B87850()
{
  v0[2] = sub_1E5BF7084();
  v0[3] = sub_1E5BF7074();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1E5B878FC;

  return sub_1E5B87B4C();
}

uint64_t sub_1E5B878FC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B87A38, v5, v4);
}

uint64_t sub_1E5B87A38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B87A98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5B6E314;

  return sub_1E5B87850();
}

uint64_t sub_1E5B87B4C()
{
  v1[7] = v0;
  sub_1E5BF7084();
  v1[8] = sub_1E5BF7074();
  v3 = sub_1E5BF7054();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5B87BE4, v3, v2);
}

uint64_t sub_1E5B87BE4()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  v6 = (*(v1 + 24) + **(v1 + 24));
  v3 = *(*(v1 + 24) + 4);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1E5B87CD0;

  return v6();
}

uint64_t sub_1E5B87CD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_1E5B87E64;
  }

  else
  {
    v4[13] = a1;
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_1E5B87DF8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E5B87DF8()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];

  sub_1E5B86E54(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5B87E64()
{
  v22 = v0;
  v1 = v0[8];

  if (qword_1ED03E1D0 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_1E5BF6594();
  __swift_project_value_buffer(v3, qword_1ED053DE0);
  v4 = v2;
  v5 = sub_1E5BF6574();
  v6 = sub_1E5BF71A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_1E5BF7454();
    v15 = sub_1E5B89CE4(v13, v14, &v21);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1E5B54000, v5, v6, "[AccountButtonContactDataProvider] Failed fetching user contact: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E6938270](v9, -1, -1);
    MEMORY[0x1E6938270](v8, -1, -1);
  }

  v16 = v0[7];
  v17 = v0[12];
  if (*(v16 + 16))
  {
    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = v16;
    *(v18 + 24) = 0;
    v0[5] = v16;
    sub_1E5B78108();
    sub_1E5BF64C4();
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5B880B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F188, &qword_1E5BFB840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1E5B8A304(a3, v27 - v11);
  v13 = sub_1E5BF70C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E5B8A374(v12);
  }

  else
  {
    sub_1E5BF70B4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E5BF7054();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E5BF6FC4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1E5B8A374(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5B8A374(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}